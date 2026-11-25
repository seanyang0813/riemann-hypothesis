module

public import Mathlib.RingTheory.AdjoinRoot
public import Mathlib.Algebra.MvPolynomial.Monad
public import Development.EtaleCohomology.EtaleSheaves.EtaleBaseChangeFractionFieldIndEtaleOverPolynomi
public import Mathlib.Algebra.Colimit.Ring
public import Mathlib.CategoryTheory.Functor.OfSequence
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.AdjoinRootExtension.AdjoinRootOfInjective, Development.EtaleCohomology.EtaleSheaves.AdjoinRootExtension

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.AdjoinRootExtension.AdjoinRootOfInjective =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.AdjoinRootExtension.AdjoinRootOfInjective", "h": "module\n\npublic import Mathlib.RingTheory.AdjoinRoot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.MvPolynomial.Monad\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Polynomial

namespace LateralTheory.E.AICExtPf

universe u

def MonP (R : Type u) [CommRing R] : Type u := {p : R[X] // p.Monic ∧ 0 < p.natDegree}

variable (R : Type u) [CommRing R]

def stepIdeal : Ideal (MvPolynomial (MonP R) R) :=
  Ideal.span (Set.range fun p : MonP R => p.1.eval₂ MvPolynomial.C (MvPolynomial.X p))

abbrev StepRing : Type u := MvPolynomial (MonP R) R ⧸ stepIdeal R

def stepHom : R →+* StepRing R := algebraMap R (StepRing R)

lemma stepHom_eq : stepHom R = (Ideal.Quotient.mk (stepIdeal R)).comp MvPolynomial.C := rfl

lemma eval_map_hom {A B : Type*} [CommRing A] [CommRing B] (P : A[X]) (g : A →+* B) (a : A) :
    (P.map g).eval (g a) = g (P.eval a) := by
  rw [eval_map, eval₂_at_apply]

lemma step_root (p : MonP R) :
    (p.1.map (stepHom R)).eval (Ideal.Quotient.mk (stepIdeal R) (MvPolynomial.X p)) = 0 := by
  rw [eval_map, stepHom_eq, ← hom_eval₂]
  exact Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.subset_span ⟨p, rfl⟩)

lemma adjoinRoot_of_injective {T : Type u} [CommRing T] (q : T[X]) (hq : q.Monic)
    (hd : 0 < q.natDegree) : Function.Injective (AdjoinRoot.of q) := by
  rw [injective_iff_map_eq_zero]
  intro r hr
  by_contra h
  have h1 : AdjoinRoot.mk q (C r) = 0 := hr
  rw [AdjoinRoot.mk_eq_zero] at h1
  exact hq.not_dvd_of_natDegree_lt (by simpa using h) (by simpa using hd) h1

