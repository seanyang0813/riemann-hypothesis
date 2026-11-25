module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterSt
public import GroundTheory.HeightsAndTheta.Heights.HeightsOfSets.Points

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G
open scoped ContDiff

noncomputable section

variable {ι : Type} {n : ι → ℕ}

abbrev blockIdx (n : ι → ℕ) : ι → Type := fun k ↦ Fin (n k + 1)

def flatCone {F : Type*} (z : Cone n F) : Coord n → F := fun p ↦ z p.1 p.2

def unflatCone {F : Type*} (w : Coord n → F) : Cone n F := fun k i ↦ w ⟨k, i⟩

@[simp] theorem flatCone_unflatCone {F : Type*} (w : Coord n → F) : flatCone (unflatCone w) = w := rfl

theorem blockNonzero_unflatCone_iff {F : Type*} [Zero F] (w : Coord n → F) :
    BlockNonzero (unflatCone w) ↔ ∀ k, ∃ i, w ⟨k, i⟩ ≠ 0 :=
  forall_congr' fun _ ↦ Function.ne_iff

theorem eval_map_flatCone {F : Type*} [CommRing F] (z : Cone n F) (f : MvPolynomial (Coord n) ℤ) :
    eval (flatCone z) (map (Int.castRingHom F) f) = evalCone z f := by
  rw [eval_map]
  rfl

variable [Fintype ι] [DecidableEq ι]

theorem ArithVariety.mem_mcPts_iff (P : ArithVariety n) (w : Coord n → ℂ) :
    w ∈ Geo.mcPts P.ideal ↔ unflatCone w ∈ P.points ℂ := by
  simp only [ArithVariety.points, Geo.mcPts, Set.mem_ofPred_eq, blockNonzero_unflatCone_iff]
  refine and_congr Iff.rfl (forall₂_congr fun f _ ↦ ?_)
  rw [← eval_map_flatCone, flatCone_unflatCone]

theorem weight_coordDeg_apply (d : Coord n →₀ ℕ) (k : ι) :
    Finsupp.weight (coordDeg n) d k = ∑ i, d ⟨k, i⟩ := by
  classical
  rw [Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by intros; exact zero_smul _ _), Finset.sum_apply,
    Fintype.sum_sigma, Finset.sum_eq_single k]
  · simp [coordDeg]
  · intro j _ hj
    refine Finset.sum_eq_zero fun i _ ↦ ?_
    simp [coordDeg, Ne.symm hj]
  · simp

theorem geoMultiHomog_iff (f : MvPolynomial (Coord n) ℤ) (a : ι → ℕ) :
    Geo.IsMultiHomog (ι := blockIdx n) f a ↔ IsWeightedHomogeneous (coordDeg n) f a := by
  constructor
  · intro h d hd
    funext k
    rw [weight_coordDeg_apply]
    exact h d (mem_support_iff.mpr hd) k
  · intro h m hm k
    rw [← weight_coordDeg_apply, h (mem_support_iff.mp hm)]

namespace HermLine


