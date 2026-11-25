module

public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheaf
public import Mathlib.AlgebraicGeometry.IdealSheaf.Functorial
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupSmoothness
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.ControlledTransform
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativesInBlowupCharts
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictNormalCrossingsBlowup
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformChart
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformSubscheme
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.CoordinateDivisorBlowup
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleCoordinates
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdeal
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformBasic
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealLocalization
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback
import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness
import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.AffineSpaceCoordinateBlowup
import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupChartComputations
import Development.ResolutionOfSingularities.Foundations.Schemes.AffineOpens
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheafOpenImmersion, Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupLogDerivativeIdealBound, Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PartialDerivativeIdeal, Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.ControlledTransformLogDerivativesInCharts, Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.StrictTransformLogDerivativeIdealSheaf, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LogDerivIdealEstimate

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheafOpenImmersion =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheafOpenImmersion", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheaf\npublic import Mathlib.AlgebraicGeometry.IdealSheaf.Functorial\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealLocalization\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open AlgebraicGeometry CategoryTheory TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

private theorem bijective_hom_of_iso {A B : CommRingCat.{u}} (i : A ≅ B) :
    Function.Bijective i.hom.hom :=
  ConcreteCategory.bijective_of_isIso i.hom

private theorem map_eq_comap_of_inverse {A B : Type u} [CommRing A] [CommRing B]
    (φ : A →+* B) (ψ : B →+* A) (h1 : ∀ a, ψ (φ a) = a) (h2 : ∀ b, φ (ψ b) = b) (J : Ideal A) :
    Ideal.map φ J = Ideal.comap ψ J := by
  apply le_antisymm
  · rw [Ideal.map_le_iff_le_comap]
    intro a ha
    rw [Ideal.mem_comap, Ideal.mem_comap, h1]
    exact ha
  · intro x hx
    rw [Ideal.mem_comap] at hx
    have hmem := Ideal.mem_map_of_mem φ hx
    rwa [h2 x] at hmem