lemma finite_roots (F : Finset (MonP R)) : ∃ (T : Type u) (_ : CommRing T) (φ : R →+* T),
    Function.Injective φ ∧ ∀ p ∈ F, ∃ a : T, (p.1.map φ).eval a = 0 := by
  classical
  induction F using Finset.induction_on with
  | empty => exact ⟨R, inferInstance, RingHom.id R, Function.injective_id, by simp⟩
  | insert q F _ ih =>
    obtain ⟨T, _, φ, hφ, hF⟩ := ih
    by_cases hT : Subsingleton T
    · refine ⟨T, inferInstance, φ, hφ, fun p _ => ⟨0, Subsingleton.elim _ _⟩⟩
    haveI : Nontrivial T := not_subsingleton_iff_nontrivial.1 hT
    set q' := q.1.map φ with hq'
    have hm : q'.Monic := q.2.1.map φ
    have hd : 0 < q'.natDegree := by rw [hq', q.2.1.natDegree_map]; exact q.2.2
    refine ⟨AdjoinRoot q', inferInstance, (AdjoinRoot.of q').comp φ,
      (adjoinRoot_of_injective q' hm hd).comp hφ, ?_⟩
    intro p hp
    rcases Finset.mem_insert.1 hp with rfl | hp
    · refine ⟨AdjoinRoot.root q', ?_⟩
      rw [← Polynomial.map_map, eval_map, AdjoinRoot.eval₂_root]
    · obtain ⟨a, ha⟩ := hF p hp
      refine ⟨AdjoinRoot.of q' a, ?_⟩
      rw [← Polynomial.map_map, eval_map_hom, ha, map_zero]

theorem stepHom_injective : Function.Injective (stepHom R) := by
  classical
  rw [injective_iff_map_eq_zero]
  intro r hr
  have hmem : MvPolynomial.C r ∈ stepIdeal R := Ideal.Quotient.eq_zero_iff_mem.1 hr
  obtain ⟨S, hS, hx⟩ := Submodule.mem_span_finite_of_mem_span hmem
  rw [← Set.image_univ] at hS
  obtain ⟨F, -, rfl⟩ := Finset.subset_set_image_iff.1 hS
  obtain ⟨T, _, φ, hφ, hF⟩ := finite_roots R F
  let v : MonP R → T := fun p => if h : p ∈ F then (hF p h).choose else 0
  let ev := MvPolynomial.eval₂Hom φ v
  have hk : Ideal.span (↑(F.image fun p : MonP R => p.1.eval₂ MvPolynomial.C (MvPolynomial.X p)) :
      Set (MvPolynomial (MonP R) R)) ≤ RingHom.ker ev := by
    rw [Ideal.span_le]
    intro t ht
    obtain ⟨p, hp, rfl⟩ := Finset.mem_image.1 (Finset.mem_coe.1 ht)
    rw [SetLike.mem_coe, RingHom.mem_ker, hom_eval₂, MvPolynomial.eval₂Hom_comp_C]
    have : ev (MvPolynomial.X p) = (hF p hp).choose := by
      simp [ev, v, hp]
    rw [this, ← eval_map]
    exact (hF p hp).choose_spec
  have h0 : ev (MvPolynomial.C r) = 0 := RingHom.mem_ker.1 (hk hx)
  have : ev (MvPolynomial.C r) = φ r := by simp [ev]
  exact (injective_iff_map_eq_zero φ).1 hφ r (this ▸ h0)

theorem stepHom_isIntegral : (stepHom R).IsIntegral := by
  intro z
  change IsIntegral R z
  obtain ⟨q, rfl⟩ := Ideal.Quotient.mk_surjective z
  induction q using MvPolynomial.induction_on with
  | C a => exact isIntegral_algebraMap
  | add a b ha hb => rw [map_add (f := _)]; exact ha.add hb
  | mul_X a p ha =>
    rw [map_mul]
    refine ha.mul ⟨p.1, p.2.1, ?_⟩
    rw [← eval_map]
    exact step_root R p

theorem step_has_root (p : R[X]) (hp : p.Monic) (hd : 0 < p.natDegree) :
    ∃ a : StepRing R, (p.map (stepHom R)).eval a = 0 :=
  ⟨_, step_root R ⟨p, hp, hd⟩⟩

end LateralTheory.E.AICExtPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.AdjoinRootExtension.AdjoinRootOfInjective =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.AdjoinRootExtension =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.AdjoinRootExtension", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.AdjoinRootExtension.AdjoinRootOfInjective\npublic import Development.EtaleCohomology.EtaleSheaves.EtaleBaseChangeFractionFieldIndEtaleOverPolynomi\npublic import Mathlib.Algebra.Colimit.Ring\npublic import Mathlib.CategoryTheory.Functor.OfSequence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Polynomial

namespace LateralTheory.E.AICExtPf

def towerObj (C : CommRingCat.{0}) : ℕ → CommRingCat.{0}
  | 0 => C
  | n + 1 => CommRingCat.of (StepRing (towerObj C n))

def towerMap (C : CommRingCat.{0}) (n : ℕ) : towerObj C n ⟶ towerObj C (n + 1) :=
  CommRingCat.ofHom (stepHom (towerObj C n))

abbrev towerF (C : CommRingCat.{0}) : ℕ ⥤ CommRingCat.{0} := Functor.ofSequence (towerMap C)

def fm (C : CommRingCat.{0}) (i j : ℕ) (h : i ≤ j) : towerObj C i →+* towerObj C j :=
  ((towerF C).map (homOfLE h)).hom

instance (C : CommRingCat.{0}) :
    DirectedSystem (fun i => (towerObj C i : Type)) (fun i j h => fm C i j h) where
  map_self i x := by
    have h1 : (towerF C).map (homOfLE (le_refl i)) = 𝟙 _ :=
      (congrArg (towerF C).map (Subsingleton.elim _ _)).trans ((towerF C).map_id i)
    exact congrArg (fun φ : (towerF C).obj i ⟶ (towerF C).obj i => φ.hom x) h1
  map_map k j i hij hjk x := by
    show ((towerF C).map (homOfLE hij) ≫ (towerF C).map (homOfLE hjk)).hom x = _
    rw [← Functor.map_comp, homOfLE_comp]; rfl

lemma fm_succ (C : CommRingCat.{0}) (n : ℕ) (h : n ≤ n + 1) : fm C n (n + 1) h = stepHom (towerObj C n) := by
  have := Functor.ofSequence_map_homOfLE_succ (towerMap C) n
  simp only [fm]
  rw [this]; rfl

lemma fm_comp_succ (C : CommRingCat.{0}) (i j : ℕ) (h : i ≤ j) (h' : i ≤ j + 1) :
    fm C i (j + 1) h' = (stepHom (towerObj C j)).comp (fm C i j h) := by
  rw [← fm_succ C j (Nat.le_succ j)]
  show ((towerF C).map (homOfLE h')).hom =
    ((towerF C).map (homOfLE h) ≫ (towerF C).map (homOfLE (Nat.le_succ j))).hom
  rw [← Functor.map_comp, homOfLE_comp]

lemma fm_injective (C : CommRingCat.{0}) (i j : ℕ) (h : i ≤ j) : Function.Injective (fm C i j h) := by
  induction j, h using Nat.le_induction with
  | base => intro x y hxy; simpa [DirectedSystem.map_self (f := fun i j h => fm C i j h)] using hxy
  | succ j hij ih =>
    rw [fm_comp_succ C i j hij]
    exact (stepHom_injective _).comp ih

lemma fm_isIntegral (C : CommRingCat.{0}) (i j : ℕ) (h : i ≤ j) : (fm C i j h).IsIntegral := by
  induction j, h using Nat.le_induction with
  | base =>
    intro x
    have e : ∀ y, fm C i i le_rfl y = y := fun y => DirectedSystem.map_self (f := fun i j h => fm C i j h) y
    exact ⟨X - Polynomial.C x, monic_X_sub_C x, by simp [eval₂_sub, e]⟩
  | succ j hij ih =>
    rw [fm_comp_succ C i j hij]
    exact RingHom.IsIntegral.trans _ _ ih (stepHom_isIntegral _)

abbrev Lim (C : CommRingCat.{0}) : Type :=
  Ring.DirectLimit (fun i => (towerObj C i : Type)) (fun i j h => fm C i j h)

lemma of_comp (C : CommRingCat.{0}) (i j : ℕ) (h : i ≤ j) :
    (Ring.DirectLimit.of _ (fun i j h => fm C i j h) j).comp (fm C i j h) =
      Ring.DirectLimit.of _ (fun i j h => fm C i j h) i := by
  ext x
  exact Ring.DirectLimit.of_f (G := fun i => (towerObj C i : Type)) (f := fun i j h => fm C i j h) h x

theorem lim_aic (C : CommRingCat.{0}) : GlobalTheory.EtC.AIC (Lim C) := by
  intro p hp hd
  obtain ⟨n, q, hq⟩ := Ring.DirectLimit.Polynomial.exists_of p
  have hinj := Ring.DirectLimit.of_injective (fun i j h => fm C i j h) (fm_injective C) n
  have hqm : q.Monic := by
    apply hinj
    rw [← leadingCoeff_map_of_injective hinj, hq, hp.leadingCoeff, map_one]
  have hqd : 0 < q.natDegree := by
    rw [← natDegree_map_eq_of_injective hinj, hq]; exact hd
  obtain ⟨a, ha'⟩ : ∃ a : towerObj C (n + 1), (q.map (fm C n (n + 1) (Nat.le_succ n))).eval a = 0 := by
    rw [fm_succ]; exact step_has_root (towerObj C n) q hqm hqd
  refine ⟨Ring.DirectLimit.of _ (fun i j h => fm C i j h) (n + 1) a, ?_⟩
  rw [← hq, ← of_comp C n (n + 1) (Nat.le_succ n), ← Polynomial.map_map, Polynomial.eval_map,
    Polynomial.eval₂_at_apply, ha', map_zero]

theorem AICExt_of : LateralTheory.E.t_E3Cut.AICExt := by
  intro C
  refine ⟨CommRingCat.of (Lim C), CommRingCat.ofHom (Ring.DirectLimit.of _ (fun i j h => fm C i j h) 0),
    ?_, ?_, lim_aic C⟩
  · intro x
    obtain ⟨n, y, rfl⟩ := Ring.DirectLimit.exists_of x
    obtain ⟨p, hp, hy⟩ := fm_isIntegral C 0 n (Nat.zero_le n) y
    refine ⟨p, hp, ?_⟩
    change eval₂ (Ring.DirectLimit.of _ (fun i j h => fm C i j h) 0) _ p = 0
    rw [← of_comp C 0 n (Nat.zero_le n), ← hom_eval₂, hy, map_zero]
  · exact Ring.DirectLimit.of_injective (fun i j h => fm C i j h) (fm_injective C) 0

end LateralTheory.E.AICExtPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.AdjoinRootExtension =====
