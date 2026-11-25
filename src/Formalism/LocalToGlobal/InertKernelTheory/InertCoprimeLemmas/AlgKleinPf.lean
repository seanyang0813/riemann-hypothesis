module

public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgTrans
public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.SigmaAlg
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GaloisTorsionConjugacy.TorsValsFinite
public import Formalism.LocalToGlobal.InertKernelTheory.DefsMM
import Formalism.LocalToGlobal.GlobalTheory.GL3.PStdOK
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.FourthTensorThetaEqKernel
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.PDeriv
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.Taylor
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.IsogenyFormulaInstance
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.MulStableIntegral
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.QuasiPeriodConstUnique
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SigmaLogDeriv2
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.Th0TranslateProduct
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.BaseChangeCompatible
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.IntegerEndomorphismInstance

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgKlein, Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgKleinPf

-- ===== clump member: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgKlein =====
-- clump-header: {"m": "Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgKlein", "h": "module\n\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgTrans\nimport Formalism.LocalToGlobal.GlobalTheory.GL3.PStdOK\nimport Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.FourthTensorThetaEqKernel\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.SigmaAlg\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.PDeriv\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.Taylor\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.IsogenyFormulaInstance\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.MulStableIntegral\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.QuasiPeriodConstUnique\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.SigmaLogDeriv2\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.Th0TranslateProduct\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.BaseChangeCompatible\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GaloisTorsionConjugacy.TorsValsFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.KerInert

open NumberField Formalism.BasicNotions Classical
open scoped ComplexConjugate Topology

def PTorsAlg (L : PeriodPair) : Prop :=
  ∀ u : ℂ, (∃ N : ℕ, 0 < N ∧ (N : ℂ) * u ∈ L.lattice) → u ∉ L.lattice →
    L.weierstrassP u ∈ Formalism.MainNotions.TaylorLogMetric.Qbar ∧ L.derivWeierstrassP u ∈ Formalism.MainNotions.TaylorLogMetric.Qbar

def KleinAlg (L : PeriodPair) (ω₀ : ℂ) : Prop :=
  ∀ s : ℂ, (∃ N : ℕ, 0 < N ∧ (N : ℂ) * s ∈ L.lattice) →
    Formalism.L2.Th1.F.opU L s (Formalism.L2.Th1.F.th0 L (ω₀ / 2)) 0 ∈ Formalism.MainNotions.TaylorLogMetric.Qbar ∧
      deriv (Formalism.L2.Th1.F.opU L s (Formalism.L2.Th1.F.th0 L (ω₀ / 2))) 0 ∈ Formalism.MainNotions.TaylorLogMetric.Qbar

def PTorsAll : Prop :=
  ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Ker.Base D cc δ),
    Formalism.MainNotions.TaylorLogMetric.IsCurveIdeal D cc → Formalism.MainNotions.TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ → PTorsAlg B.L

def KleinAll : Prop :=
  ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Ker.Base D cc δ),
    Formalism.MainNotions.TaylorLogMetric.IsCurveIdeal D cc → Formalism.MainNotions.TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ → KleinAlg B.L B.ω₀

namespace AlgP

section Rec

variable (M : IntermediateField ℚ ℂ)

theorem mem_of_mul_mem {x a : ℂ} (ha : a ∈ M) (ha0 : a ≠ 0) (h : x * a ∈ M) : x ∈ M := by
  have := div_mem h ha
  rwa [mul_div_cancel_right₀ _ ha0] at this

theorem succ_mem (m : ℕ) : ((m : ℂ) + 1) ∈ M := add_mem (natCast_mem M m) (one_mem M)

theorem succ_ne (m : ℕ) : ((m : ℂ) + 1) ≠ 0 := by exact_mod_cast m.succ_ne_zero

theorem rec1 (P V : PowerSeries ℂ) (h : PowerSeries.derivative (R := ℂ) P = V * P)
    (hV : ∀ k, PowerSeries.coeff k V ∈ M) (h0 : PowerSeries.coeff 0 P ∈ M) : ∀ n, PowerSeries.coeff n P ∈ M := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    cases n with
    | zero => exact h0
    | succ m =>
      have e := congrArg (PowerSeries.coeff m) h
      rw [PowerSeries.coeff_derivative, PowerSeries.coeff_mul] at e
      refine mem_of_mul_mem M (succ_mem M m) (succ_ne m) ?_
      rw [e]
      refine sum_mem fun p hp => mul_mem (hV _) (ih _ ?_)
      have := Finset.HasAntidiagonal.mem_antidiagonal.1 hp
      omega

theorem rec0 (V Q : PowerSeries ℂ) (h : PowerSeries.derivative (R := ℂ) V = Q)
    (hQ : ∀ k, PowerSeries.coeff k Q ∈ M) (h0 : PowerSeries.coeff 0 V ∈ M) : ∀ n, PowerSeries.coeff n V ∈ M := by
  intro n
  cases n with
  | zero => exact h0
  | succ m =>
    have e := congrArg (PowerSeries.coeff m) h
    rw [PowerSeries.coeff_derivative] at e
    refine mem_of_mul_mem M (succ_mem M m) (succ_ne m) ?_
    rw [e]
    exact hQ m

theorem rec2 (W : PowerSeries ℂ) (c : ℂ) (hc : c ∈ M)
    (h : PowerSeries.derivative (R := ℂ) (PowerSeries.derivative (R := ℂ) W) = PowerSeries.C (6 : ℂ) * (W * W) + PowerSeries.C c)
    (h0 : PowerSeries.coeff 0 W ∈ M) (h1 : PowerSeries.coeff 1 W ∈ M) : ∀ n, PowerSeries.coeff n W ∈ M := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n, ih with
    | 0, _ => exact h0
    | 1, _ => exact h1
    | m + 2, ih =>
      have e := congrArg (PowerSeries.coeff m) h
      rw [PowerSeries.coeff_derivative, PowerSeries.coeff_derivative, map_add (f := _), PowerSeries.coeff_C_mul,
        PowerSeries.coeff_mul, PowerSeries.coeff_C] at e
      have h6 : (6 : ℂ) ∈ M := by
        have := natCast_mem M 6
        simpa using this
      have hsum : PowerSeries.coeff (m + 1 + 1) W * ((((m + 1 : ℕ) : ℂ)) + 1) * ((m : ℂ) + 1) ∈ M := by
        rw [e]
        refine add_mem (mul_mem h6 (sum_mem fun p hp => mul_mem (ih _ ?_) (ih _ ?_))) ?_
        · have := Finset.HasAntidiagonal.mem_antidiagonal.1 hp
          omega
        · have := Finset.HasAntidiagonal.mem_antidiagonal.1 hp
          omega
        · split_ifs
          · exact hc
          · exact zero_mem _
      exact mem_of_mul_mem M (succ_mem M (m + 1)) (succ_ne (m + 1))
        (mem_of_mul_mem M (succ_mem M m) (succ_ne m) hsum)

end Rec

section OneVarK

open Formalism.L2.Th1.F

theorem coeff0_taylor0 (f : ℂ → ℂ) : PowerSeries.coeff 0 (taylor0 f) = f 0 := by
  rw [Taylor.coeff_taylor0]
  simp

theorem coeff1_taylor0 (f : ℂ → ℂ) : PowerSeries.coeff 1 (taylor0 f) = deriv f 0 := by
  rw [Taylor.coeff_taylor0]
  simp

theorem analyticAt_of_eventually {f : ℂ → ℂ} (h : ∀ᶠ z in 𝓝 (0 : ℂ), DifferentiableAt ℂ f z) : AnalyticAt ℂ f 0 :=
  DifferentiableOn.analyticAt (fun z hz => DifferentiableAt.differentiableWithinAt hz) h

