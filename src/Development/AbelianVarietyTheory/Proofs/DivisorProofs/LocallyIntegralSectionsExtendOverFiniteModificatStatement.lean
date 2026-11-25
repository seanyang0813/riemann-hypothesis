module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinSubRange
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq
public import Mathlib.AlgebraicGeometry.Noetherian
public import Mathlib.Order.CompletePartialOrder
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtLIPreimageMono
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsProjOverWeierstrass
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Mathlib.CategoryTheory.Limits.Shapes.Countable
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale
import Mathlib.AlgebraicGeometry.Sites.Fpqc
import Mathlib.Tactic.Lemma
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import Mathlib.RingTheory.PicardGroup
import Mathlib.Tactic.ENatToNat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAffineChartCoverOverModification, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelObjIsoHomSubtype, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteNormalizationIntegralSections, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteNormalizationIntegralSectionsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGeneratedSubringLocalisedBasicOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinsetPowSmulMem, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGenerationIntegralFamilySections, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGenerationIntegralFamilySectionsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubringClosureOfIsIntegralElemAffineOpenLe, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteModificationIntegralElementsRegular, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreimageOfLocalPreimagesInjective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreimageOfLocalPreimagesInjectiveStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPulledBackPowerSectionOfLocalLifts, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FactorizationThroughFiniteModification, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericFibreSectionsInjectiveFlatIntegral, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumMulPulledBackFunctionsGenericFibreEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificat, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificatStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAffineChartCoverOverModification =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAffineChartCoverOverModification", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_finite_affine_chart_cover : ∀ (R : Type) [CommRing R] [IsDomain R] (M : Modif R) (G : Over M.S), QuasiCompact G.hom → ∀ (L : LB G.left), L.IsLB → ∃ (n : ℕ) (j : Fin n → L.ι) (W : Fin n → G.left.Opens) (U : Fin n → M.S.Opens), (⨆ b, W b = ⊤) ∧ (∀ b, W b ≤ L.U (j b)) ∧ (∀ b, W b ≤ G.hom ⁻¹ᵁ U b) ∧ (∀ b, IsAffineOpen (W b)) ∧ (∀ b, IsAffineOpen (U b)) := by
  intro R _ _ M G hG L hL
  haveI := M.proper
  haveI : CompactSpace M.S := QuasiCompact.compactSpace_of_compactSpace M.π
  haveI : CompactSpace G.left := QuasiCompact.compactSpace_of_compactSpace G.hom
  have hx : ∀ x : G.left, ∃ (j : L.ι) (W : G.left.Opens) (U : M.S.Opens),
      x ∈ W ∧ W ≤ L.U j ∧ W ≤ G.hom ⁻¹ᵁ U ∧ IsAffineOpen W ∧ IsAffineOpen U := by
    intro x
    have hxt : x ∈ (⊤ : G.left.Opens) := trivial
    rw [← hL.cover] at hxt
    obtain ⟨j, hj⟩ := TopologicalSpace.Opens.mem_iSup.1 hxt
    obtain ⟨U, hU, hxU, -⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.1 M.S.isBasis_affineOpens)
      (show G.hom x ∈ (⊤ : M.S.Opens) from trivial)
    obtain ⟨W, hW, hxW, hWle⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.1 G.left.isBasis_affineOpens)
      (show x ∈ L.U j ⊓ G.hom ⁻¹ᵁ U from ⟨hj, hxU⟩)
    exact ⟨j, W, U, hxW, hWle.trans inf_le_left, hWle.trans inf_le_right, hW, hU⟩
  choose j W U hxW hWj hWU hWa hUa using hx
  obtain ⟨t, ht⟩ := isCompact_univ.elim_finite_subcover (fun x => (W x : Set G.left)) (fun x => (W x).isOpen)
    (fun x _ => Set.mem_iUnion.2 ⟨x, hxW x⟩)
  let e := t.equivFin
  refine ⟨t.card, fun b => j (e.symm b), fun b => W (e.symm b), fun b => U (e.symm b), ?_,
    fun b => hWj _, fun b => hWU _, fun b => hWa _, fun b => hUa _⟩
  rw [eq_top_iff]
  intro x _
  obtain ⟨y, hy, hxy⟩ := Set.mem_iUnion₂.1 (ht (Set.mem_univ x))
  exact TopologicalSpace.Opens.mem_iSup.2 ⟨e ⟨y, hy⟩, by simpa using hxy⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAffineChartCoverOverModification =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelObjIsoHomSubtype =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelObjIsoHomSubtype", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinSubRange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.AlgebraicGeometry.Sites.Fpqc\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits
open AlgebraicGeometry.Scheme AlgebraicGeometry.Scheme.AffineZariskiSite

noncomputable section

namespace GlobalTheory.RelativeSpectrum

structure QCohSub {X Y : Scheme.{0}} (f : X ⟶ Y) (F : ∀ V : Y.Opens, Subring Γ(X, f ⁻¹ᵁ V)) : Prop where
  app_mem : ∀ V : Y.Opens, IsAffineOpen V → ∀ a : Γ(Y, V), (f.app V).hom a ∈ F V
  res_mem : ∀ (V V' : Y.Opens) (hle : V' ≤ V), IsAffineOpen V → IsAffineOpen V' → ∀ x ∈ F V,
    (X.presheaf.map (homOfLE (f.preimage_mono hle)).op).hom x ∈ F V'
  loc : ∀ V : Y.Opens, IsAffineOpen V → ∀ (r : Γ(Y, V)) (x : Γ(X, f ⁻¹ᵁ Y.basicOpen r)),
    x ∈ F (Y.basicOpen r) →
    ∃ (k : ℕ) (y : Γ(X, f ⁻¹ᵁ V)), y ∈ F V ∧
      (X.presheaf.map (homOfLE (f.preimage_mono (Y.basicOpen_le r))).op).hom y =
        (X.presheaf.map (homOfLE (f.preimage_mono (Y.basicOpen_le r))).op).hom ((f.app V).hom r) ^ k * x

variable {X Y : Scheme.{0}} {f : X ⟶ Y} {F : ∀ V : Y.Opens, Subring Γ(X, f ⁻¹ᵁ V)}

def diagram (H : QCohSub f F) : Y.AffineZariskiSiteᵒᵖ ⥤ CommRingCat where
  obj U := .of (F U.unop.1)
  map {V U} i :=
    CommRingCat.ofHom ((X.presheaf.map (homOfLE (f.preimage_mono (toOpens_mono i.unop.le))).op).hom.restrict
      _ _ fun x hx ↦ H.res_mem _ _ (toOpens_mono i.unop.le) V.unop.2 U.unop.2 x hx)
  map_id U := by
    ext x
    change ((X.presheaf.map (𝟙 _)).hom x.1) = x.1
    simp
  map_comp i j := by
    simp only [← CommRingCat.ofHom_comp]
    rw [← homOfLE_comp (f.preimage_mono (toOpens_mono j.unop.le))
      (f.preimage_mono (toOpens_mono i.unop.le)), op_comp]
    simp_rw [X.presheaf.map_comp]
    rfl

def diagramMap (H : QCohSub f F) : (toOpensFunctor Y).op ⋙ Y.presheaf ⟶ diagram H where
  app U := CommRingCat.ofHom ((f.app U.unop.1).hom.codRestrict (F U.unop.1) (H.app_mem _ U.unop.2))
  naturality {U V} i := by
    ext x
    exact Subtype.ext congr($(f.naturality ((toOpensFunctor Y).op.map i)) x)

variable [QuasiCompact f] [QuasiSeparated f]

lemma coequifibered (H : QCohSub f F) : (diagramMap H).Coequifibered := by
  refine coequifibered_iff_forall_isLocalizationAway.mpr fun U r ↦ ?_
  let inst : Algebra Γ(X, f ⁻¹ᵁ U.1) Γ(X, f ⁻¹ᵁ Y.basicOpen r) :=
    (X.presheaf.map (homOfLE (f.preimage_mono (Y.basicOpen_le r))).op).hom.toAlgebra
  have hl : IsLocalization.Away ((f.app U.1).hom r) Γ(X, f ⁻¹ᵁ Y.basicOpen r) := by
    let : Algebra Γ(X, f ⁻¹ᵁ U.1) Γ(X, X.basicOpen (f.app _ r)) :=
      (X.presheaf.map (homOfLE (X.basicOpen_le _)).op).hom.toAlgebra
    dsimp +instances [inst]
    rw! (castMode := .all) [f.preimage_basicOpen r]
    exact isLocalization_basicOpen_of_qcqs (f.isCompact_preimage U.2.isCompact)
        (f.isQuasiSeparated_preimage U.2.isQuasiSeparated) (f.app _ r)
  let := ((diagram H).map (homOfLE (U.basicOpen_le r)).op).hom.toAlgebra
  refine IsLocalization.Away.mk _ ?_ ?_ ?_
  · have h1 : IsUnit ((Y.presheaf.map (homOfLE (Y.basicOpen_le r)).op).hom r) :=
      Y.toRingedSpace.isUnit_res_basicOpen r
    have h2 := h1.map ((diagramMap H).app (.op (U.basicOpen r))).hom
    convert h2 using 1
    exact congr($((diagramMap H).naturality (homOfLE (U.basicOpen_le r)).op) r).symm
  · intro s
    obtain ⟨k, y, hy, e⟩ := H.loc U.1 U.2 r s.1 s.2
    refine ⟨k, ⟨y, hy⟩, Subtype.ext ?_⟩
    exact (mul_comm _ _).trans e.symm
  · intro a b hab
    have hab' : algebraMap Γ(X, f ⁻¹ᵁ U.1) Γ(X, f ⁻¹ᵁ Y.basicOpen r) a.1 =
        algebraMap Γ(X, f ⁻¹ᵁ U.1) Γ(X, f ⁻¹ᵁ Y.basicOpen r) b.1 := congrArg Subtype.val hab
    obtain ⟨n, hn⟩ := IsLocalization.Away.exists_of_eq ((f.app U.1).hom r) hab'
    exact ⟨n, Subtype.ext hn⟩

def glueData (H : QCohSub f F) := relativeGluingData (coequifibered H)

instance (H : QCohSub f F) : ((glueData H).functor ⋙ Scheme.forget).IsLocallyDirected :=
  Cover.RelativeGluingData.instIsLocallyDirectedI₀CompFunctorForgetOfIsThin ..

def relSpec (H : QCohSub f F) : Scheme := (glueData H).glued

def relCover (H : QCohSub f F) : (relSpec H).OpenCover := (glueData H).cover


lemma isOpenImmersion_relCover (H : QCohSub f F) (U : Y.affineOpens) :
    IsOpenImmersion ((relCover H).f U) :=
  (relCover H).map_prop U

attribute [local instance] isOpenImmersion_relCover

def toRel (H : QCohSub f F) : X ⟶ relSpec H :=
  Scheme.OpenCover.glueMorphismsOfLocallyDirected
    ((directedCover Y).pullback₁ f)
    (fun U ↦
      (pullbackRestrictIsoRestrict f _).hom ≫
      (f ⁻¹ᵁ U.1).toSpecΓ ≫ Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫ (relCover H).f U)
    fun {U V : Y.AffineZariskiSite} i ↦ by
  have : (pullbackRestrictIsoRestrict f U.1).inv ≫
      Cover.trans ((directedCover Y).pullback₁ f) i ≫
      (pullbackRestrictIsoRestrict f V.1).hom = X.homOfLE
        (f.preimage_mono (toOpens_mono i.1.1)) := by
    rw [← cancel_mono (Scheme.Opens.ι _)]
    have h2 : (Cover.trans ((directedCover Y).pullback₁ f) i ≫
        (pullbackRestrictIsoRestrict f V.1).hom) ≫ (f ⁻¹ᵁ V.1).ι = pullback.fst f U.1.ι :=
      (Category.assoc _ _ _).trans
        ((congrArg (Cover.trans ((directedCover Y).pullback₁ f) i ≫ ·)
          (pullbackRestrictIsoRestrict_hom_ι f V.1)).trans
          ((pullback.lift_fst _ _ _).trans (Category.comp_id _)))
    exact (Category.assoc _ _ _).trans
      ((congrArg ((pullbackRestrictIsoRestrict f U.1).inv ≫ ·) h2).trans
        ((pullbackRestrictIsoRestrict_inv_fst f U.1).trans (Scheme.homOfLE_ι _ _).symm))
  refine (Iso.inv_comp_eq _).mp ?_
  have h1 : (pullbackRestrictIsoRestrict f U.1).inv ≫
      Cover.trans ((directedCover Y).pullback₁ f) i ≫
      (pullbackRestrictIsoRestrict f V.1).hom ≫
        (f ⁻¹ᵁ V.1).toSpecΓ ≫ Spec.map (CommRingCat.ofHom (F V.1).subtype) ≫ (relCover H).f V =
      X.homOfLE (f.preimage_mono (toOpens_mono i.1.1)) ≫
        (f ⁻¹ᵁ V.1).toSpecΓ ≫ Spec.map (CommRingCat.ofHom (F V.1).subtype) ≫ (relCover H).f V :=
    (Category.assoc _ _ _).symm.trans ((Category.assoc _ _ _).symm.trans
      (congrArg (· ≫ (f ⁻¹ᵁ V.1).toSpecΓ ≫
        Spec.map (CommRingCat.ofHom (F V.1).subtype) ≫ (relCover H).f V) this))
  refine h1.trans ?_
  have hres : X.homOfLE (f.preimage_mono (toOpens_mono i.1.1)) ≫
      (f ⁻¹ᵁ V.1).toSpecΓ ≫ Spec.map (CommRingCat.ofHom (F V.1).subtype) ≫ (relCover H).f V =
      (f ⁻¹ᵁ U.1).toSpecΓ ≫
        Spec.map (X.presheaf.map (homOfLE (f.preimage_mono (toOpens_mono i.1.1))).op) ≫
        Spec.map (CommRingCat.ofHom (F V.1).subtype) ≫ (relCover H).f V :=
    (Scheme.Opens.toSpecΓ_SpecMap_presheaf_map_assoc ..).symm
  refine hres.trans (congrArg ((f ⁻¹ᵁ U.1).toSpecΓ ≫ ·) ?_)
  have hring : CommRingCat.ofHom (F V.1).subtype ≫
      X.presheaf.map (homOfLE (f.preimage_mono (toOpens_mono i.1.1))).op =
      (diagram H).map i.op ≫ CommRingCat.ofHom (F U.1).subtype := by
    ext x; rfl
  have hsp : Spec.map (X.presheaf.map (homOfLE (f.preimage_mono (toOpens_mono i.1.1))).op) ≫
      Spec.map (CommRingCat.ofHom (F V.1).subtype) ≫ (relCover H).f V =
      Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫
        Spec.map ((diagram H).map i.op) ≫ (relCover H).f V :=
    (Spec.map_comp_assoc (CommRingCat.ofHom (F V.1).subtype)
      (X.presheaf.map (homOfLE (f.preimage_mono (toOpens_mono i.1.1))).op) _).symm.trans
      ((congrArg (fun φ => Spec.map φ ≫ (relCover H).f V) hring).trans
        (Spec.map_comp_assoc ((diagram H).map i.op) (CommRingCat.ofHom (F U.1).subtype) _))
  exact hsp.trans (congrArg (Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫ ·)
    (colimit.w (glueData H).functor i))

