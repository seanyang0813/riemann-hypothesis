module

public import Formalism.HermitianLattices.StatementLat
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsNormOneOfPair
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsIsomFrame

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.HermitianGenusExtension.SemilocalHermitianLattices.ExistsIsomFix, Formalism.PeriodIntegrals.HermitianGenusExtension.SemilocalHermitianLattices.ExistsIsomFrame

-- ===== clump member: Formalism.PeriodIntegrals.HermitianGenusExtension.SemilocalHermitianLattices.ExistsIsomFix =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.HermitianGenusExtension.SemilocalHermitianLattices.ExistsIsomFix", "h": "module\n\npublic import Formalism.HermitianLattices.StatementLat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.L3.WA
open Formalism.HermitianLattices.Ext.L3.WA (IsHermSemilocal IsSelfDualMod exists_norm_one_mul_mem exists_norm_one_of_pair)

variable {K V : Type*} [Field K] [StarRing K] [AddCommGroup V] [Module K V]

def quasiRefl (h : V →ₗ⋆[K] V →ₗ[K] K) (u : V) (a : K) : V →ₗ[K] V :=
  LinearMap.id - a • (h u).smulRight u

theorem quasiRefl_apply (h : V →ₗ⋆[K] V →ₗ[K] K) (u : V) (a : K) (v : V) :
    quasiRefl h u a v = v - (a * h u v) • u := by
  simp [quasiRefl, smul_smul]

private theorem sesq_smul_right_eq_mul (h : V →ₗ⋆[K] V →ₗ[K] K) (c : K) (x y : V) :
    h x (c • y) = c * h x y := by
  rw [map_smul, smul_eq_mul]

theorem quasiRefl_comp (h : V →ₗ⋆[K] V →ₗ[K] K) (u : V) {a b : K}
    (hab : a + b = a * b * h u u) : quasiRefl h u a ∘ₗ quasiRefl h u b = LinearMap.id := by
  ext v
  rw [LinearMap.comp_apply, quasiRefl_apply, quasiRefl_apply, LinearMap.id_apply,
    map_sub, sesq_smul_right_eq_mul, sub_sub, ← add_smul]
  have hc : b * h u v + a * (h u v - b * h u v * h u u) = 0 := by
    linear_combination (h u v) * hab
  rw [hc, zero_smul, sub_zero]

private theorem sesq_smul_left_eq_star_mul (h : V →ₗ⋆[K] V →ₗ[K] K) (c : K) (x y : V) :
    h (c • x) y = star c * h x y := by
  rw [LinearMap.map_smulₛₗ₂, smul_eq_mul, starRingEnd_apply]

private theorem star_apply_eq_apply_swap_of_isSymm {h : V →ₗ⋆[K] V →ₗ[K] K} (hs : h.IsSymm) (x y : V) :
    star (h x y) = h y x := by
  have := LinearMap.isSymm_def.mp hs x y
  rwa [starRingEnd_apply] at this

theorem quasiRefl_isom {h : V →ₗ⋆[K] V →ₗ[K] K} (hs : h.IsSymm) (u : V) {a : K}
    (ha : a + star a = a * star a * h u u) (v w : V) :
    h (quasiRefl h u a v) (quasiRefl h u a w) = h v w := by
  have hsy := star_apply_eq_apply_swap_of_isSymm hs
  simp only [quasiRefl_apply, map_sub, LinearMap.sub_apply, sesq_smul_left_eq_star_mul,
    sesq_smul_right_eq_mul, star_mul, hsy]
  linear_combination (-(h v u * h u w)) * ha

theorem exists_isom_fix {h : V →ₗ⋆[K] V →ₗ[K] K} (hs : h.IsSymm) (hd : ∀ x, h x x = 0 → x = 0)
    {x y : V} (hx : h x x = 1) (hy : h y y = 1) :
    ∃ τ ∈ Formalism.HermitianLatticesTheory.isom h, τ x = y ∧ ∀ v, h x v = 0 → h y v = 0 → τ v = v := by
  by_cases hxy : x = y
  · subst hxy
    exact ⟨1, Subgroup.one_mem _, rfl, fun v _ _ => rfl⟩
  have hsy := star_apply_eq_apply_swap_of_isSymm hs
  obtain ⟨c, hcdef⟩ : ∃ c, c = h (x - y) x := ⟨_, rfl⟩
  have hsum : c + star c = h (x - y) (x - y) := by
    rw [hcdef, hsy]
    simp only [map_sub, LinearMap.sub_apply, hx, hy]
    ring
  have hc0 : c ≠ 0 := by
    intro h0
    apply hxy
    have : h (x - y) (x - y) = 0 := by rw [← hsum, h0, star_zero, add_zero]
    exact sub_eq_zero.mp (hd _ this)
  have hs0 : star c ≠ 0 := star_ne_zero.mpr hc0
  have ha : c⁻¹ + star c⁻¹ = c⁻¹ * star c⁻¹ * h (x - y) (x - y) := by
    rw [← hsum, star_inv₀]
    field_simp
    ring
  have h1 : quasiRefl h (x - y) c⁻¹ ∘ₗ quasiRefl h (x - y) (star c⁻¹) =
      LinearMap.id := quasiRefl_comp h (x - y) ha
  have h2 : quasiRefl h (x - y) (star c⁻¹) ∘ₗ quasiRefl h (x - y) c⁻¹ =
      LinearMap.id := quasiRefl_comp h (x - y) (by rw [add_comm, ha]; ring)
  refine ⟨LinearEquiv.ofLinear _ _ h1 h2, ?_, ?_, ?_⟩
  · exact fun v w => quasiRefl_isom hs (x - y) ha v w
  · change quasiRefl h (x - y) c⁻¹ x = y
    rw [quasiRefl_apply, ← hcdef, inv_mul_cancel₀ hc0, one_smul, sub_sub_cancel]
  · intro v hxv hyv
    change quasiRefl h (x - y) c⁻¹ v = v
    rw [quasiRefl_apply, map_sub, LinearMap.sub_apply, hxv, hyv, sub_zero, mul_zero,
      zero_smul, sub_zero]

