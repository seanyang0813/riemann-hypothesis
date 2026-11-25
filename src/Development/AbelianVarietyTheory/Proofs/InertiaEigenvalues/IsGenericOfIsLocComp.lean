module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentBlockColumnIndex
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsRationalMirabolicMovingRowToLastStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PeriodicEqZeroOfFourierCoefficientsZeroStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WhittakerCoefficientRationalMirabolicMulStatement
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExpoConjOfIsCsd
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ColumnWhittakerTransformKeepsLaterLawStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousUnipotentColumnWhittakerTransformStatement
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DifferentiableAtChart
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSplitAdelicMatrixLocalComponent
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsStandardAdelicAddChar
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsMirabolicWhittakerStageOfIsCuspFormStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalUpperUnipotentAdelicUpperUnipotent
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageAddOfPeriodic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZeStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentColumnWhittakerTransformColumnLawStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentColumnWhittakerTransformMirabolicInvariStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WhittakerLawUpperTriangularUnipotentAdelic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.RingTheory.Radical.NatInt
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds
import Mathlib.CategoryTheory.Countable
import Mathlib.RingTheory.PiTensorProduct

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentColumnWhittakerTransformNeZero, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsGenericOfIsLocComp

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentColumnWhittakerTransformNeZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentColumnWhittakerTransformNeZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentBlockColumnIndex\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsRationalMirabolicMovingRowToLastStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PeriodicEqZeroOfFourierCoefficientsZeroStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WhittakerCoefficientRationalMirabolicMulStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix GlobalTheory.CuspRep GlobalTheory.CuspGeneric

namespace GlobalTheory.CuspGeneric

theorem colT_ne_zero_of_good : ∀ (E : Type) [Field E] [NumberField E] (a : ℕ) (ψ : AddChar (Ad E) ℂ), StdPsi ψ →
    ∀ (m : ℕ) (f : GA E a → ℂ), m + 1 < a → Good ψ (m + 1) f → f ≠ 0 → colT ψ (m + 1) f ≠ 0 := by
  intro E _ _ a ψ hψ m f hma hG hf
  obtain ⟨g₀, hg₀⟩ : ∃ g₀, f g₀ ≠ 0 := by
    by_contra h
    push_neg at h
    exact hf (funext h)
  have hPer : Per (ratV E (UnipotentBlockColumnIndex a (m + 1) (m + 1))) (fun x => f (blkU x * g₀)) :=
    per_blk hG.cont (fun c g => hG.left _ (isMir_blkU c) g) g₀
  have hΦ0 : (fun x : UnipotentBlockColumnIndex a (m + 1) (m + 1) → Ad E => f (blkU x * g₀)) ≠ 0 := by
    intro h
    have h1 := congrFun h 0
    simp only [Pi.zero_apply] at h1
    apply hg₀
    have e : (blkU (0 : UnipotentBlockColumnIndex a (m + 1) (m + 1) → Ad E) : GA E a) = 1 := posU_zero _
    rw [e, one_mul] at h1
    exact h1
  obtain ⟨ξ, hξ⟩ : ∃ ξ : UnipotentBlockColumnIndex a (m + 1) (m + 1) → E, coefF ψ (m + 1) ξ f g₀ ≠ 0 := by
    by_contra h
    push_neg at h
    exact hΦ0 (GlobalTheory.T.periodic_eq_zero_of_fourier_coefficients_zero E _ ψ hψ _ hPer h)
  have hξ0 : ξ ≠ 0 := by
    rintro rfl
    apply hξ
    have hv := hG.van (m + 1) (Nat.succ_pos m) le_rfl g₀
    have e : ∀ x : UnipotentBlockColumnIndex a (m + 1) (m + 1) → Ad E, ψ (-dot (0 : UnipotentBlockColumnIndex a (m + 1) (m + 1) → E) x) = 1 := by
      intro x
      simp [dot]
    simp only [coefF, e, one_mul]
    exact hv
  obtain ⟨γ, hγ, hγξ⟩ := GlobalTheory.T.exists_rationalMirabolic_moving_row_to_last E a m hma ξ hξ0
  intro h
  apply hξ
  have h1 := congrFun h (ratGL E a γ * g₀)
  simp only [Pi.zero_apply, colT] at h1
  rw [GlobalTheory.T.whittakerCoefficient_rationalMirabolic_mul E a ψ hψ m f hG.cont hG.left γ hγ (eLast a (m + 1)) g₀] at h1
  have e : (fun t : UnipotentBlockColumnIndex a (m + 1) (m + 1) => ∑ s : UnipotentBlockColumnIndex a (m + 1) (m + 1), eLast a (m + 1) s * γ.val s.1.1 t.1.1) = ξ :=
    funext hγξ
  rw [e] at h1
  exact h1

