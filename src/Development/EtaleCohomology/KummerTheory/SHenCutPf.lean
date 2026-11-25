module

public import Development.EtaleCohomology.KummerTheory.InjSlice
public import Mathlib.RingTheory.Etale.StandardEtale
import Mathlib.CategoryTheory.Comma.LocallySmall

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.KummerTheory.SHenCut, Development.EtaleCohomology.KummerTheory.SHenCutPf

-- ===== clump member: Development.EtaleCohomology.KummerTheory.SHenCut =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.SHenCut", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.InjSlice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Comma.LocallySmall\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits GlobalTheory.EtC

namespace LateralTheory.KummerTheory.SHenCut

def Sat {J : Type} [SmallCategory J] (D : J ⥤ CommRingCat.{0}) (e : Cocone D) : Prop :=
  ∀ (j : J) (B : CommRingCat.{0}) (φ : D.obj j ⟶ B) (β : B ⟶ e.pt), φ.hom.Etale → φ ≫ β = e.ι.app j →
    ∃ (k : J) (f : j ⟶ k) (γ : B ⟶ D.obj k), φ ≫ γ = D.map f ∧ γ ≫ e.ι.app k = β

def UnitLift {C Ω : Type} [CommRing C] [CommRing Ω] (ε : C →+* Ω) : Prop := ∀ x, ε x ≠ 0 → IsUnit x

def RootLift {C Ω : Type} [CommRing C] [CommRing Ω] (ε : C →+* Ω) : Prop :=
  ∀ f : Polynomial C, f.Monic → ∀ ω : Ω, f.eval₂ ε ω = 0 → f.derivative.eval₂ ε ω ≠ 0 → ∃ a : C, f.IsRoot a ∧ ε a = ω

def SatUnit : Prop := ∀ {J : Type} [SmallCategory J] [IsFiltered J] (D : J ⥤ CommRingCat.{0}) (c : Cocone D) (hc : IsColimit c)
  (e : Cocone D), IsField e.pt → Sat D e → UnitLift (hc.desc e).hom

def SatRoot : Prop := ∀ {J : Type} [SmallCategory J] [IsFiltered J] (D : J ⥤ CommRingCat.{0}) (c : Cocone D) (hc : IsColimit c)
  (e : Cocone D), IsField e.pt → Sat D e → RootLift (hc.desc e).hom

def SHOfLift : Prop := ∀ (C Ω : Type) [CommRing C] [Field Ω] [IsAlgClosed Ω] (ε : C →+* Ω), UnitLift ε → RootLift ε → SH C

abbrev Et : MorphismProperty CommRingCat.{0} := RingHom.toMorphismProperty RingHom.Etale

instance : Et.IsStableUnderCobaseChange :=
  RingHom.isStableUnderCobaseChange_toMorphismProperty_iff.2 RingHom.Etale.isStableUnderBaseChange
instance : Et.IsStableUnderComposition where
  comp_mem f g hf hg := RingHom.Etale.stableUnderComposition f.hom g.hom hf hg
instance : Et.ContainsIdentities where
  id_mem _ := RingHom.Etale.of_bijective Function.bijective_id
instance : Et.HasOfPrecompProperty Et where
  of_precomp {A B C} f g hf hfg := by
    have hf' : f.hom.Etale := hf
    have hfg' : (g.hom.comp f.hom).Etale := hfg
    algebraize [f.hom, g.hom, g.hom.comp f.hom]
    exact Algebra.Etale.of_restrictScalars A B C

abbrev Nb {R Ω : CommRingCat.{0}} (s : R ⟶ Ω) := CostructuredArrow (MorphismProperty.Under.forget Et ⊤ R) (Under.mk s)

instance {R Ω : CommRingCat.{0}} (s : R ⟶ Ω) : EssentiallySmall.{0} (Nb s) := by
  have : EssentiallySmall.{0} (MorphismProperty.Under Et ⊤ R) := essentiallySmall_of_le (fun _ _ f hf => by
    have hf' : f.hom.Etale := hf
    exact RingHom.FiniteType.of_finitePresentation (RingHom.Etale.iff_flat_and_formallyUnramified.1 hf').2.2) R
  infer_instance

instance {R Ω : CommRingCat.{0}} (s : R ⟶ Ω) : IsFiltered (Nb s) := by
  have : RepresentablyCoflat (MorphismProperty.Under.forget Et ⊤ R) := coflat_of_preservesFiniteColimits _
  infer_instance

def Nb.ring {R Ω : CommRingCat.{0}} (s : R ⟶ Ω) : Nb s ⥤ CommRingCat.{0} :=
  CostructuredArrow.proj _ _ ⋙ MorphismProperty.Under.forget Et ⊤ R ⋙ Under.forget R

theorem exists_sat {R Ω : CommRingCat.{0}} (s : R ⟶ Ω) : ∃ (J : Type) (_ : SmallCategory J) (_ : IsFiltered J)
    (D : J ⥤ CommRingCat.{0}) (u : (Functor.const J).obj R ⟶ D) (e : D ⟶ (Functor.const J).obj Ω),
    Sat D (Cocone.mk Ω e) ∧ ∀ j, (u.app j).hom.Etale ∧ u.app j ≫ e.app j = s := by
  let E := equivSmallModel.{0} (Nb s)
  refine ⟨SmallModel.{0} (Nb s), inferInstance, IsFiltered.of_equivalence E, E.inverse ⋙ Nb.ring s,
    { app := fun j => (E.inverse.obj j).left.hom, naturality := fun j k f => ?_ },
    { app := fun j => (E.inverse.obj j).hom.right, naturality := fun j k f => ?_ }, ?_, fun j => ⟨?_, ?_⟩⟩
  · exact (Category.id_comp _).trans (Under.w ((MorphismProperty.Under.forget Et ⊤ R).map (E.inverse.map f).left)).symm
  · exact (congrArg (fun t => t.right) (CostructuredArrow.w (E.inverse.map f))).trans (Category.comp_id _).symm
  · intro j B φ β hφ hβ
    have hw : (E.inverse.obj j).left.hom ≫ (E.inverse.obj j).hom.right = s := Under.w (E.inverse.obj j).hom
    let A : MorphismProperty.Under Et ⊤ R := MorphismProperty.Under.mk ⊤ ((E.inverse.obj j).left.hom ≫ φ)
      (Et.comp_mem _ _ (E.inverse.obj j).left.prop hφ)
    let N : Nb s := CostructuredArrow.mk (Y := A) (Under.homMk β
      ((Category.assoc _ _ _).trans ((congrArg (fun t => (E.inverse.obj j).left.hom ≫ t) hβ).trans hw)))
    let m : E.inverse.obj j ⟶ N := CostructuredArrow.homMk (MorphismProperty.Under.homMk φ rfl trivial)
      (Under.UnderMorphism.ext hβ)
    refine ⟨E.functor.obj N, E.inverse.preimage (m ≫ E.unit.app N), (Nb.ring s).map (E.unit.app N), ?_, ?_⟩
    · change (Nb.ring s).map m ≫ _ = (Nb.ring s).map (E.inverse.map _)
      rw [Functor.map_preimage, Functor.map_comp]
    · exact congrArg (fun t => t.right) (CostructuredArrow.w (E.unit.app N))
  · exact (E.inverse.obj j).left.prop
  · exact Under.w (E.inverse.obj j).hom

theorem goal_of (h1 : SatUnit) (h2 : SatRoot) (h3 : SHOfLift) : LateralTheory.KummerTheory.StrictHenselization := by
  intro R 𝔭
  let Ω := AlgebraicClosure 𝔭.asIdeal.ResidueField
  let s : R →+* Ω := (algebraMap 𝔭.asIdeal.ResidueField Ω).comp (algebraMap R 𝔭.asIdeal.ResidueField)
  have hs : RingHom.ker s = 𝔭.asIdeal := by
    rw [RingHom.ker_comp_of_injective _ (algebraMap 𝔭.asIdeal.ResidueField Ω).injective,
      Ideal.ker_algebraMap_residueField]
  obtain ⟨J, _, _, D, u, e, hsat, hu⟩ := exists_sat (Ω := CommRingCat.of Ω) (CommRingCat.ofHom s)
  have hF : IsField (Cocone.mk (F := D) (CommRingCat.of Ω) e).pt := Field.toIsField Ω
  refine ⟨J, inferInstance, inferInstance, D, colimit.cocone D, colimit.isColimit D, u,
    h3 _ Ω _ (h1 D _ (colimit.isColimit D) _ hF hsat) (h2 D _ (colimit.isColimit D) _ hF hsat), fun j => ⟨(hu j).1, ?_⟩⟩
  let ej : D.obj j →+* Ω := (e.app j).hom
  refine ⟨⟨RingHom.ker ej, RingHom.ker_isPrime ej⟩, ?_⟩
  have : ej.comp (u.app j).hom = s := congrArg CommRingCat.Hom.hom (hu j).2
  exact (congrArg RingHom.ker this).trans hs

end LateralTheory.KummerTheory.SHenCut

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.SHenCut =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.SHenCutPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.SHenCutPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.SHenCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Etale.StandardEtale\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits GlobalTheory.EtC Polynomial

namespace LateralTheory.KummerTheory.SHenCut

theorem satUnit : SatUnit := by
  intro J _ _ D c hc e hF hs x hx
  obtain ⟨j, y, rfl⟩ := Concrete.isColimit_exists_rep D hc x
  let ej : D.obj j →+* e.pt := (e.ι.app j).hom
  have hy : (hc.desc e).hom ((c.ι.app j).hom y) = ej y := congrArg (fun t => t.hom y) (hc.fac e j)
  have hu : IsUnit (ej y) := by
    obtain ⟨b, hb⟩ := hF.mul_inv_cancel (a := ej y) (fun h => hx (hy.trans h))
    exact IsUnit.of_mul_eq_one b hb
  obtain ⟨k, f, γ, h1, -⟩ := hs j (CommRingCat.of (Localization.Away y)) (CommRingCat.ofHom (algebraMap _ _))
    (CommRingCat.ofHom (IsLocalization.Away.lift y hu))
    (RingHom.etale_algebraMap.2 (Algebra.Etale.of_isLocalizationAway y))
    (CommRingCat.hom_ext (IsLocalization.Away.lift_comp y hu))
  have h2 : γ.hom (algebraMap _ (Localization.Away y) y) = (D.map f).hom y := congrArg (fun t => t.hom y) h1
  have h3 : (c.ι.app k).hom ((D.map f).hom y) = (c.ι.app j).hom y := congrArg (fun t => t.hom y) (c.w f)
  have h4 : IsUnit ((D.map f).hom y) := h2 ▸ (IsLocalization.Away.algebraMap_isUnit y).map γ.hom
  have h5 := h4.map (c.ι.app k).hom
  rw [h3] at h5
  exact h5

theorem exists_lift {J : Type} [SmallCategory J] [IsFiltered J] (D : J ⥤ CommRingCat.{0}) (c : Cocone D) (hc : IsColimit c)
    (f : Polynomial c.pt) : ∃ j, f ∈ lifts (show D.obj j →+* c.pt from (c.ι.app j).hom) := by
  classical
  choose j y hy using fun n => Concrete.isColimit_exists_rep D hc (f.coeff n)
  obtain ⟨S, hS⟩ := IsFiltered.sup_objs_exists (f.support.image j)
  refine ⟨S, (lifts_iff_coeff_lifts _).2 fun n => ?_⟩
  by_cases hn : n ∈ f.support
  · obtain ⟨g⟩ := hS (Finset.mem_image_of_mem j hn)
    exact ⟨(D.map g).hom (y n), (congrArg (fun t => t.hom (y n)) (c.w g)).trans (hy n)⟩
  · exact ⟨0, (map_zero _).trans (notMem_support_iff.1 hn).symm⟩

theorem satRoot : SatRoot := by
  intro J _ _ D c hc e hF hs f hf ω h0 h1
  obtain ⟨j, hj⟩ := exists_lift D c hc f
  obtain ⟨g, rfl, -, hg⟩ := lifts_and_natDegree_eq_and_monic hj hf
  let ej : D.obj j →+* e.pt := (e.ι.app j).hom
  let cj : D.obj j →+* c.pt := (c.ι.app j).hom
  have hy : (hc.desc e).hom.comp cj = ej := congrArg (fun t => t.hom) (hc.fac e j)
  change (g.map cj).eval₂ _ ω = 0 at h0
  change (g.map cj).derivative.eval₂ _ ω ≠ 0 at h1
  rw [eval₂_map, hy] at h0
  rw [derivative_map, eval₂_map, hy] at h1
  let P : StandardEtalePair (D.obj j) := ⟨g, hg, g.derivative, 1, 0, 1, by simp⟩
  let _ : Algebra (D.obj j) e.pt := ej.toAlgebra
  have hP : P.HasMap ω := by
    obtain ⟨b, hb⟩ := hF.mul_inv_cancel h1
    exact ⟨h0, IsUnit.of_mul_eq_one b hb⟩
  obtain ⟨k, t, γ, h2, h3⟩ := hs j (CommRingCat.of P.Ring) (CommRingCat.ofHom (algebraMap _ _))
    (CommRingCat.ofHom (P.lift ω hP).toRingHom) (RingHom.etale_algebraMap.2 inferInstance)
    (CommRingCat.hom_ext (P.lift ω hP).comp_algebraMap)
  let ck : D.obj k →+* c.pt := (c.ι.app k).hom
  let γ' : P.Ring →+* D.obj k := γ.hom
  have h4 : (ck.comp γ').comp (algebraMap (D.obj j) P.Ring) = cj := by
    have : (CommRingCat.ofHom (algebraMap (D.obj j) P.Ring) ≫ γ) ≫ c.ι.app k = c.ι.app j := by rw [h2]; exact c.w t
    exact congrArg (fun t => t.hom) this
  refine ⟨(ck.comp γ') P.X, ?_, ?_⟩
  · change (g.map cj).eval _ = 0
    have h5 : g.eval₂ (algebraMap (D.obj j) P.Ring) P.X = 0 := P.hasMap_X.1
    rw [Polynomial.eval_map, ← h4, ← hom_eval₂, h5, map_zero]
  · have h6 : (hc.desc e).hom (ck (γ' P.X)) = (e.ι.app k).hom (γ' P.X) := congrArg (fun t => t.hom (γ' P.X)) (hc.fac e k)
    have h7 : (e.ι.app k).hom (γ' P.X) = P.lift ω hP P.X := congrArg (fun t => t.hom P.X) h3
    exact h6.trans (h7.trans (P.lift_X ω hP))

theorem shOfLift : SHOfLift := by
  intro C Ω _ _ _ ε hu hr
  have : Nontrivial C := ε.domain_nontrivial
  have : IsLocalRing C := IsLocalRing.of_isUnit_or_isUnit_one_sub_self fun a => by
    by_cases h : ε a = 0
    · exact Or.inr (hu _ (by simp [h]))
    · exact Or.inl (hu _ h)
  have hm : ∀ x, x ∈ IsLocalRing.maximalIdeal C ↔ ε x = 0 := fun x => by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    exact ⟨fun h => by_contra fun h' => h (hu x h'), fun h h' => (h'.map ε).ne_zero h⟩
  have : IsLocalHom ε := ⟨fun a ha => hu a ha.ne_zero⟩
  refine ⟨{ is_henselian := fun f hf a₀ h0 h1 => ?_ }, IsSepClosed.of_exists_root _ fun p hp hi hsep => ?_⟩
  · obtain ⟨a, ha, ha'⟩ := hr f hf (ε a₀) (by rw [eval₂_at_apply]; exact (hm _).1 h0)
      (by rw [eval₂_at_apply]; exact (h1.map ε).ne_zero)
    exact ⟨a, ha, (hm _).2 (by rw [map_sub, ha', sub_self])⟩
  · let ι := IsLocalRing.ResidueField.lift ε
    have hι : ι.comp (IsLocalRing.residue C) = ε := IsLocalRing.ResidueField.lift_comp_residue ε
    obtain ⟨ω, hω⟩ := IsAlgClosed.exists_eval₂_eq_zero_of_injective ι ι.injective p hi.degree_pos.ne'
    have hd := hsep.eval₂_derivative_ne_zero ι hω
    obtain ⟨f, rfl, -, hf⟩ := lifts_and_natDegree_eq_and_monic (f := IsLocalRing.residue C)
      ((lifts_iff_coeff_lifts p).2 fun n => IsLocalRing.residue_surjective _) hp
    rw [eval₂_map, hι] at hω
    rw [derivative_map, eval₂_map, hι] at hd
    obtain ⟨a, ha, -⟩ := hr f hf ω hω hd
    exact ⟨IsLocalRing.residue C a, by rw [Polynomial.eval_map, eval₂_at_apply, ha.eq_zero, map_zero]⟩

theorem shen : LateralTheory.KummerTheory.StrictHenselization := goal_of satUnit satRoot shOfLift

end LateralTheory.KummerTheory.SHenCut

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.SHenCutPf =====
