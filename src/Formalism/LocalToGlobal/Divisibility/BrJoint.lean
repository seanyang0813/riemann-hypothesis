module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.InstMeasurableSpaceMat
public import Formalism.PeriodIntegrals.SchurFock
public import Mathlib.Tactic.Monotonicity.Lemmas
public import Mathlib.Topology.Sheaves.Presheaf
public import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
public import Formalism.GradedWeylDivisibility.FinalB
public import Formalism.GradedWeylDivisibility.FinalC
public import Mathlib.Analysis.CStarAlgebra.Matrix
public import Mathlib.MeasureTheory.Group.Integral
public import Mathlib.MeasureTheory.Measure.Haar.Basic
public import Mathlib.MeasureTheory.Measure.Haar.Unique
public import Mathlib.Topology.Algebra.MvPolynomial
public import Mathlib.MeasureTheory.Function.LocallyIntegrable
public import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
public import Formalism.LocalRingCardinality.DataCoeff
public import Mathlib.Algebra.MvPolynomial.Monad
public import Mathlib.Algebra.MvPolynomial.Funext
public import Mathlib.Analysis.Matrix.PosDef
public import Mathlib.Algebra.Star.UnitaryStarAlgAut
public import Formalism.PeriodIntegrals.HwIrred
public import Formalism.GradedWeylDivisibility.FinalD
public import Mathlib.LinearAlgebra.Eigenspace.Triangularizable
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HwIrred
public import Formalism.PeriodIntegrals.GTLower
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GTBranch
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.GTLowerOf
public import Formalism.SharpRestriction.Divisibility.PrimeDegreeVariant
public import Formalism.LocalRingCardinality.FactDelDualNabla
import Formalism.LocalRingCardinality.Params
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LHwinLemmas
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IntegralConjInnerMulInnerOfIsEmptyEquiv
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LFocksLemmas
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.Assembly, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionA, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionB, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CiEvalMSmul, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CfEqSumOfSubset, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CrRowActRowAct, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CzDiagUnitary, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionC, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.SchurFockOf, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SchurFock, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GTLower, Formalism.LocalToGlobal.Divisibility.BrJoint

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.Assembly =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.Assembly", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.InstMeasurableSpaceMat\npublic import Formalism.PeriodIntegrals.SchurFock\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WSF

open Formalism.BasicNotions MvPolynomial MeasureTheory

theorem schurFock_of_steps (hB : HaarU) (hC : SchurOrth) : PI.SchurFock := by
  intro N lam s hs hbd
  obtain ⟨μ, hμ⟩ := hB N
  have hprob := hμ.1
  have hae := hμ.2.1
  rw [hC N lam μ hμ s hs]
  have hint : ∫ x, ‖evalM x s‖ ^ 2 ∂μ ≤ 1 := by
    calc ∫ x, ‖evalM x s‖ ^ 2 ∂μ ≤ ∫ _x, (1 : ℝ) ∂μ := by
          apply integral_mono_of_nonneg (ae_of_all _ fun x => by positivity) (integrable_const 1)
          filter_upwards [hae] with x hx
          exact pow_le_one₀ (norm_nonneg _) (hbd x hx)
      _ = 1 := by simp
  exact mul_le_of_le_one_right (Nat.cast_nonneg _) hint

end PI.WSF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.Assembly =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionA =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionA", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.InstMeasurableSpaceMat\npublic import Mathlib.Tactic.Monotonicity.Lemmas\npublic import Mathlib.Topology.Sheaves.Presheaf\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.GradedWeylDivisibility.FinalB\npublic import Formalism.GradedWeylDivisibility.FinalC\nimport Formalism.GradedWeylDivisibility.FockSpaceTableaux.LHwinLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WSF

open Formalism.BasicNotions MvPolynomial MeasureTheory

theorem evA_weight_rowW {N : ℕ} (d : Fin N × Fin N →₀ ℕ) (a : Fin N) :
    Finsupp.weight (Formalism.GradedWeylDivisibility.rowW N N) d a = Formalism.GradedWeylDivisibility.rowDeg d a := by
  rw [Finsupp.weight_apply, Finsupp.sum_fintype d (fun i c => c • Formalism.GradedWeylDivisibility.rowW N N i) (fun i => zero_smul _ _),
    Finset.sum_apply,
    Fintype.sum_prod_type, Finset.sum_eq_single a]
  · simp [Formalism.GradedWeylDivisibility.rowW, Formalism.GradedWeylDivisibility.rowDeg]
  · intro b _ hb
    simp [Formalism.GradedWeylDivisibility.rowW, Ne.symm hb]
  · simp

theorem evA_dom {N : ℕ} (ν : Fin N → ℕ) (f : MvPolynomial (Fin N × Fin N) ℂ)
    (hf : f ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N ν) : ∀ m ∈ f.support,
      (∀ k : ℕ, (∑ a : Fin N with a.val < k, Formalism.GradedWeylDivisibility.rowDeg m a) ≤ ∑ t : Fin N with t.val < k, ν t) ∧
      ∑ a : Fin N, Formalism.GradedWeylDivisibility.rowDeg m a = ∑ t : Fin N, ν t := by
  classical
  rw [Formalism.GradedWeylDivisibility.standardMonomialSpanDomain ℂ N N ν] at hf
  induction hf using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨K, sz, hsz, I, hshape, rfl⟩ := hx
    intro m hm
    have h := Formalism.GradedWeylDivisibility.bidetDominance ℂ N N K sz hsz I m hm
    rw [hshape] at h
    exact h
  | zero =>
    intro m hm
    simp at hm
  | add x y _ _ hx hy =>
    intro m hm
    rcases Finset.mem_union.mp (support_add hm) with h | h
    · exact hx m h
    · exact hy m h
  | smul c x _ hx =>
    intro m hm
    exact hx m (support_smul hm)

theorem evA_ht_eq {N : ℕ} (μ : Fin N → ℕ) :
    ∑ a : Fin N, (a.val : ℤ) * (μ a : ℤ) =
      ∑ k : Fin N, ((∑ a : Fin N, (μ a : ℤ)) - ∑ a : Fin N with a.val < k.val + 1, (μ a : ℤ)) := by
  have h1 : ∀ k : Fin N, (∑ a : Fin N, (μ a : ℤ)) - ∑ a : Fin N with a.val < k.val + 1, (μ a : ℤ) =
      ∑ a : Fin N, if k.val < a.val then (μ a : ℤ) else 0 := by
    intro k
    rw [sub_eq_iff_eq_add, Finset.sum_filter, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun a _ => ?_
    split_ifs <;> omega
  simp only [h1]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [← Finset.sum_filter, Finset.sum_const, nsmul_eq_mul]
  have hI : (Finset.univ.filter fun k : Fin N => k.val < a.val) = Finset.Iio a := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_Iio, Fin.lt_iff_val_lt_val]
  rw [hI, Fin.card_Iio]

theorem evA_ht {N : ℕ} (μ ν : Fin N → ℕ)
    (h1 : ∀ k : ℕ, (∑ a : Fin N with a.val < k, μ a) ≤ ∑ a : Fin N with a.val < k, ν a)
    (h2 : ∑ a : Fin N, μ a = ∑ a : Fin N, ν a) :
    ∑ a : Fin N, (a.val : ℤ) * (ν a : ℤ) ≤ ∑ a : Fin N, (a.val : ℤ) * (μ a : ℤ) := by
  rw [evA_ht_eq ν, evA_ht_eq μ]
  apply Finset.sum_le_sum
  intro k _
  have hs : (∑ a : Fin N, (μ a : ℤ)) = ∑ a : Fin N, (ν a : ℤ) := by exact_mod_cast h2
  have hk : (∑ a : Fin N with a.val < k.val + 1, (μ a : ℤ)) ≤
      ∑ a : Fin N with a.val < k.val + 1, (ν a : ℤ) := by exact_mod_cast h1 (k.val + 1)
  linarith

theorem evA_fock_right {σ : Type*} (f g : MvPolynomial σ ℂ) :
    Formalism.REAL.fockF f g = ∑ m ∈ g.support,
      f.coeff m * star (g.coeff m) * ((∏ k ∈ m.support, (m k).factorial : ℕ) : ℂ) := by
  classical
  unfold Formalism.REAL.fockF
  rw [Finset.sum_subset (Finset.subset_union_left : f.support ⊆ f.support ∪ g.support),
    Finset.sum_subset (Finset.subset_union_right : g.support ⊆ f.support ∪ g.support)]
  · intro m _ hm
    simp only [MvPolynomial.mem_support_iff, not_not] at hm
    simp [hm]
  · intro m _ hm
    simp only [MvPolynomial.mem_support_iff, not_not] at hm
    simp [hm]

theorem evA_diag {N : ℕ} (d : Fin N × Fin N →₀ ℕ)
    (h : (∏ v ∈ d.support, ((1 : Matrix (Fin N) (Fin N) ℂ) v.1 v.2) ^ d v) ≠ 0) :
    Finsupp.weight (Formalism.GradedWeylDivisibility.rowW N N) d = Finsupp.weight (Formalism.GradedWeylDivisibility.colW N N) d := by
  have hdiag : ∀ v ∈ d.support, v.1 = v.2 := by
    intro v hv
    by_contra hne
    apply h
    apply Finset.prod_eq_zero hv
    rw [Matrix.one_apply_ne hne]
    exact zero_pow (Finsupp.mem_support_iff.mp hv)
  rw [Finsupp.weight_apply, Finsupp.weight_apply]
  unfold Finsupp.sum
  refine Finset.sum_congr rfl fun v hv => ?_
  simp [Formalism.GradedWeylDivisibility.rowW, Formalism.GradedWeylDivisibility.colW, hdiag v hv]

theorem evA_hw_one {N : ℕ} (ν : Fin N → ℕ) : evalM 1 (Formalism.GradedWeylDivisibility.hw ℂ (le_refl N) ν) = 1 := by
  have key : ∀ (k : ℕ) (h1 : k ≤ N) (h2 : k ≤ N),
      MvPolynomial.eval (fun v : Fin N × Fin N => (1 : Matrix (Fin N) (Fin N) ℂ) v.1 v.2)
        (Formalism.GradedWeylDivisibility.lpMinor ℂ k h1 h2) = 1 := by
    intro k h1 h2
    unfold Formalism.GradedWeylDivisibility.lpMinor
    rw [RingHom.map_det]
    have hM : (MvPolynomial.eval fun v : Fin N × Fin N => (1 : Matrix (Fin N) (Fin N) ℂ) v.1 v.2).mapMatrix
        (Matrix.of fun p q : Fin k =>
          (X (Fin.castLE h1 p, Fin.castLE h2 q) : MvPolynomial (Fin N × Fin N) ℂ)) = 1 := by
      ext p q
      simp [Matrix.one_apply]
    rw [hM, Matrix.det_one]
  unfold evalM Formalism.GradedWeylDivisibility.hw
  rw [map_prod]
  exact Finset.prod_eq_one fun s _ => by rw [map_pow, key, one_pow]

