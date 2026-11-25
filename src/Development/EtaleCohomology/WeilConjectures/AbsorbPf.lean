module

public import Development.EtaleCohomology.EtaleSheaves.StrictHenselColimits
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.AbsorbPf, Development.EtaleCohomology.WeilConjectures.AbsorbPf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.AbsorbPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.AbsorbPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.StrictHenselColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits LateralTheory.E.t_E3Cut

namespace LateralTheory.E.AbsorbPf

def Sys : Prop := ∀ (A : CommRingCat.{0}) (Ω : Type) [Field Ω] (ι : A →+* Ω),
  ∃ (J : Type) (_ : SmallCategory J) (_ : IsFiltered J) (D : J ⥤ CommRingCat.{0})
    (t : (Functor.const J).obj A ⟶ D) (φ : ∀ j, D.obj j →+* Ω),
    (∀ j, Et (t.app j)) ∧ (∀ j, (φ j).comp (t.app j).hom = ι) ∧
    (∀ (j k : J) (a : j ⟶ k), (φ k).comp (D.map a).hom = φ j) ∧
    (∀ (B : CommRingCat.{0}) (g : A ⟶ B), Et g → ∀ φB : B →+* Ω, φB.comp g.hom = ι →
      ∃ (j : J) (h : B ⟶ D.obj j), g ≫ h = t.app j ∧ (φ j).comp h.hom = φB) ∧
    (∀ (j : J) (x : D.obj j), φ j x ≠ 0 → ∃ (k : J) (a : j ⟶ k), IsUnit ((D.map a).hom x))

theorem t_nat {J : Type} [SmallCategory J] {A : CommRingCat.{0}} {D : J ⥤ CommRingCat.{0}}
    (t : (Functor.const J).obj A ⟶ D) {j k : J} (a : j ⟶ k) : t.app j ≫ D.map a = t.app k := by
  have := t.naturality a
  simp only [Functor.const_obj_obj, Functor.const_obj_map, Category.id_comp] at this
  exact this.symm

theorem Absorb_of (hS : Sys) : LateralTheory.E.ColimPf.Absorb := by
  intro A Ω _ ι
  obtain ⟨J, _, _, D, t, φ, hEt, hpt, hcomp, habs, hloc⟩ := hS A Ω ι
  let O : CommRingCat.{0} := colimit D
  let s : D ⟶ (Functor.const J).obj O := (colimit.cocone D).ι
  let j0 : J := IsFiltered.nonempty.some
  let f : A ⟶ O := t.app j0 ≫ colimit.ι D j0
  have hf : ∀ j, t.app j ≫ colimit.ι D j = f := by
    intro j
    let k := IsFiltered.max j j0
    show t.app j ≫ colimit.ι D j = t.app j0 ≫ colimit.ι D j0
    rw [← colimit.w D (IsFiltered.leftToMax j j0), ← colimit.w D (IsFiltered.rightToMax j j0),
      ← Category.assoc, ← Category.assoc, t_nat, t_nat]
  let cΩ : Cocone D :=
    { pt := CommRingCat.of Ω
      ι := { app := fun j => CommRingCat.ofHom (φ j)
             naturality := by
               intro j k a
               ext x
               have := DFunLike.congr_fun (hcomp j k a) x
               simpa using this } }
  let ψ : O →+* Ω := (colimit.desc D cΩ).hom
  have hψ : ∀ j (y : D.obj j), ψ (colimit.ι D j y) = φ j y := by
    intro j y
    have := colimit.ι_desc cΩ j
    exact DFunLike.congr_fun (congrArg CommRingCat.Hom.hom this) y
  refine ⟨O, f, ψ, ?_, ?_, ?_, ?_⟩
  · refine ⟨J, inferInstance, inferInstance, D, t, s, colimit.isColimit D, fun j => ⟨hEt j, hf j⟩⟩
  · ext a
    have := DFunLike.congr_fun (hpt j0) a
    simp only [RingHom.comp_apply] at this ⊢
    rw [← this, ← hψ]; rfl
  · intro x hx
    obtain ⟨j, y, rfl⟩ := Concrete.colimit_exists_rep D x
    rw [hψ] at hx
    obtain ⟨k, a, hu⟩ := hloc j y hx
    have : colimit.ι D j y = colimit.ι D k ((D.map a).hom y) := by
      rw [← colimit.w D a]; rfl
    rw [this]
    exact hu.map (colimit.ι D k).hom
  · intro B g hg φB hφB
    obtain ⟨j, h, hh1, hh2⟩ := habs B g hg φB hφB
    refine ⟨h ≫ colimit.ι D j, ?_, ?_⟩
    · rw [← Category.assoc, hh1, hf]
    · ext b
      simp only [RingHom.comp_apply, CommRingCat.hom_comp]
      rw [hψ]
      exact DFunLike.congr_fun hh2 b

