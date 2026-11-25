module

public import Formalism.PeriodIntegrals.ExpTri
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SortedSpec
public import Mathlib.Analysis.Matrix.Spectrum
public import Mathlib.Analysis.Complex.Exponential
public import Mathlib.Analysis.Matrix.PosDef
public import Mathlib.Analysis.Normed.Algebra.MatrixExponential
public import Mathlib.Algebra.Star.UnitaryStarAlgAut
public import Mathlib.Analysis.SpecialFunctions.Exponential
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDefs
public import Formalism.PeriodIntegrals.LatCountG
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Assemble
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.PoincareSeriesSquareIntegrable
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MultiplicityMeasurability.MeasurableMult
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FoldMult
public import Formalism.PeriodIntegrals.FoldUnfold
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnfoldingIdentity.FoldUnfoldMain
public import Formalism.PeriodIntegrals.SymDist
public import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexificationHolds
public import Formalism.RealPlaceAnalysis.RealPlaceTaylor.IndefiniteUnitaryPreservesForm
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.ExplicitFormulaBoundHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.RowsProj
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.RowsBij
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdIndexEq
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PhSchurConv
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.RegUnitary
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PhConvProj
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PhProdConv
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionA
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionB
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionD

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ExpTriOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.PsumEqRange, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SpecExists, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ExpTriOfHorn, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.NormDetConjExp, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ProdLeOfInjective, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExpTri, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDet, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexOf, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatCountG, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientIntegralBound.QuotientLIntegralLeMultiplicityLIntegral, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesFinite, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoincareSeriesMeasurability.FoldL2DoubleCoset, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesMemLp, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SymmetricDistance.SymDistOf, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SymDist, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.LevelSubgroupProperties

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ExpTriOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ExpTriOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.ExpTri\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SortedSpec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset

noncomputable section

namespace PI.ET

theorem expTri_of (hS : SpecExists) (hHS : HSEq) (hH : Horn) (hA : AbelSq) (hE : EuclTri) :
    PI.ExpTri := by
  unfold PI.ExpTri
  intro n X Y Z U hX hY hZ hU hexp
  obtain ⟨ξ, hξ⟩ := hS n X hX
  obtain ⟨η, hη⟩ := hS n Y hY
  obtain ⟨ζ, hζ⟩ := hS n Z hZ
  obtain ⟨hmaj, hsum⟩ := hH n X Y Z U ξ η ζ hξ hη hζ hU hexp
  have hζ' := hζ
  obtain ⟨hanti, -⟩ := hζ'

  have hsq : ∑ i, ζ i ^ 2 ≤ ∑ i, (ξ i + η i) ^ 2 :=
    hA n ζ (fun i => ξ i + η i) hanti hmaj hsum
  rw [hHS n Z ζ hζ, hHS n X ξ hξ, hHS n Y η hη]
  exact le_trans (Real.sqrt_le_sqrt hsq) (hE n ξ η)

end PI.ET
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ExpTriOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.PsumEqRange =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.PsumEqRange", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SortedSpec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset

noncomputable section

namespace PI.ET

theorem euclTri : EuclTri := by
  intro n a b
  have hA : 0 ≤ ∑ i, a i ^ 2 := Finset.sum_nonneg fun i _ => sq_nonneg _
  have hB : 0 ≤ ∑ i, b i ^ 2 := Finset.sum_nonneg fun i _ => sq_nonneg _
  have hcs : ∑ i, a i * b i ≤ Real.sqrt (∑ i, a i ^ 2) * Real.sqrt (∑ i, b i ^ 2) :=
    Real.sum_mul_le_sqrt_mul_sqrt _ _ _
  rw [Real.sqrt_le_left (by positivity)]
  have e : ∑ i, (a i + b i) ^ 2 = ∑ i, a i ^ 2 + 2 * ∑ i, a i * b i + ∑ i, b i ^ 2 := by
    simp only [add_sq, Finset.sum_add_distrib, Finset.mul_sum]
    congr 1; congr 1; apply Finset.sum_congr rfl; intro i _; ring
  rw [e, add_sq, Real.sq_sqrt hA, Real.sq_sqrt hB]
  nlinarith

theorem abel_nat (a c : ℕ → ℝ) : ∀ (n : ℕ), (∀ i j, i ≤ j → j < n → a j ≤ a i) →
    (∀ k ≤ n, 0 ≤ ∑ i ∈ range k, c i) → ∀ t : ℝ, (∀ i < n, t ≤ a i) →
    t * ∑ i ∈ range n, c i ≤ ∑ i ∈ range n, a i * c i := by
  intro n
  induction n with
  | zero => intro _ _ t _; simp
  | succ n ih =>
    intro ha hc t ht
    have ih' := ih (fun i j hij hj => ha i j hij (by omega)) (fun k hk => hc k (by omega)) (a n)
      (fun i hi => ha i n hi.le (by omega))
    have hS : 0 ≤ ∑ i ∈ range (n + 1), c i := hc (n + 1) le_rfl
    have htn : t ≤ a n := ht n (by omega)
    rw [Finset.sum_range_succ] at hS ⊢
    rw [Finset.sum_range_succ]
    nlinarith

theorem psum_eq_range {n : ℕ} (f : Fin n → ℝ) (k : ℕ) (hk : k ≤ n) :
    psum f k = ∑ i ∈ range k, (fun m => if h : m < n then f ⟨m, h⟩ else 0) i := by
  unfold psum
  rw [Finset.sum_filter]
  have h1 : ∑ i : Fin n, (if i.val < k then f i else 0) =
      ∑ i : Fin n, (fun m => if m < k then (if h : m < n then f ⟨m, h⟩ else 0) else 0) i.val := by
    apply Finset.sum_congr rfl; intro i _; simp [i.isLt]
  rw [h1, Fin.sum_univ_eq_sum_range (fun m => if m < k then (if h : m < n then f ⟨m, h⟩ else 0) else 0) n,
    ← Finset.sum_filter]
  congr 1
  ext m; simp only [Finset.mem_filter, Finset.mem_range]; omega

theorem sum_eq_range {n : ℕ} (f : Fin n → ℝ) :
    ∑ i, f i = ∑ i ∈ range n, (fun m => if h : m < n then f ⟨m, h⟩ else 0) i := by
  rw [← Fin.sum_univ_eq_sum_range]
  apply Finset.sum_congr rfl; intro i _; simp [i.isLt]