private theorem ideal_comap_eq_map_appLE {X Y : Scheme.{u}} (I : Y.IdealSheafData) (f : X ⟶ Y)
    [IsOpenImmersion f] (V : X.affineOpens) (hU : IsAffineOpen (f ''ᵁ (V : X.Opens)))
    (e : (V : X.Opens) ≤ f ⁻¹ᵁ (f ''ᵁ (V : X.Opens))) :
    (I.comap f).ideal V =
      (I.ideal ⟨f ''ᵁ (V : X.Opens), hU⟩).map
        (f.appLE (f ''ᵁ (V : X.Opens)) (V : X.Opens) e).hom := by
  rw [Scheme.IdealSheafData.ideal_comap_of_isOpenImmersion I f V]
  have happ : f.appLE (f ''ᵁ (V : X.Opens)) (V : X.Opens) e = (f.appIso (V : X.Opens)).hom :=
    (Scheme.Hom.appIso_hom' f (V : X.Opens)).symm
  rw [happ]
  have h1 : ∀ a, (f.appIso (V : X.Opens)).inv.hom ((f.appIso (V : X.Opens)).hom.hom a) = a :=
    fun a => CommRingCat.inv_hom_apply (f.appIso (V : X.Opens)) a
  have h2 : ∀ b, (f.appIso (V : X.Opens)).hom.hom ((f.appIso (V : X.Opens)).inv.hom b) = b :=
    fun b => CommRingCat.hom_inv_apply (f.appIso (V : X.Opens)) b
  exact (map_eq_comap_of_inverse _ _ h1 h2 _).symm

private theorem bijective_appLE_image_of_isOpenImmersion {Z W : Scheme.{u}} (f : W ⟶ Z) [IsOpenImmersion f]
    (V : W.Opens) (e : V ≤ f ⁻¹ᵁ (f ''ᵁ V)) :
    Function.Bijective (f.appLE (f ''ᵁ V) V e).hom := by
  have h : f.appLE (f ''ᵁ V) V e = (f.appIso V).hom := (Scheme.Hom.appIso_hom' f V).symm
  rw [h]
  exact bijective_hom_of_iso (f.appIso V)

private theorem appLE_sectionsAlgebraMap (K : Type u) [CommRing K] {Z W : Scheme.{u}}
    (q : Z ⟶ Spec (CommRingCat.of K)) (f : W ⟶ Z) (U : Z.Opens) (V : W.Opens)
    (e : V ≤ f ⁻¹ᵁ U) (a : K) :
    (f.appLE U V e).hom (sectionsAlgebraMap K q U a) = sectionsAlgebraMap K (f ≫ q) V a := by
  have key : (f.appLE U V e).hom.comp (sectionsAlgebraMap K q U)
      = sectionsAlgebraMap K (f ≫ q) V := by
    rw [sectionsAlgebraMap_eq, sectionsAlgebraMap_eq, ← CommRingCat.hom_comp, Category.assoc,
      Scheme.Hom.appLE_comp_appLE]
  exact DFunLike.congr_fun key a

private theorem map_logDerivIdealIterate_of_bijective (K : Type u) [CommRing K]
    {S S' : Type u} [CommRing S] [CommRing S'] [Algebra K S] [Algebra K S']
    (φ : S →+* S') (hφ : Function.Bijective φ)
    (hcomp : ∀ a : K, φ (algebraMap K S a) = algebraMap K S' a)
    [Module.FinitePresentation S Ω[S⁄K]]
    {P : Ideal S} (hP : P.FG) (r : ℕ) (J : Ideal S) :
    Ideal.map φ (logDerivIdealIterate K P r J) =
      logDerivIdealIterate K (Ideal.map φ P) r (Ideal.map φ J) := by
  let _ : Algebra S S' := φ.toAlgebra
  have : IsScalarTower K S S' := IsScalarTower.of_algebraMap_eq fun a => (hcomp a).symm
  have : IsLocalization.Away (1 : S) S' :=
    IsLocalization.away_of_isUnit_of_bijective (hr := isUnit_one) (H := hφ)
  exact logDerivIdealIterate_map_away K (1 : S) hP r J

private theorem map_appLE_logDerivIdealIterate_of_bijective (K : Type u) [CommRing K] [IsNoetherianRing K]
    {Z W : Scheme.{u}} (q : Z ⟶ Spec (CommRingCat.of K)) [LocallyOfFiniteType q]
    (f : W ⟶ Z) [LocallyOfFiniteType (f ≫ q)]
    (U : Z.affineOpens) (V : W.affineOpens) (e : (V : W.Opens) ≤ f ⁻¹ᵁ (U : Z.Opens))
    (hbij : Function.Bijective (f.appLE (U : Z.Opens) (V : W.Opens) e).hom)
    (P A : Ideal Γ(Z, (U : Z.Opens))) (r : ℕ) :
    Ideal.map (f.appLE (U : Z.Opens) (V : W.Opens) e).hom
        (@logDerivIdealIterate K _ _ _ (sectionsAlgebra K q (U : Z.Opens)) P r A) =
      @logDerivIdealIterate K _ _ _ (sectionsAlgebra K (f ≫ q) (V : W.Opens))
        (Ideal.map (f.appLE (U : Z.Opens) (V : W.Opens) e).hom P) r
        (Ideal.map (f.appLE (U : Z.Opens) (V : W.Opens) e).hom A) := by
  have hfp := @finitePresentation_kaehlerDifferential_sections K _ _ Z q _ U
    (sectionsAlgebra K q (U : Z.Opens)) (algebraMap_sectionsAlgebra K q (U : Z.Opens))
  have hno := @isNoetherianRing_sections K _ _ Z q _ U
    (sectionsAlgebra K q (U : Z.Opens)) (algebraMap_sectionsAlgebra K q (U : Z.Opens))
  have hP : P.FG := IsNoetherian.noetherian P
  have hcomp : ∀ a : K, (f.appLE (U : Z.Opens) (V : W.Opens) e).hom
      (@algebraMap K Γ(Z, (U : Z.Opens)) _ _ (sectionsAlgebra K q (U : Z.Opens)) a) =
      @algebraMap K Γ(W, (V : W.Opens)) _ _ (sectionsAlgebra K (f ≫ q) (V : W.Opens)) a := by
    intro a
    rw [algebraMap_sectionsAlgebra, algebraMap_sectionsAlgebra]
    exact appLE_sectionsAlgebraMap K q f (U : Z.Opens) (V : W.Opens) e a
  exact @map_logDerivIdealIterate_of_bijective K _ Γ(Z, (U : Z.Opens)) Γ(W, (V : W.Opens)) _ _
    (sectionsAlgebra K q (U : Z.Opens)) (sectionsAlgebra K (f ≫ q) (V : W.Opens))
    (f.appLE (U : Z.Opens) (V : W.Opens) e).hom hbij hcomp hfp P hP r A

variable (k : Type u) [CommRing k] [IsNoetherianRing k] {X Y : Scheme.{u}}
  (p : X ⟶ Spec (CommRingCat.of k)) [LocallyOfFiniteType p]
  (g : Y ⟶ X) [IsOpenImmersion g] [LocallyOfFiniteType (g ≫ p)]

theorem logDerivIdealSheafIterate_comap_ideal_of_isOpenImmersion
    (P A : X.IdealSheafData) (r : ℕ) (V : Y.affineOpens) :
    ((logDerivIdealSheafIterate k p P r A).comap g).ideal V =
      (logDerivIdealSheafIterate k (g ≫ p) (P.comap g) r (A.comap g)).ideal V := by
  have hU : IsAffineOpen (g ''ᵁ (V : Y.Opens)) := V.2.image_of_isOpenImmersion g
  have e : (V : Y.Opens) ≤ g ⁻¹ᵁ (g ''ᵁ (V : Y.Opens)) := by
    intro x hx
    exact ⟨x, hx, rfl⟩
  have hbij : Function.Bijective
      (g.appLE (g ''ᵁ (V : Y.Opens)) (V : Y.Opens) e).hom :=
    bijective_appLE_image_of_isOpenImmersion g (V : Y.Opens) e
  rw [ideal_comap_eq_map_appLE _ g V hU e, logDerivIdealSheafIterate_ideal,
    logDerivIdealSheafIterate_ideal, ideal_comap_eq_map_appLE P g V hU e,
    ideal_comap_eq_map_appLE A g V hU e]
  exact map_appLE_logDerivIdealIterate_of_bijective k p g ⟨g ''ᵁ (V : Y.Opens), hU⟩ V e hbij _ _ r

theorem logDerivIdealSheafIterate_comap_of_isOpenImmersion
    (P A : X.IdealSheafData) (r : ℕ) :
    (logDerivIdealSheafIterate k p P r A).comap g =
      logDerivIdealSheafIterate k (g ≫ p) (P.comap g) r (A.comap g) :=
  Scheme.IdealSheafData.ext
    (funext fun V => logDerivIdealSheafIterate_comap_ideal_of_isOpenImmersion k p g P A r V)

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheafOpenImmersion =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupLogDerivativeIdealBound =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupLogDerivativeIdealBound", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupSmoothness\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.ControlledTransform\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheaf\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheafOpenImmersion\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativesInBlowupCharts\nimport Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness\nimport Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.AffineSpaceCoordinateBlowup\nimport Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupChartComputations\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictNormalCrossingsBlowup\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformChart\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformSubscheme\nimport Development.ResolutionOfSingularities.Foundations.Schemes.AffineOpens\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.CoordinateDivisorBlowup\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

private theorem ideal_mul_apply {Y : Scheme.{u}} (A B : Y.IdealSheafData) (V : Y.affineOpens) :
    (A * B).ideal V = A.ideal V * B.ideal V := rfl

private theorem ideal_pow_apply {Y : Scheme.{u}} (A : Y.IdealSheafData) (n : ℕ)
    (V : Y.affineOpens) : (A ^ n).ideal V = A.ideal V ^ n :=
  congrFun (Scheme.IdealSheafData.ideal_pow A n) V

private theorem ideal_top_eq_top {Y : Scheme.{u}} (V : Y.affineOpens) :
    (⊤ : Y.IdealSheafData).ideal V = ⊤ := by simp

private theorem restrictIdeal_top_eq_top {Y : Scheme.{u}} (V : Y.Opens) :
    restrictIdeal (⊤ : Y.IdealSheafData) V = ⊤ := Scheme.IdealSheafData.comap_top _

private theorem ideal_le_ideal_of_le {Y : Scheme.{u}} {A B : Y.IdealSheafData} (h : A ≤ B)
    (V : Y.affineOpens) : A.ideal V ≤ B.ideal V := h V

private theorem ideal_map_congr {R S : Type u} [CommRing R] [CommRing S] {F G : Type u}
    [FunLike F R S] [RingHomClass F R S] [FunLike G R S] [RingHomClass G R S]
    (f : F) (g : G) (h : ∀ x, f x = g x) (I : Ideal R) :
    Ideal.map f I = Ideal.map g I := by
  refine le_antisymm ?_ ?_
  · rw [Ideal.map_le_iff_le_comap]
    intro x hx
    rw [Ideal.mem_comap, h x]
    exact Ideal.mem_map_of_mem _ hx
  · rw [Ideal.map_le_iff_le_comap]
    intro x hx
    rw [Ideal.mem_comap, ← h x]
    exact Ideal.mem_map_of_mem _ hx

private theorem logDerivIdealSheafIterate_congr_hom (k : Type u) [CommRing k]
    [IsNoetherianRing k] {Y : Scheme.{u}} {q q' : Y ⟶ Spec (CommRingCat.of k)}
    [LocallyOfFiniteType q] [LocallyOfFiniteType q'] (h : q = q') (P : Y.IdealSheafData) (r : ℕ)
    (I : Y.IdealSheafData) :
    logDerivIdealSheafIterate k q P r I = logDerivIdealSheafIterate k q' P r I := by
  subst h
  rfl

theorem exists_affineOpen_comap_logDerivIdealSheafIterate_eq (k : Type u) [Field k] [CharZero k]
    {X X₁ : Scheme.{u}} (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (π : X₁ ⟶ X) [AlgebraicGeometry.Smooth (π ≫ p)] (W : X.Opens)
    [IsIso (AlgebraicGeometry.morphismRestrict π W)] (x₁ : ↥X₁) (hx₁ : x₁ ∈ π ⁻¹ᵁ W)
    (a : ℕ) (P K : X.IdealSheafData) :
    ∃ V : X₁.affineOpens, x₁ ∈ V.1 ∧ V.1 ≤ π ⁻¹ᵁ W ∧
      ((logDerivIdealSheafIterate k p P a K).comap π).ideal V =
        (logDerivIdealSheafIterate k (π ≫ p) (P.comap π) a (K.comap π)).ideal V := by
  obtain ⟨⟨V, hVaff⟩, hxV, hVU⟩ :
      ∃ V : X₁.affineOpens, x₁ ∈ V.1 ∧ V.1 ≤ π ⁻¹ᵁ W := by
    apply AlgebraicGeometry.Scheme.exists_affineOpens_mem_le
    exact hx₁
  refine ⟨⟨V, hVaff⟩, hxV, hVU, ?_⟩
  have : IsOpenImmersion (π ∣_ W) := inferInstance
  have : LocallyOfFiniteType (W.ι ≫ p) := inferInstance
  have : LocallyOfFiniteType ((π ∣_ W) ≫ (W.ι ≫ p)) := inferInstance
  have : LocallyOfFiniteType ((π ⁻¹ᵁ W).ι ≫ (π ≫ p)) := inferInstance
  have hq : (π ∣_ W) ≫ (W.ι ≫ p) = (π ⁻¹ᵁ W).ι ≫ (π ≫ p) := by
    rw [← Category.assoc, morphismRestrict_ι, Category.assoc]
  have hP : (P.comap W.ι).comap (π ∣_ W) = (P.comap π).comap (π ⁻¹ᵁ W).ι := by
    rw [← Scheme.IdealSheafData.comap_comp, ← Scheme.IdealSheafData.comap_comp,
      morphismRestrict_ι]
  have hKc : (K.comap W.ι).comap (π ∣_ W) = (K.comap π).comap (π ⁻¹ᵁ W).ι := by
    rw [← Scheme.IdealSheafData.comap_comp, ← Scheme.IdealSheafData.comap_comp,
      morphismRestrict_ι]
  have e1 : ((logDerivIdealSheafIterate k p P a K).comap π).comap (π ⁻¹ᵁ W).ι
      = ((logDerivIdealSheafIterate k p P a K).comap W.ι).comap (π ∣_ W) := by
    rw [← Scheme.IdealSheafData.comap_comp, ← Scheme.IdealSheafData.comap_comp,
      morphismRestrict_ι]
  have e2 : ((logDerivIdealSheafIterate k p P a K).comap W.ι).comap (π ∣_ W)
      = (logDerivIdealSheafIterate k (W.ι ≫ p) (P.comap W.ι) a (K.comap W.ι)).comap (π ∣_ W) := by
    rw [logDerivIdealSheafIterate_comap_of_isOpenImmersion k p W.ι P K a]
  have e3 : (logDerivIdealSheafIterate k (W.ι ≫ p) (P.comap W.ι) a (K.comap W.ι)).comap (π ∣_ W)
      = logDerivIdealSheafIterate k ((π ∣_ W) ≫ (W.ι ≫ p)) ((P.comap W.ι).comap (π ∣_ W)) a
          ((K.comap W.ι).comap (π ∣_ W)) :=
    logDerivIdealSheafIterate_comap_of_isOpenImmersion k (W.ι ≫ p) (π ∣_ W) (P.comap W.ι)
      (K.comap W.ι) a
  have e4 : logDerivIdealSheafIterate k ((π ∣_ W) ≫ (W.ι ≫ p)) ((P.comap W.ι).comap (π ∣_ W)) a
        ((K.comap W.ι).comap (π ∣_ W))
      = logDerivIdealSheafIterate k ((π ⁻¹ᵁ W).ι ≫ (π ≫ p)) ((P.comap π).comap (π ⁻¹ᵁ W).ι) a
          ((K.comap π).comap (π ⁻¹ᵁ W).ι) := by
    rw [hP, hKc]
    exact logDerivIdealSheafIterate_congr_hom k hq _ _ _
  have e5 : (logDerivIdealSheafIterate k (π ≫ p) (P.comap π) a (K.comap π)).comap (π ⁻¹ᵁ W).ι
      = logDerivIdealSheafIterate k ((π ⁻¹ᵁ W).ι ≫ (π ≫ p)) ((P.comap π).comap (π ⁻¹ᵁ W).ι) a
          ((K.comap π).comap (π ⁻¹ᵁ W).ι) :=
    logDerivIdealSheafIterate_comap_of_isOpenImmersion k (π ≫ p) (π ⁻¹ᵁ W).ι (P.comap π) (K.comap π) a
  have hmain : restrictIdeal ((logDerivIdealSheafIterate k p P a K).comap π) (π ⁻¹ᵁ W)
      = restrictIdeal (logDerivIdealSheafIterate k (π ≫ p) (P.comap π) a (K.comap π)) (π ⁻¹ᵁ W) :=
    e1.trans (e2.trans (e3.trans (e4.trans e5.symm)))
  exact ideal_eq_of_restrictIdeal_eq _ _ ⟨V, hVaff⟩ (FunctorialResolution.EmbeddedResolution.restrictIdeal_eq_of_le_of_eq hVU hmain)

theorem exists_affineOpen_comap_logDerivIdealSheafIterate_le (k : Type u) [Field k] [CharZero k]
    {X X₁ : Scheme.{u}} (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (π : X₁ ⟶ X) [IsLocallyNoetherian X₁] (Z H : X.IdealSheafData) (E : List X.IdealSheafData)
    [QuasiCompact (strictTransformι π Z H)]
    (hsnc : HasStrictNormalCrossingsWith p Z (H :: E)) (hHZ : H ≤ Z) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z)
    (K : X.IdealSheafData) (c : ℕ) (hK : K ≤ Z ^ c) (a : ℕ) (ha : a ≤ c)
    (x₁ : ↥X₁) (hx₁ : π.base x₁ ∈ Z.support) :
    haveI : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hsnc hπ
    ∃ V : X₁.affineOpens, x₁ ∈ V.1 ∧
      ((logDerivIdealSheafIterate k p H a K).comap π).ideal V ≤
        (Blowup.exceptionalIdeal π Z ^ (c - a) *
            logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) a
              (controlledTransform π Z K c hπ hK)).ideal V := by
  have hsm : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hsnc hπ
  obtain ⟨U0, hxU0, m, c0, S, aH, aE, hZ0, hHnone, hHsome, -, -, -, -⟩ :=
    hsnc.exists_etaleChart_of_cons hx₁
  obtain ⟨⟨U, hUaff⟩, hxU, hUU0⟩ :
      ∃ V : X.affineOpens, π.base x₁ ∈ V.1 ∧ V.1 ≤ U0 := by
    apply AlgebraicGeometry.Scheme.exists_affineOpens_mem_le
    exact hxU0
  let c1 : EtaleChart p U m := c0.restrict hUU0
  have hZ1 : restrictIdeal Z U = c1.coordIdeal S :=
    restrictIdeal_eq_restrict_coordIdeal_of_le hUU0 c0 Z S hZ0
  have hx₁U : x₁ ∈ π ⁻¹ᵁ U := hxU
  obtain ⟨s, hsS, hx₁B0⟩ := exists_mem_domain_blowupChart_of_isBlowupAlongIdealSheaf π c1 S hπ hZ1 x₁ hx₁U
  let B0 : BlowupChart π c1 S s := blowupChartOfIsBlowup π c1 S hπ hZ1 s hsS
  have hx₁B0' : x₁ ∈ B0.domain := hx₁B0
  obtain ⟨Vsub, hVsubDomain, hV0aff, hx₁V0⟩ := B0.exists_isAffineOpen_mem_le_domain x₁ hx₁B0'
  let B : BlowupChart π c1 S s := B0.restrict Vsub hVsubDomain
  have hdom : B.domain = Vsub := BlowupChart.restrict_domain B0 Vsub hVsubDomain
  have hBaff : IsAffineOpen B.domain := by rw [hdom]; exact hV0aff
  have hx₁B : x₁ ∈ B.domain := by rw [hdom]; exact hx₁V0
  have hEW : restrictIdeal (Blowup.exceptionalIdeal π Z) B.domain = B.chart.coordIdeal {s} :=
    B.restrictIdeal_exceptionalIdeal Z hsS hZ1
  have hEideal : (Blowup.exceptionalIdeal π Z).ideal ⟨B.domain, hBaff⟩
      = Ideal.span {B.chart.coord s} := by
    have h := EtaleChart.ideal_eq_span_coord B.chart hBaff (Blowup.exceptionalIdeal π Z) {s} hEW
    simpa using h
  refine ⟨⟨B.domain, hBaff⟩, hx₁B, ?_⟩
  have hofEqTop : restrictIdeal (Blowup.strictTransform π Z H) B.domain = ⊤ →
      ((logDerivIdealSheafIterate k p H a K).comap π).ideal ⟨B.domain, hBaff⟩ ≤
        (Blowup.exceptionalIdeal π Z ^ (c - a) *
            logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) a
              (controlledTransform π Z K c hπ hK)).ideal ⟨B.domain, hBaff⟩ := by
    intro hST
    have hST2 : restrictIdeal (Blowup.strictTransform π Z H) B.domain
        = restrictIdeal (⊤ : X₁.IdealSheafData) B.domain := by
      rw [hST, restrictIdeal_top_eq_top]
    have hST' : (Blowup.strictTransform π Z H).ideal ⟨B.domain, hBaff⟩ = ⊤ :=
      (ideal_eq_of_restrictIdeal_eq _ _ ⟨B.domain, hBaff⟩ hST2).trans (ideal_top_eq_top _)
    have h1 : (logDerivIdealSheafIterate k p H a K).ideal ⟨U, hUaff⟩ ≤
        (derivIdealSheafIterate k p a K).ideal ⟨U, hUaff⟩ :=
      ideal_le_ideal_of_le (logDerivIdealSheafIterate_le_derivIdealSheafIterate k p H a K) _
    have h2 : ((logDerivIdealSheafIterate k p H a K).comap π).ideal ⟨B.domain, hBaff⟩ ≤
        ((derivIdealSheafIterate k p a K).comap π).ideal ⟨B.domain, hBaff⟩ := by
      rw [Scheme.IdealSheafData.comap_ideal_eq_map_appLE (logDerivIdealSheafIterate k p H a K) π
          ⟨U, hUaff⟩ ⟨B.domain, hBaff⟩ B.domain_le,
        Scheme.IdealSheafData.comap_ideal_eq_map_appLE (derivIdealSheafIterate k p a K) π
          ⟨U, hUaff⟩ ⟨B.domain, hBaff⟩ B.domain_le]
      exact Ideal.map_mono h1
    have h3 := comap_derivIdealSheafIterate_le_exceptionalIdeal_pow_mul k p π Z (H :: E) hsnc hπ
      K c hK a ha
    refine le_trans h2 (le_trans (ideal_le_ideal_of_le h3 ⟨B.domain, hBaff⟩) (le_of_eq ?_))
    rw [ideal_mul_apply, ideal_mul_apply, logDerivIdealSheafIterate_ideal, derivIdealSheafIterate_ideal,
      hST', logDerivIdealIterate_top_eq_derivIdealIterate]
  cases haH : aH with
  | none =>
      have hHU : restrictIdeal H U = ⊤ := restrictIdeal_eq_top_of_le H hUU0 (hHnone haH)
      exact hofEqTop (B.restrictIdeal_strictTransform_of_eq_top Z H hHU)
  | some t =>
      have hHU : restrictIdeal H U = c1.coordIdeal {t} :=
        restrictIdeal_eq_restrict_coordIdeal_of_le hUU0 c0 H {t} (hHsome t haH)
      by_cases hts : t = s
      · subst hts
        exact hofEqTop (B.restrictIdeal_strictTransform_coordIdeal_self Z H hsS hZ1 hHU)
      · have htS : t ∈ S :=
          mem_of_restrictIdeal_eq_coordIdeal_of_le hUaff c1 Z H S t hHZ hHU hZ1 (π.base x₁) hxU hx₁
        have hSTW : restrictIdeal (Blowup.strictTransform π Z H) B.domain = B.chart.coordIdeal {t} :=
          B.restrictIdeal_strictTransform_of_mem_of_ne Z H hsS hZ1 t htS hts hHU
        have hHideal : H.ideal ⟨U, hUaff⟩ = Ideal.span {c1.coord t} := by
          have h := EtaleChart.ideal_eq_span_coord c1 hUaff H {t} hHU
          simpa using h
        have hSTideal : (Blowup.strictTransform π Z H).ideal ⟨B.domain, hBaff⟩
            = Ideal.span {B.chart.coord t} := by
          have h := EtaleChart.ideal_eq_span_coord B.chart hBaff (Blowup.strictTransform π Z H) {t} hSTW
          simpa using h
        let algU : Algebra k Γ(X, U) := sectionsAlgebra k p U
        let algB : Algebra k Γ(X₁, B.domain) := sectionsAlgebra k (π ≫ p) B.domain
        have hcomm : ∀ r : k,
            (π.appLE U B.domain B.domain_le).hom (sectionsAlgebraMap k p U r)
              = sectionsAlgebraMap k (π ≫ p) B.domain r :=
          sectionsAlgebraMap_appLE_apply k p π U B.domain B.domain_le
        let φ : Γ(X, U) →ₐ[k] Γ(X₁, B.domain) :=
          { toRingHom := (π.appLE U B.domain B.domain_le).hom
            commutes' := hcomm }
        have hφ : ∀ x, φ x = (π.appLE U B.domain B.domain_le).hom x := fun _ => rfl
        have hmapRestrict : ∀ I : Ideal Γ(X, U),
            Ideal.map φ I = Ideal.map (π.appLE U B.domain B.domain_le).hom I :=
          fun I => ideal_map_congr φ (π.appLE U B.domain B.domain_le).hom hφ I
        have hcoordU : ∀ i : ULift.{u} (Fin m),
            @EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X, U) _ c1.algebra i
              = c1.coord i.down :=
          fun i => EtaleChart.etaleCoordinates_coord c1 i.down
        have hcoordW : ∀ i : ULift.{u} (Fin m),
            @EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X₁, B.domain) _ B.chart.algebra i
              = B.chart.coord i.down :=
          fun i => EtaleChart.etaleCoordinates_coord B.chart i.down
        have hcoordUt : @EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X, U) _ c1.algebra
            (ULift.up t) = c1.coord t := EtaleChart.etaleCoordinates_coord c1 t
        have hcoordWt : @EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X₁, B.domain) _
            B.chart.algebra (ULift.up t) = B.chart.coord t :=
          EtaleChart.etaleCoordinates_coord B.chart t
        have hcoordWs : @EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X₁, B.domain) _
            B.chart.algebra (ULift.up s) = B.chart.coord s :=
          EtaleChart.etaleCoordinates_coord B.chart s
        have hin : ∀ i ∈ uliftFinset m S, i ≠ (ULift.up s : ULift.{u} (Fin m)) →
            φ (@EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X, U) _ c1.algebra i) =
              (@EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X₁, B.domain) _
                  B.chart.algebra i) *
                (@EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X₁, B.domain) _
                  B.chart.algebra (ULift.up s)) := by
          intro i hi hne
          rw [hcoordU i, hcoordW i, hcoordW (ULift.up s), hφ]
          exact B.appLE_coord_of_mem i.down (down_mem_of_mem_uliftFinset hi)
            (fun h => hne (congrArg ULift.up h))
        have hself : φ (@EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X, U) _ c1.algebra
              (ULift.up s))
            = @EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X₁, B.domain) _ B.chart.algebra
              (ULift.up s) := by
          rw [hcoordU (ULift.up s), hcoordW (ULift.up s), hφ]
          exact B.appLE_coord_self
        have hout : ∀ i ∉ uliftFinset m S,
            φ (@EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X, U) _ c1.algebra i) =
              @EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X₁, B.domain) _
                B.chart.algebra i := by
          intro i hi
          rw [hcoordU i, hcoordW i, hφ]
          exact B.appLE_coord_of_not_mem i.down (fun h => hi (up_mem_uliftFinset h))
        have hnzd : (@EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X₁, B.domain) _
            B.chart.algebra (ULift.up s)) ∈ nonZeroDivisors Γ(X₁, B.domain) := by
          rw [hcoordWs]
          exact coord_mem_nonZeroDivisors hBaff B.chart s
        have hJ : Ideal.map φ (K.ideal ⟨U, hUaff⟩) ≤
            Ideal.span {(@EtaleCoordinates.coord k _ (ULift.{u} (Fin m)) Γ(X₁, B.domain) _
                B.chart.algebra (ULift.up s)) ^ c} *
              (controlledTransform π Z K c hπ hK).ideal ⟨B.domain, hBaff⟩ := by
          rw [hcoordWs, hmapRestrict]
          refine le_of_eq ?_
          rw [← Ideal.span_singleton_pow, ← hEideal, ← ideal_pow_apply, ← ideal_mul_apply,
            exceptionalIdeal_pow_mul_controlledTransform π Z K c hπ hK]
          exact (Scheme.IdealSheafData.comap_ideal_eq_map_appLE K π ⟨U, hUaff⟩
            ⟨B.domain, hBaff⟩ B.domain_le).symm
        have key := @EtaleCoordinates.map_logDerivIdealIterate_le_span_pow_mul k _ (ULift.{u} (Fin m))
          (Classical.decEq (ULift.{u} (Fin m)))
          Γ(X, U) _ (sectionsAlgebra k p U) c1.algebra c1.isScalarTower
          (c1.algebra_formallyEtale hUaff)
          Γ(X₁, B.domain) _ (sectionsAlgebra k (π ≫ p) B.domain) B.chart.algebra
          B.chart.isScalarTower (B.chart.algebra_formallyEtale hBaff)
          φ (uliftFinset m S) (ULift.up s) _
          hin hself hout (up_mem_uliftFinset hsS) hnzd (ULift.up t) (up_mem_uliftFinset htS)
          (fun h => hts (congrArg ULift.down h))
          (K.ideal ⟨U, hUaff⟩) ((controlledTransform π Z K c hπ hK).ideal ⟨B.domain, hBaff⟩)
          c hJ a ha
        rw [hcoordUt, hcoordWs, hcoordWt, hmapRestrict] at key
        rw [Scheme.IdealSheafData.comap_ideal_eq_map_appLE (logDerivIdealSheafIterate k p H a K) π
            ⟨U, hUaff⟩ ⟨B.domain, hBaff⟩ B.domain_le,
          logDerivIdealSheafIterate_ideal, hHideal, ideal_mul_apply, ideal_pow_apply, hEideal,
          logDerivIdealSheafIterate_ideal, hSTideal, Ideal.span_singleton_pow]
        exact key

