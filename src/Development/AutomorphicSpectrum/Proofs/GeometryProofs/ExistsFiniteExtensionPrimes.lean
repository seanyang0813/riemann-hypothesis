module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual
public import Mathlib.AlgebraicGeometry.Morphisms.QuasiFinite
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GlueApplyOfNotInFibre
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne
public import Mathlib.AlgebraicGeometry.Morphisms.Finite
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.WeilBound.CoreStatements.HodgeTatePoints.MfCoords
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsFullLevelAt
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural
public import Development.WeilBound.CoreStatements.HodgeTatePoints.MgLevel
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SecLinOfSecScal
public import Mathlib.AlgebraicGeometry.AlgClosed.Basic
public import Mathlib.GroupTheory.FiniteAbelian.Basic
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TateIsoPullbackEquiv
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ModuliFiniteSurjectiveOverGenericFamily
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenericPointNormalCoords
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
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Coalgebra.IsFrobenius
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
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.CategoryTheory.Limits.Shapes.Connected
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Mathlib.RingTheory.Henselian
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ProjectiveOverRestrictInt

section
@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.XR

open AlgebraicGeometry CategoryTheory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

def LevelCoverSt : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Geo.Tor.Level H)
    (Xo : Moduli D l) (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (e : Y.X), e ∈ genericPoints Y.X →
    ∀ N : ℕ, 1 ≤ N → ∃ (Ω : Type) (_ : Field Ω) (_ : CharZero Ω) (n : ℕ) (x : Fin n → Ω) (M : PModel ℤ x)
      (f : M.X ⟶ Y.X) (y : Sp Ω ⟶ Xo.XF c) (t : SAB H M.X) (_ : SABMap t Y.t f) (z : Ωˣ)
      (ev : D.La → (Over.mk M.ξ ⟶ t.G)),
      Flat.NormalCpt M.ξ ∧ IsFinite f ∧ f (GlobalTheory.CompanionTheory.Ar.genPt M.ξ) = e ∧ M.ξ ≫ f = y ≫ Y.j ∧ IsFullLevelAt D t M.ξ N z ev ∧
      FullTorsion t.G M.ξ N ∧ ∀ q : Cpt M.ξ, unitAt M.ξ q (z : Ω)

end GlobalTheory.CompanionTheory.Ar.XR
end


-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsPrimitiveRootOfLevel, Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFiniteNormalModelOfResidueFinite, Development.WeilBound.CoreStatements.HodgeTatePoints.MgTate, Development.AutomorphicSpectrum.Proofs.GeometryProofs.TateIsoBaseChange, Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFullLevelFiniteExtension, Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelStructureProperties, Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelStructurePullback, Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelGenericCover, Development.AutomorphicSpectrum.Proofs.GeometryProofs.LevelCoverStHolds, Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFiniteExtensionPrimes

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsPrimitiveRootOfLevel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsPrimitiveRootOfLevel", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.Morphisms.QuasiFinite\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar.HodgeExists

theorem exists_lift_torsion {S S' Z : Scheme.{0}} {G' : Over S'} [GrpObj G'] {G : Over S} [GrpObj G] {f : S' ⟶ S}
    {φ : G'.left ⟶ G.left} (h : IsGrpPullback G' G f φ) (b : Z ⟶ S') (a : Z ⟶ S) (hab : a = b ≫ f) (n : ℕ)
    (g : Over.mk a ⟶ G) (hg : g ^ n = 1) : ∃ g' : Over.mk b ⟶ G', g'.left ≫ φ = g.left ∧ g' ^ n = 1 := by
  subst hab
  let P : (Over.mk b ⟶ G') → (Over.mk (b ≫ f) ⟶ G) := fun x => Over.homMk (x.left ≫ φ) (by
    have := Over.w x
    simp only [Over.mk_hom] at this
    simp only [Category.assoc, Over.mk_hom, h.1.w]
    rw [← Category.assoc, this])
  have hP : ∀ x, (P x).left = x.left ≫ φ := fun _ => rfl
  let Φ : (Over.mk b ⟶ G') →* (Over.mk (b ≫ f) ⟶ G) := MonoidHom.mk' P fun x y =>
    Over.OverMorphism.ext ((hP _).trans (h.2 (Over.mk b) x y (P x) (P y) rfl rfl).symm)
  have hinj : Function.Injective Φ := fun x y hxy => Over.OverMorphism.ext
    (h.1.hom_ext (congrArg CommaMorphism.left hxy) ((Over.w x).trans (Over.w y).symm))
  let g' : Over.mk b ⟶ G' := Over.homMk (h.1.lift g.left b (Over.w g)) (h.1.lift_snd _ _ _)
  have hg' : g'.left ≫ φ = g.left := h.1.lift_fst _ _ _
  refine ⟨g', hg', hinj ?_⟩
  have : Φ g' = g := Over.OverMorphism.ext hg'
  rw [map_pow, this, hg, map_one]

theorem fullTorsion_push {S S' : Scheme.{0}} {G' : Over S'} [GrpObj G'] {G : Over S} [GrpObj G] {f : S' ⟶ S}
    {φ : G'.left ⟶ G.left} (h : IsGrpPullback G' G f φ) {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ S'}
    {N n : ℕ} (hn : n ∣ N) (ht : FullTorsion G' ξ N) : FullTorsion G (ξ ≫ f) n := by
  intro k _ i g hg
  obtain ⟨g', e, hg'⟩ := exists_lift_torsion h (spMap i ≫ ξ) _ (Category.assoc _ _ _).symm n g hg
  obtain ⟨m, rfl⟩ := hn
  obtain ⟨x, hx⟩ := ht k i g' (by rw [pow_mul, hg', one_pow])
  refine ⟨Over.homMk (x.left ≫ φ) ?_, ?_⟩
  · have := Over.w x
    simp only [Over.mk_hom] at this
    simp only [Category.assoc, Over.mk_hom, h.1.w]
    rw [← Category.assoc, this]
  · rw [← e, hx]
    exact Category.assoc _ _ _

theorem finite_of_dominates {X Y : Scheme.{0}} {Ω Ω₀ : Type} [Field Ω] [Field Ω₀] {ξ : Spec (CommRingCat.of Ω) ⟶ X}
    {ξ₀ : Spec (CommRingCat.of Ω₀) ⟶ Y} (hξ : IsCptGen ξ) (f : X ⟶ Y) [IsFinite f] {i : Ω₀ →+* Ω}
    (h : GlobalTheory.CompanionTheory.Ar.Dominates ξ ξ₀ f i) : i.Finite := by
  have h1 : LocallyQuasiFinite (Spec.map (Scheme.stalkClosedPointTo ξ)) :=
    (HasRingHomProperty.Spec_iff (P := @LocallyQuasiFinite)).2
      (.of_finite (RingHom.Finite.of_surjective _ hξ.bij.2))
  have h2 : LocallyQuasiFinite ξ := by
    rw [← Scheme.Spec_stalkClosedPointTo_fromSpecStalk ξ]
    infer_instance
  have h3 : LocallyQuasiFinite (Spec.map (CommRingCat.ofHom i) ≫ ξ₀) := by
    rw [← h]
    infer_instance
  have h4 : i.QuasiFinite :=
    (HasRingHomProperty.Spec_iff (P := @LocallyQuasiFinite) (φ := CommRingCat.ofHom i)).1
      (LocallyQuasiFinite.of_comp _ ξ₀)
  algebraize [i]
  exact .of_quasiFinite

end GlobalTheory.CompanionTheory.Ar.HodgeExists
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsPrimitiveRootOfLevel =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFiniteNormalModelOfResidueFinite =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFiniteNormalModelOfResidueFinite", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GlueApplyOfNotInFibre\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.MfCoords\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsFullLevelAt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.XR
open scoped CategoryTheory.Obj

theorem _root_.GlobalTheory.CompanionTheory.Relay.exists_finite_normal_model_of_residue_finite : ∀ (X : Scheme.{0}) (s : X ⟶ Sp ℤ), IsProjOver s → ∀ (Ω : Type) [Field Ω] [CharZero Ω] (ξ : Sp Ω ⟶ X), (Scheme.descResidueField (Scheme.stalkClosedPointTo ξ)).hom.Finite → ∃ (n : ℕ) (x : Fin n → Ω) (M : PModel ℤ x) (π : M.X ⟶ X), Flat.NormalCpt M.ξ ∧ IsFinite π ∧ M.ξ ≫ π = ξ := by
  first | exact @PositivityTheory.HtPt.Mf.xr_norm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFiniteNormalModelOfResidueFinite =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.MgTate =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.MgTate", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.MgLevel\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.SecLinOfSecScal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.AlgClosed.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.HtPt.Mg

section Pairing

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CommPairing
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

variable {S : Scheme.{0}} {A : Over S} [GrpObj A] {L : LB A.left} {k : ℤ}

private theorem surjective_appTop_of_iso' {X Y : Scheme.{0}} (f : X ≅ Y) : Function.Surjective f.hom.appTop.hom := by
  have h : f.inv.appTop ≫ f.hom.appTop = 𝟙 _ := by
    rw [← Scheme.Hom.comp_appTop]
    simp
  intro x
  refine ⟨f.inv.appTop.hom x, ?_⟩
  have hx := congrArg (fun g => g.hom x) h
  simpa using hx

theorem surj_fst_of_proper (hA : IsSemiAbelian A) (T : Over S) (hT : IsProper (pullback.snd A.hom T.hom)) :
    Function.Surjective (fst T A).left.appTop.hom := by
  haveI := hA.comm
  haveI := hA.smooth
  haveI := hA.geomConnected
  haveI hAb : IsAbelianScheme ((Over.pullback T.hom).obj A) :=
    ⟨inferInstance, (inferInstance : Smooth (pullback.snd A.hom T.hom)), hT,
      (inferInstance : GeometricallyConnected (pullback.snd A.hom T.hom))⟩
  have hb := (GlobalTheory.ExpansionTotal.globalFns T.left ((Over.pullback T.hom).obj A) hAb).2
  have e : (fst T A).left = (pullbackSymmetry T.hom A.hom).hom ≫ pullback.snd A.hom T.hom := by
    simp
  rw [e, Scheme.Hom.comp_appTop, CommRingCat.hom_comp, RingHom.coe_comp]
  exact Function.Surjective.comp (surjective_appTop_of_iso' _) hb

omit [GrpObj A] in
theorem proper_of_hom {T T' : Over S} (h : T' ⟶ T) (hT : IsProper (pullback.snd A.hom T.hom)) :
    IsProper (pullback.snd A.hom T'.hom) := by
  have e : h.left ≫ T.hom = T'.hom := Over.w h
  have q : pullback.snd A.hom (h.left ≫ T.hom) =
      (pullbackLeftPullbackSndIso A.hom T.hom h.left).inv ≫ pullback.snd (pullback.snd A.hom T.hom) h.left := by
    rw [Iso.eq_inv_comp, pullbackLeftPullbackSndIso_hom_snd]
  have hp : IsProper (pullback.snd A.hom (h.left ≫ T.hom)) := by
    rw [q]
    infer_instance
  rwa [e] at hp

theorem tval_div' (hL : L.IsLB) {T : Over S} (hT : Function.Surjective (fst T A).left.appTop.hom)
    (θ θ' : ThetaGrp A L k T) (h : θ.pt = θ'.pt) {Z : Scheme.{0}} (r : Z ⟶ (T ⊗ A).left) (x : T ⟶ A) (z : Z) (J)
    (hJ : Good L z J) :
    tval θ r z J * (tval θ' r z J)⁻¹ =
      tval θ (r ≫ (translT A x).left) z J * (tval θ' (r ≫ (translT A x).left) z J)⁻¹ := by
  obtain ⟨a, u, hu⟩ := θ
  obtain ⟨a', u', hu'⟩ := θ'
  obtain rfl : a = a' := h
  exact val_div_eq hL (fst T A).left hT hu hu' r _ (by rw [Category.assoc, translT_fst]) z J hJ

private theorem mul_eq_mul_mul_of_ratio_eq {G : Type*} [CommGroup G] {a a' b b' c c' d d' u : G}
    (h1 : a' * a⁻¹ = b' * b⁻¹) (h2 : c' * c⁻¹ = d' * d⁻¹) (h0 : a * d = c * b * u) :
    a' * d' = c' * b' * u := by
  have hb : b' = a' * a⁻¹ * b := by rw [h1]; group
  have hd : d' = c' * c⁻¹ * d := by rw [h2]; group
  have hd0 : d = a⁻¹ * (c * b * u) := by rw [← h0]; group
  rw [hb, hd, hd0]
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_inv]
  abel

theorem commIsOf_change' (hL : L.IsLB) {T : Over S} (hT : Function.Surjective (fst T A).left.appTop.hom)
    {θx θy θx' θy' : ThetaGrp A L k T} {c : Γ(T.left, ⊤)ˣ} (hx : θx'.pt = θx.pt) (hy : θy'.pt = θy.pt)
    (H : CommIsOf A L k θx θy c) : CommIsOf A L k θx' θy' c := by
  rw [commIsOf_iff hL] at H ⊢
  intro Z r z J hJ
  have h1 := tval_div' hL hT θx' θx hx r θy.pt z J hJ
  have h2 := tval_div' hL hT θy' θy hy r θx.pt z J hJ
  have h0 := H Z r z J hJ
  rw [hx, hy]
  exact mul_eq_mul_mul_of_ratio_eq h1 h2 h0

theorem weilIs_pull_of_proper (hA : IsSemiAbelian A) (hL : L.IsLB) {T T' : Over S}
    (hT : IsProper (pullback.snd A.hom T'.hom)) (h : T' ⟶ T)
    {x y : T ⟶ A} {c : Γ(T.left, ⊤)ˣ} (H : WeilIs A L k x y c) :
    WeilIs A L k (h ≫ x) (h ≫ y) (Units.map h.left.appTop.hom.toMonoidHom c) := by
  intro p
  obtain ⟨V, hpV, ⟨θx0, θy0, hx0, hy0⟩, hall⟩ := H (h.left p)
  let V' : T'.left.Opens := h.left ⁻¹ᵁ V
  let g : overRes V' ⟶ overRes V := Over.homMk (h.left ∣_ V) (by
    simp only [overRes, Over.mk_hom]
    rw [← Category.assoc, morphismRestrict_ι, Category.assoc, Over.w h])
  have key : g ≫ overResι V = overResι V' ≫ h := by
    ext
    simp [g, overResι, morphismRestrict_ι, V']
  have hsurj : Function.Surjective (fst (overRes V') A).left.appTop.hom :=
    surj_fst_of_proper hA _ (proper_of_hom (overResι V') hT)
  have hc : unitRes V' (Units.map h.left.appTop.hom.toMonoidHom c) =
      Units.map g.left.appTop.hom.toMonoidHom (unitRes V c) := by
    have hl := congrArg Over.Hom.left key
    simp only [Over.comp_left, overResι, Over.homMk_left] at hl
    ext
    simp only [unitRes, Units.coe_map]
    have hv := congrArg (fun f => f.appTop.hom (c : Γ(T.left, ⊤))) hl
    simp only [Scheme.Hom.comp_appTop, CommRingCat.hom_comp, RingHom.comp_apply] at hv
    exact hv.symm
  obtain ⟨θx', θy', hx', hy', hcc⟩ := exists_commIsOf_pull hL g (hall θx0 θy0 hx0 hy0)
  refine ⟨V', hpV, ⟨θx', θy', ?_, ?_⟩, ?_⟩
  · rw [hx', hx0, ← Category.assoc, key, Category.assoc]
  · rw [hy', hy0, ← Category.assoc, key, Category.assoc]
  · intro θx θy hx hy
    rw [hc]
    refine commIsOf_change' hL hsurj ?_ ?_ hcc
    · rw [hx, hx', hx0, ← Category.assoc, ← key, Category.assoc]
    · rw [hy, hy', hy0, ← Category.assoc, ← key, Category.assoc]

end Pairing

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.XR
open scoped CategoryTheory.Obj

theorem exists_section_of_finite {Z : Scheme.{0}} {k K : Type} [Field k] [IsAlgClosed k] [Field K] (i : k →+* K)
    (f : Z ⟶ Sp k) [LocallyOfFiniteType f] (hf : Finite {p : Sp k ⟶ Z // p ≫ f = 𝟙 _}) (w : Sp K ⟶ Z)
    (hw : w ≫ f = spMap i) : ∃ p : Sp k ⟶ Z, p ≫ f = 𝟙 _ ∧ w = spMap i ≫ p := by
  haveI : JacobsonSpace Z := LocallyOfFiniteType.jacobsonSpace f
  haveI : Finite (closedPoints Z) := Finite.of_equiv _ (pointEquivClosedPoint f)
  have hz : IsClosed ({w (IsLocalRing.closedPoint K)} : Set Z) := by
    set z := w (IsLocalRing.closedPoint K)
    have h1 := JacobsonSpace.closure_inter_closedPoints_eq_closure
      (isClosed_closure (s := ({z} : Set Z))).isLocallyClosed
    have hfin : (closure ({z} : Set Z) ∩ closedPoints Z).Finite :=
      (Set.toFinite (closedPoints Z)).subset Set.inter_subset_right
    have hcl : IsClosed (closure ({z} : Set Z) ∩ closedPoints Z) := by
      rw [← Set.biUnion_of_singleton (closure ({z} : Set Z) ∩ closedPoints Z)]
      exact hfin.isClosed_biUnion (fun c hc => hc.2)
    rw [hcl.closure_eq] at h1
    have hm : z ∈ closure ({z} : Set Z) ∩ closedPoints Z := by
      rw [h1]
      first
        | exact subset_closure (subset_closure (Set.mem_singleton z))
    exact hm.2
  refine ⟨pointOfClosedPoint f _ hz, pointOfClosedPoint_comp f _ hz, ?_⟩
  have hdesc := Scheme.descResidueField_stalkClosedPointTo_fromSpecResidueField K Z w
  set φ := Z.descResidueField (Scheme.stalkClosedPointTo w)
  have hφ : Spec.map φ = spMap i ≫ Spec.map (residueFieldIsoBase f _ hz).hom := by
    have e1 : w ≫ f = Spec.map φ ≫ Spec.map (residueFieldIsoBase f _ hz).inv := by
      rw [SpecMap_residueFieldIsoBase_inv, ← Category.assoc, hdesc]
    rw [← hw, e1, Category.assoc, ← Spec.map_comp, Iso.hom_inv_id, Spec.map_id, Category.comp_id]
  rw [pointOfClosedPoint, ← Category.assoc, ← hφ, hdesc]

theorem torsion_desc {X : Scheme.{0}} (G : Over X) [GrpObj G] [LocallyOfFiniteType G.hom] {k K : Type} [Field k]
    [IsAlgClosed k] [Field K] (i : k →+* K) (x : Sp k ⟶ X) (n : ℕ) (hf : Finite {g : Over.mk x ⟶ G // g ^ n = 1})
    (g : Over.mk (spMap i ≫ x) ⟶ G) (hg : g ^ n = 1) : ∃ y : Over.mk x ⟶ G, y ^ n = 1 ∧ extPt i x ≫ y = g := by
  let Kn : Over X := pullback ((𝟙 G) ^ n) (1 : 𝟙_ (Over X) ⟶ G)
  let π : Kn ⟶ G := pullback.fst _ _
  have hπ0 : π ≫ (𝟙 G) ^ n = 1 := by
    rw [pullback.condition, comp_one]
  have hπ : ∀ {Y : Over X} (q : Y ⟶ Kn), (q ≫ π) ^ n = 1 := by
    intro Y q
    rw [← Category.comp_id (q ≫ π), ← comp_pow, Category.assoc, hπ0, comp_one]
  have hmk : ∀ {Y : Over X} (a : Y ⟶ G), a ^ n = 1 → a ≫ (𝟙 G) ^ n = toUnit Y ≫ (1 : 𝟙_ (Over X) ⟶ G) := by
    intro Y a ha
    rw [comp_pow, Category.comp_id, ha, comp_one]
  have hfac : ∀ {Y : Over X} (a : Y ⟶ G) (ha : a ^ n = 1) (q : Y ⟶ Kn), q ≫ π = a →
      q = pullback.lift a (toUnit Y) (hmk a ha) := by
    intro Y a ha q hq
    apply pullback.hom_ext
    · rw [pullback.lift_fst]
      exact hq
    · exact Subsingleton.elim _ _
  haveI h1lft : LocallyOfFiniteType (1 : 𝟙_ (Over X) ⟶ G).left := by
    have hc : (1 : 𝟙_ (Over X) ⟶ G).left ≫ G.hom = 𝟙 _ := Over.w _
    haveI : LocallyOfFiniteType ((1 : 𝟙_ (Over X) ⟶ G).left ≫ G.hom) := by
      rw [hc]
      infer_instance
    exact locallyOfFiniteType_of_comp _ G.hom
  haveI hπlft : LocallyOfFiniteType π.left :=
    MorphismProperty.of_isPullback (P := @LocallyOfFiniteType)
      ((IsPullback.of_hasPullback ((𝟙 G) ^ n) (1 : 𝟙_ (Over X) ⟶ G)).map (Over.forget X)).flip h1lft
  haveI : LocallyOfFiniteType Kn.hom := by
    rw [← Over.w π]
    infer_instance
  let fZ : pullback Kn.hom x ⟶ Sp k := pullback.snd Kn.hom x
  have hq : ∀ p : Sp k ⟶ pullback Kn.hom x, p ≫ fZ = 𝟙 _ →
      (p ≫ pullback.fst Kn.hom x) ≫ Kn.hom = (Over.mk x).hom := by
    intro p hp
    rw [Category.assoc, pullback.condition, ← Category.assoc]
    change (p ≫ fZ) ≫ x = x
    rw [hp, Category.id_comp]
  have hfin : Finite {p : Sp k ⟶ pullback Kn.hom x // p ≫ fZ = 𝟙 _} := by
    refine Finite.of_surjective (fun a : {a : Over.mk x ⟶ G // a ^ n = 1} =>
      (⟨pullback.lift (pullback.lift a.1 (toUnit _) (hmk a.1 a.2)).left (𝟙 _)
        (by rw [Over.w, Category.id_comp]; rfl), pullback.lift_snd _ _ _⟩ :
        {p : Sp k ⟶ pullback Kn.hom x // p ≫ fZ = 𝟙 _})) ?_
    rintro ⟨p, hp⟩
    let q : Over.mk x ⟶ Kn := Over.homMk (p ≫ pullback.fst Kn.hom x) (hq p hp)
    refine ⟨⟨q ≫ π, hπ q⟩, ?_⟩
    apply Subtype.ext
    apply pullback.hom_ext
    · rw [pullback.lift_fst, ← hfac (q ≫ π) (hπ q) q rfl]
      rfl
    · rw [pullback.lift_snd]
      exact hp.symm
  let w : Sp K ⟶ pullback Kn.hom x := pullback.lift (pullback.lift g (toUnit _) (hmk g hg)).left (spMap i)
    (by rw [Over.w]; rfl)
  obtain ⟨p, hp, hwp⟩ := exists_section_of_finite i fZ hfin w (pullback.lift_snd _ _ _)
  let q : Over.mk x ⟶ Kn := Over.homMk (p ≫ pullback.fst Kn.hom x) (hq p hp)
  refine ⟨q ≫ π, hπ q, ?_⟩
  ext
  have e1 : w ≫ pullback.fst Kn.hom x = (pullback.lift g (toUnit _) (hmk g hg)).left := pullback.lift_fst _ _ _
  have e2 := congrArg Over.Hom.left (pullback.lift_fst g (toUnit _) (hmk g hg))
  rw [Over.comp_left] at e2
  rw [← e2, ← e1, hwp]
  simp [q, extPt, π]

theorem unitOn_map {k K : Type} [Field k] [Field K] (i : k →+* K) (c : kˣ) :
    Units.map (spMap i).appTop.hom.toMonoidHom (unitOn c) = unitOn (Units.map i.toMonoidHom c) := by
  apply Units.ext
  have := congrArg (fun q => q.hom (c : k)) (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom i))
  exact this.symm

end PositivityTheory.HtPt.Mg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.MgTate =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TateIsoBaseChange =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.TateIsoBaseChange", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsFullLevelAt\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.MgTate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.GroupTheory.FiniteAbelian.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.MgLevel\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.XR
open scoped CategoryTheory.Obj

theorem _root_.GlobalTheory.CompanionTheory.Relay.tate_iso_base_change : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H), ∀ (X : Scheme.{0}) (t : SAB H X) (k k' : Type) [Field k] [IsAlgClosed k] [CharZero k] [Field k'] [IsAlgClosed k'] (i : k →+* k') (x : Sp k ⟶ X), IsProper (pullback.snd t.G.hom x) → ∀ I : TateIsoAt D t x, ∃ I' : TateIsoAt D t (spMap i ≫ x), ∀ n, 0 < n → (I'.ζ n : k') = i (I.ζ n) ∧ ∀ a, (I'.ev n a).left = spMap i ≫ (I.ev n a).left := by
  intro E _ _ _ H D X t k k' _ _ _ _ _ i x hprop I
  haveI : Smooth t.G.hom := t.semi.smooth
  obtain ⟨_, _, -⟩ := PositivityTheory.HtPt.Mg.finrank_La D
  let e := PositivityTheory.HtPt.Mg.extPt i x
  have hprop' : IsProper (pullback.snd t.G.hom (spMap i ≫ x)) :=
    PositivityTheory.HtPt.Mg.proper_of_hom (A := t.G) e hprop
  have hone : ∀ g : Over.mk x ⟶ t.G, e ≫ g = 1 ↔ g = 1 := by
    intro g
    constructor
    · intro h
      exact PositivityTheory.HtPt.Mg.extPt_inj i x (h.trans (MonObj.comp_one e).symm)
    · intro h
      rw [h, MonObj.comp_one]
  have hfinT : ∀ n, 0 < n → Finite {y : Over.mk x ⟶ t.G // y ^ n = 1} := by
    intro n hn
    let N : Submodule ℤ D.La := LinearMap.range ((n : ℤ) • (LinearMap.id : D.La →ₗ[ℤ] D.La))
    haveI : Finite (D.La ⧸ N) := Module.finite_of_fg_torsion _ (by
      intro q
      refine ⟨⟨(n : ℤ), mem_nonZeroDivisors_of_ne_zero (by exact_mod_cast hn.ne')⟩, ?_⟩
      induction q using Submodule.Quotient.induction_on with
      | H a =>
        show (n : ℤ) • (Submodule.Quotient.mk a : D.La ⧸ N) = 0
        rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero]
        exact ⟨a, rfl⟩)
    have hex : ∀ y : {y : Over.mk x ⟶ t.G // y ^ n = 1}, ∃ a, I.ev n a = y.1 :=
      fun y => (I.onto n hn y.1).1 y.2
    refine Finite.of_injective (fun y => (Submodule.Quotient.mk (hex y).choose : D.La ⧸ N)) ?_
    intro y y' hyy
    have h1 := (hex y).choose_spec
    have h2 := (hex y').choose_spec
    rw [Submodule.Quotient.eq] at hyy
    obtain ⟨c, hc⟩ := hyy
    apply Subtype.ext
    rw [← h1, ← h2]
    have hsm : ((n : ℤ) • LinearMap.id : D.La →ₗ[ℤ] D.La) c = n • c := by
      simp
    have hdec : (hex y).choose = (hex y').choose + n • c := by
      rw [← hsm, hc]
      abel
    rw [hdec, I.add, (I.ker n hn (n • c)).2 ⟨c, rfl⟩, _root_.mul_one]
  refine ⟨{ ζ := fun n => Units.map (i : k →* k') (I.ζ n)
            ζ_prim := fun n hn => (I.ζ_prim n hn).map_of_injective (Units.map_injective i.injective)
            ζ_pow := fun n m hn hm => by rw [← map_pow, I.ζ_pow n m hn hm]
            ev := fun n a => e ≫ I.ev n a
            add := fun n a b => by simp only [I.add, MonObj.comp_mul]
            lin := fun n c a => by simp only [I.lin, Category.assoc]
            ker := fun n hn a => by rw [← I.ker n hn a]; exact hone _
            onto := fun n hn g => by
              constructor
              · intro hg
                obtain ⟨y, hy, rfl⟩ := PositivityTheory.HtPt.Mg.torsion_desc t.G i x n (hfinT n hn) g hg
                obtain ⟨a, rfl⟩ := (I.onto n hn y).1 hy
                exact ⟨a, rfl⟩
              · rintro ⟨a, rfl⟩
                rw [← MonObj.comp_pow, (I.onto n hn _).2 ⟨a, rfl⟩, MonObj.comp_one]
            tower := fun n m hn hm a => by rw [← MonObj.comp_pow, I.tower n m hn hm]
            isom := fun n hn a b => by
              have h := PositivityTheory.HtPt.Mg.weilIs_pull_of_proper t.semi t.PP.isLB hprop' e (I.isom n hn a b)
              show Out.WeilIs t.G t.PP.L (n : ℤ) (e ≫ I.ev n a) (e ≫ I.ev n b)
                (unitOn ((Units.map (i : k →* k') (I.ζ n)) ^ D.EF a b))
              have hm : (Units.map (i : k →* k') (I.ζ n)) ^ D.EF a b
                  = Units.map (i : k →* k') (I.ζ n ^ D.EF a b) := by
                simp [map_zpow]
              rw [hm]
              convert h using 1
              exact (PositivityTheory.HtPt.Mg.unitOn_map i _).symm }, ?_⟩
  intro n hn
  exact ⟨rfl, fun a => rfl⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TateIsoBaseChange =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFullLevelFiniteExtension =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFullLevelFiniteExtension", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsFullLevelAt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TateIsoBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TateIsoPullbackEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.GroupTheory.FiniteAbelian.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.SpMapComp\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.XR
open scoped CategoryTheory.Obj

namespace GlobalTheory.CompanionTheory.Ar.XR.LevelPt

theorem exists_finite_subfield {F k : Type} [Field F] [Field k] [Algebra F k] [Algebra.IsAlgebraic F k]
    {X : Scheme.{0}} (s : X ⟶ Sp F) [LocallyOfFiniteType s] (p : Sp k ⟶ X)
    (hp : p ≫ s = spMap (algebraMap F k)) :
    ∃ K : IntermediateField F k, FiniteDimensional F K ∧ ∃ q : Sp K ⟶ X, spMap (algebraMap K k) ≫ q = p := by
  classical
  obtain ⟨_, ⟨U, hU, rfl⟩, hpt, -⟩ := X.isBasis_affineOpens.exists_subset_of_mem_open
    (Set.mem_univ (p (IsLocalRing.closedPoint k))) isOpen_univ
  have hU : IsAffineOpen U := hU
  obtain ⟨f, hf⟩ : ∃ f : Γ(X, U) ⟶ CommRingCat.of k, Spec.map f ≫ hU.fromSpec = p := by
    refine ⟨Spec.preimage (IsOpenImmersion.lift hU.fromSpec p ?_), ?_⟩
    · rintro _ ⟨y, rfl⟩
      rw [hU.range_fromSpec, Subsingleton.elim (α := PrimeSpectrum k) y (IsLocalRing.closedPoint k)]
      exact hpt
    · rw [Spec.map_preimage]; exact IsOpenImmersion.lift_fac _ _ _
  obtain ⟨g, hg⟩ : ∃ g : CommRingCat.of F ⟶ Γ(X, U), Spec.map g = hU.fromSpec ≫ s :=
    ⟨Spec.preimage _, Spec.map_preimage _⟩
  have hgf : g ≫ f = CommRingCat.ofHom (algebraMap F k) :=
    Spec.map_injective (by
      rw [Spec.map_comp, hg, ← Category.assoc, hf]
      exact hp)
  have hV : ∀ r : F, f.hom (g.hom r) = algebraMap F k r := fun r =>
    congrArg (fun q => q.hom r) hgf
  have hft : g.hom.FiniteType := by
    have : LocallyOfFiniteType (Spec.map g) := by rw [hg]; infer_instance
    exact HasRingHomProperty.Spec_iff.1 this
  let _ : Algebra F Γ(X, U) := g.hom.toAlgebra
  obtain ⟨t, ht⟩ := (show Algebra.FiniteType F Γ(X, U) from hft).out
  let S : Set k := (t.image f.hom : Finset k)
  let K := IntermediateField.adjoin F S
  refine ⟨K, IntermediateField.finiteDimensional_adjoin fun x _ =>
    (Algebra.IsAlgebraic.isAlgebraic x).isIntegral, ?_⟩
  have hr : ∀ a, f.hom a ∈ K := fun a => by
    have ha : a ∈ Algebra.adjoin F (t : Set Γ(X, U)) := ht ▸ Algebra.mem_top
    induction ha using Algebra.adjoin_induction with
    | mem x hx => exact IntermediateField.subset_adjoin F S (Finset.mem_image_of_mem _ hx)
    | algebraMap r => exact (hV r).symm ▸ K.algebraMap_mem _
    | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
    | mul x y _ _ hx hy => rw [map_mul]; exact mul_mem hx hy
  let f' : Γ(X, U) ⟶ CommRingCat.of K := CommRingCat.ofHom (f.hom.codRestrict K hr)
  refine ⟨Spec.map f' ≫ hU.fromSpec, ?_⟩
  change Spec.map _ ≫ Spec.map f' ≫ hU.fromSpec = _
  rw [← hf, ← Spec.map_comp_assoc]
  rfl

theorem exists_reps (M : Type) [AddCommGroup M] [Module.Finite ℤ M] (N : ℕ) (hN : 0 < N) :
    ∃ (T : Type) (_ : Finite T) (r : M → T) (u : T → M), ∀ a, ∃ b, a = u (r a) + N • b := by
  let S : Submodule ℤ M := LinearMap.range ((N : ℤ) • (LinearMap.id : M →ₗ[ℤ] M))
  have hfin : Finite (M ⧸ S) := by
    refine Module.finite_of_fg_torsion _ ?_
    intro x
    obtain ⟨a, rfl⟩ := S.mkQ_surjective x
    refine ⟨⟨(N : ℤ), mem_nonZeroDivisors_of_ne_zero (by exact_mod_cast hN.ne')⟩, ?_⟩
    show (N : ℤ) • S.mkQ a = 0
    rw [← map_smul]
    exact (Submodule.Quotient.mk_eq_zero S).2 ⟨a, by simp⟩
  refine ⟨M ⧸ S, hfin, S.mkQ, fun t => Function.surjInv S.mkQ_surjective t, fun a => ?_⟩
  have h : S.mkQ (Function.surjInv S.mkQ_surjective (S.mkQ a)) = S.mkQ a :=
    Function.surjInv_eq _ _
  obtain ⟨b, hb⟩ := (Submodule.Quotient.eq S).1 h.symm
  refine ⟨b, ?_⟩
  have hb' : (N : ℤ) • b = a - Function.surjInv S.mkQ_surjective (S.mkQ a) := by simpa using hb
  have : N • b = (N : ℤ) • b := by simp
  rw [this, hb']
  abel

theorem exists_extend {L K C : Type} [Field L] [Field K] [Algebra L K] [Algebra.IsAlgebraic L K] [Field C] [IsAlgClosed C]
    (f : L →+* C) : ∃ g : K →+* C, ∀ x, g (algebraMap L K x) = f x := by
  letI := f.toAlgebra
  exact ⟨(IsAlgClosed.lift : K →ₐ[L] C), fun x => (IsAlgClosed.lift : K →ₐ[L] C).commutes x⟩

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem finite_La (D : Datum H) : Module.Finite ℤ D.La :=
  haveI := D.fin
  Module.Finite.trans (𝓞 E) D.La

theorem exists_of_tateIso {D : Datum H} {l : Geo.Tor.Level H} {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O]
    {β : O →+* c.F} (Y : Model Xo c β) {K L : Type} [Field K] [Field L] [Algebra K L] [Algebra.IsAlgebraic K L]
    [IsAlgClosed L] [CharZero L] (y : Sp K ⟶ Xo.XF c) (N : ℕ) (hN : 1 ≤ N)
    (I : TateIsoAt D Y.oF.t (spMap (algebraMap K L) ≫ y)) :
    ∃ (Ω : Type) (_ : Field Ω) (_ : Algebra K Ω) (z : Ωˣ)
      (ev : D.La → (Over.mk (spMap (algebraMap K Ω) ≫ y ≫ Y.j) ⟶ Y.t.G)),
      FiniteDimensional K Ω ∧ IsFullLevelAt D Y.t (spMap (algebraMap K Ω) ≫ y ≫ Y.j) N z ev := by
  classical
  have hN0 : 0 < N := hN
  haveI := Y.oF.proper

  let q : pullback Y.oF.t.G.hom y ⟶ Sp K := pullback.snd _ _
  have hw : ∀ a, (I.ev N a).left ≫ Y.oF.t.G.hom = spMap (algebraMap K L) ≫ y := fun a =>
    Over.w (I.ev N a)
  let g : D.La → (Sp L ⟶ pullback Y.oF.t.G.hom y) := fun a =>
    pullback.lift (I.ev N a).left (spMap (algebraMap K L)) (hw a)
  have hg : ∀ a, g a ≫ q = spMap (algebraMap K L) := fun a => pullback.lift_snd _ _ _
  have hgf : ∀ a, g a ≫ pullback.fst _ _ = (I.ev N a).left := fun a => pullback.lift_fst _ _ _
  haveI := finite_La D
  obtain ⟨T, _, r, u, hru⟩ := exists_reps D.La N hN0
  choose F hF e he using fun τ : T => exists_finite_subfield q (g (u τ)) (hg _)

  let Fz : IntermediateField K L := IntermediateField.adjoin K {((I.ζ N : Lˣ) : L)}
  haveI : FiniteDimensional K Fz := IntermediateField.finiteDimensional_adjoin fun x _ =>
    (Algebra.IsAlgebraic.isAlgebraic x).isIntegral
  haveI : ∀ τ, FiniteDimensional K (F τ) := hF
  let Ω : IntermediateField K L := Fz ⊔ ⨆ τ, F τ
  have hΩfin : FiniteDimensional K Ω := by
    haveI : FiniteDimensional K (⨆ τ, F τ : IntermediateField K L) :=
      IntermediateField.finiteDimensional_iSup_of_finite
    exact IntermediateField.finiteDimensional_sup _ _
  have hFΩ : ∀ τ, F τ ≤ Ω := fun τ => (le_iSup F τ).trans le_sup_right
  have hz : ((I.ζ N : Lˣ) : L) ∈ Ω :=
    (le_sup_left : Fz ≤ Ω) (IntermediateField.subset_adjoin K _ rfl)
  let z : (↥Ω)ˣ := Units.mk0 ⟨_, hz⟩ (fun h => (I.ζ N).ne_zero (congrArg Subtype.val h))
  let eΩ : T → (Sp Ω ⟶ pullback Y.oF.t.G.hom y) := fun τ =>
    spMap (IntermediateField.inclusion (hFΩ τ)).toRingHom ≫ e τ
  have heΩ : ∀ τ, spMap (algebraMap Ω L) ≫ eΩ τ = g (u τ) := fun τ => by
    rw [← he τ]
    simp only [eΩ]
    rw [← Category.assoc, GlobalTheory.LevCover.spMap_comp'']
    rfl
  haveI := _root_.PositivityTheory.HtPt.Mg.epi_spMap (algebraMap Ω L)
  have hover : ∀ τ, eΩ τ ≫ q = spMap (algebraMap K Ω) := fun τ => by
    rw [← cancel_epi (spMap (algebraMap Ω L)), ← Category.assoc, heΩ, hg, GlobalTheory.LevCover.spMap_comp'']
    rfl
  have hpull : ∀ τ, eΩ τ ≫ pullback.fst _ _ ≫ Y.oF.t.G.hom = spMap (algebraMap K Ω) ≫ y := fun τ => by
    calc eΩ τ ≫ pullback.fst _ _ ≫ Y.oF.t.G.hom = eΩ τ ≫ q ≫ y := congrArg (eΩ τ ≫ ·) pullback.condition
      _ = (eΩ τ ≫ q) ≫ y := (Category.assoc _ _ _).symm
      _ = _ := congrArg (· ≫ y) (hover τ)

  have hφ : Y.m.φ ≫ Y.t.G.hom = Y.oF.t.G.hom ≫ Y.j := Y.m.cart.1.w
  have hevw : ∀ τ, (eΩ τ ≫ pullback.fst _ _ ≫ Y.m.φ) ≫ Y.t.G.hom = spMap (algebraMap K Ω) ≫ y ≫ Y.j := fun τ => by
    have h := congrArg (· ≫ Y.j) (hpull τ)
    simp only [Category.assoc] at h ⊢
    rw [hφ]
    exact h
  let ev : D.La → (Over.mk (spMap (algebraMap K Ω) ≫ y ≫ Y.j) ⟶ Y.t.G) := fun a =>
    Over.homMk (eΩ (r a) ≫ pullback.fst _ _ ≫ Y.m.φ) (hevw (r a))
  refine ⟨Ω, inferInstance, inferInstance, z, ev, hΩfin, ?_⟩
  intro k _ _ i

  haveI : Algebra.IsAlgebraic Ω L := Algebra.IsAlgebraic.tower_top (K := K) Ω
  obtain ⟨i', hi'⟩ : ∃ i' : L →+* k, ∀ x : Ω, i' (algebraMap Ω L x) = i x := exists_extend i
  have hcomp : i'.comp (algebraMap Ω L) = i := RingHom.ext hi'
  have hprop : IsProper (pullback.snd Y.oF.t.G.hom (spMap (algebraMap K L) ≫ y)) := inferInstance
  obtain ⟨I', hI'⟩ := _root_.GlobalTheory.CompanionTheory.Relay.tate_iso_base_change E H D (Xo.XF c) Y.oF.t L k i' _ hprop I
  have hx : spMap i ≫ spMap (algebraMap K Ω) ≫ y ≫ Y.j =
      (spMap i' ≫ spMap (algebraMap K L) ≫ y) ≫ (Y.jQ ≫ pullback.fst _ _) := by
    have h1 : spMap i ≫ spMap (algebraMap K Ω) = spMap i' ≫ spMap (algebraMap K L) := by
      rw [GlobalTheory.LevCover.spMap_comp'', GlobalTheory.LevCover.spMap_comp'', ← hcomp]
      rfl
    rw [← Category.assoc, h1]
    simp only [Category.assoc]
    rfl
  obtain ⟨I'', hζ, hev⟩ := (_root_.GlobalTheory.CompanionTheory.Ar.XR.tateIsoAt_move E H D Y.X (Xo.XF c) Y.t Y.oF.t _ Y.m k _ _ hx).2 I'
  refine ⟨I'', ?_, fun a => ?_⟩
  · rw [← hζ]
    rw [(hI' N hN0).1]
    exact hi' z
  · obtain ⟨b, hb⟩ := hru a
    have hev1 : I.ev N a = I.ev N (u (r a)) := by
      have : I.ev N (N • b) = 1 := (I.ker N hN0 _).2 ⟨b, rfl⟩
      conv_lhs => rw [hb]
      rw [I.add, this, _root_.mul_one]
    have h2 : (I.ev N a).left = spMap (algebraMap Ω L) ≫ eΩ (r a) ≫ pullback.fst _ _ := by
      rw [← Category.assoc, heΩ, hgf, hev1]
    rw [← hev, (hI' N hN0).2 a, h2]
    show _ = spMap i ≫ eΩ (r a) ≫ pullback.fst _ _ ≫ Y.m.φ
    simp only [Category.assoc]
    rw [← Category.assoc (spMap i'), GlobalTheory.LevCover.spMap_comp'', hcomp]

end GlobalTheory.CompanionTheory.Ar.XR.LevelPt

namespace GlobalTheory.CompanionTheory.Ar.XR

theorem exists_fullLevel_finite : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Geo.Tor.Level H) (Xo : Moduli D l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Y : Model Xo c β), ∀ (K : Type) [Field K] (y : Sp K ⟶ Xo.XF c) (N : ℕ), 1 ≤ N → ∃ (Ω : Type) (_ : Field Ω) (_ : Algebra K Ω) (z : Ωˣ) (ev : D.La → (Over.mk (spMap (algebraMap K Ω) ≫ y ≫ Y.j) ⟶ Y.t.G)), FiniteDimensional K Ω ∧ IsFullLevelAt D Y.t (spMap (algebraMap K Ω) ≫ y ≫ Y.j) N z ev := by
  intro E _ _ _ H D l Xo c O _ β Y K _ y N hN

  haveI hK : CharZero K := by
    let f : c.F →+* K := (Spec.preimage (y ≫ pullback.snd _ _)).hom
    exact charZero_of_injective_ringHom f.injective
  haveI : CharZero (AlgebraicClosure K) :=
    charZero_of_injective_algebraMap (algebraMap K (AlgebraicClosure K)).injective
  let xb : Sp (AlgebraicClosure K) ⟶ Xo.XF c := spMap (algebraMap K (AlgebraicClosure K)) ≫ y
  let f : CommRingCat.of (KA l) ⟶ CommRingCat.of (AlgebraicClosure K) :=
    Spec.preimage (xb ≫ pullback.fst Xo.s (spMap (IntermediateField.inclusion c.le).toRingHom) ≫ Xo.s)
  have hf : xb ≫ pullback.fst Xo.s (spMap (IntermediateField.inclusion c.le).toRingHom) ≫ Xo.s = spMap f.hom :=
    (Spec.map_preimage _).symm
  obtain ⟨-, I, -⟩ := Y.oF.geom (AlgebraicClosure K) xb f.hom hf
  exact LevelPt.exists_of_tateIso Y y N hN I

end GlobalTheory.CompanionTheory.Ar.XR
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFullLevelFiniteExtension =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelStructureProperties =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelStructureProperties", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsFullLevelAt\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.MgLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.XR
open scoped CategoryTheory.Obj

namespace GlobalTheory.CompanionTheory.Ar.XR

theorem fullLevel_props : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H), ∀ (X : Scheme.{0}) (t : SAB H X) (Ω : Type) [Field Ω] (ξ : Sp Ω ⟶ X) (N : ℕ), 0 < N → ∀ (z : Ωˣ) (ev : D.La → (Over.mk ξ ⟶ t.G)), IsFullLevelAt D t ξ N z ev → IsPrimitiveRoot z N ∧ (∀ a b, ev (a + b) = ev a * ev b) ∧ (∀ (r : 𝓞 E) a, ev (r • a) = ev a ≫ t.act.act r) ∧ (∀ a, ev a = 1 ↔ ∃ b, a = N • b) ∧ (∀ g : Over.mk ξ ⟶ t.G, g ^ N = 1 ↔ ∃ a, ev a = g) ∧ FullTorsion t.G ξ N ∧ ∀ (k : Type) [Field k] [IsAlgClosed k] (i : Ω →+* k) (a b : D.La) (g g' : Over.mk (spMap i ≫ ξ) ⟶ t.G), g.left = spMap i ≫ (ev a).left → g'.left = spMap i ≫ (ev b).left → Out.WeilIs t.G t.PP.L N g g' (unitOn (Units.map i.toMonoidHom z ^ D.EF a b)) :=
  PositivityTheory.HtPt.Mg.level_props

end GlobalTheory.CompanionTheory.Ar.XR
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelStructureProperties =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelStructurePullback =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelStructurePullback", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsFullLevelAt\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TateIsoPullbackEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.OneArc\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.XR
open scoped CategoryTheory.Obj

namespace GlobalTheory.CompanionTheory.Ar.XR

theorem isFullLevelAt_move : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H), ∀ (X X' : Scheme.{0}) (t : SAB H X) (t' : SAB H X') (f : X' ⟶ X) (m : SABMap t' t f) (Ω Ω' : Type) [Field Ω] [Field Ω'] (i : Ω →+* Ω') (ξ : Sp Ω ⟶ X) (ξ' : Sp Ω' ⟶ X'), ξ' ≫ f = spMap i ≫ ξ → ∀ (N : ℕ) (z : Ωˣ) (ev : D.La → (Over.mk ξ ⟶ t.G)), IsFullLevelAt D t ξ N z ev → ∃ ev' : D.La → (Over.mk ξ' ⟶ t'.G), IsFullLevelAt D t' ξ' N (Units.map i.toMonoidHom z) ev' ∧ ∀ a, (ev' a).left ≫ m.φ = spMap i ≫ (ev a).left := by
  intro E _ _ _ H D X X' t t' f m Ω Ω' _ _ i ξ ξ' hξ N z ev hfull
  have hpb : IsPullback m.φ t'.G.hom t.G.hom f := m.cart.1
  have hsq : ∀ a, (spMap i ≫ (ev a).left) ≫ t.G.hom = ξ' ≫ f := by
    intro a
    rw [Category.assoc, Over.w (ev a)]
    exact hξ.symm
  let ev' : D.La → (Over.mk ξ' ⟶ t'.G) := fun a =>
    Over.homMk (hpb.lift (spMap i ≫ (ev a).left) ξ' (hsq a)) (hpb.lift_snd _ _ _)
  have hfst : ∀ a, (ev' a).left ≫ m.φ = spMap i ≫ (ev a).left := fun a => hpb.lift_fst _ _ _
  have hsnd : ∀ a, (ev' a).left ≫ t'.G.hom = ξ' := fun a => hpb.lift_snd _ _ _
  refine ⟨ev', ?_, hfst⟩
  unfold IsFullLevelAt
  intro k _ _ j
  obtain ⟨I, hIζ, hIev⟩ := hfull k (j.comp i)
  have hx : spMap (j.comp i) ≫ ξ = (spMap j ≫ ξ') ≫ f := by
    rw [spMap_comp, Category.assoc, Category.assoc, hξ]
  obtain ⟨I', hζ, hev⟩ := (tateIsoAt_move E H D X X' t t' f m k (spMap j ≫ ξ') (spMap (j.comp i) ≫ ξ) hx).1 I
  refine ⟨I', ?_, ?_⟩
  · rw [hζ, hIζ]
    simp
  · intro a
    apply hpb.hom_ext
    · rw [hev N a, hIev a, Category.assoc, hfst a, spMap_comp, Category.assoc]
    · rw [Over.w (I'.ev N a), Category.assoc, hsnd a]
      rfl

end GlobalTheory.CompanionTheory.Ar.XR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelStructurePullback =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelGenericCover =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelGenericCover", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsFullLevelAt\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ModuliFiniteSurjectiveOverGenericFamily\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelStructureProperties\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelStructurePullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.XR
open scoped CategoryTheory.Obj

namespace GlobalTheory.CompanionTheory.Ar.XR

theorem unitAt_of_pow_eq_one {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Sp Ω ⟶ X} (hN : Flat.NormalCpt ξ)
    {N : ℕ} (hN0 : N ≠ 0) {a : Ω} (ha : a ^ N = 1) (q : Cpt ξ) : unitAt ξ q a :=
  Flat.ZUnit.of_pow_of_normal hN hN0 (by rw [ha]; exact Flat.ZUnit.one)

theorem exists_full_level_over : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H), ∀ (l : Geo.Tor.Level H) (Xo : Moduli D l) (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (K Ω : Type) [Field K] [Field Ω] [CharZero Ω] (i : K →+* Ω) (y : Sp K ⟶ Xo.XF c) (N : ℕ) (z : Ωˣ) (ev : D.La → (Over.mk (spMap i ≫ y ≫ Y.j) ⟶ Y.t.G)), 1 ≤ N → IsFullLevelAt D Y.t (spMap i ≫ y ≫ Y.j) N z ev → ∀ (X : Scheme.{0}) (ξ : Sp Ω ⟶ X), IsCptGen ξ → Flat.NormalCpt ξ → ∀ f : X ⟶ Y.X, ξ ≫ f = spMap i ≫ y ≫ Y.j → ∃ (t : SAB H X) (_ : SABMap t Y.t f) (ev' : D.La → (Over.mk ξ ⟶ t.G)), IsFullLevelAt D t ξ N z ev' ∧ FullTorsion t.G ξ N ∧ ∀ q : Cpt ξ, unitAt ξ q (z : Ω) := by
  intro E _ _ _ H D l Xo c Y K Ω _ _ _ i y N z ev hN hlev X ξ _ hnorm f hf
  obtain ⟨t, ⟨m⟩⟩ := GlobalTheory.ModFam.exists_sabPull f Y.t
  have hid : ξ ≫ f = spMap (RingHom.id Ω) ≫ spMap i ≫ y ≫ Y.j := by
    rw [hf]
    have : spMap (RingHom.id Ω) = 𝟙 _ := by simp [spMap]
    rw [this, Category.id_comp]
  obtain ⟨ev', hev', -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.XR.isFullLevelAt_move E H D Y.X X Y.t t f m Ω Ω (RingHom.id Ω) (spMap i ≫ y ≫ Y.j) ξ hid N z ev hlev
  have hz : Units.map (RingHom.id Ω).toMonoidHom z = z := by ext; rfl
  rw [hz] at hev'
  obtain ⟨hprim, -, -, -, -, hfull, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.XR.fullLevel_props E H D X t Ω ξ N hN z ev' hev'
  refine ⟨t, m, ev', hev', hfull, fun q => ?_⟩
  have hpow : (z : Ω) ^ N = 1 := by
    have := congrArg Units.val hprim.pow_eq_one
    simpa using this
  exact unitAt_of_pow_eq_one hnorm (by omega) hpow q

end GlobalTheory.CompanionTheory.Ar.XR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelGenericCover =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.LevelCoverStHolds =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.LevelCoverStHolds", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.LevelCoverSt\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GlueApplyOfNotInFibre\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFiniteNormalModelOfResidueFinite\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsFullLevelAt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFullLevelFiniteExtension\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullLevelGenericCover\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenericPointNormalCoords\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.ProjectiveOverRestrictInt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits NumberField IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar.XR

theorem genPt_spMap_comp {X : Scheme.{0}} {K Ω : Type} [Field K] [Field Ω] (i : K →+* Ω) (ξ : Sp K ⟶ X) :
    genPt (spMap i ≫ ξ) = genPt ξ := by
  unfold genPt
  show ξ ((spMap i) (closedPoint Ω)) = ξ (closedPoint K)
  congr 1
  first
  | exact Subsingleton.elim _ _

theorem finite_descResidueField_spMap_comp {X : Scheme.{0}} {K Ω : Type} [Field K] [Field Ω] (i : K →+* Ω)
    (hi : i.Finite) (ξ : Sp K ⟶ X) (hξ : Function.Surjective (Scheme.stalkClosedPointTo ξ).hom) :
    (Scheme.descResidueField (Scheme.stalkClosedPointTo (spMap i ≫ ξ))).hom.Finite := by
  have hA : ∀ p : Sp K, (ξ.stalkMap p).hom.Finite := by
    intro p
    obtain rfl : p = closedPoint K := Subsingleton.elim _ _
    apply RingHom.Finite.of_surjective
    have e : Scheme.stalkClosedPointTo ξ =
        ξ.stalkMap (closedPoint K) ≫ (stalkClosedPointIso (CommRingCat.of K)).hom := by
      first
      | rfl
    intro y
    obtain ⟨a, ha⟩ := hξ ((stalkClosedPointIso (CommRingCat.of K)).hom y)
    refine ⟨a, ?_⟩
    apply (ConcreteCategory.bijective_of_isIso (stalkClosedPointIso (CommRingCat.of K)).hom).1
    rw [← ha, e]
    rfl
  have hB : (Scheme.stalkClosedPointTo (spMap i)).hom.Finite := by
    change (Scheme.stalkClosedPointTo (Spec.map (CommRingCat.ofHom i))).hom.Finite
    have h := Scheme.germ_stalkClosedPointTo_Spec (CommRingCat.ofHom i)
    refine RingHom.Finite.of_comp_finite
      (f := ((Scheme.ΓSpecIso (CommRingCat.of K)).inv ≫ (Spec (CommRingCat.of K)).presheaf.germ ⊤
        ((Spec.map (CommRingCat.ofHom i)) (closedPoint Ω)) trivial).hom) ?_
    rw [← CommRingCat.hom_comp, Category.assoc, h, Iso.inv_hom_id_assoc]
    simpa using hi
  have hC : (Scheme.stalkClosedPointTo (spMap i ≫ ξ)).hom.Finite := by
    have e2 := Scheme.stalkClosedPointTo_comp (R := CommRingCat.of Ω) (spMap i) ξ
    have h3 := hB.comp (hA ((spMap i) (closedPoint Ω)))
    rw [← CommRingCat.hom_comp] at h3
    first
    | exact e2 ▸ h3
  refine RingHom.Finite.of_comp_finite (f := (X.residue _).hom) ?_
  rw [← CommRingCat.hom_comp, Scheme.residue_descResidueField]
  exact hC

theorem levelCover : LevelCoverSt := by
  intro E _ _ _ H D l Xo c Y e he N hN
  obtain ⟨K, _, _, n0, x0, y0, htie, -, hgen⟩ := _root_.GlobalTheory.CompanionTheory.Ar.XR.exists_cpt_of_genericPoint E H D l Xo c Y e he
  obtain ⟨Ω, _, _, z, ev, hfd, hfull⟩ := _root_.GlobalTheory.CompanionTheory.Ar.XR.exists_fullLevel_finite E H D l Xo c _ _ Y K y0 N hN
  haveI : CharZero Ω := charZero_of_injective_algebraMap (algebraMap K Ω).injective
  haveI : NumberField c.F :=
    { to_charZero := inferInstance, to_finiteDimensional := c.fin }
  have hproj : IsProjOver (Y.s ≫ spMap (Int.castRingHom (𝓞 c.F))) :=
    _root_.GlobalTheory.CompanionTheory.Ar.XR.isProjOver_comp_spMap_int _ Y.X Y.s Y.proj
  have hsurj : Function.Surjective (Scheme.stalkClosedPointTo (y0 ≫ Y.j)).hom := by
    obtain ⟨hg, -, -, -⟩ := htie
    obtain ⟨hb, -⟩ := hg
    exact hb.2
  have hi : (algebraMap K Ω).Finite := by
    first
    | exact RingHom.finite_algebraMap.mpr hfd
  have hfin := finite_descResidueField_spMap_comp (algebraMap K Ω) hi (y0 ≫ Y.j) hsurj
  obtain ⟨n, x, M, π, hMn, hπ, hMπ⟩ :=
    _root_.GlobalTheory.CompanionTheory.Relay.exists_finite_normal_model_of_residue_finite Y.X _ hproj Ω (spMap (algebraMap K Ω) ≫ (y0 ≫ Y.j)) hfin
  have hMg : IsCptGen M.ξ := by
    obtain ⟨hg, -, -, -⟩ := M.tie
    exact hg
  obtain ⟨t, hx, ev', h1, h2, h3⟩ :=
    _root_.GlobalTheory.CompanionTheory.Ar.XR.exists_full_level_over E H D l Xo c Y K Ω (algebraMap K Ω) y0 N z ev hN hfull M.X M.ξ hMg hMn π hMπ
  refine ⟨Ω, inferInstance, inferInstance, n, x, M, π, spMap (algebraMap K Ω) ≫ y0, t, hx, z, ev',
    hMn, hπ, ?_, ?_, h1, h2, h3⟩
  · show genPt (M.ξ ≫ π) = e
    rw [hMπ, genPt_spMap_comp, hgen]
  · rw [hMπ, Category.assoc]

end GlobalTheory.CompanionTheory.Ar.XR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.LevelCoverStHolds =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFiniteExtensionPrimes =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFiniteExtensionPrimes", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsPrimitiveRootOfLevel\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.LevelCoverSt\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LevelCoverStHolds\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GlueApplyOfNotInFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.ChgField

theorem exists_compositum (κ Ω₁ Ω' : Type) [Field κ] [Field Ω₁] [Field Ω'] (i₁ : κ →+* Ω₁) (i₂ : κ →+* Ω')
    (h : i₂.Finite) :
    ∃ (Ω : Type) (_ : Field Ω) (a : Ω₁ →+* Ω) (b : Ω' →+* Ω), a.Finite ∧ a.comp i₁ = b.comp i₂ := by
  letI := i₁.toAlgebra
  letI := i₂.toAlgebra
  haveI : Module.Finite κ Ω' := h
  haveI : Module.Finite Ω₁ (TensorProduct κ Ω₁ Ω') := inferInstance
  haveI : Nontrivial (TensorProduct κ Ω₁ Ω') := inferInstance
  obtain ⟨m, hm⟩ := Ideal.exists_maximal (TensorProduct κ Ω₁ Ω')
  let q := Ideal.Quotient.mk m
  refine ⟨TensorProduct κ Ω₁ Ω' ⧸ m, Ideal.Quotient.field m,
    q.comp (algebraMap Ω₁ (TensorProduct κ Ω₁ Ω')),
    q.comp (Algebra.TensorProduct.includeRight : Ω' →ₐ[κ] TensorProduct κ Ω₁ Ω').toRingHom, ?_, ?_⟩
  · exact RingHom.Finite.comp (RingHom.Finite.of_surjective q Ideal.Quotient.mk_surjective)
      (RingHom.finite_algebraMap.2 inferInstance)
  · ext x
    have e : algebraMap Ω₁ (TensorProduct κ Ω₁ Ω') (i₁ x) = (1 : Ω₁) ⊗ₜ[κ] (i₂ x) := by
      have h1 : i₁ x = x • (1 : Ω₁) := by rw [Algebra.smul_def, _root_.mul_one]; rfl
      have h2 : i₂ x = x • (1 : Ω') := by rw [Algebra.smul_def, _root_.mul_one]; rfl
      rw [Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply, h1, h2,
        TensorProduct.smul_tmul]
    simp only [RingHom.comp_apply]
    rw [e]
    rfl

theorem exists_root (K : Type) [Field K] [CharZero K] (N : ℕ) (hN : N ≠ 0) :
    ∃ (L : Type) (_ : Field L) (j : K →+* L), j.Finite ∧ ∃ ζ : L, IsPrimitiveRoot ζ N := by
  haveI : NeZero N := ⟨hN⟩
  haveI : NeZero ((N : ℕ) : K) := ⟨Nat.cast_ne_zero.2 hN⟩
  haveI : Module.Finite K (CyclotomicField N K) := by
    first
      | exact IsCyclotomicExtension.finiteDimensional {N} K _
  exact ⟨CyclotomicField N K, inferInstance, algebraMap _ _, RingHom.finite_algebraMap.2 inferInstance,
    IsCyclotomicExtension.zeta N K _, IsCyclotomicExtension.zeta_spec N K _⟩

theorem fullTorsion_ext {X : Scheme.{0}} {Ω Ω' : Type} [Field Ω] [Field Ω'] {G : Over X} [GrpObj G]
    {ξ : Spec (CommRingCat.of Ω) ⟶ X} (j : Ω →+* Ω') {n : ℕ} (hf : FullTorsion G ξ n) :
    FullTorsion G (spMap j ≫ ξ) n := by
  intro k _ i g hg
  have hs : spMap (i.comp j) = spMap i ≫ spMap j := by
    simp only [spMap]
    rw [← Spec.map_comp, ← CommRingCat.ofHom_comp]
  have e : spMap i ≫ spMap j ≫ ξ = spMap (i.comp j) ≫ ξ := by
    rw [hs, Category.assoc]
  revert g
  rw [e]
  intro g hg
  obtain ⟨x, hx⟩ := hf k (i.comp j) g hg
  have hxw : x.left ≫ G.hom = ξ := by simpa using Over.w x
  refine ⟨Over.homMk (spMap j ≫ x.left) ?_, ?_⟩
  · simp only [Over.mk_hom, Category.assoc, hxw]
  · show g.left = spMap i ≫ spMap j ≫ x.left
    rw [hx, hs]
    exact Category.assoc _ _ _

theorem exists_factor {X : Scheme.{0}} {Ω : Type} [Field Ω] (ξ : Spec (CommRingCat.of Ω) ⟶ X) (e : X)
    (h : genPt ξ = e) : ∃ i : X.residueField e →+* Ω, ξ = spMap i ≫ X.fromSpecResidueField e := by
  subst h
  exact ⟨(X.descResidueField (Scheme.stalkClosedPointTo ξ)).hom,
    ((Scheme.SpecToEquivOfField Ω X).left_inv ξ).symm⟩

theorem exists_field : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Tor.Level H) (Xo : Moduli D l) (c : Coeff l) (Y : Model Xo c (algebraMap (𝓞 c.F) c.F)) (Ω₁ : Type) [Field Ω₁] [CharZero Ω₁] (ξ₁ : Spec (CommRingCat.of Ω₁) ⟶ Y.X) (S : Finset ℕ), GlobalTheory.CompanionTheory.Ar.genPt ξ₁ ∈ genericPoints Y.X → (∀ p ∈ S, p.Prime) → ∃ (Ω : Type) (_ : Field Ω) (_ : CharZero Ω) (i : Ω₁ →+* Ω), (letI := i.toAlgebra; FiniteDimensional Ω₁ Ω) ∧ (∀ p ∈ S, FullTorsion Y.t.G (spMap i ≫ ξ₁) (p ^ 4)) ∧ ∀ p ∈ S, ∃ ζ : Ω, IsPrimitiveRoot ζ (p ^ 4) := by
  intro E _ _ _ H D l Xo c Y Ω₁ _ _ ξ₁ S he hS
  have hN0 : (∏ p ∈ S, p ^ 4) ≠ 0 :=
    Finset.prod_ne_zero_iff.2 fun p hp => pow_ne_zero _ (hS p hp).ne_zero
  obtain ⟨Ω', _, _, n, x, M, f, y, t, m, z, ev, -, hfin, hfe, -, -, htor, -⟩ :=
    _root_.GlobalTheory.CompanionTheory.Ar.XR.levelCover E H D l Xo c Y _ he (∏ p ∈ S, p ^ 4) (Nat.one_le_iff_ne_zero.2 hN0)
  haveI := hfin
  obtain ⟨i₁, h₁⟩ := exists_factor ξ₁ _ rfl
  obtain ⟨i₂, h₂⟩ := exists_factor (M.ξ ≫ f) (genPt ξ₁) (by
    rw [← hfe]
    first
      | rfl)
  have hdom : GlobalTheory.CompanionTheory.Ar.Dominates M.ξ (Y.X.fromSpecResidueField (genPt ξ₁)) f i₂ := h₂
  have hi₂ : i₂.Finite := HodgeExists.finite_of_dominates M.tie.gen f hdom
  obtain ⟨Ω₂, _, a, b, ha, hab⟩ := exists_compositum _ Ω₁ Ω' i₁ i₂ hi₂
  haveI : CharZero Ω₂ := charZero_of_injective_ringHom a.injective
  obtain ⟨Ω, _, j, hj, ζ, hζ⟩ := exists_root Ω₂ _ hN0
  haveI : CharZero Ω := charZero_of_injective_ringHom j.injective
  have hsp : ∀ {R R' R'' : Type} [CommRing R] [CommRing R'] [CommRing R''] (u : R →+* R') (v : R' →+* R''),
      spMap (v.comp u) = spMap v ≫ spMap u := by
    intro R R' R'' _ _ _ u v
    simp only [spMap]
    rw [← Spec.map_comp, ← CommRingCat.ofHom_comp]
  have hpt : spMap (j.comp a) ≫ ξ₁ = spMap (j.comp b) ≫ M.ξ ≫ f := by
    rw [h₂]
    conv_lhs => rw [h₁]
    rw [← Category.assoc, ← Category.assoc, ← hsp, ← hsp, RingHom.comp_assoc, RingHom.comp_assoc, hab]
  have hdvd : ∀ p ∈ S, p ^ 4 ∣ ∏ p ∈ S, p ^ 4 := fun p hp => Finset.dvd_prod_of_mem (fun p => p ^ 4) hp
  refine ⟨Ω, inferInstance, inferInstance, j.comp a, RingHom.Finite.comp hj ha, fun p hp => ?_, fun p hp => ?_⟩
  · rw [hpt]
    exact fullTorsion_ext (j.comp b) (HodgeExists.fullTorsion_push m.cart (hdvd p hp) htor)
  · obtain ⟨d, hd⟩ := hdvd p hp
    exact ⟨ζ ^ d, hζ.pow (Nat.pos_of_ne_zero hN0) (by rw [hd, mul_comm])⟩

end GlobalTheory.CompanionTheory.Ar.ChgField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsFiniteExtensionPrimes =====
