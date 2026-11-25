module

public import Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPf
public import Mathlib.CategoryTheory.Abelian.CommSq
import Mathlib.CategoryTheory.EffectiveEpi.Comp
import Mathlib.CategoryTheory.ExtremalEpi

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.CohomologicalPurity.LeafCokIsoPf, Development.EtaleCohomology.CohomologicalPurity.IsPullbackOfApp

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCokIsoPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafCokIsoPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Abelian.CommSq\nimport Mathlib.CategoryTheory.EffectiveEpi.Comp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.Thom.ExcSp

def LeafFreePb : Prop := ∀ (R : Type) [CommRing R] {A' A B' B : PSh} (t : A' ⟶ B') (l : A' ⟶ A) (r : B' ⟶ B)
  (b : A ⟶ B), IsPullback t l r b → Mono r → Mono b →
  IsPullback ((free R).map t) ((free R).map l) ((free R).map r) ((free R).map b)

theorem isIso_cokernel_map_of_pb_epi {C : Type*} [Category C] [Abelian C] {X₁ X₂ X₃ X₄ : C}
    {t : X₁ ⟶ X₂} {l : X₁ ⟶ X₃} {r : X₂ ⟶ X₄} {b : X₃ ⟶ X₄} (sq : IsPullback t l r b)
    (he : Epi (biprod.desc r b)) : IsIso (cokernel.map t b l r sq.w.symm) := by
  have := Abelian.mono_cokernel_map_of_isPullback sq
  have : Epi (cokernel.map t b l r sq.w.symm) := by
    have h1 : biprod.desc r b ≫ cokernel.π b = (biprod.fst : X₂ ⊞ X₃ ⟶ X₂) ≫ (r ≫ cokernel.π b) := by
      ext <;> simp
    have h3 : Epi (r ≫ cokernel.π b) := by
      have : Epi ((biprod.fst : X₂ ⊞ X₃ ⟶ X₂) ≫ (r ≫ cokernel.π b)) := by rw [← h1]; infer_instance
      exact epi_of_epi (biprod.fst : X₂ ⊞ X₃ ⟶ X₂) _
    have h2 : cokernel.π t ≫ cokernel.map t b l r sq.w.symm = r ≫ cokernel.π b := by simp
    rw [← h2] at h3
    exact epi_of_epi (cokernel.π t) _
  exact isIso_of_mono_of_epi _

theorem transport_sq {C : Type*} [Category C] [Abelian C] {X₁ X₂ X₃ X₄ Y₁ Y₂ Y₃ Y₄ : C}
    {t : X₁ ⟶ X₂} {l : X₁ ⟶ X₃} {r : X₂ ⟶ X₄} {b : X₃ ⟶ X₄}
    {t' : Y₁ ⟶ Y₂} {l' : Y₁ ⟶ Y₃} {r' : Y₂ ⟶ Y₄} {b' : Y₃ ⟶ Y₄}
    (e₁ : X₁ ≅ Y₁) (e₂ : X₂ ≅ Y₂) (e₃ : X₃ ≅ Y₃) (e₄ : X₄ ≅ Y₄)
    (ht : t = e₁.hom ≫ t' ≫ e₂.inv) (hl : l = e₁.hom ≫ l' ≫ e₃.inv)
    (hr : r = e₂.hom ≫ r' ≫ e₄.inv) (hb : b = e₃.hom ≫ b' ≫ e₄.inv)
    (sq : IsPullback t' l' r' b') (he : Epi (biprod.desc r' b')) :
    IsPullback t l r b ∧ Epi (biprod.desc r b) := by
  subst ht hl hr hb
  refine ⟨sq.of_iso e₁.symm e₂.symm e₃.symm e₄.symm (by simp) (by simp) (by simp) (by simp), ?_⟩
  have : biprod.desc (e₂.hom ≫ r' ≫ e₄.inv) (e₃.hom ≫ b' ≫ e₄.inv) =
      (biprod.mapIso e₂ e₃).hom ≫ biprod.desc r' b' ≫ e₄.inv := by
    ext <;> simp
  rw [this]
  infer_instance