theorem caseA (L : PeriodPair) (ω₀ s : ℂ) (hω : ω₀ ∈ L.lattice) (hh : ω₀ / 2 ∉ L.lattice)
    (hu : s + ω₀ / 2 ∉ L.lattice) (M : IntermediateField ℚ ℂ) (h2 : L.g₂ ∈ M) (hs2 : s2 L ∈ M)
    (hp : L.weierstrassP (s + ω₀ / 2) ∈ M) (hp' : L.derivWeierstrassP (s + ω₀ / 2) ∈ M)
    (hg0 : opU L s (th0 L (ω₀ / 2)) 0 ∈ M) (hd0 : deriv (opU L s (th0 L (ω₀ / 2))) 0 ∈ M) :
    CoefIn1 (opU L s (th0 L (ω₀ / 2))) M := by
  have hev : ∀ᶠ z in 𝓝 (0 : ℂ), z + (s + ω₀ / 2) ∉ L.lattice := by
    have h1 := PDeriv.eventually_notMem L hu
    have h2 : Filter.Tendsto (fun z : ℂ => z + (s + ω₀ / 2)) (𝓝 0) (𝓝 (s + ω₀ / 2)) :=
      (continuous_add_const (s + ω₀ / 2)).tendsto' 0 _ (by simp)
    exact h2.eventually h1
  have hthd : Differentiable ℂ (th0 L (ω₀ / 2)) := (th0Basic L ω₀ hω hh).1
  let v : ℂ → ℂ := fun z => wZeta L (z + (s + ω₀ / 2)) - wZeta L (ω₀ / 2) - s2 L * (z + s)
    - (Real.pi : ℂ) * (conj s / (area L : ℂ))
  let w : ℂ → ℂ := fun z => L.weierstrassP (z + (s + ω₀ / 2))
  have eg : opU L s (th0 L (ω₀ / 2)) = fun y => th0 L (ω₀ / 2) (y + s) *
      Complex.exp (-(Real.pi : ℂ) * herm L y s - (Real.pi : ℂ) * herm L s s / 2) := rfl

  have hG : ∀ z, z + (s + ω₀ / 2) ∉ L.lattice →
      HasDerivAt (opU L s (th0 L (ω₀ / 2))) (v z * opU L s (th0 L (ω₀ / 2)) z) z := by
    intro z hz
    have hz' : z + s + ω₀ / 2 ∉ L.lattice := by rwa [add_assoc]
    have h1 : HasDerivAt (fun y => th0 L (ω₀ / 2) (y + s))
        ((wZeta L (z + s + ω₀ / 2) - wZeta L (ω₀ / 2) - s2 L * (z + s)) * th0 L (ω₀ / 2) (z + s)) z :=
      (th0LogDeriv L ω₀ (z + s) hω hh hz').comp_add_const z s
    have h2 : HasDerivAt (fun y : ℂ => -(Real.pi : ℂ) * herm L y s - (Real.pi : ℂ) * herm L s s / 2)
        (-(Real.pi : ℂ) * (1 * conj s / (area L : ℂ))) z := by
      unfold herm
      exact ((((hasDerivAt_id z).mul_const (conj s)).div_const (area L : ℂ)).const_mul (-(Real.pi : ℂ))).sub_const _
    have h3 := h1.mul h2.cexp
    rw [eg]
    refine h3.congr_deriv ?_
    simp only [v]
    rw [show z + (s + ω₀ / 2) = z + s + ω₀ / 2 by ring]
    ring
  have hV : ∀ z, z + (s + ω₀ / 2) ∉ L.lattice →
      HasDerivAt v (-(L.weierstrassP (z + (s + ω₀ / 2))) - s2 L * 1 - 0) z := by
    intro z hz
    have h1 := (zetaHasDeriv L (z + (s + ω₀ / 2)) hz).comp_add_const z (s + ω₀ / 2)
    have h2 := ((hasDerivAt_id z).add_const s).const_mul (s2 L)
    exact ((h1.sub_const (wZeta L (ω₀ / 2))).sub h2).sub (hasDerivAt_const z _)
  have hW : ∀ z, z + (s + ω₀ / 2) ∉ L.lattice → HasDerivAt w (L.derivWeierstrassP (z + (s + ω₀ / 2))) z :=
    fun z hz => (PDeriv.hasDerivAt_P L hz).comp_add_const z (s + ω₀ / 2)
  have hW2 : ∀ z, z + (s + ω₀ / 2) ∉ L.lattice →
      HasDerivAt (fun y => L.derivWeierstrassP (y + (s + ω₀ / 2)))
        (6 * L.weierstrassP (z + (s + ω₀ / 2)) ^ 2 - L.g₂ / 2) z :=
    fun z hz => (pSecond L (z + (s + ω₀ / 2)) hz).comp_add_const z (s + ω₀ / 2)

  have hgA : AnalyticAt ℂ (opU L s (th0 L (ω₀ / 2))) 0 := translation_operator_analytic L s hthd 0 (Set.mem_univ _)
  have hvA : AnalyticAt ℂ v 0 := analyticAt_of_eventually (hev.mono fun z hz => (hV z hz).differentiableAt)
  have hwA : AnalyticAt ℂ w 0 := analyticAt_of_eventually (hev.mono fun z hz => (hW z hz).differentiableAt)

  have TG : PowerSeries.derivative (R := ℂ) (taylor0 (opU L s (th0 L (ω₀ / 2)))) =
      taylor0 v * taylor0 (opU L s (th0 L (ω₀ / 2))) := by
    rw [← Taylor.taylor0_deriv, ← Taylor.taylor0_mul hvA hgA]
    exact Taylor.taylor0_congr (hev.mono fun z hz => (hG z hz).deriv)
  have TV : PowerSeries.derivative (R := ℂ) (taylor0 v) = PowerSeries.C (-1 : ℂ) * taylor0 w + PowerSeries.C (-(s2 L)) := by
    rw [← Taylor.taylor0_deriv]
    have e1 := Taylor.taylor0_add (f := fun z => (-1 : ℂ) * w z) (g := fun _ => -(s2 L))
      (analyticAt_const.mul hwA) analyticAt_const
    rw [Taylor.taylor0_mul analyticAt_const hwA, Taylor.taylor0_const, Taylor.taylor0_const] at e1
    rw [← e1]
    refine Taylor.taylor0_congr (hev.mono fun z hz => ?_)
    rw [(hV z hz).deriv]
    simp only [w]
    ring
  have hdw : ∀ᶠ z in 𝓝 (0 : ℂ), deriv w z = L.derivWeierstrassP (z + (s + ω₀ / 2)) :=
    hev.mono fun z hz => (hW z hz).deriv
  have hdw' : ∀ᶠ z in 𝓝 (0 : ℂ), ∀ᶠ y in 𝓝 z, deriv w y = L.derivWeierstrassP (y + (s + ω₀ / 2)) :=
    hdw.eventually_nhds
  have TW : PowerSeries.derivative (R := ℂ) (PowerSeries.derivative (R := ℂ) (taylor0 w)) =
      PowerSeries.C (6 : ℂ) * (taylor0 w * taylor0 w) + PowerSeries.C (-(L.g₂ / 2)) := by
    rw [← Taylor.taylor0_deriv, ← Taylor.taylor0_deriv]
    have e1 := Taylor.taylor0_add (f := fun z => (6 : ℂ) * (w z * w z)) (g := fun _ => -(L.g₂ / 2))
      (analyticAt_const.mul (hwA.mul hwA)) analyticAt_const
    rw [Taylor.taylor0_mul (f := fun _ => (6 : ℂ)) (g := fun z => w z * w z) analyticAt_const (hwA.mul hwA),
      Taylor.taylor0_mul hwA hwA, Taylor.taylor0_const, Taylor.taylor0_const] at e1
    rw [← e1]
    refine Taylor.taylor0_congr ((hev.and hdw').mono fun z hz => ?_)
    rw [Filter.EventuallyEq.deriv_eq hz.2, (hW2 z hz.1).deriv]
    simp only [w]
    ring

  have hu0 : (0 : ℂ) + (s + ω₀ / 2) ∉ L.lattice := by rwa [zero_add]
  have hg0ne : opU L s (th0 L (ω₀ / 2)) 0 ≠ 0 := by
    rw [eg]
    refine mul_ne_zero ?_ (Complex.exp_ne_zero _)
    intro h0
    apply hu
    have := ((th0Basic L ω₀ hω hh).2.2.2.1 (0 + s)).1 h0
    rwa [zero_add] at this
  have hv0 : v 0 ∈ M := by
    have e := (hG 0 hu0).deriv
    have : v 0 = deriv (opU L s (th0 L (ω₀ / 2))) 0 / opU L s (th0 L (ω₀ / 2)) 0 := by
      rw [e, mul_div_cancel_right₀ _ hg0ne]
    rw [this]
    exact div_mem hd0 hg0
  have hWc : ∀ n, PowerSeries.coeff n (taylor0 w) ∈ M := by
    refine rec2 M _ _ (neg_mem (div_mem h2 ?_)) TW ?_ ?_
    · have := natCast_mem M 2
      simpa using this
    · rw [coeff0_taylor0]
      simp only [w, zero_add]
      exact hp
    · rw [coeff1_taylor0, (hW 0 hu0).deriv, zero_add]
      exact hp'
  have hVc : ∀ n, PowerSeries.coeff n (taylor0 v) ∈ M := by
    refine rec0 M _ _ TV ?_ ?_
    · intro k
      rw [map_add (f := _), PowerSeries.coeff_C_mul, PowerSeries.coeff_C]
      refine add_mem (mul_mem (neg_mem (one_mem _)) (hWc k)) ?_
      split_ifs
      · exact neg_mem hs2
      · exact zero_mem _
    · rw [coeff0_taylor0]
      exact hv0
  intro k
  refine rec1 M _ _ TG hVc ?_ k
  rw [coeff0_taylor0]
  exact hg0

theorem caseB (L : PeriodPair) (ω₀ s : ℂ) (hu : s + ω₀ / 2 ∈ L.lattice) (M : IntermediateField ℚ ℂ)
    (h2 : L.g₂ ∈ M) (h3 : L.g₃ ∈ M) (hs2 : s2 L ∈ M) (hd0 : deriv (opU L s (th0 L (ω₀ / 2))) 0 ∈ M) :
    CoefIn1 (opU L s (th0 L (ω₀ / 2))) M := by
  have hψ : semiChar L (s + ω₀ / 2) ≠ 0 := by
    unfold semiChar
    split_ifs <;> norm_num
  set K : ℂ := Complex.exp (-(Real.pi : ℂ) * Complex.I * (altE L s (ω₀ / 2) : ℂ)) / semiChar L (s + ω₀ / 2)
    / opU L (ω₀ / 2) (sgStar L) 0 with hK
  have eg : opU L s (th0 L (ω₀ / 2)) = fun z => K * sgStar L z := by
    funext z
    rw [opUTh0 L (ω₀ / 2) s z]
    have hf := sgStarFixed L (s + ω₀ / 2) z hu
    have e : opU L (s + ω₀ / 2) (sgStar L) z = sgStar L z / semiChar L (s + ω₀ / 2) := by
      rw [← hf, mul_div_cancel_left₀ _ hψ]
    rw [e, hK]
    ring
  have hsd := sgStarBasic L
  have hK0 : K ∈ M := by
    have e : deriv (opU L s (th0 L (ω₀ / 2))) 0 = K := by
      rw [eg, deriv_const_mul _ (hsd.1 0), hsd.2.2.2.1, mul_one]
    rw [← e]
    exact hd0
  let j : M →+* ℂ := algebraMap M ℂ
  let PM : PowerSeries M := Formalism.L2.Th1.F.pOf (⟨L.g₂, h2⟩ : M) ⟨L.g₃, h3⟩
  have hS : taylor0 (sgStar L) = PowerSeries.map j (Formalism.L2.Th1.B.sgStar (⟨s2 L, hs2⟩ : M) PM) := by
    rw [taylorSgStar L, Formalism.L2.Th1.B.Map.map_sgStar, ← pSeries_eq_map M L h2 h3]
    rfl
  have hsA : AnalyticAt ℂ (sgStar L) 0 := (hsd.1).analyticAt 0
  intro k
  rw [eg, Taylor.taylor0_mul analyticAt_const hsA, Taylor.taylor0_const, PowerSeries.coeff_C_mul, hS,
    PowerSeries.coeff_map]
  exact mul_mem hK0 (PowerSeries.coeff k (Formalism.L2.Th1.B.sgStar (⟨s2 L, hs2⟩ : M) PM)).2

theorem th0TransAlg_of (L : PeriodPair) (ω₀ : ℂ) (hω : ω₀ ∈ L.lattice) (hh : ω₀ / 2 ∉ L.lattice)
    (hg2 : L.g₂ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) (hg3 : L.g₃ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) (hs2 : s2 L ∈ Formalism.MainNotions.TaylorLogMetric.Qbar)
    (hP : PTorsAlg L) (hK : KleinAlg L ω₀) : PeriodPairTranscendence L ω₀ := by
  intro s hs
  obtain ⟨hk0, hk1⟩ := hK s hs
  by_cases hu : s + ω₀ / 2 ∈ L.lattice
  · obtain ⟨M, hMf, hM⟩ := exists_nf {L.g₂, L.g₃, s2 L, deriv (opU L s (th0 L (ω₀ / 2))) 0} (by
      intro x hx
      simp only [Finset.mem_insert, Finset.mem_singleton] at hx
      rcases hx with rfl | rfl | rfl | rfl <;> assumption)
    exact ⟨M, hMf, caseB L ω₀ s hu M (hM _ (by simp)) (hM _ (by simp)) (hM _ (by simp)) (hM _ (by simp))⟩
  · obtain ⟨N, hN, hNs⟩ := hs
    have htor : ∃ N' : ℕ, 0 < N' ∧ (N' : ℂ) * (s + ω₀ / 2) ∈ L.lattice := by
      refine ⟨2 * N, by omega, ?_⟩
      have e : ((2 * N : ℕ) : ℂ) * (s + ω₀ / 2) = (N : ℂ) * s + (N : ℂ) * s + N • ω₀ := by
        rw [nsmul_eq_mul]
        push_cast
        ring
      rw [e]
      exact add_mem (add_mem hNs hNs) (nsmul_mem hω N)
    obtain ⟨hp, hp'⟩ := hP _ htor hu
    obtain ⟨M, hMf, hM⟩ := exists_nf {L.g₂, s2 L, L.weierstrassP (s + ω₀ / 2), L.derivWeierstrassP (s + ω₀ / 2),
      opU L s (th0 L (ω₀ / 2)) 0, deriv (opU L s (th0 L (ω₀ / 2))) 0} (by
      intro x hx
      simp only [Finset.mem_insert, Finset.mem_singleton] at hx
      rcases hx with rfl | rfl | rfl | rfl | rfl | rfl <;> assumption)
    exact ⟨M, hMf, caseA L ω₀ s hω hh hu M (hM _ (by simp)) (hM _ (by simp)) (hM _ (by simp)) (hM _ (by simp))
      (hM _ (by simp)) (hM _ (by simp))⟩

end OneVarK

section AllK

theorem th0TransAll_of (hP : PTorsAll) (hK : KleinAll) : PeriodTranscendenceAllLattices := by
  intro D cc δ B hcc hδ
  have sd : B.StdOK := GlobalTheory.FourthRootStd.stdOK B hcc hδ
  obtain ⟨h2, h3⟩ := _root_.Formalism.L2.KerInert.Sigma.ChartWirtingerDerivatives.weierstrass_invariants_algebraic D cc δ hcc hδ B.L B.lat
  exact th0TransAlg_of B.L B.ω₀ sd.per sd.half h2 h3 (Sigma.secondEisensteinAlgebraic D cc δ hcc hδ B.L B.lat)
    (hP D cc δ B hcc hδ) (hK D cc δ B hcc hδ)

theorem pTorsAlg_of (L : PeriodPair) (hg2 : L.g₂ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) (hg3 : L.g₃ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) : PTorsAlg L := by
  rintro u ⟨N, hN, hNu⟩ hu
  haveI : Algebra.IsAlgebraic ℚ Formalism.MainNotions.TaylorLogMetric.Qbar :=
    ⟨fun x => IntermediateField.isAlgebraic_iff.2 (mem_algebraicClosure_iff.1 x.2)⟩
  have hx : IsAlgebraic ℚ (L.weierstrassP u) :=
    (PI.GalTorsConj.W.wp_isAlgebraic L Formalism.MainNotions.TaylorLogMetric.Qbar hg2 hg3 N u hN hNu hu).restrictScalars ℚ
  have hsq : L.derivWeierstrassP u ^ 2 = 4 * L.weierstrassP u ^ 3 - L.g₂ * L.weierstrassP u - L.g₃ := by
    have e := L.derivWeierstrassP_sq u hu
    linear_combination e
  exact ⟨mem_algebraicClosure_iff.2 hx, mem_algebraicClosure_iff.2
    (PI.GalTorsConj.W.alg_of_sq hsq hx (mem_algebraicClosure_iff.1 hg2) (mem_algebraicClosure_iff.1 hg3))⟩

theorem torsion_points_algebraic : PTorsAll := fun D cc δ B hcc hδ =>
  pTorsAlg_of B.L (_root_.Formalism.L2.KerInert.Sigma.ChartWirtingerDerivatives.weierstrass_invariants_algebraic D cc δ hcc hδ B.L B.lat).1 (_root_.Formalism.L2.KerInert.Sigma.ChartWirtingerDerivatives.weierstrass_invariants_algebraic D cc δ hcc hδ B.L B.lat).2

theorem kerTransAll_of_klein (hP : PTorsAll) (hK : KleinAll) : KerTransAll :=
  kerTransAll_of (th0TransAll_of hP hK)

theorem kerTransAll_of_kleinAll (hK : KleinAll) : KerTransAll :=
  kerTransAll_of_klein torsion_points_algebraic hK

end AllK

end AlgP

end Formalism.L2.KerInert
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgKlein =====

-- ===== clump member: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgKleinPf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgKleinPf", "h": "module\n\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgKlein\npublic import Formalism.LocalToGlobal.InertKernelTheory.DefsMM\nimport Formalism.LocalToGlobal.GlobalTheory.GL3.PStdOK\nimport Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.FourthTensorThetaEqKernel\nimport Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.SigmaAlg\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.PDeriv\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.Taylor\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.IsogenyFormulaInstance\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.MulStableIntegral\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.QuasiPeriodConstUnique\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.Th0TranslateProduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.IntegerEndomorphismInstance\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.KerInert

open NumberField Formalism.BasicNotions Classical
open scoped ComplexConjugate Topology

namespace AlgP

section KleinPf

open Formalism.L2.Th1.F

theorem translation_operator_zero (L : PeriodPair) (F : ℂ → ℂ) : opU L 0 F = F := by
  funext z
  simp [opU, herm]

theorem sg_analytic (L : PeriodPair) (u : ℂ) : AnalyticOnNhd ℂ (opU L u (sgStar L)) Set.univ :=
  translation_operator_analytic L u (sgStarBasic L).1

theorem sg_val_ne (L : PeriodPair) {u : ℂ} (hu : u ∉ L.lattice) : opU L u (sgStar L) 0 ≠ 0 :=
  (th0Const L u).2 hu

theorem semiChar_mem (L : PeriodPair) (ω : ℂ) : semiChar L ω ∈ Formalism.MainNotions.TaylorLogMetric.Qbar ∧ semiChar L ω ≠ 0 := by
  unfold semiChar
  split_ifs
  · exact ⟨one_mem _, one_ne_zero⟩
  · exact ⟨neg_mem (one_mem _), by norm_num⟩

theorem sg_lat (L : PeriodPair) {ω : ℂ} (hω : ω ∈ L.lattice) (z : ℂ) :
    opU L ω (sgStar L) z = (semiChar L ω)⁻¹ * sgStar L z := by
  have h := sgStarFixed L ω z hω
  have hne := (semiChar_mem L ω).2
  rw [← h, ← mul_assoc, inv_mul_cancel₀ hne, one_mul]

theorem altE_nat_mul (L : PeriodPair) (N : ℕ) (x y : ℂ) : altE L ((N : ℂ) * x) y = (N : ℝ) * altE L x y := by
  simp only [altE, herm]
  rw [show (N : ℂ) * x * conj y / (area L : ℂ) = ((N : ℝ) : ℂ) * (x * conj y / (area L : ℂ)) by push_cast; ring]
  simp [Complex.mul_im]

theorem altE_mul_nat (L : PeriodPair) (N : ℕ) (x y : ℂ) : altE L x ((N : ℂ) * y) = (N : ℝ) * altE L x y := by
  simp only [altE, herm, map_mul, map_natCast]
  rw [show x * ((N : ℂ) * conj y) / (area L : ℂ) = ((N : ℝ) : ℂ) * (x * conj y / (area L : ℂ)) by push_cast; ring]
  simp [Complex.mul_im]

theorem expAltE_mem (L : PeriodPair) (x y : ℂ) (N : ℕ) (hN : 0 < N) (h : ∃ k : ℤ, (N : ℝ) * altE L x y = k) :
    Complex.exp (-(Real.pi : ℂ) * Complex.I * (altE L x y : ℂ)) ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := by
  obtain ⟨k, hk⟩ := h
  have hk' : (N : ℂ) * (altE L x y : ℂ) = (k : ℂ) := by exact_mod_cast hk
  refine rootOfUnity_mem_Qbar (k := 2 * N) (Nat.mul_pos two_pos hN) ?_
  rw [← Complex.exp_nat_mul, Complex.exp_eq_one_iff]
  refine ⟨-k, ?_⟩
  push_cast
  linear_combination (-2 * (Real.pi : ℂ) * Complex.I) * hk'

theorem sg_shift (L : PeriodPair) (u ω : ℂ) (N : ℕ) (hN : 0 < N) (hu : (N : ℂ) * u ∈ L.lattice)
    (hω : ω ∈ L.lattice) :
    ∃ c : ℂ, c ∈ Formalism.MainNotions.TaylorLogMetric.Qbar ∧ c ≠ 0 ∧ ∀ z, opU L (u + ω) (sgStar L) z = c * opU L u (sgStar L) z := by
  obtain ⟨k, hk⟩ := altEInt L _ _ hu hω
  have he := expAltE_mem L u ω N hN ⟨k, by rw [← altE_nat_mul]; exact hk⟩
  have hne := Complex.exp_ne_zero (-(Real.pi : ℂ) * Complex.I * (altE L u ω : ℂ))
  obtain ⟨hψ, hψne⟩ := semiChar_mem L ω
  refine ⟨(Complex.exp (-(Real.pi : ℂ) * Complex.I * (altE L u ω : ℂ)))⁻¹ * (semiChar L ω)⁻¹,
    mul_mem (inv_mem he) (inv_mem hψ), mul_ne_zero (inv_ne_zero hne) (inv_ne_zero hψne), fun z => ?_⟩
  have h := opUMul L u ω (sgStar L) z
  have e : opU L u (opU L ω (sgStar L)) z = (semiChar L ω)⁻¹ * opU L u (sgStar L) z := by
    show opU L ω (sgStar L) (z + u) * _ = (semiChar L ω)⁻¹ * (sgStar L (z + u) * _)
    rw [sg_lat L hω]
    ring
  rw [e] at h
  rw [← inv_mul_cancel_left₀ hne (opU L (u + ω) (sgStar L) z), ← h]
  ring

theorem sg_neg (L : PeriodPair) (u z : ℂ) : opU L (-u) (sgStar L) z = -opU L u (sgStar L) (-z) := by
  simp only [opU, herm, map_neg]
  rw [show z + -u = -(-z + u) by ring, (sgStarBasic L).2.1 (-z + u)]
  ring_nf

theorem sg_neg_val (L : PeriodPair) (u : ℂ) : opU L (-u) (sgStar L) 0 = -opU L u (sgStar L) 0 := by
  rw [sg_neg, neg_zero]

theorem sg_neg_deriv (L : PeriodPair) (u : ℂ) :
    deriv (opU L (-u) (sgStar L)) 0 = deriv (opU L u (sgStar L)) 0 := by
  have hf : opU L (-u) (sgStar L) = fun z => -opU L u (sgStar L) (-z) := funext (sg_neg L u)
  have hd : HasDerivAt (opU L u (sgStar L)) (deriv (opU L u (sgStar L)) (-0)) (-0) :=
    ((sg_analytic L u) _ (Set.mem_univ _)).differentiableAt.hasDerivAt
  have h2 := (hd.comp (0 : ℂ) (hasDerivAt_neg (0 : ℂ))).neg
  rw [hf]
  have e : (fun z => -opU L u (sgStar L) (-z)) = -(opU L u (sgStar L) ∘ Neg.neg) := rfl
  rw [e, h2.deriv]
  simp

theorem wp_analytic (L : PeriodPair) {P : ℂ} (hP : P ∉ L.lattice) :
    AnalyticAt ℂ (fun z => L.weierstrassP (z + P)) 0 :=
  analyticAt_of_eventually ((_root_.Formalism.L2.Th1.F.EndoZ.ev_shift_notMem L hP).mono fun z hz =>
    ((PDeriv.hasDerivAt_P L hz).comp_add_const z P).differentiableAt)

theorem tp_series (L : PeriodPair) (P Q : ℂ) (hQ : Q ∉ L.lattice) (hP : P ∉ L.lattice) :
    taylor0 (opU L (P + Q) (sgStar L)) * taylor0 (opU L (P - Q) (sgStar L)) =
      PowerSeries.C (opU L Q (sgStar L) 0 ^ 2) * ((PowerSeries.C (L.weierstrassP Q) +
        PowerSeries.C (-1 : ℂ) * taylor0 (fun z => L.weierstrassP (z + P))) *
          (taylor0 (opU L P (sgStar L)) * taylor0 (opU L P (sgStar L)))) := by
  have hA : ∀ u, AnalyticAt ℂ (opU L u (sgStar L)) 0 := fun u => sg_analytic L u 0 (Set.mem_univ _)
  have hw := wp_analytic L hP
  have e1 := Taylor.taylor0_mul (hA (P + Q)) (hA (P - Q))
  have e2 := Taylor.taylor0_mul (hA P) (hA P)
  have a3 : AnalyticAt ℂ (fun z => (-1 : ℂ) * L.weierstrassP (z + P)) 0 := analyticAt_const.mul hw
  have e3 : taylor0 (fun z => (-1 : ℂ) * L.weierstrassP (z + P)) =
      PowerSeries.C (-1 : ℂ) * taylor0 (fun z => L.weierstrassP (z + P)) := by
    rw [Taylor.taylor0_mul (f := fun _ => (-1 : ℂ)) (g := fun z => L.weierstrassP (z + P)) analyticAt_const hw,
      Taylor.taylor0_const]
  have a4 : AnalyticAt ℂ (fun z => L.weierstrassP Q + (-1 : ℂ) * L.weierstrassP (z + P)) 0 := analyticAt_const.add a3
  have e4 : taylor0 (fun z => L.weierstrassP Q + (-1 : ℂ) * L.weierstrassP (z + P)) =
      PowerSeries.C (L.weierstrassP Q) + PowerSeries.C (-1 : ℂ) * taylor0 (fun z => L.weierstrassP (z + P)) := by
    rw [Taylor.taylor0_add (f := fun _ => L.weierstrassP Q) (g := fun z => (-1 : ℂ) * L.weierstrassP (z + P))
      analyticAt_const a3, Taylor.taylor0_const, e3]
  have a2 : AnalyticAt ℂ (fun z => opU L P (sgStar L) z * opU L P (sgStar L) z) 0 := (hA P).mul (hA P)
  have a5 : AnalyticAt ℂ (fun z => (L.weierstrassP Q + (-1 : ℂ) * L.weierstrassP (z + P)) *
      (opU L P (sgStar L) z * opU L P (sgStar L) z)) 0 := a4.mul a2
  have e5 : taylor0 (fun z => (L.weierstrassP Q + (-1 : ℂ) * L.weierstrassP (z + P)) *
      (opU L P (sgStar L) z * opU L P (sgStar L) z)) =
      (PowerSeries.C (L.weierstrassP Q) + PowerSeries.C (-1 : ℂ) * taylor0 (fun z => L.weierstrassP (z + P))) *
        (taylor0 (opU L P (sgStar L)) * taylor0 (opU L P (sgStar L))) := by
    rw [Taylor.taylor0_mul (f := fun z => L.weierstrassP Q + (-1 : ℂ) * L.weierstrassP (z + P))
      (g := fun z => opU L P (sgStar L) z * opU L P (sgStar L) z) a4 a2, e4, e2]
  have e6 : taylor0 (fun z => opU L Q (sgStar L) 0 ^ 2 * ((L.weierstrassP Q + (-1 : ℂ) * L.weierstrassP (z + P)) *
      (opU L P (sgStar L) z * opU L P (sgStar L) z))) =
      PowerSeries.C (opU L Q (sgStar L) 0 ^ 2) * ((PowerSeries.C (L.weierstrassP Q) +
        PowerSeries.C (-1 : ℂ) * taylor0 (fun z => L.weierstrassP (z + P))) *
          (taylor0 (opU L P (sgStar L)) * taylor0 (opU L P (sgStar L)))) := by
    rw [Taylor.taylor0_mul (f := fun _ => opU L Q (sgStar L) 0 ^ 2)
      (g := fun z => (L.weierstrassP Q + (-1 : ℂ) * L.weierstrassP (z + P)) *
        (opU L P (sgStar L) z * opU L P (sgStar L) z)) analyticAt_const a5, Taylor.taylor0_const, e5]
  rw [← e1, ← e6]
  refine Taylor.taylor0_congr ((_root_.Formalism.L2.Th1.F.EndoZ.ev_shift_notMem L hP).mono fun z hz => ?_)
  have h := translateProduct L P Q z hQ hz
  linear_combination h

theorem coeff_mul_low_degrees (f g : PowerSeries ℂ) :
    PowerSeries.coeff 0 (f * g) = PowerSeries.coeff 0 f * PowerSeries.coeff 0 g ∧
    PowerSeries.coeff 1 (f * g) = PowerSeries.coeff 0 f * PowerSeries.coeff 1 g +
      PowerSeries.coeff 1 f * PowerSeries.coeff 0 g ∧
    PowerSeries.coeff 2 (f * g) = PowerSeries.coeff 0 f * PowerSeries.coeff 2 g +
      PowerSeries.coeff 1 f * PowerSeries.coeff 1 g + PowerSeries.coeff 2 f * PowerSeries.coeff 0 g := by
  refine ⟨?_, ?_, ?_⟩ <;>
  simp [PowerSeries.coeff_mul, Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk, Finset.sum_range_succ]

theorem coeff_const_add_low_degrees (c : ℂ) (f : PowerSeries ℂ) :
    PowerSeries.coeff 0 (PowerSeries.C c + f) = c + PowerSeries.coeff 0 f ∧
    PowerSeries.coeff 1 (PowerSeries.C c + f) = PowerSeries.coeff 1 f ∧
    PowerSeries.coeff 2 (PowerSeries.C c + f) = PowerSeries.coeff 2 f := by
  refine ⟨?_, ?_, ?_⟩ <;> simp

theorem wp_coeffs (L : PeriodPair) {P : ℂ} (hP : P ∉ L.lattice) :
    PowerSeries.coeff 0 (taylor0 (fun z => L.weierstrassP (z + P))) = L.weierstrassP P ∧
    PowerSeries.coeff 1 (taylor0 (fun z => L.weierstrassP (z + P))) = L.derivWeierstrassP P ∧
    PowerSeries.coeff 2 (taylor0 (fun z => L.weierstrassP (z + P))) =
      (6 * L.weierstrassP P ^ 2 - L.g₂ / 2) / 2 := by
  have hev := _root_.Formalism.L2.Th1.F.EndoZ.ev_shift_notMem L hP
  have hW : ∀ z, z + P ∉ L.lattice → HasDerivAt (fun z => L.weierstrassP (z + P)) (L.derivWeierstrassP (z + P)) z :=
    fun z hz => (PDeriv.hasDerivAt_P L hz).comp_add_const z P
  have hP0 : (0 : ℂ) + P ∉ L.lattice := by rwa [zero_add]
  refine ⟨?_, ?_, ?_⟩
  · rw [coeff0_taylor0, zero_add]
  · rw [coeff1_taylor0, (hW 0 hP0).deriv, zero_add]
  · rw [Taylor.coeff_taylor0, iteratedDeriv_succ, iteratedDeriv_one]
    have hd : deriv (fun z => L.weierstrassP (z + P)) =ᶠ[𝓝 (0 : ℂ)] fun z => L.derivWeierstrassP (z + P) :=
      hev.mono fun z hz => (hW z hz).deriv
    rw [Filter.EventuallyEq.deriv_eq hd, ((pSecond L (0 + P) hP0).comp_add_const 0 P).deriv, zero_add]
    norm_num

theorem sg_coeffs (L : PeriodPair) :
    PowerSeries.coeff 0 (taylor0 (sgStar L)) = 0 ∧ PowerSeries.coeff 1 (taylor0 (sgStar L)) = 1 ∧
    PowerSeries.coeff 2 (taylor0 (sgStar L)) = 0 := by
  have hsd := sgStarBasic L
  have hsA : AnalyticAt ℂ (sgStar L) 0 := hsd.1.analyticAt 0
  refine ⟨?_, ?_, ?_⟩
  · rw [coeff0_taylor0]
    exact (hsd.2.2.1 0).2 (zero_mem _)
  · rw [coeff1_taylor0]
    exact hsd.2.2.2.1
  · have h1 := taylorDeriv.2.1 (sgStar L) (-1) hsA
    have e : (fun z => sgStar L ((-1) * z)) = fun z => (-1 : ℂ) * sgStar L z := by
      funext z
      rw [neg_one_mul, hsd.2.1, neg_one_mul]
    rw [e, Taylor.taylor0_mul (f := fun _ => (-1 : ℂ)) (g := sgStar L) analyticAt_const hsA,
      Taylor.taylor0_const] at h1
    have h2 := congrArg (PowerSeries.coeff 2) h1
    rw [PowerSeries.coeff_C_mul, PowerSeries.coeff_rescale] at h2
    linear_combination (-1 / 2 : ℂ) * h2

theorem wp_deriv0 (L : PeriodPair) {P : ℂ} (hP : P ∉ L.lattice) :
    deriv (fun z => L.weierstrassP (z + P)) 0 = L.derivWeierstrassP P := by
  have hP0 : (0 : ℂ) + P ∉ L.lattice := by rwa [zero_add]
  rw [((PDeriv.hasDerivAt_P L hP0).comp_add_const 0 P).deriv, zero_add]

theorem series_rel (A B W G : PowerSeries ℂ) (c p : ℂ)
    (h : A * B = PowerSeries.C c * ((PowerSeries.C p + PowerSeries.C (-1 : ℂ) * W) * (G * G))) :
    PowerSeries.coeff 0 A * PowerSeries.coeff 0 B =
      c * ((p - PowerSeries.coeff 0 W) * (PowerSeries.coeff 0 G * PowerSeries.coeff 0 G)) ∧
    PowerSeries.coeff 0 A * PowerSeries.coeff 1 B + PowerSeries.coeff 1 A * PowerSeries.coeff 0 B =
      c * ((p - PowerSeries.coeff 0 W) * (2 * PowerSeries.coeff 0 G * PowerSeries.coeff 1 G) -
        PowerSeries.coeff 1 W * (PowerSeries.coeff 0 G * PowerSeries.coeff 0 G)) ∧
    PowerSeries.coeff 0 A * PowerSeries.coeff 2 B + PowerSeries.coeff 1 A * PowerSeries.coeff 1 B +
        PowerSeries.coeff 2 A * PowerSeries.coeff 0 B =
      c * ((p - PowerSeries.coeff 0 W) * (2 * PowerSeries.coeff 0 G * PowerSeries.coeff 2 G +
          PowerSeries.coeff 1 G * PowerSeries.coeff 1 G) -
        PowerSeries.coeff 1 W * (2 * PowerSeries.coeff 0 G * PowerSeries.coeff 1 G) -
        PowerSeries.coeff 2 W * (PowerSeries.coeff 0 G * PowerSeries.coeff 0 G)) := by
  have e0 := congrArg (PowerSeries.coeff 0) h
  have e1 := congrArg (PowerSeries.coeff 1) h
  have e2 := congrArg (PowerSeries.coeff 2) h
  obtain ⟨a0, a1, a2⟩ := coeff_mul_low_degrees A B
  obtain ⟨x0, x1, x2⟩ := coeff_mul_low_degrees (PowerSeries.C p + PowerSeries.C (-1 : ℂ) * W) (G * G)
  obtain ⟨c0, c1, c2⟩ := coeff_const_add_low_degrees p (PowerSeries.C (-1 : ℂ) * W)
  obtain ⟨g0, g1, g2⟩ := coeff_mul_low_degrees G G
  rw [PowerSeries.coeff_C_mul] at e0 e1 e2
  rw [a0, x0, c0, g0, PowerSeries.coeff_C_mul] at e0
  rw [a1, x1, c0, c1, g0, g1, PowerSeries.coeff_C_mul, PowerSeries.coeff_C_mul] at e1
  rw [a2, x2, c0, c1, c2, g0, g1, g2, PowerSeries.coeff_C_mul, PowerSeries.coeff_C_mul, PowerSeries.coeff_C_mul] at e2
  refine ⟨?_, ?_, ?_⟩
  · linear_combination e0
  · linear_combination e1
  · linear_combination e2

theorem tp_rel (L : PeriodPair) (P Q : ℂ) (hQ : Q ∉ L.lattice) (hP : P ∉ L.lattice) :
    opU L (P + Q) (sgStar L) 0 * opU L (P - Q) (sgStar L) 0 =
      opU L Q (sgStar L) 0 ^ 2 * ((L.weierstrassP Q - L.weierstrassP P) * opU L P (sgStar L) 0 ^ 2) ∧
    deriv (opU L (P + Q) (sgStar L)) 0 * opU L (P - Q) (sgStar L) 0 +
      opU L (P + Q) (sgStar L) 0 * deriv (opU L (P - Q) (sgStar L)) 0 =
      opU L Q (sgStar L) 0 ^ 2 * ((L.weierstrassP Q - L.weierstrassP P) *
        (2 * opU L P (sgStar L) 0 * deriv (opU L P (sgStar L)) 0) -
          L.derivWeierstrassP P * opU L P (sgStar L) 0 ^ 2) := by
  obtain ⟨e0, e1, -⟩ := series_rel _ _ _ _ _ _ (tp_series L P Q hQ hP)
  obtain ⟨w0, w1, -⟩ := wp_coeffs L hP
  have hwd := wp_deriv0 L hP
  simp only [w0, w1, coeff0_taylor0, coeff1_taylor0] at e0 e1
  refine ⟨?_, ?_⟩
  · linear_combination e0
  · linear_combination e1

theorem dbl_rel (L : PeriodPair) (Q : ℂ) (hQ : Q ∉ L.lattice) :
    opU L (Q + Q) (sgStar L) 0 = -L.derivWeierstrassP Q * opU L Q (sgStar L) 0 ^ 4 ∧
    deriv (opU L (Q + Q) (sgStar L)) 0 = opU L Q (sgStar L) 0 ^ 2 *
      (-L.derivWeierstrassP Q * (2 * opU L Q (sgStar L) 0 * deriv (opU L Q (sgStar L)) 0) -
        (6 * L.weierstrassP Q ^ 2 - L.g₂ / 2) / 2 * opU L Q (sgStar L) 0 ^ 2) := by
  have h := tp_series L Q Q hQ hQ
  rw [sub_self, translation_operator_zero] at h
  obtain ⟨-, e1, e2⟩ := series_rel _ _ _ _ _ _ h
  obtain ⟨w0, w1, w2⟩ := wp_coeffs L hQ
  obtain ⟨s0, s1, s2⟩ := sg_coeffs L
  have hwd := wp_deriv0 L hQ
  simp only [w0, w1, w2, s0, s1, s2, coeff0_taylor0, coeff1_taylor0] at e1 e2
  refine ⟨?_, ?_⟩
  · linear_combination e1
  · linear_combination e2

theorem step_rel (L : PeriodPair) (Q : ℂ) (m : ℕ) (hQ : Q ∉ L.lattice) (hP : ((m + 2 : ℕ) : ℂ) * Q ∉ L.lattice) :
    opU L (((m + 3 : ℕ) : ℂ) * Q) (sgStar L) 0 * opU L (((m + 1 : ℕ) : ℂ) * Q) (sgStar L) 0 =
      opU L Q (sgStar L) 0 ^ 2 * ((L.weierstrassP Q - L.weierstrassP (((m + 2 : ℕ) : ℂ) * Q)) *
        opU L (((m + 2 : ℕ) : ℂ) * Q) (sgStar L) 0 ^ 2) ∧
    deriv (opU L (((m + 3 : ℕ) : ℂ) * Q) (sgStar L)) 0 * opU L (((m + 1 : ℕ) : ℂ) * Q) (sgStar L) 0 +
      opU L (((m + 3 : ℕ) : ℂ) * Q) (sgStar L) 0 * deriv (opU L (((m + 1 : ℕ) : ℂ) * Q) (sgStar L)) 0 =
      opU L Q (sgStar L) 0 ^ 2 * ((L.weierstrassP Q - L.weierstrassP (((m + 2 : ℕ) : ℂ) * Q)) *
        (2 * opU L (((m + 2 : ℕ) : ℂ) * Q) (sgStar L) 0 * deriv (opU L (((m + 2 : ℕ) : ℂ) * Q) (sgStar L)) 0) -
          L.derivWeierstrassP (((m + 2 : ℕ) : ℂ) * Q) * opU L (((m + 2 : ℕ) : ℂ) * Q) (sgStar L) 0 ^ 2) := by
  have h := tp_rel L (((m + 2 : ℕ) : ℂ) * Q) Q hQ hP
  have e1 : ((m + 2 : ℕ) : ℂ) * Q + Q = ((m + 3 : ℕ) : ℂ) * Q := by push_cast; ring
  have e2 : ((m + 2 : ℕ) : ℂ) * Q - Q = ((m + 1 : ℕ) : ℂ) * Q := by push_cast; ring
  rw [e1, e2] at h
  exact h

theorem kv_rec (L : PeriodPair) (hg2 : L.g₂ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) (hg3 : L.g₃ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) (Q : ℂ) (N : ℕ)
    (hN3 : 3 ≤ N) (hNQ : (N : ℂ) * Q ∈ L.lattice) (hmin : ∀ m : ℕ, 0 < m → m < N → (m : ℂ) * Q ∉ L.lattice) :
    ∀ m : ℕ, m + 3 ≤ N → ∀ j ∈ ({m + 1, m + 2} : Finset ℕ),
      ∃ a ∈ Formalism.MainNotions.TaylorLogMetric.Qbar, a ≠ 0 ∧
        opU L ((j : ℂ) * Q) (sgStar L) 0 = a * opU L Q (sgStar L) 0 ^ (j ^ 2) ∧
        ∃ b ∈ Formalism.MainNotions.TaylorLogMetric.Qbar, deriv (opU L ((j : ℂ) * Q) (sgStar L)) 0 = opU L ((j : ℂ) * Q) (sgStar L) 0 *
          ((j : ℂ) * (deriv (opU L Q (sgStar L)) 0 / opU L Q (sgStar L) 0) + b) := by
  have hQ : Q ∉ L.lattice := by simpa using hmin 1 one_pos (by omega)
  have hx : opU L Q (sgStar L) 0 ≠ 0 := sg_val_ne L hQ
  have hKne : ∀ j : ℕ, 0 < j → j < N → opU L ((j : ℂ) * Q) (sgStar L) 0 ≠ 0 := fun j h0 h1 =>
    sg_val_ne L (hmin j h0 h1)
  have hPT : ∀ j : ℕ, 0 < j → j < N →
      L.weierstrassP ((j : ℂ) * Q) ∈ Formalism.MainNotions.TaylorLogMetric.Qbar ∧ L.derivWeierstrassP ((j : ℂ) * Q) ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := by
    intro j h0 h1
    refine pTorsAlg_of L hg2 hg3 _ ⟨N, by omega, ?_⟩ (hmin j h0 h1)
    rw [show (N : ℂ) * ((j : ℂ) * Q) = (j : ℂ) * ((N : ℂ) * Q) by ring, ← nsmul_eq_mul]
    exact nsmul_mem hNQ j
  have hPQ := hPT 1 one_pos (by omega)
  simp only [Nat.cast_one, one_mul] at hPQ

  have S1 : ∃ a ∈ Formalism.MainNotions.TaylorLogMetric.Qbar, a ≠ 0 ∧
      opU L (((1 : ℕ) : ℂ) * Q) (sgStar L) 0 = a * opU L Q (sgStar L) 0 ^ (1 ^ 2) ∧
      ∃ b ∈ Formalism.MainNotions.TaylorLogMetric.Qbar, deriv (opU L (((1 : ℕ) : ℂ) * Q) (sgStar L)) 0 = opU L (((1 : ℕ) : ℂ) * Q) (sgStar L) 0 *
        (((1 : ℕ) : ℂ) * (deriv (opU L Q (sgStar L)) 0 / opU L Q (sgStar L) 0) + b) := by
    refine ⟨1, one_mem _, one_ne_zero, by simp, 0, zero_mem _, ?_⟩
    simp only [Nat.cast_one, one_mul, add_zero]
    field_simp

  have S2 : ∃ a ∈ Formalism.MainNotions.TaylorLogMetric.Qbar, a ≠ 0 ∧
      opU L (((2 : ℕ) : ℂ) * Q) (sgStar L) 0 = a * opU L Q (sgStar L) 0 ^ (2 ^ 2) ∧
      ∃ b ∈ Formalism.MainNotions.TaylorLogMetric.Qbar, deriv (opU L (((2 : ℕ) : ℂ) * Q) (sgStar L)) 0 = opU L (((2 : ℕ) : ℂ) * Q) (sgStar L) 0 *
        (((2 : ℕ) : ℂ) * (deriv (opU L Q (sgStar L)) 0 / opU L Q (sgStar L) 0) + b) := by
    obtain ⟨d1, d2⟩ := dbl_rel L Q hQ
    have e : ((2 : ℕ) : ℂ) * Q = Q + Q := by push_cast; ring
    have hK2 := hKne 2 two_pos (by omega)
    rw [e] at hK2 ⊢
    have hp' : L.derivWeierstrassP Q ≠ 0 := by
      intro h0
      rw [d1, h0] at hK2
      simp at hK2
    refine ⟨-L.derivWeierstrassP Q, neg_mem hPQ.2, neg_ne_zero.2 hp', by rw [d1]; ring,
      ((6 * L.weierstrassP Q ^ 2 - L.g₂ / 2) / 2) / L.derivWeierstrassP Q, ?_, ?_⟩
    · have h6 : (6 : ℂ) ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := by
        have := natCast_mem Formalism.MainNotions.TaylorLogMetric.Qbar 6
        simpa using this
      have h2' : (2 : ℂ) ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := by
        have := natCast_mem Formalism.MainNotions.TaylorLogMetric.Qbar 2
        simpa using this
      exact div_mem (div_mem (sub_mem (mul_mem h6 (pow_mem hPQ.1 2)) (div_mem hg2 h2')) h2') hPQ.2
    · rw [d2, d1]
      field_simp
      ring
  intro m
  induction m with
  | zero =>
    intro _ j hj
    simp only [Finset.mem_insert, Finset.mem_singleton] at hj
    rcases hj with rfl | rfl
    · exact S1
    · exact S2
  | succ m ih =>
    intro hm j hj
    have ih' := ih (by omega)
    simp only [Finset.mem_insert, Finset.mem_singleton] at hj
    rcases hj with rfl | rfl
    · exact ih' (m + 2) (by simp)
    · show ∃ a ∈ Formalism.MainNotions.TaylorLogMetric.Qbar, a ≠ 0 ∧
        opU L (((m + 3 : ℕ) : ℂ) * Q) (sgStar L) 0 = a * opU L Q (sgStar L) 0 ^ ((m + 3) ^ 2) ∧
        ∃ b ∈ Formalism.MainNotions.TaylorLogMetric.Qbar, deriv (opU L (((m + 3 : ℕ) : ℂ) * Q) (sgStar L)) 0 =
          opU L (((m + 3 : ℕ) : ℂ) * Q) (sgStar L) 0 *
            (((m + 3 : ℕ) : ℂ) * (deriv (opU L Q (sgStar L)) 0 / opU L Q (sgStar L) 0) + b)
      obtain ⟨a1, ha1, ha1ne, hK1, b1, hb1, hD1⟩ := ih' (m + 1) (by simp)
      obtain ⟨a2, ha2, ha2ne, hK2, b2, hb2, hD2⟩ := ih' (m + 2) (by simp)
      obtain ⟨c0, c1⟩ := step_rel L Q m hQ (hmin (m + 2) (by omega) (by omega))
      have hK3ne := hKne (m + 3) (by omega) (by omega)
      have hK1ne := hKne (m + 1) (by omega) (by omega)
      obtain ⟨hpm, hqm⟩ := hPT (m + 2) (by omega) (by omega)
      set x := opU L Q (sgStar L) 0 with hxdef
      set y := deriv (opU L Q (sgStar L)) 0 with hydef
      set K1 := opU L (((m + 1 : ℕ) : ℂ) * Q) (sgStar L) 0 with hK1def
      set K2 := opU L (((m + 2 : ℕ) : ℂ) * Q) (sgStar L) 0 with hK2def
      set K3 := opU L (((m + 3 : ℕ) : ℂ) * Q) (sgStar L) 0 with hK3def
      set D1 := deriv (opU L (((m + 1 : ℕ) : ℂ) * Q) (sgStar L)) 0 with hD1def
      set D2 := deriv (opU L (((m + 2 : ℕ) : ℂ) * Q) (sgStar L)) 0 with hD2def
      set D3 := deriv (opU L (((m + 3 : ℕ) : ℂ) * Q) (sgStar L)) 0 with hD3def
      set p := L.weierstrassP Q - L.weierstrassP (((m + 2 : ℕ) : ℂ) * Q) with hpdef
      set q := L.derivWeierstrassP (((m + 2 : ℕ) : ℂ) * Q) with hqdef
      have hp : p ≠ 0 := by
        intro h0
        apply mul_ne_zero hK3ne hK1ne
        rw [c0, h0]
        ring
      have h2' : (2 : ℂ) ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := by
        have := natCast_mem Formalism.MainNotions.TaylorLogMetric.Qbar 2
        simpa using this
      have hpQ : p ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := sub_mem hPQ.1 hpm
      refine ⟨p * a2 ^ 2 * a1⁻¹, mul_mem (mul_mem hpQ (pow_mem ha2 2)) (inv_mem ha1),
        mul_ne_zero (mul_ne_zero hp (pow_ne_zero 2 ha2ne)) (inv_ne_zero ha1ne), ?_, 2 * b2 - b1 - q * p⁻¹,
        sub_mem (sub_mem (mul_mem h2' hb2) hb1) (mul_mem hqm (inv_mem hpQ)), ?_⟩
      · apply mul_right_cancel₀ hK1ne
        have hpow : x ^ ((m + 3) ^ 2) * x ^ ((m + 1) ^ 2) = x ^ 2 * (x ^ ((m + 2) ^ 2)) ^ 2 := by
          rw [← pow_mul, ← pow_add, ← pow_add]
          congr 1
          ring
        have hinv : a1⁻¹ * a1 = 1 := inv_mul_cancel₀ ha1ne
        rw [c0, hK2]
        conv_rhs => rw [hK1]
        linear_combination (-(p * a2 ^ 2)) * hpow - p * a2 ^ 2 * x ^ ((m + 3) ^ 2) * x ^ ((m + 1) ^ 2) * hinv
      · apply mul_right_cancel₀ hK1ne
        rw [hD1, hD2] at c1
        have hinvp : p⁻¹ * p = 1 := inv_mul_cancel₀ hp
        push_cast at c1 ⊢
        linear_combination c1 + (-2 * (((m : ℂ) + 2) * (y / x) + b2) + q * p⁻¹) * c0 + x ^ 2 * q * K2 ^ 2 * hinvp

theorem kv_main (L : PeriodPair) (hg2 : L.g₂ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) (hg3 : L.g₃ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) (Q : ℂ) (N : ℕ)
    (hN3 : 3 ≤ N) (hNQ : (N : ℂ) * Q ∈ L.lattice) (hmin : ∀ m : ℕ, 0 < m → m < N → (m : ℂ) * Q ∉ L.lattice) :
    opU L Q (sgStar L) 0 ∈ Formalism.MainNotions.TaylorLogMetric.Qbar ∧ deriv (opU L Q (sgStar L)) 0 ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := by
  obtain ⟨n, rfl⟩ : ∃ n, N = n + 3 := ⟨N - 3, by omega⟩
  have hQ : Q ∉ L.lattice := by simpa using hmin 1 one_pos (by omega)
  have hx := sg_val_ne L hQ
  obtain ⟨a, ha, hane, hK, b, hb, hD⟩ := kv_rec L hg2 hg3 Q (n + 3) hN3 hNQ hmin n le_rfl (n + 2) (by simp)
  have hNneg : ((n + 3 : ℕ) : ℂ) * (-Q) ∈ L.lattice := by
    rw [mul_neg]
    exact neg_mem hNQ
  obtain ⟨c, hc, hcne, hsh⟩ := sg_shift L (-Q) (((n + 3 : ℕ) : ℂ) * Q) (n + 3) (by omega) hNneg hNQ
  have e : -Q + ((n + 3 : ℕ) : ℂ) * Q = ((n + 2 : ℕ) : ℂ) * Q := by push_cast; ring
  rw [e] at hsh
  have hKv : opU L (((n + 2 : ℕ) : ℂ) * Q) (sgStar L) 0 = -c * opU L Q (sgStar L) 0 := by
    rw [hsh, sg_neg_val]
    ring
  have hDv : deriv (opU L (((n + 2 : ℕ) : ℂ) * Q) (sgStar L)) 0 = c * deriv (opU L Q (sgStar L)) 0 := by
    have hf : opU L (((n + 2 : ℕ) : ℂ) * Q) (sgStar L) = fun z => c * opU L (-Q) (sgStar L) z := funext hsh
    rw [hf, deriv_const_mul _ ((sg_analytic L (-Q)) 0 (Set.mem_univ _)).differentiableAt, sg_neg_deriv]
  rw [hKv] at hK
  rw [hDv, hKv] at hD
  set x := opU L Q (sgStar L) 0 with hxdef
  set y := deriv (opU L Q (sgStar L)) 0 with hydef
  have e2 : (n + 2) ^ 2 = (n ^ 2 + 4 * n + 3) + 1 := by ring
  rw [e2, pow_succ] at hK
  have hxe : x ^ (n ^ 2 + 4 * n + 3) * a = -c := by
    apply mul_right_cancel₀ hx
    linear_combination (-1 : ℂ) * hK
  have hxe' : x ^ (n ^ 2 + 4 * n + 3) = -c / a := eq_div_of_mul_eq hane hxe
  have hxQ : x ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := by
    refine mem_algebraicClosure_iff.2 (IsAlgebraic.of_pow (n := n ^ 2 + 4 * n + 3) (by positivity) ?_)
    rw [hxe']
    exact mem_algebraicClosure_iff.1 (div_mem (neg_mem hc) ha)
  refine ⟨hxQ, ?_⟩
  have hxinv : x * x⁻¹ = 1 := mul_inv_cancel₀ hx
  push_cast at hD
  have h1 : c * (y * ((n : ℂ) + 3) + x * b) = 0 := by
    linear_combination hD - c * ((n : ℂ) + 2) * y * hxinv
  have h2 : y * ((n : ℂ) + 3) + x * b = 0 := (mul_eq_zero.1 h1).resolve_left hcne
  have h3 : (n : ℂ) + 3 ≠ 0 := by
    have : ((n + 3 : ℕ) : ℂ) ≠ 0 := by exact_mod_cast (by omega : n + 3 ≠ 0)
    push_cast at this
    exact this
  have hy : y = -(x * b) / ((n : ℂ) + 3) := eq_div_of_mul_eq h3 (by linear_combination h2)
  rw [hy]
  have h3Q : (n : ℂ) + 3 ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := by
    have := natCast_mem Formalism.MainNotions.TaylorLogMetric.Qbar (n + 3)
    push_cast at this
    exact this
  exact div_mem (neg_mem (mul_mem hxQ hb)) h3Q

theorem kv (L : PeriodPair) (hg2 : L.g₂ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) (hg3 : L.g₃ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) (u : ℂ)
    (hu : ∃ N : ℕ, 0 < N ∧ (N : ℂ) * u ∈ L.lattice) (hu' : u ∉ L.lattice) :
    opU L u (sgStar L) 0 ∈ Formalism.MainNotions.TaylorLogMetric.Qbar ∧ deriv (opU L u (sgStar L)) 0 ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := by
  have hspec := Nat.find_spec hu
  have hmin : ∀ m : ℕ, 0 < m → m < Nat.find hu → (m : ℂ) * u ∉ L.lattice := fun m h0 hlt hm =>
    Nat.find_min hu hlt ⟨h0, hm⟩
  by_cases h3 : 3 ≤ Nat.find hu
  · exact kv_main L hg2 hg3 u _ h3 hspec.2 hmin
  have hne1 : Nat.find hu ≠ 1 := by
    intro h
    have := hspec.2
    rw [h] at this
    exact hu' (by simpa using this)
  have h2 : Nat.find hu = 2 := by
    have := hspec.1
    omega
  have h2u : (2 : ℂ) * u ∈ L.lattice := by
    have := hspec.2
    rw [h2] at this
    exact_mod_cast this
  set Q' := u / 2 with hQ'def
  have eu : Q' + Q' = u := by rw [hQ'def]; ring
  have hQ'4 : ((4 : ℕ) : ℂ) * Q' ∈ L.lattice := by
    rw [show ((4 : ℕ) : ℂ) * Q' = 2 * u by rw [hQ'def]; push_cast; ring]
    exact h2u
  have hmin' : ∀ m : ℕ, 0 < m → m < 4 → (m : ℂ) * Q' ∉ L.lattice := by
    intro m h0 h4 hm
    interval_cases m
    · apply hu'
      have hm' : Q' ∈ L.lattice := by simpa using hm
      rw [← eu]
      exact add_mem hm' hm'
    · apply hu'
      rw [show u = ((2 : ℕ) : ℂ) * Q' by rw [hQ'def]; push_cast; ring]
      exact hm
    · apply hu'
      have hm' : Q' ∈ L.lattice := by
        rw [show Q' = 2 * u - ((3 : ℕ) : ℂ) * Q' by rw [hQ'def]; push_cast; ring]
        exact sub_mem h2u hm
      rw [← eu]
      exact add_mem hm' hm'
  obtain ⟨hkQ, -⟩ := kv_main L hg2 hg3 Q' 4 (by norm_num) hQ'4 hmin'
  have hQ' : Q' ∉ L.lattice := by simpa using hmin' 1 one_pos (by norm_num)
  obtain ⟨d1, -⟩ := dbl_rel L Q' hQ'
  rw [eu] at d1
  have hp' := (pTorsAlg_of L hg2 hg3 Q' ⟨4, by norm_num, hQ'4⟩ hQ').2
  refine ⟨by rw [d1]; exact mul_mem (neg_mem hp') (pow_mem hkQ 4), ?_⟩
  have h2u' : ((2 : ℕ) : ℂ) * u ∈ L.lattice := by exact_mod_cast h2u
  obtain ⟨c, hc, hcne, hsh⟩ := sg_shift L u (-(2 * u)) 2 two_pos h2u' (neg_mem h2u)
  rw [show u + -(2 * u) = -u by ring] at hsh
  have hk := sg_val_ne L hu'
  have hv : -opU L u (sgStar L) 0 = c * opU L u (sgStar L) 0 := by rw [← sg_neg_val, hsh]
  have hcm : c = -1 := mul_right_cancel₀ hk (by linear_combination -hv)
  have hf : opU L (-u) (sgStar L) = fun z => c * opU L u (sgStar L) z := funext hsh
  have hd1 : deriv (opU L (-u) (sgStar L)) 0 = c * deriv (opU L u (sgStar L)) 0 := by
    rw [hf, deriv_const_mul _ ((sg_analytic L u) 0 (Set.mem_univ _)).differentiableAt]
  rw [sg_neg_deriv, hcm] at hd1
  have h0 : deriv (opU L u (sgStar L)) 0 = 0 := by linear_combination hd1 / 2
  rw [h0]
  exact zero_mem _

theorem kleinAlg_of (L : PeriodPair) (ω₀ : ℂ) (hω : ω₀ ∈ L.lattice) (hh : ω₀ / 2 ∉ L.lattice)
    (hg2 : L.g₂ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) (hg3 : L.g₃ ∈ Formalism.MainNotions.TaylorLogMetric.Qbar) : KleinAlg L ω₀ := by
  rintro s ⟨N, hN, hNs⟩
  have ht2 : ((2 : ℕ) : ℂ) * (ω₀ / 2) ∈ L.lattice := by
    rw [show ((2 : ℕ) : ℂ) * (ω₀ / 2) = ω₀ by push_cast; ring]
    exact hω
  have hkt := (kv L hg2 hg3 (ω₀ / 2) ⟨2, two_pos, ht2⟩ hh).1
  have hkt0 := sg_val_ne L hh
  obtain ⟨k, hk⟩ := altEInt L _ _ hNs hω
  have hph : Complex.exp (-(Real.pi : ℂ) * Complex.I * (altE L s (ω₀ / 2) : ℂ)) ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := by
    refine expAltE_mem L s (ω₀ / 2) (2 * N) (by omega) ⟨k, ?_⟩
    have e1 : ω₀ = ((2 : ℕ) : ℂ) * (ω₀ / 2) := by push_cast; ring
    rw [e1, altE_nat_mul, altE_mul_nat] at hk
    rw [← hk]
    push_cast
    ring
  have htor : ∃ M : ℕ, 0 < M ∧ (M : ℂ) * (s + ω₀ / 2) ∈ L.lattice := by
    refine ⟨2 * N, by omega, ?_⟩
    have e : ((2 * N : ℕ) : ℂ) * (s + ω₀ / 2) = (N : ℂ) * s + (N : ℂ) * s + N • ω₀ := by
      rw [nsmul_eq_mul]
      push_cast
      ring
    rw [e]
    exact add_mem (add_mem hNs hNs) (nsmul_mem hω N)
  have hform : opU L s (th0 L (ω₀ / 2)) = fun z =>
      (Complex.exp (-(Real.pi : ℂ) * Complex.I * (altE L s (ω₀ / 2) : ℂ)) / opU L (ω₀ / 2) (sgStar L) 0) *
        opU L (s + ω₀ / 2) (sgStar L) z := by
    funext z
    rw [opUTh0 L (ω₀ / 2) s z]
    ring
  have hcQ : Complex.exp (-(Real.pi : ℂ) * Complex.I * (altE L s (ω₀ / 2) : ℂ)) / opU L (ω₀ / 2) (sgStar L) 0
      ∈ Formalism.MainNotions.TaylorLogMetric.Qbar := div_mem hph hkt
  have hsd := sgStarBasic L
  rw [hform, deriv_const_mul _ ((sg_analytic L _) 0 (Set.mem_univ _)).differentiableAt]
  by_cases hu : s + ω₀ / 2 ∈ L.lattice
  · have hG : opU L (s + ω₀ / 2) (sgStar L) = fun z => (semiChar L (s + ω₀ / 2))⁻¹ * sgStar L z :=
      funext (sg_lat L hu)
    have hψ := (semiChar_mem L (s + ω₀ / 2)).1
    refine ⟨mul_mem hcQ ?_, mul_mem hcQ ?_⟩
    · rw [hG]
      simp only
      rw [(hsd.2.2.1 0).2 (zero_mem _), mul_zero]
      exact zero_mem _
    · rw [hG, deriv_const_mul _ (hsd.1 0), hsd.2.2.2.1, mul_one]
      exact inv_mem hψ
  · obtain ⟨h0, h1⟩ := kv L hg2 hg3 _ htor hu
    exact ⟨mul_mem hcQ h0, mul_mem hcQ h1⟩

end KleinPf

section KleinAllPf

theorem klein_forms_algebraic : KleinAll := by
  intro D cc δ B hcc hδ
  have sd : B.StdOK := GlobalTheory.FourthRootStd.stdOK B hcc hδ
  obtain ⟨h2, h3⟩ := _root_.Formalism.L2.KerInert.Sigma.ChartWirtingerDerivatives.weierstrass_invariants_algebraic D cc δ hcc hδ B.L B.lat
  exact kleinAlg_of B.L B.ω₀ sd.per sd.half h2 h3

theorem kernel_torsion_translates_algebraic : KerTransAll := kerTransAll_of_kleinAll klein_forms_algebraic

theorem algebraic_fact_kernels : AlgFact := algFact_of_kerTrans kernel_torsion_translates_algebraic

theorem zero_value_algebraic : AlgZero := algZero_of_trans kernel_torsion_translates_algebraic

end KleinAllPf

end AlgP

end Formalism.L2.KerInert
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.AlgKleinPf =====
