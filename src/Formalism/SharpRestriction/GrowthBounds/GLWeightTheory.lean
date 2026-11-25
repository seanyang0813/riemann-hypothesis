module

public import Formalism.SharpRestriction.GrowthBounds.RootWeights.EBeta
public import Mathlib.LinearAlgebra.Matrix.Permutation
public import Mathlib.Basic.PEquiv
public import Mathlib.Data.Matrix.PEquiv
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.IsotypicProjectorFixedMem
public import Mathlib.Algebra.Module.Lattice.Basic
public import Lemmata.GeneralBFactLeftVersion.Imports
public import Mathlib.Algebra.Module.Lattice.Full
public import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.EnvelopingMonoidPreservesStable
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.IsotypicStableUnderOperators
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesStable
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.InvariantDenominatorLinftyBound
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.BinomialExpansionCoeffZeroOfDeg
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.DenominatorLemmaWithoutProjector
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.DerivativeValuationBounds
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.GeneratedModuleWeightLemmaPartB
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.GeneratedWeightLemmaOfReducibility
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralPolynomialsEnvelopingStable
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.InvariantProjectionExtremalFormula
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.LatticeTheoremSingleRepLinf
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.LinfAdjointLeEllWtHighest
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.MahPadicGeOfDvd
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.MemBoundedDegreeExponentsIff
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.WeightConditionFromIntegralForm
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.GrowthBounds.RootWeights.ExistsHighestWeightVectorFindim
import Formalism.SharpRestriction.GrowthBounds.RootWeights.DvrFractionFieldCharZeroPrime
import Formalism.SharpRestriction.GrowthBounds.RootWeights.GenericMatrixEvaluationDet
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.RootWeights.AlgHomFixesSupportedPolynomials, Formalism.SharpRestriction.GrowthBounds.RootWeights.FrameChangePreservesMultidegree, Formalism.SharpRestriction.GrowthBounds.RootWeights.ExistsNonzeroMultipleMemLattice, Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesLattice, Formalism.SharpRestriction.GrowthBounds.RootWeights.LagrangeProjectorPreservesStable, Formalism.SharpRestriction.GrowthBounds.RootWeights.IsotypicLatticeCorollary, Formalism.SharpRestriction.GrowthBounds.GLWeightTheory

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.AlgHomFixesSupportedPolynomials =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.RootWeights.AlgHomFixesSupportedPolynomials", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.EBeta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Permutation\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Basic.PEquiv\npublic import Mathlib.Data.Matrix.PEquiv\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

theorem det_mem_subalgebra_of_entries {R P : Type*} [CommRing R] [CommRing P] [Algebra R P] (T : Subalgebra R P) {n : ℕ}
    (N : Matrix (Fin n) (Fin n) P) (h : ∀ i j, N i j ∈ T) : N.det ∈ T := by
  let M : Matrix (Fin n) (Fin n) T := Matrix.of fun i j => ⟨N i j, h i j⟩
  have hM : (T.val.toRingHom).mapMatrix M = N := by ext i j; rfl
  rw [← hM, ← RingHom.map_det]
  exact M.det.2

theorem divisor_supported_of_supported {R σ : Type*} [CommRing R] [IsDomain R] {s : Set σ} {f q : MvPolynomial σ R}
    (hf : f ≠ 0) (hs : f ∈ supported R s) (hq : q ∣ f) : q ∈ supported R s := by
  rw [mem_supported] at hs ⊢
  obtain ⟨g, rfl⟩ := hq
  have hq0 : q ≠ 0 := by rintro rfl; simp at hf
  have hg0 : g ≠ 0 := by rintro rfl; simp at hf
  intro v hv
  by_contra hvs
  have h1 : degreeOf v (q * g) = degreeOf v q + degreeOf v g := degreeOf_mul_eq hq0 hg0
  have h2 : degreeOf v (q * g) = 0 := by
    rw [degreeOf_eq_sup]
    refine Nat.le_zero.mp (Finset.sup_le fun m hm => ?_)
    by_contra hmv
    exact hvs (hs ((mem_vars_iff_mem_support v).mpr ⟨m, hm, Finsupp.mem_support_iff.mpr (by omega)⟩))
  have h3 : degreeOf v q ≠ 0 := mem_vars_iff_degreeOf_ne_zero.mp hv
  omega

theorem algHom_fixes_supported_polynomials {R σ : Type*} [CommRing R] {s : Set σ} (φ : MvPolynomial σ R →ₐ[R] MvPolynomial σ R)
    (h : ∀ v ∈ s, φ (X v) = X v) {q : MvPolynomial σ R} (hq : q ∈ supported R s) : φ q = q := by
  rw [supported_eq_adjoin_X] at hq
  have hle : Algebra.adjoin R (X '' s) ≤ AlgHom.equalizer φ (AlgHom.id R _) := by
    rw [Algebra.adjoin_le_iff]
    rintro _ ⟨v, hv, rfl⟩
    exact h v hv
  exact hle hq

def cofactorMatrix (R : Type) [CommRing R] {ι : Type} {r : ℕ} [NeZero r] (A : Fin r → ι) (a : Fin r) :
    Matrix (Fin r) (Fin r) (MvPolynomial (ι × Fin r) R) :=
  (matA R A).updateRow (lastIdx r) (Pi.single a 1)

def cofactorMatrixColumnCleared (R : Type) [CommRing R] {ι : Type} {r : ℕ} [NeZero r] (A : Fin r → ι) (a : Fin r) :
    Matrix (Fin r) (Fin r) (MvPolynomial (ι × Fin r) R) :=
  Matrix.of fun i j => if i = lastIdx r then (if j = a then 1 else 0) else (if j = a then 0 else X (A i, j))

theorem adjugate_last_row_eq_cofactor_det (R : Type) [CommRing R] {ι : Type} {r : ℕ} [NeZero r] (A : Fin r → ι) (a : Fin r) :
    (matA R A).adjugate a (lastIdx r) = (cofactorMatrix R A a).det := by
  rw [Matrix.adjugate_apply]; rfl

theorem cofactor_det_eq_cleared_det (R : Type) [CommRing R] {ι : Type} {r : ℕ} [NeZero r] (A : Fin r → ι) (a : Fin r) :
    (cofactorMatrix R A a).det = (cofactorMatrixColumnCleared R A a).det := by
  symm
  classical
  refine Matrix.det_eq_of_forall_row_eq_smul_add_const
    (fun i => if i = lastIdx r then 0 else -X (A i, a)) (lastIdx r) (by simp) ?_
  intro i j
  by_cases hi : i = lastIdx r
  · subst hi
    simp [cofactorMatrix, cofactorMatrixColumnCleared, Matrix.updateRow_self, Pi.single_apply]
  · by_cases hj : j = a
    · subst hj
      simp [cofactorMatrix, cofactorMatrixColumnCleared, hi, Matrix.updateRow_self, matA]
    · simp [cofactorMatrix, cofactorMatrixColumnCleared, hi, hj, Matrix.updateRow_self, matA]

def cofactorVariables {ι : Type} {r : ℕ} [NeZero r] (A : Fin r → ι) (a : Fin r) : Set (ι × Fin r) :=
  {v | (∃ i, i ≠ lastIdx r ∧ v.1 = A i) ∧ v.2 ≠ a}

theorem cofactor_last_row_supported (R : Type) [CommRing R] {ι : Type} {r : ℕ} [NeZero r] (A : Fin r → ι) (a : Fin r) :
    (matA R A).adjugate a (lastIdx r) ∈ supported R (cofactorVariables A a) := by
  rw [adjugate_last_row_eq_cofactor_det, cofactor_det_eq_cleared_det]
  apply det_mem_subalgebra_of_entries
  intro i j
  simp only [cofactorMatrixColumnCleared, Matrix.of_apply]
  split_ifs with h1 h2 h3
  · exact Subalgebra.one_mem _
  · exact Subalgebra.zero_mem _
  · exact Subalgebra.zero_mem _
  · rw [supported_eq_adjoin_X]
    exact Algebra.subset_adjoin ⟨_, ⟨⟨i, h1, rfl⟩, h3⟩, rfl⟩


