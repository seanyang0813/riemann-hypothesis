module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Definitions.Foundations.GLintEqKOAndPrincEqKOne
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsSplitPlace
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.SerFixOne
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.RingTheory.PicardGroup

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.TypeRec GlobalTheory.GLq GlobalTheory.GLp GlobalTheory.SerSys Formalism.MainNotions.ArithmeticCylinders
attribute [local instance] GlobalTheory.LabPin.instCM

noncomputable section

namespace GlobalTheory.SerSys.LabDepth

open GlobalTheory.WeilDeligne

section Transport

variable {F : Type} [Field F] [NumberField F] (w : HeightOneSpectrum (𝓞 F)) (p : ℕ) [Fact p.Prime]
  (hw : ((p : ℕ) : 𝓞 F) ∈ w.asIdeal) (i : ℚ_[p] ≃+* w.adicCompletion F) (hi : Continuous i)
include hw hi

theorem norm_symm_le (z : w.adicCompletion F) (hz : ‖z‖ ≤ 1) : ‖i.symm z‖ ≤ 1 := by
  by_contra h
  push Not at h
  set t := i.symm z with ht
  have ht0 : t ≠ 0 := by rintro h0; rw [h0, norm_zero] at h; linarith
  have h1 : ‖t⁻¹‖ < 1 := by rw [norm_inv]; exact inv_lt_one_of_one_lt₀ h
  have h2 : ‖t⁻¹‖ ≤ (p : ℝ) ^ (-1 : ℤ) := by
    have := (Padic.norm_le_pow_iff_norm_lt_pow_add_one t⁻¹ (-1)).2 (by simpa using h1)
    exact this
  have hp0 : (p : ℚ_[p]) ≠ 0 := Nat.cast_ne_zero.2 (Fact.out : p.Prime).ne_zero
  have h3 : ‖t⁻¹ / (p : ℚ_[p])‖ ≤ 1 := by
    rw [norm_div, Padic.norm_p, div_le_one₀ (by have := (Fact.out : p.Prime).one_lt; positivity)]
    simpa using h2
  have h4 := GlobalTheory.TypeRec.Model.emb_le w p i.toRingHom hi _ h3
  have e : z⁻¹ = (p : w.adicCompletion F) * i.toRingHom (t⁻¹ / (p : ℚ_[p])) := by
    rw [map_div₀, map_inv₀, map_natCast]
    change z⁻¹ = (p : w.adicCompletion F) * ((i t)⁻¹ / p)
    rw [ht, RingEquiv.apply_symm_apply]
    have hpE : (p : w.adicCompletion F) ≠ 0 := Nat.cast_ne_zero.2 (Fact.out : p.Prime).ne_zero
    field_simp
  have h5 : ‖z⁻¹‖ < 1 := by
    rw [e, norm_mul]
    exact lt_of_le_of_lt (mul_le_of_le_one_right (norm_nonneg _) h4) (Formalism.BasicNotions.Examples₂.LocF.norm_l_lt w p hw)
  have hz0 : z ≠ 0 := by rintro rfl; simp [ht] at ht0
  rw [norm_inv] at h5
  have := (one_le_inv₀ (norm_pos_iff.2 hz0)).2 hz
  linarith


omit hw in
theorem norm_symm_lt (z : w.adicCompletion F) (hz : ‖z‖ < 1) : ‖i.symm z‖ < 1 := by
  by_contra h
  push Not at h
  set t := i.symm z with ht
  have ht0 : t ≠ 0 := by rintro h0; rw [h0, norm_zero] at h; linarith
  have h1 : ‖t⁻¹‖ ≤ 1 := by rw [norm_inv]; exact inv_le_one_of_one_le₀ h
  have h4 := GlobalTheory.TypeRec.Model.emb_le w p i.toRingHom hi _ h1
  have e : i.toRingHom t⁻¹ = z⁻¹ := by
    rw [map_inv₀]; change (i t)⁻¹ = z⁻¹; rw [ht, RingEquiv.apply_symm_apply]
  rw [e, norm_inv] at h4
  have hz0 : z ≠ 0 := by rintro rfl; simp [ht] at ht0
  have := (one_lt_inv₀ (norm_pos_iff.2 hz0)).2 hz
  linarith

