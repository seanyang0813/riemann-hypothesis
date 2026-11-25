module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedAlong
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenFarSet
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarried
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsSecGeneratesSpecialFibre
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibreStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorDescendedBundleNearClosedPoint
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.BoxProductLinearIndependent
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarriedOver
public import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsEquivOfIsPushout
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisTransitiveOnFibresFlatBaseChange
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GmEqMapGm
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFrameOfSectionUnitsOnClosedFibre
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatLocalBaseChangeOfProperProperties
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedSectionNonzeroNearClosedFibreStatement
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
import Mathlib.Tactic.Basify
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.RigidifiedIsoRespectsCubeAndSymmetry
import Mathlib.Tactic.Polynomial.Basic
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackPointsLiftMulInvStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceFibreSemiAbelianFieldPointStatement
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameTheoremOfCube, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameTheoremOfCubeStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedGaloisLinearisationCarriesRigidificati, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedGaloisLinearisationCarriesRigidificatiStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameBundleNearClosedPointFiniteEtaleExt, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefficientGermsZeroFiniteFreeBaseChange, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriedSectionOfFrameCarriedAlongLifts, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameCoefficientUnitGermsFiniteFree, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCoefficientsDescendFiniteFreeAffineOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisActsTransitivelyFibresFlatBaseChange, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedDescendFiniteEtaleExtension, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameNearClosedFibrePoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameNearClosedFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameNearClosedFibreStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameTheoremOfCube =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameTheoremOfCube", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedAlong\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenFarSet\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarried\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsSecGeneratesSpecialFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.CarriedCubeGen

section
variable {X Y Y₀ : Scheme.{0}} {L : LB X}

abbrev TestClass (L : LB X) (Y : Scheme.{0}) : Type 1 :=
  ∀ (f : X ⟶ X) (_ : LB.Iso L (L.pull f)) (Z : Scheme.{0}) (_ _ : Z ⟶ Y), Prop

