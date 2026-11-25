module

public import GroundTheory.AutomorphicForms.HarishChandraCentre.RepBase
public import GroundTheory.AutomorphicForms.HarishChandraCentre.FischerForm
public import Mathlib.RingTheory.Derivation.Lie
public import GroundTheory.AutomorphicForms.HarishChandraCentre.Projection
public import Mathlib.Algebra.MvPolynomial.Funext
public import GroundTheory.AutomorphicForms.HarishChandraCentre.Capelli
public import Mathlib.RingTheory.MvPolynomial.Symmetric.Defs
public import Mathlib.Basic.Complex.Basic
public import Mathlib.RingTheory.MvPolynomial.Homogeneous
public import Mathlib.RingTheory.MvPolynomial.Symmetric.FundamentalTheorem
public import Mathlib.RingTheory.MvPolynomial.Symmetric.NewtonIdentities
public import Mathlib.Algebra.MvPolynomial.CommRing
public import GroundTheory.AutomorphicForms.HarishChandraCentre.VermaCoordEqZeroOfMemNPlusU
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.AutomorphicForms.HarishChandraCentre.Fischer, GroundTheory.AutomorphicForms.HarishChandraCentre.Injective, GroundTheory.AutomorphicForms.HarishChandraCentre.LeadingTerm, GroundTheory.AutomorphicForms.HarishChandraCentre.Symmetric, GroundTheory.AutomorphicForms.HarishChandraCentre

-- ===== clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.Fischer =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.HarishChandraCentre.Fischer", "h": "module\n\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.RepBase\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.FischerForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Derivation.Lie\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Automorphic.HarishChandra

open MvPolynomial

variable {n : ℕ}

theorem fischer_rowOp (i j : Fin n) (f g : Poly n) :
    fischer (rowOp i j f) g = fischer f (rowOp j i g) := by
  rw [rowOp_apply, rowOp_apply, fischer_sum_left, fischer_sum_right]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [fischer_X_mul, fischer_pderiv]

theorem rowOp_X (i j b c : Fin n) :
    rowOp i j (X (b, c) : Poly n) = if b = j then X (i, c) else 0 := by
  rw [rowOp_apply]
  by_cases hb : b = j
  · subst hb
    rw [if_pos rfl, Finset.sum_eq_single c]
    · rw [pderiv_X_self, mul_one]
    · intro k _ hk
      rw [pderiv_X_of_ne (by intro h; exact hk (Prod.ext_iff.1 h).2.symm), mul_zero]
    · simp
  · rw [if_neg hb]
    refine Finset.sum_eq_zero fun k _ => ?_
    rw [pderiv_X_of_ne (by intro h; exact hb (Prod.ext_iff.1 h).1), mul_zero]

noncomputable def rowDer (i j : Fin n) : Derivation ℂ (Poly n) (Poly n) :=
  Derivation.mk' (rowOp i j) fun a b => by
    rw [rowOp_apply, rowOp_apply, rowOp_apply, smul_eq_mul, smul_eq_mul, Finset.mul_sum,
      Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
    ring

theorem rowDer_apply (i j : Fin n) (f : Poly n) : rowDer i j f = rowOp i j f := rfl

theorem rowOp_comm_self (a i j : Fin n) :
    rowOp a a * rowOp i j =
      rowOp i j * rowOp a a + ((if i = a then 1 else 0) - (if j = a then 1 else 0) : ℂ) • rowOp i j := by
  have key : ⁅rowDer a a, rowDer i j⁆ =
      ((if i = a then 1 else 0) - (if j = a then 1 else 0) : ℂ) • rowDer i j := by
    apply MvPolynomial.derivation_ext
    rintro ⟨b, c⟩
    rw [Derivation.commutator_apply, Derivation.smul_apply, rowDer_apply, rowDer_apply,
      rowDer_apply, rowDer_apply]
    by_cases hbj : b = j <;> by_cases hba : b = a <;> by_cases hia : i = a <;>
      simp_all [rowOp_X]
  refine LinearMap.ext fun f => ?_
  have h := congrArg (fun D : Derivation ℂ (Poly n) (Poly n) => D f) key
  simp only [Derivation.commutator_apply, Derivation.smul_apply, rowDer_apply] at h
  simp only [mul_apply_eq_comp, LinearMap.add_apply, LinearMap.smul_apply]
  rw [← h]
  abel

def rowWt (m : Fin n × Fin n →₀ ℕ) (i : Fin n) : ℕ := ∑ k, m (i, k)

theorem rowOp_self_monomial (i : Fin n) (s : Fin n × Fin n →₀ ℕ) (c : ℂ) :
    rowOp i i (monomial s c) = monomial s (c * (rowWt s i : ℂ)) := by

  rw [rowOp_apply, rowWt, Nat.cast_sum, Finset.mul_sum, map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [pderiv_monomial, X, monomial_mul, one_mul]
  by_cases hk : s (i, k) = 0
  · simp [hk]
  · have hle : Finsupp.single (i, k) 1 ≤ s := by
      intro v
      rw [Finsupp.single_apply]
      split_ifs with hv
      · subst hv; omega
      · exact Nat.zero_le _
    rw [add_tsub_cancel_of_le hle]

theorem coeff_rowOp_self (i : Fin n) (m : Fin n × Fin n →₀ ℕ) (f : Poly n) :
    AddMonoidAlgebra.coeff (rowOp i i f) m = (rowWt m i : ℂ) * AddMonoidAlgebra.coeff f m := by
  classical
  induction f using MvPolynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), MvPolynomial.coeff_add, MvPolynomial.coeff_add, hp, hq, mul_add]
  | monomial s c =>
    rw [rowOp_self_monomial, coeff_monomial, coeff_monomial]
    by_cases h : s = m
    · subst h; simp [mul_comm]
    · simp [h]

theorem rowWt_eq_of_eigen {h : Poly n} {c : Fin n → ℂ} (hc : ∀ a, rowOp a a h = c a • h)
    {m : Fin n × Fin n →₀ ℕ} (hm : m ∈ h.support) (a : Fin n) : (rowWt m a : ℂ) = c a := by
  have := congrArg (AddMonoidAlgebra.coeff · m) (hc a)
  rw [coeff_rowOp_self, MvPolynomial.coeff_smul, smul_eq_mul] at this
  exact mul_right_cancel₀ (MvPolynomial.mem_support_iff.1 hm) this

noncomputable def wtProj (μ : Fin n → ℕ) : Module.End ℂ (Poly n) where
  toFun f := ∑ m ∈ f.support with rowWt m = μ, monomial m (AddMonoidAlgebra.coeff f m)
  map_add' f g := by
    classical
    ext m
    simp only [coeff_sum, coeff_monomial, MvPolynomial.coeff_add]
    simp only [Finset.sum_ite_eq', Finset.mem_filter, MvPolynomial.mem_support_iff, MvPolynomial.coeff_add]
    by_cases hm : rowWt m = μ <;> simp only [hm, and_true, and_false, if_false]
    · by_cases h1 : AddMonoidAlgebra.coeff f m = 0 <;> by_cases h2 : AddMonoidAlgebra.coeff g m = 0 <;> by_cases h3 : AddMonoidAlgebra.coeff f m + AddMonoidAlgebra.coeff g m = 0 <;>
        simp_all
    · simp
  map_smul' c f := by
    classical
    ext m
    simp only [coeff_sum, coeff_monomial, MvPolynomial.coeff_smul, smul_eq_mul, RingHom.id_apply]
    simp only [Finset.sum_ite_eq', Finset.mem_filter, MvPolynomial.mem_support_iff, MvPolynomial.coeff_smul,
      smul_eq_mul]
    by_cases hm : rowWt m = μ <;> simp only [hm, and_true, and_false, if_false]
    · by_cases h1 : AddMonoidAlgebra.coeff f m = 0 <;> by_cases h2 : c * AddMonoidAlgebra.coeff f m = 0 <;> simp_all
    · simp

theorem coeff_wtProj (μ : Fin n → ℕ) (m : Fin n × Fin n →₀ ℕ) (f : Poly n) :
    AddMonoidAlgebra.coeff (wtProj μ f) m = if rowWt m = μ then AddMonoidAlgebra.coeff f m else 0 := by
  classical
  change AddMonoidAlgebra.coeff (∑ m ∈ f.support with rowWt m = μ, monomial m (AddMonoidAlgebra.coeff f m)) m = _
  simp only [coeff_sum, coeff_monomial, Finset.sum_ite_eq', Finset.mem_filter,
    MvPolynomial.mem_support_iff]
  by_cases hm : rowWt m = μ
  · by_cases h1 : AddMonoidAlgebra.coeff f m = 0 <;> simp [hm, h1]
  · simp [hm]

theorem wtProj_eq_self_iff (μ : Fin n → ℕ) (f : Poly n) :
    wtProj μ f = f ↔ ∀ m ∈ f.support, rowWt m = μ := by
  constructor
  · intro h m hm
    by_contra hne
    have := congrArg (AddMonoidAlgebra.coeff · m) h
    rw [coeff_wtProj, if_neg hne] at this
    exact MvPolynomial.mem_support_iff.1 hm this.symm
  · intro h
    ext m
    rw [coeff_wtProj]
    split_ifs with hm
    · rfl
    · by_contra hc
      exact hm (h m (MvPolynomial.mem_support_iff.2 (Ne.symm hc)))

theorem wtProj_wtProj (μ ν : Fin n → ℕ) (f : Poly n) :
    wtProj μ (wtProj ν f) = if μ = ν then wtProj ν f else 0 := by
  by_cases h : μ = ν
  · subst h
    rw [if_pos rfl]
    ext m
    rw [coeff_wtProj, coeff_wtProj]
    split_ifs <;> rfl
  · rw [if_neg h]
    ext m
    rw [coeff_wtProj, coeff_wtProj, MvPolynomial.coeff_zero]
    split_ifs with h1 h2
    · exact absurd (h1.symm.trans h2) h
    · rfl
    · rfl

theorem rowOp_self_of_wtProj (μ : Fin n → ℕ) (v : Poly n) (i : Fin n) (h : wtProj μ v = v) :
    rowOp i i v = (μ i : ℂ) • v := by
  ext m
  rw [coeff_rowOp_self, MvPolynomial.coeff_smul, smul_eq_mul]
  by_cases hm : m ∈ v.support
  · rw [(wtProj_eq_self_iff μ v).1 h m hm]
  · rw [MvPolynomial.notMem_support_iff.1 hm]; simp

theorem wtProj_eq_self_of_eigen {h : Poly n} (ν : Fin n → ℕ)
    (hc : ∀ a, rowOp a a h = (ν a : ℂ) • h) : wtProj ν h = h := by
  rw [wtProj_eq_self_iff]
  intro m hm
  funext a
  exact_mod_cast rowWt_eq_of_eigen hc hm a

theorem sum_wtProj (f : Poly n) : ∑ ν ∈ f.support.image rowWt, wtProj ν f = f := by
  classical
  ext m
  rw [coeff_sum]
  simp only [coeff_wtProj, Finset.sum_ite_eq, Finset.mem_image]
  split_ifs with h
  · rfl
  · by_contra hc
    exact h ⟨m, MvPolynomial.mem_support_iff.2 (Ne.symm hc), rfl⟩

theorem fischer_wtProj (μ : Fin n → ℕ) (f g : Poly n) :
    fischer (wtProj μ f) g = fischer f (wtProj μ g) := by
  classical
  set s := f.support ∪ g.support
  have hg : (wtProj μ g).support ⊆ s := fun m hm => by
    rw [MvPolynomial.mem_support_iff, coeff_wtProj] at hm
    split_ifs at hm
    · exact Finset.mem_union_right _ (MvPolynomial.mem_support_iff.2 hm)
    · exact absurd rfl hm
  rw [fischer_eq_sum _ _ s Finset.subset_union_right, fischer_eq_sum _ _ s hg]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [coeff_wtProj, coeff_wtProj]
  split_ifs <;> simp

theorem wtProj_comm {T : Module.End ℂ (Poly n)} (hT : ∀ a, T * rowOp a a = rowOp a a * T)
    (μ : Fin n → ℕ) (f : Poly n) : wtProj μ (T f) = T (wtProj μ f) := by
  classical
  have hν : ∀ ν, wtProj ν (T (wtProj ν f)) = T (wtProj ν f) := fun ν =>
    wtProj_eq_self_of_eigen ν fun a => by
      have h1 := congrArg (fun S : Module.End ℂ (Poly n) => S (wtProj ν f)) (hT a)
      simp only [mul_apply_eq_comp] at h1
      rw [← h1, rowOp_self_of_wtProj ν _ a (by rw [wtProj_wtProj, if_pos rfl]), map_smul]

  conv_lhs => rw [← sum_wtProj f, map_sum, map_sum]
  rw [Finset.sum_eq_single μ]
  · exact hν μ
  · intro ν _ hne
    rw [← hν ν, wtProj_wtProj, if_neg (Ne.symm hne)]
  · intro hμ
    have h0 : wtProj μ f = 0 := by
      ext m
      rw [coeff_wtProj, MvPolynomial.coeff_zero]
      split_ifs with hm
      · by_contra hc
        exact hμ (Finset.mem_image.2 ⟨m, MvPolynomial.mem_support_iff.2 hc, hm⟩)
      · rfl
    rw [h0, map_zero, map_zero]

def wtHeight (μ : Fin n → ℕ) : ℤ := ∑ a, ((n : ℤ) - a) * μ a

theorem rowOp_shift {μ : Fin n → ℕ} {v : Poly n} (hv : wtProj μ v = v) {i j : Fin n} (hij : i < j)
    (hne : rowOp i j v ≠ 0) :
    ∃ μ' : Fin n → ℕ, wtProj μ' (rowOp i j v) = rowOp i j v ∧ ∑ a, μ' a = ∑ a, μ a ∧
      wtHeight μ < wtHeight μ' := by
  classical
  set w := rowOp i j v
  have heig : ∀ a, rowOp a a w =
      ((μ a : ℂ) + ((if i = a then 1 else 0) - (if j = a then 1 else 0))) • w := by
    intro a
    have h1 := congrArg (fun S : Module.End ℂ (Poly n) => S v) (rowOp_comm_self a i j)
    simp only [mul_apply_eq_comp, LinearMap.add_apply, LinearMap.smul_apply] at h1
    rw [h1, rowOp_self_of_wtProj μ v a hv, map_smul, add_smul]
  obtain ⟨m, hm⟩ : ∃ m, m ∈ w.support := by
    by_contra h
    push Not at h
    exact hne (MvPolynomial.support_eq_empty.1 (Finset.eq_empty_of_forall_notMem h))
  have hwt : ∀ m' ∈ w.support, ∀ a, ((rowWt m' a : ℕ) : ℤ) =
      (μ a : ℤ) + ((if i = a then 1 else 0) - (if j = a then 1 else 0)) := by
    intro m' hm' a
    have := rowWt_eq_of_eigen heig hm' a
    have : ((rowWt m' a : ℤ) : ℂ) = (((μ a : ℤ) + ((if i = a then 1 else 0) -
        (if j = a then 1 else 0)) : ℤ) : ℂ) := by
      push_cast; rw [this]
    exact_mod_cast this
  refine ⟨rowWt m, ?_, ?_, ?_⟩
  · rw [wtProj_eq_self_iff]
    intro m' hm'
    funext a
    have h1 := hwt m' hm' a
    have h2 := hwt m hm a
    omega
  · have : ∀ a, ((rowWt m a : ℕ) : ℤ) = (μ a : ℤ) + ((if i = a then 1 else 0) - (if j = a then 1 else 0)) :=
      hwt m hm
    have hs : ((∑ a, rowWt m a : ℕ) : ℤ) = ((∑ a, μ a : ℕ) : ℤ) := by
      push_cast
      rw [Finset.sum_congr rfl fun a _ => this a, Finset.sum_add_distrib, Finset.sum_sub_distrib]
      simp
    exact_mod_cast hs
  · have hsum : wtHeight (rowWt m) = wtHeight μ + (((n : ℤ) - i) - ((n : ℤ) - j)) := by
      unfold wtHeight
      simp_rw [hwt m hm]
      simp only [mul_add, mul_sub, Finset.sum_add_distrib, Finset.sum_sub_distrib, mul_ite, mul_one,
        mul_zero, Finset.sum_ite_eq, Finset.mem_univ, ite_true]
    have : ((i : ℕ) : ℤ) < ((j : ℕ) : ℤ) := by exact_mod_cast hij
    rw [hsum]
    linarith