def Sys2 : Prop := ∀ (A : CommRingCat.{0}) (Ω : Type) [Field Ω] (ι : A →+* Ω),
  ∃ (J : Type) (_ : SmallCategory J) (_ : IsFiltered J) (D : J ⥤ CommRingCat.{0})
    (t : (Functor.const J).obj A ⟶ D) (φ : ∀ j, D.obj j →+* Ω),
    (∀ j, Et (t.app j)) ∧ (∀ j, (φ j).comp (t.app j).hom = ι) ∧
    (∀ (j k : J) (a : j ⟶ k), (φ k).comp (D.map a).hom = φ j) ∧
    (∀ (B : CommRingCat.{0}) (g : A ⟶ B), Et g → ∀ φB : B →+* Ω, φB.comp g.hom = ι →
      ∃ (j : J) (h : B ⟶ D.obj j), g ≫ h = t.app j ∧ (φ j).comp h.hom = φB) ∧
    (∀ (j : J) (B : CommRingCat.{0}) (g : D.obj j ⟶ B), Et g → ∀ φB : B →+* Ω, φB.comp g.hom = φ j →
      ∃ (k : J) (a : j ⟶ k) (h : B ⟶ D.obj k), g ≫ h = D.map a)

theorem Sys_of (h2 : Sys2) : Sys := by
  intro A Ω _ ι
  obtain ⟨J, i1, i2, D, t, φ, hEt, hpt, hcomp, habs, hst⟩ := h2 A Ω ι
  refine ⟨J, i1, i2, D, t, φ, hEt, hpt, hcomp, habs, ?_⟩
  intro j x hx
  let B : CommRingCat.{0} := CommRingCat.of (Localization.Away x)
  let g : D.obj j ⟶ B := CommRingCat.ofHom (algebraMap (D.obj j) (Localization.Away x))
  have hg : Et g := by
    change (algebraMap (D.obj j) (Localization.Away x)).Etale
    rw [RingHom.etale_algebraMap]
    infer_instance
  have hu : IsUnit (φ j x) := isUnit_iff_ne_zero.mpr hx
  let φB : B →+* Ω := IsLocalization.Away.lift x hu
  obtain ⟨k, a, h, hh⟩ := hst j B g hg φB (IsLocalization.Away.lift_comp x hu)
  refine ⟨k, a, ?_⟩
  have e : (D.map a).hom x = h.hom (algebraMap (D.obj j) (Localization.Away x) x) := by
    rw [← hh]; rfl
  rw [e]
  exact (IsLocalization.Away.algebraMap_isUnit x).map h.hom

theorem etaleAbsorbing_of_strongFilteredEtaleSystemExists (h2 : Sys2) : LateralTheory.E.ColimPf.Absorb := Absorb_of (Sys_of h2)

end LateralTheory.E.AbsorbPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.AbsorbPf =====