theorem exists_ker_red {n : ℕ} (u : GL (Fin n) (w.adicCompletion F))
    (hu : u ∈ GlobalTheory.SplitWeil.KOne (w.adicCompletion F) (Fin n)) :
    ∃ y : (GlobalTheory.GLp.red p n).ker, GlobalTheory.GLp.inc p n y = Matrix.GeneralLinearGroup.map i.symm.toRingHom u := by
  rw [← (GlobalTheory.AdelicU.GLint_eq_KO_and_princ_eq_KOne w n).2, GlobalTheory.AdelicU.mem_princ_iff,
    GlobalTheory.AdelicU.mem_GLint_iff] at hu
  obtain ⟨⟨h1, h2⟩, h3⟩ := hu
  have hM : ∀ a b, ‖i.symm (u.1 a b)‖ ≤ 1 := fun a b => norm_symm_le w p hw i hi _
    (Valued.toNormedField.norm_le_one_iff.2 ((HeightOneSpectrum.mem_adicCompletionIntegers _ _ _).1 (h1 a b)))
  have hN : ∀ a b, ‖i.symm ((u⁻¹).1 a b)‖ ≤ 1 := fun a b => norm_symm_le w p hw i hi _
    (Valued.toNormedField.norm_le_one_iff.2 ((HeightOneSpectrum.mem_adicCompletionIntegers _ _ _).1 (h2 a b)))
  let M : Matrix (Fin n) (Fin n) ℤ_[p] := Matrix.of fun a b => ⟨i.symm (u.1 a b), hM a b⟩
  let N : Matrix (Fin n) (Fin n) ℤ_[p] := Matrix.of fun a b => ⟨i.symm ((u⁻¹).1 a b), hN a b⟩
  have hMm : M.map (PadicInt.Coe.ringHom (p := p)) = u.1.map i.symm := rfl
  have hNm : N.map (PadicInt.Coe.ringHom (p := p)) = (u⁻¹).1.map i.symm := rfl
  have hinj : Function.Injective (Matrix.map · (PadicInt.Coe.ringHom (p := p)) : Matrix (Fin n) (Fin n) ℤ_[p] → _) :=
    Matrix.map_injective Subtype.coe_injective
  have e1 : M * N = 1 := hinj (by
    simp only
    rw [Matrix.map_mul, hMm, hNm, Matrix.map_one _ (map_zero _) (map_one _)]
    rw [← RingEquiv.coe_toRingHom i.symm, ← RingHom.mapMatrix_apply, ← RingHom.mapMatrix_apply, ← map_mul,
      ← Units.val_mul, mul_inv_cancel, Units.val_one, map_one])
  have e2 : N * M = 1 := hinj (by
    simp only
    rw [Matrix.map_mul, hMm, hNm, Matrix.map_one _ (map_zero _) (map_one _)]
    rw [← RingEquiv.coe_toRingHom i.symm, ← RingHom.mapMatrix_apply, ← RingHom.mapMatrix_apply, ← map_mul,
      ← Units.val_mul, inv_mul_cancel, Units.val_one, map_one])
  let y : GL (Fin n) ℤ_[p] := ⟨M, N, e1, e2⟩
  have hy : GlobalTheory.GLp.red p n y = 1 := by
    refine Units.ext (Matrix.ext fun a b => ?_)
    change PadicInt.toZMod (M a b) = (1 : Matrix (Fin n) (Fin n) (ZMod p)) a b
    have h4 : M a b - (1 : Matrix (Fin n) (Fin n) ℤ_[p]) a b ∈ RingHom.ker (PadicInt.toZMod (p := p)) := by
      rw [PadicInt.ker_toZMod, IsLocalRing.mem_maximalIdeal, PadicInt.mem_nonunits]
      have h5 := norm_symm_lt w p i hi _ (Valued.toNormedField.norm_lt_one_iff.2 (h3 a b))
      convert h5 using 1
      rw [PadicInt.norm_def, PadicInt.coe_sub, Matrix.sub_apply, map_sub]
      congr 1
      by_cases hab : a = b
      · subst hab; simp; rfl
      · simp [Matrix.one_apply_ne hab]; rfl
    rw [RingHom.mem_ker, map_sub, sub_eq_zero] at h4
    rw [h4]
    by_cases hab : a = b
    · subst hab; simp
    · simp [Matrix.one_apply_ne hab]
  exact ⟨⟨y, hy⟩, Units.ext rfl⟩

end Transport