theorem comap_logDerivIdealSheafIterate_le_exceptionalIdeal_pow_mul (k : Type u) [Field k] [CharZero k]
    {X X₁ : Scheme.{u}} (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (π : X₁ ⟶ X) [IsLocallyNoetherian X₁] (Z H : X.IdealSheafData) (E : List X.IdealSheafData)
    [QuasiCompact (strictTransformι π Z H)]
    (hsnc : HasStrictNormalCrossingsWith p Z (H :: E)) (hHZ : H ≤ Z) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z)
    (K : X.IdealSheafData) (c : ℕ) (hK : K ≤ Z ^ c) (a : ℕ) (ha : a ≤ c) :
    haveI : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hsnc hπ
    (logDerivIdealSheafIterate k p H a K).comap π ≤
      Blowup.exceptionalIdeal π Z ^ (c - a) *
        logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) a
          (controlledTransform π Z K c hπ hK) := by
  have hsm : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hsnc hπ
  refine le_of_forall_exists_affineOpen ?_
  intro y
  by_cases hy : π.base y ∈ Z.support
  · exact exists_affineOpen_comap_logDerivIdealSheafIterate_le k p π Z H E hsnc hHZ hπ K c hK a ha
      y hy
  · have : IsIso (π ∣_ Z.support.compl) :=
      isIso_morphismRestrict_of_isBlowupAlongIdealSheaf hπ Z.support.compl (fun x hx => hx)
    have hyW : y ∈ π ⁻¹ᵁ Z.support.compl := hy
    obtain ⟨V, hyV, hVW, heq⟩ :=
      exists_affineOpen_comap_logDerivIdealSheafIterate_eq k p π Z.support.compl y hyW a H K
    have hEV2 : restrictIdeal (Blowup.exceptionalIdeal π Z) V.1
        = restrictIdeal (⊤ : X₁.IdealSheafData) V.1 := by
      rw [restrictIdeal_exceptionalIdeal_eq_top_of_le_compl π Z V.1 hVW, restrictIdeal_top_eq_top]
    have hEV : (Blowup.exceptionalIdeal π Z).ideal V = ⊤ :=
      (ideal_eq_of_restrictIdeal_eq _ _ V hEV2).trans (ideal_top_eq_top _)
    have hSTV : (Blowup.strictTransform π Z H).ideal V = (H.comap π).ideal V :=
      ideal_eq_of_restrictIdeal_eq _ _ V
        (restrictIdeal_strictTransform_eq_comap_of_le_compl π Z H V.1 hVW)
    have hCTV : (controlledTransform π Z K c hπ hK).ideal V = (K.comap π).ideal V := by
      have h := congrArg (fun A : X₁.IdealSheafData => A.ideal V)
        (exceptionalIdeal_pow_mul_controlledTransform π Z K c hπ hK)
      simp only [ideal_mul_apply, ideal_pow_apply, hEV] at h
      rw [← Ideal.one_eq_top, one_pow, one_mul] at h
      exact h
    have hexcPow : (Blowup.exceptionalIdeal π Z ^ (c - a) *
          logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) a
            (controlledTransform π Z K c hπ hK)).ideal V
        = (logDerivIdealSheafIterate k (π ≫ p) (H.comap π) a (K.comap π)).ideal V := by
      rw [ideal_mul_apply, ideal_pow_apply, hEV, ← Ideal.one_eq_top, one_pow, one_mul,
        logDerivIdealSheafIterate_ideal, logDerivIdealSheafIterate_ideal, hSTV, hCTV]
    exact ⟨V, hyV, le_of_eq (heq.trans hexcPow.symm)⟩

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupLogDerivativeIdealBound =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PartialDerivativeIdeal =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PartialDerivativeIdeal", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleCoordinates\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdeal\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