theorem abelSq : AbelSq := by
  intro n a b ha hk htot

  set a' : ℕ → ℝ := fun m => if h : m < n then a ⟨m, h⟩ else 0 with ha'
  set c' : ℕ → ℝ := fun m => if h : m < n then (b ⟨m, h⟩ - a ⟨m, h⟩) else 0 with hc'
  have hc : ∀ k ≤ n, 0 ≤ ∑ i ∈ range k, c' i := by
    intro k hkn
    have := hk k hkn
    rw [psum_eq_range a k hkn, psum_eq_range b k hkn] at this
    have e : ∑ i ∈ range k, c' i = ∑ i ∈ range k, (fun m => if h : m < n then b ⟨m, h⟩ else 0) i -
        ∑ i ∈ range k, (fun m => if h : m < n then a ⟨m, h⟩ else 0) i := by
      rw [← Finset.sum_sub_distrib]; apply Finset.sum_congr rfl; intro m _
      simp only [hc']; split_ifs <;> simp
    linarith
  have hmono : ∀ i j, i ≤ j → j < n → a' j ≤ a' i := by
    intro i j hij hj
    simp only [ha', dif_pos hj, dif_pos (lt_of_le_of_lt hij hj)]
    exact ha (show (⟨i, lt_of_le_of_lt hij hj⟩ : Fin n) ≤ ⟨j, hj⟩ from hij)
  set t : ℝ := -∑ i ∈ range n, |a' i| with ht
  have htle : ∀ i < n, t ≤ a' i := by
    intro i hi
    have : |a' i| ≤ ∑ i ∈ range n, |a' i| :=
      Finset.single_le_sum (f := fun i => |a' i|) (fun j _ => abs_nonneg _) (Finset.mem_range.mpr hi)
    have := neg_abs_le (a' i)
    linarith
  have key := abel_nat a' c' n hmono hc t htle
  have hc0 : ∑ i ∈ range n, c' i = 0 := by
    have e1 : ∑ i, (b i - a i) = 0 := by rw [Finset.sum_sub_distrib, htot]; ring
    rw [sum_eq_range (fun i => b i - a i)] at e1
    rw [← e1]
  rw [hc0, mul_zero] at key
  have hab : 0 ≤ ∑ i, a i * (b i - a i) := by
    rw [sum_eq_range (fun i => a i * (b i - a i))]
    convert key using 2 with m
    simp only [ha', hc']; split_ifs <;> simp
  have h1 : ∑ i, a i ^ 2 ≤ ∑ i, a i * b i := by
    have : ∑ i, a i * (b i - a i) = ∑ i, a i * b i - ∑ i, a i ^ 2 := by
      rw [← Finset.sum_sub_distrib]; apply Finset.sum_congr rfl; intro i _; ring
    linarith
  have hcs : ∑ i, a i * b i ≤ Real.sqrt (∑ i, a i ^ 2) * Real.sqrt (∑ i, b i ^ 2) :=
    Real.sum_mul_le_sqrt_mul_sqrt _ _ _
  have hA : 0 ≤ ∑ i, a i ^ 2 := Finset.sum_nonneg fun i _ => sq_nonneg _
  have hB : 0 ≤ ∑ i, b i ^ 2 := Finset.sum_nonneg fun i _ => sq_nonneg _
  have x0 := Real.sqrt_nonneg (∑ i, a i ^ 2)
  have y0 := Real.sqrt_nonneg (∑ i, b i ^ 2)
  have hx := Real.sq_sqrt hA
  have hy := Real.sq_sqrt hB
  nlinarith [sq_nonneg (Real.sqrt (∑ i, a i ^ 2) - Real.sqrt (∑ i, b i ^ 2)),
    mul_nonneg x0 y0]

end PI.ET
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.PsumEqRange =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SpecExists =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SpecExists", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SortedSpec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Spectrum\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset

noncomputable section

namespace PI.ET

theorem specExists : SpecExists := by
  intro n A hA
  have hH : A.IsHermitian := hA
  set U : Matrix (Fin n) (Fin n) ℂ := (hH.eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ) with hU
  have hUU : U * star U = 1 := (Matrix.mem_unitaryGroup_iff).1 hH.eigenvectorUnitary.2
  have hspec := hH.spectral_theorem
  set l : Fin n → ℝ := hH.eigenvalues with hl

  let σ : Equiv.Perm (Fin n) := Tuple.sort (fun i => OrderDual.toDual (l i))
  have hmono : Monotone ((fun i => OrderDual.toDual (l i)) ∘ σ) := Tuple.monotone_sort _
  refine ⟨l ∘ σ, fun i j hij => hmono hij, U.submatrix id σ, ?_, ?_⟩
  · rw [Matrix.mem_unitaryGroup_iff, Matrix.star_eq_conjTranspose, Matrix.conjTranspose_submatrix,
      Matrix.submatrix_mul_equiv, ← Matrix.star_eq_conjTranspose, hUU, Matrix.submatrix_id_id]
  · have hD : Matrix.diagonal (fun i => ((l ∘ σ) i : ℂ)) =
        (Matrix.diagonal (fun i => (l i : ℂ))).submatrix σ σ := by
      rw [Matrix.submatrix_diagonal_equiv]
      rfl
    rw [hD, Matrix.conjTranspose_submatrix, Matrix.submatrix_mul_equiv, Matrix.submatrix_mul_equiv,
      Matrix.submatrix_id_id]
    conv_lhs => rw [hspec]
    rfl

theorem hsEq : HSEq := by
  intro n A d ⟨_, W, hW, hA⟩
  have hWW : star W * W = 1 := (Matrix.mem_unitaryGroup_iff').1 hW
  rw [Matrix.star_eq_conjTranspose] at hWW
  set D : Matrix (Fin n) (Fin n) ℂ := Matrix.diagonal fun i => (d i : ℂ) with hD
  have hDh : Dᴴ = D := by
    rw [hD, Matrix.diagonal_conjTranspose]
    congr 1
    funext i
    simp [Pi.star_apply]
  have hAh : Aᴴ = W * D * Wᴴ := by
    rw [hA, Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hDh,
      Matrix.mul_assoc]
  have key : (A * Aᴴ).trace = ∑ i, ((d i : ℂ)) ^ 2 := by
    rw [hAh, hA]
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc Wᴴ W, hWW, Matrix.one_mul, Matrix.trace_mul_comm, Matrix.mul_assoc,
      Matrix.mul_assoc, hWW, Matrix.mul_one, hD, Matrix.diagonal_mul_diagonal, Matrix.trace_diagonal]
    simp [sq]
  have lhs : (A * Aᴴ).trace = ((∑ i, ∑ j, ‖A i j‖ ^ 2 : ℝ) : ℂ) := by
    simp only [Matrix.trace, Matrix.diag, Matrix.mul_apply, Matrix.conjTranspose_apply]
    push_cast
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
    rw [Complex.star_def, Complex.mul_conj']
  have := lhs.symm.trans key
  exact_mod_cast this

end PI.ET
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SpecExists =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ExpTriOfHorn =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ExpTriOfHorn", "h": "module\n\npublic import Formalism.PeriodIntegrals.ExpTri\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SortedSpec\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ExpTriOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.PsumEqRange\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SpecExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.ET

theorem expTri_of_horn (hH : Horn) : PI.ExpTri :=
  expTri_of specExists hsEq hH abelSq euclTri

end PI.ET
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ExpTriOfHorn =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.NormDetConjExp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.NormDetConjExp", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SortedSpec\npublic import Mathlib.Analysis.Complex.Exponential\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.Star.UnitaryStarAlgAut\nimport Mathlib.Analysis.Matrix.Order\npublic import Mathlib.Analysis.SpecialFunctions.Exponential\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset
open scoped MatrixOrder ComplexOrder

noncomputable section

namespace PI.ET

namespace HornW

variable {n : ℕ}

lemma unit_star_mul {W : Matrix (Fin n) (Fin n) ℂ} (hW : W ∈ unitaryGroup (Fin n) ℂ) :
    Wᴴ * W = 1 := by
  exact Unitary.star_mul_self_of_mem hW

lemma unit_mul_star {W : Matrix (Fin n) (Fin n) ℂ} (hW : W ∈ unitaryGroup (Fin n) ℂ) :
    W * Wᴴ = 1 := by
  exact Unitary.mul_star_self_of_mem hW

lemma conj_mul_conj {W : Matrix (Fin n) (Fin n) ℂ} (hW : W ∈ unitaryGroup (Fin n) ℂ)
    (d e : Fin n → ℂ) :
    (W * diagonal d * Wᴴ) * (W * diagonal e * Wᴴ) = W * diagonal (fun i => d i * e i) * Wᴴ := by
  calc (W * diagonal d * Wᴴ) * (W * diagonal e * Wᴴ)
      = W * (diagonal d * (Wᴴ * W) * diagonal e) * Wᴴ := by simp only [Matrix.mul_assoc]
    _ = W * diagonal (fun i => d i * e i) * Wᴴ := by
      rw [unit_star_mul hW, Matrix.mul_one, diagonal_mul_diagonal]

lemma conj_herm (W : Matrix (Fin n) (Fin n) ℂ) (r : Fin n → ℝ) :
    (W * diagonal (fun i => (r i : ℂ)) * Wᴴ)ᴴ = W * diagonal (fun i => (r i : ℂ)) * Wᴴ := by
  rw [conjTranspose_mul, conjTranspose_mul, conjTranspose_conjTranspose, diagonal_conjTranspose,
    Matrix.mul_assoc]
  congr 3
  funext i
  rw [Pi.star_apply, Complex.star_def, Complex.conj_ofReal]

lemma exp_conj {W : Matrix (Fin n) (Fin n) ℂ} (hW : W ∈ unitaryGroup (Fin n) ℂ) (d : Fin n → ℝ) :
    NormedSpace.exp (W * diagonal (fun i => (d i : ℂ)) * Wᴴ) =
      W * diagonal (fun i => (Real.exp (d i) : ℂ)) * Wᴴ := by
  have hinv : W⁻¹ = Wᴴ := Matrix.inv_eq_left_inv (unit_star_mul hW)
  have hu : IsUnit W :=
    (Matrix.isUnit_iff_isUnit_det W).mpr (Matrix.isUnit_det_of_right_inverse (unit_mul_star hW))
  rw [← hinv, Matrix.exp_conj W _ hu, Matrix.exp_diagonal, Pi.exp_def]
  congr 3
  funext i
  rw [Complex.ofReal_exp, Complex.exp_eq_exp_ℂ]

lemma sq_conj {W : Matrix (Fin n) (Fin n) ℂ} (hW : W ∈ unitaryGroup (Fin n) ℂ) (d : Fin n → ℝ) :
    (W * diagonal (fun i => (Real.exp (d i) : ℂ)) * Wᴴ) *
        (W * diagonal (fun i => (Real.exp (d i) : ℂ)) * Wᴴ) =
      W * diagonal (fun i => (Real.exp (2 * d i) : ℂ)) * Wᴴ := by
  rw [conj_mul_conj hW]
  congr 3
  funext i
  rw [← Complex.ofReal_mul, ← Real.exp_add, two_mul]

lemma det_conj {W : Matrix (Fin n) (Fin n) ℂ} (hW : W ∈ unitaryGroup (Fin n) ℂ) (d : Fin n → ℂ) :
    (W * diagonal d * Wᴴ).det = ∏ i, d i := by
  have h : W.det * Wᴴ.det = 1 := by rw [← Matrix.det_mul, unit_mul_star hW, Matrix.det_one]
  rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_diagonal]
  linear_combination (∏ i, d i) * h

lemma norm_det_conj_exp {W : Matrix (Fin n) (Fin n) ℂ} (hW : W ∈ unitaryGroup (Fin n) ℂ)
    (d : Fin n → ℝ) :
    ‖(W * diagonal (fun i => (Real.exp (d i) : ℂ)) * Wᴴ).det‖ = Real.exp (∑ i, d i) := by
  rw [det_conj hW, norm_prod, Real.exp_sum]
  refine Finset.prod_congr rfl fun i _ => ?_
  rw [Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]

def emb {k : ℕ} (hk : k ≤ n) : Matrix (Fin n) (Fin k) ℂ :=
  Matrix.of fun i j => if i = Fin.castLE hk j then 1 else 0

lemma emb_compress {k : ℕ} (hk : k ≤ n) (f : Fin n → ℂ) :
    (emb hk)ᴴ * diagonal f * emb hk = diagonal (fun i => f (Fin.castLE hk i)) := by
  ext i j
  simp only [emb, Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.of_apply, diagonal_apply]
  simp [Finset.sum_ite_eq', (Fin.castLE_injective hk).eq_iff]
  rcases eq_or_ne i j with rfl | h
  · simp
  · simp [h, h.symm]

lemma emb_isom {k : ℕ} (hk : k ≤ n) : (emb hk)ᴴ * emb hk = 1 := by
  have h := emb_compress hk (fun _ => 1)
  simpa [Matrix.diagonal_one] using h

lemma compress_conj {W : Matrix (Fin n) (Fin n) ℂ} (hW : W ∈ unitaryGroup (Fin n) ℂ) {k : ℕ}
    (hk : k ≤ n) (f : Fin n → ℂ) :
    (W * emb hk)ᴴ * (W * diagonal f * Wᴴ) * (W * emb hk) =
      diagonal (fun i => f (Fin.castLE hk i)) := by
  rw [conjTranspose_mul]
  calc (emb hk)ᴴ * Wᴴ * (W * diagonal f * Wᴴ) * (W * emb hk)
      = (emb hk)ᴴ * ((Wᴴ * W) * diagonal f * (Wᴴ * W)) * emb hk := by simp only [Matrix.mul_assoc]
    _ = diagonal (fun i => f (Fin.castLE hk i)) := by
      rw [unit_star_mul hW, Matrix.one_mul, Matrix.mul_one, emb_compress]

lemma psum_eq {k : ℕ} (hk : k ≤ n) (f : Fin n → ℝ) :
    psum f k = ∑ i : Fin k, f (Fin.castLE hk i) := by
  unfold psum
  symm
  apply Finset.sum_nbij (fun i : Fin k => Fin.castLE hk i)
  · intro a _
    simp [a.isLt]
  · intro a _ b _ h
    exact Fin.castLE_injective hk h
  · intro b hb
    simp only [Finset.coe_filter, Finset.mem_univ, true_and, Set.mem_setOf_eq] at hb
    exact ⟨⟨b.val, hb⟩, by simp, Fin.ext (by simp)⟩
  · intro a _
    rfl

lemma psum_add (k : ℕ) (f g : Fin n → ℝ) :
    psum (fun i => f i + g i) k = psum f k + psum g k := by
  simp only [psum, Finset.sum_add_distrib]

lemma norm_det_diag_exp {k : ℕ} (hk : k ≤ n) (f : Fin n → ℝ) :
    ‖(diagonal (fun i : Fin k => (Real.exp (2 * f (Fin.castLE hk i)) : ℂ))).det‖ =
      Real.exp (2 * psum f k) := by
  rw [Matrix.det_diagonal, norm_prod]
  simp only [Complex.norm_real, Real.norm_eq_abs, Real.abs_exp]
  rw [psum_eq hk, Finset.mul_sum, Real.exp_sum]

lemma prod_exp_eq {k : ℕ} (hk : k ≤ n) (f : Fin n → ℝ) :
    ∏ i : Fin k, Real.exp (2 * f (Fin.castLE hk i)) = Real.exp (2 * psum f k) := by
  rw [psum_eq hk, Finset.mul_sum, Real.exp_sum]

lemma anti_exp {d : Fin n → ℝ} (hd : Antitone d) : Antitone (fun i => Real.exp (2 * d i)) :=
  fun i j hij => Real.exp_le_exp.mpr (by have := hd hij; linarith)

lemma isUnit_conj_exp {W : Matrix (Fin n) (Fin n) ℂ} (hW : W ∈ unitaryGroup (Fin n) ℂ)
    (d : Fin n → ℝ) : IsUnit (W * diagonal (fun i => (Real.exp (d i) : ℂ)) * Wᴴ).det := by
  rw [det_conj hW]
  exact isUnit_iff_ne_zero.mpr (Finset.prod_ne_zero_iff.mpr fun i _ =>
    Complex.ofReal_ne_zero.mpr (Real.exp_pos _).ne')

private lemma key_lemma' {k : ℕ} (B : Matrix (Fin n) (Fin k) ℂ) (hB : Function.Injective B.mulVec) :
    ∃ (V : Matrix (Fin n) (Fin k) ℂ) (P : Matrix (Fin k) (Fin k) ℂ), Vᴴ * V = 1 ∧ B = V * P := by
  have hG : (Bᴴ * B).PosDef := Matrix.PosDef.conjTranspose_mul_self B hB
  have hspec := hG.1.spectral_theorem
  rw [Unitary.conjStarAlgAut_apply] at hspec
  have hU1 := Unitary.star_mul_self_of_mem hG.1.eigenvectorUnitary.2
  have hU2 := Unitary.mul_star_self_of_mem hG.1.eigenvectorUnitary.2
  simp only [Matrix.star_eq_conjTranspose] at hspec hU1 hU2
  have hg : ∀ i, 0 < hG.1.eigenvalues i := hG.eigenvalues_pos
  set U : Matrix (Fin k) (Fin k) ℂ := (hG.1.eigenvectorUnitary : Matrix (Fin k) (Fin k) ℂ) with hU
  set g := hG.1.eigenvalues with hgdef
  let s : Fin k → ℂ := fun i => (((Real.sqrt (g i))⁻¹ : ℝ) : ℂ)
  let t : Fin k → ℂ := fun i => ((Real.sqrt (g i) : ℝ) : ℂ)
  have hst : (fun i => s i * t i) = fun _ => (1 : ℂ) := by
    funext i
    simp only [s, t]
    rw [← Complex.ofReal_mul, inv_mul_cancel₀ (Real.sqrt_pos.mpr (hg i)).ne', Complex.ofReal_one]
  have hsgs : (fun i => star s i * (RCLike.ofReal ∘ g) i * s i) = fun _ => (1 : ℂ) := by
    funext i
    have hs := Real.sqrt_pos.mpr (hg i)
    have hsq : Real.sqrt (g i) * Real.sqrt (g i) = g i := Real.mul_self_sqrt (hg i).le
    simp only [s, Pi.star_apply, Function.comp_apply, Complex.star_def, Complex.conj_ofReal]
    have key : (Real.sqrt (g i))⁻¹ * g i * (Real.sqrt (g i))⁻¹ = 1 := by
      rw [mul_comm _ (g i), mul_assoc, ← mul_inv, hsq, mul_inv_cancel₀ (hg i).ne']
    show (((Real.sqrt (g i))⁻¹ : ℝ) : ℂ) * ((g i : ℝ) : ℂ) * (((Real.sqrt (g i))⁻¹ : ℝ) : ℂ) = 1
    rw [← Complex.ofReal_mul, ← Complex.ofReal_mul, key, Complex.ofReal_one]
  refine ⟨B * U * diagonal s, diagonal t * Uᴴ, ?_, ?_⟩
  · rw [conjTranspose_mul, conjTranspose_mul]
    calc (diagonal s)ᴴ * (Uᴴ * Bᴴ) * (B * U * diagonal s)
        = (diagonal s)ᴴ * (Uᴴ * (Bᴴ * B) * U) * diagonal s := by simp only [Matrix.mul_assoc]
      _ = (diagonal s)ᴴ * ((Uᴴ * U) * diagonal (RCLike.ofReal ∘ g) * (Uᴴ * U)) * diagonal s := by
          rw [hspec]; simp only [Matrix.mul_assoc]
      _ = 1 := by
          rw [hU1, Matrix.one_mul, Matrix.mul_one, diagonal_conjTranspose, diagonal_mul_diagonal,
            diagonal_mul_diagonal, hsgs, diagonal_one]
  · calc B = B * (U * Uᴴ) := by rw [hU2, Matrix.mul_one]
      _ = B * U * diagonal (fun i => s i * t i) * Uᴴ := by
          rw [hst, diagonal_one, Matrix.mul_one, Matrix.mul_assoc]
      _ = B * U * diagonal s * (diagonal t * Uᴴ) := by
          rw [← diagonal_mul_diagonal]; simp only [Matrix.mul_assoc]

private lemma inv_smul_apply_smul_eq_of_smul_mem (hK : KyFanDet) {k : ℕ} (hk : k ≤ n) {p : Fin n → ℝ} (hp : Antitone p)
    (hp0 : ∀ i, 0 < p i) {W : Matrix (Fin n) (Fin n) ℂ} (hW : W ∈ unitaryGroup (Fin n) ℂ)
    (B : Matrix (Fin n) (Fin k) ℂ) (hB : Function.Injective B.mulVec) :
    ‖(Bᴴ * (W * diagonal (fun i => (p i : ℂ)) * Wᴴ) * B).det‖ ≤
      (∏ i : Fin k, p (Fin.castLE hk i)) * ‖(Bᴴ * B).det‖ := by
  obtain ⟨V, P, hV, rfl⟩ := key_lemma' B hB
  have h := hK n k hk p W V hp hp0 hW hV
  have e1 : (V * P)ᴴ * (W * diagonal (fun i => (p i : ℂ)) * Wᴴ) * (V * P) =
      Pᴴ * (Vᴴ * (W * diagonal (fun i => (p i : ℂ)) * Wᴴ) * V) * P := by
    rw [conjTranspose_mul]; simp only [Matrix.mul_assoc]
  have e2 : (V * P)ᴴ * (V * P) = Pᴴ * P := by
    rw [conjTranspose_mul]
    calc Pᴴ * Vᴴ * (V * P) = Pᴴ * (Vᴴ * V) * P := by simp only [Matrix.mul_assoc]
      _ = Pᴴ * P := by rw [hV, Matrix.mul_one]
  rw [e1, e2, Matrix.det_mul, Matrix.det_mul, Matrix.det_mul, norm_mul, norm_mul, norm_mul]
  have h0 : 0 ≤ ‖Pᴴ.det‖ * ‖P.det‖ := by positivity
  calc ‖Pᴴ.det‖ * ‖(Vᴴ * (W * diagonal (fun i => (p i : ℂ)) * Wᴴ) * V).det‖ * ‖P.det‖
      = ‖(Vᴴ * (W * diagonal (fun i => (p i : ℂ)) * Wᴴ) * V).det‖ * (‖Pᴴ.det‖ * ‖P.det‖) := by ring
    _ ≤ (∏ i : Fin k, p (Fin.castLE hk i)) * (‖Pᴴ.det‖ * ‖P.det‖) :=
        mul_le_mul_of_nonneg_right h h0

private lemma key_lemma_3 {k : ℕ} {B : Matrix (Fin n) (Fin k) ℂ} (L : Matrix (Fin k) (Fin n) ℂ)
    (hL : L * B = 1) : Function.Injective B.mulVec := by
  intro x y hxy
  have h1 := congrArg L.mulVec hxy
  simp only [Matrix.mulVec_mulVec, hL, Matrix.one_mulVec] at h1
  exact h1

lemma key (hK : KyFanDet) {Wx Wy Wz : Matrix (Fin n) (Fin n) ℂ}
    (hWx : Wx ∈ unitaryGroup (Fin n) ℂ) (hWy : Wy ∈ unitaryGroup (Fin n) ℂ)
    (hWz : Wz ∈ unitaryGroup (Fin n) ℂ) {ξ η ζ : Fin n → ℝ} (hξ : Antitone ξ) (hη : Antitone η)
    (hcc : (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ) *
        (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ) =
      (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) *
        ((Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) *
          (Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ)) *
        (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ))
    (k : ℕ) (hk : k ≤ n) :
    psum ζ k ≤ psum (fun i => ξ i + η i) k := by
  have hV : (Wz * emb hk)ᴴ * (Wz * emb hk) = 1 := by
    rw [conjTranspose_mul]
    calc (emb hk)ᴴ * Wzᴴ * (Wz * emb hk) = (emb hk)ᴴ * (Wzᴴ * Wz) * emb hk := by
          simp only [Matrix.mul_assoc]
      _ = 1 := by rw [unit_star_mul hWz, Matrix.mul_one, emb_isom]
  have hinj : Function.Injective ((Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * (Wz * emb hk)).mulVec := by
    apply key_lemma_3 ((Wz * emb hk)ᴴ * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ)⁻¹)
    calc (Wz * emb hk)ᴴ * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ)⁻¹ * ((Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * (Wz * emb hk)) = (Wz * emb hk)ᴴ * ((Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ)⁻¹ * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ)) * (Wz * emb hk) := by
          simp only [Matrix.mul_assoc]
      _ = 1 := by rw [Matrix.nonsing_inv_mul _ (isUnit_conj_exp hWy η), Matrix.mul_one, hV]
  have hA : ‖((Wz * emb hk)ᴴ * ((Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ) * (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ)) * (Wz * emb hk)).det‖ = Real.exp (2 * psum ζ k) := by
    rw [sq_conj hWz, compress_conj hWz hk, norm_det_diag_exp hk]
  rw [hcc] at hA
  have e1 : (Wz * emb hk)ᴴ * ((Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * ((Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) * (Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ)) * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ)) * (Wz * emb hk) =
      ((Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * (Wz * emb hk))ᴴ * ((Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) * (Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ)) * ((Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * (Wz * emb hk)) := by
    rw [conjTranspose_mul (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ), conj_herm]; simp only [Matrix.mul_assoc]
  rw [e1, sq_conj hWx] at hA
  have h2 := inv_smul_apply_smul_eq_of_smul_mem hK hk (anti_exp hξ) (fun i => Real.exp_pos _) hWx _ hinj
  rw [hA] at h2
  have e2 : ((Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * (Wz * emb hk))ᴴ * ((Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * (Wz * emb hk)) = (Wz * emb hk)ᴴ * ((Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ)) * (Wz * emb hk) := by
    rw [conjTranspose_mul (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ), conj_herm]; simp only [Matrix.mul_assoc]
  rw [e2, sq_conj hWy] at h2
  have h3 := hK n k hk _ Wy (Wz * emb hk) (anti_exp hη) (fun i => Real.exp_pos _) hWy hV
  rw [prod_exp_eq hk] at h2
  rw [prod_exp_eq hk] at h3
  have h4 : Real.exp (2 * psum ζ k) ≤ Real.exp (2 * psum ξ k) * Real.exp (2 * psum η k) :=
    h2.trans (mul_le_mul_of_nonneg_left h3 (Real.exp_pos _).le)
  rw [← Real.exp_add, Real.exp_le_exp] at h4
  rw [psum_add]
  linarith

end HornW


open HornW in
theorem horn_of (hK : KyFanDet) : Horn := by
  intro n X Y Z U ξ η ζ hX hY hZ hU hE
  obtain ⟨hξ, Wx, hWx, rfl⟩ := hX
  obtain ⟨hη, Wy, hWy, rfl⟩ := hY
  obtain ⟨hζ, Wz, hWz, rfl⟩ := hZ
  rw [HornW.exp_conj hWx, HornW.exp_conj hWy, HornW.exp_conj hWz] at hE
  have hcc : (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ) * (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ) = (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * ((Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) * (Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ)) * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) := by
    have h1 : ((Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ))ᴴ * ((Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ)) = (U * (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ))ᴴ * (U * (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ)) := by rw [hE]
    rw [conjTranspose_mul (Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ), conjTranspose_mul U (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ), HornW.conj_herm, HornW.conj_herm, HornW.conj_herm] at h1
    calc (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ) * (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ) = (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ) * (Uᴴ * U) * (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ) := by rw [HornW.unit_star_mul hU, Matrix.mul_one]
      _ = (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * (Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) * ((Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ)) := by rw [h1]; simp only [Matrix.mul_assoc]
      _ = (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) * ((Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) * (Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ)) * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ) := by simp only [Matrix.mul_assoc]
  refine ⟨fun k hk => HornW.key hK hWx hWy hWz hξ hη hcc k hk, ?_⟩
  have hd : ‖((Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) * (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ)).det‖ = ‖(U * (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ)).det‖ := by rw [hE]
  have hUd : ‖U.det‖ = 1 := by
    have h2 : ‖star U.det * U.det‖ = 1 := by
      rw [← Matrix.det_conjTranspose, ← Matrix.det_mul, HornW.unit_star_mul hU, Matrix.det_one, norm_one]
    rw [norm_mul, norm_star] at h2
    rcases mul_self_eq_one_iff.mp h2 with h | h
    · exact h
    · linarith [norm_nonneg U.det]
  rw [Matrix.det_mul (Wx * diagonal (fun i => (Real.exp (ξ i) : ℂ)) * Wxᴴ) (Wy * diagonal (fun i => (Real.exp (η i) : ℂ)) * Wyᴴ), Matrix.det_mul U (Wz * diagonal (fun i => (Real.exp (ζ i) : ℂ)) * Wzᴴ), norm_mul, norm_mul, HornW.norm_det_conj_exp hWx,
    HornW.norm_det_conj_exp hWy, HornW.norm_det_conj_exp hWz, hUd, one_mul, ← Real.exp_add] at hd
  rw [Finset.sum_add_distrib]
  exact (Real.exp_injective hd).symm

end PI.ET
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.NormDetConjExp =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ProdLeOfInjective =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ProdLeOfInjective", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.SortedSpec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset

noncomputable section

namespace PI.ET

theorem det_mul_rect {R : Type*} [CommRing R] {k n : ℕ}
    (A : Matrix (Fin k) (Fin n) R) (B : Matrix (Fin n) (Fin k) R) :
    (A * B).det = ∑ f : Fin k → Fin n, (∏ i, B (f i) i) * (A.submatrix id f).det := by
  simp only [det_apply, Matrix.mul_apply, Fintype.prod_sum, Finset.smul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun f _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun σ _ => ?_
  simp only [Finset.prod_mul_distrib, submatrix_apply, id, Units.smul_def, zsmul_eq_mul]
  ring

theorem sum_comp_perm {M : Type*} [AddCommMonoid M] {k n : ℕ} (F : (Fin k → Fin n) → M)
    (τ : Equiv.Perm (Fin k)) : ∑ f : Fin k → Fin n, F (fun i => f (τ i)) = ∑ f, F f := (Equiv.arrowCongr τ.symm (Equiv.refl (Fin n))).sum_comp F

theorem factorial_mul_det (k n : ℕ) (q : Fin n → ℂ) (V : Matrix (Fin n) (Fin k) ℂ) :
    (k.factorial : ℂ) * (Vᴴ * diagonal q * V).det =
      ∑ f : Fin k → Fin n, (∏ i, q (f i)) *
        ((V.submatrix f id).det * star (V.submatrix f id).det) := by
  have h2 : ∀ f : Fin k → Fin n, ((Vᴴ * diagonal q).submatrix id f).det =
      (∏ i, q (f i)) * star (V.submatrix f id).det := by
    intro f
    have he : (Vᴴ * diagonal q).submatrix id f = (V.submatrix f id)ᴴ * diagonal (fun i => q (f i)) := by
      ext a b
      simp [conjTranspose_apply, mul_diagonal, submatrix_apply]
    rw [he, det_mul, det_diagonal, det_conjTranspose, mul_comm]
  have h3 : ∀ (f : Fin k → Fin n) (τ : Equiv.Perm (Fin k)),
      (V.submatrix (fun i => f (τ i)) id).det = Equiv.Perm.sign τ * (V.submatrix f id).det := by
    intro f τ
    exact det_permute τ (V.submatrix f id)
  have hperm : ∀ τ : Equiv.Perm (Fin k),
      ∑ f : Fin k → Fin n, (∏ i, V (f i) i) * ((∏ i, q (f i)) * star (V.submatrix f id).det) =
        ∑ f : Fin k → Fin n, ((Equiv.Perm.sign τ : ℂ) * ∏ i, V (f (τ i)) i) *
          ((∏ i, q (f i)) * star (V.submatrix f id).det) := by
    intro τ
    rw [← sum_comp_perm (fun f : Fin k → Fin n =>
      (∏ i, V (f i) i) * ((∏ i, q (f i)) * star (V.submatrix f id).det)) τ]
    refine Finset.sum_congr rfl fun f _ => ?_
    simp only
    rw [h3 f τ, Equiv.prod_comp τ (fun i => q (f i)), star_mul', star_intCast]
    ring
  rw [det_mul_rect]
  simp_rw [h2]
  rw [show (k.factorial : ℂ) * ∑ f : Fin k → Fin n,
      (∏ i, V (f i) i) * ((∏ i, q (f i)) * star (V.submatrix f id).det) =
      ∑ τ : Equiv.Perm (Fin k), ∑ f : Fin k → Fin n,
      (∏ i, V (f i) i) * ((∏ i, q (f i)) * star (V.submatrix f id).det) by
    rw [Finset.sum_const, Finset.card_univ, Fintype.card_perm, Fintype.card_fin, nsmul_eq_mul]]
  rw [Finset.sum_congr rfl fun τ _ => hperm τ, Finset.sum_comm]
  refine Finset.sum_congr rfl fun f _ => ?_
  have hd : (V.submatrix f id).det = ∑ τ : Equiv.Perm (Fin k), (Equiv.Perm.sign τ : ℂ) * ∏ i, V (f (τ i)) i := by
    rw [det_apply']
    rfl
  rw [← Finset.sum_mul, ← hd]
  ring

theorem prod_le_of_injective {n k : ℕ} (hk : k ≤ n) (p : Fin n → ℝ) (hp : Antitone p)
    (hpos : ∀ i, 0 ≤ p i) (f : Fin k → Fin n) (hf : Function.Injective f) :
    ∏ i, p (f i) ≤ ∏ i : Fin k, p (Fin.castLE hk i) := by
  classical
  have hs : (Finset.univ.image f).card = k := by
    rw [Finset.card_image_of_injective _ hf, Finset.card_univ, Fintype.card_fin]
  set e := (Finset.univ.image f).orderEmbOfFin hs with he
  have h1 : ∏ i, p (f i) = ∏ j : Fin k, p (e j) := by
    rw [← Finset.prod_image (fun i _ j _ h => hf h), ← Finset.map_orderEmbOfFin_univ _ hs,
      Finset.prod_map]
    rfl
  have h3 : ∀ m (hm : m < k), m ≤ (e ⟨m, hm⟩ : ℕ) := by
    intro m
    induction m with
    | zero => intro _; exact Nat.zero_le _
    | succ m ih =>
      intro hm
      have hlt : e ⟨m, by omega⟩ < e ⟨m + 1, hm⟩ := e.strictMono (Fin.mk_lt_mk.2 (Nat.lt_succ_self m))
      have h' : (e ⟨m, by omega⟩ : ℕ) < e ⟨m + 1, hm⟩ := hlt
      have := ih (by omega)
      omega
  rw [h1]
  refine Finset.prod_le_prod₀ (fun j _ => hpos _) fun j _ => hp ?_
  rw [Fin.le_iff_val_le_val, Fin.val_castLE]
  exact h3 j.1 j.2

theorem kyFan_diag {n k : ℕ} (hk : k ≤ n) (p : Fin n → ℝ) (hp : Antitone p)
    (hpos : ∀ i, 0 < p i) (V : Matrix (Fin n) (Fin k) ℂ) (hV : Vᴴ * V = 1) :
    ‖(Vᴴ * diagonal (fun i => (p i : ℂ)) * V).det‖ ≤ ∏ i : Fin k, p (Fin.castLE hk i) := by
  have hT := factorial_mul_det k n (fun i => (p i : ℂ)) V
  have hU := factorial_mul_det k n (fun _ => (1 : ℂ)) V
  rw [diagonal_one, Matrix.mul_one, hV, det_one, mul_one] at hU
  simp only [Finset.prod_const_one, one_mul] at hU
  have hsq : ∀ f : Fin k → Fin n, (V.submatrix f id).det * star (V.submatrix f id).det =
      ((‖(V.submatrix f id).det‖ ^ 2 : ℝ) : ℂ) := by
    intro f
    rw [Complex.star_def, Complex.mul_conj']
    push_cast
    rfl
  simp_rw [hsq] at hU
  have hU' : (k.factorial : ℝ) = ∑ f : Fin k → Fin n, ‖(V.submatrix f id).det‖ ^ 2 := by
    exact_mod_cast hU
  set P := ∏ i : Fin k, p (Fin.castLE hk i)
  have hterm : ∀ f : Fin k → Fin n,
      ‖(∏ i, ((p (f i) : ℝ) : ℂ)) * ((V.submatrix f id).det * star (V.submatrix f id).det)‖ ≤
        P * ‖(V.submatrix f id).det‖ ^ 2 := by
    intro f
    rw [hsq, norm_mul, Complex.norm_real, Real.norm_of_nonneg (sq_nonneg _), norm_prod]
    simp only [Complex.norm_real, Real.norm_eq_abs, abs_of_pos (hpos _)]
    by_cases hf : Function.Injective f
    · exact mul_le_mul_of_nonneg_right (prod_le_of_injective hk p hp (fun i => (hpos i).le) f hf)
        (sq_nonneg _)
    · obtain ⟨i, j, hij, hne⟩ : ∃ i j, f i = f j ∧ i ≠ j := by
        by_contra hc
        exact hf fun i j h => by_contra fun hne => hc ⟨i, j, h, hne⟩
      have h0 : (V.submatrix f id).det = 0 := det_zero_of_row_eq hne (by ext c; simp [hij])
      simp [h0]
  have hfact : (0 : ℝ) < k.factorial := by exact_mod_cast Nat.factorial_pos k
  have hmain : (k.factorial : ℝ) * ‖(Vᴴ * diagonal (fun i => (p i : ℂ)) * V).det‖ ≤ P * k.factorial := by
    calc (k.factorial : ℝ) * ‖(Vᴴ * diagonal (fun i => (p i : ℂ)) * V).det‖
        = ‖(k.factorial : ℂ) * (Vᴴ * diagonal (fun i => (p i : ℂ)) * V).det‖ := by
          rw [norm_mul, Complex.norm_natCast]
      _ = ‖∑ f : Fin k → Fin n, (∏ i, ((p (f i) : ℝ) : ℂ)) *
          ((V.submatrix f id).det * star (V.submatrix f id).det)‖ := by rw [hT]
      _ ≤ ∑ f : Fin k → Fin n, ‖(∏ i, ((p (f i) : ℝ) : ℂ)) *
          ((V.submatrix f id).det * star (V.submatrix f id).det)‖ := norm_sum_le _ _
      _ ≤ ∑ f : Fin k → Fin n, P * ‖(V.submatrix f id).det‖ ^ 2 := Finset.sum_le_sum fun f _ => hterm f
      _ = P * k.factorial := by rw [← Finset.mul_sum, hU']
  nlinarith [norm_nonneg (Vᴴ * diagonal (fun i => (p i : ℂ)) * V).det]

theorem kyFanDet : KyFanDet := by
  intro n k hk p W V hp hpos hW hV
  have hW1 : Wᴴ * W = 1 := by
    have := (mem_unitaryGroup_iff').1 hW
    rwa [star_eq_conjTranspose] at this
  have hW2 : W * Wᴴ = 1 := by
    have := (mem_unitaryGroup_iff).1 hW
    rwa [star_eq_conjTranspose] at this
  have e1 : Vᴴ * (W * diagonal (fun i => (p i : ℂ)) * Wᴴ) * V =
      (Wᴴ * V)ᴴ * diagonal (fun i => (p i : ℂ)) * (Wᴴ * V) := by
    rw [conjTranspose_mul, conjTranspose_conjTranspose]
    simp only [Matrix.mul_assoc]
  have e2 : (Wᴴ * V)ᴴ * (Wᴴ * V) = 1 := by
    rw [conjTranspose_mul, conjTranspose_conjTranspose, Matrix.mul_assoc, ← Matrix.mul_assoc W,
      hW2, Matrix.one_mul, hV]
  rw [e1]
  exact kyFan_diag hk p hp hpos (Wᴴ * V) e2

end PI.ET
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ProdLeOfInjective =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExpTri =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExpTri", "h": "module\n\npublic import Formalism.PeriodIntegrals.ExpTri\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ExpTriOfHorn\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.NormDetConjExp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialTriangular.ProdLeOfInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem exp_triangle_inequality : PI.ExpTri := PI.ET.expTri_of_horn (PI.ET.horn_of PI.ET.kyFanDet)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExpTri =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDet =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDet", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix

namespace PI.UnitaryGroupMassFormula.LCG

namespace DetIdxW

variable {K : Type} [Field K] [NumberField K] {k : ℕ}

def ιc (K : Type) [Field K] [NumberField K] (k : ℕ) : (Fin k → 𝓞 K) →+ (Fin k → K) :=
  (LinearMap.compLeft (Algebra.linearMap (𝓞 K) K) (Fin k)).toAddMonoidHom

lemma ιc_apply (t : Fin k → 𝓞 K) (i : Fin k) : ιc K k t i = algebraMap (𝓞 K) K (t i) := rfl

lemma ιc_inj : Function.Injective (ιc K k) := fun x y h => funext fun c =>
  IsFractionRing.injective (𝓞 K) K (by have := congrFun h c; rwa [ιc_apply, ιc_apply] at this)

lemma oLat_eq : (oLat K k).toAddSubgroup = (⊤ : AddSubgroup (Fin k → 𝓞 K)).map (ιc K k) := by
  ext x
  simp [oLat, ιc, AddSubgroup.mem_map, LinearMap.mem_range]

def vm (M : Matrix (Fin k) (Fin k) K) : (Fin k → K) →+ (Fin k → K) where
  toFun s := s ᵥ* M
  map_zero' := Matrix.zero_vecMul M
  map_add' a b := by simp [Matrix.add_vecMul]

lemma vm_apply (M : Matrix (Fin k) (Fin k) K) (s : Fin k → K) : vm M s = s ᵥ* M := rfl

lemma idx_int (γ : Matrix (Fin k) (Fin k) (𝓞 K)) (hγ : γ.det ≠ 0) :
    ((oLat K k).toAddSubgroup.map (vm (γ.map (algebraMap (𝓞 K) K)))).relIndex (oLat K k).toAddSubgroup =
      (Algebra.norm ℤ γ.det).natAbs := by
  classical
  have hGinj : Function.Injective γᵀ.mulVecLin := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro t ht
    by_contra hne
    exact hγ (Matrix.det_transpose γ ▸ Matrix.exists_mulVec_eq_zero_iff.1 ⟨t, hne, ht⟩)
  let Gz : (Fin k → 𝓞 K) →ₗ[ℤ] (Fin k → 𝓞 K) := γᵀ.mulVecLin.restrictScalars ℤ
  have hGz : Function.Injective Gz := hGinj
  let e := LinearEquiv.ofInjective Gz hGz
  have hcard := Submodule.natAbs_det_equiv (LinearMap.range Gz) e
  have hcomp : (LinearMap.range Gz).subtype ∘ₗ
      (e : (Fin k → 𝓞 K) →+ LinearMap.range Gz).toIntLinearMap = Gz := by
    ext x
    rfl
  have hdetG : LinearMap.det γᵀ.mulVecLin = γ.det := by
    rw [← Matrix.det_transpose γ]
    exact LinearMap.det_toLin' γᵀ
  rw [hcomp, LinearMap.det_restrictScalars, hdetG] at hcard
  have hcomm : (vm (γ.map (algebraMap (𝓞 K) K))).comp (ιc K k) = (ιc K k).comp Gz.toAddMonoidHom := by
    refine AddMonoidHom.ext fun t => funext fun j => ?_
    simp only [AddMonoidHom.comp_apply, vm_apply, ιc_apply, LinearMap.toAddMonoidHom_coe]

    simp [Gz, Matrix.vecMul, dotProduct, ιc_apply, map_sum, map_mul, mul_comm]
  have hr : (⊤ : AddSubgroup (Fin k → 𝓞 K)).map Gz.toAddMonoidHom = (LinearMap.range Gz).toAddSubgroup := by
    ext x
    simp [LinearMap.mem_range]
  rw [oLat_eq, AddSubgroup.map_map, hcomm, ← AddSubgroup.map_map,
    AddSubgroup.relIndex_map_map_of_injective _ _ ιc_inj, AddSubgroup.relIndex_top_right, hr, hcard,
    AddSubgroup.index_eq_card]
  rfl

lemma natAbs_norm_real (x : 𝓞 K) :
    ((Algebra.norm ℤ x).natAbs : ℝ) = |((Algebra.norm ℚ (algebraMap (𝓞 K) K x) : ℚ) : ℝ)| := by
  have h1 : ((Algebra.norm ℤ x : ℤ) : ℚ) = Algebra.norm ℚ (algebraMap (𝓞 K) K x) := Algebra.coe_norm_int x
  rw [Nat.cast_natAbs, Int.cast_abs, ← h1, Rat.cast_intCast]

lemma vecMul_inj (N : Matrix (Fin k) (Fin k) K) (hN : N.det ≠ 0) {s s' : Fin k → K}
    (h : s ᵥ* N = s' ᵥ* N) : s = s' := by
  have hu : IsUnit N.det := isUnit_iff_ne_zero.mpr hN
  have := congrArg (fun v => v ᵥ* N⁻¹) h
  simpa only [Matrix.vecMul_vecMul, Matrix.mul_nonsing_inv _ hu, Matrix.vecMul_one] using this

end DetIdxW

open DetIdxW in
theorem determinant_index_formula : DetIdx := by
  intro K _ _ k N Q D hOQ hOQ0 hDO hDO0 hDQ
  classical
  by_cases hN : N.det = 0
  · rw [hN, Algebra.norm_zero, Rat.cast_zero, abs_zero]
    positivity
  set O := (oLat K k).toAddSubgroup with hOdef

  obtain ⟨⟨d, hd⟩, hdT⟩ := IsLocalization.exist_integer_multiples_of_finset (nonZeroDivisors (𝓞 K))
    (Finset.univ.image fun p : Fin k × Fin k => N p.1 p.2)
  have hd0 : d ≠ 0 := nonZeroDivisors.ne_zero hd
  set dK := algebraMap (𝓞 K) K d with hdKdef
  have hdK : dK ≠ 0 := by
    rw [hdKdef, Ne, ← map_zero (algebraMap (𝓞 K) K)]
    exact fun h => hd0 (IsFractionRing.injective (𝓞 K) K h)
  have hG : ∀ i j, ∃ x : 𝓞 K, algebraMap (𝓞 K) K x = dK * N i j := by
    intro i j
    obtain ⟨x, hx⟩ := hdT (N i j) (Finset.mem_image.2 ⟨(i, j), Finset.mem_univ _, rfl⟩)
    exact ⟨x, by rw [hx, Algebra.smul_def]⟩
  choose G hGe using hG
  let Gm : Matrix (Fin k) (Fin k) (𝓞 K) := Matrix.of G
  have hGmap : Gm.map (algebraMap (𝓞 K) K) = dK • N := by
    ext i j
    simp [Gm, hGe]
  have hdetG : algebraMap (𝓞 K) K Gm.det = dK ^ k * N.det := by
    rw [RingHom.map_det, RingHom.mapMatrix_apply, hGmap, Matrix.det_smul, Fintype.card_fin]
  have hGdet0 : Gm.det ≠ 0 := by
    intro h
    have h2 := hdetG
    rw [h, map_zero] at h2
    exact (mul_ne_zero (pow_ne_zero _ hdK) hN) h2.symm
  let Dm : Matrix (Fin k) (Fin k) (𝓞 K) := d • (1 : Matrix (Fin k) (Fin k) (𝓞 K))
  have hDmap : Dm.map (algebraMap (𝓞 K) K) = dK • (1 : Matrix (Fin k) (Fin k) K) := by
    ext i j
    by_cases h : i = j <;> simp [Dm, h, hdKdef]
  have hDdet : Dm.det = d ^ k := by simp [Dm]
  have hDdet0 : Dm.det ≠ 0 := by rw [hDdet]; exact pow_ne_zero _ hd0
  set T := vm (Gm.map (algebraMap (𝓞 K) K)) with hTdef
  set S := vm (Dm.map (algebraMap (𝓞 K) K)) with hSdef
  have hT : ∀ s, T s = dK • (s ᵥ* N) := by
    intro s; rw [hTdef, vm_apply, hGmap, Matrix.vecMul_smul]
  have hS : ∀ s, S s = dK • s := by
    intro s; rw [hSdef, vm_apply, hDmap, Matrix.vecMul_smul, Matrix.vecMul_one]
  have hTinj : Function.Injective T := by
    intro s s' h
    rw [hT, hT] at h
    exact vecMul_inj N hN (smul_right_injective _ hdK h)
  have hSinj : Function.Injective S := by
    intro s s' h
    rw [hS, hS] at h
    exact smul_right_injective _ hdK h
  set X := O.map T with hX
  set Y := Q.map T with hY
  set Z := D.map S with hZ
  set dO := O.map S with hdO
  have hXO : X.relIndex O = (Algebra.norm ℤ Gm.det).natAbs := idx_int Gm hGdet0
  have hdOO : dO.relIndex O = (Algebra.norm ℤ Dm.det).natAbs := idx_int Dm hDdet0
  have hXY : X.relIndex Y = O.relIndex Q := AddSubgroup.relIndex_map_map_of_injective _ _ hTinj
  have hZdO : Z.relIndex dO = D.relIndex O := AddSubgroup.relIndex_map_map_of_injective _ _ hSinj
  have hZle_dO : Z ≤ dO := AddSubgroup.map_mono hDO
  have hdO_le : dO ≤ O := by
    rintro _ ⟨s, hs, rfl⟩
    rw [hS]
    have := (oLat K k).smul_mem d hs
    rwa [← algebraMap_smul K d s] at this
  have hZO_le : Z ≤ O := hZle_dO.trans hdO_le
  have hZY : Z ≤ Y := by
    rintro _ ⟨r, hr, rfl⟩
    obtain ⟨s, hs, hsr⟩ := hDQ r hr
    exact ⟨s, hs, by rw [hT, hS, hsr]⟩
  have hZO : Z.relIndex O = D.relIndex O * (Algebra.norm ℤ Dm.det).natAbs := by
    rw [← AddSubgroup.relIndex_mul_relIndex (hHK := hZle_dO) (hKL := hdO_le), hZdO, hdOO]
  have hXY0 : X.relIndex Y ≠ 0 := hXY ▸ hOQ0
  have hXZ0 : X.relIndex Z ≠ 0 := mt (AddSubgroup.relIndex_eq_zero_of_le_right (hKL := hZY)) hXY0
  have hZO0 : Z.relIndex O ≠ 0 := by
    rw [hZO]
    exact mul_ne_zero hDO0 (Int.natAbs_ne_zero.mpr (Algebra.norm_ne_zero_iff.mpr hDdet0))
  have hmul : (X ⊓ Z).relIndex O = X.relIndex Z * Z.relIndex O := by
    rw [← AddSubgroup.relIndex_mul_relIndex (hHK := (inf_le_right : X ⊓ Z ≤ Z)) (hKL := hZO_le),
      AddSubgroup.inf_relIndex_right]
  have h1 : X.relIndex O ≤ (X ⊓ Z).relIndex O :=
    AddSubgroup.relIndex_le_of_le_left (hHK := (inf_le_left : X ⊓ Z ≤ X)) (hHL := by rw [hmul]; exact mul_ne_zero hXZ0 hZO0)
  have h2 : X.relIndex Z ≤ X.relIndex Y := AddSubgroup.relIndex_le_of_le_right (hKL := hZY) (hHL := hXY0)
  have key : X.relIndex O ≤ X.relIndex Y * Z.relIndex O := by
    rw [hmul] at h1
    exact h1.trans (Nat.mul_le_mul_right _ h2)
  rw [hXO, hXY, hZO] at key
  have keyR : ((Algebra.norm ℤ Gm.det).natAbs : ℝ) ≤
      (O.relIndex Q : ℝ) * ((D.relIndex O : ℝ) * ((Algebra.norm ℤ Dm.det).natAbs : ℝ)) := by
    exact_mod_cast key
  rw [natAbs_norm_real, natAbs_norm_real, hdetG, hDdet, map_pow, map_mul, map_pow] at keyR
  simp only [Rat.cast_mul, Rat.cast_pow, abs_mul, abs_pow] at keyR
  have ha : 0 < |((Algebra.norm ℚ dK : ℚ) : ℝ)| ^ k := by
    apply pow_pos
    rw [abs_pos, Rat.cast_ne_zero]
    exact Algebra.norm_ne_zero_iff.mpr hdK
  have : |((Algebra.norm ℚ dK : ℚ) : ℝ)| ^ k * |((Algebra.norm ℚ N.det : ℚ) : ℝ)| ≤
      |((Algebra.norm ℚ dK : ℚ) : ℝ)| ^ k * ((O.relIndex Q : ℝ) * (D.relIndex O : ℝ)) := by
    calc _ ≤ _ := keyR
      _ = _ := by ring
  exact le_of_mul_le_mul_left this ha

end PI.UnitaryGroupMassFormula.LCG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDet =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix

namespace PI.UnitaryGroupMassFormula.LCG

section SlopeTestRemainingChoices

variable {E : Type} [Field E] [StarRing E] {n : ℕ}

def sv (w : Fin n → E) : Fin n → E := fun i => starRingEnd E (w i)

theorem hform_dot (J : Matrix (Fin n) (Fin n) E) (w z : Fin n → E) :
    Formalism.UG.hform (starRingEnd E) J w z = (sv w ᵥ* J) ⬝ᵥ z := by
  unfold Formalism.UG.hform
  simp only [dotProduct, vecMul, sv, Finset.sum_mul]
  exact Finset.sum_comm

theorem hform_herm (J : Matrix (Fin n) (Fin n) E) (hJ : Formalism.UG.IsHerm (starRingEnd E) J) (w z : Fin n → E) :
    starRingEnd E (Formalism.UG.hform (starRingEnd E) J w z) = Formalism.UG.hform (starRingEnd E) J z w := by
  have hJ' : ∀ i j, starRingEnd E (J i j) = J j i := by
    intro i j
    have := congrFun (congrFun hJ j) i
    simpa [Formalism.UG.cT] using this
  unfold Formalism.UG.hform

  simp only [map_sum, map_mul, starRingEnd_self_apply, hJ']
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => ?_
  ring

end SlopeTestRemainingChoices

section Aux2

variable {E : Type} [Field E] [NumberField E]

theorem star_range [StarRing E] {x : E} (hx : x ∈ (algebraMap (𝓞 E) E).range) :
    starRingEnd E x ∈ (algebraMap (𝓞 E) E).range := by
  obtain ⟨o, rfl⟩ := RingHom.mem_range.mp hx
  have hint : IsIntegral ℤ (starRingEnd E (algebraMap (𝓞 E) E o)) := by
    first
    | exact (RingOfIntegers.isIntegral_coe o).map (starRingEnd E).toIntAlgHom
  exact RingHom.mem_range.mpr ⟨⟨_, hint⟩, rfl⟩

theorem mem_oLat {k : ℕ} (v : Fin k → E) :
    v ∈ oLat E k ↔ ∃ x : Fin k → 𝓞 E, (fun c => algebraMap (𝓞 E) E (x c)) = v := by
  unfold oLat
  first
  | (rw [LinearMap.mem_range]; rfl)

theorem dualL_oLat (k : ℕ) : dualL (oLat E k) = oLat E k := by
  ext t
  constructor
  · intro ht
    have ht' : ∀ s ∈ oLat E k, s ⬝ᵥ t ∈ (algebraMap (𝓞 E) E).range := ht
    have h1 : ∀ c, t c ∈ (algebraMap (𝓞 E) E).range := by
      intro c
      have hs : (Pi.single c 1 : Fin k → E) ∈ oLat E k := by
        rw [mem_oLat]
        exact ⟨Pi.single c 1, by funext d; by_cases h : d = c <;> simp [h]⟩
      have := ht' _ hs
      simpa [dotProduct, Pi.single_apply] using this
    choose x hx using fun c => RingHom.mem_range.mp (h1 c)
    rw [mem_oLat]
    exact ⟨x, funext hx⟩
  · intro ht
    show ∀ s ∈ oLat E k, s ⬝ᵥ t ∈ (algebraMap (𝓞 E) E).range
    intro s hs
    obtain ⟨x, rfl⟩ := (mem_oLat t).mp ht
    obtain ⟨y, rfl⟩ := (mem_oLat s).mp hs
    refine RingHom.mem_range.mpr ⟨∑ c, y c * x c, ?_⟩

    simp [dotProduct, map_sum, map_mul]

theorem card_quot_relIndex {M : Type*} [AddCommGroup M] [Module (𝓞 E) M] (S B : Submodule (𝓞 E) M) :
    Nat.card (B ⧸ S.comap B.subtype) = S.toAddSubgroup.relIndex B.toAddSubgroup := rfl

end Aux2

private theorem relIndex_comap_eq_of_le_range {G H : Type*} [AddGroup G] [AddGroup H] (f : G →+ H)
    (A B : AddSubgroup H) (hB : B ≤ f.range) : (A.comap f).relIndex (B.comap f) = A.relIndex B := by
  rw [AddSubgroup.relIndex_comap, AddSubgroup.map_comap_eq, inf_eq_right.2 hB]

private theorem sum_smul_mem_span_iff_of_linearIndependent {K : Type} [Field K] [NumberField K] {n k : ℕ} (v : Fin k → Fin n → K)
    (hv : LinearIndependent K v) (t : Fin k → K) :
    (∑ c, t c • v c) ∈ Submodule.span (𝓞 K) (Set.range v) ↔ ∀ c, t c ∈ (algebraMap (𝓞 K) K).range := by
  constructor
  · intro h
    obtain ⟨o, ho⟩ := (Submodule.mem_span_range_iff_exists_fun (𝓞 K)).1 h
    have h0 : ∑ c, (algebraMap (𝓞 K) K (o c) - t c) • v c = 0 := by
      simp only [sub_smul, Finset.sum_sub_distrib, algebraMap_smul]
      rw [ho, sub_self]
    have h1 := Fintype.linearIndependent_iff.1 hv _ h0
    intro c
    exact ⟨o c, sub_eq_zero.1 (h1 c)⟩
  · intro h
    refine Submodule.sum_mem _ fun c _ => ?_
    obtain ⟨o, ho⟩ := RingHom.mem_range.1 (h c)
    rw [← ho, algebraMap_smul]
    exact Submodule.smul_mem _ o (Submodule.subset_span ⟨c, rfl⟩)

theorem lattice_indexOf : IndexOf := by
  unfold IndexOf
  intro hDual hDet
  unfold IndexIneq
  intro I Λ hfg hspan hdual δ k u b' hu hδu hδspan hb' hb'li hperp hperpspan hidx1 hidx2
  let v : Fin k → Fin I.n → I.E := fun c => δ *ᵥ u c

  let ιL : (Fin k → I.E) →ₗ[𝓞 I.E] (Fin I.n → I.E) :=
    { toFun := fun t => ∑ c, t c • v c
      map_add' := fun s t => by simp only [Pi.add_apply, add_smul, Finset.sum_add_distrib]
      map_smul' := fun o t => by simp only [Pi.smul_apply, smul_assoc, RingHom.id_apply, Finset.smul_sum] }
  let β : (Fin k → I.E) →+ (Fin I.n → I.E) :=
    AddMonoidHom.mk' (fun s => ∑ a, starRingEnd I.E (s a) • b' a) (fun s t => by
      simp only [Pi.add_apply, map_add (f := _), add_smul, Finset.sum_add_distrib])
  have hι : ∀ t, ιL t = ∑ c, t c • v c := fun t => rfl
  have hβ : ∀ s, β s = ∑ a, starRingEnd I.E (s a) • b' a := fun s => rfl
  have hint_v : ∀ t : Fin k → I.E, ιL t ∈ Submodule.span (𝓞 I.E) (Set.range v) ↔ t ∈ oLat I.E k := by
    intro t
    rw [hι, sum_smul_mem_span_iff_of_linearIndependent v hδu t, mem_oLat]
    constructor
    · intro h
      choose x hx using fun c => RingHom.mem_range.1 (h c)
      exact ⟨x, funext hx⟩
    · rintro ⟨x, rfl⟩ c
      exact ⟨x c, rfl⟩
  have hint_b : ∀ s : Fin k → I.E, β s ∈ Submodule.span (𝓞 I.E) (Set.range b') ↔ s ∈ oLat I.E k := by
    intro s
    rw [hβ, sum_smul_mem_span_iff_of_linearIndependent b' hb'li, mem_oLat]
    constructor
    · intro h
      have h' : ∀ c, s c ∈ (algebraMap (𝓞 I.E) I.E).range := by
        intro c
        have h2 := star_range (h c)
        rwa [starRingEnd_self_apply] at h2
      choose x hx using fun c => RingHom.mem_range.1 (h' c)
      exact ⟨x, funext hx⟩
    · rintro ⟨x, rfl⟩ c
      exact star_range ⟨x c, rfl⟩
  have hrange_v : (imSub I Λ δ).toAddSubgroup ≤ ιL.toAddMonoidHom.range := by
    intro y hy
    simp only [imSub, Submodule.mem_toAddSubgroup, Submodule.mem_map] at hy
    obtain ⟨z, -, rfl⟩ := hy
    obtain ⟨g, hg⟩ := (Submodule.mem_span_range_iff_exists_fun I.E).1 (hδspan z)
    exact AddMonoidHom.mem_range.2 ⟨g, hg⟩
  have hrange_b : (perpSub I Λ δ).toAddSubgroup ≤ β.range := by
    intro w hw
    have hw' : PerpKer I δ w := by
      simp only [perpSub, Submodule.mem_toAddSubgroup, Submodule.mem_inf, Submodule.restrictScalars_mem] at hw
      exact hw.2
    obtain ⟨g, hg⟩ := (Submodule.mem_span_range_iff_exists_fun I.E).1 (hperpspan w hw')
    refine AddMonoidHom.mem_range.2 ⟨fun a => starRingEnd I.E (g a), ?_⟩
    rw [hβ]
    simpa only [starRingEnd_self_apply] using hg
  have hoL_v : (oLat I.E k).toAddSubgroup =
      (Submodule.span (𝓞 I.E) (Set.range v)).toAddSubgroup.comap ιL.toAddMonoidHom := by
    ext t
    simp only [Submodule.mem_toAddSubgroup, AddSubgroup.mem_comap, LinearMap.toAddMonoidHom_coe]
    exact (hint_v t).symm
  have hoL_b : (oLat I.E k).toAddSubgroup =
      (Submodule.span (𝓞 I.E) (Set.range b')).toAddSubgroup.comap β := by
    ext s
    simp only [Submodule.mem_toAddSubgroup, AddSubgroup.mem_comap]
    exact (hint_b s).symm
  let R : Submodule (𝓞 I.E) (Fin k → I.E) := (imSub I Λ δ).comap ιL
  let Q : AddSubgroup (Fin k → I.E) := (perpSub I Λ δ).toAddSubgroup.comap β
  have hRQ : R.toAddSubgroup = (imSub I Λ δ).toAddSubgroup.comap ιL.toAddMonoidHom := by
    ext t
    exact Iff.rfl
  have hidxv : idx I (imSub I Λ δ) v =
      (Submodule.span (𝓞 I.E) (Set.range v)).toAddSubgroup.relIndex (imSub I Λ δ).toAddSubgroup :=
    card_quot_relIndex _ _
  have hidxb : idx I (perpSub I Λ δ) b' =
      (Submodule.span (𝓞 I.E) (Set.range b')).toAddSubgroup.relIndex (perpSub I Λ δ).toAddSubgroup :=
    card_quot_relIndex _ _
  have hRidx : (oLat I.E k).toAddSubgroup.relIndex R.toAddSubgroup = idx I (imSub I Λ δ) v := by
    rw [hidxv, hoL_v, hRQ, relIndex_comap_eq_of_le_range _ _ _ hrange_v]
  have hQidx : (oLat I.E k).toAddSubgroup.relIndex Q = idx I (perpSub I Λ δ) b' := by
    rw [hidxb, hoL_b, relIndex_comap_eq_of_le_range _ _ _ hrange_b]
  have hoR : oLat I.E k ≤ R := by
    intro t ht
    obtain ⟨x, rfl⟩ := (mem_oLat t).1 ht
    show ιL _ ∈ imSub I Λ δ
    rw [hι]
    simp only [imSub, Submodule.mem_map, LinearMap.coe_restrictScalars, Matrix.mulVecLin_apply]
    refine ⟨∑ c, x c • u c, Submodule.sum_mem _ fun c _ => Submodule.smul_mem _ _ (hu c), ?_⟩
    rw [Matrix.mulVec_sum]
    refine Finset.sum_congr rfl fun c _ => ?_
    simp only [Matrix.mulVec_smul, algebraMap_smul, v]
  have hspanperp : Submodule.span (𝓞 I.E) (Set.range b') ≤ perpSub I Λ δ := by
    rw [Submodule.span_le]
    rintro _ ⟨a, rfl⟩
    simp only [perpSub, SetLike.mem_coe, Submodule.mem_inf, Submodule.restrictScalars_mem]
    exact ⟨hb' a, hperp a⟩
  have hoQ : (oLat I.E k).toAddSubgroup ≤ Q := by
    intro s hs
    show β s ∈ perpSub I Λ δ
    exact hspanperp ((hint_b s).2 hs)
  have hDo : dualL R ≤ oLat I.E k := by
    conv_rhs => rw [← dualL_oLat k]
    intro t ht
    show ∀ s ∈ oLat I.E k, s ⬝ᵥ t ∈ (algebraMap (𝓞 I.E) I.E).range
    intro s hs
    exact ht s (hoR hs)

  have hadd : ∀ x y z, hf I (x + y) z = hf I x z + hf I y z := by
    intro x y z
    simp only [hf, Formalism.UG.hform, Pi.add_apply, map_add (f := _), add_mul, Finset.sum_add_distrib]
  have hsmul : ∀ (a : I.E) x z, hf I (a • x) z = starRingEnd I.E a * hf I x z := by
    intro a x z
    simp only [hf, Formalism.UG.hform, Pi.smul_apply, smul_eq_mul, map_mul, mul_assoc]
    simp only [← Finset.mul_sum]
  have hsum : ∀ z (g : Fin k → I.E), hf I (∑ a, g a • b' a) z = ∑ a, starRingEnd I.E (g a) * hf I (b' a) z := by
    intro z g
    let φ : (Fin I.n → I.E) →+ I.E := AddMonoidHom.mk' (fun x => hf I x z) (fun x y => hadd x y z)
    have e := map_sum φ (fun a => g a • b' a) Finset.univ
    simp only [φ, AddMonoidHom.mk'_apply, hsmul] at e
    exact e

  have hkey : ∀ r ∈ (dualL R).toAddSubgroup, ∃ s ∈ Q, s ᵥ* pairM I b' u = r := by
    intro r hr
    have hr' : ∀ t ∈ R, t ⬝ᵥ r ∈ (algebraMap (𝓞 I.E) I.E).range := hr
    let G : (Fin I.n → I.E) →ₗ[I.E] (Fin k →₀ I.E) :=
      hδu.repr.comp ((Matrix.mulVecLin δ).codRestrict (Submodule.span I.E (Set.range v)) hδspan)
    have hG : ∀ z, δ *ᵥ z = ∑ c, G z c • v c := by
      intro z
      have e : Finsupp.linearCombination I.E v (hδu.repr ⟨δ *ᵥ z, hδspan z⟩) = δ *ᵥ z := by
        first
        | exact hδu.linearCombination_repr _
      rw [Finsupp.linearCombination_apply, Finsupp.sum_fintype _ _ (by simp)] at e
      exact e.symm
    have hGu : ∀ c, G (u c) = Finsupp.single c 1 := fun c => hδu.repr_eq_single c _ rfl
    let gL : (Fin I.n → I.E) →ₗ[I.E] I.E := ∑ c, r c • ((Finsupp.lapply c).comp G)
    have hgL : ∀ z, gL z = ∑ c, r c * G z c := by
      intro z
      simp only [gL, LinearMap.sum_apply, LinearMap.smul_apply, LinearMap.comp_apply,
        Finsupp.lapply_apply, smul_eq_mul]
    let ℓ : Fin I.n → I.E := fun j => gL (fun j' => if j = j' then 1 else 0)
    have hgℓ : ∀ z, gL z = ℓ ⬝ᵥ z := by
      intro z
      rw [LinearMap.pi_apply_eq_sum_univ gL z, dotProduct]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [smul_eq_mul, mul_comm]
    let m : Fin I.n → I.E := ℓ ᵥ* I.J⁻¹
    let w : Fin I.n → I.E := sv m
    have hJ : I.J⁻¹ * I.J = 1 := Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.2 I.J_det)
    have hw : ∀ z, hf I w z = gL z := by
      intro z
      have hsv : sv w = m := by
        funext i
        simp [w, sv]
      rw [hf, hform_dot, hsv, hgℓ]
      simp only [m, Matrix.vecMul_vecMul, hJ, Matrix.vecMul_one]
    have hwΛ : w ∈ Λ := by
      apply hdual
      intro y hy
      have e : hf I y w = starRingEnd I.E (hf I w y) := by
        simp only [hf]
        rw [hform_herm I.J I.J_herm w y]
      rw [e]
      apply star_range
      rw [hw, hgL]
      have htR : (fun c => G y c) ∈ R := by
        show ιL _ ∈ imSub I Λ δ
        rw [hι]
        simp only [imSub, Submodule.mem_map, LinearMap.coe_restrictScalars, Matrix.mulVecLin_apply]
        exact ⟨y, hy, hG y⟩
      have h2 := hr' _ htR
      rw [show (∑ c, r c * G y c) = ∑ c, G y c * r c from Finset.sum_congr rfl fun c _ => mul_comm _ _]
      exact h2
    have hwperp : PerpKer I δ w := by
      intro z hz
      rw [hw, hgL]
      have h0 : (Matrix.mulVecLin δ).codRestrict (Submodule.span I.E (Set.range v)) hδspan z = 0 :=
        Subtype.ext hz
      have hG0 : G z = 0 := by
        simp only [G, LinearMap.comp_apply, h0, map_zero]
      simp [hG0]
    have hwperpSub : w ∈ perpSub I Λ δ := by
      simp only [perpSub, Submodule.mem_inf, Submodule.restrictScalars_mem]
      exact ⟨hwΛ, hwperp⟩
    obtain ⟨g, hg⟩ := (Submodule.mem_span_range_iff_exists_fun I.E).1 (hperpspan w hwperp)
    refine ⟨fun a => starRingEnd I.E (g a), ?_, ?_⟩
    · show β _ ∈ perpSub I Λ δ
      rw [hβ]
      simp only [starRingEnd_self_apply]
      rw [hg]
      exact hwperpSub
    · funext c
      simp only [Matrix.vecMul, dotProduct, pairM, Matrix.of_apply]
      rw [← hsum (u c) g, hg, hw, hgL, hGu]
      simp [Finsupp.single_apply]
  have hd := hDual I.E k (oLat I.E k) R hoR (by rw [hRidx]; exact hidx1)
  rw [dualL_oLat] at hd
  have hmain := hDet I.E k (pairM I b' u) Q (dualL R).toAddSubgroup hoQ (by rw [hQidx]; exact hidx2)
    (fun x hx => hDo hx) hd.1 hkey
  have h3 : (dualL R).toAddSubgroup.relIndex (oLat I.E k).toAddSubgroup ≤ idx I (imSub I Λ δ) v := by
    rw [← hRidx]
    exact hd.2
  calc |((Algebra.norm ℚ (pairM I b' u).det : ℚ) : ℝ)|
      ≤ ((oLat I.E k).toAddSubgroup.relIndex Q : ℝ) *
          ((dualL R).toAddSubgroup.relIndex (oLat I.E k).toAddSubgroup : ℝ) := hmain
    _ ≤ (idx I (perpSub I Λ δ) b' : ℝ) * (idx I (imSub I Λ δ) v : ℝ) := by
        rw [hQidx]
        gcongr
    _ = _ := mul_comm _ _

end PI.UnitaryGroupMassFormula.LCG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexOf =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatCountG =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatCountG", "h": "module\n\npublic import Formalism.PeriodIntegrals.LatCountG\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.Assemble\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexDet\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.IndexOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem lattice_count_all : PI.LatCountG.LatCountAll :=
  PI.UnitaryGroupMassFormula.LCG.latCountAll_of_idx PI.UnitaryGroupMassFormula.LCG.determinant_index_formula PI.UnitaryGroupMassFormula.LCG.lattice_indexOf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatCountG =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientIntegralBound.QuotientLIntegralLeMultiplicityLIntegral =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientIntegralBound.QuotientLIntegralLeMultiplicityLIntegral", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.PoincareSeriesSquareIntegrable\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MultiplicityMeasurability.MeasurableMult\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped ENNReal NNReal

namespace PI.PoincareSeriesFinite.UnitaryGroupMassFormula

open Formalism.L2.SG.FoldBound Formalism.L2.SG.PoincareSeriesSquareIntegrable

theorem quotientLIntegral_le_multiplicityLIntegral {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    [T2Space G] [MeasurableSpace G] (μ : Measure G) (Γ : Subgroup G) (Ω : Set G)
    (h1 : (1 : G) ∈ Ω) (F : Set G) (Ph : G → ℂ) :
    quotientLIntegral μ F Ph ≤ multiplicityLIntegral μ Γ Ω F Ph := by
  unfold quotientLIntegral multiplicityLIntegral
  refine lintegral_mono fun y => ?_
  calc ‖Ph y‖ₑ = 1 * ‖Ph y‖ₑ := (one_mul _).symm
    _ ≤ mult Γ Ω y * ‖Ph y‖ₑ := by
      gcongr
      exact PI.FoldMult.UnitaryGroupMassFormula.one_le_mult Γ Ω h1 y

theorem poincareSeriesFinite (G : Type*) [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    [LocallyCompactSpace G] [SecondCountableTopology G] [T2Space G] [MeasurableSpace G]
    [BorelSpace G] (μ : Measure G) [μ.IsHaarMeasure] : PoincareSeriesFinite G μ := by
  intro Γ S hΓ hSΓ Ω hΩ h1 a Ph hPh F hF hL D hD x
  haveI := hΓ
  refine lt_of_le_of_lt (foldBound_holds G μ Γ S hΓ hSΓ Ω hΩ.isClosed.measurableSet a Ph hPh.1 hPh.2.1
    hPh.2.2 F hF D hD x) ?_
  refine ENNReal.mul_lt_top (ENNReal.mul_lt_top ENNReal.coe_lt_top
    (PI.FoldMult.UnitaryGroupMassFormula.mult_lt_top Γ Ω hΩ x)) ?_
  exact lt_of_le_of_lt (quotientLIntegral_le_multiplicityLIntegral μ Γ Ω h1 F Ph) hL

end PI.PoincareSeriesFinite.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientIntegralBound.QuotientLIntegralLeMultiplicityLIntegral =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesFinite =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesFinite", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.PoincareSeriesSquareIntegrable\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientIntegralBound.QuotientLIntegralLeMultiplicityLIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesFinite =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoincareSeriesMeasurability.FoldL2DoubleCoset =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoincareSeriesMeasurability.FoldL2DoubleCoset", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.PoincareSeriesSquareIntegrable\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FoldMult\npublic import Formalism.PeriodIntegrals.FoldUnfold\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnfoldingIdentity.FoldUnfoldMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Filter Topology
open scoped ENNReal NNReal

namespace PI.PoincareSeriesMemLp.UnitaryGroupMassFormula

open Formalism.L2.SG.FoldBound Formalism.L2.SG.PoincareSeriesSquareIntegrable

theorem measurable_poinc {G : Type*} [Group G] [MeasurableSpace G] [MeasurableMul G]
    (D : Set G) [Countable D] (Ph : G → ℂ) (hPh : Measurable Ph)
    (hs : ∀ x, (∑' δ : D, ‖Ph ((δ : G) * x)‖ₑ) ≠ ⊤) : Measurable (poinc D Ph) := by
  have hsum : ∀ x, Summable (fun δ : D => Ph ((δ : G) * x)) := by
    intro x
    have h1 : Summable (fun δ : D => ‖Ph ((δ : G) * x)‖₊) := by
      have h2 := hs x
      simp only [enorm_eq_nnnorm] at h2
      exact ENNReal.tsum_coe_ne_top_iff_summable.mp h2
    exact Summable.of_norm (by simpa using NNReal.summable_coe.mpr h1)
  refine measurable_of_tendsto_metrizable' (Filter.atTop : Filter (Finset D))
    (f := fun (s : Finset D) x => ∑ δ ∈ s, Ph ((δ : G) * x)) (fun s => ?_) ?_
  · exact Finset.measurable_sum _ (fun δ _ => hPh.comp (measurable_const_mul _))
  · rw [tendsto_pi_nhds]
    intro x
    unfold poinc
    exact (hsum x).hasSum

theorem fold_L2_double_coset (G : Type*) [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    [LocallyCompactSpace G] [SecondCountableTopology G] [T2Space G] [MeasurableSpace G]
    [BorelSpace G] (μ : Measure G) [μ.IsHaarMeasure] : PoincareSeriesMemLp G μ := by
  intro Γ S hΓ hSΓ Ω hΩ h1 a Ph hdat F hF hI D hD FΓ hFΓ
  obtain ⟨hPh, hinv, hrep⟩ := hdat
  have hcΓ : Countable Γ :=
    (TopologicalSpace.separableSpace_iff_countable (α := Γ)).mp inferInstance
  have hcD : Countable D := by
    have hinj : Function.Injective (fun d : D => (⟨d.1, hD.1 d.2⟩ : Γ)) := by
      intro d e h
      exact Subtype.ext (by simpa using congrArg Subtype.val h)
    exact hinj.countable
  obtain ⟨hm1, hmtop, hminv, hmmeas⟩ := overlapMultiplicityProperties G Γ hΓ Ω hΩ h1

  have hqI : quotientLIntegral μ F Ph ≤ multiplicityLIntegral μ Γ Ω F Ph := by
    unfold quotientLIntegral multiplicityLIntegral
    exact lintegral_mono fun y => le_mul_of_one_le_left (by simp) (hm1 y)
  have hq : quotientLIntegral μ F Ph < ⊤ := lt_of_le_of_lt hqI hI

  have hT : ∀ x : G, ∑' δ : D, ‖Ph ((δ : G) * x)‖ₑ ≤ (a : ℝ≥0∞) * mult Γ Ω x * quotientLIntegral μ F Ph :=
    fun x => foldBound_holds G μ Γ S hΓ hSΓ Ω hΩ.measurableSet a Ph hPh hinv hrep F hF D hD x
  have hTfin : ∀ x : G, ∑' δ : D, ‖Ph ((δ : G) * x)‖ₑ ≠ ⊤ := fun x =>
    ne_top_of_le_ne_top
      (ENNReal.mul_ne_top (ENNReal.mul_ne_top ENNReal.coe_ne_top (hmtop x).ne) hq.ne) (hT x)
  set g : G → ℝ≥0∞ := fun y => mult Γ Ω y * ‖Ph y‖ₑ with hgdef
  have hpt : ∀ x : G, ‖poinc D Ph x‖ₑ ^ 2
      ≤ (a : ℝ≥0∞) * quotientLIntegral μ F Ph * ∑' δ : D, g ((δ : G) * x) := by
    intro x
    have hP : ‖poinc D Ph x‖ₑ ≤ ∑' δ : D, ‖Ph ((δ : G) * x)‖ₑ := enorm_tsum_le_tsum_enorm
    have hg : ∑' δ : D, g ((δ : G) * x) = mult Γ Ω x * ∑' δ : D, ‖Ph ((δ : G) * x)‖ₑ := by
      rw [← ENNReal.tsum_mul_left]
      refine tsum_congr fun δ => ?_
      simp only [hgdef]
      rw [hminv δ (hD.1 δ.2) x]
    rw [hg, pow_two]
    calc ‖poinc D Ph x‖ₑ * ‖poinc D Ph x‖ₑ
        ≤ (∑' δ : D, ‖Ph ((δ : G) * x)‖ₑ) * ∑' δ : D, ‖Ph ((δ : G) * x)‖ₑ := mul_le_mul' hP hP
      _ ≤ (∑' δ : D, ‖Ph ((δ : G) * x)‖ₑ) * ((a : ℝ≥0∞) * mult Γ Ω x * quotientLIntegral μ F Ph) :=
          mul_le_mul' le_rfl (hT x)
      _ = (a : ℝ≥0∞) * quotientLIntegral μ F Ph * (mult Γ Ω x * ∑' δ : D, ‖Ph ((δ : G) * x)‖ₑ) := by ring

  have hgm : Measurable g := hmmeas.mul hPh.enorm
  have hginv : ∀ s ∈ S, ∀ y : G, g (s * y) = g y := by
    intro s hs y
    simp only [hgdef]
    rw [hminv s (hSΓ hs) y, hinv s hs y]
  have hunf : (∫⁻ x in FΓ, ∑' δ : D, g ((δ : G) * x) ∂μ) = multiplicityLIntegral μ Γ Ω F Ph :=
    _root_.PI.FoldUnfold.UnitaryGroupMassFormula.foldUnfold_main G μ Γ S hSΓ F hF FΓ hFΓ D hD g hgm hginv
  have hbound : (∫⁻ x in FΓ, ‖poinc D Ph x‖ₑ ^ 2 ∂μ)
      ≤ (a : ℝ≥0∞) * quotientLIntegral μ F Ph * multiplicityLIntegral μ Γ Ω F Ph := by
    calc (∫⁻ x in FΓ, ‖poinc D Ph x‖ₑ ^ 2 ∂μ)
        ≤ ∫⁻ x in FΓ, (a : ℝ≥0∞) * quotientLIntegral μ F Ph * ∑' δ : D, g ((δ : G) * x) ∂μ :=
          lintegral_mono hpt
      _ = (a : ℝ≥0∞) * quotientLIntegral μ F Ph * ∫⁻ x in FΓ, ∑' δ : D, g ((δ : G) * x) ∂μ :=
          lintegral_const_mul' _ _ (ENNReal.mul_ne_top ENNReal.coe_ne_top hq.ne)
      _ = (a : ℝ≥0∞) * quotientLIntegral μ F Ph * multiplicityLIntegral μ Γ Ω F Ph := by rw [hunf]

  have hlast : (a : ℝ≥0∞) * quotientLIntegral μ F Ph * multiplicityLIntegral μ Γ Ω F Ph
      ≤ (a : ℝ≥0∞) * multiplicityLIntegral μ Γ Ω F Ph ^ 2 := by
    rw [pow_two, ← mul_assoc]
    exact mul_le_mul' (mul_le_mul' le_rfl hqI) le_rfl

  have hfin : (a : ℝ≥0∞) * quotientLIntegral μ F Ph * multiplicityLIntegral μ Γ Ω F Ph < ⊤ :=
    ENNReal.mul_lt_top (ENNReal.mul_lt_top ENNReal.coe_lt_top hq) hI
  have hPm : Measurable (poinc D Ph) := measurable_poinc D Ph hPh hTfin
  refine ⟨?_, hbound, hlast⟩
  change eLpNorm (poinc D Ph) 2 (μ.restrict FΓ) < ∞
  rw [eLpNorm_lt_top_iff_lintegral_rpow_eNorm_lt_top (by norm_num) (by norm_num)
    hPm.aestronglyMeasurable]
  have h2 : ∀ x, ‖poinc D Ph x‖ₑ ^ ((2 : ℝ≥0∞).toReal) = ‖poinc D Ph x‖ₑ ^ 2 := by
    intro x
    rw [ENNReal.toReal_ofNat, ← ENNReal.rpow_natCast]
    norm_num
  simp_rw [h2]
  exact lt_of_le_of_lt hbound hfin

end PI.PoincareSeriesMemLp.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoincareSeriesMeasurability.FoldL2DoubleCoset =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesMemLp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesMemLp", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.PoincareSeriesSquareIntegrable\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoincareSeriesMeasurability.FoldL2DoubleCoset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesMemLp =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SymmetricDistance.SymDistOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SymmetricDistance.SymDistOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.SymDist\npublic import Formalism.PeriodIntegrals.ExpTri\npublic import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexificationHolds\npublic import Formalism.RealPlaceAnalysis.RealPlaceTaylor.IndefiniteUnitaryPreservesForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

noncomputable section

namespace PI.SymDistWork

open Formalism.REAL

variable {n : ℕ}

lemma kset_inv {ε : Fin n → Bool} {k : Matrix (Fin n) (Fin n) ℂ} (hk : k ∈ Kset ε) :
    kᴴ * k = 1 ∧ k * kᴴ = 1 := by
  exact ⟨Matrix.mem_unitaryGroup_iff'.mp hk.1, Matrix.mem_unitaryGroup_iff.mp hk.1⟩

lemma kset_ct {ε : Fin n → Bool} {k : Matrix (Fin n) (Fin n) ℂ} (hk : k ∈ Kset ε) :
    kᴴ ∈ Kset ε := by
  have hJ : (Jm ε)ᴴ = Jm ε := by
    unfold Jm
    rw [Matrix.diagonal_conjTranspose]
    congr 1
    funext a
    by_cases hεa : ε a = true <;> simp [hεa]
  have h2 := congrArg Matrix.conjTranspose hk.2
  simp only [Matrix.conjTranspose_mul, hJ] at h2
  exact ⟨Unitary.star_mem hk.1, h2.symm⟩

lemma symD_eq {ε : Fin n → Bool} (g : UJ ε) {k X : Matrix (Fin n) (Fin n) ℂ} (hk : k ∈ Kset ε)
    (hX : inP ε X)
    (hg : ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) = k * NormedSpace.exp X) :
    PI.symD ε g = Real.sqrt (hs X) := by
  unfold PI.symD
  have hset : {t | ∃ k' X' : Matrix (Fin n) (Fin n) ℂ, k' ∈ Kset ε ∧ inP ε X' ∧
      ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) = k' * NormedSpace.exp X' ∧
      t = Real.sqrt (hs X')} = {Real.sqrt (hs X)} := by
    ext t
    simp only [Set.mem_setOf_eq, Set.mem_singleton_iff]
    constructor
    · rintro ⟨k', X', hk', hX', hg', rfl⟩
      have := polar_decomposition_unique k' k X' X hk' hk hX' hX (hg'.symm.trans hg)
      rw [this.2]
    · rintro rfl
      exact ⟨k, X, hk, hX, hg, rfl⟩
  rw [hset]
  exact csInf_singleton _

lemma inUJ_coe {ε : Fin n → Bool} (g : UJ ε) :
    inUJ ε ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) := by
  exact g.2

theorem symDist_of (hE : PI.ExpTri) : PI.SymDist := by
  intro n ε g h
  have hpol : ∀ x : UJ ε, ∃ k X, k ∈ Kset ε ∧ inP ε X ∧
      ((x : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) = k * NormedSpace.exp X := by
    intro x
    refine ⟨((x : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) *
      NormedSpace.exp (-polarLog ((x : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)),
      polarLog _, mul_exp_neg_polarLog_mem_compact (inUJ_coe x), polarLog_mem_hermitian_part (inUJ_coe x), ?_⟩
    rw [Matrix.mul_assoc, matrix_exp_neg_mul_exp, Matrix.mul_one]
  have hUJmul : ∀ A B : Matrix (Fin n) (Fin n) ℂ, inUJ ε A → inUJ ε B → inUJ ε (A * B) := by
    intro A B hA hB
    unfold inUJ at *
    rw [Matrix.conjTranspose_mul]
    calc Bᴴ * Aᴴ * Jm ε * (A * B) = Bᴴ * (Aᴴ * Jm ε * A) * B := by simp only [Matrix.mul_assoc]
      _ = Jm ε := by rw [hA, hB]
  have hUJk : ∀ k, k ∈ Kset ε → inUJ ε k := by
    intro k hk
    unfold inUJ
    rw [Matrix.mul_assoc, ← hk.2, ← Matrix.mul_assoc, (kset_inv hk).1, Matrix.one_mul]
  have hKmul : ∀ a b, a ∈ Kset ε → b ∈ Kset ε → a * b ∈ Kset ε := by
    intro a b ha hb
    refine ⟨Submonoid.mul_mem _ ha.1 hb.1, ?_⟩
    rw [Matrix.mul_assoc, hb.2, ← Matrix.mul_assoc, ha.2, Matrix.mul_assoc]
  have hcancel : ∀ k, k ∈ Kset ε → ∀ X : Matrix (Fin n) (Fin n) ℂ, kᴴ * (k * X) = X := by
    intro k hk X
    rw [← Matrix.mul_assoc, (kset_inv hk).1, Matrix.one_mul]
  obtain ⟨k1, X1, hk1, hX1, hg1⟩ := hpol g
  obtain ⟨k2, X2, hk2, hX2, hh1⟩ := hpol h
  obtain ⟨hk2a, hk2b⟩ := kset_inv hk2
  let u2 : (Matrix (Fin n) (Fin n) ℂ)ˣ := ⟨k2, k2ᴴ, hk2b, hk2a⟩
  have hexpc : NormedSpace.exp (k2ᴴ * X1 * k2) = k2ᴴ * NormedSpace.exp X1 * k2 :=
    Matrix.exp_units_conj' u2 X1
  have hconj : NormedSpace.exp X1 * k2 = k2 * NormedSpace.exp (k2ᴴ * X1 * k2) := by
    rw [hexpc, ← Matrix.mul_assoc, ← Matrix.mul_assoc, hk2b, Matrix.one_mul]
  have hgh : (((g * h : UJ ε) : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) =
      (k1 * k2) * (NormedSpace.exp (k2ᴴ * X1 * k2) * NormedSpace.exp X2) := by
    rw [Subgroup.coe_mul, Units.val_mul, hg1, hh1]
    calc k1 * NormedSpace.exp X1 * (k2 * NormedSpace.exp X2)
        = k1 * (NormedSpace.exp X1 * k2) * NormedSpace.exp X2 := by simp only [Matrix.mul_assoc]
      _ = _ := by rw [hconj]; simp only [Matrix.mul_assoc]
  have hM : inUJ ε (NormedSpace.exp (k2ᴴ * X1 * k2) * NormedSpace.exp X2) := by
    have e : NormedSpace.exp (k2ᴴ * X1 * k2) * NormedSpace.exp X2 =
        (k2ᴴ * k1ᴴ) * (((g * h : UJ ε) : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) := by
      rw [hgh]
      simp only [Matrix.mul_assoc, hcancel _ hk1, hcancel _ hk2]
    rw [e]
    exact hUJmul _ _ (hUJmul _ _ (hUJk _ (kset_ct hk2)) (hUJk _ (kset_ct hk1))) (inUJ_coe _)
  have hk3 := mul_exp_neg_polarLog_mem_compact hM
  have hX3 := polarLog_mem_hermitian_part hM
  have hM3 : NormedSpace.exp (k2ᴴ * X1 * k2) * NormedSpace.exp X2 =
      (NormedSpace.exp (k2ᴴ * X1 * k2) * NormedSpace.exp X2 *
        NormedSpace.exp (-polarLog (NormedSpace.exp (k2ᴴ * X1 * k2) * NormedSpace.exp X2))) *
      NormedSpace.exp (polarLog (NormedSpace.exp (k2ᴴ * X1 * k2) * NormedSpace.exp X2)) := by
    rw [Matrix.mul_assoc _ (NormedSpace.exp (-_)), matrix_exp_neg_mul_exp, Matrix.mul_one]
  have hYh : (k2ᴴ * X1 * k2)ᴴ = k2ᴴ * X1 * k2 := by
    rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose,
      hermitian_of_mem_hermitian_part hX1, Matrix.mul_assoc]
  have htri := hE n (k2ᴴ * X1 * k2) X2 _ _ hYh (hermitian_of_mem_hermitian_part hX2) (hermitian_of_mem_hermitian_part hX3) hk3.1 hM3
  have hsY : hs (k2ᴴ * X1 * k2) = hs X1 := by
    rw [((hermitian_small_ball n ε).2 (k2ᴴ * X1) k2 hk2).1, ((hermitian_small_ball n ε).2 X1 k2ᴴ (kset_ct hk2)).2]
  have hd1 := symD_eq g hk1 hX1 hg1
  have hd2 := symD_eq h hk2 hX2 hh1
  have hd3 := symD_eq (g * h) (hKmul _ _ (hKmul _ _ hk1 hk2) hk3) hX3 (by
    rw [hgh, Matrix.mul_assoc (k1 * k2), Matrix.mul_assoc (NormedSpace.exp (k2ᴴ * X1 * k2) * NormedSpace.exp X2),
      matrix_exp_neg_mul_exp, Matrix.mul_one])
  rw [hd1, hd2, hd3]
  have e2 : Real.sqrt (hs (k2ᴴ * X1 * k2)) = Real.sqrt (hs X1) := by rw [hsY]
  rw [← e2]
  exact htri

end PI.SymDistWork

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SymmetricDistance.SymDistOf =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SymDist =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SymDist", "h": "module\n\npublic import Formalism.PeriodIntegrals.SymDist\npublic import Formalism.PeriodIntegrals.ExpTri\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SymmetricDistance.SymDistOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem symDist_of : PI.ExpTri → PI.SymDist := PI.SymDistWork.symDist_of
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SymDist =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.LevelSubgroupProperties =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.LevelSubgroupProperties", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.PoincareSeriesSquareIntegrable\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.ExplicitFormulaBoundHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.RowsProj\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.RowsBij\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary\npublic import Formalism.PeriodIntegrals.LatCountG\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.RegUnitary\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdIndexEq\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExpTri\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatCountG\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PhConvProj\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PhProdConv\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PhSchurConv\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesFinite\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesMemLp\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SymDist\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionA\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionB\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Formalism.MainNotions.S

namespace Formalism.L2.SG.Closed

theorem SchurConv_holds : Formalism.L2.SG.ProjRows.SchurConv := schur_orthogonality_idempotent
theorem ConvProj_holds : Formalism.L2.SG.ProjRows.ConvProj := convolution_projection
theorem ProdConv_holds : Formalism.L2.SG.ProjRows.ProdConv := isConvIdempotent_pi
theorem ProjRowsR_holds : Formalism.L2.SG.ProjRows.ProjRowsR :=
  Formalism.L2.SG.ProjRows.projRowsR_of SchurConv_holds ConvProj_holds ProdConv_holds _root_.Formalism.L2.SG.Pf.regular_representation_unitary

theorem GfUnimod_holds : Formalism.L2.SG.Pf.GfUnimod := fun I μf _ _ =>
  (PI.WAU.adUnimod_of PI.WAU.kg_subgroup PI.WAU.maximal_compact_isCompact PI.WAU.compact_countable
    PI.adelic_index_eq) I μf inferInstance

theorem UnimodGf_holds : Formalism.L2.SG.Pf.UnimodGf := GfUnimod_holds

theorem AutKCompact_holds : Formalism.L2.SG.Pf.AutKCompact := PI.WAU.maximal_compact_isCompact

theorem RowsBij_holds : Formalism.L2.SG.RowsDef.RowsBij :=
  Formalism.L2.SG.Pf.rows_bijective ProjRowsR_holds UnimodGf_holds

theorem level_subgroup_properties {D : Formalism.BasicNotions.D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) : X.LevelSubgroupNormalized :=
  Formalism.L2.SG.Pf.levelSubgroupNormalized_of_compact X AutKCompact_holds

section Count

def latSubEquiv (I : AutInst) (x : I.GA) : PI.LatCountG.Sub I x ≃ Formalism.L2.SG.LitS.Size.Sub I x where
  toFun s := ⟨s.j, s.j_pos, s.b, s.b_ind, s.B, s.B_lat, s.b_mem, s.B_span⟩
  invFun s := ⟨s.j, s.j_pos, s.b, s.b_ind, s.B, s.B_lat, s.b_mem, s.B_span⟩
  left_inv _ := rfl
  right_inv _ := rfl

theorem lattice_tau_eq_size_tau (I : AutInst) : PI.LatCountG.tau1 I = Formalism.L2.SG.LitS.Size.tau1 I := by
  funext x
  unfold PI.LatCountG.tau1 Formalism.L2.SG.LitS.Size.tau1
  congr 1
  exact Equiv.iInf_congr (latSubEquiv I x) (fun _ => rfl)

theorem LatCount_holds (I : AutInst) : Formalism.L2.SG.Count.LatCount I := by
  have h := lattice_count_all I
  unfold PI.LatCountG.LatCount at h
  unfold Formalism.L2.SG.Count.LatCount
  rw [lattice_tau_eq_size_tau] at h
  exact h

theorem DistTri_holds : Formalism.MainNotions.LeviCoordinates.DistTri := _root_.PI.SymDistWork.symDist_of exp_triangle_inequality

end Count

end Formalism.L2.SG.Closed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.LevelSubgroupProperties =====