open scoped Classical in
open Classical in
def toGeo (A : Heights.HermLine n) : Geo.HermLine (blockIdx n) where
  a := A.deg
  h w := if BlockNonzero (unflatCone w) then A.metric (unflatCone w) else 0
  pos w hw := by
    have hw' : BlockNonzero (unflatCone w) := (blockNonzero_unflatCone_iff w).mpr hw
    rw [if_pos hw']
    exact A.metric_pos _ hw'
  smul c w hc := by
    have e : unflatCone (fun p : Coord n ↦ c p.1 * w p) = fun k i ↦ c k * unflatCone w k i := rfl
    by_cases hw : BlockNonzero (unflatCone w)
    · have hcw : BlockNonzero (unflatCone (fun p : Coord n ↦ c p.1 * w p)) := by
        intro k hk
        apply hw k
        funext i
        have := congrFun hk i
        rw [e] at this
        exact (mul_eq_zero.mp this).resolve_left (hc k)
      rw [if_pos hw, if_pos hcw, e, A.metric_smul c _ hc hw]
    · have hcw : ¬ BlockNonzero (unflatCone (fun p : Coord n ↦ c p.1 * w p)) := by
        intro h
        apply hw
        intro k hk
        apply h k
        funext i
        rw [e]
        simp [congrFun hk i]
      rw [if_neg hw, if_neg hcw, mul_zero]

theorem toGeo_a (A : Heights.HermLine n) : A.toGeo.a = A.deg := rfl

theorem toGeo_h_of_blockNonzero (A : Heights.HermLine n) {w : Coord n → ℂ}
    (hw : BlockNonzero (unflatCone w)) : A.toGeo.h w = A.metric (unflatCone w) := by
  simp only [toGeo, if_pos hw]

theorem isSmoothHerm_toGeo (A : Heights.HermLine n) : Geo.IsSmoothHerm A.toGeo := by
  have hu : ContDiff ℝ ∞ (fun w : Coord n → ℂ ↦ unflatCone w) :=
    contDiff_pi.2 fun k ↦ contDiff_pi.2 fun i ↦ contDiff_apply ℝ (fun _ => ℂ) (⟨k, i⟩ : Coord n)
  have hm : ContDiffOn ℝ ∞ (fun w : Coord n → ℂ ↦ A.metric (unflatCone w))
      {w | ∀ k, ∃ i, w ⟨k, i⟩ ≠ 0} :=
    A.metric_smooth.comp hu.contDiffOn fun w hw ↦ (blockNonzero_unflatCone_iff w).mpr hw
  refine hm.congr fun w hw ↦ ?_
  exact A.toGeo_h_of_blockNonzero ((blockNonzero_unflatCone_iff w).mpr hw)

end HermLine

namespace IntegralSection

variable {P : ArithVariety n} {a : ι → ℤ}

end IntegralSection

theorem aeval_div_chart_mem {Ω : Type*} [Field Ω] (y : Coord n → Ω) (c : (k : ι) → Fin (n k + 1))
    (hc : ∀ k, y ⟨k, c k⟩ ≠ 0) (e : MvPolynomial (Coord n) ℤ) (δ : ι → ℕ)
    (he : IsWeightedHomogeneous (coordDeg n) e δ) :
    aeval y e * ∏ k, (y ⟨k, c k⟩ ^ δ k)⁻¹ ∈ Geo.chartRingZ (ι := blockIdx n) y c := by
  classical
  rw [aeval_def, eval₂_eq, Finset.sum_mul]
  refine Subalgebra.sum_mem _ fun m hm ↦ ?_
  have hmδ : ∀ k, ∑ i, m ⟨k, i⟩ = δ k := (geoMultiHomog_iff e δ).mpr he m hm
  have key : (algebraMap ℤ Ω (AddMonoidAlgebra.coeff e m) * ∏ p ∈ m.support, y p ^ m p) * ∏ k, (y ⟨k, c k⟩ ^ δ k)⁻¹ =
      algebraMap ℤ Ω (AddMonoidAlgebra.coeff e m) * ∏ p, (y p / y ⟨p.1, c p.1⟩) ^ m p := by
    rw [mul_assoc]
    congr 1
    rw [Finset.prod_subset (Finset.subset_univ m.support) (fun p _ hp ↦ by
      rw [Finsupp.notMem_support_iff.mp hp, pow_zero])]
    have hden : ∏ p : Coord n, y ⟨p.1, c p.1⟩ ^ m p = ∏ k, y ⟨k, c k⟩ ^ δ k := by
      rw [Fintype.prod_sigma]
      refine Finset.prod_congr rfl fun k _ ↦ ?_
      rw [← hmδ k, ← Finset.prod_pow_eq_pow_sum]
    simp_rw [div_pow]
    rw [Finset.prod_div_distrib, hden, div_eq_mul_inv, Finset.prod_inv_distrib]
  rw [key]
  refine Subalgebra.mul_mem _ (Subalgebra.algebraMap_mem _ _) (Subalgebra.prod_mem _ fun p _ ↦ ?_)
  exact Subalgebra.pow_mem _ (Algebra.subset_adjoin (Set.mem_range_self p)) _

theorem IntegralSection.value_mem_chartLat {P : ArithVariety n} {a : ι → ℤ}
    (s : IntegralSection P a) {Ω : Type*} [Field Ω] (y : Coord n → Ω)
    (hy : ∀ f ∈ P.ideal, aeval y f = 0) (hG : aeval y s.den ≠ 0) :
    aeval y s.num / aeval y s.den ∈ Geo.chartLat (ι := blockIdx n) y a 1 := by
  intro c hc
  have hX : ∀ k, (X ⟨k, c k⟩ : MvPolynomial (Coord n) ℤ) ∉ P.ideal := fun k hk ↦
    hc k (by simpa using hy _ hk)
  obtain ⟨d, e, ⟨δ, he, hδ⟩, hmem⟩ := s.regular c hX
  have hrel := hy _ hmem
  rw [map_sub, map_mul, map_mul, sub_eq_zero] at hrel
  have hmon : aeval y (chartMonomial c d) = ∏ k, y ⟨k, c k⟩ ^ d k := by
    simp [chartMonomial, map_prod]
  rw [hmon] at hrel
  have hpow : ∏ k, y ⟨k, c k⟩ ^ (-(((1 : ℕ) : ℤ) * a k)) =
      (∏ k, y ⟨k, c k⟩ ^ d k) * ∏ k, (y ⟨k, c k⟩ ^ δ k)⁻¹ := by
    rw [← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun k _ ↦ ?_
    have h0 := hc k
    rw [← zpow_natCast, ← zpow_natCast, ← zpow_neg, ← zpow_add₀ h0, hδ k]
    congr 1
    push_cast
    ring
  have hval : aeval y s.num / aeval y s.den * ∏ k, y ⟨k, c k⟩ ^ (-(((1 : ℕ) : ℤ) * a k)) =
      aeval y e * ∏ k, (y ⟨k, c k⟩ ^ δ k)⁻¹ := by
    rw [hpow, ← mul_assoc, div_mul_eq_mul_div, ← hrel, mul_comm (aeval y s.den), mul_div_assoc,
      div_self hG, mul_one]
  rw [hval]
  exact aeval_div_chart_mem y c hc e δ he

def orbitIdeal (x : Cone n (AlgebraicClosure ℚ)) : Ideal (MvPolynomial (Coord n) ℤ) :=
  Geo.mCoordIdeal (ι := blockIdx n) (flatCone x)

theorem chartMonomial_notMem_orbitIdeal (x : Cone n (AlgebraicClosure ℚ))
    (c : (k : ι) → Fin (n k + 1)) (hc : ∀ k, x k (c k) ≠ 0) (d : ι → ℕ) :
    chartMonomial c d ∉ orbitIdeal x := by
  intro h
  rw [orbitIdeal, Geo.mCoordIdeal, RingHom.mem_ker] at h
  rw [chartMonomial, map_prod] at h
  refine (Finset.prod_ne_zero_iff.mpr fun k _ ↦ ?_) h
  rw [map_pow, Geo.mConeMap, aeval_X]
  exact pow_ne_zero _ (mul_ne_zero (C_ne_zero.mpr (hc k)) (X_ne_zero _))

theorem isSectionOn_chartMonomial (A : Heights.HermLine n) (x : Cone n (AlgebraicClosure ℚ))
    (c : (k : ι) → Fin (n k + 1)) (hc : ∀ k, x k (c k) ≠ 0) (d : ι → ℕ)
    (hd : ∀ k, A.deg k = d k) :
    Geo.IsSectionOn (orbitIdeal x) A.toGeo (chartMonomial c d) :=
  ⟨d, hd, (geoMultiHomog_iff _ d).mpr (isWeightedHomogeneous_chartMonomial c d),
    chartMonomial_notMem_orbitIdeal x c hc d⟩

theorem exists_chart {F : Type*} [Zero F] {x : Cone n F} (hx : BlockNonzero x) :
    ∃ c : (k : ι) → Fin (n k + 1), ∀ k, x k (c k) ≠ 0 :=
  ⟨fun k ↦ (Function.ne_iff.mp (hx k)).choose, fun k ↦ (Function.ne_iff.mp (hx k)).choose_spec⟩

def samplePoint : Cone (fun _ : Unit ↦ 1) (AlgebraicClosure ℚ) := fun _ ↦ ![1, 2]

end

end GroundTheory.Heights₂.Heights