theorem eq_zero_of_forall_highestWeight (T T' : Module.End ℂ (Poly n))
    (hcomm : ∀ i j, T * rowOp i j = rowOp i j * T)
    (hadj : ∀ f g, fischer (T f) g = fischer f (T' g))
    (hnormal : T * T' = T' * T)
    (hhw : ∀ (v : Poly n) (μ : Fin n → ℕ), (∀ i j, i < j → rowOp i j v = 0) → wtProj μ v = v →
      T v = 0) : T = 0 := by
  classical

  have hadj' : ∀ f g, fischer (T' f) g = fischer f (T g) := fun f g => by
    rw [← fischer_conj_symm, ← hadj, fischer_conj_symm]

  have hker : ∀ k, T k = 0 → T' k = 0 := by
    intro k hk
    have h1 : fischer (T' k) (T' k) = fischer (T k) (T k) := by
      rw [hadj', hadj]
      have := congrArg (fun S : Module.End ℂ (Poly n) => S k) hnormal
      simp only [mul_apply_eq_comp] at this
      rw [this]
    rw [hk, fischer_zero_left] at h1
    exact (fischer_self_eq_zero_iff _).1 h1
  set S : Set (Poly n) := {s | ∀ k, T k = 0 → fischer s k = 0}
  have hS1 : ∀ f, T f ∈ S := fun f k hk => by rw [hadj, hker k hk, fischer_zero_right]
  have hS2 : ∀ μ, ∀ s ∈ S, wtProj μ s ∈ S := fun μ s hs k hk => by
    rw [fischer_wtProj]
    refine hs _ ?_
    rw [← wtProj_comm (fun a => hcomm a a), hk, map_zero]
  have hS3 : ∀ i j, ∀ s ∈ S, rowOp i j s ∈ S := fun i j s hs k hk => by
    rw [fischer_rowOp]
    refine hs _ ?_
    have := congrArg (fun S : Module.End ℂ (Poly n) => S k) (hcomm j i)
    simp only [mul_apply_eq_comp] at this
    rw [this, hk, map_zero]
  have hS4 : ∀ s ∈ S, T s = 0 → s = 0 := fun s hs hT =>
    (fischer_self_eq_zero_iff s).1 (hs s hT)
  refine LinearMap.ext fun f => ?_
  rw [LinearMap.zero_apply]
  by_contra hg
  set g := T f
  obtain ⟨m₀, hm₀⟩ : ∃ m, m ∈ g.support := by
    by_contra h
    push Not at h
    exact hg (MvPolynomial.support_eq_empty.1 (Finset.eq_empty_of_forall_notMem h))
  set μ₀ := rowWt m₀
  have hμ₀ : wtProj μ₀ g ≠ 0 := by
    intro h
    have := congrArg (AddMonoidAlgebra.coeff · m₀) h
    rw [coeff_wtProj, if_pos rfl, MvPolynomial.coeff_zero] at this
    exact MvPolynomial.mem_support_iff.1 hm₀ this
  set d := ∑ a, μ₀ a
  set W : Finset (Fin n → ℕ) :=
    ((Finset.univ : Finset (Fin n → Fin (d + 1))).image fun μ i => (μ i : ℕ)).filter
      fun μ => ∑ a, μ a = d ∧ ∃ s ∈ S, wtProj μ s ≠ 0
  have hmemW : ∀ μ : Fin n → ℕ, ∑ a, μ a = d → (∃ s ∈ S, wtProj μ s ≠ 0) → μ ∈ W := by
    intro μ hsum hex
    refine Finset.mem_filter.2 ⟨Finset.mem_image.2 ⟨fun i => ⟨μ i, ?_⟩, Finset.mem_univ _, rfl⟩,
      hsum, hex⟩
    have : μ i ≤ d := hsum ▸ Finset.single_le_sum (fun a _ => Nat.zero_le (μ a)) (Finset.mem_univ i)
    omega
  have hW : W.Nonempty := ⟨μ₀, hmemW μ₀ rfl ⟨g, hS1 f, hμ₀⟩⟩
  obtain ⟨μ, hμW, hμmax⟩ := Finset.exists_max_image W wtHeight hW
  obtain ⟨hμsum, s, hs, hvne⟩ := (Finset.mem_filter.1 hμW).2
  set v := wtProj μ s
  have hvS : v ∈ S := hS2 μ s hs
  have hvv : wtProj μ v = v := by rw [wtProj_wtProj, if_pos rfl]
  have hhwv : ∀ i j, i < j → rowOp i j v = 0 := by
    intro i j hij
    by_contra hne
    obtain ⟨μ', h1, h2, h3⟩ := rowOp_shift hvv hij hne
    have hmem : μ' ∈ W := hmemW μ' (h2.trans hμsum) ⟨rowOp i j v, hS3 i j v hvS, by rw [h1]; exact hne⟩
    exact absurd (hμmax μ' hmem) (not_le.2 h3)
  exact hvne (hS4 v hvS (hhw v μ hhwv hvv))

end GroundTheory.Automorphic.HarishChandra
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.Fischer =====

-- ===== clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.Injective =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.HarishChandraCentre.Injective", "h": "module\n\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.Projection\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.FischerForm\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.Fischer\npublic import Mathlib.Algebra.MvPolynomial.Funext\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Automorphic.HarishChandra

attribute [local instance 100] LieRing.ofAssociativeRing

open MvPolynomial

variable {n : ℕ}

theorem exists_adjoint (u : U n) :
    ∃ u' : U n, ∀ f g : Poly n, fischer (rho 0 u f) g = fischer f (rho 0 u' g) := by
  induction u using U.induction with
  | halg r =>
    refine ⟨algebraMap ℂ (U n) (star r), fun f g => ?_⟩
    simp only [AlgHom.commutes, Module.algebraMap_end_apply, fischer_smul_left, fischer_smul_right]
  | hι X =>
    refine ⟨∑ a : Fin n × Fin n, star (X a.1 a.2) • e (a.2, a.1), fun f g => ?_⟩
    rw [ι_eq_sum_e]

    simp only [map_sum, map_smul, LinearMap.sum_apply, LinearMap.smul_apply, fischer_sum_left,
    fischer_sum_right, fischer_smul_left, fischer_smul_right]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [show e a = e (a.1, a.2) from rfl, rho_zero_e, rho_zero_e, fischer_rowOp]
  | hmul a b ha hb =>
    obtain ⟨a', ha'⟩ := ha
    obtain ⟨b', hb'⟩ := hb
    refine ⟨b' * a', fun f g => ?_⟩
    rw [map_mul, Module.End.mul_apply, ha', hb', map_mul, Module.End.mul_apply]
  | hadd a b ha hb =>
    obtain ⟨a', ha'⟩ := ha
    obtain ⟨b', hb'⟩ := hb
    refine ⟨a' + b', fun f g => ?_⟩
    rw [map_add (f := _), LinearMap.add_apply, fischer_add_left, ha', hb', map_add (f := _), LinearMap.add_apply,
      fischer_add_right]

theorem eq_zero_of_mem_center_of_hcProjLin_eq_zero {z : U n}
    (hz : z ∈ Subalgebra.center ℂ (U n)) (h : hcProjLin z = 0) : z = 0 := by
  obtain ⟨z', hz'⟩ := exists_adjoint z
  have hc : ∀ u : U n, u * z = z * u := fun u => (Subalgebra.mem_center_iff.1 hz) u
  apply eq_zero_of_rho_zero_eq_zero
  refine eq_zero_of_forall_highestWeight (rho 0 z) (rho 0 z') ?_ hz' ?_ ?_
  · intro i j
    rw [← rho_zero_e, ← map_mul, ← map_mul, hc]
  · rw [← map_mul, ← map_mul, hc]
  · intro v μ hup hwt
    have := rep_apply_of_highestWeight (rho 0) (fun i => (μ i : ℂ)) (v := v)
      (fun a ha => by
        rw [show e a = e (a.1, a.2) from rfl, rho_zero_e]
        exact hup a.1 a.2 ha)
      (fun k => by rw [rho_zero_e]; exact rowOp_self_of_wtProj μ v k hwt)
      (fun k => hc (e (k, k)))
    rw [this, h, map_zero, zero_smul]

theorem hcProjLin_injOn_center :
    Set.InjOn (hcProjLin (n := n)) (Subalgebra.center ℂ (U n) : Set (U n)) := by
  intro z hz z' hz' h
  have := eq_zero_of_mem_center_of_hcProjLin_eq_zero (Subalgebra.sub_mem _ hz hz')
    (by rw [map_sub, h, sub_self])
  exact sub_eq_zero.1 this

theorem translate_neg_translate (c : Fin n → ℂ) (p : MvPolynomial (Fin n) ℂ) :
    translate (-c) (translate c p) = p := by
  refine MvPolynomial.funext fun lam => ?_
  rw [eval_translate, eval_translate, neg_add_cancel_right]

theorem translate_injective (c : Fin n → ℂ) : Function.Injective (translate (n := n) c) :=
  Function.LeftInverse.injective (translate_neg_translate c)

theorem harishChandraHom_injective : Function.Injective (harishChandraHom (n := n)) := by
  intro z z' h
  rw [harishChandraHom_apply, harishChandraHom_apply] at h
  exact Subtype.ext (hcProjLin_injOn_center z.2 z'.2 (translate_injective _ h))

end GroundTheory.Automorphic.HarishChandra
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.Injective =====

-- ===== clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.LeadingTerm =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.HarishChandraCentre.LeadingTerm", "h": "module\n\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.Projection\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.Capelli\npublic import Mathlib.RingTheory.MvPolynomial.Symmetric.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Automorphic.HarishChandra

attribute [local instance 100] LieRing.ofAssociativeRing

open MvPolynomial

variable {n : ℕ}

noncomputable abbrev polyLE (n d : ℕ) : Submodule ℂ (MvPolynomial (Fin n) ℂ) := restrictTotalDegree (Fin n) ℂ d

theorem mem_polyLE {d : ℕ} {p : MvPolynomial (Fin n) ℂ} : p ∈ polyLE n d ↔ p.totalDegree ≤ d := by
  rw [polyLE, mem_restrictTotalDegree]

theorem polyLE_mono {d d' : ℕ} (h : d ≤ d') : polyLE n d ≤ polyLE n d' :=
  fun _ hp => mem_polyLE.2 ((mem_polyLE.1 hp).trans h)

theorem sum_diagExp_le (m : Fin n × Fin n →₀ ℕ) :
    ((diagExp m).sum fun _ e => e) ≤ m.degree := by
  rw [Finsupp.sum_fintype _ _ (fun _ => rfl), Finsupp.degree_eq_sum, Fintype.sum_prod_type]
  refine Finset.sum_le_sum fun i _ => ?_
  rw [diagExp_apply]
  exact Finset.single_le_sum (f := fun j => m (i, j)) (fun _ _ => Nat.zero_le _) (Finset.mem_univ i)

theorem hcProjLin_canon_mem_polyLE {d : ℕ} {m : Fin n × Fin n →₀ ℕ} (hm : m.degree ≤ d) :
    hcProjLin (canon m) ∈ polyLE n d := by
  by_cases h : IsDiagExp m
  · rw [hcProjLin_canon_of_isDiagExp h, mem_polyLE]
    exact (totalDegree_monomial_le _ _).trans ((sum_diagExp_le m).trans hm)
  · rw [hcProjLin_canon_of_not h]
    exact Submodule.zero_mem _

theorem hcProjLin_mem_polyLE {d : ℕ} {u : U n} (hu : u ∈ filt d) : hcProjLin u ∈ polyLE n d := by
  have hu' : u ∈ Submodule.span ℂ {u | ∃ m : Fin n × Fin n →₀ ℕ, (∀ a ∈ m.support, True) ∧
      0 ≤ m.degree ∧ m.degree ≤ d ∧ canon m = u} := filt_le_canonSpan d hu
  clear hu
  induction hu' using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨m, -, -, hm, rfl⟩ := hx
    exact hcProjLin_canon_mem_polyLE hm
  | zero => rw [map_zero]; exact Submodule.zero_mem _
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
  | smul r x _ hx => rw [map_smul]; exact Submodule.smul_mem _ r hx

noncomputable def diagMain (w : List (Fin n × Fin n)) : MvPolynomial (Fin n) ℂ := by
  classical
  exact if ∀ a ∈ w, a.1 = a.2 then (w.map fun a => X a.1).prod else 0

theorem diagExp_add (m m' : Fin n × Fin n →₀ ℕ) : diagExp (m + m') = diagExp m + diagExp m' := by
  ext i; simp

theorem diagExp_single (i : Fin n) : diagExp (Finsupp.single (i, i) 1) = Finsupp.single i 1 := by
  ext j
  rw [diagExp_apply, Finsupp.single_apply, Finsupp.single_apply]
  by_cases h : i = j
  · subst h; simp
  · simp [h]

theorem monomial_diagExp_toFinsupp (w : List (Fin n × Fin n)) (hw : ∀ a ∈ w, a.1 = a.2) :
    monomial (diagExp (Multiset.toFinsupp (w : Multiset (Fin n × Fin n)))) (1 : ℂ) =
      (w.map fun a => X a.1).prod := by
  induction w with
  | nil =>
    have : diagExp (Multiset.toFinsupp (([] : List (Fin n × Fin n)) : Multiset (Fin n × Fin n))) = 0 := by
      ext; simp
    rw [this, monomial_zero', C_1]
    simp
  | cons a w ih =>
    rw [show ((a :: w : List _) : Multiset _) = {a} + (w : Multiset (Fin n × Fin n)) by simp,
      Multiset.toFinsupp_add, Multiset.toFinsupp_singleton, diagExp_add,
      show a = (a.1, a.1) from Prod.ext rfl (hw a (List.mem_cons_self ..)).symm, diagExp_single,
      ← one_mul (1 : ℂ), ← monomial_mul, ih fun b hb => hw b (List.mem_cons_of_mem _ hb),
      List.map_cons, List.prod_cons, ← pow_one (X a.1), X_pow_eq_monomial]

theorem hcProjLin_word_sub_mem (w : List (Fin n × Fin n)) :
    hcProjLin (word w) - diagMain w ∈ polyLE n (w.length - 1) := by
  classical
  set M := Multiset.toFinsupp (w : Multiset (Fin n × Fin n))
  have h1 := hcProjLin_mem_polyLE (word_sub_canon_mem_filt w)
  rw [map_sub] at h1
  have h2 : hcProjLin (canon M) = diagMain w := by
    by_cases hw : ∀ a ∈ w, a.1 = a.2
    · have hd : IsDiagExp M := by
        intro a ha
        have : a ∈ w := by
          by_contra h'
          apply ha
          rw [Multiset.toFinsupp_apply]
          exact Multiset.count_eq_zero.2 (fun hm => h' (Multiset.mem_coe.1 hm))
        exact hw a this
      rw [hcProjLin_canon_of_isDiagExp hd, monomial_diagExp_toFinsupp w hw, diagMain, if_pos hw]
    · have hd : ¬ IsDiagExp M := by
        push Not at hw
        obtain ⟨a, ha, hne⟩ := hw
        intro hd
        refine hne (hd a ?_)
        rw [Multiset.toFinsupp_apply]
        exact (Multiset.count_pos.2 (Multiset.mem_coe.2 ha)).ne'
      rw [hcProjLin_canon_of_not hd, diagMain, if_neg hw]
  rwa [h2] at h1

theorem const_of_forall_rotate {k : ℕ} {i : Fin (k + 1) → Fin n}
    (h : ∀ t, i t = i (finRotate (k + 1) t)) (t : Fin (k + 1)) : i t = i 0 := by
  induction t using Fin.induction with
  | zero => rfl
  | succ t ih =>
    have := h (Fin.castSucc t)
    rw [finRotate_apply, Fin.coeSucc_eq_succ] at this
    rw [← this, ih]

theorem diagMain_capelliWord {k : ℕ} (i : Fin (k + 1) → Fin n) :
    diagMain (List.ofFn fun t : Fin (k + 1) => (i t, i (finRotate (k + 1) t))) =
      ∑ c : Fin n, if i = (fun _ => c) then X c ^ (k + 1) else 0 := by
  classical
  by_cases h : ∀ t, i t = i (finRotate (k + 1) t)
  · have hc := const_of_forall_rotate h
    have hall : ∀ a ∈ List.ofFn (fun t : Fin (k + 1) => (i t, i (finRotate (k + 1) t))),
        a.1 = a.2 := by
      intro a ha
      obtain ⟨t, rfl⟩ := List.mem_ofFn.1 ha
      exact h t
    rw [diagMain, if_pos hall, List.map_ofFn, List.prod_ofFn]
    rw [Finset.sum_eq_single (i 0)]
    · rw [if_pos (funext hc)]
      simp only [Function.comp_apply, hc, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
    · intro c _ hc'
      rw [if_neg]
      intro he
      exact hc' (by rw [he])
    · simp
  · have hnot : ¬ ∀ a ∈ List.ofFn (fun t : Fin (k + 1) => (i t, i (finRotate (k + 1) t))),
        a.1 = a.2 := by
      intro hall
      exact h fun t => hall _ (List.mem_ofFn.2 ⟨t, rfl⟩)
    rw [diagMain, if_neg hnot]
    refine (Finset.sum_eq_zero fun c _ => ?_).symm
    rw [if_neg]
    rintro rfl
    exact h fun t => rfl

theorem sum_diagMain_capelliWord (k : ℕ) :
    ∑ i : Fin (k + 1) → Fin n,
      diagMain (List.ofFn fun t : Fin (k + 1) => (i t, i (finRotate (k + 1) t))) =
        psum (Fin n) ℂ (k + 1) := by
  classical
  simp_rw [diagMain_capelliWord]
  rw [Finset.sum_comm, psum]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [Finset.sum_ite_eq' Finset.univ (fun _ => c), if_pos (Finset.mem_univ _)]

theorem hcProjLin_capelli_sub_mem (k : ℕ) :
    hcProjLin (capelli (n := n) (k + 1)) - psum (Fin n) ℂ (k + 1) ∈ polyLE n k := by

  rw [capelli_eq_sum_word, map_sum, ← sum_diagMain_capelliWord, ← Finset.sum_sub_distrib]
  refine Submodule.sum_mem _ fun i _ => ?_
  have := hcProjLin_word_sub_mem (List.ofFn fun t : Fin (k + 1) => (i t, i (finRotate (k + 1) t)))
  rwa [List.length_ofFn, Nat.add_sub_cancel] at this

theorem translate_X (c : Fin n → ℂ) (i : Fin n) : translate c (X i) = X i + C (c i) := by
  simp [translate]

theorem translate_C (c : Fin n → ℂ) (a : ℂ) : translate c (C a) = C a := by
  simp [translate]

theorem mul_X_mem_polyLE {d : ℕ} {p : MvPolynomial (Fin n) ℂ} (hp : p ∈ polyLE n d) (i : Fin n) :
    p * X i ∈ polyLE n (d + 1) := by
  rw [mem_polyLE] at *
  exact (totalDegree_mul p (X i)).trans (by rw [totalDegree_X]; omega)

theorem mul_C_mem_polyLE {d : ℕ} {p : MvPolynomial (Fin n) ℂ} (hp : p ∈ polyLE n d) (a : ℂ) :
    p * C a ∈ polyLE n d := by
  rw [mem_polyLE] at *
  exact (totalDegree_mul p (C a)).trans (by rw [totalDegree_C]; omega)

theorem translate_sub_mem_polyLE (c : Fin n → ℂ) :
    ∀ (d : ℕ) (p : MvPolynomial (Fin n) ℂ), p ∈ polyLE n d → translate c p - p ∈ polyLE n (d - 1) := by
  intro d
  induction d with
  | zero =>
    intro p hp
    rw [mem_polyLE, Nat.le_zero, totalDegree_eq_zero_iff_eq_C] at hp
    rw [hp, translate_C, sub_self]
    exact Submodule.zero_mem _
  | succ d ih =>
    intro p hp

    rw [p.as_sum, map_sum, ← Finset.sum_sub_distrib]
    refine Submodule.sum_mem _ fun s hs => ?_
    have hsd : (s.sum fun _ e => e) ≤ d + 1 := by
      have := mem_polyLE.1 hp
      rw [totalDegree] at this
      exact (Finset.le_sup hs).trans this
    by_cases hs0 : s = 0
    · rw [hs0, monomial_zero', translate_C, sub_self]
      exact Submodule.zero_mem _
    obtain ⟨i, hi⟩ := Finsupp.ne_iff.1 hs0
    set s' := s - Finsupp.single i 1
    have hss : s = s' + Finsupp.single i 1 := by
      rw [tsub_add_cancel_of_le]
      intro j
      by_cases hj : j = i
      · subst hj; simp [Nat.one_le_iff_ne_zero.2 hi]
      · simp [Ne.symm hj]
    have hs'd : (s'.sum fun _ e => e) ≤ d := by
      have : (s.sum fun _ e => e) = (s'.sum fun _ e => e) + 1 := by
        rw [hss, Finsupp.sum_add_index' (fun _ => rfl) (fun _ _ _ => rfl),
          Finsupp.sum_single_index rfl]
      omega
    have hmono : monomial s (AddMonoidAlgebra.coeff p s) = monomial (s' + Finsupp.single i 1) (AddMonoidAlgebra.coeff p s) := by
      rw [← hss]
    rw [hmono, monomial_add_single, pow_one, map_mul, translate_X]
    set m' := monomial s' (AddMonoidAlgebra.coeff p s)
    have hm' : m' ∈ polyLE n d := mem_polyLE.2 ((totalDegree_monomial_le _ _).trans hs'd)
    have hT : translate c m' - m' ∈ polyLE n (d - 1) := ih m' hm'
    have hT' : translate c m' ∈ polyLE n d := by
      have := Submodule.add_mem _ (polyLE_mono (Nat.sub_le d 1) hT) hm'
      rwa [sub_add_cancel] at this
    have : translate c m' * (X i + C (c i)) - m' * X i =
        (translate c m' - m') * X i + translate c m' * C (c i) := by ring
    rw [this, Nat.add_sub_cancel]
    refine Submodule.add_mem _ ?_ (mul_C_mem_polyLE hT' _)
    rcases Nat.eq_zero_or_pos d with hd | hd
    · subst hd
      have hs'0 : s' = 0 := by
        ext j
        have : (s'.sum fun _ e => e) = 0 := Nat.le_zero.1 hs'd
        rw [Finsupp.sum, Finset.sum_eq_zero_iff] at this
        by_contra hj
        exact hj (this j (Finsupp.mem_support_iff.2 hj))
      simp only [m', hs'0, monomial_zero', translate_C, sub_self, zero_mul]
      exact Submodule.zero_mem _
    · have := mul_X_mem_polyLE hT i
      rwa [Nat.sub_add_cancel hd] at this

theorem psum_mem_polyLE (k : ℕ) : psum (Fin n) ℂ k ∈ polyLE n k := by
  rw [psum]
  refine Submodule.sum_mem _ fun i _ => ?_
  rw [mem_polyLE]
  exact (totalDegree_pow _ _).trans (by rw [totalDegree_X, mul_one])

theorem totalDegree_harishChandraHom_capelli_sub (k : ℕ) :
    (harishChandraHom (⟨capelli (k + 1), capelli_mem_center _⟩ : Subalgebra.center ℂ (U n)) -
      psum (Fin n) ℂ (k + 1)).totalDegree < k + 1 := by
  rw [harishChandraHom_apply]
  set P := hcProjLin (capelli (n := n) (k + 1))
  have h1 : P - psum (Fin n) ℂ (k + 1) ∈ polyLE n k := hcProjLin_capelli_sub_mem k
  have hP : P ∈ polyLE n (k + 1) := by
    have := Submodule.add_mem _ (polyLE_mono (Nat.le_succ k) h1) (psum_mem_polyLE (k + 1))
    rwa [sub_add_cancel] at this
  have h2 := translate_sub_mem_polyLE (-rhoVec n) (k + 1) P hP
  rw [Nat.add_sub_cancel] at h2
  have : translate (-rhoVec n) P - psum (Fin n) ℂ (k + 1) =
      (translate (-rhoVec n) P - P) + (P - psum (Fin n) ℂ (k + 1)) := by ring
  rw [this]
  exact Nat.lt_succ_of_le (mem_polyLE.1 (Submodule.add_mem _ h2 h1))

end GroundTheory.Automorphic.HarishChandra
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.LeadingTerm =====

-- ===== clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.Symmetric =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.HarishChandraCentre.Symmetric", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\npublic import Mathlib.RingTheory.MvPolynomial.Symmetric.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\npublic import Mathlib.RingTheory.MvPolynomial.Symmetric.FundamentalTheorem\npublic import Mathlib.RingTheory.MvPolynomial.Symmetric.NewtonIdentities\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.MvPolynomial.CommRing\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Automorphic.HarishChandra

open MvPolynomial Finset

variable {n : ℕ}

noncomputable abbrev psumFin (k : Fin n) : MvPolynomial (Fin n) ℂ := psum (Fin n) ℂ ((k : ℕ) + 1)

theorem esymm_mem_adjoin_psum (k : ℕ) (hk : k ≤ n) :
    esymm (Fin n) ℂ k ∈ Algebra.adjoin ℂ (Set.range (psumFin (n := n))) := by
  induction k using Nat.strong_induction_on with
  | _ k ih =>
  set A := Algebra.adjoin ℂ (Set.range (psumFin (n := n)))
  rcases Nat.eq_zero_or_pos k with rfl | hk0
  · rw [esymm_zero]; exact A.one_mem
  have hps : ∀ j, 1 ≤ j → j ≤ n → psum (Fin n) ℂ j ∈ A := by
    intro j hj1 hjn
    refine Algebra.subset_adjoin ⟨⟨j - 1, by omega⟩, ?_⟩
    show psum (Fin n) ℂ (j - 1 + 1) = psum (Fin n) ℂ j
    rw [Nat.sub_add_cancel hj1]
  have hsum : (k : MvPolynomial (Fin n) ℂ) * esymm (Fin n) ℂ k ∈ A := by
    rw [mul_esymm_eq_sum]
    refine A.mul_mem (A.pow_mem (A.neg_mem A.one_mem) _) (A.sum_mem fun a ha => ?_)
    rw [mem_filter, Finset.HasAntidiagonal.mem_antidiagonal] at ha
    exact A.mul_mem (A.mul_mem (A.pow_mem (A.neg_mem A.one_mem) _) (ih a.1 ha.2 (by omega)))
      (hps a.2 (by omega) (by omega))
  have hk' : (k : ℂ) ≠ 0 := by exact_mod_cast hk0.ne'
  have e : esymm (Fin n) ℂ k =
      (k : ℂ)⁻¹ • ((k : MvPolynomial (Fin n) ℂ) * esymm (Fin n) ℂ k) := by
    rw [← map_natCast (C : ℂ →+* MvPolynomial (Fin n) ℂ) k, smul_eq_C_mul, ← mul_assoc, ← C_mul,
      inv_mul_cancel₀ hk', C_1, one_mul]
  rw [e]
  exact A.smul_mem hsum _

theorem aeval_mem_of_forall_mem {A : Subalgebra ℂ (MvPolynomial (Fin n) ℂ)}
    (f : Fin n → MvPolynomial (Fin n) ℂ) (hf : ∀ i, f i ∈ A) (F : MvPolynomial (Fin n) ℂ) :
    aeval f F ∈ A := by
  induction F using MvPolynomial.induction_on with
  | C r => rw [aeval_C]; exact A.algebraMap_mem r
  | add p q hp hq => rw [map_add (f := _)]; exact A.add_mem hp hq
  | mul_X p i hp => rw [map_mul, aeval_X]; exact A.mul_mem hp (hf i)

theorem mem_adjoin_psum_of_isSymmetric {p : MvPolynomial (Fin n) ℂ} (hp : p.IsSymmetric) :
    p ∈ Algebra.adjoin ℂ (Set.range (psumFin (n := n))) := by
  obtain ⟨F, hF⟩ := esymmAlgHom_fin_surjective ℂ (le_refl n) ⟨p, hp⟩
  have e := congrArg Subtype.val hF
  rw [esymmAlgHom_apply] at e
  have e' : aeval (fun i : Fin n => esymm (Fin n) ℂ ((i : ℕ) + 1)) F = p := e
  rw [← e']
  exact aeval_mem_of_forall_mem _ (fun i => esymm_mem_adjoin_psum _ (by omega)) F

def TopClose (k : ℕ) (a b : MvPolynomial (Fin n) ℂ) : Prop :=
  a.totalDegree ≤ k ∧ b.totalDegree ≤ k ∧ (a = b ∨ (a - b).totalDegree < k)

theorem TopClose.one : TopClose (n := n) 0 1 1 := by
  refine ⟨by simp, by simp, Or.inl rfl⟩

theorem TopClose.mul {k l : ℕ} {a b a' b' : MvPolynomial (Fin n) ℂ} (h : TopClose k a b)
    (h' : TopClose l a' b') : TopClose (k + l) (a * a') (b * b') := by
  obtain ⟨ha, hb, hab⟩ := h
  obtain ⟨ha', hb', hab'⟩ := h'
  refine ⟨(totalDegree_mul _ _).trans (add_le_add ha ha'),
    (totalDegree_mul _ _).trans (add_le_add hb hb'), ?_⟩
  by_cases e : a = b ∧ a' = b'
  · left; rw [e.1, e.2]
  right
  have key : a * a' - b * b' = (a - b) * a' + b * (a' - b') := by ring
  rw [key]
  refine lt_of_le_of_lt (totalDegree_add _ _) (max_lt ?_ ?_)
  · rcases hab with h1 | h1
    · rw [h1, sub_self, zero_mul, totalDegree_zero]
      rcases hab' with h2 | h2
      · exact absurd ⟨h1, h2⟩ e
      · omega
    · exact lt_of_le_of_lt (totalDegree_mul _ _) (by omega)
  · rcases hab' with h1 | h1
    · rw [h1, sub_self, mul_zero, totalDegree_zero]
      rcases hab with h2 | h2
      · exact absurd ⟨h2, h1⟩ e
      · omega
    · exact lt_of_le_of_lt (totalDegree_mul _ _) (by omega)

theorem TopClose.pow {k : ℕ} {a b : MvPolynomial (Fin n) ℂ} (h : TopClose k a b) (c : ℕ) :
    TopClose (c * k) (a ^ c) (b ^ c) := by
  induction c with
  | zero => simpa using TopClose.one
  | succ c ih =>
    rw [pow_succ, pow_succ, Nat.succ_mul]
    exact ih.mul h

theorem TopClose.prod {ι : Type*} (s : Finset ι) (k : ι → ℕ) (a b : ι → MvPolynomial (Fin n) ℂ)
    (h : ∀ i ∈ s, TopClose (k i) (a i) (b i)) :
    TopClose (∑ i ∈ s, k i) (∏ i ∈ s, a i) (∏ i ∈ s, b i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using TopClose.one
  | insert i s hi ih =>
    rw [prod_insert hi, prod_insert hi, sum_insert hi]
    exact (h i (mem_insert_self _ _)).mul (ih fun j hj => h j (mem_insert_of_mem hj))

theorem isHomogeneous_psum (k : ℕ) : (psum (Fin n) ℂ k).IsHomogeneous k := by
  unfold psum
  exact IsHomogeneous.sum _ _ _ fun i _ => isHomogeneous_X_pow i k

def psumWt (c : Fin n →₀ ℕ) : ℕ := ∑ i ∈ c.support, c i * ((i : ℕ) + 1)

theorem symmetric_le_adjoin (q : Fin n → MvPolynomial (Fin n) ℂ) (hq : ∀ k, (q k).IsSymmetric)
    (hdeg : ∀ k, (q k - psum (Fin n) ℂ ((k : ℕ) + 1)).totalDegree < (k : ℕ) + 1) (d : ℕ) :
    ∀ p : MvPolynomial (Fin n) ℂ, p.IsSymmetric → p.totalDegree ≤ d →
      p ∈ Algebra.adjoin ℂ (Set.range q) := by
  set B := Algebra.adjoin ℂ (Set.range q)
  have hBsym : ∀ r ∈ B, r.IsSymmetric := by
    have : B ≤ symmetricSubalgebra (Fin n) ℂ :=
      Algebra.adjoin_le (by rintro _ ⟨k, rfl⟩; exact hq k)
    exact fun r hr => this hr
  have hclose : ∀ i : Fin n, TopClose ((i : ℕ) + 1) (psumFin i) (q i) := by
    intro i
    have h1 : (psumFin i).totalDegree ≤ (i : ℕ) + 1 :=
      (isHomogeneous_psum _).totalDegree_le
    refine ⟨h1, ?_, Or.inr ?_⟩
    · have : q i = psumFin i + (q i - psumFin i) := by ring
      rw [this]
      exact (totalDegree_add _ _).trans (max_le h1 (hdeg i).le)
    · rw [← neg_sub, totalDegree_neg]; exact hdeg i
  induction d with
  | zero =>
    intro p _ hp
    rw [totalDegree_eq_zero_iff_eq_C.1 (show p.totalDegree = 0 by omega)]
    exact B.algebraMap_mem _
  | succ d ih =>
    intro p hp hpd
    obtain ⟨F, rfl⟩ : ∃ F, aeval psumFin F = p := by
      have := mem_adjoin_psum_of_isSymmetric hp
      rw [Algebra.adjoin_range_eq_range_aeval] at this
      exact this
    set P : (Fin n →₀ ℕ) → MvPolynomial (Fin n) ℂ := fun c => c.prod fun i k => psumFin i ^ k
    set Q : (Fin n →₀ ℕ) → MvPolynomial (Fin n) ℂ := fun c => c.prod fun i k => q i ^ k
    have hPhom : ∀ c, (P c).IsHomogeneous (psumWt c) := by
      intro c
      simp only [P, Finsupp.prod, psumWt]
      refine IsHomogeneous.prod _ _ _ fun i _ => ?_
      rw [mul_comm]
      exact (isHomogeneous_psum _).pow _
    have hPQ : ∀ c, TopClose (psumWt c) (P c) (Q c) := by
      intro c
      simp only [P, Q, Finsupp.prod, psumWt]
      exact TopClose.prod _ _ _ _ fun i _ => (hclose i).pow (c i)
    have hF : aeval psumFin F = ∑ c ∈ F.support, AddMonoidAlgebra.coeff F c • P c := by
      conv_lhs => rw [F.as_sum]

      rw [map_sum]
      refine sum_congr rfl fun c _ => ?_
      rw [aeval_monomial, Algebra.smul_def]
    set S := F.support.filter fun c => psumWt c = d + 1
    set r := ∑ c ∈ S, AddMonoidAlgebra.coeff F c • Q c
    have hr : r ∈ B := by
      refine B.sum_mem fun c _ => B.smul_mem ?_ _
      simp only [Q, Finsupp.prod]
      exact B.prod_mem fun i _ => B.pow_mem (Algebra.subset_adjoin ⟨i, rfl⟩) _
    have htop : homogeneousComponent (d + 1) (aeval psumFin F) = ∑ c ∈ S, AddMonoidAlgebra.coeff F c • P c := by

      rw [hF, map_sum, sum_filter]
      refine sum_congr rfl fun c _ => ?_
      rw [map_smul, homogeneousComponent_of_mem (hPhom c)]
      by_cases h : psumWt c = d + 1
      · rw [if_pos h.symm, if_pos h]
      · rw [if_neg (Ne.symm h), if_neg h, smul_zero]
    have hlow : (aeval psumFin F - homogeneousComponent (d + 1) (aeval psumFin F)).totalDegree ≤ d := by
      set p := aeval psumFin F
      rw [totalDegree, Finset.sup_le_iff]
      intro m hm
      rw [mem_support_iff, MvPolynomial.coeff_sub, coeff_homogeneousComponent] at hm
      have hm' : m ∈ p.support := by
        rw [mem_support_iff]; intro h0; rw [h0] at hm; simp at hm
      have h1 := le_totalDegree hm'
      by_cases hd : m.degree = d + 1
      · rw [if_pos hd, sub_self] at hm; exact absurd rfl hm
      · have : (m.sum fun _ e => e) = m.degree := by
          rfl
        rw [this] at h1 ⊢
        omega
    have hdiff : (∑ c ∈ S, AddMonoidAlgebra.coeff F c • P c - r).totalDegree ≤ d := by
      rw [← sum_sub_distrib]
      refine totalDegree_finsetSum_le fun c hc => ?_
      rw [← smul_sub]
      refine (totalDegree_smul_le _ _).trans ?_
      have hwc : psumWt c = d + 1 := (mem_filter.1 hc).2
      rcases (hPQ c).2.2 with h | h
      · rw [h, sub_self, totalDegree_zero]; exact Nat.zero_le _
      · rw [hwc] at h; omega
    have hkey : (aeval psumFin F - r).totalDegree ≤ d := by
      have : aeval psumFin F - r = (aeval psumFin F - homogeneousComponent (d + 1) (aeval psumFin F))
          + (∑ c ∈ S, AddMonoidAlgebra.coeff F c • P c - r) := by rw [htop]; ring
      rw [this]
      exact (totalDegree_add _ _).trans (max_le hlow hdiff)
    have hsym : (aeval psumFin F - r).IsSymmetric :=
      (symmetricSubalgebra (Fin n) ℂ).sub_mem hp (hBsym r hr)
    have := B.add_mem (ih _ hsym hkey) hr
    rwa [sub_add_cancel] at this

theorem adjoin_eq_symmetricSubalgebra (q : Fin n → MvPolynomial (Fin n) ℂ)
    (hq : ∀ k, (q k).IsSymmetric)
    (hdeg : ∀ k, (q k - psum (Fin n) ℂ ((k : ℕ) + 1)).totalDegree < (k : ℕ) + 1) :
    Algebra.adjoin ℂ (Set.range q) = symmetricSubalgebra (Fin n) ℂ := by
  apply le_antisymm
  · exact Algebra.adjoin_le (by rintro _ ⟨k, rfl⟩; exact hq k)
  · intro p hp
    exact symmetric_le_adjoin q hq hdeg _ p hp le_rfl

end GroundTheory.Automorphic.HarishChandra
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.HarishChandraCentre.Symmetric =====

-- ===== clump member: GroundTheory.AutomorphicForms.HarishChandraCentre =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.HarishChandraCentre", "h": "module\n\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.Projection\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.Injective\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.VermaCoordEqZeroOfMemNPlusU\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.LeadingTerm\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.Symmetric\npublic import GroundTheory.AutomorphicForms.HarishChandraCentre.Capelli\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Automorphic.HarishChandra

attribute [local instance 100] LieRing.ofAssociativeRing

open MvPolynomial

variable {n : ℕ}

theorem harishChandraHom_mem_symmetricSubalgebra (z : Subalgebra.center ℂ (U n)) :
    harishChandraHom z ∈ symmetricSubalgebra (Fin n) ℂ :=
  harishChandraHom_isSymmetric z

noncomputable def capelliCenter (k : ℕ) : Subalgebra.center ℂ (U n) :=
  ⟨capelli (k + 1), capelli_mem_center _⟩

theorem adjoin_harishChandraHom_capelli :
    Algebra.adjoin ℂ (Set.range fun k : Fin n => harishChandraHom (capelliCenter (n := n) k)) =
      symmetricSubalgebra (Fin n) ℂ :=
  adjoin_eq_symmetricSubalgebra _ (fun _ => harishChandraHom_isSymmetric _)
    (fun k => totalDegree_harishChandraHom_capelli_sub k)

theorem range_harishChandraHom :
    (harishChandraHom (n := n)).range = symmetricSubalgebra (Fin n) ℂ := by
  apply le_antisymm
  · rintro _ ⟨z, rfl⟩
    exact harishChandraHom_isSymmetric z
  · rw [← adjoin_harishChandraHom_capelli, Algebra.adjoin_le_iff]
    rintro _ ⟨k, rfl⟩
    exact ⟨_, rfl⟩

noncomputable def harishChandraEquiv :
    Subalgebra.center ℂ (U n) ≃ₐ[ℂ] symmetricSubalgebra (Fin n) ℂ :=
  (AlgEquiv.ofInjective harishChandraHom harishChandraHom_injective).trans
    (Subalgebra.equivOfEq _ _ range_harishChandraHom)

@[simp] theorem harishChandraEquiv_apply (z : Subalgebra.center ℂ (U n)) :
    (harishChandraEquiv z : MvPolynomial (Fin n) ℂ) = harishChandraHom z := rfl

end GroundTheory.Automorphic.HarishChandra
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.HarishChandraCentre =====