end GlobalTheory.CuspGeneric
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentColumnWhittakerTransformNeZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsGenericOfIsLocComp =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsGenericOfIsLocComp", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentBlockColumnIndex\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExpoConjOfIsCsd\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ColumnWhittakerTransformKeepsLaterLawStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousUnipotentColumnWhittakerTransformStatement\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DifferentiableAtChart\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSplitAdelicMatrixLocalComponent\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsStandardAdelicAddChar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsMirabolicWhittakerStageOfIsCuspFormStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalUpperUnipotentAdelicUpperUnipotent\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageAddOfPeriodic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZeStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentColumnWhittakerTransformColumnLawStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentColumnWhittakerTransformMirabolicInvariStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentColumnWhittakerTransformNeZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WhittakerLawUpperTriangularUnipotentAdelic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix GlobalTheory.CuspRep GlobalTheory.CuspGeneric

namespace GlobalTheory.CuspRep.Generic

variable {E : Type} [Field E] [NumberField E] {a : ℕ} {ψ : AddChar (Ad E) ℂ}

theorem good_colT (hψ : StdPsi ψ) {m : ℕ} {f : GA E a → ℂ} (h : m + 1 < a) (hf : Good ψ (m + 1) f) :
    Good ψ m (colT ψ (m + 1) f) := by
  refine ⟨_root_.GlobalTheory.CuspGeneric.continuous_colT_good E a ψ hψ m f hf,
    GlobalTheory.T.unipotentColumnWhittakerTransform_mirabolic_invariant E a ψ hψ m f h hf,
    ?_, _root_.GlobalTheory.CuspGeneric.avg_colT_blk_eq_zero E a ψ hψ m f h hf⟩
  intro k hk y g
  rcases Nat.lt_or_ge (m + 1) k with h1 | h1
  · exact _root_.GlobalTheory.CuspGeneric.colT_law_of_good E a ψ m f hf k h1 y g
  · obtain rfl : k = m + 1 := by omega
    exact _root_.GlobalTheory.CuspGeneric.colT_blkU_mul E a ψ hψ m f hf y g

theorem hl_of_good {m : ℕ} {f : GA E a → ℂ} (hf : Good ψ m f) {k : ℕ} (hk : k ≤ m) (c : UnipotentBlockColumnIndex a k k → E) (g : GA E a) :
    f (ratGL E a (blkU c) * g) = f g := by
  refine hf.left _ (fun i j h => isMir_blkU c i j ?_) g
  omega

