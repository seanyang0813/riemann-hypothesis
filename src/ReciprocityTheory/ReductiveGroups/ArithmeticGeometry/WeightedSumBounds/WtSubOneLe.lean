module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.CardToMultisetEqDegree
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.EqZeroOfVecMulTmat
public import Mathlib.Algebra.Order.Star.Basic
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.TangentEqLcZero
public import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots
public import ReciprocityTheory.DualLattices.VEqZeroOfPowEqOne
public import Mathlib.Algebra.Field.GeomSum
public import Mathlib.RingTheory.PowerSeries.Expand
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.TypicalCurveStructureConstants
public import Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity
import Mathlib.Topology.Sheaves.Presheaf
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.LgCurvePcurve, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.CoeffLgPcurveTop, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.GeomSumRoot, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.WtSubOneLe

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.LgCurvePcurve =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.LgCurvePcurve", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.CardToMultisetEqDegree\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.EqZeroOfVecMulTmat\npublic import Mathlib.Algebra.Order.Star.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.TangentEqLcZero\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.Sh.PTb

open MvPowerSeries ReciprocityTheory.PGsh

noncomputable section

variable {C : Type} [Field C] {v : AddValuation C (WithTop ℝ)} {d : ℕ}

def ptx (G : LogFGL v d) (p : ℕ) (γ : Fin d → Fin d → PowerSeries C)
    (ga : Fin d → PowerSeries C) (n : ℕ) : Fin d → C :=
  Matrix.vecMul (G.lc p ga n - ∑ s : Fin n, ∑ b,
    (ptx G p γ ga s b) ^ (p ^ (n - s)) • G.lc p (γ b) (n - s)) (tmat γ)⁻¹
termination_by n
decreasing_by exact s.isLt

def ptw (G : LogFGL v d) (p : ℕ) (γ : Fin d → Fin d → PowerSeries C)
    (ga : Fin d → PowerSeries C) (n : ℕ) : Fin d → C :=
  G.lc p ga n - ∑ s ∈ Finset.range n, ∑ b,
    (ptx G p γ ga s b) ^ (p ^ (n - s)) • G.lc p (γ b) (n - s)

theorem ptx_eq (G : LogFGL v d) (p : ℕ) (γ : Fin d → Fin d → PowerSeries C)
    (ga : Fin d → PowerSeries C) (n : ℕ) :
    ptx G p γ ga n = Matrix.vecMul (ptw G p γ ga n) (tmat γ)⁻¹ := by
  rw [ptx, ptw, Finset.sum_range]

private theorem lgCurve_zero' (G : LogFGL v d) (a : Fin d) :
    G.lgCurve (fun _ => (0 : PowerSeries C)) a = 0 := by
  have h0 : HasSubst (fun _ : Fin d => (0 : PowerSeries C)) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (fun _ => by simp)
  ext j
  rw [map_zero]
  change MvPowerSeries.coeff (Finsupp.single () j) (subst _ (G.lg a)) = 0
  rw [MvPowerSeries.coeff_subst h0]
  apply finsum_eq_zero_of_forall_eq_zero
  intro e
  by_cases he : e = 0
  · subst he
    rw [coeff_zero_eq_constantCoeff_apply, G.lg_const a, zero_smul]
  · obtain ⟨s, hs⟩ : ∃ s, e s ≠ 0 := by
      by_contra hcon
      push Not at hcon
      exact he (Finsupp.ext hcon)
    rw [Finsupp.prod, Finset.prod_eq_zero (Finsupp.mem_support_iff.mpr hs) (by simp [hs]),
      map_zero, smul_zero]

