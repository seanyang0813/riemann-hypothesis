module

public import Development.EtaleCohomology.TateTwists.EtaleRestrictScalarsResolutionCompatible
public import Mathlib.Algebra.Homology.HomotopyCategory.KInjective
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives
import Mathlib.CategoryTheory.Abelian.Injective.Ext

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.EtaleSheafRestrictScalarsInjectiveResolutionHomE, Development.EtaleCohomology.TateTwists.EtaleSheafRestrictScalarsResolutionHomExistsOfEx

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleSheafRestrictScalarsInjectiveResolutionHomE =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleSheafRestrictScalarsInjectiveResolutionHomE", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleRestrictScalarsResolutionCompatible\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

def LateralTheory.EtaleFoundations.EtaleSheafRestrictScalarsInjectiveResolutionHomExists : Prop :=
  ∀ (R S : Type) [CommRing R] [CommRing S] (φ : R →+* S) (F : Shv S),
    ∃ m : ∀ n : ℤ, (restr φ).obj ((res S F).X n) ⟶ (res R ((restr φ).obj F)).X n,
      (∀ i j : ℤ, (restr φ).map ((res S F).d i j) ≫ m j = m i ≫ (res R ((restr φ).obj F)).d i j) ∧
      (restr φ).map (resι S F) ≫ m 0 = resι R ((restr φ).obj F)

namespace LateralTheory.EtaleFoundations

theorem etaleSheaf_restrictScalars_resolution_comparison_of_hom (hH : EtaleSheafRestrictScalarsInjectiveResolutionHomExists) : EtaleRestrictScalarsResolutionCompatible := by
  intro R S _ _ φ F U a
  obtain ⟨m, hc, h0⟩ := hH R S φ F
  have hex : ∃ ρ : SemiMap (res S F) (res R ((restr φ).obj F)), ∀ (U : Scheme.{0}) (a : Sec F U),
      ρ.app U 0 (Sec.map (resι S F) a) = Sec.map (resι R ((restr φ).obj F)) (show Sec ((restr φ).obj F) U from a) := by
    refine ⟨⟨fun U s => ((m s).hom.app (op U)).hom.toAddMonoidHom, ?_, ?_⟩, ?_⟩
    · intro V U g s x
      have h := (m s).hom.naturality g.op
      exact (LinearMap.congr_fun (congrArg ModuleCat.Hom.hom h) x).symm
    · intro U s t x
      have h := congrArg (fun f : (restr φ).obj ((res S F).X s) ⟶ (res R ((restr φ).obj F)).X t => (f.hom.app (op U)).hom x) (hc s t)
      exact h.symm
    · intro U x
      exact congrArg (fun f : (restr φ).obj F ⟶ (res R ((restr φ).obj F)).X 0 => (f.hom.app (op U)).hom x) h0
  exact pick_spec hex U a

end LateralTheory.EtaleFoundations
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleSheafRestrictScalarsInjectiveResolutionHomE =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleSheafRestrictScalarsResolutionHomExistsOfEx =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleSheafRestrictScalarsResolutionHomExistsOfEx", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleSheafRestrictScalarsInjectiveResolutionHomE\npublic import Mathlib.Algebra.Homology.HomotopyCategory.KInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives\nimport Mathlib.CategoryTheory.Abelian.Injective.Ext\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.EtaleFoundations

