module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.T2SpaceNumberFieldInfiniteAdeles
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousDistribHaarCharUnits
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HaarModulusTensorEqModulusNorm
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TensorNiceRingArtinianReducedOpenUnits
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.VectorTupleProductMeasureTwoSidedAction
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FibreFamilyHermitianQuadraticFormAtUnitProps
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FibreMeasuresTransportUnitarySimilitude
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FibreMeasureInvariantSupportedOrbitNeZero
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwoStepPairMeasureFiniteOnCompacts
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnitaryStabilizerAnisotropicVectorEquivComplemen
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwoStepPairMeasureFiniteOnCompactsStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Tactic.Linter.Style
import Mathlib.Order.CompletePartialOrder
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DisjointSpanPerpLat
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.MeasureTheory.Integral.RieszMarkovKakutani.NNReal
import Mathlib.Topology.Separation.CompletelyRegular

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetConsColNeZero, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HformMulVecRight, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LrActScalar, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMapPairsContinuousDensityNearDiagonal, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HaarMeasureGramGL2ActionTensor, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwoStepMeasureOrthogonalBasisSwapLocal

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetConsColNeZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetConsColNeZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.T2SpaceNumberFieldInfiniteAdeles\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousDistribHaarCharUnits\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HaarModulusTensorEqModulusNorm\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TensorNiceRingArtinianReducedOpenUnits\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.VectorTupleProductMeasureTwoSidedAction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.GaugeEx
open scoped TensorProduct NNReal ENNReal

namespace GlobalTheory.GaugeEx.Subst

theorem consCol_mulVec_map {E S : Type} [Field E] [CommRing S] (φ : E →+* S) {M : ℕ}
    (x : Fin 1 → Fin (M + 1) → E) (B : Matrix (Fin (M + 1)) (Fin M) E) (t : S) (w : Fin M → S) :
    ((Matrix.of fun i => Fin.cons (α := fun _ => E) (x 0 i) (B i) :
      Matrix (Fin (M + 1)) (Fin (M + 1)) E).map φ).mulVec (Fin.cons t w) =
      t • (fun i => φ (x 0 i)) + (B.map φ).mulVec w := by
  funext i
  simp [Matrix.mulVec, dotProduct, Fin.sum_univ_succ, mul_comm]

theorem det_consCol_ne_zero {F E : Type} [Field F] [Field E] [Algebra F E] (σ : E →ₐ[F] E) {M : ℕ}
    (J : Matrix (Fin (M + 1)) (Fin (M + 1)) E) (x : Fin 1 → Fin (M + 1) → E) (a : F)
    (B : Matrix (Fin (M + 1)) (Fin M) E) (J' : Matrix (Fin M) (Fin M) E)
    (h : StepData σ J x a B J') : (consCol x B).det ≠ 0 := by
  obtain ⟨-, ha, hx, hB, hJ', -, hd⟩ := h
  intro h0
  obtain ⟨v, hv, hPv⟩ := Matrix.exists_mulVec_eq_zero_iff.2 h0
  have e := consCol_mulVec_map (RingHom.id E) x B (v 0) (Fin.tail v)
  rw [Fin.cons_self_tail] at e
  have e' : v 0 • x 0 + B.mulVec (Fin.tail v) = 0 := by
    rw [← hPv]
    exact e.symm
  let r : Fin (M + 1) → E := Matrix.vecMul (fun i => σ (x 0 i)) J
  have hr : ∀ y, hE σ J (x 0) y = r ⬝ᵥ y := by
    intro y
    simp only [hE, Formalism.UG.hform, r, Matrix.vecMul, dotProduct, Finset.sum_mul]
    rw [Finset.sum_comm]
    rfl
  have h1 : r ⬝ᵥ B.mulVec (Fin.tail v) = 0 := by
    rw [Matrix.dotProduct_mulVec]
    have : Matrix.vecMul r B = 0 := by
      funext j
      exact (hr _).symm.trans (hB j)
    rw [this, zero_dotProduct]
  have h2 : v 0 = 0 := by
    have := congrArg (fun y => r ⬝ᵥ y) e'
    simp only [dotProduct_add, h1, dotProduct_smul, ← hr (x 0), hx, add_zero, dotProduct_zero,
      smul_eq_mul, mul_eq_zero] at this
    rcases this with h | h
    · exact h
    · exact absurd ((map_eq_zero _).1 h) ha
  rw [h2, zero_smul, zero_add] at e'
  have h3 : J'.mulVec (Fin.tail v) = 0 := by
    rw [hJ', ← Matrix.mulVec_mulVec, e', Matrix.mulVec_zero]
  have h4 : Fin.tail v = 0 := Matrix.eq_zero_of_mulVec_eq_zero hd h3
  apply hv
  rw [← Fin.cons_self_tail v, h2, h4]
  funext i
  refine Fin.cases rfl (fun _ => rfl) i

theorem lintegral_subst (S : Type) [CommRing S] [TopologicalSpace S] [IsTopologicalRing S] [T2Space S]
    [LocallyCompactSpace S] [SecondCountableTopology S] [MeasurableSpace S] [BorelSpace S]
    (h1 : IsArtinianRing S) (h2 : IsReduced S) (lam : Measure S) (hl : lam.IsAddHaarMeasure) (M : ℕ)
    (G : Matrix (Fin (M + 1)) (Fin (M + 1)) S) (hG : IsUnit G.det)
    (f : (Fin (M + 1) → S) → ℝ≥0∞) (hf : Measurable f) :
    ∫⁻ z, f z ∂(Measure.pi fun _ => lam) =
      (modu S G.det : ℝ≥0∞) * ∫⁻ t, ∫⁻ y', f (G.mulVec (Fin.cons t (y' 0))) ∂(tupMeas lam 1 M) ∂lam := by
  have key := GlobalTheory.GaugeEx.ModDet.tupMeas_lrAct S h1 h2 lam hl 1 (M + 1) G 1 hG (by simp)
  have hm1 : modu S 1 = 1 := (GlobalTheory.GaugeEx.modu_basic S).2.2.1
  rw [Matrix.det_one, hm1, pow_one, one_pow, mul_one] at key
  have hU : ∀ K : ℕ, MeasurePreserving (fun X : Fin 1 → Fin K → S => X 0) (tupMeas lam 1 K)
      (Measure.pi fun _ => lam) := fun K =>
    measurePreserving_funUnique (Measure.pi fun _ : Fin K => lam) (Fin 1)
  have hGc : Continuous fun z : Fin (M + 1) → S => G.mulVec z :=
    continuous_const.matrix_mulVec continuous_id
  have hlr : lrAct G (1 : Matrix (Fin 1) (Fin 1) S) = fun X _ => G.mulVec (X 0) := by
    funext X a
    obtain rfl : a = 0 := Subsingleton.elim _ _
    simp [lrAct]
  have hlrm : Measurable (lrAct G (1 : Matrix (Fin 1) (Fin 1) S)) := by
    rw [hlr]
    exact Measurable.of_eval fun _ => hGc.measurable.comp (measurable_pi_apply 0)
  have hfG : Measurable fun z : Fin (M + 1) → S => f (G.mulVec z) := hf.comp hGc.measurable
  have hP := (measurePreserving_piFinSuccAbove (fun _ : Fin (M + 1) => lam) 0).symm
  have hc : ∀ p : S × (Fin M → S),
      (MeasurableEquiv.piFinSuccAbove (fun _ : Fin (M + 1) => S) 0).symm p = Fin.cons p.1 p.2 := by
    intro p
    simp [MeasurableEquiv.piFinSuccAbove, Fin.insertNthEquiv]
  calc ∫⁻ z, f z ∂(Measure.pi fun _ => lam)
      = ∫⁻ X, f (X 0) ∂(tupMeas lam 1 (M + 1)) := ((hU _).lintegral_comp hf).symm
    _ = (modu S G.det : ℝ≥0∞) * ∫⁻ X, f (G.mulVec (X 0)) ∂(tupMeas lam 1 (M + 1)) := by
        conv_lhs => rw [key]
        rw [lintegral_smul_measure, lintegral_map (f := fun X : Fin 1 → Fin (M + 1) → S => f (X 0))
          (hf.comp (measurable_pi_apply 0)) hlrm, hlr]
        rfl
    _ = (modu S G.det : ℝ≥0∞) * ∫⁻ z, f (G.mulVec z) ∂(Measure.pi fun _ => lam) := by
        rw [(hU _).lintegral_comp hfG]
    _ = _ := by
        congr 1
        rw [← hP.lintegral_comp hfG]
        refine (lintegral_prod _ (hfG.comp hP.measurable).aemeasurable).trans ?_
        refine lintegral_congr fun t => ?_
        have hm : Measurable fun w : Fin M → S => f (G.mulVec (Fin.cons t w)) := by
          have := (hfG.comp hP.measurable).comp (measurable_prodMk_left (x := t))
          convert this using 2 with w
          simp only [Function.comp, hc]
        rw [(hU M).lintegral_comp hm]
        simp only [Function.comp, hc]

theorem subst : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] [T2Space R] [LocallyCompactSpace R] [SecondCountableTopology R] [MeasurableSpace R] [BorelSpace R], Nice R → ∀ (M : ℕ) (J : Matrix (Fin (M + 1)) (Fin (M + 1)) E) (x : Fin 1 → Fin (M + 1) → E) (a : F) (B : Matrix (Fin (M + 1)) (Fin M) E) (J' : Matrix (Fin M) (Fin M) E), StepData σ J x a B J' → ∀ (lam : Measure (R ⊗[F] E)), lam.IsAddHaarMeasure → ∀ (g : HA R σ J) (y : Fin 1 → Fin (M + 1) → R ⊗[F] E), g • ratTup (F := F) R x = y → ∀ f : (Fin (M + 1) → R ⊗[F] E) → ℝ≥0∞, Measurable f → ∫⁻ z, f z ∂(Measure.pi fun _ => lam) = (modu (R ⊗[F] E) (inclR R (consCol x B).det) : ℝ≥0∞) * ∫⁻ t, ∫⁻ y', f (t • y 0 + pairOf R σ J B y g y' 1) ∂(tupMeas lam 1 M) ∂lam := by
  intro F E _ _ _ _ _ σ hCM R _ _ _ _ _ _ _ _ _ hR M J x a B J' hS lam hl g y hy f hf
  obtain ⟨n1, n2, -⟩ := GlobalTheory.GaugeEx.nice_tensor F E R hR
  have hP : IsUnit (inclR (F := F) R (consCol x B).det) :=
    (IsUnit.mk0 _ (det_consCol_ne_zero σ J x a B J' hS)).map _
  have hJ : IsUnit (JR (F := F) R J).det := by
    have : IsUnit (inclR (F := F) R J.det) := (IsUnit.mk0 _ hS.1.2).map _
    rwa [RingHom.map_det] at this
  set A : Matrix (Fin (M + 1)) (Fin (M + 1)) (R ⊗[F] E) :=
    (HA.mat R σ J g : GL (Fin (M + 1)) (R ⊗[F] E)).val with hA
  have hAu : IsUnit A.det := (Matrix.isUnit_iff_isUnit_det _).1 (Units.isUnit _)
  have hU : Formalism.UG.cT (sigR R σ) A * JR R J * A = JR R J := (show HR R σ J from g).2
  have hN : A.det * sigR R σ A.det = 1 := by
    have := congrArg Matrix.det hU
    rw [Matrix.det_mul, Matrix.det_mul, Formalism.UG.cT, Matrix.det_transpose,
      ← RingHom.mapMatrix_apply, ← RingHom.map_det] at this
    apply hJ.mul_left_cancel
    rw [mul_one]
    conv_rhs => rw [← this]
    ring
  have hmA : modu (R ⊗[F] E) A.det = 1 := by
    rw [(GlobalTheory.GaugeEx.modu_eq_modu_norm F E σ hCM R A.det 1 hAu (by rw [map_one, hN])).2]
    exact (GlobalTheory.GaugeEx.modu_basic R).2.2.1
  have hdet : (A * (consCol x B).map (inclR (F := F) R)).det =
      A.det * inclR (F := F) R (consCol x B).det := by
    rw [Matrix.det_mul, RingHom.map_det, RingHom.mapMatrix_apply]
  rw [lintegral_subst (R ⊗[F] E) n1 n2 lam hl M (A * (consCol x B).map (inclR (F := F) R))
    (by rw [hdet]; exact hAu.mul hP) f hf, hdet,
    (GlobalTheory.GaugeEx.modu_basic (R ⊗[F] E)).2.1 _ _ hAu hP, hmA, one_mul]
  congr 1
  refine lintegral_congr fun t => lintegral_congr fun y' => congrArg f ?_
  rw [← Matrix.mulVec_mulVec, consCol, consCol_mulVec_map, Matrix.mulVec_add, Matrix.mulVec_smul]
  subst hy
  rfl

end GlobalTheory.GaugeEx.Subst
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetConsColNeZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HformMulVecRight =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HformMulVecRight", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.T2SpaceNumberFieldInfiniteAdeles\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.GaugeEx
open scoped TensorProduct NNReal ENNReal Matrix

namespace GlobalTheory.GaugeEx.GramPair

section Ring

variable {A : Type} [CommRing A] (s : A →+* A) {M N : ℕ} (G : Matrix (Fin M) (Fin M) A)

theorem hform_eq_dot (x y : Fin M → A) :
    Formalism.UG.hform s G x y = (fun i => s (x i)) ⬝ᵥ G *ᵥ y := by
  simp only [Formalism.UG.hform, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]

theorem hform_mulVec (P : Matrix (Fin M) (Fin N) A) (x y : Fin N → A) :
    Formalism.UG.hform s G (P *ᵥ x) (P *ᵥ y) = Formalism.UG.hform s (Formalism.UG.cT s P * G * P) x y := by
  have e : (fun i => s ((P *ᵥ x) i)) = (fun i => s (x i)) ᵥ* Formalism.UG.cT s P := by
    funext i
    rw [Formalism.UG.cT, Matrix.vecMul_transpose]
    exact RingHom.map_mulVec _ _ _ i
  rw [hform_eq_dot, hform_eq_dot, e, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec,
    Matrix.mulVec_mulVec]

theorem hform_mulVec_right (P : Matrix (Fin M) (Fin N) A) (x : Fin M → A) (w : Fin N → A) :
    Formalism.UG.hform s G x (P *ᵥ w) = ∑ j, Formalism.UG.hform s G x (fun i => P i j) * w j := by
  simp only [Formalism.UG.hform, Matrix.mulVec, dotProduct, Finset.mul_sum, Finset.sum_mul, mul_assoc]
  symm
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_comm

theorem hform_symm (hs : ∀ a, s (s a) = a) (hG : ∀ i j, s (G j i) = G i j) (x y : Fin M → A) :
    Formalism.UG.hform s G y x = s (Formalism.UG.hform s G x y) := by

  simp only [Formalism.UG.hform, map_sum, map_mul, hs]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [hG]
  ring

theorem hform_lin (a b c d : A) (x y : Fin M → A) :
    Formalism.UG.hform s G (a • x + b • y) (c • x + d • y) =
      s a * c * Formalism.UG.hform s G x x + s a * d * Formalism.UG.hform s G x y +
        s b * c * Formalism.UG.hform s G y x + s b * d * Formalism.UG.hform s G y y := by
  simp only [Formalism.UG.hform, Finset.mul_sum, ← Finset.sum_add_distrib, Pi.add_apply, Pi.smul_apply,
    smul_eq_mul, map_add, map_mul]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring

end Ring

section Tens

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (σ : E →ₐ[F] E) (R : Type) [CommRing R] [Algebra F R]

theorem conj_conj (h : IsCMExt F E σ) (e : E) : σ (σ e) = e := by
  obtain ⟨τ⟩ : Nonempty (E →+* ℂ) := inferInstance
  apply τ.injective
  rw [h.2.2.2, h.2.2.2, star_star]

theorem sigR_sigR (h : IsCMExt F E σ) (z : R ⊗[F] E) : sigR R σ (sigR R σ z) = z := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | add a b ha hb => simp only [map_add (f := _), ha, hb]
  | tmul a e =>
    show a ⊗ₜ[F] σ (σ e) = _
    rw [conj_conj σ h]

omit [NumberField F] [NumberField E] in
theorem sigR_alg (r : R) : sigR R σ (algebraMap R (R ⊗[F] E) r) = algebraMap R (R ⊗[F] E) r := by
  show r ⊗ₜ[F] σ 1 = r ⊗ₜ[F] 1
  rw [map_one]

omit [NumberField F] [NumberField E] in
theorem hR_rat {M : ℕ} (J : Matrix (Fin M) (Fin M) E) (x z : Fin M → E) :
    hR R σ J (fun i => inclR R (x i)) (fun i => inclR R (z i)) = inclR R (hE σ J x z) := by
  simp [hR, hE, Formalism.UG.hform, sigR, JR, inclR]

theorem half_trace (h : IsCMExt F E σ) (k : R) :
    algebraMap F R (1 / 2) * Algebra.trace R (R ⊗[F] E) (algebraMap R (R ⊗[F] E) k) = k := by
  have h2 : Algebra.trace F E 1 = 2 := by
    have := Algebra.trace_algebraMap (R := F) (S := E) 1
    rw [map_one, h.2.2.1] at this
    rw [this]; norm_num
  have h1 : Algebra.trace R (R ⊗[F] E) ((1 : R) ⊗ₜ[F] (1 : E)) = algebraMap F R 2 := by
    rw [Algebra.trace_apply, ← Algebra.baseChange_lmul, LinearMap.trace_baseChange,
      ← Algebra.trace_apply, h2]
  rw [Algebra.algebraMap_eq_smul_one k, map_smul, Algebra.TensorProduct.one_def, h1, smul_eq_mul,
    mul_left_comm, ← map_mul, show (1 / 2 * 2 : F) = 1 by norm_num, map_one, mul_one]

omit [NumberField F] [NumberField E] in
theorem JR_cT {M N : ℕ} (J : Matrix (Fin M) (Fin M) E) (B : Matrix (Fin M) (Fin N) E) :
    Formalism.UG.cT (sigR R σ) (B.map (inclR (F := F) R)) * JR (F := F) R J * B.map (inclR (F := F) R) =
      JR (F := F) R (Formalism.UG.cT (σ : E →+* E) B * J * B) := by
  rw [JR, JR, Matrix.map_mul, Matrix.map_mul]
  rfl

end Tens

theorem gram_pair : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] [T2Space R] [LocallyCompactSpace R] [SecondCountableTopology R] [MeasurableSpace R] [BorelSpace R], ∀ (M : ℕ) (J : Matrix (Fin (M + 1)) (Fin (M + 1)) E) (x : Fin 1 → Fin (M + 1) → E) (a : F) (B : Matrix (Fin (M + 1)) (Fin M) E) (J' : Matrix (Fin M) (Fin M) E), StepData σ J x a B J' → Continuous (gram3 R σ J) ∧ ∃ n : R ⊗[F] E → R, Continuous n ∧ n 0 = 0 ∧ ∀ (g : HA R σ J) (y : Fin 1 → Fin (M + 1) → R ⊗[F] E) (y' : Fin 1 → Fin M → R ⊗[F] E) (r r' : R) (t : R ⊗[F] E), g • ratTup (F := F) R x = y → gram3 R σ J ![algebraMap R (R ⊗[F] E) r • y 0, t • y 0 + algebraMap R (R ⊗[F] E) r' • pairOf R σ J B y g y' 1] = (r * r * algebraMap F R a, algebraMap R (R ⊗[F] E) (r * algebraMap F R a) * t, n t + r' * r' * qR R σ J' (y' 0)) := by
  intro F E _ _ _ _ _ σ h R _ _ _ _ _ _ _ _ _ M J x a B J' hS
  obtain ⟨hJ, -, hx, hB, hJ', -⟩ := hS
  have h1 : Continuous (Algebra.trace R (R ⊗[F] E)) :=
    IsModuleTopology.continuous_of_linearMap _
  have h2 := GlobalTheory.AdelicUnitaryTop.continuous_sigR R σ
  have hc : ∀ i j : Fin 2, Continuous fun X : Fin 2 → Fin (M + 1) → R ⊗[F] E =>
      hR R σ J (X i) (X j) := by
    intro i j
    unfold hR Formalism.UG.hform
    fun_prop
  refine ⟨(continuous_const.mul (h1.comp (hc 0 0))).prodMk
    ((hc 0 1).prodMk (continuous_const.mul (h1.comp (hc 1 1)))),
    fun t => algebraMap F R (1 / 2) * Algebra.trace R (R ⊗[F] E)
      (sigR R σ t * t * algebraMap R (R ⊗[F] E) (algebraMap F R a)),
    continuous_const.mul (h1.comp ((h2.mul continuous_id).mul continuous_const)), by simp, ?_⟩
  intro g y y' r r' t hy
  set G : Matrix (Fin (M + 1)) (Fin (M + 1)) (R ⊗[F] E) := (HA.mat R σ J g).1 with hG
  have hk : Formalism.UG.cT (sigR R σ) G * JR R J * G = JR R J := (show HR R σ J from g).2
  have hact : ∀ u v, hR R σ J (G *ᵥ u) (G *ᵥ v) = hR R σ J u v := fun u v => by
    rw [hR, hform_mulVec, hk, hR]
  have hy0 : y 0 = G *ᵥ (fun i => inclR R (x 0 i)) := by rw [← hy]; rfl
  set z := pairOf R σ J B y g y' 1 with hz
  have hz0 : z = G *ᵥ (B.map (inclR (F := F) R) *ᵥ y' 0) := rfl
  have e00 : hR R σ J (y 0) (y 0) = algebraMap R (R ⊗[F] E) (algebraMap F R a) := by
    rw [hy0, hact, hR_rat, hx, ← IsScalarTower.algebraMap_apply]
    exact (Algebra.TensorProduct.includeRight : E →ₐ[F] R ⊗[F] E).commutes a
  have e01 : hR R σ J (y 0) z = 0 := by
    rw [hy0, hz0, hact, hR, hform_mulVec_right]
    refine Finset.sum_eq_zero fun j _ => ?_
    have := hR_rat σ R J (x 0) (fun i => B i j)
    rw [hB, map_zero] at this
    exact mul_eq_zero_of_left this _
  have hJs : ∀ i j, sigR R σ (JR R J j i) = JR R J i j := by
    intro i j
    show (1 : R) ⊗ₜ[F] σ (J j i) = (1 : R) ⊗ₜ[F] J i j
    rw [hJ.1]
  have e10 : hR R σ J z (y 0) = 0 := by
    rw [hR, hform_symm _ _ (sigR_sigR σ R h) hJs, ← hR, e01, map_zero]
  have e11 : hR R σ J z z = hR R σ J' (y' 0) (y' 0) := by
    rw [hz0, hact, hR, hform_mulVec, JR_cT, ← hJ', hR]
  have lin : ∀ p q u v : R ⊗[F] E, hR R σ J (p • y 0 + q • z) (u • y 0 + v • z) =
      sigR R σ p * u * algebraMap R (R ⊗[F] E) (algebraMap F R a) +
        sigR R σ q * v * hR R σ J' (y' 0) (y' 0) := by
    intro p q u v
    rw [hR, hform_lin, ← hR, ← hR, ← hR, ← hR, e00, e01, e10, e11]
    ring
  have f0 : algebraMap R (R ⊗[F] E) r • y 0 =
      algebraMap R (R ⊗[F] E) r • y 0 + (0 : R ⊗[F] E) • z := by simp
  refine Prod.ext ?_ (Prod.ext ?_ ?_)
  · show qR R σ J (algebraMap R (R ⊗[F] E) r • y 0) = r * r * algebraMap F R a
    rw [qR, f0, lin, sigR_alg, mul_zero, zero_mul, add_zero, ← map_mul, ← map_mul, half_trace σ R h]
  · show hR R σ J (algebraMap R (R ⊗[F] E) r • y 0) (t • y 0 + algebraMap R (R ⊗[F] E) r' • z) =
      algebraMap R (R ⊗[F] E) (r * algebraMap F R a) * t
    rw [f0, lin, sigR_alg, map_zero, map_mul]
    ring
  · show qR R σ J (t • y 0 + algebraMap R (R ⊗[F] E) r' • z) =
      algebraMap F R (1 / 2) * Algebra.trace R (R ⊗[F] E)
      (sigR R σ t * t * algebraMap R (R ⊗[F] E) (algebraMap F R a)) + r' * r' * qR R σ J' (y' 0)
    rw [qR, lin, sigR_alg, ← map_mul, ← Algebra.smul_def (r' * r'), map_add (f := _), map_smul, qR, smul_eq_mul]
    ring

end GlobalTheory.GaugeEx.GramPair
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HformMulVecRight =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LrActScalar =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LrActScalar", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.T2SpaceNumberFieldInfiniteAdeles\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FibreFamilyHermitianQuadraticFormAtUnitProps\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FibreMeasuresTransportUnitarySimilitude\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.GaugeEx
open scoped TensorProduct NNReal ENNReal

namespace GlobalTheory.GaugeEx.Polar

theorem qR_scalar {F E : Type} [Field F] [Field E] [Algebra F E] (σ : E →ₐ[F] E)
    (R : Type) [CommRing R] [Algebra F R] {M : ℕ} (J : Matrix (Fin M) (Fin M) E) (r : R)
    (z : Fin M → R ⊗[F] E) :
    qR R σ J (algebraMap R (R ⊗[F] E) r • z) = r * r * qR R σ J z := by
  have hs : sigR R σ (algebraMap R (R ⊗[F] E) r) = algebraMap R (R ⊗[F] E) r := by
    simp [sigR, Algebra.TensorProduct.algebraMap_apply]
  have h : hR R σ J (algebraMap R (R ⊗[F] E) r • z) (algebraMap R (R ⊗[F] E) r • z)
      = (r * r) • hR R σ J z z := by
    rw [Algebra.smul_def (r * r), map_mul]
    simp only [hR, Formalism.UG.hform, Pi.smul_apply, smul_eq_mul, map_mul, hs, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
    ring
  simp only [qR, h, map_smul, smul_eq_mul]
  ring

theorem lrAct_scalar {S : Type} [CommRing S] {n M : ℕ} (c : S) (X : Fin n → Fin M → S) :
    lrAct (c • (1 : Matrix (Fin M) (Fin M) S)) 1 X = c • X := by
  funext a i
  simp [lrAct, Matrix.smul_mulVec, Matrix.one_apply]

theorem polar : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), ∀ (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] [T2Space R] [LocallyCompactSpace R] [SecondCountableTopology R] [MeasurableSpace R] [BorelSpace R], Nice R → ∀ (M : ℕ) (J : Matrix (Fin M) (Fin M) E) (lam : Measure (R ⊗[F] E)) (ν : Measure R) (β : R) (m : Measure (Fin 1 → Fin M → R ⊗[F] E)), lam.IsAddHaarMeasure → ν.IsAddHaarMeasure → IsUnit β → FibAt R σ J (tupMeas lam 1 M) ν β m → ∀ (W : Set R) (ρ : R → R), MeasurableSet W → (∀ b ∈ W, IsUnit (ρ b) ∧ ρ b * ρ b * β = b) → ∀ f : (Fin 1 → Fin M → R ⊗[F] E) → ℝ≥0∞, Measurable f → (∀ X, qR R σ J (X 0) ∉ W → f X = 0) → ∫⁻ X, f X ∂(tupMeas lam 1 M) = ∫⁻ b in W, ((modu (R ⊗[F] E) (algebraMap R (R ⊗[F] E) (ρ b) ^ M) * (modu R (ρ b * ρ b))⁻¹ : ℝ≥0) : ℝ≥0∞) * ∫⁻ X, f (algebraMap R (R ⊗[F] E) (ρ b) • X) ∂m ∂ν := by
  intro F E _ _ _ _ _ σ R _ _ _ _ _ _ _ _ _ hN M J lam ν β m hlam hν hβ hfib W ρ hW hρ f hf hf0
  obtain ⟨fib, hfam, hm⟩ := id hfib
  have h2 := hfam.2.1 f hf
  rw [Measure.restrict_univ] at h2
  rw [h2, ← lintegral_indicator hW]
  refine lintegral_congr fun b => ?_
  by_cases hb : b ∈ W
  · rw [Set.indicator_of_mem hb]
    obtain ⟨hr, hrb⟩ := hρ b hb
    set c : R ⊗[F] E := algebraMap R (R ⊗[F] E) (ρ b) with hc
    have hdet : (c • (1 : Matrix (Fin M) (Fin M) (R ⊗[F] E))).det = c ^ M := by
      simp
    have hcu : IsUnit c := hr.map _
    have h1 := GlobalTheory.GaugeEx.fibAt_similitude F E σ R hN M J J lam ν β (ρ b * ρ b) m
      (c • (1 : Matrix (Fin M) (Fin M) (R ⊗[F] E))) hlam hν (by rw [hdet]; exact hcu.pow M)
      (hr.mul hr) (fun z => by
        rw [Matrix.smul_mulVec, Matrix.one_mulVec]; exact qR_scalar σ R J (ρ b) z) hfib
    rw [hrb, hdet] at h1
    have hbu : IsUnit b := hrb ▸ (hr.mul hr).mul hβ
    have h3 := (GlobalTheory.GaugeEx.FibBasic.fibAt_basic F E σ R hN M J _ ν b _ hν hbu h1).2.2 (fib b)
      ⟨fib, hfam, rfl⟩
    have hl : lrAct (n := 1) (c • (1 : Matrix (Fin M) (Fin M) (R ⊗[F] E))) 1 = fun X => c • X :=
      funext fun X => lrAct_scalar c X
    have hcont : Continuous fun X : Fin 1 → Fin M → R ⊗[F] E => c • X := continuous_const_smul c
    rw [h3, hl, lintegral_smul_measure, lintegral_map hf hcont.measurable]
    rfl
  · rw [Set.indicator_of_notMem hb]
    have h1 := hfam.1 b
    have hae : f =ᵐ[fib b] 0 := by
      refine measure_mono_null (fun X hX => ?_) h1
      intro hX'
      apply hX
      apply hf0
      have : qR R σ J (X 0) = b := hX'.1
      rw [this]; exact hb
    rw [lintegral_congr_ae hae]
    simp

end GlobalTheory.GaugeEx.Polar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LrActScalar =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMapPairsContinuousDensityNearDiagonal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMapPairsContinuousDensityNearDiagonal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.T2SpaceNumberFieldInfiniteAdeles\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousDistribHaarCharUnits\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetConsColNeZero\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FibreFamilyHermitianQuadraticFormAtUnitProps\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FibreMeasureInvariantSupportedOrbitNeZero\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HformMulVecRight\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LrActScalar\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwoStepPairMeasureFiniteOnCompacts\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnitaryStabilizerAnisotropicVectorEquivComplemen\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TensorNiceRingArtinianReducedOpenUnits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.GaugeEx
open scoped TensorProduct NNReal ENNReal

noncomputable section

namespace GlobalTheory.GaugeEx.GramDensity

theorem lintegral_tup_two {S : Type} [MeasurableSpace S] (lam : Measure S) [SigmaFinite lam] (M : ℕ)
    (f : (Fin 2 → Fin M → S) → ℝ≥0∞) (hf : Measurable f) :
    ∫⁻ X, f X ∂(tupMeas lam 2 M) =
      ∫⁻ y, ∫⁻ z, f ![y 0, z] ∂(Measure.pi fun _ => lam) ∂(tupMeas lam 1 M) := by
  have h2 := (measurePreserving_finTwoArrow (Measure.pi fun _ : Fin M => lam)).symm
  have h1 := measurePreserving_funUnique (Measure.pi fun _ : Fin M => lam) (Fin 1)
  unfold tupMeas
  rw [← h2.lintegral_comp hf, lintegral_prod (fun a => f (MeasurableEquiv.finTwoArrow.symm a))
      (hf.comp h2.measurable).aemeasurable,
    ← h1.lintegral_comp_emb (MeasurableEquiv.measurableEmbedding _)]
  rfl

theorem continuousOn_integral_param {P X : Type} [TopologicalSpace P] [TopologicalSpace X] [T2Space X]
    [MeasurableSpace X] [OpensMeasurableSpace X] (N : Measure X) [IsFiniteMeasureOnCompacts N]
    {C : Set P} (hC : IsCompact C) (Ψ Ψ' : P → X → X)
    (hΨ : ContinuousOn (Function.uncurry Ψ) (C ×ˢ Set.univ))
    (hΨ' : ContinuousOn (Function.uncurry Ψ') (C ×ˢ Set.univ))
    (hinv : ∀ p ∈ C, ∀ x, Ψ' p (Ψ p x) = x) (φ : X → ℝ) (hφ : Continuous φ)
    (hs : HasCompactSupport φ) :
    ContinuousOn (fun p => ∫ x, φ (Ψ p x) ∂N) C ∧ ∀ p ∈ C, Integrable (fun x => φ (Ψ p x)) N := by
  have hk : IsCompact (Function.uncurry Ψ' '' (C ×ˢ tsupport φ)) :=
    (hC.prod hs).image_of_continuousOn (hΨ'.mono (Set.prod_mono le_rfl (Set.subset_univ _)))
  have hz : ∀ p x, p ∈ C → x ∉ Function.uncurry Ψ' '' (C ×ˢ tsupport φ) → φ (Ψ p x) = 0 := by
    intro p x hp hx
    by_contra h
    exact hx ⟨(p, Ψ p x), ⟨hp, subset_tsupport _ h⟩, hinv p hp x⟩
  refine ⟨continuousOn_integral_of_compact_support (f := fun p x => φ (Ψ p x)) hk
    (hφ.comp_continuousOn hΨ) hz, fun p hp => ?_⟩
  have hc : Continuous fun x => φ (Ψ p x) := by
    refine hφ.comp ?_
    have := hΨ.comp_continuous (f := fun x => (p, x)) (by fun_prop) (fun x => ⟨hp, trivial⟩)
    exact this
  exact hc.integrable_of_hasCompactSupport (HasCompactSupport.intro hk fun x hx => hz p x hp hx)

theorem isOpen_isUnit {R : Type} [CommRing R] [TopologicalSpace R] (h : IsOpenUnits R) :
    IsOpen {u : R | IsUnit u} := (IsOpenUnits.isOpenEmbedding_unitsVal (M := R)).isOpen_range

theorem continuousOn_ringInverse {R : Type} [CommRing R] [TopologicalSpace R] (h : IsOpenUnits R) :
    ContinuousOn (Ring.inverse : R → R) {u : R | IsUnit u} := by
  rintro _ ⟨u, rfl⟩
  refine ContinuousAt.continuousWithinAt ?_
  rw [← (IsOpenUnits.isOpenEmbedding_unitsVal (M := R)).continuousAt_iff]
  have : (Ring.inverse : R → R) ∘ (Units.val : Rˣ → R) = fun u => ((u⁻¹ : Rˣ) : R) := by
    funext u; simp
  rw [this]
  exact Units.continuous_coe_inv.continuousAt

theorem exists_root {R : Type} [CommRing R] [TopologicalSpace R] [IsTopologicalRing R]
    [MeasurableSpace R] [BorelSpace R] (h : Nice R) {β : R} (hβ : IsUnit β) :
    ∃ (W : Set R) (ρ : R → R), IsOpen W ∧ β ∈ W ∧ Measurable ρ ∧ ContinuousOn ρ W ∧ ρ β = 1 ∧
      ∀ b ∈ W, IsUnit (ρ b) ∧ ρ b * ρ b * β = b := by
  classical
  obtain ⟨-, -, ho, U, hU, h1, s, hs, hs1, hss⟩ := h
  obtain ⟨v, rfl⟩ := hβ
  set W : Set R := (fun b => b * ((v⁻¹ : Rˣ) : R)) ⁻¹' U ∩ {u | IsUnit u} with hW
  have hWo : IsOpen W := (hU.preimage (by fun_prop)).inter (isOpen_isUnit ho)
  have hc : ContinuousOn (fun b => s (b * ((v⁻¹ : Rˣ) : R))) W :=
    hs.comp (by fun_prop) fun b hb => hb.1
  have hv : (v : R) ∈ W := ⟨by simpa using h1, v.isUnit⟩
  refine ⟨W, W.piecewise (fun b => s (b * ((v⁻¹ : Rˣ) : R))) (fun _ => 0), hWo, hv,
    hc.measurable_piecewise continuousOn_const hWo.measurableSet,
    hc.congr fun b hb => Set.piecewise_eq_of_mem _ _ _ hb, ?_, fun b hb => ?_⟩
  · rw [Set.piecewise_eq_of_mem _ _ _ hv]; simpa using hs1
  · rw [Set.piecewise_eq_of_mem _ _ _ hb]
    have e := hss _ hb.1
    refine ⟨?_, by rw [e]; simp⟩
    have : IsUnit (s (b * ((v⁻¹ : Rˣ) : R)) * s (b * ((v⁻¹ : Rˣ) : R))) := by
      rw [e]; exact IsUnit.mul hb.2 (Units.isUnit _)
    exact isUnit_of_mul_isUnit_left this

theorem measurable_modu (S : Type) [CommRing S] [TopologicalSpace S] [IsTopologicalRing S] [T2Space S]
    [LocallyCompactSpace S] [SecondCountableTopology S] [MeasurableSpace S] [BorelSpace S]
    (h : IsOpenUnits S) : Measurable (modu S) := by
  classical
  have hc := (GlobalTheory.GaugeEx.modu_basic S).2.2.2 h
  have := hc.measurable_piecewise (g := fun _ => 0) continuousOn_const (isOpen_isUnit h).measurableSet
  convert this using 1
  funext u
  by_cases hu : IsUnit u
  · simp [Set.piecewise, hu]
  · simp [Set.piecewise, modu, hu]

theorem lintegral_scale {S : Type} [CommRing S] [TopologicalSpace S] [IsTopologicalRing S] [T2Space S]
    [LocallyCompactSpace S] [SecondCountableTopology S] [MeasurableSpace S] [BorelSpace S]
    (lam : Measure S) (hl : lam.IsAddHaarMeasure) {u : S} (hu : IsUnit u) (G : S → ℝ≥0∞) :
    ∫⁻ t, G t ∂lam = (modu S u : ℝ≥0∞) * ∫⁻ t, G (u * t) ∂lam := by
  have e := ((GlobalTheory.GaugeEx.modu_basic S).1 u hu).2 lam hl
  obtain ⟨v, rfl⟩ := hu
  have hm : MeasurableEmbedding (fun z : S => (v : S) * z) :=
    (Homeomorph.smul v).measurableEmbedding
  conv_lhs => rw [e]
  rw [lintegral_smul_measure, hm.lintegral_map]
  rfl

def psi {S : Type} [CommRing S] {M : ℕ} (r t r' : S) (X : Fin 2 → Fin M → S) : Fin 2 → Fin M → S :=
  ![r • X 0, t • X 0 + r' • X 1]

theorem continuous_psi {S : Type} [CommRing S] [TopologicalSpace S] [IsTopologicalRing S] {M : ℕ} :
    Continuous fun p : (S × S × S) × (Fin 2 → Fin M → S) => psi p.1.1 p.1.2.1 p.1.2.2 p.2 := by
  refine continuous_pi fun a => ?_
  fin_cases a
  · simp only [psi, Fin.zero_eta, Matrix.cons_val_zero]; fun_prop
  · simp only [psi, Fin.mk_one, Matrix.cons_val_one, Matrix.cons_val_zero]; fun_prop

theorem psi_inv {S : Type} [CommRing S] {M : ℕ} {r t r' k k' : S} (h : k * r = 1) (h' : k' * r' = 1)
    (X : Fin 2 → Fin M → S) : psi k (-(k' * t * k)) k' (psi r t r' X) = X := by
  funext a i
  fin_cases a
  · simp [psi, ← mul_assoc, h]
  · simp only [psi, Fin.mk_one, Matrix.cons_val_one, Matrix.cons_val_zero, Pi.add_apply, Pi.smul_apply,
      smul_eq_mul]
    linear_combination (-(k' * t * X 0 i)) * h + X 1 i * h'

theorem psi_one {S : Type} [CommRing S] {M : ℕ} (X : Fin 2 → Fin M → S) : psi 1 0 1 X = X := by
  funext a
  fin_cases a <;> simp [psi]

section Main

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E)
  (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] [T2Space R]
  [LocallyCompactSpace R] [SecondCountableTopology R] [MeasurableSpace R] [BorelSpace R]

omit [T2Space R] [LocallyCompactSpace R] [SecondCountableTopology R] [MeasurableSpace R] [BorelSpace R] in
theorem continuous_pairOf {M : ℕ} (J : Matrix (Fin (M + 1)) (Fin (M + 1)) E)
    (B : Matrix (Fin (M + 1)) (Fin M) E) (y : Fin 1 → Fin (M + 1) → (R ⊗[F] E)) (g : HA R σ J) :
    Continuous (pairOf R σ J B y g) := by
  refine continuous_pi fun a => ?_
  fin_cases a
  · exact continuous_const
  · have h0 : Continuous fun y' : Fin 1 → Fin M → (R ⊗[F] E) => (B.map (inclR R)).mulVec (y' 0) :=
      continuous_const.matrix_mulVec (continuous_apply 0)
    have h1 : Continuous fun y' : Fin 1 → Fin M → (R ⊗[F] E) =>
        ((HA.mat R σ J g : GL (Fin (M + 1)) (R ⊗[F] E)) : Matrix (Fin (M + 1)) (Fin (M + 1)) (R ⊗[F] E)).mulVec
          ((B.map (inclR R)).mulVec (y' 0)) := continuous_const.matrix_mulVec h0
    exact h1

theorem twoStep_param {M : ℕ} {J : Matrix (Fin (M + 1)) (Fin (M + 1)) E} {x : Fin 1 → Fin (M + 1) → E}
    {B : Matrix (Fin (M + 1)) (Fin M) E} {m : Measure (Fin 1 → Fin (M + 1) → (R ⊗[F] E))}
    {m' : Measure (Fin 1 → Fin M → (R ⊗[F] E))} {N : Measure (Fin 2 → Fin (M + 1) → (R ⊗[F] E))}
    [SFinite m'] [SFinite N] (h : TwoStep R σ J x B m m' N) {T : Type} [MeasurableSpace T]
    (τ : Measure T) [SFinite τ] (K : T × (Fin 2 → Fin (M + 1) → (R ⊗[F] E)) → ℝ≥0∞) (hK : Measurable K)
    (s : (Fin 1 → Fin (M + 1) → (R ⊗[F] E)) → HA R σ J) (hs : IsSec R σ J x s) :
    ∫⁻ y, ∫⁻ t, ∫⁻ y', K (t, pairOf R σ J B y (s y) y') ∂m' ∂τ ∂m = ∫⁻ t, ∫⁻ X, K (t, X) ∂N ∂τ := by
  rw [lintegral_lintegral_swap (f := fun t X => K (t, X)) hK.aemeasurable,
    h (fun X => ∫⁻ t, K (t, X) ∂τ) hK.lintegral_prod_left' s hs]
  refine lintegral_congr fun y => ?_
  exact lintegral_lintegral_swap (f := fun t y' => K (t, pairOf R σ J B y (s y) y'))
    (hK.comp (measurable_fst.prodMk
      ((continuous_pairOf σ R J B y (s y)).measurable.comp measurable_snd))).aemeasurable


variable (F E) in
def wt (M : ℕ) (r : R) : ℝ≥0 := modu (R ⊗[F] E) (algebraMap R (R ⊗[F] E) r ^ M) * (modu R (r * r))⁻¹

omit [T2Space R] [LocallyCompactSpace R] [SecondCountableTopology R] [MeasurableSpace R] [BorelSpace R] in
theorem continuous_alg : Continuous (algebraMap R (R ⊗[F] E)) := by
  have : (algebraMap R (R ⊗[F] E) : R → (R ⊗[F] E)) = fun r => r • (1 : (R ⊗[F] E)) := by
    funext r; rw [Algebra.algebraMap_eq_smul_one]
  rw [this]
  fun_prop

theorem measurable_wt (h : Nice R) (M : ℕ) : Measurable (wt F E R M) := by
  have h1 := measurable_modu (R ⊗[F] E) (nice_tensor F E R h).2.2
  have h2 := measurable_modu R h.2.2.1
  have h3 := (continuous_alg (F := F) (E := E) R).measurable
  unfold wt
  exact (h1.comp (h3.pow_const M)).mul (h2.comp (measurable_id.mul measurable_id)).inv

theorem continuousOn_wt (h : Nice R) (M : ℕ) : ContinuousOn (wt F E R M) {r | IsUnit r} := by
  have h1 := (modu_basic (R ⊗[F] E)).2.2.2 (nice_tensor F E R h).2.2
  have h2 := (modu_basic R).2.2.2 h.2.2.1
  have h3 := continuous_alg (F := F) (E := E) R
  unfold wt
  refine ContinuousOn.mul (h1.comp (h3.pow M).continuousOn fun r hr => (IsUnit.map _ hr).pow M)
    (ContinuousOn.inv₀ (h2.comp (continuous_id.mul continuous_id).continuousOn
      fun r hr => IsUnit.mul hr hr) fun r hr => ((modu_basic R).1 _ (IsUnit.mul hr hr)).1.ne')

theorem wt_one (M : ℕ) : wt F E R M 1 = 1 := by
  rw [wt, map_one, one_pow, one_mul, (modu_basic (R ⊗[F] E)).2.2.1, (modu_basic R).2.2.1, inv_one, one_mul]

theorem inner_integral (hσ : IsCMExt F E σ) (hR : Nice R) {M : ℕ}
    {J : Matrix (Fin (M + 1)) (Fin (M + 1)) E} {x : Fin 1 → Fin (M + 1) → E} {a : F}
    {B : Matrix (Fin (M + 1)) (Fin M) E} {J' : Matrix (Fin M) (Fin M) E} (hst : StepData σ J x a B J')
    {lam : Measure (R ⊗[F] E)} {ν : Measure R} (hl : lam.IsAddHaarMeasure) (hν : ν.IsAddHaarMeasure)
    {γ : R} (hγ : IsUnit γ) {m' : Measure (Fin 1 → Fin M → (R ⊗[F] E))}
    (hm' : FibAt R σ J' (tupMeas lam 1 M) ν γ m') (hgc : Continuous (gram3 R σ J))
    {n : (R ⊗[F] E) → R}
    (hn : ∀ (g : HA R σ J) (y : Fin 1 → Fin (M + 1) → (R ⊗[F] E)) (y' : Fin 1 → Fin M → (R ⊗[F] E)) (r r' : R) (t : (R ⊗[F] E)),
      g • ratTup (F := F) R x = y →
      gram3 R σ J ![algebraMap R (R ⊗[F] E) r • y 0, t • y 0 + algebraMap R (R ⊗[F] E) r' • pairOf R σ J B y g y' 1] =
        (r * r * algebraMap F R a, algebraMap R (R ⊗[F] E) (r * algebraMap F R a) * t, n t + r' * r' * qR R σ J' (y' 0)))
    {W : Set R} {ρ : R → R} (hW : MeasurableSet W) (hρ : ∀ b ∈ W, IsUnit (ρ b) ∧ ρ b * ρ b * γ = b)
    (φ : (Fin 2 → Fin (M + 1) → (R ⊗[F] E)) → ℝ≥0∞) (hφ : Measurable φ)
    {S : Set (R × (R ⊗[F] E) × R)} (hS : MeasurableSet S) (r b : R) (hb : r * r * algebraMap F R a = b) (u : (R ⊗[F] E))
    (hu : algebraMap R (R ⊗[F] E) (r * algebraMap F R a) * u = 1) (hSW : ∀ t d, (b, t, d) ∈ S → d - n (u * t) ∈ W)
    (g : HA R σ J) (y : Fin 1 → Fin (M + 1) → (R ⊗[F] E)) (hy : g • ratTup (F := F) R x = y) :
    ∫⁻ z, (gram3 R σ J ⁻¹' S).indicator φ ![algebraMap R (R ⊗[F] E) r • y 0, z] ∂(Measure.pi fun _ => lam) =
      (modu (R ⊗[F] E) (inclR R (consCol x B).det) : ℝ≥0∞) * ((modu (R ⊗[F] E) u : ℝ≥0∞) *
      ∫⁻ t, ∫⁻ d, ∫⁻ y', S.indicator 1 (b, t, d) * (wt F E R M (ρ (d - n (u * t))) : ℝ≥0∞) *
        φ (psi (algebraMap R (R ⊗[F] E) r) (u * t) (algebraMap R (R ⊗[F] E) (ρ (d - n (u * t)))) (pairOf R σ J B y g y')) ∂m' ∂ν ∂lam) := by
  have hFi : Measurable ((gram3 R σ J ⁻¹' S).indicator φ) := hφ.indicator (hgc.measurable hS)
  have hc2 : ∀ v : Fin (M + 1) → (R ⊗[F] E), Continuous fun z : Fin (M + 1) → (R ⊗[F] E) => ![v, z] := by
    intro v
    refine continuous_pi fun a => ?_
    fin_cases a
    · exact continuous_const
    · exact continuous_id
  rw [Subst.subst F E σ hσ R hR M J x a B J' hst lam hl g y hy
    (fun z => (gram3 R σ J ⁻¹' S).indicator φ ![algebraMap R (R ⊗[F] E) r • y 0, z]) (hFi.comp (hc2 _).measurable),
    lintegral_scale lam hl (IsUnit.of_mul_eq_one_right _ hu)]
  congr 2
  refine lintegral_congr fun t => ?_
  have hut : algebraMap R (R ⊗[F] E) (r * algebraMap F R a) * (u * t) = t := by rw [← mul_assoc, hu, one_mul]
  rw [Polar.polar F E σ R hR M J' lam ν γ m' hl hν hγ hm' W ρ hW hρ
    (fun y' => (gram3 R σ J ⁻¹' S).indicator φ
      ![algebraMap R (R ⊗[F] E) r • y 0, (u * t) • y 0 + pairOf R σ J B y g y' 1])
    (hFi.comp ((hc2 _).comp (continuous_const.add
      ((continuous_apply 1).comp (continuous_pairOf σ R J B y g)))).measurable) ?_]
  · rw [← lintegral_indicator hW, ← lintegral_sub_right_eq_self _ (n (u * t))]
    refine lintegral_congr fun d => ?_
    by_cases hd : d - n (u * t) ∈ W
    · rw [Set.indicator_of_mem hd, ← lintegral_const_mul' _ _ ENNReal.coe_ne_top]
      have hq : ∀ᵐ y' ∂m', qR R σ J' (y' 0) = γ :=
        (FibBasic.fibAt_basic F E σ R hR M J' _ ν γ m' hν hγ hm').1
      refine lintegral_congr_ae (hq.mono fun y' hy' => ?_)
      have e1 : pairOf R σ J B y g (algebraMap R (R ⊗[F] E) (ρ (d - n (u * t))) • y') 1 =
          algebraMap R (R ⊗[F] E) (ρ (d - n (u * t))) • pairOf R σ J B y g y' 1 := by
        simp [pairOf, Matrix.mulVec_smul]
      have e2 := hn g y y' r (ρ (d - n (u * t))) (u * t) hy
      rw [hb, hut, hy', (hρ _ hd).2, add_sub_cancel] at e2
      simp only [e1]
      by_cases hm : (b, t, d) ∈ S
      · rw [Set.indicator_of_mem hm, Set.indicator_of_mem (by rw [Set.mem_preimage, e2]; exact hm)]
        simp only [Pi.one_apply, one_mul]
        rfl
      · rw [Set.indicator_of_notMem hm, Set.indicator_of_notMem (by rw [Set.mem_preimage, e2]; exact hm)]
        simp
    · rw [Set.indicator_of_notMem hd, Set.indicator_of_notMem fun hm => hd (hSW t d hm)]
      simp
  · intro y' hy'
    refine Set.indicator_of_notMem (fun hm => hy' ?_) _
    have e2 := hn g y y' r 1 (u * t) hy
    rw [hb, hut, map_one, one_smul, one_mul, one_mul] at e2
    rw [Set.mem_preimage, e2] at hm
    simpa using hSW _ _ hm

end Main



theorem gram_density : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] [T2Space R] [LocallyCompactSpace R] [SecondCountableTopology R] [MeasurableSpace R] [BorelSpace R], Nice R → ∀ (M : ℕ) (J : Matrix (Fin (M + 1)) (Fin (M + 1)) E) (x : Fin 1 → Fin (M + 1) → E) (a : F) (B : Matrix (Fin (M + 1)) (Fin M) E) (J' : Matrix (Fin M) (Fin M) E) (y : Fin 1 → Fin M → E) (c : F) (lam : Measure (R ⊗[F] E)) (ν : Measure R) (m : Measure (Fin 1 → Fin (M + 1) → R ⊗[F] E)) (m' : Measure (Fin 1 → Fin M → R ⊗[F] E)) (N : Measure (Fin 2 → Fin (M + 1) → R ⊗[F] E)), StepData σ J x a B J' → c ≠ 0 → hE σ J' (y 0) (y 0) = algebraMap F E c → lam.IsAddHaarMeasure → ν.IsAddHaarMeasure → FibAt R σ J (tupMeas lam 1 (M + 1)) ν (algebraMap F R a) m → FibAt R σ J' (tupMeas lam 1 M) ν (algebraMap F R c) m' → TwoStep R σ J x B m m' N → ∀ φ : (Fin 2 → Fin (M + 1) → R ⊗[F] E) → ℝ, Continuous φ → HasCompactSupport φ → (∀ X, 0 ≤ φ X) → ∃ (U : Set (R × (R ⊗[F] E) × R)) (D : R × (R ⊗[F] E) × R → ℝ), IsOpen U ∧ (algebraMap F R a, 0, algebraMap F R c) ∈ U ∧ ContinuousOn D U ∧ (∀ t ∈ U, 0 ≤ D t) ∧ (∀ S ⊆ U, MeasurableSet S → ∫⁻ X in gram3 R σ J ⁻¹' S, ENNReal.ofReal (φ X) ∂(tupMeas lam 2 (M + 1)) = ∫⁻ t in S, ENNReal.ofReal (D t) ∂(ν.prod (lam.prod ν))) ∧ D (algebraMap F R a, 0, algebraMap F R c) = (modu (R ⊗[F] E) (inclR R ((consCol x B).det / algebraMap F E a)) : ℝ) * ∫ X, φ X ∂N := by
  intro F E _ _ _ _ _ σ hσ R _ _ _ _ _ _ _ _ _ hR M J x a B J' y₀ c lam ν m m' N hst hc hy₀ hl hν hm hm'
    hN φ hφ hφs hφ0
  classical
  have hα : IsUnit (algebraMap F R a) := (IsUnit.mk0 a hst.2.1).map _
  have hγ : IsUnit (algebraMap F R c) := (IsUnit.mk0 c hc).map _
  obtain ⟨W₁, ρ₁, hW₁, hαW, -, hρ₁c, hρ₁1, hρ₁⟩ := exists_root hR hα
  obtain ⟨W₂, ρ₂, hW₂, hγW, hρ₂m, hρ₂c, hρ₂1, hρ₂⟩ := exists_root hR hγ
  obtain ⟨hgc, n, hnc, hn0, hn⟩ := GramPair.gram_pair F E σ hσ R M J x a B J' hst
  have horb := (_root_.GlobalTheory.GaugeEx.FibProp.fibre_invariant_orbit_ne_zero F E σ hσ R hR _ J x a lam ν m hst.1 hst.2.1 hst.2.2.1 hl hν hm).2.1
  have hinv' := (_root_.GlobalTheory.GaugeEx.FibProp.fibre_invariant_orbit_ne_zero F E σ hσ R hR _ J' y₀ c lam ν m' hst.2.2.2.2.2 hc hy₀ hl hν hm').1
  haveI hfm := (FibBasic.fibAt_basic F E σ R hR _ J _ ν _ m hν hα hm).2.1
  haveI hfm' := (FibBasic.fibAt_basic F E σ R hR _ J' _ ν _ m' hν hγ hm').2.1
  haveI hfN := twoStep_finite_on_compacts F E σ hσ R hR M J x a B J' m m' N hst horb hfm hfm' hinv' hN
  have hdet := (GlobalTheory.FrameStep.frameStep F E σ hσ R M J x a B J' hst).1
  have hι := continuous_alg (F := F) (E := E) R
  have hri := continuousOn_ringInverse hR.2.2.1
  set α := algebraMap F R a with hαdef
  set γ := algebraMap F R c with hγdef
  set u : R → (R ⊗[F] E) := fun b => algebraMap R (R ⊗[F] E) (Ring.inverse (ρ₁ b * α)) with hudef
  have hu : ∀ b ∈ W₁, algebraMap R (R ⊗[F] E) (ρ₁ b * α) * u b = 1 := fun b hb => by
    rw [hudef, ← map_mul, Ring.mul_inverse_cancel _ ((hρ₁ b hb).1.mul hα), map_one]
  have huc : ContinuousOn u W₁ :=
    hι.comp_continuousOn (hri.comp (hρ₁c.mul continuousOn_const) fun b hb => (hρ₁ b hb).1.mul hα)
  set e : R × (R ⊗[F] E) × R → R := fun T => T.2.2 - n (u T.1 * T.2.1) with hedef
  have htc : ContinuousOn (fun T : R × (R ⊗[F] E) × R => u T.1 * T.2.1) (Prod.fst ⁻¹' W₁) :=
    (huc.comp continuousOn_fst fun T hT => hT).mul (by fun_prop)
  have hec : ContinuousOn e (Prod.fst ⁻¹' W₁) :=
    ContinuousOn.sub (by fun_prop) (hnc.comp_continuousOn htc)
  have he0 : e (α, 0, γ) = γ := by simp [hedef, hn0]
  have hU₀ : IsOpen (Prod.fst ⁻¹' W₁ ∩ e ⁻¹' W₂) :=
    hec.isOpen_inter_preimage (hW₁.preimage continuous_fst) hW₂
  obtain ⟨C, hC, hbase, hCU⟩ := exists_compact_subset hU₀ (x := (α, 0, γ))
    ⟨hαW, by rw [Set.mem_preimage, he0]; exact hγW⟩
  have hC1 : C ⊆ Prod.fst ⁻¹' W₁ := fun T hT => (hCU hT).1
  have hr₁ : ContinuousOn (fun T : R × (R ⊗[F] E) × R => ρ₁ T.1) C :=
    hρ₁c.comp continuousOn_fst fun T hT => hC1 hT
  have hr₂ : ContinuousOn (fun T : R × (R ⊗[F] E) × R => ρ₂ (e T)) C :=
    hρ₂c.comp (hec.mono hC1) fun T hT => (hCU hT).2
  have hu₁ : ∀ T ∈ C, IsUnit (ρ₁ T.1) := fun T hT => (hρ₁ _ (hC1 hT)).1
  have hu₂ : ∀ T ∈ C, IsUnit (ρ₂ (e T)) := fun T hT => (hρ₂ _ (hCU hT).2).1
  have hpsi : ∀ A : R × (R ⊗[F] E) × R → (R ⊗[F] E) × (R ⊗[F] E) × (R ⊗[F] E), ContinuousOn A C → ContinuousOn
      (Function.uncurry fun T (X : Fin 2 → Fin (M + 1) → (R ⊗[F] E)) => psi (A T).1 (A T).2.1 (A T).2.2 X)
      (C ×ˢ Set.univ) := fun A hA =>
    continuous_psi.comp_continuousOn
      ((hA.comp continuousOn_fst fun p hp => (Set.mem_prod.mp hp).1).prodMk continuousOn_snd)
  have hk₁ := hι.comp_continuousOn (hri.comp hr₁ hu₁)
  have hk₂ := hι.comp_continuousOn (hri.comp hr₂ hu₂)
  obtain ⟨hIc, hIi⟩ := continuousOn_integral_param N hC
    (fun T X => psi (algebraMap R (R ⊗[F] E) (ρ₁ T.1)) (u T.1 * T.2.1) (algebraMap R (R ⊗[F] E) (ρ₂ (e T))) X)
    (fun T X => psi (algebraMap R (R ⊗[F] E) (Ring.inverse (ρ₁ T.1)))
      (-(algebraMap R (R ⊗[F] E) (Ring.inverse (ρ₂ (e T))) * (u T.1 * T.2.1) * algebraMap R (R ⊗[F] E) (Ring.inverse (ρ₁ T.1))))
      (algebraMap R (R ⊗[F] E) (Ring.inverse (ρ₂ (e T)))) X)
    (hpsi _ ((hι.comp_continuousOn hr₁).prodMk ((htc.mono hC1).prodMk (hι.comp_continuousOn hr₂))))
    (hpsi _ (hk₁.prodMk (((hk₂.mul (htc.mono hC1)).mul hk₁).neg.prodMk hk₂)))
    (fun T hT X => psi_inv (by rw [← map_mul, Ring.inverse_mul_cancel _ (hu₁ T hT), map_one])
      (by rw [← map_mul, Ring.inverse_mul_cancel _ (hu₂ T hT), map_one]) X) φ hφ hφs
  set p₀ : ℝ≥0 := modu (R ⊗[F] E) (inclR R (consCol x B).det) with hp₀
  set w : R × (R ⊗[F] E) × R → ℝ≥0 := fun T =>
    wt F E R (M + 1) (ρ₁ T.1) * (p₀ * (modu (R ⊗[F] E) (u T.1) * wt F E R M (ρ₂ (e T)))) with hwdef
  have hwc : ContinuousOn w C :=
    ((continuousOn_wt R hR _).comp hr₁ hu₁).mul (continuousOn_const.mul
      ((((modu_basic (R ⊗[F] E)).2.2.2 (nice_tensor F E R hR).2.2).comp
        (huc.comp continuousOn_fst fun T hT => hC1 hT)
        fun T hT => IsUnit.of_mul_eq_one_right _ (hu _ (hC1 hT))).mul
        ((continuousOn_wt R hR _).comp hr₂ hu₂)))
  have hDc : ContinuousOn (fun T => (w T : ℝ) *
      ∫ X, φ (psi (algebraMap R (R ⊗[F] E) (ρ₁ T.1)) (u T.1 * T.2.1) (algebraMap R (R ⊗[F] E) (ρ₂ (e T))) X) ∂N) C :=
    (NNReal.continuous_coe.comp_continuousOn hwc).mul hIc
  refine ⟨interior C, _, isOpen_interior, hbase, hDc.mono interior_subset,
    fun T _ => mul_nonneg (w T).2 (integral_nonneg fun X => hφ0 _), fun S hSC hS => ?_, ?_⟩
  · have hSC' : S ⊆ C := hSC.trans interior_subset
    have hφm : Measurable fun X => ENNReal.ofReal (φ X) := hφ.measurable.ennreal_ofReal
    have hFi := hφm.indicator (hgc.measurable hS)
    have hc2 : Continuous fun p : (Fin 1 → Fin (M + 1) → (R ⊗[F] E)) × (Fin (M + 1) → (R ⊗[F] E)) => ![p.1 0, p.2] := by
      refine continuous_pi fun a => ?_
      fin_cases a
      · have h0 : Continuous fun p : (Fin 1 → Fin (M + 1) → (R ⊗[F] E)) × (Fin (M + 1) → (R ⊗[F] E)) => p.1 0 :=
          (continuous_apply 0).comp continuous_fst
        exact h0
      · exact continuous_snd
    obtain ⟨s, hs⟩ : ∃ s, IsSec R σ J x s :=
      ⟨fun y => if h : ∃ g : HA R σ J, g • ratTup (F := F) R x = y then h.choose else 1,
        fun y h => by simp only [dif_pos h]; exact h.choose_spec⟩
    rw [← lintegral_indicator (hgc.measurable hS), lintegral_tup_two lam _ _ hFi,
      Polar.polar F E σ R hR _ J lam ν α m hl hν hα hm W₁ ρ₁ hW₁.measurableSet hρ₁
        (fun y => ∫⁻ z, (gram3 R σ J ⁻¹' S).indicator (fun X => ENNReal.ofReal (φ X)) ![y 0, z]
          ∂(Measure.pi fun _ => lam))
        (hFi.comp hc2.measurable).lintegral_prod_right' ?_,
      ← lintegral_indicator hS, lintegral_prod _ ((aemeasurable_indicator_iff hS).2
        ((hDc.mono hSC').aemeasurable hS).ennreal_ofReal),
      ← lintegral_indicator hW₁.measurableSet]
    · refine lintegral_congr fun b => ?_
      by_cases hb : b ∈ W₁
      swap
      · rw [Set.indicator_of_notMem hb]
        refine ((lintegral_congr fun p => ?_).trans lintegral_zero).symm
        exact Set.indicator_of_notMem (fun h => hb (hC1 (hSC' h))) _
      rw [Set.indicator_of_mem hb]
      set K : ((R ⊗[F] E) × R) × (Fin 2 → Fin (M + 1) → (R ⊗[F] E)) → ℝ≥0∞ := fun p =>
        S.indicator 1 (b, p.1.1, p.1.2) * (wt F E R M (ρ₂ (p.1.2 - n (u b * p.1.1))) : ℝ≥0∞) *
          ENNReal.ofReal (φ (psi (algebraMap R (R ⊗[F] E) (ρ₁ b)) (u b * p.1.1) (algebraMap R (R ⊗[F] E) (ρ₂ (p.1.2 - n (u b * p.1.1)))) p.2))
        with hKdef
      have hem : Measurable fun p : ((R ⊗[F] E) × R) × (Fin 2 → Fin (M + 1) → (R ⊗[F] E)) =>
          ρ₂ (p.1.2 - n (u b * p.1.1)) := hρ₂m.comp (Continuous.measurable (by fun_prop))
      have hK : Measurable K :=
        (((measurable_one.indicator hS).comp (measurable_const.prodMk measurable_fst)).mul
          ((measurable_wt R hR M).comp hem).coe_nnreal_ennreal).mul
          (hφm.comp (continuous_psi.measurable.comp ((measurable_const.prodMk
            ((measurable_fst.fst.const_mul (u b)).prodMk (hι.measurable.comp hem))).prodMk
            measurable_snd)))
      have h1 : ∀ᵐ y ∂m, ∫⁻ z, (gram3 R σ J ⁻¹' S).indicator (fun X => ENNReal.ofReal (φ X))
          ![algebraMap R (R ⊗[F] E) (ρ₁ b) • y 0, z] ∂(Measure.pi fun _ => lam) = (p₀ : ℝ≥0∞) * ((modu (R ⊗[F] E) (u b) : ℝ≥0∞) *
            ∫⁻ t, ∫⁻ y', K (t, pairOf R σ J B y (s y) y') ∂m' ∂(lam.prod ν)) := by
        have h0 : ∀ᵐ y ∂m, ∃ g : HA R σ J, g • ratTup (F := F) R x = y := horb
        refine h0.mono fun y hy => ?_
        rw [inner_integral σ R hσ hR hst hl hν hγ hm' hgc hn hW₂.measurableSet hρ₂ _ hφm hS (ρ₁ b) b
          (hρ₁ b hb).2 (u b) (hu b hb) (fun t d h => (hCU (hSC' h)).2) (s y) y (hs y hy),
          lintegral_prod (fun t => ∫⁻ y', K (t, pairOf R σ J B y (s y) y') ∂m')
            (hK.comp (measurable_fst.prodMk ((continuous_pairOf σ R J B y (s y)).measurable.comp
              measurable_snd))).lintegral_prod_right'.aemeasurable]
      refine (congrArg (_ * ·) (lintegral_congr_ae h1)).trans ?_
      rw [lintegral_const_mul' _ _ ENNReal.coe_ne_top, lintegral_const_mul' _ _ ENNReal.coe_ne_top,
        twoStep_param σ R hN (lam.prod ν) K hK s hs, ← lintegral_const_mul' _ _ ENNReal.coe_ne_top,
        ← lintegral_const_mul' _ _ ENNReal.coe_ne_top, ← lintegral_const_mul' _ _ ENNReal.coe_ne_top]
      refine lintegral_congr fun p => ?_
      by_cases hp : (b, p) ∈ S
      · have hp' : (b, p.1, p.2) ∈ S := hp
        rw [Set.indicator_of_mem hp, ENNReal.ofReal_mul (NNReal.coe_nonneg (w (b, p))), ENNReal.ofReal_coe_nnreal,
          ofReal_integral_eq_lintegral_ofReal (hIi _ (hSC' hp)) (ae_of_all _ fun X => hφ0 _)]
        simp only [hKdef, Set.indicator_of_mem hp', Pi.one_apply, one_mul]
        rw [lintegral_const_mul' _ _ ENNReal.coe_ne_top]
        simp only [hwdef, hedef, wt, ENNReal.coe_mul, mul_assoc]
      · have hp' : (b, p.1, p.2) ∉ S := hp
        rw [Set.indicator_of_notMem hp]
        simp [hKdef, Set.indicator_of_notMem hp']
    · intro y hy
      refine (lintegral_congr fun z => ?_).trans lintegral_zero
      refine Set.indicator_of_notMem (fun h => hy ?_) _
      have h1 : gram3 R σ J ![y 0, z] ∈ S := h
      exact hC1 (hSC' h1)
  · have ha : (algebraMap F E a) ≠ 0 := by simpa using hst.2.1
    have hia : inclR R (algebraMap F E a) = algebraMap R (R ⊗[F] E) α := by
      rw [hαdef, ← IsScalarTower.algebraMap_apply]
      exact (Algebra.TensorProduct.includeRight : E →ₐ[F] (R ⊗[F] E)).commutes a
    have huα : u α = inclR R (algebraMap F E a)⁻¹ := by
      have h1 := hu α hαW
      rw [hρ₁1, one_mul, ← hia] at h1
      rw [← one_mul (u α), ← map_one (inclR R), ← inv_mul_cancel₀ ha, map_mul, mul_assoc, h1, mul_one]
    simp only [hwdef, he0, hρ₁1, hρ₂1, wt_one, map_one, mul_zero, psi_one, one_mul, mul_one, huα]
    rw [div_eq_mul_inv, map_mul, (modu_basic (R ⊗[F] E)).2.1 _ _ ((IsUnit.mk0 _ hdet).map _)
      ((IsUnit.mk0 _ (inv_ne_zero ha)).map _)]

end GlobalTheory.GaugeEx.GramDensity
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMapPairsContinuousDensityNearDiagonal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HaarMeasureGramGL2ActionTensor =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HaarMeasureGramGL2ActionTensor", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DisjointSpanPerpLat\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.T2SpaceNumberFieldInfiniteAdeles\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousDistribHaarCharUnits\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HaarModulusTensorEqModulusNorm\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.GaugeEx
open scoped TensorProduct NNReal ENNReal

namespace GlobalTheory.GaugeEx.HermMod

section Scale

def Scales {X : Type} [TopologicalSpace X] [MeasurableSpace X] (μ : Measure X) (f : X → X)
    (m : ℝ≥0) : Prop :=
  ∃ Φ : X ≃ₜ X, ⇑Φ = f ∧ μ = m • μ.map Φ

variable {X Y : Type} [TopologicalSpace X] [MeasurableSpace X] [BorelSpace X]
  [TopologicalSpace Y] [MeasurableSpace Y] [BorelSpace Y]

theorem Scales.id (μ : Measure X) : Scales μ id 1 :=
  ⟨Homeomorph.refl X, rfl, by simp⟩

theorem Scales.comp {μ : Measure X} {f g : X → X} {m n : ℝ≥0} (hf : Scales μ f m)
    (hg : Scales μ g n) : Scales μ (g ∘ f) (m * n) := by
  obtain ⟨Φ, rfl, h1⟩ := hf
  obtain ⟨Ψ, rfl, h2⟩ := hg
  refine ⟨Φ.trans Ψ, rfl, ?_⟩
  have e : μ.map (Φ.trans Ψ) = (μ.map Φ).map Ψ :=
    (Measure.map_map Ψ.continuous.measurable Φ.continuous.measurable).symm
  rw [e, mul_comm, mul_smul, ← Measure.map_smul, ← h1, ← h2]
  exact Ψ.continuous.measurable.aemeasurable

theorem Scales.prod [SecondCountableTopology X] [SecondCountableTopology Y]
    {μ : Measure X} {ν : Measure Y} [SFinite μ] [SFinite ν] {f : X → X} {g : Y → Y} {m n : ℝ≥0}
    (hf : Scales μ f m) (hg : Scales ν g n) : Scales (μ.prod ν) (Prod.map f g) (m * n) := by
  obtain ⟨Φ, rfl, h1⟩ := hf
  obtain ⟨Ψ, rfl, h2⟩ := hg
  refine ⟨Φ.prodCongr Ψ, rfl, ?_⟩
  have e : (μ.prod ν).map (Φ.prodCongr Ψ) = (μ.map Φ).prod (ν.map Ψ) :=
    (Measure.map_prod_map μ ν Φ.continuous.measurable Ψ.continuous.measurable).symm
  rw [e, mul_smul, ← Measure.prod_smul_right, ← Measure.prod_smul_left, ← h1, ← h2]

theorem Scales.shearL [SecondCountableTopology X] [SecondCountableTopology Y]
    [AddCommGroup Y] [IsTopologicalAddGroup Y]
    (μ : Measure X) (ν : Measure Y) [SFinite μ] [SFinite ν] [ν.IsAddRightInvariant]
    {g : X → Y} (hg : Continuous g) :
    Scales (μ.prod ν) (fun p => (p.1, p.2 + g p.1)) 1 := by
  refine ⟨{ toFun := fun p => (p.1, p.2 + g p.1), invFun := fun p => (p.1, p.2 - g p.1)
            left_inv := fun p => by simp, right_inv := fun p => by simp
            continuous_toFun := by fun_prop, continuous_invFun := by fun_prop }, rfl, ?_⟩
  rw [one_smul]
  refine (MeasurePreserving.skew_product (MeasurePreserving.id μ) (g := fun a y => y + g a)
    (Continuous.measurable (by unfold Function.uncurry; fun_prop))
    (Filter.Eventually.of_forall fun a => map_add_right_eq_self ν (g a))).map_eq.symm

theorem Scales.shearR [SecondCountableTopology X] [SecondCountableTopology Y]
    [AddCommGroup X] [IsTopologicalAddGroup X]
    (μ : Measure X) (ν : Measure Y) [SFinite μ] [SFinite ν] [μ.IsAddRightInvariant]
    {g : Y → X} (hg : Continuous g) :
    Scales (μ.prod ν) (fun p => (p.1 + g p.2, p.2)) 1 := by
  refine ⟨{ toFun := fun p => (p.1 + g p.2, p.2), invFun := fun p => (p.1 - g p.2, p.2)
            left_inv := fun p => by simp, right_inv := fun p => by simp
            continuous_toFun := by fun_prop, continuous_invFun := by fun_prop }, rfl, ?_⟩
  rw [one_smul]
  have h1 := MeasurePreserving.skew_product (MeasurePreserving.id ν) (g := fun a y => y + g a)
    (Continuous.measurable (by unfold Function.uncurry; fun_prop))
    (Filter.Eventually.of_forall fun a => map_add_right_eq_self μ (g a))
  exact ((Measure.measurePreserving_swap.comp h1).comp
    Measure.measurePreserving_swap).map_eq.symm

theorem Scales.mul {S : Type} [CommRing S] [TopologicalSpace S] [IsTopologicalRing S] [T2Space S]
    [LocallyCompactSpace S] [SecondCountableTopology S] [MeasurableSpace S] [BorelSpace S]
    (ν : Measure S) (hν : ν.IsAddHaarMeasure) {u : S} (hu : IsUnit u) :
    Scales ν (fun z => u * z) (modu S u) := by
  have h := ((modu_basic S).1 u hu).2 ν hν
  obtain ⟨u, rfl⟩ := hu
  exact ⟨{ toFun := fun z => u * z, invFun := fun z => (u⁻¹ : Sˣ) * z
           left_inv := fun p => by simp, right_inv := fun p => by simp
           continuous_toFun := by fun_prop, continuous_invFun := by fun_prop }, rfl, h⟩

end Scale

section Alg

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E}

theorem conj_conj (h : IsCMExt F E σ) (e : E) : σ (σ e) = e := by
  obtain ⟨τ⟩ : Nonempty (E →+* ℂ) := inferInstance
  apply τ.injective
  rw [h.2.2.2, h.2.2.2, star_star]

variable (R : Type) [CommRing R] [Algebra F R]

theorem trace_tensor (h : IsCMExt F E σ) (z : R ⊗[F] E) :
    algebraMap R (R ⊗[F] E) (Algebra.trace R (R ⊗[F] E) z) = z + sigR R σ z := by
  apply GlobalTheory.SelfDualLatticeCompare.trace_tensor <;> assumption

theorem sigR_sigR (h : IsCMExt F E σ) (z : R ⊗[F] E) : sigR R σ (sigR R σ z) = z := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | add a b ha hb => simp only [map_add (f := _), ha, hb]
  | tmul a e =>
    show a ⊗ₜ[F] σ (σ e) = _
    rw [conj_conj h]

theorem half_trace (h : IsCMExt F E σ) {z : R ⊗[F] E} (hs : sigR R σ z = z) :
    algebraMap R (R ⊗[F] E) (algebraMap F R (1 / 2) * Algebra.trace R (R ⊗[F] E) z) = z := by
  have h2 : algebraMap R (R ⊗[F] E) (algebraMap F R (1 / 2)) * 2 = 1 := by
    rw [← IsScalarTower.algebraMap_apply, ← map_ofNat (algebraMap F (R ⊗[F] E)) 2, ← map_mul,
      show (1 / 2 * 2 : F) = 1 by norm_num, map_one]
  rw [map_mul, trace_tensor R h, hs, ← two_mul, ← mul_assoc, h2, one_mul]

theorem exists_norm (h : IsCMExt F E σ) (z : R ⊗[F] E) :
    ∃ k : R, algebraMap R (R ⊗[F] E) k = z * sigR R σ z :=
  ⟨_, half_trace R h (by rw [map_mul, sigR_sigR R h, mul_comm])⟩

theorem hR_symm (h : IsCMExt F E σ) {M : ℕ} {J : Matrix (Fin M) (Fin M) E} (hJ : IsHermND σ J)
    (x y : Fin M → R ⊗[F] E) : sigR R σ (hR R σ J x y) = hR R σ J y x := by
  have hJ' : ∀ i j, sigR R σ (JR R J j i) = JR R J i j := by
    intro i j
    show (1 : R) ⊗ₜ[F] σ (J j i) = (1 : R) ⊗ₜ[F] J i j
    rw [hJ.1]

  simp only [hR, Formalism.UG.hform, map_sum, map_mul, sigR_sigR R h]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [hJ']
  ring

theorem qR_eq (h : IsCMExt F E σ) {M : ℕ} {J : Matrix (Fin M) (Fin M) E} (hJ : IsHermND σ J)
    (x : Fin M → R ⊗[F] E) : algebraMap R (R ⊗[F] E) (qR R σ J x) = hR R σ J x x :=
  half_trace R h (hR_symm R h hJ x x)

theorem algebraMap_inj : Function.Injective (algebraMap R (R ⊗[F] E)) :=
  Algebra.TensorProduct.includeLeft_injective (R := F) (S := R) (A := R) (B := E)
    (algebraMap F E).injective

theorem hR_lrAct {M : ℕ} (J : Matrix (Fin M) (Fin M) E) (γ : Matrix (Fin 2) (Fin 2) (R ⊗[F] E))
    (X : Fin 2 → Fin M → R ⊗[F] E) (a b : Fin 2) :
    hR R σ J (lrAct 1 γ X a) (lrAct 1 γ X b) =
      sigR R σ (γ 0 a) * γ 0 b * hR R σ J (X 0) (X 0) + sigR R σ (γ 0 a) * γ 1 b * hR R σ J (X 0) (X 1) +
      sigR R σ (γ 1 a) * γ 0 b * hR R σ J (X 1) (X 0) + sigR R σ (γ 1 a) * γ 1 b * hR R σ J (X 1) (X 1) := by
  simp only [hR, Formalism.UG.hform, lrAct, Matrix.one_mulVec, Fin.sum_univ_two, Finset.mul_sum,
    ← Finset.sum_add_distrib, map_add, map_mul]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring

theorem lrAct_mul {S : Type} [CommRing S] {M n : ℕ} (γ δ : Matrix (Fin n) (Fin n) S)
    (X : Fin n → Fin M → S) : lrAct 1 (γ * δ) X = lrAct 1 δ (lrAct 1 γ X) := by
  funext a i
  simp only [lrAct, Matrix.one_mulVec, Matrix.mul_apply, Finset.mul_sum, Finset.sum_mul, mul_assoc]
  exact Finset.sum_comm

end Alg

theorem haar_measure_gram_GL2_action : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] [T2Space R] [LocallyCompactSpace R] [SecondCountableTopology R] [MeasurableSpace R] [BorelSpace R], ∀ (lam : Measure (R ⊗[F] E)) (ν : Measure R) (γ : GL (Fin 2) E), lam.IsAddHaarMeasure → ν.IsAddHaarMeasure → ∃ Φ : (R × (R ⊗[F] E) × R) ≃ₜ (R × (R ⊗[F] E) × R), (∀ (M : ℕ) (J : Matrix (Fin M) (Fin M) E), IsHermND σ J → ∀ X : (Fin 2 → Fin M → R ⊗[F] E), gram3 R σ J (lrAct 1 ((γ : Matrix (Fin 2) (Fin 2) E).map (inclR R)) X) = Φ (gram3 R σ J X)) ∧ ν.prod (lam.prod ν) = (modu (R ⊗[F] E) (inclR R (γ : Matrix (Fin 2) (Fin 2) E).det) ^ 2) • (ν.prod (lam.prod ν)).map Φ := by
  intro F E _ _ _ _ _ σ h R _ _ _ _ _ _ _ _ _ lam ν γ hlam hν
  have hA : Continuous (algebraMap R (R ⊗[F] E)) :=
    IsModuleTopology.continuous_of_linearMap (Algebra.linearMap R (R ⊗[F] E))
  have hT : Continuous (Algebra.trace R (R ⊗[F] E)) :=
    IsModuleTopology.continuous_of_linearMap _
  have hun : ∀ e : E, e ≠ 0 → IsUnit (inclR (F := F) R e) := fun e he => (Ne.isUnit he).map _
  obtain ⟨-, hmul, hone, -⟩ := modu_basic (R ⊗[F] E)
  suffices H : ∀ g : Matrix (Fin 2) (Fin 2) E, g.det ≠ 0 →
      ∃ f : (R × (R ⊗[F] E) × R) → (R × (R ⊗[F] E) × R),
        (∀ (M : ℕ) (J : Matrix (Fin M) (Fin M) E), IsHermND σ J →
          ∀ X : (Fin 2 → Fin M → R ⊗[F] E),
            gram3 R σ J (lrAct 1 (g.map (inclR R)) X) = f (gram3 R σ J X)) ∧
        Scales (ν.prod (lam.prod ν)) f (modu (R ⊗[F] E) (inclR R g.det) ^ 2) by
    obtain ⟨f, h1, Φ, rfl, h2⟩ := H γ γ.det_ne_zero
    exact ⟨Φ, h1, h2⟩
  intro g hg
  refine Matrix.diagonal_transvection_induction_of_det_ne_zero (fun g : Matrix (Fin 2) (Fin 2) E =>
      ∃ f : (R × (R ⊗[F] E) × R) → (R × (R ⊗[F] E) × R),
        (∀ (M : ℕ) (J : Matrix (Fin M) (Fin M) E), IsHermND σ J →
          ∀ X : (Fin 2 → Fin M → R ⊗[F] E),
            gram3 R σ J (lrAct 1 (g.map (inclR R)) X) = f (gram3 R σ J X)) ∧
        Scales (ν.prod (lam.prod ν)) f (modu (R ⊗[F] E) (inclR R g.det) ^ 2)) g hg ?_ ?_ ?_
  · intro D hD
    rw [Matrix.det_diagonal, Fin.prod_univ_two] at hD ⊢
    have u0 := hun _ (left_ne_zero_of_mul hD)
    have u1 := hun _ (right_ne_zero_of_mul hD)
    obtain ⟨n0, hn0⟩ := exists_norm R h (inclR R (D 0))
    obtain ⟨n1, hn1⟩ := exists_norm R h (inclR R (D 1))
    obtain ⟨v0, e0⟩ := modu_eq_modu_norm F E σ h R _ _ u0 hn0
    obtain ⟨v1, e1⟩ := modu_eq_modu_norm F E σ h R _ _ u1 hn1
    obtain ⟨-, e2⟩ := modu_eq_modu_norm F E σ h R _ n0 (u0.map (sigR R σ))
      (by rw [hn0, sigR_sigR R h, mul_comm])
    refine ⟨_, ?_, by
      have := (Scales.mul ν hν v0).prod ((Scales.mul lam hlam ((u0.map (sigR R σ)).mul u1)).prod
        (Scales.mul ν hν v1))
      rw [hmul _ _ (u0.map (sigR R σ)) u1, e2, e1] at this
      rw [map_mul, hmul _ _ u0 u1, e0, e1]
      convert this using 1
      ring⟩
    intro M J hJ X
    refine Prod.ext (algebraMap_inj (F := F) (E := E) R ?_) (Prod.ext ?_ (algebraMap_inj (F := F) (E := E) R ?_))
    all_goals simp [-Algebra.TensorProduct.algebraMap_apply, gram3, qR_eq R h hJ, hR_lrAct, hn0, hn1]
    all_goals ring
  · rintro ⟨i, j, hij, t⟩
    obtain ⟨n, hn⟩ := exists_norm R h (inclR R t)
    rw [Matrix.TransvectionStruct.det, map_one, hone, one_pow]
    fin_cases i <;> fin_cases j
    · exact absurd rfl hij
    · refine ⟨_, ?_, by
        have := ((Scales.id ν).prod (Scales.shearL lam ν
          (g := fun c => Algebra.trace R (R ⊗[F] E) (sigR R σ (inclR R t) * c)) (by fun_prop))).comp
          (Scales.shearL ν (lam.prod ν)
            (g := fun a => (inclR R t * algebraMap R (R ⊗[F] E) a, n * a)) (by fun_prop))
        simpa only [mul_one] using this⟩
      intro M J hJ X
      refine Prod.ext (algebraMap_inj (F := F) (E := E) R ?_) (Prod.ext ?_ (algebraMap_inj (F := F) (E := E) R ?_))
      all_goals simp [-Algebra.TensorProduct.algebraMap_apply, gram3, qR_eq R h hJ, hR_lrAct, hn, trace_tensor R h, sigR_sigR R h, hR_symm R h hJ,
        Matrix.TransvectionStruct.toMatrix, Matrix.transvection]
      all_goals ring
    · refine ⟨_, ?_, by
        have := (Scales.shearR ν (lam.prod ν)
            (g := fun p => Algebra.trace R (R ⊗[F] E) (sigR R σ (inclR R t) * sigR R σ p.1) + n * p.2)
            (by have := GlobalTheory.AdelicUnitaryTop.continuous_sigR R σ; fun_prop)).comp
          ((Scales.id ν).prod (Scales.shearR lam ν
          (g := fun d => sigR R σ (inclR R t) * algebraMap R (R ⊗[F] E) d) (by fun_prop)))
        simpa only [mul_one] using this⟩
      intro M J hJ X
      refine Prod.ext (algebraMap_inj (F := F) (E := E) R ?_) (Prod.ext ?_ (algebraMap_inj (F := F) (E := E) R ?_))
      all_goals simp [-Algebra.TensorProduct.algebraMap_apply, gram3, qR_eq R h hJ, hR_lrAct, hn, trace_tensor R h, sigR_sigR R h, hR_symm R h hJ,
        Matrix.TransvectionStruct.toMatrix, Matrix.transvection]
      all_goals ring
    · exact absurd rfl hij
  · rintro A B hA hB ⟨f, hf, sf⟩ ⟨k, hk, sk⟩
    refine ⟨k ∘ f, fun M J hJ X => ?_, ?_⟩
    · rw [Matrix.map_mul, lrAct_mul, hk M J hJ, hf M J hJ]; rfl
    · rw [Matrix.det_mul, map_mul, hmul _ _ (hun _ hA) (hun _ hB), mul_pow]
      exact sf.comp sk

end GlobalTheory.GaugeEx.HermMod
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HaarMeasureGramGL2ActionTensor =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwoStepMeasureOrthogonalBasisSwapLocal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwoStepMeasureOrthogonalBasisSwapLocal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.T2SpaceNumberFieldInfiniteAdeles\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousDistribHaarCharUnits\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FibreFamilyHermitianQuadraticFormAtUnitProps\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FibreMeasureInvariantSupportedOrbitNeZero\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GramMapPairsContinuousDensityNearDiagonal\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HaarMeasureGramGL2ActionTensor\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwoStepPairMeasureFiniteOnCompactsStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnitaryStabilizerAnisotropicVectorEquivComplemen\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TensorNiceRingArtinianReducedOpenUnits\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.VectorTupleProductMeasureTwoSidedAction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Integral.RieszMarkovKakutani.NNReal\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.GaugeEx
open scoped TensorProduct NNReal ENNReal

noncomputable section

namespace GlobalTheory.GaugeEx.SwapLoc

theorem dens_compare {V T : Type} [TopologicalSpace V] [MeasurableSpace V] [BorelSpace V]
    [TopologicalSpace T] [MeasurableSpace T] [BorelSpace T]
    (μ : Measure V) (τ : Measure T) [SigmaFinite τ] [τ.IsOpenPosMeasure]
    (g : V → T) (Γ : V ≃ₜ V) (Φ : T ≃ₜ T) (hg : ∀ X, g (Γ X) = Φ (g X))
    (c₁ c₂ : ℝ≥0) (hμ : μ = c₁ • μ.map Γ) (hτ : τ = c₂ • τ.map Φ) (φ : V → ℝ)
    (U₁ U₂ : Set T) (D₁ D₂ : T → ℝ) (t : T) (hU₁ : IsOpen U₁) (hU₂ : IsOpen U₂)
    (ht₁ : t ∈ U₁) (ht₂ : Φ t ∈ U₂) (hD₁ : ContinuousOn D₁ U₁) (hD₂ : ContinuousOn D₂ U₂)
    (h0₁ : 0 ≤ D₁ t) (h0₂ : 0 ≤ D₂ (Φ t))
    (h₁ : ∀ S ⊆ U₁, MeasurableSet S →
      ∫⁻ X in g ⁻¹' S, ENNReal.ofReal (φ (Γ X)) ∂μ = ∫⁻ t in S, ENNReal.ofReal (D₁ t) ∂τ)
    (h₂ : ∀ S ⊆ U₂, MeasurableSet S →
      ∫⁻ X in g ⁻¹' S, ENNReal.ofReal (φ X) ∂μ = ∫⁻ t in S, ENNReal.ofReal (D₂ t) ∂τ) :
    (c₂ : ℝ) * D₂ (Φ t) = c₁ * D₁ t := by
  set W : Set T := U₁ ∩ Φ ⁻¹' U₂ with hW
  have hWo : IsOpen W := hU₁.inter (hU₂.preimage Φ.continuous)
  have k₁ : ContinuousOn (fun s => ENNReal.ofReal ((c₁ : ℝ) * D₁ s)) W :=
    ENNReal.continuous_ofReal.comp_continuousOn
      (continuousOn_const.mul (hD₁.mono Set.inter_subset_left))
  have k₂ : ContinuousOn (fun s => ENNReal.ofReal ((c₂ : ℝ) * D₂ (Φ s))) W :=
    ENNReal.continuous_ofReal.comp_continuousOn
      (continuousOn_const.mul (hD₂.comp Φ.continuous.continuousOn fun s hs => hs.2))
  have hae : (fun s => ENNReal.ofReal ((c₂ : ℝ) * D₂ (Φ s))) =ᵐ[τ.restrict W]
      fun s => ENNReal.ofReal ((c₁ : ℝ) * D₁ s) := by
    refine ae_eq_of_forall_setLIntegral_eq_of_sigmaFinite₀ (k₂.aemeasurable hWo.measurableSet)
      (k₁.aemeasurable hWo.measurableSet) fun s hs _ => ?_
    rw [Measure.restrict_restrict hs]
    set S := s ∩ W with hS
    have hSm : MeasurableSet S := hs.inter hWo.measurableSet
    have e₁ := h₁ S (fun z hz => hz.2.1) hSm
    have e₂ := h₂ (Φ '' S) (by rintro _ ⟨z, hz, rfl⟩; exact hz.2.2)
      (Φ.measurableEmbedding.measurableSet_image.2 hSm)
    have a₁ : ∫⁻ X in g ⁻¹' (Φ '' S), ENNReal.ofReal (φ X) ∂μ =
        c₁ * ∫⁻ X in g ⁻¹' S, ENNReal.ofReal (φ (Γ X)) ∂μ := by
      conv_lhs => rw [hμ]
      rw [Measure.restrict_smul, lintegral_smul_measure, Γ.measurableEmbedding.restrict_map,
        Γ.measurableEmbedding.lintegral_map]
      have : Γ ⁻¹' (g ⁻¹' (Φ '' S)) = g ⁻¹' S := by
        ext X
        simp only [Set.mem_preimage, hg]
        exact Φ.injective.mem_set_image
      rw [this]; rfl
    have a₂ : ∫⁻ t in Φ '' S, ENNReal.ofReal (D₂ t) ∂τ =
        c₂ * ∫⁻ t in S, ENNReal.ofReal (D₂ (Φ t)) ∂τ := by
      conv_lhs => rw [hτ]
      rw [Measure.restrict_smul, lintegral_smul_measure, Φ.measurableEmbedding.restrict_map,
        Φ.measurableEmbedding.lintegral_map, Set.preimage_image_eq _ Φ.injective]
      rfl
    simp only [ENNReal.ofReal_mul (NNReal.coe_nonneg _), ENNReal.ofReal_coe_nnreal]
    rw [lintegral_const_mul' _ _ ENNReal.coe_ne_top, lintegral_const_mul' _ _ ENNReal.coe_ne_top,
      ← a₂, ← e₂, a₁, e₁]
  have := Measure.eqOn_open_of_ae_eq hae hWo k₂ k₁ (show t ∈ W from ⟨ht₁, ht₂⟩)
  exact (ENNReal.ofReal_eq_ofReal_iff (mul_nonneg c₂.2 h0₂) (mul_nonneg c₁.2 h0₁)).1 this

theorem lrAct_one_apply {S : Type} [CommRing S] {n M : ℕ} (γ : Matrix (Fin n) (Fin n) S)
    (X : Fin n → Fin M → S) (a : Fin n) (i : Fin M) :
    lrAct 1 γ X a i = ∑ c, X c i * γ c a := by
  simp [lrAct]

theorem lrAct_one_mul {S : Type} [CommRing S] {n M : ℕ} (γ δ : Matrix (Fin n) (Fin n) S)
    (X : Fin n → Fin M → S) : lrAct 1 δ (lrAct 1 γ X) = lrAct 1 (γ * δ) X := by
  funext a i
  simp only [lrAct_one_apply, Matrix.mul_apply, Finset.sum_mul, Finset.mul_sum, mul_assoc]
  exact Finset.sum_comm

theorem lrAct_one_one {S : Type} [CommRing S] {n M : ℕ}
    (X : Fin n → Fin M → S) : lrAct 1 1 X = X := by
  funext a i
  simp [lrAct_one_apply, Matrix.one_apply]

theorem continuous_lrAct_one {S : Type} [CommRing S] [TopologicalSpace S] [IsTopologicalRing S]
    {n M : ℕ} (γ : Matrix (Fin n) (Fin n) S) :
    Continuous (lrAct (M := M) 1 γ) := by
  refine continuous_pi fun a => continuous_pi fun i => ?_
  simp only [lrAct_one_apply]
  fun_prop

def lrHomeo {S : Type} [CommRing S] [TopologicalSpace S] [IsTopologicalRing S]
    {n M : ℕ} (γ δ : Matrix (Fin n) (Fin n) S) (h₁ : γ * δ = 1) (h₂ : δ * γ = 1) :
    (Fin n → Fin M → S) ≃ₜ (Fin n → Fin M → S) where
  toFun := lrAct 1 γ
  invFun := lrAct 1 δ
  left_inv X := by rw [lrAct_one_mul, h₁, lrAct_one_one]
  right_inv X := by rw [lrAct_one_mul, h₂, lrAct_one_one]
  continuous_toFun := continuous_lrAct_one γ
  continuous_invFun := continuous_lrAct_one δ

section Alg

variable {F E : Type} [Field F] [Field E] [Algebra F E] (R : Type) [CommRing R] [Algebra F R]
  (σ : E →ₐ[F] E)

theorem hR_incl {M : ℕ} (J : Matrix (Fin M) (Fin M) E) (x y : Fin M → E) :
    hR R σ J (fun i => inclR R (x i)) (fun i => inclR R (y i)) = inclR R (hE σ J x y) := by

  simp [hR, hE, Formalism.UG.hform, map_sum, JR, sigR, inclR]

theorem qR_incl [CharZero F] (h2 : Module.finrank F E = 2) {M : ℕ} (J : Matrix (Fin M) (Fin M) E)
    (x : Fin M → E) (a : F) (h : hE σ J x x = algebraMap F E a) :
    qR R σ J (fun i => inclR R (x i)) = algebraMap F R a := by
  have : Module.Finite F E := Module.finite_of_finrank_pos (by omega)
  have e : inclR (F := F) R (algebraMap F E a) = algebraMap R (R ⊗[F] E) (algebraMap F R a) := by
    rw [← IsScalarTower.algebraMap_apply]
    exact (Algebra.TensorProduct.includeRight : E →ₐ[F] R ⊗[F] E).commutes a
  rw [qR, hR_incl, h, e, Algebra.trace_algebraMap_of_basis
    (Algebra.TensorProduct.basis R (Module.finBasisOfFinrankEq F E h2))]
  rw [Fintype.card_fin, nsmul_eq_mul, ← mul_assoc]
  have : algebraMap F R (1 / 2) * ((2 : ℕ) : R) = 1 := by
    rw [← map_natCast (algebraMap F R), ← map_mul]; norm_num
  rw [this, one_mul]

theorem hE_mulVec {M M' : ℕ} (J : Matrix (Fin M) (Fin M) E) (B : Matrix (Fin M) (Fin M') E)
    (y : Fin M' → E) :
    hE σ J (B.mulVec y) (B.mulVec y) = hE σ (Formalism.UG.cT (σ : E →+* E) B * J * B) y y := by
  have k : ∀ {n : ℕ} (A : Matrix (Fin n) (Fin n) E) (u v : Fin n → E),
      hE σ A u v = (fun i => σ (u i)) ⬝ᵥ A.mulVec v := by
    intro n A u v
    simp [hE, Formalism.UG.hform, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]
  have : (fun i => σ (B.mulVec y i)) = Matrix.vecMul (fun i => σ (y i)) (Formalism.UG.cT (σ : E →+* E) B) := by
    funext i
    simp [Matrix.mulVec, Matrix.vecMul, dotProduct, Formalism.UG.cT, mul_comm]
  rw [k, k, this, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec]

theorem hE_mulVec_zero {M M' : ℕ} (J : Matrix (Fin M) (Fin M) E) (B : Matrix (Fin M) (Fin M') E)
    (x : Fin M → E) (h : ∀ j, hE σ J x (fun i => B i j) = 0) (y : Fin M' → E) :
    hE σ J x (B.mulVec y) = 0 := by
  have : hE σ J x (B.mulVec y) = ∑ j, hE σ J x (fun i => B i j) * y j := by
    simp only [hE, Formalism.UG.hform, Matrix.mulVec, dotProduct, Finset.mul_sum, Finset.sum_mul, mul_assoc]
    rw [Finset.sum_comm (s := (Finset.univ : Finset (Fin M')))]
    exact Finset.sum_congr rfl fun i _ => Finset.sum_comm
  simp [this, h]

theorem unitaryOrthogonalComplement_gram_step [CharZero F] (h2 : Module.finrank F E = 2) {M : ℕ}
    (J : Matrix (Fin (M + 1)) (Fin (M + 1)) E) (x : Fin 1 → Fin (M + 1) → E) (a : F)
    (B : Matrix (Fin (M + 1)) (Fin M) E) (J' : Matrix (Fin M) (Fin M) E) (y : Fin M → E) (b : F)
    (h : StepData σ J x a B J') (hy : hE σ J' y y = algebraMap F E b) :
    gram3 R σ J (ratTup (F := F) R ![x 0, B.mulVec y]) = (algebraMap F R a, 0, algebraMap F R b) := by
  obtain ⟨-, -, hx, hB, hJ, -⟩ := h
  refine Prod.ext (qR_incl R σ h2 J (x 0) a hx) (Prod.ext ?_ (qR_incl R σ h2 J (B.mulVec y) b ?_))
  · have := hR_incl R σ J (x 0) (B.mulVec y)
    rw [hE_mulVec_zero σ J B (x 0) hB, map_zero] at this
    exact this
  · rw [hE_mulVec, ← hJ, hy]

theorem ratTup_lrAct {n M : ℕ} (γ : Matrix (Fin n) (Fin n) E) (X : Fin n → Fin M → E) :
    ratTup (F := F) R (lrAct 1 γ X) = lrAct 1 (γ.map (inclR R)) (ratTup (F := F) R X) := by
  funext a i

  simp [ratTup, lrAct_one_apply, map_sum]

end Alg

theorem twoStep_swap_local : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (M : ℕ) (J : Matrix (Fin (M + 1)) (Fin (M + 1)) E) (x₁ : Fin 1 → Fin (M + 1) → E) (a₁ : F) (B₁ : Matrix (Fin (M + 1)) (Fin M) E) (J₁' : Matrix (Fin M) (Fin M) E) (x₂ : Fin 1 → Fin (M + 1) → E) (a₂ : F) (B₂ : Matrix (Fin (M + 1)) (Fin M) E) (J₂' : Matrix (Fin M) (Fin M) E) (y₁ y₂ : Fin 1 → Fin M → E) (b₁ b₂ : F) (γ : GL (Fin 2) E), StepData σ J x₁ a₁ B₁ J₁' → StepData σ J x₂ a₂ B₂ J₂' → b₁ ≠ 0 → b₂ ≠ 0 → hE σ J₁' (y₁ 0) (y₁ 0) = algebraMap F E b₁ → hE σ J₂' (y₂ 0) (y₂ 0) = algebraMap F E b₂ → ![x₂ 0, B₂.mulVec (y₂ 0)] = lrAct 1 (γ : Matrix (Fin 2) (Fin 2) E) ![x₁ 0, B₁.mulVec (y₁ 0)] → ∃ u : E, u ≠ 0 ∧ ∀ (R : Type) [CommRing R] [Algebra F R] [TopologicalSpace R] [IsTopologicalRing R] [T2Space R] [LocallyCompactSpace R] [SecondCountableTopology R] [MeasurableSpace R] [BorelSpace R], Nice R → ∀ (lam : Measure (R ⊗[F] E)) (ν : Measure R) (m₁ m₂ : Measure (Fin 1 → Fin (M + 1) → R ⊗[F] E)) (m₁' m₂' : Measure (Fin 1 → Fin M → R ⊗[F] E)) (N₁ N₂ : Measure (Fin 2 → Fin (M + 1) → R ⊗[F] E)), lam.IsAddHaarMeasure → ν.IsAddHaarMeasure → FibAt R σ J (tupMeas lam 1 (M + 1)) ν (algebraMap F R a₁) m₁ → FibAt R σ J₁' (tupMeas lam 1 M) ν (algebraMap F R b₁) m₁' → FibAt R σ J (tupMeas lam 1 (M + 1)) ν (algebraMap F R a₂) m₂ → FibAt R σ J₂' (tupMeas lam 1 M) ν (algebraMap F R b₂) m₂' → TwoStep R σ J x₁ B₁ m₁ m₁' N₁ → TwoStep R σ J x₂ B₂ m₂ m₂' N₂ → N₂ = modu (R ⊗[F] E) (inclR R u) • N₁.map (lrAct 1 ((γ : Matrix (Fin 2) (Fin 2) E).map (inclR R))) := by
  intro F E _ _ _ _ _ σ hσ M J x₁ a₁ B₁ J₁' x₂ a₂ B₂ J₂' y₁ y₂ b₁ b₂ γ hS₁ hS₂ hb₁ hb₂ hy₁ hy₂ hγ
  have hP₁ := (_root_.GlobalTheory.FrameStep.frameStep F E σ hσ (AF F) M J x₁ a₁ B₁ J₁' hS₁).1
  have hP₂ := (_root_.GlobalTheory.FrameStep.frameStep F E σ hσ (AF F) M J x₂ a₂ B₂ J₂' hS₂).1
  have hd : (γ : Matrix (Fin 2) (Fin 2) E).det ≠ 0 := (Matrix.isUnits_det_units γ).ne_zero
  set d := (γ : Matrix (Fin 2) (Fin 2) E).det with hdd
  have hw₁ : (consCol x₁ B₁).det / algebraMap F E a₁ ≠ 0 :=
    div_ne_zero hP₁ ((map_ne_zero _).2 hS₁.2.1)
  have hw₂ : (consCol x₂ B₂).det / algebraMap F E a₂ ≠ 0 :=
    div_ne_zero hP₂ ((map_ne_zero _).2 hS₂.2.1)
  set w₁ := (consCol x₁ B₁).det / algebraMap F E a₁ with hw₁d
  set w₂ := (consCol x₂ B₂).det / algebraMap F E a₂ with hw₂d
  have hu : d ^ (M + 1) * w₁ / (d ^ 2 * w₂) ≠ 0 := by positivity
  refine ⟨d ^ (M + 1) * w₁ / (d ^ 2 * w₂), hu, ?_⟩
  have hue : d ^ (M + 1) * w₁ / (d ^ 2 * w₂) * (d ^ 2 * w₂) = d ^ (M + 1) * w₁ :=
    div_mul_cancel₀ _ (by positivity)
  generalize d ^ (M + 1) * w₁ / (d ^ 2 * w₂) = u at hu hue ⊢
  intro R _ _ _ _ _ _ _ _ _ hR lam ν m₁ m₂ m₁' m₂' N₁ N₂ hlam hν f₁ f₁' f₂ f₂' t₁ t₂
  obtain ⟨hart, hred, -⟩ := nice_tensor F E R hR
  obtain ⟨hpos, hmul, hone, -⟩ := modu_basic (R ⊗[F] E)
  have un : ∀ {z : E}, z ≠ 0 → IsUnit (inclR (F := F) R z) := fun hz => (IsUnit.mk0 _ hz).map _
  have unF : ∀ {z : F}, z ≠ 0 → IsUnit (algebraMap F R z) := fun hz => (IsUnit.mk0 _ hz).map _
  have mm : ∀ {z w : E}, z ≠ 0 → w ≠ 0 → modu (R ⊗[F] E) (inclR R (z * w)) =
      modu (R ⊗[F] E) (inclR R z) * modu (R ⊗[F] E) (inclR R w) := fun hz hw => by
    rw [map_mul, hmul _ _ (un hz) (un hw)]
  have mp : ∀ k : ℕ, modu (R ⊗[F] E) (inclR R (d ^ k)) = modu (R ⊗[F] E) (inclR R d) ^ k := by
    intro k
    induction k with
    | zero => simp [hone]
    | succ k ih => rw [pow_succ, mm (pow_ne_zero _ hd) hd, ih, pow_succ]
  have key : modu (R ⊗[F] E) (inclR R u) * (modu (R ⊗[F] E) (inclR R d) ^ 2 *
      modu (R ⊗[F] E) (inclR R w₂)) =
      modu (R ⊗[F] E) (inclR R d) ^ (M + 1) * modu (R ⊗[F] E) (inclR R w₁) := by
    rw [← mp, ← mp, ← mm (pow_ne_zero _ hd) hw₂, ← mm (pow_ne_zero _ hd) hw₁,
      ← mm hu (by positivity), hue]
  have fin₁ : IsFiniteMeasureOnCompacts N₁ :=
    GlobalTheory.T.twoStep_pair_measure_finite_on_compacts F E σ hσ R hR M J x₁ a₁ B₁ J₁' m₁ m₁' N₁ hS₁
      (_root_.GlobalTheory.GaugeEx.FibProp.fibre_invariant_orbit_ne_zero F E σ hσ R hR _ J x₁ a₁ lam ν m₁ hS₁.1 hS₁.2.1 hS₁.2.2.1 hlam hν f₁).2.1
      (_root_.GlobalTheory.GaugeEx.FibBasic.fibAt_basic F E σ R hR _ J _ ν _ m₁ hν (unF hS₁.2.1) f₁).2.1
      (_root_.GlobalTheory.GaugeEx.FibBasic.fibAt_basic F E σ R hR _ J₁' _ ν _ m₁' hν (unF hb₁) f₁').2.1
      (_root_.GlobalTheory.GaugeEx.FibProp.fibre_invariant_orbit_ne_zero F E σ hσ R hR _ J₁' y₁ b₁ lam ν m₁' hS₁.2.2.2.2.2 hb₁ hy₁ hlam hν f₁').1 t₁
  have fin₂ : IsFiniteMeasureOnCompacts N₂ :=
    GlobalTheory.T.twoStep_pair_measure_finite_on_compacts F E σ hσ R hR M J x₂ a₂ B₂ J₂' m₂ m₂' N₂ hS₂
      (_root_.GlobalTheory.GaugeEx.FibProp.fibre_invariant_orbit_ne_zero F E σ hσ R hR _ J x₂ a₂ lam ν m₂ hS₂.1 hS₂.2.1 hS₂.2.2.1 hlam hν f₂).2.1
      (_root_.GlobalTheory.GaugeEx.FibBasic.fibAt_basic F E σ R hR _ J _ ν _ m₂ hν (unF hS₂.2.1) f₂).2.1
      (_root_.GlobalTheory.GaugeEx.FibBasic.fibAt_basic F E σ R hR _ J₂' _ ν _ m₂' hν (unF hb₂) f₂').2.1
      (_root_.GlobalTheory.GaugeEx.FibProp.fibre_invariant_orbit_ne_zero F E σ hσ R hR _ J₂' y₂ b₂ lam ν m₂' hS₂.2.2.2.2.2 hb₂ hy₂ hlam hν f₂').1 t₂
  let Γ : (Fin 2 → Fin (M + 1) → R ⊗[F] E) ≃ₜ (Fin 2 → Fin (M + 1) → R ⊗[F] E) :=
    lrHomeo ((γ : Matrix (Fin 2) (Fin 2) E).map (inclR R))
      (((γ⁻¹ : GL (Fin 2) E) : Matrix (Fin 2) (Fin 2) E).map (inclR R))
      (by rw [← Matrix.map_mul, Units.mul_inv]; simp) (by rw [← Matrix.map_mul, Units.inv_mul]; simp)
  change N₂ = modu (R ⊗[F] E) (inclR R u) • N₁.map Γ
  obtain ⟨Φ, hΦ, hτ⟩ := _root_.GlobalTheory.GaugeEx.HermMod.haar_measure_gram_GL2_action F E σ hσ R lam ν γ hlam hν
  have hdet : ((γ : Matrix (Fin 2) (Fin 2) E).map (inclR (F := F) R)).det = inclR R d :=
    ((inclR (F := F) R).map_det _).symm
  have hμ := _root_.GlobalTheory.GaugeEx.ModDet.tupMeas_lrAct (R ⊗[F] E) hart hred lam hlam 2 (M + 1) 1
    ((γ : Matrix (Fin 2) (Fin 2) E).map (inclR R)) (by simp) (by rw [hdet]; exact un hd)
  rw [hdet, Matrix.det_one, hone, one_pow, one_mul] at hμ
  have g₁ := unitaryOrthogonalComplement_gram_step R σ hσ.2.2.1 J x₁ a₁ B₁ J₁' (y₁ 0) b₁ hS₁ hy₁
  have g₂ := unitaryOrthogonalComplement_gram_step R σ hσ.2.2.1 J x₂ a₂ B₂ J₂' (y₂ 0) b₂ hS₂ hy₂
  rw [hγ, ratTup_lrAct, hΦ _ J hS₁.1, g₁] at g₂
  have fin₃ : IsFiniteMeasureOnCompacts (N₁.map Γ) := Measure.IsFiniteMeasureOnCompacts.map N₁ Γ
  have : TopologicalSpace.PseudoMetrizableSpace (Fin 2 → Fin (M + 1) → R ⊗[F] E) :=
    TopologicalSpace.PseudoMetrizableSpace.of_regularSpace_secondCountableTopology _
  have r₂ : N₂.Regular := Measure.Regular.of_sigmaCompactSpace_of_isLocallyFiniteMeasure _
  have r₁ : (N₁.map Γ).Regular := Measure.Regular.of_sigmaCompactSpace_of_isLocallyFiniteMeasure _
  refine Measure.ext_of_integral_eq_on_compactlySupported_nnreal fun f => ?_
  have fc : Continuous fun X => (f X : ℝ) := NNReal.continuous_coe.comp f.continuous
  have fs : HasCompactSupport fun X => (f X : ℝ) :=
    f.hasCompactSupport.comp_left (g := fun r : ℝ≥0 => (r : ℝ)) rfl
  obtain ⟨U₂, D₂, o₂, e₂, c₂, n₂, i₂, v₂⟩ := _root_.GlobalTheory.GaugeEx.GramDensity.gram_density F E σ hσ R hR M J x₂ a₂ B₂ J₂' y₂ b₂ lam ν
    m₂ m₂' N₂ hS₂ hb₂ hy₂ hlam hν f₂ f₂' t₂ (fun X => (f X : ℝ)) fc fs (fun X => (f X).2)
  obtain ⟨U₁, D₁, o₁, e₁, c₁, n₁, i₁, v₁⟩ := _root_.GlobalTheory.GaugeEx.GramDensity.gram_density F E σ hσ R hR M J x₁ a₁ B₁ J₁' y₁ b₁ lam ν
    m₁ m₁' N₁ hS₁ hb₁ hy₁ hlam hν f₁ f₁' t₁ (fun X => (f (Γ X) : ℝ)) (fc.comp Γ.continuous)
    (fs.comp_homeomorph Γ) (fun X => (f (Γ X)).2)
  have cmp := dens_compare (tupMeas lam 2 (M + 1)) (ν.prod (lam.prod ν)) (gram3 R σ J) Γ Φ
    (hΦ _ J hS₁.1) _ _ hμ hτ (fun X => (f X : ℝ)) U₁ U₂ D₁ D₂ _ o₁ o₂ e₁ (g₂ ▸ e₂) c₁ c₂
    (n₁ _ e₁) (n₂ _ (g₂ ▸ e₂)) i₁ i₂
  rw [g₂, v₁, v₂] at cmp
  rw [integral_smul_nnreal_measure, Γ.measurableEmbedding.integral_map, NNReal.smul_def, smul_eq_mul]
  have p₁ : (0 : ℝ) < modu (R ⊗[F] E) (inclR R d) := (hpos _ (un hd)).1
  have p₂ : (0 : ℝ) < modu (R ⊗[F] E) (inclR R w₂) := (hpos _ (un hw₂)).1
  have key' := congrArg (fun r : ℝ≥0 => (r : ℝ)) key
  simp only [NNReal.coe_mul, NNReal.coe_pow] at key' cmp
  refine mul_left_cancel₀ (mul_pos (pow_pos p₁ 2) p₂).ne' ?_
  rw [mul_assoc, cmp, ← mul_assoc, ← key']
  ring

end GlobalTheory.GaugeEx.SwapLoc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwoStepMeasureOrthogonalBasisSwapLocal =====