open Classical in
theorem adjugate_last_row_ne_zero (R : Type) [CommRing R] [Nontrivial R] {ι : Type} {r : ℕ} [NeZero r] (A : Fin r → ι)
    (hA : Function.Injective A) (a : Fin r) : (matA R A).adjugate a (lastIdx r) ≠ 0 := by
  rw [adjugate_last_row_eq_cofactor_det, cofactor_det_eq_cleared_det]
  intro h0
  set σ : Equiv.Perm (Fin r) := Equiv.swap a (lastIdx r) with hσ
  let g : ι × Fin r → R := fun v => if ∃ i, v = (A i, σ i) then 1 else 0
  have hmap : (eval g).mapMatrix (cofactorMatrixColumnCleared R A a) = σ.permMatrix R := by
    ext i j
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply, cofactorMatrixColumnCleared, Matrix.of_apply,
      Equiv.Perm.permMatrix, PEquiv.toMatrix_apply, Equiv.toPEquiv_apply, Option.mem_def,
      Option.some.injEq]
    by_cases hi : i = lastIdx r
    · subst hi
      by_cases hj : j = a
      · subst hj; simp [hσ, Equiv.swap_apply_right]
      · have : σ (lastIdx r) ≠ j := by rw [hσ, Equiv.swap_apply_right]; exact Ne.symm hj
        simp [hj, this]
    · have hσi : σ i ≠ a := by
        intro h
        apply hi
        have := congrArg σ h
        rwa [hσ, Equiv.swap_apply_self, Equiv.swap_apply_left] at this
      have key : (∃ i', A i = A i' ∧ j = σ i') ↔ σ i = j := by
        constructor
        · rintro ⟨i', h1, h2⟩
          rw [hA h1]; exact h2.symm
        · intro h; exact ⟨i, rfl, h.symm⟩
      by_cases hj : j = a
      · subst hj; simp [hi, hσi]
      · simp [hi, hj, g, key]
  have hdet := congrArg (eval g) h0
  rw [RingHom.map_det, hmap, Matrix.det_permutation, map_zero] at hdet
  rcases Int.units_eq_one_or (Equiv.Perm.sign σ) with hs | hs <;> simp [hs] at hdet


open Classical in
def lastRowSubstitution (R : Type) [CommRing R] {ι : Type} {r : ℕ} [NeZero r] (A : Fin r → ι) (a : Fin r) :
    MvPolynomial (ι × Fin r) R →ₐ[R] MvPolynomial (ι × Fin r) R :=
  aeval fun v => if v.1 = A (lastIdx r) then (if v.2 = a then 1 else 0) else X v

theorem substitution_det_eq_adjugate (R : Type) [CommRing R] {ι : Type} {r : ℕ} [NeZero r] (A : Fin r → ι)
    (hA : Function.Injective A) (a : Fin r) :
    lastRowSubstitution R A a (detA (R := R) A) = (matA R A).adjugate a (lastIdx r) := by
  rw [adjugate_last_row_eq_cofactor_det]
  unfold detA
  rw [AlgHom.map_det]
  congr 1
  ext i j
  simp only [AlgHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, cofactorMatrix, lastRowSubstitution, aeval_X, matA]
  by_cases hi : i = lastIdx r
  · subst hi
    simp [Matrix.updateRow_self, Pi.single_apply]
  · have : A i ≠ A (lastIdx r) := hA.ne hi
    simp [this, Matrix.updateRow_ne hi]

theorem hCop_proved : HCop := by
  intro R _ ι r _ A hA
  have hC := adjugate_last_row_ne_zero R A hA (lastIdx r)
  refine ⟨hC, ?_⟩
  intro d hd1 hd2
  have hd0 : d ≠ 0 := by rintro rfl; exact hC (zero_dvd_iff.mp hd2)
  have hsL : d ∈ supported R (cofactorVariables A (lastIdx r)) :=
    divisor_supported_of_supported hC (cofactor_last_row_supported R A _) hd2
  have hall : ∀ a, d ∈ supported R (cofactorVariables A a) := by
    intro a
    have hfix : lastRowSubstitution R A a d = d := by
      refine algHom_fixes_supported_polynomials _ ?_ hsL
      rintro v ⟨⟨i, hi, hv⟩, -⟩
      have : v.1 ≠ A (lastIdx r) := by rw [hv]; exact hA.ne hi
      simp [lastRowSubstitution, this]
    have hdv : d ∣ (matA R A).adjugate a (lastIdx r) := by
      rw [← substitution_det_eq_adjugate R A hA a, ← hfix]; exact map_dvd _ hd1
    exact divisor_supported_of_supported (adjugate_last_row_ne_zero R A hA a) (cofactor_last_row_supported R A a) hdv
  have hsub : (d.vars : Set (ι × Fin r)) ⊆ ∅ := by
    intro v hv
    exact ((mem_supported.mp (hall v.2)) hv).2 rfl
  have h0 : d ∈ supported R (∅ : Set (ι × Fin r)) := mem_supported.mpr hsub
  rw [supported_empty, Algebra.mem_bot] at h0
  obtain ⟨c, rfl⟩ := h0
  have hc : c ≠ 0 := by rintro rfl; exact hd0 (map_zero _)
  exact (IsUnit.mk0 c hc).map (algebraMap R _)

end Formalism.MainNotions.G.GLWeightTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.AlgHomFixesSupportedPolynomials =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.FrameChangePreservesMultidegree =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.RootWeights.FrameChangePreservesMultidegree", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.EBeta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

def embed_GL2_standard_swap {k : Type} [CommRing k] {r : ℕ} [NeZero r] (cc : Fin r → k) : Matrix (Fin r) (Fin r) k :=
  fun b a => (if b = a then 1 else 0) + (cc b - if b = lastIdx r then 1 else 0) * (if a = lastIdx r then 1 else 0)

def frameMatrixInverse {k : Type} [CommRing k] {r : ℕ} [NeZero r] (cc : Fin r → k) (u : k) : Matrix (Fin r) (Fin r) k :=
  fun b a => (if b = a then 1 else 0) -
    u * (cc b - if b = lastIdx r then 1 else 0) * (if a = lastIdx r then 1 else 0)

theorem frame_matrix_last_column {k : Type} [CommRing k] {r : ℕ} [NeZero r] (cc : Fin r → k) (a : Fin r) :
    embed_GL2_standard_swap cc a (lastIdx r) = cc a := by
  simp [embed_GL2_standard_swap]

theorem frame_matrix_mul_inverse {k : Type} [CommRing k] {r : ℕ} [NeZero r] (cc : Fin r → k) (u : k)
    (hu : cc (lastIdx r) * u = 1) : embed_GL2_standard_swap cc * frameMatrixInverse cc u = 1 := by
  ext b a
  simp only [Matrix.mul_apply, embed_GL2_standard_swap, frameMatrixInverse, Matrix.one_apply, add_mul, mul_sub, Finset.sum_add_distrib,
    Finset.sum_sub_distrib]
  simp only [ite_mul, mul_ite, one_mul, zero_mul, mul_one, mul_zero, Finset.sum_ite_eq',
    Finset.mem_univ, if_true]
  by_cases h1 : a = lastIdx r
  · subst h1
    by_cases h2 : b = lastIdx r
    · subst h2
      simp
      linear_combination (1 - cc (lastIdx r)) * hu
    · simp [h2]
      linear_combination (-(cc b)) * hu
  · simp [h1]


open Classical in
def frameCoordinateEvaluation {R : Type} [CommRing R] {ι : Type} {r : ℕ} (LL : Letters ι) (S : Set ι) {k1 : Type} [CommRing k1]
    (ph : MvPolynomial (ι × Fin r) R →+* k1) (g0 g0inv : Matrix (Fin r) (Fin r) k1) :
    MvPolynomial (ι × Fin r) k1 →+* k1 :=
  eval₂Hom (RingHom.id k1) fun v =>
    if v.1 ∈ S then
      (if LL.vec v.1 then ∑ a : Fin r, ph (X (v.1, a)) * g0 a v.2
       else ∑ a : Fin r, g0inv v.2 a * ph (X (v.1, a)))
    else ph (X v)

theorem frame_evaluation_comp_change {R : Type} [CommRing R] {ι : Type} {r : ℕ} (LL : Letters ι) (S : Set ι) {k1 : Type}
    [CommRing k1] (ph : MvPolynomial (ι × Fin r) R →+* k1) (g0 g0inv : Matrix (Fin r) (Fin r) k1)
    (h : g0 * g0inv = 1) :
    (frameCoordinateEvaluation LL S ph g0 g0inv).comp (eBeta LL S (ph.comp C) g0 g0inv) = ph := by
  have hh : ∀ b c, ∑ a, g0 b a * g0inv a c = if b = c then 1 else 0 := by
    intro b c
    have := congrFun (congrFun h b) c
    simpa [Matrix.mul_apply, Matrix.one_apply] using this
  apply MvPolynomial.ringHom_ext
  · intro a
    simp [frameCoordinateEvaluation, eBeta]
  · rintro ⟨i, c⟩
    by_cases hS : i ∈ S
    · by_cases hv : LL.vec i = true

      · simp only [RingHom.comp_apply, eBeta, frameCoordinateEvaluation, eval₂Hom_X', hS, hv, if_true, map_sum, map_mul,
          eval₂Hom_C, RingHom.id_apply]
        calc ∑ a, g0inv a c * ∑ b, ph (X (i, b)) * g0 b a
            = ∑ b, ph (X (i, b)) * ∑ a, g0 b a * g0inv a c := by
              simp only [Finset.mul_sum]
              rw [Finset.sum_comm]
              refine Finset.sum_congr rfl fun b _ => Finset.sum_congr rfl fun a _ => by ring
          _ = ph (X (i, c)) := by simp [hh]

      · simp only [RingHom.comp_apply, eBeta, frameCoordinateEvaluation, eval₂Hom_X', hS, hv, if_true, map_sum, map_mul,
          eval₂Hom_C, RingHom.id_apply, if_false, Bool.false_eq_true]
        calc ∑ a, g0 c a * ∑ b, g0inv a b * ph (X (i, b))
            = ∑ b, (∑ a, g0 c a * g0inv a b) * ph (X (i, b)) := by
              simp only [Finset.mul_sum, Finset.sum_mul]
              rw [Finset.sum_comm]
              refine Finset.sum_congr rfl fun b _ => Finset.sum_congr rfl fun a _ => by ring
          _ = ph (X (i, c)) := by simp [hh]
    · simp [frameCoordinateEvaluation, eBeta, hS]


open Classical in
def letterDegreeWeight {ι : Type} {r : ℕ} (i : ι) : ι × Fin r → ℕ := fun v => if v.1 = i then 1 else 0

theorem letter_weight_eq_multidegree {ι : Type} [Fintype ι] {r : ℕ} (i : ι) (m : ι × Fin r →₀ ℕ) :
    Finsupp.weight (letterDegreeWeight i) m = multideg m i := by
  classical
  rw [Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by simp), Fintype.sum_prod_type, Finset.sum_comm]
  simp [letterDegreeWeight, multideg]

theorem frame_change_weighted_homogeneous {R : Type} [CommRing R] {ι : Type} [Fintype ι] {r : ℕ} (LL : Letters ι) (S : Set ι)
    {k1 : Type} [CommRing k1] (j : R →+* k1) (g0 g0inv : Matrix (Fin r) (Fin r) k1) (i : ι) (n : ℕ)
    (G : MvPolynomial (ι × Fin r) R) (hG : ∀ m ∈ G.support, multideg m i = n) :
    IsWeightedHomogeneous (letterDegreeWeight i) (eBeta LL S j g0 g0inv G) n := by
  classical

  rw [G.as_sum, map_sum]
  apply IsWeightedHomogeneous.sum
  intro m hm
  rw [eBeta, eval₂Hom_monomial, RingHom.comp_apply]
  apply IsWeightedHomogeneous.C_mul
  rw [← hG m hm, ← letter_weight_eq_multidegree, Finsupp.weight_apply]
  apply IsWeightedHomogeneous.prod
  intro v _
  apply IsWeightedHomogeneous.pow
  split_ifs
  · exact IsWeightedHomogeneous.sum _ _ _ fun a _ => (isWeightedHomogeneous_X k1 (letterDegreeWeight i) (v.1, a)).C_mul _
  · exact IsWeightedHomogeneous.sum _ _ _ fun a _ => (isWeightedHomogeneous_X k1 (letterDegreeWeight i) (v.1, a)).C_mul _
  · exact isWeightedHomogeneous_X k1 (letterDegreeWeight i) v

theorem frame_change_preserves_multidegree {R : Type} [CommRing R] {ι : Type} [Fintype ι] {r : ℕ} (LL : Letters ι) (S : Set ι)
    {k1 : Type} [CommRing k1] (j : R →+* k1) (g0 g0inv : Matrix (Fin r) (Fin r) k1) (d : ι → ℕ)
    (G : MvPolynomial (ι × Fin r) R) (hG : G ∈ Pol R r d) :
    ∀ m ∈ (eBeta LL S j g0 g0inv G).support, ∀ i, multideg m i = d i := by
  intro m hm i
  have hG' : ∀ m ∈ G.support, multideg m i = d i :=
    fun m hm => ((MvPolynomial.mem_restrictSupport_iff R).1 hG) (by simpa using hm) i
  have := frame_change_weighted_homogeneous LL S j g0 g0inv i (d i) G hG' (mem_support_iff.1 hm)
  rwa [letter_weight_eq_multidegree] at this

open Classical in
theorem last_column_weight_eq {ι : Type} [Fintype ι] {r : ℕ} [NeZero r] (LL : Letters ι) (S : Set ι)
    (m : ι × Fin r →₀ ℕ) :
    eWt LL S m = ∑ i : ι, (if i ∈ S then
      (if LL.vec i then (m (i, lastIdx r) : ℤ) else -(m (i, lastIdx r) : ℤ)) else 0) := by
  unfold eWt
  rw [Finsupp.sum_fintype _ _ (by intro v; split_ifs <;> simp), Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Finset.sum_eq_single (lastIdx r)]
  · simp
  · intro c _ hc
    simp [hc]
  · simp

theorem last_column_weight_bound {ι : Type} [Fintype ι] {r : ℕ} [NeZero r] (LL : Letters ι) (S : Set ι) (A : Fin r → ι)
    (d : ι → ℕ) (m : ι × Fin r →₀ ℕ) (hm : ∀ i, multideg m i = d i)
    (h0 : ∀ l, l ≠ lastIdx r → m (A l, lastIdx r) = 0) :
    eWt LL S m ≤ (m (A (lastIdx r), lastIdx r) : ℤ) + (degOther LL S A d : ℤ) := by
  classical
  have h1 : (m (A (lastIdx r), lastIdx r) : ℤ) =
      ∑ i : ι, (if i = A (lastIdx r) then (m (i, lastIdx r) : ℤ) else 0) := by simp
  have hle : ∀ i, (m (i, lastIdx r) : ℤ) ≤ (d i : ℤ) := by
    intro i
    rw [← hm i]
    unfold multideg
    exact_mod_cast Finset.single_le_sum (f := fun c => m (i, c)) (fun _ _ => Nat.zero_le _) (Finset.mem_univ _)
  rw [last_column_weight_eq, h1, degOther, Nat.cast_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_le_sum
  intro i _
  have hn : (0 : ℤ) ≤ (m (i, lastIdx r) : ℤ) := by positivity
  have hd : (0 : ℤ) ≤ (d i : ℤ) := by positivity
  by_cases hS : i ∈ S
  · by_cases hv : LL.vec i = true
    · by_cases hr : i ∈ Set.range A
      · obtain ⟨l, rfl⟩ := hr
        by_cases hl : l = lastIdx r
        · subst hl
          simp [hS, hv]
        · have := h0 l hl
          simp only [hS, hv, if_true, this]
          split_ifs <;> simp
      · have hne : i ≠ A (lastIdx r) := fun h => hr ⟨_, h.symm⟩
        simp only [hS, hv, hr, hne, if_true, if_false, not_false_eq_true, and_self, zero_add]
        exact hle i
    · simp only [hS, hv, if_true, if_false, Bool.false_eq_true, false_and, and_false, Nat.cast_zero, add_zero]
      split_ifs <;> omega
  · simp only [hS, if_false, false_and, Nat.cast_zero, add_zero]
    split_ifs <;> omega

theorem frame_evaluation_monomial_sum {R : Type} [CommRing R] {ι : Type} [Fintype ι] {r : ℕ} (LL : Letters ι) (S : Set ι)
    {k1 : Type} [CommRing k1] (ph : MvPolynomial (ι × Fin r) R →+* k1) (g0 g0inv : Matrix (Fin r) (Fin r) k1)
    (P : MvPolynomial (ι × Fin r) k1) :
    frameCoordinateEvaluation LL S ph g0 g0inv P =
      ∑ m ∈ P.support, AddMonoidAlgebra.coeff P m * ∏ v, (frameCoordinateEvaluation LL S ph g0 g0inv (X v)) ^ (m v) := by
  conv_lhs => rw [P.as_sum]

  rw [map_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [monomial_eq, map_mul, Finsupp.prod_fintype _ _ (by simp), map_prod]
  simp [frameCoordinateEvaluation]

theorem height_bound_of_weights (hS : HSupp) (hC : HCop) : E1 := by
  intro R _ ι _ LL r _ S A hinj hA d G hG th hth hlt
  classical
  obtain ⟨hne, hrel⟩ := hC R ι r A hinj
  let k1 := Localization.Away ((matA R A).adjugate (lastIdx r) (lastIdx r))
  let ph : MvPolynomial (ι × Fin r) R →+* k1 := algebraMap _ k1
  let cc : Fin r → k1 := fun a => ph ((matA R A).adjugate a (lastIdx r))
  let u : k1 := IsLocalization.Away.invSelf ((matA R A).adjugate (lastIdx r) (lastIdx r))
  have hu : cc (lastIdx r) * u = 1 := IsLocalization.Away.mul_invSelf _
  have hg := frame_matrix_mul_inverse cc u hu
  have himg : ph G = frameCoordinateEvaluation LL S ph (embed_GL2_standard_swap cc) (frameMatrixInverse cc u)
      (eBeta LL S (ph.comp C) (embed_GL2_standard_swap cc) (frameMatrixInverse cc u) G) :=
    (RingHom.congr_fun (frame_evaluation_comp_change LL S ph _ _ hg) G).symm
  have hX : ∀ l, frameCoordinateEvaluation LL S ph (embed_GL2_standard_swap cc) (frameMatrixInverse cc u) (X (A l, lastIdx r)) =
      if l = lastIdx r then ph (detA (R := R) A) else 0 := by
    intro l
    have h1 : frameCoordinateEvaluation LL S ph (embed_GL2_standard_swap cc) (frameMatrixInverse cc u) (X (A l, lastIdx r)) =
        ∑ a, ph (X (A l, a)) * embed_GL2_standard_swap cc a (lastIdx r) := by
      simp [frameCoordinateEvaluation, (hA l).1, (hA l).2]
    rw [h1]
    simp only [frame_matrix_last_column]
    have h2 := congrFun (congrFun (Matrix.mul_adjugate (matA R A)) l) (lastIdx r)
    rw [Matrix.mul_apply] at h2
    have h3 := congrArg ph h2

    rw [map_sum] at h3
    simp only [map_mul] at h3
    refine h3.trans ?_
    simp only [Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
    split_ifs
    · rw [mul_one]; rfl
    · rw [mul_zero, map_zero]
  have hdvd : ph (detA (R := R) A) ^ (th - degOther LL S A d).toNat ∣ ph G := by
    rw [himg, frame_evaluation_monomial_sum]
    apply Finset.dvd_sum
    intro m hm
    apply Dvd.dvd.mul_left
    by_cases h0 : ∀ l, l ≠ lastIdx r → m (A l, lastIdx r) = 0
    · have hb := last_column_weight_bound LL S A d m (frame_change_preserves_multidegree LL S _ _ _ d G hG m hm) h0
      have hw := hS R ι LL r S k1 (ph.comp C) _ _ hg G th hth m hm
      have hN : (th - degOther LL S A d).toNat ≤ m (A (lastIdx r), lastIdx r) := by omega
      refine (pow_dvd_pow _ hN).trans ?_
      have h5 := Finset.dvd_prod_of_mem
        (fun v => (frameCoordinateEvaluation LL S ph (embed_GL2_standard_swap cc) (frameMatrixInverse cc u) (X v)) ^ (m v))
        (Finset.mem_univ (A (lastIdx r), lastIdx r))
      simp only [hX, if_true] at h5
      exact h5
    · push Not at h0
      obtain ⟨l, hl, hml⟩ := h0
      rw [Finset.prod_eq_zero (Finset.mem_univ (A l, lastIdx r)) (by rw [hX, if_neg hl]; exact zero_pow hml)]
      exact dvd_zero _
  obtain ⟨z, hz⟩ := hdvd
  obtain ⟨⟨w, s⟩, hws⟩ := IsLocalization.surj
    (Submonoid.powers ((matA R A).adjugate (lastIdx r) (lastIdx r))) z
  obtain ⟨M, hM⟩ := s.2
  have hinj' : Function.Injective ph :=
    IsLocalization.injective k1 (powers_le_nonZeroDivisors_of_noZeroDivisors hne)
  have heq : G * ((matA R A).adjugate (lastIdx r) (lastIdx r)) ^ M =
      detA (R := R) A ^ (th - degOther LL S A d).toNat * w := by
    apply hinj'
    simp only at hws hM
    calc ph (G * ((matA R A).adjugate (lastIdx r) (lastIdx r)) ^ M)
        = ph G * ph (s : MvPolynomial (ι × Fin r) R) := by rw [map_mul, hM]
      _ = ph (detA (R := R) A) ^ (th - degOther LL S A d).toNat *
            (z * ph (s : MvPolynomial (ι × Fin r) R)) := by rw [hz, mul_assoc]
      _ = ph (detA (R := R) A) ^ (th - degOther LL S A d).toNat * ph w := congrArg _ hws
      _ = ph (detA (R := R) A ^ (th - degOther LL S A d).toNat * w) := by rw [map_mul, map_pow]
  exact (hrel.pow).dvd_of_dvd_mul_right ⟨w, heq⟩

end Formalism.MainNotions.G.GLWeightTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.FrameChangePreservesMultidegree =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.ExistsNonzeroMultipleMemLattice =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.RootWeights.ExistsNonzeroMultipleMemLattice", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.IsotypicProjectorFixedMem\npublic import Mathlib.Algebra.Module.Lattice.Basic\npublic import Lemmata.GeneralBFactLeftVersion.Imports\npublic import Mathlib.Algebra.Module.Lattice.Full\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.GrowthBounds.CovariantDegrees\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

theorem finite_full_submodule_isLattice {O : Type} [CommRing O] [IsDomain O]
    {V : Type} [AddCommGroup V] [Module (KK O) V] [Module O V] [IsScalarTower O (KK O) V]
    (M : Submodule O V) (hfg : M.FG) (hM : MQ (K := KK O) M = ⊤) : Submodule.IsLattice (KK O) M :=
  Submodule.IsLattice.of_fg (KK O) hfg

theorem exists_nonzero_multiple_mem_lattice {O : Type} [CommRing O] [IsDomain O]
    {V : Type} [AddCommGroup V] [Module (KK O) V] [Module O V] [IsScalarTower O (KK O) V]
    (M : Submodule O V) (hM : MQ (K := KK O) M = ⊤) (x : V) : ∃ a : O, a ≠ 0 ∧ a • x ∈ M := by
  first | (apply Bl.general_b_fact_left_version.goal1 <;> assumption)

theorem dual_lattice_values_mem_scaled : DualLatticeDivisibility := by
  intro O _ _ _ V _ _ _ _ _ M hfg hM t z hz
  have : Submodule.IsFullLattice (KK O) M :=
    { toIsLattice := finite_full_submodule_isLattice M hfg hM
      span_eq_top := hM }
  have : Module.Free O M := Submodule.IsLattice.free (KK O) M
  have : Module.Finite O M := Submodule.IsLattice.finite (KK O) M
  let b := Module.finBasis O M
  let B := b.extendOfIsFullLattice (KK O)
  have hB : ∀ i, B i = ((b i : M) : V) := fun i =>
    Module.Basis.extendOfIsFullLattice_apply (KK O) b i
  have hcoord : ∀ i, ∀ x ∈ M, ∃ o : O, B.coord i x = algebraMap O (KK O) o := by
    intro i x hx
    refine ⟨b.repr ⟨x, hx⟩ i, ?_⟩
    have h1 : x = ∑ j, (algebraMap O (KK O) (b.repr ⟨x, hx⟩ j)) • B j := by
      have h2 := congrArg (fun y : M => (y : V)) (b.sum_repr ⟨x, hx⟩)
      simp only [Submodule.coe_sum, Submodule.coe_smul] at h2
      refine h2.symm.trans ?_
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [hB, algebraMap_smul]
    conv_lhs => rw [h1]
    simp [Module.Basis.coord_apply, Finsupp.single_apply, Algebra.algebraMap_eq_smul_one]
  choose o ho using fun i => hz (B.coord i) (hcoord i)
  refine ⟨∑ i, o i • ((b i : M) : V), M.sum_mem fun i _ => M.smul_mem _ (b i).2, ?_⟩
  rw [← B.sum_repr z, Finset.smul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  have := ho i
  rw [Module.Basis.coord_apply] at this
  rw [this, hB, mul_smul, algebraMap_smul]

theorem lattice_inter_subspace_basis : LatticeSubspaceBasis := by
  intro O _ _ _ V _ _ _ _ _ M hfg hM H
  let N : Submodule O H := M.comap (H.subtype.restrictScalars O)
  have hmemN : ∀ x : H, x ∈ N ↔ (x : V) ∈ M := fun x => Iff.rfl
  have hNoeM : IsNoetherian O M := isNoetherian_of_fg_of_noetherian M hfg
  let φ : N →ₗ[O] M :=
    { toFun := fun x => ⟨((x : H) : V), (hmemN x.1).1 x.2⟩
      map_add' := fun x y => rfl
      map_smul' := fun a x => rfl }
  have hφ : Function.Injective φ := by
    intro x y hxy
    have : ((x : H) : V) = ((y : H) : V) := congrArg (fun w : M => (w : V)) hxy
    exact Subtype.ext (Subtype.ext this)
  have hNoeN : IsNoetherian O N := isNoetherian_of_injective φ hφ
  have hNfg : N.FG := (Module.Finite.iff_fg).1 inferInstance
  have hNspan : Submodule.span (KK O) (N : Set H) = ⊤ := by
    rw [eq_top_iff]
    intro x _
    obtain ⟨a, ha, hax⟩ := exists_nonzero_multiple_mem_lattice M hM (x : V)
    have ha1 : algebraMap O (KK O) a ≠ 0 :=
      (map_ne_zero_iff (algebraMap O (KK O)) (IsFractionRing.injective O (KK O))).2 ha
    have hmem : a • x ∈ N := (hmemN _).2 (by simpa using hax)
    have hx : x = (algebraMap O (KK O) a)⁻¹ • (a • x) := by
      rw [← algebraMap_smul (KK O) a x, smul_smul, inv_mul_cancel₀ ha1, one_smul]
    rw [hx]
    exact Submodule.smul_mem _ _ (Submodule.subset_span hmem)
  have : Submodule.IsFullLattice (KK O) N :=
    { toIsLattice := Submodule.IsLattice.of_fg (KK O) hNfg
      span_eq_top := hNspan }
  have : Module.Free O N := Submodule.IsLattice.free (KK O) N
  let b := Module.finBasis O N
  let B := b.extendOfIsFullLattice (KK O)
  have hB : ∀ i, B i = ((b i : N) : H) := fun i =>
    Module.Basis.extendOfIsFullLattice_apply (KK O) b i
  refine ⟨Module.finrank O N, fun j => (((b j : N) : H) : V), fun j => ⟨(hmemN _).1 (b j).2, (b j : H).2⟩, ?_, ?_, ?_⟩
  · have h1 := B.linearIndependent.map' H.subtype (Submodule.ker_subtype H)
    have h2 : (fun j => (((b j : N) : H) : V)) = (H.subtype ∘ B) := by
      funext j
      simp [hB]
    rw [h2]
    exact h1
  · intro x hx
    have h1 := congrArg (fun y : H => (y : V)) (B.sum_repr ⟨x, hx⟩)
    simp only [Submodule.coe_sum, Submodule.coe_smul] at h1
    rw [← h1]
    refine Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, ?_⟩)
    simp [hB]
  · intro x hxM hxH
    refine ⟨fun j => b.repr ⟨⟨x, hxH⟩, (hmemN _).2 hxM⟩ j, ?_⟩
    have h1 := congrArg (fun y : N => ((y : H) : V)) (b.sum_repr ⟨⟨x, hxH⟩, (hmemN _).2 hxM⟩)
    simp only [Submodule.coe_sum, Submodule.coe_smul] at h1
    exact h1.symm

end Formalism.MainNotions.G.GLWeightTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.ExistsNonzeroMultipleMemLattice =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesLattice =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesLattice", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.IsotypicProjectorFixedMem\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.EnvelopingMonoidPreservesStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

section

variable {n : ℕ} {K V : Type*} [Field K] [AddCommGroup V] [Module K V]

def restrictOperators (E : GLOps n K V) (W : Submodule K V) (hW : ∀ a b, ∀ z ∈ W, E a b z ∈ W) : GLOps n K W :=
  fun a b => (E a b).restrict (hW a b)

def IsRestrictionOfAlt (W : Submodule K V) (u : Module.End K W) (u' : Module.End K V) : Prop :=
  ∀ z : W, (u z : V) = u' z

theorem restriction_compat_operator (E : GLOps n K V) (W : Submodule K V) (hW : ∀ a b, ∀ z ∈ W, E a b z ∈ W) (a b : Fin n) :
    IsRestrictionOfAlt W (restrictOperators E W hW a b) (E a b) := fun _ => rfl

theorem restriction_compat_one (W : Submodule K V) : IsRestrictionOfAlt W 1 1 := fun _ => rfl

theorem restriction_compat_mul {W : Submodule K V} {u v : Module.End K W} {u' v' : Module.End K V}
    (h1 : IsRestrictionOfAlt W u u') (h2 : IsRestrictionOfAlt W v v') : IsRestrictionOfAlt W (u * v) (u' * v') := fun z => by
  rw [Module.End.mul_apply, Module.End.mul_apply, h1, h2]

theorem restriction_compat_smul {W : Submodule K V} {u : Module.End K W} {u' : Module.End K V} (c : K)
    (h1 : IsRestrictionOfAlt W u u') : IsRestrictionOfAlt W (c • u) (c • u') := fun z => by
  rw [LinearMap.smul_apply, LinearMap.smul_apply, Submodule.coe_smul, h1]

theorem restriction_compat_sub {W : Submodule K V} {u v : Module.End K W} {u' v' : Module.End K V}
    (h1 : IsRestrictionOfAlt W u u') (h2 : IsRestrictionOfAlt W v v') : IsRestrictionOfAlt W (u - v) (u' - v') := fun z => by
  rw [LinearMap.sub_apply, LinearMap.sub_apply, Submodule.coe_sub, h1, h2]

theorem restriction_compat_pow {W : Submodule K V} {u : Module.End K W} {u' : Module.End K V}
    (h1 : IsRestrictionOfAlt W u u') (k : ℕ) : IsRestrictionOfAlt W (u ^ k) (u' ^ k) := by
  induction k with
  | zero => simpa using restriction_compat_one W
  | succ k ih => rw [pow_succ, pow_succ]; exact restriction_compat_mul ih h1

theorem restriction_compat_list_prod {W : Submodule K V} (l : List ℕ) (f : ℕ → Module.End K W) (f' : ℕ → Module.End K V)
    (h : ∀ j, IsRestrictionOfAlt W (f j) (f' j)) : IsRestrictionOfAlt W (l.map f).prod (l.map f').prod := by
  induction l with
  | nil => simpa using restriction_compat_one W
  | cons a l ih => rw [List.map_cons, List.map_cons, List.prod_cons, List.prod_cons]; exact restriction_compat_mul (h a) ih

theorem integral_enveloping_lifts (E : GLOps n K V) (W : Submodule K V) (hW : ∀ a b, ∀ z ∈ W, E a b z ∈ W)
    (u : Module.End K W) (hu : u ∈ UZmon (restrictOperators E W hW)) : ∃ u' ∈ UZmon E, IsRestrictionOfAlt W u u' := by
  induction hu using Submonoid.closure_induction with
  | mem x hx =>
    rcases hx with ⟨a, b, k, hab, rfl⟩ | ⟨a, k, rfl⟩
    · exact ⟨divPowE E a b k, Submonoid.subset_closure (Or.inl ⟨a, b, k, hab, rfl⟩),
        restriction_compat_smul _ (restriction_compat_pow (restriction_compat_operator E W hW a b) k)⟩
    · exact ⟨binomE E a k, Submonoid.subset_closure (Or.inr ⟨a, k, rfl⟩),
        restriction_compat_smul _ (restriction_compat_list_prod _ _ _ fun j =>
          restriction_compat_sub (restriction_compat_operator E W hW a a) (restriction_compat_smul _ (restriction_compat_one W)))⟩
  | one => exact ⟨1, Submonoid.one_mem _, restriction_compat_one W⟩
  | mul x y _ _ hx hy =>
    obtain ⟨x', hx', hxc⟩ := hx
    obtain ⟨y', hy', hyc⟩ := hy
    exact ⟨x' * y', Submonoid.mul_mem _ hx' hy', restriction_compat_mul hxc hyc⟩

theorem enveloping_monoid_restricts (E : GLOps n K V) (W : Submodule K V) (hW : ∀ a b, ∀ z ∈ W, E a b z ∈ W)
    (u' : Module.End K V) (hu : u' ∈ Umon E) : ∃ u ∈ Umon (restrictOperators E W hW), IsRestrictionOfAlt W u u' := by
  induction hu using Submonoid.closure_induction with
  | mem x hx =>
    obtain ⟨ab, rfl⟩ := hx
    exact ⟨restrictOperators E W hW ab.1 ab.2, Submonoid.subset_closure ⟨ab, rfl⟩, restriction_compat_operator E W hW ab.1 ab.2⟩
  | one => exact ⟨1, Submonoid.one_mem _, restriction_compat_one W⟩
  | mul x y _ _ hx hy =>
    obtain ⟨x', hx', hxc⟩ := hx
    obtain ⟨y', hy', hyc⟩ := hy
    exact ⟨x' * y', Submonoid.mul_mem _ hx' hy', restriction_compat_mul hxc hyc⟩

theorem restricted_weightSpace_iff (E : GLOps n K V) (W : Submodule K V) (hW : ∀ a b, ∀ z ∈ W, E a b z ∈ W)
    (mu : Fin n → ℤ) (z : W) : z ∈ weightSp (restrictOperators E W hW) mu ↔ (z : V) ∈ weightSp E mu := by
  rw [mem_weightSpace_iff_diag_action, mem_weightSpace_iff_diag_action]
  refine forall_congr' fun a => ?_
  rw [Subtype.ext_iff, Submodule.coe_smul]
  rfl

theorem restricted_operators_gl_relation {E : GLOps n K V}
    (hrel : ∀ a b c d, E a b * E c d - E c d * E a b = (if b = c then E a d else 0) - (if d = a then E c b else 0))
    (W : Submodule K V) (hW : ∀ a b, ∀ z ∈ W, E a b z ∈ W) (a b c d : Fin n) :
    restrictOperators E W hW a b * restrictOperators E W hW c d - restrictOperators E W hW c d * restrictOperators E W hW a b =
      (if b = c then restrictOperators E W hW a d else 0) - (if d = a then restrictOperators E W hW c b else 0) := by
  apply LinearMap.ext
  intro z
  apply Subtype.ext
  have h := LinearMap.congr_fun (hrel a b c d) (z : V)
  have hl : (((restrictOperators E W hW a b * restrictOperators E W hW c d - restrictOperators E W hW c d * restrictOperators E W hW a b) z : W) : V)
      = (E a b * E c d - E c d * E a b) (z : V) :=
    restriction_compat_sub (restriction_compat_mul (restriction_compat_operator E W hW a b) (restriction_compat_operator E W hW c d))
      (restriction_compat_mul (restriction_compat_operator E W hW c d) (restriction_compat_operator E W hW a b)) z
  rw [hl, h]
  have h0 : IsRestrictionOfAlt W 0 0 := fun _ => rfl
  refine (restriction_compat_sub (u := if b = c then restrictOperators E W hW a d else 0)
    (v := if d = a then restrictOperators E W hW c b else 0) ?_ ?_ z).symm
  · split_ifs
    · exact restriction_compat_operator E W hW a d
    · exact h0
  · split_ifs
    · exact restriction_compat_operator E W hW c b
    · exact h0

theorem generated_subrep_stable (E : GLOps n K V) (h : V) (a b : Fin n) (z : V) (hz : z ∈ generatedSubrep E h) :
    E a b z ∈ generatedSubrep E h := by
  induction hz using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨u, hu, rfl⟩ := hx
    exact Submodule.subset_span ⟨E a b * u, Submonoid.mul_mem _ (Submonoid.subset_closure ⟨(a, b), rfl⟩) hu, rfl⟩
  | zero => simp
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
  | smul c x _ hx => rw [map_smul]; exact Submodule.smul_mem _ _ hx

theorem mem_generated_subrep_self (E : GLOps n K V) (h : V) : h ∈ generatedSubrep E h :=
  Submodule.subset_span ⟨1, Submonoid.one_mem _, rfl⟩

theorem enveloping_word_maps_weight {E : GLOps n K V}
    (hrel : ∀ a b c d, E a b * E c d - E c d * E a b = (if b = c then E a d else 0) - (if d = a then E c b else 0))
    (u : Module.End K V) (hu : u ∈ Umon E) : ∀ (mu : Fin n → ℤ) (x : V), x ∈ weightSp E mu →
      ∃ mu', u x ∈ weightSp E mu' := by
  induction hu using Submonoid.closure_induction with
  | mem x hx =>
    obtain ⟨ab, rfl⟩ := hx
    intro mu z hz
    exact ⟨_, operator_shifts_weight_by_root hrel ab.1 ab.2 mu z hz⟩
  | one => intro mu z hz; exact ⟨mu, by simpa using hz⟩
  | mul x y _ _ hx hy =>
    intro mu z hz
    obtain ⟨mu1, h1⟩ := hy mu z hz
    obtain ⟨mu2, h2⟩ := hx mu1 _ h1
    exact ⟨mu2, by rw [Module.End.mul_apply]; exact h2⟩

theorem restricted_generated_by_hwv (E : GLOps n K V) (h : V) :
    Submodule.span K {x : generatedSubrep E h | ∃ u ∈ Umon (restrictOperators E (generatedSubrep E h) (generated_subrep_stable E h)),
      x = u ⟨h, mem_generated_subrep_self E h⟩} = ⊤ := by
  rw [eq_top_iff]
  rintro ⟨z, hz⟩ _
  have key : ∀ (x : V) (hx : x ∈ generatedSubrep E h), (⟨x, hx⟩ : generatedSubrep E h) ∈
      Submodule.span K {x : generatedSubrep E h | ∃ u ∈ Umon (restrictOperators E (generatedSubrep E h) (generated_subrep_stable E h)),
        x = u ⟨h, mem_generated_subrep_self E h⟩} := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨u', hu', rfl⟩ := hx
      obtain ⟨u, hu, hc⟩ := enveloping_monoid_restricts E _ (generated_subrep_stable E h) u' hu'
      exact Submodule.subset_span ⟨u, hu, Subtype.ext (hc ⟨h, mem_generated_subrep_self E h⟩).symm⟩
    | zero => exact Submodule.zero_mem _
    | add x y hx hy ihx ihy => exact Submodule.add_mem _ ihx ihy
    | smul c x hx ihx => exact Submodule.smul_mem _ c ihx
  exact key z hz

theorem generated_restriction_irreducible [FiniteDimensional K V] {E : GLOps n K V} (hE : IsGLRep E) (lam : Fin n → ℤ)
    (hlam : Dominant lam) (h : V) (hh : h ∈ highestWeightVectors E lam) (h0 : h ≠ 0) :
    IsIrrHW (restrictOperators E (generatedSubrep E h) (generated_subrep_stable E h)) lam ⟨h, mem_generated_subrep_self E h⟩ := by
  have hh' := (mem_highestWeight_iff E lam h).1 hh
  have hrel := restricted_operators_gl_relation hE.1 (generatedSubrep E h) (generated_subrep_stable E h)
  have hw : (⟨h, mem_generated_subrep_self E h⟩ : generatedSubrep E h) ∈
      weightSp (restrictOperators E (generatedSubrep E h) (generated_subrep_stable E h)) lam :=
    (restricted_weightSpace_iff E _ _ lam _).2 hh'.1
  refine ⟨⟨hrel, fun x => ⟨⊤, inferInstance, Submodule.mem_top, fun _ _ _ _ => Submodule.mem_top⟩, ?_⟩, hlam,
    ⟨fun hc => h0 (congrArg Subtype.val hc), hw, fun a b hab => Subtype.ext (hh'.2 a b hab)⟩,
    restricted_generated_by_hwv E h⟩
  rw [eq_top_iff, ← restricted_generated_by_hwv E h]
  refine Submodule.span_le.2 ?_
  rintro x ⟨u, hu, rfl⟩
  obtain ⟨mu', hmu'⟩ := enveloping_word_maps_weight hrel u hu lam _ hw
  exact Submodule.mem_iSup_of_mem mu' hmu'

end

theorem integral_enveloping_preserves_lattice {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {n : ℕ}
    {V : Type} [AddCommGroup V] [Module (KK O) V] [Module O V] [IsScalarTower O (KK O) V]
    (E : GLOps n (KK O) V) (M : Submodule O V) (hM : UZStable (O := O) E M)
    (u : Module.End (KK O) V) (hu : u ∈ UZmon E) : ∀ x ∈ M, u x ∈ M := by
  induction hu using Submonoid.closure_induction with
  | mem x hx => exact hM x hx
  | one => intro z hz; simpa using hz
  | mul x y _ _ hx hy => intro z hz; rw [Module.End.mul_apply]; exact hx _ (hy z hz)

theorem generated_lattice_corollary_of_thm (D : Formalism.BasicNotions.D7) (h12 : NablaDeltaComparisonField D) (hB : GeneratedMultipleOfHWV) : GeneratedLatticeCorollary := by
  intro p n' O _ _ _ S hG n _ V _ _ _ _ _ E hE M hM lam hlam π hπ h hhM hhHW hh0 c y hy hyp
  have hIrr := generated_restriction_irreducible hE lam hlam h hhHW hh0
  have hT := (h12 p n' O S hG n lam (generatedSubrep E h) (restrictOperators E (generatedSubrep E h) (generated_subrep_stable E h))
    ⟨h, mem_generated_subrep_self E h⟩ hIrr).1
  have hp0 : (p : KK O) ≠ 0 := by
    intro h0
    apply S.p_ne
    apply IsFractionRing.injective O (KK O)
    rw [map_natCast, map_zero]; exact h0
  have hpc : (p : KK O) ^ c ≠ 0 := zpow_ne_zero _ hp0
  have hx : (((p : KK O) ^ c)⁻¹ • (⟨y, hy⟩ : generatedSubrep E h)) ∈
      Nabla (O := O) (restrictOperators E (generatedSubrep E h) (generated_subrep_stable E h)) lam ⟨h, mem_generated_subrep_self E h⟩ := by
    intro u hu
    obtain ⟨u', hu', hc⟩ := integral_enveloping_lifts E _ _ u hu
    obtain ⟨o, ho⟩ := hyp u' hu'
    refine ⟨o, ?_⟩
    have hmem : u' y ∈ generatedSubrep E h := by
      have := (u ⟨y, hy⟩).2
      rwa [hc ⟨y, hy⟩] at this
    obtain ⟨a', ha', r, hr, hsum⟩ := Submodule.mem_sup.1 (hB (KK O) V n E hE lam h hhHW hmem)
    obtain ⟨a, rfl⟩ := Submodule.mem_span_singleton.1 ha'
    have hker : (⨆ mu ∈ {mu : Fin n → ℤ | mu ≠ lam}, (weightSp E mu ⊓ generatedSubrep E h)) ≤ LinearMap.ker π :=
      iSup₂_le fun mu hmu z hz => LinearMap.mem_ker.2 (hπ.2 mu hmu z hz.1)
    have hπr : π r = 0 := LinearMap.mem_ker.1 (hker hr)
    have hπh : π h = h := hπ.1 h ((mem_highestWeight_iff E lam h).1 hhHW).1
    have hπu : π (u' y) = a • h := by rw [← hsum, map_add (f := _), map_smul, hπh, hπr, add_zero]
    have hr' : r = u' y - ((p : KK O) ^ c * algebraMap O (KK O) o) • h := by
      rw [← ho, hπu, ← hsum]; abel
    have hle : (⨆ mu ∈ {mu : Fin n → ℤ | mu ≠ lam}, (weightSp E mu ⊓ generatedSubrep E h)) ≤
        (otherWts (restrictOperators E (generatedSubrep E h) (generated_subrep_stable E h)) lam).map (generatedSubrep E h).subtype :=
      iSup₂_le fun mu hmu z hz => ⟨⟨z, hz.2⟩,
        Submodule.mem_iSup_of_mem mu (Submodule.mem_iSup_of_mem hmu ((restricted_weightSpace_iff E _ _ mu _).2 hz.1)), rfl⟩
    obtain ⟨w, hw, hwr⟩ := hle hr
    have hwr' : (w : V) = r := hwr
    have hfin : u (((p : KK O) ^ c)⁻¹ • (⟨y, hy⟩ : generatedSubrep E h)) -
        (algebraMap O (KK O) o) • (⟨h, mem_generated_subrep_self E h⟩ : generatedSubrep E h) = ((p : KK O) ^ c)⁻¹ • w := by
      apply Subtype.ext
      rw [map_smul, Submodule.coe_sub, Submodule.coe_smul, Submodule.coe_smul, Submodule.coe_smul, hc, hwr', hr',
        smul_sub, smul_smul, ← mul_assoc, inv_mul_cancel₀ hpc, one_mul]
    rw [hfin]
    exact Submodule.smul_mem _ _ hw
  have hDel := hT _ hx
  have hDM : ∀ w ∈ Delta (O := O) (restrictOperators E (generatedSubrep E h) (generated_subrep_stable E h))
      (⟨h, mem_generated_subrep_self E h⟩ : generatedSubrep E h), (w : V) ∈ M := by
    intro w hw
    induction hw using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨u, hu, rfl⟩ := hz
      obtain ⟨u', hu', hc⟩ := integral_enveloping_lifts E _ _ u hu
      rw [hc]
      exact integral_enveloping_preserves_lattice E M hM.1 u' hu' h hhM
    | zero => exact M.zero_mem
    | add z1 z2 _ _ h1 h2 => rw [Submodule.coe_add]; exact M.add_mem h1 h2
    | smul o z _ hz => rw [Submodule.coe_smul_of_tower]; exact M.smul_mem o hz
  refine ⟨_, hDM _ hDel, ?_⟩
  have hcoef : (p : KK O) ^ (c - ((N0 n * deF p n (ellWt lam) : ℕ) : ℤ)) *
      ((p : KK O) ^ (N0 n * deF p n (ellWt lam)) * ((p : KK O) ^ c)⁻¹) = 1 := by
    rw [zpow_sub₀ hp0, zpow_natCast]
    field_simp
  rw [Submodule.coe_smul_of_tower, Submodule.coe_smul, ← algebraMap_smul (KK O) ((p : O) ^ (N0 n * deF p n (ellWt lam))),
    smul_smul, smul_smul, map_pow, map_natCast, mul_assoc, hcoef, one_smul]

end Formalism.MainNotions.G.GLWeightTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesLattice =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.LagrangeProjectorPreservesStable =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.RootWeights.LagrangeProjectorPreservesStable", "h": "module\n\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.ExistsHighestWeightVectorFindim\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.IsotypicProjectorFixedMem\npublic import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.IsotypicStableUnderOperators\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

section

variable {n : ℕ} {K V : Type*} [Field K] [AddCommGroup V] [Module K V]

theorem mem_weightSpace_iff_diagonal (E : GLOps n K V) (mu : Fin n → ℤ) (x : V) :
    x ∈ weightSp E mu ↔ ∀ a, E a a x = (mu a : K) • x := by
  simp [weightSp, Submodule.mem_iInf, LinearMap.mem_ker, sub_eq_zero]

theorem weightSpace_disjoint [CharZero K] (E : GLOps n K V) {mu ka : Fin n → ℤ} (h : mu ≠ ka) {x : V}
    (h1 : x ∈ weightSp E mu) (h2 : x ∈ weightSp E ka) : x = 0 := by
  obtain ⟨a, ha⟩ := Function.ne_iff.1 h
  have e1 := (mem_weightSpace_iff_diagonal E mu x).1 h1 a
  have e2 := (mem_weightSpace_iff_diagonal E ka x).1 h2 a
  rw [e1] at e2
  have e3 : ((mu a : K) - (ka a : K)) • x = 0 := by rw [sub_smul, e2, sub_self]
  rcases smul_eq_zero.1 e3 with h0 | h0
  · exact absurd (by exact_mod_cast sub_eq_zero.1 h0) ha
  · exact h0


open Classical in
def lagrangeFactor (E : GLOps n K V) (mu nu : Fin n → ℤ) : Module.End K V :=
  if h : nu = mu then 1 else
    (((mu (Classical.choose (Function.ne_iff.1 h)) : K) - (nu (Classical.choose (Function.ne_iff.1 h)) : K))⁻¹) •
      (E (Classical.choose (Function.ne_iff.1 h)) (Classical.choose (Function.ne_iff.1 h)) -
        (nu (Classical.choose (Function.ne_iff.1 h)) : K) • (1 : Module.End K V))

theorem lagrange_factor_acts_scalar (E : GLOps n K V) (mu nu ka : Fin n → ℤ) {x : V} (hx : x ∈ weightSp E ka) :
    ∃ c : K, lagrangeFactor E mu nu x = c • x := by
  unfold lagrangeFactor
  split_ifs with h
  · exact ⟨1, by simp⟩
  · set a := Classical.choose (Function.ne_iff.1 h)
    refine ⟨((mu a : K) - (nu a : K))⁻¹ * ((ka a : K) - (nu a : K)), ?_⟩
    simp only [LinearMap.smul_apply, LinearMap.sub_apply, Module.End.one_apply]
    rw [(mem_weightSpace_iff_diagonal E ka x).1 hx a, ← sub_smul, smul_smul]

theorem lagrange_factor_fixes_weight [CharZero K] (E : GLOps n K V) (mu nu : Fin n → ℤ) {x : V} (hx : x ∈ weightSp E mu) :
    lagrangeFactor E mu nu x = x := by
  unfold lagrangeFactor
  split_ifs with h
  · simp
  · have ha := Classical.choose_spec (Function.ne_iff.1 h)
    set a := Classical.choose (Function.ne_iff.1 h)
    simp only [LinearMap.smul_apply, LinearMap.sub_apply, Module.End.one_apply]
    rw [(mem_weightSpace_iff_diagonal E mu x).1 hx a, ← sub_smul, smul_smul, inv_mul_cancel₀, one_smul]
    intro h0
    exact ha (by exact_mod_cast (sub_eq_zero.1 h0).symm)

theorem lagrange_factor_kills_other (E : GLOps n K V) {mu nu : Fin n → ℤ} (h : nu ≠ mu) {x : V} (hx : x ∈ weightSp E nu) :
    lagrangeFactor E mu nu x = 0 := by
  unfold lagrangeFactor
  rw [dite_eq_right h]
  set a := Classical.choose (Function.ne_iff.1 h)
  simp only [LinearMap.smul_apply, LinearMap.sub_apply, Module.End.one_apply]
  rw [(mem_weightSpace_iff_diagonal E nu x).1 hx a, sub_self, smul_zero]

theorem lagrange_factor_preserves_stable (E : GLOps n K V) (mu nu : Fin n → ℤ) (U : Submodule K V)
    (hU : ∀ a, ∀ x ∈ U, E a a x ∈ U) {x : V} (hx : x ∈ U) : lagrangeFactor E mu nu x ∈ U := by
  unfold lagrangeFactor
  split_ifs with h
  · simpa using hx
  · simp only [LinearMap.smul_apply, LinearMap.sub_apply, Module.End.one_apply]
    exact U.smul_mem _ (U.sub_mem (hU _ x hx) (U.smul_mem _ hx))

def lagrangeProjector (E : GLOps n K V) (mu : Fin n → ℤ) (L : List (Fin n → ℤ)) : Module.End K V :=
  (L.map fun nu => lagrangeFactor E mu nu).prod

theorem lagrange_projector_acts_scalar (E : GLOps n K V) (mu ka : Fin n → ℤ) (L : List (Fin n → ℤ)) {x : V}
    (hx : x ∈ weightSp E ka) : ∃ c : K, lagrangeProjector E mu L x = c • x := by
  induction L with
  | nil => exact ⟨1, by simp [lagrangeProjector]⟩
  | cons nu L ih =>
    obtain ⟨c, hc⟩ := ih
    obtain ⟨d, hd⟩ := lagrange_factor_acts_scalar E mu nu ka hx
    refine ⟨c * d, ?_⟩
    have : lagrangeProjector E mu (nu :: L) x = lagrangeFactor E mu nu (lagrangeProjector E mu L x) := by
      simp [lagrangeProjector]
    rw [this, hc, map_smul, hd, smul_smul]

theorem lagrange_projector_fixes_weight [CharZero K] (E : GLOps n K V) (mu : Fin n → ℤ) (L : List (Fin n → ℤ)) {x : V}
    (hx : x ∈ weightSp E mu) : lagrangeProjector E mu L x = x := by
  induction L with
  | nil => simp [lagrangeProjector]
  | cons nu L ih =>
    have : lagrangeProjector E mu (nu :: L) x = lagrangeFactor E mu nu (lagrangeProjector E mu L x) := by
      simp [lagrangeProjector]
    rw [this, ih, lagrange_factor_fixes_weight E mu nu hx]

theorem lagrange_projector_kills_other (E : GLOps n K V) {mu ka : Fin n → ℤ} (h : ka ≠ mu) (L : List (Fin n → ℤ)) (hL : ka ∈ L)
    {x : V} (hx : x ∈ weightSp E ka) : lagrangeProjector E mu L x = 0 := by
  induction L with
  | nil => simp at hL
  | cons nu L ih =>
    have e : lagrangeProjector E mu (nu :: L) x = lagrangeFactor E mu nu (lagrangeProjector E mu L x) := by
      simp [lagrangeProjector]
    rw [e]
    rcases List.mem_cons.1 hL with rfl | hL'
    · obtain ⟨c, hc⟩ := lagrange_projector_acts_scalar E mu ka L hx
      rw [hc, map_smul, lagrange_factor_kills_other E h hx, smul_zero]
    · rw [ih hL', map_zero]

theorem lagrange_projector_preserves_stable (E : GLOps n K V) (mu : Fin n → ℤ) (L : List (Fin n → ℤ)) (U : Submodule K V)
    (hU : ∀ a, ∀ x ∈ U, E a a x ∈ U) {x : V} (hx : x ∈ U) : lagrangeProjector E mu L x ∈ U := by
  induction L with
  | nil => simpa [lagrangeProjector] using hx
  | cons nu L ih =>
    have e : lagrangeProjector E mu (nu :: L) x = lagrangeFactor E mu nu (lagrangeProjector E mu L x) := by
      simp [lagrangeProjector]
    rw [e]
    exact lagrange_factor_preserves_stable E mu nu U hU ih

end

section

variable {n : ℕ} {K V : Type*} [Field K] [CharZero K] [AddCommGroup V] [Module K V]

theorem sum_lagrange_projectors_eq_self (E : GLOps n K V) (t : Finset (Fin n → ℤ))
    (ht : (⊤ : Submodule K V) ≤ ⨆ mu ∈ t, weightSp E mu) (x : V) :
    ∑ mu ∈ t, lagrangeProjector E mu t.toList x = x := by
  have hx : x ∈ ⨆ mu ∈ t, weightSp E mu := ht Submodule.mem_top
  refine Submodule.iSup_induction (fun mu => ⨆ (_ : mu ∈ t), weightSp E mu)
    (motive := fun x => ∑ mu ∈ t, lagrangeProjector E mu t.toList x = x) hx ?_ ?_ ?_
  · intro ka y hy
    by_cases hk : ka ∈ t
    · have hy' : y ∈ weightSp E ka := by simpa [hk] using hy
      rw [Finset.sum_eq_single ka]
      · exact lagrange_projector_fixes_weight E ka _ hy'
      · intro mu _ hne
        exact lagrange_projector_kills_other E (Ne.symm hne) _ (by simpa using hk) hy'
      · intro h; exact absurd hk h
    · have : y = 0 := by simpa [hk] using hy
      simp [this]
  · simp
  · intro y z hy hz
    simp only [map_add (f := _), Finset.sum_add_distrib, hy, hz]

theorem lagrange_projector_mem_weightSpace (E : GLOps n K V) (t : Finset (Fin n → ℤ))
    (ht : (⊤ : Submodule K V) ≤ ⨆ mu ∈ t, weightSp E mu) (mu : Fin n → ℤ) (x : V) :
    lagrangeProjector E mu t.toList x ∈ weightSp E mu := by
  have hx : x ∈ ⨆ mu ∈ t, weightSp E mu := ht Submodule.mem_top
  refine Submodule.iSup_induction (fun mu => ⨆ (_ : mu ∈ t), weightSp E mu)
    (motive := fun x => lagrangeProjector E mu t.toList x ∈ weightSp E mu) hx ?_ ?_ ?_
  · intro ka y hy
    by_cases hk : ka ∈ t
    · have hy' : y ∈ weightSp E ka := by simpa [hk] using hy
      by_cases hkm : ka = mu
      · subst hkm
        rw [lagrange_projector_fixes_weight E ka _ hy']; exact hy'
      · rw [lagrange_projector_kills_other E hkm _ (by simpa using hk) hy']; exact Submodule.zero_mem _
    · have : y = 0 := by simpa [hk] using hy
      simp [this]
  · simp
  · intro y z hy hz
    rw [map_add (f := _)]; exact Submodule.add_mem _ hy hz

theorem nonzero_weight_mem_support (E : GLOps n K V) (t : Finset (Fin n → ℤ))
    (ht : (⊤ : Submodule K V) ≤ ⨆ mu ∈ t, weightSp E mu) {ka : Fin n → ℤ} {y : V}
    (hy : y ∈ weightSp E ka) (h0 : y ≠ 0) : ka ∈ t := by
  by_contra hk
  apply h0
  rw [← sum_lagrange_projectors_eq_self E t ht y]
  apply Finset.sum_eq_zero
  intro mu hmu
  obtain ⟨c, hc⟩ := lagrange_projector_acts_scalar E mu ka t.toList hy
  have h1 := lagrange_projector_mem_weightSpace E t ht mu y
  have h2 : lagrangeProjector E mu t.toList y ∈ weightSp E ka := by rw [hc]; exact Submodule.smul_mem _ _ hy
  exact weightSpace_disjoint E (by rintro rfl; exact hk hmu) h1 h2

theorem stable_subspace_has_weight_vector (E : GLOps n K V) (t : Finset (Fin n → ℤ))
    (ht : (⊤ : Submodule K V) ≤ ⨆ mu ∈ t, weightSp E mu) (U : Submodule K V)
    (hU : ∀ a, ∀ x ∈ U, E a a x ∈ U) (hne : U ≠ ⊥) :
    ∃ mu ∈ t, ∃ x ∈ U, x ≠ 0 ∧ x ∈ weightSp E mu := by
  obtain ⟨x, hx, h0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hne
  by_contra hcon
  push Not at hcon
  apply h0
  rw [← sum_lagrange_projectors_eq_self E t ht x]
  apply Finset.sum_eq_zero
  intro mu hmu
  by_contra hP
  exact hcon mu hmu _ (lagrange_projector_preserves_stable E mu _ U hU hx) hP (lagrange_projector_mem_weightSpace E t ht mu x)

omit [CharZero K] in
theorem raising_shifts_weight_by_root (E : GLOps n K V)
    (hrel : ∀ a b c d, E a b * E c d - E c d * E a b = (if b = c then E a d else 0) - (if d = a then E c b else 0))
    {a b : Fin n} (hab : a ≠ b) {mu : Fin n → ℤ} {x : V} (hx : x ∈ weightSp E mu) :
    E a b x ∈ weightSp E (mu + rootW a b) := by
  rw [mem_weightSpace_iff_diagonal] at hx ⊢
  intro c
  have h := congrArg (fun f : Module.End K V => f x) (hrel c c a b)
  simp only [LinearMap.sub_apply, Module.End.mul_apply] at h
  rw [hx c, map_smul, sub_eq_iff_eq_add] at h
  rw [h]
  by_cases hca : c = a
  · subst hca
    have hbc : ¬ b = c := fun h => hab h.symm
    simp only [if_true, if_neg hbc, LinearMap.zero_apply, sub_zero, rootW, Pi.add_apply, Pi.sub_apply,
      Pi.single_eq_same, Pi.single_eq_of_ne hab]
    push_cast
    rw [add_smul, one_smul, add_comm]
  · by_cases hcb : c = b
    · subst hcb
      simp only [if_neg hca, if_true, LinearMap.zero_apply, zero_sub, rootW, Pi.add_apply, Pi.sub_apply,
        Pi.single_eq_same, Pi.single_eq_of_ne hca]
      push_cast
      rw [add_smul, neg_smul, one_smul, add_comm]
    · have hbc : ¬ b = c := fun h => hcb h.symm
      simp only [if_neg hca, if_neg hbc, LinearMap.zero_apply, sub_zero, rootW, Pi.add_apply, Pi.sub_apply,
        Pi.single_eq_of_ne hca, Pi.single_eq_of_ne hcb, zero_add, add_zero]

def weightHeight (mu : Fin n → ℤ) : ℤ := ∑ c : Fin n, ((c : ℕ) : ℤ) * mu c

theorem weightHeight_add_root (mu : Fin n → ℤ) (a b : Fin n) :
    weightHeight (mu + rootW a b) = weightHeight mu + ((a : ℕ) : ℤ) - ((b : ℕ) : ℤ) := by
  simp [weightHeight, rootW, mul_add, mul_sub, Finset.sum_add_distrib, Finset.sum_sub_distrib, Pi.single_apply]
  ring

theorem exists_highest_weight_vector (E : GLOps n K V)
    (hrel : ∀ a b c d, E a b * E c d - E c d * E a b = (if b = c then E a d else 0) - (if d = a then E c b else 0))
    (t : Finset (Fin n → ℤ)) (ht : (⊤ : Submodule K V) ≤ ⨆ mu ∈ t, weightSp E mu) (U : Submodule K V)
    (hU : ∀ a b, ∀ x ∈ U, E a b x ∈ U) (hne : U ≠ ⊥) : ∃ mu, ∃ x ∈ U, IsHWV E mu x := by
  classical
  have hT : (t.filter (fun mu => ∃ x ∈ U, x ≠ 0 ∧ x ∈ weightSp E mu)).Nonempty := by
    obtain ⟨mu, hmu, h⟩ := stable_subspace_has_weight_vector E t ht U (fun a => hU a a) hne
    exact ⟨mu, Finset.mem_filter.2 ⟨hmu, h⟩⟩
  obtain ⟨mu, hmu, hmin⟩ := Finset.exists_min_image _ weightHeight hT
  obtain ⟨_, x, hxU, hx0, hxw⟩ := Finset.mem_filter.1 hmu
  refine ⟨mu, x, hxU, hx0, hxw, fun a b hab => ?_⟩
  by_contra hy
  have hw := raising_shifts_weight_by_root E hrel (ne_of_lt hab) hxw
  have hin := nonzero_weight_mem_support E t ht hw hy
  have h1 := hmin _ (Finset.mem_filter.2 ⟨hin, _, hU a b x hxU, hy, hw⟩)
  rw [weightHeight_add_root] at h1
  have h2 : ((a : ℕ) : ℤ) < ((b : ℕ) : ℤ) := by exact_mod_cast hab
  omega

omit [CharZero K] in
theorem isotypic_stable_under_operators (E : GLOps n K V) (mu : Fin n → ℤ) (a b : Fin n) {x : V} (hx : x ∈ isoSub E mu) :
    E a b x ∈ isoSub E mu := by
  first | (apply UpperTheory.Reformulated.B.Qf30.isotypic_stable_under_operators <;> assumption)

end

theorem isotypic_subspaces_span_top (D : Formalism.BasicNotions.D7) (h2 : adm2 D) (K V : Type) [Field K] [CharZero K] [AddCommGroup V]
    [Module K V] [FiniteDimensional K V] (n : ℕ) (E : GLOps n K V) (hE : IsGLRep E) :
    (⨆ mu : Fin n → ℤ, isoSub E mu) = ⊤ := by
  apply Formalism.MainNotions.G.GLWeightTheory.complete_reducibility_findim <;> assumption

theorem isotypic_projector_fixed_mem (D : Formalism.BasicNotions.D7) (h2 : adm2 D) : IsotypicProjectorFixedMem := by
  intro K V _ _ _ _ _ n E hE lam e he Y hY
  have hY' : Y ∈ (⨆ mu : Fin n → ℤ, isoSub E mu) := by
    rw [isotypic_subspaces_span_top D h2 K V n E hE]; exact Submodule.mem_top
  rw [← hY]
  refine Submodule.iSup_induction (fun mu => isoSub E mu) (motive := fun y => e y ∈ isoSub E lam) hY' ?_ ?_ ?_
  · intro mu y hy
    by_cases hm : mu = lam
    · subst hm
      rw [he.1 y hy]; exact hy
    · rw [he.2 mu hm y hy]; exact Submodule.zero_mem _
  · simp
  · intro y z hy hz
    rw [map_add (f := _)]; exact Submodule.add_mem _ hy hz

end Formalism.MainNotions.G.GLWeightTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.LagrangeProjectorPreservesStable =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.IsotypicLatticeCorollary =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.RootWeights.IsotypicLatticeCorollary", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.EnvelopingMonoidPreservesStable\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.ExistsNonzeroMultipleMemLattice\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesLattice\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesStable\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.LagrangeProjectorPreservesStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

theorem isotypic_lattice_corollary (D : Formalism.BasicNotions.D7) (h2 : adm2 D) (h12 : NablaDeltaComparisonField D) : TranslateCorollaryField D :=
  isotypic_lattice_of_five_parts D (isotypic_projector_fixed_mem D h2) hwv_generated_multiple_of_hwv dual_lattice_values_mem_scaled lattice_inter_subspace_basis (generated_lattice_corollary_of_thm D h12 hwv_generated_multiple_of_hwv)

end Formalism.MainNotions.G.GLWeightTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.RootWeights.IsotypicLatticeCorollary =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.GLWeightTheory =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.GLWeightTheory", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.InvariantDenominatorLinftyBound\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.AlgHomFixesSupportedPolynomials\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.BinomialExpansionCoeffZeroOfDeg\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.DenominatorLemmaWithoutProjector\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.DerivativeValuationBounds\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.DvrFractionFieldCharZeroPrime\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.FrameChangePreservesMultidegree\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.GeneratedModuleWeightLemmaPartB\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.GeneratedWeightLemmaOfReducibility\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.GenericMatrixEvaluationDet\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralPolynomialsEnvelopingStable\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.InvariantProjectionExtremalFormula\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.IsotypicLatticeCorollary\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.LatticeTheoremSingleRepLinf\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.LinfAdjointLeEllWtHighest\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.MahPadicGeOfDvd\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.MemBoundedDegreeExponentsIff\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.WeightConditionFromIntegralForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.G.GLWeightTheory

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

theorem exponent_condition_holds (D : Formalism.BasicNotions.D7) : adm3 D := by
  intro p hp m k b hkm hb
  haveI : Fact p.Prime := ⟨hp⟩
  rw [Nat.padicValNat_def]
  exact multiplicity_choose hkm hb

theorem key_positivity_condition (D : Formalism.BasicNotions.D7) : ArchimedeanSignatureMatching D := by
  intro A _ _ _ σ w hw F G h
  have hp : Prime w := UniqueFactorizationMonoid.irreducible_iff_prime.mp hw
  haveI : (Ideal.span {w}).IsPrime := (Ideal.span_singleton_prime hp.ne_zero).mpr hp

  have key : ∀ H : MvPolynomial σ A,
      C w ∣ H ↔ MvPolynomial.map (Ideal.Quotient.mk (Ideal.span {w})) H = 0 := by
    intro H
    rw [MvPolynomial.C_dvd_iff_dvd_coeff, MvPolynomial.ext_iff]
    simp only [MvPolynomial.coeff_map]
    change (∀ i, w ∣ H.coeff i) ↔ ∀ m, (Ideal.Quotient.mk (Ideal.span {w})) (H.coeff m) = 0
    simp only [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton]
  rw [key] at h
  rw [map_mul] at h
  rcases mul_eq_zero.mp h with h1 | h1
  · exact Or.inl ((key F).mpr h1)
  · exact Or.inr ((key G).mpr h1)

private theorem sub_one_mod_eq_ite (a n : ℕ) (hn : 1 ≤ n) (ha : 1 ≤ a) :
    (a - 1) % n = if 1 ≤ a % n then a % n - 1 else n - 1 := by
  have hdiv := Nat.div_add_mod a n
  have hlt := Nat.mod_lt a (by omega : n > 0)
  generalize a % n = r at hdiv hlt ⊢
  generalize a / n = q at hdiv
  generalize hx : n * q = x at hdiv
  split_ifs with hr
  · have e : a - 1 = (r - 1) + x := by omega
    rw [e, ← hx, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt (by omega)]
  · have hq : q ≠ 0 := by
      rintro rfl
      rw [mul_zero] at hx
      omega
    obtain ⟨q', rfl⟩ := Nat.exists_eq_succ_of_ne_zero hq
    have hx' : x = n * q' + n := by rw [← hx, Nat.mul_succ]
    generalize hy : n * q' = y at hx'
    have e : a - 1 = (n - 1) + y := by omega
    rw [e, ← hy, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt (by omega)]

theorem true_derivative_digit_class (D : Formalism.BasicNotions.D7) : TrueDerivativeDigitClass D := by
  classical
  intro R _ σ P hP rho k F hF
  have hF' : ∀ m ∈ F.support, digitOfL P m = rho := fun m hm =>
    (show (↑F.support : Set (σ →₀ ℕ)) ⊆ {m | digitOfL P m = rho} from hF) hm

  rw [F.as_sum, map_sum]
  refine Submodule.sum_mem _ fun m hm => ?_
  rw [MvPolynomial.pderiv_monomial, DigitClassL, MvPolynomial.monomial_mem_restrictSupport]
  by_cases hmk : m k = 0
  · right
    simp [hmk]
  · left
    have hd := hF' m hm
    show digitOfL P (m - Finsupp.single k 1) = _
    funext j
    have hdj := congrFun hd j
    simp only [digitOfL] at hdj ⊢
    by_cases hjk : j = k
    · subst hjk
      rw [Function.update_self, Finsupp.tsub_apply, Finsupp.single_eq_same,
        sub_one_mod_eq_ite (m j) (P j) (hP j) (Nat.one_le_iff_ne_zero.mpr hmk), hdj]
    · rw [Function.update_of_ne hjk, Finsupp.tsub_apply]
      simp [Ne.symm hjk, hdj]

theorem unit_function_expansion (D : Formalism.BasicNotions.D7) : UnitFunctionExpansion D := mahler_decay_products_of D (fun p hp => hDec_of hp (hdU_proved hp)) (fun p hp => hMul_proved hp)

theorem lemma_five_two_first_holds (D : Formalism.BasicNotions.D7) : FactorialUnitDecomposition D := unit_function_mahler_decay_of D (fun p hp => hDec_of hp (hdU_proved hp)) (fun p hp => hMul_proved hp)
    (fun p hp => hUnit_of hp (hdU_proved hp))

theorem support_coprimality_lemma_holds (D : Formalism.BasicNotions.D7) : ConclusionE D := prvE_of_gl_operators_form_representation D (height_bound_of_weights hSupp_proved hCop_proved)

theorem section_five_lemmas_hold (D : Formalism.BasicNotions.D7) : UnitProductLemmas D := ⟨unit_function_expansion D, show FactorialUnitDecomposition D ∧ DegreeTruncationLemma D from ⟨lemma_five_two_first_holds D, degree_truncation D⟩⟩

theorem lattice_index_lemma_holds (D : Formalism.BasicNotions.D7) : DerivativeLemmaField D := show DerivativeValuationBound D ∧ DerivativeDigitExpansion D ∧ TrueDerivativeDigitClass D from ⟨derivative_valuation_bound D, derivative_digit_expansion D, true_derivative_digit_class D⟩

theorem valuation_field_of_adm2 (D : Formalism.BasicNotions.D7) (h2 : adm2 D) : ValuationLemmaField D := show ValuationsAdditive D ∧ ShaLengthVersionTwo D from ⟨valuationsAdditive_D7 D, generated_weight_lemma_of_reducibility D h2 (valuationsAdditive_D7 D)⟩

theorem valuation_field (D : Formalism.BasicNotions.D7) : ValuationLemmaField D := valuation_field_of_adm2 D (weight_condition_from_integral_form D)

theorem invariant_projection_sup_norm_denominator (D : Formalism.BasicNotions.D7) : InvariantDenominatorLinftyBound := linf_lemma_without_projector D (weight_condition_from_integral_form D)

theorem invariantProjectionDenominator (D : Formalism.BasicNotions.D7) : InvariantProjectionDenominator := denominator_lemma_without_projector D (weight_condition_from_integral_form D)

theorem nabla_delta_comparison_field (D : Formalism.BasicNotions.D7) : NablaDeltaComparisonField D := integral_form_of_linf_lemma D (weight_condition_from_integral_form D) (invariant_projection_sup_norm_denominator D)

theorem isotypic_projector_theorem_field (D : Formalism.BasicNotions.D7) : IsotypicProjectorTheoremField D := isotypicProjectorTheoremField_of_linfty_bound D (weight_condition_from_integral_form D) (invariant_projection_sup_norm_denominator D)

theorem translate_corollary_field (D : Formalism.BasicNotions.D7) : TranslateCorollaryField D := isotypic_lattice_corollary D (weight_condition_from_integral_form D) (nabla_delta_comparison_field D)

theorem filtered_projector_corollary_field (D : Formalism.BasicNotions.D7) : FilteredProjectorCorollaryField D := polynomial_isotypic_lattice_corollary D (weight_condition_from_integral_form D) (isotypic_projector_theorem_field D)

def InvariantProductFormula : Prop :=
  ∀ (p n' : ℕ) (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (_S : UniformizedDVR p O),
    AdmissibleDVR p n' O →
    ∀ (n : ℕ) (V : Type) [AddCommGroup V] [Module (KK O) V] [Module O V] [IsScalarTower O (KK O) V]
      [FiniteDimensional (KK O) V] (E : GLOps n (KK O) V), IsGLRep E →
      ∀ M : Submodule O V, UZLattice E M → MQ (K := KK O) M = ⊤ →
      ∀ Inv : Module.End (KK O) V, IsInvProj E Inv →
        (∀ π : Module.End (KK O) V, IsWtProj E 0 π → ∀ ord, NormalOrder n ord →
          ∀ T : ℕ, Module.finrank (KK O) V ≤ T → Inv = pp E 0 ord T * π)

theorem invariant_projection_of_product_formula (D : Formalism.BasicNotions.D7) (h : InvariantProductFormula) : InvariantProjectionField D := by
  intro p n' O _ _ _ S hG n V _ _ _ _ _ E hE M hM hMQ Inv hInv
  exact ⟨h p n' O S hG n V E hE M hM hMQ Inv hInv, invariantProjectionDenominator D p n' O S hG n V E hE M hM hMQ Inv hInv⟩

theorem product_formula_of_extremal_projector (D : Formalism.BasicNotions.D7) (h5 : adm5 D) : InvariantProductFormula := by
  intro p n' O _ _ _ S hG n V _ _ _ _ _ E hE M hM hMQ Inv hInv π hπ ord hord T hT
  haveI := dvr_fraction_field_charZero_prime S hG.prime
  exact invariant_projection_extremal_formula D (weight_condition_from_integral_form D) h5 E hE Inv hInv π hπ ord hord T hT

theorem counting_statement_of_block_form (D : Formalism.BasicNotions.D7) (h : InvariantProductFormula) : Conclusion1 D := show ProjectionTheorems D ∧ ValuationLemmaField D ∧ ConclusionE D ∧ UnitProductLemmas D ∧ DerivativeLemmaField D from
    ⟨show InvariantProjectionField D ∧ NablaDeltaComparisonField D ∧ IsotypicProjectorTheoremField D ∧ TranslateCorollaryField D ∧ FilteredProjectorCorollaryField D from
      ⟨invariant_projection_of_product_formula D h, nabla_delta_comparison_field D, isotypic_projector_theorem_field D, translate_corollary_field D, filtered_projector_corollary_field D⟩,
     valuation_field D, support_coprimality_lemma_holds D, section_five_lemmas_hold D, lattice_index_lemma_holds D⟩

theorem part_one_of_extremal_projector (D : Formalism.BasicNotions.D7) (h5 : adm5 D) : Conclusion1 D := counting_statement_of_block_form D (product_formula_of_extremal_projector D h5)

theorem problem_holds (D : Formalism.BasicNotions.D7) : IntegralityFromMetric D := fun hA => part_one_of_extremal_projector D (show admitted D from hA).2.2.2.2

end Formalism.MainNotions.G.GLWeightTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.GLWeightTheory =====
