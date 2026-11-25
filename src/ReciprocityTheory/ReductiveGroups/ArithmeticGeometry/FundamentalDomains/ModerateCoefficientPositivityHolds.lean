module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FractionalSliceDomains
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.M3bNormHolds
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MajorantConjugateTransfer
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MinimumGrowthBounds
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.ModerateCoefficientPositivity
public import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.FourBasic
public import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.FourIndep
public import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.FourSignHolds
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FlowMeanContinuity
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MajPos
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.AdmissibleHermitianColumns
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.TwoSidedBoostBounds

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.SliceBounds, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.ModerateCoefficientPositivityHolds

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.SliceBounds =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.SliceBounds", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FractionalSliceDomains\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.M3bNormHolds\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MajorantConjugateTransfer\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MinimumGrowthBounds\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.TwoSidedBoostBounds\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.FD

open NumberField Complex MajorantConjugateTransfer TwoSidedBoostBounds MinimumGrowthBounds FractionalSliceDomains
open scoped ComplexConjugate

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

namespace SliceBounds

variable {r : ℕ} (X : Data E r)

theorem slice_bound {x : Frame X.Ψ r} (hx : x ∈ X.dom) {ξ : Fin r → E} (hξ : X.IsIso ξ)
    (la : Wt X.Ψ r) (P : Frame X.Ψ r → ℂ) (hP : X.IsSec la P) (C A : ℝ)
    (hmod : ∀ z ∈ X.dom, X.pnorm la P z ≤ C * X.la1 z ^ (-A)) {n : ℕ}
    (ω : Module.Basis (Fin n) ℝ (X.Ψ → ℝ)) (hω : Submodule.span ℤ (Set.range ω) = RealEmbeddingCharacters.perL X la)
    {b : Fin n → ℝ} (hb : b ∈ Om X ξ x ω) {k1 k2 R : ℝ} (hk1 : 0 < k1) (hk12 : k1 ≤ k2)
    (hq1 : ∀ τ (ρ : ℝ), |ρ| ≤ Bω X ω →
      k1 ≤ min (1 + X.c τ * (∑ j, b j * ω j τ) * X.maj x τ (Data.emb τ.1 ξ))
        (1 + X.c τ * (∑ j, b j * ω j τ) * X.maj x τ (Data.emb τ.1 ξ))⁻¹ /
        (1 + X.c τ * |ρ| * X.maj x τ (Data.emb τ.1 ξ)) ^ 2)
    (hq2 : ∀ τ (ρ : ℝ), |ρ| ≤ Bω X ω →
      max (1 + X.c τ * (∑ j, b j * ω j τ) * X.maj x τ (Data.emb τ.1 ξ))
        (1 + X.c τ * (∑ j, b j * ω j τ) * X.maj x τ (Data.emb τ.1 ξ))⁻¹ *
        (1 + X.c τ * |ρ| * X.maj x τ (Data.emb τ.1 ξ)) ^ 2 ≤ k2)
    (hR : ∏ τ, max (1 + X.c τ * (∑ j, b j * ω j τ) * X.maj x τ (Data.emb τ.1 ξ))
        (1 + X.c τ * (∑ j, b j * ω j τ) * X.maj x τ (Data.emb τ.1 ξ))⁻¹ ^ (X.spread la τ / 2) ≤ R)
    (y : Fin n → ℝ) :
    ‖hfun X P ξ x ω (fun k => (y k : ℂ) + (b k : ℂ) * I)‖ * X.nfac la x ≤
      max C 0 * max (k1 ^ (-A / 2)) (k2 ^ (-A / 2)) * R * X.la1 x ^ (-A) := by
  classical
  rw [slice_fract (X := X) (ω := ω) P la hP hx hξ hω hb y]
  set u : Fin n → ℝ := fun k => Int.fract (y k) with hu
  set s : X.Ψ → ℂ := fun τ => ∑ j, (((u j : ℝ) : ℂ) + (b j : ℂ) * I) * (ω j τ : ℂ) with hs
  have hre : ∀ τ, (s τ).re = ∑ j, u j * ω j τ := by
    intro τ
    simp [hs, Complex.re_sum]
  have him : ∀ τ, (s τ).im = ∑ j, b j * ω j τ := by
    intro τ
    simp [hs, Complex.im_sum]
  have hhf : hfun X P ξ x ω (fun k => ((u k : ℝ) : ℂ) + (b k : ℂ) * I) = P (X.flow ξ s x) := by
    simp only [hfun, hs]
  have hsim : (fun τ => (s τ).im) = fun τ => ∑ j, b j * ω j τ := funext him
  have hdom : X.flow ξ s x ∈ X.dom := by
    rw [AdmissibleHermitianColumns.flow_mem_dom_iff (X := X) hξ.2.1 x hx, hsim]
    exact hb
  have hbd : ∀ τ, |(s τ).re| ≤ Bω X ω := by
    intro τ
    rw [hre]
    exact re_bound (X := X) (ω := ω) u (fun j => ⟨Int.fract_nonneg _, (Int.fract_lt_one _).le⟩) τ
  rw [hhf]
  have hisoV : X.IsIsoV (fun τ => Data.emb τ.1 ξ) := by
    intro τ
    constructor
    · have hh : hermC τ.1 X.Gm (Data.emb τ.1 ξ) (Data.emb τ.1 ξ) = τ.1 (herm X.Gm ξ ξ) := by

        simp only [hermC, herm, Data.emb, map_sum, map_mul]
        refine Finset.sum_congr rfl (fun a _ => Finset.sum_congr rfl (fun b _ => ?_))
        congr 1
        exact (IsCMField.complexEmbedding_complexConj E τ.1 (ξ b)).symm
      rw [hh, hξ.2.1, map_zero]
    · intro h
      apply hξ.2.2
      funext a
      have ha := congrFun h a
      simpa [Data.emb] using ha
  have hflowV : X.flowV (fun τ => Data.emb τ.1 ξ) s x = X.flow ξ s x := rfl
  have hN := (m3bNorm_holds (E := E) r X (fun τ => Data.emb τ.1 ξ) hisoV la x hx s
    (by rw [hflowV]; exact hdom)).2
  rw [hflowV] at hN
  refine MinimumGrowthBounds.growth (X := X) la P C A hmod hx hdom hk1 hk12 ?_ ?_ ?_
  · intro τ w
    have h := (TwoSidedBoostBounds.maj_two_sided (X := X) hx hξ s hdom τ w).2.1
    rw [him τ] at h
    exact le_trans (mul_le_mul_of_nonneg_right (hq1 τ _ (hbd τ)) (MajorantConjugateTransfer.maj_nonneg (X := X) hx τ w)) h
  · intro τ w
    have h := (TwoSidedBoostBounds.maj_two_sided (X := X) hx hξ s hdom τ w).2.2
    rw [him τ] at h
    exact le_trans h (mul_le_mul_of_nonneg_right (hq2 τ _ (hbd τ)) (MajorantConjugateTransfer.maj_nonneg (X := X) hx τ w))
  · refine le_trans hN (le_of_eq_of_le ?_ hR)
    refine Finset.prod_congr rfl (fun τ _ => ?_)
    have hA : 1 + (s τ).im / X.ttV (fun τ => Data.emb τ.1 ξ) x τ =
        1 + X.c τ * (∑ j, b j * ω j τ) * X.maj x τ (Data.emb τ.1 ξ) := by
      rw [him τ, Data.ttV, one_div, div_inv_eq_mul]
      ring
    beta_reduce
    rw [hA]