namespace FunctorialResolution.EmbeddedResolution

namespace EtaleCoordinates

variable (k : Type*) [CommRing k] (ι : Type*) (S : Type*) [CommRing S]
  [Algebra (MvPolynomial ι k) S] [Algebra k S] [IsScalarTower k (MvPolynomial ι k) S]
  [Algebra.FormallyEtale (MvPolynomial ι k) S]

theorem coord_smul_partialDeriv_mem_tangentDerivations (h : ι) :
    coord k ι S h • partialDeriv k ι S h ∈
      tangentDerivations k (Ideal.span ({coord k ι S h} : Set S)) :=
  smul_mem_tangentDerivations k (Ideal.span ({coord k ι S h} : Set S))
    (Ideal.mem_span_singleton_self (coord k ι S h)) (partialDeriv k ι S h)

theorem partialDeriv_mem_tangentDerivations_of_ne {i h : ι} (hih : i ≠ h) :
    partialDeriv k ι S i ∈ tangentDerivations k (Ideal.span ({coord k ι S h} : Set S)) := by
  rw [mem_tangentDerivations_span_singleton, partialDeriv_coord_of_ne k ι S i h hih]
  exact Submodule.zero_mem _

theorem coord_mul_partialDeriv_mem_logDerivIdeal (h : ι) (J : Ideal S) {g : S} (hg : g ∈ J) :
    coord k ι S h * partialDeriv k ι S h g ∈
      logDerivIdeal k (Ideal.span ({coord k ι S h} : Set S)) J := by
  have hmem := derivation_apply_mem_logDerivIdeal k (Ideal.span ({coord k ι S h} : Set S)) J
    (coord k ι S h • partialDeriv k ι S h)
    (coord_smul_partialDeriv_mem_tangentDerivations k ι S h) hg
  simpa [smul_eq_mul] using hmem

theorem partialDeriv_mem_logDerivIdeal_of_ne {i h : ι} (hih : i ≠ h) (J : Ideal S) {g : S}
    (hg : g ∈ J) :
    partialDeriv k ι S i g ∈ logDerivIdeal k (Ideal.span ({coord k ι S h} : Set S)) J :=
  derivation_apply_mem_logDerivIdeal k (Ideal.span ({coord k ι S h} : Set S)) J
    (partialDeriv k ι S i) (partialDeriv_mem_tangentDerivations_of_ne k ι S hih) hg

def partialDerivIdeal (h : ι) (J : Ideal S) : Ideal S :=
  J ⊔ Ideal.span {x : S | ∃ g ∈ J, partialDeriv k ι S h g = x}

private theorem partialDerivIdeal_def (h : ι) (J : Ideal S) :
    partialDerivIdeal k ι S h J =
      J ⊔ Ideal.span {x : S | ∃ g ∈ J, partialDeriv k ι S h g = x} := rfl

theorem le_partialDerivIdeal (h : ι) (J : Ideal S) : J ≤ partialDerivIdeal k ι S h J := by
  rw [partialDerivIdeal_def]
  exact le_sup_left

theorem partialDeriv_mem_partialDerivIdeal (h : ι) (J : Ideal S) {g : S} (hg : g ∈ J) :
    partialDeriv k ι S h g ∈ partialDerivIdeal k ι S h J := by
  rw [partialDerivIdeal_def]
  exact Submodule.mem_sup_right (Ideal.subset_span ⟨g, hg, rfl⟩)

theorem partialDerivIdeal_le_iff (h : ι) (J K : Ideal S) :
    partialDerivIdeal k ι S h J ≤ K ↔ J ≤ K ∧ ∀ g ∈ J, partialDeriv k ι S h g ∈ K := by
  rw [partialDerivIdeal_def, sup_le_iff, Ideal.span_le]
  constructor
  · rintro ⟨h1, h2⟩
    exact ⟨h1, fun g hg => h2 ⟨g, hg, rfl⟩⟩
  · rintro ⟨h1, h2⟩
    refine ⟨h1, ?_⟩
    intro x hx
    obtain ⟨g, hg, rfl⟩ := hx
    exact h2 g hg

theorem partialDerivIdeal_le (h : ι) {J K : Ideal S} (hJK : J ≤ K)
    (hD : ∀ g ∈ J, partialDeriv k ι S h g ∈ K) : partialDerivIdeal k ι S h J ≤ K :=
  (partialDerivIdeal_le_iff k ι S h J K).mpr ⟨hJK, hD⟩

theorem partialDerivIdeal_mono (h : ι) : Monotone (partialDerivIdeal k ι S h) := by
  intro I J hIJ
  rw [partialDerivIdeal_le_iff]
  refine ⟨hIJ.trans (le_partialDerivIdeal k ι S h J), fun g hg => ?_⟩
  exact partialDeriv_mem_partialDerivIdeal k ι S h J (hIJ hg)

def partialDerivIdealIterate (h : ι) : ℕ → Ideal S → Ideal S
  | 0, J => J
  | l + 1, J => partialDerivIdeal k ι S h (partialDerivIdealIterate h l J)

theorem partialDerivIdealIterate_zero (h : ι) (J : Ideal S) :
    partialDerivIdealIterate k ι S h 0 J = J := rfl

theorem partialDerivIdealIterate_succ (h : ι) (l : ℕ) (J : Ideal S) :
    partialDerivIdealIterate k ι S h (l + 1) J =
      partialDerivIdeal k ι S h (partialDerivIdealIterate k ι S h l J) := rfl

private def evalDerivationAddHom (g : S) : Derivation k S S →+ S where
  toFun D := D g
  map_zero' := rfl
  map_add' _ _ := rfl

omit [Algebra (MvPolynomial ι k) S] [IsScalarTower k (MvPolynomial ι k) S]
  [Algebra.FormallyEtale (MvPolynomial ι k) S] in
private theorem derivation_sum_apply (s : Finset ι) (f : ι → Derivation k S S) (g : S) :
    (∑ i ∈ s, f i) g = ∑ i ∈ s, f i g :=
  map_sum (evalDerivationAddHom k S g) f s

theorem derivation_apply_eq_sum_partialDeriv [Fintype ι] (D : Derivation k S S) (g : S) :
    D g = ∑ i, D (coord k ι S i) * partialDeriv k ι S i g := by
  have h1 : D g = (∑ i, D (coord k ι S i) • partialDeriv k ι S i : Derivation k S S) g :=
    congrArg (fun E : Derivation k S S => E g) (eq_sum_smul_partialDeriv k ι S D)
  have h2 : (∑ i, D (coord k ι S i) • partialDeriv k ι S i : Derivation k S S) g
      = ∑ i, D (coord k ι S i) * partialDeriv k ι S i g :=
    derivation_sum_apply k ι S Finset.univ (fun i => D (coord k ι S i) • partialDeriv k ι S i) g
  exact h1.trans h2

private theorem derivIdeal_le_logDerivIdeal_sup_partialDerivIdeal [Fintype ι] (h : ι) (I : Ideal S) :
    derivIdeal k I ≤
      logDerivIdeal k (Ideal.span ({coord k ι S h} : Set S)) I ⊔ partialDerivIdeal k ι S h I := by
  rw [derivIdeal_le_iff]
  refine ⟨(le_logDerivIdeal k (Ideal.span ({coord k ι S h} : Set S)) I).trans le_sup_left, ?_⟩
  intro D g hg
  rw [derivation_apply_eq_sum_partialDeriv k ι S D g]
  refine Ideal.sum_mem _ ?_
  intro i _
  by_cases hi : i = h
  · rw [hi]
    exact Submodule.mem_sup_right
      (Ideal.mul_mem_left _ _ (partialDeriv_mem_partialDerivIdeal k ι S h I hg))
  · exact Submodule.mem_sup_left
      (Ideal.mul_mem_left _ _ (partialDeriv_mem_logDerivIdeal_of_ne k ι S hi I hg))

private def idealInfComapPartialDeriv (h : ι) (K : Ideal S) : Ideal S where
  carrier := {g : S | g ∈ K ∧ partialDeriv k ι S h g ∈ K}
  add_mem' := by
    intro a b ha hb
    obtain ⟨ha1, ha2⟩ := ha
    obtain ⟨hb1, hb2⟩ := hb
    refine ⟨Submodule.add_mem K ha1 hb1, ?_⟩
    rw [map_add (f := _)]
    exact Submodule.add_mem K ha2 hb2
  zero_mem' := by
    refine ⟨Submodule.zero_mem K, ?_⟩
    rw [map_zero]
    exact Submodule.zero_mem K
  smul_mem' := by
    intro c x hx
    obtain ⟨hx1, hx2⟩ := hx
    refine ⟨Ideal.mul_mem_left K c hx1, ?_⟩
    have hl : partialDeriv k ι S h (c * x)
        = c * partialDeriv k ι S h x + x * partialDeriv k ι S h c := by
      rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
    show partialDeriv k ι S h (c * x) ∈ K
    rw [hl]
    exact Submodule.add_mem K (Ideal.mul_mem_left K c hx2) (Ideal.mul_mem_right _ K hx1)

private theorem mem_idealInfComapPartialDeriv_iff (h : ι) (K : Ideal S) (g : S) :
    g ∈ idealInfComapPartialDeriv k ι S h K ↔ g ∈ K ∧ partialDeriv k ι S h g ∈ K := Iff.rfl