def CTriv (L : LB X) (Y : Scheme.{0}) (A : TestClass L Y)
    (F : ∀ (U : Type) [CommGroup U], ((Y ⟶ X) → U) → U) : Prop :=
  ∃ (K : Type) (_ : Fintype K) (φ : K → (Y ⟶ X)) (ε : K → ℤ) (t : LB.Gen (LB.LinComb L φ ε)), t.IsGen ∧
    (∀ (U : Type) [CommGroup U] (h : (Y ⟶ X) → U), ∏ k, h (φ k) ^ ε k = F U h) ∧
    ∀ f w Z r r', A f w Z r r' → ∀ (z : Z) (J J' : (Z ⟶ X) → L.ι), Good L z J → Good L z J' →
      val t r' z J' = F _ (fun ψ => gw w (r ≫ ψ) z (J' ((r ≫ ψ) ≫ f)) (J (r ≫ ψ))) * val t r z J

variable {A : TestClass L Y}

theorem CTriv.congr {F F' : ∀ (U : Type) [CommGroup U], ((Y ⟶ X) → U) → U} (h : CTriv L Y A F)
    (e : ∀ (U : Type) [CommGroup U] (g : (Y ⟶ X) → U), F U g = F' U g) : CTriv L Y A F' := by
  obtain ⟨K, _, φ, ε, t, ht, e₁, e₂⟩ := h
  exact ⟨K, inferInstance, φ, ε, t, ht, fun U _ g => (e₁ U g).trans (e U g),
    fun f w Z r r' hA z J J' hJ hJ' => (e₂ f w Z r r' hA z J J' hJ hJ').trans (by rw [e])⟩

theorem CTriv.mul {F F' : ∀ (U : Type) [CommGroup U], ((Y ⟶ X) → U) → U} (h : CTriv L Y A F)
    (h' : CTriv L Y A F') : CTriv L Y A (fun U _ g => F U g * F' U g) := by
  obtain ⟨K, _, φ, ε, t, ht, e, c⟩ := h
  obtain ⟨K', _, φ', ε', t', ht', e', c'⟩ := h'
  refine ⟨K ⊕ K', inferInstance, _, _, LB.mulGen L φ ε φ' ε' t t', DVR.mulGen_isGen _ _ _ _ _ _ _ ht ht',
    fun U _ g => (Fintype.prod_sum_type _).trans (congrArg₂ (· * ·) (e U g) (e' U g)),
    fun f w Z r r' hA z J J' hJ hJ' => ?_⟩
  rw [val_mul hJ', val_mul hJ, c f w Z r r' hA z J J' hJ hJ', c' f w Z r r' hA z J J' hJ hJ']
  exact _root_.mul_mul_mul_comm _ _ _ _

theorem CTriv.inv {F : ∀ (U : Type) [CommGroup U], ((Y ⟶ X) → U) → U} (h : CTriv L Y A F) :
    CTriv L Y A (fun U _ g => (F U g)⁻¹) := by
  obtain ⟨K, _, φ, ε, t, ht, e, c⟩ := h
  refine ⟨K, inferInstance, _, _, LB.invGen L φ ε t, DVR.invGen_isGen _ _ _ _ ht, fun U _ g => ?_,
    fun f w Z r r' hA z J J' hJ hJ' => ?_⟩
  · simp only [zpow_neg, Finset.prod_inv_distrib, e U g]
  · rw [val_inv, val_inv, c f w Z r r' hA z J J' hJ hJ', mul_inv]

theorem CTriv.exists_gen (hL : L.IsLB) {F : ∀ (U : Type) [CommGroup U], ((Y ⟶ X) → U) → U} (h : CTriv L Y A F)
    (g : Y ⟶ X) (hg : ∀ (U : Type) [CommGroup U] (u : (Y ⟶ X) → U), F U u = u g) :
    ∃ t : LB.Gen (L.pull g), t.IsGen ∧ ∀ f w Z r r', A f w Z r r' → ∀ (z : Z) (J J' : (Z ⟶ X) → L.ι),
      Good L z J → Good L z J' →
      val t r' z J' = gw w (r ≫ g) z (J' ((r ≫ g) ≫ f)) (J (r ≫ g)) * val t r z J := by
  obtain ⟨K, _, φ, ε, t, ht, e, c⟩ := h
  obtain ⟨t', ht', hv⟩ := Geo.Tor.exists_gen hL (φ' := fun _ : PUnit => g) (ε' := fun _ => 1)
    (fun U _ u => by rw [e, hg]; simp) t ht
  refine ⟨t', ht', fun f w Z r r' hA z J J' hJ hJ' => ?_⟩
  rw [hv _ _ z J hJ, hv _ _ z J' hJ', c f w Z r r' hA z J J' hJ hJ', hg]

theorem ctriv_of_pmaps {K : Type} [Fintype K] {φ : K → (Y₀ ⟶ X)} {ε : K → ℤ} (t : LB.Gen (LB.LinComb L φ ε))
    (ht : t.IsGen) (p : Y ⟶ Y₀)
    (hA : ∀ f w Z r r', A f w Z r r' → ∃ h : Y₀ ⟶ Y₀, PMaps w φ φ ε t t h ∧ (∀ k, φ k ≫ f = h ≫ φ k) ∧
      r' ≫ p = (r ≫ p) ≫ h) :
    CTriv L Y A (fun _ _ g => ∏ k, g (p ≫ φ k) ^ ε k) := by
  refine ⟨K, inferInstance, _, _, LB.pullGen L φ ε t p, DVR.pullGen_isGen _ _ _ _ ht _, fun _ _ _ => rfl,
    fun f w Z r r' H z J J' hJ hJ' => ?_⟩
  obtain ⟨h, hm, hc, e⟩ := hA f w Z r r' H
  rw [val_pull hJ', val_pull hJ, e, val_of t _ z J' (fun k => J' (((r ≫ p) ≫ φ k) ≫ f))
    (fun k => by simp only [Category.assoc, hc]),
    hm Z (r ≫ p) z _ (fun k => J ((r ≫ p) ≫ φ k)) (fun k => hJ' (((r ≫ p) ≫ φ k) ≫ f))
      (fun k => hJ ((r ≫ p) ≫ φ k))]
  refine congrArg₂ (· * ·) ?_ rfl
  simp only [Category.assoc]

theorem gs_stalk {Z : Scheme.{0}} (κ : Z ⟶ Y) (z : Z) (r : Y ⟶ X) (U : X.Opens) (h : r (κ z) ∈ U)
    (a : Γ(X, U)) : gs (κ ≫ r) z U a = (κ.stalkMap z).hom (gs r (κ z) U a) := by
  rw [gs_eq (κ ≫ r) z U h, gs_eq r (κ z) U h]
  exact (Scheme.Hom.germ_stalkMap_apply κ (r ⁻¹ᵁ U) z h _).symm

theorem secCarried_along {θ : L.Sec} {f : X ⟶ X} {w : LB.Iso L (L.pull f)} (h : SecCarried L θ f w)
    {Z : Scheme.{0}} (ψ : Z ⟶ X) (z : Z) (j k : L.ι) (hk : ψ z ∈ L.U k) (hj : f (ψ z) ∈ L.U j) :
    gs (ψ ≫ f) z (L.U j) (θ.f j) = (gw w ψ z j k).val * gs ψ z (L.U k) (θ.f k) := by
  have e := congrArg (ψ.stalkMap z).hom (h (ψ z) j k hk hj)
  have e₁ := gs_stalk ψ z (𝟙 X) (L.U k) hk (θ.f k)
  have e₂ := _root_.GlobalTheory.BundleExt.gm_comp ψ z (𝟙 X) ((L.pull f).U (fun _ => j) ⊓ L.U k) ⟨mem_pull.2 hj, hk⟩ (w.s (fun _ => j, k))
  rw [Category.comp_id] at e₁ e₂
  rw [gs_stalk ψ z f _ hj, gs_eq f _ _ hj, e, map_mul, e₁, gs_eq (𝟙 X) (ψ z) _ hk, gw, gw, e₂]
  rfl

theorem ctriv_of_sec (θ : L.Sec) (g : Y ⟶ X) (hg : ∀ y, g y ∈ secNz θ)
    (hA : ∀ f w Z r r', A f w Z r r' → SecCarried L θ f w ∧ r' ≫ g = (r ≫ g) ≫ f) :
    CTriv L Y A (fun _ _ u => u g) := by
  have hu : ∀ j, IsUnit ((SpecialFibreGenerator.secAlong θ g).f j) := fun j =>
    Y.toRingedSpace.isUnit_of_isUnit_germ _ _ fun y hy => by
      obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.1 (hg y)
      obtain ⟨k, hk⟩ := TopologicalSpace.Opens.mem_iSup.1 (SpecialFibreGenerator.mem_nonzeroLocus_secAlong θ g hi)
      exact (Y.mem_basicOpen _ y hy).1 (SpecialFibreGenerator.mem_basicOpen_of_chart _ hy hk)
  let t : LB.Gen (LB.LinComb L (K := Fin 1) (fun _ ↦ g) fun _ ↦ ((1 : ℕ) : ℤ)) := ⟨fun j => (hu j).unit⟩
  have hv : ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) (J : (Z ⟶ X) → L.ι), Good L z J →
      (val t r z J).val = gs (r ≫ g) z (L.U (J (r ≫ g))) (θ.f _) := fun Z r z J hJ => by
    have hm := hJ.mem (fun _ : Fin 1 => g) r
    exact (gs_unit r z _ hm _).symm.trans ((gs_res r z (LB.wchart_le L (fun _ : Fin 1 => g) _ 0) hm _).trans
      (gs_pull r g z _ (hJ (r ≫ g)) _))
  refine ⟨Fin 1, inferInstance, _, _, t,
    fun i j => Units.ext ((SpecialFibreGenerator.secAlong θ g).compat i j), fun U _ u => by simp,
    fun f w Z r r' H z J J' hJ hJ' => Units.ext ?_⟩
  obtain ⟨hs, e⟩ := hA f w Z r r' H
  rw [Units.val_mul, hv _ _ z J hJ, hv _ _ z J' hJ', e]
  exact secCarried_along hs (r ≫ g) z _ _ (hJ _) (hJ' ((r ≫ g) ≫ f))

theorem stalk_units_injective {Z : Scheme.{0}} (i : Z ⟶ Y) [IsOpenImmersion i] (z : Z) :
    Function.Injective (Units.map (i.stalkMap z).hom.toMonoidHom) := fun _ _ h =>
  Units.ext ((ConcreteCategory.bijective_of_isIso (i.stalkMap z)).1 (congrArg Units.val h))

theorem exists_units (x : Y ⟶ X) (W : Y.Opens) (t : LB.Gen (L.pull (W.ι ≫ x))) :
    ∃ τ : ∀ k, Γ(Y, W ⊓ x ⁻¹ᵁ L.U k)ˣ, ∀ (Z : Scheme.{0}) (r : Z ⟶ W) (z : Z) (k : L.ι), x (W.ι (r z)) ∈ L.U k →
      gm (r ≫ W.ι) z _ (τ k) = gm r z (LB.wchart L (fun _ : PUnit => W.ι ≫ x) (fun _ => k)) (t.s fun _ => k) := by
  have le : ∀ k, W.ι ⁻¹ᵁ (W ⊓ x ⁻¹ᵁ L.U k) ≤ LB.wchart L (fun _ : PUnit => W.ι ≫ x) (fun _ => k) :=
    fun k y hy => Set.mem_iInter.2 fun _ => hy.2
  have ex : ∀ k, ∃ u : Γ(Y, W ⊓ x ⁻¹ᵁ L.U k)ˣ, pullU W.ι _ u = res (le k) (t.s fun _ => k) := fun k => by
    have : IsIso (W.ι.app (W ⊓ x ⁻¹ᵁ L.U k)) := W.ι.isIso_app _ (by simp)
    refine ⟨Units.map (CategoryTheory.inv (W.ι.app (W ⊓ x ⁻¹ᵁ L.U k))).hom.toMonoidHom
      (res (le k) (t.s fun _ => k)), Units.ext ?_⟩
    exact CategoryTheory.IsIso.inv_hom_id_apply (W.ι.app (W ⊓ x ⁻¹ᵁ L.U k)) _
  choose τ hτ using ex
  refine ⟨τ, fun Z r z k hk => ?_⟩
  have hm : W.ι (r z) ∈ W ⊓ x ⁻¹ᵁ L.U k := ⟨(r z).2, hk⟩
  rw [← gm_pull r W.ι z _ hm, hτ]
  exact gm_res r z (le k) hm _

theorem exists_frame (hL : L.IsLB) (x : Y ⟶ X) (W : Y.Opens) (t : LB.Gen (L.pull (W.ι ≫ x))) (ht : t.IsGen) :
    ∃ τ : ∀ k, Γ(Y, W ⊓ x ⁻¹ᵁ L.U k)ˣ, FrameAlong L x W τ ∧
      ∀ (f : X ⟶ X) (w : LB.Iso L (L.pull f)) (h : Y ⟶ Y), x ≫ f = h ≫ x →
        (∀ (Z : Scheme.{0}) (r r' : Z ⟶ W), r' ≫ W.ι = (r ≫ W.ι) ≫ h → ∀ (z : Z) (J J' : (Z ⟶ X) → L.ι),
          Good L z J → Good L z J' → val t r' z J' =
            gw w (r ≫ W.ι ≫ x) z (J' ((r ≫ W.ι ≫ x) ≫ f)) (J (r ≫ W.ι ≫ x)) * val t r z J) →
        FrameCarriedAlong L x W τ f w h := by
  obtain ⟨τ, hτ⟩ := exists_units x W t
  refine ⟨τ, fun z k k' hz hk hk' => ?_, fun f w h hx H z j k hz hz' hk hj => ?_⟩
  · obtain ⟨y, rfl⟩ : ∃ y : W, W.ι y = z := ⟨⟨z, hz⟩, rfl⟩
    apply stalk_units_injective W.ι y
    have a := hτ _ (𝟙 _) y k hk
    have a' := hτ _ (𝟙 _) y k' hk'
    rw [Category.id_comp] at a a'
    rw [map_mul, ← _root_.GlobalTheory.BundleExt.gm_comp W.ι y (𝟙 Y) (W ⊓ x ⁻¹ᵁ L.U k) ⟨hz, hk⟩,
      ← _root_.GlobalTheory.BundleExt.gm_comp W.ι y (𝟙 Y) (W ⊓ x ⁻¹ᵁ L.U k') ⟨hz, hk'⟩,
      ← _root_.GlobalTheory.BundleExt.gm_comp W.ι y x (L.U k ⊓ L.U k') ⟨hk, hk'⟩, Category.comp_id, a, a']
    refine (gen_trans ht (𝟙 _) y (j := fun _ => k) (j' := fun _ => k') (Set.mem_iInter.2 fun _ => hk)
      (Set.mem_iInter.2 fun _ => hk')).trans (congrArg₂ (· * ·) ?_ rfl)
    refine (Fintype.prod_unique _).trans ((zpow_one _).trans ?_)
    rw [Category.id_comp]
  · obtain ⟨Z, i, hi, r, r', y, rfl, e, e'⟩ : ∃ (Z : Scheme.{0}) (i : Z ⟶ Y) (_ : IsOpenImmersion i) (r r' : Z ⟶ W)
        (y : Z), i y = z ∧ r ≫ W.ι = i ∧ r' ≫ W.ι = i ≫ h :=
      ⟨(W ⊓ h ⁻¹ᵁ W : Y.Opens), (W ⊓ h ⁻¹ᵁ W).ι, inferInstance, Y.homOfLE inf_le_left,
        IsOpenImmersion.lift W.ι ((W ⊓ h ⁻¹ᵁ W).ι ≫ h) (by
          rintro _ ⟨y, rfl⟩
          exact ⟨⟨h y.1, y.2.2⟩, rfl⟩), ⟨z, hz, hz'⟩, rfl, Scheme.homOfLE_ι _ _, IsOpenImmersion.lift_fac _ _ _⟩
    subst e
    have hfx : f (x (W.ι (r y))) ∈ L.U j := by
      have : (x ≫ f) (W.ι (r y)) = (h ≫ x) (W.ι (r y)) := by rw [hx]
      exact (show f (x (W.ι (r y))) = x (h (W.ι (r y))) from this) ▸ hj
    have hj' : x (W.ι (r' y)) ∈ L.U j := by
      have : (r' ≫ W.ι) y = ((r ≫ W.ι) ≫ h) y := by rw [e']
      exact (show W.ι (r' y) = h (W.ι (r y)) from this) ▸ hj
    obtain ⟨J, hJ, eJ⟩ := exists_good L hL y (fun _ : PUnit => r ≫ W.ι ≫ x) (fun _ => k) (fun _ _ _ => rfl)
      (fun _ => hk)
    obtain ⟨J', hJ', eJ'⟩ := exists_good L hL y (fun _ : PUnit => (r ≫ W.ι ≫ x) ≫ f) (fun _ => j)
      (fun _ _ _ => rfl) (fun _ => hfx)
    have c := H Z r r' e' y J J' hJ hJ'
    rw [val_of t r y J (fun _ => k) eJ, val_of t r' y J' (fun _ => j) (fun u => by
      rw [← eJ' u, ← Category.assoc, e']; simp only [Category.assoc, hx]), eJ ⟨⟩, eJ' ⟨⟩,
      ← hτ _ r y k hk, ← hτ _ r' y j hj', e'] at c
    apply stalk_units_injective (r ≫ W.ι) y
    rw [map_mul, ← _root_.GlobalTheory.BundleExt.gm_comp (r ≫ W.ι) y h (W ⊓ x ⁻¹ᵁ L.U j) ⟨hz', hj⟩,
      ← _root_.GlobalTheory.BundleExt.gm_comp (r ≫ W.ι) y (𝟙 Y) (W ⊓ x ⁻¹ᵁ L.U k) ⟨hz, hk⟩, Category.comp_id, c]
    refine congrArg₂ (· * ·) ?_ rfl
    rw [← Category.assoc]
    exact _root_.GlobalTheory.BundleExt.gm_comp (r ≫ W.ι) y x ((L.pull f).U (fun _ => j) ⊓ L.U k) ⟨mem_pull.2 hfx, hk⟩ _

end

section
variable {S : Scheme.{0}} {G : Over S} [GrpObj G] {T : Over S} {f : G.left ⟶ G.left} {fS : S ⟶ S}

theorem exists_subgroup (hc : IsGrpPullback G G fS f) (h : T.left ⟶ T.left) (hh : h ≫ T.hom = T.hom ≫ fS) :
    ∃ H : Subgroup (T ⟶ G), ∀ g, g ∈ H ↔ g.left ≫ f = h ≫ g.left :=
  ⟨(pushHom hc T).eqLocus (preHom (Over.homMk h hh : Over.mk (T.hom ≫ fS) ⟶ T)), fun _ =>
    ⟨fun e => congrArg (fun q => q.left) e, fun e => Over.OverMorphism.ext e⟩⟩

theorem lift_comm [IsCommMonObj G] (hc : IsGrpPullback G G fS f) (h : T.left ⟶ T.left)
    (hh : h ≫ T.hom = T.hom ≫ fS) (x u v : T ⟶ G) (hx : x.left ≫ f = h ≫ x.left) (hu : u.left ≫ f = h ≫ u.left)
    (hv : v.left ≫ f = h ≫ v.left) :
    (lift x (lift u v)).left ≫ (cubeMapOf hc).F3 = h ≫ (lift x (lift u v)).left := by
  let U : Over.mk (T.hom ≫ fS) ⟶ T := Over.homMk h hh
  let V : Over.mk (T.hom ≫ fS) ⟶ Over.mk ((G3 G).hom ≫ fS) := Over.homMk (lift x (lift u v)).left (by
    show (lift x (lift u v)).left ≫ (G3 G).hom ≫ fS = T.hom ≫ fS
    rw [← Category.assoc, Over.w])
  have key : ∀ (i : Fin 3) (g : T ⟶ G), lift x (lift u v) ≫ x3 G i = g → g.left ≫ f = h ≫ g.left →
      V ≫ pushPt hc.1.w (x3 G i) = U ≫ g := fun i g e hg => Over.OverMorphism.ext (by
    show (lift x (lift u v)).left ≫ (x3 G i).left ≫ f = h ≫ g.left
    rw [← Category.assoc, ← Over.comp_left, e, hg])
  have e : V ≫ lift (pushPt hc.1.w (x3 G 0)) (lift (pushPt hc.1.w (x3 G 1)) (pushPt hc.1.w (x3 G 2))) =
      U ≫ lift x (lift u v) := by
    rw [comp_lift, comp_lift, comp_lift, comp_lift, key 0 x (by simp [x3]) hx, key 1 u (by simp [x3]) hu,
      key 2 v (by simp [x3]) hv]
  exact congrArg (fun q => q.left) e

end

end GlobalTheory.Mum.CarriedCubeGen

namespace GlobalTheory.Mum

open CarriedCubeGen

theorem exists_carried_frame_of_cubeTen {S : Scheme.{0}} (G' : Over S) [GrpObj G'] [IsCommMonObj G'] (L : RigLB G')
    (c : CubicalStr G' L) (θ : L.L.Sec) (T : Over S) (x a b c' : T ⟶ G') (W : T.left.Opens)
    (hW : ∀ g ∈ cubeTen x a b c', W ≤ g.left ⁻¹ᵁ secNz θ) :
    ∃ τ : ∀ k : L.L.ι, Γ(T.left, W ⊓ x.left ⁻¹ᵁ L.L.U k)ˣ, FrameAlong L.L x.left W τ ∧
      ∀ (f : G'.left ⟶ G'.left) (fS : S ⟶ S) (hc : IsGrpPullback G' G' fS f) (w : LB.Iso L.L (L.L.pull f)),
        w.IsGen → PMaps w (K := PUnit) (fun _ => eSec G') (fun _ => eSec G') (fun _ => 1) L.rig L.rig fS →
        PMaps w (thφ G' (x3 G')) (thφ G' (x3 G')) thε c.t c.t (cubeMapOf hc).F3 → SecCarried L.L θ f w →
        ∀ hT : T.left ⟶ T.left, hT ≫ T.hom = T.hom ≫ fS → x.left ≫ f = hT ≫ x.left → a.left ≫ f = hT ≫ a.left →
          b.left ≫ f = hT ≫ b.left → c'.left ≫ f = hT ≫ c'.left → FrameCarriedAlong L.L x.left W τ f w hT := by
  let B : Subgroup (T ⟶ G') := Subgroup.closure {x, a, b, c'}
  have Bx : x ∈ B := Subgroup.subset_closure (by simp)
  have Ba : a ∈ B := Subgroup.subset_closure (by simp)
  have Bb : b ∈ B := Subgroup.subset_closure (by simp)
  have Bc : c' ∈ B := Subgroup.subset_closure (by simp)
  let A : TestClass L.L W := fun f w Z r r' => ∃ (fS : S ⟶ S) (hc : IsGrpPullback G' G' fS f) (hT : T.left ⟶ T.left),
    PMaps w (K := PUnit) (fun _ => eSec G') (fun _ => eSec G') (fun _ => 1) L.rig L.rig fS ∧
    PMaps w (thφ G' (x3 G')) (thφ G' (x3 G')) thε c.t c.t (cubeMapOf hc).F3 ∧ SecCarried L.L θ f w ∧
    hT ≫ T.hom = T.hom ≫ fS ∧ (∀ g ∈ B, g.left ≫ f = hT ≫ g.left) ∧ r' ≫ W.ι = (r ≫ W.ι) ≫ hT
  have s : ∀ g ∈ cubeTen x a b c', g ∈ B → CTriv L.L W A (fun _ _ u => u (W.ι ≫ g.left)) := fun g hg gB =>
    ctriv_of_sec θ _ (fun y => hW g hg y.2) (by
      rintro f w Z r r' ⟨fS, hc, hT, -, -, hs, -, hB, e⟩
      refine ⟨hs, ?_⟩
      rw [← Category.assoc, e]
      simp only [Category.assoc, hB g gB])
  have cub : ∀ u ∈ B, ∀ v ∈ B, CTriv L.L W A (fun _ _ h =>
      h (W.ι ≫ (x * u * v).left) * (h (W.ι ≫ (x * u).left))⁻¹ * (h (W.ι ≫ (x * v).left))⁻¹ *
        (h (W.ι ≫ (u * v).left))⁻¹ * h (W.ι ≫ x.left) * h (W.ι ≫ u.left) * h (W.ι ≫ v.left) *
        (h (W.ι ≫ (1 : T ⟶ G').left))⁻¹) := fun u hu v hv =>
    (ctriv_of_pmaps (L := L.L) (φ := thφ G' (x3 G')) (ε := thε) c.t c.isGen (W.ι ≫ (lift x (lift u v)).left) (by
      rintro f w Z r r' ⟨fS, hc, hT, -, hm, -, hh, hB, e⟩
      refine ⟨_, hm, fun I => (cubeMapOf hc).psum_comm I.down, ?_⟩
      rw [← Category.assoc, e]
      simp only [Category.assoc, lift_comm hc hT hh x u v (hB x Bx) (hB u hu) (hB v hv)])).congr fun U _ g => by
      simp only [Category.assoc]
      exact prod_cub x u v (fun ψ => g (W.ι ≫ ψ))
  have e : CTriv L.L W A (fun _ _ h => h (W.ι ≫ (1 : T ⟶ G').left)) :=
    (ctriv_of_pmaps (L := L.L) (φ := fun _ : PUnit => eSec G') (ε := fun _ => 1) L.rig L.rigGen (W.ι ≫ T.hom) (by
      rintro f w Z r r' ⟨fS, hc, hT, hm, -, -, hh, -, e⟩
      refine ⟨_, hm, fun _ => (cubeMapOf hc).e_comm, ?_⟩
      show r' ≫ W.ι ≫ T.hom = (r ≫ W.ι ≫ T.hom) ≫ fS
      rw [← Category.assoc, e]
      simp only [Category.assoc, hh])).congr fun U _ g => by
      rw [Fintype.prod_unique, zpow_one]
      exact congrArg g (Category.assoc _ _ _)
  have Bbc := B.mul_mem Bb Bc
  have s₁ := s (x * a) (by simp [cubeTen]) (B.mul_mem Bx Ba)
  have s₂ := s (x * a⁻¹) (by simp [cubeTen]) (B.mul_mem Bx (B.inv_mem Ba))
  have s₃ := s a (by simp [cubeTen]) Ba
  have s₄ := s a⁻¹ (by simp [cubeTen]) (B.inv_mem Ba)
  have s₅ := s (x * b) (by simp [cubeTen]) (B.mul_mem Bx Bb)
  have s₆ := s (x * c') (by simp [cubeTen]) (B.mul_mem Bx Bc)
  have s₇ := s (x * (b * c')⁻¹) (by simp [cubeTen]) (B.mul_mem Bx (B.inv_mem Bbc))
  have s₈ := s b (by simp [cubeTen]) Bb
  have s₉ := s c' (by simp [cubeTen]) Bc
  have s₀ := s (b * c')⁻¹ (by simp [cubeTen]) (B.inv_mem Bbc)
  have c₁ := cub a Ba a⁻¹ (B.inv_mem Ba)
  have c₂ := cub b Bb c' Bc
  have c₃ := cub (b * c') Bbc (b * c')⁻¹ (B.inv_mem Bbc)
  have t₂ := ((((c₁.mul s₁).mul s₂).mul s₃.inv).mul s₄.inv)
  have t₃ := (((((((c₂.mul c₃).mul s₅).mul s₆).mul s₇).mul s₈.inv).mul s₉.inv).mul s₀.inv)
  obtain ⟨t, ht, hv⟩ := ((t₃.mul t₂.inv).mul e).exists_gen L.isLB (W.ι ≫ x.left) fun U _ g => by
    simp only [mul_inv_cancel_right, mul_inv_cancel, _root_.mul_assoc x b c']
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_inv]
    abel
  obtain ⟨τ, hτ, hcar⟩ := exists_frame L.isLB x.left W t ht
  refine ⟨τ, hτ, fun f fS hc w _ hr hm hs hT hh hx ha hb hc' => hcar f w hT hx fun Z r r' er =>
    hv f w Z r r' ⟨fS, hc, hT, hr, hm, hs, hh, ?_, er⟩⟩
  obtain ⟨H, hH⟩ := exists_subgroup hc hT hh
  have le : B ≤ H := (Subgroup.closure_le H).2 (by
    rintro g (rfl | rfl | rfl | rfl)
    exacts [(hH _).2 hx, (hH _).2 ha, (hH _).2 hb, (hH _).2 hc'])
  exact fun g hg => (hH g).1 (le hg)

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameTheoremOfCube =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameTheoremOfCubeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameTheoremOfCubeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedAlong\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenFarSet\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarried\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameTheoremOfCube\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameTheoremOfCubeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedGaloisLinearisationCarriesRigidificati =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedGaloisLinearisationCarriesRigidificati", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.RigidifiedIsoRespectsCubeAndSymmetry\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.RigCubCarry

theorem pmaps_of_pullGen {X X' Y Y' : Scheme.{0}} {L : LB X} {L' : LB X'} {F : X' ⟶ X} {K : Type} [Fintype K]
    {w : LB.Iso L' (L.pull F)} {φ' : K → (Y' ⟶ X')} {φ : K → (Y ⟶ X)} {ε : K → ℤ} {a : LB.Gen (LB.LinComb L' φ' ε)}
    {t : LB.Gen (LB.LinComb L φ ε)} {h : Y' ⟶ Y} (hc : ∀ k, φ' k ≫ F = h ≫ φ k)
    (H : PMaps w φ' (fun k => h ≫ φ k) ε a (LB.pullGen L φ ε t h) (𝟙 Y')) : PMaps w φ' φ ε a t h := by
  intro Z r z p q hp hq
  have e := H Z r z p q hp hq
  rw [Category.comp_id] at e
  have hm' : ∀ k, (h ≫ φ k) (r z) ∈ L.U (p k) := fun k => by
    rw [← hc k]; exact hp k
  have hm : r z ∈ LB.wchart L (fun k => h ≫ φ k) p := Set.mem_iInter.2 hm'
  have hm2 : h (r z) ∈ LB.wchart L φ p := Set.mem_iInter.2 hm'
  refine Eq.trans ?_ e
  exact ((gm_res r z _ hm _).trans (gm_pull r h z _ hm2 _)).symm


open RigidIsoCube in
theorem surjective_appTop_tripleProduct_uniformisedGroup (R : Type) [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
    {A : PolAV (Spec (CommRingCat.of (FractionRing R)))} (G : Over (Spec (CommRingCat.of R))) [GrpObj G]
    [IsCommMonObj G] (U : UnifPre I D A G) :
    Function.Surjective ((snd G (G ⊗ G)).left ≫ (snd G G).left ≫ G.hom).appTop.hom := by
  have hG : GlobalFnsSt := GlobalTheory.globalFns_holds
  have := U.smooth
  have : IsDominant (jK R) := ⟨(PrimeSpectrum.denseRange_comap_iff_ker_le_nilRadical _).2
    (((RingHom.injective_iff_ker_eq_bot _).1 (IsFractionRing.injective R (FractionRing R))).le.trans bot_le)⟩
  have := IsSchemeTheoreticallyDominant.of_isDominant (jK R)
  have hg : IsPullback (U.gen.inv.left ≫ pullback.fst G.hom (jK R)) A.A.hom G.hom (jK R) := by
    have : IsIso U.gen.inv.left := inferInstanceAs (IsIso ((Over.forget _).map U.gen.inv))
    have s : IsPullback U.gen.inv.left A.A.hom (pullback.snd G.hom (jK R)) (𝟙 _) :=
      IsPullback.of_horiz_isIso ⟨(Over.w U.gen.inv).trans (Category.comp_id _).symm⟩
    simpa using s.paste_horiz (IsPullback.of_hasPullback G.hom (jK R))
  have s₁ : Function.Surjective G.hom.appTop.hom :=
    surjective_appTop_of_baseChange hg (eSec G) (Over.w η[G]) (hG _ _ A.isAb).2
  have : Flat (G ⊗ G).hom := by rw [Over.tensorObj_hom]; infer_instance
  exact surj_comp (surjective_snd_of_generic hG (jK R) G A.isAb hg _)
      (surj_comp (surjective_snd_of_generic hG (jK R) G A.isAb hg _) s₁)

theorem cubeMap_tripleProduct_unit_eq {S : Scheme.{0}} {G' : Over S} [GrpObj G'] [IsCommMonObj G'] (m : CubeMap G' G') :
    (lift (1 : 𝟙_ (Over S) ⟶ G') (lift 1 1)).left ≫ m.F3 =
      (lift (1 : Over.mk (m.e ≫ (𝟙_ (Over S)).hom) ⟶ G') (lift 1 1)).left := by
  have ht : (toUnit (Over.mk (m.e ≫ (𝟙_ (Over S)).hom))).left = m.e := by
    have w := Over.w (toUnit (Over.mk (m.e ≫ (𝟙_ (Over S)).hom)))
    simpa using w
  apply hom_ext_triple
  intro i
  rw [Category.assoc, cubeMap_comp_proj_three m i, ← Category.assoc, ← Over.comp_left, ← Over.comp_left]
  have h1 : ∀ {T : Over S}, lift (1 : T ⟶ G') (lift 1 1) ≫ x3 G' i = 1 := by
    intro T; fin_cases i <;> simp [x3]
  rw [h1, h1, Hom.one_def, Hom.one_def, Over.comp_left, Over.comp_left, ht]
  have e₁ : (toUnit (𝟙_ (Over S))).left = 𝟙 _ := by simp
  rw [e₁, Category.id_comp]
  exact m.e_comm

end GlobalTheory.Mum.RigCubCarry

namespace GlobalTheory.Mum



open RigidIsoCube RigCubCarry in
theorem rigidified_galois_lin_carries_rig_and_cube : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (hB : Base R) (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R') (hF : FinExt ρ) (hG : IsGal ρ) (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'] (hS' : IsSemiAbelian G') (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U') (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (β : G'.left ⟶ G.left) (hS : IsSemiAbelian G) (hβ : IsGrpPullback G' G (spMap ρ) β) (hact : ∀ σ, a.act σ ≫ β = β) (σ : Gal ρ) (h : IsPullDeg (Gal.hom σ) D'.toPre D'.toPre) (bc : G' ≅ (Over.pullback (specOf (Gal.hom σ))).obj G'), bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ)) = a.act σ → ∀ hP : IsPullUnif (Gal.hom σ) h bc U' U', PMaps (Classical.choose hP.lg) (K := PUnit) (fun _ => eSec G') (fun _ => eSec G') (fun _ => 1) U'.LG.rig U'.LG.rig (specOf (Gal.hom σ)) ∧ ∀ hc : IsGrpPullback G' G' (specOf (Gal.hom σ)) (bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ))), PMaps (Classical.choose hP.lg) (thφ G' (x3 G')) (thφ G' (x3 G')) thε U'.cubG.t U'.cubG.t (cubeMapOf hc).F3 := by
  intro R _ _ _ hB R' _ _ _ ρ hF hGal D D' hD A' G' _ _ hS' U' a G _ _ β hS hβ hact σ h bc hbc hP
  obtain ⟨hw, he, hrig, -⟩ := Classical.choose_spec hP.lg
  refine ⟨(maps_iff _ _ (fun _ => eSec G') _ U'.LG.rig U'.LG.rig (specOf (Gal.hom σ)) _
    (rigPull_le _ _ he U'.LG.L) (fun _ => rfl)).1 hrig, fun hc => ?_⟩
  have sj := surjective_appTop_tripleProduct_uniformisedGroup R' G' U'.toUnifPre
  let e : 𝟙_ (Over (Sp R')) ⟶ G3 G' := lift 1 (lift 1 1)
  have he3 : e.left ≫ (snd G' (G' ⊗ G')).left ≫ (snd G' G').left ≫ G'.hom = 𝟙 _ := by
    rw [Over.w, Over.w]; exact Over.w e
  have pg := (isGen_iff _).1 hw
  have hψ : ∀ k : thK.{0}, thφ G' (x3 G') k ≫ (bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ))) =
      (cubeMapOf hc).F3 ≫ thφ G' (x3 G') k := fun k => (cubeMapOf hc).psum_comm k.down
  have eF := cubeMap_tripleProduct_unit_eq (cubeMapOf hc)
  refine pmaps_of_pullGen hψ (pmaps_of_section pg U'.LG.isLB U'.LG.isLB U'.cubG.t U'.cubG.isGen
    (LB.pullGen _ _ _ U'.cubG.t (cubeMapOf hc).F3) (DVR.pullGen_isGen _ _ _ _ U'.cubG.isGen _) hψ _ e.left he3 sj
    fun y J J' hJ hJ' => ?_)
  refine ((val_pull hJ _ _ _).trans (congrArg (fun r => val U'.cubG.t r y J) eF)).trans ?_
  have face {T : Over (Sp R')} {z : T.left} {I : (T.left ⟶ G'.left) → U'.LG.L.ι}
      (hI : Good U'.LG.L z I) (x y : T ⟶ G') :
      val U'.cubG.t (lift 1 (lift x y)).left z I = 1 := by
    have hv := val_corr hI (U'.cubG.face 0) (lift x y).left
    rw [val_one] at hv
    refine (Eq.trans ?_ (val_pull hI _ _ _).symm).trans hv
    congr 1
    rw [← Over.comp_left]
    simp [faceMap, x2, pzero, Hom.one_def]
  have f1 := face (T := Over.mk ((cubeMapOf hc).e ≫ (𝟙_ (Over (Sp R'))).hom)) hJ 1 1
  have p := prod_cub (1 : 𝟙_ (Over (Sp R')) ⟶ G') 1 1
    (fun q => gw (Classical.choose hP.lg) q y (J (q ≫ bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ)))) (J' q))
  rw [_root_.mul_one, _root_.mul_one] at p
  refine f1.trans (Eq.trans ?_ (congrArg₂ (· * ·) p (face hJ' 1 1)).symm)
  simp

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedGaloisLinearisationCarriesRigidificati =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedGaloisLinearisationCarriesRigidificatiStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedGaloisLinearisationCarriesRigidificatiStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedGaloisLinearisationCarriesRigidificati\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedGaloisLinearisationCarriesRigidificatiStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameBundleNearClosedPointFiniteEtaleExt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameBundleNearClosedPointFiniteEtaleExt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedAlong\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenFarSet\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarried\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameTheoremOfCubeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibreStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorDescendedBundleNearClosedPoint\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GrpPullbackPointsLiftMulInvStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceFibreSemiAbelianFieldPointStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RigidifiedGaloisLinearisationCarriesRigidificatiStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum



theorem exists_carried_frame_upstairs : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (hB : Base R) (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R') (hF : FinExt ρ) (hG : IsGal ρ) (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'] (hS' : IsSemiAbelian G') (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U') (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (β : G'.left ⟶ G.left) (hS : IsSemiAbelian G) (hβ : IsGrpPullback G' G (spMap ρ) β) (hact : ∀ σ, a.act σ ≫ β = β) (θ : U'.LG.L.Sec), (∀ (σ : Gal ρ) (h : IsPullDeg (Gal.hom σ) D'.toPre D'.toPre) (bc : G' ≅ (Over.pullback (specOf (Gal.hom σ))).obj G'), bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ)) = a.act σ → ∀ hP : IsPullUnif (Gal.hom σ) h bc U' U', PullOver hD h → SecCarried U'.LG.L θ _ (Classical.choose hP.lg)) → ∀ O : G.left.Opens, (∃ g ∈ O, G.hom g = closedPoint R) → (∀ g' : G'.left, β g' ∈ O → G.hom (β g') = closedPoint R → g' ∈ secNz θ) → ∀ y : G.left, IsClosed ({y} : Set G.left) → G.hom y = closedPoint R → ∃ (R₁ : Type) (_ : CommRing R₁) (_ : IsDomain R₁) (_ : IsLocalRing R₁) (ρ₁ : R →+* R₁), FinExt ρ₁ ∧ ρ₁.Etale ∧ ∃ V₀ : G.left.Opens, y ∈ V₀ ∧ ∃ τ : ∀ k : U'.LG.L.ι, Γ(pullback (G'.hom ≫ spMap ρ) (spMap ρ₁), (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ⁻¹ᵁ (β ⁻¹ᵁ V₀) ⊓ (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ⁻¹ᵁ U'.LG.L.U k)ˣ, FrameAlong U'.LG.L (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ((pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ⁻¹ᵁ (β ⁻¹ᵁ V₀)) τ ∧ (∀ (σ : Gal ρ) (h : IsPullDeg (Gal.hom σ) D'.toPre D'.toPre) (bc : G' ≅ (Over.pullback (specOf (Gal.hom σ))).obj G'), bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ)) = a.act σ → ∀ hP : IsPullUnif (Gal.hom σ) h bc U' U', PullOver hD h → ∀ f' : (pullback (G'.hom ≫ spMap ρ) (spMap ρ₁) : Scheme.{0}) ⟶ pullback (G'.hom ≫ spMap ρ) (spMap ρ₁), f' ≫ (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) = (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ≫ a.act σ → f' ≫ (pullback.snd (G'.hom ≫ spMap ρ) (spMap ρ₁)) = (pullback.snd (G'.hom ≫ spMap ρ) (spMap ρ₁)) → FrameCarriedAlong U'.LG.L (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ((pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ⁻¹ᵁ (β ⁻¹ᵁ V₀)) τ _ (Classical.choose hP.lg) f') := by
  intro R _ _ _ hB R' _ _ _ ρ hF hG D D' hD A' G' _ _ hS' U' a G _ _ β hS hβ hact θ hθ O hO hOθ y hyc hy
  have hR : AdmBase R (maximalIdeal R) := hB.1
  have hN : IsNoetherianRing R := hR.1
  have hI : IsIntegrallyClosed R := hR.2.2.1
  have := hS.smooth
  have hρf : IsFinite (spMap ρ) := (IsFinite.SpecMap_iff (CommRingCat.ofHom ρ)).2 hF.2.2
  have hβf : IsFinite β := MorphismProperty.of_isPullback hβ.1.flip hρf
  have hgi : GeometricallyIrreducible G.hom :=
    ⟨geometrically_iff_of_isClosedUnderIsomorphisms.mpr fun Ω _ s => GlobalTheory.T.irreducibleSpace_fibre_semiAbelian_fieldPoint _ G hS Ω s⟩
  have s₂ : Smooth (G ⊗ G).hom := inferInstanceAs (Smooth (pullback.fst G.hom G.hom ≫ G.hom))
  have i₂ : GeometricallyIrreducible (G ⊗ G).hom := GeometricallyIrreducible.comp (pullback.fst G.hom G.hom) G.hom
  have s₃ : Smooth (G ⊗ G ⊗ G).hom := inferInstanceAs (Smooth (pullback.fst G.hom (G ⊗ G).hom ≫ G.hom))
  have i₃ : GeometricallyIrreducible (G ⊗ G ⊗ G).hom :=
    GeometricallyIrreducible.comp (pullback.fst G.hom (G ⊗ G).hom) G.hom
  let O' : G.left.Opens := ⟨farSet β θ, isOpen_farSet β β.isClosedMap θ⟩
  obtain ⟨g, hgO, hg⟩ := hO
  have hgO' : g ∈ O' := fun g' e => by
    subst e
    exact hOθ g' hgO hg
  have hfin : IsFinite (G.left.fromSpecResidueField y ≫ G.hom) :=
    ClosedPt.isFinite_fromSpec G.hom y hyc (by rw [hy]; exact isClosed_singleton_closedPoint R)
  obtain ⟨N, hN₁, hN₂⟩ := ClosedPt.exists_open_good G.hom (G ⊗ G ⊗ G).hom y (ClosedPt.ten G)
    (fun f => f.left ⁻¹ᵁ O') fun f hf => by
      obtain ⟨q, h₁, h₂⟩ := ClosedPt.ten_meets G y g (hy.trans hg.symm) f hf
      exact ⟨q, show f.left q ∈ O' from h₁ ▸ hgO', h₂⟩
  rw [hy] at hN₁
  obtain ⟨R₁, _, _, _, ρ₁, t, hρ₁, het, ht, htN⟩ := _root_.GlobalTheory.Mum.exists_finEtale_section_of_smooth R hR (G ⊗ G ⊗ G) s₃ N hN₁
  have hρ₁f : IsFinite (spMap ρ₁) := (IsFinite.SpecMap_iff (CommRingCat.ofHom ρ₁)).2 hρ₁.2.2
  let m : pullback G.hom (spMap ρ₁) ⟶ pullback G.hom (G ⊗ G ⊗ G).hom :=
    pullback.lift (pullback.fst _ _) (pullback.snd _ _ ≫ t) (by rw [Category.assoc, ht]; exact pullback.condition)
  have m₁ : m ≫ pullback.fst _ _ = pullback.fst _ _ := pullback.lift_fst _ _ _
  have m₂ : m ≫ pullback.snd _ _ = pullback.snd _ _ ≫ t := pullback.lift_snd _ _ _
  have hU : IsOpen {p | ∀ f ∈ ClosedPt.ten G, f.left (m p) ∈ O'} := by
    have : {p | ∀ f ∈ ClosedPt.ten G, f.left (m p) ∈ O'} =
        ⋂ f ∈ {f | f ∈ ClosedPt.ten G}, m ⁻¹' (f.left ⁻¹' O') := by ext; simp
    rw [this]
    exact (List.finite_toSet _).isOpen_biInter fun f _ => (O'.isOpen.preimage f.left.continuous).preimage m.continuous
  let V : G.left.Opens := ⟨_, ((pullback.fst G.hom (spMap ρ₁)).isClosedMap _ hU.isClosed_compl).isOpen_compl⟩
  have hyV : y ∈ V := by
    rintro ⟨p, hp, hpy⟩
    refine hp (hN₂ (m p) ?_ ?_)
    · rw [← Scheme.Hom.comp_apply, m₁, hpy]
    · rw [← Scheme.Hom.comp_apply, m₂, Scheme.Hom.comp_apply]
      exact htN ⟨_, rfl⟩
  have hgood : ∀ p : (pullback G.hom (spMap ρ₁) : Scheme.{0}), pullback.fst G.hom (spMap ρ₁) p ∈ V →
      ∀ f ∈ ClosedPt.ten G, f.left (m p) ∈ O' := fun p hp => by
    by_contra h
    exact hp ⟨p, h, rfl⟩
  let q := pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)
  let s := pullback.snd (G'.hom ≫ spMap ρ) (spMap ρ₁)
  have hqs : (q ≫ β) ≫ G.hom = s ≫ spMap ρ₁ := by
    rw [Category.assoc, hβ.1.w]; exact pullback.condition
  let n' : (pullback (G'.hom ≫ spMap ρ) (spMap ρ₁) : Scheme.{0}) ⟶ pullback G.hom (spMap ρ₁) := pullback.lift (q ≫ β) s hqs
  have n₁ : n' ≫ pullback.fst _ _ = q ≫ β := pullback.lift_fst _ _ _
  have n₂ : n' ≫ pullback.snd _ _ = s := pullback.lift_snd _ _ _
  let ζ : (pullback (G'.hom ≫ spMap ρ) (spMap ρ₁) : Scheme.{0}) ⟶ (G ⊗ G ⊗ G ⊗ G).left := n' ≫ m
  let T : Over (Sp R') := Over.mk (q ≫ G'.hom)
  have hζ : ζ ≫ (fst G (G ⊗ G ⊗ G)).left = q ≫ β := by
    change (n' ≫ m) ≫ pullback.fst G.hom (G ⊗ G ⊗ G).hom = _
    rw [Category.assoc, m₁, n₁]
  have hw : ζ ≫ (G ⊗ G ⊗ G ⊗ G).hom = T.hom ≫ spMap ρ := by
    rw [← Over.w (fst G (G ⊗ G ⊗ G)), ← Category.assoc, hζ, Category.assoc, hβ.1.w]
    exact (Category.assoc _ _ _).symm
  obtain ⟨hl, hm⟩ := GlobalTheory.T.grpPullback_points_lift_and_compat_mul_inv (Sp R) (Sp R') (spMap ρ) G G' β hβ T (G ⊗ G ⊗ G ⊗ G) ζ hw
  obtain ⟨a₁, ha⟩ := hl (snd _ _ ≫ fst _ _)
  obtain ⟨b₁, hb⟩ := hl (snd _ _ ≫ snd _ _ ≫ fst _ _)
  obtain ⟨c₁, hc₁⟩ := hl (snd _ _ ≫ snd _ _ ≫ snd _ _)
  let x : T ⟶ G' := Over.homMk q rfl
  have hx : x.left ≫ β = ζ ≫ (fst G _).left := hζ.symm
  have mu := fun u v u' v' h₁ h₂ => (hm u v u' v' h₁ h₂).1
  have iv := fun u u' h₁ => (hm u u u' u' h₁ h₁).2
  have key : ∀ f' ∈ cubeTen x a₁ b₁ c₁, ∃ f ∈ ClosedPt.ten G, f'.left ≫ β = ζ ≫ f.left := by
    intro f hf
    simp only [cubeTen, List.mem_cons, List.not_mem_nil, or_false] at hf
    rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact ⟨_, by simp [ClosedPt.ten, cubeTen], mu _ _ _ _ hx ha⟩
    · exact ⟨_, by simp [ClosedPt.ten, cubeTen], mu _ _ _ _ hx (iv _ _ ha)⟩
    · exact ⟨_, by simp [ClosedPt.ten, cubeTen], ha⟩
    · exact ⟨_, by simp [ClosedPt.ten, cubeTen], iv _ _ ha⟩
    · exact ⟨_, by simp [ClosedPt.ten, cubeTen], mu _ _ _ _ hx hb⟩
    · exact ⟨_, by simp [ClosedPt.ten, cubeTen], mu _ _ _ _ hx hc₁⟩
    · exact ⟨_, by simp [ClosedPt.ten, cubeTen], mu _ _ _ _ hx (iv _ _ (mu _ _ _ _ hb hc₁))⟩
    · exact ⟨_, by simp [ClosedPt.ten, cubeTen], hb⟩
    · exact ⟨_, by simp [ClosedPt.ten, cubeTen], hc₁⟩
    · exact ⟨_, by simp [ClosedPt.ten, cubeTen], iv _ _ (mu _ _ _ _ hb hc₁)⟩
  have hten : ∀ g ∈ cubeTen x a₁ b₁ c₁, q ⁻¹ᵁ (β ⁻¹ᵁ V) ≤ g.left ⁻¹ᵁ secNz θ := by
    intro g' hg' z hz
    obtain ⟨f, hf, e⟩ := key g' hg'
    have hzV : pullback.fst G.hom (spMap ρ₁) (n' z) ∈ V := by
      rw [← Scheme.Hom.comp_apply, n₁, Scheme.Hom.comp_apply]; exact hz
    have h1 := hgood (n' z) hzV f hf
    refine h1 (g'.left z) ?_
    have e' := congrArg (fun φ => φ z) e
    simp only [Scheme.Hom.comp_apply] at e'
    exact e'
  obtain ⟨τ, hτ, hcar⟩ := _root_.GlobalTheory.Mum.exists_carried_frame_of_cubeTen G' U'.LG U'.cubG θ T x a₁ b₁ c₁ (q ⁻¹ᵁ (β ⁻¹ᵁ V)) hten
  refine ⟨R₁, inferInstance, inferInstance, inferInstance, ρ₁, hρ₁, het, V, hyV, τ, hτ, ?_⟩
  intro σ h bc hbc hP hPO f' hf'q hf's
  have hc : IsGrpPullback G' G' (specOf (Gal.hom σ)) (bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ))) :=
    hbc ▸ a.cart σ
  have hrc := _root_.GlobalTheory.Mum.rigidified_galois_lin_carries_rig_and_cube R hB R' ρ hF hG D D' hD A' G' hS' U' a G β hS hβ hact σ h bc hbc hP
  have hTw : f' ≫ T.hom = T.hom ≫ spMap (Gal.hom σ) := by
    change f' ≫ q ≫ G'.hom = (q ≫ G'.hom) ≫ _
    rw [← Category.assoc, hf'q, Category.assoc, (a.cart σ).1.w, Category.assoc]
  have hfn : f' ≫ n' = n' := by
    apply pullback.hom_ext
    · rw [Category.assoc, n₁, ← Category.assoc, hf'q, Category.assoc, hact]
    · rw [Category.assoc, n₂, hf's]
  have hfζ : f' ≫ ζ = ζ := by
    change f' ≫ n' ≫ m = n' ≫ m
    rw [← Category.assoc, hfn]
  have lift_eq : ∀ (u₁ : T ⟶ G') (u : G ⊗ G ⊗ G ⊗ G ⟶ G), u₁.left ≫ β = ζ ≫ u.left →
      u₁.left ≫ (bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ))) = f' ≫ u₁.left := by
    intro u₁ u hu
    rw [hbc]
    apply hβ.1.hom_ext
    · rw [Category.assoc, hact, hu, Category.assoc f', hu, ← Category.assoc, hfζ]
    · have e₁ : u₁.left ≫ G'.hom = T.hom := Over.w u₁
      rw [Category.assoc, (a.cart σ).1.w, ← Category.assoc, e₁, Category.assoc, e₁, hTw]
  exact hcar (bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ))) (specOf (Gal.hom σ)) hc
    (Classical.choose hP.lg) (Classical.choose_spec hP.lg).1 hrc.1 (hrc.2 hc) (hθ σ h bc hbc hP hPO) f' hTw
    (by rw [hbc]; exact hf'q.symm) (lift_eq a₁ _ ha) (lift_eq b₁ _ hb) (lift_eq c₁ _ hc₁)

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameBundleNearClosedPointFiniteEtaleExt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefficientGermsZeroFiniteFreeBaseChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefficientGermsZeroFiniteFreeBaseChange", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.BoxProductLinearIndependent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.FreeCoord

open GlobalTheory.BoxIndep TensorProduct

theorem eq_zero_of_germOf_max {B : CommRingCat.{0}} (a : B)
    (h : ∀ z : Spec B, z.asIdeal.IsMaximal → germOf (𝟙 (Spec B)) z a = 0) : a = 0 := by
  have : (Ideal.span {a}).annihilator = ⊤ := by
    by_contra hne
    obtain ⟨p, hp, hI⟩ := Ideal.exists_le_maximal _ hne
    let z : Spec B := ⟨p, hp.isPrime⟩
    have h1 : algebraMap B ((Spec.structureSheaf B).presheaf.stalk z) a = 0 := h z hp
    have := StructureSheaf.IsLocalization.to_stalk B z
    obtain ⟨c, hc⟩ := (IsLocalization.map_eq_zero_iff z.asIdeal.primeCompl _ _).1 h1
    exact c.2 (hI (Submodule.mem_annihilator_span_singleton _ _ |>.2 hc))
  have h1 : (1 : B) ∈ (Ideal.span {a}).annihilator := this ▸ Submodule.mem_top
  exact (one_smul B _).symm.trans ((Submodule.mem_annihilator_span_singleton _ _).1 h1)

theorem germ_eq_zero : ∀ (R R₁ : Type) [CommRing R] [CommRing R₁] (ρ₁ : R →+* R₁) (d : ℕ) (b : Fin d → R₁), (∀ r : R₁, ∃! c : Fin d → R, r = ∑ l, ρ₁ (c l) * b l) → ∀ (X : Scheme.{0}) (f : X ⟶ Sp R) (U : X.Opens) (a : Fin d → Γ(X, U)) (x : X), x ∈ U → (∀ z : (pullback f (spMap ρ₁) : Scheme.{0}), (pullback.fst f (spMap ρ₁)) z = x → ∑ l, gs (pullback.snd f (spMap ρ₁)) z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) * gs (pullback.fst f (spMap ρ₁)) z U (a l) = 0) → ∀ l, gs (𝟙 X) x U (a l) = 0 := by
  intro R R₁ _ _ ρ₁ d b hb X f U a x hx h
  let _ : Algebra R R₁ := ρ₁.toAlgebra
  let A : CommRingCat.{0} := X.presheaf.stalk x
  let _ : Algebra R A := (germOf (B := CommRingCat.of R) f x).toAlgebra
  have hli : LinearIndependent R b := Fintype.linearIndependent_iff.2 fun c hc =>
    congrFun ((hb 0).unique (y₁ := c) (y₂ := 0) (by simp only [Algebra.smul_def] at hc; exact hc.symm) (by simp))
  have hsp : ⊤ ≤ Submodule.span R (Set.range b) := fun r _ => by
    obtain ⟨c, hc, -⟩ := hb r
    rw [hc]
    exact Submodule.sum_mem _ fun l _ => Submodule.smul_mem _ (c l) (Submodule.subset_span ⟨l, rfl⟩)
  let β := Module.Basis.mk hli hsp
  have : Module.Finite R R₁ := Module.Finite.of_basis β
  let B : CommRingCat.{0} := CommRingCat.of (A ⊗[R] R₁)
  let iA : A ⟶ B := CommRingCat.ofHom (algebraMap A (A ⊗[R] R₁))
  let iR : CommRingCat.of R₁ ⟶ B := CommRingCat.ofHom (Algebra.TensorProduct.includeRight (R := R) (A := A) (B := R₁)).toRingHom
  have w : (Spec.map iA ≫ X.fromSpecStalk x) ≫ f = Spec.map iR ≫ spMap ρ₁ := by
    rw [Category.assoc, fromSpecStalk_comp (B := CommRingCat.of R)]
    refine (Spec.map_comp _ _).symm.trans (Eq.trans (congrArg Spec.map ?_) (Spec.map_comp _ _))
    ext r
    exact (IsScalarTower.algebraMap_apply R A (A ⊗[R] R₁) r).symm.trans
      ((Algebra.TensorProduct.includeRight (R := R) (A := A) (B := R₁)).commutes r).symm
  let r : Spec B ⟶ pullback f (spMap ρ₁) := pullback.lift _ _ w
  have r1 : r ≫ pullback.fst f (spMap ρ₁) = Spec.map iA ≫ X.fromSpecStalk x := pullback.lift_fst _ _ _
  have r2 : r ≫ pullback.snd f (spMap ρ₁) = Spec.map iR := pullback.lift_snd _ _ _
  have key : (∑ l, iR.hom (b l) * iA.hom (gs (𝟙 X) x U (a l)) : B) = 0 := by
    refine eq_zero_of_germOf_max _ fun z hz => ?_
    letI : z.asIdeal.IsMaximal := hz
    have hm : (z.asIdeal.comap (algebraMap A (A ⊗[R] R₁))).IsMaximal :=
      Ideal.isMaximal_under_of_isIntegral_of_isMaximal (R := A) z.asIdeal
    have hc : Spec.map iA z = closedPoint A := PrimeSpectrum.ext (IsLocalRing.eq_maximalIdeal hm)
    have hzx : pullback.fst f (spMap ρ₁) (r z) = x := by
      have : (r ≫ pullback.fst f (spMap ρ₁)) z = X.fromSpecStalk x (Spec.map iA z) := by rw [r1]; rfl
      rw [hc, Scheme.fromSpecStalk_closedPoint] at this
      exact this
    have e := congrArg (r.stalkMap z).hom (h (r z) hzx)

    rw [map_zero, map_sum] at e

    rw [← e, map_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [map_mul, map_mul, ← _root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.gs_comp r _ z ⊤ trivial, ← _root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.gs_comp r _ z U (hzx ▸ hx), r1, r2,
      gs_fromSpecStalk x hx, ← germOf_apply, ← germOf_map, ← germOf_map, Category.id_comp, Category.id_comp]
  have hli' := (Algebra.TensorProduct.basis A β).linearIndependent
  refine Fintype.linearIndependent_iff.1 hli' (fun l => gs (𝟙 X) x U (a l)) ?_
  refine Eq.trans (Finset.sum_congr rfl fun l _ => ?_) key
  rw [Algebra.smul_def, _root_.mul_comm, Algebra.TensorProduct.basis_apply, Module.Basis.mk_apply]
  rfl

end GlobalTheory.Mum.FreeCoord
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefficientGermsZeroFiniteFreeBaseChange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriedSectionOfFrameCarriedAlongLifts =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriedSectionOfFrameCarriedAlongLifts", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedAlong\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarriedOver\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoefficientGermsZeroFiniteFreeBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum

theorem secCarriedOver_of_lift {X Z P : Scheme.{0}} (q : Z ⟶ X) (p₁ : Z ⟶ P) (L : LB X) (W O : X.Opens) (hOW : O ≤ W)
    (τ : ∀ k : L.ι, Γ(Z, q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U k)ˣ) (d : ℕ) (B : Fin d → Γ(P, ⊤))
    (s : Fin d → ∀ k : L.ι, Γ(X, O ⊓ L.U k))
    (hdec : ∀ (z : Z) (k : L.ι), q z ∈ O → q z ∈ L.U k →
      gs (𝟙 Z) z (q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U k) (τ k).val = ∑ l, gs p₁ z ⊤ (B l) * gs q z (O ⊓ L.U k) (s l k))
    (huniq : ∀ (U : X.Opens) (a : Fin d → Γ(X, U)) (x : X), x ∈ U →
      (∀ z : Z, q z = x → ∑ l, gs p₁ z ⊤ (B l) * gs q z U (a l) = 0) → ∀ l, gs (𝟙 X) x U (a l) = 0)
    (φ : X ⟶ X) (w : LB.Iso L (L.pull φ)) (f' : Z ⟶ Z) (hf'q : f' ≫ q = q ≫ φ) (hf'p : f' ≫ p₁ = p₁)
    (hcar : FrameCarriedAlong L q (q ⁻¹ᵁ W) τ φ w f') (l : Fin d) : SecCarriedOver L O (s l) φ w := by
  have hpt : ∀ z, q (f' z) = φ (q z) := fun z => by
    rw [← Scheme.Hom.comp_apply, hf'q, Scheme.Hom.comp_apply]
  intro x j k hxO hφxO hxk hφxj
  let U' : X.Opens := O ⊓ L.U k ⊓ φ ⁻¹ᵁ (O ⊓ L.U j) ⊓ ((L.pull φ).U (fun _ => j) ⊓ L.U k)
  have h1 : U' ≤ φ ⁻¹ᵁ (O ⊓ L.U j) := fun _ h => h.1.2
  have h2 : U' ≤ (L.pull φ).U (fun _ => j) ⊓ L.U k := fun _ h => h.2
  have h3 : U' ≤ O ⊓ L.U k := fun _ h => h.1.1
  let a : Fin d → Γ(X, U') := fun l' =>
    (X.presheaf.map (homOfLE h1).op).hom ((φ.app (O ⊓ L.U j)).hom (s l' j)) -
      (X.presheaf.map (homOfLE h2).op).hom (w.s (fun _ => j, k)).val * (X.presheaf.map (homOfLE h3).op).hom (s l' k)
  have ha : ∀ {Y : Scheme.{0}} (g : Y ⟶ X) (y : Y) (hy : g y ∈ U') (l' : Fin d),
      gs g y U' (a l') = gs (g ≫ φ) y (O ⊓ L.U j) (s l' j) -
        (gm g y ((L.pull φ).U (fun _ => j) ⊓ L.U k) (w.s (fun _ => j, k))).val * gs g y (O ⊓ L.U k) (s l' k) := by
    intro Y g y hy l'
    have e1 : gs g y U' ((X.presheaf.map (homOfLE h1).op).hom ((φ.app (O ⊓ L.U j)).hom (s l' j))) =
        gs (g ≫ φ) y (O ⊓ L.U j) (s l' j) :=
      (gs_res g y h1 hy _).trans (gs_pull g φ y (O ⊓ L.U j) (h1 hy) _)
    have e2 : gs g y U' ((X.presheaf.map (homOfLE h2).op).hom (w.s (fun _ => j, k)).val) =
        (gm g y ((L.pull φ).U (fun _ => j) ⊓ L.U k) (w.s (fun _ => j, k))).val :=
      (gs_res g y h2 hy _).trans (gs_unit g y _ (h2 hy) _)
    have e3 : gs g y U' ((X.presheaf.map (homOfLE h3).op).hom (s l' k)) = gs g y (O ⊓ L.U k) (s l' k) :=
      gs_res g y h3 hy _
    rw [_root_.GlobalTheory.LBGerm.gs_sub g y U' hy, gs_mul g y U' hy, e1, e2, e3]
  have hxU : x ∈ U' := ⟨⟨⟨hxO, hxk⟩, hφxO, hφxj⟩, mem_pull.2 hφxj, hxk⟩
  have key := huniq U' a x hxU (by
    intro z hz
    have hzU : q z ∈ U' := hz ▸ hxU
    have hzO : q z ∈ O := hz ▸ hxO
    have hzk : q z ∈ L.U k := hz ▸ hxk
    have hzW : z ∈ q ⁻¹ᵁ W := hOW hzO
    have hf'zO : q (f' z) ∈ O := by rw [hpt, hz]; exact hφxO
    have hf'zj : q (f' z) ∈ L.U j := by rw [hpt, hz]; exact hφxj
    have hmj : q (f' z) ∈ O ⊓ L.U j := ⟨hf'zO, hf'zj⟩
    have hmWj : f' z ∈ q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U j := ⟨hOW hf'zO, hf'zj⟩
    have hmWk : (𝟙 Z) z ∈ q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U k := ⟨hzW, hzk⟩
    have hcz := hcar z j k hzW (hOW hf'zO) hzk hf'zj
    have S1 : ∑ l', gs p₁ z ⊤ (B l') * gs (q ≫ φ) z (O ⊓ L.U j) (s l' j) =
        (gm f' z (q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U j) (τ j)).val := by
      have e1 : ∀ l', gs p₁ z ⊤ (B l') = (f'.stalkMap z).hom (gs p₁ (f' z) ⊤ (B l')) := fun l' => by
        conv_lhs => rw [← hf'p]
        exact _root_.GlobalTheory.OneBasis.ThMove.gs_comp f' p₁ z ⊤ trivial _
      have e2 : ∀ l', gs (q ≫ φ) z (O ⊓ L.U j) (s l' j) = (f'.stalkMap z).hom (gs q (f' z) (O ⊓ L.U j) (s l' j)) :=
        fun l' => by rw [← hf'q]; exact _root_.GlobalTheory.OneBasis.ThMove.gs_comp f' q z _ hmj _

      simp only [e1, e2, ← map_mul, ← map_sum]
      rw [← hdec (f' z) j hf'zO hf'zj, ← _root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.gs_stalkMap f' z _ hmWj, gs_unit f' z _ hmWj]
    have S3 := hdec z k hzO hzk
    rw [gs_unit (𝟙 Z) z _ hmWk] at S3
    have e4 : ∀ l', gs p₁ z ⊤ (B l') * gs q z U' (a l') =
        gs p₁ z ⊤ (B l') * gs (q ≫ φ) z (O ⊓ L.U j) (s l' j) -
          (gw w q z j k).val * (gs p₁ z ⊤ (B l') * gs q z (O ⊓ L.U k) (s l' k)) := fun l' => by
      rw [ha q z hzU l', gw]; ring
    rw [Finset.sum_congr rfl (fun l' _ => e4 l'), Finset.sum_sub_distrib, ← Finset.mul_sum, S1, ← S3, hcz,
      Units.val_mul, sub_self])
  have e := key l
  rw [ha (𝟙 X) x hxU l, Category.id_comp, sub_eq_zero] at e
  exact e

theorem secCarriedOver_of_frameCarriedAlong : ∀ (R R₁ : Type) [CommRing R] [CommRing R₁] (ρ₁ : R →+* R₁) (d : ℕ) (b : Fin d → R₁), (∀ r : R₁, ∃! c : Fin d → R, r = ∑ l, ρ₁ (c l) * b l) → ∀ (X : Scheme.{0}) (f : X ⟶ Sp R) (L : LB X) (W O : X.Opens), O ≤ W → ∀ (τ : ∀ k : L.ι, Γ((pullback f (spMap ρ₁)), (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ W ⊓ (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ L.U k)ˣ) (s : Fin d → ∀ k : L.ι, Γ(X, O ⊓ L.U k)), (∀ (z : (pullback f (spMap ρ₁) : Scheme.{0})) (k : L.ι), (pullback.fst f (spMap ρ₁)) z ∈ O → (pullback.fst f (spMap ρ₁)) z ∈ L.U k → gs (𝟙 (pullback f (spMap ρ₁))) z ((pullback.fst f (spMap ρ₁)) ⁻¹ᵁ W ⊓ (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ L.U k) (τ k).val = ∑ l, gs (pullback.snd f (spMap ρ₁)) z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) * gs (pullback.fst f (spMap ρ₁)) z (O ⊓ L.U k) (s l k)) → ∀ (φ : X ⟶ X) (w : LB.Iso L (L.pull φ)), φ ≫ f = f → (∀ f' : (pullback f (spMap ρ₁)) ⟶ (pullback f (spMap ρ₁)), f' ≫ (pullback.fst f (spMap ρ₁)) = (pullback.fst f (spMap ρ₁)) ≫ φ → f' ≫ (pullback.snd f (spMap ρ₁)) = (pullback.snd f (spMap ρ₁)) → FrameCarriedAlong L (pullback.fst f (spMap ρ₁)) ((pullback.fst f (spMap ρ₁)) ⁻¹ᵁ W) τ φ w f') → ∀ l, SecCarriedOver L O (s l) φ w := by
  intro R R₁ _ _ ρ₁ d b hb X f L W O hOW τ s hdec φ w hφ hcar l
  have hcond : (pullback.fst f (spMap ρ₁) ≫ φ) ≫ f = pullback.snd f (spMap ρ₁) ≫ spMap ρ₁ := by
    rw [Category.assoc, hφ, pullback.condition]
  have hf'q : pullback.lift _ _ hcond ≫ pullback.fst f (spMap ρ₁) = pullback.fst f (spMap ρ₁) ≫ φ :=
    pullback.lift_fst _ _ _
  have hf'p : pullback.lift _ _ hcond ≫ pullback.snd f (spMap ρ₁) = pullback.snd f (spMap ρ₁) :=
    pullback.lift_snd _ _ _
  exact secCarriedOver_of_lift (pullback.fst f (spMap ρ₁)) (pullback.snd f (spMap ρ₁)) L W O hOW τ d
    (fun l => (Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) s hdec
    (fun U a x hx hz => _root_.GlobalTheory.Mum.FreeCoord.germ_eq_zero R R₁ ρ₁ d b hb X f U a x hx hz) φ w _ hf'q hf'p (hcar _ hf'q hf'p) l

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriedSectionOfFrameCarriedAlongLifts =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameCoefficientUnitGermsFiniteFree =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameCoefficientUnitGermsFiniteFree", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarriedOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem exists_isUnit_gs_of_frame_eq_sum : ∀ (R R₁ : Type) [CommRing R] [CommRing R₁] (ρ₁ : R →+* R₁) (d : ℕ) (b : Fin d → R₁) (X : Scheme.{0}) (f : X ⟶ Sp R) (L : LB X), L.IsLB → ∀ (W O : X.Opens), O ≤ W → ∀ (τ : ∀ k : L.ι, Γ((pullback f (spMap ρ₁)), (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ W ⊓ (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ L.U k)ˣ) (s : Fin d → ∀ k : L.ι, Γ(X, O ⊓ L.U k)), (∀ l, IsSecOver L O (s l)) → (∀ (z : (pullback f (spMap ρ₁) : Scheme.{0})) (k : L.ι), (pullback.fst f (spMap ρ₁)) z ∈ O → (pullback.fst f (spMap ρ₁)) z ∈ L.U k → gs (𝟙 (pullback f (spMap ρ₁))) z ((pullback.fst f (spMap ρ₁)) ⁻¹ᵁ W ⊓ (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ L.U k) (τ k).val = ∑ l, gs (pullback.snd f (spMap ρ₁)) z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) * gs (pullback.fst f (spMap ρ₁)) z (O ⊓ L.U k) (s l k)) → ∀ z : (pullback f (spMap ρ₁) : Scheme.{0}), (pullback.fst f (spMap ρ₁)) z ∈ O → ∃ l, ∀ k, (pullback.fst f (spMap ρ₁)) z ∈ L.U k → IsUnit (gs (𝟙 X) ((pullback.fst f (spMap ρ₁)) z) (O ⊓ L.U k) (s l k)) := by
  intro R R₁ _ _ ρ₁ d b X f L hL W O hOW τ s hs hτ z hz
  obtain ⟨k₀, hk₀⟩ := exists_chart hL ((pullback.fst f (spMap ρ₁)) z)
  have hm : (𝟙 (pullback f (spMap ρ₁) : Scheme.{0})) z ∈
      (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ W ⊓ (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ L.U k₀ := ⟨hOW hz, hk₀⟩
  have hm' : (pullback.fst f (spMap ρ₁)) z ∈ O ⊓ L.U k₀ := ⟨hz, hk₀⟩
  have hu : IsUnit (gs (𝟙 (pullback f (spMap ρ₁))) z
      ((pullback.fst f (spMap ρ₁)) ⁻¹ᵁ W ⊓ (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ L.U k₀) (τ k₀).val) := by
    rw [gs_unit _ z _ hm]
    exact Units.isUnit _
  rw [hτ z k₀ hz hk₀] at hu
  obtain ⟨l, -, hl⟩ := IsLocalRing.exists_of_isUnit_sum hu
  have hl2 := isUnit_of_mul_isUnit_right hl
  rw [_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.gs_stalkMap _ z _ hm'] at hl2
  have hl3 := (isUnit_map_iff _ _).1 hl2
  refine ⟨l, fun k hk => ?_⟩
  rw [hs l _ k k₀ hz hk hk₀]
  exact (Units.isUnit _).mul hl3

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameCoefficientUnitGermsFiniteFree =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCoefficientsDescendFiniteFreeAffineOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCoefficientsDescendFiniteFreeAffineOpen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedAlong\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarriedOver\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsEquivOfIsPushout\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj TensorProduct
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.FrameCoeff

variable {R R₁ : Type} [CommRing R] [CommRing R₁]

theorem exists_basis (ρ₁ : R →+* R₁) {d : ℕ} (b : Fin d → R₁)
    (hb : ∀ r : R₁, ∃! c : Fin d → R, r = ∑ l, ρ₁ (c l) * b l) :
    letI := ρ₁.toAlgebra; ∃ B : Module.Basis (Fin d) R R₁, ⇑B = b := by
  letI := ρ₁.toAlgebra
  have hs : ∀ (c : R) (x : R₁), c • x = ρ₁ c * x := fun c x => by
    rw [Algebra.smul_def, RingHom.algebraMap_toAlgebra]
  have hli : LinearIndependent R b := by
    refine Fintype.linearIndependent_iff.2 fun g hg i => ?_
    have h1 : (0 : R₁) = ∑ l, ρ₁ (g l) * b l := by
      rw [← hg]; simp only [hs]
    have h2 : (0 : R₁) = ∑ l, ρ₁ ((0 : Fin d → R) l) * b l := by simp
    exact congrFun ((hb 0).unique h1 h2) i
  refine ⟨Module.Basis.mk hli ?_, Module.Basis.coe_mk _ _⟩
  intro r _
  obtain ⟨c, hc, -⟩ := hb r
  rw [hc]
  refine Submodule.sum_mem _ fun l _ => ?_
  rw [← hs]
  exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨l, rfl⟩)

variable {X Z : Scheme.{0}}

theorem aff_coeff (ρ₁ : R →+* R₁) {d : ℕ} (b : Fin d → R₁)
    (hb : ∀ r : R₁, ∃! c : Fin d → R, r = ∑ l, ρ₁ (c l) * b l)
    {f : X ⟶ Sp R} {q : Z ⟶ X} {p : Z ⟶ Sp R₁} (H : IsPullback q p f (spMap ρ₁))
    {V : X.Opens} (hV : IsAffineOpen V) :
    (∀ t : Γ(Z, q ⁻¹ᵁ V), ∃ a : Fin d → Γ(X, V),
      t = ∑ l, GlobalTheory.AbLaw.cst p (q ⁻¹ᵁ V) (b l) * (q.app V).hom (a l)) ∧
    (∀ a : Fin d → Γ(X, V), ∑ l, GlobalTheory.AbLaw.cst p (q ⁻¹ᵁ V) (b l) * (q.app V).hom (a l) = 0 → a = 0) := by
  classical
  letI := ρ₁.toAlgebra
  obtain ⟨B, hB⟩ := exists_basis ρ₁ b hb
  have hg : ρ₁.Flat := by
    have : Module.Free R R₁ := Module.Free.of_basis B
    exact (inferInstance : Module.Flat R R₁)
  letI : Algebra R Γ(X, V) := (GlobalTheory.AbLaw.cst f V).toAlgebra
  obtain ⟨e, he⟩ := GlobalTheory.FlatSec.exists_equiv_of_isPushout (R := R) (q.app V) (GlobalTheory.AbLaw.cst p (q ⁻¹ᵁ V))
    (GlobalTheory.FlatSec.isPushout_app hg H hV.isCompact hV.isQuasiSeparated)
  have hsum : ∀ a : Fin d → Γ(X, V), e (∑ l, B l ⊗ₜ[R] a l) =
      ∑ l, GlobalTheory.AbLaw.cst p (q ⁻¹ᵁ V) (b l) * (q.app V).hom (a l) := by
    intro a; rw [map_sum]; simp only [he, hB]
  constructor
  · intro t
    refine ⟨fun l => TensorProduct.equivFinsuppOfBasisLeft B (e.symm t) l, ?_⟩
    rw [← hsum]
    have h := TensorProduct.equivFinsuppOfBasisLeft_symm_apply B (TensorProduct.equivFinsuppOfBasisLeft B (e.symm t))
    rw [LinearEquiv.symm_apply_apply, Finsupp.sum_fintype _ _ (by simp)] at h
    rw [← h, AddEquiv.apply_symm_apply]
  · intro a ha
    rw [← hsum] at ha
    have h0 : ∑ l, B l ⊗ₜ[R] a l = 0 := e.injective (ha.trans (map_zero e).symm)
    funext k
    have := congrArg (fun w => TensorProduct.equivFinsuppOfBasisLeft B w k) h0

    simpa [map_sum, TensorProduct.equivFinsuppOfBasisLeft_apply_tmul_apply, Module.Basis.repr_self,
    Finsupp.single_apply] using this

end GlobalTheory.FrameCoeff

namespace GlobalTheory.FrameCoeff

variable {R R₁ : Type} [CommRing R] [CommRing R₁] {X Z : Scheme.{0}}

theorem gs_cst_top (p : Z ⟶ Sp R₁) (z : Z) (c : R₁) :
    gs (𝟙 Z) z ⊤ (GlobalTheory.AbLaw.cst p ⊤ c) = gs p z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom c) := by
  have h1 := gs_res (𝟙 Z) z (le_top : (⊤ : Z.Opens) ≤ p ⁻¹ᵁ ⊤) trivial ((p.app ⊤).hom ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom c))
  have h2 := gs_pull (𝟙 Z) p z ⊤ trivial ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom c)
  rw [Category.id_comp] at h2
  exact h1.trans h2

theorem gs_comb_pt {d : ℕ} (b : Fin d → R₁) (p : Z ⟶ Sp R₁) (q : Z ⟶ X) (V : X.Opens) (z : Z) (hz : q z ∈ V)
    (a : Fin d → Γ(X, V)) :
    gs (𝟙 Z) z (q ⁻¹ᵁ V) (∑ l, GlobalTheory.AbLaw.cst p (q ⁻¹ᵁ V) (b l) * (q.app V).hom (a l)) =
      ∑ l, gs p z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) * gs q z V (a l) := by
  rw [GlobalTheory.FlatSec.gs_comb p q V z hz b a]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [gs_cst_top]

theorem exists_aff (U : X.Opens) (x : X) (hx : x ∈ U) : ∃ V : X.Opens, IsAffineOpen V ∧ x ∈ V ∧ V ≤ U := by
  obtain ⟨V, hV, hxV, hVU⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.mp X.isBasis_affineOpens) hx
  exact ⟨V, hV, hxV, hVU⟩

end GlobalTheory.FrameCoeff

namespace GlobalTheory.FrameCoeff

variable {R R₁ : Type} [CommRing R] [CommRing R₁] {X Z : Scheme.{0}}

theorem inj_gen (ρ₁ : R →+* R₁) {d : ℕ} (b : Fin d → R₁)
    (hb : ∀ r : R₁, ∃! c : Fin d → R, r = ∑ l, ρ₁ (c l) * b l)
    {f : X ⟶ Sp R} {q : Z ⟶ X} {p : Z ⟶ Sp R₁} (H : IsPullback q p f (spMap ρ₁))
    (U : X.Opens) (a : Fin d → Γ(X, U))
    (h : ∀ z : Z, q z ∈ U →
      ∑ l, gs p z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) * gs q z U (a l) = 0) :
    ∀ l, a l = 0 := by
  intro l
  apply fn_ext
  intro x hx
  obtain ⟨V, hV, hxV, hVU⟩ := exists_aff U x hx
  have h0 := (aff_coeff ρ₁ b hb H hV).2 (fun l => GlobalTheory.AbLaw.rs X hVU (a l)) (fn_ext fun z hz => by
    rw [gs_comb_pt b p q V z hz, _root_.GlobalTheory.UU.SchurComp.gs_zero]
    refine Eq.trans (Finset.sum_congr rfl fun l _ => ?_) (h z (hVU hz))
    rw [gs_res q z hVU hz])
  have e := congrFun h0 l
  have e2 := gs_res (𝟙 X) x hVU hxV (a l)
  simp only [Pi.zero_apply] at e
  rw [← e2]
  erw [e]
  rw [_root_.GlobalTheory.UU.SchurComp.gs_zero, _root_.GlobalTheory.UU.SchurComp.gs_zero]

theorem surj_gen (ρ₁ : R →+* R₁) {d : ℕ} (b : Fin d → R₁)
    (hb : ∀ r : R₁, ∃! c : Fin d → R, r = ∑ l, ρ₁ (c l) * b l)
    {f : X ⟶ Sp R} {q : Z ⟶ X} {p : Z ⟶ Sp R₁} (H : IsPullback q p f (spMap ρ₁))
    (U : X.Opens) (t : Γ(Z, q ⁻¹ᵁ U)) :
    ∃ a : Fin d → Γ(X, U), ∀ z : Z, q z ∈ U →
      gs (𝟙 Z) z (q ⁻¹ᵁ U) t =
        ∑ l, gs p z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) * gs q z U (a l) := by
  classical
  choose V hV hxV hVU using fun x : U => exists_aff U x.1 x.2
  have hle : ∀ x, q ⁻¹ᵁ V x ≤ q ⁻¹ᵁ U := fun x z hz => hVU x hz
  choose c hc using fun x : U => (aff_coeff ρ₁ b hb H (hV x)).1 (GlobalTheory.AbLaw.rs Z (hle x) t)
  have hcg : ∀ x z, q z ∈ V x → gs (𝟙 Z) z (q ⁻¹ᵁ U) t =
      ∑ l, gs p z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) * gs q z (V x) (c x l) := by
    intro x z hz
    rw [← gs_res (𝟙 Z) z (hle x) hz t, ← gs_comb_pt b p q (V x) z hz]
    exact congrArg _ (hc x)
  have hcomp : ∀ l x y, GlobalTheory.AbLaw.rs X (inf_le_left : V x ⊓ V y ≤ V x) (c x l) =
      GlobalTheory.AbLaw.rs X (inf_le_right : V x ⊓ V y ≤ V y) (c y l) := by
    intro l x y
    refine sub_eq_zero.1 (inj_gen ρ₁ b hb H (V x ⊓ V y)
      (fun l => GlobalTheory.AbLaw.rs X inf_le_left (c x l) - GlobalTheory.AbLaw.rs X inf_le_right (c y l)) (fun z hz => ?_) l)
    have e : ∀ l, gs q z (V x ⊓ V y) (GlobalTheory.AbLaw.rs X inf_le_left (c x l) - GlobalTheory.AbLaw.rs X inf_le_right (c y l)) =
        gs q z (V x) (c x l) - gs q z (V y) (c y l) := fun l => by
      rw [gs_eq q z _ hz, map_sub, map_sub, ← gs_eq q z _ hz, ← gs_eq q z _ hz, gs_res q z _ hz, gs_res q z _ hz]
    simp only [e, mul_sub, Finset.sum_sub_distrib]
    rw [← hcg x z hz.1, ← hcg y z hz.2, sub_self]
  have hcov : U ≤ iSup V := fun x hx => TopologicalSpace.Opens.mem_iSup.2 ⟨⟨x, hx⟩, hxV ⟨x, hx⟩⟩
  choose s hs using fun l => X.sheaf.existsUnique_gluing' V U (fun x => homOfLE (hVU x)) hcov
    (fun x => c x l) (fun x y => hcomp l x y)
  refine ⟨s, fun z hz => ?_⟩
  rw [hcg ⟨q z, hz⟩ z (hxV ⟨q z, hz⟩)]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [← (hs l).1 ⟨q z, hz⟩]
  exact congrArg _ (gs_res q z (hVU ⟨q z, hz⟩) (hxV ⟨q z, hz⟩) (s l))

end GlobalTheory.FrameCoeff

namespace GlobalTheory.FrameCoeff

variable {R R₁ : Type} [CommRing R] [CommRing R₁] {X Z : Scheme.{0}}

theorem main_gen (ρ₁ : R →+* R₁) {d : ℕ} (b : Fin d → R₁)
    (hb : ∀ r : R₁, ∃! c : Fin d → R, r = ∑ l, ρ₁ (c l) * b l)
    {f : X ⟶ Sp R} {q : Z ⟶ X} {p : Z ⟶ Sp R₁} (H : IsPullback q p f (spMap ρ₁))
    (L : LB X) (W O : X.Opens) (hOW : O ≤ W)
    (τ : ∀ k : L.ι, Γ(Z, q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U k)ˣ) (hτ : FrameAlong L q (q ⁻¹ᵁ W) τ) :
    ∃ s : Fin d → ∀ k : L.ι, Γ(X, O ⊓ L.U k), (∀ l, IsSecOver L O (s l)) ∧
      ∀ (z : Z) (k : L.ι), q z ∈ O → q z ∈ L.U k →
        gs (𝟙 Z) z (q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U k) (τ k).val =
          ∑ l, gs p z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) * gs q z (O ⊓ L.U k) (s l k) := by
  have hle : ∀ k, q ⁻¹ᵁ (O ⊓ L.U k) ≤ q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U k := fun k z hz => ⟨hOW hz.1, hz.2⟩
  choose a ha using fun k => surj_gen ρ₁ b hb H (O ⊓ L.U k) (GlobalTheory.AbLaw.rs Z (hle k) (τ k).val)
  have hτg : ∀ k z, q z ∈ O ⊓ L.U k → gs (𝟙 Z) z (q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U k) (τ k).val =
      ∑ l, gs p z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) * gs q z (O ⊓ L.U k) (a k l) := by
    intro k z hz
    rw [← gs_res (𝟙 Z) z (hle k) hz]
    exact ha k z hz
  refine ⟨fun l k => a k l, fun l => ?_, fun z k hO hk => hτg k z ⟨hO, hk⟩⟩
  intro x k k' hx hk hk'
  have hV : O ⊓ L.U k ≤ L.U k := inf_le_right
  have hW : O ⊓ L.U k' ≤ L.U k' := inf_le_right
  have h0 := inj_gen ρ₁ b hb H ((O ⊓ L.U k) ⊓ (O ⊓ L.U k'))
    (fun l => GlobalTheory.AbLaw.rs X inf_le_left (a k l) -
      GlobalTheory.AbLaw.rs X (inf_le_inf hV hW) (L.g k k').val * GlobalTheory.AbLaw.rs X inf_le_right (a k' l)) (fun z hz => ?_) l
  · have e := congrArg (gs (𝟙 X) x _) h0
    rw [GlobalTheory.FlatSec.gs_diff hV hW (a k l) (a k' l) (𝟙 X) x ⟨⟨hx, hk⟩, ⟨hx, hk'⟩⟩, _root_.GlobalTheory.UU.SchurComp.gs_zero] at e
    exact sub_eq_zero.1 e
  · have e1 : ∀ l, gs q z _ (GlobalTheory.AbLaw.rs X inf_le_left (a k l) -
        GlobalTheory.AbLaw.rs X (inf_le_inf hV hW) (L.g k k').val * GlobalTheory.AbLaw.rs X inf_le_right (a k' l)) =
        gs q z _ (a k l) - (gm q z (L.U k ⊓ L.U k') (L.g k k')).val * gs q z _ (a k' l) :=
      fun l => GlobalTheory.FlatSec.gs_diff hV hW _ _ q z hz
    simp only [e1, mul_sub, Finset.sum_sub_distrib]
    have hfr := congrArg Units.val (hτ z k k' (hOW hz.1.1) hz.1.2 hz.2.2)
    rw [Units.val_mul, ← gs_unit (𝟙 Z) z (q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U k) ⟨hOW hz.1.1, hz.1.2⟩ (τ k),
      ← gs_unit (𝟙 Z) z (q ⁻¹ᵁ W ⊓ q ⁻¹ᵁ L.U k') ⟨hOW hz.1.1, hz.2.2⟩ (τ k'),
      hτg k z hz.1, hτg k' z hz.2] at hfr
    rw [hfr, Finset.mul_sum, sub_eq_zero]
    exact Finset.sum_congr rfl fun l _ => by ring

end GlobalTheory.FrameCoeff

theorem GlobalTheory.FrameCoeff.frame_coeff : ∀ (R R₁ : Type) [CommRing R] [CommRing R₁] (ρ₁ : R →+* R₁) (d : ℕ) (b : Fin d → R₁), (∀ r : R₁, ∃! c : Fin d → R, r = ∑ l, ρ₁ (c l) * b l) → ∀ (X : Scheme.{0}) (f : X ⟶ Sp R) (L : LB X), L.IsLB → ∀ (W O : X.Opens), O ≤ W → IsAffineOpen O → ∀ (τ : ∀ k : L.ι, Γ((pullback f (spMap ρ₁)), (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ W ⊓ (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ L.U k)ˣ), FrameAlong L (pullback.fst f (spMap ρ₁)) ((pullback.fst f (spMap ρ₁)) ⁻¹ᵁ W) τ → ∃ s : Fin d → ∀ k : L.ι, Γ(X, O ⊓ L.U k), (∀ l, IsSecOver L O (s l)) ∧ ∀ (z : (pullback f (spMap ρ₁) : Scheme.{0})) (k : L.ι), (pullback.fst f (spMap ρ₁)) z ∈ O → (pullback.fst f (spMap ρ₁)) z ∈ L.U k → gs (𝟙 (pullback f (spMap ρ₁))) z ((pullback.fst f (spMap ρ₁)) ⁻¹ᵁ W ⊓ (pullback.fst f (spMap ρ₁)) ⁻¹ᵁ L.U k) (τ k).val = ∑ l, gs (pullback.snd f (spMap ρ₁)) z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom (b l)) * gs (pullback.fst f (spMap ρ₁)) z (O ⊓ L.U k) (s l k) := by
  intro R R₁ _ _ ρ₁ d b hb X f L hL W O hOW hO τ hτ
  exact GlobalTheory.FrameCoeff.main_gen ρ₁ b hb (IsPullback.of_hasPullback f (spMap ρ₁)) L W O hOW τ hτ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCoefficientsDescendFiniteFreeAffineOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisActsTransitivelyFibresFlatBaseChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisActsTransitivelyFibresFlatBaseChange", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisTransitiveOnFibresFlatBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.GalFibre

theorem exists_act_apply_eq : ∀ (R R' : Type) [CommRing R] [CommRing R'] (ρ : R →+* R'), ρ.Finite → IsGal ρ →
    ∀ (Y X : Scheme.{0}) (p : Y ⟶ Sp R) (p' : X ⟶ Sp R') (β : X ⟶ Y), Flat p → IsPullback β p' p (spMap ρ) →
    ∀ (act : Gal ρ → (X ⟶ X)), (∀ σ, act σ ≫ p' = p' ≫ spMap (Gal.hom σ)) → (∀ σ, act σ ≫ β = β) →
    ∀ z₀ z : X, β z₀ = β z → ∃ σ : Gal ρ, act σ z₀ = z := by
  intro R R' _ _ ρ _ hG Y X p p' β hfl hpb act hact hactβ z₀ z hz
  have : Flat p := hfl
  let π : R →+* ρ.range := ρ.rangeRestrict
  have hπ : Function.Surjective π := ρ.rangeRestrict_surjective
  have hfac : spMap ρ = spMap (algebraMap ρ.range R') ≫ spMap π := by
    rw [← Spec.map_comp]; rfl
  have hsq : IsPullback (pullback.fst p (spMap π)) (pullback.snd p (spMap π)) p (spMap π) :=
    IsPullback.of_hasPullback _ _
  let p₀ : X ⟶ pullback p (spMap π) :=
    hsq.lift β (p' ≫ spMap (algebraMap ρ.range R')) (by rw [hpb.w, hfac, Category.assoc])
  have hp₀ : p₀ ≫ pullback.fst p (spMap π) = β := hsq.lift_fst _ _ _
  have hp₀' : p₀ ≫ pullback.snd p (spMap π) = p' ≫ spMap (algebraMap ρ.range R') := hsq.lift_snd _ _ _
  have outer : IsPullback (p₀ ≫ pullback.fst p (spMap π)) p' p (spMap (algebraMap ρ.range R') ≫ spMap π) := by
    rw [hp₀, ← hfac]; exact hpb
  have hpb₀ : IsPullback p₀ p' (Over.mk (pullback.snd p (spMap π))).hom (spMap (algebraMap ρ.range R')) :=
    IsPullback.of_right outer hp₀' hsq
  have hinj : Function.Injective (algebraMap ρ.range R') := Subtype.val_injective
  let toG : Gal (algebraMap ρ.range R') → Gal ρ := fun σ => ⟨σ.1, fun r => σ.2 (π r)⟩
  have hG₀ : IsGal (algebraMap ρ.range R') := by
    refine ⟨?_, fun x hx => ?_⟩
    · have : Finite (Gal ρ) := hG.1
      exact Finite.of_injective toG (fun a b h => Subtype.ext (show a.1 = b.1 from congrArg (fun s : Gal ρ => s.1) h))
    · have hx' : ∀ σ ∈ Gal ρ, σ x = x := fun σ hσ => by
        refine hx σ ?_
        rintro ⟨_, r, rfl⟩
        exact hσ r
      exact ⟨⟨x, hG.2 x hx'⟩, rfl⟩
  have hflat : Flat (Over.mk (pullback.snd p (spMap π))).hom := by
    change Flat (pullback.snd p (spMap π)); infer_instance
  have : IsClosedImmersion (spMap π) := IsClosedImmersion.spec_of_surjective _ hπ
  have hz₀ : p₀ z₀ = p₀ z := by
    apply (pullback.fst p (spMap π)).isClosedEmbedding.injective
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, hp₀, hz]
  obtain ⟨σ', h, h₁, h₂, h₃⟩ := gal_transitive_on_fibres ρ.range R' hinj hG₀ (Over.mk (pullback.snd p (spMap π)))
    hflat X p₀ p' hpb₀ z₀ z hz₀
  refine ⟨toG σ', ?_⟩
  have he : act (toG σ') = h := by
    refine hpb.hom_ext ?_ ?_
    · rw [hactβ, ← hp₀, ← Category.assoc, h₁]
    · rw [hact, h₂]; rfl
  rw [he, h₃]

end GlobalTheory.Mum.GalFibre
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisActsTransitivelyFibresFlatBaseChange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedDescendFiniteEtaleExtension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedDescendFiniteEtaleExtension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedAlong\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GmEqMapGm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarriedOver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CarriedSectionOfFrameCarriedAlongLifts\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameCoefficientUnitGermsFiniteFree\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFrameOfSectionUnitsOnClosedFibre\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatLocalBaseChangeOfProperProperties\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCoefficientsDescendFiniteFreeAffineOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisActsTransitivelyFibresFlatBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum



theorem FrameCarried.descend_finiteEtale : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (hB : Base R) (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R') (hF : FinExt ρ) (hG : IsGal ρ) (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'] (hS' : IsSemiAbelian G') (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U') (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (β : G'.left ⟶ G.left) (hS : IsSemiAbelian G) (hβ : IsGrpPullback G' G (spMap ρ) β) (hact : ∀ σ, a.act σ ≫ β = β) (R₁ : Type) [CommRing R₁] [IsDomain R₁] [IsLocalRing R₁] (ρ₁ : R →+* R₁), FinExt ρ₁ → ρ₁.Etale → ∀ (V₀ : G.left.Opens) (y : G.left), y ∈ V₀ → ∀ τ : ∀ k : U'.LG.L.ι, Γ(pullback (G'.hom ≫ spMap ρ) (spMap ρ₁), (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ⁻¹ᵁ (β ⁻¹ᵁ V₀) ⊓ (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ⁻¹ᵁ U'.LG.L.U k)ˣ, FrameAlong U'.LG.L (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ((pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ⁻¹ᵁ (β ⁻¹ᵁ V₀)) τ → (∀ (σ : Gal ρ) (h : IsPullDeg (Gal.hom σ) D'.toPre D'.toPre) (bc : G' ≅ (Over.pullback (specOf (Gal.hom σ))).obj G'), bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ)) = a.act σ → ∀ hP : IsPullUnif (Gal.hom σ) h bc U' U', PullOver hD h → ∀ f' : (pullback (G'.hom ≫ spMap ρ) (spMap ρ₁) : Scheme.{0}) ⟶ pullback (G'.hom ≫ spMap ρ) (spMap ρ₁), f' ≫ (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) = (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ≫ a.act σ → f' ≫ (pullback.snd (G'.hom ≫ spMap ρ) (spMap ρ₁)) = (pullback.snd (G'.hom ≫ spMap ρ) (spMap ρ₁)) → FrameCarriedAlong U'.LG.L (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ((pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) ⁻¹ᵁ (β ⁻¹ᵁ V₀)) τ _ (Classical.choose hP.lg) f') → ∃ V : G.left.Opens, y ∈ V ∧ ∃ T : ∀ k : U'.LG.L.ι, Γ(G'.left, β ⁻¹ᵁ V ⊓ U'.LG.L.U k)ˣ, IsFrameOver U'.LG.L (β ⁻¹ᵁ V) T ∧ ∀ (σ : Gal ρ) (h : IsPullDeg (Gal.hom σ) D'.toPre D'.toPre) (bc : G' ≅ (Over.pullback (specOf (Gal.hom σ))).obj G'), bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ)) = a.act σ → ∀ hP : IsPullUnif (Gal.hom σ) h bc U' U', PullOver hD h → FrameCarried U'.LG.L (β ⁻¹ᵁ V) T _ (Classical.choose hP.lg) := by
  intro R _ _ _ hB R' _ _ _ ρ hF hG D D' hD A' G' _ _ hS' U' a G _ _ β hS hβ hact R₁ _ _ _ ρ₁ hF₁ hE₁ V₀ y hy τ hτ hτc
  have hL : U'.LG.L.IsLB := U'.LG.isLB
  haveI : IsNoetherianRing R := hB.1.1
  have hfl : ρ₁.Flat := (RingHom.Etale.iff_flat_and_formallyUnramified.1 hE₁).1
  obtain ⟨-, -, -, hqs, -, -, -, d, b, hb⟩ := GlobalTheory.finiteFlat_proper_baseChange_facts R R₁ ρ₁ hF₁.2.1 hF₁.2.2 hfl
    G'.left G'.left (pullback (G'.hom ≫ spMap ρ) (spMap ρ₁)) (pullback (G'.hom ≫ spMap ρ) (spMap ρ₁)) (𝟙 _) (𝟙 _)
    (G'.hom ≫ spMap ρ) (pullback.snd _ _) (pullback.fst _ _) (pullback.fst _ _) (IsPullback.of_hasPullback _ _)
    (IsPullback.id_vert _) inferInstance
  have hβf : IsFinite β :=
    MorphismProperty.of_isPullback (P := @IsFinite) hβ.1.flip ((IsFinite.SpecMap_iff _).2 hF.2.2)
  have hβc : IsClosedMap β.base := β.isClosedMap
  have hGfl : Flat G.hom := by haveI := hS.smooth; infer_instance
  obtain ⟨V₁, hV₁a, hyV₁, hV₁⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.mp G.left.isBasis_affineOpens) hy
  have hOa : IsAffineOpen (β ⁻¹ᵁ V₁) := IsAffineOpen.preimage hV₁a β
  have hOW : β ⁻¹ᵁ V₁ ≤ β ⁻¹ᵁ V₀ := fun x hx => hV₁ hx
  obtain ⟨s, hs, hdec⟩ := _root_.GlobalTheory.FrameCoeff.frame_coeff R R₁ ρ₁ d b hb G'.left (G'.hom ≫ spMap ρ) U'.LG.L hL (β ⁻¹ᵁ V₀) (β ⁻¹ᵁ V₁) hOW hOa τ hτ
  have hcar : ∀ (σ : Gal ρ) (h : IsPullDeg (Gal.hom σ) D'.toPre D'.toPre)
      (bc : G' ≅ (Over.pullback (specOf (Gal.hom σ))).obj G'),
      bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ)) = a.act σ → ∀ hP : IsPullUnif (Gal.hom σ) h bc U' U',
      PullOver hD h → ∀ l, SecCarriedOver U'.LG.L (β ⁻¹ᵁ V₁) (s l) _ (Classical.choose hP.lg) := by
    intro σ h bc hbc hP hPO
    refine _root_.GlobalTheory.Mum.secCarriedOver_of_frameCarriedAlong R R₁ ρ₁ d b hb G'.left (G'.hom ≫ spMap ρ) U'.LG.L (β ⁻¹ᵁ V₀) (β ⁻¹ᵁ V₁) hOW τ s hdec _
      (Classical.choose hP.lg) ?_ ?_
    · rw [hbc, ← hβ.1.w, ← Category.assoc, hact]
    · intro f' h1 h2
      exact hτc σ h bc hbc hP hPO f' (h1.trans (by rw [hbc])) h2
  have hd : 0 < d := by
    rcases Nat.eq_zero_or_pos d with h0 | h0
    · subst h0
      obtain ⟨c, hc, -⟩ := hb 1
      simp at hc
    · exact h0
  have key : ∃ l, ∀ (z : G'.left) (k : U'.LG.L.ι), β z = y → z ∈ U'.LG.L.U k →
      IsUnit (gs (𝟙 G'.left) z (β ⁻¹ᵁ V₁ ⊓ U'.LG.L.U k) (s l k)) := by
    by_cases hne : ∃ z₀, β z₀ = y
    · obtain ⟨z₀, hz₀⟩ := hne
      obtain ⟨z', hz'⟩ := hqs z₀
      have hz'O : (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)) z' ∈ β ⁻¹ᵁ V₁ := by
        show β ((pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)).base z') ∈ V₁
        rw [hz', hz₀]; exact hyV₁
      obtain ⟨l, hl⟩ := _root_.GlobalTheory.Mum.exists_isUnit_gs_of_frame_eq_sum R R₁ ρ₁ d b G'.left (G'.hom ≫ spMap ρ) U'.LG.L hL (β ⁻¹ᵁ V₀) (β ⁻¹ᵁ V₁) hOW τ s hs
        hdec z' hz'O
      have hl' : ∀ k, z₀ ∈ U'.LG.L.U k → IsUnit (gs (𝟙 G'.left) z₀ (β ⁻¹ᵁ V₁ ⊓ U'.LG.L.U k) (s l k)) := by
        intro k hk
        have := hl k (by show (pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)).base z' ∈ _; rw [hz']; exact hk)
        revert this
        show IsUnit (gs (𝟙 G'.left) ((pullback.fst (G'.hom ≫ spMap ρ) (spMap ρ₁)).base z') _ _) → _
        rw [hz']; exact id
      refine ⟨l, fun z k hz hk => ?_⟩
      obtain ⟨σ, hσ⟩ := _root_.GlobalTheory.Mum.GalFibre.exists_act_apply_eq R R' ρ hF.2.2 hG G.left G'.left G.hom G'.hom β hGfl hβ.1 a.act
        (fun σ => (a.cart σ).1.w) hact z₀ z (hz₀.trans hz.symm)
      obtain ⟨h, bc, hbc, hP, hPO⟩ := a.unif σ
      obtain ⟨k₀, hk₀⟩ := exists_chart hL z₀
      have hz₀O : z₀ ∈ β ⁻¹ᵁ V₁ := show β z₀ ∈ V₁ from hz₀ ▸ hyV₁
      have hφ : (bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ))) z₀ = z := by rw [hbc]; exact hσ
      subst hφ
      have hzO : (bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ))) z₀ ∈ β ⁻¹ᵁ V₁ :=
        show β _ ∈ V₁ from hz ▸ hyV₁
      have e := hcar σ h bc hbc hP hPO l z₀ k k₀ hz₀O hzO hk₀ hk
      have hu : IsUnit (gs (bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ))) z₀ _ (s l k)) := by
        rw [e]; exact (Units.isUnit _).mul (hl' k₀ hk₀)
      rw [_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.gs_stalkMap (bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ))) z₀ (β ⁻¹ᵁ V₁ ⊓ U'.LG.L.U k) ⟨hzO, hk⟩] at hu
      exact (isUnit_map_iff _ _).1 hu
    · push_neg at hne
      exact ⟨⟨0, hd⟩, fun z k hz _ => absurd hz (hne z)⟩
  obtain ⟨l, hl⟩ := key
  obtain ⟨V, hyV, -, T, hT, hTc⟩ :=
    GlobalTheory.Mum.exists_frame_of_isUnit_on_fibre G'.left G.left β hβc U'.LG.L hL V₁ (s l) (hs l) y hyV₁ hl
  exact ⟨V, hyV, T, hT, fun σ h bc hbc hP hPO => hTc _ _ (hcar σ h bc hbc hP hPO l)⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedDescendFiniteEtaleExtension =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameNearClosedFibrePoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameNearClosedFibrePoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarried\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GmEqMapGm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenFarSet\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedAlong\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameBundleNearClosedPointFiniteEtaleExt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FrameCarriedDescendFiniteEtaleExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum



theorem FrameCarried.exists_near_closed_point : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (hB : Base R) (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R') (hF : FinExt ρ) (hG : IsGal ρ) (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'] (hS' : IsSemiAbelian G') (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U') (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (β : G'.left ⟶ G.left) (hS : IsSemiAbelian G) (hβ : IsGrpPullback G' G (spMap ρ) β) (hact : ∀ σ, a.act σ ≫ β = β) (θ : U'.LG.L.Sec), (∀ (σ : Gal ρ) (h : IsPullDeg (Gal.hom σ) D'.toPre D'.toPre) (bc : G' ≅ (Over.pullback (specOf (Gal.hom σ))).obj G'), bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ)) = a.act σ → ∀ hP : IsPullUnif (Gal.hom σ) h bc U' U', PullOver hD h → SecCarried U'.LG.L θ _ (Classical.choose hP.lg)) → ∀ O : G.left.Opens, (∃ g ∈ O, G.hom g = closedPoint R) → (∀ g' : G'.left, β g' ∈ O → G.hom (β g') = closedPoint R → g' ∈ secNz θ) → ∀ y : G.left, IsClosed ({y} : Set G.left) → G.hom y = closedPoint R → ∃ V : G.left.Opens, y ∈ V ∧ ∃ T : ∀ k : U'.LG.L.ι, Γ(G'.left, β ⁻¹ᵁ V ⊓ U'.LG.L.U k)ˣ, IsFrameOver U'.LG.L (β ⁻¹ᵁ V) T ∧ ∀ (σ : Gal ρ) (h : IsPullDeg (Gal.hom σ) D'.toPre D'.toPre) (bc : G' ≅ (Over.pullback (specOf (Gal.hom σ))).obj G'), bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ)) = a.act σ → ∀ hP : IsPullUnif (Gal.hom σ) h bc U' U', PullOver hD h → FrameCarried U'.LG.L (β ⁻¹ᵁ V) T _ (Classical.choose hP.lg) := by
  intro R _ _ _ hB R' _ _ _ ρ hF hG D D' hD A' G' _ _ hS' U' a G _ _ β hS hβ hact θ hθ O hO hnz y hyc hy
  obtain ⟨R₁, _, _, _, ρ₁, hF₁, hE₁, V₀, hV₀, τ, hτ, hτc⟩ := _root_.GlobalTheory.Mum.exists_carried_frame_upstairs R hB R' ρ hF hG D D' hD A' G' hS' U' a G β hS hβ hact θ hθ O hO hnz y hyc hy
  exact _root_.GlobalTheory.Mum.FrameCarried.descend_finiteEtale R hB R' ρ hF hG D D' hD A' G' hS' U' a G β hS hβ hact R₁ ρ₁ hF₁ hE₁ V₀ y hV₀ τ hτ hτc

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameNearClosedFibrePoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameNearClosedFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameNearClosedFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GmEqMapGm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedSectionNonzeroNearClosedFibreStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecCarried\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenFarSet\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFrameNearClosedFibrePoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem closed_spec {R : Type} [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G] (hS : IsSemiAbelian G)
    (y : G.left) (hy : G.hom y = closedPoint R) :
    ∃ y₀ : G.left, y ⤳ y₀ ∧ IsClosed ({y₀} : Set G.left) ∧ G.hom y₀ = closedPoint R := by
  have : QuasiCompact G.hom := hS.quasiCompact
  have hc : CompactSpace G.left := by
    constructor
    have := QuasiCompact.isCompact_preimage (f := G.hom) Set.univ isOpen_univ isCompact_univ
    simpa using this
  obtain ⟨y₀, hy₀, hcl⟩ := (isClosed_closure (s := ({y} : Set G.left))).exists_closed_singleton ⟨y, subset_closure rfl⟩
  have hsp : y ⤳ y₀ := specializes_iff_mem_closure.2 hy₀
  refine ⟨y₀, hsp, hcl, ?_⟩
  have h1 : G.hom y ⤳ G.hom y₀ := hsp.map G.hom.continuous
  rw [hy] at h1
  have h2 := specializes_iff_mem_closure.1 h1
  exact (isClosed_singleton_closedPoint R).closure_subset h2



theorem FrameCarried.exists_near_closed_fibre : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (hB : Base R) (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R') (hF : FinExt ρ) (hG : IsGal ρ) (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'] (hS' : IsSemiAbelian G') (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U') (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (β : G'.left ⟶ G.left) (hS : IsSemiAbelian G) (hβ : IsGrpPullback G' G (spMap ρ) β) (hact : ∀ σ, a.act σ ≫ β = β), ∀ y : G.left, G.hom y = closedPoint R → ∃ V : G.left.Opens, y ∈ V ∧ ∃ T : ∀ k : U'.LG.L.ι, Γ(G'.left, β ⁻¹ᵁ V ⊓ U'.LG.L.U k)ˣ, IsFrameOver U'.LG.L (β ⁻¹ᵁ V) T ∧ ∀ (σ : Gal ρ) (h : IsPullDeg (Gal.hom σ) D'.toPre D'.toPre) (bc : G' ≅ (Over.pullback (specOf (Gal.hom σ))).obj G'), bc.hom.left ≫ pullback.fst G'.hom (specOf (Gal.hom σ)) = a.act σ → ∀ hP : IsPullUnif (Gal.hom σ) h bc U' U', PullOver hD h → FrameCarried U'.LG.L (β ⁻¹ᵁ V) T _ (Classical.choose hP.lg) := by
  intro R _ _ _ hB R' _ _ _ ρ hF hG D D' hD A' G' _ _ hS' U' a G _ _ β hS hβ hact y hy
  obtain ⟨θ, hθ, O, hO, hnz⟩ := _root_.GlobalTheory.Mum.exists_carried_sec_nz_near_closed R hB R' ρ hF hG D D' hD A' G' hS' U' a G β hS hβ hact
  obtain ⟨y₀, hsp, hcl, hy₀c⟩ := closed_spec G hS y hy
  obtain ⟨V, hV, rest⟩ := _root_.GlobalTheory.Mum.FrameCarried.exists_near_closed_point R hB R' ρ hF hG D D' hD A' G' hS' U' a G β hS hβ hact θ hθ O hO hnz y₀ hcl hy₀c
  exact ⟨V, hsp.mem_open V.isOpen hV, rest⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameNearClosedFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameNearClosedFibreStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameNearClosedFibreStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GmEqMapGm\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameNearClosedFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCarriedFrameNearClosedFibreStatement =====
