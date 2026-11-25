module

public import GroundTheory.AutomorphicForms.HarishChandraCentre.MemOfMemSupportToFinsupp
public import Mathlib.Algebra.MvPolynomial.Eval
public import GroundTheory.AutomorphicForms.HarishChandraCentre.MemCenterOfCommuteE
public import GroundTheory.AutomorphicForms.HarishChandraCentre.RepBase
public import Mathlib.RingTheory.Derivation.Lie
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.AutomorphicForms.HarishChandraCentre.Triangular, GroundTheory.AutomorphicForms.HarishChandraCentre.RhoOneEqZeroOfRhoZeroEqZero, GroundTheory.AutomorphicForms.HarishChandraCentre.ConstantCoeffRhoOneCanonMonomial, GroundTheory.AutomorphicForms.HarishChandraCentre.Projection

-- ===== clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.Triangular =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.HarishChandraCentre.Triangular", "h": "module\n\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.MemOfMemSupportToFinsupp\npublic import Mathlib.Algebra.MvPolynomial.Eval\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Automorphic.HarishChandra

attribute [local instance 100] LieRing.ofAssociativeRing

open MvPolynomial

variable {n : ℕ}

instance : DecidablePred (IsLower (n := n)) := fun a => inferInstanceAs (Decidable (a.2 < a.1))
instance : DecidablePred (IsUpper (n := n)) := fun a => inferInstanceAs (Decidable (a.1 < a.2))
instance : DecidablePred (IsDiag (n := n)) := fun a => inferInstanceAs (Decidable (a.1 = a.2))

def allL (n : ℕ) : List (Fin n × Fin n) :=
  (List.finRange n).flatMap fun i => (List.finRange n).map fun j => (i, j)

def lowL (n : ℕ) : List (Fin n × Fin n) := (allL n).filter fun a => decide (a.2 < a.1)

def diagL (n : ℕ) : List (Fin n × Fin n) := (allL n).filter fun a => decide (a.1 = a.2)

def upL (n : ℕ) : List (Fin n × Fin n) := (allL n).filter fun a => decide (a.1 < a.2)

theorem letters_eq_blocks : letters n = lowL n ++ diagL n ++ upL n := rfl

theorem mem_allL (a : Fin n × Fin n) : a ∈ allL n := by
  simp only [allL, List.mem_flatMap, List.mem_map, List.mem_finRange, true_and]
  exact ⟨a.1, a.2, rfl⟩

theorem mem_lowL {a : Fin n × Fin n} : a ∈ lowL n ↔ IsLower a := by
  simp [lowL, mem_allL, IsLower]

theorem mem_diagL {a : Fin n × Fin n} : a ∈ diagL n ↔ IsDiag a := by
  simp [diagL, mem_allL, IsDiag]

theorem mem_upL {a : Fin n × Fin n} : a ∈ upL n ↔ IsUpper a := by
  simp [upL, mem_allL, IsUpper]

theorem nodup_allL : (allL n).Nodup := by
  have := nodup_letters (n := n)
  rw [letters_eq_blocks] at this
  simp only [allL, List.nodup_flatMap]
  refine ⟨fun i _ => (List.nodup_finRange n).map fun j j' h => by simpa using h, ?_⟩
  refine (List.nodup_finRange n).pairwise_of_forall_ne ?_
  intro i _ i' _ hii'
  simp only [Function.onFun, List.disjoint_left, List.mem_map, List.mem_finRange, true_and]
  rintro _ ⟨j, rfl⟩ ⟨j', h⟩
  exact hii' (congrArg Prod.fst h).symm

def blockW (l : List (Fin n × Fin n)) (m : Fin n × Fin n →₀ ℕ) : List (Fin n × Fin n) :=
  l.flatMap fun a => List.replicate (m a) a

theorem expand_eq_blocks (m : Fin n × Fin n →₀ ℕ) :
    expand m = blockW (lowL n) m ++ blockW (diagL n) m ++ blockW (upL n) m := by
  simp [expand, letters_eq_blocks, blockW, List.flatMap_append]