theorem evaluation_at_one : EvalOne := by
  intro N lam s hs
  classical
  set ν := lam.natW with hνdef
  have hν : Antitone ν := fun i j hij => by
    simp only [hνdef, Formalism.BasicNotions.DomWeight.natW]
    exact Int.toNat_le_toNat (sub_le_sub_right (lam.anti hij) _)
  have hs' : s ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N ν := hs
  have hscol : IsWeightedHomogeneous (Formalism.GradedWeylDivisibility.colW N N) s ν :=
    (mem_weightedHomogeneousSubmodule _ _ _ _).mp (Submodule.mem_inf.mp hs').1
  set P := weightedHomogeneousComponent (Formalism.GradedWeylDivisibility.rowW N N) ν s with hP
  have hPmem : P ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N ν := Formalism.GradedWeylDivisibility.dualWeylRowGraded ℂ N N ν ν s hs'
  have hPht : IsWeightedHomogeneous (Formalism.GradedWeylDivisibility.lhwinHt N N) P
      (∑ a : Fin N, (a.val : ℤ) * (ν a : ℤ)) := by
    intro d hd
    rw [hP, coeff_weightedHomogeneousComponent] at hd
    split_ifs at hd with hw
    · rw [Formalism.GradedWeylDivisibility.lhwin_weight_ht, hw]
    · exact absurd rfl hd
  have hkill : ∀ a b : Fin N, a < b → ∀ k : ℕ, 1 ≤ k → Formalism.GradedWeylDivisibility.rowDiv ℂ a b k P = 0 := by
    intro a b hab k hk
    by_contra hne
    have hQ := Formalism.GradedWeylDivisibility.lhwin_rowDiv_shift ℂ _ a b k P hPht
    have hQmem := Formalism.GradedWeylDivisibility.rowDivStable ℂ N N ν a b k P hPmem
    obtain ⟨d, hd⟩ := ne_zero_iff.mp hne
    obtain ⟨h1, h2⟩ := evA_dom ν _ hQmem d (mem_support_iff.mpr hd)
    have hge := evA_ht (Formalism.GradedWeylDivisibility.rowDeg d) ν h1 h2
    have hwt := hQ hd
    rw [Formalism.GradedWeylDivisibility.lhwin_weight_ht] at hwt
    simp only [evA_weight_rowW] at hwt
    have hab' : (a.val : ℤ) < b.val := by exact_mod_cast (Fin.lt_def.mp hab)
    have hk' : (1 : ℤ) ≤ k := by exact_mod_cast hk
    nlinarith
  obtain ⟨c, hc⟩ := Formalism.GradedWeylDivisibility.hwLine ℂ N N le_rfl ν hν P hPmem hkill
  have he : extremal ℂ N lam = Formalism.GradedWeylDivisibility.hw ℂ (le_refl N) ν := rfl
  have heRow : IsWeightedHomogeneous (Formalism.GradedWeylDivisibility.rowW N N) (Formalism.GradedWeylDivisibility.hw ℂ (le_refl N) ν) ν := by
    have h := Formalism.GradedWeylDivisibility.hwRowWeight ℂ N N le_rfl ν hν
    have hr : (Formalism.GradedWeylDivisibility.rowNu (r := N) ν) = ν := by
      funext a; simp [Formalism.GradedWeylDivisibility.rowNu, a.isLt]
    rwa [hr] at h
  have hsub : P.support ⊆ s.support := fun d hd => by
    rw [mem_support_iff] at hd ⊢
    rw [hP, coeff_weightedHomogeneousComponent] at hd
    split_ifs at hd with h
    · exact hd
    · exact absurd rfl hd
  have hev : evalM 1 s = evalM 1 P := by
    unfold evalM
    rw [eval_eq, eval_eq]
    symm
    rw [Finset.sum_subset hsub (fun d _ hd => by rw [mem_support_iff, not_not] at hd; simp [hd])]
    refine Finset.sum_congr rfl fun d hd => ?_
    by_cases hw : Finsupp.weight (Formalism.GradedWeylDivisibility.rowW N N) d = ν
    · rw [hP, coeff_weightedHomogeneousComponent, if_pos hw]
    · have hcol : Finsupp.weight (Formalism.GradedWeylDivisibility.colW N N) d = ν := hscol (mem_support_iff.mp hd)
      have hz : (∏ v ∈ d.support, ((1 : Matrix (Fin N) (Fin N) ℂ) v.1 v.2) ^ d v) = 0 := by
        by_contra hne
        exact hw ((evA_diag d hne).trans hcol)
      rw [hz, mul_zero, mul_zero]
  have hfse : Formalism.REAL.fockF s (Formalism.GradedWeylDivisibility.hw ℂ (le_refl N) ν) =
      Formalism.REAL.fockF P (Formalism.GradedWeylDivisibility.hw ℂ (le_refl N) ν) := by
    rw [evA_fock_right s, evA_fock_right P]
    refine Finset.sum_congr rfl fun m hm => ?_
    have hw : Finsupp.weight (Formalism.GradedWeylDivisibility.rowW N N) m = ν := heRow (mem_support_iff.mp hm)
    rw [hP, coeff_weightedHomogeneousComponent, if_pos hw]
  have hfce : ∀ e : MvPolynomial (Fin N × Fin N) ℂ,
      Formalism.REAL.fockF (c • e) e = c * Formalism.REAL.fockF e e := by
    intro e
    rw [evA_fock_right, evA_fock_right, Finset.mul_sum]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [MvPolynomial.coeff_smul, smul_eq_mul]; ring
  have hFne : Formalism.REAL.fockF (Formalism.GradedWeylDivisibility.hw ℂ (le_refl N) ν) (Formalism.GradedWeylDivisibility.hw ℂ (le_refl N) ν) ≠ 0 := by
    have h := (Formalism.GradedWeylDivisibility.fockPos (Fin N × Fin N) _ (Formalism.GradedWeylDivisibility.hwNe ℂ N N le_rfl ν)).1
    intro h0; rw [h0] at h; simp at h
  unfold normFock
  rw [he, hev, hfse, hc, hfce, mul_div_assoc, div_self hFne, mul_one]
  unfold evalM
  rw [smul_eq_C_mul, eval_mul, eval_C]
  have h1 := evA_hw_one ν
  unfold evalM at h1
  rw [h1, mul_one]

end PI.WSF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionA =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionB =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionB", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IntegralConjInnerMulInnerOfIsEmptyEquiv\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.InstMeasurableSpaceMat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.CStarAlgebra.Matrix\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Algebra.Star.Unitary\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalRingCardinality.Params\npublic import Mathlib.MeasureTheory.Group.Integral\npublic import Mathlib.MeasureTheory.Measure.Haar.Basic\npublic import Mathlib.MeasureTheory.Measure.Haar.Unique\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WSF

open Formalism.BasicNotions MvPolynomial MeasureTheory Measure TopologicalSpace Matrix

theorem isCompact_unitaryGroup (N : ℕ) :
    IsCompact ((Matrix.unitaryGroup (Fin N) ℂ : Set (Matrix (Fin N) (Fin N) ℂ))) := by
  have hK : IsCompact (Set.univ.pi fun _ : Fin N => Set.univ.pi fun _ : Fin N => Metric.closedBall (0 : ℂ) 1) :=
    isCompact_univ_pi fun _ => isCompact_univ_pi fun _ => isCompact_closedBall 0 1
  refine hK.of_isClosed_subset ?_ ?_
  · have e : (Matrix.unitaryGroup (Fin N) ℂ : Set (Matrix (Fin N) (Fin N) ℂ)) =
        {A : Matrix (Fin N) (Fin N) ℂ | A * star A = 1} := by
      ext A
      exact Matrix.mem_unitaryGroup_iff
    rw [e]
    exact isClosed_eq (continuous_id.matrix_mul continuous_star) continuous_const
  · intro A hA
    simp only [Set.mem_pi, Set.mem_univ, true_implies, Metric.mem_closedBall, dist_zero_right]
    intro i j
    exact entry_norm_bound_of_unitary hA i j

instance compactSpace_unitaryGroup (N : ℕ) : CompactSpace (Matrix.unitaryGroup (Fin N) ℂ) :=
  isCompact_iff_compactSpace.mp (isCompact_unitaryGroup N)

theorem isMulRightInvariant_of_compact {G : Type*} [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [CompactSpace G] [MeasurableSpace G] [BorelSpace G]
    (μ : Measure G) [IsHaarMeasure μ] : IsMulRightInvariant μ := by
  apply GlobalTheory.isMulRightInvariant_of_compactSpace

theorem unitary_haar_measure : HaarU := by
  intro N
  haveI : CompactSpace (Matrix.unitaryGroup (Fin N) ℂ) := compactSpace_unitaryGroup N
  let μG : Measure (Matrix.unitaryGroup (Fin N) ℂ) := Measure.haarMeasure ⊤
  haveI : μG.IsMulRightInvariant := isMulRightInvariant_of_compact μG
  have hm : Measurable (Subtype.val : Matrix.unitaryGroup (Fin N) ℂ → Matrix (Fin N) (Fin N) ℂ) :=
    measurable_subtype_coe
  refine ⟨Measure.map Subtype.val μG, ?_, ?_, ?_, ?_⟩
  · constructor
    rw [Measure.map_apply hm MeasurableSet.univ, Set.preimage_univ]
    have h1 := Measure.haarMeasure_self (K₀ := (⊤ : TopologicalSpace.PositiveCompacts (Matrix.unitaryGroup (Fin N) ℂ)))
    simpa using h1
  · have hmeas : MeasurableSet {x : Matrix (Fin N) (Fin N) ℂ | x ∈ Matrix.unitaryGroup (Fin N) ℂ} :=
      (isCompact_unitaryGroup N).isClosed.measurableSet
    rw [ae_map_iff hm.aemeasurable hmeas]
    exact Filter.Eventually.of_forall fun y => y.2
  · intro u hu f hf
    have hs : AEStronglyMeasurable (fun x => f (x * u)) (Measure.map Subtype.val μG) :=
      (hf.comp (continuous_mul_const u)).aestronglyMeasurable
    rw [integral_map hm.aemeasurable hs, integral_map hm.aemeasurable hf.aestronglyMeasurable]
    have h1 := integral_mul_right_eq_self (μ := μG)
      (fun y : Matrix.unitaryGroup (Fin N) ℂ => f (y : Matrix (Fin N) (Fin N) ℂ)) ⟨u, hu⟩
    simpa using h1
  · intro u hu f hf
    have hs : AEStronglyMeasurable (fun x => f (u * x)) (Measure.map Subtype.val μG) :=
      (hf.comp (continuous_const_mul u)).aestronglyMeasurable
    rw [integral_map hm.aemeasurable hs, integral_map hm.aemeasurable hf.aestronglyMeasurable]
    have h1 := integral_mul_left_eq_self (μ := μG)
      (fun y : Matrix.unitaryGroup (Fin N) ℂ => f (y : Matrix (Fin N) (Fin N) ℂ)) ⟨u, hu⟩
    simpa using h1

end PI.WSF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionB =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CiEvalMSmul =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CiEvalMSmul", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.InstMeasurableSpaceMat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Function.LocallyIntegrable\npublic import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CrRowActRowAct\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WSF

open MvPolynomial MeasureTheory Matrix

private theorem entry_le_lemma {N : ℕ} {x : Matrix (Fin N) (Fin N) ℂ} (hx : x ∈ unitaryGroup (Fin N) ℂ)
    (i j : Fin N) : ‖x i j‖ ≤ 1 := by
  have h := congrFun (congrFun (Matrix.mem_unitaryGroup_iff.mp hx) i) i
  simp only [Matrix.mul_apply, Matrix.star_apply, Matrix.one_apply_eq] at h
  have h3 : (∑ k, Complex.normSq (x i k) : ℝ) = 1 := by
    have h4 : ((∑ k, Complex.normSq (x i k) : ℝ) : ℂ) = 1 := by
      rw [Complex.ofReal_sum, ← h]
      exact Finset.sum_congr rfl fun k _ => (Complex.mul_conj (x i k)).symm
    exact_mod_cast h4
  have h5 : Complex.normSq (x i j) ≤ 1 := by
    rw [← h3]
    exact Finset.single_le_sum (fun k _ => Complex.normSq_nonneg (x i k)) (Finset.mem_univ j)
  rw [Complex.normSq_eq_norm_sq] at h5
  nlinarith [norm_nonneg (x i j)]

theorem ci_compact (N : ℕ) : IsCompact (unitaryGroup (Fin N) ℂ : Set (Matrix (Fin N) (Fin N) ℂ)) := by
  have hset : (unitaryGroup (Fin N) ℂ : Set (Matrix (Fin N) (Fin N) ℂ)) = {x | x * star x = 1} := by
    ext x
    exact Matrix.mem_unitaryGroup_iff
  have hclosed : IsClosed (unitaryGroup (Fin N) ℂ : Set (Matrix (Fin N) (Fin N) ℂ)) := by
    rw [hset]
    exact isClosed_eq (continuous_id.matrix_mul continuous_star) continuous_const
  have hbound : (unitaryGroup (Fin N) ℂ : Set (Matrix (Fin N) (Fin N) ℂ)) ⊆
      Set.pi Set.univ fun _ => Set.pi Set.univ fun _ => Metric.closedBall (0 : ℂ) 1 := by
    intro x hx
    exact Set.mem_univ_pi.mpr fun i => Set.mem_univ_pi.mpr fun j =>
      mem_closedBall_zero_iff.mpr (entry_le_lemma hx i j)
  exact (isCompact_univ_pi fun _ => isCompact_univ_pi fun _ => isCompact_closedBall 0 1).of_isClosed_subset
    hclosed hbound

theorem ci_cont {N : ℕ} (p : MvPolynomial (Fin N × Fin N) ℂ) :
    Continuous fun x : Matrix (Fin N) (Fin N) ℂ => evalM x p := by
  unfold evalM
  exact (MvPolynomial.continuous_eval p).comp
    (continuous_pi fun v => (continuous_apply v.2).comp (continuous_apply v.1))

theorem ci_cont2 {N : ℕ} (p q : MvPolynomial (Fin N × Fin N) ℂ) :
    Continuous fun x : Matrix (Fin N) (Fin N) ℂ => evalM x p * star (evalM x q) :=
  (ci_cont p).mul (ci_cont q).star

theorem ci_integrable {N : ℕ} {μ : Measure (Matrix (Fin N) (Fin N) ℂ)} (hμ : IsHaarU N μ)
    {f : Matrix (Fin N) (Fin N) ℂ → ℂ} (hf : Continuous f) : Integrable f μ := by
  obtain ⟨hprob, hae, -, -⟩ := hμ
  have h := hf.continuousOn.integrableOn_compact (μ := μ) (ci_compact N)
  rw [IntegrableOn, Measure.restrict_eq_self_of_ae_mem hae] at h
  exact h

theorem ci_evalM_add {N : ℕ} (x : Matrix (Fin N) (Fin N) ℂ) (p q : MvPolynomial (Fin N × Fin N) ℂ) :
    evalM x (p + q) = evalM x p + evalM x q := by
  simp [evalM]

theorem ci_evalM_smul {N : ℕ} (x : Matrix (Fin N) (Fin N) ℂ) (c : ℂ) (p : MvPolynomial (Fin N × Fin N) ℂ) :
    evalM x (c • p) = c * evalM x p := by
  simp [evalM]

def Aform {N : ℕ} (μ : Measure (Matrix (Fin N) (Fin N) ℂ)) (p q : MvPolynomial (Fin N × Fin N) ℂ) : ℂ :=
  ∫ x, evalM x p * star (evalM x q) ∂μ

def Alin {N : ℕ} {μ : Measure (Matrix (Fin N) (Fin N) ℂ)} (hμ : IsHaarU N μ)
    (q : MvPolynomial (Fin N × Fin N) ℂ) : MvPolynomial (Fin N × Fin N) ℂ →ₗ[ℂ] ℂ where
  toFun p := Aform μ p q
  map_add' p p' := by
    unfold Aform
    rw [← integral_add (ci_integrable hμ (ci_cont2 p q)) (ci_integrable hμ (ci_cont2 p' q))]
    congr 1
    funext x
    rw [ci_evalM_add]
    ring
  map_smul' c p := by
    unfold Aform
    rw [RingHom.id_apply, smul_eq_mul, ← integral_const_mul]
    congr 1
    funext x
    rw [ci_evalM_smul]
    ring

theorem ci_Alin_apply {N : ℕ} {μ : Measure (Matrix (Fin N) (Fin N) ℂ)} (hμ : IsHaarU N μ)
    (p q : MvPolynomial (Fin N × Fin N) ℂ) : Alin hμ q p = Aform μ p q := rfl

theorem ci_herm {N : ℕ} (μ : Measure (Matrix (Fin N) (Fin N) ℂ)) (p q : MvPolynomial (Fin N × Fin N) ℂ) :
    Aform μ q p = star (Aform μ p q) := by
  unfold Aform
  have h := integral_conj (μ := μ) (f := fun x => evalM x p * star (evalM x q))
  rw [show star (∫ x, evalM x p * star (evalM x q) ∂μ) =
    (starRingEnd ℂ) (∫ x, evalM x p * star (evalM x q) ∂μ) from rfl, ← h]
  congr 1
  funext x
  simp [mul_comm]

section
open Formalism.BasicNotions

theorem cr_rowAct_X {N : ℕ} (g : Matrix (Fin N) (Fin N) ℂ) (w : Fin N × Fin N) :
    Formalism.GradedWeylDivisibility.rowAct ℂ g (X w : MvPolynomial (Fin N × Fin N) ℂ) = ∑ b : Fin N, C (g w.1 b) * X (b, w.2) := by
  simp [Formalism.GradedWeylDivisibility.rowAct]

theorem cr_rowAct_C {N : ℕ} (g : Matrix (Fin N) (Fin N) ℂ) (a : ℂ) :
    Formalism.GradedWeylDivisibility.rowAct ℂ g (C a : MvPolynomial (Fin N × Fin N) ℂ) = C a :=
  (Formalism.GradedWeylDivisibility.rowAct ℂ g).commutes a

theorem cr_evalM_rowAct {N : ℕ} (g x : Matrix (Fin N) (Fin N) ℂ) (s : MvPolynomial (Fin N × Fin N) ℂ) :
    evalM x (Formalism.GradedWeylDivisibility.rowAct ℂ g s) = evalM (g * x) s := by
  induction s using MvPolynomial.induction_on
  next a =>
    rw [cr_rowAct_C]
    simp [evalM]
  next p q hp hq =>
    simp only [map_add (f := _), evalM] at hp hq ⊢
    rw [hp, hq]
  next p v hp =>
    simp only [evalM, map_mul] at hp ⊢
    rw [hp, cr_rowAct_X]
    congr 1
    simp [Matrix.mul_apply]

end

theorem ci_invariant {N : ℕ} {μ : Measure (Matrix (Fin N) (Fin N) ℂ)} (hμ : IsHaarU N μ)
    (u : Matrix (Fin N) (Fin N) ℂ) (hu : u ∈ unitaryGroup (Fin N) ℂ) (p q : MvPolynomial (Fin N × Fin N) ℂ) :
    Aform μ (Formalism.GradedWeylDivisibility.rowAct ℂ u p) (Formalism.GradedWeylDivisibility.rowAct ℂ u q) = Aform μ p q := by
  obtain ⟨-, -, -, hL⟩ := hμ
  unfold Aform
  simp only [_root_.PI.WSF.cr_evalM_rowAct]
  exact hL u hu (fun x => evalM x p * star (evalM x q)) (ci_cont2 p q)

end PI.WSF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CiEvalMSmul =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CfEqSumOfSubset =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CfEqSumOfSubset", "h": "module\n\npublic import Formalism.LocalRingCardinality.DataCoeff\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Formalism.GradedWeylDivisibility.FockSpaceTableaux.LFocksLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WSF

open Formalism.BasicNotions MvPolynomial

theorem cf_eq_sum_of_subset {σ : Type} (f g : MvPolynomial σ ℂ) (S : Finset (σ →₀ ℕ))
    (hS : f.support ⊆ S) :
    Formalism.REAL.fockF f g =
      ∑ m ∈ S, f.coeff m * star (g.coeff m) * ((∏ k ∈ m.support, (m k).factorial : ℕ) : ℂ) := by
  unfold Formalism.REAL.fockF
  refine Finset.sum_subset hS fun m _ hm => ?_
  rw [MvPolynomial.notMem_support_iff.mp hm, zero_mul, zero_mul]

theorem cf_add_left {σ : Type} [DecidableEq σ] (f f' g : MvPolynomial σ ℂ) :
    Formalism.REAL.fockF (f + f') g = Formalism.REAL.fockF f g + Formalism.REAL.fockF f' g := by
  classical
  rw [cf_eq_sum_of_subset (f + f') g (f.support ∪ f'.support) MvPolynomial.support_add,
    cf_eq_sum_of_subset f g (f.support ∪ f'.support) Finset.subset_union_left,
    cf_eq_sum_of_subset f' g (f.support ∪ f'.support) Finset.subset_union_right, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [MvPolynomial.coeff_add]
  ring

theorem cf_smul_left {σ : Type} (c : ℂ) (f g : MvPolynomial σ ℂ) :
    Formalism.REAL.fockF (c • f) g = c * Formalism.REAL.fockF f g := by
  rw [MvPolynomial.smul_eq_C_mul, Formalism.GradedWeylDivisibility.LFocks_C_mul_left]

theorem cf_F {N : ℕ} (lam : DomWeight N) :
    (Formalism.REAL.fockF (extremal ℂ N lam) (extremal ℂ N lam)).im = 0 ∧
      0 < (Formalism.REAL.fockF (extremal ℂ N lam) (extremal ℂ N lam)).re := by
  have hne : extremal ℂ N lam ≠ 0 := Formalism.GradedWeylDivisibility.hwNe ℂ N N le_rfl lam.natW
  obtain ⟨h1, h2⟩ := Formalism.GradedWeylDivisibility.fockPos _ _ hne
  exact ⟨h2, h1⟩

theorem cf_F_ne {N : ℕ} (lam : DomWeight N) :
    Formalism.REAL.fockF (extremal ℂ N lam) (extremal ℂ N lam) ≠ 0 := by
  intro h0
  have h1 := (cf_F lam).2
  rw [h0, Complex.zero_re] at h1
  exact lt_irrefl _ h1

def Blin {N : ℕ} (lam : DomWeight N) (q : MvPolynomial (Fin N × Fin N) ℂ) :
    MvPolynomial (Fin N × Fin N) ℂ →ₗ[ℂ] ℂ where
  toFun p := normFock lam p q
  map_add' p p' := by
    simp only [normFock]
    rw [cf_add_left, add_div]
  map_smul' c p := by
    simp only [normFock, RingHom.id_apply, smul_eq_mul]
    rw [cf_smul_left, mul_div_assoc]

theorem cf_Blin_apply {N : ℕ} (lam : DomWeight N) (p q : MvPolynomial (Fin N × Fin N) ℂ) :
    Blin lam q p = normFock lam p q := rfl

theorem cf_herm {N : ℕ} (lam : DomWeight N) (p q : MvPolynomial (Fin N × Fin N) ℂ) :
    normFock lam q p = star (normFock lam p q) := by
  unfold normFock
  rw [Formalism.GradedWeylDivisibility.fockHerm, star_div₀]
  congr 1
  have h := (cf_F lam).1
  apply Complex.ext
  · simp
  · simp [h]

theorem normFock_self_ne_zero {N : ℕ} (lam : DomWeight N) (p : MvPolynomial (Fin N × Fin N) ℂ) (hp : p ≠ 0) :
    normFock lam p p ≠ 0 := by
  unfold normFock
  refine div_ne_zero ?_ (cf_F_ne lam)
  intro h0
  have h1 := (Formalism.GradedWeylDivisibility.fockPos _ p hp).1
  rw [h0, Complex.zero_re] at h1
  exact lt_irrefl _ h1

theorem cf_adj {N : ℕ} (lam : DomWeight N) (g : Matrix (Fin N) (Fin N) ℂ)
    (p q : MvPolynomial (Fin N × Fin N) ℂ) :
    normFock lam (Formalism.GradedWeylDivisibility.rowAct ℂ g p) q = normFock lam p (Formalism.GradedWeylDivisibility.rowAct ℂ g.conjTranspose q) := by
  unfold normFock
  rw [Formalism.GradedWeylDivisibility.fockRowAdj]

theorem cf_ee {N : ℕ} (lam : DomWeight N) : normFock lam (extremal ℂ N lam) (extremal ℂ N lam) = 1 := by
  unfold normFock
  exact div_self (cf_F_ne lam)

end PI.WSF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CfEqSumOfSubset =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CrRowActRowAct =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CrRowActRowAct", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.InstMeasurableSpaceMat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WSF

open Formalism.BasicNotions MvPolynomial

theorem cr_rowAct_one {N : ℕ} (s : MvPolynomial (Fin N × Fin N) ℂ) :
    Formalism.GradedWeylDivisibility.rowAct ℂ (1 : Matrix (Fin N) (Fin N) ℂ) s = s := by
  have h : (Formalism.GradedWeylDivisibility.rowAct ℂ (1 : Matrix (Fin N) (Fin N) ℂ) :
      MvPolynomial (Fin N × Fin N) ℂ →ₐ[ℂ] MvPolynomial (Fin N × Fin N) ℂ) = AlgHom.id ℂ _ := by
    apply MvPolynomial.algHom_ext
    intro w
    rw [cr_rowAct_X]
    simp [Matrix.one_apply]
  rw [h]
  rfl

theorem cr_rowAct_rowAct {N : ℕ} (g h : Matrix (Fin N) (Fin N) ℂ) (s : MvPolynomial (Fin N × Fin N) ℂ) :
    Formalism.GradedWeylDivisibility.rowAct ℂ g (Formalism.GradedWeylDivisibility.rowAct ℂ h s) = Formalism.GradedWeylDivisibility.rowAct ℂ (h * g) s := by
  have hc : (Formalism.GradedWeylDivisibility.rowAct ℂ g).comp (Formalism.GradedWeylDivisibility.rowAct ℂ h) =
      (Formalism.GradedWeylDivisibility.rowAct ℂ (h * g) : MvPolynomial (Fin N × Fin N) ℂ →ₐ[ℂ] MvPolynomial (Fin N × Fin N) ℂ) := by
    apply MvPolynomial.algHom_ext
    intro w

    rw [AlgHom.comp_apply, cr_rowAct_X, map_sum, cr_rowAct_X]

    simp only [map_mul, cr_rowAct_C, cr_rowAct_X, Matrix.mul_apply, map_sum, Finset.mul_sum, Finset.sum_mul,
    mul_assoc]
    exact Finset.sum_comm
  rw [← hc, AlgHom.comp_apply]

theorem cr_polyFun {N : ℕ} (s : MvPolynomial (Fin N × Fin N) ℂ) :
    ∀ L : MvPolynomial (Fin N × Fin N) ℂ →ₗ[ℂ] ℂ, ∃ P : MvPolynomial (Fin N × Fin N) ℂ,
      ∀ g : Matrix (Fin N) (Fin N) ℂ, L (Formalism.GradedWeylDivisibility.rowAct ℂ g s) = evalM g P := by
  intro L
  let Φ : MvPolynomial (Fin N × Fin N) ℂ →ₐ[ℂ]
      MvPolynomial (Fin N × Fin N) (MvPolynomial (Fin N × Fin N) ℂ) :=
    aeval fun v => ∑ b : Fin N, C (X (v.1, b) : MvPolynomial (Fin N × Fin N) ℂ) * X (b, v.2)
  have hmap : ∀ g : Matrix (Fin N) (Fin N) ℂ,
      MvPolynomial.map (MvPolynomial.eval fun v : Fin N × Fin N => g v.1 v.2) (Φ s) = Formalism.GradedWeylDivisibility.rowAct ℂ g s := by
    intro g
    induction s using MvPolynomial.induction_on
    next a =>
      rw [cr_rowAct_C]
      simp [Φ]
    next p q hp hq =>
      simp only [map_add (f := _), hp, hq]
    next p w hp =>
      simp only [map_mul, hp, cr_rowAct_X]

      simp only [Φ, MvPolynomial.aeval_X, map_sum, map_mul, MvPolynomial.map_C, MvPolynomial.map_X,
      MvPolynomial.eval_X]
  have hmono : ∀ (m : Fin N × Fin N →₀ ℕ) (a : ℂ), L (monomial m a) = a * L (monomial m 1) := by
    intro m a
    calc L (monomial m a) = L (a • monomial m (1 : ℂ)) := by rw [smul_monomial, smul_eq_mul, mul_one]
      _ = a * L (monomial m 1) := by rw [map_smul, smul_eq_mul]
  refine ⟨∑ m ∈ (Φ s).support, (Φ s).coeff m * C (L (monomial m 1)), fun g => ?_⟩
  rw [← hmap g]
  conv_lhs => rw [(Φ s).as_sum]

  simp only [map_sum, MvPolynomial.map_monomial, evalM, map_mul, MvPolynomial.eval_C]
  exact Finset.sum_congr rfl fun m _ => hmono m _

end PI.WSF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CrRowActRowAct =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CzDiagUnitary =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CzDiagUnitary", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.InstMeasurableSpaceMat\npublic import Mathlib.Algebra.MvPolynomial.Monad\npublic import Mathlib.Algebra.MvPolynomial.Funext\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Star.UnitaryStarAlgAut\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WSF

open MvPolynomial Matrix
open scoped ComplexOrder

private theorem setOf_norm_eq_one_infinite : ({z : ℂ | ‖z‖ = 1} : Set ℂ).Infinite := by
  have hI : (Set.Ioc (-Real.pi) Real.pi).Infinite := Set.Ioc_infinite (by linarith [Real.pi_pos])
  refine Set.infinite_of_injOn_mapsTo
    (f := fun θ : ℝ => Complex.cos θ + Complex.sin θ * Complex.I) ?_ ?_ hI
  · intro a ha b hb hab
    have h1 := congrArg Complex.arg hab
    simp only at h1
    rwa [Complex.arg_cos_add_sin_mul_I ha, Complex.arg_cos_add_sin_mul_I hb] at h1
  · intro θ _
    exact Complex.norm_cos_add_sin_mul_I θ

theorem cz_torus_zero {ι : Type*} [Fintype ι] (Q : MvPolynomial ι ℂ)
    (h : ∀ z : ι → ℂ, (∀ i, ‖z i‖ = 1) → eval z Q = 0) : Q = 0 := by
  rw [MvPolynomial.funext_set_iff (fun _ => {z : ℂ | ‖z‖ = 1}) (fun _ => setOf_norm_eq_one_infinite)]
  intro x hx
  rw [map_zero]
  exact h x (fun i => hx i (Set.mem_univ i))

def czFam {N : ℕ} (u v : Matrix (Fin N) (Fin N) ℂ) (P : MvPolynomial (Fin N × Fin N) ℂ) :
    MvPolynomial (Fin N) ℂ :=
  bind₁ (fun w : Fin N × Fin N => ∑ c : Fin N, C (u w.1 c * v c w.2) * X c) P

theorem czFam_eval {N : ℕ} (u v : Matrix (Fin N) (Fin N) ℂ) (P : MvPolynomial (Fin N × Fin N) ℂ)
    (z : Fin N → ℂ) : eval z (czFam u v P) = evalM (u * diagonal z * v) P := by
  have h1 : eval z (czFam u v P) =
      eval (fun w : Fin N × Fin N => eval z (∑ c : Fin N, C (u w.1 c * v c w.2) * X c)) P := by
    unfold czFam
    exact MvPolynomial.eval₂Hom_bind₁ _ _ _ _
  rw [h1]
  unfold evalM
  refine congrArg (fun x => eval x P) ?_
  funext w

  simp only [map_sum, map_mul, MvPolynomial.eval_C, MvPolynomial.eval_X]
  rw [Matrix.mul_apply]
  simp only [Matrix.mul_diagonal]
  refine Finset.sum_congr rfl fun c _ => ?_
  ring

theorem cz_diag_unitary {N : ℕ} (z : Fin N → ℂ) (hz : ∀ i, ‖z i‖ = 1) :
    diagonal z ∈ unitaryGroup (Fin N) ℂ := by
  rw [Matrix.mem_unitaryGroup_iff, Matrix.star_eq_conjTranspose, Matrix.diagonal_conjTranspose,
    Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
  congr 1
  funext i
  have h1 := RCLike.mul_conj (z i)
  rw [hz i] at h1
  simpa using h1

theorem cz_svd {N : ℕ} (g : Matrix (Fin N) (Fin N) ℂ) (hg : IsUnit g.det) :
    ∃ u ∈ unitaryGroup (Fin N) ℂ, ∃ v ∈ unitaryGroup (Fin N) ℂ, ∃ z : Fin N → ℂ,
      g = u * diagonal z * v := by
  classical
  have hA : (gᴴ * g).IsHermitian := Matrix.isHermitian_conjTranspose_mul_self g
  have hnn : ∀ i, 0 ≤ hA.eigenvalues i := Matrix.eigenvalues_conjTranspose_mul_self_nonneg g
  set W : Matrix (Fin N) (Fin N) ℂ := (hA.eigenvectorUnitary : Matrix (Fin N) (Fin N) ℂ) with hW
  have hWu : W ∈ unitaryGroup (Fin N) ℂ := hA.eigenvectorUnitary.2
  have hWW : Wᴴ * W = 1 := by
    rw [← Matrix.star_eq_conjTranspose]; exact Matrix.mem_unitaryGroup_iff'.mp hWu
  have hWW' : W * Wᴴ = 1 := by
    rw [← Matrix.star_eq_conjTranspose]; exact Matrix.mem_unitaryGroup_iff.mp hWu
  have hD : Wᴴ * (gᴴ * g) * W = diagonal (RCLike.ofReal ∘ hA.eigenvalues) := by
    have h1 := hA.conjStarAlgAut_star_eigenvectorUnitary
    rw [Unitary.conjStarAlgAut_apply, Unitary.coe_star, star_star] at h1
    rw [← Matrix.star_eq_conjTranspose]
    exact h1
  have hdet : (diagonal (RCLike.ofReal ∘ hA.eigenvalues) : Matrix (Fin N) (Fin N) ℂ).det ≠ 0 := by
    have h1 : Wᴴ.det * W.det = 1 := by rw [← Matrix.det_mul, hWW, Matrix.det_one]
    have h2 : gᴴ.det ≠ 0 := by
      rw [Matrix.det_conjTranspose]; exact star_ne_zero.mpr hg.ne_zero
    rw [← hD, Matrix.det_mul, Matrix.det_mul, Matrix.det_mul]
    exact mul_ne_zero (mul_ne_zero (left_ne_zero_of_mul_eq_one h1)
      (mul_ne_zero h2 hg.ne_zero)) (right_ne_zero_of_mul_eq_one h1)
  have hpos : ∀ i, 0 < hA.eigenvalues i := by
    intro i
    rw [Matrix.det_diagonal] at hdet
    have h1 := Finset.prod_ne_zero_iff.mp hdet i (Finset.mem_univ i)
    have h2 : hA.eigenvalues i ≠ 0 := by
      intro h3
      apply h1
      simp [h3]
    exact lt_of_le_of_ne (hnn i) (Ne.symm h2)
  set s : Fin N → ℂ := fun i => ((Real.sqrt (hA.eigenvalues i) : ℝ) : ℂ) with hs
  have hs0 : ∀ i, s i ≠ 0 := by
    intro i
    simp only [hs, ne_eq, Complex.ofReal_eq_zero]
    exact (Real.sqrt_pos.mpr (hpos i)).ne'
  have hs2 : ∀ i, star (s i) * s i = RCLike.ofReal (hA.eigenvalues i) := by
    intro i
    change star (s i) * s i = ((hA.eigenvalues i : ℝ) : ℂ)
    simp only [hs, Complex.star_def, Complex.conj_ofReal, ← Complex.ofReal_mul,
      Real.mul_self_sqrt (hnn i)]
  refine ⟨g * W * diagonal (fun i => (s i)⁻¹), ?_, Wᴴ, ?_, s, ?_⟩
  · rw [Matrix.mem_unitaryGroup_iff', Matrix.star_eq_conjTranspose, Matrix.conjTranspose_mul,
      Matrix.conjTranspose_mul, Matrix.diagonal_conjTranspose]
    have key : diagonal (star fun i => (s i)⁻¹) * (Wᴴ * gᴴ) * (g * W * diagonal fun i => (s i)⁻¹)
        = diagonal (star fun i => (s i)⁻¹) * (Wᴴ * (gᴴ * g) * W) * diagonal fun i => (s i)⁻¹ := by
      simp only [Matrix.mul_assoc]
    rw [key, hD, Matrix.diagonal_mul_diagonal, Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
    congr 1
    funext i
    have h1 := hs2 i
    have h2 : star (s i) ≠ 0 := star_ne_zero.mpr (hs0 i)
    simp only [Pi.star_apply, Function.comp_apply, star_inv₀, ← h1]
    field_simp
    exact div_self (hs0 i)
  · rw [Matrix.mem_unitaryGroup_iff, Matrix.star_eq_conjTranspose, Matrix.conjTranspose_conjTranspose]
    exact hWW
  · rw [Matrix.mul_assoc (g * W), Matrix.diagonal_mul_diagonal]
    have h1 : (fun i => (s i)⁻¹ * s i) = fun _ => (1 : ℂ) := by
      funext i; exact inv_mul_cancel₀ (hs0 i)
    rw [h1, Matrix.diagonal_one, Matrix.mul_one, Matrix.mul_assoc, hWW', Matrix.mul_one]

theorem cz_zariski {N : ℕ} (P : MvPolynomial (Fin N × Fin N) ℂ)
    (h : ∀ u ∈ unitaryGroup (Fin N) ℂ, evalM u P = 0) (g : Matrix (Fin N) (Fin N) ℂ)
    (hg : IsUnit g.det) : evalM g P = 0 := by
  obtain ⟨u, hu, v, hv, z, rfl⟩ := cz_svd g hg
  have hQ : czFam u v P = 0 := by
    apply cz_torus_zero
    intro w hw
    rw [czFam_eval]
    exact h _ (Submonoid.mul_mem _ (Submonoid.mul_mem _ hu (cz_diag_unitary w hw)) hv)
  have h1 := czFam_eval u v P z
  rw [hQ, map_zero] at h1
  exact h1.symm

end PI.WSF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CzDiagUnitary =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionC =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionC", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CiEvalMSmul\npublic import Formalism.PeriodIntegrals.HwIrred\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.GradedWeylDivisibility.FinalD\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CfEqSumOfSubset\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CrRowActRowAct\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.CzDiagUnitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WSF

open Formalism.BasicNotions MvPolynomial MeasureTheory Matrix

private lemma normFock_add_left {N : ℕ} (lam : DomWeight N) (p p' q : MvPolynomial (Fin N × Fin N) ℂ) :
    normFock lam (p + p') q = normFock lam p q + normFock lam p' q := by
  simpa [cf_Blin_apply] using (Blin lam q).map_add p p'

private lemma normFock_smul_left {N : ℕ} (lam : DomWeight N) (c : ℂ) (p q : MvPolynomial (Fin N × Fin N) ℂ) :
    normFock lam (c • p) q = c * normFock lam p q := by
  have := (Blin lam q).map_smul c p
  rwa [cf_Blin_apply, cf_Blin_apply, smul_eq_mul] at this

private lemma aform_sum_smul_left {N : ℕ} {μ : Measure (Matrix (Fin N) (Fin N) ℂ)} (hμ : IsHaarU N μ) {ι : Type*}
    (t : Finset ι) (c : ι → ℂ) (p : ι → MvPolynomial (Fin N × Fin N) ℂ) (q : MvPolynomial (Fin N × Fin N) ℂ) :
    Aform μ (∑ i ∈ t, c i • p i) q = ∑ i ∈ t, c i * Aform μ (p i) q := by

  simp only [← ci_Alin_apply hμ, map_sum, map_smul, smul_eq_mul]

private lemma exists_nonneg_fockF_self {σ : Type*} (f : MvPolynomial σ ℂ) :
    ∃ r : ℝ, 0 ≤ r ∧ Formalism.REAL.fockF f f = (r : ℂ) := by
  refine ⟨∑ m ∈ f.support, Complex.normSq (f.coeff m) * ((∏ k ∈ m.support, (m k).factorial : ℕ) : ℝ),
    Finset.sum_nonneg fun m _ => mul_nonneg (Complex.normSq_nonneg _) (Nat.cast_nonneg _), ?_⟩
  unfold Formalism.REAL.fockF
  push_cast
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [Complex.star_def, Complex.mul_conj]

private lemma normFock_self_re_nonneg_and_real {N : ℕ} (lam : DomWeight N) (p : MvPolynomial (Fin N × Fin N) ℂ) :
    0 ≤ (normFock lam p p).re ∧ normFock lam p p = ((normFock lam p p).re : ℂ) := by
  obtain ⟨a, ha, hpa⟩ := exists_nonneg_fockF_self p
  obtain ⟨b, hb, heb⟩ := exists_nonneg_fockF_self (extremal ℂ N lam)
  have h : normFock lam p p = ((a / b : ℝ) : ℂ) := by
    rw [normFock, hpa, heb, Complex.ofReal_div]
  rw [h, Complex.ofReal_re]
  exact ⟨div_nonneg ha hb, rfl⟩

theorem schurOrth_of (h : PI.HwIrred) (hA : EvalOne) : SchurOrth := by
  intro N lam μ hμ s hs
  set V : Submodule ℂ (MvPolynomial (Fin N × Fin N) ℂ) := nablaSq ℂ N lam with hV
  have hstab : ∀ (g : Matrix (Fin N) (Fin N) ℂ) (f : MvPolynomial (Fin N × Fin N) ℂ), f ∈ V →
      Formalism.GradedWeylDivisibility.rowAct ℂ g f ∈ V :=
    fun g f hf => Formalism.GradedWeylDivisibility.dualWeylRowStable ℂ N N lam.natW g f hf
  have anti : Antitone lam.natW := fun a b hab => by
    have := lam.anti hab
    exact Int.toNat_le_toNat (by omega)
  have he : extremal ℂ N lam ∈ V := Formalism.GradedWeylDivisibility.hwMem ℂ N N le_rfl lam.natW anti
  have he0 : extremal ℂ N lam ≠ 0 := Formalism.GradedWeylDivisibility.hwNe ℂ N N le_rfl lam.natW
  haveI : FiniteDimensional ℂ V := by
    obtain ⟨bb, ⟨-, hspan, -⟩, -⟩ := Formalism.GradedWeylDivisibility.sSBasis ℂ N N lam.natW
    haveI : Finite (Formalism.GradedWeylDivisibility.ssIdx N N lam.natW) := (Formalism.GradedWeylDivisibility.sSIdxFinite N N lam.natW).to_subtype
    have : V = Submodule.span ℂ (Set.range bb) := hspan.symm
    rw [this]
    exact FiniteDimensional.span_of_finite ℂ (Set.finite_range bb)
  haveI : Nontrivial V := ⟨⟨⟨_, he⟩, 0, fun h0 => he0 (congrArg Subtype.val h0)⟩⟩
  letI core : InnerProductSpace.Core ℂ V :=
    { inner := fun x y => normFock lam (y : MvPolynomial (Fin N × Fin N) ℂ) x
      conj_inner_symm := fun x y => by
        show (starRingEnd ℂ) (normFock lam (x : MvPolynomial (Fin N × Fin N) ℂ) y) = normFock lam y x
        rw [cf_herm lam (x : MvPolynomial (Fin N × Fin N) ℂ) y]
        rfl
      re_inner_nonneg := fun x => (normFock_self_re_nonneg_and_real lam x).1
      add_left := fun x y z => by
        show normFock lam (z : MvPolynomial (Fin N × Fin N) ℂ) ((x + y : V) : MvPolynomial (Fin N × Fin N) ℂ) =
          normFock lam z x + normFock lam z y
        rw [Submodule.coe_add, cf_herm lam ((x : MvPolynomial (Fin N × Fin N) ℂ) + y) z, normFock_add_left, star_add,
          ← cf_herm, ← cf_herm]
      smul_left := fun x y r => by
        show normFock lam (y : MvPolynomial (Fin N × Fin N) ℂ) ((r • x : V) : MvPolynomial (Fin N × Fin N) ℂ) =
          (starRingEnd ℂ) r * normFock lam y x
        rw [Submodule.coe_smul, cf_herm lam (r • (x : MvPolynomial (Fin N × Fin N) ℂ)) y, normFock_smul_left, star_mul',
          ← cf_herm]
        rfl
      definite := fun x hx => by
        by_contra hne
        exact normFock_self_ne_zero lam (x : MvPolynomial (Fin N × Fin N) ℂ) (fun h0 => hne (Subtype.ext h0)) hx }
  letI : NormedAddCommGroup V := @InnerProductSpace.Core.toNormedAddCommGroup ℂ V _ _ _ core
  letI : InnerProductSpace ℂ V := InnerProductSpace.ofCore core.toCore
  have hin : ∀ x y : V, @inner ℂ V _ x y = normFock lam (y : MvPolynomial (Fin N × Fin N) ℂ) x := fun _ _ => rfl
  let b := stdOrthonormalBasis ℂ V
  let rv : Matrix (Fin N) (Fin N) ℂ → V → V := fun g x => ⟨Formalism.GradedWeylDivisibility.rowAct ℂ g x, hstab g x x.2⟩
  have hrv : ∀ g (x : V), (rv g x : MvPolynomial (Fin N × Fin N) ℂ) = Formalism.GradedWeylDivisibility.rowAct ℂ g x := fun _ _ => rfl
  have hunit : ∀ u ∈ Matrix.unitaryGroup (Fin N) ℂ, ∀ f : MvPolynomial (Fin N × Fin N) ℂ,
      Formalism.GradedWeylDivisibility.rowAct ℂ u (Formalism.GradedWeylDivisibility.rowAct ℂ u.conjTranspose f) = f := by
    intro u hu f
    rw [cr_rowAct_rowAct, ← Matrix.star_eq_conjTranspose, Matrix.mem_unitaryGroup_iff'.mp hu, cr_rowAct_one]

  let T : V →ₗ[ℂ] V := ∑ i, ((Alin hμ (b i : MvPolynomial (Fin N × Fin N) ℂ)).comp V.subtype).smulRight (b i)
  have hTapp : ∀ x : V, T x = ∑ i, Aform μ (x : MvPolynomial (Fin N × Fin N) ℂ) (b i) • b i := by
    intro x
    simp only [T]
    rw [LinearMap.sum_apply]
    simp only [LinearMap.smulRight_apply, LinearMap.comp_apply, Submodule.subtype_apply, ci_Alin_apply]
  have hT : ∀ x w : V, @inner ℂ V _ (T x) w = Aform μ (w : MvPolynomial (Fin N × Fin N) ℂ) x := by
    intro x w
    have hw : (w : MvPolynomial (Fin N × Fin N) ℂ) =
        ∑ i, @inner ℂ V _ (b i) w • (b i : MvPolynomial (Fin N × Fin N) ℂ) := by
      conv_lhs => rw [← b.sum_repr' w]
      simp only [Submodule.coe_sum, Submodule.coe_smul]
    rw [hTapp, sum_inner, hw, aform_sum_smul_left hμ]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [inner_smul_left, ci_herm μ (x : MvPolynomial (Fin N × Fin N) ℂ) (b i), mul_comm]
    rfl
  have hcomm : ∀ u ∈ Matrix.unitaryGroup (Fin N) ℂ, ∀ x : V, T (rv u x) = rv u (T x) := by
    intro u hu x
    refine ext_inner_right ℂ fun w => ?_
    have e1 : @inner ℂ V _ (rv u (T x)) w = @inner ℂ V _ (T x) (rv u.conjTranspose w) := by
      rw [hin, hin, hrv, hrv, cf_herm lam ((Formalism.GradedWeylDivisibility.rowAct ℂ u) (T x : MvPolynomial (Fin N × Fin N) ℂ)) w, cf_adj,
        ← cf_herm]
    rw [hT, e1, hT, hrv, ← ci_invariant hμ u hu (Formalism.GradedWeylDivisibility.rowAct ℂ u.conjTranspose w) x, hunit u hu]
  obtain ⟨c, hc⟩ := Module.End.exists_eigenvalue T
  obtain ⟨v0, hv0⟩ := hc.exists_hasEigenvector
  have hkey : ∀ y : V, T y = c • y → ∀ g : Matrix (Fin N) (Fin N) ℂ, IsUnit g.det → T (rv g y) = c • rv g y := by
    intro y hy g hg
    set z : V := T (rv g y) - c • rv g y with hz
    let ℓ : V →ₗ[ℂ] ℂ := (innerₛₗ ℂ z).comp (T - c • LinearMap.id)
    obtain ⟨L, hL⟩ := LinearMap.exists_extend ℓ
    have hLv : ∀ p : V, L p = @inner ℂ V _ z (T p) - c * @inner ℂ V _ z p := fun p => by
      have h2 := LinearMap.congr_fun hL p
      simp [ℓ] at h2
      rw [h2, inner_sub_right, inner_smul_right]
    obtain ⟨P, hP⟩ := cr_polyFun (y : MvPolynomial (Fin N × Fin N) ℂ) L
    have hu0 : ∀ u ∈ Matrix.unitaryGroup (Fin N) ℂ, evalM u P = 0 := by
      intro u hu
      rw [← hP u, ← hrv u y, hLv, hcomm u hu, hy]
      have : rv u (c • y) = c • rv u y := Subtype.ext (by simp [hrv, map_smul])
      rw [this, inner_smul_right, sub_self]
    have h0 := cz_zariski P hu0 g hg
    rw [← hP g, ← hrv g y, hLv] at h0
    have hzz : @inner ℂ V _ z z = 0 := by
      nth_rewrite 2 [hz]
      rw [inner_sub_right, inner_smul_right]
      exact h0
    rw [← sub_eq_zero]
    exact inner_self_eq_zero.mp hzz
  let K := LinearMap.ker (T - c • LinearMap.id)
  have hK : ∀ y : V, y ∈ K ↔ T y = c • y := fun y => by
    simp [K, sub_eq_zero]
  let W : Submodule ℂ (MvPolynomial (Fin N × Fin N) ℂ) := K.map V.subtype
  have hWle : W ≤ nablaSq ℂ N lam := Submodule.map_subtype_le V K
  have hWinv : ∀ (g : GL (Fin N) ℂ), ∀ f ∈ W, sqAct ℂ N lam g f ∈ W := by
    intro g f hf
    obtain ⟨y, hy, rfl⟩ := hf
    have hg : IsUnit ((g : Matrix (Fin N) (Fin N) ℂ).transpose).det := by
      rw [Matrix.det_transpose]; exact Matrix.isUnits_det_units g
    refine W.smul_mem _ ⟨rv (g : Matrix (Fin N) (Fin N) ℂ).transpose y, (hK _).mpr
      (hkey y ((hK y).mp hy) _ hg), rfl⟩
  have hWne : W ≠ ⊥ := by
    intro h0
    have : (v0 : MvPolynomial (Fin N × Fin N) ℂ) ∈ W := ⟨v0, (hK v0).mpr hv0.apply_eq_smul, rfl⟩
    rw [h0, Submodule.mem_bot] at this
    exact hv0.2 (Subtype.ext this)
  have hall : ∀ y : V, T y = c • y := by
    intro y
    rcases (h N lam).2.1 W hWle hWinv with h0 | h0
    · exact absurd h0 hWne
    · have : (y : MvPolynomial (Fin N × Fin N) ℂ) ∈ W := by rw [h0]; exact y.2
      obtain ⟨y', hy', hyy⟩ := this
      rw [← (Subtype.ext hyy : y' = y)]
      exact (hK y').mp hy'
  have hAB : ∀ x w : V, Aform μ (w : MvPolynomial (Fin N × Fin N) ℂ) x =
      (starRingEnd ℂ) c * normFock lam (w : MvPolynomial (Fin N × Fin N) ℂ) x := by
    intro x w
    rw [← hT, hall, inner_smul_left, hin]

  have hsum1 : ∀ x ∈ Matrix.unitaryGroup (Fin N) ℂ,
      ∑ i, evalM x (b i : MvPolynomial (Fin N × Fin N) ℂ) * star (evalM x (b i : MvPolynomial (Fin N × Fin N) ℂ)) = 1 := by
    intro x hx
    let y : V := rv x.conjTranspose ⟨_, he⟩
    have hev : ∀ i, evalM x (b i : MvPolynomial (Fin N × Fin N) ℂ) = @inner ℂ V _ y (b i) := by
      intro i
      have h1 := cr_evalM_rowAct x 1 (b i : MvPolynomial (Fin N × Fin N) ℂ)
      rw [mul_one] at h1
      rw [← h1, hA N lam _ (hstab x _ (b i).2), cf_adj, hin]
    simp only [hev]
    have : ∀ i, star (@inner ℂ V _ y (b i)) = @inner ℂ V _ (b i) y := fun i => inner_conj_symm _ _
    simp only [this]
    rw [b.sum_inner_mul_inner y y, hin, hrv, cf_adj, Matrix.conjTranspose_conjTranspose, hunit x hx]
    exact cf_ee lam
  have htrace : ∑ i, Aform μ (b i : MvPolynomial (Fin N × Fin N) ℂ) (b i) = 1 := by
    simp only [Aform]
    rw [← MeasureTheory.integral_finsetSum _ fun i _ => ci_integrable hμ (ci_cont2 _ _)]
    rw [integral_congr_ae (g := fun _ => (1 : ℂ)) ?_]
    · haveI := hμ.1
      simp
    · filter_upwards [hμ.2.1] with x hx
      exact hsum1 x hx
  have hcd : (starRingEnd ℂ) c * (Module.finrank ℂ V : ℂ) = 1 := by
    have hdiag : ∀ i, Aform μ (b i : MvPolynomial (Fin N × Fin N) ℂ) (b i) = (starRingEnd ℂ) c := by
      intro i
      rw [hAB, ← hin]
      have : @inner ℂ V _ (b i) (b i) = 1 := by
        rw [inner_self_eq_norm_sq_to_K, b.orthonormal.1 i]; simp
      rw [this, mul_one]
    simp only [hdiag, Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul] at htrace
    rw [mul_comm]; exact htrace
  have hss : normFock lam s s = (Module.finrank ℂ V : ℂ) * Aform μ s s := by
    rw [show s = ((⟨s, hs⟩ : V) : MvPolynomial (Fin N × Fin N) ℂ) from rfl, hAB, ← mul_assoc,
      mul_comm (Module.finrank ℂ V : ℂ), hcd, one_mul]
  have hint : Aform μ s s = ((∫ x, ‖evalM x s‖ ^ 2 ∂μ : ℝ) : ℂ) := by
    rw [Aform, ← integral_complex_ofReal]
    refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
    simp only
    rw [Complex.star_def, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  have hdim : Module.finrank ℂ (delSq ℂ N lam) = Module.finrank ℂ V := by
    rw [hV, (h N lam).1]
  rw [hss, hint, hdim, ← Complex.ofReal_natCast, ← Complex.ofReal_mul, Complex.ofReal_re]

end PI.WSF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionC =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.SchurFockOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.SchurFockOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.HwIrred\npublic import Formalism.PeriodIntegrals.SchurFock\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.Assembly\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionA\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionB\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.ConstructionC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WSF

theorem schurFock_of (h : PI.HwIrred) : PI.SchurFock :=
  schurFock_of_steps unitary_haar_measure (schurOrth_of h evaluation_at_one)

end PI.WSF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.SchurFockOf =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SchurFock =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SchurFock", "h": "module\n\npublic import Formalism.PeriodIntegrals.SchurFock\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HwIrred\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SchurOrthogonality.SchurFockOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem schur_fock : PI.SchurFock := PI.WSF.schurFock_of highest_weight_irreducible
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SchurFock =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GTLower =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GTLower", "h": "module\n\npublic import Formalism.PeriodIntegrals.GTLower\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GTBranch\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HwIrred\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SchurFock\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.GTLowerOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem gTLower_of (h2 : Formalism.BasicNotions.FactDelDualNabla) : PI.GTLower :=
  PI.WGL.gTLower_of h2 highest_weight_irreducible gelfand_tsetlin_branching schur_fock
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GTLower =====

-- ===== clump member: Formalism.LocalToGlobal.Divisibility.BrJoint =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Divisibility.BrJoint", "h": "module\n\npublic import Formalism.SharpRestriction.Divisibility.PrimeDegreeVariant\npublic import Formalism.LocalRingCardinality.FactDelDualNabla\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GTLower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.DIV.BrJ

open Formalism.BasicNotions Formalism.MainNotions

theorem branching_interlacing_pairs : PrimeDegreeVariant.Conclusion6 := by
  intro n N h lam sg hI
  exact _root_.gTLower_of Formalism.BasicNotions.factDelDualNabla n N h lam sg hI

variable {D : D7} {u : D.what₂.Word}

variable {D : D7} {u : D.what₂.Word}

end Formalism.L2.DIV.BrJ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Divisibility.BrJoint =====
