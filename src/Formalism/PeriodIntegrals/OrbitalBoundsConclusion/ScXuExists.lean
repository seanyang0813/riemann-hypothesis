module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinBase
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinDefs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocDefs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.AdelicLatticeToLocalLattices
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.LocFrom
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.NatCastTmul
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.ValNatCastLtOne
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.GlueHoldsVar
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.CompactLocalGlobal
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.LocSplitChiOf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Reduce
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.SplitIso
public import Mathlib.RingTheory.Valuation.Integral
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.SplitGL
public import Formalism.PeriodIntegrals.ScXuExists
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Commensurated

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinLeg, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinMain, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocalIdempotentExistence, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.Assemble, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondCoordinateVectorMemSpan, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocalDataSatisfyLinearHypotheses, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitGen, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitLoc, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondProjectionSplitEquiv, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondCoordinateVectorNsmul, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitUnitaryProjectionCompatibility, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScXuExists

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinLeg =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinLeg", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists

open Matrix

section Leg

variable {K : Type} [Field K] (O : ValuationSubring K) {n r : ℕ} (P : Matrix (Fin n) (Fin n) K)
  (Λ1 Λ2 : Submodule O (Fin n → K)) (a a' α α' : Fin r → Fin n → K)

theorem memO_of_v {x : K} (h : O.valuation x = 1) : x ∈ O :=
  (O.valuation_le_one_iff x).1 h.le

theorem inv_memO_of_v {x : K} (h : O.valuation x = 1) : x⁻¹ ∈ O :=
  memO_of_v O (by rw [map_inv₀, h, inv_one])

theorem ne_zero_of_v {x : K} (h : O.valuation x = 1) : x ≠ 0 := by
  rintro rfl
  simp at h

def Pair (u φ : Fin n → K) : Prop :=
  u ∈ Λ1 ∧ φ ∈ Λ2 ∧ (∀ i, pr P (α i) u = 0 ∧ pr P (α' i) u = 0) ∧
    (∀ i, pr P φ (a i) = 0 ∧ pr P φ (a' i) = 0)

variable {O P Λ1 Λ2 a a' α α'} in
theorem leg (hP : ∀ β ∈ Λ2, ∀ x ∈ Λ1, pr P β x ∈ O) {up φp uq φq : Fin n → K}
    (hp : Pair O P Λ1 Λ2 a a' α α' up φp) (hq : Pair O P Λ1 Λ2 a a' α α' uq φq)
    (hcp : O.valuation (pr P φp up) = 1) (hcq : O.valuation (pr P φq uq) = 1)
    (hd : O.valuation (pr P φp uq) = 1) :
    ∃ T : GL (Fin n) K, Good O P Λ1 Λ2 a a' α α' T ∧ (T : Matrix (Fin n) (Fin n) K) *ᵥ up = uq ∧
      (φq ᵥ* P) ᵥ* (T : Matrix (Fin n) (Fin n) K) = (pr P φq uq / pr P φp up) • (φp ᵥ* P) := by
  unfold Pair at hp hq
  obtain ⟨hup, hφp, hupα, hφpa⟩ := hp
  obtain ⟨huq, hφq, huqα, hφqa⟩ := hq
  have hcp0 : pr P φp up ≠ 0 := ne_zero_of_v O hcp
  have hcq0 : pr P φq uq ≠ 0 := ne_zero_of_v O hcq
  have hd0 : pr P φp uq ≠ 0 := ne_zero_of_v O hd
  have hcpi : (pr P φp up)⁻¹ ∈ O := inv_memO_of_v O hcp
  have hcqi : (pr P φq uq)⁻¹ ∈ O := inv_memO_of_v O hcq
  have hdi : (pr P φp uq)⁻¹ ∈ O := inv_memO_of_v O hd
  have hb : pr P φq up ∈ O := hP φq hφq up hup
  have e1 : pr P φp uq * (pr P φp uq)⁻¹ = 1 := mul_inv_cancel₀ hd0
  have e2 : pr P φp up * (pr P φp up)⁻¹ = 1 := mul_inv_cancel₀ hcp0
  have e3 : pr P φq uq * (pr P φq uq)⁻¹ = 1 := mul_inv_cancel₀ hcq0
  have hXup : (φq ᵥ* P) ⬝ᵥ up = pr P φq up := (pr_eq_vecMul P φq up).symm
  have hYup : (φp ᵥ* P) ⬝ᵥ up = pr P φp up := (pr_eq_vecMul P φp up).symm
  have hD1 : (φq ᵥ* P) ⬝ᵥ (uq - up) = pr P φq uq - pr P φq up := by
    rw [← pr_eq_vecMul, pr_sub_right]
  have hdot : ∀ (V W : Fin n → K) (t : K), (V + t • W) ⬝ᵥ up = V ⬝ᵥ up + t * (W ⬝ᵥ up) := by
    intro V W t
    first
    | (simp only [add_dotProduct, smul_dotProduct, smul_eq_mul]; done)
  obtain ⟨γ2, hγ2⟩ : ∃ γ2 : Fin n → K, γ2 = φq - (pr P φq up * (pr P φp up)⁻¹) • φp := ⟨_, rfl⟩
  have hγ2u : (γ2 ᵥ* P) ⬝ᵥ up = 0 := by
    rw [← pr_eq_vecMul, hγ2, pr_sub_left, pr_smul_left]
    linear_combination (-pr P φq up) * e2
  have hγ2P : γ2 ᵥ* P = φq ᵥ* P - (pr P φq up * (pr P φp up)⁻¹) • (φp ᵥ* P) := by
    subst hγ2
    first
    | (simp only [sub_vecMul]; done)
    | (simp only [sub_vecMul, smul_vecMul]; done)
  have hγ2mem : γ2 ∈ Λ2 := by
    have hs : pr P φq up * (pr P φp up)⁻¹ ∈ O := by
      first | exact mul_mem hb hcpi
    rw [hγ2]
    exact Λ2.sub_mem hφq (smem O hs hφp)
  have hγ2a : ∀ i, pr P γ2 (a i) = 0 ∧ pr P γ2 (a' i) = 0 := fun i => by
    simp only [hγ2, pr_sub_left, pr_smul_left, (hφqa i).1, (hφqa i).2, (hφpa i).1, (hφpa i).2,
      mul_zero, sub_zero, and_self]
  have hwα1 : ∀ i, pr P (α i) (uq - up) = 0 ∧ pr P (α' i) (uq - up) = 0 := fun i =>
    ⟨by rw [pr_sub_right, (huqα i).1, (hupα i).1, sub_self],
      by rw [pr_sub_right, (huqα i).2, (hupα i).2, sub_self]⟩
  have h1 : (pr P φp up)⁻¹ + -(pr P φp uq)⁻¹ +
      (pr P φp up)⁻¹ * -(pr P φp uq)⁻¹ * ((φp ᵥ* P) ⬝ᵥ (uq - up)) = 0 := by
    rw [← pr_eq_vecMul, pr_sub_right]
    linear_combination (pr P φp uq)⁻¹ * e2 - (pr P φp up)⁻¹ * e1
  have h2 : -(pr P φq uq)⁻¹ + (pr P φq uq)⁻¹ +
      -(pr P φq uq)⁻¹ * (pr P φq uq)⁻¹ * ((γ2 ᵥ* P) ⬝ᵥ up) = 0 := by
    rw [hγ2u]
    ring
  have hn1 : -(pr P φp uq)⁻¹ ∈ O := by
    first | exact neg_mem hdi
  have hn2 : -(pr P φq uq)⁻¹ ∈ O := by
    first | exact neg_mem hcqi
  have hT1 := isAdmissible_rankOneGL hP (uq - up) φp _ _ h1 hcpi hn1 (Λ1.sub_mem huq hup) hφp hwα1 hφpa
  have hT2 := isAdmissible_rankOneGL hP up γ2 _ _ h2 hn2 hcqi hup hγ2mem hupα hγ2a
  refine ⟨rankOneUnitGL (uq - up) (φp ᵥ* P) _ _ h1 * rankOneUnitGL up (γ2 ᵥ* P) _ _ h2,
    good_mul _ _ _ _ _ _ _ _ hT1 hT2, ?_, ?_⟩
  · simp only [Units.val_mul, ← mulVec_mulVec, coe_rankOneGL, one_add_smul_vecMulVec_mulVec, hγ2u, mul_zero,
      zero_smul, add_zero, hYup, inv_mul_cancel₀ hcp0, one_smul]
    abel
  · simp only [Units.val_mul, ← vecMul_vecMul, coe_rankOneGL, vecMul_one_add_smul_vecMulVec]
    rw [hD1, hdot, hXup, hYup, hγ2P]
    ext j
    simp only [Pi.add_apply, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
    linear_combination ((φq ᵥ* P) j - pr P φq up * (pr P φp up)⁻¹ * (φp ᵥ* P) j) *
      (-(pr P φq uq)⁻¹ * (pr P φq uq - pr P φq up) * e2 - e3)

end Leg

end PI.UnitaryGroupMassFormula.ScXuExists
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinLeg =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinMain =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinMain", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinLeg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinBase\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists

open Matrix

section Main

variable {K : Type} [Field K] (O : ValuationSubring K)

private theorem valuationSubring_valuation_le_one_of_mem {K : Type} [Field K] (O : ValuationSubring K) {x : K}
    (hx : x ∈ O) : O.valuation x ≤ 1 := by
  first
  | exact (O.valuation_le_one_iff x).mpr hx

theorem v_small {g y : K} (hg : O.valuation g < 1) (hy : y ∈ O) : O.valuation (g * y) < 1 := by
  rw [map_mul]
  have h1 : O.valuation y ≤ 1 := valuationSubring_valuation_le_one_of_mem O hy
  calc O.valuation g * O.valuation y ≤ O.valuation g * 1 := by
        first
        | exact mul_le_mul_of_nonneg_left h1 zero_le'
    _ = O.valuation g := mul_one _
    _ < 1 := hg

theorem v_add_small {e m : K} (he : O.valuation e = 1) (hm : O.valuation m < 1) :
    O.valuation (e + m) = 1 := by
  have h : O.valuation m < O.valuation e := by rw [he]; exact hm
  first
  | exact (Valuation.map_add_eq_of_lt_left _ h).trans he

theorem v_neg_one : O.valuation (-1 : K) = 1 := by
  first
  | simp

end Main

private theorem sub_vecMul_field {K : Type} [Field K] {n : ℕ} (M : Matrix (Fin n) (Fin n) K)
    (x y : Fin n → K) : (x - y) ᵥ* M = x ᵥ* M - y ᵥ* M := by
  first
  | exact Matrix.sub_vecMul M x y

private theorem add_vecMul_field {K : Type} [Field K] {n : ℕ} (M : Matrix (Fin n) (Fin n) K)
    (x y : Fin n → K) : (x + y) ᵥ* M = x ᵥ* M + y ᵥ* M := by
  first
  | exact Matrix.add_vecMul M x y

private theorem smul_vecMul_field {K : Type} [Field K] {n : ℕ} (M : Matrix (Fin n) (Fin n) K)
    (c : K) (x : Fin n → K) : (c • x) ᵥ* M = c • (x ᵥ* M) := by
  first
  | (funext j; simp [Matrix.vecMul, dotProduct, Finset.mul_sum, mul_assoc])

private theorem exists_mem_sum_smul_eq_smul_of_divisible {K : Type} [Field K] (O : ValuationSubring K) {n r : ℕ}
    (M : Submodule O (Fin n → K)) (g : K) (f f' : Fin r → K) (v v' : Fin r → Fin n → K)
    (hv : ∀ i, v i ∈ M) (hv' : ∀ i, v' i ∈ M)
    (hf : ∀ i, ∃ s ∈ O, f i = g * s) (hf' : ∀ i, ∃ s ∈ O, f' i = g * s) :
    ∃ w ∈ M, ∑ i, (f i • v i + f' i • v' i) = g • w := by
  choose s hs hse using hf
  choose s' hs' hse' using hf'
  refine ⟨∑ i, (s i • v i + s' i • v' i),
    M.sum_mem fun i _ => M.add_mem (smem O (hs i) (hv i))
      (smem O (hs' i) (hv' i)), ?_⟩
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [hse i, hse' i, smul_add, mul_smul, mul_smul]

private theorem exists_pr_orthogonal_left_sub_smul_mem {K : Type} [Field K] (O : ValuationSubring K) {n r : ℕ}
    (P : Matrix (Fin n) (Fin n) K) (Λ1 : Submodule O (Fin n → K)) (a a' α α' : Fin r → Fin n → K)
    (g : K) (hg : g ∈ O)
    (hpair : ∀ i j, pr P (α i) (a j) = 0 ∧ pr P (α' i) (a' j) = 0 ∧
      pr P (α i) (a' j) = (if i = j then 1 else 0) ∧ pr P (α' i) (a j) = (if i = j then 1 else 0))
    (ha : ∀ i, a i ∈ Λ1) (ha' : ∀ i, a' i ∈ Λ1) {u0 : Fin n → K} (hu0 : u0 ∈ Λ1)
    (h1 : ∀ i, ∃ s ∈ O, pr P (α i) u0 = g * s) (h2 : ∀ i, ∃ s ∈ O, pr P (α' i) u0 = g * s) :
    ∃ u1 ∈ Λ1, (∀ j, pr P (α j) u1 = 0 ∧ pr P (α' j) u1 = 0) ∧
      ∃ w ∈ Λ1, u1 = u0 - g • w := by
  have e1 : ∀ i j, pr P (α i) (a j) = 0 := fun i j => (hpair i j).1
  have e2 : ∀ i j, pr P (α' i) (a' j) = 0 := fun i j => (hpair i j).2.1
  have e3 : ∀ i j, pr P (α i) (a' j) = if i = j then 1 else 0 := fun i j => (hpair i j).2.2.1
  have e4 : ∀ i j, pr P (α' i) (a j) = if i = j then 1 else 0 := fun i j => (hpair i j).2.2.2
  obtain ⟨w, hw, hS⟩ := exists_mem_sum_smul_eq_smul_of_divisible O Λ1 g (fun i => pr P (α i) u0)
    (fun i => pr P (α' i) u0) a' a ha' ha h1 h2
  refine ⟨u0 - g • w, Λ1.sub_mem hu0 (smem O hg hw), fun j => ?_, w, hw, rfl⟩
  rw [← hS]
  constructor
  · simp [pr_sub_right, pr_sum_right, pr_add_right, pr_smul_right, e1, e3]
  · simp [pr_sub_right, pr_sum_right, pr_add_right, pr_smul_right, e2, e4]

private theorem exists_pr_orthogonal_right_sub_smul_mem {K : Type} [Field K] (O : ValuationSubring K) {n r : ℕ}
    (P : Matrix (Fin n) (Fin n) K) (Λ2 : Submodule O (Fin n → K)) (a a' α α' : Fin r → Fin n → K)
    (g : K) (hg : g ∈ O)
    (hpair : ∀ i j, pr P (α i) (a j) = 0 ∧ pr P (α' i) (a' j) = 0 ∧
      pr P (α i) (a' j) = (if i = j then 1 else 0) ∧ pr P (α' i) (a j) = (if i = j then 1 else 0))
    (hα : ∀ i, α i ∈ Λ2) (hα' : ∀ i, α' i ∈ Λ2) {φ0 : Fin n → K} (hφ0 : φ0 ∈ Λ2)
    (h3 : ∀ i, ∃ s ∈ O, pr P φ0 (a i) = g * s) (h4 : ∀ i, ∃ s ∈ O, pr P φ0 (a' i) = g * s) :
    ∃ φ1 ∈ Λ2, (∀ j, pr P φ1 (a j) = 0 ∧ pr P φ1 (a' j) = 0) ∧
      ∃ w ∈ Λ2, φ1 = φ0 - g • w := by
  have e1 : ∀ i j, pr P (α i) (a j) = 0 := fun i j => (hpair i j).1
  have e2 : ∀ i j, pr P (α' i) (a' j) = 0 := fun i j => (hpair i j).2.1
  have e3 : ∀ i j, pr P (α i) (a' j) = if i = j then 1 else 0 := fun i j => (hpair i j).2.2.1
  have e4 : ∀ i j, pr P (α' i) (a j) = if i = j then 1 else 0 := fun i j => (hpair i j).2.2.2
  obtain ⟨w, hw, hS⟩ := exists_mem_sum_smul_eq_smul_of_divisible O Λ2 g (fun i => pr P φ0 (a i))
    (fun i => pr P φ0 (a' i)) α' α hα' hα h3 h4
  refine ⟨φ0 - g • w, Λ2.sub_mem hφ0 (smem O hg hw), fun j => ?_, w, hw, rfl⟩
  rw [← hS]
  constructor
  · simp [pr_sub_left, pr_sum_left, pr_add_left, pr_smul_left, e1, e4]
  · simp [pr_sub_left, pr_sum_left, pr_add_left, pr_smul_left, e2, e3]

private theorem exists_isAdmissible_of_chain_lemma_8 {K : Type} [Field K] {O : ValuationSubring K} {n r : ℕ}
    {P : Matrix (Fin n) (Fin n) K} {Λ1 Λ2 : Submodule O (Fin n → K)} {a a' α α' : Fin r → Fin n → K}
    (hP : ∀ β ∈ Λ2, ∀ x ∈ Λ1, pr P β x ∈ O) {up φp um φm uq φq : Fin n → K}
    (hp : Pair O P Λ1 Λ2 a a' α α' up φp) (hm : Pair O P Λ1 Λ2 a a' α α' um φm)
    (hq : Pair O P Λ1 Λ2 a a' α α' uq φq)
    (hcp : O.valuation (pr P φp up) = 1) (hcm : O.valuation (pr P φm um) = 1)
    (hcq : O.valuation (pr P φq uq) = 1)
    (hd1 : O.valuation (pr P φp um) = 1) (hd2 : O.valuation (pr P φm uq) = 1) :
    ∃ T : GL (Fin n) K, Good O P Λ1 Λ2 a a' α α' T ∧ (T : Matrix (Fin n) (Fin n) K) *ᵥ up = uq ∧
      (φq ᵥ* P) ᵥ* (T : Matrix (Fin n) (Fin n) K) = (pr P φq uq / pr P φp up) • (φp ᵥ* P) := by
  obtain ⟨T1, hT1, hT1u, hT1φ⟩ := leg hP hp hm hcp hcm hd1
  obtain ⟨T2, hT2, hT2u, hT2φ⟩ := leg hP hm hq hcm hcq hd2
  have hm0 : pr P φm um ≠ 0 := ne_zero_of_v O hcm
  have hp0 : pr P φp up ≠ 0 := ne_zero_of_v O hcp
  have hcoe : ((T2 * T1 : GL (Fin n) K) : Matrix (Fin n) (Fin n) K) =
      (T2 : Matrix (Fin n) (Fin n) K) * (T1 : Matrix (Fin n) (Fin n) K) := by
    first
    | exact Units.val_mul T2 T1
  refine ⟨T2 * T1, good_mul _ _ _ _ _ _ _ _ hT2 hT1, ?_, ?_⟩
  · rw [hcoe, ← Matrix.mulVec_mulVec, hT1u, hT2u]
  · rw [hcoe, ← Matrix.vecMul_vecMul, hT2φ, smul_vecMul_field, hT1φ, smul_smul]
    congr 1
    first
    | rw [div_mul_div_comm, mul_comm (pr P φm um) (pr P φp up), mul_div_mul_right _ _ hm0]

theorem existsLatticeAutomorphismApprox : LocLin := by
  unfold LocLin
  intro K _ O n r P g Λ1 Λ2 a a' α α' u φ u0 φ0 t hg hginv hP hfam hpair hu hφ hu0 hφ0 horth ht htg
    hφu hcong hc0
  obtain ⟨st, hst, hts⟩ := htg
  obtain ⟨s0, hs0, hs0e⟩ := hc0
  have hvg : O.valuation g < 1 := lt_of_le_of_ne (valuationSubring_valuation_le_one_of_mem O hg)
    (fun h => hginv (inv_memO_of_v O h))
  obtain ⟨u1, hu1, hu1o, w1, hw1, hu1e⟩ := exists_pr_orthogonal_left_sub_smul_mem O P Λ1 a a' α α' g hg hpair
    (fun i => (hfam i).1) (fun i => (hfam i).2.1) hu0 (fun i => (hcong i).1) (fun i => (hcong i).2.1)
  obtain ⟨φ1, hφ1, hφ1o, w2, hw2, hφ1e⟩ := exists_pr_orthogonal_right_sub_smul_mem O P Λ2 a a' α α' g hg hpair
    (fun i => (hfam i).2.2.1) (fun i => (hfam i).2.2.2) hφ0 (fun i => (hcong i).2.2.1)
    (fun i => (hcong i).2.2.2)
  have hp1 : Pair O P Λ1 Λ2 a a' α α' u1 φ1 := by
    unfold Pair
    exact ⟨hu1, hφ1, hu1o, hφ1o⟩
  have hq : Pair O P Λ1 Λ2 a a' α α' u φ := by
    unfold Pair
    exact ⟨hu, hφ, fun i => ⟨(horth i).1, (horth i).2.1⟩, fun i => ⟨(horth i).2.2.1, (horth i).2.2.2⟩⟩
  have hk : s0 - pr P φ0 w1 - pr P w2 u0 + g * pr P w2 w1 ∈ O :=
    add_mem (sub_mem (sub_mem hs0 (hP φ0 hφ0 w1 hw1)) (hP w2 hw2 u0 hu0)) (mul_mem hg (hP w2 hw2 w1 hw1))
  have hBe : pr P φ1 u1 =
      -1 + g * (s0 - pr P φ0 w1 - pr P w2 u0 + g * pr P w2 w1) := by
    rw [hφ1e, hu1e]
    simp only [pr_sub_left, pr_sub_right, pr_smul_left, pr_smul_right]
    linear_combination hs0e
  have hB : O.valuation (pr P φ1 u1) = 1 := by
    rw [hBe]
    exact v_add_small O (v_neg_one O) (v_small O hvg hk)
  have hAe : pr P φ u = -1 + g * (-st) := by
    rw [hφu]
    linear_combination -hts
  have hA : O.valuation (pr P φ u) = 1 := by
    rw [hAe]
    exact v_add_small O (v_neg_one O) (v_small O hvg (neg_mem hst))
  have hmid : ∃ um φm, Pair O P Λ1 Λ2 a a' α α' um φm ∧
      O.valuation (pr P φm um) = 1 ∧ O.valuation (pr P φ1 um) = 1 ∧
      O.valuation (pr P φm u) = 1 := by
    rcases (valuationSubring_valuation_le_one_of_mem O (hP φ1 hφ1 u hu)).lt_or_eq with hx | hx
    · rcases (valuationSubring_valuation_le_one_of_mem O (hP φ hφ u1 hu1)).lt_or_eq with hy | hy
      · refine ⟨u + u1, φ, ?_, ?_, ?_, hA⟩
        · unfold Pair
          refine ⟨Λ1.add_mem hu hu1, hφ, fun i => ⟨?_, ?_⟩,
            fun i => ⟨(horth i).2.2.1, (horth i).2.2.2⟩⟩
          · rw [pr_add_right, (horth i).1, (hu1o i).1, add_zero]
          · rw [pr_add_right, (horth i).2.1, (hu1o i).2, add_zero]
        · rw [pr_add_right]
          exact v_add_small O hA hy
        · rw [pr_add_right, add_comm]
          exact v_add_small O hB hx
      · refine ⟨u1, φ, ?_, hy, hB, hA⟩
        unfold Pair
        exact ⟨hu1, hφ, hu1o, fun i => ⟨(horth i).2.2.1, (horth i).2.2.2⟩⟩
    · exact ⟨u, φ, hq, hA, hx, hA⟩
  obtain ⟨um, φm, hm, hcm, hd1, hd2⟩ := hmid
  obtain ⟨T, hT, hTu, hTφ⟩ := exists_isAdmissible_of_chain_lemma_8 hP hp1 hm hq hB hcm hA hd1 hd2
  have hB0 : pr P φ1 u1 ≠ 0 := ne_zero_of_v O hB
  obtain ⟨kc, hkc, hc⟩ : ∃ kc ∈ O, pr P φ u / pr P φ1 u1 = 1 + g * kc := by
    refine ⟨(-st - (s0 - pr P φ0 w1 - pr P w2 u0 + g * pr P w2 w1)) *
      (pr P φ1 u1)⁻¹, mul_mem (sub_mem (neg_mem hst) hk) (inv_memO_of_v O hB), ?_⟩
    rw [div_eq_iff hB0]
    have hinv : (pr P φ1 u1)⁻¹ * pr P φ1 u1 = 1 := inv_mul_cancel₀ hB0
    linear_combination hAe - hBe +
      g * (st + (s0 - pr P φ0 w1 - pr P w2 u0 + g * pr P w2 w1)) * hinv
  have hTinv : ((T⁻¹ : GL (Fin n) K) : Matrix (Fin n) (Fin n) K) *ᵥ u = u1 := by
    rw [← hTu, Matrix.mulVec_mulVec]
    first
    | simp
  have hφ0e : φ0 = φ1 + g • w2 := by
    rw [hφ1e]
    abel
  unfold Good at hT
  obtain ⟨h1, h2, h3⟩ := hT
  refine ⟨T, h1, h2, h3, ⟨-w1, Λ1.neg_mem hw1, ?_⟩,
    ⟨kc • φ1 - w2, Λ2.sub_mem (smem O hkc hφ1) hw2, ?_⟩⟩
  · rw [hTinv, hu1e, smul_neg]
    abel
  · rw [hTφ, hc, hφ0e, add_vecMul_field, sub_vecMul_field, smul_vecMul_field, smul_vecMul_field]
    first
    | module

end PI.UnitaryGroupMassFormula.ScXuExists
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinMain =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocalIdempotentExistence =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocalIdempotentExistence", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.AdelicLatticeToLocalLattices\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.LocFrom\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.NatCastTmul\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.ValNatCastLtOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists

open NumberField IsDedekindDomain IsDedekindDomain.HeightOneSpectrum Matrix
open scoped TensorProduct
open Formalism.MainNotions.S PI.ScRefExists

def smulLin (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (c : RV I v) :
    (Fin I.n → RV I v) →ₗ[OV I v] (Fin I.n → RV I v) where
  toFun x := c • x
  map_add' x y := smul_add c x y
  map_smul' o x := by
    simp only [RingHom.id_apply]
    rw [PI.FinKW.LocTo.ov_smul_vec, PI.FinKW.LocTo.ov_smul_vec, smul_comm]

theorem idem_kill (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (g : ℕ) (hg : (g : 𝓞 I.F) ∈ v.asIdeal)
    (c : RV I v) (hcc : c * c = c)
    (hc : ∀ x ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)),
      ∃ w ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)), c • x = (g : RV I v) • w) :
    ∀ x ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)), c • x = 0 := by
  have hfg : ((Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E))).map (smulLin I v c)).FG :=
    (latLoc_fg I v).map _
  have hle : (Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E))).map (smulLin I v c) ≤
      Ideal.span {(g : OV I v)} • (Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E))).map (smulLin I v c) := by
    rintro _ ⟨x, hx, rfl⟩
    obtain ⟨w, hw, hcw⟩ := hc x hx
    have e : (smulLin I v c) x = (g : OV I v) • (smulLin I v c w) := by
      show c • x = (g : OV I v) • (c • w)
      rw [Nat.cast_smul_eq_nsmul, ← Nat.cast_smul_eq_nsmul (RV I v), smul_comm, ← hcw, smul_smul, hcc]
    rw [e]
    exact Submodule.smul_mem_smul (Ideal.subset_span (Set.mem_singleton _)) (Submodule.mem_map_of_mem hw)
  have hjac : Ideal.span {(g : OV I v)} ≤ Ideal.jacobson ⊥ := by
    rw [IsLocalRing.jacobson_eq_maximalIdeal ⊥ bot_ne_top, Ideal.span_le, Set.singleton_subset_iff]
    exact natCast_mem_max I.F v g hg
  have hbot := Submodule.eq_bot_of_le_smul_of_le_jacobson_bot _ _ hfg hle hjac
  intro x hx
  have hm : (smulLin I v c) x ∈ (Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E))).map (smulLin I v c) :=
    Submodule.mem_map_of_mem hx
  rw [hbot, Submodule.mem_bot] at hm
  exact hm

theorem kill_zero (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (hn : 0 < I.n) (c : RV I v)
    (h : ∀ x ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)), c • x = 0) : c = 0 := by
  have key : ∀ x ∈ Submodule.span I.E (I.L : Set (Fin I.n → I.E)),
      c • Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) x = 0 := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem y hy => exact h _ (Submodule.subset_span ⟨y, hy, rfl⟩)
    | zero => rw [PI.FinKW.ratV_zero', smul_zero]
    | add y z _ _ hy hz => rw [PI.FinKW.ratV_add', smul_add, hy, hz, add_zero]
    | smul a y _ hy =>
      have e : Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) (a • y) =
          (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.inclR (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) a) •
            Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) y := by
        funext i
        simp only [Formalism.L2.SG.Sub.ratV, Pi.smul_apply, smul_eq_mul, map_mul]
      rw [e, smul_comm, hy, smul_zero]
  have h0 := key (Pi.single ⟨0, hn⟩ 1) (by rw [I.L_span]; exact Submodule.mem_top)
  have e1 : Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) (Pi.single ⟨0, hn⟩ (1 : I.E)) =
      Pi.single ⟨0, hn⟩ 1 := by
    funext i
    by_cases hi : i = ⟨0, hn⟩
    · subst hi
      simp [Formalism.L2.SG.Sub.ratV]
    · simp [Formalism.L2.SG.Sub.ratV, hi]
  rw [e1] at h0
  have h1 := congrFun h0 ⟨0, hn⟩
  simpa using h1

theorem local_idempotent_existence : LocIdem := by
  intro I g r k e f Rf hg hn v hv
  have hb : PI.UnitaryGroupMassFormula.AdIndexEq.sigV I v (PI.FinKW.psiV I v Rf.ew) *
      PI.UnitaryGroupMassFormula.AdIndexEq.sigV I v (PI.FinKW.psiV I v Rf.ew) =
      PI.UnitaryGroupMassFormula.AdIndexEq.sigV I v (PI.FinKW.psiV I v Rf.ew) := by
    rw [← map_mul, eps_idem Rf v]
  have hcc : (1 - PI.FinKW.psiV I v Rf.ew - PI.UnitaryGroupMassFormula.AdIndexEq.sigV I v (PI.FinKW.psiV I v Rf.ew)) *
      (1 - PI.FinKW.psiV I v Rf.ew - PI.UnitaryGroupMassFormula.AdIndexEq.sigV I v (PI.FinKW.psiV I v Rf.ew)) =
      1 - PI.FinKW.psiV I v Rf.ew - PI.UnitaryGroupMassFormula.AdIndexEq.sigV I v (PI.FinKW.psiV I v Rf.ew) := by
    linear_combination eps_idem Rf v + hb + 2 * eps_orth Rf v
  have hkill := idem_kill I v g hv _ hcc (fun x hx => full_loc Rf v x hx)
  have hz := kill_zero I v (by omega) _ hkill
  linear_combination -hz

end PI.UnitaryGroupMassFormula.ScXuExists
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocalIdempotentExistence =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.Assemble =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.Assemble", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.GlueHoldsVar\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LinMain\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocalIdempotentExistence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists

theorem scXuExists_of (hS : LocSplitP) (hA : BridgeA) (hB : BridgeB) : _root_.PI.ScXuExists.Target :=
  target_of' local_idempotent_existence hS hA hB existsLatticeAutomorphismApprox Gl.glue_holds_var

end PI.UnitaryGroupMassFormula.ScXuExists
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.Assemble =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondCoordinateVectorMemSpan =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondCoordinateVectorMemSpan", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.CompactLocalGlobal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.LocSplitChiOf\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.AdelicLatticeToLocalLattices\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists.BrA

open NumberField IsDedekindDomain Matrix PI.UnitaryGroupMassFormula.AdIndexEq PI.UnitaryGroupMassFormula.ScXuExists
open scoped TensorProduct
open Formalism.MainNotions.S PI.ScRefExists

theorem gp_int (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (ε : RV I v) (p1 : RV I v →+* KV I v)
    (hp : IsAdaptedFirstProjection I v ε p1) : ∀ x ∈ Formalism.UG.intOE I.E, p1 (inclV I v x) ∈ OV I v := by
  first
  | exact hp.2.2.2

def hl (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (X Y : Fin I.n → RV I v) : RV I v :=
  Formalism.UG.hform (sigV I v) (I.J.map (inclV I v)) X Y

theorem sig2 (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (r : RV I v) :
    sigV I v (sigV I v r) = r := by
  induction r using TensorProduct.induction_on with
  | zero => simp
  | tmul a b =>
    simp only [sigV, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, Algebra.TensorProduct.map_tmul,
      AlgHom.id_apply]
    rw [spl_sig_sig]
  | add a b ha hb => rw [map_add (f := _), map_add (f := _), ha, hb]

theorem alg_eq (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (c : KV I v) :
    algebraMap (KV I v) (RV I v) c = c ⊗ₜ[I.F] (1 : I.E) := by
  rw [Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply]

theorem sig_alg (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (c : KV I v) :
    sigV I v (algebraMap (KV I v) (RV I v) c) = algebraMap (KV I v) (RV I v) c := by
  rw [alg_eq]
  simp [sigV]

theorem hl_sub_left (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (X Y Z : Fin I.n → RV I v) :
    hl I v (X - Y) Z = hl I v X Z - hl I v Y Z := by
  simp only [hl, Formalism.UG.hform, Pi.sub_apply, map_sub, sub_mul, Finset.sum_sub_distrib]

theorem hl_smul_left (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (c : RV I v) (X Z : Fin I.n → RV I v) :
    hl I v (c • X) Z = sigV I v c * hl I v X Z := by
  simp only [hl, Formalism.UG.hform, Pi.smul_apply, smul_eq_mul, map_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem hl_swap (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (X Y : Fin I.n → RV I v) :
    hl I v Y X = sigV I v (hl I v X Y) := by
  have hJ := spl_herm_v I v
  have hJij : ∀ i j, sigV I v ((I.J.map (inclV I v)) j i) = (I.J.map (inclV I v)) i j := by
    intro i j
    have := congrFun (congrFun hJ i) j
    simpa [Formalism.UG.cT] using this

  simp only [hl, Formalism.UG.hform, map_sum, map_mul, sig2]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [hJij j i]
  ring

theorem pr_vec (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (p1 : RV I v →+* KV I v)
    (X Y : Fin I.n → RV I v) :
    pr (Pm I v p1) (vec2 p1 X) (vec1 p1 Y) = p1 (hl I v X Y) := by

  simp only [pr, Pm, vec1, vec2, hl, Formalism.UG.hform, dotProduct, mulVec, map_sum, map_mul,
  Matrix.map_apply, RingHom.comp_apply, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem hl_ratV (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (l l' : Fin I.n → I.E) :
    hl I v (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l)
      (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l') =
      inclV I v (Formalism.UG.hform (starRingEnd I.E) I.J l l') := by
  have h1 : Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l = fun i => inclV I v (l i) := rfl
  have h2 : Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l' = fun i => inclV I v (l' i) := rfl
  rw [h1, h2]

  simp only [hl, Formalism.UG.hform, spl_sigV_inclV, Matrix.map_apply, map_sum, map_mul]

theorem psiV_hA (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (x y : VA I) :
    PI.FinKW.psiV I v (hA I x y) = hl I v (PI.FinKW.vecV I v x) (PI.FinKW.vecV I v y) := by

  simp only [hA, hl, Formalism.UG.hform, map_sum, map_mul, Matrix.map_apply, psiV_sigR, psiV_inclE,
  PI.FinKW.vecV]

theorem vecV_incl' (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (l : Fin I.n → I.E) :
    PI.FinKW.vecV I v (incl I l) = Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l := by
  funext i
  simp only [PI.FinKW.vecV, incl, PI.FinKW.LocTo.psiV_inclE]
  rfl

theorem pr_rat (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (p1 : RV I v →+* KV I v) (x y : Fin I.n → I.E) :
    pr (Pm I v p1) (vec2 p1 (PI.FinKW.vecV I v (incl I x))) (vec1 p1 (PI.FinKW.vecV I v (incl I y))) =
      p1 (inclV I v (Formalism.UG.hform (starRingEnd I.E) I.J x y)) := by
  rw [pr_vec, vecV_incl', vecV_incl', hl_ratV]

theorem hformE_swap (I : AutInst) (x y : Fin I.n → I.E) :
    Formalism.UG.hform (starRingEnd I.E) I.J y x = starRingEnd I.E (Formalism.UG.hform (starRingEnd I.E) I.J x y) := by
  have hJij : ∀ i j, starRingEnd I.E (I.J j i) = I.J i j := by
    intro i j
    have := congrFun (congrFun I.J_herm i) j
    simpa [Formalism.UG.cT] using this

  simp only [Formalism.UG.hform, map_sum, map_mul, RingHomCompTriple.comp_apply, RingHom.id_apply]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [hJij j i]
  ring

theorem first_coordinate_vector_smul (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (p1 : RV I v →+* KV I v)
    (hp : ∀ c : KV I v, p1 (algebraMap (KV I v) (RV I v) c) = c) (c : OV I v) (X : Fin I.n → RV I v) :
    vec1 p1 (c • X) = c • vec1 p1 X := by
  rw [PI.FinKW.LocTo.ov_smul_vec]
  funext i
  simp only [vec1, Pi.smul_apply, smul_eq_mul, map_mul]
  rw [← alg_eq, hp]
  rfl

theorem second_coordinate_vector_smul (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (p1 : RV I v →+* KV I v)
    (hp : ∀ c : KV I v, p1 (algebraMap (KV I v) (RV I v) c) = c) (c : OV I v) (X : Fin I.n → RV I v) :
    vec2 p1 (c • X) = c • vec2 p1 X := by
  rw [PI.FinKW.LocTo.ov_smul_vec]
  funext i
  simp only [vec2, Pi.smul_apply, smul_eq_mul, map_mul]
  rw [← alg_eq, sig_alg, hp]
  rfl

theorem first_coordinate_vector_add {I : AutInst} {v : HeightOneSpectrum (𝓞 I.F)} (p1 : RV I v →+* KV I v) (X Y : Fin I.n → RV I v) :
    vec1 p1 (X + Y) = vec1 p1 X + vec1 p1 Y := by
  funext i; simp [vec1]

theorem vec2_add {I : AutInst} {v : HeightOneSpectrum (𝓞 I.F)} (p1 : RV I v →+* KV I v) (X Y : Fin I.n → RV I v) :
    vec2 p1 (X + Y) = vec2 p1 X + vec2 p1 Y := by
  funext i; simp [vec2]

theorem first_coordinate_vector_zero {I : AutInst} {v : HeightOneSpectrum (𝓞 I.F)} (p1 : RV I v →+* KV I v) :
    vec1 p1 (0 : Fin I.n → RV I v) = 0 := by
  funext i; simp [vec1]

theorem second_coordinate_vector_zero {I : AutInst} {v : HeightOneSpectrum (𝓞 I.F)} (p1 : RV I v →+* KV I v) :
    vec2 p1 (0 : Fin I.n → RV I v) = 0 := by
  funext i; simp [vec2]

section PrSpan

variable {K : Type} [Field K] (O : ValuationSubring K) {n : ℕ} (P : Matrix (Fin n) (Fin n) K)

theorem prA_add_left (β β' x : Fin n → K) : pr P (β + β') x = pr P β x + pr P β' x := by
  simp [pr, add_dotProduct]

theorem prA_smul_left (c : K) (β x : Fin n → K) : pr P (c • β) x = c * pr P β x := by
  simp [pr, smul_dotProduct]

theorem prA_add_right (β x y : Fin n → K) : pr P β (x + y) = pr P β x + pr P β y := by
  simp [pr, mulVec_add, dotProduct_add]

theorem prA_smul_right (c : K) (β x : Fin n → K) : pr P β (c • x) = c * pr P β x := by
  simp [pr, mulVec_smul, dotProduct_smul]

theorem pr_span_left {S : Set (Fin n → K)} {x : Fin n → K} (h : ∀ β ∈ S, pr P β x ∈ O) :
    ∀ β ∈ Submodule.span O S, pr P β x ∈ O := by
  intro β hβ
  induction hβ using Submodule.span_induction with
  | mem y hy => exact h y hy
  | zero => simp [pr]
  | add a b _ _ ha hb => rw [prA_add_left]; exact add_mem ha hb
  | smul c a _ ha =>
    have : c • a = (c : K) • a := rfl
    rw [this, prA_smul_left]
    exact mul_mem c.2 ha

theorem pr_span_right {S : Set (Fin n → K)} {β : Fin n → K} (h : ∀ x ∈ S, pr P β x ∈ O) :
    ∀ x ∈ Submodule.span O S, pr P β x ∈ O := by
  intro x hx
  induction hx using Submodule.span_induction with
  | mem y hy => exact h y hy
  | zero => simp [pr]
  | add a b _ _ ha hb => rw [prA_add_right]; exact add_mem ha hb
  | smul c a _ ha =>
    have : c • a = (c : K) • a := rfl
    rw [this, prA_smul_right]
    exact mul_mem c.2 ha

end PrSpan

theorem first_coordinate_vector_mem_span (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (p1 : RV I v →+* KV I v)
    (hp : ∀ c : KV I v, p1 (algebraMap (KV I v) (RV I v) c) = c) (X : Fin I.n → RV I v)
    (hX : X ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E))) :
    vec1 p1 X ∈ Submodule.span (OV I v)
      ((fun l => vec1 p1 (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l)) '' (I.L : Set _)) := by
  induction hX using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨l, hl, rfl⟩ := hy
    exact Submodule.subset_span ⟨l, hl, rfl⟩
  | zero => rw [first_coordinate_vector_zero]; exact zero_mem _
  | add a b _ _ ha hb => rw [first_coordinate_vector_add]; exact add_mem ha hb
  | smul c a _ ha => rw [first_coordinate_vector_smul I v p1 hp]; exact Submodule.smul_mem _ c ha

theorem second_coordinate_vector_mem_span (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (p1 : RV I v →+* KV I v)
    (hp : ∀ c : KV I v, p1 (algebraMap (KV I v) (RV I v) c) = c) (X : Fin I.n → RV I v)
    (hX : X ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E))) :
    vec2 p1 X ∈ Submodule.span (OV I v)
      ((fun l => vec2 p1 (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l)) '' (I.L : Set _)) := by
  induction hX using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨l, hl, rfl⟩ := hy
    exact Submodule.subset_span ⟨l, hl, rfl⟩
  | zero => rw [second_coordinate_vector_zero]; exact zero_mem _
  | add a b _ _ ha hb => rw [vec2_add]; exact add_mem ha hb
  | smul c a _ ha => rw [second_coordinate_vector_smul I v p1 hp]; exact Submodule.smul_mem _ c ha

theorem pr_int (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (ε : RV I v) (p1 : RV I v →+* KV I v)
    (hp : IsAdaptedFirstProjection I v ε p1) : ∀ β ∈ Lam2 I v p1, ∀ x ∈ Lam1 I v p1, pr (Pm I v p1) β x ∈ OV I v := by

  have h0 : ∀ l ∈ (I.L : Set (Fin I.n → I.E)), ∀ l' ∈ (I.L : Set (Fin I.n → I.E)),
      pr (Pm I v p1) (vec2 p1 (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l))
        (vec1 p1 (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l')) ∈ OV I v := by
    intro l hl l' hl'
    rw [pr_vec, hl_ratV]
    exact gp_int I v ε p1 hp _ ((I.L_dual l').1 hl' l hl)
  have h1 : ∀ β ∈ Submodule.span (OV I v)
      ((fun l => vec2 p1 (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l)) '' (I.L : Set _)),
      ∀ x ∈ Submodule.span (OV I v)
      ((fun l => vec1 p1 (Formalism.L2.SG.Sub.ratV (F := I.F) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) l)) '' (I.L : Set _)),
      pr (Pm I v p1) β x ∈ OV I v := by
    intro β hβ x hx
    refine pr_span_left (OV I v) (Pm I v p1) (fun β' hβ' => ?_) β hβ
    obtain ⟨l, hl, rfl⟩ := hβ'
    refine pr_span_right (OV I v) (Pm I v p1) (fun x' hx' => ?_) x hx
    obtain ⟨l', hl', rfl⟩ := hx'
    exact h0 l hl l' hl'
  intro β hβ x hx
  refine pr_span_left (OV I v) (Pm I v p1) (fun β' hβ' => ?_) β hβ
  obtain ⟨X, hX, rfl⟩ := hβ'
  refine pr_span_right (OV I v) (Pm I v p1) (fun x' hx' => ?_) x hx
  obtain ⟨Y, hY, rfl⟩ := hx'
  exact h1 _ (second_coordinate_vector_mem_span I v p1 hp.1 X hX) _ (first_coordinate_vector_mem_span I v p1 hp.1 Y hY)

theorem hl_int (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (ε : RV I v) (p1 : RV I v →+* KV I v)
    (hp : IsAdaptedFirstProjection I v ε p1) (X Y : Fin I.n → RV I v)
    (hX : X ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)))
    (hY : Y ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E))) : p1 (hl I v X Y) ∈ OV I v := by
  rw [← pr_vec]
  exact pr_int I v ε p1 hp _ (Submodule.subset_span ⟨X, hX, rfl⟩) _ (Submodule.subset_span ⟨Y, hY, rfl⟩)

theorem conj_intOE (I : AutInst) (x : I.E) (hx : x ∈ Formalism.UG.intOE I.E) :
    starRingEnd I.E x ∈ Formalism.UG.intOE I.E := by
  obtain ⟨o, rfl⟩ := hx
  have h : IsIntegral ℤ (starRingEnd I.E (algebraMap (𝓞 I.E) I.E o)) :=
    (RingOfIntegers.isIntegral_coe o).map (starRingEnd I.E).toIntAlgHom
  exact ⟨⟨_, h⟩, rfl⟩

theorem adaptedProjection_psiV_mem_integers_of_mem_intAf (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (ε : RV I v) (p1 : RV I v →+* KV I v)
    (hp : IsAdaptedFirstProjection I v ε p1) (t : I.E ⊗[I.F] Af I.F) (ht : t ∈ IntAf I.F I.E) :
    p1 (PI.FinKW.psiV I v t) ∈ OV I v ∧ p1 (sigV I v (PI.FinKW.psiV I v t)) ∈ OV I v := by
  induction ht using Subring.closure_induction with
  | mem x hx =>
    rcases hx with ⟨y, rfl⟩ | ⟨y, rfl⟩
    · have e1 : PI.FinKW.psiV I v ((y : I.E) ⊗ₜ[I.F] (1 : Af I.F)) = inclV I v (y : I.E) :=
        psiV_inclE I v (y : I.E)
      rw [e1, spl_sigV_inclV]
      exact ⟨gp_int I v ε p1 hp _ y.2, gp_int I v ε p1 hp _ (conj_intOE I _ y.2)⟩
    · have e1 : PI.FinKW.psiV I v ((1 : I.E) ⊗ₜ[I.F] (y : Af I.F)) =
          algebraMap (KV I v) (RV I v) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV I.F v (y : Af I.F)) := by
        rw [PI.FinKW.LocTo.psiV_tmul, alg_eq]
      have hy : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV I.F v (y : Af I.F) ∈ OV I v := y.2 v
      rw [e1, sig_alg, hp.1]
      exact ⟨hy, hy⟩
  | zero => simp
  | one => simp
  | add a b _ _ ha hb => simp only [map_add (f := _)]; exact ⟨add_mem ha.1 hb.1, add_mem ha.2 hb.2⟩
  | neg a _ ha => simp only [map_neg]; exact ⟨neg_mem ha.1, neg_mem ha.2⟩
  | mul a b _ _ ha hb => simp only [map_mul]; exact ⟨mul_mem ha.1 hb.1, mul_mem ha.2 hb.2⟩

end PI.UnitaryGroupMassFormula.ScXuExists.BrA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondCoordinateVectorMemSpan =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocalDataSatisfyLinearHypotheses =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocalDataSatisfyLinearHypotheses", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondCoordinateVectorMemSpan\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Reduce\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.AdelicLatticeToLocalLattices\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.GlueHoldsVar\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.ValNatCastLtOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists.BrA

open NumberField IsDedekindDomain IsDedekindDomain.HeightOneSpectrum Matrix PI.UnitaryGroupMassFormula.AdIndexEq PI.UnitaryGroupMassFormula.ScXuExists
open scoped TensorProduct
open Formalism.MainNotions.S PI.ScRefExists

theorem inv_mem_of_val (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (c : ℕ)
    (hc : Valued.v ((c : v.adicCompletion I.F)) = 1) : ((c : KV I v))⁻¹ ∈ OV I v := by
  exact (HeightOneSpectrum.mem_adicCompletionIntegers _ _ v).2 (by simp [map_inv₀, hc])

theorem lat_of_inAt (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) {g : ℕ} (hv : (g : 𝓞 I.F) ∈ v.asIdeal)
    (x : VA I) (hx : InAt I g 1 x) :
    PI.FinKW.vecV I v x ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)) := by
  obtain ⟨c, hc, hcx⟩ := hx
  obtain ⟨w, hw, hweq⟩ := vecV_mL I v 1 _ hcx
  have hval := Gl.val_nat I.F v c (Gl.not_mem_of_coprime v hc hv)
  apply PI.UnitaryGroupMassFormula.AdIndexEq.cancel_nat v hval
  have h1 : c • PI.FinKW.vecV I v x = w := by
    rw [← Nat.cast_smul_eq_nsmul (RV I v), ← psiV_natCast I v c, ← vecV_smul', hweq, Nat.cast_one, one_smul]
  rw [h1]
  exact hw

theorem cong_pair (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (ε : RV I v) (p1 : RV I v →+* KV I v)
    (hp : IsAdaptedFirstProjection I v ε p1) {g c : ℕ} (hc : Valued.v ((c : v.adicCompletion I.F)) = 1)
    (X X0 Z w : Fin I.n → RV I v)
    (hZ : Z ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)))
    (hw : w ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)))
    (hD : (c : RV I v) • (X0 - X) = (g : RV I v) • w) (q : RV I v)
    (hq : hl I v X0 Z = (g : RV I v) * q) (hq1 : p1 q ∈ OV I v) (hq2 : p1 (sigV I v q) ∈ OV I v) :
    (∃ s ∈ OV I v, p1 (hl I v X Z) = (g : KV I v) * s) ∧
      (∃ s ∈ OV I v, p1 (hl I v Z X) = (g : KV I v) * s) := by
  have hc0 : (c : KV I v) ≠ 0 := by
    intro h0
    have h0' : ((c : v.adicCompletion I.F)) = 0 := h0
    rw [h0', map_zero] at hc
    exact zero_ne_one hc
  have hinv : ((c : KV I v))⁻¹ * (c : KV I v) = 1 := inv_mul_cancel₀ hc0
  have hci := inv_mem_of_val I v c hc
  have hsig : ∀ m : ℕ, sigV I v (m : RV I v) = m := fun m => map_natCast _ m
  have key : (c : RV I v) * hl I v X Z = (g : RV I v) * ((c : RV I v) * q - hl I v w Z) := by
    have h1 : hl I v X Z = hl I v X0 Z - hl I v (X0 - X) Z := by rw [hl_sub_left]; ring
    have h2 : hl I v ((c : RV I v) • (X0 - X)) Z = hl I v ((g : RV I v) • w) Z := by rw [hD]
    rw [hl_smul_left, hl_smul_left, hsig, hsig] at h2
    rw [h1, mul_sub, h2, hq]
    ring
  have key2 : (c : RV I v) * hl I v Z X = (g : RV I v) * ((c : RV I v) * sigV I v q - hl I v Z w) := by
    have h3 : sigV I v ((c : RV I v) * hl I v X Z) =
        sigV I v ((g : RV I v) * ((c : RV I v) * q - hl I v w Z)) := by rw [key]
    simp only [map_mul, map_sub, hsig] at h3
    rw [hl_swap I v X Z, hl_swap I v w Z]
    exact h3
  have hwZ := hl_int I v ε p1 hp w Z hw hZ
  have hZw := hl_int I v ε p1 hp Z w hZ hw
  constructor
  · refine ⟨((c : KV I v))⁻¹ * ((c : KV I v) * p1 q - p1 (hl I v w Z)),
      mul_mem hci (sub_mem (mul_mem (natCast_mem _ c) hq1) hwZ), ?_⟩
    have k1 := congrArg p1 key
    simp only [map_mul, map_sub, map_natCast] at k1
    linear_combination ((c : KV I v))⁻¹ * k1 - p1 (hl I v X Z) * hinv
  · refine ⟨((c : KV I v))⁻¹ * ((c : KV I v) * p1 (sigV I v q) - p1 (hl I v Z w)),
      mul_mem hci (sub_mem (mul_mem (natCast_mem _ c) hq2) hZw), ?_⟩
    have k1 := congrArg p1 key2
    simp only [map_mul, map_sub, map_natCast] at k1
    linear_combination ((c : KV I v))⁻¹ * k1 - p1 (hl I v Z X) * hinv

theorem local_data_satisfy_linear_hypotheses : BridgeA := by
  intro I g r k e f z Rf hH v hv _hsum p1 hp t ht1 htz
  obtain ⟨hg, _hs, _hn, hee, hff, hef, hz, _ht, hi, hiz⟩ := hH
  have hLat : ∀ x, InAt I g 1 x →
      PI.FinKW.vecV I v x ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)) :=
    fun x hx => lat_of_inAt I v hv x hx
  have hz0 : PI.FinKW.vecV I v Rf.z0 ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)) :=
    PI.FinKW.LocTo.mem_local_lattice_iff I _ Rf.vectorsInLattice.2.1 v
  have m1 : ∀ X ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)), vec1 p1 X ∈ Lam1 I v p1 :=
    fun X hX => Submodule.subset_span ⟨X, hX, rfl⟩
  have m2 : ∀ X ∈ Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E)), vec2 p1 X ∈ Lam2 I v p1 :=
    fun X hX => Submodule.subset_span ⟨X, hX, rfl⟩
  have hcong : ∀ (a : Fin I.n → I.E) (a0 : VA I), InAt I g g (a0 - incl I a) → ZMod' I g (hA I a0 Rf.z0) →
      (∃ s ∈ OV I v, p1 (hl I v (PI.FinKW.vecV I v (incl I a)) (PI.FinKW.vecV I v Rf.z0)) = (g : KV I v) * s) ∧
      (∃ s ∈ OV I v, p1 (hl I v (PI.FinKW.vecV I v Rf.z0) (PI.FinKW.vecV I v (incl I a))) = (g : KV I v) * s) := by
    intro a a0 hD hZ
    obtain ⟨c, hc, hcD⟩ := hD
    obtain ⟨w, hw, hweq⟩ := vecV_mL I v g _ hcD
    obtain ⟨q, hqI, hq⟩ := hZ
    have hval := Gl.val_nat I.F v c (Gl.not_mem_of_coprime v hc hv)
    have hD' : (c : RV I v) • (PI.FinKW.vecV I v a0 - PI.FinKW.vecV I v (incl I a)) = (g : RV I v) • w := by
      rw [← hweq, vecV_smul', psiV_natCast, Gl.vecV_sub]
    have hq' : hl I v (PI.FinKW.vecV I v a0) (PI.FinKW.vecV I v Rf.z0) =
        (g : RV I v) * PI.FinKW.psiV I v q := by
      rw [← psiV_hA, hq, map_mul, psiV_natCast]
    have hqq := adaptedProjection_psiV_mem_integers_of_mem_intAf I v _ p1 hp q hqI
    exact cong_pair I v _ p1 hp hval _ _ _ w hz0 hw hD' _ hq' hqq.1 hqq.2
  have hite : ∀ (P : Prop) [Decidable P], p1 (inclV I v (if P then 1 else 0)) = if P then 1 else 0 := by
    intro P _
    split_ifs <;> simp
  have hgK : (g : KV I v) ≠ 0 := by
    rw [← map_natCast (algebraMap I.F (KV I v)) g]
    exact (map_ne_zero _).2 (by exact_mod_cast (show g ≠ 0 by omega))
  unfold LinData LinHyp
  beta_reduce
  refine ⟨natCast_mem _ g, ?_, pr_int I v _ p1 hp, ?_, ?_, m1 _ (hLat _ hiz), m2 _ (hLat _ hiz), m1 _ hz0,
    m2 _ hz0, ?_, natCast_mem _ t, ?_, ?_, ?_, ?_⟩
  ·
    intro h
    let ginv : OV I v := ⟨(g : KV I v)⁻¹, h⟩
    have hunit : IsUnit (g : OV I v) := by
      refine isUnit_iff_exists_inv.2 ⟨ginv, Subtype.ext ?_⟩
      show ((g : OV I v) : KV I v) * (g : KV I v)⁻¹ = 1
      push_cast
      exact mul_inv_cancel₀ hgK
    exact (IsLocalRing.mem_maximalIdeal _).1 (natCast_mem_max I.F v g hv) hunit
  · intro i
    exact ⟨m1 _ (hLat _ (hi i).1), m1 _ (hLat _ (hi i).2), m2 _ (hLat _ (hi i).1), m2 _ (hLat _ (hi i).2)⟩
  · intro i j
    refine ⟨?_, ?_, ?_, ?_⟩
    · rw [pr_rat, hee, map_zero, map_zero]
    · rw [pr_rat, hff, map_zero, map_zero]
    · rw [pr_rat, hef, hite]
    · rw [pr_rat, hformE_swap, hef]
      by_cases hij : i = j
      · subst hij; simp
      · simp [hij, Ne.symm hij]
  · intro i
    refine ⟨?_, ?_, ?_, ?_⟩
    · rw [pr_rat, (hz i).1, map_zero, map_zero]
    · rw [pr_rat, (hz i).2, map_zero, map_zero]
    · rw [pr_rat, hformE_swap, (hz i).1, map_zero, map_zero, map_zero]
    · rw [pr_rat, hformE_swap, (hz i).2, map_zero, map_zero, map_zero]
  ·
    obtain ⟨q, hq⟩ := Nat.modEq_iff_dvd.1 ht1
    refine ⟨((-q : ℤ) : KV I v), intCast_mem _ _, ?_⟩
    have h2 := congrArg (Int.cast : ℤ → KV I v) hq
    push_cast at h2 ⊢
    linear_combination -h2
  · rw [pr_rat, htz]
    simp only [map_neg, map_natCast]
  · intro i
    obtain ⟨⟨s1, hs1, e1⟩, ⟨s2, hs2, e2⟩⟩ := hcong (e i) (Rf.e0 i) (Rf.basisApprox i).1 (Rf.formsAtZero.2 i).1
    obtain ⟨⟨s3, hs3, e3⟩, ⟨s4, hs4, e4⟩⟩ := hcong (f i) (Rf.f0 i) (Rf.basisApprox i).2 (Rf.formsAtZero.2 i).2
    exact ⟨⟨s1, hs1, by rw [pr_vec]; exact e1⟩, ⟨s3, hs3, by rw [pr_vec]; exact e3⟩,
      ⟨s2, hs2, by rw [pr_vec]; exact e2⟩, ⟨s4, hs4, by rw [pr_vec]; exact e4⟩⟩
  · obtain ⟨q, hqI, hq⟩ := Rf.formsAtZero.1
    refine ⟨p1 (PI.FinKW.psiV I v q), (adaptedProjection_psiV_mem_integers_of_mem_intAf I v _ p1 hp q hqI).1, ?_⟩
    rw [pr_vec, ← psiV_hA]
    have h2 := congrArg (fun y => p1 (PI.FinKW.psiV I v y)) hq
    simp only [map_add (f := _), map_one, map_mul, map_natCast] at h2
    exact h2

end PI.UnitaryGroupMassFormula.ScXuExists.BrA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocalDataSatisfyLinearHypotheses =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitGen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitGen", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.SplitIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists

open scoped TensorProduct
open PI.UnitaryGroupMassFormula.AdIndexEq.SplitIso

variable {F E K : Type} [Field F] [Field E] [Algebra F E] [Field K] [Algebra F K]

theorem exists_adapted_first_projection (σ : E →ₐ[F] E) (hσσ : ∀ a, σ (σ a) = a)
    (hfix : ∀ a, σ a = a → a ∈ (algebraMap F E).range) (h2 : Module.finrank F E = 2)
    (h2K : (2 : K) ≠ 0) (ε : K ⊗[F] E) (hsum : ε + sigT σ ε = 1) (horth : ε * sigT σ ε = 0) :
    ∃ p1 : K ⊗[F] E →+* K, (∀ c : K, p1 (algebraMap K (K ⊗[F] E) c) = c) ∧ p1 ε = 1 ∧
      p1 (sigT σ ε) = 0 ∧
      ∀ r : K ⊗[F] E, r = algebraMap K (K ⊗[F] E) (p1 r) * ε +
        algebraMap K (K ⊗[F] E) (p1 (sigT σ r)) * sigT σ ε := by
  classical
  have hσT : ∀ x : K ⊗[F] E, sigT σ (sigT σ x) = x := by
    intro x
    induction x using TensorProduct.induction_on with
    | zero => simp
    | tmul k e => simp [sigT, hσσ]
    | add x y hx hy => simp [map_add (f := _), hx, hy]
  have hσA : ∀ c : K, sigT σ (algebraMap K (K ⊗[F] E) c) = algebraMap K (K ⊗[F] E) c := by
    intro c
    simp [sigT, Algebra.TensorProduct.algebraMap_apply]
  have hε2 : ε * ε = ε := by
    calc ε * ε = ε * (ε + sigT σ ε) - ε * sigT σ ε := by ring
      _ = ε := by rw [hsum, horth, mul_one, sub_zero]
  have hfr : Module.finrank K (K ⊗[F] E) = 2 := by
    rw [Module.finrank_baseChange, h2]
  haveI : Module.Finite F E := Module.finite_of_finrank_pos (by omega)
  haveI : FiniteDimensional K (K ⊗[F] E) := inferInstance
  haveI : Nontrivial (K ⊗[F] E) := Module.nontrivial_of_finrank_pos (R := K) (by omega)
  have hε0 : ε ≠ 0 := by
    intro h0
    rw [h0, map_zero, add_zero] at hsum
    exact zero_ne_one hsum
  have hδ0 : sigT σ ε ≠ 0 := by
    intro h0
    rw [h0, add_zero] at hsum
    rw [hsum, map_one] at h0
    exact one_ne_zero h0
  have hrn := LinearMap.finrank_range_add_finrank_ker (LinearMap.mulRight K ε)
  rw [hfr] at hrn
  have hker : Module.finrank K (LinearMap.ker (LinearMap.mulRight K ε)) ≠ 0 := by
    rw [Ne, Submodule.finrank_eq_zero, Submodule.eq_bot_iff]
    intro h
    apply hδ0
    apply h
    rw [LinearMap.mem_ker, LinearMap.mulRight_apply, mul_comm, horth]
  have hmemε : ε ∈ LinearMap.range (LinearMap.mulRight K ε) :=
    ⟨ε, by rw [LinearMap.mulRight_apply, hε2]⟩
  have hran : Module.finrank K (LinearMap.range (LinearMap.mulRight K ε)) ≠ 0 := by
    rw [Ne, Submodule.finrank_eq_zero, Submodule.eq_bot_iff]
    intro h
    exact hε0 (h ε hmemε)
  have h1 : Module.finrank K (LinearMap.range (LinearMap.mulRight K ε)) = 1 := by omega
  have hex : ∀ r : K ⊗[F] E, ∃ c : K, algebraMap K (K ⊗[F] E) c * ε = r * ε := by
    intro r
    obtain ⟨c, hc⟩ := (finrank_eq_one_iff_of_nonzero'
      (⟨ε, hmemε⟩ : LinearMap.range (LinearMap.mulRight K ε))
      (fun h => hε0 (congrArg Subtype.val h))).mp h1 ⟨r * ε, ⟨r, rfl⟩⟩
    refine ⟨c, ?_⟩
    rw [← Algebra.smul_def]
    exact congrArg Subtype.val hc
  have huniq : ∀ c d : K, algebraMap K (K ⊗[F] E) c * ε = algebraMap K (K ⊗[F] E) d * ε →
      c = d := by
    intro c d h
    rw [← Algebra.smul_def, ← Algebra.smul_def, ← sub_eq_zero, ← sub_smul] at h
    exact sub_eq_zero.mp ((smul_eq_zero.mp h).resolve_right hε0)
  choose p hp using hex
  have hpu : ∀ r c, algebraMap K (K ⊗[F] E) c * ε = r * ε → p r = c :=
    fun r c h => huniq _ _ ((hp r).trans h.symm)
  let p1 : K ⊗[F] E →+* K :=
    { toFun := p
      map_one' := hpu 1 1 (by rw [map_one])
      map_mul' := fun r s => hpu (r * s) (p r * p s) (by
        rw [map_mul, mul_assoc, hp s, mul_left_comm, hp r, ← mul_assoc, mul_comm s r])
      map_zero' := hpu 0 0 (by rw [map_zero])
      map_add' := fun r s => hpu (r + s) (p r + p s) (by
        rw [map_add (f := _), add_mul, hp r, hp s, add_mul]) }
  refine ⟨p1, fun c => hpu _ c rfl, hpu _ 1 (by rw [map_one, one_mul, hε2]),
    hpu _ 0 (by rw [map_zero, zero_mul, mul_comm, horth]), fun r => ?_⟩
  have h2' : algebraMap K (K ⊗[F] E) (p (sigT σ r)) * sigT σ ε = r * sigT σ ε := by
    have h3 : sigT σ (algebraMap K (K ⊗[F] E) (p (sigT σ r)) * ε) = sigT σ (sigT σ r * ε) := by
      rw [hp (sigT σ r)]
    rwa [map_mul, map_mul, hσA, hσT] at h3
  show r = algebraMap K _ (p r) * ε + algebraMap K _ (p (sigT σ r)) * sigT σ ε
  rw [hp r, h2', ← mul_add, hsum, mul_one]

end PI.UnitaryGroupMassFormula.ScXuExists
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitGen =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitLoc =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitLoc", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.LocSplitChiOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.NatCastTmul\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.Valuation.AlgebraInstances\npublic import Mathlib.RingTheory.Valuation.Integral\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists

open NumberField IsDedekindDomain
open scoped TensorProduct
open Formalism.MainNotions.S PI.ScRefExists

theorem locSplitP_dec (I : AutInst) (g r k : ℕ) (e f : Fin r → Fin I.n → I.E) (Rf : RefData I g r k e f)
    (v : HeightOneSpectrum (𝓞 I.F)) (hsum : SumOne I v (PI.FinKW.psiV I v Rf.ew)) :
    ∃ p1 : RV I v →+* KV I v, IsAdaptedFirstProjection I v (PI.FinKW.psiV I v Rf.ew) p1 ∧
      ∀ x : RV I v, x = algebraMap (KV I v) (RV I v) (p1 x) * PI.FinKW.psiV I v Rf.ew +
        algebraMap (KV I v) (RV I v) (p1 (PI.UnitaryGroupMassFormula.AdIndexEq.sigV I v x)) *
          PI.UnitaryGroupMassFormula.AdIndexEq.sigV I v (PI.FinKW.psiV I v Rf.ew) := by
  have : CharZero (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) :=
    charZero_of_injective_algebraMap (algebraMap I.F (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v)).injective
  have h2K : (2 : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) ≠ 0 := two_ne_zero
  obtain ⟨p1, h1, h2, h3, h4⟩ := exists_adapted_first_projection (K := Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) I.cm.sig
    (PI.UnitaryGroupMassFormula.AdIndexEq.spl_sig_sig I) (PI.UnitaryGroupMassFormula.AdIndexEq.spl_sig_fix I) I.cm.deg2 h2K
    (PI.FinKW.psiV I v Rf.ew) hsum (eps_orth Rf v)
  refine ⟨p1, ⟨h1, h2, h3, ?_⟩, h4⟩
  rintro x ⟨z, rfl⟩
  obtain ⟨fp, hm, hf⟩ := NumberField.RingOfIntegers.isIntegral_coe z
  have hf' : Polynomial.eval₂ (algebraMap ℤ I.E) (algebraMap (𝓞 I.E) I.E z) fp = 0 := hf
  show (p1.comp (PI.UnitaryGroupMassFormula.AdIndexEq.inclV I v)) (algebraMap (𝓞 I.E) I.E z) ∈ OV I v
  refine (Valuation.valuationSubring.integers (Valued.v (R := v.adicCompletion I.F))).mem_of_integral
    ⟨fp.map (Int.castRingHom _), hm.map _, ?_⟩
  rw [Polynomial.eval₂_map]
  have hc : (algebraMap (Valued.v (R := v.adicCompletion I.F)).valuationSubring (v.adicCompletion I.F)).comp
      (Int.castRingHom (Valued.v (R := v.adicCompletion I.F)).valuationSubring) =
      (p1.comp (PI.UnitaryGroupMassFormula.AdIndexEq.inclV I v)).comp (algebraMap ℤ I.E) := RingHom.ext_int _ _
  rw [hc, ← Polynomial.hom_eval₂, hf', map_zero]

theorem local_splitting_projection : LocSplitP := by
  intro I g r k e f Rf v hsum
  obtain ⟨p1, hp, -⟩ := locSplitP_dec I g r k e f Rf v hsum
  exact ⟨p1, hp⟩

end PI.UnitaryGroupMassFormula.ScXuExists
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitLoc =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondProjectionSplitEquiv =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondProjectionSplitEquiv", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.SplitGL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Commensurated\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists.BrB

open Matrix PI.UnitaryGroupMassFormula.AdIndexEq

def piHom {K R : Type} [Field K] [CommRing R] (σ : R →+* R) (p1 : R →+* K) : R →+* K × K :=
  RingHom.prod p1 (p1.comp σ)

theorem piHom_bijective {K R : Type} [Field K] [CommRing R] [Algebra K R] [FiniteDimensional K R]
    (hdim : Module.finrank K R = 2) (σ : R →+* R) (p1 : R →+* K)
    (hσK : ∀ c, σ (algebraMap K R c) = algebraMap K R c) (hσσ : ∀ r, σ (σ r) = r)
    (hp1K : ∀ c, p1 (algebraMap K R c) = c) (ε : R) (h1 : p1 ε = 1) (h0 : p1 (σ ε) = 0) :
    Function.Bijective (piHom σ p1) := by
  let L : R →ₗ[K] K × K :=
    { toFun := piHom σ p1
      map_add' := fun a b => map_add _ a b
      map_smul' := fun c r => by
        rw [Algebra.smul_def, map_mul]
        ext <;> simp [piHom, hp1K, hσK] }
  have hsurj : Function.Surjective L := by
    rintro ⟨a, b⟩
    refine ⟨algebraMap K R a * ε + algebraMap K R b * σ ε, ?_⟩
    ext <;> simp [L, piHom, hp1K, hσK, hσσ, h1, h0]
  have hfr : Module.finrank K R = Module.finrank K (K × K) := by
    rw [hdim, Module.finrank_prod, Module.finrank_self]
  exact ⟨(LinearMap.injective_iff_surjective_of_finrank_eq_finrank hfr).2 hsurj, hsurj⟩

def piEquiv {K R : Type} [Field K] [CommRing R] (σ : R →+* R) (p1 : R →+* K)
    (hb : Function.Bijective (piHom σ p1)) : R ≃+* K × K :=
  RingEquiv.ofBijective (piHom σ p1) hb

theorem piEquiv_sig {K R : Type} [Field K] [CommRing R] (σ : R →+* R) (p1 : R →+* K)
    (hσσ : ∀ r, σ (σ r) = r) (hb : Function.Bijective (piHom σ p1)) (r : R) :
    piEquiv σ p1 hb (σ r) = (piEquiv σ p1 hb r).swap := by
  ext <;> simp [piEquiv, piHom, hσσ]

theorem proj_coe {R k : Type} [CommRing R] [Field k] {n : Type} [Fintype n] [DecidableEq n]
    (σ : R →+* R) (π : R ≃+* k × k) (J : Matrix n n R) (y : Formalism.UG.UJ σ J) :
    ((SplitGL.proj σ π J y : GL n k) : Matrix n n k) = ((y : GL n R) : Matrix n n R).map (SplitGL.p1 π) := rfl

theorem isUnit_det_first_projection {R k : Type} [CommRing R] [Field k] {n : Type} [Fintype n] [DecidableEq n]
    (π : R ≃+* k × k) (J : Matrix n n R) (hdet : IsUnit J.det) : IsUnit (J.map (SplitGL.p1 π)).det := by
  show IsUnit ((SplitGL.p1 π).mapMatrix J).det
  rw [← RingHom.map_det]
  exact hdet.map _

theorem second_projection_mulVec_eq {R k : Type} [CommRing R] [Field k] {n : Type} [Fintype n] [DecidableEq n]
    (σ : R →+* R) (π : R ≃+* k × k) (hπ : ∀ r, π (σ r) = (π r).swap) (J : Matrix n n R)
    (hdet : IsUnit J.det) (y : Formalism.UG.UJ σ J) (β β' : n → k)
    (h : β' ᵥ* J.map (SplitGL.p1 π) =
      (β ᵥ* J.map (SplitGL.p1 π)) ᵥ* (((SplitGL.proj σ π J y)⁻¹ : GL n k) : Matrix n n k)) :
    ((y : GL n R) : Matrix n n R).map (SplitGL.p2 π) *ᵥ β = β' := by
  set P := J.map (SplitGL.p1 π) with hP
  set M2 := ((y : GL n R) : Matrix n n R).map (SplitGL.p2 π) with hM2
  set T := SplitGL.proj σ π J y with hT
  have hu : M2ᵀ * P * (T : Matrix n n k) = P := by
    rw [hT, proj_coe]
    exact ((SplitGL.unitary_iff σ π hπ J _).1 y.2).1
  have hTT : (T : Matrix n n k) * ((T⁻¹ : GL n k) : Matrix n n k) = 1 := by
    rw [← Units.val_mul, mul_inv_cancel, Units.val_one]
  have key : M2ᵀ * P = P * ((T⁻¹ : GL n k) : Matrix n n k) := by
    calc M2ᵀ * P = M2ᵀ * P * ((T : Matrix n n k) * ((T⁻¹ : GL n k) : Matrix n n k)) := by
          rw [hTT, Matrix.mul_one]
      _ = P * ((T⁻¹ : GL n k) : Matrix n n k) := by rw [← Matrix.mul_assoc, hu]
  have h2 : (M2 *ᵥ β) ᵥ* P = β' ᵥ* P := by
    calc (M2 *ᵥ β) ᵥ* P = (β ᵥ* M2ᵀ) ᵥ* P := by rw [Matrix.vecMul_transpose]
      _ = β ᵥ* (M2ᵀ * P) := by rw [Matrix.vecMul_vecMul]
      _ = β ᵥ* (P * ((T⁻¹ : GL n k) : Matrix n n k)) := by rw [key]
      _ = (β ᵥ* P) ᵥ* ((T⁻¹ : GL n k) : Matrix n n k) := by rw [Matrix.vecMul_vecMul]
      _ = β' ᵥ* P := h.symm
  have hPu : IsUnit P.det := isUnit_det_first_projection π J hdet
  have h3 := congrArg (fun w => w ᵥ* P⁻¹) h2
  simp only [Matrix.vecMul_vecMul, Matrix.mul_nonsing_inv _ hPu, Matrix.vecMul_one] at h3
  exact h3

end PI.UnitaryGroupMassFormula.ScXuExists.BrB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondProjectionSplitEquiv =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondCoordinateVectorNsmul =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondCoordinateVectorNsmul", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondProjectionSplitEquiv\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.AdelicLatticeToLocalLattices\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists.BrB

open NumberField IsDedekindDomain Matrix PI.UnitaryGroupMassFormula.AdIndexEq PI.UnitaryGroupMassFormula.ScXuExists
open scoped TensorProduct
open Formalism.MainNotions.S PI.ScRefExists

abbrev LL (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) : Submodule (OV I v) (Fin I.n → RV I v) :=
  Formalism.L2.SG.Sub.latLoc v (I.L : Set (Fin I.n → I.E))

theorem sigV_sigV (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (r : RV I v) :
    sigV I v (sigV I v r) = r := by
  induction r using TensorProduct.induction_on with
  | zero => simp
  | tmul a e =>
    simp only [sigV, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, Algebra.TensorProduct.map_tmul, AlgHom.id_apply]
    rw [show I.cm.sig (I.cm.sig e) = e from star_star e]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]

theorem sigV_alg (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (c : KV I v) :
    sigV I v (algebraMap (KV I v) (RV I v) c) = algebraMap (KV I v) (RV I v) c := by
  simp [sigV, Algebra.TensorProduct.algebraMap_apply]

def vecqL (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (q : RV I v →+* KV I v)
    (hq : ∀ c, q (algebraMap (KV I v) (RV I v) c) = c) :
    (Fin I.n → RV I v) →ₗ[OV I v] (Fin I.n → KV I v) where
  toFun x i := q (x i)
  map_add' x y := by funext i; simp
  map_smul' c x := by
    funext i
    simp only [Pi.smul_apply, RingHom.id_apply]
    rw [PI.FinKW.LocTo.ov_smul_eq, map_mul]
    have e : ((c : KV I v) ⊗ₜ[I.F] (1 : I.E)) = algebraMap (KV I v) (RV I v) (c : KV I v) := by
      simp [Algebra.TensorProduct.algebraMap_apply]
    rw [e, hq]
    rfl

theorem exists_of_mem_span (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (q : RV I v →+* KV I v)
    (hq : ∀ c, q (algebraMap (KV I v) (RV I v) c) = c) (y : Fin I.n → KV I v)
    (hy : y ∈ Submodule.span (OV I v)
      ((fun x : Fin I.n → RV I v => fun i => q (x i)) '' (LL I v : Set (Fin I.n → RV I v)))) :
    ∃ x ∈ LL I v, (fun i => q (x i)) = y := by
  have hy' : y ∈ Submodule.span (OV I v) (⇑(vecqL I v q hq) '' (LL I v : Set (Fin I.n → RV I v))) := hy
  rw [← Submodule.map_coe, Submodule.span_eq] at hy'
  obtain ⟨x, hx, hxy⟩ := Submodule.mem_map.mp hy'
  exact ⟨x, hx, hxy⟩

theorem mem_LL_iff (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (ε : RV I v) (p1 : RV I v →+* KV I v)
    (hp : IsAdaptedFirstProjection I v ε p1) (hinj : Function.Injective (piHom (sigV I v) p1))
    (hε : ∀ w ∈ LL I v, ε • w ∈ LL I v) (x : Fin I.n → RV I v) :
    x ∈ LL I v ↔ vec1 p1 x ∈ Lam1 I v p1 ∧ vec2 p1 x ∈ Lam2 I v p1 := by
  obtain ⟨hp1, hpe, hpse, -⟩ := hp
  constructor
  · intro hx
    exact ⟨Submodule.subset_span (Set.mem_image_of_mem _ hx), Submodule.subset_span (Set.mem_image_of_mem _ hx)⟩
  · rintro ⟨h1, h2⟩
    obtain ⟨x1, hx1, e1⟩ := exists_of_mem_span I v p1 hp1 (vec1 p1 x) h1
    have hq2 : ∀ c, (p1.comp (sigV I v)) (algebraMap (KV I v) (RV I v) c) = c := by
      intro c
      rw [RingHom.comp_apply, sigV_alg, hp1]
    obtain ⟨x2, hx2, e2⟩ := exists_of_mem_span I v (p1.comp (sigV I v)) hq2 (vec2 p1 x) h2
    have hw : ε • x1 + (x2 - ε • x2) ∈ LL I v :=
      (LL I v).add_mem (hε x1 hx1) ((LL I v).sub_mem hx2 (hε x2 hx2))
    have hxw : x = ε • x1 + (x2 - ε • x2) := by
      funext i
      apply hinj
      have f1 : p1 (x1 i) = p1 (x i) := congrFun e1 i
      have f2 : p1 (sigV I v (x2 i)) = p1 (sigV I v (x i)) := congrFun e2 i
      simp only [piHom, RingHom.prod_apply, RingHom.comp_apply, Pi.add_apply, Pi.sub_apply, Pi.smul_apply,
        smul_eq_mul, map_add, map_sub, map_mul, hpe, hpse, f1, f2]
      refine Prod.ext ?_ ?_ <;> simp
    rw [hxw]
    exact hw

theorem first_coordinate_vector_sub {I : AutInst} {v : HeightOneSpectrum (𝓞 I.F)} (p1 : RV I v →+* KV I v)
    (X X' : Fin I.n → RV I v) : vec1 p1 (X - X') = vec1 p1 X - vec1 p1 X' := by
  funext i
  simp [vec1]

theorem second_coordinate_vector_sub {I : AutInst} {v : HeightOneSpectrum (𝓞 I.F)} (p1 : RV I v →+* KV I v)
    (X X' : Fin I.n → RV I v) : vec2 p1 (X - X') = vec2 p1 X - vec2 p1 X' := by
  funext i
  simp [vec2]

theorem first_coordinate_vector_nsmul {I : AutInst} {v : HeightOneSpectrum (𝓞 I.F)} (p1 : RV I v →+* KV I v)
    (c : ℕ) (X : Fin I.n → RV I v) : vec1 p1 ((c : RV I v) • X) = (c : KV I v) • vec1 p1 X := by
  funext i
  simp [vec1]

theorem second_coordinate_vector_nsmul {I : AutInst} {v : HeightOneSpectrum (𝓞 I.F)} (p1 : RV I v →+* KV I v)
    (c : ℕ) (X : Fin I.n → RV I v) : vec2 p1 ((c : RV I v) • X) = (c : KV I v) • vec2 p1 X := by
  funext i
  simp [vec2]

end PI.UnitaryGroupMassFormula.ScXuExists.BrB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondCoordinateVectorNsmul =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitUnitaryProjectionCompatibility =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitUnitaryProjectionCompatibility", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.LocSplitChiOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.AdelicLatticeToLocalLattices\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SecondCoordinateVectorNsmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.ScXuExists.BrB

open NumberField IsDedekindDomain Matrix PI.UnitaryGroupMassFormula.AdIndexEq PI.UnitaryGroupMassFormula.ScXuExists
open scoped TensorProduct
open Formalism.MainNotions.S PI.ScRefExists


theorem split_unitary_projection_compatibility : BridgeB := by
  intro I g r k e f z Rf _hH v _hv _hsum p1 hp1 T hT
  have hε : ∀ w ∈ LL I v, PI.FinKW.psiV I v Rf.ew • w ∈ LL I v := fun w hw =>
    PI.FinKW.LocTo.intAf_le_mulSet I v Rf.ew_int w hw
  have : Module.Finite I.F I.E := Module.finite_of_finrank_eq_succ I.cm.deg2
  have hdim : Module.finrank (KV I v) (RV I v) = 2 := by
    rw [Module.finrank_baseChange]; exact I.cm.deg2
  have hb := piHom_bijective hdim (sigV I v) p1 (sigV_alg I v) (sigV_sigV I v) hp1.1
    (PI.FinKW.psiV I v Rf.ew) hp1.2.1 hp1.2.2.1
  set π := piEquiv (sigV I v) p1 hb with hπdef
  have hπ : ∀ r, π (sigV I v r) = (π r).swap := piEquiv_sig _ _ (sigV_sigV I v) hb
  have hchar := mem_LL_iff I v _ p1 hp1 hb.1 hε
  obtain ⟨y, hy⟩ := (SplitGL.proj_bijective (sigV I v) π hπ _ (spl_herm_v I v) (spl_det_v I v)).2 T
  subst hy
  have hPm : (I.J.map (inclV I v)).map (SplitGL.p1 π) = Pm I v p1 := by ext i j; rfl

  have v1 : ∀ (y' : Formalism.UG.UJ (sigV I v) (I.J.map (inclV I v))) (X : Fin I.n → RV I v),
      vec1 p1 (((y' : GL (Fin I.n) (RV I v)) : Matrix (Fin I.n) (Fin I.n) (RV I v)) *ᵥ X) =
        ((SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y' : GL (Fin I.n) (KV I v)) : Matrix (Fin I.n) (Fin I.n) (KV I v)) *ᵥ
          vec1 p1 X := by
    intro y' X; funext i; exact RingHom.map_mulVec p1 _ _ i
  have v2 : ∀ (y' : Formalism.UG.UJ (sigV I v) (I.J.map (inclV I v))) (X : Fin I.n → RV I v),
      vec2 p1 (((y' : GL (Fin I.n) (RV I v)) : Matrix (Fin I.n) (Fin I.n) (RV I v)) *ᵥ X) =
        ((y' : GL (Fin I.n) (RV I v)) : Matrix (Fin I.n) (Fin I.n) (RV I v)).map (SplitGL.p2 π) *ᵥ
          vec2 p1 X := by
    intro y' X; funext i; exact RingHom.map_mulVec (p1.comp (sigV I v)) _ _ i
  have vp2 : ∀ (y' : Formalism.UG.UJ (sigV I v) (I.J.map (inclV I v))) (β β' : Fin I.n → KV I v),
      β' ᵥ* Pm I v p1 = (β ᵥ* Pm I v p1) ᵥ*
        (((SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y')⁻¹ : GL (Fin I.n) (KV I v)) : Matrix (Fin I.n) (Fin I.n) (KV I v)) →
      ((y' : GL (Fin I.n) (RV I v)) : Matrix (Fin I.n) (Fin I.n) (RV I v)).map (SplitGL.p2 π) *ᵥ β = β' := by
    intro y' β β' h
    rw [← hPm] at h
    exact second_projection_mulVec_eq (sigV I v) π hπ _ (spl_det_v I v) y' β β' h
  have extv : ∀ X X' : Fin I.n → RV I v, vec1 p1 X = vec1 p1 X' → vec2 p1 X = vec2 p1 X' → X = X' := by
    intro X X' h1 h2
    funext i
    apply hb.1
    exact Prod.ext (congrFun h1 i) (congrFun h2 i)

  have fwd : ∀ y' : Formalism.UG.UJ (sigV I v) (I.J.map (inclV I v)),
      (∀ x ∈ Lam1 I v p1, ((SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y' : GL (Fin I.n) (KV I v)) :
        Matrix (Fin I.n) (Fin I.n) (KV I v)) *ᵥ x ∈ Lam1 I v p1) →
      (∀ β ∈ Lam2 I v p1, ∃ β' ∈ Lam2 I v p1, β' ᵥ* Pm I v p1 = (β ᵥ* Pm I v p1) ᵥ*
        (((SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y')⁻¹ : GL (Fin I.n) (KV I v)) : Matrix (Fin I.n) (Fin I.n) (KV I v))) →
      ∀ w ∈ LL I v, ((y' : GL (Fin I.n) (RV I v)) : Matrix (Fin I.n) (Fin I.n) (RV I v)) *ᵥ w ∈ LL I v := by
    intro y' h1 h2 w hw
    rw [hchar] at hw ⊢
    obtain ⟨hw1, hw2⟩ := hw
    refine ⟨?_, ?_⟩
    · rw [v1]; exact h1 _ hw1
    · rw [v2]
      obtain ⟨β', hβ', eβ⟩ := h2 _ hw2
      rw [vp2 y' _ β' eβ]
      exact hβ'
  have hinvproj : SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y⁻¹ = (SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y)⁻¹ := map_inv _ y
  have fwdY := fwd y (fun x hx => (hT.1 x hx).1) (fun β hβ => (hT.2.1 β hβ).2)
  have fwdYi := fwd y⁻¹ (fun x hx => by rw [hinvproj]; exact (hT.1 x hx).2)
    (fun β hβ => by rw [hinvproj, inv_inv]; exact (hT.2.1 β hβ).1)
  have hYiY : ∀ X : Fin I.n → RV I v,
      (((y⁻¹ : Formalism.UG.UJ (sigV I v) (I.J.map (inclV I v))) : GL (Fin I.n) (RV I v)) :
        Matrix (Fin I.n) (Fin I.n) (RV I v)) *ᵥ
        (((y : GL (Fin I.n) (RV I v)) : Matrix (Fin I.n) (Fin I.n) (RV I v)) *ᵥ X) = X := by
    intro X
    rw [Matrix.mulVec_mulVec, ← Units.val_mul]
    have : ((y⁻¹ : Formalism.UG.UJ (sigV I v) (I.J.map (inclV I v))) : GL (Fin I.n) (RV I v)) *
        (y : GL (Fin I.n) (RV I v)) = 1 := by
      rw [← Subgroup.coe_mul, inv_mul_cancel, Subgroup.coe_one]
    rw [this, Units.val_one, Matrix.one_mulVec]
  have fixv : ∀ X : Fin I.n → RV I v,
      ((SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y : GL (Fin I.n) (KV I v)) : Matrix (Fin I.n) (Fin I.n) (KV I v)) *ᵥ
        vec1 p1 X = vec1 p1 X →
      (vec2 p1 X ᵥ* Pm I v p1) ᵥ* ((SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y : GL (Fin I.n) (KV I v)) :
        Matrix (Fin I.n) (Fin I.n) (KV I v)) = vec2 p1 X ᵥ* Pm I v p1 →
      ((y : GL (Fin I.n) (RV I v)) : Matrix (Fin I.n) (Fin I.n) (RV I v)) *ᵥ X = X := by
    intro X h1 h2
    apply extv
    · rw [v1, h1]
    · rw [v2]
      apply vp2
      symm
      calc (vec2 p1 X ᵥ* Pm I v p1) ᵥ*
            (((SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y)⁻¹ : GL (Fin I.n) (KV I v)) :
              Matrix (Fin I.n) (Fin I.n) (KV I v))
          = ((vec2 p1 X ᵥ* Pm I v p1) ᵥ* ((SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y :
              GL (Fin I.n) (KV I v)) : Matrix (Fin I.n) (Fin I.n) (KV I v))) ᵥ*
            (((SplitGL.proj (sigV I v) π (I.J.map (inclV I v)) y)⁻¹ : GL (Fin I.n) (KV I v)) :
              Matrix (Fin I.n) (Fin I.n) (KV I v)) := by rw [h2]
        _ = vec2 p1 X ᵥ* Pm I v p1 := by
          rw [Matrix.vecMul_vecMul, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.vecMul_one]
  refine ⟨(y : GL (Fin I.n) (RV I v)), y.2, ?_, ?_, ?_⟩
  ·
    intro x
    refine ⟨fun hx => fwdY x hx, fun hx => ?_⟩
    have := fwdYi _ hx
    rwa [hYiY] at this
  ·
    intro a
    obtain ⟨h1, h2, h3, h4⟩ := hT.2.2.1 a
    exact ⟨fixv _ h1 h3, fixv _ h2 h4⟩
  ·
    obtain ⟨w1, hw1, hw1e⟩ := hT.2.2.2.1
    obtain ⟨β, hβ, hβe⟩ := hT.2.2.2.2
    set w : Fin I.n → RV I v := fun i => π.symm (w1 i, β i) with hwdef
    have hw1' : vec1 p1 w = w1 := by
      funext i
      show SplitGL.p1 π (π.symm (w1 i, β i)) = w1 i
      simp [SplitGL.p1]
    have hw2' : vec2 p1 w = β := by
      funext i
      show SplitGL.p2 π (π.symm (w1 i, β i)) = β i
      simp [SplitGL.p2]
    have hwL : w ∈ LL I v := (hchar w).2 ⟨hw1' ▸ hw1, hw2' ▸ hβ⟩
    refine ⟨w, hwL, ?_⟩
    have hyi : ((y : GL (Fin I.n) (RV I v))⁻¹ : GL (Fin I.n) (RV I v)) =
        ((y⁻¹ : Formalism.UG.UJ (sigV I v) (I.J.map (inclV I v))) : GL (Fin I.n) (RV I v)) := rfl
    rw [hyi]
    apply extv
    · rw [first_coordinate_vector_sub, v1, first_coordinate_vector_nsmul, hw1', hinvproj]
      exact hw1e
    · rw [second_coordinate_vector_sub, v2, second_coordinate_vector_nsmul, hw2']
      rw [vp2 y⁻¹ _ (vec2 p1 (PI.FinKW.vecV I v Rf.z0) + (g : KV I v) • β)]
      · abel
      · rw [hinvproj, inv_inv, Matrix.add_vecMul, Matrix.smul_vecMul, ← hβe]
        abel

end PI.UnitaryGroupMassFormula.ScXuExists.BrB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitUnitaryProjectionCompatibility =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScXuExists =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScXuExists", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScXuExists\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.Assemble\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.LocalDataSatisfyLinearHypotheses\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitLoc\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismApprox.SplitUnitaryProjectionCompatibility\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem sc_xu_exists : PI.ScXuExists.Target :=
  PI.UnitaryGroupMassFormula.ScXuExists.scXuExists_of PI.UnitaryGroupMassFormula.ScXuExists.local_splitting_projection
    PI.UnitaryGroupMassFormula.ScXuExists.BrA.local_data_satisfy_linear_hypotheses PI.UnitaryGroupMassFormula.ScXuExists.BrB.split_unitary_projection_compatibility
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScXuExists =====