end SliceBounds

end ReciprocityTheory.ChartRestriction.G.FD
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.SliceBounds =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.ModerateCoefficientPositivityHolds =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.ModerateCoefficientPositivityHolds", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.ModerateCoefficientPositivity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.FourBasic\npublic import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.FourIndep\npublic import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.FourSignHolds\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FlowMeanContinuity\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MajPos\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MinimumGrowthBounds\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.SliceBounds\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.TwoSidedBoostBounds\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.AdmissibleHermitianColumns\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FractionalSliceDomains\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.FD

open NumberField Complex MajorantConjugateTransfer TwoSidedBoostBounds MinimumGrowthBounds FractionalSliceDomains SliceBounds
open scoped ComplexConjugate

variable {E : Type} [Field E] [NumberField E] [NumberField.IsCMField E]

theorem moderateCoefficientPositivity_holds : ModerateCoefficientPositivity (E := E) := by
  intro r X la P C A hP hmod
  classical
  obtain ⟨ω, hω⟩ := FlowMeanContinuity.exists_basis X la
  have hωp : ∀ j, ω j ∈ X.periods la := by
    intro j
    have : ω j ∈ Submodule.span ℤ (Set.range ω) := Submodule.subset_span ⟨j, rfl⟩
    rw [hω] at this
    exact this
  have hfreq : ∀ (ν : X.Ψ → ℝ) (ξ : Fin r → E) (x : Frame X.Ψ r),
      ¬ (∀ j, ∃ k : ℤ, 2 * ∑ τ, ν τ * ω j τ = k) → X.fj la ξ ν P x = 0 := by
    intro ν ξ x hj
    unfold Data.fj
    rw [if_neg]
    intro hall
    exact hj fun j => hall _ (hωp j)
  have hsum : ∀ (ν : X.Ψ → ℝ) (k : Fin (Fintype.card X.Ψ) → ℤ), (∀ j, 2 * ∑ τ, ν τ * ω j τ = k j) →
      ∀ (b : Fin (Fintype.card X.Ψ) → ℝ), ∑ j, (k j : ℝ) * b j = 2 * ∑ τ, ν τ * ∑ j, b j * ω j τ := by
    intro ν k hk b
    simp only [← hk, Finset.mul_sum, Finset.sum_mul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun τ _ => Finset.sum_congr rfl fun j _ => ?_
    ring
  have hrepr : ∀ (v : X.Ψ → ℝ) τ, ∑ j, ω.repr v j * ω j τ = v τ := by
    intro v τ
    conv_rhs => rw [← ω.sum_repr v]
    simp [Finset.sum_apply, mul_comm]
  refine ⟨?_, ?_⟩
  ·
    intro ξ hξ ν x hx hne τ0
    by_cases hf : ∀ j, ∃ k : ℤ, 2 * ∑ τ, ν τ * ω j τ = k
    swap
    · exact absurd (hfreq ν ξ x hf) hne
    choose k hk using hf
    rw [FlowMeanContinuity.fj_eq_fourCoeff X la P hP hξ hx ω hω ν k hk] at hne
    change ReciprocityTheory.L2DbarEstimates.Y.fourCoeff (hfun X P ξ x ω) 0 k ≠ 0 at hne
    set e0 : X.Ψ → ℝ := (Pi.single τ0 (1 : ℝ) : X.Ψ → ℝ) with he0_def
    set κ : Fin (Fintype.card X.Ψ) → ℝ := fun j => ω.repr e0 j with hκ_def
    have hκ : ∀ t : ℝ, ∀ τ, ∑ j, (t * κ j) * ω j τ = t * e0 τ := by
      intro t τ
      rw [← hrepr e0 τ, Finset.mul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      simp only [hκ_def]
      ring
    set m : X.Ψ → ℝ := fun τ => X.maj x τ (Data.emb τ.1 ξ)
    have hm : ∀ τ, 0 < m τ := fun τ => X.maj_pos hx τ (emb_ne_zero τ.1 hξ.2.2)
    have hc := c_pos X
    set B := Bω X ω
    have hB := Bω_nonneg X ω
    set D0 := 1 + X.c τ0 * m τ0
    have hD0 : 1 ≤ D0 := by
      simp only [D0]
      linarith [mul_pos (hc τ0) (hm τ0)]
    set K0 := ∑ τ, (1 + X.c τ * B * m τ) ^ 2
    have hK0t : ∀ τ, (1 + X.c τ * B * m τ) ^ 2 ≤ K0 := fun τ =>
      Finset.single_le_sum (f := fun τ => (1 + X.c τ * B * m τ) ^ 2) (fun τ _ => sq_nonneg _)
        (Finset.mem_univ τ)
    have hK1 : 1 ≤ K0 := by
      refine le_trans ?_ (hK0t τ0)
      exact one_le_pow₀ (by linarith [mul_nonneg (mul_nonneg (hc τ0).le hB) (hm τ0).le])
    set w := X.spread la τ0
    have hq : ∀ t : ℝ, ∀ τ, 1 + X.c τ * (∑ j, (t * κ j) * ω j τ) * m τ =
        if τ = τ0 then 1 + X.c τ0 * m τ0 * t else 1 := by
      intro t τ
      rw [hκ]
      by_cases h : τ = τ0
      · subst h; simp [he0_def]; ring
      · simp [he0_def, h]
    have hray : ∀ t : ℝ, 0 ≤ t → (0 : Fin (Fintype.card X.Ψ) → ℝ) + t • κ ∈ Om X ξ x ω := by
      intro t ht
      show (fun τ => ∑ j, ((0 : Fin (Fintype.card X.Ψ) → ℝ) + t • κ) j * ω j τ) ∈ AdmissibleHermitianColumns.admissibleImaginary X ξ x
      rw [mem_admissibleImaginary_iff X hx hξ]
      intro τ
      have := hq t τ
      simp only [Pi.add_apply, Pi.zero_apply, zero_add, Pi.smul_apply, smul_eq_mul]
      rw [this]
      split_ifs
      · have := hc τ0; have := hm τ0; positivity
      · norm_num
    set E' := |A| / 2 + |w| / 2
    set C' := max C 0 * (D0 * K0) ^ (|A| / 2) * D0 ^ (|w| / 2) * X.la1 x ^ (-A) / X.nfac la x
    have hgrow : ∀ t : ℝ, 0 ≤ t → ∀ y : Fin (Fintype.card X.Ψ) → ℝ,
        ‖hfun X P ξ x ω (fun k => (y k : ℂ) + (((0 : Fin (Fintype.card X.Ψ) → ℝ) + t • κ) k : ℂ) * I)‖ ≤
          C' * (1 + t) ^ E' := by
      intro t ht y
      have hb := hray t ht
      set Z := D0 * K0 * (1 + t)
      have hZ : 1 ≤ Z := by
        have : 1 ≤ 1 + t := by linarith
        calc (1 : ℝ) = 1 * 1 * 1 := by ring
          _ ≤ D0 * K0 * (1 + t) := by gcongr
      have hZ0 : 0 < Z := by linarith
      have hbt : ((0 : Fin (Fintype.card X.Ψ) → ℝ) + t • κ) = fun j => t * κ j := by
        funext j; simp
      have hQ : ∀ τ, 1 ≤ (if τ = τ0 then 1 + X.c τ0 * m τ0 * t else 1) ∧
          (if τ = τ0 then 1 + X.c τ0 * m τ0 * t else 1) ≤ D0 * (1 + t) := by
        intro τ
        split_ifs
        · constructor
          · linarith [mul_nonneg (mul_nonneg (hc τ0).le (hm τ0).le) ht]
          · simp only [D0]
            have hcm0 : 0 ≤ X.c τ0 * m τ0 := (mul_pos (hc τ0) (hm τ0)).le
            have : (1 + X.c τ0 * m τ0) * (1 + t) = 1 + X.c τ0 * m τ0 * t + t + X.c τ0 * m τ0 := by ring
            linarith
        · constructor
          · exact le_refl _
          · exact one_le_mul_of_one_le_of_one_le hD0 (by linarith)
      have hKρ : ∀ τ (ρ : ℝ), |ρ| ≤ B → (1 + X.c τ * |ρ| * m τ) ^ 2 ≤ K0 := by
        intro τ ρ hρ
        refine le_trans ?_ (hK0t τ)
        have h1 : X.c τ * |ρ| * m τ ≤ X.c τ * B * m τ := by
          have := hc τ; have := hm τ
          exact mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hρ (hc τ).le) (hm τ).le
        have h0 : 0 ≤ X.c τ * |ρ| * m τ := by have := hc τ; have := hm τ; positivity
        exact pow_le_pow_left₀ (by linarith) (by linarith) 2
      have hsb := slice_bound X hx hξ la P hP C A hmod ω hω hb (k1 := Z⁻¹) (k2 := Z)
        (R := (D0 * (1 + t)) ^ (|w| / 2)) (inv_pos.mpr hZ0) ((inv_le_one_of_one_le₀ hZ).trans hZ)
        (by
          intro τ ρ hρ
          have hq' : 1 + X.c τ * (∑ j, ((0 : Fin (Fintype.card X.Ψ) → ℝ) + t • κ) j * ω j τ) *
              X.maj x τ (Data.emb τ.1 ξ) = if τ = τ0 then 1 + X.c τ0 * m τ0 * t else 1 := by
            rw [hbt]; exact hq t τ
          rw [hq']
          obtain ⟨hQ1, hQ2⟩ := hQ τ
          set Q := (if τ = τ0 then 1 + X.c τ0 * m τ0 * t else 1)
          have hmin : min Q Q⁻¹ = Q⁻¹ := min_eq_right (inv_le_one_of_one_le₀ hQ1 |>.trans hQ1)
          rw [hmin]
          have hK := hKρ τ ρ hρ
          have hpos : 0 < (1 + X.c τ * |ρ| * m τ) ^ 2 := by
            have := hc τ; have := hm τ; positivity
          rw [le_div_iff₀ hpos]
          calc Z⁻¹ * (1 + X.c τ * |ρ| * m τ) ^ 2 ≤ Z⁻¹ * K0 :=
                mul_le_mul_of_nonneg_left hK (inv_nonneg.mpr hZ0.le)
            _ = (D0 * (1 + t))⁻¹ := by
                simp only [Z]; field_simp
            _ ≤ Q⁻¹ := inv_anti₀ (by linarith) hQ2)
        (by
          intro τ ρ hρ
          have hq' : 1 + X.c τ * (∑ j, ((0 : Fin (Fintype.card X.Ψ) → ℝ) + t • κ) j * ω j τ) *
              X.maj x τ (Data.emb τ.1 ξ) = if τ = τ0 then 1 + X.c τ0 * m τ0 * t else 1 := by
            rw [hbt]; exact hq t τ
          rw [hq']
          obtain ⟨hQ1, hQ2⟩ := hQ τ
          set Q := (if τ = τ0 then 1 + X.c τ0 * m τ0 * t else 1)
          have hmax : max Q Q⁻¹ = Q := max_eq_left (inv_le_one_of_one_le₀ hQ1 |>.trans hQ1)
          rw [hmax]
          have hK := hKρ τ ρ hρ
          calc Q * (1 + X.c τ * |ρ| * m τ) ^ 2 ≤ (D0 * (1 + t)) * K0 :=
                mul_le_mul hQ2 hK (sq_nonneg _) (mul_nonneg (by linarith) (by linarith))
            _ = Z := by simp only [Z]; ring)
        (by
          have hq' : ∀ τ, 1 + X.c τ * (∑ j, ((0 : Fin (Fintype.card X.Ψ) → ℝ) + t • κ) j * ω j τ) *
              X.maj x τ (Data.emb τ.1 ξ) = if τ = τ0 then 1 + X.c τ0 * m τ0 * t else 1 := by
            intro τ; rw [hbt]; exact hq t τ
          simp only [hq']
          rw [Finset.prod_eq_single τ0 (fun τ _ hτ => by simp [hτ]) (fun h => absurd (Finset.mem_univ _) h)]
          simp only [if_true]
          obtain ⟨hQ1, hQ2⟩ := hQ τ0
          simp only [if_true] at hQ1 hQ2
          rw [max_eq_left (inv_le_one_of_one_le₀ hQ1 |>.trans hQ1)]
          calc (1 + X.c τ0 * m τ0 * t) ^ (X.spread la τ0 / 2) ≤ (1 + X.c τ0 * m τ0 * t) ^ (|w| / 2) :=
                Real.rpow_le_rpow_of_exponent_le hQ1 (by simp only [w]; linarith [le_abs_self (X.spread la τ0)])
            _ ≤ (D0 * (1 + t)) ^ (|w| / 2) :=
                Real.rpow_le_rpow (by linarith) hQ2 (by positivity)) y
      have hnx := nfac_pos X la hx
      have hla0 : 0 ≤ X.la1 x ^ (-A) := Real.rpow_nonneg (Real.sqrt_nonneg _) _
      have hmaxZ : max (Z⁻¹ ^ (-A / 2)) (Z ^ (-A / 2)) ≤ Z ^ (|A| / 2) := by
        refine max_le ?_ ?_
        · rw [Real.inv_rpow hZ0.le, ← Real.rpow_neg hZ0.le]
          exact Real.rpow_le_rpow_of_exponent_le hZ (by linarith [le_abs_self A])
        · exact Real.rpow_le_rpow_of_exponent_le hZ (by linarith [neg_abs_le A])
      have hZsplit : Z ^ (|A| / 2) = (D0 * K0) ^ (|A| / 2) * (1 + t) ^ (|A| / 2) :=
        Real.mul_rpow (mul_nonneg (by linarith) (by linarith)) (by linarith)
      have hRsplit : (D0 * (1 + t)) ^ (|w| / 2) = D0 ^ (|w| / 2) * (1 + t) ^ (|w| / 2) :=
        Real.mul_rpow (by linarith) (by linarith)
      have hE : (1 + t) ^ E' = (1 + t) ^ (|A| / 2) * (1 + t) ^ (|w| / 2) :=
        Real.rpow_add (by linarith) _ _
      have hCp : 0 ≤ max C 0 := le_max_right _ _
      have hRn : 0 ≤ (D0 * (1 + t)) ^ (|w| / 2) :=
        Real.rpow_nonneg (mul_nonneg (by linarith) (by linarith)) _
      have hfinal : ‖hfun X P ξ x ω (fun k => (y k : ℂ) + (((0 : Fin (Fintype.card X.Ψ) → ℝ) + t • κ) k : ℂ) * I)‖ *
          X.nfac la x ≤ C' * (1 + t) ^ E' * X.nfac la x := by
        refine hsb.trans ?_
        rw [hE]
        calc max C 0 * max (Z⁻¹ ^ (-A / 2)) (Z ^ (-A / 2)) * (D0 * (1 + t)) ^ (|w| / 2) *
              X.la1 x ^ (-A) ≤ max C 0 * Z ^ (|A| / 2) * (D0 * (1 + t)) ^ (|w| / 2) * X.la1 x ^ (-A) := by
              gcongr
          _ = C' * ((1 + t) ^ (|A| / 2) * (1 + t) ^ (|w| / 2)) * X.nfac la x := by
              rw [hZsplit, hRsplit]
              simp only [C']
              field_simp
      exact le_of_mul_le_mul_right hfinal hnx
    have hsign := ReciprocityTheory.L2DbarEstimates.Y.four_sign_holds (Fintype.card X.Ψ) (Om X ξ x ω) (hfun X P ξ x ω) 0 κ C' E'
      (Om_open_conn X ω hx).1 (Om_open_conn X ω hx).2 (hfun_diff X ω P la hP hx hξ)
      (hfun_periodic X ω P la hP hx hξ hω) hray hgrow k hne
    rw [hsum ν k hk κ] at hsign
    have h2 : ∑ τ, ν τ * ∑ j, κ j * ω j τ = ν τ0 := by
      have := fun τ => hκ 1 τ
      simp only [one_mul] at this
      simp only [this, he0_def, Pi.single_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ,
        if_true]
    rw [h2] at hsign
    linarith
  ·
    intro η hη0 hη1
    set B := Bω X ω
    have hB := Bω_nonneg X ω
    set K := (1 + B) ^ 2
    have hK : 0 < K := by positivity
    set Rη := ∏ τ, max η η⁻¹ ^ (X.spread la τ / 2)
    set Cη := max C 0 * max ((η / K) ^ (-A / 2)) ((K / η) ^ (-A / 2)) * Rη
    have hCη : 0 ≤ Cη := by
      have h1 : 0 ≤ max ((η / K) ^ (-A / 2)) ((K / η) ^ (-A / 2)) :=
        le_max_of_le_left (Real.rpow_nonneg (by positivity) _)
      have h2 : 0 ≤ Rη := Finset.prod_nonneg fun τ _ =>
        Real.rpow_nonneg (le_max_of_le_left hη0.le) _
      have h3 : 0 ≤ max C 0 := le_max_right _ _
      positivity
    refine ⟨Cη, ?_⟩
    intro ξ hξ ν x hx hcm
    have hla0 : 0 ≤ X.la1 x ^ (-A) := Real.rpow_nonneg (Real.sqrt_nonneg _) _
    by_cases hf : ∀ j, ∃ k : ℤ, 2 * ∑ τ, ν τ * ω j τ = k
    swap
    · rw [hfreq ν ξ x hf, norm_zero, zero_mul]
      exact mul_nonneg (mul_nonneg hCη hla0) (Real.exp_pos _).le
    choose k hk using hf
    rw [FlowMeanContinuity.fj_eq_fourCoeff X la P hP hξ hx ω hω ν k hk]
    change ‖ReciprocityTheory.L2DbarEstimates.Y.fourCoeff (hfun X P ξ x ω) 0 k‖ * _ ≤ _
    set m : X.Ψ → ℝ := fun τ => X.maj x τ (Data.emb τ.1 ξ)
    have hm : ∀ τ, 0 < m τ := fun τ => X.maj_pos hx τ (emb_ne_zero τ.1 hξ.2.2)
    have hc := c_pos X
    set bv : X.Ψ → ℝ := fun τ => -(1 - η) * X.tt ξ x τ
    set b' : Fin (Fintype.card X.Ψ) → ℝ := fun j => ω.repr bv j
    have hb'ω : ∀ τ, ∑ j, b' j * ω j τ = bv τ := hrepr bv
    have hqη : ∀ τ, 1 + X.c τ * (∑ j, b' j * ω j τ) * X.maj x τ (Data.emb τ.1 ξ) = η := by
      intro τ
      rw [hb'ω]
      simp only [bv, Data.tt]
      have hc' := (hc τ).ne'
      have hm' : X.maj x τ (Data.emb τ.1 ξ) ≠ 0 := (hm τ).ne'
      field_simp
      ring
    have hb'Ω : b' ∈ Om X ξ x ω := by
      show (fun τ => ∑ j, b' j * ω j τ) ∈ AdmissibleHermitianColumns.admissibleImaginary X ξ x
      rw [mem_admissibleImaginary_iff X hx hξ]
      intro τ
      rw [hqη]
      exact hη0
    have hind := ReciprocityTheory.L2DbarEstimates.Y.four_indep (Fintype.card X.Ψ) (Om X ξ x ω) (hfun X P ξ x ω) (Om_open_conn X ω hx).1
      (Om_open_conn X ω hx).2 (hfun_diff X ω P la hP hx hξ) (hfun_periodic X ω P la hP hx hξ hω)
      0 (zero_mem_Om X ω hx hξ) b' hb'Ω k
    rw [hind]
    have hnx := nfac_pos X la hx
    have hmin : min η η⁻¹ = η := min_eq_left (hη1.le.trans (one_le_inv₀ hη0 |>.mpr hη1.le))
    have hmax : max η η⁻¹ = η⁻¹ := max_eq_right (hη1.le.trans (one_le_inv₀ hη0 |>.mpr hη1.le))
    have hKρ : ∀ τ (ρ : ℝ), |ρ| ≤ B → (1 + X.c τ * |ρ| * X.maj x τ (Data.emb τ.1 ξ)) ^ 2 ≤ K := by
      intro τ ρ hρ
      have h1 : X.c τ * |ρ| * X.maj x τ (Data.emb τ.1 ξ) ≤ B := by
        calc X.c τ * |ρ| * X.maj x τ (Data.emb τ.1 ξ) =
            |ρ| * (X.c τ * X.maj x τ (Data.emb τ.1 ξ)) := by ring
          _ ≤ B * 1 := mul_le_mul hρ (hcm τ) (mul_nonneg (hc τ).le (hm τ).le) hB
          _ = B := mul_one B
      have h0 : 0 ≤ X.c τ * |ρ| * X.maj x τ (Data.emb τ.1 ξ) := by
        have := hc τ; have := hm τ; simp only [m] at this; positivity
      simp only [K]
      exact pow_le_pow_left₀ (by linarith) (by linarith) 2
    have hslice : ∀ y : Fin (Fintype.card X.Ψ) → ℝ, ‖hfun X P ξ x ω (fun k => (y k : ℂ) + (b' k : ℂ) * I)‖ ≤
        Cη * X.la1 x ^ (-A) / X.nfac la x := by
      intro y
      have hsb := slice_bound X hx hξ la P hP C A hmod ω hω hb'Ω (k1 := η / K) (k2 := K / η) (R := Rη)
        (by positivity) (by
          rw [div_le_div_iff₀ hK hη0]
          have hK1 : 1 ≤ K := by simp only [K]; exact one_le_pow₀ (by linarith)
          exact mul_le_mul (by linarith) (by linarith) hη0.le hK.le)
        (by
          intro τ ρ hρ
          rw [hqη, hmin]
          have hpos : 0 < (1 + X.c τ * |ρ| * X.maj x τ (Data.emb τ.1 ξ)) ^ 2 := by
            have := hc τ; have := hm τ; simp only [m] at this; positivity
          exact div_le_div_of_nonneg_left hη0.le hpos (hKρ τ ρ hρ))
        (by
          intro τ ρ hρ
          rw [hqη, hmax, div_eq_inv_mul]
          exact mul_le_mul_of_nonneg_left (hKρ τ ρ hρ) (inv_nonneg.mpr hη0.le))
        (by simp only [hqη]; exact le_refl _) y
      rw [le_div_iff₀ hnx]
      exact hsb
    have hbd := ReciprocityTheory.L2DbarEstimates.Y.four_bound (Fintype.card X.Ψ) (hfun X P ξ x ω) b' k _ hslice
    rw [hsum ν k hk b'] at hbd
    have hexp : -2 * Real.pi * (2 * ∑ τ, ν τ * ∑ j, b' j * ω j τ) =
        -(-4 * Real.pi * (1 - η) * ∑ τ, ν τ * X.tt ξ x τ) := by
      simp only [hb'ω, bv, Finset.mul_sum]
      rw [← Finset.sum_neg_distrib]
      refine Finset.sum_congr rfl fun τ _ => ?_
      ring
    rw [hexp, Real.exp_neg] at hbd
    set T := Real.exp (-4 * Real.pi * (1 - η) * ∑ τ, ν τ * X.tt ξ x τ)
    have hT : 0 < T := Real.exp_pos _
    rw [mul_inv_le_iff₀ hT] at hbd
    calc ‖ReciprocityTheory.L2DbarEstimates.Y.fourCoeff (hfun X P ξ x ω) b' k‖ * X.nfac la x ≤
        (Cη * X.la1 x ^ (-A) / X.nfac la x * T) * X.nfac la x :=
          mul_le_mul_of_nonneg_right hbd hnx.le
      _ = Cη * X.la1 x ^ (-A) * T := by field_simp

end ReciprocityTheory.ChartRestriction.G.FD
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.ModerateCoefficientPositivityHolds =====