-- ===== clump member: Development.EtaleCohomology.WeilConjectures.AbsorbPf =====
-- clump-header: {"m": "Development.EtaleCohomology.WeilConjectures.AbsorbPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.AbsorbPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits LateralTheory.E.t_E3Cut

namespace LateralTheory.EWeil.AbsorbPf

def Model : Prop := ∀ (A : CommRingCat.{0}), ∃ (N : Type) (M : N → CommRingCat.{0}) (tM : ∀ n, A ⟶ M n),
  (∀ n, Et (tM n)) ∧ ∀ (B : CommRingCat.{0}) (g : A ⟶ B), Et g → ∃ (n : N) (e : B ≅ M n), g ≫ e.hom = tM n

def Pair : Prop := ∀ (A B C : CommRingCat.{0}) (Ω : Type) [Field Ω] (ι : A →+* Ω) (gB : A ⟶ B) (gC : A ⟶ C),
  Et gB → Et gC → ∀ (φB : B →+* Ω) (φC : C →+* Ω), φB.comp gB.hom = ι → φC.comp gC.hom = ι →
  ∃ (E : CommRingCat.{0}) (gE : A ⟶ E) (φE : E →+* Ω) (p : B ⟶ E) (q : C ⟶ E), Et gE ∧ φE.comp gE.hom = ι ∧
    gB ≫ p = gE ∧ gC ≫ q = gE ∧ φE.comp p.hom = φB ∧ φE.comp q.hom = φC

def Coeq : Prop := ∀ (A B C : CommRingCat.{0}) (Ω : Type) [Field Ω] (ι : A →+* Ω) (gB : A ⟶ B) (gC : A ⟶ C),
  Et gB → Et gC → ∀ (φB : B →+* Ω) (φC : C →+* Ω), φB.comp gB.hom = ι → φC.comp gC.hom = ι →
  ∀ (u v : B ⟶ C), gB ≫ u = gC → gB ≫ v = gC → φC.comp u.hom = φB → φC.comp v.hom = φB →
  ∃ (E : CommRingCat.{0}) (gE : A ⟶ E) (φE : E →+* Ω) (w : C ⟶ E), Et gE ∧ φE.comp gE.hom = ι ∧
    gC ≫ w = gE ∧ φE.comp w.hom = φC ∧ u ≫ w = v ≫ w

theorem et_id (A : CommRingCat.{0}) : Et (𝟙 A) := by
  change (𝟙 A : A ⟶ A).hom.Etale
  rw [CommRingCat.hom_id]
  exact (RingHom.etale_algebraMap (R := A) (S := A)).mpr inferInstance

section Cat
variable {A : CommRingCat.{0}} {Ω : Type} [Field Ω] (ι : A →+* Ω) {N : Type} (M : N → CommRingCat.{0})
  (tM : ∀ n, A ⟶ M n)

structure Obj where
  n : N
  φ : M n →+* Ω
  hφ : φ.comp (tM n).hom = ι

variable {ι M tM}

def Hm (X Y : Obj ι M tM) : Type := {h : M X.n ⟶ M Y.n // tM X.n ≫ h = tM Y.n ∧ Y.φ.comp h.hom = X.φ}

instance cat : SmallCategory (Obj ι M tM) where
  Hom X Y := Hm X Y
  id X := ⟨𝟙 _, by simp, by simp⟩
  comp f g := ⟨f.1 ≫ g.1, by rw [← Category.assoc, f.2.1, g.2.1], by
    rw [CommRingCat.hom_comp, ← RingHom.comp_assoc, g.2.2, f.2.2]⟩
  id_comp f := Subtype.ext (Category.id_comp _)
  comp_id f := Subtype.ext (Category.comp_id _)
  assoc f g h := Subtype.ext (Category.assoc _ _ _)

def Dfun : Obj ι M tM ⥤ CommRingCat.{0} where
  obj X := M X.n
  map f := (show Hm _ _ from f).1

end Cat

theorem Sys2_of (hM : Model) (hP : Pair) (hC : Coeq) : LateralTheory.E.AbsorbPf.Sys2 := by
  intro A Ω _ ι
  obtain ⟨N, M, tM, hEt, hmod⟩ := hM A

  have into : ∀ (B : CommRingCat.{0}) (g : A ⟶ B), Et g → ∀ φB : B →+* Ω, φB.comp g.hom = ι →
      ∃ (X : Obj ι M tM) (e : B ≅ M X.n), g ≫ e.hom = tM X.n ∧ X.φ.comp e.hom.hom = φB := by
    intro B g hg φB hφB
    obtain ⟨n, e, he⟩ := hmod B g hg
    refine ⟨⟨n, φB.comp e.inv.hom, ?_⟩, e, he, ?_⟩
    · have h1 : (φB.comp e.inv.hom).comp (g ≫ e.hom).hom = φB.comp (g ≫ e.hom ≫ e.inv).hom := by
        simp only [CommRingCat.hom_comp, RingHom.comp_assoc]
      rw [← he, h1, Iso.hom_inv_id, Category.comp_id, hφB]
    · show (φB.comp e.inv.hom).comp e.hom.hom = φB
      rw [RingHom.comp_assoc, ← CommRingCat.hom_comp, e.hom_inv_id, CommRingCat.hom_id, RingHom.comp_id]
  haveI : IsFilteredOrEmpty (Obj ι M tM) := by
    refine ⟨?_, ?_⟩
    · intro X Y
      obtain ⟨E, gE, φE, p, q, hE, hφE, hp, hq, hpφ, hqφ⟩ :=
        hP A (M X.n) (M Y.n) Ω ι (tM X.n) (tM Y.n) (hEt _) (hEt _) X.φ Y.φ X.hφ Y.hφ
      obtain ⟨Z, e, he, heφ⟩ := into E gE hE φE hφE
      refine ⟨Z, (⟨p ≫ e.hom, ?_, ?_⟩ : Hm X Z), (⟨q ≫ e.hom, ?_, ?_⟩ : Hm Y Z), trivial⟩
      · rw [← Category.assoc, hp, he]
      · rw [CommRingCat.hom_comp, ← RingHom.comp_assoc, heφ, hpφ]
      · rw [← Category.assoc, hq, he]
      · rw [CommRingCat.hom_comp, ← RingHom.comp_assoc, heφ, hqφ]
    · intro X Y f g
      obtain ⟨E, gE, φE, w, hE, hφE, hw, hwφ, huv⟩ :=
        hC A (M X.n) (M Y.n) Ω ι (tM X.n) (tM Y.n) (hEt _) (hEt _) X.φ Y.φ X.hφ Y.hφ
          (show Hm X Y from f).1 (show Hm X Y from g).1 (show Hm X Y from f).2.1 (show Hm X Y from g).2.1
          (show Hm X Y from f).2.2 (show Hm X Y from g).2.2
      obtain ⟨Z, e, he, heφ⟩ := into E gE hE φE hφE
      refine ⟨Z, (⟨w ≫ e.hom, ?_, ?_⟩ : Hm Y Z), ?_⟩
      · rw [← Category.assoc, hw, he]
      · rw [CommRingCat.hom_comp, ← RingHom.comp_assoc, heφ, hwφ]
      · apply Subtype.ext
        show (show Hm X Y from f).1 ≫ (w ≫ e.hom) = (show Hm X Y from g).1 ≫ (w ≫ e.hom)
        rw [← Category.assoc, huv, Category.assoc]
  haveI : Nonempty (Obj ι M tM) := by
    obtain ⟨X, _, _, _⟩ := into A (𝟙 A) (et_id A) ι (by simp)
    exact ⟨X⟩
  haveI : IsFiltered (Obj ι M tM) := {}
  let D : Obj ι M tM ⥤ CommRingCat.{0} := Dfun
  let t : (Functor.const (Obj ι M tM)).obj A ⟶ D :=
    { app := fun X => tM X.n
      naturality := by
        intro X Y f
        simp only [Functor.const_obj_obj, Functor.const_obj_map]
        exact ((show Hm X Y from f).2.1).symm }
  refine ⟨Obj ι M tM, inferInstance, inferInstance, D, t, fun X => X.φ, fun X => hEt X.n, fun X => X.hφ,
    fun X Y f => (show Hm X Y from f).2.2, ?_, ?_⟩
  · intro B g hg φB hφB
    obtain ⟨X, e, he, heφ⟩ := into B g hg φB hφB
    exact ⟨X, e.hom, he, heφ⟩
  · intro X B g hg φB hφB
    let g' : M X.n ⟶ B := g
    have hg' : Et g' := hg
    have hφB' : φB.comp g'.hom = X.φ := hφB
    have hφ' : φB.comp (tM X.n ≫ g').hom = ι := by
      rw [CommRingCat.hom_comp, ← RingHom.comp_assoc, hφB', X.hφ]
    obtain ⟨Y, e, he, heφ⟩ := into B (tM X.n ≫ g') (_root_.LateralTheory.E.ColimPf.et_comp (hEt _) hg') φB hφ'
    refine ⟨Y, (⟨g' ≫ e.hom, by rw [← Category.assoc, he], ?_⟩ : Hm X Y), e.hom, rfl⟩
    rw [CommRingCat.hom_comp, ← RingHom.comp_assoc, heφ, hφB']

theorem Absorb_of (hM : Model) (hP : Pair) (hC : Coeq) : LateralTheory.E.ColimPf.Absorb :=
  LateralTheory.E.AbsorbPf.etaleAbsorbing_of_strongFilteredEtaleSystemExists (Sys2_of hM hP hC)

end LateralTheory.EWeil.AbsorbPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.WeilConjectures.AbsorbPf =====
