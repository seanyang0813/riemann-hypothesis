module

public import Development.EtaleCohomology.EtaleSheaves.LeafDescendFPPf
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.NonemptyIsLimitBaseChange
public import Mathlib.Tactic.Monotonicity.Lemmas
import Mathlib.AlgebraicGeometry.AffineTransitionLimit
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LeafPairFPPf, Development.EtaleCohomology.EtaleSheaves.LeafMapFPPf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafPairFPPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafPairFPPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafDescendFPPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite LateralTheory.E.E4 LateralTheory.E.LeafDescendVCut LateralTheory.E.LeafDescendChainPf
  LateralTheory.E.LeafDescendFPPf

namespace LateralTheory.E.LeafPairFPPf

theorem toR_incl {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] {R R' : Subalgebra k Ω} (h : R ≤ R') :
    toR R' ≫ incl h = toR R := by
  simp only [toR, incl, ← Spec.map_comp]
  congr 1

theorem fp_snd {X Y Z : Scheme.{0}} (f : X ⟶ Z) (g : Y ⟶ Z) (hf : FP f) : FP (pullback.snd f g) := by
  obtain ⟨h1, h2, h3⟩ := hf
  exact ⟨inferInstance, inferInstance, inferInstance⟩

theorem raise {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] {R R' : Subalgebra k Ω} (h : R ≤ R')
    {C D : Scheme.{0}} (c : C ⟶ Sp Ω) (q : D ⟶ Sp R) (v : C ⟶ D) (hq : FP q)
    (hs : IsPullback v c q (toR R)) :
    ∃ (E : Scheme.{0}) (q' : E ⟶ Sp R') (w : C ⟶ E), FP q' ∧ IsPullback w c q' (toR R') := by
  refine ⟨pullback q (incl h), pullback.snd _ _, pullback.lift v (c ≫ toR R') ?_, fp_snd _ _ hq, ?_⟩
  · rw [Category.assoc, toR_incl, hs.w]
  · refine IsPullback.of_right (h₁₂ := pullback.fst q (incl h)) (h₂₂ := incl h) ?_ (pullback.lift_snd _ _ _)
      (IsPullback.of_hasPullback _ _)
    rw [pullback.lift_fst, toR_incl]
    exact hs

def LeafMapFP : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω), R.FG →
    ∀ {C0 C1 : Scheme.{0}} (c0 : C0 ⟶ Sp Ω) (γ1 : C1 ⟶ C0) {D0 D1 : Scheme.{0}} (q : D0 ⟶ Sp R) (q1 : D1 ⟶ Sp R)
    (v0 : C0 ⟶ D0) (v1 : C1 ⟶ D1), FP q → FP q1 → IsPullback v0 c0 q (toR R) →
    IsPullback v1 (γ1 ≫ c0) q1 (toR R) →
    ∃ (R' : Subalgebra k Ω), R'.FG ∧ ∃ (E0 E1 : Scheme.{0}) (q' : E0 ⟶ Sp R') (e1 : E1 ⟶ E0) (w0 : C0 ⟶ E0)
      (w1 : C1 ⟶ E1), FP q' ∧ FP (e1 ≫ q') ∧ IsPullback w0 c0 q' (toR R') ∧
      IsPullback w1 (γ1 ≫ c0) (e1 ≫ q') (toR R') ∧ γ1 ≫ w0 = w1 ≫ e1

theorem pairDescent_of_objects_morphisms (hO : LeafObjFP) (hM : LeafMapFP) : LeafPairFP := by
  intro k _ Ω _ _ R hR C0 C1 c0 γ1 h1 D0 q v0 hq hsq
  obtain ⟨R1, hR1, D1, q1, v1, hq1, hs1⟩ := hO k Ω (γ1 ≫ c0) h1
  obtain ⟨E0, q0', w0, hq0', hs0'⟩ := raise (le_sup_left : R ≤ R ⊔ R1) c0 q v0 hq hsq
  obtain ⟨E1, q1', w1, hq1', hs1'⟩ := raise (le_sup_right : R1 ≤ R ⊔ R1) (γ1 ≫ c0) q1 v1 hq1 hs1
  exact hM k Ω (R ⊔ R1) (hR.sup hR1) c0 γ1 q0' q1' w0 w1 hq0' hq1' hs0' hs1'

end LateralTheory.E.LeafPairFPPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafPairFPPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafMapFPPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafMapFPPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafPairFPPf\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.NonemptyIsLimitBaseChange\npublic import Mathlib.Tactic.Monotonicity.Lemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.AffineTransitionLimit\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite LateralTheory.E.E4 LateralTheory.E.LeafDescendVCut LateralTheory.E.LeafDescendChainPf
  LateralTheory.E.LeafDescendFPPf LateralTheory.E.LeafPairFPPf

