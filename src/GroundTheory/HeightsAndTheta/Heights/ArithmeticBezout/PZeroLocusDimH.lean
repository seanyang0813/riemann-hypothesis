module

public import Mathlib.Algebra.Polynomial.Derivative
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Topology.MetricSpace.HausdorffDimension
public import Mathlib.Topology.Algebra.MvPolynomial
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.LinearAlgebra.Complex.FiniteDimensional
public import Mathlib.Basic.Complex.Basic
public import Mathlib.FieldTheory.Minpoly.Basic
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Mathlib.RingTheory.KrullDimension.Basic
public import Mathlib.RingTheory.Ideal.HasGoingUp
public import Mathlib.RingTheory.KrullDimension.Field
public import Mathlib.RingTheory.KrullDimension.Polynomial
public import Mathlib.RingTheory.NoetherNormalization
public import Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed
public import Mathlib.RingTheory.Ideal.GoingUp
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsZeroLocusDimH
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LeOfAddOneLeSucc
public import Mathlib.RingTheory.KrullDimension.NonZeroDivisors
public import Mathlib.RingTheory.Ideal.MinimalPrime.Noetherian
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.FieldTheory.PurelyInseparable.Exponent
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ZeroLocusDimHGeo, GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ZeroLocusDimHAlg, GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PZeroLocusDimH

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ZeroLocusDimHGeo =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ZeroLocusDimHGeo", "h": "module\n\npublic import Mathlib.Algebra.Polynomial.Derivative\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Topology.MetricSpace.HausdorffDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\npublic import Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.LinearAlgebra.Complex.FiniteDimensional\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open Metric Filter Topology Finset

noncomputable section

namespace ZeroLocusDimH