theorem blockW_congr {l : List (Fin n × Fin n)} {m m' : Fin n × Fin n →₀ ℕ}
    (h : ∀ a ∈ l, m a = m' a) : blockW l m = blockW l m' := by
  unfold blockW
  induction l with
  | nil => rfl
  | cons a l ih =>
    rw [List.flatMap_cons, List.flatMap_cons, h a (List.mem_cons_self ..),
      ih fun b hb => h b (List.mem_cons_of_mem _ hb)]

theorem blockW_eq_nil {l : List (Fin n × Fin n)} {m : Fin n × Fin n →₀ ℕ}
    (h : ∀ a ∈ l, m a = 0) : blockW l m = [] := by
  rw [blockW_congr (m' := 0) (by simpa using h)]
  simp [blockW]

theorem mem_of_mem_blockW {l : List (Fin n × Fin n)} {m : Fin n × Fin n →₀ ℕ}
    {a : Fin n × Fin n} (ha : a ∈ blockW l m) : a ∈ l ∧ m a ≠ 0 := by
  simp only [blockW, List.mem_flatMap, List.mem_replicate] at ha
  obtain ⟨b, hb, hne, rfl⟩ := ha
  exact ⟨hb, hne⟩

theorem blockW_ne_nil {l : List (Fin n × Fin n)} {m : Fin n × Fin n →₀ ℕ} {a : Fin n × Fin n}
    (ha : a ∈ l) (hm : m a ≠ 0) : blockW l m ≠ [] := by
  intro h
  have : a ∈ blockW l m := by
    simp only [blockW, List.mem_flatMap, List.mem_replicate]
    exact ⟨a, ha, hm, rfl⟩
  rw [h] at this
  simp at this

theorem canon_eq_blocks (m : Fin n × Fin n →₀ ℕ) :
    canon m = word (blockW (lowL n) m) * word (blockW (diagL n) m) * word (blockW (upL n) m) := by
  rw [canon, expand_eq_blocks, word_append, word_append]

def HasUpper (m : Fin n × Fin n →₀ ℕ) : Prop := ∃ a, IsUpper a ∧ m a ≠ 0

def HasLower (m : Fin n × Fin n →₀ ℕ) : Prop := ∃ a, IsLower a ∧ m a ≠ 0

def IsDiagExp (m : Fin n × Fin n →₀ ℕ) : Prop := ∀ a, m a ≠ 0 → IsDiag a

theorem isDiagExp_or (m : Fin n × Fin n →₀ ℕ) : IsDiagExp m ∨ HasUpper m ∨ HasLower m := by
  by_contra h
  simp only [not_or, IsDiagExp, HasUpper, HasLower, not_forall, not_exists, not_and] at h
  obtain ⟨⟨a, ha, hd⟩, hu, hl⟩ := h
  rcases lt_trichotomy a.1 a.2 with h | h | h
  · exact hu a h ha
  · exact hd h
  · exact hl a h ha

theorem not_isDiagExp_of_hasUpper {m : Fin n × Fin n →₀ ℕ} (h : HasUpper m) : ¬ IsDiagExp m := by
  obtain ⟨a, ha, hm⟩ := h
  intro hd
  have := hd a hm
  simp only [IsUpper, IsDiag] at ha this
  rw [this] at ha; exact lt_irrefl _ ha

noncomputable def cartanSet (n : ℕ) : Set (U n) := Set.range fun i : Fin n => e (i, i)

theorem e_diag_commute (i j : Fin n) : e (i, i) * e (j, j) = e (j, j) * e (i, i) := by
  have h := e_mul_sub_mul (i, i) (j, j)
  by_cases hij : i = j
  · subst hij; rfl
  · simp only [hij, Ne.symm hij, if_false, sub_self] at h
    exact sub_eq_zero.1 h

theorem cartanSet_commute : ∀ a ∈ cartanSet n, ∀ b ∈ cartanSet n, a * b = b * a := by
  rintro _ ⟨i, rfl⟩ _ ⟨j, rfl⟩
  exact e_diag_commute i j

noncomputable def cartanSub (n : ℕ) : Subalgebra ℂ (U n) := Algebra.adjoin ℂ (cartanSet n)

instance cartanSub.instIsMulCommutative : IsMulCommutative (cartanSub n) :=
  Algebra.isMulCommutative_adjoin ℂ (by
    intro a ha b hb _
    exact cartanSet_commute a ha b hb)

open scoped IsMulCommutative

noncomputable def hcEmb : MvPolynomial (Fin n) ℂ →ₐ[ℂ] U n :=
  (cartanSub n).val.comp (aeval fun i => (⟨e (i, i), Algebra.subset_adjoin (s := cartanSet n) (Set.mem_range_self i)⟩ : cartanSub n))

@[simp] theorem hcEmb_X (i : Fin n) : hcEmb (X i) = e (n := n) (i, i) := by
  simp [hcEmb]

theorem hcEmb_mem_cartanSub (p : MvPolynomial (Fin n) ℂ) : hcEmb p ∈ cartanSub n := by
  simp only [hcEmb, AlgHom.comp_apply]
  exact SetLike.coe_mem _

noncomputable def diagExp (m : Fin n × Fin n →₀ ℕ) : Fin n →₀ ℕ :=
  Finsupp.equivFunOnFinite.symm fun i => m (i, i)

@[simp] theorem diagExp_apply (m : Fin n × Fin n →₀ ℕ) (i : Fin n) : diagExp m i = m (i, i) := rfl

theorem word_blockW_diagL (m : Fin n × Fin n →₀ ℕ) :
    word (blockW (diagL n) m) = hcEmb (monomial (diagExp m) 1) := by
  classical
  let g : Fin n × Fin n → cartanSub n := fun a =>
    if h : a.1 = a.2 then ⟨e (a.1, a.1), Algebra.subset_adjoin (s := cartanSet n) (Set.mem_range_self a.1)⟩ ^ m a else 1
  have hg : ∀ a ∈ diagL n, ((g a : cartanSub n) : U n) = e a ^ m a := by
    intro a ha
    have h : a.1 = a.2 := mem_diagL.1 ha
    simp only [g, dif_pos h, SubmonoidClass.coe_pow]
    congr 2
    exact Prod.ext rfl h
  have hnodup : (diagL n).Nodup := nodup_allL.filter _
  have hfin : (diagL n).toFinset = Finset.univ.filter fun a : Fin n × Fin n => a.1 = a.2 := by
    ext a; simp [mem_diagL, IsDiag]
  have h1 : word (blockW (diagL n) m) = (((diagL n).map g).prod : cartanSub n) := by
    rw [blockW, word_flatMap_replicate, SubmonoidClass.coe_list_prod, List.map_map]
    exact congrArg List.prod (List.map_congr_left fun a ha => (hg a ha).symm)
  have h2 : ((diagL n).map g).prod = ∏ i : Fin n, g (i, i) := by
    refine (List.prod_toFinset g hnodup).symm.trans ?_
    rw [hfin, Finset.prod_filter, Fintype.prod_prod_type]
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [Finset.prod_eq_single i (fun j _ hj => by simp [Ne.symm hj]) (by simp)]
    simp [g]
  rw [h1, h2, hcEmb, AlgHom.comp_apply, aeval_monomial, map_one, one_mul,
    Finsupp.prod_fintype _ _ (by simp)]
  simp only [Subalgebra.coe_val, diagExp_apply, g]
  rfl

theorem canon_eq_triangular (m : Fin n × Fin n →₀ ℕ) :
    canon m = word (blockW (lowL n) m) * hcEmb (monomial (diagExp m) 1) *
      word (blockW (upL n) m) := by
  rw [canon_eq_blocks, word_blockW_diagL]

def nPlusU (n : ℕ) : Submodule ℂ (U n) :=
  Submodule.span ℂ {x | ∃ (u : U n) (a : Fin n × Fin n), IsUpper a ∧ u * e a = x}

theorem mul_mem_nPlusU (v : U n) {x : U n} (hx : x ∈ nPlusU n) : v * x ∈ nPlusU n := by
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨u, a, ha, rfl⟩ := hx
    exact Submodule.subset_span ⟨v * u, a, ha, mul_assoc _ _ _⟩
  | zero => simp
  | add x y _ _ hx hy => rw [mul_add]; exact Submodule.add_mem _ hx hy
  | smul r x _ hx => rw [mul_smul_comm]; exact Submodule.smul_mem _ r hx

theorem canon_mem_nPlusU {m : Fin n × Fin n →₀ ℕ} (h : HasUpper m) : canon m ∈ nPlusU n := by
  obtain ⟨a, ha, hm⟩ := h
  have hne := blockW_ne_nil (mem_upL.2 ha) hm
  rw [canon_eq_blocks, ← List.dropLast_append_getLast hne, word_append, word_singleton, ← mul_assoc]
  refine Submodule.subset_span ⟨_, _, ?_, rfl⟩
  exact mem_upL.1 (mem_of_mem_blockW (List.getLast_mem hne)).1

noncomputable def notUpper (m : Fin n × Fin n →₀ ℕ) : Fin n × Fin n →₀ ℕ :=
  m.filter fun a => ¬ IsUpper a

theorem isUpper_of_mem_support {P : Fin n × Fin n → Prop} {m : Fin n × Fin n →₀ ℕ}
    (hm : ∀ a ∈ m.support, P a) {a : Fin n × Fin n} (ha : ¬ P a) : m a = 0 := by
  by_contra h
  exact ha (hm a (Finsupp.mem_support_iff.2 h))

theorem not_upper_of_lower {a : Fin n × Fin n} (h : IsLower a) : ¬ IsUpper a := by
  simp only [IsLower, IsUpper] at *; exact not_lt.2 h.le

theorem not_upper_of_diag {a : Fin n × Fin n} (h : IsDiag a) : ¬ IsUpper a := by
  simp only [IsDiag, IsUpper] at *; rw [h]; exact lt_irrefl _

theorem not_lower_of_upper {a : Fin n × Fin n} (h : IsUpper a) : ¬ IsLower a := by
  simp only [IsLower, IsUpper] at *; exact not_lt.2 h.le

theorem not_lower_of_diag {a : Fin n × Fin n} (h : IsDiag a) : ¬ IsLower a := by
  simp only [IsDiag, IsLower] at *; rw [h]; exact lt_irrefl _

theorem canon_notUpper_add {m m' : Fin n × Fin n →₀ ℕ} (hm' : ∀ a ∈ m'.support, IsUpper a) :
    word (blockW (lowL n) m) * word (blockW (diagL n) m) * canon m' = canon (notUpper m + m') := by
  have hlow : ∀ a ∈ lowL n, m' a = 0 := fun a ha =>
    isUpper_of_mem_support hm' (not_upper_of_lower (mem_lowL.1 ha))
  have hdiag : ∀ a ∈ diagL n, m' a = 0 := fun a ha =>
    isUpper_of_mem_support hm' (not_upper_of_diag (mem_diagL.1 ha))
  rw [canon_eq_blocks m', blockW_eq_nil hlow, blockW_eq_nil hdiag, canon_eq_blocks (notUpper m + m')]
  simp only [word_nil, one_mul]
  congr 2
  · refine congrArg word (blockW_congr fun a ha => ?_)
    have h := mem_lowL.1 ha
    simp [notUpper, not_upper_of_lower h, hlow a ha]
  · refine congrArg word (blockW_congr fun a ha => ?_)
    have h := mem_diagL.1 ha
    simp [notUpper, not_upper_of_diag h, hdiag a ha]
  · refine blockW_congr fun a ha => ?_
    have h := mem_upL.1 ha
    simp [notUpper, h]

theorem hasUpper_notUpper_add {m m' : Fin n × Fin n →₀ ℕ} (hm' : ∀ a ∈ m'.support, IsUpper a)
    (hdeg : 1 ≤ m'.degree) : HasUpper (notUpper m + m') := by
  have : m' ≠ 0 := by rintro rfl; simp at hdeg
  obtain ⟨a, ha⟩ := Finsupp.ne_iff.1 this
  refine ⟨a, hm' a (Finsupp.mem_support_iff.2 ha), ?_⟩
  simp only [Finsupp.add_apply]
  exact fun h => ha (by simp at ha ⊢; omega)

def spanUpper (n : ℕ) : Submodule ℂ (U n) :=
  Submodule.span ℂ {x | ∃ m : Fin n × Fin n →₀ ℕ, HasUpper m ∧ canon m = x}

theorem canon_mul_e_mem_spanUpper (m : Fin n × Fin n →₀ ℕ) {a : Fin n × Fin n} (ha : IsUpper a) :
    canon m * e a ∈ spanUpper n := by
  have hw : ∀ b ∈ blockW (upL n) m ++ [a], IsUpper b := by
    intro b hb
    rcases List.mem_append.1 hb with hb | hb
    · exact mem_upL.1 (mem_of_mem_blockW hb).1
    · rw [List.mem_singleton.1 hb]; exact ha
  have hspan := word_mem_canonSpan closed_upper _ hw
  rw [List.length_append, List.length_singleton, show min 1 ((blockW (upL n) m).length + 1) = 1 by
    omega] at hspan
  have heq : canon m * e a = word (blockW (lowL n) m) * word (blockW (diagL n) m) *
      word (blockW (upL n) m ++ [a]) := by
    rw [canon_eq_blocks, word_append, word_singleton, mul_assoc]
  rw [heq]
  have : ∀ y ∈ canonSpan IsUpper 1 ((blockW (upL n) m).length + 1),
      word (blockW (lowL n) m) * word (blockW (diagL n) m) * y ∈ spanUpper n := by
    intro y hy
    induction hy using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨m', hm', h1, -, rfl⟩ := hx
      rw [canon_notUpper_add hm']
      exact Submodule.subset_span ⟨_, hasUpper_notUpper_add hm' h1, rfl⟩
    | zero => simp
    | add x y _ _ hx hy => rw [mul_add]; exact Submodule.add_mem _ hx hy
    | smul r x _ hx => rw [mul_smul_comm]; exact Submodule.smul_mem _ r hx
  exact this _ hspan

theorem nPlusU_le_spanUpper : nPlusU n ≤ spanUpper n := by
  refine Submodule.span_le.2 ?_
  rintro _ ⟨u, a, ha, rfl⟩
  have hu : u ∈ Submodule.span ℂ (Set.range (canon (n := n))) := by
    rw [span_canon_eq_top]; trivial
  induction hu using Submodule.span_induction with
  | mem x hx => obtain ⟨m, rfl⟩ := hx; exact canon_mul_e_mem_spanUpper m ha
  | zero => simp
  | add x y _ _ hx hy => rw [add_mul]; exact Submodule.add_mem _ hx hy
  | smul r x _ hx => rw [smul_mul_assoc]; exact Submodule.smul_mem _ r hx

end GroundTheory.Automorphic.HarishChandra
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.Triangular =====

-- ===== clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.RhoOneEqZeroOfRhoZeroEqZero =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.HarishChandraCentre.RhoOneEqZeroOfRhoZeroEqZero", "h": "module\n\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.MemCenterOfCommuteE\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.RepBase\npublic import Mathlib.RingTheory.Derivation.Lie\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Automorphic.HarishChandra

attribute [local instance 100] LieRing.ofAssociativeRing

open MvPolynomial

variable {n : ℕ}

noncomputable def rhoDeriv (c : Matrix (Fin n) (Fin n) ℂ) (M : gl n) :
    Derivation ℂ (Poly n) (Poly n) :=
  mkDerivation ℂ fun a => ∑ i, C (M i a.1) * (X (i, a.2) + C (c i a.2))

theorem rhoDeriv_X (c : Matrix (Fin n) (Fin n) ℂ) (M : gl n) (a : Fin n × Fin n) :
    rhoDeriv c M (X a) = ∑ i, C (M i a.1) * (X (i, a.2) + C (c i a.2)) :=
  mkDerivation_X ℂ _ a

theorem rhoDeriv_add (c : Matrix (Fin n) (Fin n) ℂ) (M N : gl n) :
    rhoDeriv c (M + N) = rhoDeriv c M + rhoDeriv c N := by
  apply derivation_ext
  intro a
  simp only [rhoDeriv_X, Derivation.add_apply, Matrix.add_apply, map_add (f := _), add_mul,
    Finset.sum_add_distrib]

theorem rhoDeriv_smul (c : Matrix (Fin n) (Fin n) ℂ) (r : ℂ) (M : gl n) :
    rhoDeriv c (r • M) = r • rhoDeriv c M := by
  apply derivation_ext
  intro a
  simp only [rhoDeriv_X, Derivation.smul_apply, Matrix.smul_apply, smul_eq_mul, map_mul,
    Finset.smul_sum, smul_eq_C_mul, mul_assoc]

theorem rhoDeriv_rhoDeriv_X (c : Matrix (Fin n) (Fin n) ℂ) (P Q : gl n) (a : Fin n × Fin n) :
    rhoDeriv c P (rhoDeriv c Q (X a)) =
      ∑ k, C ((P * Q) k a.1) * (X (k, a.2) + C (c k a.2)) := by

  rw [rhoDeriv_X, map_sum]

  simp only [Derivation.leibniz, Derivation.map_add, derivation_C, add_zero,
  smul_eq_mul, mul_zero, rhoDeriv_X, Matrix.mul_apply, map_sum, Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun i _ => ?_
  simp only [map_mul]
  ring

theorem rhoDeriv_lie (c : Matrix (Fin n) (Fin n) ℂ) (M N : gl n) :
    rhoDeriv c ⁅M, N⁆ = ⁅rhoDeriv c M, rhoDeriv c N⁆ := by
  apply derivation_ext
  intro a
  rw [Derivation.commutator_apply, rhoDeriv_rhoDeriv_X, rhoDeriv_rhoDeriv_X, rhoDeriv_X,
    LieRing.of_associative_ring_bracket]
  simp only [Matrix.sub_apply, map_sub, sub_mul, Finset.sum_sub_distrib]

noncomputable def rhoLie (c : Matrix (Fin n) (Fin n) ℂ) : gl n →ₗ⁅ℂ⁆ Module.End ℂ (Poly n) where
  toFun M := (rhoDeriv c M : Poly n →ₗ[ℂ] Poly n)
  map_add' M N := by rw [rhoDeriv_add]; rfl
  map_smul' r M := by rw [rhoDeriv_smul]; rfl
  map_lie' {M N} := by
    rw [rhoDeriv_lie, Derivation.commutator_coe_linear_map]

noncomputable def rho (c : Matrix (Fin n) (Fin n) ℂ) : U n →ₐ[ℂ] Module.End ℂ (Poly n) :=
  UniversalEnvelopingAlgebra.lift ℂ (rhoLie c)

theorem rho_ι_apply (c : Matrix (Fin n) (Fin n) ℂ) (M : gl n) (f : Poly n) :
    rho c (UniversalEnvelopingAlgebra.ι ℂ M) f = rhoDeriv c M f := by
  simp [rho, rhoLie]

theorem rho_e_apply (c : Matrix (Fin n) (Fin n) ℂ) (a : Fin n × Fin n) (f : Poly n) :
    rho c (e a) f = rhoDeriv c (E a) f :=
  rho_ι_apply c (E a) f

theorem rhoDeriv_E_X (c : Matrix (Fin n) (Fin n) ℂ) (i j a b : Fin n) :
    rhoDeriv c (E (i, j)) (X (a, b)) = if a = j then X (i, b) + C (c i b) else 0 := by
  rw [rhoDeriv_X, Finset.sum_eq_single i]
  · by_cases h : a = j
    · subst h; simp [E]
    · simp [E, Ne.symm h, h]
  · intro k _ hk
    simp [E, Ne.symm hk]
  · simp

noncomputable def rowDeriv (i j : Fin n) : Derivation ℂ (Poly n) (Poly n) :=
  mkDerivation ℂ fun a => if a.1 = j then X (i, a.2) else 0

theorem rowDeriv_apply (i j : Fin n) (f : Poly n) : rowDeriv i j f = rowOp i j f := by
  induction f using MvPolynomial.induction_on with
  | C r => simp [rowDeriv, rowOp_apply, derivation_C]
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), hp, hq]
  | mul_X p a hp =>
    rw [Derivation.leibniz, hp, rowOp_apply, rowOp_apply, smul_eq_mul, smul_eq_mul]
    have h1 : rowDeriv i j (X a) = ∑ k, X (i, k) * pderiv (j, k) (X a) := by
      obtain ⟨a1, a2⟩ := a
      simp only [rowDeriv, mkDerivation_X, pderiv_X, Pi.single_apply, Prod.mk.injEq]
      rw [Finset.sum_eq_single a2]
      · by_cases h : a1 = j <;> simp [h]
      · intro k _ hk; simp [Ne.symm hk]
      · simp
    rw [h1]
    simp only [Derivation.leibniz, smul_eq_mul, mul_add, Finset.sum_add_distrib, Finset.mul_sum]
    congr 1 <;> refine Finset.sum_congr rfl fun k _ => by ring

theorem rhoDeriv_zero_E (i j : Fin n) : rhoDeriv 0 (E (i, j)) = rowDeriv i j := by
  apply derivation_ext
  rintro ⟨a, b⟩
  rw [rhoDeriv_E_X]
  simp [rowDeriv, mkDerivation_X]

theorem rho_zero_e (i j : Fin n) : rho 0 (e (i, j)) = rowOp i j := by
  refine LinearMap.ext fun f => ?_
  rw [rho_e_apply, rhoDeriv_zero_E, rowDeriv_apply]

theorem rho_one_e_apply (i j : Fin n) (f : Poly n) :
    rho 1 (e (i, j)) f = pderiv (j, i) f + rowOp i j f := by
  rw [rho_e_apply, ← rowDeriv_apply, ← Derivation.add_apply]
  congr 1
  apply derivation_ext
  rintro ⟨a, b⟩
  rw [rhoDeriv_E_X, Derivation.add_apply, pderiv_X]
  simp only [rowDeriv, mkDerivation_X, Matrix.one_apply, Pi.single_apply, Prod.mk.injEq]
  by_cases h : a = j
  · subst h
    by_cases h' : b = i
    · subst h'; simp [add_comm]
    · simp [h'] <;> exact fun hh => h' hh.symm
  · simp [h]

noncomputable def shift : Poly n ≃ₐ[ℂ] Poly n :=
  AlgEquiv.ofAlgHom (aeval fun a => X a + C (if a.1 = a.2 then 1 else 0))
    (aeval fun a => X a - C (if a.1 = a.2 then 1 else 0))
    (by ext a : 1; simp) (by ext a : 1; simp)

theorem shift_X (a : Fin n × Fin n) : shift (X a : Poly n) = X a + C (if a.1 = a.2 then 1 else 0) := by
  simp [shift]

theorem shift_C (r : ℂ) : shift (C r : Poly n) = C r :=
  (shift : Poly n ≃ₐ[ℂ] Poly n).commutes r

theorem rhoDeriv_one_shift (M : gl n) (f : Poly n) :
    rhoDeriv 1 M (shift f) = shift (rhoDeriv 0 M f) := by
  induction f using MvPolynomial.induction_on with
  | C r =>
    have : shift (C r : Poly n) = C r := (shift : Poly n ≃ₐ[ℂ] Poly n).commutes r
    rw [this, derivation_C, derivation_C, map_zero]
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), hp, hq, map_add (f := _), map_add (f := _)]
  | mul_X p a hp =>
    rw [map_mul, Derivation.leibniz, Derivation.leibniz, hp, map_add (f := _), smul_eq_mul, smul_eq_mul,
      smul_eq_mul, smul_eq_mul, map_mul, map_mul]
    congr 2

    rw [shift_X, Derivation.map_add, derivation_C, add_zero, rhoDeriv_X, rhoDeriv_X, map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    simp [shift_X, shift_C, Matrix.one_apply]

theorem rho_one_shift (u : U n) (f : Poly n) : rho 1 u (shift f) = shift (rho 0 u f) := by
  induction u using U.induction generalizing f with
  | halg r => simp [AlgHom.commutes, Module.algebraMap_end_apply]
  | hι M => rw [rho_ι_apply, rho_ι_apply, rhoDeriv_one_shift]
  | hmul a b ha hb => rw [map_mul, map_mul, Module.End.mul_apply, Module.End.mul_apply, hb, ha]
  | hadd a b ha hb => rw [map_add (f := _), map_add (f := _), LinearMap.add_apply, LinearMap.add_apply, ha, hb,
      map_add]

theorem rho_one_eq_zero_of_rho_zero_eq_zero (u : U n) (h : rho 0 u = 0) : rho 1 u = 0 := by
  refine LinearMap.ext fun f => ?_
  obtain ⟨g, rfl⟩ := (shift : Poly n ≃ₐ[ℂ] Poly n).surjective f
  rw [rho_one_shift, h, LinearMap.zero_apply, map_zero, LinearMap.zero_apply]

def geDeg (t : ℕ) : Submodule ℂ (Poly n) where
  carrier := {f | ∀ s : Fin n × Fin n →₀ ℕ, s.degree < t → AddMonoidAlgebra.coeff f s = 0}
  add_mem' {f g} hf hg s hs := by rw [MvPolynomial.coeff_add, hf s hs, hg s hs, add_zero]
  zero_mem' s _ := by simp
  smul_mem' r f hf s hs := by rw [MvPolynomial.coeff_smul, hf s hs, smul_zero]

theorem geDeg_anti {t t' : ℕ} (h : t' ≤ t) : (geDeg t : Submodule ℂ (Poly n)) ≤ geDeg t' :=
  fun _ hf s hs => hf s (lt_of_lt_of_le hs h)

theorem monomial_mem_geDeg {t : ℕ} (s : Fin n × Fin n →₀ ℕ) (c : ℂ) (h : t ≤ s.degree) :
    (monomial s c : Poly n) ∈ geDeg t := by
  intro s' hs'
  rw [coeff_monomial, if_neg]
  rintro rfl
  omega

theorem constantCoeff_eq_zero_of_mem_geDeg {f : Poly n} (hf : f ∈ geDeg 1) :
    constantCoeff f = 0 := by
  have h0 : constantCoeff f = AddMonoidAlgebra.coeff f 0 := by rw [constantCoeff_eq]
  rw [h0]
  exact hf 0 (by simp)

theorem mem_geDeg_of_isHomogeneous {f : Poly n} {d : ℕ} (hf : f.IsHomogeneous d) :
    f ∈ geDeg d := by
  intro s hs
  by_contra h
  have h2 : s.degree = d := by rw [Finsupp.degree_eq_weight_one]; exact hf h
  omega

theorem map_mem_of_monomial (L : Poly n →ₗ[ℂ] Poly n) (P : Submodule ℂ (Poly n))
    (Q : (Fin n × Fin n →₀ ℕ) → Prop) {f : Poly n} (hf : ∀ s, AddMonoidAlgebra.coeff f s ≠ 0 → Q s)
    (h : ∀ s (c : ℂ), Q s → L (monomial s c) ∈ P) : L f ∈ P := by

  rw [f.as_sum, map_sum]
  exact Submodule.sum_mem _ fun s hs => h s _ (hf s (mem_support_iff.1 hs))

theorem degree_sub_single {s : Fin n × Fin n →₀ ℕ} {a : Fin n × Fin n} (h : s a ≠ 0) :
    (s - Finsupp.single a 1).degree + 1 = s.degree := by
  have hle : Finsupp.single a 1 ≤ s := by
    rw [Finsupp.single_le_iff]; omega
  conv_rhs => rw [← tsub_add_cancel_of_le hle]
  rw [map_add (f := _), Finsupp.degree_single]

theorem pderiv_monomial_mem_geDeg {t : ℕ} (a : Fin n × Fin n) (s : Fin n × Fin n →₀ ℕ) (c : ℂ)
    (h : t ≤ s.degree) : pderiv a (monomial s c : Poly n) ∈ geDeg (t - 1) := by
  rw [pderiv_monomial]
  by_cases hs : s a = 0
  · rw [hs, Nat.cast_zero, mul_zero, monomial_zero]; exact Submodule.zero_mem _
  · apply monomial_mem_geDeg
    have := degree_sub_single hs
    omega

theorem pderiv_mem_geDeg {t : ℕ} (a : Fin n × Fin n) {f : Poly n} (hf : f ∈ geDeg t) :
    pderiv a f ∈ geDeg (t - 1) := by
  refine map_mem_of_monomial (pderiv a : Derivation ℂ (Poly n) (Poly n)).toLinearMap _
    (fun s => t ≤ s.degree) (fun s hs => ?_) (fun s c hs => pderiv_monomial_mem_geDeg a s c hs)
  by_contra hlt
  exact hs (hf s (not_le.1 hlt))

theorem rowOp_monomial (i j : Fin n) (s : Fin n × Fin n →₀ ℕ) (c : ℂ) :
    rowOp i j (monomial s c) =
      ∑ k, monomial (Finsupp.single (i, k) 1 + (s - Finsupp.single (j, k) 1)) (c * s (j, k)) := by
  rw [rowOp_apply]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [pderiv_monomial, X, monomial_mul, one_mul]

theorem rowOp_monomial_term_mem {i j k : Fin n} {s : Fin n × Fin n →₀ ℕ} (c : ℂ)
    (P : Submodule ℂ (Poly n))
    (h : s (j, k) ≠ 0 → (monomial (Finsupp.single (i, k) 1 + (s - Finsupp.single (j, k) 1))
        (c * s (j, k)) : Poly n) ∈ P) :
    (monomial (Finsupp.single (i, k) 1 + (s - Finsupp.single (j, k) 1)) (c * s (j, k)) : Poly n)
      ∈ P := by
  by_cases hs : s (j, k) = 0
  · rw [hs, Nat.cast_zero, mul_zero, monomial_zero]; exact Submodule.zero_mem _
  · exact h hs

theorem degree_rowOp_term {i j k : Fin n} {s : Fin n × Fin n →₀ ℕ} (hs : s (j, k) ≠ 0) :
    (Finsupp.single (i, k) 1 + (s - Finsupp.single (j, k) 1)).degree = s.degree := by
  rw [map_add (f := _), Finsupp.degree_single, ← degree_sub_single hs]
  ring

theorem rowOp_monomial_mem_geDeg {t : ℕ} (i j : Fin n) (s : Fin n × Fin n →₀ ℕ) (c : ℂ)
    (h : t ≤ s.degree) : rowOp i j (monomial s c) ∈ geDeg t := by
  rw [rowOp_monomial]
  refine Submodule.sum_mem _ fun k _ => rowOp_monomial_term_mem c _ fun hs => ?_
  apply monomial_mem_geDeg
  rw [degree_rowOp_term hs]; exact h

theorem rowOp_mem_geDeg {t : ℕ} (i j : Fin n) {f : Poly n} (hf : f ∈ geDeg t) :
    rowOp i j f ∈ geDeg t := by
  refine map_mem_of_monomial (rowOp i j) _ (fun s => t ≤ s.degree) (fun s hs => ?_)
    (fun s c hs => rowOp_monomial_mem_geDeg i j s c hs)
  by_contra hlt
  exact hs (hf s (not_le.1 hlt))

noncomputable def iterPd (w : List (Fin n × Fin n)) (f : Poly n) : Poly n :=
  w.foldr (fun a g => pderiv (a.2, a.1) g) f

@[simp] theorem iterPd_cons (a : Fin n × Fin n) (w : List (Fin n × Fin n)) (f : Poly n) :
    iterPd (a :: w) f = pderiv (a.2, a.1) (iterPd w f) := rfl

theorem iterPd_mem_geDeg (w : List (Fin n × Fin n)) {t : ℕ} {f : Poly n} (hf : f ∈ geDeg t) :
    iterPd w f ∈ geDeg (t - w.length) := by
  induction w with
  | nil => simpa [iterPd] using hf
  | cons a w ih =>
    rw [iterPd_cons, List.length_cons, ← Nat.sub_sub]
    exact pderiv_mem_geDeg _ ih

theorem rho_one_word_sub_iterPd (w : List (Fin n × Fin n)) {t : ℕ} {f : Poly n}
    (hw : w.length ≤ t) (hf : f ∈ geDeg t) :
    rho 1 (word w) f - iterPd w f ∈ geDeg (t - w.length + 1) := by
  induction w with
  | nil => simp [iterPd]
  | cons a w ih =>
    rw [List.length_cons] at hw ⊢
    have ih := ih (by omega)
    rw [word_cons, map_mul, Module.End.mul_apply, iterPd_cons]
    obtain ⟨i, j⟩ := a
    rw [rho_one_e_apply]
    set g := rho 1 (word w) f
    have e1 : pderiv (j, i) g + rowOp i j g - pderiv (j, i) (iterPd w f) =
        pderiv (j, i) (g - iterPd w f) + rowOp i j (g - iterPd w f) + rowOp i j (iterPd w f) := by
      rw [map_sub, map_sub]; abel
    rw [e1]
    have ht : t - (w.length + 1) + 1 = t - w.length := by omega
    rw [ht]
    refine Submodule.add_mem _ (Submodule.add_mem _ ?_ ?_) ?_
    · have := pderiv_mem_geDeg (j, i) ih
      rwa [Nat.add_sub_cancel] at this
    · exact geDeg_anti (by omega) (rowOp_mem_geDeg i j ih)
    · exact rowOp_mem_geDeg i j (iterPd_mem_geDeg w hf)

theorem constantCoeff_rho_one_word_of_lt (w : List (Fin n × Fin n)) (f : Poly n) (d : ℕ)
    (hf : f.IsHomogeneous d) (h : w.length < d) :
    constantCoeff (rho 1 (word w) f) = 0 := by
  have hf' := mem_geDeg_of_isHomogeneous hf
  have h1 := rho_one_word_sub_iterPd w h.le hf'
  have h2 := iterPd_mem_geDeg w hf'
  rw [← sub_add_cancel (rho 1 (word w) f) (iterPd w f), map_add (f := _),
    constantCoeff_eq_zero_of_mem_geDeg (geDeg_anti (by omega) h1),
    constantCoeff_eq_zero_of_mem_geDeg (geDeg_anti (by omega) h2), add_zero]

theorem toFinsupp_map_swap_cons (a : Fin n × Fin n) (w : List (Fin n × Fin n)) :
    Multiset.toFinsupp (((a :: w).map Prod.swap : List _) : Multiset (Fin n × Fin n)) =
      Finsupp.single (a.2, a.1) 1 +
        Multiset.toFinsupp ((w.map Prod.swap : List _) : Multiset (Fin n × Fin n)) := by
  rw [List.map_cons, ← Multiset.cons_coe, ← Multiset.singleton_add, Multiset.toFinsupp_add,
    Multiset.toFinsupp_singleton]
  rfl

theorem iterPd_monomial (w : List (Fin n × Fin n)) (s : Fin n × Fin n →₀ ℕ) (c : ℂ) :
    ∃ κ : ℂ, iterPd w (monomial s c) =
        monomial (s - Multiset.toFinsupp ((w.map Prod.swap : List _) : Multiset _)) (c * κ) ∧
      (κ ≠ 0 ↔ Multiset.toFinsupp ((w.map Prod.swap : List _) : Multiset _) ≤ s) := by
  induction w with
  | nil => exact ⟨1, by simp [iterPd], by simp⟩
  | cons a w ih =>
    obtain ⟨κ, h1, h2⟩ := ih
    rw [toFinsupp_map_swap_cons]
    generalize Multiset.toFinsupp ((w.map Prod.swap : List _) : Multiset (Fin n × Fin n)) = T
      at h1 h2 ⊢
    refine ⟨κ * ((s - T) (a.2, a.1) : ℕ), ?_, ?_⟩
    · rw [iterPd_cons, h1, pderiv_monomial, tsub_tsub, add_comm T, mul_assoc]
    · rw [mul_ne_zero_iff, h2, Nat.cast_ne_zero, Finsupp.tsub_apply]
      constructor
      · rintro ⟨hT, hb⟩ x
        rw [Finsupp.add_apply, Finsupp.single_apply]
        have := hT x
        split_ifs with hx
        · subst hx; omega
        · omega
      · intro h
        have hx : ∀ x, T x ≤ s x := fun x => le_trans (by simp) (h x)
        refine ⟨hx, ?_⟩
        have := h (a.2, a.1)
        rw [Finsupp.add_apply, Finsupp.single_eq_same] at this
        omega

theorem constantCoeff_rho_one_word_monomial (w : List (Fin n × Fin n))
    (s : Fin n × Fin n →₀ ℕ) (h : w.length = s.degree) :
    constantCoeff (rho 1 (word w) (monomial s 1)) ≠ 0 ↔
      Multiset.toFinsupp ((w.map Prod.swap : List _) : Multiset _) = s := by
  have hf' : (monomial s (1 : ℂ) : Poly n) ∈ geDeg s.degree := monomial_mem_geDeg s 1 le_rfl
  have h1 := rho_one_word_sub_iterPd w h.le hf'
  rw [← sub_add_cancel (rho 1 (word w) (monomial s 1)) (iterPd w (monomial s 1)), map_add (f := _),
    constantCoeff_eq_zero_of_mem_geDeg (geDeg_anti (by omega) h1), zero_add]
  obtain ⟨κ, hκ, hiff⟩ := iterPd_monomial w s 1
  rw [hκ, constantCoeff_monomial, one_mul]
  set T := Multiset.toFinsupp ((w.map Prod.swap : List _) : Multiset (Fin n × Fin n))
  constructor
  · intro hne
    split_ifs at hne with h0
    · exact le_antisymm (hiff.1 hne) (tsub_eq_zero_iff_le.1 h0)
    · exact absurd rfl hne
  · rintro rfl
    rw [tsub_self, if_pos rfl]
    exact hiff.2 le_rfl

end GroundTheory.Automorphic.HarishChandra
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.RhoOneEqZeroOfRhoZeroEqZero =====

-- ===== clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.ConstantCoeffRhoOneCanonMonomial =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.HarishChandraCentre.ConstantCoeffRhoOneCanonMonomial", "h": "module\n\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.MemOfMemSupportToFinsupp\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.RhoOneEqZeroOfRhoZeroEqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Automorphic.HarishChandra

attribute [local instance 100] LieRing.ofAssociativeRing

open MvPolynomial

variable {n : ℕ}

noncomputable def transposeExp (m : Fin n × Fin n →₀ ℕ) : Fin n × Fin n →₀ ℕ :=
  Finsupp.mapDomain Prod.swap m

theorem transposeExp_injective : Function.Injective (transposeExp (n := n)) :=
  Finsupp.mapDomain_injective Prod.swap_injective

theorem toFinsupp_map_swap (w : List (Fin n × Fin n)) :
    Multiset.toFinsupp ((w.map Prod.swap : List _) : Multiset (Fin n × Fin n)) =
      transposeExp (Multiset.toFinsupp (w : Multiset (Fin n × Fin n))) := by
  induction w with
  | nil => simp [transposeExp]
  | cons a w ih =>
    rw [List.map_cons,
      show ((Prod.swap a :: w.map Prod.swap : List _) : Multiset _) =
        {Prod.swap a} + ((w.map Prod.swap : List _) : Multiset _) by simp,
      show ((a :: w : List _) : Multiset _) = {a} + (w : Multiset _) by simp,
      Multiset.toFinsupp_add, Multiset.toFinsupp_add, Multiset.toFinsupp_singleton,
      Multiset.toFinsupp_singleton, ih, transposeExp, transposeExp, Finsupp.mapDomain_add,
      Finsupp.mapDomain_single]

theorem degree_transposeExp (m : Fin n × Fin n →₀ ℕ) :
    (transposeExp m).degree = m.degree := by
  have h1 := degree_toFinsupp ((expand m).map Prod.swap)
  rw [toFinsupp_map_swap, toFinsupp_expand, List.length_map, length_expand] at h1
  exact h1

theorem constantCoeff_rho_one_canon_monomial (m s : Fin n × Fin n →₀ ℕ) (h : m.degree = s.degree) :
    constantCoeff (rho 1 (canon m) (monomial s 1)) ≠ 0 ↔ transposeExp m = s := by
  rw [canon, constantCoeff_rho_one_word_monomial _ _ (by rw [length_expand, h]),
    toFinsupp_map_swap, toFinsupp_expand]

theorem coeff_eq_zero_of_rho_one (s : Finset (Fin n × Fin n →₀ ℕ)) (c : (Fin n × Fin n →₀ ℕ) → ℂ)
    (h : rho 1 (∑ m ∈ s, c m • canon m) = 0) : ∀ m ∈ s, c m = 0 := by
  by_contra hne
  push Not at hne
  obtain ⟨m, hms, hm⟩ := hne
  set s' := s.filter fun m => c m ≠ 0
  have hne' : s'.Nonempty := ⟨m, Finset.mem_filter.2 ⟨hms, hm⟩⟩
  obtain ⟨m₀, hm₀, hmax⟩ := s'.exists_max_image Finsupp.degree hne'
  rw [Finset.mem_filter] at hm₀
  set N := transposeExp m₀
  have hN : N.degree = m₀.degree := degree_transposeExp m₀
  have hhom : (monomial N (1 : ℂ)).IsHomogeneous m₀.degree := by
    rw [← hN]; exact isHomogeneous_monomial _ rfl
  have key : ∀ m ∈ s, m ≠ m₀ → c m * constantCoeff (rho 1 (canon m) (monomial N 1)) = 0 := by
    intro m hm hne
    by_cases hc : c m = 0
    · rw [hc, zero_mul]
    have hdeg : m.degree ≤ m₀.degree := hmax m (Finset.mem_filter.2 ⟨hm, hc⟩)
    rcases hdeg.lt_or_eq with hlt | heq
    · rw [canon, constantCoeff_rho_one_word_of_lt _ _ _ hhom (by rw [length_expand]; exact hlt),
        mul_zero]
    · have : ¬ constantCoeff (rho 1 (canon m) (monomial N 1)) ≠ 0 := by
        rw [constantCoeff_rho_one_canon_monomial _ _ (by rw [heq, hN])]
        exact fun h' => hne (transposeExp_injective h')
      rw [not_not.1 this, mul_zero]
  have hsum := congrArg (fun T : Module.End ℂ (Poly n) => constantCoeff (T (monomial N 1))) h

  simp only [map_sum, map_smul, LinearMap.sum_apply, LinearMap.smul_apply, map_zero,
  LinearMap.zero_apply, MvPolynomial.smul_eq_C_mul, map_mul, MvPolynomial.constantCoeff_C] at hsum
  rw [Finset.sum_eq_single m₀ (fun m hm hne => key m hm hne) (fun h' => absurd hm₀.1 h')] at hsum
  have h0 : constantCoeff (rho 1 (canon m₀) (monomial N 1)) ≠ 0 :=
    (constantCoeff_rho_one_canon_monomial _ _ hN.symm).2 rfl
  exact hm₀.2 ((mul_eq_zero.1 hsum).resolve_right h0)

theorem linearIndependent_canon : LinearIndependent ℂ (canon (n := n)) := by
  rw [linearIndependent_iff']
  intro s c hs
  exact coeff_eq_zero_of_rho_one s c (by rw [hs, map_zero])

noncomputable def pbw : Module.Basis (Fin n × Fin n →₀ ℕ) ℂ (U n) :=
  Module.Basis.mk linearIndependent_canon span_canon_eq_top.ge

@[simp] theorem pbw_apply (m : Fin n × Fin n →₀ ℕ) : pbw (n := n) m = canon m :=
  Module.Basis.mk_apply _ _ _

theorem sum_repr_canon (u : U n) :
    ∑ m ∈ (pbw.repr u).support, pbw.repr u m • canon m = u := by
  conv_rhs => rw [← pbw.linearCombination_repr u]
  rw [Finsupp.linearCombination_apply, Finsupp.sum]
  simp

theorem eq_zero_of_rho_one_eq_zero {u : U n} (h : rho 1 u = 0) : u = 0 := by
  rw [← sum_repr_canon u] at h ⊢
  have := coeff_eq_zero_of_rho_one _ _ h
  exact Finset.sum_eq_zero fun m hm => by rw [this m hm, zero_smul]

theorem eq_zero_of_rho_zero_eq_zero {u : U n} (h : rho 0 u = 0) : u = 0 :=
  eq_zero_of_rho_one_eq_zero (rho_one_eq_zero_of_rho_zero_eq_zero u h)

end GroundTheory.Automorphic.HarishChandra
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.ConstantCoeffRhoOneCanonMonomial =====

-- ===== clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.Projection =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.HarishChandraCentre.Projection", "h": "module\n\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.Triangular\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.ConstantCoeffRhoOneCanonMonomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Automorphic.HarishChandra

attribute [local instance 100] LieRing.ofAssociativeRing

open MvPolynomial

variable {n : ℕ}


open Classical in
noncomputable def hcProjLin : U n →ₗ[ℂ] MvPolynomial (Fin n) ℂ :=
  open scoped Classical in
  pbw.constr ℂ fun m => if IsDiagExp m then monomial (diagExp m) 1 else 0

theorem hcProjLin_canon_of_isDiagExp {m : Fin n × Fin n →₀ ℕ} (h : IsDiagExp m) :
    hcProjLin (canon m) = monomial (diagExp m) 1 := by
  rw [hcProjLin, ← pbw_apply, Module.Basis.constr_basis, if_pos h]

theorem hcProjLin_canon_of_not {m : Fin n × Fin n →₀ ℕ} (h : ¬ IsDiagExp m) :
    hcProjLin (canon m) = 0 := by
  rw [hcProjLin, ← pbw_apply, Module.Basis.constr_basis, if_neg h]

theorem canon_of_isDiagExp {m : Fin n × Fin n →₀ ℕ} (h : IsDiagExp m) :
    canon m = hcEmb (monomial (diagExp m) 1) := by
  have hz : ∀ a, ¬ IsDiag a → m a = 0 := fun a ha => by
    by_contra h'; exact ha (h a h')
  rw [canon_eq_triangular, blockW_eq_nil (l := lowL n) (fun a ha => hz a
      (not_lower_of_diag.mt (not_not.2 (mem_lowL.1 ha)) |> fun h' => fun hd => h' hd)),
    blockW_eq_nil (l := upL n) (fun a ha => hz a fun hd => not_upper_of_diag hd (mem_upL.1 ha))]
  simp

noncomputable def diagEmbExp (μ : Fin n →₀ ℕ) : Fin n × Fin n →₀ ℕ :=
  Finsupp.mapDomain (fun i => (i, i)) μ

theorem diagEmbExp_injective : Function.Injective (fun i : Fin n => (i, i)) :=
  fun _ _ h => congrArg Prod.fst h

theorem isDiagExp_diagEmbExp (μ : Fin n →₀ ℕ) : IsDiagExp (diagEmbExp μ) := by
  intro a ha
  by_contra hd
  apply ha
  rw [diagEmbExp, Finsupp.mapDomain_of_notMem_range]
  rintro ⟨i, rfl⟩
  exact hd rfl

theorem diagExp_diagEmbExp (μ : Fin n →₀ ℕ) : diagExp (diagEmbExp μ) = μ := by
  ext i
  rw [diagExp_apply, diagEmbExp, Finsupp.mapDomain_apply_of_injective diagEmbExp_injective]

theorem hcEmb_monomial_one (μ : Fin n →₀ ℕ) : hcEmb (monomial μ 1) = canon (diagEmbExp μ) := by
  rw [canon_of_isDiagExp (isDiagExp_diagEmbExp μ), diagExp_diagEmbExp]

theorem hcProjLin_hcEmb (p : MvPolynomial (Fin n) ℂ) : hcProjLin (hcEmb p) = p := by
  induction p using MvPolynomial.induction_on' with
  | monomial μ c =>
    rw [show monomial μ c = c • monomial μ (1 : ℂ) by rw [smul_monomial, smul_eq_mul, mul_one],
      map_smul, map_smul, hcEmb_monomial_one, hcProjLin_canon_of_isDiagExp (isDiagExp_diagEmbExp μ),
      diagExp_diagEmbExp]
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), hp, hq]

theorem hcProjLin_eq_zero_of_mem_nPlusU {x : U n} (hx : x ∈ nPlusU n) : hcProjLin x = 0 := by
  have hx' : x ∈ Submodule.span ℂ {x | ∃ m : Fin n × Fin n →₀ ℕ, HasUpper m ∧ canon m = x} :=
    nPlusU_le_spanUpper hx
  clear hx
  induction hx' using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨m, hm, rfl⟩ := hx
    exact hcProjLin_canon_of_not (not_isDiagExp_of_hasUpper hm)
  | zero => simp
  | add x y _ _ hx hy => rw [map_add (f := _), hx, hy, add_zero]
  | smul r x _ hx => rw [map_smul, hx, smul_zero]

theorem sum_mul_rootAt (a : Fin n × Fin n) :
    ∑ k : Fin n, (k : ℤ) * rootAt a k = (a.1 : ℤ) - a.2 := by
  simp only [rootAt, mul_sub, mul_ite, mul_one, mul_zero, Finset.sum_sub_distrib,
    Finset.sum_ite_eq', Finset.mem_univ, if_true]

theorem sum_mul_wt (m : Fin n × Fin n →₀ ℕ) :
    ∑ k : Fin n, (k : ℤ) * wt m k = m.sum fun a c => (c : ℤ) * ((a.1 : ℤ) - a.2) := by
  simp only [wt, Finsupp.sum, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [← sum_mul_rootAt, Finset.mul_sum]
  exact Finset.sum_congr rfl fun k _ => by ring

theorem hasUpper_of_wt_eq_zero {m : Fin n × Fin n →₀ ℕ} (hw : ∀ k, wt m k = 0) (hl : HasLower m) :
    HasUpper m := by
  by_contra hu
  have h0 : ∑ k : Fin n, (k : ℤ) * wt m k = 0 := by simp [hw]
  rw [sum_mul_wt, Finsupp.sum] at h0
  obtain ⟨a, ha, hma⟩ := hl
  have hnonneg : ∀ b ∈ m.support, 0 ≤ (m b : ℤ) * ((b.1 : ℤ) - b.2) := by
    intro b hb
    refine mul_nonneg (by positivity) ?_
    by_contra hneg
    apply hu
    refine ⟨b, ?_, Finsupp.mem_support_iff.1 hb⟩
    simp only [IsUpper]
    have : (b.1 : ℤ) < b.2 := by linarith
    exact_mod_cast this
  have hpos : 0 < (m a : ℤ) * ((a.1 : ℤ) - a.2) := by
    refine mul_pos (by exact_mod_cast Nat.pos_of_ne_zero hma) ?_
    simp only [IsLower] at ha
    have : (a.2 : ℤ) < a.1 := by exact_mod_cast ha
    linarith
  have := Finset.sum_pos' hnonneg ⟨a, Finsupp.mem_support_iff.2 hma, hpos⟩
  linarith

theorem sub_hcEmb_mem_nPlusU {z : U n} (hz : ∀ k, e (k, k) * z = z * e (k, k)) :
    z - hcEmb (hcProjLin z) ∈ nPlusU n := by
  set s := (pbw.repr z).support
  set c := fun m => pbw.repr z m
  have hzs : z = ∑ m ∈ s, c m • canon m := (sum_repr_canon z).symm
  have hwt : ∀ m ∈ s, ∀ k, wt m k = 0 := by
    intro m hm k
    have h0 : ∑ m ∈ s, (c m * (wt m k : ℂ)) • canon m = 0 := by
      have := sub_eq_zero.2 (hz k)
      rw [hzs, Finset.mul_sum, Finset.sum_mul, ← Finset.sum_sub_distrib] at this
      rw [← this]
      refine Finset.sum_congr rfl fun m _ => ?_
      rw [mul_smul_comm, smul_mul_assoc, ← smul_sub, e_diag_mul_canon_sub, smul_smul]
    have := linearIndependent_iff'.1 linearIndependent_canon s _ h0 m hm
    have hc : c m ≠ 0 := Finsupp.mem_support_iff.1 hm
    exact_mod_cast (mul_eq_zero.1 this).resolve_left hc

  rw [hzs, map_sum, map_sum, ← Finset.sum_sub_distrib]
  refine Submodule.sum_mem _ fun m hm => ?_
  rw [map_smul, map_smul, ← smul_sub]
  refine Submodule.smul_mem _ _ ?_
  rcases isDiagExp_or m with h | h | h
  · rw [hcProjLin_canon_of_isDiagExp h, ← canon_of_isDiagExp h, sub_self]
    exact Submodule.zero_mem _
  · rw [hcProjLin_canon_of_not (not_isDiagExp_of_hasUpper h), map_zero, sub_zero]
    exact canon_mem_nPlusU h
  · have hu := hasUpper_of_wt_eq_zero (hwt m hm) h
    rw [hcProjLin_canon_of_not (not_isDiagExp_of_hasUpper hu), map_zero, sub_zero]
    exact canon_mem_nPlusU hu

theorem mul_e_diag_mem_nPlusU {x : U n} (hx : x ∈ nPlusU n) (k : Fin n) :
    x * e (k, k) ∈ nPlusU n := by
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨u, a, ha, rfl⟩ := hx
    have h := e_diag_mul_sub k a
    have : u * e a * e (k, k) = (u * e (k, k)) * e a - (rootAt a k : ℂ) • (u * e a) := by
      rw [mul_assoc, mul_assoc, ← mul_smul_comm, ← mul_sub, ← h]; noncomm_ring
    rw [this]
    exact Submodule.sub_mem _ (Submodule.subset_span ⟨_, a, ha, rfl⟩)
      (Submodule.smul_mem _ _ (Submodule.subset_span ⟨_, a, ha, rfl⟩))
  | zero => simp
  | add x y _ _ hx hy => rw [add_mul]; exact Submodule.add_mem _ hx hy
  | smul r x _ hx => rw [smul_mul_assoc]; exact Submodule.smul_mem _ r hx

theorem mul_mem_nPlusU_of_mem_cartanSub {x y : U n} (hx : x ∈ nPlusU n) (hy : y ∈ cartanSub n) :
    x * y ∈ nPlusU n := by
  let S : Subalgebra ℂ (U n) :=
    { carrier := {y | ∀ x ∈ nPlusU n, x * y ∈ nPlusU n}
      mul_mem' := fun {a b} ha hb x hx => by rw [← mul_assoc]; exact hb _ (ha x hx)
      add_mem' := fun {a b} ha hb x hx => by rw [mul_add]; exact Submodule.add_mem _ (ha x hx) (hb x hx)
      algebraMap_mem' := fun r x hx => by
        rw [Algebra.algebraMap_eq_smul_one, mul_smul_comm, mul_one]; exact Submodule.smul_mem _ r hx }
  have : cartanSub n ≤ S := by
    refine Algebra.adjoin_le ?_
    rintro _ ⟨k, rfl⟩ x hx
    exact mul_e_diag_mem_nPlusU hx k
  exact this hy x hx

noncomputable abbrev centralizerT (n : ℕ) : Subalgebra ℂ (U n) :=
  Subalgebra.centralizer ℂ (cartanSet n)

theorem commute_e_diag_of_mem {z : U n} (hz : z ∈ centralizerT n) (k : Fin n) :
    e (k, k) * z = z * e (k, k) :=
  (Subalgebra.mem_centralizer_iff ℂ).1 hz _ ⟨k, rfl⟩

theorem hcProjLin_one : hcProjLin (1 : U n) = 1 := by
  rw [← canon_zero, hcProjLin_canon_of_isDiagExp (fun a h => absurd rfl h)]
  have : diagExp (0 : Fin n × Fin n →₀ ℕ) = 0 := by ext; simp
  rw [this, ← C_1, monomial_zero']

theorem hcProjLin_mul {z z' : U n} (hz : z ∈ centralizerT n) (hz' : z' ∈ centralizerT n) :
    hcProjLin (z * z') = hcProjLin z * hcProjLin z' := by
  set p := hcProjLin z
  set p' := hcProjLin z'
  have hx := sub_hcEmb_mem_nPlusU (commute_e_diag_of_mem hz)
  have hx' := sub_hcEmb_mem_nPlusU (commute_e_diag_of_mem hz')
  set x := z - hcEmb p
  set x' := z' - hcEmb p'
  have hzz : z * z' = hcEmb (p * p') + (hcEmb p * x' + x * hcEmb p' + x * x') := by
    rw [map_mul]; simp only [x, x']; noncomm_ring
  rw [hzz, map_add (f := _), hcProjLin_hcEmb]
  have : hcEmb p * x' + x * hcEmb p' + x * x' ∈ nPlusU n :=
    Submodule.add_mem _ (Submodule.add_mem _ (mul_mem_nPlusU _ hx')
      (mul_mem_nPlusU_of_mem_cartanSub hx (hcEmb_mem_cartanSub p'))) (mul_mem_nPlusU _ hx')
  rw [hcProjLin_eq_zero_of_mem_nPlusU this, add_zero]

noncomputable def hcProj0 : centralizerT n →ₐ[ℂ] MvPolynomial (Fin n) ℂ where
  toFun z := hcProjLin (z : U n)
  map_one' := hcProjLin_one
  map_mul' z z' := hcProjLin_mul z.2 z'.2
  map_zero' := by simp
  map_add' z z' := by simp
  commutes' r := by
    show hcProjLin (algebraMap ℂ (U n) r) = algebraMap ℂ _ r
    rw [Algebra.algebraMap_eq_smul_one, map_smul, hcProjLin_one, Algebra.algebraMap_eq_smul_one]

theorem rep_apply_of_highestWeight {V : Type*} [AddCommGroup V] [Module ℂ V]
    (φ : U n →ₐ[ℂ] Module.End ℂ V) {v : V} (lam : Fin n → ℂ)
    (hup : ∀ a, IsUpper a → φ (e a) v = 0) (hH : ∀ k, φ (e (k, k)) v = lam k • v)
    {z : U n} (hz : ∀ k, e (k, k) * z = z * e (k, k)) :
    φ z v = eval lam (hcProjLin z) • v := by
  have hN : ∀ x ∈ nPlusU n, φ x v = 0 := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨u, a, ha, rfl⟩ := hx
      rw [map_mul, Module.End.mul_apply, hup a ha, map_zero]
    | zero => simp
    | add x y _ _ hx hy => rw [map_add (f := _), LinearMap.add_apply, hx, hy, add_zero]
    | smul r x _ hx => rw [map_smul, LinearMap.smul_apply, hx, smul_zero]
  have hC : ∀ p, φ (hcEmb p) v = eval lam p • v := by
    intro p
    induction p using MvPolynomial.induction_on with
    | C a => simp [AlgHom.commutes, Module.algebraMap_end_apply]
    | add p q hp hq => rw [map_add (f := _), map_add (f := _), LinearMap.add_apply, hp, hq, map_add (f := _), add_smul]
    | mul_X p i hp =>
      rw [map_mul, map_mul, Module.End.mul_apply, hcEmb_X, hH, map_smul, hp, smul_smul,
        eval_mul, eval_X, mul_comm]
  have := sub_hcEmb_mem_nPlusU hz
  have h := hN _ this
  rw [map_sub, LinearMap.sub_apply, sub_eq_zero] at h
  rw [h, hC]

noncomputable def rhoVec (n : ℕ) : Fin n → ℂ := fun i => ((n : ℂ) - 1) / 2 - (i : ℂ)

noncomputable def translate (c : Fin n → ℂ) : MvPolynomial (Fin n) ℂ →ₐ[ℂ] MvPolynomial (Fin n) ℂ :=
  aeval fun i => X i + C (c i)

theorem eval_translate (c lam : Fin n → ℂ) (p : MvPolynomial (Fin n) ℂ) :
    eval lam (translate c p) = eval (lam + c) p := by
  induction p using MvPolynomial.induction_on with
  | C a => simp [translate]
  | add p q hp hq => rw [map_add (f := _), eval_add, eval_add, hp, hq]
  | mul_X p i hp =>
    rw [map_mul, eval_mul, eval_mul, hp]
    simp [translate]

noncomputable def harishChandraHom : Subalgebra.center ℂ (U n) →ₐ[ℂ] MvPolynomial (Fin n) ℂ :=
  (translate (-rhoVec n)).comp
    (hcProj0.comp (Subalgebra.inclusion (Subalgebra.center_le_centralizer ℂ (cartanSet n))))

theorem harishChandraHom_apply (z : Subalgebra.center ℂ (U n)) :
    harishChandraHom z = translate (-rhoVec n) (hcProjLin (z : U n)) := rfl

theorem eval_harishChandraHom (z : Subalgebra.center ℂ (U n)) (lam : Fin n → ℂ) :
    eval lam (harishChandraHom z) = eval (lam - rhoVec n) (hcProjLin (z : U n)) := by
  rw [harishChandraHom_apply, eval_translate, sub_eq_add_neg]

theorem mem_centralizerT_of_mem_center {z : U n} (hz : z ∈ Subalgebra.center ℂ (U n)) :
    z ∈ centralizerT n :=
  Subalgebra.center_le_centralizer ℂ (cartanSet n) hz

end GroundTheory.Automorphic.HarishChandra
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.Projection =====
