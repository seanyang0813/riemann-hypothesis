module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId
public import Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechPairRestrictBaseChangeBijectiveStatement
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal
public import Mathlib.Tactic.ENatToNat
public import Development.AbelianVarietyTheory.Definitions.Divisors.SurjectiveOfIsPullbackSqZero
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUniqueZpowMulAppLE
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAbelianSchemeBaseChangeAndSquareStatement
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HodgeCohomologyIsoPresentedCrystal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardSmoothLiftOverSqZeroThickening
public import Development.AbelianVarietyTheory.Definitions.Divisors.ComparisonMemCechHodgeFiltration
public import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianStructureCohomologyStatementStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveClassDegreeTwoStructureSheafVanishStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAdditiveLineBundleFamilyOfGeometricFibresStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtensionStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLiftStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CohomologyRestrictBasisExtendedBijective
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.Tactic.Linter.Style
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveClassDegreeTwoVanishAffineBases, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIdealThickeningImmersionOfIsPullbackSquareZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyReductionLiftsLineBundle, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineChartSmoothLiftSqZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCocycleCorrectionSquareZeroIdeal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLiftOfStrictCocycle, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLiftOfStrictCocycleStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatCoefficientExtensionH2Class, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplicativeRelationOfPullbackIsoThickening, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallAffineBasisAndTransitionUnitsLift, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeOfSqZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeOfSqZeroStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveClassDegreeTwoVanishAffineBases =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveClassDegreeTwoVanishAffineBases", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechPairRestrictBaseChangeBijectiveStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CohomologyRestrictBasisExtendedBijective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.Obs GlobalTheory.LBLift
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.PrimBasis

variable {R : Type} [CommRing R] (R₁ : Type) [CommRing R₁] [Algebra R R₁]
variable {X X' : Scheme.{0}} {D T : Type} [Category.{0} D] [Category.{0} T]

def pairFun (φ : X' ⟶ X) (G : D ⥤ AffOp X) (H : T ⥤ AffOp X') (K : T ⥤ D)
    (le : ∀ t, (H.obj t).unop.1 ≤ φ ⁻¹ᵁ (G.obj (K.obj t)).unop.1) : T ⥤ (Pair φ)ᵒᵖ where
  obj t := Opposite.op ⟨((H.obj t).unop, (G.obj (K.obj t)).unop), le t⟩
  map {t t'} a := (homOfLE (show (⟨((H.obj t').unop, (G.obj (K.obj t')).unop), le t'⟩ : Pair φ) ≤
      ⟨((H.obj t).unop, (G.obj (K.obj t)).unop), le t⟩ from
    ⟨leOfHom (H.map a).unop, leOfHom (G.map (K.map a)).unop⟩)).op
  map_id _ := Subsingleton.elim _ _
  map_comp _ _ := Subsingleton.elim _ _