namespace LateralTheory.E.LeafMapFPPf

section
variable {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω]

theorem incl_comp {R S T : Subalgebra k Ω} (h1 : R ≤ S) (h2 : S ≤ T) :
    incl h2 ≫ incl h1 = incl (h1.trans h2) := by
  simp only [incl, ← Spec.map_comp]
  congr 1

theorem incl_refl (R : Subalgebra k Ω) : incl (le_refl R) = 𝟙 _ := by
  simp only [incl]
  rw [← Spec.map_id]
  congr 1

theorem sq {R S : Subalgebra k Ω} (h : R ≤ S) {C D : Scheme.{0}} {c : C ⟶ Sp Ω} {q : D ⟶ Sp R} {v : C ⟶ D}
    (hs : IsPullback v c q (toR R)) :
    IsPullback (pullback.lift v (c ≫ toR S) (by rw [Category.assoc, toR_incl, hs.w])) c
      (pullback.snd q (incl h)) (toR S) :=
  IsPullback.of_right (h₁₂ := pullback.fst q (incl h)) (h₂₂ := incl h)
    (by rw [pullback.lift_fst, toR_incl]; exact hs) (pullback.lift_snd _ _ _) (IsPullback.of_hasPullback _ _)

def dgMap {R : Subalgebra k Ω} {D1 : Scheme.{0}} (q1 : D1 ⟶ Sp R) {S T : Subalgebra k Ω} (hS : R ≤ S)
    (hT : R ≤ T) (h : S ≤ T) : pullback q1 (incl hT) ⟶ pullback q1 (incl hS) :=
  pullback.lift (pullback.fst _ _) (pullback.snd _ _ ≫ incl h) (by
    rw [pullback.condition, Category.assoc, incl_comp])

@[reassoc (attr := simp)]
theorem dgMap_fst {R : Subalgebra k Ω} {D1 : Scheme.{0}} (q1 : D1 ⟶ Sp R) {S T : Subalgebra k Ω} (hS : R ≤ S)
    (hT : R ≤ T) (h : S ≤ T) : dgMap q1 hS hT h ≫ pullback.fst _ _ = pullback.fst _ _ := pullback.lift_fst _ _ _

@[reassoc (attr := simp)]
theorem dgMap_snd {R : Subalgebra k Ω} {D1 : Scheme.{0}} (q1 : D1 ⟶ Sp R) {S T : Subalgebra k Ω} (hS : R ≤ S)
    (hT : R ≤ T) (h : S ≤ T) : dgMap q1 hS hT h ≫ pullback.snd _ _ = pullback.snd _ _ ≫ incl h :=
  pullback.lift_snd _ _ _

def dg {R : Subalgebra k Ω} {D1 : Scheme.{0}} (q1 : D1 ⟶ Sp R) : (GlobalTheory.FGAbove R)ᵒᵖ ⥤ Scheme.{0} where
  obj S := pullback q1 (incl S.unop.2.2)
  map {S T} f := dgMap q1 _ _ (show T.unop.1 ≤ S.unop.1 from leOfHom f.unop)
  map_id S := by apply pullback.hom_ext <;> simp [incl_refl]
  map_comp f g := by apply pullback.hom_ext <;> simp [incl_comp]

def dgT {R : Subalgebra k Ω} {D1 : Scheme.{0}} (q1 : D1 ⟶ Sp R) : dg q1 ⟶ (Functor.const _).obj (Sp R) where
  app S := pullback.fst _ _ ≫ q1
  naturality S T f := by simp [dg]

theorem dgπ_map {R : Subalgebra k Ω} {C1 D1 : Scheme.{0}} (c1 : C1 ⟶ Sp Ω) (q1 : D1 ⟶ Sp R) (v1 : C1 ⟶ D1)
    (hs : IsPullback v1 c1 q1 (toR R)) {S T : Subalgebra k Ω} (hS : R ≤ S) (hT : R ≤ T) (h : S ≤ T) :
    pullback.lift v1 (c1 ≫ toR T) (by rw [Category.assoc, toR_incl, hs.w]) ≫ dgMap q1 hS hT h =
      (pullback.lift v1 (c1 ≫ toR S) (by rw [Category.assoc, toR_incl, hs.w]) : C1 ⟶ pullback q1 (incl hS)) := by
  apply pullback.hom_ext
  · erw [Category.assoc, dgMap_fst, pullback.lift_fst, pullback.lift_fst]
  · erw [Category.assoc, dgMap_snd, pullback.lift_snd_assoc, pullback.lift_snd, Category.assoc, toR_incl]