private theorem partialDerivIdeal_logDerivIdeal_le [Fintype ι] [DecidableEq ι] (h : ι) (I : Ideal S) :
    partialDerivIdeal k ι S h
        (logDerivIdeal k (Ideal.span ({coord k ι S h} : Set S)) I) ≤
      logDerivIdeal k (Ideal.span ({coord k ι S h} : Set S)) (partialDerivIdeal k ι S h I) := by
  have key : logDerivIdeal k (Ideal.span ({coord k ι S h} : Set S)) I ≤
      idealInfComapPartialDeriv k ι S h
        (logDerivIdeal k (Ideal.span ({coord k ι S h} : Set S))
          (partialDerivIdeal k ι S h I)) := by
    rw [logDerivIdeal_le_iff]
    constructor
    · intro g hg
      rw [mem_idealInfComapPartialDeriv_iff]
      refine ⟨?_, ?_⟩
      · exact le_logDerivIdeal k _ _ (le_partialDerivIdeal k ι S h I hg)
      · exact le_logDerivIdeal k _ _ (partialDeriv_mem_partialDerivIdeal k ι S h I hg)
    · intro D hD y hy
      rw [mem_idealInfComapPartialDeriv_iff]
      have hDmem : D (coord k ι S h) ∈ Ideal.span ({coord k ι S h} : Set S) :=
        (mem_tangentDerivations_span_singleton k (coord k ι S h) D).mp hD
      obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.mp hDmem
      refine ⟨?_, ?_⟩
      · exact logDerivIdeal_mono k _ (le_partialDerivIdeal k ι S h I)
          (derivation_apply_mem_logDerivIdeal k _ I D hD hy)
      · rw [derivation_apply_eq_sum_partialDeriv k ι S D y]

        rw [map_sum]
        refine Ideal.sum_mem _ ?_
        intro i _
        rw [Derivation.leibniz]
        refine Submodule.add_mem _ ?_ ?_
        · by_cases hi : i = h
          · rw [hi, smul_eq_mul, ← hc, mul_assoc]
            refine Ideal.mul_mem_left _ _ ?_
            exact coord_mul_partialDeriv_mem_logDerivIdeal k ι S h
              (partialDerivIdeal k ι S h I)
              (partialDeriv_mem_partialDerivIdeal k ι S h I hy)
          · rw [smul_eq_mul, partialDeriv_comm k ι S h i y]
            refine Ideal.mul_mem_left _ _ ?_
            exact partialDeriv_mem_logDerivIdeal_of_ne k ι S hi
              (partialDerivIdeal k ι S h I)
              (partialDeriv_mem_partialDerivIdeal k ι S h I hy)
        · by_cases hi : i = h
          · rw [hi, smul_eq_mul]
            refine Ideal.mul_mem_right _ _ ?_
            exact le_logDerivIdeal k _ _ (partialDeriv_mem_partialDerivIdeal k ι S h I hy)
          · rw [smul_eq_mul]
            refine Ideal.mul_mem_right _ _ ?_
            exact logDerivIdeal_mono k _ (le_partialDerivIdeal k ι S h I)
              (partialDeriv_mem_logDerivIdeal_of_ne k ι S hi I hy)
  refine partialDerivIdeal_le k ι S h ?_ ?_
  · intro g hg
    exact ((mem_idealInfComapPartialDeriv_iff k ι S h _ g).mp (key hg)).1
  · intro g hg
    exact ((mem_idealInfComapPartialDeriv_iff k ι S h _ g).mp (key hg)).2

private theorem partialDerivIdeal_logDerivIdealIterate_le [Fintype ι] [DecidableEq ι] (h : ι) (m : ℕ)
    (I : Ideal S) :
    partialDerivIdeal k ι S h
        (logDerivIdealIterate k (Ideal.span ({coord k ι S h} : Set S)) m I) ≤
      logDerivIdealIterate k (Ideal.span ({coord k ι S h} : Set S)) m
        (partialDerivIdeal k ι S h I) := by
  induction m with
  | zero => exact le_of_eq (by simp only [logDerivIdealIterate_zero])
  | succ m ih =>
      rw [logDerivIdealIterate_succ, logDerivIdealIterate_succ]
      exact (partialDerivIdeal_logDerivIdeal_le k ι S h _).trans (logDerivIdeal_mono k _ ih)

theorem derivIdealIterate_le_iSup_logDerivIdealIterate_partialDerivIdealIterate [Fintype ι] [DecidableEq ι]
    (h : ι) (n : ℕ) (J : Ideal S) :
    derivIdealIterate k n J ≤
      ⨆ l, ⨆ _ : l ≤ n,
        logDerivIdealIterate k (Ideal.span ({coord k ι S h} : Set S)) (n - l)
          (partialDerivIdealIterate k ι S h l J) := by
  induction n with
  | zero =>
      rw [derivIdealIterate_zero]
      exact le_iSup₂ (f := fun m (_ : m ≤ 0) =>
        logDerivIdealIterate k (Ideal.span ({coord k ι S h} : Set S)) (0 - m)
          (partialDerivIdealIterate k ι S h m J)) 0 le_rfl
  | succ n ih =>
      rw [derivIdealIterate_succ]
      refine le_trans (derivIdeal_mono k ih) ?_
      refine le_trans (derivIdeal_iSup_le k _) ?_
      refine iSup_le fun l => ?_
      refine le_trans (derivIdeal_iSup_le k _) ?_
      refine iSup_le fun hl => ?_
      refine le_trans (derivIdeal_le_logDerivIdeal_sup_partialDerivIdeal k ι S h _) ?_
      refine sup_le ?_ ?_
      · rw [← logDerivIdealIterate_succ, show n - l + 1 = n + 1 - l from by omega]
        exact le_iSup₂ (f := fun m (_ : m ≤ n + 1) =>
          logDerivIdealIterate k (Ideal.span ({coord k ι S h} : Set S)) (n + 1 - m)
            (partialDerivIdealIterate k ι S h m J)) l (by omega)
      · refine le_trans (partialDerivIdeal_logDerivIdealIterate_le k ι S h (n - l) _) ?_
        rw [← partialDerivIdealIterate_succ, show n - l = n + 1 - (l + 1) from by omega]
        exact le_iSup₂ (f := fun m (_ : m ≤ n + 1) =>
          logDerivIdealIterate k (Ideal.span ({coord k ι S h} : Set S)) (n + 1 - m)
            (partialDerivIdealIterate k ι S h m J)) (l + 1) (by omega)

end EtaleCoordinates

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PartialDerivativeIdeal =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.ControlledTransformLogDerivativesInCharts =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.ControlledTransformLogDerivativesInCharts", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PartialDerivativeIdeal\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativesInBlowupCharts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace FunctorialResolution.EmbeddedResolution
namespace EtaleCoordinates

section

variable (k : Type*) [CommRing k] (ι : Type*)
  (S : Type*) [CommRing S] [Algebra k S] [Algebra (MvPolynomial ι k) S]
  [IsScalarTower k (MvPolynomial ι k) S] [Algebra.FormallyEtale (MvPolynomial ι k) S]

theorem partialDerivIdeal_iSup_le {κ : Sort*} (h : ι) (F : κ → Ideal S) :
    partialDerivIdeal k ι S h (⨆ j, F j) ≤ ⨆ j, partialDerivIdeal k ι S h (F j) := by
  refine partialDerivIdeal_le k ι S h (iSup_mono fun j => le_partialDerivIdeal k ι S h (F j)) ?_
  intro g hg
  refine Submodule.iSup_induction (motive := fun x =>
      partialDeriv k ι S h x ∈ ⨆ j, partialDerivIdeal k ι S h (F j)) (fun j => F j) hg ?_ ?_ ?_
  · intro j x hx
    exact le_iSup (fun j => partialDerivIdeal k ι S h (F j)) j
      (partialDeriv_mem_partialDerivIdeal k ι S h (F j) hx)
  · simp only [map_zero]
    exact Submodule.zero_mem _
  · intro x y hx hy
    simp only [map_add (f := _)]
    exact Submodule.add_mem _ hx hy

theorem partialDerivIdeal_biSup_le (h : ι) (n : ℕ) (F : ℕ → Ideal S) :
    partialDerivIdeal k ι S h (⨆ i, ⨆ _ : i ≤ n, F i) ≤
      ⨆ i, ⨆ _ : i ≤ n, partialDerivIdeal k ι S h (F i) :=
  (partialDerivIdeal_iSup_le k ι S h (fun i => ⨆ _ : i ≤ n, F i)).trans
    (iSup_mono fun i => partialDerivIdeal_iSup_le k ι S h (fun _ : i ≤ n => F i))

end

section

variable (k : Type*) [CommRing k] (ι : Type*) [DecidableEq ι]
  (S : Type*) [CommRing S] [Algebra k S] [Algebra (MvPolynomial ι k) S]
  [IsScalarTower k (MvPolynomial ι k) S] [Algebra.FormallyEtale (MvPolynomial ι k) S]
  (S₁ : Type*) [CommRing S₁] [Algebra k S₁] [Algebra (MvPolynomial ι k) S₁]
  [IsScalarTower k (MvPolynomial ι k) S₁] [Algebra.FormallyEtale (MvPolynomial ι k) S₁]
  (φ : S →ₐ[k] S₁) (T : Finset ι) (s h : ι)

theorem partialDerivIdeal_controlledTransform_le_sup
    (_hsT : s ∈ T)
    (hin : ∀ i ∈ T, i ≠ s → φ (coord k ι S i) = coord k ι S₁ i * coord k ι S₁ s)
    (hs : φ (coord k ι S s) = coord k ι S₁ s)
    (hout : ∀ i ∉ T, φ (coord k ι S i) = coord k ι S₁ i)
    (hnzd : coord k ι S₁ s ∈ nonZeroDivisors S₁)
    (hhT : h ∈ T) (hhs : h ≠ s)
    (J : Ideal S) (L : ℕ → Ideal S₁) (m : ℕ)
    (hL : ∀ i ≤ m,
      Ideal.span {coord k ι S₁ s ^ (m - i)} * L i = Ideal.map φ (derivIdealIterate k i J))
    (i : ℕ) (hi : i < m) :
    partialDerivIdeal k ι S₁ h (L i) ≤ L i ⊔ L (i + 1) := by
  refine partialDerivIdeal_le k ι S₁ h le_sup_left ?_
  intro g hg
  have hc : m - i = (m - i - 1) + 1 := by omega
  have hJ : Ideal.span {coord k ι S₁ s ^ ((m - i - 1) + 1)} * L i
      = Ideal.map φ (derivIdealIterate k i J) := by
    rw [← hc]
    exact hL i (le_of_lt hi)
  have hD : Ideal.map φ (derivIdeal k (derivIdealIterate k i J)) ≤
      Ideal.span {coord k ι S₁ s ^ (m - i - 1)} * L (i + 1) := by
    have h2 := hL (i + 1) (by omega)
    have h3 : m - (i + 1) = m - i - 1 := by omega
    rw [h3] at h2
    rw [← derivIdealIterate_succ]
    exact le_of_eq h2.symm
  exact partialDeriv_mem_sup_of_span_pow_mul_eq_map k ι S S₁ φ T s hin hs hout hnzd h hhT hhs
    (derivIdealIterate k i J) (L i) (L (i + 1)) (m - i - 1) hJ hD g hg