theorem leafCokIso_of (hF : LeafFreePb) : LeafCokIso := by
  intro q P' P φ hpb hc n
  by_cases hn : ∃ p : ℕ, -(p : ℤ) = n
  · obtain ⟨p, rfl⟩ := hn
    have h : ComplexShape.embeddingDownNat.f p = -(p : ℤ) := rfl
    have key : ∀ {E' E : Spc} (f : E' ⟶ E), ((chains (ZMod q)).map f).f (-(p : ℤ)) =
        (HomologicalComplex.extendXIso _ _ h).hom ≫ (free (ZMod q)).map (f.app (op (SimplexCategory.mk p))) ≫
          (HomologicalComplex.extendXIso _ _ h).inv := by
      intro E' E f
      change (HomologicalComplex.extendMap ((chainsN (ZMod q)).map f) _).f _ = _
      rw [HomologicalComplex.extendMap_f _ _ h]
      rfl
    have hpb' : IsPullback (P'.hom.app (op (SimplexCategory.mk p))) (φ.left.app (op (SimplexCategory.mk p)))
        (φ.right.app (op (SimplexCategory.mk p))) (P.hom.app (op (SimplexCategory.mk p))) :=
      hpb.map ((evaluation _ _).obj (op (SimplexCategory.mk p)))
    have mr : Mono (φ.right.app (op (SimplexCategory.mk p))) := by
      have := hc.1; rw [NatTrans.mono_iff_mono_app] at this; exact this _
    have mb : Mono (P.hom.app (op (SimplexCategory.mk p))) := by
      have := hc.2.1; rw [NatTrans.mono_iff_mono_app] at this; exact this _
    obtain ⟨h1, h2⟩ := transport_sq _ _ _ _ (key P'.hom) (key φ.left) (key φ.right) (key P.hom)
      (hF (ZMod q) _ _ _ _ hpb' mr mb) (hc.2.2 _)
    exact isIso_cokernel_map_of_pb_epi h1 h2
  · push Not at hn
    have hz : ∀ E : Spc, IsZero (((chains (ZMod q)).obj E).X n) := fun E =>
      HomologicalComplex.isZero_extend_X _ _ _ (fun i => hn i)
    have hA : IsZero (cokernel ((chains (ZMod q)).map P'.hom |>.f n)) :=
      IsZero.of_epi (cokernel.π _) (hz _)
    have hB : IsZero (cokernel ((chains (ZMod q)).map P.hom |>.f n)) :=
      IsZero.of_epi (cokernel.π _) (hz _)
    exact ⟨0, hA.eq_of_src _ _, hB.eq_of_src _ _⟩

end LateralTheory.CohomologicalPurity.Thom.ExcSp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCokIsoPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.IsPullbackOfApp =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.IsPullbackOfApp", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafCokIsoPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.Thom.ExcSp

theorem fin_pb {α β γ δ M : Type*} [AddCommMonoid M] (t : α → β) (l : α → γ) (r : β → δ) (b : γ → δ)
    (w : ∀ a, r (t a) = b (l a)) (hpb : ∀ x y, r x = b y → ∃ a, t a = x ∧ l a = y)
    (ht : Function.Injective t) (hr : Function.Injective r) (hb : Function.Injective b)
    (x : β →₀ M) (y : γ →₀ M) (h : Finsupp.mapDomain r x = Finsupp.mapDomain b y) :
    ∃ z : α →₀ M, Finsupp.mapDomain t z = x ∧ Finsupp.mapDomain l z = y := by
  classical
  have hsupp : ∀ s ∈ x.support, s ∈ Set.range t := by
    intro s hs
    have h1 : (Finsupp.mapDomain r x) (r s) ≠ 0 := by
      rw [Finsupp.mapDomain_apply_of_injective hr]; exact Finsupp.mem_support_iff.1 hs
    rw [h] at h1
    have h2 : r s ∈ (Finsupp.mapDomain b y).support := Finsupp.mem_support_iff.2 h1
    have h3 := Finsupp.mapDomain_support h2
    obtain ⟨c, -, hc⟩ := Finset.mem_image.1 h3
    obtain ⟨a, ha, -⟩ := hpb s c hc.symm
    exact ⟨a, ha⟩
  refine ⟨x.comapDomain t ht.injOn, ?_, ?_⟩
  · exact Finsupp.mapDomain_comapDomain t ht x hsupp
  · apply Finsupp.mapDomain_injective hb
    rw [← Finsupp.mapDomain_comp]
    have : b ∘ l = r ∘ t := funext fun a => (w a).symm
    rw [this, Finsupp.mapDomain_comp, Finsupp.mapDomain_comapDomain t ht x hsupp, h]

theorem isPullback_of_app {J C : Type*} [Category J] [Category C] {A B X Y : J ⥤ C}
    {t : A ⟶ B} {l : A ⟶ X} {r : B ⟶ Y} {b : X ⟶ Y} (w : t ≫ r = l ≫ b)
    (h : ∀ j, IsPullback (t.app j) (l.app j) (r.app j) (b.app j)) : IsPullback t l r b :=
  IsPullback.of_isLimit' ⟨w⟩ (evaluationJointlyReflectsLimits _ fun j =>
    (isLimitMapConePullbackConeEquiv ((evaluation J C).obj j) w).symm (h j).isLimit)

theorem modfree_pb (R : Type) [CommRing R] {A' A B' B : Type} (t : A' ⟶ B') (l : A' ⟶ A) (r : B' ⟶ B)
    (b : A ⟶ B) (hpb : IsPullback t l r b) (hr : Function.Injective r) (hb : Function.Injective b) :
    IsPullback ((ModuleCat.free (ULift.{1} R)).map (uliftFunctor.{1}.map t))
      ((ModuleCat.free (ULift.{1} R)).map (uliftFunctor.{1}.map l))
      ((ModuleCat.free (ULift.{1} R)).map (uliftFunctor.{1}.map r))
      ((ModuleCat.free (ULift.{1} R)).map (uliftFunctor.{1}.map b)) := by
  obtain ⟨w, hinj, hex⟩ := (Types.isPullback_iff _ _ _ _).1 hpb
  have ht : Function.Injective t := fun x y h => hinj x y ⟨h, hb (by
    have := ConcreteCategory.congr_hom w x; have h2 := ConcreteCategory.congr_hom w y; simp only [ConcreteCategory.comp_apply, types_comp_apply] at this h2
    rw [← this, ← h2, h])⟩
  have hw : ∀ a : ULift.{1} A', ULift.up (r (t a.down)) = ULift.up (b (l a.down)) := fun a => by
    have := ConcreteCategory.congr_hom w a.down; simp only [ConcreteCategory.comp_apply] at this; rw [this]
  have sq : (ModuleCat.free (ULift.{1} R)).map (uliftFunctor.{1}.map t) ≫
      (ModuleCat.free (ULift.{1} R)).map (uliftFunctor.{1}.map r) =
      (ModuleCat.free (ULift.{1} R)).map (uliftFunctor.{1}.map l) ≫
      (ModuleCat.free (ULift.{1} R)).map (uliftFunctor.{1}.map b) := by
    rw [← Functor.map_comp, ← Functor.map_comp, ← Functor.map_comp, ← Functor.map_comp, w]
  refine IsPullback.of_map (forget (ModuleCat (ULift.{1} R))) sq ?_
  rw [Types.isPullback_iff]
  refine ⟨congrArg (forget _).map sq, ?_, ?_⟩
  · rintro x y ⟨h1, -⟩
    have hu : Function.Injective (uliftFunctor.{1}.map t) := fun a c h =>
      ULift.ext (ht (congrArg ULift.down h))
    exact Finsupp.mapDomain_injective hu h1
  · intro x y h
    exact fin_pb (uliftFunctor.{1}.map t) (uliftFunctor.{1}.map l) (uliftFunctor.{1}.map r)
      (uliftFunctor.{1}.map b) hw
      (fun x y h => by
        obtain ⟨a, ha1, ha2⟩ := hex x.down y.down (congrArg ULift.down h)
        exact ⟨ULift.up a, ULift.ext ha1, ULift.ext ha2⟩)
      (fun a c h => ULift.ext (ht (congrArg ULift.down h)))
      (fun a c h => ULift.ext (hr (congrArg ULift.down h)))
      (fun a c h => ULift.ext (hb (congrArg ULift.down h))) x y h

theorem leafFreePb : LeafFreePb := by
  intro R _ A' A B' B t l r b hpb hr hb
  have hP : IsPullback ((freeP R).map t) ((freeP R).map l) ((freeP R).map r) ((freeP R).map b) := by
    refine isPullback_of_app (by rw [← Functor.map_comp, ← Functor.map_comp, hpb.w]) fun U => ?_
    have hrU : Mono (r.app U) := by rw [NatTrans.mono_iff_mono_app] at hr; exact hr U
    have hbU : Mono (b.app U) := by rw [NatTrans.mono_iff_mono_app] at hb; exact hb U
    exact modfree_pb R _ _ _ _ (hpb.map ((evaluation _ _).obj U))
      ((mono_iff_injective _).1 hrU) ((mono_iff_injective _).1 hbU)
  exact hP.map (presheafToSheaf _ _)

theorem LeafCokIso_of : LeafCokIso := leafCokIso_of leafFreePb

end LateralTheory.CohomologicalPurity.Thom.ExcSp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.IsPullbackOfApp =====
