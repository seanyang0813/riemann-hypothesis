module

public import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
public import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CarrierRow
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ResFin
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.SkewSolve
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.Development
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SplitRow
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.PositiveWeightHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.TraceOneHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ZhatIntegralHolds
public import Mathlib.LinearAlgebra.Matrix.Rank
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.HeisOpHolds
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellBase, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellBlock, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellMain, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.DdSPowLeOne, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.FixedRel, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.FixedZ, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ResFinAlt, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.RightInvHolds, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.SkewSolveAlt, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.TermsAtFiniteOfFrameOpShortFin

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellBase =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellBase", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.TermsAtPtFiniteW.CellW

open NumberField Formalism.MainNotions.S

variable {E : Type} [Field E] [NumberField E]

def Intg {m n : Type*} (d : 𝓞 E) (M : Matrix m n E) : Prop :=
  ∃ M' : Matrix m n (𝓞 E), M'.map (algebraMap (𝓞 E) E) = (algebraMap (𝓞 E) E d) • M

theorem intg_mul {l m n : Type*} [Fintype m] {d d' : 𝓞 E} {M : Matrix l m E} {N : Matrix m n E}
    (hM : Intg d M) (hN : Intg d' N) : Intg (d * d') (M * N) := by
  obtain ⟨M', hM'⟩ := hM
  obtain ⟨N', hN'⟩ := hN
  refine ⟨M' * N', ?_⟩
  rw [Matrix.map_mul, hM', hN', Matrix.smul_mul, Matrix.mul_smul, smul_smul, map_mul, mul_comm]

theorem intg_sub {m n : Type*} {d : 𝓞 E} {M N : Matrix m n E} (hM : Intg d M) (hN : Intg d N) :
    Intg d (M - N) := by
  obtain ⟨M', hM'⟩ := hM
  obtain ⟨N', hN'⟩ := hN
  refine ⟨M' - N', ?_⟩
  ext i j
  have h1 := congrFun (congrFun hM' i) j
  have h2 := congrFun (congrFun hN' i) j
  simp only [Matrix.map_apply, Matrix.sub_apply, Matrix.smul_apply, smul_eq_mul, map_sub] at h1 h2 ⊢
  rw [h1, h2]; ring

theorem intg_dvd {m n : Type*} {a D : 𝓞 E} {M : Matrix m n E} (hM : Intg a M) (h : a ∣ D) : Intg D M := by
  obtain ⟨M', hM'⟩ := hM
  obtain ⟨k, rfl⟩ := h
  refine ⟨k • M', ?_⟩
  ext i j
  have := congrFun (congrFun hM' i) j
  simp only [Matrix.map_apply, Matrix.smul_apply, smul_eq_mul, map_mul] at this ⊢
  rw [this]; ring

theorem intg_one {n : Type*} [DecidableEq n] (d : 𝓞 E) : Intg d (1 : Matrix n n E) := by
  refine ⟨d • (1 : Matrix n n (𝓞 E)), ?_⟩
  ext i j
  by_cases h : i = j <;> simp [h]

theorem intg_zero {m n : Type*} (d : 𝓞 E) : Intg d (0 : Matrix m n E) :=
  ⟨0, by ext i j; simp⟩

theorem intg_submatrix {m n m' n' : Type*} {d : 𝓞 E} {M : Matrix m n E} (hM : Intg d M) (f : m' → m)
    (g : n' → n) : Intg d (M.submatrix f g) := by
  obtain ⟨M', hM'⟩ := hM
  refine ⟨M'.submatrix f g, ?_⟩
  ext i j
  have h1 := congrFun (congrFun hM' (f i)) (g j)
  simpa using h1

theorem intg_fromBlocks {l m n o : Type*} {d : 𝓞 E} {A : Matrix l n E} {B : Matrix l o E}
    {C : Matrix m n E} {D : Matrix m o E} (hA : Intg d A) (hB : Intg d B) (hC : Intg d C) (hD : Intg d D) :
    Intg d (Matrix.fromBlocks A B C D) := by
  obtain ⟨A', hA'⟩ := hA
  obtain ⟨B', hB'⟩ := hB
  obtain ⟨C', hC'⟩ := hC
  obtain ⟨D', hD'⟩ := hD
  refine ⟨Matrix.fromBlocks A' B' C' D', ?_⟩
  rw [Matrix.fromBlocks_map, hA', hB', hC', hD', Matrix.fromBlocks_smul]

theorem intg_adj {k : ℕ} {d : 𝓞 E} {M : Matrix (Fin k) (Fin k) E} (hM : Intg d M) :
    Intg (d ^ (k - 1)) M.adjugate := by
  obtain ⟨M', hM'⟩ := hM
  refine ⟨M'.adjugate, ?_⟩
  have h1 := RingHom.map_adjugate (algebraMap (𝓞 E) E) M'
  simp only [RingHom.mapMatrix_apply] at h1
  rw [h1, hM', Matrix.adjugate_smul, Fintype.card_fin, map_pow]

theorem intg_of_entries {m n : Type*} {Z : Matrix m n E} (h : ∀ i j, ∃ o : 𝓞 E, (o : E) = Z i j) :
    Intg 1 Z := by
  refine ⟨fun i j => Classical.choose (h i j), ?_⟩
  ext i j
  simp only [map_one, one_smul]
  exact Classical.choose_spec (h i j)

theorem exists_den (x : E) :
    ∃ m : 𝓞 E, m ≠ 0 ∧ ∃ o : 𝓞 E, algebraMap (𝓞 E) E o = algebraMap (𝓞 E) E m * x := by
  obtain ⟨⟨a, s⟩, h⟩ := IsLocalization.surj (nonZeroDivisors (𝓞 E)) x
  refine ⟨s, nonZeroDivisors.ne_zero s.2, a, ?_⟩
  simp only at h
  rw [← h, mul_comm]

theorem alg_ne_zero {d : 𝓞 E} (hd : d ≠ 0) : algebraMap (𝓞 E) E d ≠ 0 := by
  intro h
  exact hd ((injective_iff_map_eq_zero (algebraMap (𝓞 E) E)).mp (IsFractionRing.injective (𝓞 E) E) d h)

section Uni

variable {K : Type*} [Field K] {k : ℕ}

theorem lo_bt {A : Matrix (Fin k) (Fin k) K} (hA : IsLoUni A) : A.BlockTriangular OrderDual.toDual :=
  fun i j h => (hA i j).1 (by simpa using h)

theorem lo_diag_mul {A B : Matrix (Fin k) (Fin k) K} (hA : A.BlockTriangular OrderDual.toDual)
    (hB : B.BlockTriangular OrderDual.toDual) (i : Fin k) : (A * B) i i = A i i * B i i := by
  rw [Matrix.mul_apply, Finset.sum_eq_single i]
  · intro c _ hc
    rcases lt_or_gt_of_ne hc with h | h
    · rw [hB (by simpa using h), mul_zero]
    · rw [hA (by simpa using h), zero_mul]
  · intro h; exact absurd (Finset.mem_univ i) h

theorem lo_mul {A B : Matrix (Fin k) (Fin k) K} (hA : IsLoUni A) (hB : IsLoUni B) : IsLoUni (A * B) := by
  have ht := (lo_bt hA).mul (lo_bt hB)
  intro i j
  refine ⟨fun h => ht (by simpa using h), fun h => ?_⟩
  subst h
  rw [lo_diag_mul (lo_bt hA) (lo_bt hB), (hA i i).2 rfl, (hB i i).2 rfl, one_mul]

theorem lo_det {A : Matrix (Fin k) (Fin k) K} (hA : IsLoUni A) : A.det = 1 := by
  rw [Matrix.det_of_isLowerTriangular A (lo_bt hA)]
  exact Finset.prod_eq_one fun i _ => (hA i i).2 rfl

theorem lo_mul_adj {A : Matrix (Fin k) (Fin k) K} (hA : IsLoUni A) : A * A.adjugate = 1 := by
  rw [Matrix.mul_adjugate, lo_det hA, one_smul]

theorem lo_adj_mul {A : Matrix (Fin k) (Fin k) K} (hA : IsLoUni A) : A.adjugate * A = 1 := by
  rw [Matrix.adjugate_mul, lo_det hA, one_smul]

theorem lo_adj {A : Matrix (Fin k) (Fin k) K} (hA : IsLoUni A) : IsLoUni A.adjugate := by
  letI : Invertible A.det := invertibleOfNonzero (by rw [lo_det hA]; exact one_ne_zero)
  letI : Invertible A := Matrix.invertibleOfDetInvertible A
  have hinv : A⁻¹ = A.adjugate := by rw [Matrix.inv_def, lo_det hA, Ring.inverse_one, one_smul]
  have ht : A.adjugate.BlockTriangular OrderDual.toDual := by
    rw [← hinv]; exact Matrix.blockTriangular_inv_of_blockTriangular (lo_bt hA)
  intro i j
  refine ⟨fun h => ht (by simpa using h), fun h => ?_⟩
  subst h
  have h1 := congrFun (congrFun (lo_mul_adj hA) i) i
  rw [lo_diag_mul (lo_bt hA) ht, (hA i i).2 rfl, one_mul, Matrix.one_apply_eq] at h1
  exact h1

theorem up_iff_lo_transpose {U : Matrix (Fin k) (Fin k) K} : IsUpUni U ↔ IsLoUni U.transpose := by
  constructor
  · intro h i j
    exact ⟨fun hij => (h j i).1 hij, fun hij => (h j i).2 hij.symm⟩
  · intro h i j
    exact ⟨fun hij => (h j i).1 hij, fun hij => (h j i).2 hij.symm⟩

theorem up_mul {A B : Matrix (Fin k) (Fin k) K} (hA : IsUpUni A) (hB : IsUpUni B) : IsUpUni (A * B) := by
  rw [up_iff_lo_transpose] at *
  rw [Matrix.transpose_mul]; exact lo_mul hB hA

theorem up_det {A : Matrix (Fin k) (Fin k) K} (hA : IsUpUni A) : A.det = 1 := by
  rw [← Matrix.det_transpose]; exact lo_det (up_iff_lo_transpose.mp hA)

theorem up_mul_adj {A : Matrix (Fin k) (Fin k) K} (hA : IsUpUni A) : A * A.adjugate = 1 := by
  rw [Matrix.mul_adjugate, up_det hA, one_smul]

theorem up_adj_mul {A : Matrix (Fin k) (Fin k) K} (hA : IsUpUni A) : A.adjugate * A = 1 := by
  rw [Matrix.adjugate_mul, up_det hA, one_smul]

theorem up_adj {A : Matrix (Fin k) (Fin k) K} (hA : IsUpUni A) : IsUpUni A.adjugate := by
  rw [up_iff_lo_transpose] at *
  rw [Matrix.adjugate_transpose]; exact lo_adj hA

end Uni

theorem quotFinite (c : 𝓞 E) (hc : c ≠ 0) : Finite (𝓞 E ⧸ Ideal.span {c}) :=
  Ideal.finiteQuotientOfFreeOfNeBot _ (by simpa using hc)

theorem fin_of_cong {α ι : Type*} [Finite ι] (X : Set α) (f : α → ι → E)
    (hf : ∀ x ∈ X, ∀ i, ∃ o : 𝓞 E, algebraMap (𝓞 E) E o = f x i) (c : 𝓞 E) (hc : c ≠ 0)
    (R : α → α → Prop)
    (hR : ∀ x ∈ X, ∀ y ∈ X,
      (∀ i, ∃ o : 𝓞 E, algebraMap (𝓞 E) E c * algebraMap (𝓞 E) E o = f y i - f x i) → R x y) :
    ∃ Zs : Set α, Zs.Finite ∧ ∀ x ∈ X, ∃ y ∈ Zs, R x y := by
  have := quotFinite c hc
  let g : α → ι → (𝓞 E ⧸ Ideal.span {c}) := fun x i =>
    if h : ∃ o : 𝓞 E, algebraMap (𝓞 E) E o = f x i then Ideal.Quotient.mk _ (Classical.choose h) else 0
  haveI : Finite {ρ : ι → (𝓞 E ⧸ Ideal.span {c}) // ∃ x ∈ X, g x = ρ} := Subtype.finite
  refine ⟨Set.range (fun ρ : {ρ : ι → (𝓞 E ⧸ Ideal.span {c}) // ∃ x ∈ X, g x = ρ} => Classical.choose ρ.2),
    Set.finite_range _, ?_⟩
  intro x hx
  have hex : ∃ x' ∈ X, g x' = g x := ⟨x, hx, rfl⟩
  refine ⟨Classical.choose hex, ⟨⟨g x, hex⟩, rfl⟩, ?_⟩
  obtain ⟨hy, hgy⟩ := Classical.choose_spec hex
  apply hR x hx _ hy
  intro i
  have h1 := hf x hx i
  have h2 := hf _ hy i
  have hg := congrFun hgy i
  simp only [g, dif_pos h1, dif_pos h2] at hg
  rw [Ideal.Quotient.eq, Ideal.mem_span_singleton] at hg
  obtain ⟨o, ho⟩ := hg
  refine ⟨o, ?_⟩
  rw [← map_mul, ← ho, map_sub, Classical.choose_spec h1, Classical.choose_spec h2]

end PI.TermsAtPtFiniteW.CellW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellBase =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellBlock =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellBlock", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.TermsAtPtFiniteW.CellW

open NumberField Formalism.MainNotions.S Matrix

variable {E : Type} [Field E] [NumberField E]

def revJ (K : Type*) [Zero K] [One K] (s : ℕ) : Matrix (Fin s) (Fin s) K :=
  fun i j => if j = Fin.rev i then 1 else 0

section Rev

variable {K : Type*} [Field K] {s : ℕ}

theorem revJ_mul_apply (M : Matrix (Fin s) (Fin s) K) (i j : Fin s) : (revJ K s * M) i j = M (Fin.rev i) j := by
  rw [Matrix.mul_apply, Finset.sum_eq_single (Fin.rev i)]
  · simp [revJ]
  · intro k _ hk; simp [revJ, hk]
  · intro h; exact absurd (Finset.mem_univ _) h

theorem mul_revJ_apply (M : Matrix (Fin s) (Fin s) K) (i j : Fin s) : (M * revJ K s) i j = M i (Fin.rev j) := by
  rw [Matrix.mul_apply, Finset.sum_eq_single (Fin.rev j)]
  · simp [revJ]
  · intro k _ hk
    have : j ≠ Fin.rev k := by
      intro h; apply hk; rw [h, Fin.rev_rev]
    simp [revJ, this]
  · intro h; exact absurd (Finset.mem_univ _) h

theorem revJ_revJ : revJ K s * revJ K s = 1 := by
  ext i j
  rw [revJ_mul_apply]
  simp only [revJ, Fin.rev_rev, Matrix.one_apply]
  by_cases h : i = j
  · simp [h]
  · simp [h, Ne.symm h]

theorem revJ_conj_up {L : Matrix (Fin s) (Fin s) K} (hL : IsLoUni L) : IsUpUni (revJ K s * L * revJ K s) := by
  intro i j
  rw [mul_revJ_apply, revJ_mul_apply]
  refine ⟨fun h => (hL _ _).1 (Fin.rev_lt_rev.mpr h), fun h => (hL _ _).2 (by rw [h])⟩

end Rev

theorem intg_revJ (x : E) (m o : 𝓞 E) (h : algebraMap (𝓞 E) E o = algebraMap (𝓞 E) E m * x) (s : ℕ) :
    Intg m (x • revJ E s) := by
  refine ⟨o • revJ (𝓞 E) s, ?_⟩
  ext i j
  by_cases hij : j = Fin.rev i <;> simp [revJ, hij, h]

section Blocks

variable {K : Type*} {s n : ℕ}

theorem blocks_eq (M : Matrix (Fin (s + n)) (Fin (s + n)) K) :
    M.submatrix finSumFinEquiv finSumFinEquiv =
      fromBlocks (M.submatrix (Fin.castAdd n) (Fin.castAdd n)) (M.submatrix (Fin.castAdd n) (Fin.natAdd s))
        (M.submatrix (Fin.natAdd s) (Fin.castAdd n)) (M.submatrix (Fin.natAdd s) (Fin.natAdd s)) := by
  ext (i | i) (j | j) <;> simp

variable [CommRing K]

theorem lo_11 {L : Matrix (Fin (s + n)) (Fin (s + n)) K} (h : IsLoUni L) :
    IsLoUni (L.submatrix (Fin.castAdd n) (Fin.castAdd n)) := by
  intro i j
  refine ⟨fun hij => (h _ _).1 ?_, fun hij => (h _ _).2 (by rw [hij])⟩
  rw [Fin.lt_def] at hij ⊢; simp only [Fin.val_castAdd]; exact hij

theorem lo_22 {L : Matrix (Fin (s + n)) (Fin (s + n)) K} (h : IsLoUni L) :
    IsLoUni (L.submatrix (Fin.natAdd s) (Fin.natAdd s)) := by
  intro i j
  refine ⟨fun hij => (h _ _).1 ?_, fun hij => (h _ _).2 (by rw [hij])⟩
  rw [Fin.lt_def] at hij ⊢; simp only [Fin.val_natAdd]; omega

theorem lo_12 {L : Matrix (Fin (s + n)) (Fin (s + n)) K} (h : IsLoUni L) :
    L.submatrix (Fin.castAdd n) (Fin.natAdd s) = 0 := by
  ext i j
  refine (h _ _).1 ?_
  rw [Fin.lt_def]; simp only [Fin.val_castAdd, Fin.val_natAdd]; have := i.isLt; omega

theorem up_11 {U : Matrix (Fin (s + n)) (Fin (s + n)) K} (h : IsUpUni U) :
    IsUpUni (U.submatrix (Fin.castAdd n) (Fin.castAdd n)) := by
  intro i j
  refine ⟨fun hij => (h _ _).1 ?_, fun hij => (h _ _).2 (by rw [hij])⟩
  rw [Fin.lt_def] at hij ⊢; simp only [Fin.val_castAdd]; exact hij

theorem up_22 {U : Matrix (Fin (s + n)) (Fin (s + n)) K} (h : IsUpUni U) :
    IsUpUni (U.submatrix (Fin.natAdd s) (Fin.natAdd s)) := by
  intro i j
  refine ⟨fun hij => (h _ _).1 ?_, fun hij => (h _ _).2 (by rw [hij])⟩
  rw [Fin.lt_def] at hij ⊢; simp only [Fin.val_natAdd]; omega

theorem up_21 {U : Matrix (Fin (s + n)) (Fin (s + n)) K} (h : IsUpUni U) :
    U.submatrix (Fin.natAdd s) (Fin.castAdd n) = 0 := by
  ext i j
  refine (h _ _).1 ?_
  rw [Fin.lt_def]; simp only [Fin.val_castAdd, Fin.val_natAdd]; have := j.isLt; omega

theorem cast_lt_cast {i j : Fin s} : Fin.castAdd n i < Fin.castAdd n j ↔ i < j := by
  rw [Fin.lt_def, Fin.lt_def]; simp only [Fin.val_castAdd]

theorem nat_lt_nat {i j : Fin n} : Fin.natAdd s i < Fin.natAdd s j ↔ i < j := by
  rw [Fin.lt_def, Fin.lt_def]; simp only [Fin.val_natAdd]; omega

theorem cast_ne_nat (i : Fin s) (j : Fin n) : Fin.castAdd n i ≠ Fin.natAdd s j := by
  intro h; have h1 := congrArg Fin.val h; simp only [Fin.val_castAdd, Fin.val_natAdd] at h1
  have := i.isLt; omega

theorem not_nat_lt_cast (i : Fin n) (j : Fin s) : ¬ Fin.natAdd s i < Fin.castAdd n j := by
  rw [Fin.lt_def]; simp only [Fin.val_castAdd, Fin.val_natAdd]; have := j.isLt; omega

theorem lo_of_blocks {A : Matrix (Fin s) (Fin s) K} {C : Matrix (Fin n) (Fin s) K}
    {D : Matrix (Fin n) (Fin n) K} (hA : IsLoUni A) (hD : IsLoUni D) :
    IsLoUni ((fromBlocks A 0 C D).submatrix finSumFinEquiv.symm finSumFinEquiv.symm) := by
  intro i j
  induction i using Fin.addCases with
  | left i =>
    induction j using Fin.addCases with
    | left j =>
      simp only [submatrix_apply, finSumFinEquiv_symm_apply_castAdd, fromBlocks_apply₁₁, cast_lt_cast,
        Fin.castAdd_inj]
      exact hA i j
    | right j =>
      simp only [submatrix_apply, finSumFinEquiv_symm_apply_castAdd, finSumFinEquiv_symm_apply_natAdd,
        fromBlocks_apply₁₂, Matrix.zero_apply]
      exact ⟨by simp, fun h => absurd h (cast_ne_nat i j)⟩
  | right i =>
    induction j using Fin.addCases with
    | left j =>
      simp only [submatrix_apply, finSumFinEquiv_symm_apply_castAdd, finSumFinEquiv_symm_apply_natAdd,
        fromBlocks_apply₂₁]
      exact ⟨fun h => absurd h (not_nat_lt_cast i j), fun h => absurd h.symm (cast_ne_nat j i)⟩
    | right j =>
      simp only [submatrix_apply, finSumFinEquiv_symm_apply_natAdd, fromBlocks_apply₂₂, nat_lt_nat,
        Fin.natAdd_inj]
      exact hD i j

theorem up_of_blocks {A : Matrix (Fin s) (Fin s) K} {B : Matrix (Fin s) (Fin n) K}
    {D : Matrix (Fin n) (Fin n) K} (hA : IsUpUni A) (hD : IsUpUni D) :
    IsUpUni ((fromBlocks A B 0 D).submatrix finSumFinEquiv.symm finSumFinEquiv.symm) := by
  intro i j
  induction i using Fin.addCases with
  | left i =>
    induction j using Fin.addCases with
    | left j =>
      simp only [submatrix_apply, finSumFinEquiv_symm_apply_castAdd, fromBlocks_apply₁₁, cast_lt_cast,
        Fin.castAdd_inj]
      exact hA i j
    | right j =>
      simp only [submatrix_apply, finSumFinEquiv_symm_apply_castAdd, finSumFinEquiv_symm_apply_natAdd,
        fromBlocks_apply₁₂]
      exact ⟨fun h => absurd h (not_nat_lt_cast j i), fun h => absurd h (cast_ne_nat i j)⟩
  | right i =>
    induction j using Fin.addCases with
    | left j =>
      simp only [submatrix_apply, finSumFinEquiv_symm_apply_castAdd, finSumFinEquiv_symm_apply_natAdd,
        fromBlocks_apply₂₁, Matrix.zero_apply]
      exact ⟨by simp, fun h => absurd h.symm (cast_ne_nat j i)⟩
    | right j =>
      simp only [submatrix_apply, finSumFinEquiv_symm_apply_natAdd, fromBlocks_apply₂₂, nat_lt_nat,
        Fin.natAdd_inj]
      exact hD i j

end Blocks

theorem lo_one {K : Type*} [Field K] {k : ℕ} : IsLoUni (1 : Matrix (Fin k) (Fin k) K) := by
  intro i j
  exact ⟨fun h => one_apply_ne (ne_of_lt h), fun h => by rw [h, one_apply_eq]⟩

def BDm {N : ℕ} (W : Matrix (Fin N) (Fin N) E) : Prop :=
  ∀ d : 𝓞 E, d ≠ 0 → ∃ D : 𝓞 E, D ≠ 0 ∧ ∀ Z : Matrix (Fin N) (Fin N) E, Intg d Z →
    (∃ L0 U0, IsLoUni L0 ∧ IsUpUni U0 ∧ Z = L0 * W * U0) →
    ∃ L1 U1, IsLoUni L1 ∧ IsUpUni U1 ∧ Z = L1 * W * U1 ∧ Intg D L1 ∧ Intg D U1

theorem submatrix_equiv_prod {K : Type*} [CommRing K] {m n : Type*} [Fintype m] [Fintype n]
    (e : m ≃ n) (A B C : Matrix n n K) :
    (A * B * C).submatrix e e = A.submatrix e e * B.submatrix e e * C.submatrix e e := by
  rw [submatrix_mul_equiv, submatrix_mul_equiv]

theorem bd_step {s n : ℕ} (t : E) (ht : t ≠ 0) (W' : Matrix (Fin n) (Fin n) E)
    (W : Matrix (Fin (s + n)) (Fin (s + n)) E)
    (hW : W.submatrix finSumFinEquiv finSumFinEquiv = fromBlocks (t • revJ E s) 0 0 W')
    (ih : BDm W') : BDm W := by
  intro d hd
  obtain ⟨mt, hmt, ot, hot⟩ := exists_den t⁻¹
  have hD1 : mt * d ≠ 0 := mul_ne_zero hmt hd
  have hδ : (mt * d) ^ (s - 1) * mt ≠ 0 := mul_ne_zero (pow_ne_zero _ hD1) hmt
  have hd' : d * ((mt * d) ^ (s - 1) * mt) * d ≠ 0 := mul_ne_zero (mul_ne_zero hd hδ) hd
  obtain ⟨D', hD', hih⟩ := ih _ hd'
  refine ⟨d * ((mt * d) ^ (s - 1) * mt) * (mt * d) * D', mul_ne_zero (mul_ne_zero (mul_ne_zero hd hδ) hD1) hD', ?_⟩
  rintro Z hZ ⟨L0, U0, hL0, hU0, hZe⟩

  set P := Z.submatrix (Fin.castAdd n) (Fin.castAdd n) with hPdef
  set Q := Z.submatrix (Fin.castAdd n) (Fin.natAdd s) with hQdef
  set R := Z.submatrix (Fin.natAdd s) (Fin.castAdd n) with hRdef
  set S := Z.submatrix (Fin.natAdd s) (Fin.natAdd s) with hSdef
  set liftZP_unit := L0.submatrix (Fin.castAdd n) (Fin.castAdd n)
  set lintegral_supP_lt_top₂ := L0.submatrix (Fin.natAdd s) (Fin.castAdd n)
  set lix_inf_of_locP_le := L0.submatrix (Fin.natAdd s) (Fin.natAdd s)
  set U11 := U0.submatrix (Fin.castAdd n) (Fin.castAdd n)
  set U12 := U0.submatrix (Fin.castAdd n) (Fin.natAdd s)
  set U22 := U0.submatrix (Fin.natAdd s) (Fin.natAdd s)
  set W1 := t • revJ E s with hW1
  set W1i := t⁻¹ • revJ E s with hW1i
  have hW1W1i : W1 * W1i = 1 := by
    rw [hW1, hW1i, smul_mul_smul_comm, mul_inv_cancel₀ ht, one_smul, revJ_revJ]
  have hW1iW1 : W1i * W1 = 1 := by
    rw [hW1, hW1i, smul_mul_smul_comm, inv_mul_cancel₀ ht, one_smul, revJ_revJ]
  have key : Z.submatrix finSumFinEquiv finSumFinEquiv =
      fromBlocks (liftZP_unit * W1 * U11) (liftZP_unit * W1 * U12) (lintegral_supP_lt_top₂ * W1 * U11) (lintegral_supP_lt_top₂ * W1 * U12 + lix_inf_of_locP_le * W' * U22) := by
    rw [hZe, submatrix_equiv_prod, hW, blocks_eq L0, blocks_eq U0, lo_12 hL0, up_21 hU0,
      fromBlocks_multiply, fromBlocks_multiply]
    simp only [Matrix.mul_zero, Matrix.zero_mul, add_zero, zero_add, Matrix.mul_assoc]
    rfl
  rw [blocks_eq Z, fromBlocks_inj] at key
  obtain ⟨hP0, hQ0, hR0, hS0⟩ := key
  have hP : P = liftZP_unit * W1 * U11 := hP0
  have hQ : Q = liftZP_unit * W1 * U12 := hQ0
  have hR : R = lintegral_supP_lt_top₂ * W1 * U11 := hR0
  have hS : S = lintegral_supP_lt_top₂ * W1 * U12 + lix_inf_of_locP_le * W' * U22 := hS0

  set U1 := W1i * P with hU1def
  have hU1 : IsUpUni U1 := by
    have : U1 = (revJ E s * liftZP_unit * revJ E s) * U11 := by
      rw [hU1def, hP, hW1i, hW1]
      simp only [Matrix.smul_mul, Matrix.mul_smul, smul_smul, mul_inv_cancel₀ ht, one_smul,
        Matrix.mul_assoc]
    rw [this]
    exact up_mul (revJ_conj_up (lo_11 hL0)) (up_11 hU0)
  have hWU1 : W1 * U1 = P := by rw [hU1def, ← Matrix.mul_assoc, hW1W1i, Matrix.one_mul]
  set Pinv := U1.adjugate * W1i with hPinvdef
  have hPinvP : Pinv * P = 1 := by
    rw [hPinvdef, ← hWU1, Matrix.mul_assoc, ← Matrix.mul_assoc W1i, hW1iW1, Matrix.one_mul, up_adj_mul hU1]
  have hPPinv : P * Pinv = 1 := mul_eq_one_comm.mp hPinvP
  have hX : (W1 * U11 * Pinv) * liftZP_unit = 1 := by
    apply mul_eq_one_comm.mp
    rw [show liftZP_unit * (W1 * U11 * Pinv) = P * Pinv by rw [hP]; simp only [Matrix.mul_assoc], hPPinv]
  have hRPQ : R * Pinv * Q = lintegral_supP_lt_top₂ * W1 * U12 := by
    rw [hR, hQ]
    calc lintegral_supP_lt_top₂ * W1 * U11 * Pinv * (liftZP_unit * W1 * U12) = lintegral_supP_lt_top₂ * ((W1 * U11 * Pinv) * liftZP_unit) * W1 * U12 := by
          simp only [Matrix.mul_assoc]
      _ = lintegral_supP_lt_top₂ * W1 * U12 := by rw [hX, Matrix.mul_one]
  have hS' : S - R * Pinv * Q = lix_inf_of_locP_le * W' * U22 := by rw [hRPQ, hS]; abel

  have hPi : Intg d P := intg_submatrix hZ _ _
  have hQi : Intg d Q := intg_submatrix hZ _ _
  have hRi : Intg d R := intg_submatrix hZ _ _
  have hSi : Intg d S := intg_submatrix hZ _ _
  have hW1ii : Intg mt W1i := intg_revJ _ _ _ hot s
  have hU1i : Intg (mt * d) U1 := intg_mul hW1ii hPi
  have hPinvi : Intg ((mt * d) ^ (s - 1) * mt) Pinv := by
    exact intg_mul (intg_adj hU1i) hW1ii
  have hRPi : Intg (d * ((mt * d) ^ (s - 1) * mt)) (R * Pinv) := intg_mul hRi hPinvi
  have hS'i : Intg (d * ((mt * d) ^ (s - 1) * mt) * d) (S - R * Pinv * Q) :=
    intg_sub (intg_dvd hSi ⟨(mt * d) ^ (s - 1) * mt * d, by ring⟩) (intg_mul hRPi hQi)
  obtain ⟨L2, U2, hL2, hU2, hS2, hL2i, hU2i⟩ :=
    hih _ hS'i ⟨lix_inf_of_locP_le, U22, lo_22 hL0, up_22 hU0, hS'⟩

  refine ⟨(fromBlocks 1 0 (R * Pinv) L2).submatrix finSumFinEquiv.symm finSumFinEquiv.symm,
    (fromBlocks U1 (W1i * Q) 0 U2).submatrix finSumFinEquiv.symm finSumFinEquiv.symm,
    lo_of_blocks (lo_one (K := E)) hL2, up_of_blocks hU1 hU2, ?_, ?_, ?_⟩
  · have hZZ : Z = (Z.submatrix finSumFinEquiv finSumFinEquiv).submatrix finSumFinEquiv.symm finSumFinEquiv.symm := by
      simp
    have hWW : W = (W.submatrix finSumFinEquiv finSumFinEquiv).submatrix finSumFinEquiv.symm finSumFinEquiv.symm := by
      simp
    rw [hWW, ← submatrix_equiv_prod, hW, fromBlocks_multiply, fromBlocks_multiply, hZZ, blocks_eq Z]
    congr 1
    have hc : ∀ {m : ℕ} (X : Matrix (Fin s) (Fin m) E), W1 * (W1i * X) = X := fun X => by
      rw [← Matrix.mul_assoc, hW1W1i, Matrix.one_mul]
    have h22 := sub_eq_iff_eq_add'.mp hS2
    simp only [Matrix.one_mul, Matrix.zero_mul, Matrix.mul_zero, add_zero, zero_add, Matrix.mul_assoc, hU1def,
      hc] at h22 ⊢
    rw [fromBlocks_inj]
    refine ⟨rfl, rfl, ?_, h22⟩
    rw [hPinvP, Matrix.mul_one]
  · refine intg_submatrix (intg_fromBlocks (intg_one _) (intg_zero _) (intg_dvd hRPi ?_) (intg_dvd hL2i ?_)) _ _
    · exact ⟨(mt * d) * D', by ring⟩
    · exact ⟨d * ((mt * d) ^ (s - 1) * mt) * (mt * d), by ring⟩
  · refine intg_submatrix (intg_fromBlocks (intg_dvd hU1i ?_) (intg_dvd (intg_mul hW1ii hQi) ?_) (intg_zero _)
      (intg_dvd hU2i ?_)) _ _
    · exact ⟨d * ((mt * d) ^ (s - 1) * mt) * D', by ring⟩
    · exact ⟨d * ((mt * d) ^ (s - 1) * mt) * D', by ring⟩
    · exact ⟨d * ((mt * d) ^ (s - 1) * mt) * (mt * d), by ring⟩

end PI.TermsAtPtFiniteW.CellW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellBlock =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellMain =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellMain", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellBlock\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CarrierRow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.TermsAtPtFiniteW.CellW

open NumberField Formalism.MainNotions.S Matrix

variable {E : Type} [Field E] [NumberField E]

def pm (L : List (E × ℕ)) : Matrix (Fin (L.map Prod.snd).sum) (Fin (L.map Prod.snd).sum) E :=
  fun a b => ptEntry L a.val b.val

theorem pm_cons (t : E) (s : ℕ) (bs : List (E × ℕ)) :
    (pm ((t, s) :: bs) : Matrix (Fin (s + (bs.map Prod.snd).sum)) (Fin (s + (bs.map Prod.snd).sum)) E).submatrix
      finSumFinEquiv finSumFinEquiv = fromBlocks (t • revJ E s) 0 0 (pm bs) := by
  ext (i | i) (j | j)
  · show ptEntry ((t, s) :: bs) (i : ℕ) (j : ℕ) = t * (if j = Fin.rev i then (1 : E) else 0)
    simp only [ptEntry]
    rw [if_pos ⟨i.isLt, j.isLt⟩]
    have hiff : ((i : ℕ) + (j : ℕ) + 1 = s) ↔ j = Fin.rev i := by
      rw [Fin.ext_iff, Fin.val_rev]; omega
    by_cases h : j = Fin.rev i
    · rw [if_pos (hiff.mpr h), if_pos h, mul_one]
    · rw [if_neg (fun h' => h (hiff.mp h')), if_neg h, mul_zero]
  · show ptEntry ((t, s) :: bs) (i : ℕ) (s + (j : ℕ)) = 0
    have := i.isLt
    simp only [ptEntry]
    rw [if_neg (by omega), if_neg (by omega)]
  · show ptEntry ((t, s) :: bs) (s + (i : ℕ)) (j : ℕ) = 0
    have := j.isLt
    simp only [ptEntry]
    rw [if_neg (by omega), if_neg (by omega)]
  · show ptEntry ((t, s) :: bs) (s + (i : ℕ)) (s + (j : ℕ)) = ptEntry bs (i : ℕ) (j : ℕ)
    simp only [ptEntry]
    rw [if_neg (by omega), if_pos ⟨by omega, by omega⟩, Nat.add_sub_cancel_left, Nat.add_sub_cancel_left]

theorem bd_all : ∀ L : List (E × ℕ), (∀ b ∈ L, b.1 ≠ 0 ∧ 1 ≤ b.2) → BDm (pm L) := by
  intro L
  induction L with
  | nil =>
    intro _ d _
    refine ⟨1, one_ne_zero, ?_⟩
    rintro Z _ ⟨L0, U0, hL0, hU0, hZ⟩
    exact ⟨L0, U0, hL0, hU0, hZ, ⟨0, by ext i; exact absurd i.isLt (by simp)⟩,
      ⟨0, by ext i; exact absurd i.isLt (by simp)⟩⟩
  | cons b bs ih =>
    rcases b with ⟨t, s⟩
    intro h
    have ht : t ≠ 0 := (h (t, s) List.mem_cons_self).1
    exact bd_step t ht (pm bs) (pm ((t, s) :: bs)) (pm_cons t s bs)
      (ih fun b hb => h b (List.mem_cons_of_mem _ hb))

theorem map_smul' {m n : Type*} (c : 𝓞 E) (X : Matrix m n (𝓞 E)) :
    (c • X).map (algebraMap (𝓞 E) E) = algebraMap (𝓞 E) E c • X.map (algebraMap (𝓞 E) E) := by
  ext i j; simp

theorem alg_inj {x y : 𝓞 E} (h : algebraMap (𝓞 E) E x = algebraMap (𝓞 E) E y) : x = y :=
  IsFractionRing.injective (𝓞 E) E h

theorem lob_of {N : ℕ} {b : 𝓞 E} {A : Matrix (Fin N) (Fin N) E} (hA : IsLoUni A)
    (Y : Matrix (Fin N) (Fin N) (𝓞 E)) (h : A - 1 = algebraMap (𝓞 E) E b • Y.map (algebraMap (𝓞 E) E)) :
    ∃ A' : Matrix (Fin N) (Fin N) (𝓞 E), LoB b A' ∧ A'.map (fun x => (x : E)) = A := by
  have hmap : (1 + b • Y).map (fun x => (x : E)) = A := by
    ext i j
    have := congrFun (congrFun h i) j
    simp only [Matrix.sub_apply, Matrix.smul_apply, Matrix.map_apply, smul_eq_mul] at this
    show algebraMap (𝓞 E) E ((1 + b • Y) i j) = A i j
    rw [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, map_add (f := _), map_mul]
    by_cases hij : i = j
    · subst hij
      rw [Matrix.one_apply_eq] at this ⊢
      rw [map_one]; linear_combination -this
    · rw [Matrix.one_apply_ne hij] at this ⊢
      rw [map_zero, zero_add, ← this, sub_zero]
  refine ⟨1 + b • Y, ?_, hmap⟩
  intro i j
  have hij := congrFun (congrFun hmap i) j
  simp only [Matrix.map_apply] at hij
  refine ⟨fun h' => alg_inj (by rw [map_zero]; exact hij.trans ((hA i j).1 h')), fun h' => ?_, fun h' => ?_⟩
  · exact alg_inj (by rw [map_one]; exact hij.trans ((hA i j).2 h'))
  · refine ⟨Y i j, ?_⟩
    simp [Matrix.one_apply_ne (ne_of_gt h')]

theorem upb_of {N : ℕ} {b : 𝓞 E} {A : Matrix (Fin N) (Fin N) E} (hA : IsUpUni A)
    (Y : Matrix (Fin N) (Fin N) (𝓞 E)) (h : A - 1 = algebraMap (𝓞 E) E b • Y.map (algebraMap (𝓞 E) E)) :
    ∃ A' : Matrix (Fin N) (Fin N) (𝓞 E), UpB b A' ∧ A'.map (fun x => (x : E)) = A := by
  have hmap : (1 + b • Y).map (fun x => (x : E)) = A := by
    ext i j
    have := congrFun (congrFun h i) j
    simp only [Matrix.sub_apply, Matrix.smul_apply, Matrix.map_apply, smul_eq_mul] at this
    show algebraMap (𝓞 E) E ((1 + b • Y) i j) = A i j
    rw [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, map_add (f := _), map_mul]
    by_cases hij : i = j
    · subst hij
      rw [Matrix.one_apply_eq] at this ⊢
      rw [map_one]; linear_combination -this
    · rw [Matrix.one_apply_ne hij] at this ⊢
      rw [map_zero, zero_add, ← this, sub_zero]
  refine ⟨1 + b • Y, ?_, hmap⟩
  intro i j
  have hij := congrFun (congrFun hmap i) j
  simp only [Matrix.map_apply] at hij
  refine ⟨fun h' => alg_inj (by rw [map_zero]; exact hij.trans ((hA i j).1 h')), fun h' => ?_, fun h' => ?_⟩
  · exact alg_inj (by rw [map_one]; exact hij.trans ((hA i j).2 h'))
  · refine ⟨Y i j, ?_⟩
    simp [Matrix.one_apply_ne (ne_of_lt h')]

theorem close_rel {N : ℕ} {D b : 𝓞 E} (W : Matrix (Fin N) (Fin N) E)
    {Lx Ux Ly Uy : Matrix (Fin N) (Fin N) E} (hLx : IsLoUni Lx) (hUx : IsUpUni Ux) (hLy : IsLoUni Ly)
    (hUy : IsUpUni Uy) (hLxi : Intg D Lx) (hUxi : Intg D Ux)
    (ML MU : Matrix (Fin N) (Fin N) (𝓞 E))
    (hL : Ly - Lx = algebraMap (𝓞 E) E (D ^ N * b) • ML.map (algebraMap (𝓞 E) E))
    (hU : Uy - Ux = algebraMap (𝓞 E) E (D ^ N * b) • MU.map (algebraMap (𝓞 E) E)) :
    ∃ A B : Matrix (Fin N) (Fin N) (𝓞 E), LoB b A ∧ UpB b B ∧
      A.map (fun x => (x : E)) * (Lx * W * Ux) * B.map (fun x => (x : E)) = Ly * W * Uy := by
  have hpow : D ^ N = D ^ (N - (N - 1)) * D ^ (N - 1) := by rw [← pow_add]; congr 1; omega
  obtain ⟨AL, hAL⟩ := intg_adj hLxi
  obtain ⟨AU, hAU⟩ := intg_adj hUxi
  have hA1 : Ly * Lx.adjugate - 1 =
      algebraMap (𝓞 E) E b • ((D ^ (N - (N - 1)) • (ML * AL)).map (algebraMap (𝓞 E) E)) := by
    rw [← lo_mul_adj hLx, ← Matrix.sub_mul, hL, map_smul', Matrix.map_mul, hAL, hpow]
    simp only [map_mul, map_pow, Matrix.smul_mul, Matrix.mul_smul, smul_smul]
    ring_nf
  have hB1 : Ux.adjugate * Uy - 1 =
      algebraMap (𝓞 E) E b • ((D ^ (N - (N - 1)) • (AU * MU)).map (algebraMap (𝓞 E) E)) := by
    rw [← up_adj_mul hUx, ← Matrix.mul_sub, hU, map_smul', Matrix.map_mul, hAU, hpow]
    simp only [map_mul, map_pow, Matrix.smul_mul, Matrix.mul_smul, smul_smul]
    ring_nf
  obtain ⟨A, hA, hAm⟩ := lob_of (lo_mul hLy (lo_adj hLx)) _ hA1
  obtain ⟨B, hB, hBm⟩ := upb_of (up_mul (up_adj hUx) hUy) _ hB1
  refine ⟨A, B, hA, hB, ?_⟩
  rw [hAm, hBm]
  calc Ly * Lx.adjugate * (Lx * W * Ux) * (Ux.adjugate * Uy)
      = Ly * (Lx.adjugate * Lx) * W * (Ux * Ux.adjugate) * Uy := by simp only [Matrix.mul_assoc]
    _ = Ly * W * Uy := by rw [lo_adj_mul hLx, up_mul_adj hUx, Matrix.mul_one, Matrix.mul_one]

end PI.TermsAtPtFiniteW.CellW

namespace PI.TermsAtPtFiniteW

open NumberField Formalism.MainNotions.S CellW

theorem cellReduce_holds : CellReduce := by
  intro E _ _ N p b hb
  obtain ⟨L, hL, hsum⟩ := p
  subst hsum
  obtain ⟨D, hD, hbd⟩ := bd_all L hL 1 one_ne_zero
  let X : Set (Matrix (Fin (L.map Prod.snd).sum) (Fin (L.map Prod.snd).sum) E ×
      Matrix (Fin (L.map Prod.snd).sum) (Fin (L.map Prod.snd).sum) E ×
      Matrix (Fin (L.map Prod.snd).sum) (Fin (L.map Prod.snd).sum) E) :=
    {x | IsLoUni x.2.1 ∧ IsUpUni x.2.2 ∧ x.1 = x.2.1 * pm L * x.2.2 ∧ Intg D x.2.1 ∧ Intg D x.2.2}
  let f : (Matrix (Fin (L.map Prod.snd).sum) (Fin (L.map Prod.snd).sum) E ×
      Matrix (Fin (L.map Prod.snd).sum) (Fin (L.map Prod.snd).sum) E ×
      Matrix (Fin (L.map Prod.snd).sum) (Fin (L.map Prod.snd).sum) E) →
      Bool × Fin (L.map Prod.snd).sum × Fin (L.map Prod.snd).sum → E := fun x k =>
    if k.1 then algebraMap (𝓞 E) E D * x.2.2 k.2.1 k.2.2 else algebraMap (𝓞 E) E D * x.2.1 k.2.1 k.2.2
  have hf : ∀ x ∈ X, ∀ k, ∃ o : 𝓞 E, algebraMap (𝓞 E) E o = f x k := by
    rintro x ⟨-, -, -, ⟨L', hL'⟩, ⟨U', hU'⟩⟩ ⟨c, i, j⟩
    cases c
    · exact ⟨L' i j, by simpa [f] using congrFun (congrFun hL' i) j⟩
    · exact ⟨U' i j, by simpa [f] using congrFun (congrFun hU' i) j⟩
  have hc : D ^ (L.map Prod.snd).sum * D * b ≠ 0 := mul_ne_zero (mul_ne_zero (pow_ne_zero _ hD) hD) hb
  obtain ⟨Zs, hfin, hZs⟩ := fin_of_cong X f hf _ hc
    (fun x y => ∃ A B : Matrix (Fin (L.map Prod.snd).sum) (Fin (L.map Prod.snd).sum) (𝓞 E), LoB b A ∧ UpB b B ∧
      A.map (fun x => (x : E)) * x.1 * B.map (fun x => (x : E)) = y.1) (by
    rintro x ⟨hLx, hUx, hx, hLxi, hUxi⟩ y ⟨hLy, hUy, hy, -, -⟩ hxy
    have hDE := alg_ne_zero hD
    have hM : ∀ c : Bool, ∃ M : Matrix (Fin (L.map Prod.snd).sum) (Fin (L.map Prod.snd).sum) (𝓞 E),
        ∀ i j, algebraMap (𝓞 E) E D * algebraMap (𝓞 E) E (D ^ (L.map Prod.snd).sum * b) *
          algebraMap (𝓞 E) E (M i j) = f y (c, i, j) - f x (c, i, j) := by
      intro c
      refine ⟨fun i j => Classical.choose (hxy (c, i, j)), fun i j => ?_⟩
      rw [← Classical.choose_spec (hxy (c, i, j))]
      simp only [map_mul, map_pow]; ring
    obtain ⟨ML, hML⟩ := hM false
    obtain ⟨MU, hMU⟩ := hM true
    have hL : y.2.1 - x.2.1 = algebraMap (𝓞 E) E (D ^ (L.map Prod.snd).sum * b) • ML.map (algebraMap (𝓞 E) E) := by
      ext i j
      have := hML i j
      simp only [f, Bool.false_eq_true, if_false] at this
      simp only [Matrix.sub_apply, Matrix.smul_apply, Matrix.map_apply, smul_eq_mul]
      apply mul_left_cancel₀ hDE
      rw [mul_sub, ← this]; ring
    have hU : y.2.2 - x.2.2 = algebraMap (𝓞 E) E (D ^ (L.map Prod.snd).sum * b) • MU.map (algebraMap (𝓞 E) E) := by
      ext i j
      have := hMU i j
      simp only [f, if_true] at this
      simp only [Matrix.sub_apply, Matrix.smul_apply, Matrix.map_apply, smul_eq_mul]
      apply mul_left_cancel₀ hDE
      rw [mul_sub, ← this]; ring
    obtain ⟨A, B, hA, hB, hAB⟩ := close_rel (pm L) hLx hUx hLy hUy hLxi hUxi ML MU hL hU
    exact ⟨A, B, hA, hB, by rw [hx, hy]; exact hAB⟩)
  refine ⟨Prod.fst '' Zs, hfin.image _, ?_⟩
  intro Z hZ hcell
  obtain ⟨L1, U1, hL1, hU1, hZe, hL1i, hU1i⟩ := hbd Z (intg_of_entries hZ) hcell
  obtain ⟨y, hy, A, B, hA, hB, hAB⟩ := hZs (Z, L1, U1) ⟨hL1, hU1, hZe, hL1i, hU1i⟩
  exact ⟨A, B, hA, hB, ⟨y, hy, hAB.symm⟩⟩

end PI.TermsAtPtFiniteW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellMain =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.DdSPowLeOne =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.DdSPowLeOne", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ResFin\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.TermsAtPtFiniteW

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef Formalism.L2.SG.Saturated

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem ndS_mul_int (D : D7) (a : Fin D.R.rS) (t : D.host.E) (ht : t ∈ aaS D a) :
    ∃ o : 𝓞 D.host.E, algebraMap (𝓞 D.host.E) D.host.E o = (ndS D : D.host.E) * t := by
  have ha := a.isLt
  obtain ⟨m, hm⟩ : ∃ m : ℕ, D.R.rS = (a : ℕ) + m := ⟨D.R.rS - (a : ℕ), by omega⟩
  have haa : aaS D a = (((Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) ^ m : Ideal (𝓞 D.host.E)) : FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E)⁻¹ := by
    unfold aaS ddS
    rw [FractionalIdeal.coeIdeal_pow, ← zpow_natCast, ← zpow_neg]
    congr 1
    omega
  rw [haa] at ht
  by_cases hJ : (((Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) ^ m : Ideal (𝓞 D.host.E)) : FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E) = 0
  · rw [hJ] at ht
    have ht0 : t = 0 := by
      first
        | (rw [FractionalIdeal.inv_zero', FractionalIdeal.mem_zero_iff] at ht; exact ht)
    exact ⟨0, by rw [ht0, map_zero, mul_zero]⟩
  · rw [FractionalIdeal.inv_eq] at ht
    first
      | rw [FractionalIdeal.mem_div_iff_of_ne_zero hJ] at ht
    have hN : ((Ideal.absNorm (Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) : (𝓞 D.host.E)) ^ m) ∈ ((Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) ^ m : Ideal (𝓞 D.host.E)) :=
      Ideal.pow_mem_pow (Ideal.absNorm_mem _) m
    have hy : algebraMap (𝓞 D.host.E) D.host.E ((Ideal.absNorm (Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) : (𝓞 D.host.E)) ^ m) ∈
        (((Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) ^ m : Ideal (𝓞 D.host.E)) : FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E) :=
      by
        first
          | exact FractionalIdeal.mem_coeIdeal_of_mem _ hN
    have h1 := ht _ hy
    rw [FractionalIdeal.mem_one_iff] at h1
    obtain ⟨o', ho'⟩ := h1
    refine ⟨(Ideal.absNorm (Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) : (𝓞 D.host.E)) ^ (a : ℕ) * o', ?_⟩
    have hsplit : (Ideal.absNorm (Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) : D.host.E) ^ D.R.rS =
        (Ideal.absNorm (Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) : D.host.E) ^ (a : ℕ) * (Ideal.absNorm (Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) : D.host.E) ^ m := by
      rw [← pow_add, ← hm]
    rw [map_mul, ho']
    simp only [ndS, map_pow, map_natCast, Nat.cast_pow, hsplit]
    ring

theorem fInt_holds : FInt := by
  intro D T F0 Λ f L hff hef hL hΛ
  refine ⟨?_, ?_⟩
  ·
    have hd : differentIdeal ℤ (𝓞 D.host.F) ≠ ⊥ := by
      first
        | exact differentIdeal_ne_bot
    have hinj : Function.Injective (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) := by
      first
        | exact FaithfulSMul.algebraMap_injective _ _
    have hmap : (Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) ≠ ⊥ := by
      rwa [Ne, Ideal.map_eq_bot_iff_of_injective hinj]
    have hN : Ideal.absNorm (Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))) ≠ 0 := by
      rwa [Ne, Ideal.absNorm_eq_zero_iff]
    unfold ndS
    exact pow_pos (Nat.pos_of_ne_zero hN) _
  · intro x hx c

    have hec : ∀ a, (VS D).hT (f c) (F0.e a) = if a = c then 1 else 0 := by
      intro a
      have hs : starRingEnd D.host.E ((VS D).hT (F0.e a) (f c)) = (VS D).hT (f c) (F0.e a) := by
        first
          | exact (VS D).herm.eq _ _
      rw [← hs, hef]
      split_ifs <;> simp
    let P : Submodule (𝓞 D.host.E) (VS D).V :=
      { carrier := {y | ∃ o : (𝓞 D.host.E), algebraMap (𝓞 D.host.E) D.host.E o = (ndS D : D.host.E) * (VS D).hT (f c) (y)}
        add_mem' := by
          rintro y z ⟨o1, h1⟩ ⟨o2, h2⟩
          exact (show ∃ o : (𝓞 D.host.E), algebraMap (𝓞 D.host.E) D.host.E o = (ndS D : D.host.E) * (VS D).hT (f c) (y + z) from ⟨o1 + o2, by rw [map_add (f := _), map_add (f := _), mul_add, h1, h2]⟩)
        zero_mem' := by
          exact (show ∃ o : (𝓞 D.host.E), algebraMap (𝓞 D.host.E) D.host.E o = (ndS D : D.host.E) * (VS D).hT (f c) (0) from ⟨0, by rw [map_zero, map_zero, mul_zero]⟩)
        smul_mem' := by
          rintro r y ⟨o, h⟩
          refine (show ∃ o : (𝓞 D.host.E), algebraMap (𝓞 D.host.E) D.host.E o = (ndS D : D.host.E) * (VS D).hT (f c) (r • y) from ⟨r * o, ?_⟩)
          rw [← algebraMap_smul D.host.E r y, map_smul, smul_eq_mul, map_mul, h]
          ring }
    have hP : Λ ≤ P := by
      rw [hΛ]
      refine sup_le (sup_le ?_ ?_) ?_
      · unfold latSpan
        rw [Submodule.span_le]
        rintro y ⟨a, t, ht, rfl⟩
        show ∃ o : (𝓞 D.host.E), algebraMap (𝓞 D.host.E) D.host.E o = (ndS D : D.host.E) * (VS D).hT (f c) (t • F0.e a)
        rw [map_smul, smul_eq_mul, hec a]
        by_cases hac : a = c
        · subst hac
          obtain ⟨o, ho⟩ := ndS_mul_int D a t ht
          exact ⟨o, by rw [ho, if_pos rfl, mul_one]⟩
        · exact ⟨0, by rw [if_neg hac, mul_zero, mul_zero, map_zero]⟩
      · intro y hy
        show ∃ o : (𝓞 D.host.E), algebraMap (𝓞 D.host.E) D.host.E o = (ndS D : D.host.E) * (VS D).hT (f c) (y)
        exact ⟨0, by rw [(hL y hy c).2, mul_zero, map_zero]⟩
      · unfold latSpan
        rw [Submodule.span_le]
        rintro y ⟨a, t, ht, rfl⟩
        show ∃ o : (𝓞 D.host.E), algebraMap (𝓞 D.host.E) D.host.E o = (ndS D : D.host.E) * (VS D).hT (f c) (t • f a)
        exact ⟨0, by rw [map_smul, smul_eq_mul, hff c a, mul_zero, mul_zero, map_zero]⟩
    obtain ⟨o, ho⟩ := hP hx
    exact ⟨o, ho⟩

end PI.TermsAtPtFiniteW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.DdSPowLeOne =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.FixedRel =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.FixedRel", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CarrierRow\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.SkewSolve\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.TermsAtPtFiniteW

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef

section Int

variable {E : Type} [Field E] [NumberField E]

def IntE (x : E) : Prop := ∃ o : 𝓞 E, (o : E) = x

theorem IntE.add {x y : E} (hx : IntE x) (hy : IntE y) : IntE (x + y) := by
  obtain ⟨a, rfl⟩ := hx
  obtain ⟨b, rfl⟩ := hy
  exact ⟨a + b, map_add (algebraMap (𝓞 E) E) a b⟩
theorem IntE.mul {x y : E} (hx : IntE x) (hy : IntE y) : IntE (x * y) := by
  obtain ⟨a, rfl⟩ := hx
  obtain ⟨b, rfl⟩ := hy
  exact ⟨a * b, map_mul (algebraMap (𝓞 E) E) a b⟩
theorem IntE.neg {x : E} (hx : IntE x) : IntE (-x) := by
  obtain ⟨a, rfl⟩ := hx
  exact ⟨-a, map_neg (algebraMap (𝓞 E) E) a⟩
theorem IntE.sub {x y : E} (hx : IntE x) (hy : IntE y) : IntE (x - y) := by
  obtain ⟨a, rfl⟩ := hx
  obtain ⟨b, rfl⟩ := hy
  exact ⟨a - b, map_sub (algebraMap (𝓞 E) E) a b⟩
theorem IntE.nat (n : ℕ) : IntE (n : E) := ⟨n, map_natCast (algebraMap (𝓞 E) E) n⟩
theorem IntE.zero : IntE (0 : E) := ⟨0, map_zero (algebraMap (𝓞 E) E)⟩
theorem IntE.sum {ι : Type*} (s : Finset ι) (g : ι → E) (h : ∀ i ∈ s, IntE (g i)) : IntE (∑ i ∈ s, g i) := by
  induction s using Finset.induction_on with
  | empty =>
    rw [Finset.sum_empty]
    exact IntE.zero
  | @insert a s ha ih =>
    rw [Finset.sum_insert ha]
    exact IntE.add (h a (Finset.mem_insert_self a s)) (ih (fun i hi => h i (Finset.mem_insert_of_mem hi)))

end Int

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ}

def piL (e f : Fin r → S.V) : S.V →ₗ[E] S.V := LinearMap.id - ∑ c, (S.hT (f c)).smulRight (e c)

theorem piL_apply (e f : Fin r → S.V) (x : S.V) : piL e f x = x - ∑ c, S.hT (f c) x • e c := by
  simp [piL]

theorem herm_star (x y : S.V) : star (S.hT x y) = S.hT y x := by
  exact S.herm.eq x y

theorem related_gen (hH : HeisOp) (hSk : SkewSolve) {T T' : E} (Λ : Submodule (𝓞 E) S.V) (F : LFlag S r T)
    (f : Fin r → S.V)
    (hint : ∀ x ∈ Λ, ∀ y ∈ Λ, ∃ o : 𝓞 E, (o : E) = S.hT x y)
    (he : ∀ c, F.fl.e c ∈ Λ)
    (hef : ∀ a b, S.hT (F.fl.e a) (f b) = if a = b then 1 else 0)
    (θ : 𝓞 E) (hθ : (θ : E) + star (θ : E) = 1)
    (nd nQ : ℕ) (hfint : ∀ x ∈ Λ, ∀ c, IntE ((nd : E) * S.hT (f c) x))
    (β : Matrix (Fin r) (Fin (r + 1)) E) (Q : Matrix (Fin (r + 1)) (Fin r) E) (v l : Fin (r + 1) → E)
    (hind : ∀ u : Fin r → E, (∀ b, ∑ c, u c * β c b = 0) → u = 0)
    (hβQ : β * Q = 1) (hv : ∀ c, ∑ b, β c b * v b = 0)
    (hQβ : ∀ i j, (Q * β) i j = (if i = j then 1 else 0) - v i * l j)
    (hQint : ∀ b c, IntE ((nQ : E) * Q b c))
    (y1 y2 : LFlag S r T')
    (hzt1 : y1.zt = frame y1 (Fin.last r)) (hzt2 : y2.zt = frame y2 (Fin.last r))
    (hy1 : ∀ b, frame y1 b ∈ Λ)
    (hβ1 : ∀ c b, S.hT (F.fl.e c) (frame y1 b) = β c b) (hβ2 : ∀ c b, S.hT (F.fl.e c) (frame y2 b) = β c b)
    (hgram : ∀ a b, S.hT (frame y2 a) (frame y2 b) = S.hT (frame y1 a) (frame y1 b))
    (hδ : ∀ b, ∃ lam ∈ Λ, frame y2 b - frame y1 b = (((nd * nQ) ^ 2 : ℕ) : E) • lam)
    (hι : piL F.fl.e f (∑ b, v b • frame y1 b) = piL F.fl.e f (∑ b, v b • frame y2 b)) :
    DCRel Λ F y1 y2 := by
  set e := F.fl.e with he_def
  have hee : ∀ a b, S.hT (e a) (e b) = 0 := F.fl.e_iso
  have hfe : ∀ a b, S.hT (f a) (e b) = if a = b then 1 else 0 := fun a b => by
    rw [← herm_star, hef b a]
    by_cases h : b = a
    · subst h; simp
    · simp [h, Ne.symm h]
  have hpi_e : ∀ a x, S.hT (e a) (piL e f x) = S.hT (e a) x := fun a x => by

    simp [piL_apply, map_sub, map_sum, hee]
  have hpi_f : ∀ a x, S.hT (f a) (piL e f x) = 0 := fun a x => by

    simp [piL_apply, map_sub, map_sum, hfe]
  have hmemE : ∀ (x : E) (w : S.V), IntE x → w ∈ Λ → x • w ∈ Λ := by
    rintro x w ⟨o, rfl⟩ hw
    show (algebraMap (𝓞 E) E o) • w ∈ Λ
    rw [algebraMap_smul]
    exact Λ.smul_mem o hw
  have hnat : ∀ (k : ℕ) (w : S.V), w ∈ Λ → (k : E) • w ∈ Λ := fun k w hw => hmemE _ w (IntE.nat k) hw
  choose lam hlam hδeq using hδ

  let P : Fin (r + 1) → S.V := fun b => (nd : E) • piL e f (lam b)
  have hP : ∀ b, P b ∈ Λ := by
    intro b
    have : P b = (nd : E) • lam b - ∑ c, ((nd : E) * S.hT (f c) (lam b)) • e c := by
      simp only [P, piL_apply, smul_sub, Finset.smul_sum, smul_smul]
    rw [this]
    refine Λ.sub_mem (hnat nd _ (hlam b)) (Λ.sum_mem fun c _ => hmemE _ _ (hfint _ (hlam b) c) (he c))
  let δ : Fin (r + 1) → S.V := fun b => frame y2 b - frame y1 b
  let ρ : Fin (r + 1) → S.V := fun b => piL e f (δ b)
  have hδe : ∀ c b, S.hT (e c) (δ b) = 0 := fun c b => by simp [δ, map_sub, hβ1, hβ2]
  have hρe : ∀ c b, S.hT (e c) (ρ b) = 0 := fun c b => by simp only [ρ, hpi_e, hδe]
  have hρsum : ∑ b, v b • ρ b = 0 := by
    have : ∑ b, v b • ρ b = piL e f (∑ b, v b • frame y2 b) - piL e f (∑ b, v b • frame y1 b) := by

      simp only [ρ, δ, map_sum, map_smul, map_sub, smul_sub, Finset.sum_sub_distrib]
    rw [this, ← hι, sub_self]
  obtain ⟨qo, hqo⟩ : ∃ qo : Fin (r + 1) → Fin r → 𝓞 E, ∀ b c, (qo b c : E) = (nQ : E) * Q b c :=
    ⟨fun b c => (hQint b c).choose, fun b c => (hQint b c).choose_spec⟩
  let a' : Fin r → S.V := fun c => ∑ b, (qo b c : E) • P b
  let a : Fin r → S.V := fun c => ∑ b, Q b c • ρ b
  have ha' : ∀ c, a' c ∈ Λ := fun c => Λ.sum_mem fun b _ => hmemE _ _ ⟨qo b c, rfl⟩ (hP b)
  have haa' : ∀ c, a c = ((nd * nQ : ℕ) : E) • a' c := by
    intro c
    simp only [a, a', ρ, P, Finset.smul_sum, smul_smul]
    refine Finset.sum_congr rfl fun b _ => ?_
    rw [show δ b = (((nd * nQ) ^ 2 : ℕ) : E) • lam b from hδeq b, map_smul, smul_smul, hqo]
    congr 1
    push_cast
    ring
  have ha : ∀ c, a c ∈ Λ := fun c => by rw [haa']; exact hnat _ _ (ha' c)
  have hea : ∀ c d, S.hT (e c) (a d) = 0 := fun c d => by simp [a, map_sum, hρe]

  let s : Matrix (Fin r) (Fin r) E := fun c d =>
    if c < d then -S.hT (a c) (a d) else if c = d then -((θ : E) * S.hT (a c) (a c)) else 0
  have hs : ∀ c d, s c d + star (s d c) = -S.hT (a c) (a d) := by
    intro c d
    rcases lt_trichotomy c d with h | h | h
    · simp [s, h, not_lt.2 h.le, h.ne']
    · subst h
      have hh : star (S.hT (a c) (a c)) = S.hT (a c) (a c) := herm_star _ _
      simp only [s, lt_irrefl, if_false, if_true, star_neg, star_mul', hh]
      linear_combination (-(S.hT (a c) (a c))) * hθ
    · simp [s, h, not_lt.2 h.le, h.ne', herm_star]
  have haa : ∀ c d, S.hT (a c) (a d) = (((nd * nQ) ^ 2 : ℕ) : E) * S.hT (a' c) (a' d) := by
    intro c d
    rw [haa', haa', map_smul, LinearMap.map_smulₛₗ, LinearMap.smul_apply]
    simp only [starRingEnd_apply, star_natCast, smul_eq_mul]
    push_cast
    ring
  let s' : Matrix (Fin r) (Fin r) E := fun c d =>
    if c < d then -S.hT (a' c) (a' d) else if c = d then -((θ : E) * S.hT (a' c) (a' c)) else 0
  have hss' : ∀ c d, s c d = (((nd * nQ) ^ 2 : ℕ) : E) * s' c d := by
    intro c d
    simp only [s, s', haa]
    split_ifs <;> ring
  have hs'int : ∀ c d, IntE (s' c d) := by
    intro c d
    simp only [s']
    split_ifs
    · exact (IntE.neg (hint _ (ha' c) _ (ha' d)))
    · exact IntE.neg (IntE.mul (show IntE (θ : E) from ⟨θ, rfl⟩) (hint _ (ha' c) _ (ha' c)))
    · exact IntE.zero
  have hsint : ∀ c d, ∃ o : 𝓞 E, (o : E) = s c d := fun c d => by
    rw [hss']; exact (IntE.nat _).mul (hs'int c d)
  obtain ⟨n1, hn1, hn1act⟩ := hH E S r T Λ F a s hint he ha hea hsint hs
  simp only [← he_def] at hn1act
  have hiso1 : ∀ x y, S.hT (n1 x) (n1 y) = S.hT x y := hn1.1.1
  have hn1e : ∀ c, n1 (e c) = e c := by
    intro c
    rw [hn1act, heisFun]
    have : ∀ c', S.hT (a c') (e c) = 0 := fun c' => by rw [← herm_star, hea]; simp
    simp [hee, this]
  have hrow : ∀ c b, S.hT (e c) (n1 (frame y1 b)) = β c b := fun c b => by
    rw [← hn1e c, hiso1, hβ1]

  have hsum_a : ∀ b, ∑ c, S.hT (e c) (frame y1 b) • a c = ρ b := by
    intro b
    simp only [a, hβ1, Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    have : ∀ d, ∑ c, (β c b * Q d c) • ρ d = ((Q * β) d b) • ρ d := fun d => by
      rw [← Finset.sum_smul, Matrix.mul_apply]
      congr 1
      exact Finset.sum_congr rfl fun c _ => mul_comm _ _
    simp only [this, hQβ, sub_smul, Finset.sum_sub_distrib, ite_smul, one_smul, zero_smul,
      Finset.sum_ite_eq', Finset.mem_univ, if_true]
    have h2 : ∑ d, (v d * l b) • ρ d = l b • ∑ d, v d • ρ d := by
      rw [Finset.smul_sum]
      exact Finset.sum_congr rfl fun d _ => by rw [smul_smul, mul_comm]
    rw [h2, hρsum, smul_zero, sub_zero]
  let x' : Matrix (Fin r) (Fin (r + 1)) E := fun c b =>
    S.hT (f c) (δ b) + S.hT (a c) (frame y1 b) - ∑ d, s c d * β d b
  have hk : ∀ b, frame y2 b = n1 (frame y1 b) + ∑ c, x' c b • e c := by
    intro b
    have hy2 : frame y2 b = frame y1 b + ρ b + ∑ c, S.hT (f c) (δ b) • e c := by
      simp only [ρ, piL_apply, δ]
      abel
    rw [hn1act, heisFun, hsum_a, hy2]
    simp only [x', add_smul, sub_smul, Finset.sum_add_distrib, Finset.sum_sub_distrib, Finset.sum_smul, hβ1]
    abel

  have hcol : ∀ d a0, S.hT (n1 (frame y1 a0)) (e d) = star (β d a0) := fun d a0 => by
    rw [← herm_star, hrow]
  have hid : ∀ a0 b, ∑ c, (star (β c a0) * x' c b + star (x' c a0) * β c b) = 0 := by
    intro a0 b
    have h := hgram a0 b
    rw [hk a0, hk b, ← hiso1 (frame y1 a0) (frame y1 b)] at h

    simp only [map_add (f := _), LinearMap.add_apply, map_sum, LinearMap.sum_apply, LinearMap.map_smulₛₗ,
    LinearMap.smul_apply, smul_eq_mul, hee, mul_zero, Finset.sum_const_zero, add_zero, hrow, hcol,
    starRingEnd_apply] at h
    rw [Finset.sum_add_distrib]
    have e1 : ∑ c, star (β c a0) * x' c b = ∑ c, x' c b * star (β c a0) :=
      Finset.sum_congr rfl fun _ _ => mul_comm _ _
    rw [e1]
    linear_combination h
  obtain ⟨hskew, hfact⟩ := hSk E r β x' Q v l hind hβQ hv hQβ hid

  have hfd : ∀ c b, S.hT (f c) (δ b) = (((nd * nQ) ^ 2 : ℕ) : E) * S.hT (f c) (lam b) := fun c b => by
    show S.hT (f c) (frame y2 b - frame y1 b) = _
    rw [hδeq b, map_smul, smul_eq_mul]
  have hac : ∀ c b, S.hT (a c) (frame y1 b) = ((nd * nQ : ℕ) : E) * S.hT (a' c) (frame y1 b) := fun c b => by
    rw [haa', LinearMap.map_smulₛₗ, LinearMap.smul_apply, starRingEnd_apply, star_natCast, smul_eq_mul]
  let w : Matrix (Fin r) (Fin (r + 1)) E := fun c b =>
    ((nd * nQ : ℕ) : E) * ((nd : E) * S.hT (f c) (lam b)) + (nd : E) * S.hT (a' c) (frame y1 b) -
      ∑ d, ((nd ^ 2 * nQ : ℕ) : E) * s' c d * β d b
  have hw : ∀ c b, IntE (w c b) := by
    intro c b
    refine ((IntE.nat _).mul (hfint _ (hlam b) c)).add ((IntE.nat _).mul (hint _ (ha' c) _ (hy1 b))) |>.sub
      (IntE.sum _ _ fun d _ => ((IntE.nat _).mul (hs'int c d)).mul ?_)
    rw [← hβ1]
    exact hint _ (he d) _ (hy1 b)
  have hxw : ∀ c b, x' c b = (nQ : E) * w c b := by
    intro c b
    simp only [x', w, hfd, hac, hss']
    have hsum : ∑ x, (((nd * nQ) ^ 2 : ℕ) : E) * s' c x * β x b =
        (nQ : E) * ∑ d, ((nd ^ 2 * nQ : ℕ) : E) * s' c d * β d b := by
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun d _ => ?_
      push_cast
      ring
    rw [hsum]
    push_cast
    ring
  have hSint : ∀ c d, ∃ o : 𝓞 E, (o : E) = (x' * Q) c d := by
    intro c d
    have : (x' * Q) c d = ∑ b, w c b * ((nQ : E) * Q b d) := by
      rw [Matrix.mul_apply]
      exact Finset.sum_congr rfl fun b _ => by rw [hxw]; ring
    rw [this]
    exact IntE.sum _ _ fun b _ => (hw c b).mul (hQint b d)
  obtain ⟨n2, hn2, hn2act⟩ := hH E S r T Λ F 0 (x' * Q) hint he (fun _ => Λ.zero_mem) (by simp) hSint
    (by intro c d; simp [hskew c d])
  simp only [← he_def] at hn2act
  have hfin2 : ∀ b, n2 (n1 (frame y1 b)) = frame y2 b := by
    intro b
    rw [hn2act, heisFun, hk b]
    simp only [Pi.zero_apply, smul_zero, Finset.sum_const_zero, map_zero, LinearMap.zero_apply, zero_smul,
      add_zero, sub_zero, hrow]
    congr 1
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [← Finset.sum_smul]
    congr 1
    conv_rhs => rw [hfact]
    rw [Matrix.mul_apply]
  refine ⟨n2 * n1, PI.DCRelEquiv.UnitaryGroupMassFormula.nlam_mul hn2 hn1, 1, one_mem_NLam Λ y1, fun b => ?_, ?_⟩
  · simp [hfin2]
  · rw [hzt2, hzt1]
    simp [hfin2]

end Gen

end PI.TermsAtPtFiniteW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.FixedRel =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.FixedZ =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.FixedZ", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.FixedRel\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ResFin\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.Development\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SplitRow\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.PositiveWeightHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.TraceOneHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ZhatIntegralHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.TermsAtPtFiniteW

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef Formalism.L2.SG.Saturated

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ}

theorem common_den (s : Finset E) : ∃ n : ℕ, 0 < n ∧ ∀ x ∈ s, IntE ((n : E) * x) := by
  obtain ⟨y, hy, h⟩ := exists_integral_multiples ℤ ℚ (L := E) s
  refine ⟨y.natAbs, Int.natAbs_pos.2 hy, fun x hx => ?_⟩
  have hi : IsIntegral ℤ ((y : E) * x) := by simpa [zsmul_eq_mul] using h x hx
  have hn : ((y.natAbs : ℕ) : E) = (((y.natAbs : ℕ) : ℤ) : E) := (Int.cast_natCast _).symm
  rcases Int.natAbs_eq y with h' | h'
  · refine ⟨⟨_, hi⟩, ?_⟩
    show (y : E) * x = _
    rw [hn, ← h']
  · refine ⟨-⟨_, hi⟩, ?_⟩
    show -((y : E) * x) = _
    have h2 : ((y.natAbs : ℕ) : ℤ) = -y := by omega
    rw [hn, h2]
    push_cast
    ring

theorem gram_frame {T' : E} (F : LFlag S r T') (a b : Fin (r + 1)) :
    S.hT (frame F a) (frame F b) = if a = Fin.last r ∧ b = Fin.last r then -T' else 0 := by
  refine Fin.lastCases ?_ (fun i => ?_) a <;> refine Fin.lastCases ?_ (fun j => ?_) b
  · simpa [frame, FlagG.fvec] using F.fl.z_norm
  · simpa [frame, FlagG.fvec, Fin.castSucc_ne_last] using
      (show S.hT F.fl.z (F.fl.e j) = 0 by rw [← herm_star, F.fl.z_orth j]; simp)
  · simpa [frame, FlagG.fvec, Fin.castSucc_ne_last] using F.fl.z_orth i
  · simpa [frame, FlagG.fvec, Fin.castSucc_ne_last] using F.fl.e_iso i j

theorem mem_orth_Xplus {T : E} (F : LFlag S r T) (x : S.V) (he : ∀ a, S.hT (F.fl.e a) x = 0)
    (hz : S.hT F.fl.z x = 0) : x ∈ orth S (Xplus F) := by
  have hle : Xplus F ≤ LinearMap.ker (S.hT.flip x) := by
    refine sup_le (Submodule.span_le.2 ?_) (Submodule.span_le.2 ?_)
    · rintro _ ⟨a, rfl⟩
      simp [he a]
    · rintro _ rfl
      simp [hz]
  simp only [orth, Submodule.mem_iInf]
  intro w hw
  simpa using hle hw

end Gen

section D7

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem zhat_cs (D : D7) {T T' : D.host.E} (F0 : FlagG (VS D) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T')
    (c : Fin D.R.rS) (b : Fin (D.R.rS + 1)) :
    ZhatL (lf D F0) F' (Fin.castSucc c) b = (VS D).hT (F0.e c) (frame F' b) := by
  simp [ZhatL, Zhat, brS, frame, FlagG.fvec]

theorem zhat_last (D : D7) {T T' : D.host.E} (F0 : FlagG (VS D) D.R.rS T) (F' : LFlag (D.sp.Y 0) D.R.rS T')
    (b : Fin (D.R.rS + 1)) :
    ZhatL (lf D F0) F' (Fin.last D.R.rS) b = (VS D).hT F0.z (frame F' b) := by
  simp [ZhatL, Zhat, brS, frame, FlagG.fvec]

theorem fixedZhat_of (hH : HeisOp) (hSk : SkewSolve) (hS : ShortFin) (hRD : RowsDep) (hRI : RightInv)
    (hFI : FInt) (hRF : ResFin) : FixedZhatFinite := by
  intro D u u' _hsig F0 Λ hΛ Z
  set Y := {y : Carrier (PD D Λ (lf D F0) u') | Gval (lf D F0) y.1 ≠ 0 ∧ ZhatL (lf D F0) y.1 = Z} with hY
  rcases Set.eq_empty_or_nonempty Y with hE | ⟨y0, hy0⟩
  · rw [hE, Set.image_empty]
    exact Set.finite_empty
  obtain ⟨f, L, hff, hef, hLp, hzL, hΛeq⟩ := split_row_iso D u F0 Λ hΛ
  obtain ⟨hnd, hfint⟩ := hFI D F0 Λ f L hff hef hLp hΛeq
  obtain ⟨θ, hθ⟩ := PI.UnitaryGroupMassFormula.IdCellInSW.traceOne_holds D
  obtain ⟨_, ⟨hlat, hU, hlift0, _⟩, hX0⟩ := hΛ
  have hint : ∀ x ∈ Λ, ∀ y ∈ Λ, ∃ o : 𝓞 D.host.E, (o : D.host.E) = (VS D).hT x y :=
    fun x hx y hy => hT_int D Λ hU hx hy
  have he : ∀ c, F0.e c ∈ Λ := e_mem_of_XS D Λ (lf D F0) hX0
  have hz0 : F0.z ∈ Λ := hlift0.1
  let β : Matrix (Fin D.R.rS) (Fin (D.R.rS + 1)) D.host.E := fun c b => Z (Fin.castSucc c) b
  have hind : ∀ w : Fin D.R.rS → D.host.E, (∀ b, ∑ c, w c * β c b = 0) → w = 0 := by
    intro w hw
    by_contra hne
    obtain ⟨h1, h2⟩ := hRD D.host.E D.R.rS Z w hne hw
    apply hy0.1
    have hZ : Zhat F0 y0.1.fl = Z := hy0.2
    simp only [Gval, Gflag, Dl, lf, hZ, h1, h2]
    simp
  obtain ⟨Q, v, l, hβQ, hv, hQβ⟩ := hRI D.host.E D.R.rS β hind
  obtain ⟨nQ, hnQ, hQint⟩ := common_den (Finset.univ.image (fun p : Fin (D.R.rS + 1) × Fin D.R.rS => Q p.1 p.2))
  obtain ⟨nv, hnv, hvint⟩ := common_den (Finset.univ.image v)
  have hQint' : ∀ b c, IntE ((nQ : D.host.E) * Q b c) := fun b c =>
    hQint _ (Finset.mem_image.2 ⟨(b, c), Finset.mem_univ _, rfl⟩)
  have hvint' : ∀ b, IntE ((nv : D.host.E) * v b) := fun b => hvint _ (Finset.mem_image.2 ⟨b, Finset.mem_univ _, rfl⟩)
  obtain ⟨R, hRfin, ρ, hρ⟩ := hRF D.host.E (VS D).V Λ hlat.fg ((ndS D * nQ) ^ 2) (by positivity)
  set nd := ndS D with hnd_def
  have hfe : ∀ a b, (VS D).hT (f a) (F0.e b) = if a = b then 1 else 0 := fun a b => by
    rw [← herm_star, hef b a]
    by_cases h : b = a
    · subst h; simp
    · simp [h, Ne.symm h]
  have hze : ∀ c, (VS D).hT F0.z (F0.e c) = 0 := fun c => by rw [← herm_star, F0.z_orth c]; simp
  have hfz : ∀ c, (VS D).hT (f c) F0.z = 0 := fun c => (hLp F0.z hzL c).2
  have hmemE : ∀ (x : D.host.E) (w : (VS D).V), IntE x → w ∈ Λ → x • w ∈ Λ := by
    rintro x w ⟨o, rfl⟩ hw
    show (algebraMap (𝓞 D.host.E) D.host.E o) • w ∈ Λ
    rw [algebraMap_smul]
    exact Λ.smul_mem o hw
  have hnat : ∀ (k : ℕ) (w : (VS D).V), w ∈ Λ → (k : D.host.E) • w ∈ Λ :=
    fun k w hw => hmemE _ w (IntE.nat k) hw
  have hT0 : ((Tu D u : ℕ) : D.host.E) ≠ 0 := by
    have := (D.mem u).A.T_prime.pos
    exact_mod_cast this.ne'

  let yv : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E) → (VS D).V := fun y => ∑ b, v b • frame y b
  let ι2 : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E) → (VS D).V :=
    fun y => ((nd * nv : ℕ) : D.host.E) • piL F0.e f (yv y)
  let hz : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E) → D.host.E := fun y => (VS D).hT F0.z (ι2 y)
  let xf : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E) → (VS D).V :=
    fun y => ((Tu D u : ℕ) : D.host.E) • ι2 y + hz y • F0.z

  have hβy : ∀ y ∈ Y, ∀ c b, (VS D).hT (F0.e c) (frame y.1 b) = β c b := by
    intro y hy c b
    rw [← zhat_cs D F0 y.1 c b, hy.2]
  have hzy : ∀ y ∈ Y, ∀ b, (VS D).hT F0.z (frame y.1 b) = Z (Fin.last D.R.rS) b := by
    intro y hy b
    rw [← zhat_last D F0 y.1 b, hy.2]
  have hyΛ : ∀ y : Carrier (PD D Λ (lf D F0) u'), ∀ b, frame y.1 b ∈ Λ := by
    intro y b
    obtain ⟨hlift, _, _, hX⟩ := y.2
    exact frame_mem D Λ y.1 hX hlift.1 b
  have hyve : ∀ y ∈ Y, ∀ c, (VS D).hT (F0.e c) (yv y.1) = 0 := by
    intro y hy c

    simp only [yv, map_sum, map_smul, smul_eq_mul, hβy y hy]
    rw [← hv c]
    exact Finset.sum_congr rfl fun b _ => mul_comm _ _
  have hpie : ∀ c x, (VS D).hT (F0.e c) (piL F0.e f x) = (VS D).hT (F0.e c) x := fun c x => by

    simp [piL_apply, map_sub, map_sum, F0.e_iso]
  have hpif : ∀ c x, (VS D).hT (f c) (piL F0.e f x) = 0 := fun c x => by

    simp [piL_apply, map_sub, map_sum, hfe]
  have hpiz : ∀ x, (VS D).hT F0.z (piL F0.e f x) = (VS D).hT F0.z x := fun x => by

    simp [piL_apply, map_sub, map_sum, hze]
  have hι2 : ∀ y : Carrier (PD D Λ (lf D F0) u'), ι2 y.1 ∈ Λ := by
    intro y
    let lam : (VS D).V := ∑ b, ((nv : D.host.E) * v b) • frame y.1 b
    have hlam : lam ∈ Λ := Λ.sum_mem fun b _ => hmemE _ _ (hvint' b) (hyΛ y b)
    have : ι2 y.1 = (nd : D.host.E) • lam - ∑ c, ((nd : D.host.E) * (VS D).hT (f c) lam) • F0.e c := by
      have h1 : (nv : D.host.E) • yv y.1 = lam := by
        simp only [yv, lam, Finset.smul_sum, smul_smul]
      have h2 : ι2 y.1 = (nd : D.host.E) • piL F0.e f lam := by
        simp only [ι2]
        rw [← h1, map_smul, smul_smul]
        push_cast
        ring_nf
      rw [h2, piL_apply, smul_sub]
      congr 1
      rw [Finset.smul_sum]
      simp only [smul_smul]
    rw [this]
    exact Λ.sub_mem (hnat nd _ hlam) (Λ.sum_mem fun c _ => hmemE _ _ (hfint _ hlam c) (he c))
  have hhz : ∀ y ∈ Y, hz y.1 = ((nd * nv : ℕ) : D.host.E) * ∑ b, v b * Z (Fin.last D.R.rS) b := by
    intro y hy

    simp only [hz, ι2, map_smul, smul_eq_mul, hpiz, yv, map_sum, hzy y hy]

  have hyvn : ∀ y : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E),
      (VS D).hT (yv y) (yv y) = (VS D).hT (yv y0.1) (yv y0.1) := by
    intro y

    simp only [yv, map_sum, LinearMap.sum_apply, LinearMap.map_smulₛₗ, LinearMap.smul_apply, map_smul,
    smul_eq_mul, gram_frame]
  have hpin : ∀ y ∈ Y, (VS D).hT (piL F0.e f (yv y.1)) (piL F0.e f (yv y.1)) = (VS D).hT (yv y.1) (yv y.1) := by
    intro y hy
    have h1 : ∀ c, (VS D).hT (yv y.1) (F0.e c) = 0 := fun c => by rw [← herm_star, hyve y hy c]; simp

    simp [piL_apply, map_sub, map_sum, LinearMap.sub_apply, LinearMap.sum_apply, LinearMap.map_smulₛₗ,
    hyve y hy, h1, F0.e_iso]
  set hzc : D.host.E := ((nd * nv : ℕ) : D.host.E) * ∑ b, v b * Z (Fin.last D.R.rS) b with hzc_def
  set K : D.host.E := ((Tu D u : ℕ) : D.host.E) ^ 2 * ((((nd * nv : ℕ) : D.host.E)) ^ 2 *
      (VS D).hT (yv y0.1) (yv y0.1)) + ((Tu D u : ℕ) : D.host.E) * hzc * star hzc with hK_def
  have hxK : ∀ y ∈ Y, (VS D).hT (xf y.1) (xf y.1) = K := by
    intro y hy
    have hιz : (VS D).hT (ι2 y.1) F0.z = star (hz y.1) := by rw [← herm_star]
    have hιι : (VS D).hT (ι2 y.1) (ι2 y.1) = (((nd * nv : ℕ) : D.host.E)) ^ 2 * (VS D).hT (yv y0.1) (yv y0.1) := by
      simp only [ι2, LinearMap.map_smulₛₗ, LinearMap.smul_apply, map_smul, smul_eq_mul, starRingEnd_apply,
        star_natCast, hpin y hy, hyvn]
      ring
    have hzz : (VS D).hT F0.z F0.z = -((Tu D u : ℕ) : D.host.E) := F0.z_norm
    simp only [xf, map_add (f := _), LinearMap.add_apply, LinearMap.map_smulₛₗ, LinearMap.smul_apply, map_smul,
      smul_eq_mul, starRingEnd_apply, star_natCast, hιz, hιι, hzz]
    have hh : hz y.1 = hzc := hhz y hy
    rw [show (VS D).hT F0.z (ι2 y.1) = hz y.1 from rfl, hh]
    simp only [hK_def]
    ring

  let P : Submodule D.host.E (VS D).V :=
    orth (VS D) (Xplus (lf D F0)) ⊓ ⨅ c, LinearMap.ker ((VS D).hT (f c))
  have hpos : ∀ x ∈ P, x ≠ 0 → ∀ τ : D.host.E →+* ℂ, 0 < (τ ((VS D).hT x x)).re := by
    intro x hx hne τ
    obtain ⟨hxo, hxf⟩ := Submodule.mem_inf.1 hx
    refine PI.UnitaryGroupMassFormula.BetaModX.positive_weight_holds D (Tu D u) (lf D F0) τ x (D.mem u).A.T_prime.pos hxo ?_
    intro hxX
    obtain ⟨t, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun D.host.E).1 hxX
    apply hne
    have ht : ∀ c, t c = 0 := by
      intro c
      have := LinearMap.mem_ker.1 ((Submodule.mem_iInf _).1 hxf c)

      simpa [map_sum, hfe] using this
    simp [ht]
  have hxP : ∀ y ∈ Y, xf y.1 ∈ P := by
    intro y hy
    refine Submodule.mem_inf.2 ⟨mem_orth_Xplus (lf D F0) _ (fun a => ?_) ?_, (Submodule.mem_iInf _).2 fun c => ?_⟩
    · show (VS D).hT (F0.e a) (xf y.1) = 0
      simp [xf, ι2, map_add (f := _), map_smul, hpie, hyve y hy, F0.z_orth]
    · show (VS D).hT F0.z (xf y.1) = 0
      simp only [xf, map_add (f := _), map_smul, smul_eq_mul, F0.z_norm]
      change ((Tu D u : ℕ) : D.host.E) * hz y.1 + hz y.1 * -((Tu D u : ℕ) : D.host.E) = 0
      ring
    · rw [LinearMap.mem_ker]
      simp [xf, ι2, map_add (f := _), map_smul, hpif, hfz]
  have hxΛ : ∀ y : Carrier (PD D Λ (lf D F0) u'), xf y.1 ∈ Λ := fun y =>
    Λ.add_mem (hnat _ _ (hι2 y)) (hmemE _ _ (hint _ hz0 _ (hι2 y)) hz0)

  haveI := hRfin
  let κ : Carrier (PD D Λ (lf D F0) u') → (VS D).V × (Fin (D.R.rS + 1) → R) :=
    fun y => (xf y.1, fun b => ρ (frame y.1 b))
  have hfinX := hS D.host.E (VS D) Λ hlat P hpos K
  have hκ : κ '' Y ⊆ {x | x ∈ Λ ∧ x ∈ P ∧ (VS D).hT x x = K} ×ˢ Set.univ := by
    rintro _ ⟨y, hy, rfl⟩
    exact ⟨⟨hxΛ y, hxP y hy, hxK y hy⟩, trivial⟩
  have hκfin : (κ '' Y).Finite := (hfinX.prod Set.finite_univ).subset hκ
  have hzt : ∀ y : Carrier (PD D Λ (lf D F0) u'), y.1.zt = frame y.1 (Fin.last D.R.rS) := by
    intro y
    rw [y.2.1.2]
    simp [frame, FlagG.fvec]
  have hrel : ∀ y1 ∈ Y, ∀ y2 ∈ Y, κ y1 = κ y2 →
      mk Λ (lf D F0) (PD D Λ (lf D F0) u') y1 = mk Λ (lf D F0) (PD D Λ (lf D F0) u') y2 := by
    intro y1 hy1 y2 hy2 hκ12
    have hx : xf y1.1 = xf y2.1 := congrArg Prod.fst hκ12
    have hr : ∀ b, ρ (frame y1.1 b) = ρ (frame y2.1 b) := fun b => congrFun (congrArg Prod.snd hκ12) b
    have hδ : ∀ b, ∃ lam ∈ Λ, frame y2.1 b - frame y1.1 b = (((nd * nQ) ^ 2 : ℕ) : D.host.E) • lam :=
      fun b => hρ _ (hyΛ y1 b) _ (hyΛ y2 b) (hr b)
    have hι : piL F0.e f (∑ b, v b • frame y1.1 b) = piL F0.e f (∑ b, v b • frame y2.1 b) := by
      have h1 : ((Tu D u : ℕ) : D.host.E) • ι2 y1.1 = ((Tu D u : ℕ) : D.host.E) • ι2 y2.1 := by
        have := hx
        simp only [xf] at this
        rw [show hz y1.1 = hzc from hhz y1 hy1, show hz y2.1 = hzc from hhz y2 hy2] at this
        exact add_right_cancel this
      have h2 := smul_right_injective (VS D).V hT0 h1
      have hne : ((nd * nv : ℕ) : D.host.E) ≠ 0 := by
        have : 0 < nd * nv := Nat.mul_pos hnd hnv
        exact_mod_cast this.ne'
      exact smul_right_injective (VS D).V hne h2
    exact Quot.sound (related_gen hH hSk Λ (lf D F0) f hint he hef θ hθ nd nQ hfint β Q v l hind hβQ hv hQβ
      hQint' y1.1 y2.1 (hzt y1) (hzt y2) (hyΛ y1) (hβy y1 hy1) (hβy y2 hy2)
      (fun a b => by rw [gram_frame, gram_frame]) hδ hι)
  let g : (VS D).V × (Fin (D.R.rS + 1) → R) → TermQ Λ (lf D F0) (PD D Λ (lf D F0) u') := fun t =>
    if h : ∃ y ∈ Y, κ y = t then mk Λ (lf D F0) (PD D Λ (lf D F0) u') (Classical.choose h)
    else mk Λ (lf D F0) (PD D Λ (lf D F0) u') y0
  refine (hκfin.image g).subset ?_
  rintro _ ⟨y, hy, rfl⟩
  refine ⟨κ y, ⟨y, hy, rfl⟩, ?_⟩
  have h : ∃ y' ∈ Y, κ y' = κ y := ⟨y, hy, rfl⟩
  simp only [g, dif_pos h]
  obtain ⟨hy', hκ'⟩ := Classical.choose_spec h
  exact hrel _ hy' _ hy hκ'

end D7

end PI.TermsAtPtFiniteW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.FixedZ =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ResFinAlt =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ResFinAlt", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ResFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.TermsAtPtFiniteW

open NumberField

theorem resFin_holds : ResFin := by
  intro E _ _ V _ _ _ _ Λ hΛ c hc
  have hZ : (Λ.restrictScalars ℤ).FG := by
    first
      | exact Submodule.FG.restrictScalars hΛ
  obtain ⟨n, g, hg⟩ := Submodule.fg_iff_exists_fin_generating_family.1 hZ
  have hmem : ∀ x ∈ Λ, ∃ a : Fin n → ℤ, ∑ i, a i • g i = x := by
    intro x hx
    have hx' : x ∈ Submodule.span ℤ (Set.range g) := by rw [hg]; exact hx
    rw [Submodule.mem_span_range_iff_exists_fun] at hx'
    exact hx'
  haveI : NeZero c := ⟨by omega⟩
  refine ⟨Fin n → ZMod c, inferInstance,
    fun x => if hx : x ∈ Λ then fun i => (((hmem x hx).choose i : ℤ) : ZMod c) else 0, ?_⟩
  intro x hx y hy hxy
  beta_reduce at hxy
  rw [dite_eq_left hx, dite_eq_left hy] at hxy
  have hax := (hmem x hx).choose_spec
  have hby := (hmem y hy).choose_spec
  have hdiv : ∀ i, (c : ℤ) ∣ (hmem y hy).choose i - (hmem x hx).choose i := fun i => by
    have hi := congrFun hxy i
    rw [ZMod.intCast_eq_intCast_iff_dvd_sub] at hi
    exact hi
  choose k hk using hdiv
  refine ⟨∑ i, k i • g i, ?_, ?_⟩
  · have hs : ∑ i, k i • g i ∈ Submodule.span ℤ (Set.range g) :=
      Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
    rw [hg] at hs
    exact hs
  · rw [← hax, ← hby, ← Finset.sum_sub_distrib, Finset.smul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [← sub_smul, hk i, mul_smul, Nat.cast_smul_eq_nsmul E, natCast_zsmul]

end PI.TermsAtPtFiniteW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ResFinAlt =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.RightInvHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.RightInvHolds", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.SkewSolve\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Rank\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.TermsAtPtFiniteW

open Formalism.MainNotions.S Matrix

theorem rowsDep_holds : RowsDep := by
  intro E _ r Z u hu hdep
  have hcast : ∀ (h : r ≤ r + 1) (c : Fin r), Fin.castLE h c = Fin.castSucc c := fun h c => Fin.ext rfl
  have hcast1 : ∀ (h : r + 1 ≤ r + 1) (c : Fin (r + 1)), Fin.castLE h c = c := fun h c => Fin.ext rfl
  constructor
  · unfold leadMinorE
    rw [dite_eq_left le_rfl, ← Matrix.exists_vecMul_eq_zero_iff]
    refine ⟨Fin.snoc (α := fun _ => E) u 0, ?_, ?_⟩
    · intro h0
      apply hu
      funext c
      have h1 := congrFun h0 (Fin.castSucc c)
      simpa using h1
    · funext b
      simp only [Matrix.vecMul, dotProduct, Matrix.submatrix_apply, hcast1, Pi.zero_apply]
      rw [Fin.sum_univ_castSucc]
      simp only [Fin.snoc_castSucc, Fin.snoc_last, zero_mul, add_zero]
      exact hdep b
  · unfold leadMinorE
    rw [dite_eq_left (Nat.le_succ r), ← Matrix.exists_vecMul_eq_zero_iff]
    refine ⟨u, hu, ?_⟩
    funext b
    simp only [Matrix.vecMul, dotProduct, Matrix.submatrix_apply, hcast, Pi.zero_apply]
    exact hdep (Fin.castSucc b)

theorem rightInv_holds : RightInv := by
  intro E _ r β hind
  have hinjT : Function.Injective (Matrix.mulVecLin βᵀ) := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro u hu
    apply hind u
    intro b
    have h1 := congrFun hu b
    rw [Matrix.mulVecLin_apply, Matrix.mulVec_transpose] at h1
    exact h1
  have hrank : β.rank = r := by
    rw [← Matrix.rank_transpose, ← Matrix.finrank_range_mulVecLin, LinearMap.finrank_range_of_inj hinjT]
    simp
  have hsurj : Function.Surjective (Matrix.mulVecLin β) := by
    rw [← LinearMap.range_eq_top]
    apply Submodule.eq_top_of_finrank_eq
    rw [Matrix.finrank_range_mulVecLin]
    show β.rank = _
    rw [hrank]
    simp
  have hker : Module.finrank E (LinearMap.ker (Matrix.mulVecLin β)) = 1 := by
    have h1 := LinearMap.finrank_range_add_finrank_ker (Matrix.mulVecLin β)
    rw [LinearMap.range_eq_top.2 hsurj, finrank_top] at h1
    simp at h1
    omega
  obtain ⟨v0, hv0⟩ := Module.finrank_pos_iff_exists_ne_zero.1 (by omega : 0 < Module.finrank E (LinearMap.ker (Matrix.mulVecLin β)))
  have hspan := (finrank_eq_one_iff_of_nonzero' v0 hv0).1 hker
  set vv : Fin (r + 1) → E := (v0 : Fin (r + 1) → E) with hvv
  have hvv0 : vv ≠ 0 := fun h => hv0 (Subtype.ext h)
  have hfv : β *ᵥ vv = 0 := v0.2
  obtain ⟨j, hj⟩ := Function.ne_iff.1 hvv0
  have hj' : vv j ≠ 0 := hj
  choose x hx using fun c : Fin r => hsurj (Pi.single c 1)
  set x' : Fin r → Fin (r + 1) → E := fun c => x c - ((vv j)⁻¹ * x c j) • vv with hx'
  have hx'f : ∀ c, β *ᵥ x' c = Pi.single c 1 := by
    intro c
    have h1 : β *ᵥ x c = Pi.single c 1 := hx c
    simp only [hx', Matrix.mulVec_sub, Matrix.mulVec_smul, hfv, smul_zero, sub_zero, h1]
  have hx'j : ∀ c, x' c j = 0 := by
    intro c
    simp only [hx', Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
    have h2 : (vv j)⁻¹ * x c j * vv j = x c j := by
      rw [mul_comm, ← mul_assoc, mul_inv_cancel₀ hj', one_mul]
    rw [h2, sub_self]
  refine ⟨Matrix.of (fun b c => x' c b), vv, fun k => if k = j then (vv j)⁻¹ else 0, ?_, ?_, ?_⟩
  · ext a c
    have h1 := congrFun (hx'f c) a
    have h2 : ∑ b, β a b * x' c b = (Pi.single c (1 : E) : Fin r → E) a := by
      rw [← h1]
      rfl
    rw [Matrix.mul_apply, Matrix.one_apply]
    simp only [Matrix.of_apply]
    rw [h2, Pi.single_apply]
  · intro c
    have h1 := congrFun hfv c
    simpa [Matrix.mulVec, dotProduct] using h1
  · intro i k
    set y : Fin (r + 1) → E := ∑ c, β c k • x' c with hy
    have hQ : (Matrix.of (fun b c => x' c b) * β) i k = y i := by
      simp [Matrix.mul_apply, hy, Finset.sum_apply, mul_comm]
    have hyf : β *ᵥ y = β *ᵥ Pi.single k 1 := by
      funext a
      simp only [hy, Matrix.mulVec_sum, Matrix.mulVec_smul, hx'f]
      simp [Matrix.mulVec, dotProduct, Pi.single_apply, Finset.sum_apply]
    have hyj : y j = 0 := by
      simp [hy, Finset.sum_apply, hx'j]
    have hmem : Pi.single k 1 - y ∈ LinearMap.ker (Matrix.mulVecLin β) := by
      rw [LinearMap.mem_ker, Matrix.mulVecLin_apply, Matrix.mulVec_sub, hyf, sub_self]
    obtain ⟨t, ht⟩ := hspan ⟨_, hmem⟩
    have ht' : t • vv = Pi.single k 1 - y := congrArg Subtype.val ht
    have htj := congrFun ht' j
    have hti := congrFun ht' i
    simp only [Pi.smul_apply, smul_eq_mul, Pi.sub_apply, hyj, sub_zero, Pi.single_apply] at htj hti
    show (Matrix.of (fun b c => x' c b) * β) i k = _
    rw [hQ]
    by_cases hkj : k = j
    · subst hkj
      simp only [if_true] at htj
      have htv : t = (vv k)⁻¹ := by
        field_simp
        linear_combination htj
      simp only [if_true]
      rw [htv] at hti
      linear_combination hti
    · have hjk : j ≠ k := fun h => hkj h.symm
      simp only [if_neg hjk] at htj
      have ht0 : t = 0 := by
        rcases mul_eq_zero.1 htj with h | h
        · exact h
        · exact absurd h hj
      simp only [if_neg hkj, mul_zero, sub_zero]
      rw [ht0, zero_mul] at hti
      linear_combination hti

end PI.TermsAtPtFiniteW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.RightInvHolds =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.SkewSolveAlt =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.SkewSolveAlt", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.SkewSolve\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.TermsAtPtFiniteW

open Formalism.MainNotions.S Matrix

theorem skewSolve_holds : SkewSolve := by
  intro E _ _ r β x Q v l hind hβQ hβv hQβ hskew
  have hS : βᴴ * x + xᴴ * β = 0 := by
    ext a b
    simp only [Matrix.add_apply, Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.zero_apply,
      ← Finset.sum_add_distrib]
    exact hskew a b
  have h1 : x * Q + (x * Q)ᴴ = 0 := by
    have h0 := congrArg (fun M => Qᴴ * M * Q) hS
    simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_zero, Matrix.zero_mul] at h0
    have e1 : Qᴴ * (βᴴ * x) * Q = x * Q := by
      rw [← Matrix.mul_assoc, ← Matrix.conjTranspose_mul, hβQ, Matrix.conjTranspose_one, Matrix.one_mul]
    have e2 : Qᴴ * (xᴴ * β) * Q = (x * Q)ᴴ := by
      rw [← Matrix.mul_assoc, ← Matrix.conjTranspose_mul, Matrix.mul_assoc, hβQ, Matrix.mul_one]
    rw [e1, e2] at h0
    exact h0
  have hβv' : β *ᵥ v = 0 := by
    funext c
    exact hβv c
  have hw : βᴴ *ᵥ (x *ᵥ v) = 0 := by
    have h0 := congrArg (fun M => M *ᵥ v) hS
    simp only [Matrix.add_mulVec, Matrix.zero_mulVec, ← Matrix.mulVec_mulVec, hβv', Matrix.mulVec_zero,
      add_zero] at h0
    exact h0
  have hxv : x *ᵥ v = 0 := by
    have hu := hind (fun c => star ((x *ᵥ v) c)) (fun b => by
      have hb := congrFun hw b
      have h2 : ∑ c, star ((x *ᵥ v) c) * β c b = star ((βᴴ *ᵥ (x *ᵥ v)) b) := by
        show _ = star (∑ c, βᴴ b c * (x *ᵥ v) c)
        simp only [Matrix.conjTranspose_apply, star_sum, star_mul', star_star]
        exact Finset.sum_congr rfl fun _ _ => mul_comm _ _
      rw [h2, hb]
      simp)
    funext c
    have hc := congrFun hu c
    simpa using hc
  refine ⟨fun c d => ?_, ?_⟩
  · have hcd := congrFun (congrFun h1 c) d
    simpa only [Matrix.add_apply, Matrix.conjTranspose_apply, Matrix.zero_apply] using hcd
  · rw [Matrix.mul_assoc]
    ext i j
    rw [Matrix.mul_apply]
    simp only [hQβ, mul_sub, Finset.sum_sub_distrib, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq',
      Finset.mem_univ, if_true]
    have hi := congrFun hxv i
    have h' : ∑ k, x i k * (v k * l j) = (x *ᵥ v) i * l j := by
      show _ = (∑ k, x i k * v k) * l j
      rw [Finset.sum_mul]
      exact Finset.sum_congr rfl fun _ _ => by ring
    rw [h', hi]
    simp

end PI.TermsAtPtFiniteW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.SkewSolveAlt =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.TermsAtFiniteOfFrameOpShortFin =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.TermsAtFiniteOfFrameOpShortFin", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CarrierRow\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.CellMain\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.DdSPowLeOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.FixedZ\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.HeisOpHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ResFinAlt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.RightInvHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.SkewSolveAlt\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.ZhatIntegralHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.Development\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.TermsAtPtFiniteW

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem termsAtFinite_of_frameOp_shortFin (hF : FrameOp) (hS : ShortFin) (D : D7) (u u' : D.what₂.Word) :
    TermsAtFinite D u u' :=
  termsAtFinite_of (zhatReduce_of cellReduce_holds hF carrierRow_holds zhatIntegral_holds)
    (fixedZhat_of heisOp_holds skewSolve_holds hS rowsDep_holds rightInv_holds fInt_holds resFin_holds) D u u'

end PI.TermsAtPtFiniteW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermsFiniteAtPoint.TermsAtFiniteOfFrameOpShortFin =====