theorem partialDerivIdealIterate_controlledTransform_le_iSup
    (hsT : s ∈ T)
    (hin : ∀ i ∈ T, i ≠ s → φ (coord k ι S i) = coord k ι S₁ i * coord k ι S₁ s)
    (hs : φ (coord k ι S s) = coord k ι S₁ s)
    (hout : ∀ i ∉ T, φ (coord k ι S i) = coord k ι S₁ i)
    (hnzd : coord k ι S₁ s ∈ nonZeroDivisors S₁)
    (hhT : h ∈ T) (hhs : h ≠ s)
    (J : Ideal S) (L : ℕ → Ideal S₁) (m : ℕ)
    (hL : ∀ i ≤ m,
      Ideal.span {coord k ι S₁ s ^ (m - i)} * L i = Ideal.map φ (derivIdealIterate k i J))
    (l : ℕ) (hl : l ≤ m) :
    partialDerivIdealIterate k ι S₁ h l (L 0) ≤ ⨆ i, ⨆ _ : i ≤ l, L i := by
  revert hl
  induction l with
  | zero =>
      intro _
      rw [partialDerivIdealIterate_zero]
      exact le_iSup₂ (f := fun i (_ : i ≤ 0) => L i) 0 le_rfl
  | succ l ih =>
      intro hl
      rw [partialDerivIdealIterate_succ]
      have hlm : l ≤ m := Nat.le_of_succ_le hl
      have h1 := ih hlm
      refine le_trans (partialDerivIdeal_mono k ι S₁ h h1) ?_
      refine le_trans (partialDerivIdeal_biSup_le k ι S₁ h l L) ?_
      refine iSup_le fun i => iSup_le fun hi => ?_
      have him : i < m := lt_of_le_of_lt hi (by omega)
      have hstep := partialDerivIdeal_controlledTransform_le_sup k ι S S₁ φ T s h
        hsT hin hs hout hnzd hhT hhs J L m hL i him
      refine hstep.trans (sup_le ?_ ?_)
      · exact le_iSup₂ (f := fun j (_ : j ≤ l + 1) => L j) i (by omega)
      · exact le_iSup₂ (f := fun j (_ : j ≤ l + 1) => L j) (i + 1) (by omega)

theorem derivIdealIterate_le_iSup_logDerivIdealIterate_controlledTransform [Fintype ι]
    (hsT : s ∈ T)
    (hin : ∀ i ∈ T, i ≠ s → φ (coord k ι S i) = coord k ι S₁ i * coord k ι S₁ s)
    (hs : φ (coord k ι S s) = coord k ι S₁ s)
    (hout : ∀ i ∉ T, φ (coord k ι S i) = coord k ι S₁ i)
    (hnzd : coord k ι S₁ s ∈ nonZeroDivisors S₁)
    (hhT : h ∈ T) (hhs : h ≠ s)
    (J : Ideal S) (L : ℕ → Ideal S₁) (m : ℕ)
    (hL : ∀ i ≤ m,
      Ideal.span {coord k ι S₁ s ^ (m - i)} * L i = Ideal.map φ (derivIdealIterate k i J))
    (n : ℕ) (hn : n ≤ m) :
    derivIdealIterate k n (L 0) ≤
      ⨆ i, ⨆ _ : i ≤ n,
        logDerivIdealIterate k (Ideal.span ({coord k ι S₁ h} : Set S₁)) (n - i) (L i) := by
  refine (derivIdealIterate_le_iSup_logDerivIdealIterate_partialDerivIdealIterate k ι S₁ h n (L 0)).trans ?_
  refine iSup_le fun l => iSup_le fun hln => ?_
  have hlm : l ≤ m := hln.trans hn
  have h1 : partialDerivIdealIterate k ι S₁ h l (L 0) ≤ ⨆ i, ⨆ _ : i ≤ l, L i :=
    partialDerivIdealIterate_controlledTransform_le_iSup k ι S S₁ φ T s h
      hsT hin hs hout hnzd hhT hhs J L m hL l hlm
  refine (logDerivIdealIterate_mono k (Ideal.span ({coord k ι S₁ h} : Set S₁)) (n - l) h1).trans ?_
  refine (logDerivIdealIterate_iSup_le k (Ideal.span ({coord k ι S₁ h} : Set S₁)) (n - l)
    (fun i => ⨆ _ : i ≤ l, L i)).trans ?_
  refine iSup_le fun i => ?_
  refine (logDerivIdealIterate_iSup_le k (Ideal.span ({coord k ι S₁ h} : Set S₁)) (n - l)
    (fun _ : i ≤ l => L i)).trans ?_
  refine iSup_le fun hi => ?_
  have h2 : logDerivIdealIterate k (Ideal.span ({coord k ι S₁ h} : Set S₁)) (n - l) (L i) ≤
      logDerivIdealIterate k (Ideal.span ({coord k ι S₁ h} : Set S₁)) (n - i) (L i) :=
    logDerivIdealIterate_le_of_le k (Ideal.span ({coord k ι S₁ h} : Set S₁))
      (by omega : n - l ≤ n - i) (L i)
  exact h2.trans (le_iSup₂
    (f := fun j (_ : j ≤ n) =>
      logDerivIdealIterate k (Ideal.span ({coord k ι S₁ h} : Set S₁)) (n - j) (L j))
    i (hi.trans hln))

end

end EtaleCoordinates
end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.ControlledTransformLogDerivativesInCharts =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.StrictTransformLogDerivativeIdealSheaf =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.StrictTransformLogDerivativeIdealSheaf", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupSmoothness\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheaf\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.ControlledTransformLogDerivativesInCharts\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback\nimport Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness\nimport Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupChartComputations\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictNormalCrossingsBlowup\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformChart\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformSubscheme\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.CoordinateDivisorBlowup\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

private theorem top_ideal_eq_top {Y : Scheme.{u}} (U : Y.affineOpens) :
    (⊤ : Y.IdealSheafData).ideal U = ⊤ := by
  simp [Scheme.IdealSheafData.ideal_top]

private theorem pow_ideal_eq_ideal_pow {Y : Scheme.{u}} (A : Y.IdealSheafData)
    (U : Y.affineOpens) : ∀ j : ℕ, (A ^ j).ideal U = A.ideal U ^ j :=
  fun j => congrFun (Scheme.IdealSheafData.ideal_pow A j) U

private theorem restrictIdeal_top {Y : Scheme.{u}} (U : Y.Opens) :
    restrictIdeal (⊤ : Y.IdealSheafData) U = ⊤ := by
  simp [restrictIdeal_eq_comap_ι]

private theorem ideal_affineOpen_eq_top_of_restrictIdeal_eq_top {Y : Scheme.{u}} (D : Y.IdealSheafData)
    {V : Y.Opens} (hV : IsAffineOpen V) (h : restrictIdeal D V = ⊤) :
    D.ideal ⟨V, hV⟩ = ⊤ := by
  have h2 : restrictIdeal D V = restrictIdeal (⊤ : Y.IdealSheafData) V := by
    rw [restrictIdeal_top]
    exact h
  rw [ideal_eq_of_restrictIdeal_eq D ⊤ ⟨V, hV⟩ h2, top_ideal_eq_top]

