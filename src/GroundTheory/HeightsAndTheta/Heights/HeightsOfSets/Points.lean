module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.NumberTheory.NumberField.Completion.FinitePlace
public import Mathlib.RingTheory.MvPolynomial.WeightedHomogeneous
public import Mathlib.Analysis.InnerProductSpace.Calculus

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial NumberField
open scoped ContDiff

noncomputable section

variable {ι : Type} [Fintype ι] [DecidableEq ι]

abbrev Coord (n : ι → ℕ) : Type := Σ k : ι, Fin (n k + 1)

def coordDeg (n : ι → ℕ) : Coord n → (ι → ℕ) := fun v ↦ Pi.single v.1 1

abbrev Cone (n : ι → ℕ) (F : Type*) : Type _ := (k : ι) → Fin (n k + 1) → F

variable {n : ι → ℕ}

def evalCone {F : Type*} [CommRing F] (z : Cone n F) (f : MvPolynomial (Coord n) ℤ) : F :=
  eval₂ (Int.castRingHom F) (fun v : Coord n ↦ z v.1 v.2) f

def BlockNonzero {F : Type*} [Zero F] (z : Cone n F) : Prop := ∀ k, z k ≠ 0


variable (n) in
structure ArithVariety (n : ι → ℕ) where

  ideal : Ideal (MvPolynomial (Coord n) ℤ)
  isPrime : ideal.IsPrime

  homogeneous : ∀ f ∈ ideal, ∀ m : ι → ℕ, weightedHomogeneousComponent (coordDeg n) m f ∈ ideal

  relevant : ∀ k, ∃ i, (X ⟨k, i⟩ : MvPolynomial (Coord n) ℤ) ∉ ideal

  horizontal : ∀ a : ℤ, (C a : MvPolynomial (Coord n) ℤ) ∈ ideal → a = 0

namespace ArithVariety

def points (P : ArithVariety n) (F : Type*) [CommRing F] : Set (Cone n F) :=
  {z | BlockNonzero z ∧ ∀ f ∈ P.ideal, evalCone z f = 0}

def ZariskiDense (P : ArithVariety n) (S : Set (Cone n (AlgebraicClosure ℚ))) : Prop :=
  ∀ (m : ι → ℕ) (f : MvPolynomial (Coord n) ℤ), IsWeightedHomogeneous (coordDeg n) f m →
    (∀ z ∈ S, evalCone z f = 0) → f ∈ P.ideal



end ArithVariety


variable (n) in
protected structure HermLine (n : ι → ℕ) where

  deg : ι → ℤ

  metric : Cone n ℂ → ℝ
  metric_pos : ∀ z : Cone n ℂ, BlockNonzero z → 0 < metric z
  metric_smul : ∀ (c : ι → ℂ) (z : Cone n ℂ), (∀ k, c k ≠ 0) → BlockNonzero z →
    metric (fun k i ↦ c k * z k i) = (∏ k, ‖c k‖ ^ deg k) * metric z
  metric_smooth : ContDiffOn ℝ ∞ metric {z | BlockNonzero z}

def l2Norm {m : ℕ} (w : Fin m → ℂ) : ℝ := Real.sqrt (∑ i, ‖w i‖ ^ 2)

theorem norm_le_l2Norm {m : ℕ} (w : Fin m → ℂ) (i : Fin m) : ‖w i‖ ≤ l2Norm w :=
  Real.le_sqrt_of_sq_le (Finset.single_le_sum (f := fun j ↦ ‖w j‖ ^ 2)
    (fun _ _ ↦ sq_nonneg _) (Finset.mem_univ i))

theorem vectorL2Norm_pos {m : ℕ} {w : Fin m → ℂ} (hw : w ≠ 0) : 0 < l2Norm w := by
  obtain ⟨i, hi⟩ := Function.ne_iff.mp hw
  exact lt_of_lt_of_le (norm_pos_iff.mpr hi) (norm_le_l2Norm w i)

theorem vectorL2Norm_const_mul {m : ℕ} (c : ℂ) (w : Fin m → ℂ) :
    l2Norm (fun i ↦ c * w i) = ‖c‖ * l2Norm w := by
  simp only [l2Norm, norm_mul, mul_pow, ← Finset.mul_sum]
  rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (norm_nonneg _)]

omit [DecidableEq ι] in
theorem contDiffOn_l2Norm_block (k : ι) :
    ContDiffOn ℝ ∞ (fun z : Cone n ℂ ↦ l2Norm (z k)) {z | BlockNonzero z} := by
  have hsum : ContDiff ℝ ∞ (fun z : Cone n ℂ ↦ ∑ i, ‖z k i‖ ^ 2) := by
    refine ContDiff.sum fun i _ ↦ ?_
    exact (contDiff_norm_sq ℝ).comp (contDiff_pi.1 (contDiff_pi.1 contDiff_id k) i)
  refine hsum.contDiffOn.sqrt fun z hz ↦ ?_
  have := vectorL2Norm_pos (hz k)
  exact ne_of_gt (Real.sqrt_pos.mp this)

namespace HermLine


variable (n) in
def standard : Heights.HermLine n where
  deg _ := 1
  metric z := ∏ k, l2Norm (z k)
  metric_pos z hz := Finset.prod_pos fun k _ ↦ vectorL2Norm_pos (hz k)
  metric_smul c z _ _ := by
    simp only [vectorL2Norm_const_mul, zpow_one, Finset.prod_mul_distrib]
  metric_smooth := contDiffOn_prod fun k _ ↦ contDiffOn_l2Norm_block k


end HermLine

def coordField (z : Cone n (AlgebraicClosure ℚ)) : IntermediateField ℚ (AlgebraicClosure ℚ) :=
  IntermediateField.adjoin ℚ (Set.range fun v : Coord n ↦ z v.1 v.2)