theorem root_lipschitz_core {E : Type*} [NormedAddCommGroup E] (N : ℕ) (c : ℕ → E → ℂ) (y₀ : E)
    (t₀ : ℂ) (hcont : ∀ k, Continuous (c k))
    (hlip : ∀ k, ∃ L : NNReal, ∃ T ∈ 𝓝 y₀, LipschitzOnWith L (c k) T)
    (hder : ∑ k ∈ range N, c k y₀ * ((k : ℂ) * t₀ ^ (k - 1)) ≠ 0) :
    ∃ δ > 0, ∃ K : ℝ, 0 ≤ K ∧ ∀ y y' : E, ∀ t t' : ℂ,
      dist y y₀ < δ → dist y' y₀ < δ → dist t t₀ < δ → dist t' t₀ < δ →
      ∑ k ∈ range N, c k y * t ^ k = 0 → ∑ k ∈ range N, c k y' * t' ^ k = 0 →
      ‖t - t'‖ ≤ K * ‖y - y'‖ := by
  set D : E × ℂ × ℂ → ℂ := fun z =>
    ∑ k ∈ range N, c k z.1 * ∑ j ∈ range k, z.2.1 ^ j * z.2.2 ^ (k - 1 - j) with hDdef
  have hDc : Continuous D := by
    refine continuous_finsetSum _ fun k _ => ((hcont k).comp continuous_fst).mul ?_
    exact continuous_finsetSum _ fun j _ => by fun_prop
  set D0 := ∑ k ∈ range N, c k y₀ * ((k : ℂ) * t₀ ^ (k - 1)) with hD0def
  have hDz : D (y₀, t₀, t₀) = D0 := by
    simp only [hDdef, hD0def]
    refine Finset.sum_congr rfl fun k _ => ?_
    congr 1
    rw [Finset.sum_congr rfl (g := fun _ => t₀ ^ (k - 1)), Finset.sum_const, Finset.card_range,
      nsmul_eq_mul]
    intro j hj
    rw [← pow_add]
    congr 1
    have := Finset.mem_range.1 hj
    omega
  have hpos : 0 < ‖D0‖ / 2 := by positivity
  obtain ⟨δ2, hδ2, hD⟩ := Metric.continuous_iff.1 hDc (y₀, t₀, t₀) _ hpos
  choose L T hT hLT using hlip
  have hS : (⋂ k ∈ range N, T k) ∈ 𝓝 y₀ := (Filter.biInter_finset_mem _).2 fun k _ => hT k
  obtain ⟨δ1, hδ1, hball⟩ := Metric.mem_nhds_iff.1 hS
  refine ⟨min (min δ1 δ2) 1, by positivity, (∑ k ∈ range N, (L k : ℝ) * (‖t₀‖ + 1) ^ k) / (‖D0‖ / 2),
    by positivity, ?_⟩
  intro y y' t t' hy hy' ht ht' h1 h2
  have hyS : ∀ k ∈ range N, y ∈ T k := by
    have := hball (Metric.mem_ball.2 (lt_of_lt_of_le hy ((min_le_left _ _).trans (min_le_left _ _))))
    simpa using this
  have hyS' : ∀ k ∈ range N, y' ∈ T k := by
    have := hball (Metric.mem_ball.2 (lt_of_lt_of_le hy' ((min_le_left _ _).trans (min_le_left _ _))))
    simpa using this
  have hz : dist (y, t, t') (y₀, t₀, t₀) < δ2 := by
    have e2 : min (min δ1 δ2) 1 ≤ δ2 := (min_le_left _ _).trans (min_le_right _ _)
    rw [Prod.dist_eq, Prod.dist_eq]
    exact max_lt (hy.trans_le e2) (max_lt (ht.trans_le e2) (ht'.trans_le e2))
  have hDlow : ‖D0‖ / 2 ≤ ‖D (y, t, t')‖ := by
    have := hD _ hz
    rw [hDz, dist_eq_norm] at this
    have h3 := norm_sub_norm_le D0 (D (y, t, t'))
    rw [norm_sub_rev] at h3
    linarith
  have ht'b : ‖t'‖ ≤ ‖t₀‖ + 1 := by
    have : dist t' t₀ < 1 := ht'.trans_le (min_le_right _ _)
    rw [dist_eq_norm] at this
    have := norm_le_norm_add_norm_sub' t' t₀
    linarith
  have key : (t - t') * D (y, t, t') = ∑ k ∈ range N, (c k y' - c k y) * t' ^ k := by
    have e1 : (t - t') * D (y, t, t') = ∑ k ∈ range N, c k y * (t ^ k - t' ^ k) := by
      show (t - t') * ∑ k ∈ range N, c k y * ∑ j ∈ range k, t ^ j * t' ^ (k - 1 - j) = _
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [← geom_sum₂_mul t t' k]
      ring
    rw [e1]
    have : ∑ k ∈ range N, c k y * (t ^ k - t' ^ k) + ∑ k ∈ range N, (c k y - c k y') * t' ^ k =
        ∑ k ∈ range N, c k y * t ^ k - ∑ k ∈ range N, c k y' * t' ^ k := by
      rw [← Finset.sum_add_distrib, ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun k _ => ?_
      ring
    rw [h1, h2, sub_zero] at this
    have e3 : ∑ k ∈ range N, (c k y' - c k y) * t' ^ k = -∑ k ∈ range N, (c k y - c k y') * t' ^ k := by
      rw [← Finset.sum_neg_distrib]
      refine Finset.sum_congr rfl fun k _ => ?_
      ring
    rw [e3]
    linear_combination this
  have hbound : ‖t - t'‖ * ‖D (y, t, t')‖ ≤
      (∑ k ∈ range N, (L k : ℝ) * (‖t₀‖ + 1) ^ k) * ‖y - y'‖ := by
    rw [← norm_mul, key, Finset.sum_mul]
    refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun k hk => ?_)
    rw [norm_mul, norm_pow]
    have hl := (hLT k).dist_le_mul y' (hyS' k hk) y (hyS k hk)
    rw [dist_eq_norm, dist_eq_norm, ← norm_neg (y' - y), neg_sub] at hl
    have hp : ‖t'‖ ^ k ≤ (‖t₀‖ + 1) ^ k := pow_le_pow_left₀ (norm_nonneg _) ht'b k
    calc ‖c k y' - c k y‖ * ‖t'‖ ^ k ≤ ((L k : ℝ) * ‖y - y'‖) * (‖t₀‖ + 1) ^ k :=
          mul_le_mul hl hp (by positivity) (by positivity)
      _ = (L k : ℝ) * (‖t₀‖ + 1) ^ k * ‖y - y'‖ := by ring
  rw [div_mul_eq_mul_div, le_div_iff₀ hpos]
  calc ‖t - t'‖ * (‖D0‖ / 2) ≤ ‖t - t'‖ * ‖D (y, t, t')‖ :=
        mul_le_mul_of_nonneg_left hDlow (norm_nonneg _)
    _ ≤ _ := hbound

theorem contDiff_eval_mvPolynomial {ι : Type*} [Fintype ι] (q : MvPolynomial ι ℂ) :
    ContDiff ℂ 1 (fun y : ι → ℂ => MvPolynomial.eval y q) := by
  induction q using MvPolynomial.induction_on with
  | C a => simpa using contDiff_const
  | add p q hp hq => simpa using hp.add hq
  | mul_X p i hp => simpa using hp.mul (contDiff_apply ℂ (fun _ => ℂ) i)

def paramMap {n r : ℕ} (π : Fin r → MvPolynomial (Fin n) ℂ) (x : Fin n → ℂ) : Fin r → ℂ :=
  fun j => MvPolynomial.eval x (π j)

theorem continuous_paramMap {n r : ℕ} (π : Fin r → MvPolynomial (Fin n) ℂ) :
    Continuous (paramMap π) :=
  continuous_pi fun _ => MvPolynomial.continuous_eval _

theorem eval_map_eq_sum {r : ℕ} (Q : Polynomial (MvPolynomial (Fin r) ℂ)) (y : Fin r → ℂ) (t : ℂ) :
    Polynomial.eval t (Q.map (MvPolynomial.eval y)) =
      ∑ k ∈ range (Q.natDegree + 1), MvPolynomial.eval y (Q.coeff k) * t ^ k := by
  rw [Polynomial.eval_eq_sum_range' (n := Q.natDegree + 1)
    (lt_of_le_of_lt (Polynomial.natDegree_map_le) (Nat.lt_succ_self _))]
  simp [Polynomial.coeff_map]

theorem eval_map_derivative_eq_sum {r : ℕ} (Q : Polynomial (MvPolynomial (Fin r) ℂ))
    (y : Fin r → ℂ) (t : ℂ) :
    Polynomial.eval t ((Polynomial.derivative Q).map (MvPolynomial.eval y)) =
      ∑ k ∈ range (Q.natDegree + 1), MvPolynomial.eval y (Q.coeff k) * ((k : ℂ) * t ^ (k - 1)) := by
  rw [← Polynomial.derivative_map, Polynomial.derivative_eval,
    Polynomial.sum_over_range' (n := Q.natDegree + 1) _ (fun _ => by simp)
      (lt_of_le_of_lt (Polynomial.natDegree_map_le) (Nat.lt_succ_self _))]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [Polynomial.coeff_map]
  ring

theorem local_antilipschitz {n r : ℕ} (π : Fin r → MvPolynomial (Fin n) ℂ)
    (P : Fin n → Polynomial (MvPolynomial (Fin r) ℂ)) (V : Set (Fin n → ℂ))
    (hV : ∀ x ∈ V, ∀ i, Polynomial.eval (x i) ((P i).map (MvPolynomial.eval (paramMap π x))) = 0)
    (x₀ : Fin n → ℂ)
    (hx₀ : ∀ i, Polynomial.eval (x₀ i)
      ((Polynomial.derivative (P i)).map (MvPolynomial.eval (paramMap π x₀))) ≠ 0) :
    ∃ U ∈ 𝓝 x₀, ∃ K : ℝ, 0 ≤ K ∧
      ∀ x ∈ V ∩ U, ∀ x' ∈ V ∩ U, ‖x - x'‖ ≤ K * ‖paramMap π x - paramMap π x'‖ := by
  have core : ∀ i, ∃ δ > 0, ∃ K : ℝ, 0 ≤ K ∧ ∀ y y' : Fin r → ℂ, ∀ t t' : ℂ,
      dist y (paramMap π x₀) < δ → dist y' (paramMap π x₀) < δ → dist t (x₀ i) < δ →
      dist t' (x₀ i) < δ →
      ∑ k ∈ range ((P i).natDegree + 1), MvPolynomial.eval y ((P i).coeff k) * t ^ k = 0 →
      ∑ k ∈ range ((P i).natDegree + 1), MvPolynomial.eval y' ((P i).coeff k) * t' ^ k = 0 →
      ‖t - t'‖ ≤ K * ‖y - y'‖ := fun i =>
    root_lipschitz_core _ (fun k y => MvPolynomial.eval y ((P i).coeff k)) _ _
      (fun k => MvPolynomial.continuous_eval _)
      (fun k => by
        obtain ⟨L, T, hT, hL⟩ :=
          ((contDiff_eval_mvPolynomial ((P i).coeff k)).contDiffAt (x := paramMap π x₀)).exists_lipschitzOnWith
        exact ⟨L, T, hT, hL⟩)
      (by rw [← eval_map_derivative_eq_sum]; exact hx₀ i)
  choose δ hδ K hK hcore using core
  refine ⟨{x | ∀ i, dist (paramMap π x) (paramMap π x₀) < δ i ∧ dist (x i) (x₀ i) < δ i}, ?_,
    ∑ i, K i, Finset.sum_nonneg fun i _ => hK i, ?_⟩
  · refine Filter.eventually_all.2 fun i => ?_
    exact (((continuous_paramMap π).tendsto x₀).eventually (Metric.ball_mem_nhds _ (hδ i))).and
      (((continuous_apply i).tendsto x₀).eventually (Metric.ball_mem_nhds _ (hδ i)))
  rintro x ⟨hxV, hxU⟩ x' ⟨hxV', hxU'⟩
  refine (pi_norm_le_iff_of_nonneg (mul_nonneg (Finset.sum_nonneg fun i _ => hK i) (norm_nonneg _))).2 fun i => ?_
  have h1 := hV x hxV i
  have h2 := hV x' hxV' i
  rw [eval_map_eq_sum] at h1 h2
  have := hcore i _ _ _ _ (hxU i).1 (hxU' i).1 (hxU i).2 (hxU' i).2 h1 h2
  rw [Pi.sub_apply]
  refine this.trans (mul_le_mul_of_nonneg_right ?_ (norm_nonneg _))
  exact Finset.single_le_sum (f := K) (fun j _ => hK j) (Finset.mem_univ i)

theorem dimH_le_of_local_antilipschitz {n r : ℕ} (f : (Fin n → ℂ) → (Fin r → ℂ))
    (S : Set (Fin n → ℂ))
    (h : ∀ x₀ ∈ S, ∃ U ∈ 𝓝 x₀, ∃ K : ℝ, 0 ≤ K ∧
      ∀ x ∈ S ∩ U, ∀ x' ∈ S ∩ U, ‖x - x'‖ ≤ K * ‖f x - f x'‖) :
    dimH S ≤ 2 * (r : ENNReal) := by
  by_contra hlt0
  have hlt := not_le.1 hlt0
  obtain ⟨x₀, hx₀, hall⟩ := exists_mem_nhdsWithin_lt_dimH_of_lt_dimH hlt
  obtain ⟨U, hU, K, hK, hKU⟩ := h x₀ hx₀
  have hlt' := hall (S ∩ U) (inter_mem_nhdsWithin S hU)
  refine (not_le.2 hlt') ?_
  let g : (S ∩ U : Set (Fin n → ℂ)) → (Fin r → ℂ) := fun a => f a
  have hg : AntilipschitzWith ⟨K, hK⟩ g := by
    refine AntilipschitzWith.of_le_mul_dist fun a b => ?_
    rw [Subtype.dist_eq, dist_eq_norm, dist_eq_norm]
    exact hKU a a.2 b b.2
  have e1 : dimH (S ∩ U) = dimH (Set.univ : Set (S ∩ U : Set (Fin n → ℂ))) := by
    rw [← (isometry_subtypeVal).dimH_image Set.univ, Subtype.coe_image_univ]
  have hfin : Module.finrank ℝ (Fin r → ℂ) = 2 * r := by
    rw [Module.finrank_pi_fintype, Complex.finrank_real_complex, Finset.sum_const,
      Finset.card_univ, Fintype.card_fin, smul_eq_mul, mul_comm]
  calc dimH (S ∩ U) = dimH (Set.univ : Set (S ∩ U : Set (Fin n → ℂ))) := e1
    _ ≤ dimH (g '' Set.univ) := hg.le_dimH_image _
    _ ≤ dimH (Set.univ : Set (Fin r → ℂ)) := dimH_mono (Set.subset_univ _)
    _ = Module.finrank ℝ (Fin r → ℂ) := Real.dimH_univ_eq_finrank _
    _ = 2 * (r : ENNReal) := by rw [hfin]; push_cast; ring

theorem dimH_simple_roots_le {n r : ℕ} (π : Fin r → MvPolynomial (Fin n) ℂ)
    (P : Fin n → Polynomial (MvPolynomial (Fin r) ℂ)) (V : Set (Fin n → ℂ))
    (hV : ∀ x ∈ V, ∀ i, Polynomial.eval (x i) ((P i).map (MvPolynomial.eval (paramMap π x))) = 0) :
    dimH {x | x ∈ V ∧ ∀ i, Polynomial.eval (x i)
      ((Polynomial.derivative (P i)).map (MvPolynomial.eval (paramMap π x))) ≠ 0} ≤
      2 * (r : ENNReal) := by
  refine dimH_le_of_local_antilipschitz (paramMap π) _ fun x₀ hx₀ => ?_
  obtain ⟨U, hU, K, hK, hKU⟩ := local_antilipschitz π P V hV x₀ hx₀.2
  exact ⟨U, hU, K, hK, fun x hx x' hx' => hKU x ⟨hx.1.1, hx.2⟩ x' ⟨hx'.1.1, hx'.2⟩⟩

end ZeroLocusDimH

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ZeroLocusDimHGeo =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ZeroLocusDimHAlg =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ZeroLocusDimHAlg", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.FieldTheory.Minpoly.Basic\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Mathlib.RingTheory.KrullDimension.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.FieldTheory.PurelyInseparable.Exponent\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.HopfAlgebra.Basic\npublic import Mathlib.RingTheory.Ideal.HasGoingUp\npublic import Mathlib.RingTheory.KrullDimension.Field\npublic import Mathlib.RingTheory.KrullDimension.Polynomial\npublic import Mathlib.RingTheory.NoetherNormalization\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed\npublic import Mathlib.RingTheory.Ideal.GoingUp\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial

noncomputable section

namespace ZeroLocusDimH

theorem ringKrullDim_le_of_isIntegral_inj {A R : Type*} [CommRing A] [CommRing R] [Algebra A R]
    [Algebra.IsIntegral A R] (h : Function.Injective (algebraMap A R)) :
    ringKrullDim A ≤ ringKrullDim R := by
  rcases isEmpty_or_nonempty (PrimeSpectrum A) with hA | hA
  · rw [ringKrullDim, Order.krullDim_eq_bot]
    exact bot_le
  rw [ringKrullDim, Order.krullDim_eq_iSup_length]
  rw [WithBot.coe_iSup (OrderTop.bddAbove _)]
  refine iSup_le fun l => ?_
  obtain ⟨P, -, hP, hPl⟩ := Ideal.exists_ideal_over_prime_of_isIntegral l.head.asIdeal (⊥ : Ideal R)
    (by rw [Ideal.under_def, ← RingHom.ker_eq_comap_bot, (RingHom.injective_iff_ker_eq_bot _).1 h]; exact bot_le)
  have : P.LiesOver l.head.asIdeal := ⟨hPl.symm⟩
  obtain ⟨L, hL, -, -⟩ := Ideal.exists_ltSeries_of_hasGoingUp l P
  rw [← hL]
  exact Order.LTSeries.length_le_krullDim L

theorem aeval_derivative_minpoly_ne_zero {R A : Type*} [CommRing R] [IsDomain R]
    [IsIntegrallyClosed R] [CharZero R] [CommRing A] [IsDomain A] [Algebra R A]
    [Algebra.IsIntegral R A] (hinj : Function.Injective (algebraMap R A)) (x : A) :
    Polynomial.aeval x (Polynomial.derivative (minpoly R x)) ≠ 0 := by
  have : Module.IsTorsionFree R A := Module.isTorsionFree_iff_algebraMap_injective.2 hinj
  have hx : IsIntegral R x := Algebra.IsIntegral.isIntegral x
  intro h0
  have hdvd := minpoly.isIntegrallyClosed_dvd hx h0
  have hmon := minpoly.monic hx
  have hne : Polynomial.derivative (minpoly R x) ≠ 0 := by
    intro hd
    exact (minpoly.natDegree_pos hx).ne' (Polynomial.derivative_eq_zero.1 hd)
  have h1 := Polynomial.degree_le_of_dvd hdvd hne
  have h2 := Polynomial.degree_derivative_lt hmon.ne_zero
  exact absurd h1 (not_le.2 h2)

theorem exists_simple_root_data {n : ℕ} (p : Ideal (MvPolynomial (Fin n) ℂ)) [hp : p.IsPrime] :
    ∃ s : ℕ, (s : WithBot ℕ∞) ≤ ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ p) ∧
    ∃ (π : Fin s → MvPolynomial (Fin n) ℂ) (P : Fin n → Polynomial (MvPolynomial (Fin s) ℂ)),
      (∀ i, (P i).eval₂ (MvPolynomial.aeval π).toRingHom (X i) ∈ p) ∧
      (∀ i, (Polynomial.derivative (P i)).eval₂ (MvPolynomial.aeval π).toRingHom (X i) ∉ p) := by
  have : Nontrivial (MvPolynomial (Fin n) ℂ ⧸ p) := Ideal.Quotient.nontrivial_iff.2 hp.ne_top
  obtain ⟨s, g, hinj, hint⟩ := exists_integral_inj_algHom_of_fg ℂ (MvPolynomial (Fin n) ℂ ⧸ p)
  let _ : Algebra (MvPolynomial (Fin s) ℂ) (MvPolynomial (Fin n) ℂ ⧸ p) := g.toRingHom.toAlgebra
  have : Algebra.IsIntegral (MvPolynomial (Fin s) ℂ) (MvPolynomial (Fin n) ℂ ⧸ p) := ⟨hint⟩
  have hdim : ringKrullDim (MvPolynomial (Fin s) ℂ) = s := by
    rw [MvPolynomial.ringKrullDim_of_isNoetherianRing, ringKrullDim_eq_zero_of_field]
    simp
  refine ⟨s, hdim ▸ ringKrullDim_le_of_isIntegral_inj hinj, ?_⟩
  choose π hπ using fun j : Fin s => Ideal.Quotient.mk_surjective (I := p) (g (X j))
  have hcomp : (Ideal.Quotient.mk p).comp (MvPolynomial.aeval π).toRingHom =
      algebraMap (MvPolynomial (Fin s) ℂ) (MvPolynomial (Fin n) ℂ ⧸ p) := by
    refine MvPolynomial.ringHom_ext (fun a => ?_) (fun j => ?_)
    · simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
        MvPolynomial.aeval_C]
      change _ = g (C a)
      rw [← MvPolynomial.algebraMap_eq, g.commutes]
      rfl
    · simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
        MvPolynomial.aeval_X]
      exact hπ j
  have hkey : ∀ (Q : Polynomial (MvPolynomial (Fin s) ℂ)) (i : Fin n),
      Ideal.Quotient.mk p (Q.eval₂ (MvPolynomial.aeval π).toRingHom (X i)) =
        Polynomial.aeval (Ideal.Quotient.mk p (X i)) Q := by
    intro Q i
    rw [Polynomial.hom_eval₂, hcomp, Polynomial.aeval_def]
  have hx : ∀ i : Fin n, IsIntegral (MvPolynomial (Fin s) ℂ) (Ideal.Quotient.mk p (X i)) :=
    fun i => Algebra.IsIntegral.isIntegral _
  refine ⟨π, fun i => minpoly (MvPolynomial (Fin s) ℂ) (Ideal.Quotient.mk p (X i)), fun i => ?_,
    fun i => ?_⟩
  · rw [← Ideal.Quotient.eq_zero_iff_mem, hkey, minpoly.aeval]
  · rw [← Ideal.Quotient.eq_zero_iff_mem, hkey]
    exact aeval_derivative_minpoly_ne_zero hinj _

end ZeroLocusDimH

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ZeroLocusDimHAlg =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PZeroLocusDimH =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PZeroLocusDimH", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsZeroLocusDimH\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ZeroLocusDimHGeo\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LeOfAddOneLeSucc\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ZeroLocusDimHAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\npublic import Mathlib.RingTheory.KrullDimension.NonZeroDivisors\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.RingTheory.Ideal.MinimalPrime.Noetherian\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial

noncomputable section

namespace ZeroLocusDimH

theorem eval_eval₂_aeval {n s : ℕ} (π : Fin s → MvPolynomial (Fin n) ℂ)
    (Q : Polynomial (MvPolynomial (Fin s) ℂ)) (x : Fin n → ℂ) (i : Fin n) :
    MvPolynomial.eval x (Q.eval₂ (MvPolynomial.aeval π).toRingHom (X i)) =
      Polynomial.eval (x i) (Q.map (MvPolynomial.eval (paramMap π x))) := by
  rw [Polynomial.hom_eval₂, Polynomial.eval_map, MvPolynomial.eval_X]
  congr 1
  refine MvPolynomial.ringHom_ext (fun a => ?_) (fun j => ?_)
  · simp
  · simp [paramMap]

theorem mem_zeroSet_iff {n : ℕ} (I : Ideal (MvPolynomial (Fin n) ℂ)) (x : Fin n → ℂ) :
    (∀ q ∈ I, MvPolynomial.eval x q = 0) ↔ I ≤ RingHom.ker (MvPolynomial.eval x) :=
  ⟨fun h q hq => RingHom.mem_ker.2 (h q hq), fun h _ hq => RingHom.mem_ker.1 (h hq)⟩

theorem ringKrullDim_quot_sup_add_one_le {n : ℕ} (p : Ideal (MvPolynomial (Fin n) ℂ)) [p.IsPrime]
    (g : MvPolynomial (Fin n) ℂ) (hg : g ∉ p) :
    ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ (p ⊔ Ideal.span {g})) + 1 ≤
      ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ p) := by
  have hne : Ideal.Quotient.mk p g ≠ 0 := by rwa [Ne, Ideal.Quotient.eq_zero_iff_mem]
  have h := ringKrullDim_quotient_succ_le_of_nonZeroDivisor (mem_nonZeroDivisors_of_ne_zero hne)
  have e : ((MvPolynomial (Fin n) ℂ ⧸ p) ⧸ Ideal.span {Ideal.Quotient.mk p g}) ≃+*
      MvPolynomial (Fin n) ℂ ⧸ (p ⊔ Ideal.span {g}) :=
    (Ideal.quotEquivOfEq (by rw [Ideal.map_span, Set.image_singleton])).trans
      (DoubleQuot.quotQuotEquivQuotSup p (Ideal.span {g}))
  rwa [ringKrullDim_eq_of_ringEquiv e] at h

theorem dimH_le_of_step {n : ℕ} (d : ℕ)
    (hIH : ∀ J' : Ideal (MvPolynomial (Fin n) ℂ), ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ J') + 1 ≤ d →
      dimH {x : Fin n → ℂ | ∀ q ∈ J', MvPolynomial.eval x q = 0} ≤ 2 * (d : ENNReal))
    (J : Ideal (MvPolynomial (Fin n) ℂ)) (hJ : ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ J) ≤ d) :
    dimH {x : Fin n → ℂ | ∀ q ∈ J, MvPolynomial.eval x q = 0} ≤ 2 * (d : ENNReal) := by

  have hcover : {x : Fin n → ℂ | ∀ q ∈ J, MvPolynomial.eval x q = 0} ⊆
      ⋃ p ∈ J.minimalPrimes, {x : Fin n → ℂ | ∀ q ∈ p, MvPolynomial.eval x q = 0} := by
    intro x hx
    rw [Set.mem_ofPred_eq, mem_zeroSet_iff] at hx
    have : (RingHom.ker (MvPolynomial.eval x)).IsPrime := RingHom.ker_isPrime _
    obtain ⟨p, hp, hpx⟩ := Ideal.exists_minimalPrimes_le hx
    exact Set.mem_biUnion hp ((mem_zeroSet_iff p x).2 hpx)
  refine (dimH_mono hcover).trans ?_
  rw [dimH_bUnion (Ideal.finite_minimalPrimes_of_isNoetherianRing _ J).countable]
  refine iSup₂_le fun p hp => ?_
  have : p.IsPrime := hp.1.1
  have hpd : ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ p) ≤ d :=
    (ringKrullDim_le_of_surjective _ (Ideal.Quotient.factor_surjective hp.1.2)).trans hJ
  obtain ⟨s, hs, π, P, hP, hP'⟩ := exists_simple_root_data p
  set g := ∏ i, (Polynomial.derivative (P i)).eval₂ (MvPolynomial.aeval π).toRingHom (X i) with hgdef
  have hg : g ∉ p := by
    rw [hgdef, Ideal.IsPrime.prod_mem_iff]
    rintro ⟨i, -, hi⟩
    exact hP' i hi
  have hsplit : {x : Fin n → ℂ | ∀ q ∈ p, MvPolynomial.eval x q = 0} ⊆
      {x | x ∈ {x : Fin n → ℂ | ∀ q ∈ p, MvPolynomial.eval x q = 0} ∧ ∀ i, Polynomial.eval (x i)
        ((Polynomial.derivative (P i)).map (MvPolynomial.eval (paramMap π x))) ≠ 0} ∪
      {x : Fin n → ℂ | ∀ q ∈ p ⊔ Ideal.span {g}, MvPolynomial.eval x q = 0} := by
    intro x hx
    by_cases h : ∀ i, Polynomial.eval (x i)
        ((Polynomial.derivative (P i)).map (MvPolynomial.eval (paramMap π x))) ≠ 0
    · exact Or.inl ⟨hx, h⟩
    · right
      push Not at h
      obtain ⟨i, hi⟩ := h
      rw [Set.mem_ofPred_eq, mem_zeroSet_iff, sup_le_iff, Ideal.span_singleton_le_iff_mem,
        RingHom.mem_ker]
      refine ⟨(mem_zeroSet_iff p x).1 hx, ?_⟩
      rw [hgdef, map_prod]
      exact Finset.prod_eq_zero (Finset.mem_univ i) (by rw [eval_eval₂_aeval]; exact hi)
  refine (dimH_mono hsplit).trans ?_
  rw [dimH_union]
  refine max_le ?_ ?_
  · have hV : ∀ x ∈ {x : Fin n → ℂ | ∀ q ∈ p, MvPolynomial.eval x q = 0}, ∀ i,
        Polynomial.eval (x i) ((P i).map (MvPolynomial.eval (paramMap π x))) = 0 := by
      intro x hx i
      rw [← eval_eval₂_aeval]
      exact hx _ (hP i)
    refine (dimH_simple_roots_le π P _ hV).trans ?_
    have hsd : s ≤ d := by exact_mod_cast hs.trans hpd
    have : (s : ENNReal) ≤ d := by exact_mod_cast hsd
    gcongr
  · exact hIH _ ((ringKrullDim_quot_sup_add_one_le p g hg).trans hpd)

theorem dimH_zeroLocus_le (d : ℕ) : ∀ (n : ℕ) (J : Ideal (MvPolynomial (Fin n) ℂ)),
    ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ J) ≤ d →
      dimH {x : Fin n → ℂ | ∀ q ∈ J, MvPolynomial.eval x q = 0} ≤ 2 * (d : ENNReal) := by
  induction d with
  | zero =>
    intro n J hJ
    refine dimH_le_of_step 0 (fun J' hJ' => ?_) J hJ
    by_cases htop : J' = ⊤
    · have : {x : Fin n → ℂ | ∀ q ∈ J', MvPolynomial.eval x q = 0} = ∅ := by
        ext x
        simp only [Set.mem_ofPred_eq, Set.mem_empty_iff_false, iff_false, not_forall]
        exact ⟨1, htop ▸ Submodule.mem_top, by simp⟩
      rw [this, dimH_empty]
      simp
    · have : Nontrivial (MvPolynomial (Fin n) ℂ ⧸ J') := Ideal.Quotient.nontrivial_iff.2 htop
      have h0 := ringKrullDim_nonneg_of_nontrivial (R := MvPolynomial (Fin n) ℂ ⧸ J')
      have h1 : (0 : WithBot ℕ∞) + 1 ≤ ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ J') + 1 := by gcongr
      have h2 := h1.trans hJ'
      rw [zero_add, Nat.cast_zero] at h2
      exact absurd h2 (not_le.2 zero_lt_one)
  | succ k ih =>
    intro n J hJ
    refine dimH_le_of_step (k + 1) (fun J' hJ' => ?_) J hJ
    refine (ih n J' (_root_.UpperTheory.Reformulated.B.Qn14.le_of_add_one_le_succ hJ')).trans ?_
    have : (k : ENNReal) ≤ ((k + 1 : ℕ) : ENNReal) := by exact_mod_cast Nat.le_succ k
    gcongr

theorem proof : Statement := fun n d J hJ => dimH_zeroLocus_le d n J hJ

end ZeroLocusDimH

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.PZeroLocusDimH =====
