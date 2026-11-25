module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.ModerateCoefficientPositivity
import Mathlib.RingTheory.PiTensorProduct
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.RealFlowPeriodsSpanEqTop

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.FD

namespace FrequencySumBounds

open NumberField Complex Module
open scoped ComplexConjugate

variable {E : Type} [Field E] [NumberField E] [NumberField.IsCMField E] {r : ℕ}

def IsFreq (X : Data E r) (la : Wt X.Ψ r) (ν : X.Ψ → ℝ) : Prop :=
  (∀ τ, 0 ≤ ν τ) ∧ ∀ p ∈ X.periods la, ∃ k : ℤ, 2 * ∑ τ, ν τ * p τ = k

theorem freq_sum_bound (X : Data E r) (la : Wt X.Ψ r) (a : ℝ) (ha : 0 < a) :
    ∃ K : ℝ, ∀ F : Finset (X.Ψ → ℝ), (∀ ν ∈ F, IsFreq X la ν) →
      ∑ ν ∈ F, Real.exp (-a * ∑ τ, ν τ) ≤ K := by
  classical
  have hsingle : ∀ τ : X.Ψ, ∃ T : Finset (X.Ψ → ℝ), (∀ p ∈ T, p ∈ X.periods la) ∧
      (Pi.single τ (1 : ℝ) : X.Ψ → ℝ) ∈ Submodule.span ℝ (T : Set (X.Ψ → ℝ)) := fun τ => by
    have hmem : (Pi.single τ (1 : ℝ) : X.Ψ → ℝ) ∈ (⊤ : Submodule ℝ (X.Ψ → ℝ)) := Submodule.mem_top
    rw [← realFlowPeriods_span_eq_top X la] at hmem
    obtain ⟨T, hT, hT'⟩ := Submodule.mem_span_finite_of_mem_span hmem
    exact ⟨T, fun p hp => AddSubgroup.subset_closure (hT (Finset.mem_coe.mpr hp)), hT'⟩
  choose T hTsub hTmem using hsingle
  let U : Finset (X.Ψ → ℝ) := Finset.univ.biUnion T
  have hUsub : ∀ p ∈ U, p ∈ X.periods la := fun p hp => by
    obtain ⟨τ, -, hp⟩ := Finset.mem_biUnion.mp hp
    exact hTsub τ p hp

  have hU_sep : ∀ d : X.Ψ → ℝ, (∀ p ∈ U, ∑ τ, d τ * p τ = 0) → d = 0 := fun d hd => funext fun τ => by
    let φ : (X.Ψ → ℝ) →ₗ[ℝ] ℝ :=
      { toFun := fun x => ∑ σ, d σ * x σ
        map_add' := fun x y => by simp only [Pi.add_apply, mul_add, Finset.sum_add_distrib]
        map_smul' := fun c x => by
          simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply, Finset.mul_sum]
          exact Finset.sum_congr rfl fun σ _ => by ring }
    have hle : Submodule.span ℝ (T τ : Set (X.Ψ → ℝ)) ≤ LinearMap.ker φ :=
      Submodule.span_le.mpr fun p hp =>
        hd p (Finset.mem_biUnion.mpr ⟨τ, Finset.mem_univ _, Finset.mem_coe.mp hp⟩)
    simpa [φ, Pi.single_apply] using LinearMap.mem_ker.mp (hle (hTmem τ))

  let g : (X.Ψ → ℝ) → U → ℤ := fun ν p => round (2 * ∑ τ, ν τ * (p : X.Ψ → ℝ) τ)
  have hg : ∀ ν, IsFreq X la ν → ∀ p (hp : p ∈ U),
      ((g ν ⟨p, hp⟩ : ℤ) : ℝ) = 2 * ∑ τ, ν τ * p τ := fun ν hν p hp => by
    obtain ⟨k, hk⟩ := hν.2 p (hUsub p hp)
    show ((round (2 * ∑ τ, ν τ * p τ) : ℤ) : ℝ) = _
    rw [hk, round_intCast]
  have hinj : ∀ ν, IsFreq X la ν → ∀ ν', IsFreq X la ν' → g ν = g ν' → ν = ν' :=
    fun ν hν ν' hν' he => sub_eq_zero.mp <| hU_sep (ν - ν') fun p hp => by
      have h1 := hg ν hν p hp
      have h2 := hg ν' hν' p hp
      rw [he] at h1
      have h3 : ∑ τ, ν τ * p τ = ∑ τ, ν' τ * p τ := by linarith
      simp only [Pi.sub_apply, sub_mul, Finset.sum_sub_distrib, h3, sub_self]

  let M : ℝ := ∑ p ∈ U, ∑ τ, |p τ|
  have hM0 : 0 ≤ M := Finset.sum_nonneg fun _ _ => Finset.sum_nonneg fun _ _ => abs_nonneg _
  have hM : ∀ p ∈ U, ∀ τ, |p τ| ≤ M := fun p hp τ =>
    (Finset.single_le_sum (f := fun σ => |p σ|) (fun _ _ => abs_nonneg _) (Finset.mem_univ τ)).trans
      (Finset.single_le_sum (f := fun q => ∑ σ, |q σ|)
        (fun _ _ => Finset.sum_nonneg fun _ _ => abs_nonneg _) hp)
  have hbd : ∀ ν, IsFreq X la ν → ∀ p (hp : p ∈ U),
      |((g ν ⟨p, hp⟩ : ℤ) : ℝ)| ≤ 2 * M * ∑ τ, ν τ := fun ν hν p hp => by
    rw [hg ν hν p hp, abs_mul, abs_two]
    have h1 : |∑ τ, ν τ * p τ| ≤ ∑ τ, ν τ * M :=
      (Finset.abs_sum_le_sum_abs _ _).trans <| Finset.sum_le_sum fun τ _ => by
        rw [abs_mul, abs_of_nonneg (hν.1 τ)]
        exact mul_le_mul_of_nonneg_left (hM p hp τ) (hν.1 τ)
    rw [← Finset.sum_mul] at h1
    nlinarith
  have hsumbd : ∀ ν, IsFreq X la ν →
      ∑ p : U, |((g ν p : ℤ) : ℝ)| ≤ (U.card : ℝ) * (2 * M * ∑ τ, ν τ) := fun ν hν =>
    (Finset.sum_le_sum fun p _ => hbd ν hν p.1 p.2).trans_eq (by simp)

  have hc : 0 ≤ (U.card : ℝ) * (2 * M) := by positivity
  have hB : 0 < (U.card : ℝ) * (2 * M) + 1 := by linarith
  let b : ℝ := a / ((U.card : ℝ) * (2 * M) + 1)
  have hb : 0 < b := div_pos ha hB
  let w : ℤ → ℝ := fun j => Real.exp (-b * |(j : ℝ)|)
  have hw0 : ∀ j, 0 ≤ w j := fun j => (Real.exp_pos _).le
  have hgeo : Summable (fun n : ℕ => Real.exp (-b) ^ n) :=
    summable_geometric_of_lt_one (Real.exp_pos _).le
      ((Real.exp_lt_exp.mpr (by linarith : -b < 0)).trans_eq Real.exp_zero)
  have hw : Summable w := by
    refine Summable.of_nat_of_neg (hgeo.congr fun n => ?_) (hgeo.congr fun n => ?_)
    · show Real.exp (-b) ^ n = Real.exp (-b * |(((n : ℤ)) : ℝ)|)
      rw [← Real.exp_natCast_mul]; congr 1; push_cast; rw [abs_of_nonneg (Nat.cast_nonneg n)]; ring
    · show Real.exp (-b) ^ n = Real.exp (-b * |((-(n : ℤ) : ℤ) : ℝ)|)
      rw [← Real.exp_natCast_mul]; congr 1; push_cast; rw [abs_neg, abs_of_nonneg (Nat.cast_nonneg n)]; ring

  have hexp : ∀ ν, IsFreq X la ν → Real.exp (-a * ∑ τ, ν τ) ≤ ∏ p : U, w (g ν p) := fun ν hν => by
    have hs : 0 ≤ ∑ τ, ν τ := Finset.sum_nonneg fun τ _ => hν.1 τ
    have h2 : b * ∑ p : U, |((g ν p : ℤ) : ℝ)| ≤ a * ∑ τ, ν τ :=
      (mul_le_mul_of_nonneg_left (hsumbd ν hν) hb.le).trans <| by
        dsimp only [b]
        rw [div_mul_eq_mul_div, div_le_iff₀ hB]
        nlinarith [mul_nonneg ha.le hs, mul_nonneg hc hs]
    dsimp only [w]
    rw [← Real.exp_sum]
    apply Real.exp_le_exp.mpr
    rw [← Finset.mul_sum]
    linarith

  let Z : ℝ := ∑' j : ℤ, w j
  refine ⟨Z ^ U.card, fun F hF => ?_⟩
  have hinjF : Set.InjOn g (F : Set (X.Ψ → ℝ)) := fun x hx y hy h => hinj x (hF x hx) y (hF y hy) h
  let I : Finset ℤ := (F.image g).biUnion fun k => Finset.univ.image k
  have hsub : F.image g ⊆ Fintype.piFinset (fun _ : U => I) := fun k hk =>
    Fintype.mem_piFinset.mpr fun p =>
      Finset.mem_biUnion.mpr ⟨k, hk, Finset.mem_image_of_mem k (Finset.mem_univ p)⟩
  calc ∑ ν ∈ F, Real.exp (-a * ∑ τ, ν τ)
      ≤ ∑ ν ∈ F, ∏ p : U, w (g ν p) := Finset.sum_le_sum fun ν hν => hexp ν (hF ν hν)
    _ = ∑ k ∈ F.image g, ∏ p : U, w (k p) := by rw [Finset.sum_image hinjF]
    _ ≤ ∑ k ∈ Fintype.piFinset (fun _ : U => I), ∏ p : U, w (k p) :=
        Finset.sum_le_sum_of_subset_of_nonneg hsub fun _ _ _ => Finset.prod_nonneg fun _ _ => hw0 _
    _ = ∏ _p : U, ∑ j ∈ I, w j := (Finset.prod_univ_sum (fun _ : U => I) (fun _ j => w j)).symm
    _ ≤ ∏ _p : U, Z := Finset.prod_le_prod₀ (fun _ _ => Finset.sum_nonneg fun j _ => hw0 j)
          fun _ _ => hw.sum_le_tsum I fun j _ => hw0 j
    _ = Z ^ U.card := by simp

end FrequencySumBounds

end ReciprocityTheory.ChartRestriction.G.FD