lemma restr_ex_hom_ext_of_qis {C : Type*} [Category C] [Abelian C] {K K' L : CochainComplex C ℤ}
    [L.IsKInjective] (s : K ⟶ K') [QuasiIso s] (f : K ⟶ L) :
    ∃ g : K' ⟶ L, Nonempty (Homotopy (s ≫ g) f) := by
  have hL := CochainComplex.IsKInjective.rightOrthogonal L
  rw [← ObjectProperty.isLocal_trW] at hL
  have hs : (HomotopyCategory.subcategoryAcyclic C).trW ((HomotopyCategory.quotient C _).map s) := by
    rw [← HomotopyCategory.quasiIso_eq_trW_subcategoryAcyclic, HomotopyCategory.quotient_map_mem_quasiIso_iff]
    exact (HomologicalComplex.mem_quasiIso_iff _).2 inferInstance
  obtain ⟨g', hg'⟩ := (hL _ hs).2 ((HomotopyCategory.quotient C _).map f)
  obtain ⟨g, rfl⟩ := (HomotopyCategory.quotient C _).map_surjective g'
  refine ⟨g, ⟨HomotopyCategory.homotopyOfEq _ _ ?_⟩⟩
  simpa using hg'

def EtaleSheafRestrictScalarsFunctorExact : Prop :=
  ∀ (R S : Type) [CommRing R] [CommRing S] (φ : R →+* S),
    PreservesFiniteLimits (restr φ) ∧ PreservesFiniteColimits (restr φ)

theorem etaleSheaf_restrictScalars_resolution_hom_exists_of_exact (hE : EtaleSheafRestrictScalarsFunctorExact) : EtaleSheafRestrictScalarsInjectiveResolutionHomExists := by
  intro R S _ _ φ F
  obtain ⟨h1, h2⟩ := hE R S φ
  let G := restr φ
  have : G.Additive := G.additive_of_preserves_binary_products
  let IS := injectiveResolution F
  let IR := injectiveResolution (G.obj F)
  have : (res R (G.obj F)).IsKInjective := inferInstanceAs IR.cochainComplex.IsKInjective
  have : (res R (G.obj F)).IsStrictlyGE 0 := inferInstanceAs (IR.cochainComplex.IsStrictlyGE 0)
  let s := (G.mapHomologicalComplex (ComplexShape.up ℤ)).map IS.ι'
  have : QuasiIso s := inferInstance
  let f0 := (HomologicalComplex.singleMapHomologicalComplex G (ComplexShape.up ℤ) 0).hom.app F ≫ IR.ι'
  obtain ⟨g, ⟨h⟩⟩ := restr_ex_hom_ext_of_qis (L := res R (G.obj F)) s f0
  refine ⟨fun n => g.f n, fun i j => (g.comm i j).symm, ?_⟩
  have hz1 : IsZero (((G.mapHomologicalComplex (ComplexShape.up ℤ)).obj
      ((HomologicalComplex.single _ (ComplexShape.up ℤ) 0).obj F)).X 1) :=
    G.map_isZero (HomologicalComplex.isZero_single_obj_X (ComplexShape.up ℤ) 0 F 1 (by decide))
  have key : (s ≫ g).f 0 = f0.f 0 := by
    rw [h.comm 0]
    have e1 : dNext 0 h.hom = 0 := by
      have e : h.hom 1 0 = 0 := hz1.eq_of_src _ _
      rw [dNext_eq h.hom (show (ComplexShape.up ℤ).Rel 0 1 from rfl), e, comp_zero]
    have e2 : prevD 0 h.hom = 0 := by
      rw [prevD_eq h.hom (show (ComplexShape.up ℤ).Rel (-1) 0 from rfl),
        ((res R (G.obj F)).isZero_of_isStrictlyGE 0 (-1) (by decide)).eq_of_tgt (h.hom 0 (-1)) 0, zero_comp]
    rw [e1, e2, zero_add, zero_add]
  have key2 := congrArg (fun x => G.map (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 F).inv ≫ x) key
  simp only [s, f0, HomologicalComplex.comp_f, Functor.mapHomologicalComplex_map_f,
    HomologicalComplex.singleMapHomologicalComplex_hom_app_self, ← Category.assoc, ← Functor.map_comp] at key2
  have key3 : G.map (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 F).inv ≫ G.map (IS.ι'.f 0) ≫ g.f 0 =
      (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 (G.obj F)).inv ≫ IR.ι'.f 0 := by
    refine key2.trans ?_
    have c2 : ((HomologicalComplex.singleMapHomologicalComplex G (ComplexShape.up ℤ) 0).hom.app F).f 0 =
        G.map (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 F).hom ≫ (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 (G.obj F)).inv :=
      HomologicalComplex.singleMapHomologicalComplex_hom_app_self _ _ _ _
    calc _ = G.map (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 F).inv ≫ ((G.map (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 F).hom ≫ (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 (G.obj F)).inv) ≫ IR.ι'.f 0) := by
          exact congrArg (fun x => G.map (HomologicalComplex.singleObjXSelf (ComplexShape.up ℤ) 0 F).inv ≫ x) (congrArg (fun y => y ≫ IR.ι'.f 0) c2)
      _ = _ := by
          have aux : ∀ {A B : Shv S} {Y Z : Shv R} (e : A ≅ B) (u : G.obj B ⟶ Y) (v : Y ⟶ Z),
              G.map e.inv ≫ (G.map e.hom ≫ u) ≫ v = u ≫ v := by
            intro A B Y Z e u v
            rw [← Category.assoc, ← Category.assoc, ← G.map_comp, Iso.inv_hom_id, G.map_id, Category.id_comp]
          exact aux _ _ _
  simp only [resι]
  erw [Functor.map_comp, Category.assoc]
  exact key3

end LateralTheory.EtaleFoundations
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleSheafRestrictScalarsResolutionHomExistsOfEx =====
