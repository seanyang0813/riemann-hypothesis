module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.TranslationZeroModeLift
public import Mathlib.Analysis.Real.Pi.Bounds
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SplitA

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

section

open NumberField Complex

noncomputable section

variable {E : Type} [Field E] [NumberField E] {X : PT E}

abbrev cabNZ (X : PT E) (I : Submodule ℤ (Vsp X.dim)) : Set (Col.Qc X I) :=
  (((({0} : Finset (Col.Qc X I)) : Set (Col.Qc X I)))ᶜ)

def cabOut {I : Submodule ℤ (Vsp X.dim)} (c : Col.Qc X I) : X.L := Quotient.out c

theorem cabOut_mk {I : Submodule ℤ (Vsp X.dim)} (c : Col.Qc X I) :
    (Submodule.Quotient.mk (cabOut c) : Col.Qc X I) = c := Quotient.out_eq c

theorem cab_mem_NIp {I : Submodule ℤ (Vsp X.dim)} {γ : X.L} (h : Col.uc (IR I) (γ : Vsp X.dim) = 0) :
    γ ∈ Col.NIp X I :=
  ⟨γ.2, (Col.isU_uc (I := I) (γ : Vsp X.dim)).eq_zero_iff.mp h⟩

theorem cab_uc_ne {I : Submodule ℤ (Vsp X.dim)} {c c' : Col.Qc X I} (hne : c ≠ c') :
    Col.uc (IR I) (cabOut c : Vsp X.dim) ≠ Col.uc (IR I) (cabOut c' : Vsp X.dim) := by
  intro heq
  apply hne
  have h1 : Col.uc (IR I) ((cabOut c - cabOut c' : X.L) : Vsp X.dim) = 0 := by
    rw [Submodule.coe_sub, Col.uc_sub (I := I), heq, sub_self]
  have h3 := (Submodule.Quotient.mk_eq_zero _).mpr (cab_mem_NIp h1)
  rw [Submodule.Quotient.mk_sub, sub_eq_zero, cabOut_mk, cabOut_mk] at h3
  exact h3

theorem columnVector_ne_zero {I : Submodule ℤ (Vsp X.dim)} {c : Col.Qc X I} (hne : c ≠ 0) :
    Col.uc (IR I) (cabOut c : Vsp X.dim) ≠ 0 := by
  intro h0
  apply hne
  have h3 := (Submodule.Quotient.mk_eq_zero _).mpr (cab_mem_NIp h0)
  rw [cabOut_mk] at h3
  exact h3

private theorem sqrt_b0_dist_of_ne_of_isSplit {DF : ℕ} {P : Par X DF} {I : Submodule ℤ (Vsp X.dim)} (hI : IsSplit P I)
    {c c' : Col.Qc X I} (h : c ≠ c') :
    Real.sqrt (b0 (E := E) P.q P.R0) ≤
      dist (Col.uc (IR I) (cabOut c : Vsp X.dim)) (Col.uc (IR I) (cabOut c' : Vsp X.dim)) := by
  have hne : Col.uc (IR I) ((cabOut c - cabOut c' : X.L) : Vsp X.dim) ≠ 0 := by
    rw [Submodule.coe_sub, Col.uc_sub (I := I)]
    exact sub_ne_zero.mpr (cab_uc_ne h)
  have hs := hI.sep _ (cabOut c - cabOut c').2 _ (Col.isU_uc _) hne
  rw [dist_eq_norm, ← Col.uc_sub (I := I), ← Submodule.coe_sub]
  calc Real.sqrt (b0 (E := E) P.q P.R0) ≤
        Real.sqrt (‖Col.uc (IR I) ((cabOut c - cabOut c' : X.L) : Vsp X.dim)‖ ^ 2) := Real.sqrt_le_sqrt hs
    _ = _ := Real.sqrt_sq (norm_nonneg _)

private theorem sqrt_b0_lower_bound_of_ne_zero {DF : ℕ} {P : Par X DF} {I : Submodule ℤ (Vsp X.dim)} (hI : IsSplit P I)
    {c : Col.Qc X I} (h : c ≠ 0) :
    Real.sqrt (b0 (E := E) P.q P.R0) ≤ ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ := by
  have hs := hI.sep _ (cabOut c).2 _ (Col.isU_uc _) (columnVector_ne_zero h)
  calc Real.sqrt (b0 (E := E) P.q P.R0) ≤ Real.sqrt (‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2) :=
        Real.sqrt_le_sqrt hs
    _ = _ := Real.sqrt_sq (norm_nonneg _)

theorem cab_sum_nz (hP : Ext.PackingCount) (hA : Ext.GaussianTailBound) {DF : ℕ} {P : Par X DF}
    {I : Submodule ℤ (Vsp X.dim)} (hI : IsSplit P I) :
    ∃ g' : ℕ, 2 * g' ≤ dstar (E := E) P.m ∧
      Summable (fun a : cabNZ X I =>
        Real.exp (-(Real.pi / 2 * P.q * ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖ ^ 2))) ∧
      ∑' a : cabNZ X I, Real.exp (-(Real.pi / 2 * P.q *
          ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖ ^ 2)) ≤
        2 * 9 ^ g' * Real.exp (-(Real.pi / 2 * t0 (E := E) P.q P.R0)) := by
  obtain ⟨ρ, hρm, hρ⟩ := hI.rank
  obtain ⟨g, hg, hgd⟩ : ∃ g : ℕ, Col.dK (IR I) = 2 * g ∧ 2 * g ≤ dstar (E := E) P.m := by
    refine ⟨PT.f E * ρ, ?_, ?_⟩
    · rw [show Col.dK (IR I) = Module.finrank ℝ (IR I) from rfl, hρ]; ring
    · show 2 * (PT.f E * ρ) ≤ 2 * PT.f E * P.m
      rw [← mul_assoc]; gcongr
  refine ⟨g, hgd, ?_⟩
  have hq1 : (1 : ℝ) ≤ P.q := by exact_mod_cast P.hq
  have hq : (0 : ℝ) < P.q := by linarith
  have hpi : (1 : ℝ) ≤ Real.pi / 2 := by linarith [Real.pi_gt_three]
  have haq : 0 < Real.pi / 2 * P.q := mul_pos (by positivity) hq
  have hb : 0 < b0 (E := E) P.q P.R0 := by have := P.C2; linarith
  have hb0 : 0 < Real.pi / 2 * P.q * b0 (E := E) P.q P.R0 := mul_pos haq hb
  have ht0 : t0 (E := E) P.q P.R0 = P.q * b0 (E := E) P.q P.R0 := rfl
  have hcond : 2 * (g : ℝ) + 1 ≤ Real.pi / 2 * P.q * b0 (E := E) P.q P.R0 := by
    have hC5 := P.C5
    have hDF1 : (1 : ℝ) ≤ DF := by exact_mod_cast P.hDF
    have hlog : 0 ≤ Real.log ((P.q : ℝ) * DF) :=
      Real.log_nonneg (one_le_mul_of_one_le_of_one_le hq1 hDF1)
    have hnn : 0 ≤ 4 * (DF : ℝ) * (7 + Real.log ((P.q : ℝ) * DF)) :=
      mul_nonneg (by positivity) (by linarith)
    have hgd' : 2 * (g : ℝ) ≤ (dstar (E := E) P.m : ℝ) := by exact_mod_cast hgd
    have ht0nn : 0 ≤ t0 (E := E) P.q P.R0 := by rw [ht0]; exact mul_nonneg hq.le hb.le
    have hmul : t0 (E := E) P.q P.R0 ≤ Real.pi / 2 * t0 (E := E) P.q P.R0 :=
      le_mul_of_one_le_left ht0nn hpi
    have heq : Real.pi / 2 * P.q * b0 (E := E) P.q P.R0 = Real.pi / 2 * t0 (E := E) P.q P.R0 := by
      rw [ht0]; ring
    rw [heq]
    linarith
  have hsa : 0 < Real.sqrt (Real.pi / 2 * P.q) := Real.sqrt_pos.mpr haq
  have hsb : 0 < Real.sqrt (b0 (E := E) P.q P.R0) := Real.sqrt_pos.mpr hb
  have hsa' := hsa.ne'
  have hsb' := hsb.ne'
  have h4 : (0 : ℝ) < 4 * Real.sqrt (Real.pi / 2 * P.q) := mul_pos (by norm_num) hsa
  have hR0pos : 0 < 4 * Real.sqrt (Real.pi / 2 * P.q * b0 (E := E) P.q P.R0) :=
    mul_pos (by norm_num) (Real.sqrt_pos.mpr hb0)
  have hR0cond : 16 * (2 * (g : ℝ) + 1) ≤ (4 * Real.sqrt (Real.pi / 2 * P.q * b0 (E := E) P.q P.R0)) ^ 2 := by
    rw [mul_pow, Real.sq_sqrt hb0.le]
    linarith
  have hlow : ∀ i : cabNZ X I,
      4 * Real.sqrt (Real.pi / 2 * P.q * b0 (E := E) P.q P.R0) ≤
        4 * Real.sqrt (Real.pi / 2 * P.q) * ‖Col.uc (IR I) (cabOut (i : Col.Qc X I) : Vsp X.dim)‖ := by
    intro i
    have hi : (i : Col.Qc X I) ≠ 0 := fun h0 => i.2 (by simp [h0])
    have hsq := sqrt_b0_lower_bound_of_ne_zero hI hi
    rw [Real.sqrt_mul haq.le, mul_assoc]
    gcongr
  have hpack : ∀ R : ℝ, 4 * Real.sqrt (Real.pi / 2 * P.q * b0 (E := E) P.q P.R0) ≤ R →
      ∀ S : Finset (cabNZ X I),
        (∀ i ∈ S, 4 * Real.sqrt (Real.pi / 2 * P.q) *
          ‖Col.uc (IR I) (cabOut (i : Col.Qc X I) : Vsp X.dim)‖ ≤ R) →
        (S.card : ℝ) ≤ (3 * R / (4 * Real.sqrt (Real.pi / 2 * P.q * b0 (E := E) P.q P.R0))) ^ (2 * g) := by
    intro R hR S hS
    let φ : cabNZ X I → EuclideanSpace ℝ (Fin (Col.dK (IR I))) :=
      fun i => (Col.ob (IR I)).repr ⟨Col.uc (IR I) (cabOut i.1 : Vsp X.dim), Col.uc_mem _ _⟩
    have hφ : Function.Injective φ := by
      intro i j hij
      have h1 : Col.uc (IR I) (cabOut i.1 : Vsp X.dim) = Col.uc (IR I) (cabOut j.1 : Vsp X.dim) :=
        congrArg Subtype.val ((Col.ob (IR I)).repr.injective hij)
      by_contra hne
      have hne' : (i : Col.Qc X I) ≠ j := fun h0 => hne (Subtype.ext h0)
      have h2 := sqrt_b0_dist_of_ne_of_isSplit hI hne'
      rw [h1, dist_self] at h2
      linarith
    have hδR : Real.sqrt (b0 (E := E) P.q P.R0) ≤ R / (4 * Real.sqrt (Real.pi / 2 * P.q)) := by
      rw [le_div_iff₀ h4]
      rw [Real.sqrt_mul haq.le] at hR
      have : Real.sqrt (b0 (E := E) P.q P.R0) * (4 * Real.sqrt (Real.pi / 2 * P.q)) =
          4 * (Real.sqrt (Real.pi / 2 * P.q) * Real.sqrt (b0 (E := E) P.q P.R0)) := by ring
      linarith
    have hnorm : ∀ x ∈ S.image φ, ‖x‖ ≤ R / (4 * Real.sqrt (Real.pi / 2 * P.q)) := by
      intro x hx
      obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp hx
      show ‖(Col.ob (IR I)).repr ⟨Col.uc (IR I) (cabOut i.1 : Vsp X.dim), Col.uc_mem _ _⟩‖ ≤ _
      rw [LinearIsometryEquiv.norm_map]
      show ‖Col.uc (IR I) (cabOut i.1 : Vsp X.dim)‖ ≤ _
      rw [le_div_iff₀ h4, mul_comm]
      exact hS i hi
    have hsep : ∀ x ∈ S.image φ, ∀ y ∈ S.image φ, x ≠ y →
        Real.sqrt (b0 (E := E) P.q P.R0) ≤ dist x y := by
      intro x hx y hy hxy
      obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp hx
      obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp hy
      have hne : (i : Col.Qc X I) ≠ j := fun h0 => hxy (congrArg φ (Subtype.ext h0))
      show _ ≤ dist ((Col.ob (IR I)).repr ⟨Col.uc (IR I) (cabOut i.1 : Vsp X.dim), Col.uc_mem _ _⟩)
        ((Col.ob (IR I)).repr ⟨Col.uc (IR I) (cabOut j.1 : Vsp X.dim), Col.uc_mem _ _⟩)
      rw [LinearIsometryEquiv.dist_map]
      exact sqrt_b0_dist_of_ne_of_isSplit hI hne
    have key := hP (Col.dK (IR I)) (S.image φ) (Real.sqrt (b0 (E := E) P.q P.R0))
      (R / (4 * Real.sqrt (Real.pi / 2 * P.q))) hsb hδR hnorm hsep
    rw [Finset.card_image_of_injective _ hφ, hg] at key
    convert key using 2
    rw [Real.sqrt_mul haq.le]
    field_simp
  have hfun : (fun c : cabNZ X I =>
      Real.exp (-(4 * Real.sqrt (Real.pi / 2 * P.q) *
        ‖Col.uc (IR I) (cabOut (c : Col.Qc X I) : Vsp X.dim)‖) ^ 2 / 16)) =
      fun c : cabNZ X I => Real.exp (-(Real.pi / 2 * P.q *
        ‖Col.uc (IR I) (cabOut (c : Col.Qc X I) : Vsp X.dim)‖ ^ 2)) := by
    funext c
    congr 1
    rw [mul_pow, mul_pow, Real.sq_sqrt haq.le]
    ring
  have key : Summable (fun c : cabNZ X I =>
      Real.exp (-(4 * Real.sqrt (Real.pi / 2 * P.q) *
        ‖Col.uc (IR I) (cabOut (c : Col.Qc X I) : Vsp X.dim)‖) ^ 2 / 16)) ∧
      ∑' c : cabNZ X I, Real.exp (-(4 * Real.sqrt (Real.pi / 2 * P.q) *
        ‖Col.uc (IR I) (cabOut (c : Col.Qc X I) : Vsp X.dim)‖) ^ 2 / 16) ≤
        2 * 9 ^ g * Real.exp (-(4 * Real.sqrt (Real.pi / 2 * P.q * b0 (E := E) P.q P.R0)) ^ 2 / 16) :=
    hA _ _ g _ hR0pos hR0cond hlow hpack
  obtain ⟨hs, ht⟩ := key
  rw [hfun] at hs ht
  refine ⟨hs, ht.trans (le_of_eq ?_)⟩
  have e1 : -(4 * Real.sqrt (Real.pi / 2 * P.q * b0 (E := E) P.q P.R0)) ^ 2 / 16 =
      -(Real.pi / 2 * t0 (E := E) P.q P.R0) := by
    rw [mul_pow, Real.sq_sqrt hb0.le, ht0]; ring
  rw [e1]

end

end

section

open NumberField Complex

noncomputable section

variable {E : Type} [Field E] [NumberField E] {X : PT E} {DF : ℕ} {P : Par X DF}
  {I : Submodule ℤ (Vsp X.dim)}

theorem translate_zero_zeroModeLift (hI : IsSplit P I) (hP : Ext.PackingCount) (q : ℕ)
    {β : EuclideanSpace ℂ (Fin (Col.gB (IR I))) → ℂ} (hβ : β ∈ (Col.YB hI hP q).Sec q) :
    Col.Tc X I q β 0 = Col.F0 I q β := by
  have hN := (Submodule.Quotient.mk_eq_zero _).mp (cabOut_mk (0 : Col.Qc X I))
  exact Col.translation_zeroModeLift hI hP q hβ hN

theorem cab_expo2 {q t u : ℝ} (hq : 0 < q) :
    q * Real.pi * t ^ 2 / 2 - q * Real.pi * u ^ 2 + 2 * q * Real.pi * t * u ≤
      (q * Real.pi * t ^ 2 / 2 + 2 * q * Real.pi * t ^ 2) - Real.pi / 2 * q * u ^ 2 := by
  have h1 : 0 ≤ q * Real.pi * (2 * (t - u / 2) ^ 2) :=
    mul_nonneg (mul_nonneg hq.le Real.pi_pos.le) (by positivity)
  linarith

theorem cab_R (hI : IsSplit P I) (hP : Ext.PackingCount) (hA : Ext.GaussianTailBound)
    {β : EuclideanSpace ℂ (Fin (Col.gB (IR I))) → ℂ} (hβ : β ∈ (Col.YB hI hP P.q).Sec P.q)
    (B : ℝ) (hB : 0 ≤ B)
    (hT1 : ∀ v, Summable (fun c => Col.Tc X I P.q β c v))
    (hT2 : ∀ c v, ‖Col.Tc X I P.q β c v‖ ≤ B * Real.exp (P.q * Real.pi * ‖v‖ ^ 2 / 2) *
      Real.exp (-(P.q * Real.pi * ‖Col.uc (IR I) v - Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2)))
    (v : Vsp X.dim) :
    ‖Col.sP X I P.q β v - Col.F0 I P.q β v‖ ≤ B * ∑' a : cabNZ X I,
      Real.exp (P.q * Real.pi * ‖v‖ ^ 2 / 2 - P.q * Real.pi * ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖ ^ 2 +
        2 * P.q * Real.pi * ‖v‖ * ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖) := by
  have hq : (0 : ℝ) < P.q := by
    have := P.hq
    exact_mod_cast (by omega : 0 < P.q)
  obtain ⟨g', -, hs, -⟩ := cab_sum_nz hP hA hI
  have huc : ‖Col.uc (IR I) v‖ ≤ ‖v‖ := Col.norm_uc_le hI.iso v
  have hterm : ∀ c : Col.Qc X I, ‖Col.Tc X I P.q β c v‖ ≤ B * Real.exp (P.q * Real.pi * ‖v‖ ^ 2 / 2 -
      P.q * Real.pi * ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2 + 2 * P.q * Real.pi * ‖v‖ * ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖) := by
    intro c
    refine (hT2 c v).trans ?_
    rw [mul_assoc, ← Real.exp_add]
    refine mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr ?_) hB
    have hd := norm_sub_norm_le (Col.uc (IR I) (cabOut c : Vsp X.dim)) (Col.uc (IR I) v)
    have hd2 := norm_sub_norm_le (Col.uc (IR I) v) (Col.uc (IR I) (cabOut c : Vsp X.dim))
    rw [norm_sub_rev] at hd
    have hsq : ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2 - 2 * ‖Col.uc (IR I) v‖ * ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ≤
        ‖Col.uc (IR I) v - Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2 := by
      have habs : |‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ - ‖Col.uc (IR I) v‖| ≤
          ‖Col.uc (IR I) v - Col.uc (IR I) (cabOut c : Vsp X.dim)‖ :=
        abs_sub_le_iff.mpr ⟨hd, hd2⟩
      have hsq' : (‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ - ‖Col.uc (IR I) v‖) ^ 2 ≤
          ‖Col.uc (IR I) v - Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2 := by
        rw [← sq_abs]
        exact pow_le_pow_left₀ (abs_nonneg _) habs 2
      have hexp : (‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ - ‖Col.uc (IR I) v‖) ^ 2 =
          ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2 -
            2 * ‖Col.uc (IR I) v‖ * ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ +
            ‖Col.uc (IR I) v‖ ^ 2 := by ring
      linarith [sq_nonneg ‖Col.uc (IR I) v‖]
    have hkey : ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2 - 2 * ‖v‖ * ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ≤
        ‖Col.uc (IR I) v - Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2 := by
      have := mul_le_mul_of_nonneg_right (by linarith : 2 * ‖Col.uc (IR I) v‖ ≤ 2 * ‖v‖)
        (norm_nonneg (Col.uc (IR I) (cabOut c : Vsp X.dim)))
      linarith
    have hqpi : 0 ≤ (P.q : ℝ) * Real.pi := by positivity
    have hmul := mul_le_mul_of_nonneg_left hkey hqpi
    have hexp : (P.q : ℝ) * Real.pi *
        (‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2 - 2 * ‖v‖ * ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖) =
        P.q * Real.pi * ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ ^ 2 -
          2 * P.q * Real.pi * ‖v‖ * ‖Col.uc (IR I) (cabOut c : Vsp X.dim)‖ := by ring
    linarith
  have hC : ∀ a : cabNZ X I, Real.exp (P.q * Real.pi * ‖v‖ ^ 2 / 2 - P.q * Real.pi * ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖ ^ 2 +
      2 * P.q * Real.pi * ‖v‖ * ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖) ≤
      Real.exp (P.q * Real.pi * ‖v‖ ^ 2 / 2 + 2 * P.q * Real.pi * ‖v‖ ^ 2) *
        Real.exp (-(Real.pi / 2 * P.q * ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖ ^ 2)) := by
    intro a
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    have := cab_expo2 (t := ‖v‖) (u := ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖) hq
    linarith
  have hsum : Summable (fun a : cabNZ X I => Real.exp (P.q * Real.pi * ‖v‖ ^ 2 / 2 -
      P.q * Real.pi * ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖ ^ 2 + 2 * P.q * Real.pi * ‖v‖ * ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖)) :=
    Summable.of_nonneg_of_le (fun _ => (Real.exp_pos _).le) hC (hs.mul_left _)
  have hnsum : Summable (fun a : cabNZ X I => ‖Col.Tc X I P.q β a v‖) :=
    Summable.of_nonneg_of_le (fun _ => norm_nonneg _) (fun a => hterm a) (hsum.mul_left B)
  have hsplit : Col.sP X I P.q β v - Col.F0 I P.q β v = ∑' a : cabNZ X I, Col.Tc X I P.q β a v := by
    have h0 : Col.F0 I P.q β v = Col.Tc X I P.q β 0 v := by rw [translate_zero_zeroModeLift hI hP P.q hβ]
    have h1 : ∑ x ∈ ({0} : Finset (Col.Qc X I)), Col.Tc X I P.q β x v +
        ∑' x : ↥((({0} : Finset (Col.Qc X I)) : Set (Col.Qc X I))ᶜ), Col.Tc X I P.q β x v =
        ∑' x, Col.Tc X I P.q β x v := by
      first | exact (hT1 v).sum_add_tsum_compl
    rw [Finset.sum_singleton] at h1
    rw [h0, Col.sP, ← h1]
    first | exact add_sub_cancel_left _ _
  rw [hsplit]
  calc ‖∑' a : cabNZ X I, Col.Tc X I P.q β a v‖ ≤ ∑' a : cabNZ X I, ‖Col.Tc X I P.q β a v‖ :=
        norm_tsum_le_tsum_norm hnsum
    _ ≤ ∑' a : cabNZ X I, B * Real.exp (P.q * Real.pi * ‖v‖ ^ 2 / 2 -
          P.q * Real.pi * ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖ ^ 2 + 2 * P.q * Real.pi * ‖v‖ * ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖) := by
        first
          | exact Summable.tsum_le_tsum (fun a => hterm a) hnsum (hsum.mul_left B)
    _ = _ := tsum_mul_left

end

end

section

open NumberField Complex

noncomputable section

variable {E : Type} [Field E] [NumberField E] {X : PT E} {DF : ℕ} {P : Par X DF}
  {I : Submodule ℤ (Vsp X.dim)}

theorem cab_YB_abs (hI : IsSplit P I) (hP : Ext.PackingCount) (q : ℕ) :
    ∀ γ ∈ lat (Col.YB hI hP q).b, γ ≠ 0 → |P.R0| ≤ Real.sqrt (P.q * Real.pi) * ‖γ‖ := by
  intro γ hγ hne
  have hl : γ ∈ Col.GB X I := by rw [← Col.lat_bB hI hP]; exact hγ
  obtain ⟨x, hx, rfl⟩ := Col.mem_GB.1 hl
  have hx' : x ∈ X.L ∧ ∀ a ∈ I, (Hf x a).im = 0 := hx
  have hreal : ∀ a ∈ IR I, (Hf x a).im = 0 := Hf_im_span_right (I : Set (Vsp X.dim)) x hx'.2
  have hz : ∀ k, (Col.z (IR I) k x).im = 0 := fun k => hreal _ (Col.ob (IR I) k).2
  have hp1 : Col.p1 (IR I) x ∈ IR I := by
    have hsum : Col.p1 (IR I) x = ∑ k, (Col.z (IR I) k x).re • Col.e (IR I) k := by
      simp only [Col.p1]
      refine Finset.sum_congr rfl fun k _ => ?_
      have hzk : Col.z (IR I) k x = ((Col.z (IR I) k x).re : ℂ) := by
        apply Complex.ext <;> simp [hz k]
      conv_lhs => rw [hzk]
      exact (RCLike.real_smul_eq_coe_smul (K := ℂ) _ _).symm
    rw [hsum]
    exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (Col.ob (IR I) k).2
  have hnorm : ‖Col.wmap (IR I) x‖ = ‖x - Col.p1 (IR I) x‖ := by
    first | rw [Col.norm_wmap (Col.hK_of hI)]
    rw [Col.p2]
  have hxI : x ∉ I := by
    intro hxI
    apply hne
    have hxK : x ∈ IR I := Submodule.subset_span hxI
    have hp : Col.p1 (IR I) x = x := Col.proj_one_of_mem (Col.hK_of hI) hxK
    have h0 : ‖Col.wmap (IR I) x‖ = 0 := by rw [hnorm, hp, sub_self, norm_zero]
    exact norm_eq_zero.mp h0
  have ht := hI.thick x hx'.1 hx'.2 hxI
  have hth : |P.R0| ≤ Real.sqrt (P.q * Real.pi) * P.th := by
    have hq : (0 : ℝ) < P.q := by
      have := P.hq
      exact_mod_cast (by omega : 0 < P.q)
    have hqne : (P.q : ℝ) ≠ 0 := hq.ne'
    have hf1 : (1 : ℝ) ≤ PT.f E := by
      have h2 : 1 ≤ PT.f E := le_trans (Nat.one_le_pow _ _ (by have := P.hm1; omega)) P.hmf
      exact_mod_cast h2
    have hRR : (1 : ℝ) ≤ RR (E := E) := by
      have := P.hrd
      show (1 : ℝ) ≤ PT.rd E ^ 7
      exact one_le_pow₀ (by linarith)
    have hRR3 : (1 : ℝ) ≤ RR (E := E) ^ 3 := one_le_pow₀ hRR
    have hpi : (1 : ℝ) ≤ Real.pi := by linarith [Real.pi_gt_three]
    have hc : 1 ≤ Real.pi * PT.f E * RR (E := E) ^ 3 :=
      one_le_mul_of_one_le_of_one_le (one_le_mul_of_one_le_of_one_le hpi hf1) hRR3
    rw [Par.th, th, ← Real.sqrt_mul (show (0 : ℝ) ≤ P.q * Real.pi by positivity), ← Real.sqrt_sq_eq_abs]
    apply Real.sqrt_le_sqrt
    have heq : (P.q : ℝ) * Real.pi * (PT.f E * P.R0 ^ 2 * RR (E := E) ^ 3 / P.q) =
        (Real.pi * PT.f E * RR (E := E) ^ 3) * P.R0 ^ 2 := by
      first | (field_simp; ring) | field_simp
    rw [heq]
    exact le_mul_of_one_le_left (sq_nonneg _) hc
  calc |P.R0| ≤ Real.sqrt (P.q * Real.pi) * P.th := hth
    _ ≤ Real.sqrt (P.q * Real.pi) * ‖Col.wmap (IR I) x‖ := by
      gcongr
      calc P.th ≤ Metric.infDist x (IR I) := ht
        _ ≤ dist x (Col.p1 (IR I) x) := Metric.infDist_le_dist_of_mem hp1
        _ = ‖Col.wmap (IR I) x‖ := by rw [dist_eq_norm, hnorm]

theorem cab_gB_le [IsCMField E] (K : Submodule ℝ (Vsp X.dim)) : Col.gB K ≤ X.gA := by
  have h1 : Col.gB K ≤ Module.finrank ℂ (Vsp X.dim) := Submodule.finrank_le _
  have h2 : Module.finrank ℂ (Vsp X.dim) = ∑ τ, X.dim τ := by
    simp [Vsp, Idx, finrank_euclideanSpace, Fintype.card_sigma]
  have hinv : Function.Involutive (NumberField.ComplexEmbedding.conjugate : (E →+* ℂ) → (E →+* ℂ)) :=
    fun τ => RingHom.ext fun x => by simp
  have hs : ∑ τ, X.dim (NumberField.ComplexEmbedding.conjugate τ) = ∑ τ, X.dim τ :=
    Fintype.sum_bijective _ hinv.bijective _ _ fun τ => rfl
  have h3 : 2 * ∑ τ, X.dim τ = Module.finrank ℚ E * X.r := by
    calc 2 * ∑ τ, X.dim τ = ∑ τ, (X.dim τ + X.dim (NumberField.ComplexEmbedding.conjugate τ)) := by
          rw [Finset.sum_add_distrib, hs]; ring
      _ = ∑ _τ : E →+* ℂ, X.r := Finset.sum_congr rfl fun τ _ => X.dim_conj τ
      _ = Fintype.card (E →+* ℂ) * X.r := by simp
      _ = Module.finrank ℚ E * X.r := by rw [NumberField.Embeddings.card]
  have hev : 2 ∣ Module.finrank ℚ E := by
    have hn := NumberField.InfinitePlace.card_add_two_mul_card_eq_rank (K := E)
    have hz := NumberField.IsTotallyComplex.nrRealPlaces_eq_zero (K := E)
    first
      | (rw [← hn, hz]; simp)
  obtain ⟨k, hk⟩ := hev
  have h4 : ∑ τ, X.dim τ = k * X.r := by
    apply Nat.eq_of_mul_eq_mul_left (show 0 < 2 by norm_num)
    rw [h3, hk, mul_assoc]
  show Col.gB K ≤ PT.f E * X.r
  have hf : PT.f E = k := by
    show Module.finrank ℚ E / 2 = k
    rw [hk]; omega
  rw [hf, ← h4, ← h2]
  exact h1

theorem cab_dstar_ge (P : Par X DF) : 2 ≤ dstar (E := E) P.m := by
  show 2 ≤ 2 * PT.f E * P.m
  have h1 := P.hm1
  have h2 : 1 ≤ PT.f E := le_trans (Nat.one_le_pow _ _ (by omega)) P.hmf
  calc 2 = 2 * 1 * 1 := by norm_num
    _ ≤ 2 * PT.f E * P.m := Nat.mul_le_mul (Nat.mul_le_mul_left 2 h2) h1

theorem cab_q_ge (P : Par X DF) : (2 : ℝ) ≤ P.q := by
  have h1 := P.C3
  have hm : (1 : ℝ) ≤ P.m := by exact_mod_cast P.hm1
  have hd : (2 : ℝ) ≤ dstar (E := E) P.m := by exact_mod_cast cab_dstar_ge P
  have hrd := P.hrd
  have ha : (1 : ℝ) ≤ (P.m : ℝ) ^ 2 := one_le_pow₀ hm
  have hb : (1 : ℝ) ≤ (dstar (E := E) P.m : ℝ) ^ 2 := one_le_pow₀ (by linarith)
  have hc : (1 : ℝ) ≤ PT.rd E := by linarith
  have habc : 1 ≤ (P.m : ℝ) ^ 2 * (dstar (E := E) P.m : ℝ) ^ 2 * PT.rd E :=
    one_le_mul_of_one_le_of_one_le (one_le_mul_of_one_le_of_one_le ha hb) hc
  have hM : M1 (E := E) P.m = 90 * ((P.m : ℝ) ^ 2 * (dstar (E := E) P.m : ℝ) ^ 2 * PT.rd E) := by
    simp only [M1]; push_cast; ring
  linarith

theorem threshold_ge_log_bound (P : Par X DF) {c : ℕ} (hc : c ≤ DF) :
    4 * c * (7 + Real.log (P.q * c)) + dstar (E := E) P.m + 1 ≤ t0 (E := E) P.q P.R0 := by
  have hC5 := P.C5
  have hq1 : (1 : ℝ) ≤ P.q := by exact_mod_cast P.hq
  have hDF1 : (1 : ℝ) ≤ DF := by exact_mod_cast P.hDF
  have hcDF : (c : ℝ) ≤ DF := by exact_mod_cast hc
  have hlogDF : 0 ≤ Real.log ((P.q : ℝ) * DF) :=
    Real.log_nonneg (one_le_mul_of_one_le_of_one_le hq1 hDF1)
  have key : 4 * (c : ℝ) * (7 + Real.log (P.q * c)) ≤ 4 * (DF : ℝ) * (7 + Real.log (P.q * DF)) := by
    rcases Nat.eq_zero_or_pos c with h0 | h0
    · have hc0 : (c : ℝ) = 0 := by exact_mod_cast h0
      rw [hc0, mul_zero, zero_mul]
      exact mul_nonneg (by positivity) (by linarith)
    · have hc1 : (1 : ℝ) ≤ c := by exact_mod_cast h0
      have hlog : Real.log (P.q * c) ≤ Real.log (P.q * DF) :=
        Real.log_le_log (mul_pos (by linarith) (by linarith)) (mul_le_mul_of_nonneg_left hcDF (by linarith))
      have hlogc : 0 ≤ Real.log ((P.q : ℝ) * c) :=
        Real.log_nonneg (one_le_mul_of_one_le_of_one_le hq1 hc1)
      exact mul_le_mul (by linarith) (by linarith) (by linarith) (by linarith)
  linarith

theorem threshold_ge_rank_log_two (P : Par X DF) : (X.gA : ℝ) * Real.log 2 ≤ t0 (E := E) P.q P.R0 := by
  have h := P.C6
  have hr : 0 ≤ (X.r : ℝ) * Real.log X.r := by
    rcases Nat.eq_zero_or_pos X.r with h0 | h0
    · rw [h0]; simp
    · exact mul_nonneg (by positivity) (Real.log_nonneg (by exact_mod_cast h0))
  have hr0 : (0 : ℝ) ≤ X.r := by positivity
  have h2 : 0 ≤ ((DF : ℝ) + 1) * ((X.r : ℝ) * Real.log X.r + 3 * X.r + 3) :=
    mul_nonneg (by positivity) (by linarith)
  have h3 : (0 : ℝ) ≤ dstar (E := E) P.m := by positivity
  linarith

theorem twentyfour_le_constant (P : Par X DF) : (24 : ℝ) ≤ P.K6 := by
  have hd : (2 : ℝ) ≤ dstar (E := E) P.m := by exact_mod_cast cab_dstar_ge P
  have h1 : (2 * (dstar (E := E) P.m : ℝ)) ^ (1 : ℝ) ≤
      (2 * (dstar (E := E) P.m : ℝ)) ^ ((dstar (E := E) P.m : ℝ) / 2) :=
    Real.rpow_le_rpow_of_exponent_le (by linarith) (by linarith)
  rw [Real.rpow_one] at h1
  unfold Par.K6
  linarith

theorem cab_J_one (P : Par X DF) {c G : ℕ} (hc : c ≤ DF) :
    (c.factorial : ℝ) * (2 / (P.q * Real.pi)) ^ c * (2 / P.q) ^ G ≤ 1 := by
  have hq2 := cab_q_ge P
  have hcq : (c : ℝ) ≤ P.q := by have := P.C4; exact_mod_cast hc.trans this
  have hqpos : (0 : ℝ) < P.q := by linarith
  have hqne : (P.q : ℝ) ≠ 0 := hqpos.ne'
  have hG : (2 / (P.q : ℝ)) ^ G ≤ 1 := pow_le_one₀ (by positivity) ((div_le_one hqpos).mpr hq2)
  have hfac : (c.factorial : ℝ) ≤ (P.q : ℝ) ^ c := by
    calc (c.factorial : ℝ) ≤ ((c ^ c : ℕ) : ℝ) := by exact_mod_cast Nat.factorial_le_pow c
      _ = (c : ℝ) ^ c := by push_cast; ring
      _ ≤ (P.q : ℝ) ^ c := pow_le_pow_left₀ (by positivity) hcq c
  have hA : (c.factorial : ℝ) * (2 / (P.q * Real.pi)) ^ c ≤ 1 := by
    calc (c.factorial : ℝ) * (2 / (P.q * Real.pi)) ^ c ≤ (P.q : ℝ) ^ c * (2 / (P.q * Real.pi)) ^ c :=
          mul_le_mul_of_nonneg_right hfac (by positivity)
      _ = (2 / Real.pi) ^ c := by rw [← mul_pow]; congr 1; field_simp
      _ ≤ 1 := pow_le_one₀ (by positivity) ((div_le_one Real.pi_pos).mpr (by linarith [Real.pi_gt_three]))
  calc (c.factorial : ℝ) * (2 / (P.q * Real.pi)) ^ c * (2 / P.q) ^ G ≤ 1 * 1 :=
        mul_le_mul hA hG (by positivity) (by norm_num)
    _ = 1 := one_mul 1

end

end

end ReciprocityTheory.ChartRestriction.G.I2
