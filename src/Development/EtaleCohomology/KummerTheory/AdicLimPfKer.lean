module

public import Mathlib.Basic.Finite.Defs
public import Mathlib.CategoryTheory.CofilteredSystem
public import Mathlib.CategoryTheory.Functor.OfSequence
public import Mathlib.Basic.Opposite
public import Mathlib.CategoryTheory.Category.Preorder
public import Development.EtaleCohomology.KummerTheory.AdicLimPf
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsBisTail, Development.EtaleCohomology.KummerTheory.AdicLimPfKer

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsBisTail =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsBisTail", "h": "module\n\npublic import Mathlib.Basic.Finite.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.CofilteredSystem\npublic import Mathlib.CategoryTheory.Functor.OfSequence\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Basic.Opposite\npublic import Mathlib.CategoryTheory.Category.Preorder\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory

theorem UpperTheory.Reformulated.B.DYra4.main.{u} :
    ∀ (S : ℕ → Type u) [∀ (a : ℕ), Finite (S a)] [∀ (a : ℕ), Nonempty (S a)] (t : (a : ℕ) → S (a + (1 : ℕ)) → S a),
      ∃ (s : (a : ℕ) → S a), ∀ (a : ℕ), t a (s (a + (1 : ℕ))) = s a := by
  intro S _ _ t
  let F : ℕᵒᵖ ⥤ Type u := Functor.ofOpSequence (X := S) (fun n => TypeCat.ofHom (t n))
  haveI : ∀ j : ℕᵒᵖ, Finite (F.obj j) := fun j => inferInstanceAs (Finite (S j.unop))
  haveI : ∀ j : ℕᵒᵖ, Nonempty (F.obj j) := fun j => inferInstanceAs (Nonempty (S j.unop))
  obtain ⟨x, hx⟩ := nonempty_sections_of_finite_inverse_system F
  refine ⟨fun a => x (Opposite.op a), fun a => ?_⟩
  have h := hx (homOfLE (Nat.le_succ a)).op
  rw [Functor.ofOpSequence_map_homOfLE_succ] at h
  exact h
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsBisTail =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.AdicLimPfKer =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.AdicLimPfKer", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.AdicLimPf\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsBisTail\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

universe u

namespace LateralTheory.KummerTheory.KerPf

variable (l : ℕ) [Fact l.Prime]

theorem redk (hA : A11) (E : Spc) (n i : ℤ) (x : Hl l E n i) (m : ℕ) :
    ∀ a : ℕ, red (l ^ (m + a)) (l ^ m) E n i (x.1 (m + a)) = x.1 m := by
  have hl : NeZero l := ⟨(Fact.out : l.Prime).ne_zero⟩
  intro a
  induction a with
  | zero => exact (@hA (l ^ m) (l ^ m) _ dvd_rfl E).2.2.1 n i _
  | succ a ih =>
    have h := (@hA (l ^ (m + (a + 1))) (l ^ (m + a)) _ (pow_dvd_pow l (by omega)) E).2.2.2 (l ^ m)
      (pow_dvd_pow l (by omega)) n i (x.1 (m + (a + 1)))
    rw [← h, ← ih]
    exact congrArg _ (x.2 (m + a))

omit [Fact l.Prime] in
theorem smul_zero_of (E : Spc) (n i : ℤ) (k b : ℕ) (hkb : k ≤ b) (z : Ht (l ^ k) E n i) : (l ^ b) • z = 0 := by
  rw [← Nat.cast_smul_eq_nsmul (ZMod (l ^ k)), (CharP.cast_eq_zero_iff (ZMod (l ^ k)) (l ^ k) _).2 (pow_dvd_pow l hkb), zero_smul]

theorem ker (hA : A11) (E : Spc) (i : ℤ) (hB : ∀ b, BockData l b E i)
    (hFin : ∀ (k : ℕ) (n : ℤ), Finite (Ht (l ^ k) E n i)) (n : ℤ) (b : ℕ) (x : Hl l E n i) (hx : lev l x b = 0) :
    ∃ y : Hl l E n i, x = ((l : ℤ_[l]) ^ b) • y := by
  obtain ⟨u, d, h⟩ := hB b
  let S : ℕ → Type 1 := fun a => {w : Ht (l ^ a) E n i // u a n w = x.1 (b + a)}
  have hS : ∀ a, Finite (S a) := fun a => by have := hFin a n; exact Subtype.finite
  have hN : ∀ a, Nonempty (S a) := fun a => by
    obtain ⟨w, hw⟩ := ((h a n).1 (x.1 (b + a))).1 (by rw [redk l hA E n i x b a]; exact hx)
    exact ⟨⟨w, hw⟩⟩
  let t : ∀ a, S (a + 1) → S a := fun a w => ⟨red (l ^ (a + 1)) (l ^ a) E n i w.1, by
    rw [← (h a n).2.2.2.2.2 w.1, w.2]; exact x.2 (b + a)⟩
  obtain ⟨s, hs⟩ := _root_.UpperTheory.Reformulated.B.DYra4.main S t
  let y : Hl l E n i := ⟨fun a => (s a).1, fun a => congrArg Subtype.val (hs a)⟩
  refine ⟨y, ?_⟩
  have e : ((l : ℤ_[l]) ^ b) • y = (l ^ b : ℕ) • y := by
    rw [← Nat.cast_smul_eq_nsmul ℤ_[l]]; push_cast; rfl
  rw [e]
  apply Subtype.ext
  funext k
  change x.1 k = (l ^ b) • (s k).1
  rcases le_or_gt b k with hk | hk
  · obtain ⟨a, rfl⟩ := Nat.exists_eq_add_of_le hk
    have hr := redk l hA E n i y a b
    rw [Nat.add_comm a b] at hr
    rw [← (h a n).2.2.2.1 ((s (b + a)).1)]
    change x.1 (b + a) = u a n (red _ _ E n i (y.1 (b + a)))
    rw [hr]
    exact (s a).2.symm
  · rw [smul_zero_of l E n i k b hk.le]
    obtain ⟨c, rfl⟩ := Nat.exists_eq_add_of_le hk.le
    rw [← redk l hA E n i x k c]
    change red _ _ E n i (lev l x (k + c)) = 0
    rw [hx, map_zero]

end LateralTheory.KummerTheory.KerPf

namespace LateralTheory.KummerTheory

theorem AdicKer_holds : AdicKer := fun hA l _ E i hB hFin n k x hx => KerPf.ker l hA E i hB hFin n k x hx

end LateralTheory.KummerTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.AdicLimPfKer =====