theorem exists_pull (D : D7) (I : Ident D) (k : Fin 2) (v : D.nd.PlG k) {n : ℕ} (π : QRep (D.host.g k) n)
    (hπ : IrrSm π) (hfix : fixK1 π.ρ ≠ ⊥) :
    ∃ σ : GlobalTheory.SmGL.IrrRep (GL (Fin n) ((D.naut.plGw k v).adicCompletion D.host.E)),
      Nonempty (π ≅ pull I k v σ) ∧
      GlobalTheory.PRep.fixed σ.ρ (GlobalTheory.SplitWeil.KOne ((D.naut.plGw k v).adicCompletion D.host.E) (Fin n)) ≠ ⊥ := by
  let _ := (I.i k v).toRingHom.toAlgebra
  have : ContinuousSMul ℚ_[D.host.g k] ((D.naut.plGw k v).adicCompletion D.host.E) :=
    continuousSMul_of_algebraMap _ _ (I.cont k v)
  let el : ℚ_[D.host.g k] ≃ₗ[ℚ_[D.host.g k]] (D.naut.plGw k v).adicCompletion D.host.E :=
    LinearEquiv.ofBijective (Algebra.linearMap _ _) (I.i k v).bijective
  have hi : Continuous (I.i k v).symm := by
    refine el.toContinuousLinearEquiv.symm.continuous.congr fun y => (I.i k v).injective ?_
    exact (el.toContinuousLinearEquiv.apply_symm_apply y).trans ((I.i k v).apply_symm_apply y).symm
  have hc : Continuous (Matrix.GeneralLinearGroup.map (n := Fin n) (I.i k v).symm.toRingHom) :=
    Units.continuous_iff.2 ⟨continuous_matrix fun a b => hi.comp (Units.continuous_val.matrix_elem a b),
      continuous_matrix fun a b => hi.comp (Units.continuous_coe_inv.matrix_elem a b)⟩
  have hg : ∀ g : GL (Fin n) ℚ_[D.host.g k], Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom
      (Matrix.GeneralLinearGroup.map (I.i k v).toRingHom g) = g := fun g =>
    Units.ext (Matrix.ext fun a b => (I.i k v).symm_apply_apply _)
  refine ⟨⟨π, π.ρ.comp (Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom), fun x => (hπ.2 x).preimage hc,
    GlobalTheory.CuspRep.ParLaws.isIrreducible_comp ((GlobalTheory.GLp.Model.isIrrRep_iff _).1 hπ.1) _ fun g => ⟨_, hg g⟩⟩,
    ⟨Rep.mkIso (Representation.Equiv.mk (LinearEquiv.refl ℂ π) fun g => LinearMap.ext fun x => ?_)⟩, ?_⟩
  · change π.ρ g x = π.ρ (Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom
      (Matrix.GeneralLinearGroup.map (I.i k v).toRingHom g)) x
    rw [hg]
  · obtain ⟨y, hy, hy0⟩ := (Submodule.ne_bot_iff _).1 hfix
    refine (Submodule.ne_bot_iff _).2 ⟨y, GlobalTheory.Parabolic.mem_fixed.2 fun u hu => ?_, hy0⟩
    obtain ⟨z, hz⟩ := exists_ker_red (D.naut.plGw k v) (D.host.g k) (D.naut.plGw_over k v) (I.i k v) (I.cont k v) u hu
    change π.ρ (Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom u) y = y
    rw [← hz]
    have := (Submodule.mem_iInf _).1 hy z
    rw [LinearMap.mem_ker, LinearMap.sub_apply, sub_eq_zero] at this
    exact this

theorem tame_of_isTameWD {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
    {A : ValuationSubring Ω} {w : HeightOneSpectrum (𝓞 E)} {h : IsPlaceOver A w} {x : WD h}
    (hx : GlobalTheory.LocLanglands.IsTameWD x) : x.tame := by
  obtain ⟨n, a, rfl, ha⟩ := hx
  refine (WD.tame_mk a).2 fun σ hσ => ha σ ⟨Wild_le_Ine hσ, fun y hy => ?_⟩
  have e : (σ : G E Ω) y - y = ((σ : G E Ω) y / y - 1) * y := by field_simp
  have h0 : 0 < A.valuation y := zero_lt_iff.mpr (by simpa using hy)
  rw [e, map_mul]
  exact mul_lt_of_lt_one_left h0 (hσ y hy)

end GlobalTheory.SerSys.LabDepth