theorem exists_affineOpen_derivIdealSheafIterate_le_biSup_logDerivIdealSheafIterate
    (k : Type u) [Field k] [CharZero k] {X X₁ : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (π : X₁ ⟶ X) [IsLocallyNoetherian X₁]
    (Z H : X.IdealSheafData) (E : List X.IdealSheafData)
    (hsnc : HasStrictNormalCrossingsWith p Z (H :: E)) (hHZ : H ≤ Z) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z)
    [QuasiCompact (strictTransformι π Z H)]
    (A : X.IdealSheafData) (m : ℕ) (L : ℕ → X₁.IdealSheafData)
    (hL : ∀ l ≤ m,
      Blowup.exceptionalIdeal π Z ^ (m - l) * L l = (derivIdealSheafIterate k p l A).comap π)
    (n : ℕ) (hn : n ≤ m) (x₁ : ↥X₁) (hx₁ : π.base x₁ ∈ Z.support) :
    letI : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hsnc hπ
    ∃ V : X₁.affineOpens, x₁ ∈ V.1 ∧
      (derivIdealSheafIterate k (π ≫ p) n (L 0)).ideal V ≤
        (⨆ l, ⨆ _ : l ≤ n,
            logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - l) (L l)).ideal V := by
  let hsmooth : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hsnc hπ
  show ∃ V : X₁.affineOpens, x₁ ∈ V.1 ∧
      (derivIdealSheafIterate k (π ≫ p) n (L 0)).ideal V ≤
        (⨆ l, ⨆ _ : l ≤ n,
            logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - l) (L l)).ideal V
  obtain ⟨U, hxU, mm, c, S, aH, a, hZU, hHtop, hHcoord, -, -, -, -⟩ :=
    hsnc.exists_etaleChart_of_cons hx₁
  obtain ⟨U', _mm2, hxU', hU'U, hU'aff, -⟩ := exists_etaleChart_le p (π.base x₁) U hxU
  obtain ⟨cU, hZU', hHU'⟩ : ∃ cU : EtaleChart p U' mm, restrictIdeal Z U' = cU.coordIdeal S ∧
      (restrictIdeal H U' = ⊤ ∨ ∃ t : Fin mm, restrictIdeal H U' = cU.coordIdeal {t}) := by
    refine ⟨c.restrict hU'U, restrictIdeal_eq_restrict_coordIdeal_of_le hU'U c Z S hZU, ?_⟩
    cases haH : aH with
    | none => exact Or.inl (FunctorialResolution.EmbeddedResolution.restrictIdeal_eq_top_of_le H hU'U (hHtop haH))
    | some t =>
        exact Or.inr ⟨t, restrictIdeal_eq_restrict_coordIdeal_of_le hU'U c H {t} (hHcoord t haH)⟩
  have hx₁U' : x₁ ∈ π ⁻¹ᵁ U' := hxU'
  obtain ⟨s, hs, hx₁dom⟩ := exists_mem_domain_blowupChart_of_isBlowupAlongIdealSheaf π cU S hπ hZU' x₁ hx₁U'
  obtain ⟨B, hBaff, hx₁B⟩ : ∃ B : BlowupChart π cU S s, IsAffineOpen B.domain ∧ x₁ ∈ B.domain := by
    obtain ⟨V, hVle, hVaff, hxV⟩ :=
      (blowupChartOfIsBlowup π cU S hπ hZU' s hs).exists_isAffineOpen_mem_le_domain x₁ hx₁dom
    refine ⟨(blowupChartOfIsBlowup π cU S hπ hZU' s hs).restrict V hVle, ?_, ?_⟩
    · rw [BlowupChart.restrict_domain]
      exact hVaff
    · rw [BlowupChart.restrict_domain]
      exact hxV
  have hcase : (Blowup.strictTransform π Z H).ideal ⟨B.domain, hBaff⟩ = ⊤ ∨
      ∃ t : Fin mm, (Blowup.strictTransform π Z H).ideal ⟨B.domain, hBaff⟩
          = Ideal.span {B.chart.coord t} ∧ t ≠ s ∧ t ∈ S := by
    rcases hHU' with hHtopU | ⟨t, hHt⟩
    · exact Or.inl (ideal_affineOpen_eq_top_of_restrictIdeal_eq_top _ hBaff
        (B.restrictIdeal_strictTransform_of_eq_top Z H hHtopU))
    · by_cases hts : t = s
      · subst hts
        exact Or.inl (ideal_affineOpen_eq_top_of_restrictIdeal_eq_top _ hBaff
          (B.restrictIdeal_strictTransform_coordIdeal_self Z H hs hZU' hHt))
      · have htS : t ∈ S :=
          mem_of_restrictIdeal_eq_coordIdeal_of_le hU'aff cU Z H S t hHZ hHt hZU'
            (π.base x₁) hxU' hx₁
        refine Or.inr ⟨t, ?_, hts, htS⟩
        rw [B.chart.ideal_eq_span_coord hBaff _ {t}
          (B.restrictIdeal_strictTransform_of_mem_of_ne Z H hs hZU' t htS hts hHt)]
        simp
  rcases hcase with hP | ⟨t, hP, hts, htS⟩
  · refine ⟨⟨B.domain, hBaff⟩, hx₁B, ?_⟩
    refine le_trans ?_ (Scheme.IdealSheafData.le_def.mp (le_iSup₂ (f := fun l (_ : l ≤ n) =>
      logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - l) (L l)) 0
      (Nat.zero_le n)) _)
    rw [derivIdealSheafIterate_ideal, logDerivIdealSheafIterate_ideal, hP,
      logDerivIdealIterate_top_eq_derivIdealIterate, Nat.sub_zero]
  · refine ⟨⟨B.domain, hBaff⟩, hx₁B, ?_⟩
    let instS : Algebra k Γ(X, U') := sectionsAlgebra k p U'
    let instS₁ : Algebra k Γ(X₁, B.domain) := sectionsAlgebra k (π ≫ p) B.domain
    let instPS : Algebra (MvPolynomial (ULift.{u, 0} (Fin mm)) k) Γ(X, U') := cU.algebra
    let instPS₁ : Algebra (MvPolynomial (ULift.{u, 0} (Fin mm)) k) Γ(X₁, B.domain) :=
      B.chart.algebra
    have instST : IsScalarTower k (MvPolynomial (ULift.{u, 0} (Fin mm)) k) Γ(X, U') :=
      cU.isScalarTower
    have instST₁ : IsScalarTower k (MvPolynomial (ULift.{u, 0} (Fin mm)) k) Γ(X₁, B.domain) :=
      B.chart.isScalarTower
    have instFormallyEtale : Algebra.FormallyEtale (MvPolynomial (ULift.{u, 0} (Fin mm)) k) Γ(X, U') :=
      cU.algebra_formallyEtale hU'aff
    have instFE₁ :
        Algebra.FormallyEtale (MvPolynomial (ULift.{u, 0} (Fin mm)) k) Γ(X₁, B.domain) :=
      B.chart.algebra_formallyEtale hBaff
    let instDecEq : DecidableEq (ULift.{u, 0} (Fin mm)) := Classical.decEq _
    have hcoordU : ∀ j : Fin mm,
        EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X, U') ⟨j⟩ = cU.coord j :=
      fun j => cU.etaleCoordinates_coord j
    have hcoordV : ∀ j : Fin mm,
        EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X₁, B.domain) ⟨j⟩ = B.chart.coord j :=
      fun j => B.chart.etaleCoordinates_coord j
    have hBle : B.domain ≤ π ⁻¹ᵁ U' := B.domain_le
    let φ : Γ(X, U') →ₐ[k] Γ(X₁, B.domain) :=
      { ((π.appLE U' B.domain hBle).hom) with
        commutes' := fun x => sectionsAlgebraMap_appLE_apply k p π U' B.domain hBle x }
    obtain ⟨T, hmemT⟩ : ∃ T : Finset (ULift.{u, 0} (Fin mm)),
        ∀ i : ULift.{u, 0} (Fin mm), i ∈ T ↔ i.down ∈ S := by
      refine ⟨S.map ⟨ULift.up, fun x y hxy => by simpa using hxy⟩, fun i => ?_⟩
      constructor
      · intro hi
        obtain ⟨j, hj, hji⟩ := Finset.mem_map.1 hi
        rw [← hji]
        exact hj
      · intro hi
        exact Finset.mem_map.2 ⟨i.down, hi, rfl⟩
    have hsT : (⟨s⟩ : ULift.{u, 0} (Fin mm)) ∈ T := (hmemT ⟨s⟩).2 hs
    have hhT : (⟨t⟩ : ULift.{u, 0} (Fin mm)) ∈ T := (hmemT ⟨t⟩).2 htS
    have hhs : (⟨t⟩ : ULift.{u, 0} (Fin mm)) ≠ ⟨s⟩ := fun hh => hts (congrArg ULift.down hh)
    have hin : ∀ i ∈ T, i ≠ (⟨s⟩ : ULift.{u, 0} (Fin mm)) →
        φ (EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X, U') i) =
          EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X₁, B.domain) i *
            EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X₁, B.domain) ⟨s⟩ := by
      rintro ⟨i⟩ hiT hine
      rw [hcoordU, hcoordV, hcoordV]
      exact B.appLE_coord_of_mem i ((hmemT ⟨i⟩).1 hiT) (fun hh => hine (congrArg ULift.up hh))
    have hsc : φ (EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X, U')
          (⟨s⟩ : ULift.{u, 0} (Fin mm))) =
        EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X₁, B.domain) ⟨s⟩ := by
      rw [hcoordU, hcoordV]
      exact B.appLE_coord_self
    have hout : ∀ i ∉ T,
        φ (EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X, U') i) =
          EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X₁, B.domain) i := by
      rintro ⟨i⟩ hiT
      rw [hcoordU, hcoordV]
      exact B.appLE_coord_of_not_mem i (fun hh => hiT ((hmemT ⟨i⟩).2 hh))
    have hnzd : EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X₁, B.domain)
        (⟨s⟩ : ULift.{u, 0} (Fin mm)) ∈ nonZeroDivisors Γ(X₁, B.domain) := by
      rw [hcoordV]
      exact coord_mem_nonZeroDivisors hBaff B.chart s
    have hE : (Blowup.exceptionalIdeal π Z).ideal ⟨B.domain, hBaff⟩
        = Ideal.span {B.chart.coord s} := by
      rw [B.chart.ideal_eq_span_coord hBaff _ {s} (B.restrictIdeal_exceptionalIdeal Z hs hZU')]
      simp
    have hL' : ∀ i ≤ m,
        Ideal.span {(EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X₁, B.domain)
            (⟨s⟩ : ULift.{u, 0} (Fin mm))) ^ (m - i)} * (L i).ideal ⟨B.domain, hBaff⟩ =
          Ideal.map φ (derivIdealIterate k i (A.ideal ⟨U', hU'aff⟩)) := by
      intro i hi
      have hmul : (Blowup.exceptionalIdeal π Z ^ (m - i) * L i).ideal ⟨B.domain, hBaff⟩ =
          (Blowup.exceptionalIdeal π Z ^ (m - i)).ideal ⟨B.domain, hBaff⟩ *
            (L i).ideal ⟨B.domain, hBaff⟩ := by
        simp only [Scheme.IdealSheafData.ideal_mul, Pi.mul_apply]
      rw [hcoordV, ← Ideal.span_singleton_pow, ← hE, ← pow_ideal_eq_ideal_pow, ← hmul,
        hL i hi,
        Scheme.IdealSheafData.comap_ideal_eq_map_appLE _ π ⟨U', hU'aff⟩ ⟨B.domain, hBaff⟩ hBle,
        derivIdealSheafIterate_ideal]
      rfl
    have key : derivIdealIterate k n ((L 0).ideal ⟨B.domain, hBaff⟩) ≤
        ⨆ i, ⨆ _ : i ≤ n, logDerivIdealIterate k
          (Ideal.span {(EtaleCoordinates.coord k (ULift.{u, 0} (Fin mm)) Γ(X₁, B.domain)
            (⟨t⟩ : ULift.{u, 0} (Fin mm)))}) (n - i) ((L i).ideal ⟨B.domain, hBaff⟩) :=
      EtaleCoordinates.derivIdealIterate_le_iSup_logDerivIdealIterate_controlledTransform
        k (ULift.{u, 0} (Fin mm)) Γ(X, U') Γ(X₁, B.domain) φ T ⟨s⟩ ⟨t⟩
        hsT hin hsc hout hnzd hhT hhs (A.ideal ⟨U', hU'aff⟩)
        (fun i => (L i).ideal ⟨B.domain, hBaff⟩) m hL' n hn
    rw [hcoordV] at key
    rw [derivIdealSheafIterate_ideal]
    refine le_trans key ?_
    refine iSup_le fun i => ?_
    refine iSup_le fun hi => ?_
    have hre : logDerivIdealIterate k (Ideal.span {B.chart.coord t}) (n - i)
          ((L i).ideal ⟨B.domain, hBaff⟩) =
        (logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - i) (L i)).ideal
          ⟨B.domain, hBaff⟩ := by
      rw [logDerivIdealSheafIterate_ideal, hP]
    rw [hre]
    exact Scheme.IdealSheafData.le_def.mp (le_iSup₂ (f := fun l (_ : l ≤ n) =>
      logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - l) (L l)) i hi) _

theorem derivIdealSheafIterate_le_biSup_logDerivIdealSheafIterate_strictTransform
    (k : Type u) [Field k] [CharZero k] {X X₁ : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (π : X₁ ⟶ X) [IsLocallyNoetherian X₁]
    (Z H : X.IdealSheafData) (E : List X.IdealSheafData)
    (hsnc : HasStrictNormalCrossingsWith p Z (H :: E)) (hHZ : H ≤ Z) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z)
    [QuasiCompact (strictTransformι π Z H)]
    (A : X.IdealSheafData) (m : ℕ) (L : ℕ → X₁.IdealSheafData)
    (hL : ∀ l ≤ m,
      Blowup.exceptionalIdeal π Z ^ (m - l) * L l = (derivIdealSheafIterate k p l A).comap π)
    (n : ℕ) (hn : n ≤ m) :
    letI : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hsnc hπ
    derivIdealSheafIterate k (π ≫ p) n (L 0) ≤
      ⨆ l, ⨆ _ : l ≤ n,
        logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - l) (L l) := by
  let hsmooth : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hsnc hπ
  show derivIdealSheafIterate k (π ≫ p) n (L 0) ≤
      ⨆ l, ⨆ _ : l ≤ n,
        logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - l) (L l)
  have main : ∀ y : ↥X₁, ∃ V : X₁.affineOpens, y ∈ V.1 ∧
      (derivIdealSheafIterate k (π ≫ p) n (L 0)).ideal V ≤
        (⨆ l, ⨆ _ : l ≤ n,
            logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - l) (L l)).ideal V := by
    intro y
    by_cases hy : π.base y ∈ Z.support
    · exact exists_affineOpen_derivIdealSheafIterate_le_biSup_logDerivIdealSheafIterate
        k p π Z H E hsnc hHZ hπ A m L hL n hn y hy
    · have hyW : y ∈ π ⁻¹ᵁ (Z.support.compl) := hy
      have : IsIso (π ∣_ (Z.support.compl)) :=
        isIso_morphismRestrict_of_isBlowupAlongIdealSheaf hπ (Z.support.compl) (fun x hx => hx)
      obtain ⟨V, hyV, hVW, heq⟩ :=
        exists_affineOpen_comap_derivIdealSheafIterate_eq k p π (Z.support.compl) y hyW n A
      refine ⟨V, hyV, ?_⟩
      have hEV : (Blowup.exceptionalIdeal π Z).ideal V = ⊤ :=
        ideal_affineOpen_eq_top_of_restrictIdeal_eq_top _ V.2
          (restrictIdeal_exceptionalIdeal_eq_top_of_le_compl π Z (V : X₁.Opens) hVW)
      have hiterate : ∀ l, l ≤ m →
          (L l).ideal V = ((derivIdealSheafIterate k p l A).comap π).ideal V := by
        intro l hl
        have hx : (Blowup.exceptionalIdeal π Z ^ (m - l) * L l).ideal V
            = ((derivIdealSheafIterate k p l A).comap π).ideal V := by rw [hL l hl]
        have hmul : (Blowup.exceptionalIdeal π Z ^ (m - l) * L l).ideal V
            = (Blowup.exceptionalIdeal π Z ^ (m - l)).ideal V * (L l).ideal V := by
          simp only [Scheme.IdealSheafData.ideal_mul, Pi.mul_apply]
        rw [hmul, pow_ideal_eq_ideal_pow, hEV, Ideal.top_pow, Ideal.top_mul] at hx
        exact hx
      have h0 : (L 0).ideal V = (A.comap π).ideal V := by
        have h00 := hiterate 0 (Nat.zero_le m)
        rwa [derivIdealSheafIterate_zero] at h00
      have hstep : (derivIdealSheafIterate k (π ≫ p) n (L 0)).ideal V = (L n).ideal V := by
        rw [derivIdealSheafIterate_ideal, h0,
          ← derivIdealSheafIterate_ideal k (π ≫ p) n (A.comap π) V, ← heq, ← hiterate n hn]
      rw [hstep]
      have hmono := Scheme.IdealSheafData.le_def.mp (le_iSup₂ (f := fun l (_ : l ≤ n) =>
        logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - l) (L l)) n
        (le_refl n)) V
      rwa [Nat.sub_self, logDerivIdealSheafIterate_zero] at hmono
  exact le_of_forall_exists_affineOpen main

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.StrictTransformLogDerivativeIdealSheaf =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LogDerivIdealEstimate =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LogDerivIdealEstimate", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupSmoothness\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheaf\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupLogDerivativeIdealBound\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.StrictTransformLogDerivativeIdealSheaf\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u v

open CategoryTheory AlgebraicGeometry TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

private noncomputable def iSupIdealSheaf {Y : Scheme.{u}} {ι : Sort v} (J : ι → Y.IdealSheafData) :
    Y.IdealSheafData where
  ideal U := ⨆ i, (J i).ideal U
  map_ideal_basicOpen := by
    intro U f
    simp only [Ideal.map_iSup]
    exact iSup_congr fun i => (J i).map_ideal_basicOpen U f

private theorem pointwiseSup_ideal {Y : Scheme.{u}} {ι : Sort v} (J : ι → Y.IdealSheafData)
    (U : Y.affineOpens) : (iSupIdealSheaf J).ideal U = ⨆ i, (J i).ideal U := rfl

private theorem ideal_iSup_le_iSup_ideal {Y : Scheme.{u}} {ι : Sort v} (J : ι → Y.IdealSheafData)
    (U : Y.affineOpens) : (⨆ i, J i).ideal U ≤ ⨆ i, (J i).ideal U := by
  have h : (⨆ i, J i) ≤ iSupIdealSheaf J := by
    refine iSup_le fun i => Scheme.IdealSheafData.le_def.mpr fun V => ?_
    rw [pointwiseSup_ideal J V]
    exact le_iSup (fun i' => (J i').ideal V) i
  have h2 := Scheme.IdealSheafData.le_def.mp h U
  rwa [pointwiseSup_ideal J U] at h2

private theorem idealSheafData_mul_le_mul_left {Y : Scheme.{u}} (F : Y.IdealSheafData)
    {A B : Y.IdealSheafData} (h : A ≤ B) : F * A ≤ F * B := by
  refine Scheme.IdealSheafData.le_def.mpr fun U => ?_
  have e1 : (F * A).ideal U = F.ideal U * A.ideal U := rfl
  have e2 : (F * B).ideal U = F.ideal U * B.ideal U := rfl
  rw [e1, e2]
  exact Ideal.mul_mono le_rfl (Scheme.IdealSheafData.le_def.mp h U)

theorem logDerivIdealSheaf_iSup_le (k : Type u) [CommRing k] [IsNoetherianRing k]
    {Y : Scheme.{u}} (p : Y ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.LocallyOfFiniteType p] (P : Y.IdealSheafData)
    {ι : Sort v} (J : ι → Y.IdealSheafData) :
    logDerivIdealSheaf k p P (⨆ i, J i) ≤ ⨆ i, logDerivIdealSheaf k p P (J i) := by
  refine Scheme.IdealSheafData.le_def.mpr fun U => ?_
  refine le_trans (@logDerivIdeal_mono k _ _ _ (sectionsAlgebra k p U.1) (P.ideal U) _ _
    (ideal_iSup_le_iSup_ideal J U)) ?_
  refine le_trans (@logDerivIdeal_iSup_le k _ _ _ (sectionsAlgebra k p U.1) ι (P.ideal U)
    (fun i => (J i).ideal U)) ?_
  exact iSup_le fun i =>
    Scheme.IdealSheafData.le_def.mp (le_iSup (fun i' => logDerivIdealSheaf k p P (J i')) i) U

theorem logDerivIdealSheafIterate_iSup_le (k : Type u) [CommRing k] [IsNoetherianRing k]
    {Y : Scheme.{u}} (p : Y ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.LocallyOfFiniteType p] (P : Y.IdealSheafData) (r : ℕ)
    {ι : Sort v} (J : ι → Y.IdealSheafData) :
    logDerivIdealSheafIterate k p P r (⨆ i, J i) ≤ ⨆ i, logDerivIdealSheafIterate k p P r (J i) := by
  induction r with
  | zero => exact le_rfl
  | succ r ih =>
      have h1 : logDerivIdealSheafIterate k p P (r + 1) (⨆ i, J i)
          ≤ ⨆ i, logDerivIdealSheaf k p P (logDerivIdealSheafIterate k p P r (J i)) := by
        rw [logDerivIdealSheafIterate_succ]
        exact le_trans (logDerivIdealSheaf_mono k p P ih)
          (logDerivIdealSheaf_iSup_le k p P
            (fun i => logDerivIdealSheafIterate k p P r (J i)))
      refine h1.trans (iSup_le fun i => le_iSup_of_le i ?_)
      exact le_of_eq (logDerivIdealSheafIterate_succ k p P r (J i)).symm

theorem logDerivIdealSheafIterate_biSup_le (k : Type u) [CommRing k] [IsNoetherianRing k]
    {Y : Scheme.{u}} (p : Y ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.LocallyOfFiniteType p] (P : Y.IdealSheafData) (r n : ℕ)
    (J : ℕ → Y.IdealSheafData) :
    logDerivIdealSheafIterate k p P r (⨆ l, ⨆ _ : l ≤ n, J l) ≤
      ⨆ l, ⨆ _ : l ≤ n, logDerivIdealSheafIterate k p P r (J l) := by
  refine le_trans (logDerivIdealSheafIterate_iSup_le k p P r
    (fun l => ⨆ _ : l ≤ n, J l)) ?_
  refine iSup_le fun l => ?_
  refine le_trans (logDerivIdealSheafIterate_iSup_le k p P r (fun _ : l ≤ n => J l)) ?_
  exact iSup_le fun h => le_iSup_of_le l (le_iSup_of_le h le_rfl)

theorem derivIdealSheafIterate_le_biSup_logDerivIdealSheafIterate_of_blowup
    (k : Type u) [Field k] [CharZero k] {X X₁ : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (π : X₁ ⟶ X) [IsLocallyNoetherian X₁]
    (Z H : X.IdealSheafData) (E : List X.IdealSheafData)
    [QuasiCompact (strictTransformι π Z H)]
    (hsnc : HasStrictNormalCrossingsWith p Z (H :: E)) (hHZ : H ≤ Z) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z)
    (m : ℕ) (K : ℕ → X.IdealSheafData) (hK : ∀ l ≤ m, K l ≤ Z ^ (m - l))
    (hest : ∀ n < m,
      derivIdealSheafIterate k p n (K 0) ≤
        ⨆ l, ⨆ _ : l ≤ n, logDerivIdealSheafIterate k p H (n - l) (K l))
    (K' : ℕ → X₁.IdealSheafData)
    (hK' : ∀ l ≤ m, Blowup.exceptionalIdeal π Z ^ (m - l) * K' l = (K l).comap π)
    (n : ℕ) (hn : n < m) :
    letI : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hsnc hπ
    derivIdealSheafIterate k (π ≫ p) n (K' 0) ≤
      ⨆ l, ⨆ _ : l ≤ n,
        logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - l) (K' l) := by
  have hsm : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hsnc hπ
  show derivIdealSheafIterate k (π ≫ p) n (K' 0) ≤
      ⨆ l, ⨆ _ : l ≤ n,
        logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (n - l) (K' l)
  have hcart : Blowup.IsLocallyGeneratedByNonZeroDivisor (Blowup.exceptionalIdeal π Z) := hπ.1
  have hK0 : K 0 ≤ Z ^ m := by simpa using hK 0 (Nat.zero_le m)
  have hA : ∀ l : ℕ, derivIdealSheafIterate k p l (K 0) ≤ Z ^ (m - l) := fun l =>
    derivIdealSheafIterate_le_pow_of_hasStrictNormalCrossingsWith k p Z (K 0) (H :: E) hsnc m hK0 l
  obtain ⟨L, hLspec⟩ : ∃ L : ℕ → X₁.IdealSheafData, ∀ l : ℕ,
      Blowup.exceptionalIdeal π Z ^ (m - l) * L l = (derivIdealSheafIterate k p l (K 0)).comap π :=
    ⟨fun l => controlledTransform π Z (derivIdealSheafIterate k p l (K 0)) (m - l) hπ (hA l),
      fun l => exceptionalIdeal_pow_mul_controlledTransform π Z (derivIdealSheafIterate k p l (K 0)) (m - l) hπ (hA l)⟩
  have hL0 : L 0 = K' 0 := by
    refine Blowup.IsLocallyGeneratedByNonZeroDivisor.eq_of_mul_eq_mul (hcart.pow (m - 0)) ?_
    rw [hLspec 0, hK' 0 (Nat.zero_le m), derivIdealSheafIterate_zero]
  have hstep : ∀ l, l ≤ n → L l ≤
      ⨆ j, ⨆ _ : j ≤ l,
        logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (l - j) (K' j) := by
    intro l hl
    have hlm : l < m := lt_of_le_of_lt hl hn
    have key : ∀ j, j ≤ l → (logDerivIdealSheafIterate k p H (l - j) (K j)).comap π ≤
        Blowup.exceptionalIdeal π Z ^ (m - l) *
          logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (l - j) (K' j) := by
      intro j hj
      have hjm : j ≤ m := by omega
      have ha : l - j ≤ m - j := by omega
      have h3 := comap_logDerivIdealSheafIterate_le_exceptionalIdeal_pow_mul k p π Z H E hsnc hHZ hπ
        (K j) (m - j) (hK j hjm) (l - j) ha
      have h4 : K' j = controlledTransform π Z (K j) (m - j) hπ (hK j hjm) :=
        eq_controlledTransform_of_mul_eq_comap π Z (K j) (m - j) hπ (hK j hjm) (K' j) (hK' j hjm)
      have harith : m - j - (l - j) = m - l := by omega
      rw [h4, ← harith]
      exact h3
    refine Blowup.IsLocallyGeneratedByNonZeroDivisor.le_of_mul_le_mul (hcart.pow (m - l)) ?_
    rw [hLspec l]
    refine le_trans (Scheme.IdealSheafData.comap_mono π (hest l hlm)) ?_
    refine le_trans (le_of_eq (comap_iSup_le_nat π l
      (fun j => logDerivIdealSheafIterate k p H (l - j) (K j)))) ?_
    refine iSup_le fun j => iSup_le fun hj => ?_
    exact le_trans (key j hj) (idealSheafData_mul_le_mul_left _
      (le_iSup_of_le j (le_iSup_of_le hj le_rfl)))
  have hmain := derivIdealSheafIterate_le_biSup_logDerivIdealSheafIterate_strictTransform
    k p π Z H E hsnc hHZ hπ (K 0) m L (fun l _ => hLspec l) n hn.le
  rw [hL0] at hmain
  refine le_trans hmain (iSup_le fun l => iSup_le fun hl => ?_)
  refine le_trans (logDerivIdealSheafIterate_mono k (π ≫ p) (Blowup.strictTransform π Z H) (n - l)
    (hstep l hl)) ?_
  refine le_trans (logDerivIdealSheafIterate_biSup_le k (π ≫ p) (Blowup.strictTransform π Z H)
    (n - l) l
    (fun j => logDerivIdealSheafIterate k (π ≫ p) (Blowup.strictTransform π Z H) (l - j) (K' j))) ?_
  refine iSup_le fun j => iSup_le fun hj => ?_
  rw [← logDerivIdealSheafIterate_add]
  have harith3 : n - l + (l - j) = n - j := by omega
  rw [harith3]
  exact le_iSup_of_le j (le_iSup_of_le (le_trans hj hl) le_rfl)

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LogDerivIdealEstimate =====