end ReciprocityTheory.ChartRestriction.L3.WA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.HermitianGenusExtension.SemilocalHermitianLattices.ExistsIsomFix =====

-- ===== clump member: Formalism.PeriodIntegrals.HermitianGenusExtension.SemilocalHermitianLattices.ExistsIsomFrame =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.HermitianGenusExtension.SemilocalHermitianLattices.ExistsIsomFrame", "h": "module\n\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.ExistsNormOneOfPair\npublic import Formalism.HermitianLattices.StatementLat\npublic import Formalism.PeriodIntegrals.HermitianGenusExtension.SemilocalHermitianLattices.ExistsIsomFix\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.L3.WA
open Formalism.HermitianLattices.Ext.L3.WA (IsHermSemilocal IsSelfDualMod exists_norm_one_mul_mem exists_norm_one_of_pair)

variable {K V : Type*} [Field K] [StarRing K] [AddCommGroup V] [Module K V]

variable {S : Subring K} {h : V →ₗ⋆[K] V →ₗ[K] K} {M : AddSubgroup V}

theorem exists_next (hS : IsHermSemilocal S) (hs : h.IsSymm) (hM : IsSelfDualMod S h M)
    {ι : Type*} [DecidableEq ι] (x : ι → V) (hx : ∀ i j, h (x i) (x j) = if i = j then 1 else 0)
    (s : Finset ι) (hxM : ∀ i ∈ s, x i ∈ M) (j : ι) (hj : j ∉ s) :
    ∃ z ∈ M, h z z = 1 ∧ ∀ i ∈ s, h (x i) z = 0 := by
  have hsym : ∀ u v, star (h u v) = h v u := fun u v => hs.eq u v
  let f : V →+ K :=
    { toFun := fun m => h m (x j)
      map_zero' := by simp
      map_add' := by intro a b; simp }
  have hf : ∀ m, f m = h m (x j) := fun _ => rfl
  have hAS : ∀ c ∈ S, ∀ a ∈ M.map f, c * a ∈ M.map f := by
    rintro c hc _ ⟨m, hm, rfl⟩
    refine ⟨star c • m, hM.smul_mem _ (hS.star_mem _ hc) _ hm, ?_⟩
    rw [hf, hf, map_smulₛₗ, LinearMap.smul_apply, starRingEnd_apply, star_star, smul_eq_mul]
  obtain ⟨t, ht0, htM⟩ := hM.span (x j)
  have h0 : ∃ a ∈ M.map f, a ≠ 0 := by
    refine ⟨_, ⟨t • x j, htM, rfl⟩, ?_⟩
    rw [hf, map_smulₛₗ, LinearMap.smul_apply, hx, if_pos rfl, smul_eq_mul, mul_one,
      starRingEnd_apply]
    exact star_ne_zero.mpr ht0
  have hb : ∀ a ∈ M.map f, t * a ∈ S := by
    rintro _ ⟨m, hm, rfl⟩
    have := hM.int m hm _ htM
    rwa [map_smul, smul_eq_mul] at this
  obtain ⟨α, ⟨w₀, hw₀, hα⟩, hα0, hdiv⟩ := hS.principal (M.map f) hAS h0 ⟨t, ht0, hb⟩
  rw [hf] at hα
  have hy₀ : α⁻¹ • x j ∈ M := by
    apply hM.dual
    intro m hm
    have := hdiv _ ⟨m, hm, rfl⟩
    rw [map_smul, smul_eq_mul, mul_comm]
    exact this
  have hyy : h (α⁻¹ • x j) (α⁻¹ • x j) = star α⁻¹ * α⁻¹ := by
    rw [map_smul, map_smulₛₗ, LinearMap.smul_apply, hx, if_pos rfl, starRingEnd_apply,
      smul_eq_mul, smul_eq_mul, mul_one, mul_comm]
  obtain ⟨b, hb1, hbS⟩ := exists_norm_one_mul_mem hS (a := α⁻¹)
    (by rw [← hyy]; exact hM.int _ hy₀ _ hy₀)
  have hb0 : b ≠ 0 := by
    rintro rfl
    simp at hb1
  have hwM : w₀ - ∑ i ∈ s, h (x i) w₀ • x i ∈ M :=
    M.sub_mem hw₀ (M.sum_mem fun i hi =>
      hM.smul_mem _ (hM.int _ (hxM i hi) _ hw₀) _ (hxM i hi))
  generalize hwdef : w₀ - ∑ i ∈ s, h (x i) w₀ • x i = w at hwM
  have hxw : ∀ k, h (x k) w = h (x k) w₀ - if k ∈ s then h (x k) w₀ else 0 := by
    intro k

    rw [← hwdef, map_sub, map_sum]
    congr 1
    simp only [map_smul, smul_eq_mul, hx, mul_ite, mul_one, mul_zero]
    rw [Finset.sum_ite_eq]
  have hyw : h (α⁻¹ • x j) w = 1 := by
    rw [map_smulₛₗ, LinearMap.smul_apply, hxw, if_neg hj, sub_zero, ← hsym w₀ (x j), hα,
      starRingEnd_apply, smul_eq_mul, ← star_mul', inv_mul_cancel₀ hα0, star_one]
  have hyy' : h (α⁻¹ • x j) (α⁻¹ • x j) = star (α⁻¹ * b) * (α⁻¹ * b) := by
    rw [hyy, star_mul']
    calc star α⁻¹ * α⁻¹ = star α⁻¹ * α⁻¹ * (star b * b) := by rw [hb1, mul_one]
      _ = _ := by ring
  obtain ⟨c, hc, d, hd, hcd⟩ := exists_norm_one_of_pair hS hs hbS
    (mul_ne_zero (inv_ne_zero hα0) hb0) hyy' hyw (hM.int w hwM w hwM)
  refine ⟨c • w + d • α⁻¹ • x j, M.add_mem (hM.smul_mem _ hc _ hwM) (hM.smul_mem _ hd _ hy₀),
    hcd, fun i hi => ?_⟩
  have hij : i ≠ j := fun e => hj (e ▸ hi)
  rw [map_add (f := _), map_smul, map_smul, map_smul, hxw, if_pos hi, sub_self, hx, if_neg hij]
  simp

theorem exists_isom_frame (hS : IsHermSemilocal S) (hs : h.IsSymm) (hd : ∀ x, h x x = 0 → x = 0)
    (hM : IsSelfDualMod S h M) {n : ℕ} (e : Fin n → V)
    (he : ∀ i j, h (e i) (e j) = if i = j then 1 else 0) :
    ∃ g ∈ Formalism.HermitianLatticesTheory.isom h, ∀ i, g (e i) ∈ M := by
  have P : ∀ k, k ≤ n → ∃ g ∈ Formalism.HermitianLatticesTheory.isom h, ∀ i : Fin n, i.val < k → g (e i) ∈ M := by
    intro k
    induction k with
    | zero => intro _; exact ⟨1, one_mem _, fun i hi => absurd hi (Nat.not_lt_zero _)⟩
    | succ k ih =>
      intro hk
      obtain ⟨g, hg, hgM⟩ := ih (by omega)
      have hg' : ∀ u v, h (g u) (g v) = h u v := hg
      have hx : ∀ i i', h (g (e i)) (g (e i')) = if i = i' then 1 else 0 := fun i i' => by
        rw [hg']; exact he i i'
      obtain ⟨z, hzM, hzz, hzo⟩ := exists_next hS hs hM (fun i => g (e i)) hx
        (Finset.univ.filter (fun i : Fin n => i.val < k))
        (fun i hi => hgM i (Finset.mem_filter.mp hi).2) ⟨k, hk⟩ (by simp)
      obtain ⟨τ, hτ, hτj, hτfix⟩ := exists_isom_fix hs hd (x := g (e ⟨k, hk⟩)) (y := z)
        (by rw [hx, if_pos rfl]) hzz
      refine ⟨τ * g, mul_mem hτ hg, fun i hi => ?_⟩
      show τ (g (e i)) ∈ M
      rcases Nat.lt_succ_iff_lt_or_eq.mp hi with h1 | h1
      · rw [hτfix]
        · exact hgM i h1
        · rw [hx, if_neg]
          intro hc
          rw [← hc] at h1
          exact lt_irrefl _ h1
        · have := hzo i (Finset.mem_filter.mpr ⟨Finset.mem_univ _, h1⟩)
          rw [← hs.eq, this, map_zero]
      · have : i = ⟨k, hk⟩ := Fin.ext h1
        rw [this, hτj]
        exact hzM
  obtain ⟨g, hg, hgM⟩ := P n le_rfl
  exact ⟨g, hg, fun i => hgM i i.isLt⟩

end ReciprocityTheory.ChartRestriction.L3.WA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.HermitianGenusExtension.SemilocalHermitianLattices.ExistsIsomFrame =====
