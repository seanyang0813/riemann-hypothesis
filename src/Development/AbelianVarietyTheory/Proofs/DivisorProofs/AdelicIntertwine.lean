module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHomSuppSplit
public import Development.AbelianVarietyTheory.Definitions.Foundations.T2SpaceTensorProductFiniteExtension
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsCompactIsOpenUnitsAt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalCharacterNormOneUnit
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalMomentMatrixTransform
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LocalFieldNormValuation
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IndicatorIntMMemSB
public import Development.WeilBound.ThetaLifts.TowerModels.PlaneReal

@[expose] public section

noncomputable section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.KSplit
open GlobalTheory.Doubling (absE)
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.SplitIdele

theorem det_ne_zero_of_hasSig {n r s : ℕ} {M : Matrix (Fin n) (Fin n) ℂ} (h : HasSig M r s) : M.det ≠ 0 := by
  first
  | exact _root_.PositivityTheory.ThKG.Tow.Pln.det_ne_zero_of_hasSig
  | (apply _root_.PositivityTheory.ThKG.Tow.Pln.det_ne_zero_of_hasSig <;> assumption)

end GlobalTheory.SplitIdele

namespace GlobalTheory.SplitIdele
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

alias conj_conj := _root_.GlobalTheory.AdelicU.cm_conj_conj

theorem comp_comp (h : IsCMExt F E σ) {K : Type} [Ring K] [Algebra F K] (t : E →ₐ[F] K) : (t.comp σ).comp σ = t :=
  AlgHom.ext fun x => by simp [conj_conj h]

theorem exists_anti (h : IsCMExt F E σ) : ∃ ξ : E, ξ ≠ 0 ∧ σ ξ = -ξ := by
  by_contra hc
  push Not at hc
  have hfix : ∀ x, σ x = x := fun x => by
    by_contra hne
    exact hc (x - σ x) (sub_ne_zero.mpr (Ne.symm hne)) (by rw [map_sub, conj_conj h]; ring)
  obtain ⟨τ⟩ : Nonempty (E →+* ℂ) := inferInstance
  have hreal : ComplexEmbedding.IsReal τ := by
    rw [ComplexEmbedding.isReal_iff]
    ext x
    rw [ComplexEmbedding.conjugate_coe_eq]
    have := h.2.2.2 τ x
    rw [hfix] at this
    exact this.symm
  have hc' := h.2.1.isComplex (InfinitePlace.mk τ)
  rw [← InfinitePlace.not_isReal_iff_isComplex] at hc'
  exact hc' (InfinitePlace.isReal_mk_iff.mpr hreal)

theorem exists_isQuad (h : IsCMExt F E σ) : ∃ ξ : AE F E, IsQuad (cA σ) ξ := by
  obtain ⟨ξ, hξ0, hξ⟩ := exists_anti h
  have hli : LinearIndependent F ![(1 : E), ξ] := by
    rw [LinearIndependent.pair_iff]
    intro s u hsu
    simp only [Algebra.smul_def, mul_one] at hsu
    have h2 := congrArg σ hsu
    simp only [map_add (f := _), map_mul, AlgHom.commutes, hξ, map_zero] at h2
    have h3 : algebraMap F E u * ξ = 0 := by linear_combination (hsu - h2) / 2
    have hu : u = 0 := (map_eq_zero (algebraMap F E)).mp ((mul_eq_zero.mp h3).resolve_right hξ0)
    subst hu
    refine ⟨(map_eq_zero (algebraMap F E)).mp (by simpa using hsu), rfl⟩
  have hcard : Fintype.card (Fin 2) = Module.finrank F E := by rw [h.2.2.1]; rfl
  let b := basisOfLinearIndependentOfCardEqFinrank hli hcard
  have hb : ∀ i, b i = ![(1 : E), ξ] i := fun i => by simp [b]
  refine ⟨(1 : AF F) ⊗ₜ[F] ξ, ⟨?_, ?_, ⟨Algebra.TensorProduct.basis (AF F) b, ?_, ?_⟩⟩⟩
  · refine ⟨⟨(1 : AF F) ⊗ₜ[F] ξ, (1 : AF F) ⊗ₜ[F] ξ⁻¹, ?_, ?_⟩, rfl⟩ <;>
      simp [Algebra.TensorProduct.tmul_mul_tmul, hξ0, ← Algebra.TensorProduct.one_def]
  · simp [cA, Algebra.TensorProduct.map_tmul, hξ, TensorProduct.tmul_neg]
  · rw [Algebra.TensorProduct.basis_apply, hb]; rfl
  · rw [Algebra.TensorProduct.basis_apply, hb]; rfl

end GlobalTheory.SplitIdele

namespace GlobalTheory.SplitIdele
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem chrW_comp (h : IsCMExt F E σ) (χ : Chr F E) {m : ℕ}
    (hχ : ResEtaPow (Units.map (algebraMap F (AF F)).toMonoidHom).range χ m) {v : Pl (F := F)} (t : E →ₐ[F] Fv F v) :
    chrW χ (t.comp σ) = (chrW χ t)⁻¹ := by
  obtain ⟨ξ, hξ⟩ := exists_isQuad h
  ext x
  let L := GlobalTheory.SplitGLLift.liftPair (v := v) h t
  have key : ∀ p q : Fv F v × Fv F v, p + q + p * q = 0 → (1 + L p) * (1 + L q) = 1 := by
    intro p q hpq
    have := congrArg L hpq
    rw [map_add (f := _), map_add (f := _), map_mul, map_zero] at this
    linear_combination this
  have hx1 : ((x : Fv F v) - 1, (0 : Fv F v)) + (((x⁻¹ : (Fv F v)ˣ) : Fv F v) - 1, 0) +
      ((x : Fv F v) - 1, (0 : Fv F v)) * (((x⁻¹ : (Fv F v)ˣ) : Fv F v) - 1, 0) = 0 := by
    refine Prod.ext ?_ ?_
    · simp only [Prod.fst_add, Prod.fst_mul, Prod.fst_zero]; linear_combination Units.mul_inv x
    · simp
  have hx2 : (((x⁻¹ : (Fv F v)ˣ) : Fv F v) - 1, (0 : Fv F v)) + ((x : Fv F v) - 1, (0 : Fv F v)) +
      (((x⁻¹ : (Fv F v)ˣ) : Fv F v) - 1, 0) * ((x : Fv F v) - 1, (0 : Fv F v)) = 0 := by
    refine Prod.ext ?_ ?_
    · simp only [Prod.fst_add, Prod.fst_mul, Prod.fst_zero]; linear_combination Units.mul_inv x
    · simp
  let z : (AE F E)ˣ := ⟨1 + L ((x : Fv F v) - 1, 0), 1 + L (((x⁻¹ : (Fv F v)ˣ) : Fv F v) - 1, 0), key _ _ hx1, key _ _ hx2⟩
  have hzt : Units.map (piW t).toMonoidHom z = x := by
    ext
    simp [z, L, GlobalTheory.SplitGLLift.piW_liftPair]
  have hzc : piW (t.comp σ) (z : AE F E) = 1 := by
    simp [z, L, GlobalTheory.SplitGLLift.piW_comp_liftPair]
  have hzA : At (evFin F v) ((z : AE F E) - 1) := by
    simpa [z, L] using GlobalTheory.SplitGLLift.at_liftPair h t ((x : Fv F v) - 1, 0)
  let z' : (AE F E)ˣ := Units.map (cA σ : AE F E →* AE F E) z
  have hz'v : (z' : AE F E) = 1 + L (0, (x : Fv F v) - 1) := by
    simp [z', z, L, GlobalTheory.SplitGLLift.cA_liftPair]
  have hz't : Units.map (piW (t.comp σ)).toMonoidHom z' = x := by
    ext
    simp [hz'v, L, GlobalTheory.SplitGLLift.piW_comp_liftPair]
  have hz'c : piW ((t.comp σ).comp σ) (z' : AE F E) = 1 := by
    rw [comp_comp h, hz'v]
    simp [L, GlobalTheory.SplitGLLift.piW_liftPair]
  have hz'A : At (evFin F v) ((z' : AE F E) - 1) := by
    simpa [hz'v, L] using GlobalTheory.SplitGLLift.at_liftPair h t (0, (x : Fv F v) - 1)
  have e1 := GlobalTheory.ChrLocal.chrW_piW_eq F E σ h χ v t z hzA hzc
  have e2 := GlobalTheory.ChrLocal.chrW_piW_eq F E σ h χ v (t.comp σ) z' hz'A hz'c
  rw [hzt] at e1
  rw [hz't] at e2
  rw [MonoidHom.inv_apply, e1, e2, ResEtaPow.map_conj hξ hχ z, map_inv]

end GlobalTheory.SplitIdele

namespace GlobalTheory.SplitIdele
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem det_map_ne_zero {m : ℕ} {J : Matrix (Fin m) (Fin m) E} (hJ : J.det ≠ 0) {K : Type} [Field K] [Algebra F K]
    (t : E →ₐ[F] K) : (J.map t).det ≠ 0 := by
  have : (J.map t).det = t J.det := (AlgHom.map_det t J).symm
  rw [this]
  exact (map_ne_zero t).mpr hJ

theorem det_ne_zero_herm {B : Base F E} {m : ℕ} {X : Spc F E m} {r s : ℕ} (hX : X.IsHerm σ B r s) : X.J.det ≠ 0 := by
  obtain w := Classical.arbitrary (InfinitePlace F)
  have h := det_ne_zero_of_hasSig (hX.sig w)
  intro h0
  apply h
  rw [show (X.J.map (B.emb w).1).det = (B.emb w).1 X.J.det from (RingHom.map_det (B.emb w).1 X.J).symm, h0, map_zero]

theorem det_ne_zero_skew {B : Base F E} {m : ℕ} {X : Spc F E m} {r s : ℕ} (hX : X.IsSkew σ B r s) : X.J.det ≠ 0 := by
  obtain w := Classical.arbitrary (InfinitePlace F)
  have h := det_ne_zero_of_hasSig (hX.sig w)
  intro h0
  apply h
  rw [Matrix.det_smul, show (X.J.map (B.emb w).1).det = (B.emb w).1 X.J.det from (RingHom.map_det (B.emb w).1 X.J).symm, h0, map_zero, mul_zero]

end GlobalTheory.SplitIdele

namespace GlobalTheory.SplitIdele

section Adelic

open Matrix GlobalTheory.SplitGLLift GlobalTheory.KSplit
open GlobalTheory.Div.CoordOpp (piW_cA incM_map_piW unit_map)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {v : Pl (F := F)}

theorem eq_zero_of_at (h : IsCMExt F E σ) (t : E →ₐ[F] Fv F v) {z : AE F E} (hz : At (evFin F v) z) (h1 : piW t z = 0)
    (h2 : piW (t.comp σ) z = 0) : z = 0 := by
  obtain ⟨a1, a2⟩ := at_evFin_iff.1 hz
  refine GlobalTheory.Doubling.adele_ext (fun w => by rw [a1, map_zero]) fun w => ?_
  by_cases e : w = v
  · subst e
    exact split_ext h t (by rw [map_zero, map_zero]; exact h1) (by rw [map_zero, map_zero]; exact h2)
  · rw [a2 w e, map_zero]

end Adelic

end GlobalTheory.SplitIdele

end