def dgCone {R : Subalgebra k Ω} {C1 D1 : Scheme.{0}} (c1 : C1 ⟶ Sp Ω) (q1 : D1 ⟶ Sp R) (v1 : C1 ⟶ D1)
    (hs : IsPullback v1 c1 q1 (toR R)) : Cone (dg q1) where
  pt := C1
  π := { app S := pullback.lift v1 (c1 ≫ toR S.unop.1) (by rw [Category.assoc, toR_incl, hs.w])
         naturality S T f := by
           exact (Category.id_comp _).trans (dgπ_map c1 q1 v1 hs _ _ _).symm }

end

def LeafLimFP : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω), R.FG →
    ∀ {C1 D1 : Scheme.{0}} (c1 : C1 ⟶ Sp Ω) (q1 : D1 ⟶ Sp R) (v1 : C1 ⟶ D1) (hs : IsPullback v1 c1 q1 (toR R)),
    FP q1 → Nonempty (IsLimit (dgCone c1 q1 v1 hs))

def LeafStagesFP : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω)
    {D1 : Scheme.{0}} (q1 : D1 ⟶ Sp R), FP q1 →
    (∀ S : (GlobalTheory.FGAbove R)ᵒᵖ, CompactSpace ((dg q1).obj S) ∧ QuasiSeparatedSpace ((dg q1).obj S)) ∧
    ∀ (S T : GlobalTheory.FGAbove R) (h : S.1 ≤ T.1), IsAffineHom (dgMap q1 S.2.2 T.2.2 h)

theorem morphismDescent_of_isLimit (hL : LeafLimFP) (hI : LeafStagesFP) : LeafMapFP := by
  intro k _ Ω _ _ R hR C0 C1 c0 γ1 D0 D1 q q1 v0 v1 hq hq1 hs0 hs1
  haveI := GlobalTheory.FGAbove.isFiltered hR
  obtain ⟨hc⟩ := hL k Ω R hR (γ1 ≫ c0) q1 v1 hs1 hq1
  obtain ⟨hcs, haf⟩ := hI k Ω R q1 hq1
  haveI := hq.1
  haveI : ∀ S : (GlobalTheory.FGAbove R)ᵒᵖ, CompactSpace ((dg q1).obj S) := fun S => (hcs S).1
  haveI : ∀ S : (GlobalTheory.FGAbove R)ᵒᵖ, QuasiSeparatedSpace ((dg q1).obj S) := fun S => (hcs S).2
  haveI : ∀ {S T : (GlobalTheory.FGAbove R)ᵒᵖ} (f : S ⟶ T), IsAffineHom ((dg q1).map f) := fun f => haf _ _ _
  obtain ⟨S, g, hg1, hg2⟩ := Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation (D := dg q1)
    (t := dgT q1) (f := q) (c := dgCone (γ1 ≫ c0) q1 v1 hs1) hc (γ1 ≫ v0) (by
      ext S
      dsimp [dgCone, dgT, dg]
      rw [← Category.assoc, pullback.lift_fst, hs1.w]
      simp only [Category.assoc, hs0.w])
  let P := pullback q1 (incl S.unop.2.2)
  let g' : P ⟶ D0 := g
  let w1 : C1 ⟶ P := pullback.lift v1 ((γ1 ≫ c0) ≫ toR S.unop.1) (by rw [Category.assoc, toR_incl, hs1.w])
  have hg1' : w1 ≫ g' = γ1 ≫ v0 := hg1
  have hg2' : g' ≫ q = pullback.snd q1 (incl S.unop.2.2) ≫ incl S.unop.2.2 := by
    rw [show g' ≫ q = pullback.fst q1 (incl S.unop.2.2) ≫ q1 from hg2]; exact pullback.condition
  refine ⟨S.unop.1, S.unop.2.1, pullback q (incl S.unop.2.2), P, pullback.snd _ _,
    pullback.lift g' (pullback.snd _ _) hg2', pullback.lift v0 (c0 ≫ toR S.unop.1)
      (by rw [Category.assoc, toR_incl, hs0.w]), w1, fp_snd _ _ hq, ?_, sq S.unop.2.2 hs0, ?_, ?_⟩
  · rw [pullback.lift_snd]; exact fp_snd _ _ hq1
  · rw [pullback.lift_snd]; exact sq S.unop.2.2 hs1
  · apply pullback.hom_ext
    · simp only [Category.assoc, pullback.lift_fst]; exact hg1'.symm
    · simp only [Category.assoc, pullback.lift_snd, w1]

end LateralTheory.E.LeafMapFPPf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafMapFPPf =====
