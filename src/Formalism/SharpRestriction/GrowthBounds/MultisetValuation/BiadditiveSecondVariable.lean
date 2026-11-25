module

public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PositivityConditionHolds
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntegralExpRename
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.CyclicPowerClassOfExpEquiv
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SubstitutionOfVariables
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.IsLawOfLog
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.DworkExponentialRestrictions
public import Formalism.FormalGroupWitt.FormalGroupWittProofs.WittTeichmullerRoot
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LocalComponentGL
import Mathlib.Tactic.Linter.Style
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.CoeffSubstLgFOfDegreeOne

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntegralExpParamOfEquivZero, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveFirstVariable, Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveSecondVariable

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntegralExpParamOfEquivZero =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntegralExpParamOfEquivZero", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PositivityConditionHolds\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntegralExpRename\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.CyclicPowerClassOfExpEquiv\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SubstitutionOfVariables\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LocalComponentGL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset
open Formalism.DworkPowerSeriesWeights (Integral mvExp)
open Formalism.InvariantFactorPaths.G7 (lgF Gser)

attribute [local instance] Formalism.InvariantFactorPaths.G7.WModel.nf sx_charZero

variable (p : ℕ) [hp : Fact p.Prime]

theorem sx_logF_eq : logF p = lgF (K0 p) p := by
  ext n
  simp only [logF, lgF, PowerSeries.coeff_mk, pow_mul]

theorem sx_logF_const : PowerSeries.constantCoeff (logF p) = 0 := by
  rw [← PowerSeries.coeff_zero_eq_constantCoeff_apply]
  simp [logF, PowerSeries.coeff_mk]

def sx_lX {σ : Type} (i : σ) : MvPowerSeries σ (K0 p) :=
  PowerSeries.subst (MvPowerSeries.X i : MvPowerSeries σ (K0 p)) (logF p)

theorem sx_inParam_X {σ : Type} [Finite σ] (i : σ) : inParam p (MvPowerSeries.X i) = sx_lX p i := by
  unfold inParam sx_lX
  exact MvPowerSeries.subst_X (_root_.Formalism.MainNotions.FormalGroupSystem.Pf.th_hasSubst_lX p) i

theorem sx_inParam_add {σ : Type} [Finite σ] (f g : MvPowerSeries σ (K0 p)) :
    inParam p (f + g) = inParam p f + inParam p g := by
  unfold inParam
  exact MvPowerSeries.subst_add (_root_.Formalism.MainNotions.FormalGroupSystem.Pf.th_hasSubst_lX p) f g

theorem sx_inParam_mul {σ : Type} [Finite σ] (f g : MvPowerSeries σ (K0 p)) :
    inParam p (f * g) = inParam p f * inParam p g := by
  unfold inParam
  exact MvPowerSeries.subst_mul (_root_.Formalism.MainNotions.FormalGroupSystem.Pf.th_hasSubst_lX p) f g

theorem sx_inParam_C_mul {σ : Type} [Finite σ] (a : K0 p) (g : MvPowerSeries σ (K0 p)) :
    inParam p (MvPowerSeries.C a * g) = MvPowerSeries.C a * inParam p g := by
  unfold inParam
  rw [MvPowerSeries.subst_mul (_root_.Formalism.MainNotions.FormalGroupSystem.Pf.th_hasSubst_lX p), MvPowerSeries.subst_C]

theorem sx_subst_ps {σ τ : Type} {a : σ → MvPowerSeries τ (K0 p)} (ha : MvPowerSeries.HasSubst a)
    {g : MvPowerSeries σ (K0 p)} (hg : MvPowerSeries.constantCoeff g = 0) (f : PowerSeries (K0 p)) :
    MvPowerSeries.subst a (PowerSeries.subst g f) = PowerSeries.subst (MvPowerSeries.subst a g) f :=
  MvPowerSeries.subst_comp_subst_apply (PowerSeries.HasSubst.of_constantCoeff_zero hg).const ha f

theorem sx_inParam_subst {σ τ : Type} [Finite σ] [Finite τ] (a a' : σ → MvPowerSeries τ (K0 p))
    (ha : ∀ i, MvPowerSeries.constantCoeff (a i) = 0) (ha' : ∀ i, MvPowerSeries.constantCoeff (a' i) = 0)
    (h : ∀ i, PowerSeries.subst (a' i) (logF p) = inParam p (a i)) (f : MvPowerSeries σ (K0 p)) :
    inParam p (MvPowerSeries.subst a f) = MvPowerSeries.subst a' (inParam p f) := by
  have hA : MvPowerSeries.HasSubst a := MvPowerSeries.hasSubst_of_constantCoeff_zero ha
  have hA' : MvPowerSeries.HasSubst a' := MvPowerSeries.hasSubst_of_constantCoeff_zero ha'
  unfold inParam
  rw [MvPowerSeries.subst_comp_subst_apply hA (_root_.Formalism.MainNotions.FormalGroupSystem.Pf.th_hasSubst_lX p), MvPowerSeries.subst_comp_subst_apply (_root_.Formalism.MainNotions.FormalGroupSystem.Pf.th_hasSubst_lX p) hA']
  congr 1
  funext s
  rw [sx_subst_ps p hA' (by simp) (logF p), MvPowerSeries.subst_X hA']
  exact (h s).symm

theorem sx_simeq_of {σ : Type} [Finite σ] {f g : MvPowerSeries σ (K0 p)} (h : Simeq p f g) :
    Formalism.InvariantFactorPaths.G7.Simeq (inParam p f) (inParam p g) := by
  obtain ⟨h0, w, _, hw⟩ := h
  have h1 : MvPowerSeries.constantCoeff (inParam p (f - g)) = 0 := th_inParam_const p h0
  rw [th_inParam_sub] at h1 hw
  refine ⟨h1, ?_⟩
  rw [← sx_expS_eq p h1, sx_integral_iff, hw]
  exact ⟨1 + w, by rw [map_add (f := _), map_one]⟩

theorem integralExp_of_equiv {σ : Type} {f g : MvPowerSeries σ (K0 p)} (h : Formalism.InvariantFactorPaths.G7.Simeq f g) : E0 p (f - g) := by
  obtain ⟨h0, h1⟩ := h
  rw [← sx_expS_eq p h0, sx_integral_iff] at h1
  obtain ⟨w, hw⟩ := h1
  refine ⟨h0, w - 1, ?_, ?_⟩
  · have h2 : MvPowerSeries.constantCoeff (expS p (f - g)) = 1 := by
      rw [sx_expS_eq p h0]
      exact Formalism.InvariantFactorPaths.G7.DworkIntegrality.constantCoeff_mvExp h0
    rw [hw] at h2
    have h3 : algebraMap (WW p) (K0 p) (MvPowerSeries.constantCoeff w) = 1 := by
      rw [← h2, ← MvPowerSeries.coeff_zero_eq_constantCoeff_apply, ← MvPowerSeries.coeff_zero_eq_constantCoeff_apply,
        MvPowerSeries.coeff_map]
    have h4 : MvPowerSeries.constantCoeff w = 1 :=
      IsFractionRing.injective (WW p) (K0 p) (by rw [h3, map_one])
    rw [map_sub, h4, map_one, sub_self]
  · show expS p (f - g) = _
    rw [hw, map_sub, map_one]
    ring

theorem equiv_zero_of_integralExp {σ : Type} {f : MvPowerSeries σ (K0 p)} (h : E0 p f) : Formalism.InvariantFactorPaths.G7.Simeq f 0 := by
  obtain ⟨h0, w, _, hw⟩ := h
  rw [Formalism.InvariantFactorPaths.G7.Simeq, sub_zero]
  refine ⟨h0, ?_⟩
  rw [← sx_expS_eq p h0, sx_integral_iff]
  exact ⟨1 + w, by rw [map_add (f := _), map_one]; exact hw⟩

theorem integralExp_param_of_equiv_zero {σ : Type} [Finite σ] {f : MvPowerSeries σ (K0 p)} (h : Simeq p f 0) : E0 p (inParam p f) := by
  have := integralExp_of_equiv p (sx_simeq_of p h)
  have e : inParam p (0 : MvPowerSeries σ (K0 p)) = 0 := by
    have := th_inParam_sub p (0 : MvPowerSeries σ (K0 p)) 0
    simpa using this
  rwa [e, sub_zero] at this

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntegralExpParamOfEquivZero =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveFirstVariable =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveFirstVariable", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntegralExpParamOfEquivZero\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.IsLawOfLog\nimport Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SubstitutionOfVariables\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset
open Formalism.DworkPowerSeriesWeights (Integral mvExp)
open Formalism.InvariantFactorPaths.G7 (lgF Gser IsLawOfLog cob at1 in3 d1 swap2 DivAB BetaHyp)

attribute [local instance] Formalism.InvariantFactorPaths.G7.WModel.nf sx_charZero

variable (p : ℕ) [hp : Fact p.Prime]

theorem sx_X_dvd_lX {σ : Type} (i : σ) : (MvPowerSeries.X i : MvPowerSeries σ (K0 p)) ∣ sx_lX p i := by
  have hs : PowerSeries.HasSubst (MvPowerSeries.X i : MvPowerSeries σ (K0 p)) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X i)
  obtain ⟨g, hg⟩ := PowerSeries.X_dvd_iff.2 (sx_logF_const p)
  refine ⟨PowerSeries.subst (MvPowerSeries.X i : MvPowerSeries σ (K0 p)) g, ?_⟩
  unfold sx_lX
  rw [hg, PowerSeries.subst_mul hs, PowerSeries.subst_X hs]

theorem sx_divAB {be : MvPowerSeries (Fin 2) (K0 p)} (h : BeProp p be) : DivAB (inParam p be) := by
  intro n hn
  have hdvd : ∀ i : Fin 2, (MvPowerSeries.X i : MvPowerSeries (Fin 2) (K0 p)) ∣ inParam p be := by
    intro i
    have hb : (MvPowerSeries.X i : MvPowerSeries (Fin 2) (K0 p)) ∣ be := by
      rw [MvPowerSeries.X_dvd_iff]
      intro m hm
      by_contra hne
      have := h.ab m hne
      fin_cases i
      · simp only [Fin.zero_eta, Fin.isValue] at hm
        omega
      · simp only [Fin.mk_one, Fin.isValue] at hm
        omega
    obtain ⟨g, hg⟩ := hb
    rw [hg, sx_inParam_mul, sx_inParam_X]
    exact Dvd.dvd.mul_right (sx_X_dvd_lX p i) _
  rcases hn with h0 | h1
  · exact MvPowerSeries.X_dvd_iff.1 (hdvd 0) n h0
  · exact MvPowerSeries.X_dvd_iff.1 (hdvd 1) n h1

variable {p}

theorem sx_two {τ : Type} {P : Fin 2 → Prop} (h0 : P 0) (h1 : P 1) : ∀ i, P i := by
  intro i
  fin_cases i
  · exact h0
  · exact h1

theorem sx_log_law {F : MvPowerSeries (Fin 2) (K0 p)} (hF : IsLawOfLog p F) {τ : Type} (u v : MvPowerSeries τ (K0 p))
    (hu : MvPowerSeries.constantCoeff u = 0) (hv : MvPowerSeries.constantCoeff v = 0) :
    PowerSeries.subst (MvPowerSeries.subst ![u, v] F) (logF p) =
      PowerSeries.subst u (logF p) + PowerSeries.subst v (logF p) := by
  have hs : MvPowerSeries.HasSubst ![u, v] :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (Fin.forall_fin_two.2 ⟨hu, hv⟩)
  have hc : PowerSeries.subst F (lgF (K0 p) p) = at1 0 (lgF (K0 p) p) + at1 1 (lgF (K0 p) p) := by
    have h0 := hF.2.2
    unfold cob at h0
    linear_combination h0
  have e := congrArg (MvPowerSeries.subst ![u, v]) hc
  rw [sx_subst_ps p hs hF.1, MvPowerSeries.subst_add hs, at1, at1,
    sx_subst_ps p hs (MvPowerSeries.constantCoeff_X 0), sx_subst_ps p hs (MvPowerSeries.constantCoeff_X 1),
    MvPowerSeries.subst_X hs, MvPowerSeries.subst_X hs] at e
  rw [sx_logF_eq]
  simpa using e

theorem sx_law_const {F : MvPowerSeries (Fin 2) (K0 p)} (hF : IsLawOfLog p F) {τ : Type} (u v : MvPowerSeries τ (K0 p))
    (hu : MvPowerSeries.constantCoeff u = 0) (hv : MvPowerSeries.constantCoeff v = 0) :
    MvPowerSeries.constantCoeff (MvPowerSeries.subst ![u, v] F) = 0 :=
  MvPowerSeries.constantCoeff_subst_eq_zero
    (MvPowerSeries.hasSubst_of_constantCoeff_zero (Fin.forall_fin_two.2 ⟨hu, hv⟩))
    (Fin.forall_fin_two.2 ⟨hu, hv⟩) hF.1

theorem param_substitution_pair {τ : Type} [Finite τ] (be : MvPowerSeries (Fin 2) (K0 p)) (x y x' y' : MvPowerSeries τ (K0 p))
    (hx : MvPowerSeries.constantCoeff x = 0) (hy : MvPowerSeries.constantCoeff y = 0)
    (hx' : MvPowerSeries.constantCoeff x' = 0) (hy' : MvPowerSeries.constantCoeff y' = 0)
    (ex : PowerSeries.subst x' (logF p) = inParam p x) (ey : PowerSeries.subst y' (logF p) = inParam p y) :
    inParam p (sub2 p be x y) = MvPowerSeries.subst ![x', y'] (inParam p be) := by
  show inParam p (MvPowerSeries.subst ![x, y] be) = _
  apply sx_inParam_subst
  · intro i
    fin_cases i
    · simpa using hx
    · simpa using hy
  · intro i
    fin_cases i
    · simpa using hx'
    · simpa using hy'
  · intro i
    fin_cases i
    · simpa using ex
    · simpa using ey

theorem sx_eX {τ : Type} [Finite τ] (i : τ) :
    PowerSeries.subst (MvPowerSeries.X i : MvPowerSeries τ (K0 p)) (logF p) = inParam p (MvPowerSeries.X i) := by
  rw [sx_inParam_X]
  rfl

theorem sx_cX {τ : Type} (i : τ) : MvPowerSeries.constantCoeff (MvPowerSeries.X i : MvPowerSeries τ (K0 p)) = 0 :=
  MvPowerSeries.constantCoeff_X i

theorem biadditive_first_variable {F be : MvPowerSeries (Fin 2) (K0 p)} (hF : IsLawOfLog p F) (h : BeProp p be) :
    Formalism.InvariantFactorPaths.G7.Simeq (d1 F (inParam p be)) 0 := by
  have hX : ∀ i : Fin 3, MvPowerSeries.constantCoeff (MvPowerSeries.X i : MvPowerSeries (Fin 3) (K0 p)) = 0 :=
    fun i => MvPowerSeries.constantCoeff_X i
  have hin3 : MvPowerSeries.constantCoeff (in3 F) = 0 := sx_law_const hF _ _ (hX 0) (hX 1)
  have h01 : MvPowerSeries.constantCoeff
      (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 3) (K0 p)) = 0 := by
    rw [map_add (f := _), hX 0, hX 1, add_zero]
  have ex : PowerSeries.subst (in3 F) (logF p) =
      inParam p (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 3) (K0 p)) := by
    rw [in3, sx_log_law hF _ _ (hX 0) (hX 1), sx_inParam_add, ← sx_eX, ← sx_eX]
  have e1 := param_substitution_pair be (MvPowerSeries.X 0 + MvPowerSeries.X 1) (MvPowerSeries.X 2) (in3 F) (MvPowerSeries.X 2)
    h01 (hX 2) hin3 (hX 2) ex (sx_eX 2)
  have e2 := param_substitution_pair be (MvPowerSeries.X 0) (MvPowerSeries.X 2) (MvPowerSeries.X 0) (MvPowerSeries.X 2)
    (hX 0) (hX 2) (hX 0) (hX 2) (sx_eX 0) (sx_eX 2)
  have e3 := param_substitution_pair be (MvPowerSeries.X 1) (MvPowerSeries.X 2) (MvPowerSeries.X 1) (MvPowerSeries.X 2)
    (hX 1) (hX 2) (hX 1) (hX 2) (sx_eX 1) (sx_eX 2)
  have key : d1 F (inParam p be) = inParam p
      (sub2 p be (MvPowerSeries.X 0 + MvPowerSeries.X 1) (MvPowerSeries.X 2) -
        sub2 p be (MvPowerSeries.X 0) (MvPowerSeries.X 2) -
        sub2 p be (MvPowerSeries.X 1) (MvPowerSeries.X 2)) := by
    rw [th_inParam_sub, th_inParam_sub, e1, e2, e3]
    rfl
  rw [key]
  first
    | exact equiv_zero_of_integralExp p (integralExp_param_of_equiv_zero p h.add1)

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveFirstVariable =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveSecondVariable =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveSecondVariable", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.DworkExponentialRestrictions\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.PositivityConditionHolds\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.IsLawOfLog\npublic import Formalism.FormalGroupWitt.FormalGroupWittProofs.WittTeichmullerRoot\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveFirstVariable\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.CoeffSubstLgFOfDegreeOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset
open Formalism.DworkPowerSeriesWeights (Integral mvExp)
open Formalism.InvariantFactorPaths.G7 (lgF Gser IsLawOfLog cob at1 in3 d1 swap2 DivAB BetaHyp UnrOK)

attribute [local instance] Formalism.InvariantFactorPaths.G7.WModel.nf sx_charZero

variable {p : ℕ} [hp : Fact p.Prime]

theorem sx_pair_hasSubst {τ : Type} {u v : MvPowerSeries τ (K0 p)} (hu : MvPowerSeries.constantCoeff u = 0)
    (hv : MvPowerSeries.constantCoeff v = 0) : MvPowerSeries.HasSubst ![u, v] :=
  MvPowerSeries.hasSubst_of_constantCoeff_zero (sx_two (τ := τ) hu hv)

theorem sx_subst_pair {τ τ' : Type} {b : τ → MvPowerSeries τ' (K0 p)} (hb : MvPowerSeries.HasSubst b)
    {u v : MvPowerSeries τ (K0 p)} (hu : MvPowerSeries.constantCoeff u = 0) (hv : MvPowerSeries.constantCoeff v = 0)
    (H : MvPowerSeries (Fin 2) (K0 p)) :
    MvPowerSeries.subst b (MvPowerSeries.subst ![u, v] H) =
      MvPowerSeries.subst ![MvPowerSeries.subst b u, MvPowerSeries.subst b v] H := by
  rw [MvPowerSeries.subst_comp_subst_apply (sx_pair_hasSubst hu hv) hb]
  congr 1
  funext s
  fin_cases s <;> rfl

theorem sx_subst_swap {τ : Type} {u v : MvPowerSeries τ (K0 p)} (hu : MvPowerSeries.constantCoeff u = 0)
    (hv : MvPowerSeries.constantCoeff v = 0) (H : MvPowerSeries (Fin 2) (K0 p)) :
    MvPowerSeries.subst ![u, v] (swap2 H) = MvPowerSeries.subst ![v, u] H := by
  unfold swap2
  rw [sx_subst_pair (sx_pair_hasSubst hu hv) (sx_cX 1) (sx_cX 0), MvPowerSeries.subst_X (sx_pair_hasSubst hu hv),
    MvPowerSeries.subst_X (sx_pair_hasSubst hu hv)]
  rfl

theorem biadditive_second_variable {F be : MvPowerSeries (Fin 2) (K0 p)} (hF : IsLawOfLog p F) (h : BeProp p be) :
    Formalism.InvariantFactorPaths.G7.Simeq (d1 F (swap2 (inParam p be))) 0 := by
  have h1 := integralExp_param_of_equiv_zero p h.add2
  rw [th_inParam_sub, th_inParam_sub,
    param_substitution_pair be _ _ (MvPowerSeries.X 0) (MvPowerSeries.subst ![MvPowerSeries.X 1, MvPowerSeries.X 2] F) (sx_cX 0)
      (by rw [map_add (f := _), sx_cX, sx_cX, add_zero]) (sx_cX 0) (sx_law_const hF _ _ (sx_cX 1) (sx_cX 2)) (sx_eX 0)
      (by rw [sx_log_law hF _ _ (sx_cX 1) (sx_cX 2), sx_inParam_add, sx_eX, sx_eX]),
    param_substitution_pair be _ _ (MvPowerSeries.X 0) (MvPowerSeries.X 1) (sx_cX 0) (sx_cX 1) (sx_cX 0) (sx_cX 1) (sx_eX 0) (sx_eX 1),
    param_substitution_pair be _ _ (MvPowerSeries.X 0) (MvPowerSeries.X 2) (sx_cX 0) (sx_cX 2) (sx_cX 0) (sx_cX 2) (sx_eX 0) (sx_eX 2)]
    at h1
  have h2 := integralExp_rename p (![2, 0, 1] : Fin 3 → Fin 3) h1
  have hb : MvPowerSeries.HasSubst (fun k : Fin 3 =>
      (MvPowerSeries.X ((![2, 0, 1] : Fin 3 → Fin 3) k) : MvPowerSeries (Fin 3) (K0 p))) := th_ren_hasSubst _
  rw [th_ren_sub, th_ren_sub] at h2
  unfold ren at h2
  rw [sx_subst_pair hb (sx_cX 0) (sx_law_const hF _ _ (sx_cX 1) (sx_cX 2)),
    sx_subst_pair hb (sx_cX 1) (sx_cX 2), sx_subst_pair hb (sx_cX 0) (sx_cX 1), sx_subst_pair hb (sx_cX 0) (sx_cX 2),
    MvPowerSeries.subst_X hb, MvPowerSeries.subst_X hb, MvPowerSeries.subst_X hb] at h2
  refine equiv_zero_of_integralExp p ?_
  unfold d1 in3
  rw [sx_subst_swap (sx_law_const hF _ _ (sx_cX 0) (sx_cX 1)) (sx_cX 2), sx_subst_swap (sx_cX 0) (sx_cX 2),
    sx_subst_swap (sx_cX 1) (sx_cX 2)]
  exact h2

theorem sx_root (ζ : K0 p) (hζ : ζ ^ (p ^ 2 - 1) = 1) :
    ∃ w : WW p, wK p w = ζ ∧ (sigW p)^[2] w = w ∧ wK p (sigW p w) = ζ ^ p := by
  have hN : 0 < p ^ 2 - 1 := by
    have := hp.out.two_le
    have : 4 ≤ p ^ 2 := by nlinarith
    omega
  have := Formalism.FG.WittVectorsCharZero.neZero_cast p 2 (by norm_num)
  obtain ⟨ξ, hξ⟩ := HasEnoughRootsOfUnity.exists_primitiveRoot (kb p) (p ^ 2 - 1)
  have hinj : Function.Injective (WittVector.teichmuller p : kb p →* WW p) := by
    intro a b h
    have := congrArg (fun x => WittVector.coeff x 0) h
    simpa [WittVector.teichmuller_coeff_zero] using this
  have h0 : IsPrimitiveRoot (wK p (WittVector.teichmuller p ξ)) (p ^ 2 - 1) :=
    (hξ.map_of_injective hinj).map_of_injective (IsFractionRing.injective (WW p) (K0 p))
  have : NeZero (p ^ 2 - 1) := ⟨hN.ne'⟩
  obtain ⟨k, _, hk⟩ := h0.eq_pow_of_pow_eq_one hζ
  have hfr : ∀ x : kb p, sigW p (WittVector.teichmuller p x) = (WittVector.teichmuller p x) ^ p := by
    intro x
    unfold sigW
    rw [WittVector.frobenius_eq_map_frobenius, WittVector.map_teichmuller, frobenius_def, map_pow]
  have hx : (ξ ^ k) ^ (p ^ 2 - 1) = 1 := by rw [← pow_mul, mul_comm, pow_mul, hξ.pow_eq_one, one_pow]
  refine ⟨WittVector.teichmuller p (ξ ^ k), ?_, ?_, ?_⟩
  · rw [map_pow]
    show algebraMap (WW p) (K0 p) ((WittVector.teichmuller p ξ) ^ k) = ζ
    rw [map_pow]; exact hk
  · show sigW p (sigW p _) = _
    rw [hfr, map_pow, hfr, ← pow_mul, ← map_pow, ← sq]
    congr 1
    have e : p ^ 2 = (p ^ 2 - 1) + 1 := by omega
    rw [e, pow_succ, hx, one_mul]
  · rw [hfr, map_pow]
    show algebraMap (WW p) (K0 p) (((WittVector.teichmuller p ξ) ^ k) ^ p) = ζ ^ p
    rw [map_pow, map_pow, ← hk]

theorem sx_conj {be : MvPowerSeries (Fin 2) (K0 p)} (h : BeProp p be) (ζ : K0 p) (hζ : ζ ^ (p ^ 2 - 1) = 1) :
    Formalism.InvariantFactorPaths.G7.Simeq (MvPowerSeries.subst ![MvPowerSeries.C ζ * (MvPowerSeries.X 0 :
                MvPowerSeries (Fin 2) (K0 p)), MvPowerSeries.X 1] (inParam p be))
              (MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) (K0 p)),
                MvPowerSeries.C (ζ ^ p) * MvPowerSeries.X 1] (inParam p be)) := by
  obtain ⟨w, hw, hw2, hwp⟩ := sx_root ζ hζ
  have hζp : (ζ ^ p) ^ (p ^ 2 - 1) = 1 := by rw [← pow_mul, mul_comm, pow_mul, hζ, one_pow]
  have hc : ∀ (z : K0 p) (i : Fin 2), MvPowerSeries.constantCoeff
      (MvPowerSeries.C z * (MvPowerSeries.X i : MvPowerSeries (Fin 2) (K0 p))) = 0 := by
    intro z i; rw [map_mul, sx_cX, mul_zero]
  have hl : ∀ (z : K0 p) (i : Fin 2), z ^ (p ^ 2 - 1) = 1 →
      PowerSeries.subst (MvPowerSeries.C z * (MvPowerSeries.X i : MvPowerSeries (Fin 2) (K0 p))) (logF p) =
        inParam p (MvPowerSeries.C z * MvPowerSeries.X i) := by
    intro z i hz
    rw [sx_inParam_C_mul, sx_inParam_X, sx_logF_eq,
      Formalism.InvariantFactorPaths.G7.FormalGroupLaws.lgF_subst_C_mul hz hp.out.two_le _ (sx_cX i)]
    unfold sx_lX
    rw [sx_logF_eq]
  have h0 := h.conj w hw2
  have h1 : Simeq p (sub2 p be (MvPowerSeries.C ζ * MvPowerSeries.X 0) (MvPowerSeries.X 1) : MvPowerSeries (Fin 2) (K0 p))
      (sub2 p be (MvPowerSeries.X 0) (MvPowerSeries.C (ζ ^ p) * MvPowerSeries.X 1)) := by
    rw [← hwp, ← hw]
    exact h0
  have h2 := sx_simeq_of p h1
  rw [param_substitution_pair be _ _ (MvPowerSeries.C ζ * MvPowerSeries.X 0) (MvPowerSeries.X 1) (hc ζ 0) (sx_cX 1) (hc ζ 0) (sx_cX 1)
      (hl ζ 0 hζ) (sx_eX 1),
    param_substitution_pair be _ _ (MvPowerSeries.X 0) (MvPowerSeries.C (ζ ^ p) * MvPowerSeries.X 1) (sx_cX 0) (hc _ 1) (sx_cX 0) (hc _ 1)
      (sx_eX 0) (hl _ 1 hζp)] at h2
  exact h2

theorem sx_betaHyp {F be : MvPowerSeries (Fin 2) (K0 p)} (hF : IsLawOfLog p F) (h : BeProp p be) :
    BetaHyp p F (inParam p be) :=
  ⟨sx_divAB p h, biadditive_first_variable hF h, biadditive_second_variable hF h, fun ζ hζ => sx_conj h ζ hζ⟩

theorem sx_unrOK (h2 : 2 < p) : UnrOK (K0 p) p (sigK p).toRingHom :=
  ⟨hp.out, h2, sx_norm_p p, Formalism.InvariantFactorPaths.G7.WModel.abv_value p, sx_sig_frob p⟩

theorem restBeta (p : ℕ) [hp : Fact p.Prime] : RestBeta p := by
  intro h5 _ be hbe
  have := sx_ultra p
  have := Formalism.InvariantFactorPaths.G7.WModel.complete p
  obtain ⟨F, hF⟩ := (_root_.Formalism.InvariantFactorPaths.G7.formal_law_exists (K0 p) p hp.out (sx_norm_p p)).1
  obtain ⟨ζ0, hζ0⟩ := Formalism.FG.witt_teichmuller_root p 2 (by norm_num)
  obtain ⟨c, hc, hcc, hS⟩ := Formalism.InvariantFactorPaths.G7.Top.betaIsG (K0 p) p (sigK p).toRingHom (sx_unrOK (by omega))
    ⟨wK p ζ0, hζ0.map_of_injective (IsFractionRing.injective (WW p) (K0 p))⟩ F hF (inParam p be) (sx_betaHyp hF hbe)
  obtain ⟨w, rfl⟩ := (sx_norm_le_one_iff p c).1 hc
  have hs : ∀ x : WW p, (sigK p).toRingHom (algebraMap (WW p) (K0 p) x) = algebraMap (WW p) (K0 p) (sigW p x) := by
    intro x
    rw [sx_sigK_eq, Formalism.InvariantFactorPaths.G7.WModel.sig_coe]
    rfl
  rw [hs] at hS hcc
  rw [hs] at hcc
  refine ⟨w, IsFractionRing.injective (WW p) (K0 p) hcc, ?_⟩
  exact integralExp_of_equiv p hS

end Formalism.MainNotions.FormalGroupSystem.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MultisetValuation.BiadditiveSecondVariable =====