theorem isIntegral_algebraicClosure_rat (x : AlgebraicClosure ℚ) : IsIntegral ℚ x := by
  have : Algebra.IsAlgebraic ℚ (AlgebraicClosure ℚ) := by
    convert AlgebraicClosure.isAlgebraic ℚ
  exact (Algebra.IsAlgebraic.isAlgebraic x).isIntegral

instance (z : Cone n (AlgebraicClosure ℚ)) : FiniteDimensional ℚ (coordField z) :=
  IntermediateField.finiteDimensional_adjoin fun x _ ↦ isIntegral_algebraicClosure_rat x

instance (z : Cone n (AlgebraicClosure ℚ)) : NumberField (coordField z) := {}

def coordVec (z : Cone n (AlgebraicClosure ℚ)) : Cone n (coordField z) :=
  fun k i ↦ ⟨z k i, IntermediateField.subset_adjoin ℚ _ ⟨⟨k, i⟩, rfl⟩⟩

def height (A : Heights.HermLine n) (x : Cone n (AlgebraicClosure ℚ)) : ℝ :=
  ((Module.finrank ℚ (coordField x) : ℝ))⁻¹ *
    ((∑ᶠ v : FinitePlace (coordField x),
        ∑ k, (A.deg k : ℝ) * Real.log (⨆ i, v (coordVec x k i))) +
      ∑ σ : coordField x →+* ℂ, Real.log (A.metric fun k i ↦ σ (coordVec x k i)))

def finiteTerm {L : Type*} [Field L] [NumberField L] (A : Heights.HermLine n) (v : FinitePlace L)
    (y : Cone n L) : ℝ :=
  ∑ k, (A.deg k : ℝ) * Real.log (⨆ i, v (y k i))

def chartMonomial (c : (k : ι) → Fin (n k + 1)) (d : ι → ℕ) : MvPolynomial (Coord n) ℤ :=
  ∏ k, X ⟨k, c k⟩ ^ d k

def IsChartForm (P : ArithVariety n) (a : ι → ℤ) (num den : MvPolynomial (Coord n) ℤ)
    (c : (k : ι) → Fin (n k + 1)) (d : ι → ℕ) (e : MvPolynomial (Coord n) ℤ) : Prop :=
  (∃ δ : ι → ℕ, IsWeightedHomogeneous (coordDeg n) e δ ∧ ∀ k, (δ k : ℤ) = a k + d k) ∧
    den * e - num * chartMonomial c d ∈ P.ideal

structure IntegralSection (P : ArithVariety n) (a : ι → ℤ) where

  num : MvPolynomial (Coord n) ℤ

  den : MvPolynomial (Coord n) ℤ

  numDeg : ι → ℕ

  denDeg : ι → ℕ
  num_isHomogeneous : IsWeightedHomogeneous (coordDeg n) num numDeg
  den_isHomogeneous : IsWeightedHomogeneous (coordDeg n) den denDeg
  deg_eq : ∀ k, (numDeg k : ℤ) - denDeg k = a k
  den_not_mem : den ∉ P.ideal
  regular : ∀ c : (k : ι) → Fin (n k + 1), (∀ k, (X ⟨k, c k⟩ : MvPolynomial (Coord n) ℤ) ∉ P.ideal) →
    ∃ (d : ι → ℕ) (e : MvPolynomial (Coord n) ℤ), IsChartForm P a num den c d e

theorem isWeightedHomogeneous_chartMonomial (c : (k : ι) → Fin (n k + 1)) (d : ι → ℕ) :
    IsWeightedHomogeneous (coordDeg n) (chartMonomial c d) d := by
  have h := IsWeightedHomogeneous.prod Finset.univ
    (fun k ↦ (X ⟨k, c k⟩ : MvPolynomial (Coord n) ℤ) ^ d k) (fun k ↦ d k • Pi.single k 1)
    (fun k _ ↦ (isWeightedHomogeneous_X (R := ℤ) (coordDeg n) ⟨k, c k⟩).pow (d k))
  have e : (∑ k, d k • Pi.single k 1 : ι → ℕ) = d := by
    ext k'
    rw [Finset.sum_apply]
    simp [Pi.single_apply]
  rw [e] at h
  exact h

namespace IntegralSection

variable {P : ArithVariety n} {a : ι → ℤ}


variable (P) in
def chartSection (c : (k : ι) → Fin (n k + 1)) : IntegralSection P (fun _ ↦ 1) where
  num := chartMonomial c 1
  den := 1
  numDeg := 1
  denDeg := 0
  num_isHomogeneous := isWeightedHomogeneous_chartMonomial c 1
  den_isHomogeneous := isWeightedHomogeneous_one ℤ (coordDeg n)
  deg_eq k := by simp
  den_not_mem := (Ideal.ne_top_iff_one _).mp P.isPrime.ne_top
  regular _ _ := ⟨0, chartMonomial c 1,
    ⟨⟨1, isWeightedHomogeneous_chartMonomial c 1, fun k ↦ by simp⟩, by simp [chartMonomial]⟩⟩

def SupNormLE (A : Heights.HermLine n) (s : IntegralSection P A.deg) (C : ℝ) : Prop :=
  ∀ z ∈ P.points ℂ, ∀ (c : (k : ι) → Fin (n k + 1)) (d : ι → ℕ) (e : MvPolynomial (Coord n) ℤ),
    IsChartForm P A.deg s.num s.den c d e → (∀ k, z k (c k) ≠ 0) →
    ‖evalCone z e‖ / (‖evalCone z (chartMonomial c d)‖ * A.metric z) ≤ Real.exp C

end IntegralSection

end

end GroundTheory.Heights₂.Heights
