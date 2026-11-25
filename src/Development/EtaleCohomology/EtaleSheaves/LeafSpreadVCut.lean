module

public import Development.EtaleCohomology.EtaleSheaves.H0TwistOverClosedField

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite LateralTheory.E.E4

namespace LateralTheory.E.LeafSpreadVCut

def LeafDescendV : Prop := ∀ (k : Type) [Field k] {X : Scheme.{0}} (p : X ⟶ Sp k) [IsProper p] (Ω : Type) [Field Ω]
    [Algebra k Ω] {C0 : Scheme.{0}} (c0 : C0 ⟶ Sp Ω) (e : C0 ⟶ X), IsCurve c0 →
    e ≫ p = c0 ≫ Spec.map (CommRingCat.ofHom (algebraMap k Ω)) →
    ∀ (C1 C2 : Scheme.{0}) (γ1 : C1 ⟶ C0) (γ2 : C2 ⟶ C1), IsCurve (γ1 ≫ c0) → IsCurve (γ2 ≫ γ1 ≫ c0) →
    ∃ (R : Subalgebra k Ω), R.FG ∧ ∃ (D0 D1 D2 : Scheme.{0}) (q : D0 ⟶ Sp R) (d1 : D1 ⟶ D0) (d2 : D2 ⟶ D1)
      (f : D0 ⟶ X) (v0 : C0 ⟶ D0) (v1 : C1 ⟶ D1) (v2 : C2 ⟶ D2),
      IsProper q ∧ SmoothOfRelativeDimension 1 q ∧ IsProper (d1 ≫ q) ∧ SmoothOfRelativeDimension 1 (d1 ≫ q) ∧
      IsProper (d2 ≫ d1 ≫ q) ∧ SmoothOfRelativeDimension 1 (d2 ≫ d1 ≫ q) ∧
      f ≫ p = q ≫ Spec.map (CommRingCat.ofHom (algebraMap k R)) ∧
      IrreducibleSpace D0 ∧ topologicalKrullDim D0 ≤ ringKrullDim R + 1 ∧
      IsPullback v0 c0 q (Spec.map (CommRingCat.ofHom (algebraMap R Ω))) ∧
      IsPullback v1 (γ1 ≫ c0) (d1 ≫ q) (Spec.map (CommRingCat.ofHom (algebraMap R Ω))) ∧
      IsPullback v2 (γ2 ≫ γ1 ≫ c0) (d2 ≫ d1 ≫ q) (Spec.map (CommRingCat.ofHom (algebraMap R Ω))) ∧
      γ1 ≫ v0 = v1 ≫ d1 ∧ γ2 ≫ v1 = v2 ≫ d2 ∧ v0 ≫ f = e

def LeafCloseB : Prop := ∀ (k : Type) [Field k] (A : Type) [CommRing A] [IsDomain A] [Algebra k A]
    [Algebra.FiniteType k A], ∃ (B : Scheme.{0}) (b : B ⟶ Sp k) (ι : Sp A ⟶ B), IsIntegral B ∧ IsProper b ∧
    IsOpenImmersion ι ∧ ι ≫ b = Spec.map (CommRingCat.ofHom (algebraMap k A)) ∧ topologicalKrullDim B ≤ ringKrullDim A

lemma succ_le_of_lt {a x : WithBot ℕ∞} (h : a < x) : a + 1 ≤ x ∧ a + 1 < ⊤ := by
  induction a with
  | bot => exact ⟨by simp, by simp⟩
  | coe n =>
    induction x with
    | bot => exact absurd h (not_lt_bot)
    | coe m =>
      have h' : n < m := WithBot.coe_lt_coe.mp h
      have hn : n ≠ ⊤ := ne_top_of_lt h'
      refine ⟨?_, ?_⟩
      · rw [← WithBot.coe_one, ← WithBot.coe_add, WithBot.coe_le_coe]
        exact Order.add_one_le_of_lt h'
      · rw [← WithBot.coe_one, ← WithBot.coe_add]
        exact WithBot.coe_lt_coe.mpr (lt_top_iff_ne_top.mpr (by
          lift n to ℕ using hn
          exact ENat.natCast_ne_top (n + 1)))

end LateralTheory.E.LeafSpreadVCut

end
