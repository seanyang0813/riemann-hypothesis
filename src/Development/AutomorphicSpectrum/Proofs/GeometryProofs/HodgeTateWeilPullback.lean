module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.LieModel
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TangentSectionAdditive
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsLieModel
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullTorsionPullback
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsVBOneOfChartGenerators
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieLatticeDominantCompat
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsSemiAbelianOfGenericAbelianOfClosedIsGt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GenWeil
public import Mathlib.RingTheory.RootsOfUnity.Basic
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilLocal
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.EigLat
public import Mathlib.Algebra.Field.Defs
public import Mathlib.Algebra.Group.Units.Defs
public import Mathlib.Algebra.Ring.Hom.Defs
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.RegularLocalRing.Defs
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenMapStalkMap
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelFreeOverLocalRing
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelPullbackCorrespondence
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.ProIsoAt
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic
import Mathlib.CategoryTheory.Monoidal.Category
import Mathlib.CategoryTheory.Monoidal.Mon
import Mathlib.Topology.Sheaves.Presheaf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.SpanXLeKerAevalZero
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilUnique
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenMapFromSpecStalk

section
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.HtPull

theorem seccomp : ∀ (B : Type) [CommRing B] (Z Z' : Scheme.{0}) (x : Spec (CommRingCat.of B) ⟶ Z') (φ : Z' ⟶ Z) (W : Z.Opens) (h : ⊤ ≤ x ⁻¹ᵁ (φ ⁻¹ᵁ W)) (h' : ⊤ ≤ (x ≫ φ) ⁻¹ᵁ W) (s : Γ(Z, W)), secVal x (φ ⁻¹ᵁ W) h (φ.app W s) = secVal (x ≫ φ) W h' s := by
  intro B _ Z Z' x φ W h h' s
  unfold secVal
  rw [Scheme.Hom.comp_appLE]
  rfl

theorem secring : ∀ (B B' : Type) [CommRing B] [CommRing B'] (ψ : B →+* B') (Z : Scheme.{0}) (x : Spec (CommRingCat.of B) ⟶ Z) (W : Z.Opens) (h : ⊤ ≤ x ⁻¹ᵁ W) (h' : ⊤ ≤ (spMap ψ ≫ x) ⁻¹ᵁ W) (s : Γ(Z, W)), secVal (spMap ψ ≫ x) W h' s = ψ (secVal x W h s) := by
  intro B B' _ _ ψ Z x W h h' s
  unfold secVal
  have e : (spMap ψ ≫ x).appLE W ⊤ h' = x.appLE W ⊤ h ≫ (spMap ψ).appTop := by
    have e₁ : (spMap ψ).appTop = (spMap ψ).appLE ⊤ ⊤ le_top := by
      rw [Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE]
      rfl
    rw [e₁]
    exact (Scheme.Hom.appLE_comp_appLE (spMap ψ) x W ⊤ ⊤ h _).symm
  rw [e]
  have n := Scheme.ΓSpecIso_naturality (CommRingCat.ofHom ψ)
  have n' : (Scheme.ΓSpecIso (CommRingCat.of B')).hom.hom ((spMap ψ).appTop.hom ((x.appLE W ⊤ h).hom s)) =
      ψ ((Scheme.ΓSpecIso (CommRingCat.of B)).hom.hom ((x.appLE W ⊤ h).hom s)) :=
    (ConcreteCategory.congr_hom n.symm ((x.appLE W ⊤ h).hom s)).symm
  exact n'

theorem eta : ∀ (X X' : Scheme.{0}) (G : Over X) [GrpObj G] (G' : Over X') [GrpObj G'] (f : X' ⟶ X) (φ : G'.left ⟶ G.left), IsGrpPullback G' G f φ → (η[G']).left ≫ φ = f ≫ (η[G]).left := by
  intro X X' G _ G' _ f φ h
  have e := congrArg (fun z => z.left) (map_one (pushHom h (𝟙_ (Over X'))))
  have e₁ : (1 : 𝟙_ (Over X') ⟶ G') = η[G'] := by rw [Hom.one_def]; simp
  rw [e₁] at e
  refine e.trans ?_
  show (toUnit _ ≫ η[G]).left = _
  simp

theorem tanin : ∀ (X : Scheme.{0}) (G : Over X) [GrpObj G] (q : X) (v : epsAt (X.fromSpecStalk q) ⟶ G), IsTanAt G _ v → ∀ W : G.left.Opens, (η[G]).left q ∈ W → ⊤ ≤ v.left ⁻¹ᵁ W := by
  intro X G _ q v hv W hq z _
  obtain ⟨p, rfl⟩ := LieCarrier.surjective_fst z
  have h1 : (1 : Over.mk (X.fromSpecStalk q) ⟶ G).left = X.fromSpecStalk q ≫ (η[G]).left := by
    rw [Hom.one_def]
    simp
  have e : v.left (Spec.map _ p) = (η[G]).left (X.fromSpecStalk q p) := congrArg (fun g => g p) (hv.trans h1)
  show v.left _ ∈ W
  refine e.symm ▸ ?_
  have h3 : X.fromSpecStalk q p ⤳ q := by
    have : X.fromSpecStalk q p ∈ Set.range (X.fromSpecStalk q) := ⟨p, rfl⟩
    rwa [Scheme.range_fromSpecStalk] at this
  exact (h3.map (η[G]).left.continuous).mem_open W.isOpen hq

theorem comp_ring {B B' : Type} [CommRing B] [CommRing B'] (ψ : B →+* B') {Z Z' : Scheme.{0}}
    (x' : Spec (CommRingCat.of B') ⟶ Z') (x : Spec (CommRingCat.of B) ⟶ Z) (φ : Z' ⟶ Z) (hx : x' ≫ φ = spMap ψ ≫ x)
    (W : Z.Opens) (h : ⊤ ≤ x' ⁻¹ᵁ (φ ⁻¹ᵁ W)) (h0 : ⊤ ≤ x ⁻¹ᵁ W) (s : Γ(Z, W)) :
    secVal x' (φ ⁻¹ᵁ W) h (φ.app W s) = ψ (secVal x W h0 s) := by
  have key : ∀ (t : Spec (CommRingCat.of B') ⟶ Z) (_ : t = spMap ψ ≫ x) (h2 : ⊤ ≤ t ⁻¹ᵁ W),
      secVal t W h2 s = ψ (secVal x W h0 s) := by
    rintro _ rfl h2
    exact secring B B' ψ Z x W h0 h2 s
  rw [seccomp B' Z Z' x' φ W h h s]
  exact key _ hx h

theorem dualMap_snd {R R' : Type} [CommRing R] [CommRing R'] (φ : R →+* R') (a : DualNumber R) :
    (dualMap φ a).snd = φ a.snd := by
  simp [dualMap]

end GlobalTheory.CompanionTheory.Ar.HtPull
end


-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GeometryProofs.DualNumberSectionDerivation, Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullTorsionPullbackPoints, Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelPullbackSmooth, Development.AutomorphicSpectrum.Proofs.GeometryProofs.SemiAbelianOfPullback, Development.AutomorphicSpectrum.Proofs.GeometryProofs.WeilPairingPullback, Development.AutomorphicSpectrum.Proofs.GeometryProofs.WeilPairingTransportRelation, Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilPullback

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.DualNumberSectionDerivation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.DualNumberSectionDerivation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.DualMapSnd\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.LieModel\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TangentSectionAdditive\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilOpenChart\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilUnique\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.HtPull

theorem one_left_eps {S : Scheme.{0}} (G : Over S) [GrpObj G] {C : Type} [CommRing C] (y : Sp C ⟶ S) :
    (1 : GlobalTheory.CompanionTheory.Ar.epsAt y ⟶ G).left = spMap (algebraMap C (DualNumber C)) ≫ (1 : Over.mk y ⟶ G).left := by
  rw [Hom.one_def, Hom.one_def]
  simp

theorem pt_zero {S : Scheme.{0}} {G : Over S} [GrpObj G] {C : Type} [CommRing C] {y : Sp C ⟶ S} {L : Type}
    [AddCommGroup L] [Module C L] (M : LieModel G y L) : M.pt 0 = 1 := by
  have := M.add 0 0
  rw [add_zero] at this
  exact left_eq_mul.1 this

theorem one_snd {S : Scheme.{0}} (G : Over S) [GrpObj G] {C : Type} [CommRing C] (y : Sp C ⟶ S) (W : G.left.Opens)
    (h0 : ⊤ ≤ (1 : Over.mk y ⟶ G).left ⁻¹ᵁ W) (h1 : ⊤ ≤ (1 : GlobalTheory.CompanionTheory.Ar.epsAt y ⟶ G).left ⁻¹ᵁ W) (s : Γ(G.left, W)) :
    (secVal (B := DualNumber C) (1 : GlobalTheory.CompanionTheory.Ar.epsAt y ⟶ G).left W h1 s).snd = 0 := by
  have e := one_left_eps G y
  have h2 : ⊤ ≤ (spMap (algebraMap C (DualNumber C)) ≫ (1 : Over.mk y ⟶ G).left) ⁻¹ᵁ W := e ▸ h1
  rw [GlobalTheory.CompanionTheory.Ar.HtUniq.secVal_congr e W h1 h2 s, secring C (DualNumber C) _ G.left _ W h0 h2 s]
  exact TrivSqZeroExt.snd_inl _ _

theorem exists_linear_snd : ∀ (S : Scheme.{0}) (G : Over S) [GrpObj G] (C : Type) [CommRing C] (y : Sp C ⟶ S) (L : Type) [AddCommGroup L] [Module C L] (M : LieModel G y L) (W : G.left.Opens) (h : ∀ l, ⊤ ≤ (M.pt l).left ⁻¹ᵁ W) (s : Γ(G.left, W)), ∃ D : L →ₗ[C] C, ∀ l, D l = (secVal (B := DualNumber C) (M.pt l).left W (h l) s).snd := by
  intro S G _ C _ y L _ _ M W h s
  have p0 := pt_zero M
  have h1 : ⊤ ≤ (1 : GlobalTheory.CompanionTheory.Ar.epsAt y ⟶ G).left ⁻¹ᵁ W := p0 ▸ h 0
  have h0 : ⊤ ≤ (1 : Over.mk y ⟶ G).left ⁻¹ᵁ W := by
    intro z _
    have t : spMap (TrivSqZeroExt.fstHom C C C).toRingHom ≫ (M.pt 0).left = (1 : Over.mk y ⟶ G).left := M.tan 0
    show (1 : Over.mk y ⟶ G).left z ∈ W
    rw [← t]
    exact h 0 (show spMap (TrivSqZeroExt.fstHom C C C).toRingHom z ∈ (⊤ : Scheme.Opens _) from trivial)
  refine ⟨{ toFun := fun l => (secVal (B := DualNumber C) (M.pt l).left W (h l) s).snd, map_add' := ?_, map_smul' := ?_ },
    fun l => rfl⟩
  · intro l l'
    have e : (M.pt (l + l')).left = (M.pt l * M.pt l').left := by rw [M.add]
    have hvw : ⊤ ≤ (M.pt l * M.pt l').left ⁻¹ᵁ W := e ▸ h (l + l')
    have key := _root_.GlobalTheory.CompanionTheory.Ar.SqAdd.tan_mul_add S G C y (M.pt l) (M.pt l') (M.tan l) (M.tan l') W (h l) (h l') hvw h1 s
    have key' := congrArg (fun t => (Scheme.ΓSpecIso (CommRingCat.of (DualNumber C))).hom.hom t) key
    simp only [map_add (f := _)] at key'
    have key'' : secVal (B := DualNumber C) (M.pt l * M.pt l').left W hvw s +
        secVal (B := DualNumber C) (1 : GlobalTheory.CompanionTheory.Ar.epsAt y ⟶ G).left W h1 s =
        secVal (B := DualNumber C) (M.pt l).left W (h l) s + secVal (B := DualNumber C) (M.pt l').left W (h l') s := key'
    have key3 := congrArg TrivSqZeroExt.snd key''
    rw [TrivSqZeroExt.snd_add, TrivSqZeroExt.snd_add, one_snd G y W h0 h1 s, add_zero] at key3
    show (secVal (B := DualNumber C) (M.pt (l + l')).left W (h (l + l')) s).snd = _
    rw [GlobalTheory.CompanionTheory.Ar.HtUniq.secVal_congr e W (h (l + l')) hvw s]
    exact key3
  · intro c l
    have e := M.smul c l
    have h2 : ⊤ ≤ (spMap (GlobalTheory.CompanionTheory.Ar.epsMul c) ≫ (M.pt l).left) ⁻¹ᵁ W := e ▸ h (c • l)
    show (secVal (B := DualNumber C) (M.pt (c • l)).left W (h (c • l)) s).snd = c • _
    rw [GlobalTheory.CompanionTheory.Ar.HtUniq.secVal_congr e W (h (c • l)) h2 s, secring _ _ _ G.left _ W (h l) h2 s, GlobalTheory.CompanionTheory.Ar.HTChart.snd_epsMul]
    rfl

end GlobalTheory.CompanionTheory.Ar.HtPull
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.DualNumberSectionDerivation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullTorsionPullbackPoints =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullTorsionPullbackPoints", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsLieModel\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullTorsionPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.TorsPull

theorem spMap_cancel {Ω Ω' : Type} [Field Ω] [Field Ω'] (i : Ω →+* Ω') {Z : Scheme.{0}}
    (a b : Spec (CommRingCat.of Ω) ⟶ Z) (h : spMap i ≫ a = spMap i ≫ b) : a = b := by
  have : IsSchemeTheoreticallyDominant (Spec.map (CommRingCat.ofHom i)) :=
    GlobalTheory.CompanionTheory.Ar.LieEx.std_of_inj (CommRingCat.ofHom i) i.injective
  refine GlobalTheory.CompanionTheory.Ar.LieEx.epi_of_surj (Spec.map (CommRingCat.ofHom i)) ?_ a b h
  intro y
  have hs : Subsingleton (Spec (CommRingCat.of Ω)) :=
    inferInstanceAs (Subsingleton (PrimeSpectrum Ω))
  obtain ⟨x⟩ : Nonempty (Spec (CommRingCat.of Ω')) :=
    inferInstanceAs (Nonempty (PrimeSpectrum Ω'))
  exact ⟨x, Subsingleton.elim _ _⟩

theorem tr_pow {S : Scheme.{0}} {T : Scheme.{0}} {G : Over S} [GrpObj G] {a b : T ⟶ S} (h : a = b)
    (n : ℕ) (u : Over.mk a ⟶ G) (hu : u ^ n = 1) :
    ∃ u' : Over.mk b ⟶ G, u'.left = u.left ∧ u' ^ n = 1 := by
  subst h
  exact ⟨u, rfl, hu⟩

theorem torsion_of_pullback : ∀ (X X' : Scheme.{0}) (Ω Ω' : Type) [Field Ω] [Field Ω'] (ξ : Spec (CommRingCat.of Ω) ⟶ X) (ξ' : Spec (CommRingCat.of Ω') ⟶ X') (f : X' ⟶ X) (i : Ω →+* Ω'), GlobalTheory.CompanionTheory.Ar.Dominates ξ' ξ f i → ∀ (G : Over X) [GrpObj G] [IsCommMonObj G] (G' : Over X') [GrpObj G'] [IsCommMonObj G'] (φ : G'.left ⟶ G.left), IsGrpPullback G' G f φ → ∀ n : ℕ, FullTorsion G ξ n →
  FullTorsion G' ξ' n ∧
  (∀ y : Over.mk ξ ⟶ G, y ^ n = 1 → ∃ y' : Over.mk ξ' ⟶ G', y' ^ n = 1 ∧ y'.left ≫ φ = spMap i ≫ y.left) ∧
  (∀ y' : Over.mk ξ' ⟶ G', y' ^ n = 1 → ∃ y : Over.mk ξ ⟶ G, y ^ n = 1 ∧ y'.left ≫ φ = spMap i ≫ y.left) ∧
  (∀ (a a' : Over.mk ξ' ⟶ G') (c c' : Over.mk ξ ⟶ G), a.left ≫ φ = spMap i ≫ c.left → a'.left ≫ φ = spMap i ≫ c'.left → (a * a').left ≫ φ = spMap i ≫ (c * c').left) ∧
  (∀ (a a' : Over.mk ξ' ⟶ G') (c : Over.mk ξ ⟶ G), a.left ≫ φ = spMap i ≫ c.left → a'.left ≫ φ = spMap i ≫ c.left → a = a') ∧
  (∀ (a : Over.mk ξ' ⟶ G') (c c' : Over.mk ξ ⟶ G), a.left ≫ φ = spMap i ≫ c.left → a.left ≫ φ = spMap i ≫ c'.left → c = c') := by
  intro X X' Ω Ω' _ _ ξ ξ' f i hd G _ _ G' _ _ φ h n hf
  have hd' : ξ' ≫ f = spMap i ≫ ξ := hd
  let u : Over.mk (ξ' ≫ f) ⟶ Over.mk ξ := Over.homMk (spMap i) (by simpa using hd'.symm)
  let P : (Over.mk ξ' ⟶ G') →* (Over.mk (ξ' ≫ f) ⟶ G) := pushHom h (Over.mk ξ')
  let Q : (Over.mk ξ ⟶ G) →* (Over.mk (ξ' ≫ f) ⟶ G) := preHom u
  have rel : ∀ (a : Over.mk ξ' ⟶ G') (c : Over.mk ξ ⟶ G), a.left ≫ φ = spMap i ≫ c.left → P a = Q c :=
    fun a c e => Over.OverMorphism.ext e
  have lerp : ∀ (a : Over.mk ξ' ⟶ G') (c : Over.mk ξ ⟶ G), P a = Q c → a.left ≫ φ = spMap i ≫ c.left :=
    fun a c e => congrArg (fun z => z.left) e
  have Pinj : Function.Injective P := by
    intro a a' e
    have e1 : a.left ≫ φ = a'.left ≫ φ := congrArg (fun z => z.left) e
    have w : ∀ b : Over.mk ξ' ⟶ G', b.left ≫ G'.hom = ξ' := fun b => by simpa using Over.w b
    exact Over.OverMorphism.ext (h.1.hom_ext e1 ((w a).trans (w a').symm))
  have Qinj : Function.Injective Q := by
    intro c c' e
    have e1 : spMap i ≫ c.left = spMap i ≫ c'.left := congrArg (fun z => z.left) e
    exact Over.OverMorphism.ext (spMap_cancel i _ _ e1)
  refine ⟨GlobalTheory.CompanionTheory.Ar.HcptPull.fullTorsion_of_dominates X X' Ω Ω' ξ ξ' f i G G' φ n hd h hf, ?_, ?_, ?_, ?_, ?_⟩
  · intro y hy
    have hxw : y.left ≫ G.hom = ξ := by simpa using Over.w y
    have hw : (spMap i ≫ y.left) ≫ G.hom = ξ' ≫ f := by rw [Category.assoc, hxw, hd']
    let y' : Over.mk ξ' ⟶ G' := Over.homMk (h.1.lift (spMap i ≫ y.left) ξ' hw) (h.1.lift_snd _ _ _)
    have e : y'.left ≫ φ = spMap i ≫ y.left := h.1.lift_fst _ _ _
    refine ⟨y', Pinj ?_, e⟩
    rw [map_pow, map_one, rel y' y e, ← map_pow, hy, map_one]
  · intro y' hy'
    have hP : (P y') ^ n = 1 := by rw [← map_pow, hy', map_one]
    obtain ⟨g, hl, hg⟩ := tr_pow hd' n (P y') hP
    obtain ⟨y, hy⟩ := hf Ω' i g hg
    have e : y'.left ≫ φ = spMap i ≫ y.left := hl.symm.trans hy
    refine ⟨y, Qinj ?_, e⟩
    rw [map_pow, map_one, ← rel y' y e, hP]
  · intro a a' c c' e e'
    apply lerp
    rw [map_mul, map_mul, rel a c e, rel a' c' e']
  · intro a a' c e e'
    exact Pinj ((rel a c e).trans (rel a' c e').symm)
  · intro a c c' e e'
    exact Qinj ((rel a c e).symm.trans (rel a c' e'))

end GlobalTheory.CompanionTheory.Ar.TorsPull
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullTorsionPullbackPoints =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelPullbackSmooth =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelPullbackSmooth", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsVBOneOfChartGenerators\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieLatticeDominantCompat\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenMapStalkMap\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.LieModel\nimport Mathlib.AlgebraicGeometry.Morphisms.Smooth\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelFreeOverLocalRing\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelPullbackCorrespondence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.LiePull

section Lat

variable {X : Scheme.{0}} {G : Over X} [GrpObj G] [IsCommMonObj G] {Ω : Type} [Field Ω]
  {ξ : Spec (CommRingCat.of Ω) ⟶ X} {E : Type} [AddCommGroup E] [Module Ω E]

theorem lat_eq_span (M : LieModel G ξ E) (p : Cpt ξ)
    (hx : Spec.map (CommRingCat.ofHom (genMap ξ p)) ≫ X.fromSpecStalk p.1 = ξ) {r : ℕ}
    (b : Fin r → ExtE hx M) (hsp : Submodule.span (X.presheaf.stalk p.1) (Set.range b) = ⊤) :
    M.lat p = Submodule.span (regAt ξ p) (Set.range fun k => val (b k)) := by
  have car := (lieLat_carrier X G Ω ξ E M p).1
  apply le_antisymm
  · intro e he
    obtain ⟨v, hv⟩ := (car e).1 he
    let y : ExtE hx M := ⟨e, v, hv⟩
    have hy : y ∈ Submodule.span (X.presheaf.stalk p.1) (Set.range b) := by
      rw [hsp]; trivial
    obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun _).1 hy
    have he' : e = ∑ k, genMap ξ p (c k) • val (b k) := by
      have h1 : val y = e := rfl

      rw [← h1, ← hc, map_sum]
      rfl
    rw [he']
    refine Submodule.sum_mem _ fun k _ => ?_
    exact Submodule.smul_mem _ (⟨genMap ξ p (c k), c k, rfl⟩ : regAt ξ p) (Submodule.subset_span ⟨k, rfl⟩)
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨k, rfl⟩
    exact (car _).2 (val_spec (b k))

theorem ext_basis {A : Type} [CommRing A] [IsLocalRing A] {g : A →+* Ω} {x : Spec (CommRingCat.of A) ⟶ X}
    (hs : Smooth G.hom) (hg : Function.Injective g) (hx : Spec.map (CommRingCat.ofHom g) ≫ x = ξ)
    (M : LieModel G ξ E) : ∃ n : ℕ, Nonempty (Module.Basis (Fin n) A (ExtE hx M)) :=
  _root_.GlobalTheory.CompanionTheory.Ar.LieFreeSmooth.lieModel_free_of_smooth X G hs A x (ExtE hx M) (extModel hg hx M)

end Lat

theorem frame : ∀ (X X' : Scheme.{0}) (Ω Ω' : Type) [Field Ω] [Field Ω'] (ξ : Spec (CommRingCat.of Ω) ⟶ X) (ξ' : Spec (CommRingCat.of Ω') ⟶ X'), IsCptGen ξ → IsCptGen ξ' → ∀ (f : X' ⟶ X) (i : Ω →+* Ω') (hd : GlobalTheory.CompanionTheory.Ar.Dominates ξ' ξ f i) (G : Over X) [GrpObj G] [IsCommMonObj G] (G' : Over X') [GrpObj G'] [IsCommMonObj G'] (φ : G'.left ⟶ G.left), IsGrpPullback G' G f φ → Smooth G.hom → ∀ (E : Type) [AddCommGroup E] [Module Ω E] (M : LieModel G ξ E) (E' : Type) [AddCommGroup E'] [Module Ω' E'] (M' : LieModel G' ξ' E') (j : E →+ E'), (∀ v, (M'.pt (j v)).left ≫ φ = spMap (dualMap i) ≫ (M.pt v).left) → ∀ q' : Cpt ξ', ∃ (r : ℕ) (B : Module.Basis (Fin r) Ω E) (B' : Module.Basis (Fin r) Ω' E') (v : Fin r → (epsAt (X.fromSpecStalk (f q'.1)) ⟶ G)) (v' : Fin r → (epsAt (X'.fromSpecStalk q'.1) ⟶ G')), (∀ k, B' k = j (B k)) ∧ M.lat ⟨f q'.1, hd.specializes q'⟩ = Submodule.span (regAt ξ ⟨f q'.1, hd.specializes q'⟩) (Set.range B) ∧ M'.lat q' = Submodule.span (regAt ξ' q') (Set.range B') ∧ (∀ k, M.Extends ⟨f q'.1, hd.specializes q'⟩ (B k) (v k)) ∧ (∀ k, M'.Extends q' (B' k) (v' k)) ∧ ∀ k, (v' k).left ≫ φ = spMap (dualMap (f.stalkMap q'.1).hom) ≫ (v k).left := by
  intro X X' Ω Ω' _ _ ξ ξ' hξ hξ' f i hd G _ _ G' _ _ φ hG hs E _ _ M E' _ _ M' j hj q'
  have hp : genPt ξ ⤳ f q'.1 := hd.specializes q'
  have hx := LieCarrier.genMap_fromSpecStalk (ξ := ξ) ⟨f q'.1, hp⟩
  have hx' := LieCarrier.genMap_fromSpecStalk (ξ := ξ') q'
  have hρ : Spec.map (CommRingCat.ofHom (f.stalkMap q'.1).hom) ≫ X.fromSpecStalk (f q'.1) =
      X'.fromSpecStalk q'.1 ≫ f := Scheme.SpecMap_stalkMap_fromSpecStalk f
  have hρ' : (genMap ξ' q').comp (f.stalkMap q'.1).hom = i.comp (genMap ξ ⟨f q'.1, hp⟩) :=
    RingHom.ext (RegAtDom.genMap_stalkMap hd q'.1 q'.2 hp)
  have hg := hξ.inj ⟨f q'.1, hp⟩
  have hg' := hξ'.inj q'
  obtain ⟨r, ⟨b⟩⟩ := ext_basis (A := X.presheaf.stalk (f q'.1)) hs hg hx M
  obtain ⟨hli, hsp⟩ := bc hs (genMap ξ ⟨f q'.1, hp⟩) (X.fromSpecStalk (f q'.1)) ξ hx (extModel hg hx M) M b
    (fun k => val (b k)) (fun k => (vec_spec (b k)).2)
  let B : Module.Basis (Fin r) Ω E := Module.Basis.mk hli hsp.ge
  have hB : ∀ k, B k = val (b k) := fun k => by simp [B]
  obtain ⟨hli', hsp'⟩ := bc hs i ξ (ξ' ≫ f) hd.symm M (LieMove.pushModel hG M') B (fun k => j (B k)) (fun k => hj _)
  let B' : Module.Basis (Fin r) Ω' E' := Module.Basis.mk hli' hsp'.ge
  have hB' : ∀ k, B' k = j (B k) := fun k => by simp [B']
  have up : ∀ k, ∃ u : epsAt (X'.fromSpecStalk q'.1) ⟶ G',
      Ext (genMap ξ' q') (X'.fromSpecStalk q'.1) M' (j (val (b k))) u ∧
      u.left ≫ φ = spMap (dualMap (f.stalkMap q'.1).hom) ≫ (vec (b k)).left :=
    fun k => ext_up hG hj hρ hρ' hx' (vec_spec (b k))
  choose u hu huφ using up
  let b' : Fin r → ExtE hx' M' := fun k => ⟨j (val (b k)), u k, hu k⟩
  obtain ⟨-, hsp''⟩ := bc hs (f.stalkMap q'.1).hom (X.fromSpecStalk (f q'.1)) (X'.fromSpecStalk q'.1 ≫ f) hρ
    (extModel hg hx M) (LieMove.pushModel hG (extModel hg' hx' M')) b b'
    (fun k => by
      have e₁ : vec (b' k) = u k := (vec_spec (b' k)).unique hg' (hu k)
      show (vec (b' k)).left ≫ φ = _
      rw [e₁]
      exact huφ k)
  refine ⟨r, B, B', fun k => vec (b k), u, hB', ?_, ?_, ?_, ?_, huφ⟩
  · rw [lat_eq_span M _ hx b b.span_eq]
    congr 2
    exact funext fun k => (hB k).symm
  · rw [lat_eq_span M' q' hx' b' hsp'']
    congr 2
    exact funext fun k => by rw [hB', hB]; rfl
  · intro k
    rw [hB]
    exact vec_spec (b k)
  · intro k
    rw [hB', hB]
    exact hu k

end GlobalTheory.CompanionTheory.Ar.LiePull
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelPullbackSmooth =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.SemiAbelianOfPullback =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.SemiAbelianOfPullback", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsSemiAbelianOfGenericAbelianOfClosedIsGt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCTools\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.ProIsoAt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

open scoped CategoryTheory.Obj

namespace GlobalTheory.CompanionTheory.Ar

theorem isSemiAbelian_of_isGrpPullback : ∀ (X X' : Scheme.{0}) (G : Over X) [GrpObj G] (G' : Over X') [GrpObj G']
    [IsCommMonObj G'] (f : X' ⟶ X) (φ : G'.left ⟶ G.left), IsGrpPullback G' G f φ → IsSemiAbelian G →
    IsSemiAbelian G' := by
  intro X X' G _ G' _ _ f φ h hG
  obtain ⟨e, he, -⟩ := grpPullback_iso h (isGrpPullback_pullback G f)
  exact GlobalTheory.isSemiAbelian_of_grpIso e (IsSemiAbelian.pullback f G hG)

end GlobalTheory.CompanionTheory.Ar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.SemiAbelianOfPullback =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.WeilPairingPullback =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.WeilPairingPullback", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GenWeil\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.DualMapSnd\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsLieModel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilUnique\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.HtTorPull

theorem spMap_comp_fields {A B C : Type} [Field A] [Field B] [Field C] (i : A →+* B) (τ : B →+* C) :
    spMap (τ.comp i) = spMap τ ≫ spMap i := by
  simp only [spMap]
  rw [← Spec.map_comp, ← CommRingCat.ofHom_comp]

theorem cancel_spMap {K K' : Type} [Field K] [Field K'] (τ : K →+* K') {Z : Scheme.{0}}
    (a b : Spec (CommRingCat.of K) ⟶ Z) (h : spMap τ ≫ a = spMap τ ≫ b) : a = b := by
  have hd : IsSchemeTheoreticallyDominant (spMap τ) :=
    LieEx.std_of_inj (CommRingCat.ofHom τ) τ.injective
  have hs : Function.Surjective (spMap τ) := by
    intro p
    obtain ⟨x⟩ : Nonempty (Spec (CommRingCat.of K')) := inferInstance
    exact ⟨x, Subsingleton.elim (α := PrimeSpectrum K) _ _⟩
  exact LieEx.epi_of_surj (spMap τ) hs a b h

theorem torsion_clause : ∀ (X X' : Scheme.{0}) (Ω Ω' : Type) [Field Ω] [Field Ω'] (ξ : Spec (CommRingCat.of Ω) ⟶ X) (ξ' : Spec (CommRingCat.of Ω') ⟶ X') (f : X' ⟶ X) (i : Ω →+* Ω'), GlobalTheory.CompanionTheory.Ar.Dominates ξ' ξ f i → ∀ (G : Over X) [GrpObj G] [IsCommMonObj G] (L : LB G.left) (n : ℕ) (e : (Over.mk ξ ⟶ G) → (Over.mk ξ ⟶ G) → Ωˣ), GenWeil G L ξ n e → FullTorsion G ξ n → ∀ (G' : Over X') [GrpObj G'] [IsCommMonObj G'] (φ : G'.left ⟶ G.left), IsGrpPullback G' G f φ → FullTorsion G' ξ' n → ∀ (L' : LB G'.left) (e' : (Over.mk ξ' ⟶ G') → (Over.mk ξ' ⟶ G') → Ω'ˣ), GenWeil G' L' ξ' n e' → ∀ (y : Over.mk ξ ⟶ G) (y' : Over.mk ξ' ⟶ G'), y ^ n = 1 → y' ^ n = 1 → (∀ (g : Over.mk ξ ⟶ G) (g' : Over.mk ξ' ⟶ G'), g ^ n = 1 → g' ^ n = 1 → g'.left ≫ φ = spMap i ≫ g.left → (e' y' g' : Ω') = i (e y g)) → (∀ (g : Over.mk ξ ⟶ G), g ^ n = 1 → ∃ g' : Over.mk ξ' ⟶ G', g' ^ n = 1 ∧ g'.left ≫ φ = spMap i ≫ g.left) → (∀ (g' : Over.mk ξ' ⟶ G'), g' ^ n = 1 → ∃ g : Over.mk ξ ⟶ G, g ^ n = 1 ∧ g'.left ≫ φ = spMap i ≫ g.left) → ∀ (W : G.left.Opens) (s : Γ(G.left, W)),
  (∀ (k : Type) [Field k] [IsAlgClosed k] (τ : Ω →+* k) (xk g : Over.mk (spMap τ ≫ ξ) ⟶ G) (c : kˣ) (h : ⊤ ≤ g.left ⁻¹ᵁ W), xk.left = spMap τ ≫ y.left → g ^ n = 1 → Out.WeilIs G L n xk g (unitOn c) → secVal (B := k) g.left W h s = c) →
  (∀ (k : Type) [Field k] [IsAlgClosed k] (τ : Ω' →+* k) (xk g : Over.mk (spMap τ ≫ ξ') ⟶ G') (c : kˣ) (h : ⊤ ≤ g.left ⁻¹ᵁ (φ ⁻¹ᵁ W)), xk.left = spMap τ ≫ y'.left → g ^ n = 1 → Out.WeilIs G' L' n xk g (unitOn c) → secVal (B := k) g.left (φ ⁻¹ᵁ W) h (φ.app W s) = c) := by
  intro X X' Ω Ω' _ _ ξ ξ' f i hD G _ _ L n e hGW hFT G' _ _ φ hP hFT' L' e' hGW' y y' hy hy' hcomp hlift hdown W s hW
    k _ _ τ xk g c h hxk hgn hWeil
  obtain ⟨x', hx⟩ := hFT' k τ g hgn
  let U : Over.mk (spMap τ ≫ ξ') ⟶ Over.mk ξ' := Over.homMk (spMap τ) rfl
  have hgU : g = U ≫ x' := Over.OverMorphism.ext hx
  have hx'n : x' ^ n = 1 := by
    have e1 : preHom (G := G') U (x' ^ n) = preHom (G := G') U 1 := by
      rw [map_pow, map_one]
      show (U ≫ x') ^ n = 1
      rw [← hgU]
      exact hgn
    apply Over.OverMorphism.ext
    apply cancel_spMap τ
    exact congrArg (fun z => z.left) e1
  obtain ⟨g₀, hg₀, hxg⟩ := hdown x' hx'n
  have hc' : (c : k) = τ (e' y' x') := (hGW'.weil y' x' hy' hx'n k τ xk g c hxk hx).1 hWeil
  have hc : (c : k) = (τ.comp i) (e y g₀) := by
    rw [hc', hcomp g₀ x' hg₀ hx'n hxg]
    rfl
  let U₀ : Over.mk (spMap (τ.comp i) ≫ ξ) ⟶ Over.mk ξ := Over.homMk (spMap (τ.comp i)) rfl
  have hW1 : Out.WeilIs G L n (U₀ ≫ y) (U₀ ≫ g₀) (unitOn c) :=
    (hGW.weil y g₀ hy hg₀ k (τ.comp i) (U₀ ≫ y) (U₀ ≫ g₀) c rfl rfl).2 hc
  have hg₁ : (U₀ ≫ g₀) ^ n = 1 := by
    have e1 : preHom (G := G) U₀ (g₀ ^ n) = (U₀ ≫ g₀) ^ n := map_pow _ _ _
    rw [← e1, hg₀, map_one]
  have hl : g.left ≫ φ = (U₀ ≫ g₀).left := by
    show g.left ≫ φ = spMap (τ.comp i) ≫ g₀.left
    rw [hx, Category.assoc, hxg, spMap_comp_fields, Category.assoc]
  have h' : ⊤ ≤ (g.left ≫ φ) ⁻¹ᵁ W := h
  have h₁ : ⊤ ≤ (U₀ ≫ g₀).left ⁻¹ᵁ W := hl ▸ h'
  rw [HtPull.seccomp k _ _ g.left φ W h h' s, GlobalTheory.CompanionTheory.Ar.HtUniq.secVal_congr hl W h' h₁ s]
  exact hW k (τ.comp i) (U₀ ≫ y) (U₀ ≫ g₀) c h₁ rfl hg₁ hW1

end GlobalTheory.CompanionTheory.Ar.HtTorPull
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.WeilPairingPullback =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.WeilPairingTransportRelation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.WeilPairingTransportRelation", "h": "module\n\npublic import Mathlib.RingTheory.RootsOfUnity.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.ProIsoAt\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Basic\nimport Mathlib.CategoryTheory.Monoidal.Category\nimport Mathlib.CategoryTheory.Monoidal.Mon\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.SpanXLeKerAevalZero\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar.TorsionChars

theorem exists_units_map_eq {Ω Ω' : Type} [Field Ω] [Field Ω'] (i : Ω →+* Ω') (n : ℕ) [NeZero n]
    (v : Ω'ˣ) (hv : v ^ Nat.card (rootsOfUnity n Ω) = 1) :
    ∃ u : Ωˣ, Units.map (i : Ω →* Ω') u = v := by
  classical
  set m := Nat.card (rootsOfUnity n Ω) with hm
  haveI : NeZero m := ⟨Nat.card_pos.ne'⟩
  have hinj : Function.Injective (Units.map (i : Ω →* Ω')) :=
    Units.map_injective i.injective
  let f : rootsOfUnity n Ω → rootsOfUnity m Ω' := fun u =>
    ⟨Units.map (i : Ω →* Ω') u.1, by
      have h1 : (u : Ωˣ) ^ m = 1 := by
        have := congrArg Subtype.val (pow_card_eq_one' (x := u))
        rw [Subgroup.coe_pow, Subgroup.coe_one] at this
        exact this
      rw [mem_rootsOfUnity, ← map_pow, h1, map_one]⟩
  have hf : Function.Injective f := by
    intro a b hab
    exact Subtype.ext (hinj (congrArg Subtype.val hab))
  have hbij := hf.bijective_of_nat_card_le (card_rootsOfUnity Ω' m)
  obtain ⟨u, hu⟩ := hbij.2 ⟨v, by rw [mem_rootsOfUnity]; exact hv⟩
  exact ⟨u.1, congrArg Subtype.val hu⟩

theorem pow_right_of_mul {G M : Type} [CommGroup G] [CommGroup M] (n : ℕ) (χ : G → M)
    (hχ : ∀ g g', g ^ n = 1 → g' ^ n = 1 → χ (g * g') = χ g * χ g')
    (g : G) (hg : g ^ n = 1) (k : ℕ) : χ (g ^ k) = χ g ^ k := by
  have h1 : χ 1 = 1 := by
    have := hχ 1 1 (one_pow n) (one_pow n)
    simpa using this
  induction k with
  | zero => simpa using h1
  | succ k ih =>
    have hk : (g ^ k) ^ n = 1 := by rw [← pow_mul, mul_comm, pow_mul, hg, one_pow]
    rw [pow_succ, hχ _ _ hk hg, ih, pow_succ]

theorem chars_descend : ∀ (Ω Ω' : Type) [Field Ω] [Field Ω'] (i : Ω →+* Ω') (C A : Type) [CommGroup C] [CommGroup A] (rel : A → C → Prop) (n : ℕ), 1 ≤ n →
  (∀ c : C, c ^ n = 1 → ∃ a : A, a ^ n = 1 ∧ rel a c) →
  (∀ a : A, a ^ n = 1 → ∃ c : C, c ^ n = 1 ∧ rel a c) →
  (∀ a a' c c', rel a c → rel a' c' → rel (a * a') (c * c')) →
  (∀ a a' c, rel a c → rel a' c → a = a') →
  (∀ a c c', rel a c → rel a c' → c = c') →
  ∀ (e : C → C → Ωˣ) (e' : A → A → Ω'ˣ),
  (∀ x g g', x ^ n = 1 → g ^ n = 1 → g' ^ n = 1 → e x (g * g') = e x g * e x g') →
  (∀ χ : C → Ωˣ, (∀ g g', g ^ n = 1 → g' ^ n = 1 → χ (g * g') = χ g * χ g') → ∃ x, x ^ n = 1 ∧ ∀ g, g ^ n = 1 → χ g = e x g) →
  (∀ g, g ^ n = 1 → (∀ x, x ^ n = 1 → e x g = 1) → g = 1) →
  (∀ x g g', x ^ n = 1 → g ^ n = 1 → g' ^ n = 1 → e' x (g * g') = e' x g * e' x g') →
  (∀ χ : A → Ω'ˣ, (∀ g g', g ^ n = 1 → g' ^ n = 1 → χ (g * g') = χ g * χ g') → ∃ x, x ^ n = 1 ∧ ∀ g, g ^ n = 1 → χ g = e' x g) →
  (∀ y' : A, y' ^ n = 1 → ∃ y : C, y ^ n = 1 ∧ ∀ g g', g ^ n = 1 → g' ^ n = 1 → rel g' g → (e' y' g' : Ω') = i (e y g)) ∧
  (∀ y : C, y ^ n = 1 → ∃ y' : A, y' ^ n = 1 ∧ ∀ g g', g ^ n = 1 → g' ^ n = 1 → rel g' g → (e' y' g' : Ω') = i (e y g)) := by
  classical
  intro Ω Ω' _ _ i C A _ _ rel n hn hCA hAC hmul hinjA hinjC e e' emul eperf enondeg e'mul e'perf
  haveI : NeZero n := ⟨by omega⟩
  have hinj : Function.Injective (Units.map (i : Ω →* Ω')) :=
    Units.map_injective i.injective
  have hrel11 : rel 1 1 := by
    obtain ⟨a₀, -, h₀⟩ := hCA 1 (one_pow n)
    have h := hmul _ _ _ _ h₀ h₀
    rw [_root_.mul_one] at h
    have : a₀ * a₀ = a₀ := hinjA _ _ _ h h₀
    have h1 : a₀ = 1 := by simpa using this
    rwa [h1] at h₀
  have hrelpow : ∀ a c, rel a c → ∀ k : ℕ, rel (a ^ k) (c ^ k) := by
    intro a c h k
    induction k with
    | zero => simpa using hrel11
    | succ k ih => rw [pow_succ, pow_succ]; exact hmul _ _ _ _ ih h
  refine ⟨?_, ?_⟩
  · intro y' hy'
    set m := Nat.card (rootsOfUnity n Ω) with hm
    have hCm : ∀ g : C, g ^ n = 1 → g ^ m = 1 := by
      intro g hg
      refine enondeg _ (by rw [← pow_mul, mul_comm, pow_mul, hg, one_pow]) ?_
      intro x hx
      rw [pow_right_of_mul n (e x) (fun g g' => emul x g g' hx) g hg m]
      have hmem : e x g ∈ rootsOfUnity n Ω := by
        rw [mem_rootsOfUnity, ← pow_right_of_mul n (e x) (fun g g' => emul x g g' hx) g hg n, hg]
        have := emul x 1 1 hx (one_pow n) (one_pow n)
        simpa using this
      have := congrArg Subtype.val (pow_card_eq_one' (x := (⟨e x g, hmem⟩ : rootsOfUnity n Ω)))
      rw [Subgroup.coe_pow, Subgroup.coe_one] at this
      exact this
    have hAm : ∀ a : A, a ^ n = 1 → a ^ m = 1 := by
      intro a ha
      obtain ⟨c, hc, hac⟩ := hAC a ha
      have h := hrelpow a c hac m
      rw [hCm c hc] at h
      exact hinjA _ _ _ h hrel11
    have hval : ∀ a : A, a ^ n = 1 → ∃ u : Ωˣ, Units.map (i : Ω →* Ω') u = e' y' a := by
      intro a ha
      apply exists_units_map_eq i n
      rw [← pow_right_of_mul n (e' y') (fun g g' => e'mul y' g g' hy') a ha m, hAm a ha]
      have := e'mul y' 1 1 hy' (one_pow n) (one_pow n)
      simpa using this
    have hpart : ∀ c : C, c ^ n = 1 → ∃ u : Ωˣ, ∃ a : A, a ^ n = 1 ∧ rel a c ∧
        Units.map (i : Ω →* Ω') u = e' y' a := by
      intro c hc
      obtain ⟨a, ha, hac⟩ := hCA c hc
      obtain ⟨u, hu⟩ := hval a ha
      exact ⟨u, a, ha, hac, hu⟩
    let χ : C → Ωˣ := fun c => if h : c ^ n = 1 then (hpart c h).choose else 1
    have hχ : ∀ c : C, c ^ n = 1 → ∀ a : A, a ^ n = 1 → rel a c →
        Units.map (i : Ω →* Ω') (χ c) = e' y' a := by
      intro c hc a ha hac
      obtain ⟨a₁, -, hrel, hu⟩ := (hpart c hc).choose_spec
      have : χ c = (hpart c hc).choose := dif_pos hc
      rw [this, hu, hinjA _ _ _ hrel hac]
    obtain ⟨y, hy, hye⟩ := eperf χ (by
      intro g g' hg hg'
      obtain ⟨a, ha, hag⟩ := hCA g hg
      obtain ⟨a', ha', hag'⟩ := hCA g' hg'
      have hgg : (g * g') ^ n = 1 := by rw [mul_pow, hg, hg', _root_.one_mul]
      have haa : (a * a') ^ n = 1 := by rw [mul_pow, ha, ha', _root_.one_mul]
      apply hinj
      rw [map_mul, hχ _ hgg _ haa (hmul _ _ _ _ hag hag'), hχ _ hg _ ha hag, hχ _ hg' _ ha' hag',
        e'mul y' _ _ hy' ha ha'])
    refine ⟨y, hy, ?_⟩
    intro g g' hg hg' hrel
    rw [← hχ g hg g' hg' hrel, hye g hg]
    rfl
  · intro y hy
    have hpart : ∀ a : A, a ^ n = 1 → ∃ c : C, c ^ n = 1 ∧ rel a c := hAC
    let χ : A → Ω'ˣ := fun a =>
      if h : a ^ n = 1 then Units.map (i : Ω →* Ω') (e y (hpart a h).choose) else 1
    have hχ : ∀ a : A, a ^ n = 1 → ∀ c : C, rel a c →
        χ a = Units.map (i : Ω →* Ω') (e y c) := by
      intro a ha c hac
      have : χ a = Units.map (i : Ω →* Ω') (e y (hpart a ha).choose) := dif_pos ha
      rw [this, hinjC _ _ _ (hpart a ha).choose_spec.2 hac]
    obtain ⟨y', hy', hye⟩ := e'perf χ (by
      intro g g' hg hg'
      obtain ⟨c, hc, hgc⟩ := hAC g hg
      obtain ⟨c', hc', hgc'⟩ := hAC g' hg'
      have hgg : (g * g') ^ n = 1 := by rw [mul_pow, hg, hg', _root_.one_mul]
      rw [hχ _ hgg _ (hmul _ _ _ _ hgc hgc'), hχ _ hg _ hgc, hχ _ hg' _ hgc',
        emul y _ _ hy hc hc', map_mul])
    refine ⟨y', hy', ?_⟩
    intro g g' hg hg' hrel
    rw [← hye g' hg', hχ g' hg' g hrel]
    rfl

end GlobalTheory.CompanionTheory.Ar.TorsionChars
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.WeilPairingTransportRelation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilPullback =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilPullback", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.GenWeil\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.IsVBOneOfChartGenerators\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieLatticeDominantCompat\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ExistsGenOfIsVBOne\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.MemEigSpOfMemHtDual\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.DualMapSnd\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.DualNumberSectionDerivation\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.FullTorsionPullbackPoints\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilLocal\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.EigLat\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LieModelPullbackSmooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.SemiAbelianOfPullback\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.WeilPairingPullback\npublic import Mathlib.Algebra.Field.Defs\npublic import Mathlib.Algebra.Group.Units.Defs\npublic import Mathlib.Algebra.Ring.Hom.Defs\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.WeilPairingTransportRelation\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.GenMapStalkMap\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.HtPull

theorem deriv_gen {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X} {G : Over X} [GrpObj G]
    {E : Type} [AddCommGroup E] [Module Ω E] {M : LieModel G ξ E} {A : Type} [CommRing A] {g : A →+* Ω}
    (hg : Function.Injective g) {x : Spec (CommRingCat.of A) ⟶ X} (hx : Spec.map (CommRingCat.ofHom g) ≫ x = ξ)
    {W : G.left.Opens} (s : Γ(G.left, W)) (hin : ∀ v : epsAt x ⟶ G, IsTanAt G x v → ⊤ ≤ v.left ⁻¹ᵁ W)
    {r : ℕ} {B : Fin r → E} {v : Fin r → (epsAt x ⟶ G)}
    (hl : ∀ e u, LiePull.Ext g x M e u → e ∈ Submodule.span g.range (Set.range B))
    (hv : ∀ k, LiePull.Ext g x M (B k) (v k)) (hk : ∀ k, ⊤ ≤ (v k).left ⁻¹ᵁ W) {e : E} {u : epsAt x ⟶ G}
    (h : ⊤ ≤ u.left ⁻¹ᵁ W) (hu : LiePull.Ext g x M e u) :
    ∃ a : Fin r → A, e = ∑ k, g (a k) • B k ∧
      (secVal (B := DualNumber A) u.left W h s).snd = ∑ k, a k * (secVal (B := DualNumber A) (v k).left W (hk k) s).snd := by
  obtain ⟨M₀, hM₀⟩ : ∃ M₀ : LieModel G x (LiePull.ExtE hx M), ∀ l, M₀.pt l = LiePull.vec l :=
    ⟨LiePull.extModel hg hx M, fun _ => rfl⟩
  have hin₀ : ∀ l, ⊤ ≤ (M₀.pt l).left ⁻¹ᵁ W := fun l => hin _ (M₀.tan l)
  obtain ⟨D, hD⟩ := _root_.GlobalTheory.CompanionTheory.Ar.HtPull.exists_linear_snd X G A x (LiePull.ExtE hx M) M₀ W hin₀ s
  obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun _).1 (hl e u hu)
  choose a ha using fun k => (c k).2
  let b : Fin r → LiePull.ExtE hx M := fun k => ⟨B k, v k, hv k⟩
  let y : LiePull.ExtE hx M := ⟨e, u, hu⟩
  have hce : e = ∑ k, g (a k) • B k := by
    rw [← hc]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [ha k]
    rfl
  have hy : y = ∑ k, a k • b k := by
    apply LiePull.val_inj

    rw [map_sum]
    refine hce.trans (Finset.sum_congr rfl fun k _ => ?_)
    rw [LiePull.val_smul]
    rfl
  have hyu : M₀.pt y = u := (hM₀ y).trans ((LiePull.vec_spec y).unique hg hu)
  have hbv : ∀ k, M₀.pt (b k) = v k := fun k => (hM₀ (b k)).trans ((LiePull.vec_spec (b k)).unique hg (hv k))
  refine ⟨a, hce, ?_⟩
  have key : ∀ (p p' : epsAt x ⟶ G), p = p' → ∀ (h₁ : ⊤ ≤ p.left ⁻¹ᵁ W) (h₂ : ⊤ ≤ p'.left ⁻¹ᵁ W),
      (secVal (B := DualNumber A) p.left W h₁ s).snd = (secVal (B := DualNumber A) p'.left W h₂ s).snd := by
    rintro p _ rfl h₁ h₂
    rfl
  have e₁ : (secVal (B := DualNumber A) u.left W h s).snd = D y :=
    (key _ _ hyu.symm h (hin₀ y)).trans (hD y).symm
  have e₂ : ∀ k, D (b k) = (secVal (B := DualNumber A) (v k).left W (hk k) s).snd := fun k =>
    (hD (b k)).trans (key _ _ (hbv k) (hin₀ (b k)) (hk k))
  refine e₁.trans ?_

  rw [hy, map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [map_smul, smul_eq_mul, e₂ k]

theorem deriv : ∀ (X : Scheme.{0}) (Ω : Type) [Field Ω] (ξ : Spec (CommRingCat.of Ω) ⟶ X), IsCptGen ξ → ∀ (G : Over X) [GrpObj G] [IsCommMonObj G] (E : Type) [AddCommGroup E] [Module Ω E] (M : LieModel G ξ E) (q : Cpt ξ) (r : ℕ) (B : Fin r → E) (v : Fin r → (epsAt (X.fromSpecStalk q.1) ⟶ G)), M.lat q = Submodule.span (regAt ξ q) (Set.range B) → (∀ k, M.Extends q (B k) (v k)) → ∀ (W : G.left.Opens), (η[G]).left q.1 ∈ W → ∀ (s : Γ(G.left, W)) (hk : ∀ k, ⊤ ≤ (v k).left ⁻¹ᵁ W) (e : E) (u : epsAt (X.fromSpecStalk q.1) ⟶ G) (h : ⊤ ≤ u.left ⁻¹ᵁ W), M.Extends q e u → ∃ a : Fin r → X.presheaf.stalk q.1, e = ∑ k, genMap ξ q (a k) • B k ∧ (secVal (B := DualNumber (X.presheaf.stalk q.1)) u.left W h s).snd = ∑ k, a k * (secVal (B := DualNumber (X.presheaf.stalk q.1)) (v k).left W (hk k) s).snd := by
  intro X Ω _ ξ hξ G _ _ E _ _ M q r B v hl hv W hW s hk e u h hu
  exact deriv_gen (g := genMap ξ q) (hξ.inj q) (LieCarrier.genMap_fromSpecStalk (ξ := ξ) q) s
    (fun t ht => tanin X G q.1 t ht W hW) (fun e' u' hu' => by
      have : e' ∈ M.lat q := Submodule.subset_span ⟨u', hu'⟩
      rw [hl] at this
      exact this) hv hk h hu

theorem om_pull {X X' : Scheme.{0}} {Ω Ω' : Type} [Field Ω] [Field Ω'] {ξ : Spec (CommRingCat.of Ω) ⟶ X}
    {ξ' : Spec (CommRingCat.of Ω') ⟶ X'} (hξ : IsCptGen ξ) (hξ' : IsCptGen ξ') {f : X' ⟶ X} {i : Ω →+* Ω'}
    (hd : GlobalTheory.CompanionTheory.Ar.Dominates ξ' ξ f i) {G : Over X} [GrpObj G] [IsCommMonObj G] {G' : Over X'} [GrpObj G']
    [IsCommMonObj G'] {φ : G'.left ⟶ G.left} (hp : IsGrpPullback G' G f φ) (hs : Smooth G.hom)
    {E : Type} [AddCommGroup E] [Module Ω E] (M : LieModel G ξ E) {E' : Type} [AddCommGroup E'] [Module Ω' E']
    (M' : LieModel G' ξ' E') (j : E →+ E') (jd : Module.Dual Ω E →+ Module.Dual Ω' E')
    (hj : ∀ v, (M'.pt (j v)).left ≫ φ = spMap (GlobalTheory.CompanionTheory.Ar.dualMap i) ≫ (M.pt v).left)
    (hjd : ∀ w v, jd w (j v) = i (w v)) : M'.omLat = M.omLat.pull ξ' f jd := by
  funext q'
  obtain ⟨r, B, B', v, v', hBB, hl, hl', hv, hv', hvv⟩ :=
    _root_.GlobalTheory.CompanionTheory.Ar.LiePull.frame X X' Ω Ω' ξ ξ' hξ hξ' f i hd G G' φ hp hs E M E' M' j hj q'
  obtain ⟨h', hreg, -⟩ := RegAtDom.regAt_dominates X Ω ξ X' Ω' ξ' f i hd q'
  rw [Lat.pull_apply _ hd]
  have hcoord : ∀ k, B.coord k ∈ M.omLat ⟨f q'.1, hd.specializes q'⟩ := by
    intro k e he
    rw [hl] at he
    induction he using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨l, rfl⟩ := hx
      rw [Module.Basis.coord_apply, Module.Basis.repr_self, Finsupp.single_apply]
      split_ifs
      · exact one_mem _
      · exact zero_mem _
    | zero => simpa using zero_mem _
    | add x y _ _ hx hy => simpa using add_mem hx hy
    | smul a x _ hx =>
      have : (B.coord k) (a • x) = (a : Ω) * (B.coord k) x := by
        rw [show a • x = (a : Ω) • x from rfl, map_smul, smul_eq_mul]
      rw [this]
      exact mul_mem a.2 hx
  have hdual : ∀ k, jd (B.coord k) = B'.coord k := by
    intro k
    apply B'.ext
    intro l
    rw [hBB l, hjd, ← hBB l]
    simp only [Module.Basis.coord_apply, Module.Basis.repr_self, Finsupp.single_apply]
    split_ifs <;> simp
  apply le_antisymm
  · intro w' hw'
    have hmem : ∀ k, w' (B' k) ∈ regAt ξ' q' := fun k =>
      hw' (B' k) (by rw [hl']; exact Submodule.subset_span ⟨k, rfl⟩)
    have hsum : w' = ∑ k, w' (B' k) • jd (B.coord k) := by
      apply B'.ext
      intro l
      simp only [hdual, LinearMap.coe_sum, Finset.sum_apply, LinearMap.smul_apply, Module.Basis.coord_apply,
        Module.Basis.repr_self, Finsupp.single_apply, smul_eq_mul]
      simp
    rw [hsum]
    refine Submodule.sum_mem _ fun k _ => ?_
    exact Submodule.smul_mem _ (⟨w' (B' k), hmem k⟩ : regAt ξ' q')
      (Submodule.subset_span ⟨B.coord k, hcoord k, rfl⟩)
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨w, hw, rfl⟩
    intro e' he'
    rw [hl'] at he'
    induction he' using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨l, rfl⟩ := hx
      rw [hBB l, hjd]
      exact hreg _ (hw (B l) (by rw [hl]; exact Submodule.subset_span ⟨l, rfl⟩))
    | zero => simpa using zero_mem _
    | add x y _ _ hx hy => simpa using add_mem hx hy
    | smul a x _ hx =>
      have : (jd w) (a • x) = (a : Ω') * (jd w) x := by
        rw [show a • x = (a : Ω') • x from rfl, map_smul, smul_eq_mul]
      rw [this]
      exact mul_mem a.2 hx

theorem ht_pull {X X' : Scheme.{0}} {Ω Ω' : Type} [Field Ω] [Field Ω'] {ξ : Spec (CommRingCat.of Ω) ⟶ X}
    {ξ' : Spec (CommRingCat.of Ω') ⟶ X'} (hξ : IsCptGen ξ) (hξ' : IsCptGen ξ') {f : X' ⟶ X} {i : Ω →+* Ω'}
    (hd : GlobalTheory.CompanionTheory.Ar.Dominates ξ' ξ f i) {G : Over X} [GrpObj G] [IsCommMonObj G] {G' : Over X'} [GrpObj G']
    [IsCommMonObj G'] {φ : G'.left ⟶ G.left} (hp : IsGrpPullback G' G f φ) (hs : Smooth G.hom)
    {L : LB G.left} {n : ℕ} {e : (Over.mk ξ ⟶ G) → (Over.mk ξ ⟶ G) → Ωˣ} (he : GenWeil G L ξ n e)
    (hF : FullTorsion G ξ n) (hF' : FullTorsion G' ξ' n)
    {L' : LB G'.left} {e' : (Over.mk ξ' ⟶ G') → (Over.mk ξ' ⟶ G') → Ω'ˣ} (he' : GenWeil G' L' ξ' n e')
    (t1 : ∀ (g : Over.mk ξ ⟶ G), g ^ n = 1 → ∃ g' : Over.mk ξ' ⟶ G', g' ^ n = 1 ∧ g'.left ≫ φ = spMap i ≫ g.left)
    (t2 : ∀ (g' : Over.mk ξ' ⟶ G'), g' ^ n = 1 → ∃ g : Over.mk ξ ⟶ G, g ^ n = 1 ∧ g'.left ≫ φ = spMap i ≫ g.left)
    {E : Type} [AddCommGroup E] [Module Ω E] (M : LieModel G ξ E) {E' : Type} [AddCommGroup E'] [Module Ω' E']
    (M' : LieModel G' ξ' E') (j : E →+ E') (jd : Module.Dual Ω E →+ Module.Dual Ω' E')
    (hj : ∀ v, (M'.pt (j v)).left ≫ φ = spMap (GlobalTheory.CompanionTheory.Ar.dualMap i) ≫ (M.pt v).left)
    (hjd : ∀ w v, jd w (j v) = i (w v)) (q' : Cpt ξ') {y : Over.mk ξ ⟶ G} {y' : Over.mk ξ' ⟶ G'}
    (hy : y ^ n = 1) (hy' : y' ^ n = 1)
    (hc : ∀ (g : Over.mk ξ ⟶ G) (g' : Over.mk ξ' ⟶ G'), g ^ n = 1 → g' ^ n = 1 → g'.left ≫ φ = spMap i ≫ g.left →
      (e' y' g' : Ω') = i (e y g)) {w : Module.Dual Ω E}
    (hw : M.IsHTAt L n y ⟨f q'.1, hd.specializes q'⟩ w) : M'.IsHTAt L' n y' q' (jd w) := by
  obtain ⟨hwω, W, s, hη, hT, hD⟩ := hw
  obtain ⟨r, B, B', v, v', hBB, hl, hl', hv, hv', hvv⟩ :=
    _root_.GlobalTheory.CompanionTheory.Ar.LiePull.frame X X' Ω Ω' ξ ξ' hξ hξ' f i hd G G' φ hp hs E M E' M' j hj q'
  obtain ⟨h', hreg, -⟩ := RegAtDom.regAt_dominates X Ω ξ X' Ω' ξ' f i hd q'
  have hom := om_pull hξ hξ' hd hp hs M M' j jd hj hjd
  have hη' : (η[G']).left q'.1 ∈ φ ⁻¹ᵁ W := by
    have e₁ : (η[G']).left ≫ φ = f ≫ (η[G]).left := eta X X' G G' f φ hp
    have e₂ : φ ((η[G']).left q'.1) = (η[G]).left (f q'.1) := by
      have := congrArg (fun g : X' ⟶ G.left => g q'.1) e₁
      simpa using this
    show φ ((η[G']).left q'.1) ∈ W
    rw [e₂]
    exact hη
  refine ⟨?_, φ ⁻¹ᵁ W, φ.app W s, hη', ?_, ?_⟩
  · rw [hom, Lat.pull_apply _ hd]
    exact Submodule.subset_span ⟨w, hwω, rfl⟩
  · exact _root_.GlobalTheory.CompanionTheory.Ar.HtTorPull.torsion_clause X X' Ω Ω' ξ ξ' f i hd G L n e he hF G' φ hp hF' L' e' he' y y' hy hy' hc t1 t2 W s hT
  · intro e₀ u hu h
    have hk : ∀ k, ⊤ ≤ (v' k).left ⁻¹ᵁ (φ ⁻¹ᵁ W) := fun k => tanin X' G' q'.1 (v' k) (hv' k).1 _ hη'
    have hk₀ : ∀ k, ⊤ ≤ (v k).left ⁻¹ᵁ W := fun k => tanin X G (f q'.1) (v k) (hv k).1 _ hη
    obtain ⟨a, rfl, hsum⟩ := deriv X' Ω' ξ' hξ' G' E' M' q' r B' v' hl' hv' (φ ⁻¹ᵁ W) hη' (φ.app W s) hk e₀ u h hu
    have hcomp : ∀ k, (secVal (B := DualNumber (X'.presheaf.stalk q'.1)) (v' k).left (φ ⁻¹ᵁ W) (hk k) (φ.app W s)).snd =
        (f.stalkMap q'.1).hom (secVal (B := DualNumber (X.presheaf.stalk (f q'.1))) (v k).left W (hk₀ k) s).snd := by
      intro k
      exact (congrArg TrivSqZeroExt.snd (comp_ring (dualMap (f.stalkMap q'.1).hom) (v' k).left (v k).left φ (hvv k) W (hk k) (hk₀ k) s)).trans (dualMap_snd _ _)
    choose ρ hρ hρe using fun k => hD (B k) (v k) (hv k) (hk₀ k)
    have hρ' := fun k => hreg _ (hρ k)
    have hρe' : ∀ k, w (B k) = genMap ξ ⟨f q'.1, hd.specializes q'⟩
        (secVal (B := DualNumber (X.presheaf.stalk (f q'.1))) (v k).left W (hk₀ k) s).snd + n * ρ k := hρe
    refine ⟨∑ k, genMap ξ' q' (a k) * i (ρ k), sum_mem fun k _ => mul_mem ⟨a k, rfl⟩ (hρ' k), ?_⟩
    have hg : ∀ t, genMap ξ' q' ((f.stalkMap q'.1).hom t) = i (genMap ξ ⟨f q'.1, hd.specializes q'⟩ t) :=
      fun t => RegAtDom.genMap_stalkMap hd q'.1 q'.2 (hd.specializes q') t
    refine Eq.trans ?_ (congrArg (fun t => genMap ξ' q' t + (n : Ω') * ∑ k, genMap ξ' q' (a k) * i (ρ k)) hsum).symm
    show jd w (∑ k, genMap ξ' q' (a k) • B' k) = genMap ξ' q' (∑ k, a k * _) + (n : Ω') * ∑ k, genMap ξ' q' (a k) * i (ρ k)

    rw [map_sum, map_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [map_smul, smul_eq_mul, hBB k, hjd, hρe' k, map_add (f := _), map_mul, map_mul, hcomp k, hg, map_natCast]
    ring

theorem main : ∀ (X : Scheme.{0}) [IsLocallyNoetherian X] (Ω : Type) [Field Ω] [CharZero Ω] (ξ : Spec (CommRingCat.of Ω) ⟶ X), IsCptGen ξ → Flat.NormalCpt ξ → ∀ (G : Over X) [GrpObj G], IsSemiAbelian G → ∀ (L : LB G.left) (n : ℕ), 1 ≤ n → FullTorsion G ξ n → ∀ e, GenWeil G L ξ n e → ∀ (E : Type) [AddCommGroup E] [Module Ω E] (M : LieModel G ξ E) (X' : Scheme.{0}) [IsLocallyNoetherian X'] (Ω' : Type) [Field Ω'] (ξ' : Spec (CommRingCat.of Ω') ⟶ X'), IsCptGen ξ' → Flat.NormalCpt ξ' → ∀ (f : X' ⟶ X) (i : Ω →+* Ω'), GlobalTheory.CompanionTheory.Ar.Dominates ξ' ξ f i → ∀ (G' : Over X') [GrpObj G'] [IsCommMonObj G'] (φ : G'.left ⟶ G.left), IsGrpPullback G' G f φ → ∀ (L' : LB G'.left) (e' : (Over.mk ξ' ⟶ G') → (Over.mk ξ' ⟶ G') → Ω'ˣ), GenWeil G' L' ξ' n e' → ∀ (E' : Type) [AddCommGroup E'] [Module Ω' E'] (M' : LieModel G' ξ' E') (j : E →+ E') (jd : Module.Dual Ω E →+ Module.Dual Ω' E'), (∀ v, (M'.pt (j v)).left ≫ φ = spMap (dualMap i) ≫ (M.pt v).left) → (∀ w v, jd w (j v) = i (w v)) → M'.htOm L' n = (M.htOm L n).pull ξ' f jd ∧ M'.omLat = M.omLat.pull ξ' f jd := by
  intro X _ Ω _ _ ξ hξ hN G _ hG L n hn hF e he E _ _ M X' _ Ω' _ ξ' hξ' hN' f i hd G' _ _ φ hp L' e' he' E' _ _ M' j jd hj hjd
  haveI : IsCommMonObj G := hG.comm
  haveI : CharZero Ω' := charZero_of_injective_ringHom i.injective
  have hs : Smooth G.hom := hG.smooth
  have hG' : IsSemiAbelian G' := _root_.GlobalTheory.CompanionTheory.Ar.isSemiAbelian_of_isGrpPullback X X' G G' f φ hp hG
  obtain ⟨hF', t1, t2, tm, tu1, tu2⟩ := _root_.GlobalTheory.CompanionTheory.Ar.TorsPull.torsion_of_pullback X X' Ω Ω' ξ ξ' f i hd G G' φ hp n hF
  obtain ⟨c1, c2⟩ := _root_.GlobalTheory.CompanionTheory.Ar.TorsionChars.chars_descend Ω Ω' i (Over.mk ξ ⟶ G) (Over.mk ξ' ⟶ G') (fun a c => a.left ≫ φ = spMap i ≫ c.left)
    n hn t1 t2 tm tu1 tu2 e e' (fun x g g' _ hg hg' => he.mul_right x g g' ‹_› hg hg') he.perfect he.nondeg
    (fun x g g' _ hg hg' => he'.mul_right x g g' ‹_› hg hg') he'.perfect
  have om := om_pull hξ hξ' hd hp hs M M' j jd hj hjd
  have hpull := fun q' {y y'} hy hy' hc {w} hw =>
    ht_pull (e := e) (e' := e') hξ hξ' hd hp hs he hF hF' he' t1 t2 M M' j jd hj hjd q' (y := y) (y' := y') hy hy' hc (w := w) hw
  obtain ⟨hext, hspan, -⟩ := LiePull.main X X' Ω Ω' ξ ξ' f i G G' φ E E' M M' j hξ hξ' hd hp hs hj
  have hjs : ∀ (a : Ω) (w : Module.Dual Ω E), jd (a • w) = i a • jd w := by
    intro a w
    refine LinearMap.ext_on hspan ?_
    rintro _ ⟨v, rfl⟩
    simp [hjd]
  refine ⟨?_, om⟩
  funext q'
  have hsp := hd.specializes q'
  obtain ⟨h', hreg, -⟩ := RegAtDom.regAt_dominates X Ω ξ X' Ω' ξ' f i hd q'
  rw [Lat.pull_apply _ hd]
  apply le_antisymm
  · refine Submodule.span_le.2 ?_
    rintro w' ⟨y', hy', hw'⟩
    obtain ⟨y, hy, hc⟩ := c1 y' hy'
    obtain ⟨⟨U, hU, wf, hwf⟩, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.htLat_exists_lifts X Ω ξ hξ hN G hG L n hn hF e he E M ⟨f q'.1, hsp⟩
    have h0 := hwf y hy ⟨f q'.1, hsp⟩ hU
    have h1 := hpull q' hy hy' hc h0
    obtain ⟨u, hu, rfl⟩ := (_root_.GlobalTheory.CompanionTheory.Ar.HtUniq.isHTAt_iff X' Ω' ξ' hξ' hN' G' hG' L' n hn hF' e' he' E' M' y' q' _ w' hy' h1).1 hw'
    refine add_mem (Submodule.subset_span ⟨wf y, Submodule.subset_span ⟨y, hy, h0⟩, rfl⟩) ?_
    clear hw'
    rw [om, Lat.pull_apply _ hd] at hu
    have hnz : ∀ z ∈ M.omLat ⟨f q'.1, hsp⟩, n • z ∈ M.htOm L n ⟨f q'.1, hsp⟩ := by
      intro z hz
      have h2 := (_root_.GlobalTheory.CompanionTheory.Ar.HtUniq.isHTAt_iff X Ω ξ hξ hN G hG L n hn hF e he E M y ⟨f q'.1, hsp⟩ _ (wf y + n • z) hy h0).2 ⟨z, hz, rfl⟩
      have h3 : wf y + n • z ∈ M.htOm L n ⟨f q'.1, hsp⟩ := Submodule.subset_span ⟨y, hy, h2⟩
      have h4 : wf y ∈ M.htOm L n ⟨f q'.1, hsp⟩ := Submodule.subset_span ⟨y, hy, h0⟩
      simpa using sub_mem h3 h4
    induction hu using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨z, hz, rfl⟩ := hx
      rw [← map_nsmul]
      exact Submodule.subset_span ⟨_, hnz z hz, rfl⟩
    | zero => simp
    | add x z _ _ hx hz => rw [smul_add]; exact add_mem hx hz
    | smul a x _ hx =>
      rw [smul_comm]
      exact Submodule.smul_mem _ a hx
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨w, hw, rfl⟩
    induction hw using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨y, hy, hxw⟩ := hx
      obtain ⟨y', hy', hc⟩ := c2 y hy
      exact Submodule.subset_span ⟨y', hy', hpull q' hy hy' hc hxw⟩
    | zero => simp
    | add x z _ _ hx hz => rw [map_add]; exact add_mem hx hz
    | smul a x _ hx =>
      obtain ⟨a, ha⟩ := a
      have : jd ((⟨a, ha⟩ : regAt ξ ⟨f q'.1, hsp⟩) • x) = i a • jd x := hjs a x
      rw [SetLike.mem_coe, this]
      exact Submodule.smul_mem _ (⟨i a, hreg a ha⟩ : regAt ξ' q') hx

end GlobalTheory.CompanionTheory.Ar.HtPull
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.HodgeTateWeilPullback =====
