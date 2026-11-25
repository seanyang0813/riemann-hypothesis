module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HasBaseDegreeSetting
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed
public import Development.WeilBound.CoreStatements.FlagImmersions.ExistsWord
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PHFlProdLinear

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.FlagHeightPowerSumZero, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightPowerSumOneZero

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.FlagHeightPowerSumZero =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.FlagHeightPowerSumZero", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HasBaseDegreeSetting\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.WeilBound.CoreStatements.FlagImmersions.ExistsWord\nimport GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PHFlProdLinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top

noncomputable section

namespace RootFieldNumerics

theorem HH.sum_xDeg {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} (τ : Ψ) :
    ∑ i : Fin N, GroundTheory.Heights₂.Heights.LowerBoundFree.xDeg Ψ N (τ, i) = 0 := by
  funext q
  obtain ⟨σ, a⟩ := q
  rw [Finset.sum_apply, Pi.zero_apply]
  have ha : (a:ℕ) + 1 < N := by have := a.isLt; omega
  by_cases h : σ = τ
  · subst h
    simp only [GroundTheory.Heights₂.Heights.LowerBoundFree.xDeg, if_true]
    rw [Finset.sum_sub_distrib]
    rw [Fin.sum_univ_eq_sum_range (fun n => if (a:ℕ) = n then (1:ℤ) else 0) N,
        Fin.sum_univ_eq_sum_range (fun n => if (a:ℕ) + 1 = n then (1:ℤ) else 0) N]
    rw [Finset.sum_ite_eq, Finset.sum_ite_eq, if_pos (Finset.mem_range.mpr (by omega)),
        if_pos (Finset.mem_range.mpr ha)]
    simp
  · simp [GroundTheory.Heights₂.Heights.LowerBoundFree.xDeg, h]

open GroundTheory.Heights₂.Heights.LowerBoundFree.FlagHeightMultilinear in
theorem flag_height_power_sum_zero : ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (τ : Ψ) (Q : RP Ψ N), 2 ≤ N → IsArithVar (GroundTheory.Heights₂.Heights.LowerBoundFree.PFl Ψ N) (dimFl Ψ N + 1) → Q.IsHomogeneous (dimFl Ψ N) → hhFl Ψ N II (pk τ 1 * Q) = 0 := by
  intro II hII Ψ _ _ N τ Q hN hP hQ
  have key : ∀ (w : Fin (dimFl Ψ N) → Ψ × Fin N),
      ∑ i : Fin N, II (GroundTheory.Heights₂.Heights.LowerBoundFree.FlBlock Ψ N)
        (GroundTheory.Heights₂.Heights.LowerBoundFree.FlIdx Ψ N) (GroundTheory.Heights₂.Heights.LowerBoundFree.PFl Ψ N)
        (dimFl Ψ N + 1)
        (fun k => GroundTheory.Heights₂.Heights.LowerBoundFree.xLine Ψ N
          (Fin.snoc (α := fun _ => Ψ × Fin N) w (τ, i) k)) = 0 := by
    intro w
    let f := GroundTheory.Heights₂.Heights.LowerBoundFree.FlagHeightMultilinear.fsMultilin
      (hII.1 (GroundTheory.Heights₂.Heights.LowerBoundFree.FlBlock Ψ N) (GroundTheory.Heights₂.Heights.LowerBoundFree.FlIdx Ψ N)) hP
    let u : Fin (dimFl Ψ N + 1) → GroundTheory.Heights₂.Heights.LowerBoundFree.FlBlock Ψ N → ℤ :=
      Fin.snoc (α := fun _ => GroundTheory.Heights₂.Heights.LowerBoundFree.FlBlock Ψ N → ℤ)
        (fun k => GroundTheory.Heights₂.Heights.LowerBoundFree.xDeg Ψ N (w k)) 0
    have h1 : ∀ i : Fin N, II (GroundTheory.Heights₂.Heights.LowerBoundFree.FlBlock Ψ N)
        (GroundTheory.Heights₂.Heights.LowerBoundFree.FlIdx Ψ N) (GroundTheory.Heights₂.Heights.LowerBoundFree.PFl Ψ N)
        (dimFl Ψ N + 1)
        (fun k => GroundTheory.Heights₂.Heights.LowerBoundFree.xLine Ψ N
          (Fin.snoc (α := fun _ => Ψ × Fin N) w (τ, i) k)) =
        f.toLinearMap u (Fin.last _) (GroundTheory.Heights₂.Heights.LowerBoundFree.xDeg Ψ N (τ, i)) := by
      intro i
      rw [MultilinearMap.toLinearMap_apply,
        GroundTheory.Heights₂.Heights.LowerBoundFree.FlagHeightMultilinear.fsMultilin_apply]
      congr 1
      funext k
      refine Fin.lastCases ?_ (fun k => ?_) k
      · simp [u, GroundTheory.Heights₂.Heights.LowerBoundFree.xLine]
      · simp [u, GroundTheory.Heights₂.Heights.LowerBoundFree.xLine]

    rw [Finset.sum_congr rfl (fun i _ => h1 i), ← map_sum, HH.sum_xDeg (N := N) τ, map_zero]

  rw [MvPolynomial.as_sum Q, Finset.mul_sum, map_sum]
  apply Finset.sum_eq_zero
  intro m hm
  have hdeg : Finsupp.degree m = dimFl Ψ N := by
    have := hQ (mem_support_iff.mp hm)
    rw [Finsupp.degree_eq_weight_one]
    exact this
  obtain ⟨w, hw⟩ := HH.exists_word (dimFl Ψ N) m hdeg
  have hprod : pk τ 1 * monomial m (AddMonoidAlgebra.coeff Q m) =
      ∑ i : Fin N, monomial (∑ k : Fin (dimFl Ψ N + 1),
        Finsupp.single (Fin.snoc (α := fun _ => Ψ × Fin N) w (τ, i) k) 1) (AddMonoidAlgebra.coeff Q m) := by
    unfold pk
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i _
    rw [pow_one, X, monomial_mul, one_mul, Fin.sum_univ_castSucc]
    simp only [Fin.snoc_castSucc, Fin.snoc_last]
    rw [← hw, add_comm (Finsupp.single (τ, i) 1)]

  rw [hprod, map_sum,
  Finset.sum_congr rfl (fun i _ => HH.hhFl_word II hII.1 hP
    (Fin.snoc (α := fun _ => Ψ × Fin N) w (τ, i)) (AddMonoidAlgebra.coeff Q m)),
  ← Finset.mul_sum, ← Finset.mul_sum, key w, mul_zero, mul_zero]

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.FlagHeightPowerSumZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightPowerSumOneZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightPowerSumOneZero", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HasBaseDegreeSetting\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.WeilBound.CoreStatements.FlagImmersions.FlagHeightPowerSumZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem hhFl_pk_one_mul : ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (τ : Ψ) (Q : RP Ψ N), 2 ≤ N → IsArithVar (GroundTheory.Heights₂.Heights.LowerBoundFree.PFl Ψ N) (dimFl Ψ N + 1) → Q.IsHomogeneous (dimFl Ψ N) → hhFl Ψ N II (pk τ 1 * Q) = 0 :=
  RootFieldNumerics.flag_height_power_sum_zero

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightPowerSumOneZero =====