@[reassoc]
lemma ι_toRel (H : QCohSub f F) (U : Y.affineOpens) :
    (f ⁻¹ᵁ U.1).ι ≫ toRel H = (f ⁻¹ᵁ U.1).toSpecΓ ≫
      Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫ (relCover H).f U := by
  rw [← cancel_epi (pullbackRestrictIsoRestrict f U.1).hom, ← Category.assoc]
  trans ((directedCover Y).pullback₁ f).f U ≫ toRel H
  · congr 1; simp; rfl
  delta toRel
  generalize_proofs _ _ _ _ H'
  exact Scheme.OpenCover.map_glueMorphismsOfLocallyDirected _ _ H' _

def fromRel (H : QCohSub f F) : relSpec H ⟶ Y := (glueData H).toBase

lemma ι_fromRel (H : QCohSub f F) (U : Y.affineOpens) :
    (relCover H).f U ≫ fromRel H =
      Spec.map ((diagramMap H).app (.op U)) ≫ U.2.fromSpec :=
  colimit.ι_desc _ _

lemma fromRel_preimage (H : QCohSub f F) (U : Y.affineOpens) :
    fromRel H ⁻¹ᵁ U = ((relCover H).f U).opensRange := by
  simpa using! (glueData H).toBase_preimage_eq_opensRange_ι U

lemma toRel_fromRel (H : QCohSub f F) : toRel H ≫ fromRel H = f := by
  refine Scheme.Cover.hom_ext (X.openCoverOfIsOpenCover _
    (.comap (iSup_affineOpens_eq_top Y) f.base.1)) _ _ fun U ↦ ?_
  let V : Y.affineOpens := U
  have hV : IsAffineOpen V.1 := V.2
  change (f ⁻¹ᵁ V.1).ι ≫ toRel H ≫ fromRel H = (f ⁻¹ᵁ V.1).ι ≫ f
  refine (ι_toRel_assoc H V _).trans ?_
  have hring : (diagramMap H).app (.op V) ≫ CommRingCat.ofHom (F V.1).subtype = f.app V.1 := by
    ext x; rfl
  have h2 : (Spec.map (CommRingCat.ofHom (F V.1).subtype) ≫ (relCover H).f V) ≫ fromRel H =
      Spec.map (f.app V.1) ≫ hV.fromSpec :=
    (Category.assoc _ _ _).trans
      ((congrArg (Spec.map _ ≫ ·) (ι_fromRel H V)).trans
        ((Spec.map_comp_assoc _ _ _).symm.trans
          (congrArg (fun φ => Spec.map φ ≫ hV.fromSpec) hring)))
  refine (congrArg ((f ⁻¹ᵁ V.1).toSpecΓ ≫ ·) h2).trans ?_
  simp [hV.toSpecΓ_fromSpec]

private def isFiniteProp : MorphismProperty Scheme.{0} := fun _ _ h => IsFinite h

private lemma isZariskiLocalAtTarget_isFiniteProp : IsZariskiLocalAtTarget isFiniteProp :=
  (HasAffineProperty.iff.mp
    ((HasAffineProperty.affineAnd_iff isFiniteProp RingHom.finite_respectsIso
      RingHom.finite_localizationPreserves.away RingHom.finite_ofLocalizationSpan).mpr
      isFinite_iff)).1

lemma isFinite_fromRel (H : QCohSub f F)
    (hfin : ∀ U : Y.affineOpens, ((diagramMap H).app (.op U)).hom.Finite) : IsFinite (fromRel H) := by
  have := isZariskiLocalAtTarget_isFiniteProp
  change isFiniteProp (fromRel H)
  rw [IsZariskiLocalAtTarget.iff_of_iSup_eq_top (P := isFiniteProp) _
    (iSup_affineOpens_eq_top _)]
  intro U
  have hU : IsAffineOpen U.1 := U.2
  have : IsOpenImmersion hU.fromSpec := hU.isOpenImmersion_fromSpec
  let e := IsOpenImmersion.isoOfRangeEq (fromRel H ⁻¹ᵁ U.1).ι ((relCover H).f U)
      (by simpa using congr($(fromRel_preimage H U).1))
  rw [← MorphismProperty.cancel_left_of_respectsIso isFiniteProp e.inv,
    ← MorphismProperty.cancel_right_of_respectsIso isFiniteProp _ hU.isoSpec.hom]
  change IsFinite _
  convert! (IsFinite.SpecMap_iff _).mpr (hfin U)
  refine (cancel_mono hU.fromSpec).mp ?_
  simp [IsAffineOpen.isoSpec_hom, hU.toSpecΓ_fromSpec, e, ι_fromRel]
  rfl

def relObjIso (H : QCohSub f F) {U : Y.Opens} (hU : IsAffineOpen U) :
    Γ(relSpec H, fromRel H ⁻¹ᵁ U) ≅ .of (F U) :=
  have : IsOpenImmersion ((relCover H).f ⟨U, hU⟩) := (relCover H).map_prop ⟨U, hU⟩
  (relSpec H).presheaf.mapIso (eqToIso
    ((Scheme.Hom.image_top_eq_opensRange _).trans (fromRel_preimage H ⟨U, hU⟩).symm)).op ≪≫
  ((relCover H).f ⟨U, hU⟩).appIso ⊤ ≪≫ Scheme.ΓSpecIso _

lemma toRel_app_preimage (H : QCohSub f F) (U : Y.affineOpens) :
    (toRel H).app (fromRel H ⁻¹ᵁ ↑U) =
      (relObjIso H U.2).hom ≫
      CommRingCat.ofHom (F U.1).subtype ≫
      X.presheaf.map (eqToHom (by
        rw [← Scheme.Hom.comp_preimage (toRel H) (fromRel H), toRel_fromRel])).op := by
  let V : (relSpec H).Opens := fromRel H ⁻¹ᵁ U.1
  let W : X.Opens := f ⁻¹ᵁ U.1
  let c : Spec (.of (F U.1)) ⟶ relSpec H := (relCover H).f U
  have : IsOpenImmersion c := (relCover H).map_prop U
  have hpre : toRel H ⁻¹ᵁ V = W := by
    dsimp only [V, W]
    rw [← Scheme.Hom.comp_preimage, toRel_fromRel]
  have hopen : c ''ᵁ ⊤ = V :=
    (Scheme.Hom.image_top_eq_opensRange c).trans (fromRel_preimage H U).symm
  have hι : W.ι ≫ toRel H = W.toSpecΓ ≫ Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫ c :=
    ι_toRel H U
  have hle_lhs : ⊤ ≤ (W.ι ≫ toRel H) ⁻¹ᵁ V := by
    rw [Scheme.Hom.comp_preimage, hpre, Scheme.Opens.ι_preimage_self]
  have hle_rhs : ⊤ ≤ (W.toSpecΓ ≫ Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫ c) ⁻¹ᵁ V :=
    hι ▸ hle_lhs
  have hcongr_aux : ∀ {g₁ g₂ : W.toScheme ⟶ relSpec H} (e : g₁ = g₂)
      (h₁ : ⊤ ≤ g₁ ⁻¹ᵁ V) (h₂ : ⊤ ≤ g₂ ⁻¹ᵁ V),
      g₁.appLE V ⊤ h₁ = g₂.appLE V ⊤ h₂ := by
    rintro g₁ _ rfl _ _; rfl
  have hlhs : (W.ι ≫ toRel H).appLE V ⊤ hle_lhs =
      (toRel H).appLE V W hpre.ge ≫ W.topIso.inv := by
    rw [← Scheme.Hom.appLE_comp_appLE W.ι (toRel H) V W ⊤ hpre.ge W.ι_preimage_self.ge]
    congr 1
    rw [Scheme.Opens.ι_appLE, Scheme.Opens.topIso_inv]
    rfl
  have hc_le : ⊤ ≤ c ⁻¹ᵁ V := by
    rw [← hopen]
    exact (Scheme.Hom.preimage_image_eq c ⊤).ge
  have hc_app : c.appLE V ⊤ hc_le =
      (relSpec H).presheaf.map (eqToHom hopen).op ≫ (c.appIso ⊤).hom := by
    rw [Scheme.Hom.appIso_hom', Scheme.Hom.map_appLE]
  have hsc_le : ⊤ ≤ (Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫ c) ⁻¹ᵁ V := by
    rw [Scheme.Hom.comp_preimage, ← hopen, Scheme.Hom.preimage_image_eq, Scheme.Hom.preimage_top]
  have hrhs : (W.toSpecΓ ≫ Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫ c).appLE V ⊤ hle_rhs =
      (relSpec H).presheaf.map (eqToHom hopen).op ≫ (c.appIso ⊤).hom ≫
        (Scheme.ΓSpecIso (.of (F U.1))).hom ≫ CommRingCat.ofHom (F U.1).subtype ≫ W.topIso.inv := by
    have appLE_top : ∀ {A B : Scheme} (g : A ⟶ B), g.appLE ⊤ ⊤ le_top = g.appTop :=
      fun {A _} g =>
        (congrArg (g.app ⊤ ≫ ·) (A.presheaf.map_id (Opposite.op (g ⁻¹ᵁ ⊤)))).trans
          (Category.comp_id (g.app ⊤))
    have h1 : (W.toSpecΓ ≫ Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫ c).appLE V ⊤ hle_rhs =
        c.appLE V ⊤ hc_le ≫
          (Spec.map (CommRingCat.ofHom (F U.1).subtype)).appTop ≫ W.toSpecΓ.appTop := by
      have ha := Scheme.Hom.appLE_comp_appLE W.toSpecΓ
        (Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫ c) V ⊤ ⊤ hsc_le le_top
      have hb := Scheme.Hom.appLE_comp_appLE (Spec.map (CommRingCat.ofHom (F U.1).subtype)) c
        V ⊤ ⊤ hc_le le_top
      rw [← ha, ← hb, appLE_top, appLE_top, Category.assoc]
    have hnat : (Spec.map (CommRingCat.ofHom (F U.1).subtype)).appTop ≫
        (Scheme.ΓSpecIso Γ(X, W)).hom ≫ W.topIso.inv =
        (Scheme.ΓSpecIso (.of (F U.1))).hom ≫ CommRingCat.ofHom (F U.1).subtype ≫ W.topIso.inv :=
      Scheme.ΓSpecIso_naturality_assoc (CommRingCat.ofHom (F U.1).subtype) W.topIso.inv
    rw [h1, hc_app, Scheme.Opens.toSpecΓ_appTop, hnat, Category.assoc]
  have happLE : (toRel H).appLE V W hpre.ge =
      (relObjIso H U.2).hom ≫ CommRingCat.ofHom (F U.1).subtype := by
    refine (cancel_mono W.topIso.inv).mp ?_
    calc
      (toRel H).appLE V W hpre.ge ≫ W.topIso.inv = (W.ι ≫ toRel H).appLE V ⊤ hle_lhs := hlhs.symm
      _ = (W.toSpecΓ ≫ Spec.map (CommRingCat.ofHom (F U.1).subtype) ≫ c).appLE V ⊤ hle_rhs :=
            hcongr_aux hι hle_lhs hle_rhs
      _ = (relSpec H).presheaf.map (eqToHom hopen).op ≫ (c.appIso ⊤).hom ≫
            (Scheme.ΓSpecIso (.of (F U.1))).hom ≫ CommRingCat.ofHom (F U.1).subtype ≫ W.topIso.inv := hrhs
      _ = ((relObjIso H U.2).hom ≫ CommRingCat.ofHom (F U.1).subtype) ≫ W.topIso.inv := by
            simp only [relObjIso, Iso.trans_hom, Functor.mapIso_hom, Category.assoc]
            rfl
  calc
    (toRel H).app V = (toRel H).appLE V W hpre.ge ≫ X.presheaf.map (eqToHom hpre).op := by
      rw [Scheme.Hom.appLE, Category.assoc, ← Functor.map_comp]
      change (toRel H).app V = (toRel H).app V ≫ X.presheaf.map (𝟙 _)
      rw [X.presheaf.map_id, Category.comp_id]
    _ = (relObjIso H U.2).hom ≫ CommRingCat.ofHom (F U.1).subtype ≫
          X.presheaf.map (eqToHom hpre).op := by
      rw [happLE, Category.assoc]

lemma relObjIso_hom_subtype (H : QCohSub f F) {U : Y.Opens} (hU : IsAffineOpen U) :
    (relObjIso H hU).hom ≫ CommRingCat.ofHom (F U).subtype =
    (toRel H).appLE _ _ (by
      rw [← Scheme.Hom.comp_preimage (toRel H) (fromRel H), toRel_fromRel]) := by
  rw [Hom.appLE, toRel_app_preimage H ⟨U, hU⟩, Category.assoc]
  simp [← Functor.map_comp]
  rfl

lemma isDominant_toRel (H : QCohSub f F) (hfin : IsFinite (fromRel H)) : IsDominant (toRel H) := by
  have hqc : QuasiCompact (toRel H) := by
    apply MorphismProperty.of_postcomp (W := @QuasiCompact)
      (W' := @QuasiSeparated) _ (fromRel H)
    · infer_instance
    · rw [toRel_fromRel]
      infer_instance
  have hker : (toRel H).ker = ⊥ := by
    refine Scheme.IdealSheafData.ext_of_iSup_eq_top
      (fun U : Y.affineOpens ↦ ⟨fromRel H ⁻¹ᵁ U.1, U.2.preimage _⟩)
      (TopologicalSpace.IsOpenCover.comap (iSup_affineOpens_eq_top _) _) fun U ↦ ?_
    simp only [Hom.ker_apply, IdealSheafData.ideal_bot, Pi.bot_apply]
    rw [← RingHom.injective_iff_ker_eq_bot,
      ← ConcreteCategory.mono_iff_injective_of_preservesPullback, ← MorphismProperty.monomorphisms]
    simp only [toRel_app_preimage,
      eqToHom_op, MorphismProperty.cancel_left_of_respectsIso,
      MorphismProperty.cancel_right_of_respectsIso]
    rw [MorphismProperty.monomorphisms, @ConcreteCategory.mono_iff_injective_of_preservesPullback]
    exact Subtype.val_injective
  have := congr(($(hker).support : Set (relSpec H)))
  rw [IdealSheafData.support_bot, Scheme.Hom.support_ker, TopologicalSpace.Closeds.coe_top] at this
  exact ⟨dense_iff_closure_eq.mpr this⟩

lemma isReduced_relSpec (H : QCohSub f F) [AlgebraicGeometry.IsReduced X] :
    AlgebraicGeometry.IsReduced (relSpec H) :=
  have (i : _) : AlgebraicGeometry.IsReduced ((relCover H).X i) := by
    have : _root_.IsReduced ((diagram H).obj (.op i)) :=
      isReduced_of_injective (F i.1).subtype Subtype.val_injective
    change AlgebraicGeometry.IsReduced (Spec ((diagram H).obj (.op i)))
    infer_instance
  .of_openCover _ (relCover H)

lemma isIntegral_relSpec (H : QCohSub f F) [AlgebraicGeometry.IsIntegral X] [IsDominant (toRel H)] :
    AlgebraicGeometry.IsIntegral (relSpec H) :=
  have := isReduced_relSpec H
  have : IrreducibleSpace (relSpec H) := by
    rw [irreducibleSpace_def]
    convert!
      ((IrreducibleSpace.isIrreducible_univ X).image _
          (toRel H).continuous.continuousOn).closure
    simpa using (toRel H).denseRange.closure_range.symm
  isIntegral_of_irreducibleSpace_of_isReduced _

open ReciprocityTheory.ChartRestriction.G.Geo.Tor in
theorem exists_finite_cover {S : Scheme.{0}} {K : Type} [Field K] (gp : Sp K ⟶ S) [AlgebraicGeometry.IsIntegral S]
    [IsDominant gp] (F : ∀ V : S.Opens, Subring Γ(Sp K, gp ⁻¹ᵁ V)) (hF : GlobalTheory.Mum.IsFinSub gp F) :
    ∃ (S' : Scheme) (h : S' ⟶ S) (gp' : Sp K ⟶ S') (hgp : gp' ≫ h = gp),
      IsFinite h ∧ AlgebraicGeometry.IsIntegral S' ∧ IsDominant gp' ∧
      ∀ V : S.Opens, IsAffineOpen V → ∀ x ∈ F V, ∃ c : Γ(S', h ⁻¹ᵁ V),
        (gp'.appLE (h ⁻¹ᵁ V) (gp ⁻¹ᵁ V) (GlobalTheory.Mum.le_preimage_of_comp_eq gp gp' h hgp V)).hom c = x := by
  obtain ⟨h1, h2, h3, h4⟩ := hF
  have H : QCohSub gp F := ⟨h1, h2, h3⟩
  have : AlgebraicGeometry.IsIntegral (Sp K) := inferInstanceAs (AlgebraicGeometry.IsIntegral (Spec (.of K)))
  have : Subsingleton (Sp K) := inferInstanceAs (Subsingleton (PrimeSpectrum K))
  have : TopologicalSpace.NoetherianSpace (Sp K) := inferInstance
  have : QuasiCompact gp := inferInstance
  have : QuasiSeparated gp := inferInstance
  have hfin : IsFinite (fromRel H) := by
    refine isFinite_fromRel H fun U ↦ ?_
    obtain ⟨t, ht, hx⟩ := h4 U.1 U.2
    let : Algebra Γ(S, U.1) (F U.1) :=
      ((gp.app U.1).hom.codRestrict (F U.1) (h1 _ U.2)).toAlgebra
    change Module.Finite Γ(S, U.1) (F U.1)
    refine Module.Finite.of_fg_top ?_
    rw [Submodule.fg_def]
    refine ⟨Set.range (fun y : t ↦ (⟨y.1, ht y.1 y.2⟩ : F U.1)), Set.finite_range _, ?_⟩
    rw [eq_top_iff]
    rintro x -
    obtain ⟨c, hc⟩ := hx x.1 x.2
    have : x = ∑ y : t, c y.1 • (⟨y.1, ht y.1 y.2⟩ : F U.1) := by
      apply Subtype.ext
      rw [hc, AddSubmonoidClass.coe_finsetSum, ← Finset.sum_coe_sort]
      rfl
    rw [this]
    exact Submodule.sum_mem _ fun y _ ↦ Submodule.smul_mem _ _ (Submodule.subset_span ⟨y, rfl⟩)
  have := isDominant_toRel H hfin
  refine ⟨relSpec H, fromRel H, toRel H, toRel_fromRel H, hfin, isIntegral_relSpec H, this, ?_⟩
  intro V hV x hx
  refine ⟨(relObjIso H hV).inv.hom ⟨x, hx⟩, ?_⟩
  rw [← relObjIso_hom_subtype H hV, ← CommRingCat.comp_apply, Iso.inv_hom_id_assoc]
  rfl

end GlobalTheory.RelativeSpectrum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelObjIsoHomSubtype =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteNormalizationIntegralSections =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteNormalizationIntegralSections", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinSubRange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelObjIsoHomSubtype\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum
open Scheme.AffineZariskiSite

noncomputable section

theorem exists_finite_of_isFinSub : ∀ {S : Scheme.{0}} {K : Type} [Field K] (gp : Sp K ⟶ S) [IsIntegral S] [IsDominant gp]
    (F : ∀ V : S.Opens, Subring Γ(Sp K, gp ⁻¹ᵁ V)), IsFinSub gp F →
    ∃ (S' : Scheme.{0}) (h : S' ⟶ S) (gp' : Sp K ⟶ S') (hgp : gp' ≫ h = gp),
      IsFinite h ∧ IsIntegral S' ∧ IsDominant gp' ∧
      ∀ V : S.Opens, IsAffineOpen V → ∀ x ∈ F V, ∃ c : Γ(S', h ⁻¹ᵁ V),
        (gp'.appLE (h ⁻¹ᵁ V) (gp ⁻¹ᵁ V) (le_preimage_of_comp_eq gp gp' h hgp V)).hom c = x := by
  first
  | exact @_root_.GlobalTheory.RelativeSpectrum.exists_finite_cover

end

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteNormalizationIntegralSections =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteNormalizationIntegralSectionsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteNormalizationIntegralSectionsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinSubRange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteNormalizationIntegralSections\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


theorem _root_.GlobalTheory.T.exists_finite_normalization_integral_sections : ∀ {S : Scheme.{0}} {K : Type} [Field K] (gp : Sp K ⟶ S) [IsIntegral S] [IsDominant gp]
    (F : ∀ V : S.Opens, Subring Γ(Sp K, gp ⁻¹ᵁ V)), IsFinSub gp F →
    ∃ (S' : Scheme.{0}) (h : S' ⟶ S) (gp' : Sp K ⟶ S') (hgp : gp' ≫ h = gp),
      IsFinite h ∧ IsIntegral S' ∧ IsDominant gp' ∧
      ∀ V : S.Opens, IsAffineOpen V → ∀ x ∈ F V, ∃ c : Γ(S', h ⁻¹ᵁ V),
        (gp'.appLE (h ⁻¹ᵁ V) (gp ⁻¹ᵁ V) (le_preimage_of_comp_eq gp gp' h hgp V)).hom c = x := by
  first | exact @GlobalTheory.Mum.exists_finite_of_isFinSub
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteNormalizationIntegralSectionsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGeneratedSubringLocalisedBasicOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGeneratedSubringLocalisedBasicOpen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinSubRange\npublic import Mathlib.AlgebraicGeometry.Noetherian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem closure_pow_lift {L L' : Type*} [CommRing L] [CommRing L'] (ρ : L →+* L') (C : Subring L) (u : L)
    (hu : u ∈ C) (G : Set L') (hG : ∀ g ∈ G, ∃ k : ℕ, ∃ w ∈ C, ρ w = ρ u ^ k * g) :
    ∀ z ∈ Subring.closure G, ∃ k : ℕ, ∃ w ∈ C, ρ w = ρ u ^ k * z := by
  intro z hz
  induction hz using Subring.closure_induction with
  | mem g hg => exact hG g hg
  | zero => exact ⟨0, 0, C.zero_mem, by simp⟩
  | one => exact ⟨0, 1, C.one_mem, by simp⟩
  | add a b _ _ ha hb =>
    obtain ⟨k, w, hw, e⟩ := ha
    obtain ⟨l, v, hv, e'⟩ := hb
    refine ⟨k + l, u ^ l * w + u ^ k * v,
      C.add_mem (C.mul_mem (C.pow_mem hu _) hw) (C.mul_mem (C.pow_mem hu _) hv), ?_⟩
    rw [map_add (f := _), map_mul, map_mul, map_pow, map_pow, e, e']
    ring
  | neg a _ ha =>
    obtain ⟨k, w, hw, e⟩ := ha
    exact ⟨k, -w, C.neg_mem hw, by rw [map_neg, e]; ring⟩
  | mul a b _ _ ha hb =>
    obtain ⟨k, w, hw, e⟩ := ha
    obtain ⟨l, v, hv, e'⟩ := hb
    refine ⟨k + l, w * v, C.mul_mem hw hv, ?_⟩
    rw [map_mul, e, e']
    ring

theorem exists_pow_mul_res {S : Scheme.{0}} {U : S.Opens} (hc : IsCompact (U : Set S))
    (hq : IsQuasiSeparated (U : Set S)) (g : Γ(S, U)) (U' : S.Opens) (hle : U' ≤ U) (hU' : U' = S.basicOpen g)
    (a : Γ(S, U')) : ∃ (k : ℕ) (b : Γ(S, U)), (S.presheaf.map (homOfLE hle).op).hom b =
      (S.presheaf.map (homOfLE hle).op).hom g ^ k * a := by
  subst hU'
  letI := (S.presheaf.map (homOfLE (S.basicOpen_le g)).op).hom.toAlgebra
  have := isLocalization_basicOpen_of_qcqs hc hq g
  obtain ⟨⟨y, ⟨_, k, rfl⟩⟩, hy⟩ := IsLocalization.surj (Submonoid.powers g) a
  refine ⟨k, y, ?_⟩
  rw [← map_pow, mul_comm]
  simpa [RingHom.algebraMap_toAlgebra] using hy.symm

theorem presheaf_map_bijective_of_eq {X : Scheme.{0}} {A B : X.Opens} (h : B ≤ A) (e : A = B) :
    Function.Bijective (X.presheaf.map (homOfLE h).op).hom := by
  subst e
  have : homOfLE h = 𝟙 A := Subsingleton.elim _ _
  simpa [this] using Function.bijective_id

end GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem finFam_basicOpen_loc : ∀ {S : Scheme.{0}} {K : Type} [Field K] (gp : Sp K ⟶ S) [IsLocallyNoetherian S] {r : ℕ} (V : Fin r → S.Opens)
    (t : ∀ i, Finset Γ(Sp K, gp ⁻¹ᵁ V i)) (W : S.Opens), IsAffineOpen W → ∀ (f : Γ(S, W))
    (x : Γ(Sp K, gp ⁻¹ᵁ S.basicOpen f)), x ∈ finFam gp V t (S.basicOpen f) →
    ∃ (k : ℕ) (y : Γ(Sp K, gp ⁻¹ᵁ W)), y ∈ finFam gp V t W ∧
      resK gp (S.basicOpen_le f) y = resK gp (S.basicOpen_le f) ((gp.app W).hom f) ^ k * x := by
  intro S K _ gp _ r V t W hW f x hx
  haveI : Subsingleton (Sp K) := inferInstanceAs (Subsingleton (PrimeSpectrum K))
  let p : Sp K := (IsLocalRing.closedPoint K : PrimeSpectrum K)
  have pre : ∀ U U' : S.Opens, (gp.base p ∈ U ↔ gp.base p ∈ U') → gp ⁻¹ᵁ U = gp ⁻¹ᵁ U' := by
    intro U U' h
    ext q
    rw [Subsingleton.elim q p]
    exact h
  have bij : ∀ {U U' : S.Opens} (h : U' ≤ U), (gp.base p ∈ U ↔ gp.base p ∈ U') →
      Function.Bijective (resK gp h) := fun h e => presheaf_map_bijective_of_eq _ (pre _ _ e)
  by_cases hs : gp.base p ∈ S.basicOpen f
  swap
  · have e : gp ⁻¹ᵁ S.basicOpen f = ⊥ := by
      ext q
      rw [Subsingleton.elim q p]
      exact ⟨fun h => (hs h).elim, fun h => by simp at h⟩
    haveI : Subsingleton Γ(Sp K, gp ⁻¹ᵁ S.basicOpen f) := by rw [e]; infer_instance
    exact ⟨0, 0, Subring.zero_mem _, Subsingleton.elim _ _⟩
  have hsW : gp.base p ∈ W := S.basicOpen_le f hs
  haveI : IsNoetherianRing Γ(S, W) := IsLocallyNoetherian.component_noetherian ⟨W, hW⟩
  have hNW : TopologicalSpace.NoetherianSpace (W : Set S) := noetherianSpace_of_isAffineOpen W hW
  have hcpt : ∀ T ⊆ (W : Set S), IsCompact T := (TopologicalSpace.noetherianSpace_set_iff _).mp hNW
  have hle : ∀ i, S.basicOpen f ⊓ V i ≤ W ⊓ V i := fun i => inf_le_inf_right _ (S.basicOpen_le f)
  rw [mem_finFam] at hx
  have step : ∀ i, ∃ k : ℕ, ∃ w ∈ Subring.closure (Set.range (gp.app (W ⊓ V i)).hom ∪
      resK gp (inf_le_right : W ⊓ V i ≤ V i) '' (t i : Set _)),
      resK gp (hle i) w = resK gp (hle i) (resK gp (inf_le_left : W ⊓ V i ≤ W) ((gp.app W).hom f)) ^ k *
        resK gp (inf_le_left : S.basicOpen f ⊓ V i ≤ S.basicOpen f) x := by
    intro i
    refine closure_pow_lift _ _ _ ?_ _ ?_ _ (hx i)
    · rw [resK_app]
      exact Subring.subset_closure (Or.inl ⟨_, rfl⟩)
    rintro _ (⟨a, rfl⟩ | ⟨c, hc, rfl⟩)
    · have hU' : S.basicOpen f ⊓ V i =
          S.basicOpen ((S.presheaf.map (homOfLE (inf_le_left : W ⊓ V i ≤ W)).op).hom f) := by
        rw [Scheme.basicOpen_res]
        exact le_antisymm (le_inf (le_inf (inf_le_left.trans (S.basicOpen_le f)) inf_le_right) inf_le_left)
          (le_inf inf_le_right (inf_le_left.trans inf_le_right))
      have hWi : (↑(W ⊓ V i) : Set S) ⊆ W := fun z hz => hz.1
      obtain ⟨k, b, e⟩ := exists_pow_mul_res (hcpt _ hWi)
        (fun A B hA _ _ hB _ _ => hcpt _ ((Set.inter_subset_left.trans hA).trans hWi)) _ _ (hle i) hU' a
      refine ⟨k, (gp.app (W ⊓ V i)).hom b, Subring.subset_closure (Or.inl ⟨_, rfl⟩), ?_⟩
      rw [resK_app, resK_app, resK_app, e, map_mul, map_pow, ← CommRingCat.comp_apply]
    · refine ⟨0, resK gp (inf_le_right : W ⊓ V i ≤ V i) c, Subring.subset_closure (Or.inr ⟨c, hc, rfl⟩), ?_⟩
      rw [pow_zero, _root_.one_mul, resK_resK]
  choose k w hw e using step
  let N := Finset.univ.sup k
  obtain ⟨y, hy⟩ := (bij (S.basicOpen_le f) ⟨fun _ => hs, fun _ => hsW⟩).2
    (resK gp (S.basicOpen_le f) ((gp.app W).hom f) ^ N * x)
  refine ⟨N, y, ?_, hy⟩
  rw [mem_finFam]
  intro i
  have hki : k i ≤ N := Finset.le_sup (Finset.mem_univ i)
  have hmem : resK gp (inf_le_left : W ⊓ V i ≤ W) ((gp.app W).hom f) ^ (N - k i) * w i ∈
      Subring.closure (Set.range (gp.app (W ⊓ V i)).hom ∪
        resK gp (inf_le_right : W ⊓ V i ≤ V i) '' (t i : Set _)) := by
    refine Subring.mul_mem _ (Subring.pow_mem _ ?_ _) (hw i)
    rw [resK_app]
    exact Subring.subset_closure (Or.inl ⟨_, rfl⟩)
  have inj := (bij (hle i) (by simp [hs, hsW])).1
  convert hmem using 1
  apply inj
  rw [map_mul, map_pow, e i, ← _root_.mul_assoc, ← pow_add, Nat.sub_add_cancel hki, resK_resK, resK_resK,
    ← resK_resK gp (S.basicOpen_le f) (inf_le_left : S.basicOpen f ⊓ V i ≤ S.basicOpen f), hy, map_mul, map_pow,
    resK_resK]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGeneratedSubringLocalisedBasicOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinsetPowSmulMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinsetPowSmulMem", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinSubRange\npublic import Mathlib.AlgebraicGeometry.Noetherian\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory
open ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.FinitePowerAnnihilation

theorem exists_finset_pow_smul_mem {R A Rf Af : Type} [CommRing R] [CommRing A] [CommRing Rf] [CommRing Af]
    [IsNoetherianRing R] [Algebra R A] [Algebra R Rf] (f : R) [IsLocalization.Away f Rf]
    (ψ : Rf →+* Af) (ρ : A →+* Af) (hc : ∀ a, ρ (algebraMap R A a) = ψ (algebraMap R Rf a))
    (hk : ∀ x, ρ x = 0 → ∃ n : ℕ, f ^ n • x = 0) (T : Set Af) (hT : T.Finite)
    (hI : ∀ y ∈ T, ψ.IsIntegralElem y) (M : Set A)
    (hM : ∀ x ∈ M, ρ x ∈ Subring.closure (Set.range ψ ∪ T)) :
    ∃ s : Finset A, (s : Set A) ⊆ M ∧ ∀ x ∈ M, ∃ n : ℕ, f ^ n • x ∈ Submodule.span R (s : Set A) := by
  classical
  letI : Algebra Rf Af := ψ.toAlgebra
  haveI : IsNoetherianRing Rf := IsLocalization.isNoetherianRing (Submonoid.powers f) Rf inferInstance
  have hfg : (Algebra.adjoin Rf T).toSubmodule.FG := fg_adjoin_of_finite hT hI
  have hle : Submodule.span Rf (ρ '' M) ≤ (Algebra.adjoin Rf T).toSubmodule := by
    rw [Submodule.span_le]
    rintro _ ⟨x, hx, rfl⟩
    have h := hM x hx
    have : Subring.closure (Set.range ψ ∪ T) ≤ (Algebra.adjoin Rf T).toSubring := by
      rw [Subring.closure_le]
      rintro y (⟨a, rfl⟩ | hy)
      · exact (Algebra.adjoin Rf T).algebraMap_mem a
      · exact Algebra.subset_adjoin hy
    exact this h
  have hfg2 : (Submodule.span Rf (ρ '' M)).FG := hfg.of_le hle
  obtain ⟨u, hu, hsp⟩ := (Submodule.fg_span_iff_fg_span_finset_subset _).1 hfg2
  obtain ⟨s, hs, hsu⟩ := Finset.subset_set_image_iff.1 hu
  refine ⟨s, hs, fun x hx => ?_⟩
  have hx1 : ρ x ∈ Submodule.span Rf (u : Set Af) := hsp ▸ Submodule.subset_span ⟨x, hx, rfl⟩
  have key : ∀ z ∈ Submodule.span Rf (u : Set Af), ∃ n : ℕ, ∃ w ∈ Submodule.span R (s : Set A),
      ρ w = ρ (algebraMap R A f) ^ n * z := by
    intro z hz
    induction hz using Submodule.span_induction with
    | mem z hz =>
      rw [← hsu, Finset.coe_image] at hz
      obtain ⟨w, hw, rfl⟩ := hz
      exact ⟨0, w, Submodule.subset_span hw, by simp⟩
    | zero => exact ⟨0, 0, Submodule.zero_mem _, by simp⟩
    | add a b _ _ ha hb =>
      obtain ⟨n, w, hw, e⟩ := ha
      obtain ⟨m, v, hv, e'⟩ := hb
      refine ⟨n + m, f ^ m • w + f ^ n • v,
        Submodule.add_mem _ (Submodule.smul_mem _ _ hw) (Submodule.smul_mem _ _ hv), ?_⟩
      simp only [Algebra.smul_def, map_add (f := _), map_mul, map_pow, e, e']
      ring
    | smul c a _ ha =>
      obtain ⟨n, w, hw, e⟩ := ha
      obtain ⟨⟨b, ⟨_, k, rfl⟩⟩, hb⟩ := IsLocalization.surj (Submonoid.powers f) c
      refine ⟨n + k, b • w, Submodule.smul_mem _ _ hw, ?_⟩
      have hb' : ψ c * ρ (algebraMap R A f) ^ k = ρ (algebraMap R A b) := by
        rw [hc, hc, ← map_pow, ← map_mul, ← map_pow]
        exact congrArg ψ hb
      have hs' : c • a = ψ c * a := rfl
      rw [Algebra.smul_def, map_mul, e, ← hb', hs']
      ring
  obtain ⟨n, w, hw, e⟩ := key _ hx1
  obtain ⟨m, hm⟩ := hk (f ^ n • x - w) (by rw [map_sub, e, Algebra.smul_def, map_mul, map_pow, map_pow, sub_self])
  refine ⟨m + n, ?_⟩
  rw [smul_sub, sub_eq_zero, ← mul_smul, ← pow_add] at hm
  rw [hm]
  exact Submodule.smul_mem _ _ hw

theorem pow_mul_eq_zero_of_res {S : Scheme.{0}} {K : Type} [Field K] (gp : Sp K ⟶ S) (W : S.Opens) (f : Γ(S, W))
    (x : Γ(Sp K, gp ⁻¹ᵁ W)) (hx : resK gp (S.basicOpen_le f) x = 0) :
    ∃ n : ℕ, (gp.app W).hom f ^ n * x = 0 := by
  have hc : IsCompact ((gp ⁻¹ᵁ W : (Sp K).Opens) : Set (Sp K)) :=
    (Set.subsingleton_of_subsingleton (α := PrimeSpectrum K)).isCompact
  refine exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact (Sp K) hc x ((gp.app W).hom f) ?_
  have e : (Sp K).basicOpen ((gp.app W).hom f) ≤ gp ⁻¹ᵁ S.basicOpen f := (Scheme.preimage_basicOpen gp f).ge
  have h := congrArg ((Sp K).presheaf.map (homOfLE e).op).hom hx
  rw [map_zero, resK, ← CommRingCat.comp_apply, ← Functor.map_comp] at h
  exact h

theorem finFam_finite {S : Scheme.{0}} {K : Type} [Field K] (gp : Sp K ⟶ S) [IsLocallyNoetherian S] {r : ℕ}
    (V : Fin r → S.Opens) (t : ∀ i, Finset Γ(Sp K, gp ⁻¹ᵁ V i)) (hV : ⨆ i, V i = ⊤)
    (ht : ∀ i, ∀ y ∈ t i, (gp.app (V i)).hom.IsIntegralElem y) (W : S.Opens) (hW : IsAffineOpen W) :
    ∃ s : Finset Γ(Sp K, gp ⁻¹ᵁ W), (∀ y ∈ s, y ∈ finFam gp V t W) ∧
      ∀ x ∈ finFam gp V t W, ∃ c : Γ(Sp K, gp ⁻¹ᵁ W) → Γ(S, W), x = ∑ y ∈ s, (gp.app W).hom (c y) * y := by
  classical
  haveI : IsNoetherianRing Γ(S, W) := IsLocallyNoetherian.component_noetherian ⟨W, hW⟩
  letI : Algebra Γ(S, W) Γ(Sp K, gp ⁻¹ᵁ W) := (gp.app W).hom.toAlgebra
  have loc : ∀ f : Γ(S, W), (∃ i, S.basicOpen f ≤ V i) → ∃ s : Finset Γ(Sp K, gp ⁻¹ᵁ W),
      (s : Set Γ(Sp K, gp ⁻¹ᵁ W)) ⊆ (finFam gp V t W : Set Γ(Sp K, gp ⁻¹ᵁ W)) ∧
      ∀ x ∈ (finFam gp V t W : Set Γ(Sp K, gp ⁻¹ᵁ W)), ∃ n : ℕ,
        f ^ n • x ∈ Submodule.span Γ(S, W) (s : Set Γ(Sp K, gp ⁻¹ᵁ W)) := by
    rintro f ⟨i, hi⟩
    haveI := hW.isLocalization_basicOpen f
    refine exists_finset_pow_smul_mem (Rf := Γ(S, S.basicOpen f)) f (gp.app (S.basicOpen f)).hom
      (resK gp (S.basicOpen_le f)) (fun a => resK_app gp _ a) ?_ (resK gp hi '' (t i : Set _))
      ((t i).finite_toSet.image _) ?_ _ ?_
    · intro x hx
      obtain ⟨n, hn⟩ := pow_mul_eq_zero_of_res gp W f x hx
      exact ⟨n, by rw [Algebra.smul_def, map_pow]; exact hn⟩
    · rintro _ ⟨y, hy, rfl⟩
      obtain ⟨p, hp, hp0⟩ := ht i y hy
      refine ⟨p.map (S.presheaf.map (homOfLE hi).op).hom, hp.map _, ?_⟩
      have e : (gp.app (S.basicOpen f)).hom.comp (S.presheaf.map (homOfLE hi).op).hom =
          (resK gp hi).comp (gp.app (V i)).hom := RingHom.ext fun a => (resK_app gp hi a).symm
      rw [Polynomial.eval₂_map, e, ← Polynomial.hom_eval₂, hp0, map_zero]
    · intro x hx
      have hii : S.basicOpen f ≤ W ⊓ V i := le_inf (S.basicOpen_le f) hi
      have h1 := (mem_finFam gp V t W x).1 hx i
      have hm : resK gp hii (resK gp (inf_le_left : W ⊓ V i ≤ W) x) ∈ (Subring.closure _).map (resK gp hii) :=
        ⟨_, h1, rfl⟩
      rw [RingHom.map_closure, resK_resK] at hm
      refine Subring.closure_mono ?_ hm
      rintro _ ⟨y, ⟨a, rfl⟩ | ⟨z, hz, rfl⟩, rfl⟩
      · exact Or.inl ⟨_, (resK_app gp hii a).symm⟩
      · exact Or.inr ⟨z, hz, by rw [resK_resK]⟩
  have hspan : Ideal.span {f : Γ(S, W) | ∃ i, S.basicOpen f ≤ V i} = ⊤ := by
    rw [← hW.self_le_iSup_basicOpen_iff]
    intro x hx
    have hx2 : x ∈ ⨆ i, V i := by rw [hV]; trivial
    obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.1 hx2
    obtain ⟨f, hf, hxf⟩ := hW.exists_basicOpen_le ⟨x, hi⟩ hx
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨f, i, hf⟩, hxf⟩
  obtain ⟨F, hF, hFs⟩ := (Submodule.fg_span_iff_fg_span_finset_subset
    {f : Γ(S, W) | ∃ i, S.basicOpen f ≤ V i}).1
    (IsNoetherian.noetherian (R := Γ(S, W)) _)
  have hF1 : Ideal.span (F : Set Γ(S, W)) = ⊤ := hFs.symm.trans hspan
  choose σ hσ using loc
  let s : Finset Γ(Sp K, gp ⁻¹ᵁ W) := F.attach.biUnion fun f => σ f.1 (hF f.2)
  refine ⟨s, fun y hy => ?_, fun x hx => ?_⟩
  · obtain ⟨f, -, hf⟩ := Finset.mem_biUnion.1 hy
    exact (hσ f.1 (hF f.2)).1 hf
  · have hxs : x ∈ Submodule.span Γ(S, W) (s : Set Γ(Sp K, gp ⁻¹ᵁ W)) := by
      refine Submodule.mem_of_span_eq_top_of_smul_pow_mem _ (F : Set Γ(S, W)) hF1 x fun f => ?_
      obtain ⟨n, hn⟩ := (hσ f.1 (hF f.2)).2 x hx
      refine ⟨n, Submodule.span_mono ?_ hn⟩
      intro y hy
      exact Finset.mem_coe.2 (Finset.mem_biUnion.2 ⟨⟨f.1, f.2⟩, Finset.mem_attach _ _, hy⟩)
    obtain ⟨c, hc⟩ := Submodule.mem_span_finset.1 hxs
    exact ⟨c, hc.2.symm⟩

end GlobalTheory.FinitePowerAnnihilation
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinsetPowSmulMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGenerationIntegralFamilySections =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGenerationIntegralFamilySections", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinSubRange\npublic import Mathlib.AlgebraicGeometry.Noetherian\npublic import Mathlib.Order.CompletePartialOrder\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinsetPowSmulMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem finFam_finite : ∀ {S : Scheme.{0}} {K : Type} [Field K] (gp : Sp K ⟶ S) [IsLocallyNoetherian S] {r : ℕ} (V : Fin r → S.Opens)
    (t : ∀ i, Finset Γ(Sp K, gp ⁻¹ᵁ V i)), (⨆ i, V i) = ⊤ →
    (∀ i, ∀ y ∈ t i, (gp.app (V i)).hom.IsIntegralElem y) → ∀ W : S.Opens, IsAffineOpen W →
    ∃ s : Finset Γ(Sp K, gp ⁻¹ᵁ W), (∀ y ∈ s, y ∈ finFam gp V t W) ∧
      ∀ x ∈ finFam gp V t W, ∃ c : Γ(Sp K, gp ⁻¹ᵁ W) → Γ(S, W), x = ∑ y ∈ s, (gp.app W).hom (c y) * y := by
  first
  | exact @_root_.GlobalTheory.FinitePowerAnnihilation.finFam_finite

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGenerationIntegralFamilySections =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGenerationIntegralFamilySectionsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGenerationIntegralFamilySectionsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinSubRange\npublic import Mathlib.AlgebraicGeometry.Noetherian\npublic import Mathlib.Order.CompletePartialOrder\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGenerationIntegralFamilySections\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


theorem _root_.GlobalTheory.T.finite_generation_integral_family_sections : ∀ {S : Scheme.{0}} {K : Type} [Field K] (gp : Sp K ⟶ S) [IsLocallyNoetherian S] {r : ℕ} (V : Fin r → S.Opens)
    (t : ∀ i, Finset Γ(Sp K, gp ⁻¹ᵁ V i)), (⨆ i, V i) = ⊤ →
    (∀ i, ∀ y ∈ t i, (gp.app (V i)).hom.IsIntegralElem y) → ∀ W : S.Opens, IsAffineOpen W →
    ∃ s : Finset Γ(Sp K, gp ⁻¹ᵁ W), (∀ y ∈ s, y ∈ finFam gp V t W) ∧
      ∀ x ∈ finFam gp V t W, ∃ c : Γ(Sp K, gp ⁻¹ᵁ W) → Γ(S, W), x = ∑ y ∈ s, (gp.app W).hom (c y) * y := by
  first | exact @GlobalTheory.Mum.finFam_finite
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGenerationIntegralFamilySectionsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubringClosureOfIsIntegralElemAffineOpenLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubringClosureOfIsIntegralElemAffineOpenLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinSubRange\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem resK_bijective {S : Scheme.{0}} {K : Type} [Field K] (gp : Sp K ⟶ S) {V W : S.Opens} (h : W ≤ V)
    (e : gp ⁻¹ᵁ V ≤ gp ⁻¹ᵁ W) : Function.Bijective (resK gp h) := by
  have e' : gp ⁻¹ᵁ W = gp ⁻¹ᵁ V := le_antisymm (gp.preimage_mono h) e
  have hh : homOfLE (gp.preimage_mono h) = eqToHom e' := Subsingleton.elim _ _
  show Function.Bijective ((Sp K).presheaf.map (homOfLE (gp.preimage_mono h)).op).hom
  rw [hh]
  exact ConcreteCategory.bijective_of_isIso ((Sp K).presheaf.map (eqToHom e').op)

theorem isIntegralElem_of_comp_injective {R A B : Type*} [CommRing R] [CommRing A] [CommRing B]
    (f : R →+* A) (g : A →+* B) (hg : Function.Injective g) {y : A}
    (h : (g.comp f).IsIntegralElem (g y)) : f.IsIntegralElem y := by
  obtain ⟨p, hp, hy⟩ := h
  refine ⟨p, hp, hg ?_⟩
  rw [Polynomial.hom_eval₂, hy, map_zero]

end GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem eq_bot_or_eq_top_of_sp (K : Type) [Field K] (O : (Sp K).Opens) : O = ⊥ ∨ O = ⊤ := by
  by_cases h : O = ⊥
  · exact Or.inl h
  · right
    obtain ⟨x, hx⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty O).mp h
    refine top_unique fun z _ => ?_
    have : Subsingleton (Sp K) := inferInstanceAs (Subsingleton (PrimeSpectrum K))
    rwa [Subsingleton.elim z x]
end GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem mem_closure_of_isIntegralElem_affine_le : ∀ {S : Scheme.{0}} {K : Type} [Field K] (gp : Sp K ⟶ S) (V W : S.Opens) (hWV : W ≤ V),
    IsAffineOpen V → IsAffineOpen W → ∀ b : Γ(Sp K, gp ⁻¹ᵁ W), (gp.app W).hom.IsIntegralElem b →
    ∃ s : Finset Γ(Sp K, gp ⁻¹ᵁ V), (∀ y ∈ s, (gp.app V).hom.IsIntegralElem y) ∧
      b ∈ Subring.closure (Set.range (gp.app W).hom ∪ resK gp hWV '' (s : Set _)) := by
  intro S K _ gp V W hWV hV hW b hb
  classical
  let C : Finset Γ(Sp K, gp ⁻¹ᵁ V) → Subring Γ(Sp K, gp ⁻¹ᵁ W) := fun s =>
    Subring.closure (Set.range (gp.app W).hom ∪ resK gp hWV '' (s : Set _))
  have Cmono : ∀ s t : Finset Γ(Sp K, gp ⁻¹ᵁ V), s ⊆ t → C s ≤ C t := by
    intro s t hst
    refine Subring.closure_mono (Set.union_subset_union_right _ (Set.image_mono ?_))
    exact_mod_cast hst
  let J : Ideal Γ(S, W) :=
    { carrier := {c | ∃ s : Finset Γ(Sp K, gp ⁻¹ᵁ V), (∀ y ∈ s, (gp.app V).hom.IsIntegralElem y) ∧
        (gp.app W).hom c * b ∈ C s}
      zero_mem' := ⟨∅, by simp, by rw [map_zero, zero_mul]; exact zero_mem _⟩
      add_mem' := by
        rintro c d ⟨s, hs, hc⟩ ⟨t, ht, hd⟩
        refine ⟨s ∪ t, fun y hy => (Finset.mem_union.mp hy).elim (hs y) (ht y), ?_⟩
        rw [map_add (f := _), add_mul]
        exact add_mem (Cmono _ _ Finset.subset_union_left hc) (Cmono _ _ Finset.subset_union_right hd)
      smul_mem' := by
        rintro c d ⟨s, hs, hd⟩
        refine ⟨s, hs, ?_⟩
        rw [smul_eq_mul, map_mul, _root_.mul_assoc]
        exact mul_mem (Subring.subset_closure (Or.inl ⟨c, rfl⟩)) hd }
  let T : Set Γ(S, W) := {c | ∃ g : Γ(S, V), S.basicOpen g ≤ W ∧ (S.presheaf.map (homOfLE hWV).op).hom g = c}
  have hspan : Ideal.span T = ⊤ := by
    refine hW.self_le_iSup_basicOpen_iff.mp ?_
    intro x hx
    obtain ⟨g, hg, hxg⟩ := hV.exists_basicOpen_le (V := W) ⟨x, hx⟩ (hWV hx)
    rw [TopologicalSpace.Opens.mem_iSup]
    refine ⟨⟨_, g, hg, rfl⟩, ?_⟩
    show x ∈ S.basicOpen ((S.presheaf.map (homOfLE hWV).op).hom g)
    rw [Scheme.basicOpen_res]
    exact ⟨hx, hxg⟩
  have hT : T ⊆ J.radical := by
    rintro _ ⟨g, hg, rfl⟩
    set D := S.basicOpen g with hD
    rcases eq_bot_or_eq_top_of_sp K (gp ⁻¹ᵁ D) with h0 | h1
    ·
      have hz : (gp.app V).hom g = 0 := by
        rw [← AlgebraicGeometry.basicOpen_eq_bot_iff, ← Scheme.preimage_basicOpen]
        exact h0
      refine ⟨1, ∅, by simp, ?_⟩
      rw [pow_one, ← resK_app, hz, map_zero, zero_mul]
      exact zero_mem _
    ·
      have hDW : D ≤ W := hg
      have hDV : D ≤ V := hDW.trans hWV
      have := hV.isLocalization_basicOpen g
      letI : Algebra Γ(S, D) Γ(Sp K, gp ⁻¹ᵁ D) := (gp.app D).hom.toAlgebra
      letI : Algebra Γ(S, V) Γ(Sp K, gp ⁻¹ᵁ D) := ((gp.app D).hom.comp (algebraMap Γ(S, V) Γ(S, D))).toAlgebra
      haveI : IsScalarTower Γ(S, V) Γ(S, D) Γ(Sp K, gp ⁻¹ᵁ D) := IsScalarTower.of_algebraMap_eq fun _ => rfl
      have sq : (resK gp hDW).comp (gp.app W).hom =
          (gp.app D).hom.comp (S.presheaf.map (homOfLE hDW).op).hom := by
        ext a; exact resK_app gp hDW a
      have hb' : IsIntegral Γ(S, D) (resK gp hDW b) := by
        have := hb.map (resK gp hDW)
        rw [sq] at this
        exact RingHom.isIntegralElem.of_comp _ _ this
      obtain ⟨⟨_, N, rfl⟩, hm⟩ := IsIntegral.exists_multiple_integral_of_isLocalization (Submonoid.powers g)
        (Rₘ := Γ(S, D)) _ hb'
      have top : ∀ U : S.Opens, gp ⁻¹ᵁ U ≤ gp ⁻¹ᵁ D := fun _ => h1 ▸ le_top
      obtain ⟨y, hy⟩ := (resK_bijective gp hDV (top V)).2 ((g ^ N) • resK gp hDW b)
      have alg : ∀ a : Γ(S, V), algebraMap Γ(S, V) Γ(Sp K, gp ⁻¹ᵁ D) a = resK gp hDV ((gp.app V).hom a) := by
        intro a; rw [resK_app]; rfl
      have hyi : (gp.app V).hom.IsIntegralElem y := by
        refine isIntegralElem_of_comp_injective _ (resK gp hDV) (resK_bijective gp hDV (top V)).1 ?_
        have e : (resK gp hDV).comp (gp.app V).hom = algebraMap Γ(S, V) Γ(Sp K, gp ⁻¹ᵁ D) := by
          ext a; exact (alg a).symm
        rw [e, hy]
        exact hm
      refine ⟨N, {y}, by simpa using hyi, ?_⟩
      have key : resK gp hWV y = (gp.app W).hom ((S.presheaf.map (homOfLE hWV).op).hom g ^ N) * b := by
        apply (resK_bijective gp hDW (top W)).1
        rw [resK_resK, hy, Algebra.smul_def, alg, map_mul]
        simp only [map_pow]
        rw [← resK_app gp hWV g, resK_resK]
      rw [← key]
      exact Subring.subset_closure (Or.inr ⟨y, by simp, rfl⟩)
  have hJ : J = ⊤ := Ideal.radical_eq_top.mp (top_unique (hspan ▸ Ideal.span_le.mpr hT))
  obtain ⟨s, hs, h⟩ : (1 : Γ(S, W)) ∈ J := hJ ▸ Submodule.mem_top
  refine ⟨s, hs, ?_⟩
  simpa using h

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubringClosureOfIsIntegralElemAffineOpenLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteModificationIntegralElementsRegular =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteModificationIntegralElementsRegular", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFinSubRange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteNormalizationIntegralSectionsStatement\npublic import Mathlib.AlgebraicGeometry.Noetherian\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGeneratedSubringLocalisedBasicOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteGenerationIntegralFamilySectionsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemSubringClosureOfIsIntegralElemAffineOpenLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem exists_finSub_of_isIntegralElem : ∀ (R : Type) [CommRing R] [IsDomain R] [IsNoetherianRing R] (M : Modif R) (n : ℕ) (U : Fin n → M.S.Opens)
    (b : ∀ m, Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U m)), (∀ m, IsAffineOpen (U m)) →
    (∀ m, (M.gp.app (U m)).hom.IsIntegralElem (b m)) →
    ∃ F : ∀ V : M.S.Opens, Subring Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ V), IsFinSub M.gp F ∧ ∀ m, b m ∈ F (U m) := by
  classical
  intro R _ _ _ M n U b hU hb
  haveI := M.proper
  haveI : IsLocallyNoetherian M.S := LocallyOfFiniteType.isLocallyNoetherian M.π
  haveI : CompactSpace M.S := QuasiCompact.compactSpace_of_compactSpace M.π
  haveI : M.S.IsSeparated := ⟨by rw [← terminal.comp_from M.π]; infer_instance⟩

  obtain ⟨s, hs⟩ := isCompact_univ.elim_finite_subcover (fun V : M.S.affineOpens => (V.1 : Set M.S))
    (fun V => V.1.isOpen) (by
      intro x _
      obtain ⟨_, ⟨V, hV, rfl⟩, hx, -⟩ := M.S.isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ x) isOpen_univ
      exact Set.mem_iUnion.2 ⟨⟨V, hV⟩, hx⟩)
  let r := s.card
  let Vc : Fin r → M.S.Opens := fun i => (s.equivFin.symm i).1.1
  have hVa : ∀ i, IsAffineOpen (Vc i) := fun i => (s.equivFin.symm i).1.2
  have hcov : (⨆ i, Vc i) = ⊤ := by
    refine eq_top_iff.2 fun x _ => ?_
    obtain ⟨V, hV, hx⟩ := Set.mem_iUnion₂.1 (hs (Set.mem_univ x))
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨s.equivFin ⟨V, hV⟩, by simpa [Vc] using hx⟩
  have hloc : ∀ (i : Fin r) (m : Fin n), ∃ t : Finset Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ Vc i),
      (∀ y ∈ t, (M.gp.app (Vc i)).hom.IsIntegralElem y) ∧
      resK M.gp (inf_le_left : U m ⊓ Vc i ≤ U m) (b m) ∈ Subring.closure (Set.range (M.gp.app (U m ⊓ Vc i)).hom ∪
        resK M.gp (inf_le_right : U m ⊓ Vc i ≤ Vc i) '' (t : Set _)) := by
    intro i m
    refine _root_.GlobalTheory.Mum.mem_closure_of_isIntegralElem_affine_le M.gp (Vc i) (U m ⊓ Vc i) inf_le_right (hVa i) ((hU m).inf (hVa i)) _ ?_
    obtain ⟨p, hp, hpe⟩ := hb m
    refine ⟨p.map (M.S.presheaf.map (homOfLE (inf_le_left : U m ⊓ Vc i ≤ U m)).op).hom, hp.map _, ?_⟩
    rw [Polynomial.eval₂_map]
    have hc : (M.gp.app (U m ⊓ Vc i)).hom.comp (M.S.presheaf.map (homOfLE (inf_le_left : U m ⊓ Vc i ≤ U m)).op).hom =
        (resK M.gp (inf_le_left : U m ⊓ Vc i ≤ U m)).comp (M.gp.app (U m)).hom := by
      ext a; exact (resK_app M.gp _ a).symm
    rw [hc, ← Polynomial.hom_eval₂, hpe, map_zero]
  choose t ht hbt using hloc
  let T : ∀ i, Finset Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ Vc i) := fun i => Finset.univ.biUnion (t i)
  refine ⟨finFam M.gp Vc T, ⟨fun V _ a => finFam_range _ _ _ _ a, fun V V' hle _ _ x hx => finFam_res _ _ _ V V' hle x hx,
    fun V hV f x hx => _root_.GlobalTheory.Mum.finFam_basicOpen_loc M.gp Vc T V hV f x hx, fun V hV => GlobalTheory.T.finite_generation_integral_family_sections M.gp Vc T hcov ?_ V hV⟩, ?_⟩
  · intro i y hy
    obtain ⟨m, -, hm⟩ := Finset.mem_biUnion.1 (show y ∈ Finset.univ.biUnion (t i) from hy)
    exact ht i m y hm
  · intro m
    rw [mem_finFam]
    intro i
    refine Subring.closure_mono ?_ (hbt i m)
    rintro _ (h | ⟨z, hz, rfl⟩)
    · exact Or.inl h
    · exact Or.inr ⟨z, show z ∈ Finset.univ.biUnion (t i) from Finset.mem_biUnion.2 ⟨m, Finset.mem_univ _, hz⟩, rfl⟩

theorem finiteModif_regular : ∀ (R : Type) [CommRing R] [IsDomain R] [IsNoetherianRing R] (M : Modif R) (n : ℕ) (U : Fin n → M.S.Opens) (b : ∀ m, Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U m)), (∀ m, IsAffineOpen (U m)) → (∀ m, (M.gp.app (U m)).hom.IsIntegralElem (b m)) → ∃ (M' : Modif R) (h : M'.S ⟶ M.S) (hgp : M'.gp ≫ h = M.gp), IsFinite h ∧ h ≫ M.π = M'.π ∧ ∀ m, ∃ c : Γ(M'.S, h ⁻¹ᵁ U m), (M'.gp.appLE (h ⁻¹ᵁ U m) (M.gp ⁻¹ᵁ U m) (le_preimage_of_comp_eq M.gp M'.gp h hgp (U m))).hom c = b m := by
  intro R _ _ _ M n U b hU hb
  obtain ⟨F, hF, hbF⟩ := exists_finSub_of_isIntegralElem R M n U b hU hb
  haveI : IsIntegral M.S := M.integral
  haveI : IsDominant M.gp := M.dominant
  obtain ⟨S', h, gp', hgp, hfin, hint, hdom, hsec⟩ := GlobalTheory.T.exists_finite_normalization_integral_sections M.gp F hF
  haveI := M.proper
  let M' : Modif R :=
    { S := S', π := h ≫ M.π, proper := inferInstance, integral := hint, gp := gp',
      gp_π := by rw [← Category.assoc, hgp, M.gp_π], dominant := hdom }
  exact ⟨M', h, hgp, hfin, rfl, fun m => hsec (U m) (hU m) (b m) (hbF m)⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteModificationIntegralElementsRegular =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreimageOfLocalPreimagesInjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreimageOfLocalPreimagesInjective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtLIPreimageMono\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem imgLoc_app_res {X Y : Scheme.{0}} (a : Y ⟶ X) {U U' : X.Opens} (i : U' ⟶ U)
    (j : a ⁻¹ᵁ U' ⟶ a ⁻¹ᵁ U) (y : Γ(X, U)) :
    (Y.presheaf.map j.op).hom ((a.app U).hom y) = (a.app U').hom ((X.presheaf.map i.op).hom y) := by
  have hj : j = (TopologicalSpace.Opens.map a.base).map i := Subsingleton.elim _ _
  subst hj
  have e := a.naturality i.op
  have := congrArg (fun f => f.hom y) e
  simp only [CommRingCat.hom_comp, RingHom.comp_apply] at this
  exact this.symm

theorem imgLoc_exists {X Y : Scheme.{0}} (a : Y ⟶ X) (hinj : ∀ U : X.Opens, Function.Injective (a.app U).hom)
    (V : X.Opens) {B : Type} (W : B → X.Opens) (hV : V ≤ ⨆ b, W b) (x : Γ(Y, a ⁻¹ᵁ V))
    (hx : ∀ b, ∃ y : Γ(X, V ⊓ W b), (a.app (V ⊓ W b)).hom y =
      (Y.presheaf.map (homOfLE (extLI_preimage_mono a (inf_le_left : V ⊓ W b ≤ V))).op).hom x) :
    ∃ y : Γ(X, V), (a.app V).hom y = x := by
  choose y hy using hx
  have hcov : V ≤ ⨆ b, V ⊓ W b := by
    calc V ≤ V ⊓ ⨆ b, W b := le_inf le_rfl hV
      _ = ⨆ b, V ⊓ W b := inf_iSup_eq _ _
  have key : ∀ b (U' : X.Opens) (i : U' ⟶ V ⊓ W b), (a.app U').hom ((X.presheaf.map i.op).hom (y b)) =
      (Y.presheaf.map (homOfLE (extLI_preimage_mono a (i.le.trans inf_le_left))).op).hom x := by
    intro b U' i
    rw [← imgLoc_app_res a i (homOfLE (extLI_preimage_mono a i.le)), hy b, extLI_res_res]
  have compat : TopCat.Presheaf.IsCompatible X.sheaf.1 (fun b => V ⊓ W b) y := by
    intro b c
    apply hinj
    exact (key b _ _).trans (key c _ _).symm
  obtain ⟨s, hs, -⟩ := X.sheaf.existsUnique_gluing' (fun b => V ⊓ W b) V
    (fun b => homOfLE inf_le_left) hcov y compat
  have hcovY : a ⁻¹ᵁ V ≤ ⨆ b, a ⁻¹ᵁ (V ⊓ W b) := by
    intro z hz
    obtain ⟨b, hb⟩ := (TopologicalSpace.Opens.mem_iSup).1 (hcov hz)
    exact (TopologicalSpace.Opens.mem_iSup).2 ⟨b, hb⟩
  have hs' : ∀ b, (X.presheaf.map (homOfLE inf_le_left : V ⊓ W b ⟶ V).op).hom s = y b := hs
  refine ⟨s, ?_⟩
  refine Y.sheaf.eq_of_locally_eq' (fun b => a ⁻¹ᵁ (V ⊓ W b)) (a ⁻¹ᵁ V)
    (fun b => homOfLE (extLI_preimage_mono a inf_le_left)) hcovY _ _ (fun b => ?_)
  have h2 := imgLoc_app_res a (homOfLE inf_le_left : V ⊓ W b ⟶ V)
    (homOfLE (extLI_preimage_mono a inf_le_left)) s
  rw [hs' b, hy b] at h2
  exact h2

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreimageOfLocalPreimagesInjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreimageOfLocalPreimagesInjectiveStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreimageOfLocalPreimagesInjectiveStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtLIPreimageMono\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreimageOfLocalPreimagesInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreimageOfLocalPreimagesInjectiveStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPulledBackPowerSectionOfLocalLifts =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPulledBackPowerSectionOfLocalLifts", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtLIPreimageMono\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProjOverWeierstrass\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPreimageOfLocalPreimagesInjectiveStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum
theorem secLift_app_res {X Y : Scheme.{0}} (a : Y ⟶ X) {U V : X.Opens} (h : V ≤ U) (x : Γ(X, U)) :
    (a.app V).hom ((X.presheaf.map (homOfLE h).op).hom x) =
      (Y.presheaf.map (homOfLE (extLI_preimage_mono a h)).op).hom ((a.app U).hom x) := by
  rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, Scheme.Hom.naturality]
  rfl

theorem secLift_comp_app {X Y Z : Scheme.{0}} (a : Z ⟶ Y) (f : Y ⟶ X) (U : X.Opens) (x : Γ(X, U)) :
    ((a ≫ f).app U).hom x = (a.app (f ⁻¹ᵁ U)).hom ((f.app U).hom x) := by
  simp [Scheme.Hom.comp_app]
  rfl

theorem secLift_g {X Y : Scheme.{0}} (L : LB X) (φ : Y ⟶ X) (k : ℕ) (i j : Fin 1 → L.ι) :
    ((LB.LinComb L (K := Fin 1) (fun _ => φ) (fun _ => (k : ℤ))).g i j).val =
      ((Y.presheaf.map (homOfLE (le_inf (inf_le_left.trans (LB.wchart_le L (K := Fin 1) (fun _ => φ) i 0))
        (inf_le_right.trans (LB.wchart_le L (K := Fin 1) (fun _ => φ) j 0)) :
        LB.wchart L (K := Fin 1) (fun _ => φ) i ⊓ LB.wchart L (K := Fin 1) (fun _ => φ) j ≤ φ ⁻¹ᵁ (L.U (i 0) ⊓ L.U (j 0)))).op).hom
        ((φ.app (L.U (i 0) ⊓ L.U (j 0))).hom (L.g (i 0) (j 0)))) ^ k := by
  simp only [LB.LinComb, Fin.prod_univ_one, zpow_natCast, Units.val_pow_eq_pow_val]
  rfl
theorem secLift_res_comp {X Y Z : Scheme.{0}} (a : Z ⟶ Y) (f : Y ⟶ X) (U : X.Opens) {V : Z.Opens}
    (h : V ≤ (a ≫ f) ⁻¹ᵁ U) (h' : V ≤ a ⁻¹ᵁ (f ⁻¹ᵁ U)) (x : Γ(X, U)) :
    (Z.presheaf.map (homOfLE h).op).hom (((a ≫ f).app U).hom x) =
      (Z.presheaf.map (homOfLE h').op).hom ((a.app (f ⁻¹ᵁ U)).hom ((f.app U).hom x)) := by
  rw [secLift_comp_app]
  rfl
end GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem secLift_compat {X Y : Scheme.{0}} (L : LB X) (φ : Y ⟶ X) (k : ℕ) (s : SecK L φ k) (i i' : Fin 1 → L.ι) :
    (Y.presheaf.map (homOfLE (inf_le_left : LB.wchart L (K := Fin 1) (fun _ => φ) i ⊓ LB.wchart L (K := Fin 1) (fun _ => φ) i' ≤ LB.wchart L (K := Fin 1) (fun _ => φ) i)).op).hom (s.f i) =
      ((Y.presheaf.map (homOfLE (le_inf (inf_le_left.trans (LB.wchart_le L (K := Fin 1) (fun _ => φ) i 0))
        (inf_le_right.trans (LB.wchart_le L (K := Fin 1) (fun _ => φ) i' 0)) :
        LB.wchart L (K := Fin 1) (fun _ => φ) i ⊓ LB.wchart L (K := Fin 1) (fun _ => φ) i' ≤ φ ⁻¹ᵁ (L.U (i 0) ⊓ L.U (i' 0)))).op).hom
        ((φ.app (L.U (i 0) ⊓ L.U (i' 0))).hom (L.g (i 0) (i' 0)))) ^ k *
      (Y.presheaf.map (homOfLE (inf_le_right : LB.wchart L (K := Fin 1) (fun _ => φ) i ⊓ LB.wchart L (K := Fin 1) (fun _ => φ) i' ≤ LB.wchart L (K := Fin 1) (fun _ => φ) i')).op).hom (s.f i') := by
  have h := s.compat i i'
  rw [secLift_g] at h
  exact h

def secLift_ofCompat {X Y : Scheme.{0}} (L : LB X) (φ : Y ⟶ X) (k : ℕ) (σf : ∀ i : Fin 1 → L.ι, Γ(Y, LB.wchart L (K := Fin 1) (fun _ => φ) i))
    (h : ∀ i i' : Fin 1 → L.ι, (Y.presheaf.map (homOfLE (inf_le_left : LB.wchart L (K := Fin 1) (fun _ => φ) i ⊓ LB.wchart L (K := Fin 1) (fun _ => φ) i' ≤ LB.wchart L (K := Fin 1) (fun _ => φ) i)).op).hom (σf i) =
      ((Y.presheaf.map (homOfLE (le_inf (inf_le_left.trans (LB.wchart_le L (K := Fin 1) (fun _ => φ) i 0))
        (inf_le_right.trans (LB.wchart_le L (K := Fin 1) (fun _ => φ) i' 0)) :
        LB.wchart L (K := Fin 1) (fun _ => φ) i ⊓ LB.wchart L (K := Fin 1) (fun _ => φ) i' ≤ φ ⁻¹ᵁ (L.U (i 0) ⊓ L.U (i' 0)))).op).hom
        ((φ.app (L.U (i 0) ⊓ L.U (i' 0))).hom (L.g (i 0) (i' 0)))) ^ k *
      (Y.presheaf.map (homOfLE (inf_le_right : LB.wchart L (K := Fin 1) (fun _ => φ) i ⊓ LB.wchart L (K := Fin 1) (fun _ => φ) i' ≤ LB.wchart L (K := Fin 1) (fun _ => φ) i')).op).hom (σf i')) :
    SecK L φ k where
  f := σf
  compat i i' := (h i i').trans (congrArg (· * _) (secLift_g L φ k i i').symm)


theorem secK_lift_of_local_lift : ∀ {X X' Y : Scheme.{0}} (L : LB X) (f : X' ⟶ X) (a : Y ⟶ X') (α : Y ⟶ X) (e : a ≫ f = α) (k : ℕ), (∀ U : X'.Opens, Function.Injective (a.app U).hom) → ∀ (s : SecK L α k) (n : ℕ) (j : Fin n → L.ι) (W : Fin n → X'.Opens), (⨆ b, W b = ⊤) → ∀ (hW : ∀ b, W b ≤ f ⁻¹ᵁ L.U (j b)), (∀ b, ∃ y : Γ(X', W b), (a.app (W b)).hom y = (Y.presheaf.map (homOfLE (extLI_le_chart L f a α e (W b) (j b) (hW b))).op).hom (s.f (fun _ => j b))) → ∃ σ : SecK L f k, ∀ j' : Fin 1 → L.ι, (a.app (LB.wchart L (K := Fin 1) (fun _ => f) j')).hom (σ.f j') = (Y.presheaf.map (homOfLE (extLI_le_wchart L f a α e j')).op).hom (s.f j') := by
  intro X X' Y L f a α e k hinj s n j W hWtop hW hloc
  subst e
  have step1 : ∀ j' : Fin 1 → L.ι, ∃ y : Γ(X', LB.wchart L (K := Fin 1) (fun _ => f) j'),
      (a.app _).hom y = (Y.presheaf.map (homOfLE (extLI_le_wchart L f a (a ≫ f) rfl j')).op).hom (s.f j') := by
    intro j'
    refine _root_.GlobalTheory.Mum.imgLoc_exists a hinj _ W (by rw [hWtop]; exact le_top) _ ?_
    intro b
    obtain ⟨y, hy⟩ := hloc b
    have h1 : LB.wchart L (K := Fin 1) (fun _ => f) j' ⊓ W b ≤ f ⁻¹ᵁ (L.U (j' 0) ⊓ L.U (j b)) :=
      fun x hx => ⟨LB.wchart_le L (K := Fin 1) (fun _ => f) j' 0 hx.1, hW b hx.2⟩
    refine ⟨(X'.presheaf.map (homOfLE h1).op).hom ((f.app _).hom (L.g (j' 0) (j b))) ^ k *
      (X'.presheaf.map (homOfLE (inf_le_right : LB.wchart L (K := Fin 1) (fun _ => f) j' ⊓ W b ≤ W b)).op).hom y, ?_⟩
    have hc2 := congrArg (Y.presheaf.map (homOfLE (show a ⁻¹ᵁ (LB.wchart L (K := Fin 1) (fun _ => f) j' ⊓ W b) ≤
      LB.wchart L (K := Fin 1) (fun _ => a ≫ f) j' ⊓ LB.wchart L (K := Fin 1) (fun _ => a ≫ f) (fun _ => j b) from
      fun x hx => ⟨extLI_le_wchart L f a (a ≫ f) rfl j' hx.1, extLI_le_chart L f a (a ≫ f) rfl (W b) (j b) (hW b) hx.2⟩)).op).hom
      (secLift_compat L (a ≫ f) k s j' (fun _ => j b))
    rw [map_mul, map_pow] at hc2
    erw [_root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres, _root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres, _root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres] at hc2
    rw [map_mul, map_pow, secLift_app_res, secLift_app_res, hy]
    erw [_root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres, _root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres]
    rw [hc2]
    exact congrArg (fun t => t ^ k * _) (secLift_res_comp a f _ _ _ _).symm
  choose σf hσ using step1
  refine ⟨secLift_ofCompat L f k σf fun i i' => ?_, hσ⟩
  apply hinj (LB.wchart L (K := Fin 1) (fun _ => f) i ⊓ LB.wchart L (K := Fin 1) (fun _ => f) i')
  have hG : LB.wchart L (K := Fin 1) (fun _ => f) i ⊓ LB.wchart L (K := Fin 1) (fun _ => f) i' ≤ f ⁻¹ᵁ (L.U (i 0) ⊓ L.U (i' 0)) :=
    le_inf (inf_le_left.trans (LB.wchart_le L (K := Fin 1) (fun _ => f) i 0))
      (inf_le_right.trans (LB.wchart_le L (K := Fin 1) (fun _ => f) i' 0))
  have e1 := secLift_app_res a (inf_le_left : LB.wchart L (K := Fin 1) (fun _ => f) i ⊓ LB.wchart L (K := Fin 1) (fun _ => f) i' ≤ LB.wchart L (K := Fin 1) (fun _ => f) i) (σf i)
  have e2 := secLift_app_res a hG ((f.app (L.U (i 0) ⊓ L.U (i' 0))).hom (L.g (i 0) (i' 0)))
  have e3 := secLift_app_res a (inf_le_right : LB.wchart L (K := Fin 1) (fun _ => f) i ⊓ LB.wchart L (K := Fin 1) (fun _ => f) i' ≤ LB.wchart L (K := Fin 1) (fun _ => f) i') (σf i')
  rw [map_mul, map_pow, e1]
  erw [e2, e3]
  rw [hσ, hσ]
  erw [_root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres, _root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres]
  have hc := congrArg (Y.presheaf.map (homOfLE (show a ⁻¹ᵁ (LB.wchart L (K := Fin 1) (fun _ => f) i ⊓ LB.wchart L (K := Fin 1) (fun _ => f) i') ≤
      LB.wchart L (K := Fin 1) (fun _ => a ≫ f) i ⊓ LB.wchart L (K := Fin 1) (fun _ => a ≫ f) i' from
      fun x hx => ⟨extLI_le_wchart L f a (a ≫ f) rfl i hx.1, extLI_le_wchart L f a (a ≫ f) rfl i' hx.2⟩)).op).hom
      (secLift_compat L (a ≫ f) k s i i')
  rw [map_mul, map_pow] at hc
  erw [_root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres, _root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres, _root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres] at hc
  rw [hc]
  exact congrArg (fun t => t ^ k * _) (secLift_res_comp a f (L.U (i 0) ⊓ L.U (i' 0)) _ _ _)
end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPulledBackPowerSectionOfLocalLifts =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FactorizationThroughFiniteModification =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FactorizationThroughFiniteModification", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem finite_modif_eq_gp : ∀ (R : Type) [CommRing R] [IsDomain R] (M M' : Modif R) (h : M'.S ⟶ M.S), IsFinite h →
    M'.gp ≫ h = M.gp → ∀ (Z : Scheme.{0}) (a : Z ⟶ M'.S) (c : Z ⟶ Sp (FractionRing R)), a ≫ h = c ≫ M.gp →
    a = c ≫ M'.gp := by
  intro R _ _ M M' h hh e Z a c hac
  haveI := M'.integral
  have cA : ∀ {X Y W : Scheme.{0}} (f : X ⟶ Y) (g : Y ⟶ W) (x : Γ(W, ⊤)),
      (f ≫ g).appTop.hom x = f.appTop.hom (g.appTop.hom x) := fun f g x => by
    rw [Scheme.Hom.comp_appTop]; rfl
  have hsub : Subsingleton (Sp (FractionRing R)) := inferInstanceAs (Subsingleton (PrimeSpectrum (FractionRing R)))
  let pt : Sp (FractionRing R) := (default : PrimeSpectrum (FractionRing R))
  obtain ⟨U, hU, hpU, -⟩ := exists_isAffineOpen_mem_and_subset (X := M.S) (U := ⊤) (x := M.gp pt) trivial
  have hgU : ∀ y : Sp (FractionRing R), M.gp y ∈ U := fun y => by rwa [Subsingleton.elim y pt]
  have hV : IsAffineOpen (h ⁻¹ᵁ U) := hU.preimage h
  have ha : Set.range a ⊆ Set.range (h ⁻¹ᵁ U).ι := by
    rintro _ ⟨z, rfl⟩
    rw [Scheme.Opens.range_ι]
    show h (a z) ∈ U
    rw [← Scheme.Hom.comp_apply, hac, Scheme.Hom.comp_apply]; exact hgU _
  have hg : Set.range M'.gp ⊆ Set.range (h ⁻¹ᵁ U).ι := by
    rintro _ ⟨z, rfl⟩
    rw [Scheme.Opens.range_ι]
    show h (M'.gp z) ∈ U
    rw [← Scheme.Hom.comp_apply, e]; exact hgU _
  obtain ⟨a₀, fa⟩ : ∃ a₀, a₀ ≫ (h ⁻¹ᵁ U).ι = a := ⟨_, IsOpenImmersion.lift_fac _ _ ha⟩
  obtain ⟨g₀, fg⟩ : ∃ g₀, g₀ ≫ (h ⁻¹ᵁ U).ι = M'.gp := ⟨_, IsOpenImmersion.lift_fac _ _ hg⟩
  suffices key : a₀ = c ≫ g₀ by rw [← fa, key, Category.assoc, fg]
  haveI : IsAffine (h ⁻¹ᵁ U) := hV
  have hq1 : a₀ ≫ ((h ⁻¹ᵁ U).ι ≫ h ≫ M.π) = c ≫ jK R := by
    rw [reassoc_of% fa, reassoc_of% hac, M.gp_π]
  have hq2 : g₀ ≫ ((h ⁻¹ᵁ U).ι ≫ h ≫ M.π) = jK R := by
    rw [reassoc_of% fg, reassoc_of% e, M.gp_π]
  have hinj : Function.Injective g₀.appTop.hom := by
    haveI : IsDominant (g₀ ≫ (h ⁻¹ᵁ U).ι) := by rw [fg]; exact M'.dominant
    haveI : IsDominant g₀ := IsDominant.of_comp_of_isOpenImmersion g₀ (h ⁻¹ᵁ U).ι
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro x hx0
    apply eq_zero_of_basicOpen_eq_bot
    by_contra hne
    obtain ⟨y, hy⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty _).1 hne
    obtain ⟨z, hz⟩ := g₀.denseRange.exists_mem_open (Scheme.basicOpen _ x).isOpen ⟨y, hy⟩
    have hz' : z ∈ g₀ ⁻¹ᵁ Scheme.basicOpen _ x := hz
    have hx0' : (ConcreteCategory.hom (g₀.app ⊤)) x = 0 := hx0
    rw [Scheme.preimage_basicOpen, hx0', Scheme.basicOpen_zero] at hz'
    exact hz'
  have hfrac : ∀ x : Γ(Sp (FractionRing R), ⊤), ∃ r t : Γ(Sp R, ⊤),
      IsUnit ((jK R).appTop.hom t) ∧ x * (jK R).appTop.hom t = (jK R).appTop.hom r := by
    intro x
    have nat : ∀ s, (Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).hom.hom ((jK R).appTop.hom s) =
        algebraMap R (FractionRing R) ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom s) := fun s =>
      congrArg (fun φ => φ.hom s) (Scheme.ΓSpecIso_naturality (CommRingCat.ofHom (algebraMap R (FractionRing R))))
    have inj : Function.Injective (Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).hom.hom :=
      (Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).commRingCatIsoToRingEquiv.injective
    obtain ⟨r', t', ht', hx'⟩ := IsFractionRing.div_surjective (A := R)
      ((Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).hom.hom x)
    have ht0 : algebraMap R (FractionRing R) t' ≠ 0 :=
      IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors ht'
    refine ⟨(Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom r', (Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom t', ?_, ?_⟩
    · have hu : IsUnit ((Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).hom.hom
          ((jK R).appTop.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom t'))) := by
        rw [nat]; simpa using ht0
      have := hu.map (Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).inv.hom
      simpa using this
    · apply inj
      rw [map_mul, nat, nat]
      have hi : ∀ s, (Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom s) = s :=
        fun s => congrArg (fun φ => φ.hom s) (Scheme.ΓSpecIso (CommRingCat.of R)).inv_hom_id
      rw [hi, hi, ← hx']
      exact div_mul_cancel₀ _ ht0
  apply ext_of_isAffine
  rw [Scheme.Hom.comp_appTop]
  ext b
  obtain ⟨r, t, ht, hx⟩ := hfrac (g₀.appTop.hom b)
  have e1 : b * ((h ⁻¹ᵁ U).ι ≫ h ≫ M.π).appTop.hom t = ((h ⁻¹ᵁ U).ι ≫ h ≫ M.π).appTop.hom r := by
    apply hinj
    rw [map_mul, ← cA, ← cA, hq2, hx]
  have e2 := congrArg a₀.appTop.hom e1
  rw [map_mul, ← cA, ← cA, hq1, cA, cA, ← hx, map_mul] at e2
  exact (IsUnit.mul_left_inj (ht.map c.appTop.hom)).1 e2

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FactorizationThroughFiniteModification =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericFibreSectionsInjectiveFlatIntegral =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericFibreSectionsInjectiveFlatIntegral", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.CategoryTheory.Limits.Shapes.Countable\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem genFib_preimage_eq_top {S : Scheme.{0}} (F : Type) [Field F] (gp : Sp F ⟶ S) [IsDominant gp]
    (W : S.Opens) (hW : (W : Set S).Nonempty) : gp ⁻¹ᵁ W = ⊤ := by
  obtain ⟨q, hq⟩ := gp.denseRange.exists_mem_open W.isOpen hW
  refine top_unique fun z _ => ?_
  have : z = q := Subsingleton.elim (α := PrimeSpectrum F) z q
  subst this
  exact hq

theorem genFib_appLE_injective {S : Scheme.{0}} [IsIntegral S] (F : Type) [Field F] (gp : Sp F ⟶ S)
    [IsDominant gp] (W : S.Opens) (e : (⊤ : (Sp F).Opens) ≤ gp ⁻¹ᵁ W) :
    Function.Injective (gp.appLE W ⊤ e).hom := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro r hr
  have h1 : (Sp F).basicOpen (gp.appLE W ⊤ e r) = ⊥ := by rw [hr]; simp
  have h2 : S.basicOpen r = ⊥ := by
    by_contra hne
    have hne' : (S.basicOpen r : Set S).Nonempty := by
      rw [Set.nonempty_iff_ne_empty]
      intro h
      exact hne (by ext1; simpa using h)
    have h3 := genFib_preimage_eq_top F gp _ hne'
    have h4 : (Sp F).basicOpen (gp.appLE W ⊤ e r) = ⊤ := by
      rw [Scheme.Hom.appLE, CommRingCat.comp_apply, Scheme.basicOpen_res, ← Scheme.preimage_basicOpen, h3]
      simp
    rw [h4] at h1
    have : (⊤ : (Sp F).Opens) ≠ ⊥ := by
      intro h
      have hm : (⟨⊥, Ideal.isPrime_bot⟩ : PrimeSpectrum F) ∈ ((⊤ : (Sp F).Opens) : Set (Sp F)) := trivial
      rw [h] at hm
      exact hm
    exact this h1
  exact (basicOpen_eq_bot_iff r).mp h2

theorem genFib_pushout_inl_injective {A B C : CommRingCat.{0}} (φ : A ⟶ B) (ψ : A ⟶ C) (hφ : φ.hom.Flat)
    (hψ : Function.Injective ψ.hom) : Function.Injective (pushout.inl φ ψ).hom := by
  algebraize [φ.hom, ψ.hom]
  have h' : IsPushout φ ψ (CommRingCat.ofHom Algebra.TensorProduct.includeLeftRingHom)
      (CommRingCat.ofHom (Algebra.TensorProduct.includeRight (R := A) (A := B) (B := C)).toRingHom) :=
    CommRingCat.isPushout_tensorProduct A B C
  have e := h'.inl_isoPushout_inv
  have hinj : Function.Injective (Algebra.TensorProduct.includeLeft (R := A) (S := A) (A := B) (B := C)) :=
    Algebra.TensorProduct.includeLeft_injective hψ
  intro x y hxy
  apply hinj
  have := congrArg (fun z => h'.isoPushout.inv.hom z) hxy
  rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, e] at this
  exact this

theorem genFib_affine_injective {S X Y : Scheme.{0}} (F : Type) [Field F] (f : X ⟶ S) (gp : Sp F ⟶ S)
    (a : Y ⟶ X) (t : Y ⟶ Sp F) (H : IsPullback a t f gp) [Flat f] [IsIntegral S] [IsDominant gp]
    {W : S.Opens} (hW : IsAffineOpen W) (hWne : (W : Set S).Nonempty) {V : X.Opens} (hV : IsAffineOpen V)
    (e : V ≤ f ⁻¹ᵁ W) : Function.Injective (a.appLE V (a ⁻¹ᵁ V) le_rfl).hom := by
  have hT : (⊤ : (Sp F).Opens) ≤ gp ⁻¹ᵁ W := (genFib_preimage_eq_top F gp W hWne).ge
  have hUY : a ⁻¹ᵁ V = a ⁻¹ᵁ V ⊓ t ⁻¹ᵁ ⊤ := by simp
  have hiso := isIso_pushoutSection_of_isAffineOpen H hT e hUY hW (isAffineOpen_top _) hV
  have hfac : a.appLE V (a ⁻¹ᵁ V) le_rfl = pushout.inl _ _ ≫ pushoutSection H hT e hUY := by
    exact (pushout.inl_desc _ _ _).symm
  rw [hfac, CommRingCat.hom_comp, RingHom.coe_comp]
  exact (ConcreteCategory.bijective_of_isIso (pushoutSection H hT e hUY)).1.comp
    (genFib_pushout_inl_injective _ _ (f.flat_appLE hW hV e) (genFib_appLE_injective F gp W hT))

end GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem genFib_app_injective : ∀ {S X Y : Scheme.{0}} (F : Type) [Field F] (f : X ⟶ S) (gp : Sp F ⟶ S)
    (a : Y ⟶ X) (t : Y ⟶ Sp F), IsPullback a t f gp → Flat f → IsIntegral S → IsDominant gp →
    ∀ U : X.Opens, Function.Injective (a.app U).hom := by
  intro S X Y F _ f gp a t H hf hS hd U
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro x hx
  refine X.IsSheaf.section_ext (s := x) (t := 0) fun z hz => ?_
  obtain ⟨W, hW, hzW, -⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.mp S.isBasis_affineOpens)
    (show f z ∈ (⊤ : S.Opens) from trivial)
  obtain ⟨V, hV, hzV, hVle⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.mp X.isBasis_affineOpens)
    (show z ∈ U ⊓ f ⁻¹ᵁ W from ⟨hz, hzW⟩)
  have hVU : V ≤ U := hVle.trans inf_le_left
  have e : V ≤ f ⁻¹ᵁ W := hVle.trans inf_le_right
  refine ⟨V, hVU, hzV, ?_⟩
  rw [map_zero]
  apply genFib_affine_injective F f gp a t H hW ⟨f z, hzW⟩ hV e
  rw [map_zero, ← CommRingCat.comp_apply, Scheme.Hom.map_appLE, Scheme.Hom.appLE, CommRingCat.comp_apply,
    hx, map_zero]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericFibreSectionsInjectiveFlatIntegral =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumMulPulledBackFunctionsGenericFibreEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumMulPulledBackFunctionsGenericFibreEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtLIPreimageMono\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_app_eq_sum_mul_of_comm : ∀ {X Y S S' T X' : Scheme.{0}} (g : X ⟶ S) (h : S' ⟶ S) (gp : T ⟶ S) (gp' : T ⟶ S') (hgp : gp' ≫ h = gp) (fst : X' ⟶ X) (snd : X' ⟶ S'), fst ≫ g = snd ≫ h → ∀ (α : Y ⟶ X) (t : Y ⟶ T) (hpb : α ≫ g = t ≫ gp) (l : Y ⟶ X') (h1 : l ≫ fst = α), l ≫ snd = t ≫ gp' → ∀ (W : X.Opens) (U : S.Opens) (hWU : W ≤ g ⁻¹ᵁ U) (n : ℕ) (c : Fin n → Γ(X, W)) (b : Fin n → Γ(T, gp ⁻¹ᵁ U)) (b' : Fin n → Γ(S', h ⁻¹ᵁ U)), (∀ m, (gp'.appLE (h ⁻¹ᵁ U) (gp ⁻¹ᵁ U) (le_preimage_of_comp_eq gp gp' h hgp U)).hom (b' m) = b m) → ∃ y : Γ(X', fst ⁻¹ᵁ W), (l.app (fst ⁻¹ᵁ W)).hom y = (Y.presheaf.map (homOfLE (extLI_preimage_le l fst α h1 W)).op).hom (∑ m, (α.app W).hom (c m) * (t.appLE (gp ⁻¹ᵁ U) (α ⁻¹ᵁ W) (locInt_le_gen g α t gp hpb W U hWU)).hom (b m)) := by
  intro X Y S S' T X' g h gp gp' hgp fst snd hsq α t hpb l h1 h2 W U hWU n c b b' hb
  subst h1
  have le : fst ⁻¹ᵁ W ≤ snd ⁻¹ᵁ (h ⁻¹ᵁ U) := by
    rw [← Scheme.Hom.comp_preimage, ← hsq, Scheme.Hom.comp_preimage]
    exact fun x hx => hWU hx
  refine ⟨∑ m, (fst.app W).hom (c m) * (snd.appLE (h ⁻¹ᵁ U) (fst ⁻¹ᵁ W) le).hom (b' m), ?_⟩
  have hid : ∀ z : Γ(Y, (l ≫ fst) ⁻¹ᵁ W), (Y.presheaf.map (homOfLE (extLI_preimage_le l fst (l ≫ fst) rfl W)).op).hom z = z := by
    intro z
    have : (homOfLE (extLI_preimage_le l fst (l ≫ fst) rfl W)).op = 𝟙 (Opposite.op ((l ≫ fst) ⁻¹ᵁ W)) := rfl
    erw [this, Y.presheaf.map_id]
    rfl

  rw [hid, map_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [map_mul]
  congr 1
  rw [← hb m]
  have key : ∀ (f₁ f₂ : Y ⟶ S') (e : f₁ = f₂) (V : Y.Opens) (e₁ e₂), f₁.appLE (h ⁻¹ᵁ U) V e₁ = f₂.appLE (h ⁻¹ᵁ U) V e₂ := by
    intro f₁ f₂ e V e₁ e₂; subst e; rfl
  rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE, Scheme.Hom.appLE_comp_appLE]
  exact congrArg (fun φ => CommRingCat.Hom.hom φ (b' m)) (key _ _ h2 _ _ _)

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumMulPulledBackFunctionsGenericFibreEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteAffineChartCoverOverModification\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteModificationIntegralElementsRegular\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtLIPreimageMono\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProjOverWeierstrass\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPulledBackPowerSectionOfLocalLifts\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FactorizationThroughFiniteModification\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericFibreSectionsInjectiveFlatIntegral\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SumMulPulledBackFunctionsGenericFibreEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

private theorem secK_extend_locInt {X X' Y Z : Scheme.{0}} (L : LB X) (f : X' ⟶ X) (l : Y ⟶ X')
    (α : Y ⟶ X) (e : l ≫ f = α) {k : ℕ} (σ : SecK L f k) (s : SecK L α k) (j' : Fin 1 → L.ι)
    (hσ : (l.app (LB.wchart L (K := Fin 1) (fun _ => f) j')).hom (σ.f j') =
      (Y.presheaf.map (homOfLE (extLI_le_wchart L f l α e j')).op).hom (s.f j'))
    (p' : Z ⟶ Y) (z : Z) (hz : (p' ≫ l) z ∈ LB.wchart L (K := Fin 1) (fun _ => f) j') :
    gs (p' ≫ l) z (LB.wchart L (K := Fin 1) (fun _ => f) j') (σ.f j') =
      gs p' z (LB.wchart L (K := Fin 1) (fun _ => α) j') (s.f j') := by
  have hz' : p' z ∈ LB.wchart L (K := Fin 1) (fun _ => α) j' := extLI_le_wchart L f l α e j' hz
  unfold gs
  rw [dite_eq_left hz, dite_eq_left hz']
  calc _ = (p'.stalkMap z).hom (Y.presheaf.germ (l ⁻¹ᵁ LB.wchart L (K := Fin 1) (fun _ => f) j') (p' z) hz
          ((l.app (LB.wchart L (K := Fin 1) (fun _ => f) j')).hom (σ.f j'))) :=
        (Scheme.Hom.germ_stalkMap_apply p' _ z hz _).symm
    _ = (p'.stalkMap z).hom (Y.presheaf.germ (l ⁻¹ᵁ LB.wchart L (K := Fin 1) (fun _ => f) j') (p' z) hz
          ((Y.presheaf.map (homOfLE (extLI_le_wchart L f l α e j')).op).hom (s.f j'))) := by rw [hσ]
    _ = (p'.stalkMap z).hom (Y.presheaf.germ (LB.wchart L (K := Fin 1) (fun _ => α) j') (p' z) hz' (s.f j')) := by
        congr 1
        exact TopCat.Presheaf.germ_res_apply _ _ _ _ _
    _ = _ := Scheme.Hom.germ_stalkMap_apply p' _ z hz' _

theorem extend_locInt : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [CharZero R] (M : Modif R) (G : Over M.S), Smooth G.hom → QuasiCompact G.hom → GeometricallyIrreducible G.hom → ∀ (L : LB G.left), L.IsLB → ∀ (Y : Scheme.{0}) (α : Y ⟶ G.left) (t : Y ⟶ Sp (FractionRing R)) (hpb : IsPullback α t G.hom M.gp) (I : Type) [Finite I] (k : I → ℕ) (s : ∀ i, SecK L α (k i)), (∀ i, LocInt M G L α t hpb.w (s i)) → ∃ (M' : Modif R) (h : M'.S ⟶ M.S), IsFinite h ∧ M'.gp ≫ h = M.gp ∧ h ≫ M.π = M'.π ∧ ∀ i, ∃ σ : SecK L (pullback.fst G.hom h) (k i), Agree L σ (s i) := by
  intro R _ _ _ _ _ M G hsm hqc hgi L hL Y α t hpb I _ k s hs
  obtain ⟨n, j, W, U, hcov, hWj, hWU, hWaff, hUaff⟩ := _root_.GlobalTheory.Mum.exists_finite_affine_chart_cover R M G hqc L hL
  have key : ∀ (i : I) (b : Fin n), ∃ (nn : ℕ) (c : Fin nn → Γ(G.left, W b))
      (bb : Fin nn → Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U b)),
      (∀ m, (M.gp.app (U b)).hom.IsIntegralElem (bb m)) ∧
      (Y.presheaf.map (homOfLE (locInt_le_chart L α (j b) (W b) (hWj b))).op).hom ((s i).f (fun _ => j b)) =
        ∑ m, (α.app (W b)).hom (c m) *
          (t.appLE (M.gp ⁻¹ᵁ U b) (α ⁻¹ᵁ W b) (locInt_le_gen G.hom α t M.gp hpb.w (W b) (U b) (hWU b))).hom (bb m) :=
    fun i b => hs i (j b) (W b) (U b) (hWj b) (hWU b) (hWaff b) (hUaff b)
  choose nn c bb hint heq using key
  let Ix := Σ (p : I × Fin n), Fin (nn p.1 p.2)
  let e : Ix ≃ Fin (Nat.card Ix) := Finite.equivFin Ix
  obtain ⟨M', h, hgp, hfin, hπ, hlift⟩ := _root_.GlobalTheory.Mum.finiteModif_regular R M (Nat.card Ix) (fun q => U (e.symm q).1.2)
    (fun q => bb (e.symm q).1.1 (e.symm q).1.2 (e.symm q).2) (fun q => hUaff _) (fun q => hint _ _ _)
  have hlift' : ∀ x : Ix, ∃ cc : Γ(M'.S, h ⁻¹ᵁ U x.1.2),
      (M'.gp.appLE (h ⁻¹ᵁ U x.1.2) (M.gp ⁻¹ᵁ U x.1.2) (le_preimage_of_comp_eq M.gp M'.gp h hgp (U x.1.2))).hom cc =
        bb x.1.1 x.1.2 x.2 := by
    intro x
    have hx := hlift (e x)
    rw [Equiv.symm_apply_apply] at hx
    exact hx
  choose cc hcc using hlift'
  refine ⟨M', h, hfin, hgp, hπ, fun i => ?_⟩
  obtain ⟨l, hl1, hl2⟩ : ∃ l : Y ⟶ pullback G.hom h,
      l ≫ pullback.fst G.hom h = α ∧ l ≫ pullback.snd G.hom h = t ≫ M'.gp :=
    ⟨pullback.lift α (t ≫ M'.gp) (by rw [hpb.w, Category.assoc, hgp]), pullback.lift_fst _ _ _,
      pullback.lift_snd _ _ _⟩
  have hout : IsPullback (l ≫ pullback.fst G.hom h) t G.hom (M'.gp ≫ h) := by
    rw [hl1, hgp]; exact hpb
  have hpb' : IsPullback l t (pullback.snd G.hom h) M'.gp :=
    IsPullback.of_right hout hl2 (IsPullback.of_hasPullback G.hom h)
  haveI := hsm
  haveI : Flat G.hom := inferInstance
  have hflat : Flat (pullback.snd G.hom h) := inferInstance
  have hinj := _root_.GlobalTheory.Mum.genFib_app_injective (FractionRing R) (pullback.snd G.hom h) M'.gp l t hpb' hflat M'.integral M'.dominant
  obtain ⟨σ, hσ⟩ := _root_.GlobalTheory.Mum.secK_lift_of_local_lift L (pullback.fst G.hom h) l α hl1 (k i) hinj (s i) n j
    (fun b => pullback.fst G.hom h ⁻¹ᵁ W b) ((pullback.fst G.hom h).iSup_preimage_eq_top hcov)
    (fun b => extLI_preimage_mono _ (hWj b)) (fun b => by
      obtain ⟨y, hy⟩ := _root_.GlobalTheory.Mum.exists_app_eq_sum_mul_of_comm G.hom h M.gp M'.gp hgp (pullback.fst G.hom h) (pullback.snd G.hom h)
        pullback.condition α t hpb.w l hl1 hl2 (W b) (U b) (hWU b) (nn i b) (c i b) (bb i b)
        (fun m => cc ⟨(i, b), m⟩) (fun m => hcc ⟨(i, b), m⟩)
      refine ⟨y, hy.trans ?_⟩
      rw [← heq i b]
      exact extLI_res_res _ _ _ _)
  refine ⟨σ, ?_⟩
  intro Z p p' hp z J hJ
  have hp2 : p ≫ pullback.snd G.hom h = p' ≫ t ≫ M'.gp := by
    have := _root_.GlobalTheory.Mum.finite_modif_eq_gp R M M' h hfin hgp Z (p ≫ pullback.snd G.hom h) (p' ≫ t) (by
      rw [Category.assoc, ← pullback.condition, ← Category.assoc, hp, Category.assoc, hpb.w, Category.assoc])
    rw [this, Category.assoc]
  have hpl : p = p' ≫ l := pullback.hom_ext (by rw [hp, Category.assoc, hl1]) (by rw [hp2, Category.assoc, hl2])
  subst hpl
  unfold sval
  simp only []
  rw [Category.assoc, hl1]
  have hJ' : ∀ ψ : Z ⟶ G.left, ψ z ∈ L.U (J ψ) := hJ
  have hz : (p' ≫ l) z ∈ LB.wchart L (K := Fin 1) (fun _ => pullback.fst G.hom h) (fun _ => J (p' ≫ α)) := by
    unfold LB.wchart
    simp only [TopologicalSpace.Opens.mem_mk, Set.mem_iInter, Set.mem_preimage, SetLike.mem_coe]
    intro _
    convert hJ' (p' ≫ α) using 1
    rw [← hl1]
    simp
  exact secK_extend_locInt L (pullback.fst G.hom h) l α hl1 σ (s i) _ (hσ _) p' z hz

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificat =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificatStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificatStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificatStatement =====