private theorem lc_at_zero_eq_tangent (G : LogFGL v d) (p : ℕ) (ga : Fin d → PowerSeries C)
    (h0 : ∀ b, PowerSeries.constantCoeff (ga b) = 0) : G.lc p ga 0 = tangent ga := by
  funext a
  have hk : ∀ b, (PowerSeries.X : PowerSeries C) ^ 1 ∣ ga b - (fun _ => (0 : PowerSeries C)) b := by
    intro b
    show (PowerSeries.X : PowerSeries C) ^ 1 ∣ ga b - 0
    rw [pow_one, sub_zero]
    exact PowerSeries.X_dvd_iff.mpr (h0 b)
  have h1 := lgCurve_sub_dvd (β := fun _ => (0 : PowerSeries C)) G h0 (fun _ => by simp) 1 hk a
  simp only [lgCurve_zero', sub_zero] at h1
  have h2 := PowerSeries.X_pow_dvd_iff.mp h1 1 (by norm_num)
  rw [map_sub, sub_eq_zero] at h2
  show PowerSeries.coeff (p ^ 0) (G.lgCurve ga a) = PowerSeries.coeff 1 (ga a)
  rw [pow_zero, h2]

theorem ptx_rel (G : LogFGL v d) (p : ℕ) {γ : Fin d → Fin d → PowerSeries C}
    (hγ : ∀ a, IsCurve v (γ a)) (hdet : v (tmat γ).det = 0) (ga : Fin d → PowerSeries C)
    (n : ℕ) :
    G.lc p ga n = ∑ s ∈ Finset.range (n + 1), ∑ b,
      (ptx G p γ ga s b) ^ (p ^ (n - s)) • G.lc p (γ b) (n - s) := by
  have hlast : ∑ b, (ptx G p γ ga n b) ^ (p ^ (n - n)) • G.lc p (γ b) (n - n) =
      ptw G p γ ga n := by
    simp only [Nat.sub_self, pow_zero, pow_one]
    rw [Finset.sum_congr rfl (fun b _ => by rw [lc_at_zero_eq_tangent G p (γ b) (fun c => (hγ b c).1)]),
      sum_smul_tangent, ptx_eq, vecMul_inv_tmat hdet]
  rw [Finset.sum_range_succ, hlast, ptw]
  abel

def pcurve (G : LogFGL v d) (p : ℕ) (γ : Fin d → Fin d → PowerSeries C) (x : ℕ → Fin d → C) :
    ℕ → Fin d → PowerSeries C
  | 0 => 0
  | s + 1 => G.add (pcurve G p γ x s) (G.sumF fun b => expC (p ^ s) (rescaleCurve (x s b) (γ b)))

theorem isCurve_pcurve (G : LogFGL v d) {p : ℕ} (hp : p ≠ 0) {γ : Fin d → Fin d → PowerSeries C}
    (hγ : ∀ a, IsCurve v (γ a)) (x : ℕ → Fin d → C) :
    ∀ n, (∀ s < n, ∀ b, IsIntV v (x s b)) → IsCurve v (pcurve G p γ x n)
  | 0, _ => isCurve_zero
  | n + 1, hx => isCurve_add G (isCurve_pcurve G hp hγ x n fun s hs b => hx s (by omega) b)
      (isCurve_sumF G _ fun b => isCurve_expC (pow_ne_zero _ hp)
        (isCurve_rescale (hx n (by omega) b) (hγ b)))

end

end ReciprocityTheory.ChartRestriction.G.Sh.PTb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.LgCurvePcurve =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.CoeffLgPcurveTop =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.CoeffLgPcurveTop", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.LgCurvePcurve\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.TangentEqLcZero\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.Sh.PTb

open MvPowerSeries ReciprocityTheory.PGsh

noncomputable section

variable {C : Type} [Field C] {v : AddValuation C (WithTop ℝ)} {d : ℕ}

theorem coeff_lg_pcurve (G : LogFGL v d) {p : ℕ} (hp : p ≠ 0)
    {γ : Fin d → Fin d → PowerSeries C} (hγ : ∀ a, IsCurve v (γ a)) (x : ℕ → Fin d → C) (n : ℕ)
    (hx : ∀ s < n, ∀ b, IsIntV v (x s b)) (a : Fin d) (m : ℕ) :
    PowerSeries.coeff m (G.lgCurve (pcurve G p γ x n) a) = ∑ s ∈ Finset.range n, ∑ b,
      if p ^ s ∣ m then x s b ^ (m / p ^ s) * PowerSeries.coeff (m / p ^ s) (G.lgCurve (γ b) a)
      else 0 := by
  have hlog : G.lgCurve (pcurve G p γ x n) a =
      ∑ s ∈ Finset.range n, ∑ b, PowerSeries.expand (p ^ s) (pow_ne_zero s hp)
        (PowerSeries.rescale (x s b) (G.lgCurve (γ b) a)) := by
    induction n with
    | zero => simp [pcurve, lgCurve_zero]
    | succ n ih =>
      have hx' : ∀ s < n, ∀ b, IsIntV v (x s b) := fun s hs b => hx s (by omega) b
      have hrescale : ∀ b, IsCurve v (rescaleCurve (x n b) (γ b)) := fun b =>
        isCurve_rescale (hx n (Nat.lt_succ_self n) b) (hγ b)
      have hexpand : ∀ b, IsCurve v (expC (p ^ n) (rescaleCurve (x n b) (γ b))) := fun b =>
        isCurve_expC (pow_ne_zero n hp) (hrescale b)
      rw [pcurve, lgCurve_add G (fun b => (isCurve_pcurve G hp hγ x n hx' b).1)
        (fun b => (isCurve_sumF G _ hexpand b).1), ih hx', lgCurve_sumF G _ hexpand,
        Finset.sum_range_succ]
      congr 1
      refine Finset.sum_congr rfl fun b _ => ?_
      rw [lgCurve_expC G (pow_ne_zero n hp) (fun c => (hrescale b c).1),
        lgCurve_rescale G _ (fun c => (hγ b c).1)]

  rw [hlog, map_sum]
  apply Finset.sum_congr rfl
  intro s _

  rw [map_sum]
  apply Finset.sum_congr rfl
  intro b _
  rw [coeff_expand_rescale]

theorem lg_agree (G : LogFGL v d) {p : ℕ} (hp : p.Prime) {γ : Fin d → Fin d → PowerSeries C}
    (hγ : ∀ a, IsCurve v (γ a)) (hγt : ∀ b, G.IsPTypical p (γ b)) (hdet : v (tmat γ).det = 0)
    (ga : Fin d → PowerSeries C) (hga : G.IsPTypical p ga) (n : ℕ)
    (hx : ∀ s < n, ∀ b, IsIntV v (ptx G p γ ga s b)) :
    ∀ a, ∀ j < p ^ n, PowerSeries.coeff j (G.lgCurve ga a) =
      PowerSeries.coeff j (G.lgCurve (pcurve G p γ (ptx G p γ ga) n) a) := by
  intro a j hj
  rw [coeff_lg_pcurve G hp.ne_zero hγ _ n hx a j]
  by_cases hpow : ∃ m, j = p ^ m
  · obtain ⟨m, rfl⟩ := hpow
    have hmn : m < n := by
      by_contra h
      push_neg at h
      exact absurd hj (not_lt.mpr (Nat.pow_le_pow_right hp.pos h))
    have hrel := congrFun (ptx_rel G p hγ hdet ga m) a
    change G.lc p ga m a = _
    rw [hrel]
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
    rw [← Finset.sum_range_add_sum_Ico _ (show m + 1 ≤ n by omega)]
    have hzero : ∑ s ∈ Finset.Ico (m + 1) n, ∑ b, (if p ^ s ∣ p ^ m then
        ptx G p γ ga s b ^ (p ^ m / p ^ s) * PowerSeries.coeff (p ^ m / p ^ s) (G.lgCurve (γ b) a)
        else 0) = 0 := by
      apply Finset.sum_eq_zero
      intro s hs
      have hs' : m < s := by
        rw [Finset.mem_Ico] at hs
        omega
      apply Finset.sum_eq_zero
      intro b _
      rw [if_neg]
      intro hd
      have hle : s ≤ m := by
        first
        | exact (Nat.pow_dvd_pow_iff_le_right hp.one_lt).mp hd
      omega
    rw [hzero, add_zero]
    apply Finset.sum_congr rfl
    intro s hs
    have hsm : s ≤ m := Nat.lt_succ_iff.mp (Finset.mem_range.mp hs)
    apply Finset.sum_congr rfl
    intro b _
    rw [if_pos (pow_dvd_pow p hsm), Nat.pow_div hsm hp.pos]
    rfl
  · push_neg at hpow
    rw [hga a j hpow]
    symm
    apply Finset.sum_eq_zero
    intro s _
    apply Finset.sum_eq_zero
    intro b _
    split_ifs with hd
    · obtain ⟨k, hk⟩ := hd
      have hk' : j / p ^ s = k := by
        rw [hk, Nat.mul_div_cancel_left _ (pow_pos hp.pos s)]
      have hnp : ∀ m', k ≠ p ^ m' := by
        intro m' hm'
        apply hpow (s + m')
        rw [hk, hm', pow_add]
      rw [hk', hγt b a k hnp, mul_zero]
    · rfl

theorem coeff_lg_pcurve_top (G : LogFGL v d) {p : ℕ} (hp : p.Prime)
    {γ : Fin d → Fin d → PowerSeries C} (hγ : ∀ a, IsCurve v (γ a)) (x : ℕ → Fin d → C) (n : ℕ)
    (hx : ∀ s < n, ∀ b, IsIntV v (x s b)) (a : Fin d) :
    PowerSeries.coeff (p ^ n) (G.lgCurve (pcurve G p γ x n) a) =
      (∑ s ∈ Finset.range n, ∑ b, (x s b) ^ (p ^ (n - s)) • G.lc p (γ b) (n - s)) a := by
  rw [coeff_lg_pcurve G hp.ne_zero hγ x n hx a (p ^ n)]
  simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
  apply Finset.sum_congr rfl
  intro s hs
  have hsn : s ≤ n := (Finset.mem_range.mp hs).le
  apply Finset.sum_congr rfl
  intro b _
  rw [if_pos (pow_dvd_pow p hsn), Nat.pow_div hsn hp.pos]
  rfl

private theorem exists_subring_mem_iff_isIntV : ∃ S : Subring C, ∀ x, x ∈ S ↔ IsIntV v x :=
  ⟨{ carrier := {x | 0 ≤ v x}
     mul_mem' := fun {a b} ha hb => by
       simp only [Set.mem_setOf_eq, AddValuation.map_mul] at *
       exact add_nonneg ha hb
     one_mem' := by simp
     add_mem' := fun {a b} ha hb => le_trans (le_min ha hb) (AddValuation.map_add v a b)
     zero_mem' := by simp
     neg_mem' := fun {a} ha => by simpa [AddValuation.map_neg] using ha }, fun _ => Iff.rfl⟩

theorem ptx_int (G : LogFGL v d) {p : ℕ} (hp : p.Prime) {γ : Fin d → Fin d → PowerSeries C}
    (hγ : ∀ a, IsCurve v (γ a)) (hγt : ∀ b, G.IsPTypical p (γ b)) (hdet : v (tmat γ).det = 0)
    (ga : Fin d → PowerSeries C) (hgaC : IsCurve v ga) (hga : G.IsPTypical p ga) :
    ∀ n b, IsIntV v (ptx G p γ ga n b) := by
  obtain ⟨S, hS⟩ := exists_subring_mem_iff_isIntV (v := v)
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    intro b
    have hx : ∀ s < n, ∀ b, IsIntV v (ptx G p γ ga s b) := fun s hs b => ih s hs b
    have hagree := lg_agree G hp hγ hγt hdet ga hga n hx
    have hα : ∀ c, PowerSeries.constantCoeff (ga c) = 0 := fun c => (hgaC c).1
    have hpcC := isCurve_pcurve G hp.ne_zero hγ (ptx G p γ ga) n hx
    have hβ : ∀ c, PowerSeries.constantCoeff (pcurve G p γ (ptx G p γ ga) n c) = 0 :=
      fun c => (hpcC c).1
    have hw : ∀ c, IsIntV v (ptw G p γ ga n c) := by
      intro c
      have h1 := coeff_lgCurve_sub_eq G hα hβ (p ^ n) hagree c
      have h2 := coeff_lg_pcurve_top G hp hγ (ptx G p γ ga) n hx c
      have e : ptw G p γ ga n c =
          PowerSeries.coeff (p ^ n) (ga c - pcurve G p γ (ptx G p γ ga) n c) := by
        rw [← h1, map_sub, h2]
        simp only [ptw, Pi.sub_apply]
        rfl
      rw [e, ← hS, map_sub]
      exact S.sub_mem ((hS _).2 ((hgaC c).2 _)) ((hS _).2 ((hpcC c).2 _))
    rw [ptx_eq]
    exact isIntV_vecMul_inv hγ hdet hw b

private theorem lgCurve_const_zero (G : LogFGL v d) (a : Fin d) :
    G.lgCurve (fun _ => (0 : PowerSeries C)) a = 0 := by
  have h0 : HasSubst (fun _ : Fin d => (0 : PowerSeries C)) := by
    first
    | exact MvPowerSeries.hasSubst_of_constantCoeff_zero (fun _ => by simp)
  ext j
  rw [map_zero]
  change MvPowerSeries.coeff (Finsupp.single () j) (subst _ (G.lg a)) = 0
  rw [MvPowerSeries.coeff_subst h0]
  apply finsum_eq_zero_of_forall_eq_zero
  intro e
  by_cases he : e = 0
  · subst he
    rw [coeff_zero_eq_constantCoeff_apply, G.lg_const a, zero_smul]
  · obtain ⟨s, hs⟩ : ∃ s, e s ≠ 0 := by
      by_contra hcon
      push_neg at hcon
      exact he (Finsupp.ext hcon)
    rw [Finsupp.prod, Finset.prod_eq_zero (Finsupp.mem_support_iff.mpr hs) (by simp [hs]),
      map_zero, smul_zero]

private theorem lc_zero_eq_tangent_of_constantCoeff_eq_zero (G : LogFGL v d) (p : ℕ) (ga : Fin d → PowerSeries C)
    (h0 : ∀ b, PowerSeries.constantCoeff (ga b) = 0) : G.lc p ga 0 = tangent ga := by
  funext a
  have hk : ∀ b, (PowerSeries.X : PowerSeries C) ^ 1 ∣ ga b - (fun _ => (0 : PowerSeries C)) b := by
    intro b
    show (PowerSeries.X : PowerSeries C) ^ 1 ∣ ga b - 0
    rw [pow_one, sub_zero]
    exact PowerSeries.X_dvd_iff.mpr (h0 b)
  have h1 := lgCurve_sub_dvd (β := fun _ => (0 : PowerSeries C)) G h0 (fun _ => by simp) 1 hk a
  simp only [lgCurve_const_zero, sub_zero] at h1
  have h2 := PowerSeries.X_pow_dvd_iff.mp h1 1 (by norm_num)
  rw [map_sub, sub_eq_zero] at h2
  show PowerSeries.coeff (p ^ 0) (G.lgCurve ga a) = PowerSeries.coeff 1 (ga a)
  rw [pow_zero, h2]

theorem ptx_type {h : ℕ} (ty : Fin d → ZMod h) (G : LogFGL v d) {p : ℕ} (hp : p.Prime)
    {γ : Fin d → Fin d → PowerSeries C} (hγ : ∀ a, IsCurve v (γ a)) (hdet : v (tmat γ).det = 0)
    (hγty : ∀ b, G.IsOfType p ty (ty b) (γ b)) (ga : Fin d → PowerSeries C) (i : ZMod h)
    (hga : G.IsOfType p ty i ga) :
    ∀ n b, ptx G p γ ga n b ≠ 0 → ty b = i + n := by
  have ht : ∀ b c, ty c ≠ ty b → tangent (γ b) c = 0 := by
    intro b c hc
    have h0 := (hγty b).2 0 c (by simpa using hc)
    rwa [lc_zero_eq_tangent_of_constantCoeff_eq_zero G p (γ b) (fun c' => (hγ b c').1)] at h0
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    have hw : ∀ c, ty c ≠ i + n → Matrix.vecMul (ptx G p γ ga n) (tmat γ) c = 0 := by
      intro c hc
      rw [ptx_eq, vecMul_inv_tmat hdet]
      simp only [ptw, Pi.sub_apply, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
      rw [hga.2 n c hc, zero_sub, neg_eq_zero]
      apply Finset.sum_eq_zero
      intro s hs
      have hsn : s < n := Finset.mem_range.mp hs
      apply Finset.sum_eq_zero
      intro b _
      by_cases hx0 : ptx G p γ ga s b = 0
      · rw [hx0, zero_pow (pow_ne_zero _ hp.ne_zero), zero_mul]
      · have htb := ih s hsn b hx0
        have hlc : G.lc p (γ b) (n - s) c = 0 := by
          apply (hγty b).2 (n - s) c
          rw [htb, Nat.cast_sub hsn.le]
          intro h'
          apply hc
          rw [h']
          ring
        rw [hlc, mul_zero]
    intro b hb
    by_contra hne
    exact hb (vecMul_tmat_support ty hdet ht (ptx G p γ ga n) (i + n) hw b hne)

end

end ReciprocityTheory.ChartRestriction.G.Sh.PTb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.CoeffLgPcurveTop =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.GeomSumRoot =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.GeomSumRoot", "h": "module\n\npublic import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots\npublic import ReciprocityTheory.DualLattices.VEqZeroOfPowEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.CardToMultisetEqDegree\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.TangentEqLcZero\npublic import Mathlib.Algebra.Field.GeomSum\npublic import Mathlib.RingTheory.PowerSeries.Expand\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.Sh.PTb

open MvPowerSeries ReciprocityTheory.PGsh

noncomputable section

variable {C : Type} [Field C] {v : AddValuation C (WithTop ℝ)} {d : ℕ}

theorem geom_sum_root {p : ℕ} {ζ : C} (hζ : IsPrimitiveRoot ζ p) (m : ℕ) :
    ∑ j ∈ Finset.range p, (ζ ^ m) ^ j = if p ∣ m then (p : C) else 0 := by
  split_ifs with h
  · obtain ⟨k, rfl⟩ := h
    rw [pow_mul, hζ.pow_eq_one, one_pow]
    simp
  · have hne : ζ ^ m ≠ 1 := fun h1 => h (hζ.dvd_of_pow_eq_one m h1)
    rw [geom_sum_eq hne, pow_right_comm, hζ.pow_eq_one, one_pow, sub_self, zero_div]

theorem exists_average (G : LogFGL v d) {p : ℕ} (hp : p.Prime) {ζ : C}
    (hζ : IsPrimitiveRoot ζ p) {ga : Fin d → PowerSeries C} (hga : IsCurve v ga) :
    ∃ δ : Fin d → PowerSeries C, IsCurve v δ ∧ ∀ c j, PowerSeries.coeff j (G.lgCurve δ c) =
      (p : C) * PowerSeries.coeff (p * j) (G.lgCurve ga c) := by
  classical
  have hp0 : p ≠ 0 := hp.ne_zero
  have h0 : ∀ b, PowerSeries.constantCoeff (ga b) = 0 := fun b => (hga b).1
  have hζv : ∀ j : ℕ, IsIntV v (ζ ^ j) := fun j => by
    unfold IsIntV
    rw [v_eq_zero_of_pow_eq_one (v := v) hp0
      (by rw [← pow_mul, mul_comm, pow_mul, hζ.pow_eq_one, one_pow])]

  obtain ⟨g, hgdef⟩ : ∃ g : Fin p → Fin d → PowerSeries C,
      ∀ u, g u = rescaleCurve (ζ ^ (u : ℕ)) ga := ⟨fun u => rescaleCurve (ζ ^ (u : ℕ)) ga, fun u => rfl⟩
  have hg : ∀ u, IsCurve v (g u) := fun u => by
    rw [hgdef]
    exact isCurve_rescale (hζv u) hga
  obtain ⟨ε, hεdef⟩ : ∃ ε : Fin d → PowerSeries C, ε = G.sumF g := ⟨_, rfl⟩
  have hε : IsCurve v ε := by
    rw [hεdef]
    exact isCurve_sumF G g hg
  have hεc : ∀ b, PowerSeries.constantCoeff (ε b) = 0 := fun b => (hε b).1
  have hsum : ∀ m : ℕ, ∑ u : Fin p, (ζ ^ (u : ℕ)) ^ m = if p ∣ m then (p : C) else 0 := by
    intro m
    rw [← geom_sum_root hζ m, Fin.sum_univ_eq_sum_range (fun j => (ζ ^ j) ^ m) p]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [← pow_mul, ← pow_mul, mul_comm]
  have hlgε : ∀ c m, PowerSeries.coeff m (G.lgCurve ε c) =
      if p ∣ m then (p : C) * PowerSeries.coeff m (G.lgCurve ga c) else 0 := by
    intro c m

    rw [hεdef, lgCurve_sumF G g hg c, map_sum]
    simp only [hgdef, lgCurve_rescale G _ h0, PowerSeries.coeff_rescale]
    rw [← Finset.sum_mul, hsum m]
    split_ifs <;> simp

  have hinv : ∀ a, rescaleCurve ζ ε a = ε a := by
    have hζ1 : IsIntV v ζ := by simpa using hζv 1
    have hεζc : ∀ b, PowerSeries.constantCoeff (rescaleCurve ζ ε b) = 0 :=
      fun b => (isCurve_rescale hζ1 hε b).1
    intro a
    have hdvd : ∀ N, (PowerSeries.X : PowerSeries C) ^ N ∣ rescaleCurve ζ ε a - ε a := fun N =>
      dvd_of_lgCurve_low G hεζc hεc N (fun a' j _ => by
        rw [lgCurve_rescale G ζ hεc, PowerSeries.coeff_rescale, hlgε]
        split_ifs with h
        · obtain ⟨k, rfl⟩ := h
          rw [pow_mul, hζ.pow_eq_one, one_pow, one_mul]
        · rw [mul_zero]) a
    rw [← sub_eq_zero]
    ext m
    have := (PowerSeries.X_pow_dvd_iff.mp (hdvd (m + 1))) m (Nat.lt_succ_self m)
    simpa using this
  have hoff : ∀ a m, ¬ p ∣ m → PowerSeries.coeff m (ε a) = 0 := by
    intro a m hm
    have h1 := congrArg (PowerSeries.coeff m) (hinv a)
    simp only [rescaleCurve, PowerSeries.coeff_rescale] at h1
    have hne : ζ ^ m ≠ 1 := fun h => hm (hζ.dvd_of_pow_eq_one m h)
    have h2 : (ζ ^ m - 1) * PowerSeries.coeff m (ε a) = 0 := by
      rw [sub_mul, one_mul, h1, sub_self]
    exact (mul_eq_zero.mp h2).resolve_left (sub_ne_zero.mpr hne)

  obtain ⟨δ, hδdef⟩ : ∃ δ : Fin d → PowerSeries C,
      ∀ a, δ a = PowerSeries.mk fun j => PowerSeries.coeff (p * j) (ε a) :=
    ⟨fun a => PowerSeries.mk fun j => PowerSeries.coeff (p * j) (ε a), fun a => rfl⟩
  have hexpand : ∀ (f : PowerSeries C) (m : ℕ), PowerSeries.coeff m (PowerSeries.expand p hp0 f) =
      if p ∣ m then PowerSeries.coeff (m / p) f else 0 := by
    intro f m
    have h := coeff_expand_rescale p hp0 1 f m
    rw [PowerSeries.rescale_one, RingHom.id_apply] at h
    rw [h]
    split_ifs <;> simp
  have hexp : ∀ a, PowerSeries.expand p hp0 (δ a) = ε a := by
    intro a
    ext m
    rw [hexpand]
    split_ifs with h
    · rw [hδdef, PowerSeries.coeff_mk, Nat.mul_div_cancel' h]
    · exact (hoff a m h).symm
  have hδ : IsCurve v δ := fun a => by
    refine ⟨?_, fun j => ?_⟩
    · rw [← PowerSeries.coeff_zero_eq_constantCoeff_apply, hδdef, PowerSeries.coeff_mk, mul_zero,
        PowerSeries.coeff_zero_eq_constantCoeff_apply]
      exact hεc a
    · rw [hδdef, PowerSeries.coeff_mk]
      exact (hε a).2 (p * j)
  have hεδ : expC p δ = ε := funext fun a => by
    rw [expC_apply hp0]
    exact hexp a
  refine ⟨δ, hδ, fun c j => ?_⟩
  have h1 := lgCurve_expC G hp0 (fun b => (hδ b).1) c
  rw [hεδ] at h1
  have h2 := congrArg (PowerSeries.coeff (p * j)) h1
  rw [hlgε, if_pos (dvd_mul_right p j), hexpand, if_pos (dvd_mul_right p j),
    Nat.mul_div_cancel_left j hp.pos] at h2
  exact h2.symm

end

end ReciprocityTheory.ChartRestriction.G.Sh.PTb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.GeomSumRoot =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.WtSubOneLe =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.WtSubOneLe", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.TypicalCurveStructureConstants\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.CoeffLgPcurveTop\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.GeomSumRoot\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.TangentEqLcZero\npublic import Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.Sh

open MvPowerSeries ReciprocityTheory.PGsh ReciprocityTheory.ChartRestriction.G.Sh.PTb

noncomputable section

theorem pt6' : TypicalCurveRebasing := by
  unfold TypicalCurveRebasing
  intro C _ _ _ v p hp hv d m G γ x hc hx
  dsimp only
  have hcr : ∀ u, IsCurve v (rescaleCurve (x u) (γ u)) := fun u => isCurve_rescale (hx u) (hc u)
  have hγ' : IsCurve v (G.sumF fun u => rescaleCurve (x u) (γ u)) := isCurve_sumF G _ hcr
  have hlc : ∀ (k : ℕ) (a : Fin d),
      PowerSeries.coeff k (G.lgCurve (G.sumF fun u => rescaleCurve (x u) (γ u)) a) =
        ∑ u, x u ^ k * PowerSeries.coeff k (G.lgCurve (γ u) a) := by
    intro k a

    rw [lgCurve_sumF G _ hcr a, map_sum]
    refine Finset.sum_congr rfl fun u _ => ?_
    rw [lgCurve_rescale G (x u) (fun b => (hc u b).1) a, PowerSeries.coeff_rescale]
  have hL : ∀ n : ℕ, G.lc p (G.sumF fun u => rescaleCurve (x u) (γ u)) n =
      ∑ u, x u ^ p ^ n • G.lc p (γ u) n := by
    intro n
    funext a
    rw [Finset.sum_apply]
    simp only [Pi.smul_apply, smul_eq_mul, LogFGL.lc]
    exact hlc (p ^ n) a
  refine ⟨hγ', ?_, hL, ?_⟩
  · rw [tangent_eq_lc_zero G p (fun b => (hγ' b).1), hL 0]
    refine Finset.sum_congr rfl fun u _ => ?_
    rw [tangent_eq_lc_zero G p (fun b => (hc u b).1), pow_zero, pow_one]
  · intro hT
    unfold LogFGL.IsPTypical at hT ⊢
    intro a k hk
    rw [hlc k a]
    refine Finset.sum_eq_zero fun u _ => ?_
    rw [hT u a k hk, mul_zero]

theorem pt5' : TypicalCurveStructureConstants := by
  intro C _ _ _ v p hp hv d h ty G γ hB
  obtain ⟨hγ, hγty, hdet⟩ := hB
  have hdet' : v (tmat γ).det = 0 := hdet
  have : NeZero (p : C) := ⟨Nat.cast_ne_zero.2 hp.ne_zero⟩
  obtain ⟨ζ, hζ⟩ := HasEnoughRootsOfUnity.exists_primitiveRoot C p
  choose δ hδc hδlg using fun a => exists_average G hp hζ (hγ a)
  have hlcδ : ∀ a n, G.lc p (δ a) n = (p : C) • G.lc p (γ a) (n + 1) := by
    intro a n
    funext c
    simp only [LogFGL.lc, Pi.smul_apply, smul_eq_mul]
    rw [hδlg, pow_succ']
  have hδt : ∀ a, G.IsOfType p ty (ty a + 1) (δ a) := by
    intro a
    refine ⟨fun c j hj => ?_, fun n c hc => ?_⟩
    · rw [hδlg, (hγty a).1 c (p * j) (fun k hk => ?_), mul_zero]
      rcases k with _ | k
      · rw [pow_zero] at hk
        exact hp.one_lt.ne' (Nat.eq_one_of_mul_eq_one_right hk)
      · exact hj k (by rw [pow_succ'] at hk; exact Nat.eq_of_mul_eq_mul_left hp.pos hk)
    · rw [hlcδ]
      simp only [Pi.smul_apply, smul_eq_mul]
      rw [(hγty a).2 (n + 1) c (by intro e; apply hc; rw [e]; push_cast; ring), mul_zero]
  refine ⟨fun s b a => ptx G p γ (δ a) s b,
    fun s b a => ptx_int G hp hγ (fun b => (hγty b).1) hdet' (δ a) (hδc a) (hδt a).1 s b,
    fun s b a hne => ?_, fun a n => ?_⟩
  · rw [ptx_type ty G hp hγ hdet' hγty (δ a) _ (hδt a) s b hne]
    ring
  · rw [← hlcδ a n, ptx_rel G p hγ hdet' (δ a) n]
    refine (Finset.sum_range_reflect _ (n + 1)).symm.trans ?_
    refine Finset.sum_congr rfl fun m hm => ?_
    have hmn : m ≤ n := Nat.lt_succ_iff.1 (Finset.mem_range.1 hm)
    dsimp only
    rw [show n + 1 - 1 - m = n - m by omega, Nat.sub_sub_self hmn]

theorem wt_sub_one_le {r : ℝ} {y : WithTop ℝ} (h : (r : WithTop ℝ) ≤ 1 + y) :
    ((r - 1 : ℝ) : WithTop ℝ) ≤ y := by
  induction y using WithTop.recTopCoe with
  | top => exact le_top
  | coe a =>
    have h1 : ((1 : WithTop ℝ) + (a : WithTop ℝ)) = ((1 + a : ℝ) : WithTop ℝ) := by
      norm_cast
    rw [h1, WithTop.coe_le_coe] at h
    exact WithTop.coe_le_coe.mpr (by linarith)

private theorem le_valuation_finset_sum {C : Type} [Field C] (v : AddValuation C (WithTop ℝ))
    {ι : Type} (s : Finset ι) (f : ι → C) (g : WithTop ℝ) (h : ∀ i ∈ s, g ≤ v (f i)) :
    g ≤ v (∑ i ∈ s, f i) := by
  classical
  revert h
  refine Finset.induction_on s (fun _ => by simp) ?_
  intro i s hi ih h
  rw [Finset.sum_insert hi]
  exact le_trans (le_min (h i (Finset.mem_insert_self i s))
    (ih fun j hj => h j (Finset.mem_insert_of_mem hj))) (AddValuation.map_add v _ _)

theorem pt5v' : TypicalCurveValuationBounds := by
  unfold TypicalCurveValuationBounds
  intro C _ _ _ v p hp hv d h ty G γ hB a
  obtain ⟨sc, hsc, -, hrec⟩ := pt5' C v p hp hv d h ty G γ hB
  obtain ⟨hcur, -, hdet⟩ := hB
  have H1 : ∀ (n : ℕ) (b c : Fin d), (((-(n : ℝ)) : ℝ) : WithTop ℝ) ≤ v (G.lc p (γ b) n c) := by
    intro n
    refine Nat.strong_induction_on n ?_
    intro n ih b c
    rcases n with _ | n
    · rw [← tangent_eq_lc_zero G p (fun e => (hcur b e).1)]
      have h0 : (0 : WithTop ℝ) ≤ v (tangent (γ b) c) := (hcur b c).2 1
      have e0 : (((-((0 : ℕ) : ℝ)) : ℝ) : WithTop ℝ) = 0 := by simp
      rw [e0]
      exact h0
    · have hr := congrFun (hrec b n) c
      simp only [Pi.smul_apply, smul_eq_mul, Finset.sum_apply] at hr
      have hge : (((-(n : ℝ)) : ℝ) : WithTop ℝ) ≤ v ((p : C) * G.lc p (γ b) (n + 1) c) := by
        rw [hr]
        apply le_valuation_finset_sum
        intro m hm
        apply le_valuation_finset_sum
        intro e _
        rw [AddValuation.map_mul, AddValuation.map_pow]
        have hm' : m < n + 1 := Finset.mem_range.mp hm
        have h1 : (0 : WithTop ℝ) ≤ (p ^ m) • v (sc (n - m) e b) := nsmul_nonneg (hsc _ _ _) _
        have h2 := ih m hm' e c
        have h3 : (((-(n : ℝ)) : ℝ) : WithTop ℝ) ≤ (((-(m : ℝ)) : ℝ) : WithTop ℝ) := by
          apply WithTop.coe_le_coe.mpr
          have : (m : ℝ) ≤ n := by exact_mod_cast Nat.lt_succ_iff.mp hm'
          linarith
        calc (((-(n : ℝ)) : ℝ) : WithTop ℝ) = 0 + (((-(n : ℝ)) : ℝ) : WithTop ℝ) := (zero_add _).symm
          _ ≤ (p ^ m) • v (sc (n - m) e b) + v (G.lc p (γ e) m c) := add_le_add h1 (h3.trans h2)
      rw [AddValuation.map_mul, hv] at hge
      have := wt_sub_one_le hge
      convert this using 2
      push_cast
      ring
  refine ⟨fun n c => H1 n a c, ?_⟩
  intro h1 n c hn
  have hne : Matrix.det (Matrix.of fun a b => tangent (γ a) b) ≠ 0 := by
    intro h0
    rw [h0, AddValuation.map_zero] at hdet
    simp at hdet
  have hs0 : ∀ e, sc 0 e a = 0 := by
    have hr := hrec a 0
    simp only [zero_add] at hr
    rw [h1, smul_zero, Finset.sum_range_one] at hr
    simp only [tsub_zero, pow_zero, pow_one] at hr
    have hM : Matrix.vecMul (fun e => sc 0 e a) (Matrix.of fun e b => tangent (γ e) b) = 0 := by
      funext b
      have hb := congrFun hr b
      simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply] at hb
      simp only [Matrix.vecMul, dotProduct, Matrix.of_apply, Pi.zero_apply]
      refine Eq.trans ?_ hb.symm
      refine Finset.sum_congr rfl fun e _ => ?_
      rw [tangent_eq_lc_zero G p (fun f => (hcur e f).1)]
    intro e
    exact congrFun (Matrix.eq_zero_of_vecMul_eq_zero hne hM) e
  obtain _ | _ | k := n
  · omega
  · have h10 : G.lc p (γ a) (0 + 1) c = 0 := by simp [h1]
    rw [h10, AddValuation.map_zero]
    exact le_top
  · have hr := congrFun (hrec a (k + 1)) c
    simp only [Pi.smul_apply, smul_eq_mul, Finset.sum_apply] at hr
    have hge : (((-(k : ℝ)) : ℝ) : WithTop ℝ) ≤ v ((p : C) * G.lc p (γ a) (k + 1 + 1) c) := by
      rw [hr]
      apply le_valuation_finset_sum
      intro m hm
      apply le_valuation_finset_sum
      intro e _
      have hm' : m < k + 1 + 1 := Finset.mem_range.mp hm
      rcases Nat.lt_succ_iff_lt_or_eq.mp hm' with hlt | heq
      · rw [AddValuation.map_mul, AddValuation.map_pow]
        have h1' : (0 : WithTop ℝ) ≤ (p ^ m) • v (sc (k + 1 - m) e a) := nsmul_nonneg (hsc _ _ _) _
        have h2 := H1 m e c
        have h3 : (((-(k : ℝ)) : ℝ) : WithTop ℝ) ≤ (((-(m : ℝ)) : ℝ) : WithTop ℝ) := by
          apply WithTop.coe_le_coe.mpr
          have : (m : ℝ) ≤ k := by exact_mod_cast Nat.lt_succ_iff.mp hlt
          linarith
        calc (((-(k : ℝ)) : ℝ) : WithTop ℝ) = 0 + (((-(k : ℝ)) : ℝ) : WithTop ℝ) := (zero_add _).symm
          _ ≤ (p ^ m) • v (sc (k + 1 - m) e a) + v (G.lc p (γ e) m c) := add_le_add h1' (h3.trans h2)
      · subst heq
        rw [Nat.sub_self, hs0 e, zero_pow (pow_ne_zero _ hp.ne_zero), zero_mul, AddValuation.map_zero]
        exact le_top
    rw [AddValuation.map_mul, hv] at hge
    have := wt_sub_one_le hge
    convert this using 2
    push_cast
    ring

end

end ReciprocityTheory.ChartRestriction.G.Sh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.WeightedSumBounds.WtSubOneLe =====