def pairTo {R' : Type} [CommRing R'] (φ : X' ⟶ X) (s' : X' ⟶ Sp R') (G : D ⥤ AffOp X) (H : T ⥤ AffOp X')
    (K : T ⥤ D) (le : ∀ t, (H.obj t).unop.1 ≤ φ ⁻¹ᵁ (G.obj (K.obj t)).unop.1) :
    CoefMap (RingHom.id R') (OPair φ s') (H ⋙ OAff s') where
  G := pairFun φ G H K le
  α _ := RingHom.id _
  naturality _ _ := rfl
  smul _ _ _ := rfl

end GlobalTheory.PrimBasis

namespace GlobalTheory.PrimBasis

variable {R : Type} [CommRing R] (R₁ : Type) [CommRing R₁] [Algebra R R₁]
variable {X X' : Scheme.{0}} {D T : Type} [Category.{0} D] [Category.{0} T]

theorem pairTo_pairRes (φ : X' ⟶ X) (s' : X' ⟶ Sp R) (G : D ⥤ AffOp X) (H : T ⥤ AffOp X') (K : T ⥤ D)
    (le : ∀ t, (H.obj t).unop.1 ≤ φ ⁻¹ᵁ (G.obj (K.obj t)).unop.1) (c : H2 (ext R₁ (OAff s'))) :
    (extMap R₁ (pairTo φ s' G H K le)).pull2 ((extMap R₁ (pairRes φ s')).pull2 c) =
      (extMap R₁ (CoefMap.restrict (OAff s') H)).pull2 c := by
  rw [← CoefMap.pullCohomologyTwo_comp]
  refine CoefMap.pullCohomologyTwo_eq_of_natTrans _ _ (𝟙 H) (fun t b ↦ ?_) c
  erw [mp_id]
  induction b using TensorProduct.induction_on with
  | zero => exact (map_zero _).trans (map_zero _).symm
  | tmul x y => rfl
  | add x y hx hy => exact (map_add _ x y).trans ((congrArg₂ (· + ·) hx hy).trans (map_add _ x y).symm)

theorem pairTo_pairPull {φ : X' ⟶ X} {s : X ⟶ Sp R} {s' : X' ⟶ Sp R} (w : φ ≫ s = s' ≫ spMap (RingHom.id R))
    (G : D ⥤ AffOp X) (H : T ⥤ AffOp X') (K : T ⥤ D)
    (le : ∀ t, (H.obj t).unop.1 ≤ φ ⁻¹ᵁ (G.obj (K.obj t)).unop.1) (c : H2 (ext R₁ (OAff s))) :
    (extMap R₁ (pairTo φ s' G H K le)).pull2 ((extMap R₁ (pairPull w)).pull2 c) =
      (extMap R₁ (pullMap w G H K le)).pull2 ((extMap R₁ (CoefMap.restrict (OAff s) G)).pull2 c) := by
  rw [← CoefMap.pullCohomologyTwo_comp, ← CoefMap.pullCohomologyTwo_comp]
  refine CoefMap.pullCohomologyTwo_eq_of_natTrans _ _ (𝟙 (K ⋙ G)) (fun t b ↦ ?_) c
  erw [mp_id]
  induction b using TensorProduct.induction_on with
  | zero => exact (map_zero _).trans (map_zero _).symm
  | tmul x y => rfl
  | add x y hx hy => exact (map_add _ x y).trans ((congrArg₂ (· + ·) hx hy).trans (map_add _ x y).symm)

end GlobalTheory.PrimBasis

namespace GlobalTheory.PrimBasis

variable {R : Type} [CommRing R] (R₁ : Type) [CommRing R₁] [Algebra R R₁]
variable {X X' : Scheme.{0}} {D T : Type} [Category.{0} D] [Category.{0} T]

theorem pairTo_injective (φ : X' ⟶ X) (s' : X' ⟶ Sp R) (G : D ⥤ AffOp X) (H : T ⥤ AffOp X') (K : T ⥤ D)
    (le : ∀ t, (H.obj t).unop.1 ≤ φ ⁻¹ᵁ (G.obj (K.obj t)).unop.1)
    (hr : Function.Surjective (extMap R₁ (pairRes φ s')).pull2)
    (hH : Function.Injective (extMap R₁ (CoefMap.restrict (OAff s') H)).pull2) :
    Function.Injective (extMap R₁ (pairTo φ s' G H K le)).pull2 := by
  intro x y e
  obtain ⟨x, rfl⟩ := hr x
  obtain ⟨y, rfl⟩ := hr y
  rw [pairTo_pairRes, pairTo_pairRes] at e
  rw [hH e]

end GlobalTheory.PrimBasis


open GlobalTheory.PrimBasis in
theorem GlobalTheory.Obs.additiveClassDegreeTwo_vanish_affineBases : PrimitiveExtendedDegTwoVanish → ∀ (R R₁ : Type) [CommRing R] [CommRing R₁] [Algebra R R₁] (q : R₁ →ₐ[R] R), (∀ y y', q y = 0 → q y' = 0 → y * y' = 0) → ∀ (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ (D T : Type) [Category.{0} D] [Category.{0} T] [Quiver.IsThin D] [Quiver.IsThin T] (G : D ⥤ AffOp A.left) (H : T ⥤ AffOp (A ⊗ A).left) (K₀ K₁ K₂ : T ⥤ D) (le₀ : ∀ t, (H.obj t).unop.1 ≤ (μ[A]).left ⁻¹ᵁ (G.obj (K₀.obj t)).unop.1) (le₁ : ∀ t, (H.obj t).unop.1 ≤ (fst A A).left ⁻¹ᵁ (G.obj (K₁.obj t)).unop.1) (le₂ : ∀ t, (H.obj t).unop.1 ≤ (snd A A).left ⁻¹ᵁ (G.obj (K₂.obj t)).unop.1), IsBasis G → IsBasis H → ∀ c : GlobalTheory.CatCoh.H2 (GlobalTheory.Obs.ext R₁ (G ⋙ OAff A.hom)), (extMap R₁ (pullMap (overW μ[A]) G H K₀ le₀)).pull2 c = (extMap R₁ (pullMap (overW (fst A A)) G H K₁ le₁)).pull2 c + (extMap R₁ (pullMap (overW (snd A A)) G H K₂ le₂)).pull2 c → c = 0 := by
  intro hP R R₁ _ _ _ q hq A _ g hA hg D T _ _ _ _ G H K₀ K₁ K₂ le₀ le₁ le₂ hGb hHb c hc
  have hG := (GlobalTheory.Obs.BasisExt.restrict_ext_bijective R R₁ A.left A.hom D G hGb.cover hGb.dir).2
  have hH := (GlobalTheory.Obs.BasisExt.restrict_ext_bijective R R₁ (A ⊗ A).left (A ⊗ A).hom T H hHb.cover hHb.dir).2
  have hr : ∀ φ : (A ⊗ A).left ⟶ A.left, Function.Bijective (extMap R₁ (pairRes φ (A ⊗ A).hom)).pull2 :=
    fun φ ↦ (GlobalTheory.T.cechPairRestrict_baseChange_bijective R R₁ A.left (A ⊗ A).left (A ⊗ A).hom φ).1.2
  obtain ⟨c', rfl⟩ := hG.2 c
  obtain ⟨c₁, hc₁⟩ := (hr (fst A A).left).2 ((extMap R₁ (pairPull (overW (fst A A)))).pull2 c')
  obtain ⟨c₂, hc₂⟩ := (hr (snd A A).left).2 ((extMap R₁ (pairPull (overW (snd A A)))).pull2 c')
  suffices h : c' = 0 by rw [h, map_zero]
  refine hP R R₁ q hq A g hA hg c' c₁ c₂ ?_ hc₁.symm hc₂.symm
  refine pairTo_injective R₁ _ _ G H K₀ le₀ (hr _).2 hH.1 ?_
  rw [pairTo_pairPull, pairTo_pairRes, map_add (f := _), hc, ← pairTo_pairPull R₁ (overW (fst A A)) G H K₁ le₁,
    ← pairTo_pairPull R₁ (overW (snd A A)) G H K₂ le₂, ← hc₁, ← hc₂, pairTo_pairRes, pairTo_pairRes]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveClassDegreeTwoVanishAffineBases =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIdealThickeningImmersionOfIsPullbackSquareZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIdealThickeningImmersionOfIsPullbackSquareZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\npublic import Mathlib.Tactic.ENatToNat\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SurjectiveOfIsPullbackSqZero\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsUniqueZpowMulAppLE\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.Obs GlobalTheory.LBLift
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.LBLift

theorem appLE_comp_spMap_hom (R C : Type) [CommRing R] [CommRing C] (σ : R →+* C) (X : Scheme.{0})
    (s : X ⟶ Sp C) (U : X.Opens) :
    ((Scheme.ΓSpecIso (CommRingCat.of R)).inv ≫ (s ≫ spMap σ).appLE ⊤ U le_top).hom =
      (algebraMap C (Sec s U)).comp σ := by
  ext r
  have k1 := congr($(Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom σ)).hom r)
  have k2 := congr($(Scheme.Hom.comp_appLE s (spMap σ) ⊤ U le_top).hom
    ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom r))
  refine k2.trans ?_
  exact (congrArg (s.appLE ⊤ U le_top).hom k1).symm

theorem isThick_of_isPullback_quotient : ∀ (R C : Type) [CommRing R] [CommRing C] (σ : R →+* C) (J : Ideal R),
    J ^ 2 = ⊥ → ∀ (X X₀ : Scheme.{0}) (s : X ⟶ Sp C) (s₀ : X₀ ⟶ Sp (R ⧸ J)) (i : X₀ ⟶ X),
    IsPullback i s₀ (s ≫ spMap σ) (spMap (Ideal.Quotient.mk J)) → IsThick (J.map σ) s i := by
  intro R C _ _ σ J hJ X X₀ s s₀ i h
  have hβ : Function.Surjective (CommRingCat.ofHom (Ideal.Quotient.mk J)).hom := Ideal.Quotient.mk_surjective
  have hpo : ∀ U : X.affineOpens, IsPushout
      ((Scheme.ΓSpecIso (CommRingCat.of R)).inv ≫ (s ≫ spMap σ).appLE ⊤ U.1 le_top)
      (CommRingCat.ofHom (Ideal.Quotient.mk J)) (i.app U.1)
      ((Scheme.ΓSpecIso (CommRingCat.of (R ⧸ J))).inv ≫ s₀.appLE ⊤ (i ⁻¹ᵁ U.1) le_top) := by
    intro U
    have hpo := (isIso_pushoutSection_iff h (US := ⊤) (UT := ⊤) (UX := U.1) (UY := i ⁻¹ᵁ U.1) le_top
      le_top (by simp)).1 (isIso_pushoutSection_of_isAffineOpen h _ _ _ (isAffineOpen_top _)
        (isAffineOpen_top _) U.2)
    refine hpo.of_iso (Scheme.ΓSpecIso _) (Iso.refl _) (Scheme.ΓSpecIso _) (Iso.refl _)
      (by simp) ?_ (by simp [Scheme.Hom.appLE_eq_app]) (by simp)
    rw [← Scheme.ΓSpecIso_naturality]
    congr 1
  haveI := IsClosedImmersion.spec_of_surjective (CommRingCat.ofHom (Ideal.Quotient.mk J))
    Ideal.Quotient.mk_surjective
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact MorphismProperty.of_isPullback (P := @IsClosedImmersion) h.flip inferInstance
  · exact LiftSys.surjective_of_isPullback_sqZero (I := J) (by rw [hJ]; rfl) Ideal.Quotient.mk_surjective
      (Ideal.mk_ker) h
  · intro U
    have P := hpo U
    have htop := CommRingCat.closure_range_union_range_eq_top_of_isPushout P
    rw [← RingHom.range_eq_top, ← top_le_iff, ← htop, Subring.closure_le]
    rintro _ (⟨y, rfl⟩ | ⟨z, rfl⟩)
    · exact ⟨y, rfl⟩
    · obtain ⟨r, rfl⟩ := Ideal.Quotient.mk_surjective z
      exact ⟨_, congr($(P.w).hom r)⟩
  · intro U b
    have hk := GlobalTheory.PrimeSection.ker_eq_map_of_isPushout (hpo U) hβ
    have hk' : RingHom.ker (CommRingCat.ofHom (Ideal.Quotient.mk J)).hom = J := Ideal.mk_ker
    rw [hk', appLE_comp_spMap_hom] at hk
    rw [Ideal.map_map]
    exact RingHom.mem_ker.symm.trans (by rw [hk]; exact Iff.rfl)

end GlobalTheory.LBLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIdealThickeningImmersionOfIsPullbackSquareZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyReductionLiftsLineBundle =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyReductionLiftsLineBundle", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAbelianSchemeBaseChangeAndSquareStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIdealThickeningImmersionOfIsPullbackSquareZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.Obs GlobalTheory.LBLift
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.AddFamLift

theorem isPullback_lift {S : Scheme.{0}} (Z U S' : Over S) {W : Scheme.{0}} {pr : W ⟶ Z.left} {t : W ⟶ U.left}
    (hp : IsPullback pr t Z.hom U.hom) (j : (Z ⊗ (U ⊗ S')).left ⟶ W)
    (hj₁ : j ≫ pr = (fst Z (U ⊗ S')).left) (hj₂ : j ≫ t = (snd Z (U ⊗ S')).left ≫ (fst U S').left) :
    IsPullback j ((snd Z (U ⊗ S')).left ≫ (snd U S').left) (t ≫ U.hom) S'.hom := by
  have outer : IsPullback (fst Z (U ⊗ S')).left (snd Z (U ⊗ S')).left Z.hom (U ⊗ S').hom :=
    IsPullback.of_hasPullback Z.hom (U ⊗ S').hom
  have e : (U ⊗ S').hom = (fst U S').left ≫ U.hom := (Over.w _).symm
  rw [e, ← hj₁] at outer
  have left : IsPullback j (snd Z (U ⊗ S')).left t (fst U S').left := IsPullback.of_right outer hj₂ hp
  exact left.paste_vert (IsPullback.of_hasPullback U.hom S'.hom)

abbrev Ov {R C : Type} [CommRing R] [CommRing C] (σ : R →+* C) : Over (Sp R) := Over.mk (spMap σ)

theorem finiteRing_sq_sub_mul_sq_eq_of_card (hAb : AbLift) (R : Type) [CommRing R] (J : Ideal R) (hJ : J ^ 2 = ⊥) (A : Over (Sp R)) [GrpObj A]
    (g : ℕ) (hA : IsAbelianScheme A) (hg : SmoothOfRelativeDimension g A.hom) (C : Type) [CommRing C] (σ : R →+* C)
    (N : LB (A ⊗ (Ov σ ⊗ Ov (Ideal.Quotient.mk J))).left) (hN : N.IsLB) (hadd : IsAdditive N) :
    ∃ c : Pic (A ⊗ Ov σ).left, CechPic.pull (A ◁ fst (Ov σ) (Ov (Ideal.Quotient.mk J))).left c = cls N hN := by
  letI := σ.toAlgebra
  let U := Ov σ
  let S' := Ov (Ideal.Quotient.mk J)
  obtain ⟨B, _, pr, pr', hB, hBg, hp, hp', hμ, h₁, h₂, -, -⟩ := _root_.GlobalTheory.AbBaseChangeSq.exists_baseChange_and_sq R C A g hA hg
  have hp : IsPullback pr B.hom A.hom U.hom := hp
  have hp' : IsPullback pr' (B ⊗ B).hom (A ⊗ A).hom U.hom := hp'
  have wZ : ∀ Z : Over (Sp R), (fst Z (U ⊗ S')).left ≫ Z.hom = ((snd Z (U ⊗ S')).left ≫ (fst U S').left) ≫ U.hom :=
    fun Z ↦ by rw [Category.assoc, Over.w, Over.w, Over.w]
  obtain ⟨i, hi₁, hi₂⟩ : ∃ i : (A ⊗ (U ⊗ S')).left ⟶ B.left, i ≫ pr = (fst A (U ⊗ S')).left ∧
      i ≫ B.hom = (snd A (U ⊗ S')).left ≫ (fst U S').left :=
    ⟨hp.lift _ _ (wZ A), hp.lift_fst _ _ _, hp.lift_snd _ _ _⟩
  obtain ⟨i', hi'₁, hi'₂⟩ : ∃ i' : ((A ⊗ A) ⊗ (U ⊗ S')).left ⟶ (B ⊗ B).left,
      i' ≫ pr' = (fst (A ⊗ A) (U ⊗ S')).left ∧ i' ≫ (B ⊗ B).hom = (snd (A ⊗ A) (U ⊗ S')).left ≫ (fst U S').left :=
    ⟨hp'.lift _ _ (wZ (A ⊗ A)), hp'.lift_fst _ _ _, hp'.lift_snd _ _ _⟩
  have hJ' : J.map σ ^ 2 = ⊥ := by rw [← Ideal.map_pow, hJ, Ideal.map_bot]
  have th : IsThick (J.map σ) B.hom i := by
    have q := isPullback_lift A U S' hp i hi₁ hi₂
    exact _root_.GlobalTheory.LBLift.isThick_of_isPullback_quotient R C σ J hJ _ _ B.hom _ i q
  have th' : IsThick (J.map σ) (B ⊗ B).hom i' := by
    have q := isPullback_lift (A ⊗ A) U S' hp' i' hi'₁ hi'₂
    exact _root_.GlobalTheory.LBLift.isThick_of_isPullback_quotient R C σ J hJ _ _ (B ⊗ B).hom _ i' q
  have key : ∀ (φ : A ⊗ A ⟶ A) (φB : B ⊗ B ⟶ B), φB.left ≫ pr = pr' ≫ φ.left →
      (φ ▷ (U ⊗ S')).left ≫ i = i' ≫ φB.left := by
    intro φ φB hφ
    apply hp.hom_ext
    · rw [Category.assoc, hi₁, Category.assoc, hφ, ← Category.assoc, hi'₁, ← Over.comp_left, ← Over.comp_left,
        whiskerRight_fst]
    · rw [Category.assoc, hi₂, Category.assoc, Over.w φB, hi'₂, ← Category.assoc, ← Over.comp_left,
        whiskerRight_snd]
  have ev : ∀ φ : A ⊗ A ⟶ A, CechPic.pull (φ ▷ (U ⊗ S')).left (cls N hN) =
      evc hN (fst (A ⊗ A) (U ⊗ S') ≫ φ) (snd (A ⊗ A) (U ⊗ S')) := fun φ ↦ by
    have : φ ▷ (U ⊗ S') = lift (fst (A ⊗ A) (U ⊗ S') ≫ φ) (snd (A ⊗ A) (U ⊗ S')) := by
      apply CartesianMonoidalCategory.hom_ext
      · rw [whiskerRight_fst, lift_fst]
      · rw [whiskerRight_snd, lift_snd]
    rw [this]; rfl
  have hm : fst (A ⊗ A) (U ⊗ S') ≫ μ[A] =
      (fst (A ⊗ A) (U ⊗ S') ≫ fst A A) * (fst (A ⊗ A) (U ⊗ S') ≫ snd A A) := by
    rw [← MonObj.comp_mul]
    congr 1
    show μ[A] = lift (fst A A) (snd A A) ≫ μ[A]
    rw [lift_fst_snd, Category.id_comp]
  have add : CechPic.pull (μ[A] ▷ (U ⊗ S')).left (cls N hN) =
      CechPic.pull (fst A A ▷ (U ⊗ S')).left (cls N hN) + CechPic.pull (snd A A ▷ (U ⊗ S')).left (cls N hN) := by
    rw [ev, ev, ev, hm]
    exact (isAdditive_iff hN).1 hadd _ _ _ _
  obtain ⟨c', hc'⟩ := hAb C (J.map σ) hJ' B g hB hBg _ _ i i' _ _ _ th th' (key _ _ hμ) (key _ _ h₁) (key _ _ h₂)
    (cls N hN) add
  obtain ⟨k, hk₁, hk₂⟩ : ∃ k : (A ⊗ U).left ⟶ B.left, k ≫ pr = (fst A U).left ∧ k ≫ B.hom = (snd A U).left :=
    ⟨hp.lift _ _ (by rw [Over.w, Over.w]), hp.lift_fst _ _ _, hp.lift_snd _ _ _⟩
  refine ⟨CechPic.pull k c', ?_⟩
  have hk : (A ◁ fst U S').left ≫ k = i := by
    apply hp.hom_ext
    · rw [Category.assoc, hk₁, hi₁, ← Over.comp_left, whiskerLeft_fst]
    · rw [Category.assoc, hk₂, hi₂, ← Over.comp_left, whiskerLeft_snd, Over.comp_left]
  rw [← pull_comp, hk, hc']

theorem main : AbLift → ∀ (R : Type) [CommRing R] (J : Ideal R), J ^ 2 = ⊥ → ∀ (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ (C : Type) [CommRing C] (σ : R →+* C) (N : LB (A ⊗ (Over.mk (spMap σ) ⊗ Over.mk (spMap (Ideal.Quotient.mk J)))).left) (hN : N.IsLB), IsAdditive N → ∃ c : Pic (A ⊗ Over.mk (spMap σ)).left, GlobalTheory.CechPic.pull (A ◁ fst (Over.mk (spMap σ)) (Over.mk (spMap (Ideal.Quotient.mk J)))).left c = cls N hN := fun hAb R _ J hJ A _ g hA hg C _ σ N hN hadd ↦
  finiteRing_sq_sub_mul_sq_eq_of_card hAb R J hJ A g hA hg C σ N hN hadd

end GlobalTheory.AddFamLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyReductionLiftsLineBundle =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineChartSmoothLiftSqZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineChartSmoothLiftSqZero", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HodgeCohomologyIsoPresentedCrystal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardSmoothLiftOverSqZeroThickening\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ComparisonMemCechHodgeFiltration\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.Obs GlobalTheory.LBLift
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.LBLift


open MvPolynomial in
theorem standardSmoothRelDim_lift_of_sqZero {R R₀ : Type} [CommRing R] [CommRing R₀] (I : Ideal R) (hI : I ^ 2 = 0)
    (π : R →+* R₀) (hπ : Function.Surjective π) (hk : RingHom.ker π = I) (g : ℕ) (B₀ : Type) [CommRing B₀]
    [Algebra R₀ B₀] (hB₀ : Algebra.IsStandardSmoothOfRelativeDimension g R₀ B₀) :
    ∃ (B : Type) (_ : CommRing B) (_ : Algebra R B) (p : B →+* B₀),
      (∀ r, p (algebraMap R B r) = algebraMap R₀ B₀ (π r)) ∧ Function.Surjective p ∧
      (∀ b, p b = 0 → b ∈ I.map (algebraMap R B)) ∧ Algebra.IsStandardSmoothOfRelativeDimension g R B := by
  obtain ⟨κ, τ, _, _, P, hP⟩ := hB₀.out
  classical
  have : Fintype τ := Fintype.ofFinite τ
  have hmap : Function.Surjective (MvPolynomial.map (σ := κ) π) := MvPolynomial.map_surjective π hπ
  let v : τ → MvPolynomial κ R := fun j => Function.surjInv hmap (P.relation j)
  have hv : ∀ j, MvPolynomial.map π (v j) = P.relation j := fun j => Function.surjInv_eq hmap _
  let J : Ideal (MvPolynomial κ R) := Ideal.span (Set.range v)
  let φ : MvPolynomial κ R →+* B₀ := (aeval P.val).toRingHom.comp (MvPolynomial.map π)
  have hφ : ∀ f, φ f = aeval P.val (MvPolynomial.map π f) := fun _ => rfl
  have hJ : J ≤ RingHom.ker φ := by
    rw [Ideal.span_le]; rintro _ ⟨j, rfl⟩
    simp [RingHom.mem_ker, hφ, hv, Algebra.Presentation.aeval_val_relation]
  let p : (MvPolynomial κ R ⧸ J) →+* B₀ := Ideal.Quotient.lift J φ hJ
  have hp : ∀ f, p (Ideal.Quotient.mk J f) = φ f := fun _ => rfl
  have halg : ∀ r : R, p (algebraMap R _ r) = algebraMap R₀ B₀ (π r) := by
    intro r
    rw [IsScalarTower.algebraMap_apply R (MvPolynomial κ R) (MvPolynomial κ R ⧸ J)]
    simp [Ideal.Quotient.algebraMap_eq, hp, hφ]
  have hsurj : Function.Surjective p := by
    intro b
    obtain ⟨g, rfl⟩ := P.aeval_val_surjective b
    obtain ⟨f, rfl⟩ := hmap g
    exact ⟨Ideal.Quotient.mk J f, rfl⟩
  have hker : ∀ b, p b = 0 → b ∈ I.map (algebraMap R (MvPolynomial κ R ⧸ J)) := by
    intro b
    obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective b
    intro h0
    rw [hp, hφ] at h0
    have hmem : MvPolynomial.map π f ∈ Ideal.span (Set.range P.relation) := by
      rw [P.span_range_relation_eq_ker]
      first
        | (rw [Algebra.Generators.ker_eq_ker_aeval_val]; exact h0)
    obtain ⟨c, hc⟩ := (Ideal.mem_span_range_iff_exists_fun).1 hmem
    let c' : τ → MvPolynomial κ R := fun j => Function.surjInv hmap (c j)
    have hc' : ∀ j, MvPolynomial.map π (c' j) = c j := fun j => Function.surjInv_eq hmap _
    have hg : f - ∑ j, c' j * v j ∈ RingHom.ker (MvPolynomial.map (σ := κ) π) := by

      rw [RingHom.mem_ker, map_sub, map_sum, ← hc]
      simp [hc', hv]
    rw [MvPolynomial.ker_map, hk] at hg
    have hs : ∑ j, c' j * v j ∈ J :=
      Ideal.sum_mem _ fun j _ => Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨j, rfl⟩)
    have : Ideal.Quotient.mk J f = Ideal.Quotient.mk J (f - ∑ j, c' j * v j) := by
      rw [map_sub, Ideal.Quotient.eq_zero_iff_mem.2 hs, sub_zero]
    rw [this]
    have hmm := Ideal.mem_map_of_mem (Ideal.Quotient.mk J) hg
    rwa [Ideal.map_map] at hmm
  let Q := Algebra.PreSubmersivePresentation.naive (v := v) P.map P.map_inj
  have hjac : p Q.jacobian = P.jacobian := by
    rw [Algebra.PreSubmersivePresentation.jacobian_eq_jacobiMatrix_det,
      Algebra.PreSubmersivePresentation.jacobian_eq_jacobiMatrix_det]
    have h1 : ∀ f : MvPolynomial κ R, algebraMap Q.Ring (MvPolynomial κ R ⧸ Ideal.span (Set.range v)) f =
        Ideal.Quotient.mk J f := fun _ => rfl
    rw [h1, hp, hφ, Algebra.Generators.algebraMap_apply]
    congr 1
    rw [RingHom.map_det]
    refine congrArg Matrix.det (Matrix.ext fun i j => ?_)
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Algebra.PreSubmersivePresentation.jacobiMatrix_apply]
    show MvPolynomial.map π (pderiv (P.map i) (v j)) = pderiv (P.map i) (P.relation j)
    rw [mvPolynomial_map_pderiv_lift, hv]
  have hunit : IsUnit Q.jacobian := by
    refine isUnit_of_isUnit_map_of_sqZero_ker p hsurj (I.map (algebraMap R _)) ?_ hker _
      (by rw [hjac]; exact P.jacobian_isUnit)
    rw [← Ideal.map_pow, hI]; simp
  let Q' : Algebra.SubmersivePresentation R (MvPolynomial κ R ⧸ J) κ τ :=
    { Q with jacobian_isUnit := hunit }
  have hdim : Q'.dimension = g := hP
  exact ⟨_, inferInstance, inferInstance, p, halg, hsurj, hker, Q'.isStandardSmoothOfRelativeDimension hdim⟩

theorem isPushout_of_surjective {R C C₀ : Type} [CommRing R] [CommRing C] [CommRing C₀] (J : Ideal R)
    [Algebra (R ⧸ J) C₀] (σ : R →+* C) (p : C →+* C₀) (hp : Function.Surjective p)
    (hσ : ∀ r, p (σ r) = algebraMap (R ⧸ J) C₀ (Ideal.Quotient.mk J r))
    (hker : ∀ c, p c = 0 → c ∈ J.map σ) :
    IsPushout (CommRingCat.ofHom σ) (CommRingCat.ofHom (Ideal.Quotient.mk J)) (CommRingCat.ofHom p)
      (CommRingCat.ofHom (algebraMap (R ⧸ J) C₀)) := by
  have hinv : Function.RightInverse (Function.surjInv hp) p := Function.surjInv_eq hp
  have hle : ∀ (T : CommRingCat.{0}) (u : C →+* T) (w : R ⧸ J →+* T),
      (∀ a, u (σ a) = w (Ideal.Quotient.mk J a)) → RingHom.ker p ≤ RingHom.ker u := by
    intro T u w huw c hc
    have h : J.map σ ≤ RingHom.ker u := by
      rw [Ideal.map_le_iff_le_comap]
      intro a ha
      rw [Ideal.mem_comap, RingHom.mem_ker, huw, Ideal.Quotient.eq_zero_iff_mem.2 ha, map_zero]
    exact h (hker c hc)
  have hcond : ∀ (s : PushoutCocone (CommRingCat.ofHom σ) (CommRingCat.ofHom (Ideal.Quotient.mk J))) (a : R),
      s.inl.hom (σ a) = s.inr.hom (Ideal.Quotient.mk J a) := fun s a => congr($(s.condition) a)
  refine ⟨⟨by ext a; exact hσ a⟩, ⟨PushoutCocone.IsColimit.mk _
    (fun s => CommRingCat.ofHom (p.liftOfRightInverse _ hinv ⟨s.inl.hom, hle _ _ _ (hcond s)⟩)) ?_ ?_ ?_⟩⟩
  · intro s; ext c
    exact p.liftOfRightInverse_comp_apply _ hinv _ c
  · intro s; ext a
    show p.liftOfRightInverse _ hinv _ (algebraMap (R ⧸ J) C₀ (Ideal.Quotient.mk J a)) = _
    rw [← hσ, p.liftOfRightInverse_comp_apply]
    exact hcond s a
  · intro s m h₁ _
    ext b
    obtain ⟨c, rfl⟩ := hp b
    have e : m.hom (p c) = s.inl.hom c := congr($h₁ c)
    rw [e]
    exact (p.liftOfRightInverse_comp_apply _ hinv ⟨s.inl.hom, hle _ _ _ (hcond s)⟩ c).symm

theorem exists_chart_lift : ∀ (R : Type) [CommRing R] (J : Ideal R), J ^ 2 = ⊥ → ∀ (g : ℕ) (B : Over (Sp R))
    (b : B ⟶ Over.mk (spMap (Ideal.Quotient.mk J))), SmoothOfRelativeDimension g b.left → ∀ x : B.left,
    ∃ (C : Type) (_ : CommRing C) (σ : R →+* C)
      (j : Over.mk (spMap σ) ⊗ Over.mk (spMap (Ideal.Quotient.mk J)) ⟶ B),
      SmoothOfRelativeDimension g (spMap σ) ∧ j ≫ b = snd _ _ ∧ IsOpenImmersion j.left ∧
        x ∈ Set.range j.left := by
  intro R _ J hJ g B b hsm x
  let s₀ : B.left ⟶ Sp (R ⧸ J) := b.left
  have hsm₀ : SmoothOfRelativeDimension g s₀ := hsm
  obtain ⟨U₂, hU₂, V₂, hV₂, hx₂, e₂, h₂⟩ := hsm₀.exists_isStandardSmoothOfRelativeDimension x
  obtain ⟨r, s, hxs, e, hf⟩ := exists_basicOpen_le_appLE_of_appLE_of_isAffine
    (RingHom.isStandardSmoothOfRelativeDimension_stableUnderCompositionWithLocalizationAway g).2
    (RingHom.isStandardSmoothOfRelativeDimension_localizationPreserves g).away x
    ⟨⊤, isAffineOpen_top _⟩ ⟨U₂, hU₂⟩ ⟨V₂, hV₂⟩ ⟨V₂, hV₂⟩ hx₂ hx₂ e₂ h₂ trivial
  let V : B.left.affineOpens := ⟨B.left.basicOpen s, hV₂.basicOpen s⟩
  have hle : V.1 ≤ s₀ ⁻¹ᵁ ⊤ := le_top
  have htop : RingHom.IsStandardSmoothOfRelativeDimension g (s₀.appLE ⊤ V.1 hle).hom := by
    have : IsLocalization.Away r Γ(Sp (R ⧸ J), (Sp (R ⧸ J)).basicOpen r) :=
      (isAffineOpen_top _).isLocalization_basicOpen r
    have heq : s₀.appLE ⊤ V.1 hle = CommRingCat.ofHom (algebraMap Γ(Sp (R ⧸ J), ⊤)
        Γ(Sp (R ⧸ J), (Sp (R ⧸ J)).basicOpen r)) ≫ s₀.appLE _ _ e := by
      rw [RingHom.algebraMap_toAlgebra, CommRingCat.ofHom_hom, Scheme.Hom.map_appLE]
    rw [heq]
    exact (RingHom.isStandardSmoothOfRelativeDimension_stableUnderCompositionWithLocalizationAway g).1 _ r _ hf
  have hC₀ : Algebra.IsStandardSmoothOfRelativeDimension g (R ⧸ J) (Sec s₀ V.1) := by
    rw [← RingHom.isStandardSmoothOfRelativeDimension_algebraMap]
    exact RingHom.isStandardSmoothOfRelativeDimension_respectsIso.2 _
      (Scheme.ΓSpecIso (CommRingCat.of (R ⧸ J))).symm.commRingCatIsoToRingEquiv htop
  obtain ⟨C, _, _, p, hpσ, hp, hker, hC⟩ := standardSmoothRelDim_lift_of_sqZero J (by rw [hJ]; rfl)
    (Ideal.Quotient.mk J) Ideal.Quotient.mk_surjective (Ideal.mk_ker) g (Sec s₀ V.1) hC₀
  let σ : R →+* C := algebraMap R C
  have hpo := isPushout_of_surjective J σ p hp hpσ hker
  have H1 := isPullback_SpecMap_of_isPushout _ _ _ _ hpo
  let A : Over (Sp R) := Over.mk (spMap σ)
  let A' : Over (Sp R) := Over.mk (spMap (Ideal.Quotient.mk J))
  have H0 : IsPullback (fst A A').left (snd A A').left A.hom A'.hom := IsPullback.of_hasPullback _ _
  let k := H0.isoIsPullback _ _ H1
  have hk₂ : k.hom ≫ spMap (algebraMap (R ⧸ J) (Sec s₀ V.1)) = (snd A A').left :=
    H0.isoIsPullback_hom_snd _ _ H1
  have hw : (k.hom ≫ affPt s₀ V) ≫ B.hom = (A ⊗ A').hom := by
    rw [← Over.w b, ← Over.w (snd A A'), ← hk₂]
    simp only [Category.assoc]
    rw [← Category.assoc (affPt s₀ V), affPt_w]
  let j : A ⊗ A' ⟶ B := Over.homMk (k.hom ≫ affPt s₀ V) hw
  have hjl : j.left = k.hom ≫ affPt s₀ V := rfl
  refine ⟨C, inferInstance, σ, j, ?_, ?_, ?_, ?_⟩
  · exact HasRingHomProperty.Spec_iff.2 (RingHom.locally_of RingHom.isStandardSmoothOfRelativeDimension_respectsIso _
      ((RingHom.isStandardSmoothOfRelativeDimension_algebraMap g).2 hC))
  · ext1
    rw [Over.comp_left, hjl, Category.assoc]
    exact (congrArg (k.hom ≫ ·) (affPt_w s₀ V)).trans hk₂
  · rw [hjl]; infer_instance
  · have hxV : x ∈ Set.range (affPt s₀ V) := by rw [GlobalTheory.LiftSys.Coh.range_affPt]; exact hxs
    obtain ⟨z, hz⟩ := hxV
    refine ⟨k.inv z, ?_⟩
    rw [hjl, ← Scheme.Hom.comp_apply, Iso.inv_hom_id_assoc, hz]

end GlobalTheory.LBLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineChartSmoothLiftSqZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCocycleCorrectionSquareZeroIdeal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCocycleCorrectionSquareZeroIdeal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.Obs GlobalTheory.LBLift
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.LBLift

namespace CocCorr

variable {R : Type} [CommRing R] {I : Ideal R}

theorem mul_eq_zero_of_mem (hI : I ^ 2 = ⊥) {S : Type} [CommRing S] [Algebra R S] {x y : S}
    (hx : x ∈ I.map (algebraMap R S)) (hy : y ∈ I.map (algebraMap R S)) : x * y = 0 := by
  have h : I.map (algebraMap R S) ^ 2 = ⊥ := by rw [← Ideal.map_pow, hI, Ideal.map_bot]
  have := Ideal.mul_mem_mul hx hy
  rw [← pow_two, h] at this
  exact (Submodule.mem_bot _).1 this

theorem map_mem {S S' : Type} [CommRing S] [CommRing S'] [Algebra R S] [Algebra R S'] (φ : S →+* S')
    (hφ : ∀ r : R, φ (algebraMap R S r) = algebraMap R S' r) {x : S}
    (hx : x ∈ I.map (algebraMap R S)) : φ x ∈ I.map (algebraMap R S') := by
  have h := Ideal.mem_map_of_mem φ hx
  rwa [Ideal.map_map, show φ.comp (algebraMap R S) = algebraMap R S' from RingHom.ext hφ] at h

end CocCorr

open CocCorr in
theorem cocycle_of_sqZero : ∀ (R : Type) [CommRing R] (I : Ideal R), I ^ 2 = ⊥ → ∀ (D T : Type) [Category.{0} D] [Category.{0} T] (F : D ⥤ CommAlgCat.{0} R) (F' : T ⥤ CommAlgCat.{0} R) (n₀ n₁ n₂ : CoefMap (RingHom.id R) F F'), PrimI I n₀ n₁ n₂ → ∀ (u : C1 F) (v : C0 F'), (∀ t t' a, IsUnit (u t t' a)) → In2 I F (mdef F u) → (∀ t, IsUnit (v t)) → MulRel I n₀ n₁ n₂ u v → ∃ u' : C1 F, In1 I F (u' - u) ∧ mdef F u' = 0 := by
  intro R _ I hI D T _ _ F F' n₀ n₁ n₂ hP u v hu hm hv hrel

  have hmpI : ∀ {t t' : D} (b : t ⟶ t') {x : F.obj t}, x ∈ I.map (algebraMap R (F.obj t)) →
      mp F b x ∈ I.map (algebraMap R (F.obj t')) := fun b x hx ↦
    map_mem (mp F b).toRingHom (fun r ↦ (mp F b).commutes r) hx
  have hmpI' : ∀ {t t' : T} (b : t ⟶ t') {x : F'.obj t}, x ∈ I.map (algebraMap R (F'.obj t)) →
      mp F' b x ∈ I.map (algebraMap R (F'.obj t')) := fun b x hx ↦
    map_mem (mp F' b).toRingHom (fun r ↦ (mp F' b).commutes r) hx
  have hαI : ∀ (n : CoefMap (RingHom.id R) F F') (t : T) {x : F.obj (n.G.obj t)},
      x ∈ I.map (algebraMap R (F.obj (n.G.obj t))) → n.α t x ∈ I.map (algebraMap R (F'.obj t)) := by
    intro n t x hx
    refine map_mem (n.α t) (fun r ↦ ?_) hx
    rw [Algebra.algebraMap_eq_smul_one, n.smul, map_one, RingHom.id_apply, Algebra.algebraMap_eq_smul_one]

  let z : C2 F := fun t t' t'' a b ↦ mdef F u t t' t'' a b * Ring.inverse (u t t'' (a ≫ b))
  have hzI : In2 I F z := fun t t' t'' a b ↦ Ideal.mul_mem_right _ _ (hm t t' t'' a b)
  have hz_eq : ∀ {t t' t'' : D} (a : t ⟶ t') (b : t' ⟶ t''),
      mp F b (u t t' a) * u t' t'' b = u t t'' (a ≫ b) + u t t'' (a ≫ b) * z t t' t'' a b := by
    intro t t' t'' a b
    have h1 := Ring.mul_inverse_cancel _ (hu t t'' (a ≫ b))
    simp only [z, mdef]
    linear_combination (-(mp F b (u t t' a) * u t' t'' b - u t t'' (a ≫ b))) * h1

  have hz2 : z ∈ Z2 F := by
    intro t t' t'' t''' a b c
    have e1 := congrArg (mp F c) (hz_eq a b)
    simp only [map_mul, map_add (f := _), ← mp_comp] at e1
    have e2 := hz_eq (a ≫ b) c
    have e3 := hz_eq a (b ≫ c)
    have e4 := hz_eq b c
    rw [Category.assoc] at e2
    have p1 := mul_eq_zero_of_mem hI (hmpI c (hzI _ _ _ a b)) (hzI _ _ _ (a ≫ b) c)
    have p2 := mul_eq_zero_of_mem hI (hzI _ _ _ a (b ≫ c)) (hzI _ _ _ b c)
    have hU : u t t''' (a ≫ b ≫ c) * (mp F c (z t t' t'' a b) + z t t'' t''' (a ≫ b) c
        - z t t' t''' a (b ≫ c) - z t' t'' t''' b c) = 0 := by
      linear_combination (-(u t'' t''' c)) * e1 - (1 + mp F c (z t t' t'' a b)) * e2
        + (1 + z t' t'' t''' b c) * e3 + mp F (b ≫ c) (u t t' a) * e4
        - u t t''' (a ≫ b ≫ c) * p1 + u t t''' (a ≫ b ≫ c) * p2
    have := ((hu _ _ _).mul_right_eq_zero).1 hU
    linear_combination this

  let U : CoefMap (RingHom.id R) F F' → C1 F' := fun n t t' a ↦ n.α t' (u _ _ (n.G.map a))
  let W : C1 F' := fun t t' a ↦ U n₁ t t' a * U n₂ t t' a * mp F' a (v t)
  let f : C1 F' := fun t t' a ↦ (U n₀ t t' a * v t' - W t t' a) * Ring.inverse (W t t' a)
  have hUu : ∀ n t t' a, IsUnit (U n t t' a) := fun n t t' a ↦ (hu _ _ _).map (n.α t')
  have hWu : ∀ t t' a, IsUnit (W t t' a) := fun t t' a ↦
    ((hUu n₁ t t' a).mul (hUu n₂ t t' a)).mul ((hv t).map (mp F' a))
  have hfI : In1 I F' f := fun t t' a ↦ Ideal.mul_mem_right _ _ (hrel t t' a)
  have hf_eq : ∀ {t t' : T} (a : t ⟶ t'), U n₀ t t' a * v t' =
      U n₁ t t' a * U n₂ t t' a * mp F' a (v t) + U n₁ t t' a * U n₂ t t' a * mp F' a (v t) * f t t' a := by
    intro t t' a
    have h1 := Ring.mul_inverse_cancel _ (hWu t t' a)
    simp only [f]
    linear_combination (-(U n₀ t t' a * v t' - W t t' a)) * h1
  have hUeq : ∀ (n : CoefMap (RingHom.id R) F F') {t t' t'' : T} (a : t ⟶ t') (b : t' ⟶ t''),
      mp F' b (U n t t' a) * U n t' t'' b = U n t t'' (a ≫ b) +
        U n t t'' (a ≫ b) * n.α t'' (z _ _ _ (n.G.map a) (n.G.map b)) := by
    intro n t t' t'' a b
    have h := congrArg (n.α t'') (hz_eq (n.G.map a) (n.G.map b))
    simp only [map_mul, map_add (f := _), n.naturality, ← Functor.map_comp] at h
    exact h
  have hd : d1 F' f = (n₀.pullbackTwoCocycle ⟨z, hz2⟩).1 - (n₁.pullbackTwoCocycle ⟨z, hz2⟩).1 - (n₂.pullbackTwoCocycle ⟨z, hz2⟩).1 := by
    funext t t' t'' a b
    simp only [d1_apply, Pi.sub_apply, CoefMap.pullCocycleTwo_apply]
    have ra := congrArg (mp F' b) (hf_eq a)
    simp only [map_mul, map_add (f := _), ← mp_comp] at ra
    have rb := hf_eq b
    have rab := hf_eq (a ≫ b)
    have h0 := hUeq n₀ a b
    have h1 := hUeq n₁ a b
    have h2 := hUeq n₂ a b
    set a0 := mp F' b (U n₀ t t' a)
    set a1 := mp F' b (U n₁ t t' a)
    set a2 := mp F' b (U n₂ t t' a)
    set b0 := U n₀ t' t'' b
    set b1 := U n₁ t' t'' b
    set b2 := U n₂ t' t'' b
    set c0 := U n₀ t t'' (a ≫ b)
    set c1 := U n₁ t t'' (a ≫ b)
    set c2 := U n₂ t t'' (a ≫ b)
    set V := mp F' (a ≫ b) (v t)
    set V' := mp F' b (v t')
    set V'' := v t''
    set F1 := mp F' b (f t t' a)
    set F2 := f t' t'' b
    set F3 := f t t'' (a ≫ b)
    set Z0 := n₀.α t'' (z _ _ _ (n₀.G.map a) (n₀.G.map b))
    set Z1 := n₁.α t'' (z _ _ _ (n₁.G.map a) (n₁.G.map b))
    set Z2' := n₂.α t'' (z _ _ _ (n₂.G.map a) (n₂.G.map b))
    have indexFFirst : F1 ∈ I.map (algebraMap R (F'.obj t'')) := hmpI' b (hfI _ _ a)
    have indexFSecond : F2 ∈ I.map (algebraMap R (F'.obj t'')) := hfI _ _ b
    have indexFThird : F3 ∈ I.map (algebraMap R (F'.obj t'')) := hfI _ _ (a ≫ b)
    have iZ0 : Z0 ∈ I.map (algebraMap R (F'.obj t'')) := hαI n₀ t'' (hzI _ _ _ _ _)
    have iZ1 : Z1 ∈ I.map (algebraMap R (F'.obj t'')) := hαI n₁ t'' (hzI _ _ _ _ _)
    have iZ2 : Z2' ∈ I.map (algebraMap R (F'.obj t'')) := hαI n₂ t'' (hzI _ _ _ _ _)
    have hT : c1 * c2 * V * V' * ((1 + Z1) * (1 + Z2') * (1 + F1) * (1 + F2) - (1 + F3) * (1 + Z0)) = 0 := by
      linear_combination (-(a1 * a2 * V * (1 + F1))) * rb - b0 * V'' * ra
        - V * V' * (1 + F1) * (1 + F2) * (c1 * (1 + Z1) * h2 + a2 * b2 * h1) + (1 + Z0) * V' * rab + V' * V'' * h0
    have hK : IsUnit (c1 * c2 * V * V') :=
      (((hUu n₁ _ _ _).mul (hUu n₂ _ _ _)).mul ((hv t).map _)).mul ((hv t').map _)
    have hX := (hK.mul_right_eq_zero).1 hT
    linear_combination hX - (1 + F1 + F2 + F1 * F2) * mul_eq_zero_of_mem hI iZ1 iZ2
      - (1 + F2) * mul_eq_zero_of_mem hI iZ1 indexFFirst - mul_eq_zero_of_mem hI iZ1 indexFSecond
      - (1 + F2) * mul_eq_zero_of_mem hI iZ2 indexFFirst - mul_eq_zero_of_mem hI iZ2 indexFSecond
      - mul_eq_zero_of_mem hI indexFFirst indexFSecond + mul_eq_zero_of_mem hI indexFThird iZ0

  obtain ⟨f₀, hf₀I, hf₀⟩ := hP ⟨z, hz2⟩ f hzI hfI hd
  refine ⟨fun t t' a ↦ u t t' a * (1 - f₀ t t' a), fun t t' a ↦ ?_, ?_⟩
  · simp only [Pi.sub_apply]
    rw [show u t t' a * (1 - f₀ t t' a) - u t t' a = -(u t t' a * f₀ t t' a) by ring]
    exact (Ideal.neg_mem_iff _).2 (Ideal.mul_mem_left _ _ (hf₀I t t' a))
  · funext t t' t'' a b
    simp only [mdef, Pi.zero_apply, map_mul, map_sub, map_one]
    have e := hz_eq a b
    have ed := congrFun (congrFun (congrFun (congrFun (congrFun hf₀ t) t') t'') a) b
    rw [d1_apply] at ed
    have iF := hmpI b (hf₀I t t' a)
    have iG := hf₀I t' t'' b
    have iz := hzI t t' t'' a b
    linear_combination (1 - mp F b (f₀ t t' a)) * (1 - f₀ t' t'' b) * e - u t t'' (a ≫ b) * ed
      + u t t'' (a ≫ b) * (1 + z t t' t'' a b) * mul_eq_zero_of_mem hI iF iG
      - u t t'' (a ≫ b) * mul_eq_zero_of_mem hI iz iF - u t t'' (a ≫ b) * mul_eq_zero_of_mem hI iz iG

end GlobalTheory.LBLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCocycleCorrectionSquareZeroIdeal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLiftOfStrictCocycle =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLiftOfStrictCocycle", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.Obs GlobalTheory.LBLift
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.LBGlue

variable {R : Type} [CommRing R] {X X₀ : Scheme.{0}} {s : X ⟶ Sp R} {i : X₀ ⟶ X} {L : LB X₀}

abbrev UU (t : (Small i L)ᵒᵖ) : X.Opens := t.unop.1.1.1

theorem le_of_hom {t t' : (Small i L)ᵒᵖ} (a : t ⟶ t') : UU t' ≤ UU t := leOfHom a.unop

theorem hom_eq {t t' : (Small i L)ᵒᵖ} (a b : t ⟶ t') : a = b :=
  Quiver.Hom.unop_inj (Subsingleton.elim _ _)

def homOf {t t' : (Small i L)ᵒᵖ} (h : UU t' ≤ UU t) : t ⟶ t' :=
  (homOfLE (show t'.unop ≤ t.unop from h)).op

variable (u : C1 (smallG i L ⋙ OAff s)) (hu : ∀ t t' a, IsUnit (u t t' a))

def uu (t t' : (Small i L)ᵒᵖ) (a : t ⟶ t') : Γ(X, UU t')ˣ := (hu t t' a).unit

variable {u hu}

theorem uu_comp (hm : mdef _ u = 0) {t t' t'' : (Small i L)ᵒᵖ} (a : t ⟶ t') (b : t' ⟶ t'') :
    res (le_of_hom b) (uu u hu t t' a) * uu u hu t' t'' b = uu u hu t t'' (a ≫ b) := by
  apply Units.ext
  have := congrFun (congrFun (congrFun (congrFun (congrFun hm t) t') t'') a) b
  exact sub_eq_zero.1 this

theorem gm_uu (hm : mdef _ u = 0) {Y : Scheme.{0}} (f : Y ⟶ X) (y : Y) {t t' r : (Small i L)ᵒᵖ}
    (a : t ⟶ t') (b : t' ⟶ r) (hy : f y ∈ UU r) :
    gm f y (UU t') (uu u hu t t' a) =
      gm f y (UU r) (uu u hu t r (a ≫ b)) * (gm f y (UU r) (uu u hu t' r b))⁻¹ := by
  rw [← uu_comp hm a b, map_mul, gm_res f y _ hy, mul_inv_cancel_right]

theorem exists_g (hm : mdef _ u = 0) (hB : IsBasis (smallG i L)) (t t' : (Small i L)ᵒᵖ) :
    ∃ g : Γ(X, UU t ⊓ UU t')ˣ, ∀ p : (r : (Small i L)ᵒᵖ) × (t ⟶ r) × (t' ⟶ r),
      res (le_inf (le_of_hom p.2.1) (le_of_hom p.2.2)) g = uu u hu t p.1 p.2.1 * (uu u hu t' p.1 p.2.2)⁻¹ := by
  refine glue_unit _ (fun p : (r : (Small i L)ᵒᵖ) × (t ⟶ r) × (t' ⟶ r) ↦ UU p.1)
    (fun p ↦ le_inf (le_of_hom p.2.1) (le_of_hom p.2.2)) (fun x hx ↦ ?_) _ (fun p q x hx ↦ ?_)
  · obtain ⟨r, hr, hle⟩ := hB.cover x _ hx
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨r, homOf (hle.trans inf_le_left), homOf (hle.trans inf_le_right)⟩, hr⟩
  · obtain ⟨r, hr, hle⟩ := hB.cover x _ hx
    have c : p.1 ⟶ r := homOf (hle.trans inf_le_left)
    have d : q.1 ⟶ r := homOf (hle.trans inf_le_right)
    rw [map_mul, map_mul, map_inv, map_inv, gm_uu hm (𝟙 X) x p.2.1 c hr, gm_uu hm (𝟙 X) x p.2.2 c hr,
      gm_uu hm (𝟙 X) x q.2.1 d hr, gm_uu hm (𝟙 X) x q.2.2 d hr, hom_eq (q.2.1 ≫ d) (p.2.1 ≫ c),
      hom_eq (q.2.2 ≫ d) (p.2.2 ≫ c)]
    group

variable (u hu)

def glueLB (hm : mdef _ u = 0) (hB : IsBasis (smallG i L)) : LB X :=
  ⟨(Small i L)ᵒᵖ, UU, fun t t' ↦ Classical.choose (exists_g (hu := hu) hm hB t t')⟩

variable {u hu}

theorem gm_glue (hm : mdef _ u = 0) (hB : IsBasis (smallG i L)) {Y : Scheme.{0}} (f : Y ⟶ X) (y : Y)
    {t t' r : (Small i L)ᵒᵖ} (a : t ⟶ r) (b : t' ⟶ r) (hy : f y ∈ UU r) :
    gm f y (UU t ⊓ UU t') ((glueLB u hu hm hB).g t t') =
      gm f y (UU r) (uu u hu t r a) * (gm f y (UU r) (uu u hu t' r b))⁻¹ := by
  have := Classical.choose_spec (exists_g (hu := hu) hm hB t t') ⟨r, a, b⟩
  show gm f y _ (Classical.choose (exists_g (hu := hu) hm hB t t')) = _
  rw [← gm_res f y (le_inf (le_of_hom a) (le_of_hom b)) hy, this, map_mul, map_inv]

theorem isLB_glue (hm : mdef _ u = 0) (hB : IsBasis (smallG i L)) : (glueLB u hu hm hB).IsLB := {
  cover := by
    refine eq_top_iff.2 fun x _ ↦ ?_
    obtain ⟨r, hr, -⟩ := hB.cover x ⊤ trivial
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨r, hr⟩
  g_self := fun (t : (Small i L)ᵒᵖ) ↦ by
    refine unit_ext fun x hx ↦ ?_
    obtain ⟨r, hr, hle⟩ := hB.cover x (UU t) hx
    rw [gm_res _ x _ hx, map_one]
    exact (gm_glue hm hB (𝟙 X) x (homOf hle) (homOf hle) hr).trans (mul_inv_cancel _)
  cocycle := fun (t t' t'' : (Small i L)ᵒᵖ) ↦ by
    refine unit_ext fun x hx ↦ ?_
    obtain ⟨r, hr, hle⟩ := hB.cover x (UU t ⊓ UU t' ⊓ UU t'') hx
    have a : t ⟶ r := homOf (hle.trans (inf_le_left.trans inf_le_left))
    have b : t' ⟶ r := homOf (hle.trans (inf_le_left.trans inf_le_right))
    have c : t'' ⟶ r := homOf (hle.trans inf_le_right)
    rw [map_mul, gm_res _ x _ hx, gm_res _ x _ hx, gm_res _ x _ hx]
    refine (congrArg₂ (· * ·) (gm_glue hm hB (𝟙 X) x a b hr) (gm_glue hm hB (𝟙 X) x b c hr)).trans
      ((?_ : _ = _).trans (gm_glue hm hB (𝟙 X) x a c hr).symm)
    group }

theorem gm_lift (hl : IsLift s i L u) {t r : (Small i L)ᵒᵖ} (a : t ⟶ r) (y : X₀) (hy : i y ∈ UU r) :
    gm i y (UU r) (uu u hu t r a) = gm (𝟙 X₀) y _ (L.g t.unop.1.2 r.unop.1.2) := by
  have e := gm_pull (𝟙 X₀) i y (UU r) hy (uu u hu t r a)
  rw [Category.id_comp] at e
  have e' : pullU i (UU r) (uu u hu t r a) = res (Small.le_inf a) (L.g t.unop.1.2 r.unop.1.2) :=
    Units.ext (hl t r a)
  rw [← e, e', gm_res (𝟙 X₀) y _ hy]

def chart (hL : L.IsLB) (hl : IsLift s i L u) (hm : mdef _ u = 0) (hB : IsBasis (smallG i L)) :
    ChartPull ((glueLB u hu hm hB).pull i) L (𝟙 X₀) where
  idx J := (J PUnit.unit).unop.1.2
  le J y hy := (J PUnit.unit).unop.2 (mem_pull.1 hy)
  g y J J' hj hj' := by
    have hx : i y ∈ UU (J PUnit.unit) := mem_pull.1 hj
    have hx' : i y ∈ UU (J' PUnit.unit) := mem_pull.1 hj'
    obtain ⟨r, hr, hle⟩ := hB.cover (i y) (UU (J PUnit.unit) ⊓ UU (J' PUnit.unit)) ⟨hx, hx'⟩
    let t₁ : (Small i L)ᵒᵖ := J PUnit.unit
    let t₂ : (Small i L)ᵒᵖ := J' PUnit.unit
    have a : t₁ ⟶ r := homOf (hle.trans inf_le_left)
    have b : t₂ ⟶ r := homOf (hle.trans inf_le_right)
    have e := gm_pull_g (glueLB u hu hm hB) i (𝟙 X₀) y J J' hj hj'
    rw [Category.id_comp] at e
    refine e.trans ((gm_glue hm hB i y a b hr).trans ?_)
    rw [gm_lift hl a y hr, gm_lift hl b y hr]
    have hjr : (𝟙 X₀) y ∈ L.U r.unop.1.2 := r.unop.2 hr
    have hj₁ : (𝟙 X₀) y ∈ L.U (J PUnit.unit).unop.1.2 := (J PUnit.unit).unop.2 hx
    have hj₂ : (𝟙 X₀) y ∈ L.U (J' PUnit.unit).unop.1.2 := (J' PUnit.unit).unop.2 hx'
    rw [← gm_cocycle hL (𝟙 X₀) y hj₁ hj₂ hjr, mul_inv_cancel_right]

end GlobalTheory.LBGlue


open GlobalTheory.LBGlue in
theorem GlobalTheory.LBLift.exists_pic_of_strict_lift : ∀ (R : Type) [CommRing R] (X X₀ : Scheme.{0}) (s : X ⟶ Sp R)
    (i : X₀ ⟶ X) (L : LB X₀) (hL : L.IsLB) (u : C1 (smallG i L ⋙ OAff s)), IsBasis (smallG i L) →
    IsLift s i L u → (∀ t t' a, IsUnit (u t t' a)) → mdef _ u = 0 →
    ∃ c : Pic X, GlobalTheory.CechPic.pull i c = cls L hL := by
  intro R _ X X₀ s i L hL u hB hl hu hm
  refine ⟨cls _ (isLB_glue (hu := hu) hm hB), ?_⟩
  rw [← cls_pull (isLB_glue (hu := hu) hm hB) i (pull_isLB (isLB_glue (hu := hu) hm hB) i)]
  exact (cls_eq_iff _ hL).2 (iso_of_chart hL (chart hL hl hm hB))
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLiftOfStrictCocycle =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLiftOfStrictCocycleStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLiftOfStrictCocycleStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLiftOfStrictCocycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.Obs GlobalTheory.LBLift
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.exists_lineBundle_lift_of_strict_cocycle : ∀ (R : Type) [CommRing R] (X X₀ : Scheme.{0}) (s : X ⟶ Sp R) (i : X₀ ⟶ X) (L : LB X₀) (hL : L.IsLB) (u : C1 (smallG i L ⋙ OAff s)), IsBasis (smallG i L) → IsLift s i L u → (∀ t t' a, IsUnit (u t t' a)) → mdef _ u = 0 → ∃ c : Pic X, GlobalTheory.CechPic.pull i c = cls L hL := by
  first | exact @GlobalTheory.LBLift.exists_pic_of_strict_lift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLiftOfStrictCocycleStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatCoefficientExtensionH2Class =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatCoefficientExtensionH2Class", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.Obs GlobalTheory.LBLift
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.PrimIdeal

variable {R : Type} [CommRing R] (I : Ideal R)

section Lin

variable (B : Type) [CommRing B] [Algebra R B]

def iota : I ⊗[R] B →ₗ[R] TrivSqZeroExt R I ⊗[R] B := (TrivSqZeroExt.inrHom R I).rTensor B

def tau : I ⊗[R] B →ₗ[R] B := TensorProduct.lid R B ∘ₗ I.subtype.rTensor B

def sig : TrivSqZeroExt R I ⊗[R] B →ₗ[R] B := tau I B ∘ₗ (TrivSqZeroExt.sndHom R I).rTensor B

theorem tau_tmul (i : I) (b : B) : tau I B (i ⊗ₜ b) = (i : R) • b := by
  simp [tau]

theorem sig_iota (y : I ⊗[R] B) : sig I B (iota I B y) = tau I B y := by
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul i b => simp [sig, iota]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem tau_mem (y : I ⊗[R] B) : tau I B y ∈ I.map (algebraMap R B) := by
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul i b =>
    rw [tau_tmul, Algebra.smul_def]
    exact Ideal.mul_mem_right _ _ (Ideal.mem_map_of_mem _ i.2)
  | add x y hx hy => rw [map_add (f := _)]; exact Ideal.add_mem _ hx hy

theorem sig_mem (x : TrivSqZeroExt R I ⊗[R] B) : sig I B x ∈ I.map (algebraMap R B) := tau_mem I B _

theorem tau_mulLeft (b : B) (y : I ⊗[R] B) : tau I B ((LinearMap.mulLeft R b).lTensor I y) = b • tau I B y := by
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul i c => simp [tau_tmul, Algebra.smul_def]; ring
  | add u v hu hv => simp only [map_add (f := _), hu, hv, smul_add]

theorem exists_tau {x : B} (hx : x ∈ I.map (algebraMap R B)) : ∃ y, tau I B y = x := by
  rw [Ideal.map, Ideal.span] at hx
  induction hx using Submodule.span_induction with
  | mem x h =>
    obtain ⟨i, hi, rfl⟩ := h
    exact ⟨⟨i, hi⟩ ⊗ₜ 1, by simp [tau_tmul, Algebra.smul_def]⟩
  | zero => exact ⟨0, map_zero _⟩
  | add x x' _ _ hx hx' =>
    obtain ⟨y, rfl⟩ := hx; obtain ⟨y', rfl⟩ := hx'
    exact ⟨y + y', map_add _ _ _⟩
  | smul b x _ hx =>
    obtain ⟨y, rfl⟩ := hx
    exact ⟨(LinearMap.mulLeft R b).lTensor I y, tau_mulLeft I B b y⟩

theorem tau_injective (hB : Module.Flat R B) : Function.Injective (tau I B) :=
  (TensorProduct.lid R B).injective.comp
    (Module.Flat.rTensor_preserves_injective_linearMap (M := B) I.subtype Subtype.val_injective)

variable {B} {B' : Type} [CommRing B'] [Algebra R B'] (φ : B →ₐ[R] B')

theorem iota_nat (y : I ⊗[R] B) :
    extHom (TrivSqZeroExt R I) φ (iota I B y) = iota I B' (φ.toLinearMap.lTensor I y) := by
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul i b => simp [iota]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem tau_nat (y : I ⊗[R] B) : tau I B' (φ.toLinearMap.lTensor I y) = φ (tau I B y) := by
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul i b => simp [tau_tmul]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem sig_nat (x : TrivSqZeroExt R I ⊗[R] B) :
    sig I B' (extHom (TrivSqZeroExt R I) φ x) = φ (sig I B x) := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => simp [sig, tau_tmul]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

end Lin

end GlobalTheory.PrimIdeal

namespace GlobalTheory.PrimIdeal

theorem primI_of_ext : ∀ (R : Type) [CommRing R] (I : Ideal R), ∃ (R₁ : Type) (_ : CommRing R₁) (_ : Algebra R R₁)
    (q : R₁ →ₐ[R] R), (∀ y y', q y = 0 → q y' = 0 → y * y' = 0) ∧
    ∀ (D T : Type) [Category.{0} D] [Category.{0} T] (F : D ⥤ CommAlgCat.{0} R) (F' : T ⥤ CommAlgCat.{0} R)
      (n₀ n₁ n₂ : CoefMap (RingHom.id R) F F'), (∀ t, Module.Flat R (F.obj t)) → (∀ t, Module.Flat R (F'.obj t)) →
      (∀ c : GlobalTheory.CatCoh.H2 (GlobalTheory.Obs.ext R₁ F),
        (extMap R₁ n₀).pull2 c = (extMap R₁ n₁).pull2 c + (extMap R₁ n₂).pull2 c → c = 0) →
      PrimI I n₀ n₁ n₂ := by
  intro R _ I
  refine ⟨TrivSqZeroExt R I, inferInstance, inferInstance, TrivSqZeroExt.fstHom R R I, ?_, ?_⟩
  · intro y y' hy hy'
    have h1 : y.fst = 0 := hy
    have h2 : y'.fst = 0 := hy'
    ext
    · simp [h1, h2]
    · simp [h1, h2]
  intro D T _ _ F F' n₀ n₁ n₂ hF hF' hc z f hz hf hrel
  choose y hy using fun (t t' t'' : D) (a : t ⟶ t') (b : t' ⟶ t'') ↦ exists_tau I (F.obj t'') (hz t t' t'' a b)
  choose y' hy' using fun (t t' : T) (a : t ⟶ t') ↦ exists_tau I (F'.obj t') (hf t t' a)
  let zh : C2 (ext (TrivSqZeroExt R I) F) := fun t t' t'' a b ↦ iota I (F.obj t'') (y t t' t'' a b)
  have hzc : zh ∈ Z2 (ext (TrivSqZeroExt R I) F) := by
    intro t t' t'' t''' φ ψ χ
    have key : (mp F χ).toLinearMap.lTensor I (y _ _ _ φ ψ) + y _ _ _ (φ ≫ ψ) χ =
        y _ _ _ φ (ψ ≫ χ) + y _ _ _ ψ χ := by
      apply tau_injective I (F.obj t''') (hF t''')
      simp only [map_add (f := _), tau_nat, hy]
      exact z.2 φ ψ χ
    have := congrArg (iota I _) key
    simp only [map_add (f := _), ← iota_nat] at this
    exact this
  obtain ⟨g, hg⟩ := H2.mk_eq_zero.1 (hc (H2.mk _ ⟨zh, hzc⟩) (by
    show H2.mk _ ((extMap _ n₀).pullbackTwoCocycle ⟨zh, hzc⟩) =
      H2.mk _ ((extMap _ n₁).pullbackTwoCocycle ⟨zh, hzc⟩) + H2.mk _ ((extMap _ n₂).pullbackTwoCocycle ⟨zh, hzc⟩)
    rw [← LinearMap.map_add (H2.mk _), H2.mk_eq_mk]
    refine ⟨fun t t' a ↦ iota I (F'.obj t') (y' t t' a), ?_⟩
    funext t t' t'' a b
    simp only [d1_apply, Submodule.coe_add, Pi.sub_apply, Pi.add_apply, CoefMap.pullCocycleTwo_apply]
    have e := congrFun (congrFun (congrFun (congrFun (congrFun hrel t) t') t'') a) b
    simp only [d1_apply, Pi.sub_apply, CoefMap.pullCocycleTwo_apply] at e
    have key : (mp F' b).toLinearMap.lTensor I (y' _ _ a) - y' _ _ (a ≫ b) + y' _ _ b =
        (coefHom n₀ t'').toLinearMap.lTensor I (y _ _ _ (n₀.G.map a) (n₀.G.map b)) -
          ((coefHom n₁ t'').toLinearMap.lTensor I (y _ _ _ (n₁.G.map a) (n₁.G.map b)) +
            (coefHom n₂ t'').toLinearMap.lTensor I (y _ _ _ (n₂.G.map a) (n₂.G.map b))) := by
      apply tau_injective I (F'.obj t'') (hF' t'')
      simp only [map_add (f := _), map_sub, tau_nat, hy, hy']
      rw [e]
      rw [sub_sub]; rfl
    have := congrArg (iota I _) key
    simp only [map_add (f := _), map_sub, ← iota_nat] at this
    exact this))
  refine ⟨fun t t' a ↦ sig I (F.obj t') (g t t' a), fun t t' a ↦ sig_mem I _ _, ?_⟩
  funext t t' t'' a b
  have e := congrFun (congrFun (congrFun (congrFun (congrFun hg t) t') t'') a) b
  simp only [d1_apply] at e ⊢
  rw [← sig_nat, ← map_sub, ← map_add (f := _)]
  change sig I (F.obj t'') (mp (ext (TrivSqZeroExt R I) F) b (g t t' a) - g t t'' (a ≫ b) + g t' t'' b) = _
  rw [e]
  exact (sig_iota I _ _).trans (hy t t' t'' a b)

end GlobalTheory.PrimIdeal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatCoefficientExtensionH2Class =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplicativeRelationOfPullbackIsoThickening =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplicativeRelationOfPullbackIsoThickening", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.Obs GlobalTheory.LBLift
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.LBLift.IsoRel

section Rel

variable {X X₀ Y Y₀ : Scheme.{0}}

abbrev Quad (i : X₀ ⟶ X) (L : LB X₀) (φ₀ φ₁ φ₂ : Y ⟶ X) : Type :=
  {p : Y.affineOpens × Small i L × Small i L × Small i L //
    p.1.1 ≤ φ₀ ⁻¹ᵁ p.2.1.1.1.1 ∧ p.1.1 ≤ φ₁ ⁻¹ᵁ p.2.2.1.1.1.1 ∧ p.1.1 ≤ φ₂ ⁻¹ᵁ p.2.2.2.1.1.1}

variable {i : X₀ ⟶ X} {L : LB X₀} {φ₀ φ₁ φ₂ : Y ⟶ X}

theorem Quad.le_W {p q : Quad i L φ₀ φ₁ φ₂} (h : p ≤ q) : p.1.1 ≤ q.1.1 :=
  (Prod.le_def.1 (Subtype.coe_le_coe.2 h)).1

theorem Quad.le_K₀ {p q : Quad i L φ₀ φ₁ φ₂} (h : p ≤ q) : p.1.2.1 ≤ q.1.2.1 :=
  (Prod.le_def.1 (Prod.le_def.1 (Subtype.coe_le_coe.2 h)).2).1

theorem Quad.le_K₁ {p q : Quad i L φ₀ φ₁ φ₂} (h : p ≤ q) : p.1.2.2.1 ≤ q.1.2.2.1 :=
  (Prod.le_def.1 (Prod.le_def.1 (Prod.le_def.1 (Subtype.coe_le_coe.2 h)).2).2).1

theorem Quad.le_K₂ {p q : Quad i L φ₀ φ₁ φ₂} (h : p ≤ q) : p.1.2.2.2 ≤ q.1.2.2.2 :=
  (Prod.le_def.1 (Prod.le_def.1 (Prod.le_def.1 (Subtype.coe_le_coe.2 h)).2).2).2

theorem Quad.le_of {p q : Quad i L φ₀ φ₁ φ₂} (hW : p.1.1 ≤ q.1.1) (h₀ : p.1.2.1 ≤ q.1.2.1) (h₁ : p.1.2.2.1 ≤ q.1.2.2.1)
    (h₂ : p.1.2.2.2 ≤ q.1.2.2.2) : p ≤ q :=
  Subtype.coe_le_coe.1 (Prod.le_def.2 ⟨hW, Prod.le_def.2 ⟨h₀, Prod.le_def.2 ⟨h₁, h₂⟩⟩⟩)

def quadW (i : X₀ ⟶ X) (L : LB X₀) (φ₀ φ₁ φ₂ : Y ⟶ X) : (Quad i L φ₀ φ₁ φ₂)ᵒᵖ ⥤ AffOp Y :=
  (Monotone.functor (f := fun p : Quad i L φ₀ φ₁ φ₂ ↦ p.1.1) fun _ _ h ↦ Quad.le_W h).op

def quadK₀ (i : X₀ ⟶ X) (L : LB X₀) (φ₀ φ₁ φ₂ : Y ⟶ X) : (Quad i L φ₀ φ₁ φ₂)ᵒᵖ ⥤ (Small i L)ᵒᵖ :=
  (Monotone.functor (f := fun p : Quad i L φ₀ φ₁ φ₂ ↦ p.1.2.1) fun _ _ h ↦ Quad.le_K₀ h).op

def quadK₁ (i : X₀ ⟶ X) (L : LB X₀) (φ₀ φ₁ φ₂ : Y ⟶ X) : (Quad i L φ₀ φ₁ φ₂)ᵒᵖ ⥤ (Small i L)ᵒᵖ :=
  (Monotone.functor (f := fun p : Quad i L φ₀ φ₁ φ₂ ↦ p.1.2.2.1) fun _ _ h ↦ Quad.le_K₁ h).op

def quadK₂ (i : X₀ ⟶ X) (L : LB X₀) (φ₀ φ₁ φ₂ : Y ⟶ X) : (Quad i L φ₀ φ₁ φ₂)ᵒᵖ ⥤ (Small i L)ᵒᵖ :=
  (Monotone.functor (f := fun p : Quad i L φ₀ φ₁ φ₂ ↦ p.1.2.2.2) fun _ _ h ↦ Quad.le_K₂ h).op

end Rel

section SlopeTestRemainingChoices

variable {X X₀ Y Y₀ : Scheme.{0}}

theorem appLE_eq_of_eq {f g : Y ⟶ X} (e : f = g) (U : X.Opens) (V : Y.Opens) (h : V ≤ f ⁻¹ᵁ U)
    (h' : V ≤ g ⁻¹ᵁ U) : f.appLE U V h = g.appLE U V h' := by
  subst e; rfl

theorem app_appLE {i : X₀ ⟶ X} {i' : Y₀ ⟶ Y} {φ : Y ⟶ X} {ψ : Y₀ ⟶ X₀} (h : ψ ≫ i = i' ≫ φ) {U : X.Opens}
    {W : Y.Opens} (le : W ≤ φ ⁻¹ᵁ U) {V₀ : X₀.Opens} (hV : i ⁻¹ᵁ U ≤ V₀) (hle : i' ⁻¹ᵁ W ≤ ψ ⁻¹ᵁ V₀) (b : Γ(X, U))
    (c : Γ(X₀, V₀)) (hc : (i.app U).hom b = (X₀.presheaf.map (homOfLE hV).op).hom c) :
    (i'.app W).hom ((φ.appLE U W le).hom b) = (ψ.appLE V₀ (i' ⁻¹ᵁ W) hle).hom c := by
  have hle' : i' ⁻¹ᵁ W ≤ (ψ ≫ i) ⁻¹ᵁ U := fun y hy ↦ by
    show (ψ ≫ i) y ∈ U
    rw [h, Scheme.Hom.comp_apply]; exact le hy
  have e1 : φ.appLE U W le ≫ i'.app W = (ψ ≫ i).appLE U (i' ⁻¹ᵁ W) hle' := by
    rw [Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE]
    exact appLE_eq_of_eq h.symm _ _ _ _
  have e2 := congrArg (fun q ↦ q.hom b) e1
  simp only [CommRingCat.hom_comp, RingHom.comp_apply] at e2
  rw [e2, Scheme.Hom.comp_appLE, CommRingCat.hom_comp, RingHom.comp_apply, hc]
  have e3 := congrArg (fun q ↦ q.hom c) (Scheme.Hom.map_appLE ψ (U := i ⁻¹ᵁ U) (U' := V₀) hle' (homOfLE hV).op)
  simp only [CommRingCat.hom_comp, RingHom.comp_apply] at e3
  exact e3

theorem map_res_val {U V V' : X.Opens} (h : V ≤ U) (h' : V' ≤ V) (a : Γ(X, U)ˣ) :
    (X.presheaf.map (homOfLE h').op).hom (res h a).val = (res (h'.trans h) a).val := by
  change (X.presheaf.map (homOfLE h').op).hom ((X.presheaf.map (homOfLE h).op).hom a.val) =
    (X.presheaf.map (homOfLE (h'.trans h)).op).hom a.val
  rw [← CommRingCat.comp_apply, ← Functor.map_comp]
  rfl

theorem isUnit_of_sqZero {A A₀ : Type} [CommRing A] [CommRing A₀] (p : A →+* A₀) (hp : Function.Surjective p)
    (K : Ideal A) (hK : K ^ 2 = ⊥) (hker : ∀ a, p a = 0 → a ∈ K) (x : A) (hx : IsUnit (p x)) : IsUnit x := by
  obtain ⟨u, hu⟩ := hx.exists_right_inv
  obtain ⟨y, rfl⟩ := hp u
  have hn : x * y - 1 ∈ K := hker _ (by simp [hu])
  have hsq : (x * y - 1) * (x * y - 1) = 0 := by
    have : (x * y - 1) * (x * y - 1) ∈ K ^ 2 := by rw [pow_two]; exact Ideal.mul_mem_mul hn hn
    rw [hK] at this; simpa using this
  have hnil : IsNilpotent (x * y - 1) := ⟨2, by rw [pow_two, hsq]⟩
  have : IsUnit (x * y) := by simpa using hnil.isUnit_one_add
  exact isUnit_of_mul_isUnit_left this

theorem gm_one_res_pull (f : Y ⟶ X) (y : Y) {U : X.Opens} {V : Y.Opens} (hle : V ≤ f ⁻¹ᵁ U) (h : y ∈ V)
    (a : Γ(X, U)ˣ) : gm (𝟙 Y) y V (res hle (pullU f U a)) = gm f y U a := by
  rw [gm_res (𝟙 Y) y hle h, gm_pull (𝟙 Y) f y U (hle h), Category.id_comp]

theorem commGroup_mul_eq_mul_of_eq_mul_inv_mul {G : Type} [CommGroup G] (a b w w' : G) (h : w = a * b⁻¹ * w') : a * w' = b * w := by
  rw [h, mul_comm a b⁻¹, _root_.mul_assoc b⁻¹, mul_inv_cancel_left]

end SlopeTestRemainingChoices

theorem mulRel_of_iso : ∀ (R : Type) [CommRing R] (I : Ideal R), I ^ 2 = ⊥ → ∀ (X X₀ Y Y₀ : Scheme.{0}) (s : X ⟶ Sp R) (s' : Y ⟶ Sp R) (i : X₀ ⟶ X) (i' : Y₀ ⟶ Y) (φ₀ φ₁ φ₂ : Y ⟶ X) (w₀ : φ₀ ≫ s = s' ≫ spMap (RingHom.id R)) (w₁ : φ₁ ≫ s = s' ≫ spMap (RingHom.id R)) (w₂ : φ₂ ≫ s = s' ≫ spMap (RingHom.id R)) (ψ₀ ψ₁ ψ₂ : Y₀ ⟶ X₀) (L : LB X₀) (hL : L.IsLB) (u : C1 (smallG i L ⋙ OAff s)), IsThick I s' i' → IsBasis (smallG i L) → IsLift s i L u → ψ₀ ≫ i = i' ≫ φ₀ → ψ₁ ≫ i = i' ≫ φ₁ → ψ₂ ≫ i = i' ≫ φ₂ → GlobalTheory.CechPic.pull ψ₀ (cls L hL) = GlobalTheory.CechPic.pull ψ₁ (cls L hL) + GlobalTheory.CechPic.pull ψ₂ (cls L hL) → ∃ (T : Type) (_ : Category.{0} T) (_ : Quiver.IsThin T) (H : T ⥤ AffOp Y) (K₀ K₁ K₂ : T ⥤ (Small i L)ᵒᵖ) (le₀ : ∀ t, (H.obj t).unop.1 ≤ φ₀ ⁻¹ᵁ ((smallG i L).obj (K₀.obj t)).unop.1) (le₁ : ∀ t, (H.obj t).unop.1 ≤ φ₁ ⁻¹ᵁ ((smallG i L).obj (K₁.obj t)).unop.1) (le₂ : ∀ t, (H.obj t).unop.1 ≤ φ₂ ⁻¹ᵁ ((smallG i L).obj (K₂.obj t)).unop.1) (v : C0 (H ⋙ OAff s')), IsBasis H ∧ (∀ t, IsUnit (v t)) ∧ MulRel I (pullMap w₀ _ H K₀ le₀) (pullMap w₁ _ H K₁ le₁) (pullMap w₂ _ H K₂ le₂) u v := by
  intro R _ I hI X X₀ Y Y₀ s s' i i' φ₀ φ₁ φ₂ w₀ w₁ w₂ ψ₀ ψ₁ ψ₂ L hL u hT hB hu h₀ h₁ h₂ hcls
  have hcls' : cls (tens (L.pull ψ₁) (L.pull ψ₂)) (isLB_tens (pull_isLB hL ψ₁) (pull_isLB hL ψ₂)) =
      cls (L.pull ψ₀) (pull_isLB hL ψ₀) := hcls.symm
  obtain ⟨w, hw⟩ := (cls_eq_iff _ _).1 hcls'
  have mem : ∀ (ψ : Y₀ ⟶ X₀) (φ : Y ⟶ X), ψ ≫ i = i' ≫ φ → ∀ (q : Small i L) (W : Y.Opens),
      W ≤ φ ⁻¹ᵁ q.1.1.1 → ∀ y, i' y ∈ W → ψ y ∈ L.U q.1.2 := fun ψ φ h q W hW y hy ↦
    q.2 (show i (ψ y) ∈ q.1.1.1 by rw [← Scheme.Hom.comp_apply, h, Scheme.Hom.comp_apply]; exact hW hy)
  let c : (Quad i L φ₀ φ₁ φ₂)ᵒᵖ → (LB.div (L.pull ψ₀) (tens (L.pull ψ₁) (L.pull ψ₂))).ι := fun t ↦
    ((fun _ ↦ t.unop.1.2.1.1.2), ((fun _ ↦ t.unop.1.2.2.1.1.2), (fun _ ↦ t.unop.1.2.2.2.1.2)))
  have hc : ∀ t : (Quad i L φ₀ φ₁ φ₂)ᵒᵖ,
      i' ⁻¹ᵁ t.unop.1.1.1 ≤ (LB.div (L.pull ψ₀) (tens (L.pull ψ₁) (L.pull ψ₂))).U (c t) := fun t y hy ↦
    ⟨mem_pull.2 (mem ψ₀ φ₀ h₀ _ _ t.unop.2.1 y hy), mem_pull.2 (mem ψ₁ φ₁ h₁ _ _ t.unop.2.2.1 y hy),
      mem_pull.2 (mem ψ₂ φ₂ h₂ _ _ t.unop.2.2.2 y hy)⟩
  have surj := fun t : (Quad i L φ₀ φ₁ φ₂)ᵒᵖ ↦ hT.app_surj t.unop.1.1
  let v : C0 (quadW i L φ₀ φ₁ φ₂ ⋙ OAff s') := fun t ↦ Function.surjInv (surj t) (res (hc t) (w.s (c t))).val
  have hv : ∀ t : (Quad i L φ₀ φ₁ φ₂)ᵒᵖ, (i'.app t.unop.1.1.1).hom (v t) = (res (hc t) (w.s (c t))).val :=
    fun t ↦ Function.surjInv_eq (surj t) _
  refine ⟨(Quad i L φ₀ φ₁ φ₂)ᵒᵖ, inferInstance, inferInstance, quadW i L φ₀ φ₁ φ₂, quadK₀ i L φ₀ φ₁ φ₂,
    quadK₁ i L φ₀ φ₁ φ₂, quadK₂ i L φ₀ φ₁ φ₂, fun t ↦ t.unop.2.1, fun t ↦ t.unop.2.2.1, fun t ↦ t.unop.2.2.2, v,
    ?_, ?_, ?_⟩
  · constructor
    · intro y U hy
      obtain ⟨a₀, ha₀, -⟩ := hB.cover (φ₀ y) ⊤ trivial
      obtain ⟨a₁, ha₁, -⟩ := hB.cover (φ₁ y) ⊤ trivial
      obtain ⟨a₂, ha₂, -⟩ := hB.cover (φ₂ y) ⊤ trivial
      obtain ⟨W, hW, hyW, hWU⟩ := TopologicalSpace.Opens.isBasis_iff_nbhd.1 Y.isBasis_affineOpens
        (show y ∈ U ⊓ (φ₀ ⁻¹ᵁ ((smallG i L).obj a₀).unop.1 ⊓ (φ₁ ⁻¹ᵁ ((smallG i L).obj a₁).unop.1 ⊓
          φ₂ ⁻¹ᵁ ((smallG i L).obj a₂).unop.1)) from ⟨hy, ha₀, ha₁, ha₂⟩)
      exact ⟨Opposite.op ⟨(⟨W, hW⟩, a₀.unop, a₁.unop, a₂.unop), fun z hz ↦ (hWU hz).2.1,
        fun z hz ↦ (hWU hz).2.2.1, fun z hz ↦ (hWU hz).2.2.2⟩, hyW, fun z hz ↦ (hWU hz).1⟩
    · intro t₁ t₂ y U hy hy₁ hy₂
      obtain ⟨b₀, ⟨f₀⟩, ⟨g₀⟩, hb₀, -⟩ := hB.dir ((quadK₀ i L φ₀ φ₁ φ₂).obj t₁) ((quadK₀ i L φ₀ φ₁ φ₂).obj t₂)
        (φ₀ y) ⊤ trivial (t₁.unop.2.1 hy₁) (t₂.unop.2.1 hy₂)
      obtain ⟨b₁, ⟨f₁⟩, ⟨g₁⟩, hb₁, -⟩ := hB.dir ((quadK₁ i L φ₀ φ₁ φ₂).obj t₁) ((quadK₁ i L φ₀ φ₁ φ₂).obj t₂)
        (φ₁ y) ⊤ trivial (t₁.unop.2.2.1 hy₁) (t₂.unop.2.2.1 hy₂)
      obtain ⟨b₂, ⟨f₂⟩, ⟨g₂⟩, hb₂, -⟩ := hB.dir ((quadK₂ i L φ₀ φ₁ φ₂).obj t₁) ((quadK₂ i L φ₀ φ₁ φ₂).obj t₂)
        (φ₂ y) ⊤ trivial (t₁.unop.2.2.2 hy₁) (t₂.unop.2.2.2 hy₂)
      obtain ⟨W, hW, hyW, hWU⟩ := TopologicalSpace.Opens.isBasis_iff_nbhd.1 Y.isBasis_affineOpens
        (show y ∈ U ⊓ (t₁.unop.1.1.1 ⊓ t₂.unop.1.1.1) ⊓ (φ₀ ⁻¹ᵁ ((smallG i L).obj b₀).unop.1 ⊓
          (φ₁ ⁻¹ᵁ ((smallG i L).obj b₁).unop.1 ⊓ φ₂ ⁻¹ᵁ ((smallG i L).obj b₂).unop.1)) from
          ⟨⟨hy, hy₁, hy₂⟩, hb₀, hb₁, hb₂⟩)
      let t₃ : (Quad i L φ₀ φ₁ φ₂)ᵒᵖ := Opposite.op ⟨(⟨W, hW⟩, b₀.unop, b₁.unop, b₂.unop),
        fun z hz ↦ (hWU hz).2.1, fun z hz ↦ (hWU hz).2.2.1, fun z hz ↦ (hWU hz).2.2.2⟩
      refine ⟨t₃, ⟨(homOfLE (Quad.le_of (p := t₃.unop) (q := t₁.unop) (fun z hz ↦ (hWU hz).1.2.1) (leOfHom f₀.unop)
          (leOfHom f₁.unop) (leOfHom f₂.unop))).op⟩,
        ⟨(homOfLE (Quad.le_of (p := t₃.unop) (q := t₂.unop) (fun z hz ↦ (hWU hz).1.2.2) (leOfHom g₀.unop)
          (leOfHom g₁.unop) (leOfHom g₂.unop))).op⟩, hyW, fun z hz ↦ (hWU hz).1.1⟩
  · intro t
    refine isUnit_of_sqZero (i'.app t.unop.1.1.1).hom (surj t) (I.map (algebraMap R (Sec s' t.unop.1.1.1)))
      (by have e := Ideal.map_pow (algebraMap R (Sec s' t.unop.1.1.1)) I 2; rw [hI, Ideal.map_bot] at e; exact e.symm) (fun a ha ↦ (hT.ker t.unop.1.1 a).1 ha) (v t) ?_
    rw [hv t]; exact Units.isUnit _
  · intro t t' a
    have le : t'.unop ≤ t.unop := leOfHom a.unop
    have hWle : t'.unop.1.1.1 ≤ t.unop.1.1.1 := Quad.le_W le
    have hV : i' ⁻¹ᵁ t'.unop.1.1.1 ≤ i' ⁻¹ᵁ t.unop.1.1.1 := fun y hy ↦ hWle hy
    refine (hT.ker t'.unop.1.1 _).1 ?_
    have ek : ∀ (ψ : Y₀ ⟶ X₀) (φ : Y ⟶ X) (hψ : ψ ≫ i = i' ≫ φ) (p q : (Small i L)ᵒᵖ) (f : p ⟶ q)
        (le' : t'.unop.1.1.1 ≤ φ ⁻¹ᵁ q.unop.1.1.1)
        (hle : i' ⁻¹ᵁ t'.unop.1.1.1 ≤ ψ ⁻¹ᵁ (L.U p.unop.1.2 ⊓ L.U q.unop.1.2)),
        (i'.app t'.unop.1.1.1).hom ((φ.appLE _ t'.unop.1.1.1 le').hom (u p q f)) =
          (res hle (pullU ψ _ (L.g p.unop.1.2 q.unop.1.2))).val := fun ψ φ hψ p q f le' hle ↦
      (app_appLE hψ le' (Small.le_inf f) hle _ _ (hu p q f)).trans rfl
    have hle₀ : i' ⁻¹ᵁ t'.unop.1.1.1 ≤ ψ₀ ⁻¹ᵁ (L.U t.unop.1.2.1.1.2 ⊓ L.U t'.unop.1.2.1.1.2) := fun y hy ↦
      ⟨mem ψ₀ φ₀ h₀ _ _ t.unop.2.1 y (hV hy), mem ψ₀ φ₀ h₀ _ _ t'.unop.2.1 y hy⟩
    have hle₁ : i' ⁻¹ᵁ t'.unop.1.1.1 ≤ ψ₁ ⁻¹ᵁ (L.U t.unop.1.2.2.1.1.2 ⊓ L.U t'.unop.1.2.2.1.1.2) := fun y hy ↦
      ⟨mem ψ₁ φ₁ h₁ _ _ t.unop.2.2.1 y (hV hy), mem ψ₁ φ₁ h₁ _ _ t'.unop.2.2.1 y hy⟩
    have hle₂ : i' ⁻¹ᵁ t'.unop.1.1.1 ≤ ψ₂ ⁻¹ᵁ (L.U t.unop.1.2.2.2.1.2 ⊓ L.U t'.unop.1.2.2.2.1.2) := fun y hy ↦
      ⟨mem ψ₂ φ₂ h₂ _ _ t.unop.2.2.2 y (hV hy), mem ψ₂ φ₂ h₂ _ _ t'.unop.2.2.2 y hy⟩
    have e₀ := ek ψ₀ φ₀ h₀ _ _ ((quadK₀ i L φ₀ φ₁ φ₂).map a) (t'.unop.2.1) hle₀
    have e₁ := ek ψ₁ φ₁ h₁ _ _ ((quadK₁ i L φ₀ φ₁ φ₂).map a) (t'.unop.2.2.1) hle₁
    have e₂ := ek ψ₂ φ₂ h₂ _ _ ((quadK₂ i L φ₀ φ₁ φ₂).map a) (t'.unop.2.2.2) hle₂
    have emp : (i'.app t'.unop.1.1.1).hom (mp (quadW i L φ₀ φ₁ φ₂ ⋙ OAff s') a (v t)) =
        (res (hV.trans (hc t)) (w.s (c t))).val := by
      have n := congrArg (fun q ↦ q.hom (v t)) (i'.naturality (homOfLE hWle).op)
      simp only [CommRingCat.hom_comp] at n
      refine n.trans ?_
      show (Y₀.presheaf.map _).hom ((i'.app t.unop.1.1.1).hom (v t)) = _
      rw [hv t]
      exact map_res_val (hc t) hV _
    have key : res hle₀ (pullU ψ₀ _ (L.g t.unop.1.2.1.1.2 t'.unop.1.2.1.1.2)) * res (hc t') (w.s (c t')) =
        res hle₁ (pullU ψ₁ _ (L.g t.unop.1.2.2.1.1.2 t'.unop.1.2.2.1.1.2)) *
          res hle₂ (pullU ψ₂ _ (L.g t.unop.1.2.2.2.1.2 t'.unop.1.2.2.2.1.2)) * res (hV.trans (hc t)) (w.s (c t)) := by
      refine unit_ext fun y hy ↦ ?_
      have hp := hc t (hV hy)
      have hq := hc t' hy
      have g := (isGen_iff_germ w).1 hw y (c t) (c t') hp hq
      rw [gm_div' (L.pull ψ₀) (tens (L.pull ψ₁) (L.pull ψ₂)) (𝟙 Y₀) y (c t) (c t') hp hq,
        gm_pull_g L ψ₀ (𝟙 Y₀) y _ _ hp.1 hq.1,
        gm_tens (L.pull ψ₁) (L.pull ψ₂) (𝟙 Y₀) y _ _ hp.2 hq.2, gm_pull_g L ψ₁ (𝟙 Y₀) y _ _ hp.2.1 hq.2.1,
        gm_pull_g L ψ₂ (𝟙 Y₀) y _ _ hp.2.2 hq.2.2, Category.id_comp, Category.id_comp, Category.id_comp] at g
      simp only [map_mul, gm_one_res_pull _ y _ hy, gm_res (𝟙 Y₀) y _ hy]
      exact commGroup_mul_eq_mul_of_eq_mul_inv_mul _ _ _ _ g
    have kv := congrArg Units.val key
    simp only [Units.val_mul] at kv
    beta_reduce
    refine (map_sub (i'.app t'.unop.1.1.1).hom _ _).trans (sub_eq_zero.2 ?_)
    refine ((map_mul (i'.app t'.unop.1.1.1).hom _ _).trans ?_).trans (((map_mul (i'.app t'.unop.1.1.1).hom _ _).trans
      (congrArg (· * _) (map_mul (i'.app t'.unop.1.1.1).hom _ _))).symm)
    erw [emp, hv t', e₀, e₁, e₂]
    exact kv

end GlobalTheory.LBLift.IsoRel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplicativeRelationOfPullbackIsoThickening =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallAffineBasisAndTransitionUnitsLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallAffineBasisAndTransitionUnitsLift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.Obs GlobalTheory.LBLift
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.LBLift

theorem app_presheaf_map {X Y : Scheme.{0}} (f : Y ⟶ X) {V W : X.Opens} (h : W ≤ V) (x : Γ(X, V)) :
    (f.app W).hom ((X.presheaf.map (homOfLE h).op).hom x) =
      (Y.presheaf.map (homOfLE (f.preimage_mono h)).op).hom ((f.app V).hom x) := by
  rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, Scheme.Hom.naturality]
  rfl

theorem presheaf_map_map {Y : Scheme.{0}} {U V W : Y.Opens} (h₁ : V ≤ U) (h₂ : W ≤ V) (y : Γ(Y, U)) :
    (Y.presheaf.map (homOfLE h₂).op).hom ((Y.presheaf.map (homOfLE h₁).op).hom y) =
      (Y.presheaf.map (homOfLE (h₂.trans h₁)).op).hom y := by
  rw [← CommRingCat.comp_apply, ← Functor.map_comp]
  rfl

variable {R : Type} [CommRing R] {I : Ideal R} {X X₀ : Scheme.{0}} {s : X ⟶ Sp R} {i : X₀ ⟶ X} {L : LB X₀}

theorem isBasis_smallG (hi : IsThick I s i) (hL : L.IsLB) : IsBasis (smallG i L) := by
  haveI := hi.closed
  have hind : Topology.IsInducing i.base := i.isClosedEmbedding.isInducing
  have cov : ∀ (x : X) (U : X.Opens), x ∈ U → ∃ t : (Small i L)ᵒᵖ,
      x ∈ ((smallG i L).obj t).unop.1 ∧ ((smallG i L).obj t).unop.1 ≤ U := by
    intro x U hx
    obtain ⟨x₀, rfl⟩ := hi.surj.surj x
    have hx₀ : x₀ ∈ ⨆ j, L.U j := by rw [hL.cover]; trivial
    obtain ⟨j, hj⟩ := TopologicalSpace.Opens.mem_iSup.1 hx₀
    obtain ⟨V, hV, hVe⟩ := hind.isOpen_iff.1 (L.U j).isOpen
    have hxV : i.base x₀ ∈ (⟨V, hV⟩ : X.Opens) ⊓ U := ⟨show x₀ ∈ i.base ⁻¹' V from hVe ▸ hj, hx⟩
    obtain ⟨W, hW, hxW, hWle⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.1 X.isBasis_affineOpens) hxV
    have hsm : i ⁻¹ᵁ W ≤ L.U j := fun y hy ↦ by
      show y ∈ (L.U j : Set X₀)
      rw [← hVe]
      exact (hWle hy).1
    exact ⟨Opposite.op ⟨(⟨W, hW⟩, j), hsm⟩, hxW, fun y hy ↦ (hWle hy).2⟩
  refine ⟨cov, fun t₁ t₂ x U hx h₁ h₂ ↦ ?_⟩
  obtain ⟨t₃, hx₃, hle⟩ := cov x (U ⊓ ((smallG i L).obj t₁).unop.1 ⊓ ((smallG i L).obj t₂).unop.1)
    ⟨⟨hx, h₁⟩, h₂⟩
  exact ⟨t₃, ⟨(homOfLE (show t₃.unop ≤ t₁.unop from fun y hy ↦ (hle hy).1.2)).op⟩,
    ⟨(homOfLE (show t₃.unop ≤ t₂.unop from fun y hy ↦ (hle hy).2)).op⟩, hx₃, fun y hy ↦ (hle hy).1.1⟩

theorem exists_isLift (hi : IsThick I s i) : ∃ u, IsLift s i L u :=
  ⟨fun p q a ↦ (hi.app_surj q.unop.1.1 (res (Small.le_inf a) (L.g p.unop.1.2 q.unop.1.2)).val).choose,
    fun p q a ↦ (hi.app_surj q.unop.1.1 _).choose_spec⟩

end GlobalTheory.LBLift

namespace GlobalTheory.LBLift
variable {R : Type} [CommRing R] {I : Ideal R} {X X₀ : Scheme.{0}} {s : X ⟶ Sp R} {i : X₀ ⟶ X} {L : LB X₀}

theorem isUnit_of_sqZero {A A₀ : Type} [CommRing A] [CommRing A₀] (p : A →+* A₀)
    (hp : Function.Surjective p) (K : Ideal A) (hK : K ^ 2 = ⊥) (hker : ∀ a, p a = 0 → a ∈ K)
    (x : A) (hx : IsUnit (p x)) : IsUnit x := by
  obtain ⟨v, hv⟩ := hx.exists_right_inv
  obtain ⟨y, rfl⟩ := hp v
  have hn : x * y - 1 ∈ K := hker _ (by simp [hv])
  have hsq : (x * y - 1) * (x * y - 1) = 0 := by
    have : (x * y - 1) * (x * y - 1) ∈ K ^ 2 := by rw [pow_two]; exact Ideal.mul_mem_mul hn hn
    rw [hK] at this; simpa using this
  have hnil : IsNilpotent (x * y - 1) := ⟨2, by rw [pow_two, hsq]⟩
  have : IsUnit (x * y) := by simpa using hnil.isUnit_one_add
  exact isUnit_of_mul_isUnit_left this

theorem lift_isUnit (hI : I ^ 2 = ⊥) (hi : IsThick I s i) {u : C1 (smallG i L ⋙ OAff s)} (hu : IsLift s i L u)
    (p q : (Small i L)ᵒᵖ) (a : p ⟶ q) : IsUnit (u p q a) := by
  have hK : ∀ (A : Type) [CommRing A] [Algebra R A], (I.map (algebraMap R A)) ^ 2 = ⊥ := fun A _ _ ↦ by
    rw [← Ideal.map_pow, hI, Ideal.map_bot]
  exact isUnit_of_sqZero (A := Γ(X, q.unop.1.1.1)) (i.app q.unop.1.1.1).hom (hi.app_surj q.unop.1.1)
    (I.map (algebraMap R (Sec s q.unop.1.1.1))) (hK (Sec s q.unop.1.1.1)) (fun b hb ↦ (hi.ker q.unop.1.1 b).1 hb) (u p q a)
    ((hu p q a).symm ▸ Units.isUnit _)

theorem lift_mdef (hi : IsThick I s i) (hL : L.IsLB) {u : C1 (smallG i L ⋙ OAff s)} (hu : IsLift s i L u) :
    In2 I _ (mdef _ u) := by
  intro t t' t'' a b
  refine (hi.ker t''.unop.1.1 _).1 ?_
  have hb : t''.unop.1.1.1 ≤ t'.unop.1.1.1 := leOfHom b.unop
  have h2 : i ⁻¹ᵁ t''.unop.1.1.1 ≤ L.U t.unop.1.2 ⊓ L.U t'.unop.1.2 ⊓ L.U t''.unop.1.2 :=
    le_inf ((i.preimage_mono hb).trans (Small.le_inf a)) t''.unop.2
  have hc := congrArg (fun w ↦ (X₀.presheaf.map (homOfLE h2).op).hom w.val)
    (hL.cocycle t.unop.1.2 t'.unop.1.2 t''.unop.1.2)
  simp only [Units.val_mul, map_mul, res, Units.coe_map, MonoidHom.coe_coe,
    presheaf_map_map] at hc
  have k : ∀ (x : Γ(X, t'.unop.1.1.1)) (y z : Γ(X, t''.unop.1.1.1)),
      (i.app t'.unop.1.1.1).hom x = (res (Small.le_inf a) (L.g t.unop.1.2 t'.unop.1.2)).val →
      (i.app t''.unop.1.1.1).hom y = (res (Small.le_inf b) (L.g t'.unop.1.2 t''.unop.1.2)).val →
      (i.app t''.unop.1.1.1).hom z = (res (Small.le_inf (a ≫ b)) (L.g t.unop.1.2 t''.unop.1.2)).val →
      (i.app t''.unop.1.1.1).hom ((X.presheaf.map (homOfLE hb).op).hom x * y - z) = 0 := by
    intro x y z hx hy hz
    rw [map_sub, map_mul, app_presheaf_map, hx, hy, hz, sub_eq_zero]
    simp only [res, Units.coe_map, MonoidHom.coe_coe, presheaf_map_map]
    exact hc
  exact k _ _ _ (hu t t' a) (hu t' t'' b) (hu t t'' (a ≫ b))

theorem isLiftOfTransitionUnits_of_ideal_cochain_change (hi : IsThick I s i) {u : C1 (smallG i L ⋙ OAff s)} (hu : IsLift s i L u)
    (u' : C1 (smallG i L ⋙ OAff s)) (h : In1 I _ (u' - u)) : IsLift s i L u' := by
  intro p q a
  have h0 := (hi.ker q.unop.1.1 _).2 (h p q a)
  have e : u' p q a = u p q a + (u' - u) p q a := by simp
  rw [e]
  exact (map_add (i.app q.unop.1.1.1).hom (u p q a) ((u' - u) p q a)).trans
    ((congrArg₂ (· + ·) (hu p q a) h0).trans (add_zero _))

end GlobalTheory.LBLift

namespace GlobalTheory.LBLift

theorem small_basis_lift : ∀ (R : Type) [CommRing R] (I : Ideal R), I ^ 2 = ⊥ → ∀ (X X₀ : Scheme.{0}) (s : X ⟶ Sp R) (i : X₀ ⟶ X) (L : LB X₀), IsThick I s i → L.IsLB → IsBasis (smallG i L) ∧ (∃ u, IsLift s i L u) ∧ ∀ u, IsLift s i L u → (∀ t t' a, IsUnit (u t t' a)) ∧ In2 I _ (mdef _ u) ∧ ∀ u', In1 I _ (u' - u) → IsLift s i L u' := by
  intro R _ I hI X X₀ s i L hi hL
  exact ⟨isBasis_smallG hi hL, exists_isLift hi, fun u hu ↦
    ⟨lift_isUnit hI hi hu, lift_mdef hi hL hu, fun u' h ↦ isLiftOfTransitionUnits_of_ideal_cochain_change hi hu u' h⟩⟩

end GlobalTheory.LBLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallAffineBasisAndTransitionUnitsLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeOfSqZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeOfSqZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThickId\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianStructureCohomologyStatementStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveClassDegreeTwoStructureSheafVanishStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveClassDegreeTwoVanishAffineBases\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyReductionLiftsLineBundle\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineChartSmoothLiftSqZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCocycleCorrectionSquareZeroIdeal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLiftOfStrictCocycleStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatCoefficientExtensionH2Class\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAdditiveLineBundleFamilyOfGeometricFibresStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplicativeRelationOfPullbackIsoThickening\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtensionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLiftStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallAffineBasisAndTransitionUnitsLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.LBLift

section
open GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.Obs

theorem abLift_of_prim (hP : PrimitiveExtendedDegTwoVanish) : AbLift := by
  intro R _ I hI A _ g hA hg X₀ Y₀ i i' ψ₀ ψ₁ ψ₂ hi hi' e₀ e₁ e₂ c hc
  obtain ⟨L, hL, rfl⟩ := cls_surj c
  obtain ⟨hB, ⟨u, hu⟩, hall⟩ := _root_.GlobalTheory.LBLift.small_basis_lift R I hI _ _ A.hom i L hi hL
  obtain ⟨hun, hdef, hnear⟩ := hall u hu
  obtain ⟨T, _, _, H, K₀, K₁, K₂, le₀, le₁, le₂, v, hH, hv, hrel⟩ := _root_.GlobalTheory.LBLift.IsoRel.mulRel_of_iso R I hI _ _ _ _ A.hom (A ⊗ A).hom i i'
    _ _ _ (overW μ[A]) (overW (fst A A)) (overW (snd A A)) ψ₀ ψ₁ ψ₂ L hL u hi' hB hu e₀ e₁ e₂ hc
  obtain ⟨R₁, _, _, q, hq, hprim⟩ := _root_.GlobalTheory.PrimIdeal.primI_of_ext R I
  haveI : Smooth A.hom := SmoothOfRelativeDimension.smooth g _
  haveI : Smooth (A ⊗ A).hom := by
    rw [← Over.w (fst A A)]
    haveI : Smooth (fst A A).left := inferInstanceAs (Smooth (pullback.fst A.hom A.hom))
    infer_instance
  have hpi := hprim _ _ _ _ (pullMap (overW μ[A]) _ H K₀ le₀) (pullMap (overW (fst A A)) _ H K₁ le₁)
    (pullMap (overW (snd A A)) _ H K₂ le₂)
    (fun t ↦ haveI := GlobalTheory.LiftSys.smooth_sec_affine A.hom ((smallG i L).obj t).unop
      inferInstanceAs (Module.Flat R (Sec A.hom ((smallG i L).obj t).unop.1)))
    (fun t ↦ haveI := GlobalTheory.LiftSys.smooth_sec_affine (A ⊗ A).hom (H.obj t).unop
      inferInstanceAs (Module.Flat R (Sec (A ⊗ A).hom (H.obj t).unop.1)))
    (_root_.GlobalTheory.Obs.additiveClassDegreeTwo_vanish_affineBases hP R R₁ q hq A g hA hg _ T _ H K₀ K₁ K₂ le₀ le₁ le₂ hB hH)
  obtain ⟨u', h1, h2⟩ := _root_.GlobalTheory.LBLift.cocycle_of_sqZero R I hI _ _ _ _ _ _ _ hpi u v hun hdef hv hrel
  exact GlobalTheory.T.exists_lineBundle_lift_of_strict_cocycle R _ _ A.hom i L hL u' hB (hnear u' h1) (hall u' (hnear u' h1)).1 h2

theorem abLift : AbLift :=
  abLift_of_prim (GlobalTheory.T.primitive_degree_two_extension (GlobalTheory.T.additiveClassDegreeTwo_structureSheaf_vanish fun R _ A _ g hA hg ↦
    ⟨(GlobalTheory.T.abelian_structure_cohomology_statement R A g hA hg).1, (GlobalTheory.T.abelian_structure_cohomology_statement R A g hA hg).2.1⟩))

end

theorem exists_fac_quot {R K : Type} [CommRing R] [Field K] (J : Ideal R) (hJ : J ^ 2 = ⊥) (s : Sp K ⟶ Sp R) :
    ∃ s' : Sp K ⟶ Sp (R ⧸ J), s' ≫ spMap (Ideal.Quotient.mk J) = s := by
  obtain ⟨φ, rfl⟩ := Spec.map_surjective s
  have h : ∀ a ∈ J, φ.hom a = 0 := fun a ha ↦ by
    have h2 : a ^ 2 = 0 := by simpa [hJ] using Ideal.pow_mem_pow ha 2
    have := congrArg φ.hom h2
    rw [map_pow, map_zero] at this
    exact pow_eq_zero_iff two_ne_zero |>.1 this
  refine ⟨spMap (Ideal.Quotient.lift J φ.hom h), ?_⟩
  rw [← Spec.map_comp]
  rfl

theorem exists_fam {S : Scheme.{0}} {A U T : Over S} [GrpObj A] [IsLocallyNoetherian U.left] (hA : IsAbelianScheme A)
    (p : T ⟶ U) (hp : ∀ (K : Type) [Field K] (s : Sp K ⟶ S) (t : Over.mk s ⟶ U), ∃ t' : Over.mk s ⟶ T, t' ≫ p = t)
    {N : LB (A ⊗ T).left} (hN : N.IsLB) (ha : IsAdditive N) (c : Pic (A ⊗ U).left)
    (hc : CechPic.pull (A ◁ p).left c = cls N hN) :
    ∃ (M : LB (A ⊗ U).left) (hM : M.IsLB), IsAdditive M ∧
      ∀ (Y : Over S) (a : Y ⟶ A) (t : Y ⟶ T), evc hM a (t ≫ p) = evc hN a t := by
  obtain ⟨M, hM, e⟩ := cls_surj (c - CechPic.pull (lift 1 (snd A U)).left c)
  have k : ∀ (Y : Over S) (a : Y ⟶ A) (t : Y ⟶ U), evc hM a t =
      CechPic.pull (lift a t).left c - CechPic.pull (lift (1 : Y ⟶ A) t).left c := fun Y a t ↦ by
    rw [evc, e, map_sub, ← CechPic.pull_comp, ← Over.comp_left, comp_lift, MonObj.comp_one, lift_snd]
  have k' : ∀ (Y : Over S) (a : Y ⟶ A) (t : Y ⟶ T), CechPic.pull (lift a (t ≫ p)).left c = evc hN a t :=
    fun Y a t ↦ by
    rw [evc, ← hc, ← CechPic.pull_comp, ← Over.comp_left, lift_whiskerLeft]
  have key : ∀ (Y : Over S) (a : Y ⟶ A) (t : Y ⟶ T), evc hM a (t ≫ p) = evc hN a t := fun Y a t ↦ by
    rw [k, k', k', ha.evc_one hN, sub_zero]
  refine ⟨M, hM, _root_.GlobalTheory.AddFib.isAdditive_of_geomFibres S A U hA M hM ((triv_ev_iff hM _ _).2 (by rw [k, sub_self])) fun K _ _ s t ↦ ?_, key⟩
  obtain ⟨t', rfl⟩ := hp K s t
  refine (isAdditive_iff (pull_isLB hM _)).2 fun Y a a' y ↦ ?_
  simp only [evc_ev hM, lift_fst, lift_snd_assoc]
  simp only [← Category.assoc, key]
  exact (isAdditive_iff hN).1 ha Y a a' _

theorem hasRep_of_sqZero : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ J : Ideal R, J ^ 2 = ⊥ → HasRep A g (Over.mk (spMap (Ideal.Quotient.mk J))) → HasRep A g (𝟙_ _) := by
  intro R _ _ A _ g hA hg J hJ ⟨B, b, P, hP, hb⟩
  refine _root_.GlobalTheory.DualCon.hasRep_of_liftAt R A g hA hg B _ b P ?_ ?_ hP hb fun x ↦ ?_
  · haveI : IsClosedImmersion (spMap (Ideal.Quotient.mk J)) :=
      IsClosedImmersion.spec_of_surjective _ Ideal.Quotient.mk_surjective
    exact inferInstanceAs (IsFinite (spMap (Ideal.Quotient.mk J)))
  · exact GlobalTheory.LiftSys.surjective_spMap_sqZero _ Ideal.Quotient.mk_surjective hJ
      fun _ h ↦ Ideal.Quotient.eq_zero_iff_mem.1 h
  obtain ⟨C, _, σ, j, hs, hj, ho, hx⟩ := _root_.GlobalTheory.LBLift.exists_chart_lift R J hJ g B b hb.smooth x
  have hN : (ev P (fst A _) (snd A _ ≫ j)).IsLB := pull_isLB hP.fam.isLB _
  have ha : IsAdditive (ev P (fst A _) (snd A _ ≫ j)) := (isAdditive_iff hN).2 fun Y a a' y ↦ by
    simp only [evc_ev hP.fam.isLB, lift_fst, lift_snd_assoc]
    exact (isAdditive_iff hP.fam.isLB).1 hP.fam.add Y a a' _
  obtain ⟨c, hc⟩ := _root_.GlobalTheory.AddFamLift.main abLift R J hJ A g hA hg C σ _ hN ha
  haveI : Smooth (spMap σ) := SmoothOfRelativeDimension.smooth g _
  haveI : IsLocallyNoetherian (Over.mk (spMap σ)).left :=
    LocallyOfFiniteType.isLocallyNoetherian (spMap σ)
  obtain ⟨M, hM, hMa, key⟩ := exists_fam hA (fst (Over.mk (spMap σ)) (Over.mk (spMap (Ideal.Quotient.mk J))))
    (fun K _ s t ↦ by
      obtain ⟨s', hs'⟩ := exists_fac_quot J hJ s
      exact ⟨lift t (Over.homMk s' hs'), lift_fst _ _⟩) hN ha c hc
  refine ⟨_, M, j, ⟨hM, hMa⟩, hs, hj, ho, hx, (same_iff hM hP.fam.isLB _ _).2 ?_⟩
  rw [key, evc_ev hP.fam.isLB, lift_fst, lift_snd_assoc]

end GlobalTheory.LBLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeOfSqZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeOfSqZeroStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeOfSqZeroStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeOfSqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeOfSqZeroStatement =====
