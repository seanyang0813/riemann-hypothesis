module

public import Development.EtaleCohomology.EtaleSheaves.LeafLocPf
public import Mathlib.Algebra.Homology.Embedding.ExtendHomotopy
public import Mathlib.CategoryTheory.Preadditive.Injective.Preserves
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives
import Mathlib.CategoryTheory.Comma.LocallySmall

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LocalSlices, Development.EtaleCohomology.EtaleSheaves.LocalSlices.LocSliceOf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LocalSlices =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LocalSlices", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafLocPf\npublic import Mathlib.Algebra.Homology.Embedding.ExtendHomotopy\npublic import Mathlib.CategoryTheory.Preadditive.Injective.Preserves\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives\nimport Mathlib.CategoryTheory.Comma.LocallySmall\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 HomologicalComplex

namespace LateralTheory.E.LocSlicePf

section Gen
variable {C D : Type*} [Category* C] [Category* D]

section Ext
variable [HasZeroMorphisms C] [HasZeroObject C] [HasZeroMorphisms D] [HasZeroObject D]
  (G : C ⥤ D) [G.PreservesZeroMorphisms] {ι ι' : Type*} {c : ComplexShape ι} {c' : ComplexShape ι'}
  (K : HomologicalComplex C c) (e : c.Embedding c')

def mX : (o : Option ι) → G.obj (extend.X K o) ≅ extend.X ((G.mapHomologicalComplex c).obj K) o
  | some _ => Iso.refl _
  | none => IsZero.iso (G.map_isZero (extend.isZero_X K rfl)) (extend.isZero_X _ rfl)

def extIso : (G.mapHomologicalComplex c').obj (K.extend e) ≅ ((G.mapHomologicalComplex c).obj K).extend e :=
  Hom.isoOfComponents (fun i' => mX G K (e.r i')) (by
    intro i' j' _
    change (mX G K (e.r i')).hom ≫ extend.d _ (e.r i') (e.r j') = G.map (extend.d K (e.r i') (e.r j')) ≫ (mX G K (e.r j')).hom
    generalize e.r i' = a
    generalize e.r j' = b
    cases a <;> cases b
    · simp [extend.d]
    · simp [extend.d]
    · simp [extend.d]
    · exact (Category.id_comp _).trans (Category.comp_id _).symm)
end Ext

def hExt [Preadditive C] [HasZeroObject C] {ι ι' : Type*} {c : ComplexShape ι} {c' : ComplexShape ι'}
    {K L : HomologicalComplex C c} (h : HomotopyEquiv K L) (e : c.Embedding c') [e.IsRelIff] :
    HomotopyEquiv (K.extend e) (L.extend e) where
  hom := extendMap h.hom e
  inv := extendMap h.inv e
  homotopyHomInvId := by simpa [← extendMap_comp, extendMap_id] using h.homotopyHomInvId.extend e
  homotopyInvHomId := by simpa [← extendMap_comp, extendMap_id] using h.homotopyInvHomId.extend e

section Ab
variable [Abelian C] [Abelian D]

def hEq {X Y : D} (e : X ≅ Y) (I : InjectiveResolution X) (J : InjectiveResolution Y) :
    HomotopyEquiv I.cocomplex J.cocomplex where
  hom := InjectiveResolution.desc e.hom J I
  inv := InjectiveResolution.desc e.inv I J
  homotopyHomInvId := (InjectiveResolution.descCompHomotopy e.hom e.inv I J I).symm.trans (by
    simpa using InjectiveResolution.descIdHomotopy _ I)
  homotopyInvHomId := (InjectiveResolution.descCompHomotopy e.inv e.hom J I J).symm.trans (by
    simpa using InjectiveResolution.descIdHomotopy _ J)

def mapInj (P : C ⥤ D) [P.Additive] [P.PreservesInjectiveObjects] [P.PreservesHomology] {Z : C}
    (I : InjectiveResolution Z) : InjectiveResolution (P.obj Z) where
  cocomplex := (P.mapHomologicalComplex _).obj I.cocomplex
  injective n := P.injective_obj_of_injective (I.injective n)
  ι := (HomologicalComplex.singleMapHomologicalComplex P _ _).inv.app _ ≫ (P.mapHomologicalComplex _).map I.ι
  quasiIso := inferInstance

theorem gen (P : C ⥤ D) [P.Additive] [P.PreservesInjectiveObjects] [P.PreservesHomology]
    {A : Type*} [Category* A] [Abelian A] (E : D ⥤ A) [E.Additive] {F G : C}
    (I : InjectiveResolution F) (J : InjectiveResolution G) (e : P.obj F ≅ P.obj G) (n : ℤ) :
    Nonempty ((((P ⋙ E).mapHomologicalComplex _).obj I.cochainComplex).homology n ≅
      (((P ⋙ E).mapHomologicalComplex _).obj J.cochainComplex).homology n) := by
  let h1 := hEq e (mapInj P I) (mapInj P J)
  let h2 := hExt h1 ComplexShape.embeddingUpNat
  let h3 := (HomotopyEquiv.ofIso (extIso P I.cocomplex ComplexShape.embeddingUpNat)).trans
    (h2.trans (HomotopyEquiv.ofIso (extIso P J.cocomplex ComplexShape.embeddingUpNat).symm))
  exact ⟨(E.mapHomotopyEquiv h3).toHomologyIso n⟩
end Ab
end Gen

variable (R : Type) [CommRing R] (X : Scheme.{0})

instance : HasSheafify (Scheme.etaleTopology.{0}.over X) (ModuleCat.{1} (ULift.{1} R)) := by
  have : EssentiallySmall.{1} (Over X) := inferInstance
  infer_instance

instance : (Scheme.etaleTopology.{0}.overPullback (ModuleCat.{1} (ULift.{1} R)) X).Additive where
  map_add := rfl

instance : PreservesFiniteColimits (Scheme.etaleTopology.{0}.overPullback (ModuleCat.{1} (ULift.{1} R)) X) := by
  have := ((Over.forget X).sheafAdjunctionCocontinuous (ModuleCat.{1} (ULift.{1} R))
    (Scheme.etaleTopology.{0}.over X) Scheme.etaleTopology.{0}).leftAdjoint_preservesColimits
  infer_instance

def InjOver : Prop := ∀ (R : Type) [CommRing R] (X : Scheme.{0}),
  (Scheme.etaleTopology.{0}.overPullback (ModuleCat.{1} (ULift.{1} R)) X).PreservesInjectiveObjects

theorem LocSlice_of (hI : InjOver) : LateralTheory.E.LeafLocPf.LocSlice := by
  intro _ R _ X F G ⟨e⟩ n
  have := hI R X
  obtain ⟨i⟩ := gen (Scheme.etaleTopology.{0}.overPullback (ModuleCat.{1} (ULift.{1} R)) X)
    (sheafToPresheaf _ _ ⋙ (evaluation _ _).obj (op (Over.mk (𝟙 X))))
    (injectiveResolution F) (injectiveResolution G) e n
  exact ⟨i.toLinearEquiv.toAddEquiv⟩

end LateralTheory.E.LocSlicePf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LocalSlices =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LocalSlices.LocSliceOf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LocalSlices.LocSliceOf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LocalSlices\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 HomologicalComplex

namespace LateralTheory.E.LocSlicePf

def PullMono : Prop := ∀ (R : Type) [CommRing R] (X : Scheme.{0}),
  ((Over.forget X).sheafPullback (ModuleCat.{1} (ULift.{1} R)) (Scheme.etaleTopology.{0}.over X)
    Scheme.etaleTopology.{0}).PreservesMonomorphisms

theorem InjOver_of (hM : PullMono) : InjOver := by
  intro R _ X
  have := hM R X
  exact Functor.preservesInjectiveObjects_of_adjunction_of_preservesMonomorphisms
    ((Over.forget X).sheafAdjunctionContinuous (ModuleCat.{1} (ULift.{1} R)) (Scheme.etaleTopology.{0}.over X)
      Scheme.etaleTopology.{0})

theorem LocSlice_of' (hM : PullMono) : LateralTheory.E.LeafLocPf.LocSlice := LocSlice_of (InjOver_of hM)

end LateralTheory.E.LocSlicePf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LocalSlices.LocSliceOf =====