theorem colT_add (hψ : StdPsi ψ) {m : ℕ} {f f' : GA E a → ℂ} (hf : Good ψ (m + 1) f) (hf' : Good ψ (m + 1) f') :
    colT ψ (m + 1) (fun g => f g + f' g) = fun g => colT ψ (m + 1) f g + colT ψ (m + 1) f' g := by
  funext g
  have := _root_.GlobalTheory.CuspGeneric.avg_add_of_per _ (ratV E (UnipotentBlockColumnIndex a (m + 1) (m + 1))) (isCoLat_ratV E _) _ _
    (per_coef hψ (eLast a (m + 1)) hf.cont (hl_of_good hf le_rfl) g)
    (per_coef hψ (eLast a (m + 1)) hf'.cont (hl_of_good hf' le_rfl) g)
  simp only [colT, coefF, mul_add]
  exact this

theorem colT_smul (m : ℕ) (c : ℂ) (f : GA E a → ℂ) :
    colT ψ (m + 1) (fun g => c * f g) = fun g => c * colT ψ (m + 1) f g := by
  funext g
  simp only [colT, coefF]
  rw [← avg_const_mul]
  congr 1
  funext x
  ring

theorem whit_good (hψ : StdPsi ψ) (m : ℕ) : (m < a ∨ m = 0) → ∀ {f : GA E a → ℂ}, Good ψ m f →
    Good ψ 0 (whit ψ m f) ∧ (f ≠ 0 → whit ψ m f ≠ 0) := by
  induction m with
  | zero => exact fun _ f hf => ⟨hf, id⟩
  | succ m ih =>
    intro h f hf
    have h1 : m + 1 < a := by omega
    obtain ⟨h2, h3⟩ := ih (Or.inl (by omega)) (good_colT hψ h1 hf)
    exact ⟨h2, fun h0 => h3 (_root_.GlobalTheory.CuspGeneric.colT_ne_zero_of_good E a ψ hψ m f h1 hf h0)⟩

theorem whit_add (hψ : StdPsi ψ) (m : ℕ) : (m < a ∨ m = 0) → ∀ {f f' : GA E a → ℂ}, Good ψ m f → Good ψ m f' →
    whit ψ m (fun g => f g + f' g) = fun g => whit ψ m f g + whit ψ m f' g := by
  induction m with
  | zero => exact fun _ f f' _ _ => rfl
  | succ m ih =>
    intro h f f' hf hf'
    have h1 : m + 1 < a := by omega
    rw [whit_succ, whit_succ, whit_succ, colT_add hψ hf hf']
    exact ih (Or.inl (by omega)) (good_colT hψ h1 hf) (good_colT hψ h1 hf')

theorem whit_smul (m : ℕ) (c : ℂ) (f : GA E a → ℂ) : whit ψ m (fun g => c * f g) = fun g => c * whit ψ m f g := by
  induction m generalizing f with
  | zero => rfl
  | succ m ih => rw [whit_succ, whit_succ, colT_smul, ih]

theorem whit_rt (m : ℕ) (f : GA E a → ℂ) (h g : GA E a) : whit ψ m (fun x => f (x * h)) g = whit ψ m f (g * h) := by
  induction m generalizing f g with
  | zero => rfl
  | succ m ih =>
    rw [whit_succ, whit_succ, ← ih]
    congr 1
    funext x
    simp only [colT, coefF, mul_assoc]

def locPsi (hψ : StdPsi ψ) (w : HeightOneSpectrum (𝓞 E)) : AddChar (w.adicCompletion E) Circle where
  toFun y := ⟨ψ (sFin E (sLoc E w y)), by simpa [Submonoid.unitSphere] using hψ.norm _⟩
  map_zero_eq_one' := by
    apply Circle.ext
    simp
  map_add_eq_mul' x y := by
    apply Circle.ext
    change ψ (sFin E (sLoc E w (x + y))) = ψ (sFin E (sLoc E w x)) * ψ (sFin E (sLoc E w y))
    rw [map_add (f := _), map_add (f := _), AddChar.map_add_eq_mul]

theorem coe_locPsi (hψ : StdPsi ψ) (w : HeightOneSpectrum (𝓞 E)) (y : w.adicCompletion E) :
    (locPsi hψ w y : ℂ) = ψ (sFin E (sLoc E w y)) := rfl


attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField in
theorem isGeneric_of_isLocComp : ∀ (E : Type) [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] (a : ℕ) (P : CuspSub E a)
    (w : HeightOneSpectrum (𝓞 E)) (σ : SmIrr (GL (Fin a) (w.adicCompletion E))), P.IsLocComp w σ →
    GlobalTheory.LocGL.IsGeneric σ.ρ := by
  rintro E _ _ _ a P w σ ⟨f, hf0, hf⟩
  obtain ⟨ψ, hψ⟩ := _root_.GlobalTheory.CuspGeneric.exists_stdPsi E
  have hg : ∀ v, Good ψ (a - 1) (f v).1.1 := fun v => GlobalTheory.T.isMirabolicWhittakerStage_of_isCuspForm E a ψ (f v).1 (P.cusp _ (f v).2)
  have h0 : a - 1 < a ∨ a - 1 = 0 := by omega
  obtain ⟨v₀, hv₀⟩ : ∃ v, f v ≠ 0 := by
    by_contra h
    push Not at h
    exact hf0 (LinearMap.ext h)
  have hv1 : (f v₀).1.1 ≠ 0 := fun h => hv₀ (Subtype.ext (Subtype.ext h))
  obtain ⟨g₀, hg₀⟩ := Function.ne_iff.1 ((whit_good hψ (a - 1) h0 (hg v₀)).2 hv1)
  obtain ⟨h, gw, e, hc⟩ := _root_.GlobalTheory.CuspGeneric.exists_split_loc E a w g₀
  have hrt : ∀ u v x, whit ψ (a - 1) (f (σ.ρ u v)).1.1 x =
      whit ψ (a - 1) (f v).1.1 (x * finGL E a (locGL E a w u)) := fun u v x => by
    rw [hf u v]
    exact whit_rt _ _ _ _
  let l : σ.V →ₗ[ℂ] ℂ :=
    { toFun := fun v => whit ψ (a - 1) (f v).1.1 h
      map_add' := fun v v' => by
        rw [map_add f]
        exact congrFun (whit_add hψ (a - 1) h0 (hg v) (hg v')) h
      map_smul' := fun c v => by
        rw [map_smul f]
        exact congrFun (whit_smul (a - 1) c (f v).1.1) h }
  have hl : ∀ v, l v = whit ψ (a - 1) (f v).1.1 h := fun _ => rfl
  have hne : l (σ.ρ gw v₀) ≠ 0 := by
    rw [hl, hrt, ← e]
    exact hg₀
  have hlaw : ∀ (u : GlobalTheory.SmGL.unipB (w.adicCompletion E) (Fin a)) v,
      l (σ.ρ u v) = (locPsi hψ w (∑ p : Fin a × Fin a with (p.2 : ℕ) = p.1 + 1, (u : GL (Fin a) (w.adicCompletion E)).val p.1 p.2) : ℂ) * l v := by
    intro u v
    obtain ⟨u1, u2⟩ := (GlobalTheory.SmGL.mem_unipB _).1 u.2
    obtain ⟨t1, t2, t3⟩ := _root_.GlobalTheory.CuspRep.locTri_adelic E a w u u1 u2
    have hlw := (whit_good hψ (a - 1) h0 (hg v)).1.law
    have := _root_.GlobalTheory.CuspGeneric.tri_law E a ψ _ (fun k hk => hlw k hk) _ t1 t2 h
    rw [hl, hrt, hc, this, t3]
    rfl
  refine ⟨locPsi hψ w, ?_, fun h1 => ?_, ?_⟩
  · refine Continuous.subtype_mk (hψ.cont.comp ?_) _
    exact (continuous_const.prodMk continuous_id : Continuous fun x : Af E => ((0, x) : InfiniteAdeleRing E × Af E)).comp
      (CuspSub.continuous_sLoc w)
  · obtain ⟨y, hy⟩ := hψ.loc w
    apply hy
    have := congrArg (fun c : Circle => (c : ℂ)) (DFunLike.congr_fun h1 y)
    simpa [coe_locPsi] using this
  · refine Submodule.Quotient.nontrivial_iff.2 fun htop => hne ?_
    have hle : GlobalTheory.PRep.twKer σ.ρ (GlobalTheory.SmGL.unipB (w.adicCompletion E) (Fin a)) (GlobalTheory.LocGL.whitChar (locPsi hψ w) a) ≤
        LinearMap.ker l := by
      refine Submodule.span_le.2 ?_
      rintro _ ⟨u, v, rfl⟩
      simp only [SetLike.mem_coe, LinearMap.mem_ker, map_sub, map_smul, hlaw, smul_eq_mul]
      exact sub_eq_zero.2 rfl
    exact hle (htop ▸ Submodule.mem_top)

end GlobalTheory.CuspRep.Generic
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsGenericOfIsLocComp =====
