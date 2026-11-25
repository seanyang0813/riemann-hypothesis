module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreSectionValueEqUnitMulFourierTerm
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermRatioAgreeSelf
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsExpandsAtSectionUniformised
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralThetaFamilyPrescribedLeadingTermStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjectiveStatement
public import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant
public import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsClosedImmersionIffPullRatio
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc
public import Mathlib.Algebra.Category.Ring.Basic
public import Mathlib.CategoryTheory.Limits.Shapes.Pullback.IsPullback.Defs
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.RingTheory.Ideal.Maps
public import Mathlib.RingTheory.Ideal.Quotient.Defs
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsLocalizedModuleResBasicOpenOfQcqs
public import Mathlib.Algebra.MvPolynomial.Eval
public import Mathlib.Algebra.MvPolynomial.CommRing
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl
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
import Development.AbelianVarietyTheory.Proofs.ThetaFamilyOrigin.ExistsMulPullSec
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale
import Mathlib.AlgebraicGeometry.Sites.Fpqc
import Mathlib.Tactic.Linter.Style
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsAdicColimitOfFactor
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaImmersionPointsAgreeNearOfEqualRatios, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningMorphismsAgreeBeyondThreshold, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfAgreeOnAffineOpenGenerators, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreThetaSectionGermEqFourierRatioMul, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreThetaSectionGermEqFourierRatioMulStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreTorusCoordinatesIsImmersion, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenFractionsProjSpaceImmersion, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteThetaSectionsThickeningCover, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteThetaSectionsThickeningCoverStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalGenerationRatiosClosedFibreAnyUnitSection, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalGenerationRatiosClosedFibreAnyUnitSectionStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionAppLESurjectiveAndKer, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RatioGenerationModMaxIdealOfClosedFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RatioGenerationModMaxIdealOfClosedFibreStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionRatiosGenerateModMaximal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionRatiosGenerateModMaximalStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalizedPresentationEvalQuotientFraction, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSectionRatioEqNearThickeningPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeNearPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatios, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatiosStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaImmersionPointsAgreeNearOfEqualRatios =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaImmersionPointsAgreeNearOfEqualRatios", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Development.AbelianVarietyTheory.Proofs.ThetaFamilyOrigin.ExistsMulPullSec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.ThetaSep

open GlobalTheory.ProjSpace

variable {X H Z : Scheme.{0}} {L : LB X} {K : Type} [Fintype K]

theorem sval_eq_secRatio_mul {φ : K → (H ⟶ X)} {ε : K → ℤ} (a b : LB.Sec (LB.LinComb L φ ε)) (r : Z ⟶ H) (z : Z)
    {J : (Z ⟶ X) → L.ι} (hJ : Good L z J) (ha : r z ∈ nonzeroLocus a) :
    sval b r z J = gs r z (nonzeroLocus a) (secRatio a b) * sval a r z J := by
  have hc := hJ.mem φ r
  have hm : r z ∈ nonzeroLocus a ⊓ (LB.LinComb L φ ε).U (fun k => J (r ≫ φ k)) := ⟨ha, hc⟩
  have e := congrArg (gs r z _) (secRatio_spec a b (fun k => J (r ≫ φ k)))
  rw [gs_mul r z _ hm, gs_res r z _ hm, gs_res r z _ hm, gs_res r z _ hm] at e
  exact e

theorem pullRatio_ι_comp {R : Type} [CommRing R] {M : ℕ} (P : H ⟶ PSpace R M) {U : H.Opens} {i : Fin (M + 1)}
    (hi : U ≤ P ⁻¹ᵁ chart R M i) (r : Z ⟶ H) (W : Z.Opens) (hW : W ≤ r ⁻¹ᵁ U)
    (h : ⊤ ≤ (W.ι ≫ r ≫ P) ⁻¹ᵁ chart R M i) (j : Fin (M + 1)) :
    pullRatio (W.ι ≫ r ≫ P) ⊤ i h j =
      (W.ι.appLE (r ⁻¹ᵁ U) ⊤ (W.ι_preimage_self.ge.trans (W.ι.preimage_mono hW))).hom
        ((r.app U).hom (pullRatio P U i hi j)) := by
  have hW' : ⊤ ≤ W.ι ⁻¹ᵁ (r ⁻¹ᵁ U) := W.ι_preimage_self.ge.trans (W.ι.preimage_mono hW)
  rw [pullRatio_of_eq (Category.assoc W.ι r P).symm h ((hW'.trans ((W.ι ≫ r).preimage_mono hi))),
    ← appLE_pullRatio (W.ι ≫ r) hW', Scheme.Hom.app_eq_appLE, appLE_appLE]

end GlobalTheory.Mum.ThetaSep

namespace GlobalTheory.Mum.ThetaSep

open GlobalTheory.ProjSpace

theorem agree_near_of_minors : ∀ (R : Type) [CommRing R] [IsDomain R] (D : DegPre R) (Y : Ext D) (k N : ℕ)
    (τ : Fin (N + 1) → SecK D.P.L Y.q.left k) (hτ : ⨆ i, nonzeroLocus (τ i) = ⊤),
    IsImmersion (GlobalTheory.ProjSpace.toProj Y.H.hom τ hτ) → ∀ (T : Over (Sp R)) (y y' : T ⟶ Y.H) (z : T.left)
    (J : (T.left ⟶ D.P.A.left) → D.P.L.ι), Good D.P.L z J →
    (∀ j l : Fin (N + 1), sval (τ j) y.left z J * sval (τ l) y'.left z J =
      sval (τ l) y.left z J * sval (τ j) y'.left z J) →
    ∃ W : T.left.Opens, z ∈ W ∧ W.ι ≫ y.left = W.ι ≫ y'.left := by
  intro R _ _ D Y k N τ hτ hImm T y y' z J hJ hrel
  have hmono : Mono (GlobalTheory.ProjSpace.toProj Y.H.hom τ hτ) := inferInstance
  obtain ⟨j₀, hj₀⟩ := TopologicalSpace.Opens.mem_iSup.1 (hτ.ge (Set.mem_univ (y.left z)))
  obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.1 (hτ.ge (Set.mem_univ (y'.left z)))
  have ua : IsUnit (sval (τ j₀) y.left z J) := (GlobalTheory.MulPullSec.mem_nonzeroLocus_iff _ _ _ hJ).1 hj₀
  have ubi : IsUnit (sval (τ i) y'.left z J) := (GlobalTheory.MulPullSec.mem_nonzeroLocus_iff _ _ _ hJ).1 hi
  have ub : IsUnit (sval (τ j₀) y'.left z J) := by
    have h := hrel j₀ i
    have : IsUnit (sval (τ i) y.left z J * sval (τ j₀) y'.left z J) := h ▸ ua.mul ubi
    exact isUnit_of_mul_isUnit_right this
  have hj₀' : y'.left z ∈ nonzeroLocus (τ j₀) := (GlobalTheory.MulPullSec.mem_nonzeroLocus_iff _ _ _ hJ).2 ub
  have hg : ∀ j, gs y.left z (nonzeroLocus (τ j₀)) (secRatio (τ j₀) (τ j)) =
      gs y'.left z (nonzeroLocus (τ j₀)) (secRatio (τ j₀) (τ j)) := by
    intro j
    have h := hrel j₀ j
    rw [sval_eq_secRatio_mul (τ j₀) (τ j) y.left z hJ hj₀,
      sval_eq_secRatio_mul (τ j₀) (τ j) y'.left z hJ hj₀'] at h
    refine ((ua.mul ub).mul_right_cancel ?_).symm
    calc _ = sval (τ j₀) y.left z J * (gs y'.left z (nonzeroLocus (τ j₀)) (secRatio (τ j₀) (τ j)) *
          sval (τ j₀) y'.left z J) := by ring
      _ = _ := by rw [h]; ring
  have hW : ∀ j, ∃ W : T.left.Opens, z ∈ W ∧ ∃ (h₁ : W ≤ y.left ⁻¹ᵁ nonzeroLocus (τ j₀))
      (h₂ : W ≤ y'.left ⁻¹ᵁ nonzeroLocus (τ j₀)),
      resG T.left h₁ ((y.left.app _).hom (secRatio (τ j₀) (τ j))) =
        resG T.left h₂ ((y'.left.app _).hom (secRatio (τ j₀) (τ j))) := by
    intro j
    have e := hg j
    rw [gs_eq _ z _ hj₀, gs_eq _ z _ hj₀'] at e
    obtain ⟨W, hzW, iU, iV, e'⟩ := TopCat.Presheaf.germ_eq T.left.presheaf z hj₀ hj₀' _ _ e
    exact ⟨W, hzW, leOfHom iU, leOfHom iV, e'⟩
  choose Wj hzWj h₁ h₂ heq using hW
  let W : T.left.Opens := Finset.univ.inf Wj
  have hzW : z ∈ W := Finset.inf_induction (p := fun U : T.left.Opens => z ∈ U) trivial
    (fun _ h _ h' => ⟨h, h'⟩) (fun j _ => hzWj j)
  have hWle : ∀ j, W ≤ Wj j := fun j => Finset.inf_le (Finset.mem_univ j)
  refine ⟨W, hzW, (cancel_mono (GlobalTheory.ProjSpace.toProj Y.H.hom τ hτ)).1 ?_⟩
  have hpre := toProj_preimage_chart Y.H.hom τ hτ j₀
  have hA : ∀ (r : T.left ⟶ Y.H.left), W ≤ r ⁻¹ᵁ nonzeroLocus (τ j₀) →
      ⊤ ≤ (W.ι ≫ r ≫ GlobalTheory.ProjSpace.toProj Y.H.hom τ hτ) ⁻¹ᵁ chart R N j₀ := fun r hr =>
    (W.ι_preimage_self.ge.trans (W.ι.preimage_mono hr)).trans
      ((W.ι ≫ r).preimage_mono hpre.ge)
  have hy₁ : W ≤ y.left ⁻¹ᵁ nonzeroLocus (τ j₀) := (hWle j₀).trans (h₁ j₀)
  have hy₂ : W ≤ y'.left ⁻¹ᵁ nonzeroLocus (τ j₀) := (hWle j₀).trans (h₂ j₀)
  simp only [Category.assoc]
  refine hom_ext ?_ fun _ => ⟨⊤, trivial, j₀, hA _ hy₁, hA _ hy₂, fun j => ?_⟩
  · simp only [Category.assoc, toProj_str]
    rw [Over.w y, Over.w y']
  · rw [pullRatio_ι_comp _ hpre.ge _ W hy₁, pullRatio_ι_comp _ hpre.ge _ W hy₂, pullRatio_toProj]
    have hW₁ : ⊤ ≤ W.ι ⁻¹ᵁ Wj j := W.ι_preimage_self.ge.trans (W.ι.preimage_mono (hWle j))
    rw [← appLE_resG W.ι (h₁ j) hW₁, ← appLE_resG W.ι (h₂ j) hW₁, heq j]

end GlobalTheory.Mum.ThetaSep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaImmersionPointsAgreeNearOfEqualRatios =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningMorphismsAgreeBeyondThreshold =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningMorphismsAgreeBeyondThreshold", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermRatioAgreeSelf\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreSectionValueEqUnitMulFourierTerm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsExpandsAtSectionUniformised\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralThetaFamilyPrescribedLeadingTermStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjectiveStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaImmersionPointsAgreeNearOfEqualRatios\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.AlgebraicGeometry.Sites.Fpqc\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem exists_closedFibre_factor : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (G : Over (Sp R)) (e : ℕ) (K : Type) [Field K] (a : Spec (CommRingCat.of K) ⟶ (thickObj R (maximalIdeal R) e G).left), ∃ g : Spec (CommRingCat.of K) ⟶ (thickObj R (maximalIdeal R) 0 G).left, g ≫ (fstG (maximalIdeal R) 0 G).left = a ≫ (fstG (maximalIdeal R) e G).left ∧ g ≫ (thickObj R (maximalIdeal R) 0 G).hom ≫ thick R (maximalIdeal R) 0 = a ≫ (thickObj R (maximalIdeal R) e G).hom ≫ thick R (maximalIdeal R) e := by
  intro R _ _ _ G e K _ a
  let f := a ≫ (thickObj R (maximalIdeal R) e G).hom
  let φ := Spec.preimage f
  have hφ : Spec.map φ = f := Spec.map_preimage f
  have hker : ∀ r ∈ maximalIdeal R ^ (0 + 1),
      (φ.hom.comp (Ideal.Quotient.mk (maximalIdeal R ^ (e + 1)))) r = 0 := by
    intro r hr
    rw [zero_add, pow_one] at hr
    have h1 : r ^ (e + 1) ∈ maximalIdeal R ^ (e + 1) := Ideal.pow_mem_pow hr _
    have h2 : (φ.hom.comp (Ideal.Quotient.mk (maximalIdeal R ^ (e + 1)))) r ^ (e + 1) = 0 := by
      rw [← map_pow, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem.2 h1, map_zero]
    exact pow_eq_zero_iff (Nat.succ_ne_zero e) |>.1 h2
  let ψ : R ⧸ maximalIdeal R ^ (0 + 1) →+* K := Ideal.Quotient.lift _ _ hker
  have hψ : (CommRingCat.ofHom (Ideal.Quotient.mk (maximalIdeal R ^ (0 + 1)))) ≫ CommRingCat.ofHom ψ =
      CommRingCat.ofHom (Ideal.Quotient.mk (maximalIdeal R ^ (e + 1))) ≫ φ := by
    ext r
    exact Ideal.Quotient.lift_mk (maximalIdeal R ^ (0 + 1)) (φ.hom.comp (Ideal.Quotient.mk (maximalIdeal R ^ (e + 1)))) hker
  have hc : (a ≫ pullback.fst G.hom (thick R (maximalIdeal R) e)) ≫ G.hom =
      Spec.map (CommRingCat.ofHom ψ) ≫ thick R (maximalIdeal R) 0 := by
    rw [Category.assoc, pullback.condition, ← Category.assoc]
    change f ≫ _ = _
    rw [← hφ, thick, thick, ← Spec.map_comp, ← Spec.map_comp, hψ]
  refine ⟨pullback.lift _ _ hc, pullback.lift_fst _ _ _, ?_⟩
  change pullback.lift _ _ hc ≫ pullback.snd _ _ ≫ _ = a ≫ pullback.snd _ _ ≫ _
  rw [pullback.lift_snd_assoc, ← hc, Category.assoc, pullback.condition]

theorem eq_of_germRatioAgree : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∃ k₀ : ℕ, 3 ≤ k₀ ∧ ∀ (e k : ℕ), k₀ ≤ k → ∀ (Z : Scheme.{0}) (u u' : Z ⟶ (thickObj R (maximalIdeal R) e G).left), u ≫ (thickObj R (maximalIdeal R) e G).hom = u' ≫ (thickObj R (maximalIdeal R) e G).hom → ∀ (s₀ : H0 U.LG.L k) (i i'' : Fin 1 → U.LG.L.ι) (z : Z), GermRatioAgree (u ≫ (fstG (maximalIdeal R) e G).left) (u' ≫ (fstG (maximalIdeal R) e G).left) s₀ i i'' z → u z = u' z := by
  intro R _ _ _ hB D A G _ _ hG U
  obtain ⟨Y⟩ : Nonempty (Ext D.toPre) := inferInstance
  obtain ⟨S, k₁, hk₁⟩ := _root_.GlobalTheory.Mum.ThetaImm.exists_immersion R hB D Y
  choose k₀f hk₀f using (_root_.GlobalTheory.ThFam.exists_intFam_lead R hB D).1
  refine ⟨max 3 (max k₁ (S.sup k₀f)), le_max_left _ _, ?_⟩
  intro e k hk Z u u' hu s₀ i i'' z h
  have hk3 : 3 ≤ k := le_trans (le_max_left _ _) hk
  have hkk₁ : k₁ ≤ k := le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) hk
  have hkS : S.sup k₀f ≤ k := le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) hk
  obtain ⟨N, α, b, τ, hτ, hαb, himm⟩ := hk₁ k hkk₁
  have hF : ∀ j, ∃ F : IntFam (maximalIdeal R) D.toPre k, F.Lead (α j) (b j) := fun j =>
    hk₀f (α j) k (le_trans (Finset.le_sup (hαb j).1) hkS) (b j)
  choose F hF using hF
  have hs : ∀ j, ∃ σ : H0 U.LG.L k, ∀ e, U.ExpandsAt e k σ (F j).f := fun j =>
    IntFam.exists_expandsAt R hB D A G U hG k (by omega) (F j)
  choose s hs using hs
  obtain ⟨hzi, hzi'', hu0, hu0', hrat⟩ := h
  set p := (fstG (maximalIdeal R) e G).left with hp
  have minor : ∀ j l, secGerm (u ≫ p) z (s j) i * secGerm (u' ≫ p) z (s l) i'' =
      secGerm (u ≫ p) z (s l) i * secGerm (u' ≫ p) z (s j) i'' := by
    intro j l
    have h1 := hrat (s j)
    have h2 := hrat (s l)
    apply (hu0.mul hu0').mul_left_cancel
    linear_combination (secGerm (u ≫ p) z s₀ i * secGerm (u' ≫ p) z (s l) i'') * h1 -
      (secGerm (u ≫ p) z s₀ i * secGerm (u' ≫ p) z (s j) i'') * h2

  let K := Z.residueField z
  let x : Spec (CommRingCat.of K) ⟶ Z := Z.fromSpecResidueField z
  obtain ⟨pt⟩ : Nonempty (Spec (CommRingCat.of K)) := inferInstance
  have hx : x pt = z := Scheme.fromSpecResidueField_apply z pt
  have minorx : ∀ j l, secGerm (x ≫ u ≫ p) pt (s j) i * secGerm (x ≫ u' ≫ p) pt (s l) i'' =
      secGerm (x ≫ u ≫ p) pt (s l) i * secGerm (x ≫ u' ≫ p) pt (s j) i'' := by
    intro j l
    have hi : (u ≫ p) (x pt) ∈ secChart U.LG.L i := hx ▸ hzi
    have hi'' : (u' ≫ p) (x pt) ∈ secChart U.LG.L i'' := hx ▸ hzi''
    have m := hx ▸ minor j l
    rw [secGerm_comp x (u ≫ p) pt _ hi, secGerm_comp x (u ≫ p) pt _ hi, secGerm_comp x (u' ≫ p) pt _ hi'',
      secGerm_comp x (u' ≫ p) pt _ hi'', ← map_mul, ← map_mul, m]

  obtain ⟨g, hg1, hg2⟩ := exists_closedFibre_factor R G e K (x ≫ u)
  obtain ⟨g', hg1', hg2'⟩ := exists_closedFibre_factor R G e K (x ≫ u')
  let T : Over (Sp R) := Over.mk ((x ≫ u) ≫ (thickObj R (maximalIdeal R) e G).hom ≫ thick R (maximalIdeal R) e)
  have hgT : g ≫ (thickObj R (maximalIdeal R) 0 G).hom ≫ thick R (maximalIdeal R) 0 = T.hom := hg2
  have hgT' : g' ≫ (thickObj R (maximalIdeal R) 0 G).hom ≫ thick R (maximalIdeal R) 0 = T.hom := by
    rw [hg2']; show _ = (x ≫ u) ≫ _
    simp only [Category.assoc, ← reassoc_of% hu]
  obtain ⟨ξ, hξ⟩ := GlobalTheory.TorusCoord.exists_isPointOf (U.gt 0) (T := T) g hgT
  obtain ⟨ξ', hξ'⟩ := GlobalTheory.TorusCoord.exists_isPointOf (U.gt 0) (T := T) g' hgT'
  set y := (Y.Φ T).symm ξ with hy
  set y' := (Y.Φ T).symm ξ' with hy'
  have hyξ : Y.Φ T y = ξ := Equiv.apply_symm_apply _ _
  have hyξ' : Y.Φ T y' = ξ' := Equiv.apply_symm_apply _ _
  obtain ⟨J, hJ⟩ := GlobalTheory.TorusCoord.exists_good' U.LG.isLB pt
  obtain ⟨J', hJ'⟩ := GlobalTheory.TorusCoord.exists_good' D.toPre.P.isLB pt
  obtain ⟨c, hc⟩ := _root_.GlobalTheory.Mum.FibreVal.sval_eq_unit_mul_term R D A G U.toUnifPre Y T g y (hyξ ▸ hξ) k pt J J' hJ hJ'
  obtain ⟨c', hc'⟩ := _root_.GlobalTheory.Mum.FibreVal.sval_eq_unit_mul_term R D A G U.toUnifPre Y T g' y' (hyξ' ▸ hξ') k pt J J' hJ hJ'
  have hv : ∀ j, secGerm (x ≫ u ≫ p) pt (s j) (fun _ => J ((x ≫ u ≫ p) ≫ 𝟙 _)) = c.val * sval (τ j) y.left pt J' := by
    intro j
    have := hc (α j) (b j) (τ j) (F j) (s j) (hαb j).2 (hF j) (hs j 0)
    rw [hg1, Category.assoc] at this
    exact this
  have hv' : ∀ j, secGerm (x ≫ u' ≫ p) pt (s j) (fun _ => J ((x ≫ u' ≫ p) ≫ 𝟙 _)) = c'.val * sval (τ j) y'.left pt J' := by
    intro j
    have := hc' (α j) (b j) (τ j) (F j) (s j) (hαb j).2 (hF j) (hs j 0)
    rw [hg1', Category.assoc] at this
    exact this
  have hi : (x ≫ u ≫ p) pt ∈ secChart U.LG.L i := by
    rw [Scheme.Hom.comp_apply, hx]; exact hzi
  have hi'' : (x ≫ u' ≫ p) pt ∈ secChart U.LG.L i'' := by
    rw [Scheme.Hom.comp_apply, hx]; exact hzi''
  obtain ⟨a, ha⟩ := exists_unit_secGerm k (x ≫ u ≫ p) pt hi (hJ.mem (fun _ : Fin 1 => 𝟙 G.left) (x ≫ u ≫ p))
  obtain ⟨a', ha'⟩ := exists_unit_secGerm k (x ≫ u' ≫ p) pt hi'' (hJ.mem (fun _ : Fin 1 => 𝟙 G.left) (x ≫ u' ≫ p))
  have minorτ : ∀ j l, sval (τ j) y.left pt J' * sval (τ l) y'.left pt J' = sval (τ l) y.left pt J' * sval (τ j) y'.left pt J' := by
    intro j l
    have m := minorx j l
    rw [ha, ha, ha', ha', hv, hv, hv', hv'] at m
    apply (((a.isUnit.mul a'.isUnit).mul c.isUnit).mul c'.isUnit).mul_left_cancel
    linear_combination m
  obtain ⟨W, hW, hWy⟩ := _root_.GlobalTheory.Mum.ThetaSep.agree_near_of_minors R D.toPre Y k N τ hτ himm T y y' pt J' hJ' minorτ
  have hWt : W = ⊤ := by
    exact eq_top_iff.2 fun q _ => (Subsingleton.elim (α := Spec (CommRingCat.of K)) q pt) ▸ hW
  subst hWt
  have : IsIso (⊤ : (T.left).Opens).ι := by rw [← Scheme.topIso_hom]; infer_instance
  have hyy : y = y' := Over.OverMorphism.ext ((cancel_epi _).1 hWy)
  have hξξ : ξ = ξ' := by rw [← hyξ, ← hyξ', hyy]
  have hgg : g = g' := GlobalTheory.TorusCoord.IsPointOf.unique_left (U.gt 0) hξ (hξξ ▸ hξ')
  have hpp : (x ≫ u ≫ p) pt = (x ≫ u' ≫ p) pt := by
    rw [← Category.assoc, ← hg1, ← Category.assoc, ← hg1', hgg]
  rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, hx] at hpp
  have : IsClosedImmersion p := by
    show IsClosedImmersion (pullback.fst G.hom (thick R (maximalIdeal R) e))
    have : IsClosedImmersion (thick R (maximalIdeal R) e) := IsClosedImmersion.spec_of_surjective _ Ideal.Quotient.mk_surjective
    infer_instance
  exact p.isClosedEmbedding.injective hpp

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningMorphismsAgreeBeyondThreshold =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfAgreeOnAffineOpenGenerators =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfAgreeOnAffineOpenGenerators", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory

namespace GlobalTheory.AffineOpenAgree

theorem app_restrict_eq (X W : Scheme.{0}) (N : X.Opens) (c : W ⟶ N.toScheme) (hc : ⊤ ≤ (c ≫ N.ι) ⁻¹ᵁ N) :
    (c ≫ N.ι).app N ≫ W.presheaf.map (homOfLE hc).op = N.topIso.inv ≫ c.appTop := by
  have h0 : (⊤ : N.toScheme.Opens) ≤ N.ι ⁻¹ᵁ N := by simp
  have e1 : N.topIso.inv = N.ι.app N ≫ N.toScheme.presheaf.map (homOfLE h0).op := by
    rw [Scheme.Opens.topIso_inv, Scheme.Opens.ι_app]
    change _ = X.presheaf.map _ ≫ X.presheaf.map _
    exact (congrArg X.presheaf.map (Subsingleton.elim _ _)).trans (X.presheaf.map_comp _ _)
  have e2 := c.naturality (homOfLE h0).op
  rw [e1, Scheme.Hom.comp_app]
  refine (Category.assoc _ _ _).trans ((Category.assoc _ _ _).trans ?_).symm |>.symm
  refine congrArg (N.ι.app N ≫ ·) ?_
  refine Eq.trans ?_ e2.symm
  rfl

theorem cst_pull {R : Type} [CommRing R] {X W : Scheme.{0}} (sm : X ⟶ Spec (CommRingCat.of R)) (N : X.Opens)
    (c : W ⟶ X) (hc : ⊤ ≤ c ⁻¹ᵁ N) (x : R) :
    (W.presheaf.map (homOfLE hc).op).hom ((c.app N).hom (GlobalTheory.AbLaw.cst sm N x)) =
      (c ≫ sm).appTop.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom x) := by
  have e := c.naturality (homOfLE (le_top : N ≤ ⊤)).op
  have e' := congrArg (fun f => (f ≫ W.presheaf.map (homOfLE hc).op).hom (sm.appTop.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom x))) e
  simp only [Category.assoc, ← Functor.map_comp] at e'
  simp only [GlobalTheory.AbLaw.cst, GlobalTheory.AbLaw.rs, RingHom.comp_apply]
  refine (e'.trans ?_)
  rw [Scheme.Hom.comp_appTop]
  have : ((TopologicalSpace.Opens.map c.base).map (homOfLE (le_top : N ≤ ⊤)).op.unop).op ≫ (homOfLE hc).op = 𝟙 _ := Subsingleton.elim _ _
  rw [this]
  erw [W.presheaf.map_id, Category.comp_id]
  rfl

end GlobalTheory.AffineOpenAgree

namespace GlobalTheory
open AffineOpenAgree

theorem eq_of_agree_on_generators (R : Type) [CommRing R] (X W : Scheme.{0}) (sm : X ⟶ Spec (CommRingCat.of R))
    (N : X.Opens) (hN : IsAffineOpen N) (m : ℕ) (r : Fin m → Γ(X, N))
    (hgen : ∀ g : Γ(X, N), ∃ P Q : MvPolynomial (Fin m) R,
      IsUnit (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst sm N) r Q) ∧
        g * MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst sm N) r Q = MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst sm N) r P)
    (a b : W ⟶ X) (hab : a ≫ sm = b ≫ sm) (ha : ⊤ ≤ a ⁻¹ᵁ N) (hb : ⊤ ≤ b ⁻¹ᵁ N)
    (hr : ∀ l, (W.presheaf.map (homOfLE ha).op).hom ((a.app N).hom (r l)) =
      (W.presheaf.map (homOfLE hb).op).hom ((b.app N).hom (r l))) : a = b := by

  have hφ : ∀ g : Γ(X, N), (W.presheaf.map (homOfLE ha).op).hom ((a.app N).hom g) =
      (W.presheaf.map (homOfLE hb).op).hom ((b.app N).hom g) := by
    let φa : Γ(X, N) →+* Γ(W, ⊤) := (W.presheaf.map (homOfLE ha).op).hom.comp (a.app N).hom
    let φb : Γ(X, N) →+* Γ(W, ⊤) := (W.presheaf.map (homOfLE hb).op).hom.comp (b.app N).hom
    have hc : φa.comp (GlobalTheory.AbLaw.cst sm N) = φb.comp (GlobalTheory.AbLaw.cst sm N) := by
      ext x
      simp only [RingHom.comp_apply, φa, φb]
      rw [cst_pull sm N a ha, cst_pull sm N b hb, hab]
    have hrr : (⇑φa ∘ r) = (⇑φb ∘ r) := funext hr
    have hev : ∀ P : MvPolynomial (Fin m) R, φa (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst sm N) r P) =
        φb (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst sm N) r P) := by
      intro P
      rw [MvPolynomial.eval₂_comp_left, MvPolynomial.eval₂_comp_left, hc, hrr]
    intro g
    obtain ⟨P, Q, hQ, hg⟩ := hgen g
    have h1 := congrArg φa hg
    have h2 := congrArg φb hg
    rw [map_mul] at h1 h2
    have hu : IsUnit (φa (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst sm N) r Q)) := hQ.map φa
    change φa g = φb g
    refine hu.mul_left_injective ?_
    simp only
    rw [h1, hev P, ← h2, ← hev Q]
  haveI : IsAffine N := hN
  have hra : Set.range a ⊆ Set.range N.ι := by
    rw [Scheme.Opens.range_ι]; rintro _ ⟨w, rfl⟩; exact ha trivial
  have hrb : Set.range b ⊆ Set.range N.ι := by
    rw [Scheme.Opens.range_ι]; rintro _ ⟨w, rfl⟩; exact hb trivial
  obtain ⟨a', rfl⟩ : ∃ a', a' ≫ N.ι = a := ⟨_, IsOpenImmersion.lift_fac N.ι a hra⟩
  obtain ⟨b', rfl⟩ : ∃ b', b' ≫ N.ι = b := ⟨_, IsOpenImmersion.lift_fac N.ι b hrb⟩
  refine congrArg (· ≫ N.ι) (ext_of_isAffine ?_)
  ext x
  have ea := congrArg (fun f => f.hom (N.topIso.hom.hom x)) (app_restrict_eq X W N a' ha)
  have eb := congrArg (fun f => f.hom (N.topIso.hom.hom x)) (app_restrict_eq X W N b' hb)
  have key := ea.symm.trans ((hφ _).trans eb)
  simp only [CommRingCat.comp_apply, Iso.hom_inv_id_apply] at key
  exact key

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfAgreeOnAffineOpenGenerators =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreThetaSectionGermEqFourierRatioMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreThetaSectionGermEqFourierRatioMul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreSectionValueEqUnitMulFourierTerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum



theorem GlobalTheory.Mum.FibreGerm.secGerm_eq_secRatio_mul : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (U : UnifPre (maximalIdeal R) D A G) (Y : Ext D.toPre) (ψ : Over.mk ((thickObj R (maximalIdeal R) 0 G).hom ≫ thick R (maximalIdeal R) 0) ⟶ Y.H), GlobalTheory.TorusCoord.IsPointOf (U.gt 0) (𝟙 (thickObj R (maximalIdeal R) 0 G).left) (Y.Φ _ ψ) → ∀ (k N : ℕ) (α : Fin N → D.toPre.X) (b : ∀ j, D.toPre.SecB k (α j)) (τ : Fin N → SecK D.toPre.P.L Y.q.left k) (F : Fin N → IntFam (maximalIdeal R) D.toPre k) (s : Fin N → H0 U.LG.L k), (∀ j, IsTermOf Y (b j) (τ j)) → (∀ j, (F j).Lead (α j) (b j)) → (∀ j, U.ExpandsAt 0 k (s j) (F j).f) → ∀ (z : (thickObj R (maximalIdeal R) 0 G).left) (j : Fin N) (i : Fin 1 → U.LG.L.ι), ψ.left z ∈ nonzeroLocus (τ j) → (fstG (maximalIdeal R) 0 G).left z ∈ secChart U.LG.L i → IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left z (s j) i) ∧ ∀ l, secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left z (s l) i = gs (Y := (thickObj R (maximalIdeal R) 0 G).left) ψ.left z (nonzeroLocus (τ j)) (GlobalTheory.ProjSpace.secRatio (τ j) (τ l)) * secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left z (s j) i := by
  intro R _ _ _ D A G _ _ U Y ψ hP k N α b τ F s hT hL hE z j i hτz hi
  obtain ⟨J, hJ⟩ := GlobalTheory.TorusCoord.exists_good' U.LG.isLB z
  obtain ⟨J', hJ'⟩ := GlobalTheory.TorusCoord.exists_good' D.toPre.P.isLB z
  obtain ⟨c, hc⟩ := GlobalTheory.Mum.FibreVal.sval_eq_unit_mul_term R D A G U Y _ (𝟙 _) ψ hP k z J J' hJ hJ'
  have hv : ∀ l, secGerm (fstG (maximalIdeal R) 0 G).left z (s l)
      (fun _ => J ((fstG (maximalIdeal R) 0 G).left ≫ 𝟙 _)) = c.val * sval (τ l) ψ.left z J' := by
    intro l
    have := hc (α l) (b l) (τ l) (F l) (s l) (hT l) (hL l) (hE l)
    rw [Category.id_comp] at this
    exact this
  obtain ⟨a, ha⟩ := exists_unit_secGerm k (fstG (maximalIdeal R) 0 G).left z hi
    (hJ.mem (fun _ : Fin 1 => 𝟙 G.left) (fstG (maximalIdeal R) 0 G).left)
  let jt : Fin 1 → D.toPre.P.L.ι := fun _ => J' (ψ.left ≫ Y.q.left)
  have hzt : ψ.left z ∈ LB.wchart D.toPre.P.L (fun _ : Fin 1 => Y.q.left) jt :=
    hJ'.mem (fun _ : Fin 1 => Y.q.left) ψ.left
  have hzW : ψ.left z ∈ nonzeroLocus (τ j) ⊓ LB.wchart D.toPre.P.L (fun _ : Fin 1 => Y.q.left) jt := ⟨hτz, hzt⟩
  have hk : nonzeroLocus (τ j) ⊓ LB.wchart D.toPre.P.L (fun _ : Fin 1 => Y.q.left) jt ≤
      (LB.LinComb D.toPre.P.L (K := Fin 1) (fun _ => Y.q.left) (fun _ => (k : ℤ))).U jt := inf_le_right
  have ha' : nonzeroLocus (τ j) ⊓ LB.wchart D.toPre.P.L (fun _ : Fin 1 => Y.q.left) jt ≤ nonzeroLocus (τ j) :=
    inf_le_left
  have hu : ∀ l, sval (τ l) ψ.left z J' =
      gs ψ.left z (nonzeroLocus (τ j)) (GlobalTheory.ProjSpace.secRatio (τ j) (τ l)) * sval (τ j) ψ.left z J' := by
    intro l
    have e := congrArg (gs ψ.left z _) (GlobalTheory.ProjSpace.secRatio_on (τ j) (τ l) jt ha' hk)
    rw [sval_of (τ l) ψ.left z J' jt (fun _ => rfl), sval_of (τ j) ψ.left z J' jt (fun _ => rfl)]
    exact ((gs_res _ _ hk hzW _).symm.trans e).trans ((gs_mul _ _ _ hzW _ _).trans
      (congrArg₂ (· * ·) (gs_res _ _ ha' hzW _) (gs_res _ _ hk hzW _)))
  have hunit : IsUnit (sval (τ j) ψ.left z J') := by
    obtain ⟨w, hw⟩ := GlobalTheory.ProjSpace.isUnit_resG_sec (τ j) jt ha' hk
    rw [sval_of (τ j) ψ.left z J' jt (fun _ => rfl)]
    have e : gs ψ.left z _ ((τ j).f jt) = (gm ψ.left z _ w).val :=
      (gs_res _ _ hk hzW _).symm.trans ((congrArg (gs ψ.left z _) hw.symm).trans (gs_unit _ _ _ hzW w))
    exact e ▸ Units.isUnit _
  refine ⟨?_, fun l => ?_⟩
  · rw [ha, hv j]
    exact a.isUnit.mul (c.isUnit.mul hunit)
  · rw [ha, ha, hv, hv, hu l]
    ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreThetaSectionGermEqFourierRatioMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreThetaSectionGermEqFourierRatioMulStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreThetaSectionGermEqFourierRatioMulStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreThetaSectionGermEqFourierRatioMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreThetaSectionGermEqFourierRatioMulStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreTorusCoordinatesIsImmersion =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreTorusCoordinatesIsImmersion", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsAdicColimitOfFactor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.ClosedFibreImm

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (U : UnifPre (maximalIdeal R) D A G) (Y : Ext D.toPre) (ψ : Over.mk ((thickObj R (maximalIdeal R) 0 G).hom ≫ thick R (maximalIdeal R) 0) ⟶ Y.H), GlobalTheory.TorusCoord.IsPointOf (U.gt 0) (𝟙 (thickObj R (maximalIdeal R) 0 G).left) (Y.Φ _ ψ) → IsImmersion ψ.left := by
  intro R _ _ _ D A G _ _ U Y ψ h
  set g := U.gt 0 with hg
  let G₀ := thickObj R (maximalIdeal R) 0 G
  let T : Over (Sp R) := Over.mk (G₀.hom ≫ thick R (maximalIdeal R) 0)
  have hcl : IsClosedImmersion (thick R (maximalIdeal R) 0) :=
    IsClosedImmersion.spec_of_surjective _ Ideal.Quotient.mk_surjective
  let T₀ : Over (Sp R) := Over.mk (pullback.fst Y.H.hom (thick R (maximalIdeal R) 0) ≫ Y.H.hom)
  let ξ := Y.Φ T₀ (Over.homMk (pullback.fst Y.H.hom (thick R (maximalIdeal R) 0)) rfl)
  obtain ⟨χ, hχ⟩ := GlobalTheory.TorusCoord.exists_point g (T := T₀) (pullback.snd Y.H.hom (thick R (maximalIdeal R) 0))
    pullback.condition.symm ξ
  let ψ' : G₀.left ⟶ pullback Y.H.hom (thick R (maximalIdeal R) 0) := pullback.lift ψ.left G₀.hom (Over.w ψ)
  have hψ' : ψ' ≫ pullback.fst _ _ = ψ.left := pullback.lift_fst _ _ _

  have hw1 : ψ' ≫ pullback.fst Y.H.hom (thick R (maximalIdeal R) 0) ≫ Y.H.hom = T.hom := by
    rw [← Category.assoc, hψ']; exact Over.w ψ
  let k : T ⟶ T₀ := Over.homMk ψ' hw1
  have hkx : k ≫ (Over.homMk (pullback.fst Y.H.hom (thick R (maximalIdeal R) 0)) rfl : T₀ ⟶ Y.H) = ψ :=
    Over.OverMorphism.ext (by simpa [k] using hψ')
  have hpull := Y.rep.1 T T₀ k (Over.homMk (pullback.fst Y.H.hom (thick R (maximalIdeal R) 0)) rfl)
  rw [hkx] at hpull
  have h1 : GlobalTheory.TorusCoord.IsPointOf g (ψ' ≫ χ) (Y.Φ T ψ) := hχ.pull g hpull
  have e1 : ψ' ≫ χ = 𝟙 _ := h1.unique_left g h
  have hc := hχ.comp_hom g
  have hw2 : χ ≫ T.hom = T₀.hom := hc
  let k' : T₀ ⟶ T := Over.homMk χ hw2
  have hpull' := Y.rep.1 T₀ T k' ψ
  have h2 : GlobalTheory.TorusCoord.IsPointOf g (χ ≫ 𝟙 _) (Y.Φ T₀ (k' ≫ ψ)) := h.pull g hpull'
  rw [Category.comp_id] at h2
  have e2 : Y.Φ T₀ (k' ≫ ψ) = ξ := h2.unique_right g hχ
  have e3 : k' ≫ ψ = Over.homMk (pullback.fst Y.H.hom (thick R (maximalIdeal R) 0)) rfl := (Y.Φ T₀).injective e2
  have e4 : χ ≫ ψ.left = pullback.fst Y.H.hom (thick R (maximalIdeal R) 0) := congrArg (·.left) e3
  have e5 : χ ≫ G₀.hom = pullback.snd Y.H.hom (thick R (maximalIdeal R) 0) := by
    rw [← cancel_mono (thick R (maximalIdeal R) 0), Category.assoc, ← pullback.condition]
    exact hc
  have e6 : χ ≫ ψ' = 𝟙 _ := by
    apply pullback.hom_ext
    · rw [Category.assoc, hψ', e4, Category.id_comp]
    · rw [Category.assoc, pullback.lift_snd, e5, Category.id_comp]
  have : IsIso ψ' := ⟨⟨χ, e1, e6⟩⟩
  rw [← hψ']
  infer_instance

end GlobalTheory.Mum.ClosedFibreImm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreTorusCoordinatesIsImmersion =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenFractionsProjSpaceImmersion =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenFractionsProjSpaceImmersion", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsClosedImmersionIffPullRatio\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace GlobalTheory.ProjSpace

theorem surjective_appLE_of_eq {X Z : Scheme.{0}} {f : Z ⟶ X} {A A' : X.Opens} {B B' : Z.Opens}
    (hA : A = A') (hB : B = B') (h : B ≤ f ⁻¹ᵁ A) (h' : B' ≤ f ⁻¹ᵁ A') :
    Function.Surjective (f.appLE A B h).hom → Function.Surjective (f.appLE A' B' h').hom := by
  subst hA hB
  exact id

theorem exists_affineOpen_fraction_pullRatio : ∀ (R : Type) [CommRing R] (N : ℕ) (Y : Scheme.{0}) (φ : Y ⟶ PSpace R N), IsImmersion φ → ∀ (y : Y) (V : Y.Opens) (i : Fin (N + 1)), y ∈ V → φ y ∈ GlobalTheory.ProjSpace.chart R N i → ∃ (W : Y.Opens) (hW : W ≤ φ ⁻¹ᵁ GlobalTheory.ProjSpace.chart R N i), y ∈ W ∧ W ≤ V ∧ IsAffineOpen W ∧ ∀ g : Γ(Y, W), ∃ P Q : MvPolynomial (Fin (N + 1)) R, IsUnit (MvPolynomial.eval₂ (GlobalTheory.QCoh.Qcqs.baseRingHom (φ ≫ PSpace.str R N) W).hom (GlobalTheory.ProjSpace.pullRatio φ W i hW) Q) ∧ g * MvPolynomial.eval₂ (GlobalTheory.QCoh.Qcqs.baseRingHom (φ ≫ PSpace.str R N) W).hom (GlobalTheory.ProjSpace.pullRatio φ W i hW) Q = MvPolynomial.eval₂ (GlobalTheory.QCoh.Qcqs.baseRingHom (φ ≫ PSpace.str R N) W).hom (GlobalTheory.ProjSpace.pullRatio φ W i hW) P := by
  intro R _ N Y φ hφ y V i hyV hyi
  obtain ⟨U', hU', hU⟩ := φ.isEmbedding.isInducing.isOpen_iff.1 V.isOpen
  let O : (PSpace R N).Opens := ⟨U', hU'⟩ ⊓ φ.coborderRange
  have hyO : φ y ∈ O := ⟨show φ y ∈ U' by rw [← Set.mem_preimage, hU]; exact hyV, subset_coborder ⟨y, rfl⟩⟩
  obtain ⟨h, hhO, hyh⟩ := (isAffineOpen_chart R N i).exists_basicOpen_le (V := O) ⟨φ y, hyO⟩ hyi
  have hD : IsAffineOpen ((PSpace R N).basicOpen h) := (isAffineOpen_chart R N i).basicOpen h
  have hDc : (PSpace R N).basicOpen h ≤ chart R N i := (PSpace R N).basicOpen_le h
  have hle : (PSpace R N).basicOpen h ≤ φ.coborderRange := fun z hz => (hhO hz).2
  haveI : IsAffine ((PSpace R N).basicOpen h) := hD
  have hp : IsPullback (φ ∣_ (PSpace R N).basicOpen h) (φ ⁻¹ᵁ (PSpace R N).basicOpen h).ι
      ((PSpace R N).homOfLE hle) φ.liftCoborder := by
    refine IsPullback.of_bot (h₃₁ := φ) (v₂₁ := 𝟙 _) (v₂₂ := φ.coborderRange.ι) ?_ ?_ ?_
    · rw [Category.comp_id, Scheme.homOfLE_ι]
      exact isPullback_morphismRestrict φ _
    · rw [← cancel_mono φ.coborderRange.ι, Category.assoc, Category.assoc, Scheme.homOfLE_ι,
        Scheme.Hom.liftCoborder_ι, morphismRestrict_ι]
    · exact IsPullback.of_vert_isIso_mono ⟨by rw [Category.id_comp, Scheme.Hom.liftCoborder_ι]⟩
  haveI : IsClosedImmersion (φ ∣_ (PSpace R N).basicOpen h) := MorphismProperty.of_isPullback hp.flip inferInstance
  obtain ⟨hWa, hsurj0⟩ := IsClosedImmersion.isAffine_surjective_of_isAffine (φ ∣_ (PSpace R N).basicOpen h)
  have hsurj : Function.Surjective
      (φ.appLE ((PSpace R N).basicOpen h) (φ ⁻¹ᵁ (PSpace R N).basicOpen h) le_rfl).hom := by
    rw [Scheme.Hom.appTop, morphismRestrict_app'] at hsurj0
    exact surjective_appLE_of_eq (by simp) (by simp) _ _ hsurj0
  have hWc : φ ⁻¹ᵁ (PSpace R N).basicOpen h ≤ φ ⁻¹ᵁ chart R N i := φ.preimage_mono hDc
  refine ⟨φ ⁻¹ᵁ (PSpace R N).basicOpen h, hWc, hyh, ?_, hWa, ?_⟩
  · intro z hz
    have : φ z ∈ U' := (hhO hz).1
    rw [← Set.mem_preimage, hU] at this
    exact this
  · intro g
    obtain ⟨a, rfl⟩ := hsurj g
    have hloc := (isAffineOpen_chart R N i).isLocalization_basicOpen h
    have key : ∀ p : MvPolynomial (Fin (N + 1)) R,
        (φ.appLE ((PSpace R N).basicOpen h) (φ ⁻¹ᵁ (PSpace R N).basicOpen h) le_rfl).hom
          (algebraMap Γ(PSpace R N, chart R N i) Γ(PSpace R N, (PSpace R N).basicOpen h)
            (MvPolynomial.aeval (R := R) (ratio R N i) p)) =
        MvPolynomial.eval₂ (GlobalTheory.QCoh.Qcqs.baseRingHom (φ ≫ PSpace.str R N) _).hom
          (pullRatio φ _ i hWc) p := by
      intro p
      have e1 := appLE_resG φ hDc (le_rfl : φ ⁻¹ᵁ (PSpace R N).basicOpen h ≤ _) (MvPolynomial.aeval (R := R) (ratio R N i) p)
      have e2 := congrArg (fun t => t p) (appLE_comp_aeval_ratio (φ := φ) (W := φ ⁻¹ᵁ (PSpace R N).basicOpen h) (i := i) (hi := hWc))
      exact e1.trans e2
    obtain ⟨⟨b, s⟩, hs⟩ := IsLocalization.surj (Submonoid.powers h) a
    obtain ⟨m, hm⟩ := s.2
    obtain ⟨P, rfl⟩ := aeval_ratio_surjective R N i b
    obtain ⟨h₀, hh₀⟩ := aeval_ratio_surjective R N i h
    have hQ : MvPolynomial.aeval (R := R) (ratio R N i) (h₀ ^ m) = (s : Γ(PSpace R N, chart R N i)) := by
      rw [map_pow, hh₀, ← hm]
    refine ⟨P, h₀ ^ m, ?_, ?_⟩
    · rw [← key, hQ]
      exact (IsLocalization.map_units _ s).map _
    · rw [← key, ← key, hQ, ← map_mul]
      exact congrArg _ hs

end GlobalTheory.ProjSpace
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenFractionsProjSpaceImmersion =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteThetaSectionsThickeningCover =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteThetaSectionsThickeningCover", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreThetaSectionGermEqFourierRatioMulStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreTorusCoordinatesIsImmersion\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsClosedImmersionIffPullRatio\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenFractionsProjSpaceImmersion\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsExpandsAtSectionUniformised\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralThetaFamilyPrescribedLeadingTermStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaImmersionTorusExtensionProjectiveStatement\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.ClosedGen

theorem cst_eq_baseRingHom {R : Type} [CommRing R] {X : Scheme.{0}} (f : X ⟶ Spec (CommRingCat.of R)) (W : X.Opens) :
    (GlobalTheory.QCoh.Qcqs.baseRingHom f W).hom = GlobalTheory.AbLaw.cst f W := by
  rfl

end GlobalTheory.Mum.ClosedGen


open GlobalTheory.Mum.ClosedGen in
theorem GlobalTheory.Mum.exists_ratio_gen_closed : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∃ k₀ : ℕ, 3 ≤ k₀ ∧ ∀ k : ℕ, k₀ ≤ k → ∃ (n : ℕ) (τ : Fin n → H0 U.LG.L k), ∀ w : (thickObj R (maximalIdeal R) 0 G).left, ∃ (j : Fin n) (i : Fin 1 → U.LG.L.ι) (N : (thickObj R (maximalIdeal R) 0 G).left.Opens) (r : Fin n → Γ((thickObj R (maximalIdeal R) 0 G).left, N)), w ∈ N ∧ IsAffineOpen N ∧ N ≤ (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart U.LG.L i ∧ (∀ y ∈ N, IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y (τ j) i) ∧ ∀ l, secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y (τ l) i = gs (𝟙 _) y N (r l) * secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y (τ j) i) ∧ ∀ g : Γ((thickObj R (maximalIdeal R) 0 G).left, N), ∃ P Q : MvPolynomial (Fin n) R, IsUnit (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r Q) ∧ g * MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r Q = MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r P := by
  intro R _ _ _ hB D A G _ _ hG U
  obtain ⟨Y⟩ : Nonempty (Ext D.toPre) := inferInstance
  obtain ⟨S, k₁, hk₁⟩ := _root_.GlobalTheory.Mum.ThetaImm.exists_immersion R hB D Y
  choose k₀f hk₀f using (_root_.GlobalTheory.ThFam.exists_intFam_lead R hB D).1
  refine ⟨max 3 (max k₁ (S.sup k₀f)), le_max_left _ _, ?_⟩
  intro k hk
  have hk3 : 3 ≤ k := le_trans (le_max_left _ _) hk
  have hkk₁ : k₁ ≤ k := le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) hk
  have hkS : S.sup k₀f ≤ k := le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) hk
  obtain ⟨N, α, b, τ, hτ, hαb, himm⟩ := hk₁ k hkk₁
  have hF : ∀ j, ∃ F : IntFam (maximalIdeal R) D.toPre k, F.Lead (α j) (b j) := fun j =>
    hk₀f (α j) k (le_trans (Finset.le_sup (hαb j).1) hkS) (b j)
  choose F hF using hF
  have hs : ∀ j, ∃ σ : H0 U.LG.L k, ∀ e, U.ExpandsAt e k σ (F j).f := fun j =>
    IntFam.exists_expandsAt R hB D A G U hG k (by omega) (F j)
  choose s hs using hs
  let T : Over (Sp R) := Over.mk ((thickObj R (maximalIdeal R) 0 G).hom ≫ thick R (maximalIdeal R) 0)
  obtain ⟨ξ, hξ⟩ := GlobalTheory.TorusCoord.exists_isPointOf (U.gt 0) (T := T) (𝟙 (thickObj R (maximalIdeal R) 0 G).left)
    (Category.id_comp _)
  let ψ : T ⟶ Y.H := (Y.Φ T).symm ξ
  have hψ : GlobalTheory.TorusCoord.IsPointOf (U.gt 0) (𝟙 (thickObj R (maximalIdeal R) 0 G).left) (Y.Φ T ψ) := by
    simp only [ψ, Equiv.apply_symm_apply]; exact hξ
  haveI hψi : IsImmersion ψ.left := _root_.GlobalTheory.Mum.ClosedFibreImm.main R D A G U.toUnifPre Y ψ hψ
  set p₀ := (fstG (maximalIdeal R) 0 G).left with hp₀
  let φ := ψ.left ≫ GlobalTheory.ProjSpace.toProj Y.H.hom τ hτ
  haveI : IsImmersion φ := IsImmersion.comp _ _
  have hpre : ∀ j, φ ⁻¹ᵁ GlobalTheory.ProjSpace.chart R N j = ψ.left ⁻¹ᵁ nonzeroLocus (τ j) := fun j => by
    simp only [φ, Scheme.Hom.comp_preimage, GlobalTheory.ProjSpace.toProj_preimage_chart]
  have hstr : φ ≫ PSpace.str R N = p₀ ≫ G.hom := by
    simp only [φ, Category.assoc, GlobalTheory.ProjSpace.toProj_str]
    rw [Over.w ψ]
    exact (pullback.condition).symm
  refine ⟨N + 1, s, fun w => ?_⟩
  have hw : ψ.left w ∈ ⨆ i, nonzeroLocus (τ i) := by rw [hτ]; trivial
  obtain ⟨j, hj⟩ := TopologicalSpace.Opens.mem_iSup.1 hw
  obtain ⟨J, hJ⟩ := GlobalTheory.TorusCoord.exists_good' U.LG.isLB w
  let i : Fin 1 → U.LG.L.ι := fun _ => J (p₀ ≫ 𝟙 G.left)
  have hi : p₀ w ∈ secChart U.LG.L i := hJ.mem (fun _ : Fin 1 => 𝟙 G.left) p₀
  have hφw : φ w ∈ GlobalTheory.ProjSpace.chart R N j := by
    show w ∈ φ ⁻¹ᵁ GlobalTheory.ProjSpace.chart R N j
    rw [hpre]; exact hj
  obtain ⟨W, hW, hwW, hWV, hWa, hgen⟩ := _root_.GlobalTheory.ProjSpace.exists_affineOpen_fraction_pullRatio R N _ φ inferInstance w (p₀ ⁻¹ᵁ secChart U.LG.L i) j hi hφw
  have hWψ : W ≤ ψ.left ⁻¹ᵁ nonzeroLocus (τ j) := hW.trans (hpre j).le
  have hr : ∀ l, GlobalTheory.ProjSpace.pullRatio φ W j hW l =
      (ψ.left.appLE (nonzeroLocus (τ j)) W hWψ).hom (GlobalTheory.ProjSpace.secRatio (τ j) (τ l)) := by
    intro l
    rw [← GlobalTheory.ProjSpace.pullRatio_toProj Y.H.hom τ hτ j l, GlobalTheory.ProjSpace.appLE_pullRatio]
  refine ⟨j, i, W, GlobalTheory.ProjSpace.pullRatio φ W j hW, hwW, hWa, hWV, fun y hy => ?_, fun g => ?_⟩
  · have hyψ : ψ.left y ∈ nonzeroLocus (τ j) := hWψ hy
    obtain ⟨hu, hl⟩ := _root_.GlobalTheory.Mum.FibreGerm.secGerm_eq_secRatio_mul R D A G U.toUnifPre Y ψ hψ k (N + 1) α b τ F s (fun j => (hαb j).2) hF
      (fun j => hs j 0) y j i hyψ (hWV hy)
    refine ⟨hu, fun l => ?_⟩
    rw [hl l, hr l, gs_appLE _ _ _ _ (𝟙 _) y hy, Category.id_comp]
  · obtain ⟨P, Q, hQ, hPQ⟩ := hgen g
    have hc : (GlobalTheory.QCoh.Qcqs.baseRingHom (φ ≫ PSpace.str R N) W).hom = GlobalTheory.AbLaw.cst (p₀ ≫ G.hom) W := by
      rw [hstr]; exact cst_eq_baseRingHom _ _
    rw [hc] at hQ hPQ
    exact ⟨P, Q, hQ, hPQ⟩

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteThetaSectionsThickeningCover =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteThetaSectionsThickeningCoverStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteThetaSectionsThickeningCoverStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteThetaSectionsThickeningCover\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteThetaSectionsThickeningCoverStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalGenerationRatiosClosedFibreAnyUnitSection =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalGenerationRatiosClosedFibreAnyUnitSection", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum.AnySec

open MvPolynomial

theorem exists_homog {R S : Type} [CommRing R] [CommRing S] (f : R →+* S) {n : ℕ} (x : Fin n → S) (j : Fin n) (v : S)
    (hv : x j * v = 1) (F : MvPolynomial (Fin n) R) :
    ∃ (F' : MvPolynomial (Fin n) R) (d : ℕ), eval₂ f (fun l => x l * v) F * x j ^ d = eval₂ f x F' := by
  induction F using MvPolynomial.induction_on with
  | C a => exact ⟨C a, 0, by simp⟩
  | add p q hp hq =>
    obtain ⟨p', dp, ep⟩ := hp
    obtain ⟨q', dq, eq⟩ := hq
    refine ⟨p' * X j ^ dq + q' * X j ^ dp, dp + dq, ?_⟩
    simp only [eval₂_add, eval₂_mul, eval₂_pow, eval₂_X]
    rw [← ep, ← eq]; ring
  | mul_X p l hp =>
    obtain ⟨p', dp, ep⟩ := hp
    refine ⟨p' * X l, dp + 1, ?_⟩
    simp only [eval₂_mul, eval₂_X]
    linear_combination (x l * v * x j) * ep + (x l * eval₂ f x p') * hv

variable {X Y : Scheme.{0}}

theorem isUnit_of_gs {N : X.Opens} (a : Γ(X, N)) (h : ∀ y ∈ N, IsUnit (gs (𝟙 X) y N a)) : IsUnit a :=
  X.toRingedSpace.isUnit_of_isUnit_germ _ _ fun y hy => by
    have := h y hy
    rw [gs_eq (𝟙 X) y N hy] at this
    exact this

theorem gs_rs_app (p : X ⟶ Y) {U : Y.Opens} {N : X.Opens} (hle : N ≤ p ⁻¹ᵁ U) {y : X} (hy : y ∈ N) (a : Γ(Y, U)) :
    gs (𝟙 X) y N (GlobalTheory.AbLaw.rs X hle ((p.app U).hom a)) = gs p y U a := by
  rw [gs_res (𝟙 X) y hle hy, gs_pull (𝟙 X) p y U (hle hy) a, Category.id_comp]

theorem rs_comp_cst {R : Type} [CommRing R] (q : X ⟶ Spec (CommRingCat.of R)) {N N₁ : X.Opens} (hle : N ≤ N₁) :
    (GlobalTheory.AbLaw.rs X hle).comp (GlobalTheory.AbLaw.cst q N₁) = GlobalTheory.AbLaw.cst q N := by
  ext c
  simp only [GlobalTheory.AbLaw.cst, GlobalTheory.AbLaw.rs, RingHom.comp_apply]
  rw [← CommRingCat.comp_apply, ← Functor.map_comp]
  rfl

end GlobalTheory.Mum.AnySec

namespace GlobalTheory.Mum.AnySec
open MvPolynomial
variable {X Y : Scheme.{0}}

theorem locGen_anySec_gen {R : Type} [CommRing R] (q : X ⟶ Spec (CommRingCat.of R)) (p : X ⟶ Y) (L : LB Y)
    (k n : ℕ) (τ : Fin n → H0 L k)
    (H : ∀ w : X, ∃ (j : Fin n) (i : Fin 1 → L.ι) (N : X.Opens) (r : Fin n → Γ(X, N)), w ∈ N ∧ IsAffineOpen N ∧
      N ≤ p ⁻¹ᵁ secChart L i ∧ (∀ y ∈ N, IsUnit (secGerm p y (τ j) i) ∧
        ∀ l, secGerm p y (τ l) i = gs (𝟙 _) y N (r l) * secGerm p y (τ j) i) ∧
      ∀ g : Γ(X, N), ∃ P Q : MvPolynomial (Fin n) R, IsUnit (eval₂ (GlobalTheory.AbLaw.cst q N) r Q) ∧
        g * eval₂ (GlobalTheory.AbLaw.cst q N) r Q = eval₂ (GlobalTheory.AbLaw.cst q N) r P)
    (s₀ : H0 L k) (i : Fin 1 → L.ι) (w : X) (hw : p w ∈ secChart L i) (hs : IsUnit (secGerm p w s₀ i)) :
    ∃ (N : X.Opens) (r : Fin n → Γ(X, N)), w ∈ N ∧ IsAffineOpen N ∧ N ≤ p ⁻¹ᵁ secChart L i ∧
      (∀ y ∈ N, IsUnit (secGerm p y s₀ i) ∧ ∀ l, secGerm p y (τ l) i = gs (𝟙 _) y N (r l) * secGerm p y s₀ i) ∧
      ∀ g : Γ(X, N), ∃ P Q : MvPolynomial (Fin n) R, IsUnit (eval₂ (GlobalTheory.AbLaw.cst q N) r Q) ∧
        g * eval₂ (GlobalTheory.AbLaw.cst q N) r Q = eval₂ (GlobalTheory.AbLaw.cst q N) r P := by
  obtain ⟨j, i', N₁, ρ, hwN, hN₁, hN₁le, hgerm, hgen⟩ := H w
  let V : X.Opens := p ⁻¹ᵁ secChart L i ⊓ X.basicOpen ((p.app (secChart L i)).hom (s₀.f i))
  have hwV : w ∈ V := by
    refine ⟨hw, (Scheme.mem_basicOpen X _ w hw).2 ?_⟩
    have e : secGerm p w s₀ i = _ := gs_eq p w (secChart L i) hw (s₀.f i)
    rw [e] at hs
    exact hs
  obtain ⟨h, hhV, hwh⟩ := hN₁.exists_basicOpen_le ⟨w, hwV⟩ hwN
  have hNN₁ : X.basicOpen h ≤ N₁ := X.basicOpen_le h
  have hNi : X.basicOpen h ≤ p ⁻¹ᵁ secChart L i := hhV.trans inf_le_left
  have hNs : X.basicOpen h ≤ X.basicOpen ((p.app (secChart L i)).hom (s₀.f i)) := hhV.trans inf_le_right
  have hsN : ∀ y ∈ X.basicOpen h, IsUnit (secGerm p y s₀ i) := fun y hy => by
    have := (Scheme.mem_basicOpen _ _ _ (hNi hy)).1 (hNs hy)
    have e : secGerm p y s₀ i = _ := gs_eq p y (secChart L i) (hNi hy) (s₀.f i)
    rw [e]
    exact this
  have hu₀ : IsUnit (GlobalTheory.AbLaw.rs X hNi ((p.app (secChart L i)).hom (s₀.f i))) :=
    isUnit_of_gs _ fun y hy => by rw [gs_rs_app p hNi hy (s₀.f i)]; exact hsN y hy
  obtain ⟨r, hr_def⟩ : ∃ r : Fin n → Γ(X, X.basicOpen h), r = fun l =>
      GlobalTheory.AbLaw.rs X hNi ((p.app (secChart L i)).hom ((τ l).f i)) * (hu₀.unit⁻¹ : (Γ(X, X.basicOpen h))ˣ).val :=
    ⟨_, rfl⟩
  have hr : ∀ y ∈ X.basicOpen h, ∀ l, secGerm p y (τ l) i = gs (𝟙 X) y _ (r l) * secGerm p y s₀ i := by
    intro y hy l
    rw [secGerm, secGerm, ← gs_rs_app p hNi hy ((τ l).f i), ← gs_rs_app p hNi hy (s₀.f i), ← gs_mul _ _ _ hy]
    congr 1
    simp only [hr_def, _root_.mul_assoc, IsUnit.val_inv_mul, _root_.mul_one]
  refine ⟨X.basicOpen h, r, hwh, hN₁.basicOpen h, hNi, fun y hy => ⟨hsN y hy, hr y hy⟩, fun g => ?_⟩

  have key : ∀ y ∈ X.basicOpen h, ∀ l, gs (𝟙 X) y _ (r l) = gs (𝟙 X) y _ (GlobalTheory.AbLaw.rs X hNN₁ (ρ l) * r j) ∧
      IsUnit (gs (𝟙 X) y _ (r j)) := by
    intro y hy l
    have hy₁ := hNN₁ hy
    obtain ⟨c, hc⟩ := exists_unit_secGerm k p y (hNi hy) (hN₁le hy₁)
    have gρ : gs (𝟙 X) y _ (GlobalTheory.AbLaw.rs X hNN₁ (ρ l)) = gs (𝟙 X) y N₁ (ρ l) := gs_res _ _ hNN₁ hy _
    have e1 := hr y hy l
    have e2 := hr y hy j
    have e3 := (hgerm y hy₁).2 l
    have hcl := hc (τ l)
    have hcj := hc (τ j)
    refine ⟨?_, ?_⟩
    · rw [gs_mul _ _ _ hy, gρ]
      apply (hsN y hy).mul_right_cancel
      linear_combination (-1 : _) * e1 + gs (𝟙 X) y N₁ (ρ l) * e2 + hcl - gs (𝟙 X) y N₁ (ρ l) * hcj + c.val * e3
    · have : IsUnit (gs (𝟙 X) y _ (r j) * secGerm p y s₀ i) := by
        rw [← e2, hcj]; exact c.isUnit.mul (hgerm y hy₁).1
      exact isUnit_of_mul_isUnit_left this
  have hrel : ∀ l, r l = GlobalTheory.AbLaw.rs X hNN₁ (ρ l) * r j := fun l => fn_ext fun y hy => (key y hy l).1
  have huj : IsUnit (r j) := isUnit_of_gs _ fun y hy => (key y hy j).2
  let v : Γ(X, X.basicOpen h) := (huj.unit⁻¹ : (Γ(X, X.basicOpen h))ˣ).val
  have hv : r j * v = 1 := IsUnit.mul_val_inv huj
  have hρ : (fun l => GlobalTheory.AbLaw.rs X hNN₁ (ρ l)) = fun l => r l * v := by
    funext l; rw [hrel l, _root_.mul_assoc, hv, _root_.mul_one]

  have hev : ∀ F : MvPolynomial (Fin n) R, GlobalTheory.AbLaw.rs X hNN₁ (eval₂ (GlobalTheory.AbLaw.cst q N₁) ρ F) =
      eval₂ (GlobalTheory.AbLaw.cst q (X.basicOpen h)) (fun l => r l * v) F := fun F => by
    rw [eval₂_comp_left, rs_comp_cst, ← hρ]; rfl
  haveI := hN₁.isLocalization_basicOpen h
  obtain ⟨⟨a, ⟨_, t, rfl⟩⟩, hga⟩ := IsLocalization.surj (Submonoid.powers h) g
  have hhu : IsUnit (GlobalTheory.AbLaw.rs X hNN₁ h) := IsLocalization.Away.algebraMap_isUnit h
  obtain ⟨Pa, Qa, hQa, ea⟩ := hgen a
  obtain ⟨Ph, Qh, hQh, eh⟩ := hgen h
  have ea' := congrArg (GlobalTheory.AbLaw.rs X hNN₁) ea
  have eh' := congrArg (GlobalTheory.AbLaw.rs X hNN₁) eh
  rw [map_mul, hev, hev] at ea' eh'
  have hQh' := hQh.map (GlobalTheory.AbLaw.rs X hNN₁)
  rw [hev] at hQh'
  have hga' : g * GlobalTheory.AbLaw.rs X hNN₁ h ^ t = GlobalTheory.AbLaw.rs X hNN₁ a := by
    rw [← map_pow]; exact hga
  obtain ⟨A', d3, eA⟩ := exists_homog (GlobalTheory.AbLaw.cst q (X.basicOpen h)) r j v hv Pa
  obtain ⟨B', d2, eB⟩ := exists_homog (GlobalTheory.AbLaw.cst q (X.basicOpen h)) r j v hv Qa
  obtain ⟨C', d1, eC⟩ := exists_homog (GlobalTheory.AbLaw.cst q (X.basicOpen h)) r j v hv Ph
  obtain ⟨D', d4, eD⟩ := exists_homog (GlobalTheory.AbLaw.cst q (X.basicOpen h)) r j v hv Qh
  refine ⟨A' * D' ^ t * MvPolynomial.X j ^ (d1 * t + d2), C' ^ t * B' * MvPolynomial.X j ^ (d3 + d4 * t), ?_, ?_⟩
  · simp only [eval₂_mul, eval₂_pow, eval₂_X]
    rw [← eB, ← eC, ← eh']
    have hQa' := hQa.map (GlobalTheory.AbLaw.rs X hNN₁)
    rw [hev] at hQa'
    exact ((((hhu.mul hQh').mul (huj.pow _)).pow _).mul (hQa'.mul (huj.pow _))).mul (huj.pow _)
  · simp only [eval₂_mul, eval₂_pow, eval₂_X]
    rw [← eA, ← eB, ← eC, ← eD, ← eh', ← ea']
    linear_combination (eval₂ (GlobalTheory.AbLaw.cst q (X.basicOpen h)) (fun l => r l * v) Qa *
      eval₂ (GlobalTheory.AbLaw.cst q (X.basicOpen h)) (fun l => r l * v) Qh ^ t * r j ^ (d1 * t + d2 + d3 + d4 * t)) * hga'

end GlobalTheory.Mum.AnySec

theorem GlobalTheory.Mum.locGen_ratio_anySec : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (G : Over (Sp R)) (L : LB G.left) (k n : ℕ) (τ : Fin n → H0 L k), (∀ w : (thickObj R (maximalIdeal R) 0 G).left, ∃ (j : Fin n) (i : Fin 1 → L.ι) (N : (thickObj R (maximalIdeal R) 0 G).left.Opens) (r : Fin n → Γ((thickObj R (maximalIdeal R) 0 G).left, N)), w ∈ N ∧ IsAffineOpen N ∧ N ≤ (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart L i ∧ (∀ y ∈ N, IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y (τ j) i) ∧ ∀ l, secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y (τ l) i = gs (𝟙 _) y N (r l) * secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y (τ j) i) ∧ ∀ g : Γ((thickObj R (maximalIdeal R) 0 G).left, N), ∃ P Q : MvPolynomial (Fin n) R, IsUnit (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r Q) ∧ g * MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r Q = MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r P) → ∀ (s₀ : H0 L k) (i : Fin 1 → L.ι) (w : (thickObj R (maximalIdeal R) 0 G).left), (fstG (maximalIdeal R) 0 G).left w ∈ secChart L i → IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left w s₀ i) → ∃ (N : (thickObj R (maximalIdeal R) 0 G).left.Opens) (m : ℕ) (σ : Fin m → H0 L k) (r : Fin m → Γ((thickObj R (maximalIdeal R) 0 G).left, N)), w ∈ N ∧ IsAffineOpen N ∧ N ≤ (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart L i ∧ (∀ y ∈ N, IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y s₀ i) ∧ ∀ l, secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y (σ l) i = gs (𝟙 _) y N (r l) * secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y s₀ i) ∧ ∀ g : Γ((thickObj R (maximalIdeal R) 0 G).left, N), ∃ P Q : MvPolynomial (Fin m) R, IsUnit (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r Q) ∧ g * MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r Q = MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r P := by
  intro R _ _ _ G L k n τ H s₀ i w hw hs
  obtain ⟨N, r, h1, h2, h3, h4, h5⟩ :=
    GlobalTheory.Mum.AnySec.locGen_anySec_gen ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) _ L k n τ H s₀ i w hw hs
  exact ⟨N, n, τ, r, h1, h2, h3, h4, h5⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalGenerationRatiosClosedFibreAnyUnitSection =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalGenerationRatiosClosedFibreAnyUnitSectionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalGenerationRatiosClosedFibreAnyUnitSectionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalGenerationRatiosClosedFibreAnyUnitSection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalGenerationRatiosClosedFibreAnyUnitSectionStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionAppLESurjectiveAndKer =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionAppLESurjectiveAndKer", "h": "module\n\npublic import Mathlib.Algebra.Category.Ring.Basic\npublic import Mathlib.CategoryTheory.Limits.Shapes.Pullback.IsPullback.Defs\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.RingTheory.Ideal.Maps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Ideal.Quotient.Defs\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits

namespace GlobalTheory.TorsionChart

theorem pushout_inl_surjective_and_ker {A B C D : CommRingCat.{0}} {f : A ⟶ B} {g : A ⟶ C}
    {i : B ⟶ D} {j : C ⟶ D} (po : IsPushout f g i j) (hg : Function.Surjective g.hom) :
    Function.Surjective i.hom ∧ RingHom.ker i.hom = Ideal.map f.hom (RingHom.ker g.hom) := by
  set I := Ideal.map f.hom (RingHom.ker g.hom) with hIdef
  have hw : ∀ a, i.hom (f.hom a) = j.hom (g.hom a) := fun a => congr($(po.w).hom a)
  have hI : I ≤ RingHom.ker i.hom := by
    rw [hIdef, Ideal.map_le_iff_le_comap]
    intro a ha
    rw [Ideal.mem_comap, RingHom.mem_ker, hw, (RingHom.mem_ker).1 ha, map_zero]
  let mk : B ⟶ CommRingCat.of (B ⧸ I) := CommRingCat.ofHom (Ideal.Quotient.mk I)
  have hker : RingHom.ker g.hom ≤ RingHom.ker ((Ideal.Quotient.mk I).comp f.hom) := by
    intro a ha
    rw [RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.mem_map_of_mem _ ha
  let φ : {g' : A →+* B ⧸ I // RingHom.ker g.hom ≤ RingHom.ker g'} :=
    ⟨(Ideal.Quotient.mk I).comp f.hom, hker⟩
  let ψ : C ⟶ CommRingCat.of (B ⧸ I) := CommRingCat.ofHom (g.hom.liftOfSurjective hg φ)
  have hψ : f ≫ mk = g ≫ ψ := by
    ext a
    exact (RingHom.liftOfSurjective_comp_apply g.hom hg φ a).symm
  let lift : CommRingCat.of (B ⧸ I) ⟶ D := CommRingCat.ofHom (Ideal.Quotient.lift I i.hom hI)
  have h1 : i ≫ po.desc mk ψ hψ = mk := po.inl_desc _ _ _
  have h2 : po.desc mk ψ hψ ≫ lift = 𝟙 D := by
    refine po.hom_ext ?_ ?_
    · rw [← Category.assoc, h1, Category.comp_id]
      ext b
      rfl
    · rw [← Category.assoc, po.inr_desc, Category.comp_id]
      ext c
      obtain ⟨a, rfl⟩ := hg c
      change lift.hom (ψ.hom (g.hom a)) = j.hom (g.hom a)
      rw [show ψ.hom (g.hom a) = mk.hom (f.hom a) from
        (RingHom.liftOfSurjective_comp_apply g.hom hg φ a), ← hw]
      rfl
  refine ⟨fun d => ?_, le_antisymm (fun b hb => ?_) hI⟩
  · obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective ((po.desc mk ψ hψ).hom d)
    refine ⟨b, ?_⟩
    have := congr($(h2).hom d)
    change lift.hom ((po.desc mk ψ hψ).hom d) = d at this
    rw [← hb] at this
    exact this
  · have := congr($(h1).hom b)
    change (po.desc mk ψ hψ).hom (i.hom b) = Ideal.Quotient.mk I b at this
    rw [(RingHom.mem_ker).1 hb, map_zero] at this
    exact Ideal.Quotient.eq_zero_iff_mem.1 this.symm

end GlobalTheory.TorsionChart
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionAppLESurjectiveAndKer =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RatioGenerationModMaxIdealOfClosedFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RatioGenerationModMaxIdealOfClosedFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsLocalizedModuleResBasicOpenOfQcqs\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TorsionAppLESurjectiveAndKer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace GlobalTheory.ClosedFibre

variable (R : Type) [CommRing R] (I : Ideal R)

abbrev baseIncl (e : ℕ) : Spec (CommRingCat.of (R ⧸ I ^ (0 + 1))) ⟶ Spec (CommRingCat.of (R ⧸ I ^ (e + 1))) :=
  Spec.map (CommRingCat.ofHom (Ideal.Quotient.factor (Ideal.pow_le_pow_right (by omega : 0 + 1 ≤ e + 1))))

theorem baseIncl_comp (e : ℕ) : baseIncl R I e ≫ thick R I e = thick R I 0 := by
  simp only [baseIncl, thick, ← Spec.map_comp, ← CommRingCat.ofHom_comp, Ideal.Quotient.factor_comp_mk]

def incl (e : ℕ) (G : Over (Spec (CommRingCat.of R))) :
    (thickObj R I 0 G).left ⟶ (thickObj R I e G).left :=
  pullback.map G.hom (thick R I 0) G.hom (thick R I e) (𝟙 _) (baseIncl R I e) (𝟙 _)
    (by simp) (by simp [baseIncl_comp])

theorem incl_fst (e : ℕ) (G : Over (Spec (CommRingCat.of R))) :
    incl R I e G ≫ (fstG I e G).left = (fstG I 0 G).left :=
  (pullback.lift_fst _ _ _).trans (Category.comp_id _)

theorem incl_snd (e : ℕ) (G : Over (Spec (CommRingCat.of R))) :
    incl R I e G ≫ pullback.snd G.hom (thick R I e) = pullback.snd G.hom (thick R I 0) ≫ baseIncl R I e :=
  pullback.lift_snd _ _ _

theorem isPullback_incl (e : ℕ) (G : Over (Spec (CommRingCat.of R))) :
    IsPullback (incl R I e G) (pullback.snd G.hom (thick R I 0)) (pullback.snd G.hom (thick R I e))
      (baseIncl R I e) := by
  refine IsPullback.of_right ?_ (incl_snd R I e G) (IsPullback.of_hasPullback G.hom (thick R I e))
  have h1 : incl R I e G ≫ pullback.fst G.hom (thick R I e) = pullback.fst G.hom (thick R I 0) :=
    (pullback.lift_fst _ _ _).trans (Category.comp_id _)
  rw [h1, baseIncl_comp]
  exact IsPullback.of_hasPullback G.hom (thick R I 0)

end GlobalTheory.ClosedFibre

namespace GlobalTheory.ClosedFibre

variable (R : Type) [CommRing R] (I : Ideal R)

theorem cst_fst (e : ℕ) (G : Over (Spec (CommRingCat.of R))) (V : (thickObj R I e G).left.Opens) (a : R) :
    GlobalTheory.AbLaw.cst ((fstG I e G).left ≫ G.hom) V a =
      GlobalTheory.AbLaw.cst (pullback.snd G.hom (thick R I e)) V (Ideal.Quotient.mk (I ^ (e + 1)) a) := by
  have hc : (fstG I e G).left ≫ G.hom = pullback.snd G.hom (thick R I e) ≫ thick R I e := pullback.condition
  rw [hc]
  have h := congr($(Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom (Ideal.Quotient.mk (I ^ (e + 1))))).hom a)
  simp only [GlobalTheory.AbLaw.cst, RingHom.comp_apply, Scheme.Hom.comp_appTop, CommRingCat.hom_comp,
    CommRingCat.hom_ofHom] at h ⊢
  erw [← h]
  rfl

theorem cst_eq_zero (e : ℕ) (G : Over (Spec (CommRingCat.of R)))
    (V : (thickObj R I e G).left.Opens) (a : R) (ha : a ∈ I ^ (e + 1)) :
    GlobalTheory.AbLaw.cst ((fstG I e G).left ≫ G.hom) V a = 0 := by
  rw [cst_fst, Ideal.Quotient.eq_zero_iff_mem.2 ha, map_zero]

theorem app_cst (e : ℕ) (G : Over (Spec (CommRingCat.of R)))
    (V : (thickObj R I e G).left.Opens) (a : R) :
    (Scheme.Hom.app (incl R I e G) V).hom (GlobalTheory.AbLaw.cst ((fstG I e G).left ≫ G.hom) V a) =
      GlobalTheory.AbLaw.cst ((fstG I 0 G).left ≫ G.hom) (incl R I e G ⁻¹ᵁ V) a := by
  have hq : incl R I e G ≫ ((fstG I e G).left ≫ G.hom) = (fstG I 0 G).left ≫ G.hom := by
    rw [← Category.assoc, incl_fst]
  rw [← hq]
  simp only [GlobalTheory.AbLaw.cst, GlobalTheory.AbLaw.rs, RingHom.comp_apply, Scheme.Hom.comp_appTop, CommRingCat.hom_comp]
  have := congr($((incl R I e G).naturality (homOfLE (le_top : V ≤ ⊤)).op).hom
    (((fstG I e G).left ≫ G.hom).appTop.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom a)))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply] at this
  exact this.trans rfl

theorem surjective_baseIncl (e : ℕ) : Surjective (baseIncl R I e) := by
  refine ⟨fun x => ?_⟩
  have h : I ^ (e + 1) ≤ I ^ (0 + 1) := Ideal.pow_le_pow_right (by omega)
  have hx : (x : PrimeSpectrum (R ⧸ I ^ (e + 1))) ∈
      Set.range (PrimeSpectrum.comap (Ideal.Quotient.factor h)) := by
    rw [range_comap_of_surjective _ _ (Ideal.Quotient.factor_surjective h)]
    intro a ha
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective a
    have ha' : a ∈ I ^ (0 + 1) := by
      simpa [RingHom.mem_ker, Ideal.Quotient.eq_zero_iff_mem] using ha
    rw [zero_add, pow_one] at ha'
    refine x.2.mem_of_pow_mem (e + 1) ?_
    have : Ideal.Quotient.mk (I ^ (e + 1)) a ^ (e + 1) = 0 := by
      rw [← map_pow, Ideal.Quotient.eq_zero_iff_mem]
      exact Ideal.pow_mem_pow ha' _
    rw [this]
    exact Ideal.zero_mem _
  exact hx

theorem incl_surjective (e : ℕ) (G : Over (Spec (CommRingCat.of R))) :
    Function.Surjective ⇑(incl R I e G) :=
  (MorphismProperty.of_isPullback (P := @Surjective) (isPullback_incl R I e G).flip
    (surjective_baseIncl R I e)).surj

theorem app_incl (e : ℕ) (G : Over (Spec (CommRingCat.of R))) (V : (thickObj R I e G).left.Opens)
    (hV : IsAffineOpen V) :
    IsAffineOpen (incl R I e G ⁻¹ᵁ V) ∧ Function.Surjective (Scheme.Hom.app (incl R I e G) V).hom ∧
      RingHom.ker (Scheme.Hom.app (incl R I e G) V).hom ≤
        Ideal.map (GlobalTheory.AbLaw.cst ((fstG I e G).left ≫ G.hom) V) I := by
  have H := isPullback_incl R I e G
  have po := (GlobalTheory.AbLaw.isPushout_cst H hV (V' := incl R I e G ⁻¹ᵁ V) rfl).flip
  have hsurj : Function.Surjective (CommRingCat.ofHom (Ideal.Quotient.factor
      (Ideal.pow_le_pow_right (by omega : 0 + 1 ≤ e + 1) : I ^ (e + 1) ≤ I ^ (0 + 1)))).hom :=
    Ideal.Quotient.factor_surjective (Ideal.pow_le_pow_right (by omega : 0 + 1 ≤ e + 1))
  obtain ⟨h1, h2⟩ := GlobalTheory.TorsionChart.pushout_inl_surjective_and_ker po hsurj
  rw [← Scheme.Hom.app_eq_appLE] at h1 h2
  refine ⟨GlobalTheory.AbLaw.isAffineOpen_preimage_of_isPullback H hV, h1, ?_⟩
  rw [h2, CommRingCat.hom_ofHom, CommRingCat.hom_ofHom, Ideal.Quotient.factor_ker, Ideal.map_map]
  have hc : (GlobalTheory.AbLaw.cst (pullback.snd G.hom (thick R I e)) V).comp (Ideal.Quotient.mk (I ^ (e + 1))) =
      GlobalTheory.AbLaw.cst ((fstG I e G).left ≫ G.hom) V :=
    RingHom.ext fun a => (cst_fst R I e G V a).symm
  rw [hc, zero_add, pow_one]

end GlobalTheory.ClosedFibre

namespace GlobalTheory.ClosedFibre


open MvPolynomial in
theorem gen_basicOpen {X : Scheme.{0}} {R : Type} [CommRing R] (p : X ⟶ Spec (CommRingCat.of R)) {N₀ : X.Opens}
    (hN₀ : IsAffineOpen N₀) {m : ℕ} (r : Fin m → Γ(X, N₀))
    (hgen : ∀ g : Γ(X, N₀), ∃ P Q : MvPolynomial (Fin m) R, IsUnit (eval₂ (GlobalTheory.AbLaw.cst p N₀) r Q) ∧
      g * eval₂ (GlobalTheory.AbLaw.cst p N₀) r Q = eval₂ (GlobalTheory.AbLaw.cst p N₀) r P)
    (h : Γ(X, N₀)) (D : X.Opens) (hle : D ≤ N₀) (hD : D = X.basicOpen h) (g : Γ(X, D)) :
    ∃ P Q : MvPolynomial (Fin m) R,
      IsUnit (eval₂ (GlobalTheory.AbLaw.cst p D) (fun l => GlobalTheory.AbLaw.rs X hle (r l)) Q) ∧
      g * eval₂ (GlobalTheory.AbLaw.cst p D) (fun l => GlobalTheory.AbLaw.rs X hle (r l)) Q =
        eval₂ (GlobalTheory.AbLaw.cst p D) (fun l => GlobalTheory.AbLaw.rs X hle (r l)) P := by
  subst hD
  have hev : ∀ P : MvPolynomial (Fin m) R, eval₂ (GlobalTheory.AbLaw.cst p (X.basicOpen h))
      (fun l => GlobalTheory.AbLaw.rs X hle (r l)) P = GlobalTheory.AbLaw.rs X hle (eval₂ (GlobalTheory.AbLaw.cst p N₀) r P) := by
    intro P
    rw [MvPolynomial.hom_eval₂]
    congr 1
    exact RingHom.ext fun a => (GlobalTheory.AbLaw.rs_cst p hle a).symm
  have hl := hN₀.isLocalization_basicOpen h
  obtain ⟨⟨a, ⟨s, hs⟩⟩, has⟩ := IsLocalization.surj (Submonoid.powers h) g
  have hsu : IsUnit (GlobalTheory.AbLaw.rs X hle s) := IsLocalization.map_units (M := Submonoid.powers h)
    Γ(X, X.basicOpen h) ⟨s, hs⟩
  obtain ⟨Pa, Qa, hQa, ha⟩ := hgen a
  obtain ⟨Ps, Qs, hQs, hsq⟩ := hgen s
  refine ⟨Pa * Qs, Ps * Qa, ?_, ?_⟩
  · rw [MvPolynomial.eval₂_mul, hev, hev, ← hsq, map_mul]
    exact (hsu.mul (hQs.map _)).mul (hQa.map _)
  · simp only [MvPolynomial.eval₂_mul, hev]
    rw [← hsq, ← ha]
    simp only [map_mul]
    have has' : g * GlobalTheory.AbLaw.rs X hle s = GlobalTheory.AbLaw.rs X hle a := has
    rw [← has']
    ring

end GlobalTheory.ClosedFibre

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem GlobalTheory.Mum.ratio_gen_mod_of_closedFibre : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (G : Over (Sp R)) (L : LB G.left) (k : ℕ) (s₀ : H0 L k) (i : Fin 1 → L.ι), (∀ w : (thickObj R (maximalIdeal R) 0 G).left, (fstG (maximalIdeal R) 0 G).left w ∈ secChart L i → IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left w s₀ i) → ∃ (N : (thickObj R (maximalIdeal R) 0 G).left.Opens) (m : ℕ) (σ : Fin m → H0 L k) (r : Fin m → Γ((thickObj R (maximalIdeal R) 0 G).left, N)), w ∈ N ∧ IsAffineOpen N ∧ N ≤ (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart L i ∧ (∀ y ∈ N, IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y s₀ i) ∧ ∀ l, secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y (σ l) i = gs (𝟙 _) y N (r l) * secGerm (Y := (thickObj R (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left y s₀ i) ∧ ∀ g : Γ((thickObj R (maximalIdeal R) 0 G).left, N), ∃ P Q : MvPolynomial (Fin m) R, IsUnit (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r Q) ∧ g * MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r Q = MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) 0 G).left) ((fstG (maximalIdeal R) 0 G).left ≫ G.hom) N) r P) → ∀ (e : ℕ) (w : (thickObj R (maximalIdeal R) e G).left), (fstG (maximalIdeal R) e G).left w ∈ secChart L i → IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left w s₀ i) → ∃ (N : (thickObj R (maximalIdeal R) e G).left.Opens) (m : ℕ) (σ : Fin m → H0 L k) (r : Fin m → Γ((thickObj R (maximalIdeal R) e G).left, N)), w ∈ N ∧ IsAffineOpen N ∧ N ≤ (fstG (maximalIdeal R) e G).left ⁻¹ᵁ secChart L i ∧ (∀ y ∈ N, IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left y s₀ i) ∧ ∀ l, secGerm (Y := (thickObj R (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left y (σ l) i = gs (𝟙 _) y N (r l) * secGerm (Y := (thickObj R (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left y s₀ i) ∧ ∀ g : Γ((thickObj R (maximalIdeal R) e G).left, N), ∃ P Q : MvPolynomial (Fin m) R, IsUnit (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) e G).left) ((fstG (maximalIdeal R) e G).left ≫ G.hom) N) r Q) ∧ g * MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) e G).left) ((fstG (maximalIdeal R) e G).left ≫ G.hom) N) r Q - MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) e G).left) ((fstG (maximalIdeal R) e G).left ≫ G.hom) N) r P ∈ Ideal.map (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) e G).left) ((fstG (maximalIdeal R) e G).left ≫ G.hom) N) (maximalIdeal R) := by
  intro R _ _ _ G L k s₀ i hyp e w hw hunit
  have hjp : GlobalTheory.ClosedFibre.incl R (maximalIdeal R) e G ≫ (fstG (maximalIdeal R) e G).left =
      (fstG (maximalIdeal R) 0 G).left := GlobalTheory.ClosedFibre.incl_fst R _ e G
  obtain ⟨w₀, rfl⟩ := GlobalTheory.ClosedFibre.incl_surjective R (maximalIdeal R) e G w
  set jm := GlobalTheory.ClosedFibre.incl R (maximalIdeal R) e G with hjdef
  set pe : (thickObj R (maximalIdeal R) e G).left ⟶ G.left := (fstG (maximalIdeal R) e G).left with hpe
  set p₀ : (thickObj R (maximalIdeal R) 0 G).left ⟶ G.left := (fstG (maximalIdeal R) 0 G).left with hp₀

  have hgc : ∀ (y : (thickObj R (maximalIdeal R) 0 G).left) (s : H0 L k), pe (jm y) ∈ secChart L i →
      secGerm p₀ y s i = (jm.stalkMap y).hom (secGerm pe (jm y) s i) := by
    intro y s hy
    rw [← hjp]
    exact secGerm_comp jm pe y s hy
  have hw₀ : p₀ w₀ ∈ secChart L i := by
    rw [← hjp, Scheme.Hom.comp_apply]; exact hw
  have hu₀ : IsUnit (secGerm p₀ w₀ s₀ i) := by rw [hgc w₀ s₀ hw]; exact hunit.map _
  obtain ⟨N₀, m, σ, r₀, hwN₀, hN₀, hN₀le, hgerm₀, hgen₀⟩ := hyp w₀ hw₀ hu₀

  obtain ⟨a, ha⟩ : ∃ a, a = (pe.app (secChart L i)).hom (s₀.f i) := ⟨_, rfl⟩
  have hmemU₁ : ∀ y : (thickObj R (maximalIdeal R) e G).left, (hy : pe y ∈ secChart L i) →
      (y ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen a ↔ IsUnit (secGerm pe y s₀ i)) := by
    intro y hy
    rw [Scheme.mem_basicOpen _ a y hy, ha]
    exact (iff_of_eq (congrArg IsUnit (gs_eq pe y _ hy (s₀.f i)))).symm
  have hwU₁ := (hmemU₁ _ hw).2 hunit
  obtain ⟨V, hV, hwV, hVle⟩ :=
    TopologicalSpace.Opens.isBasis_iff_nbhd.1 (thickObj R (maximalIdeal R) e G).left.isBasis_affineOpens hwU₁
  have hV' : IsAffineOpen V := hV
  obtain ⟨hVaff, hVsurj, -⟩ := GlobalTheory.ClosedFibre.app_incl R (maximalIdeal R) e G V hV'
  obtain ⟨f₀, g₀, hfg, hw₀f⟩ := exists_basicOpen_le_affine_inter hN₀ hVaff w₀ ⟨hwN₀, hwV⟩
  obtain ⟨F, hF⟩ := hVsurj g₀
  have hNaff : IsAffineOpen ((thickObj R (maximalIdeal R) e G).left.basicOpen F) := hV'.basicOpen F
  have hjN : jm ⁻¹ᵁ (thickObj R (maximalIdeal R) e G).left.basicOpen F =
      (thickObj R (maximalIdeal R) 0 G).left.basicOpen f₀ := by
    rw [Scheme.preimage_basicOpen, hF, hfg]
  have hwN : jm w₀ ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen F := by
    show w₀ ∈ jm ⁻¹ᵁ (thickObj R (maximalIdeal R) e G).left.basicOpen F
    rw [hjN]; exact hw₀f
  have hNU₁ : (thickObj R (maximalIdeal R) e G).left.basicOpen F ≤
      (thickObj R (maximalIdeal R) e G).left.basicOpen a :=
    ((thickObj R (maximalIdeal R) e G).left.basicOpen_le F).trans hVle
  have hU₁c : (thickObj R (maximalIdeal R) e G).left.basicOpen a ≤ pe ⁻¹ᵁ secChart L i :=
    (thickObj R (maximalIdeal R) e G).left.basicOpen_le a
  have hDN₀ : jm ⁻¹ᵁ (thickObj R (maximalIdeal R) e G).left.basicOpen F ≤ N₀ := by
    rw [hjN]; exact (thickObj R (maximalIdeal R) 0 G).left.basicOpen_le f₀

  have hu₁ : IsUnit (GlobalTheory.AbLaw.rs _ hU₁c a) :=
    (thickObj R (maximalIdeal R) e G).left.toRingedSpace.isUnit_res_basicOpen a
  let ρ : Fin m → Γ((thickObj R (maximalIdeal R) e G).left, (thickObj R (maximalIdeal R) e G).left.basicOpen a) :=
    fun l => GlobalTheory.AbLaw.rs _ hU₁c ((pe.app (secChart L i)).hom ((σ l).f i)) * ↑(hu₁.unit⁻¹)
  let r : Fin m → Γ((thickObj R (maximalIdeal R) e G).left, (thickObj R (maximalIdeal R) e G).left.basicOpen F) :=
    fun l => GlobalTheory.AbLaw.rs _ hNU₁ (ρ l)
  have hρ : ∀ l, ρ l * GlobalTheory.AbLaw.rs _ hU₁c a = GlobalTheory.AbLaw.rs _ hU₁c ((pe.app (secChart L i)).hom ((σ l).f i)) := by
    intro l
    simp only [ρ]
    rw [_root_.mul_assoc, IsUnit.val_inv_mul, _root_.mul_one]
  have hg1 : ∀ y ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen a,
      ∀ x : Γ((thickObj R (maximalIdeal R) e G).left, pe ⁻¹ᵁ secChart L i),
      gs (𝟙 (thickObj R (maximalIdeal R) e G).left) y ((thickObj R (maximalIdeal R) e G).left.basicOpen a)
        (GlobalTheory.AbLaw.rs _ hU₁c x) = gs (𝟙 (thickObj R (maximalIdeal R) e G).left) y (pe ⁻¹ᵁ secChart L i) x :=
    fun y hy x => gs_res (𝟙 _) y hU₁c hy x
  have hg2 : ∀ (y : (thickObj R (maximalIdeal R) e G).left) (hy : pe y ∈ secChart L i) (b : Γ(G.left, secChart L i)),
      gs (𝟙 (thickObj R (maximalIdeal R) e G).left) y (pe ⁻¹ᵁ secChart L i) ((pe.app (secChart L i)).hom b) =
        gs pe y (secChart L i) b := by
    intro y hy b
    rw [gs_pull (𝟙 (thickObj R (maximalIdeal R) e G).left) pe y _ hy, Category.id_comp]
  have hsa : ∀ (y : (thickObj R (maximalIdeal R) e G).left) (hy : pe y ∈ secChart L i),
      gs (𝟙 (thickObj R (maximalIdeal R) e G).left) y (pe ⁻¹ᵁ secChart L i) a = secGerm pe y s₀ i := by
    intro y hy
    rw [ha]; exact hg2 y hy _
  have hgermN : ∀ y ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen F, IsUnit (secGerm pe y s₀ i) ∧
      ∀ l, secGerm pe y (σ l) i = gs (𝟙 _) y ((thickObj R (maximalIdeal R) e G).left.basicOpen F) (r l) *
        secGerm pe y s₀ i := by
    intro y hy
    have hy₁ := hNU₁ hy
    have hyc := hU₁c hy₁
    refine ⟨(hmemU₁ y hyc).1 hy₁, fun l => ?_⟩
    have e1 := congrArg (gs (𝟙 _) y ((thickObj R (maximalIdeal R) e G).left.basicOpen a)) (hρ l)
    rw [gs_mul _ _ _ hy₁, hg1 y hy₁, hg1 y hy₁, hsa y hyc] at e1
    change gs pe y _ _ = _ * gs pe y _ _
    rw [← hg2 y hyc ((σ l).f i), ← e1]
    simp only [r]
    rw [gs_res (𝟙 _) y hNU₁ hy]
  refine ⟨(thickObj R (maximalIdeal R) e G).left.basicOpen F, m, σ, r, hwN, hNaff, hNU₁.trans hU₁c, hgermN,
    fun g => ?_⟩

  have hjr : ∀ l, (jm.app _).hom (r l) = GlobalTheory.AbLaw.rs _ hDN₀ (r₀ l) := by
    intro l
    apply fn_ext
    intro y hy
    have hyN₀ := hDN₀ hy
    have hyN : jm y ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen F := hy
    have hyc : pe (jm y) ∈ secChart L i := hU₁c (hNU₁ hyN)
    rw [gs_pull (𝟙 _) jm y _ hyN, Category.id_comp, gs_res (𝟙 _) y hDN₀ hy]
    refine (hgerm₀ y hyN₀).1.mul_left_injective ?_
    show gs jm y _ (r l) * secGerm p₀ y s₀ i = gs (𝟙 _) y N₀ (r₀ l) * secGerm p₀ y s₀ i
    rw [← (hgerm₀ y hyN₀).2 l, hgc y (σ l) hyc, hgc y s₀ hyc, (hgermN (jm y) hyN).2 l, map_mul,
      gs_stalkMap jm y _ hyN]
  have hjc : (jm.app _).hom.comp (GlobalTheory.AbLaw.cst (pe ≫ G.hom) ((thickObj R (maximalIdeal R) e G).left.basicOpen F)) =
      GlobalTheory.AbLaw.cst (p₀ ≫ G.hom) (jm ⁻¹ᵁ (thickObj R (maximalIdeal R) e G).left.basicOpen F) :=
    RingHom.ext fun x => GlobalTheory.ClosedFibre.app_cst R (maximalIdeal R) e G _ x
  have hjev : ∀ P : MvPolynomial (Fin m) R,
      (jm.app _).hom (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (pe ≫ G.hom) ((thickObj R (maximalIdeal R) e G).left.basicOpen F)) r P) =
      MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (p₀ ≫ G.hom) (jm ⁻¹ᵁ (thickObj R (maximalIdeal R) e G).left.basicOpen F))
        (fun l => GlobalTheory.AbLaw.rs _ hDN₀ (r₀ l)) P := by
    intro P
    rw [MvPolynomial.hom_eval₂, hjc]
    simp only [hjr]
  obtain ⟨P, Q, hQ, hPQ⟩ := GlobalTheory.ClosedFibre.gen_basicOpen (p₀ ≫ G.hom) hN₀ r₀ hgen₀ f₀ _ hDN₀ hjN ((jm.app _).hom g)
  obtain ⟨-, hNsurj, hNker⟩ := GlobalTheory.ClosedFibre.app_incl R (maximalIdeal R) e G _ hNaff
  have hnil : ∀ x ∈ Ideal.map (GlobalTheory.AbLaw.cst (pe ≫ G.hom) ((thickObj R (maximalIdeal R) e G).left.basicOpen F))
      (maximalIdeal R), IsNilpotent x := by
    intro x hx
    refine ⟨e + 1, ?_⟩
    have h1 : x ^ (e + 1) ∈ Ideal.map (GlobalTheory.AbLaw.cst (pe ≫ G.hom) ((thickObj R (maximalIdeal R) e G).left.basicOpen F))
        (maximalIdeal R ^ (e + 1)) := by
      rw [Ideal.map_pow]; exact Ideal.pow_mem_pow hx _
    have h0 : Ideal.map (GlobalTheory.AbLaw.cst (pe ≫ G.hom) ((thickObj R (maximalIdeal R) e G).left.basicOpen F))
        (maximalIdeal R ^ (e + 1)) = ⊥ := by
      rw [Ideal.map_eq_bot_iff_le_ker]
      intro x hx
      exact RingHom.mem_ker.2 (GlobalTheory.ClosedFibre.cst_eq_zero R (maximalIdeal R) e G _ x hx)
    rw [h0] at h1
    exact h1
  refine ⟨P, Q, ?_, ?_⟩
  · have hQ' : IsUnit ((jm.app _).hom (MvPolynomial.eval₂
        (GlobalTheory.AbLaw.cst (pe ≫ G.hom) ((thickObj R (maximalIdeal R) e G).left.basicOpen F)) r Q)) := by
      rw [hjev]; exact hQ
    obtain ⟨v, hv⟩ := hQ'.exists_right_inv
    obtain ⟨v', rfl⟩ := hNsurj v
    have hk : MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (pe ≫ G.hom) ((thickObj R (maximalIdeal R) e G).left.basicOpen F)) r Q
        * v' - 1 ∈ RingHom.ker (jm.app _).hom := by
      rw [RingHom.mem_ker, RingHom.map_sub, map_mul, map_one, hv, sub_self]
    have hu := (hnil _ (hNker hk)).isUnit_one_add
    rw [add_sub_cancel] at hu
    exact isUnit_of_mul_isUnit_left hu
  · apply hNker
    rw [RingHom.mem_ker, map_sub, map_mul, hjev, hjev, hPQ, sub_self]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RatioGenerationModMaxIdealOfClosedFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RatioGenerationModMaxIdealOfClosedFibreStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RatioGenerationModMaxIdealOfClosedFibreStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RatioGenerationModMaxIdealOfClosedFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RatioGenerationModMaxIdealOfClosedFibreStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionRatiosGenerateModMaximal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionRatiosGenerateModMaximal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteThetaSectionsThickeningCoverStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalGenerationRatiosClosedFibreAnyUnitSectionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RatioGenerationModMaxIdealOfClosedFibreStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem GlobalTheory.Mum.exists_ratio_gen_mod : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∃ k₀ : ℕ, 3 ≤ k₀ ∧ ∀ (e k : ℕ), k₀ ≤ k → ∀ (s₀ : H0 U.LG.L k) (i : Fin 1 → U.LG.L.ι) (w : (thickObj R (maximalIdeal R) e G).left), (fstG (maximalIdeal R) e G).left w ∈ secChart U.LG.L i → IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left w s₀ i) → ∃ (N : (thickObj R (maximalIdeal R) e G).left.Opens) (m : ℕ) (σ : Fin m → H0 U.LG.L k) (r : Fin m → Γ((thickObj R (maximalIdeal R) e G).left, N)), w ∈ N ∧ IsAffineOpen N ∧ N ≤ (fstG (maximalIdeal R) e G).left ⁻¹ᵁ secChart U.LG.L i ∧ (∀ y ∈ N, IsUnit (secGerm (Y := (thickObj R (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left y s₀ i) ∧ ∀ l, secGerm (Y := (thickObj R (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left y (σ l) i = gs (𝟙 _) y N (r l) * secGerm (Y := (thickObj R (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left y s₀ i) ∧ ∀ g : Γ((thickObj R (maximalIdeal R) e G).left, N), ∃ P Q : MvPolynomial (Fin m) R, IsUnit (MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) e G).left) ((fstG (maximalIdeal R) e G).left ≫ G.hom) N) r Q) ∧ g * MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) e G).left) ((fstG (maximalIdeal R) e G).left ≫ G.hom) N) r Q - MvPolynomial.eval₂ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) e G).left) ((fstG (maximalIdeal R) e G).left ≫ G.hom) N) r P ∈ Ideal.map (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) e G).left) ((fstG (maximalIdeal R) e G).left ≫ G.hom) N) (maximalIdeal R) := by
  intro R _ _ _ hBase D A G _ _ hG U
  obtain ⟨k₀, hk₀, hA⟩ := _root_.GlobalTheory.Mum.exists_ratio_gen_closed R hBase D A G hG U
  refine ⟨k₀, hk₀, fun e k hk s₀ i w hw hu => ?_⟩
  obtain ⟨n, τ, hτ⟩ := hA k hk
  exact _root_.GlobalTheory.Mum.ratio_gen_mod_of_closedFibre R G U.LG.L k s₀ i (_root_.GlobalTheory.Mum.locGen_ratio_anySec R G U.LG.L k n τ hτ s₀ i) e w hw hu
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionRatiosGenerateModMaximal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionRatiosGenerateModMaximalStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionRatiosGenerateModMaximalStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionRatiosGenerateModMaximal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionRatiosGenerateModMaximalStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalizedPresentationEvalQuotientFraction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalizedPresentationEvalQuotientFraction", "h": "module\n\npublic import Mathlib.Algebra.MvPolynomial.Eval\npublic import Mathlib.RingTheory.Ideal.Maps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.MvPolynomial.CommRing\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory

open MvPolynomial

theorem exists_eval₂_fraction_of_exists_mod_nilpotent : ∀ (R B : Type) [CommRing R] [CommRing B] (c : R →+* B) (J : Ideal R) (n : ℕ), (∀ x ∈ J ^ n, c x = 0) → ∀ (m : ℕ) (r : Fin m → B), (∀ g : B, ∃ P Q : MvPolynomial (Fin m) R, IsUnit (MvPolynomial.eval₂ c r Q) ∧ g * MvPolynomial.eval₂ c r Q - MvPolynomial.eval₂ c r P ∈ Ideal.map c J) → ∀ g : B, ∃ P Q : MvPolynomial (Fin m) R, IsUnit (MvPolynomial.eval₂ c r Q) ∧ g * MvPolynomial.eval₂ c r Q = MvPolynomial.eval₂ c r P := by
  intro R B _ _ c J n hn m r hgen
  let S : Subring B :=
    { carrier := {g | ∃ P Q : MvPolynomial (Fin m) R, IsUnit (eval₂ c r Q) ∧ g * eval₂ c r Q = eval₂ c r P}
      mul_mem' := by
        rintro a b ⟨P₁, Q₁, hQ₁, h₁⟩ ⟨P₂, Q₂, hQ₂, h₂⟩
        refine ⟨P₁ * P₂, Q₁ * Q₂, ?_, ?_⟩
        · rw [eval₂_mul]; exact hQ₁.mul hQ₂
        · rw [eval₂_mul, eval₂_mul, ← h₁, ← h₂]; ring
      one_mem' := ⟨1, 1, by simp, by simp⟩
      add_mem' := by
        rintro a b ⟨P₁, Q₁, hQ₁, h₁⟩ ⟨P₂, Q₂, hQ₂, h₂⟩
        refine ⟨P₁ * Q₂ + P₂ * Q₁, Q₁ * Q₂, ?_, ?_⟩
        · rw [eval₂_mul]; exact hQ₁.mul hQ₂
        · rw [eval₂_add, eval₂_mul, eval₂_mul, eval₂_mul, ← h₁, ← h₂]; ring
      zero_mem' := ⟨0, 1, by simp, by simp⟩
      neg_mem' := by
        rintro a ⟨P, Q, hQ, h⟩
        refine ⟨-P, Q, hQ, ?_⟩
        rw [eval₂_neg, ← h]; ring }
  have hS : ∀ g, g ∈ S ↔ ∃ P Q : MvPolynomial (Fin m) R,
      IsUnit (eval₂ c r Q) ∧ g * eval₂ c r Q = eval₂ c r P := fun g => Iff.rfl
  have hcS : ∀ a : R, c a ∈ S := fun a => (hS _).2 ⟨C a, 1, by simp, by simp⟩
  set I := Ideal.map c J with hI
  have hdec : ∀ b : B, ∃ s ∈ S, b - s ∈ I := by
    intro b
    obtain ⟨P, Q, hQ, hb⟩ := hgen b
    obtain ⟨u, hu⟩ := hQ
    refine ⟨eval₂ c r P * ↑u⁻¹, (hS _).2 ⟨P, Q, ⟨u, hu⟩, ?_⟩, ?_⟩
    · rw [← hu, mul_assoc, Units.inv_mul, mul_one]
    · have h1 : (↑u⁻¹ : B) * ↑u = 1 := Units.inv_mul u
      have : b - eval₂ c r P * ↑u⁻¹ = ↑u⁻¹ * (b * eval₂ c r Q - eval₂ c r P) := by
        rw [← hu]; linear_combination (-b) * h1
      rw [this]; exact I.mul_mem_left _ hb
  have hstep : ∀ k : ℕ, ∀ x ∈ I ^ k, ∃ s ∈ S, x - s ∈ I ^ (k + 1) := by
    intro k x hx
    have hIk : I ^ k = Ideal.span (c '' ↑(J ^ k)) := by rw [hI, ← Ideal.map_pow]; rfl
    rw [hIk] at hx
    induction hx using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨j, -, rfl⟩ := hy
      exact ⟨c j, hcS j, by simp⟩
    | zero => exact ⟨0, S.zero_mem, by simp⟩
    | add y z _ _ hy hz =>
      obtain ⟨s, hs, hys⟩ := hy
      obtain ⟨t, ht, hzt⟩ := hz
      refine ⟨s + t, S.add_mem hs ht, ?_⟩
      have := Ideal.add_mem _ hys hzt
      convert this using 1; ring
    | smul b y hy ih =>
      obtain ⟨s, hs, hys⟩ := ih
      obtain ⟨t, ht, hbt⟩ := hdec b
      refine ⟨t * s, S.mul_mem ht hs, ?_⟩
      have hy' : y ∈ I ^ k := hIk ▸ hy
      have h1 : (b - t) * y ∈ I ^ (k + 1) := by
        rw [pow_succ']; exact Ideal.mul_mem_mul hbt hy'
      have h2 : t * (y - s) ∈ I ^ (k + 1) := Ideal.mul_mem_left _ _ hys
      have := Ideal.add_mem _ h1 h2
      rw [smul_eq_mul]
      convert this using 1; ring
  have hall : ∀ k : ℕ, ∀ g : B, ∃ s ∈ S, g - s ∈ I ^ k := by
    intro k
    induction k with
    | zero => intro g; exact ⟨0, S.zero_mem, by simp⟩
    | succ k ih =>
      intro g
      obtain ⟨s, hs, hgs⟩ := ih g
      obtain ⟨t, ht, hxt⟩ := hstep k _ hgs
      refine ⟨s + t, S.add_mem hs ht, ?_⟩
      convert hxt using 1; ring
  have hIn : I ^ n = ⊥ := by
    rw [hI, ← Ideal.map_pow, Ideal.map_eq_bot_iff_le_ker]
    intro x hx
    rw [RingHom.mem_ker]
    exact hn x hx
  intro g
  obtain ⟨s, hs, hgs⟩ := hall n g
  rw [hIn, Ideal.mem_bot, sub_eq_zero] at hgs
  exact (hS g).1 (hgs ▸ hs)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalizedPresentationEvalQuotientFraction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSectionRatioEqNearThickeningPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSectionRatioEqNearThickeningPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfAgreeOnAffineOpenGenerators\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionRatiosGenerateModMaximalStatement\npublic import Mathlib.Algebra.MvPolynomial.Eval\npublic import Mathlib.RingTheory.Ideal.Maps\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalizedPresentationEvalQuotientFraction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem eq_of_secRatioEq_near : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∃ k₀ : ℕ, 3 ≤ k₀ ∧ ∀ (e k : ℕ), k₀ ≤ k → ∀ (s₀ : H0 U.LG.L k) (i : Fin 1 → U.LG.L.ι) (w : (thickObj R (maximalIdeal R) e G).left), (fstG (maximalIdeal R) e G).left w ∈ secChart U.LG.L i → IsUnit (secGerm (fstG (maximalIdeal R) e G).left w s₀ i) → ∃ (N : (thickObj R (maximalIdeal R) e G).left.Opens) (m : ℕ) (σ : Fin m → H0 U.LG.L k), w ∈ N ∧ ∀ (W : Scheme.{0}) (a b : W ⟶ (thickObj R (maximalIdeal R) e G).left), a ≫ (thickObj R (maximalIdeal R) e G).hom = b ≫ (thickObj R (maximalIdeal R) e G).hom → (∀ x, a x ∈ N) → (∀ x, b x ∈ N) → (∀ l, SecRatioEq U.LG.L (a ≫ (fstG (maximalIdeal R) e G).left) (b ≫ (fstG (maximalIdeal R) e G).left) (σ l) s₀ (σ l) s₀) → a = b := by
  intro R _ _ _ hB D A G _ _ hG U
  obtain ⟨k₀, hk₀, H⟩ := _root_.GlobalTheory.Mum.exists_ratio_gen_mod R hB D A G hG U
  refine ⟨k₀, hk₀, fun e k hk s₀ i w hw hu => ?_⟩
  obtain ⟨N, m, σ, r, hwN, hNaff, hNi, hgerm, hgen⟩ := H e k hk s₀ i w hw hu
  have hw' : (fstG (maximalIdeal R) e G).left ≫ G.hom = (thickObj R (maximalIdeal R) e G).hom ≫ thick R (maximalIdeal R) e :=
    (fstG (maximalIdeal R) e G).w
  have hz : ∀ x ∈ maximalIdeal R ^ (e + 1), (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) e G).left) ((fstG (maximalIdeal R) e G).left ≫ G.hom) N) x = 0 := by
    intro x hx
    have h0 : (thick R (maximalIdeal R) e).appTop.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom x) = 0 := by
      have := congrArg (fun φ => φ.hom x)
        (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom (Ideal.Quotient.mk (maximalIdeal R ^ (e + 1)))))
      simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at this
      rw [← this, Ideal.Quotient.eq_zero_iff_mem.2 hx, map_zero]
    simp only [GlobalTheory.AbLaw.cst, RingHom.comp_apply, hw', Scheme.Hom.comp_appTop, CommRingCat.hom_comp, h0, map_zero]
  have hgen' := _root_.GlobalTheory.exists_eval₂_fraction_of_exists_mod_nilpotent R _ (GlobalTheory.AbLaw.cst (X := (thickObj R (maximalIdeal R) e G).left) ((fstG (maximalIdeal R) e G).left ≫ G.hom) N) (maximalIdeal R) (e + 1) hz m r hgen
  refine ⟨N, m, σ, hwN, fun W a b hab ha hb hrat => ?_⟩
  have ha' : ⊤ ≤ a ⁻¹ᵁ N := fun x _ => ha x
  have hb' : ⊤ ≤ b ⁻¹ᵁ N := fun x _ => hb x
  have hst : ∀ (c : W ⟶ (thickObj R (maximalIdeal R) e G).left) (x : W) (f : Γ((thickObj R (maximalIdeal R) e G).left, N)), c x ∈ N →
      (c.stalkMap x).hom (gs (𝟙 _) (c x) N f) = gs c x N f := by
    intro c x f h
    have e1 : gs (c ≫ 𝟙 _) x N f = (c.stalkMap x).hom (gs (𝟙 _) (c x) N f) := by
      rw [gs_eq (𝟙 _) (c x) _ h, ← gs_pull c (𝟙 _) x _ h, gs_eq c x _ (show c x ∈ (𝟙 (thickObj R (maximalIdeal R) e G).left : (thickObj R (maximalIdeal R) e G).left ⟶ (thickObj R (maximalIdeal R) e G).left) ⁻¹ᵁ N from h)]
      exact (Scheme.Hom.germ_stalkMap_apply c _ x h _).symm
    rw [← e1, Category.comp_id]
  have hsg : ∀ (c : W ⟶ (thickObj R (maximalIdeal R) e G).left) (x : W) (s : H0 U.LG.L k), c x ∈ N →
      secGerm (c ≫ (fstG (maximalIdeal R) e G).left) x s i = (c.stalkMap x).hom (secGerm (fstG (maximalIdeal R) e G).left (c x) s i) :=
    fun c x s h => secGerm_comp c _ x s (hNi h)
  refine _root_.GlobalTheory.eq_of_agree_on_generators R _ W ((fstG (maximalIdeal R) e G).left ≫ G.hom) N hNaff m r hgen' a b ?_ ha' hb' ?_
  · rw [hw', ← Category.assoc, hab, Category.assoc]
  · intro l
    apply fn_ext
    intro x _
    rw [gs_res _ _ _ (show (𝟙 W : W ⟶ W) x ∈ (⊤ : W.Opens) from trivial),
      gs_res _ _ _ (show (𝟙 W : W ⟶ W) x ∈ (⊤ : W.Opens) from trivial),
      gs_pull (𝟙 W) a x N (ha x), gs_pull (𝟙 W) b x N (hb x), Category.id_comp, Category.id_comp]
    have key := secRatioEq_iff_germ.1 (hrat l) x i i (hNi (ha x)) (hNi (hb x))
    rw [hsg a x _ (ha x), hsg a x _ (ha x), hsg b x _ (hb x), hsg b x _ (hb x),
      (hgerm _ (ha x)).2 l, (hgerm _ (hb x)).2 l, map_mul, map_mul, hst a x _ (ha x), hst b x _ (hb x)] at key
    have hA := ((hgerm _ (ha x)).1).map (a.stalkMap x).hom
    have hB := ((hgerm _ (hb x)).1).map (b.stalkMap x).hom
    refine (hA.mul hB).mul_left_inj.1 ?_
    linear_combination key

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSectionRatioEqNearThickeningPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeNearPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeNearPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermRatioAgreeSelf\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSectionRatioEqNearThickeningPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.LocAgree

theorem gs_prod {X Y : Scheme.{0}} {L : LB X} {k : ℕ} (u v : Y ⟶ X) (i i' : Fin 1 → L.ι) (y : Y)
    (hi : u y ∈ secChart L i) (hi' : v y ∈ secChart L i') (s t : H0 L k) :
    gs (𝟙 Y) y (u ⁻¹ᵁ secChart L i ⊓ v ⁻¹ᵁ secChart L i')
        ((Y.presheaf.map (homOfLE (inf_le_left : u ⁻¹ᵁ secChart L i ⊓ v ⁻¹ᵁ secChart L i' ≤ u ⁻¹ᵁ secChart L i)).op).hom
          ((u.app (secChart L i)).hom (s.f i)) *
        (Y.presheaf.map (homOfLE (inf_le_right : u ⁻¹ᵁ secChart L i ⊓ v ⁻¹ᵁ secChart L i' ≤ v ⁻¹ᵁ secChart L i')).op).hom
          ((v.app (secChart L i')).hom (t.f i'))) = secGerm u y s i * secGerm v y t i' := by
  have hy : (𝟙 Y : Y ⟶ Y) y ∈ u ⁻¹ᵁ secChart L i ⊓ v ⁻¹ᵁ secChart L i' := ⟨hi, hi'⟩
  rw [gs_mul _ _ _ hy, gs_res _ _ _ hy, gs_res _ _ _ hy]
  exact congrArg₂ (· * ·) (gs_pull (𝟙 Y) u y _ hi _) (gs_pull (𝟙 Y) v y _ hi' _)

theorem gs_nbhd {Z : Scheme.{0}} {O : Z.Opens} (a b : Γ(Z, O)) (z : Z) (hz : z ∈ O)
    (h : gs (𝟙 Z) z O a = gs (𝟙 Z) z O b) :
    ∃ V : Z.Opens, z ∈ V ∧ V ≤ O ∧ ∀ x ∈ V, gs (𝟙 Z) x O a = gs (𝟙 Z) x O b := by
  rw [gs_eq _ z O hz, gs_eq _ z O hz] at h
  obtain ⟨V, hzV, iU, iV, e⟩ := TopCat.Presheaf.germ_eq Z.presheaf z hz hz _ _ h
  refine ⟨V, hzV, leOfHom iU, fun x hx => ?_⟩
  have hxO : (𝟙 Z : Z ⟶ Z) x ∈ O := leOfHom iU hx
  rw [gs_eq _ x O hxO, gs_eq _ x O hxO]
  exact (TopCat.Presheaf.germ_res_apply Z.presheaf iU x hx _).symm.trans
    ((congrArg (Z.presheaf.germ V x hx).hom e).trans (TopCat.Presheaf.germ_res_apply Z.presheaf iV x hx _))

end GlobalTheory.Mum.LocAgree

namespace GlobalTheory.Mum.LocAgree

theorem locAgree : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∃ k₀ : ℕ, 3 ≤ k₀ ∧ ∀ (e k : ℕ), k₀ ≤ k → ∀ (Z : Scheme.{0}) (u u' : Z ⟶ (thickObj R (maximalIdeal R) e G).left), u ≫ (thickObj R (maximalIdeal R) e G).hom = u' ≫ (thickObj R (maximalIdeal R) e G).hom → ∀ (s₀ : H0 U.LG.L k) (i i'' : Fin 1 → U.LG.L.ι) (z : Z), GermRatioAgree (u ≫ (fstG (maximalIdeal R) e G).left) (u' ≫ (fstG (maximalIdeal R) e G).left) s₀ i i'' z → u z = u' z → ∃ W : Z.Opens, z ∈ W ∧ W.ι ≫ u = W.ι ≫ u' := by
  intro R _ _ _ hB D A G _ _ hG U
  obtain ⟨k₀, hk₀, hK⟩ := _root_.GlobalTheory.Mum.eq_of_secRatioEq_near R hB D A G hG U
  refine ⟨k₀, hk₀, fun e k hk Z u u' hu s₀ i i'' z hg hz => ?_⟩
  obtain ⟨hi, hi'', hunit, hunit', hall⟩ := hg
  set p := (fstG (maximalIdeal R) e G).left with hp
  have hiw : p (u z) ∈ secChart U.LG.L i := hi
  have hunitw : IsUnit (secGerm p (u z) s₀ i) := by
    rw [secGerm_comp u p z s₀ hiw] at hunit
    exact (isUnit_map_iff (u.stalkMap z).hom _).1 hunit
  obtain ⟨N, m, σ, hwN, hmono⟩ := hK e k hk s₀ i (u z) hiw hunitw

  have hz' : z ∈ (u ≫ p) ⁻¹ᵁ secChart U.LG.L i ⊓ (u' ≫ p) ⁻¹ᵁ secChart U.LG.L i'' := ⟨hi, hi''⟩
  have hV : ∀ l, ∃ V : Z.Opens, z ∈ V ∧ V ≤ (u ≫ p) ⁻¹ᵁ secChart U.LG.L i ⊓ (u' ≫ p) ⁻¹ᵁ secChart U.LG.L i'' ∧
      ∀ x ∈ V, secGerm (u ≫ p) x (σ l) i * secGerm (u' ≫ p) x s₀ i'' =
        secGerm (u ≫ p) x s₀ i * secGerm (u' ≫ p) x (σ l) i'' := by
    intro l
    obtain ⟨V, hzV, hVO, hx⟩ := gs_nbhd _ _ z hz'
      ((gs_prod (u ≫ p) (u' ≫ p) i i'' z hi hi'' (σ l) s₀).trans ((hall (σ l)).trans
        (gs_prod (u ≫ p) (u' ≫ p) i i'' z hi hi'' s₀ (σ l)).symm))
    refine ⟨V, hzV, hVO, fun x hxV => ?_⟩
    have hxO := hVO hxV
    rw [← gs_prod (u ≫ p) (u' ≫ p) i i'' x hxO.1 hxO.2, ← gs_prod (u ≫ p) (u' ≫ p) i i'' x hxO.1 hxO.2]
    exact hx x hxV
  choose V hzV hVO hVx using hV
  let W : Z.Opens := ⟨(⋂ l, (V l : Set Z)) ∩ ((u ≫ p) ⁻¹ᵁ secChart U.LG.L i ⊓ (u' ≫ p) ⁻¹ᵁ secChart U.LG.L i'' : Z.Opens)
      ∩ (u ⁻¹ᵁ N : Set Z) ∩ (u' ⁻¹ᵁ N : Set Z),
    (((isOpen_iInter_of_finite fun l => (V l).isOpen).inter (TopologicalSpace.Opens.isOpen _)).inter (TopologicalSpace.Opens.isOpen _)).inter
      (TopologicalSpace.Opens.isOpen _)⟩
  have hzW : z ∈ W := ⟨⟨⟨Set.mem_iInter.2 hzV, hz'⟩, hwN⟩, show u' z ∈ N from hz ▸ hwN⟩
  refine ⟨W, hzW, ?_⟩
  have hmem : ∀ x : W.toScheme, W.ι x ∈ W := fun x => by
    have h : W.ι x ∈ Set.range W.ι := ⟨x, rfl⟩
    rwa [Scheme.Opens.range_ι] at h
  apply hmono W.toScheme (W.ι ≫ u) (W.ι ≫ u')
  · simp only [Category.assoc, hu]
  · intro x; exact (hmem x).1.2
  · intro x; exact (hmem x).2
  · intro l
    refine secRatioEq_of_exists_germ fun x => ⟨i, i'', (hmem x).1.1.2.1, (hmem x).1.1.2.2, ?_⟩
    simp only [Category.assoc]
    rw [secGerm_comp W.ι (u ≫ p) x _ (hmem x).1.1.2.1, secGerm_comp W.ι (u ≫ p) x _ (hmem x).1.1.2.1,
      secGerm_comp W.ι (u' ≫ p) x _ (hmem x).1.1.2.2, secGerm_comp W.ι (u' ≫ p) x _ (hmem x).1.1.2.2,
      ← map_mul, ← map_mul, hVx l _ (Set.mem_iInter.1 (hmem x).1.1.1 l)]

end GlobalTheory.Mum.LocAgree
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeNearPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatios =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatios", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningMorphismsAgreeBeyondThreshold\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeNearPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermRatioAgreeSelf\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem agree_near_of_ratios : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∃ k₀ : ℕ, 3 ≤ k₀ ∧ ∀ (e k k' : ℕ), k₀ ≤ k → ∀ (x x' : thickObj R (maximalIdeal R) e G ⟶ thickObj R (maximalIdeal R) e G) (T : H0 U.LG.L k → H0 U.LG.L k'), (∀ s₁ s₂ : H0 U.LG.L k, SecRatioEq U.LG.L (x.left ≫ (fstG (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left s₁ s₂ (T s₁) (T s₂)) → (∀ s₁ s₂ : H0 U.LG.L k, SecRatioEq U.LG.L (x'.left ≫ (fstG (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left s₁ s₂ (T s₁) (T s₂)) → ∀ (y : (thickObj R (maximalIdeal R) e G).left) (s₀ : H0 U.LG.L k) (i i' i'' : Fin 1 → U.LG.L.ι), y ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen ((((x).left ≫ (fstG (maximalIdeal R) e G).left).app (secChart U.LG.L i)).hom (s₀.f i)) → y ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen (((fstG (maximalIdeal R) e G).left.app (secChart U.LG.L i')).hom ((T s₀).f i')) → y ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen ((((x').left ≫ (fstG (maximalIdeal R) e G).left).app (secChart U.LG.L i'')).hom (s₀.f i'')) → ∃ W : (thickObj R (maximalIdeal R) e G).left.Opens, y ∈ W ∧ W.ι ≫ x.left = W.ι ≫ x'.left := by

  intro R _ _ _ hB D A G _ _ hG U
  obtain ⟨k₁, hk₁, H₁⟩ := _root_.GlobalTheory.Mum.eq_of_germRatioAgree R hB D A G hG U
  obtain ⟨k₂, -, H₂⟩ := _root_.GlobalTheory.Mum.LocAgree.locAgree R hB D A G hG U
  refine ⟨max k₁ k₂, le_trans hk₁ (le_max_left _ _), ?_⟩
  intro e k k' hk x x' T hx hx' y s₀ i i' i'' hy₁ hy₂ hy₃
  have m₁ : (x.left ≫ (fstG (maximalIdeal R) e G).left) y ∈ secChart U.LG.L i :=
    (thickObj R (maximalIdeal R) e G).left.basicOpen_le _ hy₁
  have m₂ : (fstG (maximalIdeal R) e G).left y ∈ secChart U.LG.L i' :=
    (thickObj R (maximalIdeal R) e G).left.basicOpen_le _ hy₂
  have m₃ : (x'.left ≫ (fstG (maximalIdeal R) e G).left) y ∈ secChart U.LG.L i'' :=
    (thickObj R (maximalIdeal R) e G).left.basicOpen_le _ hy₃
  have u₁ : IsUnit (secGerm (x.left ≫ (fstG (maximalIdeal R) e G).left) y s₀ i) := by
    exact (congrArg IsUnit (gs_eq _ _ _ m₁ _)).mpr ((Scheme.mem_basicOpen (thickObj R (maximalIdeal R) e G).left _ y m₁).1 hy₁)
  have u₂ : IsUnit (secGerm (fstG (maximalIdeal R) e G).left y (T s₀) i') := by
    exact (congrArg IsUnit (gs_eq _ _ _ m₂ _)).mpr ((Scheme.mem_basicOpen (thickObj R (maximalIdeal R) e G).left _ y m₂).1 hy₂)
  have u₃ : IsUnit (secGerm (x'.left ≫ (fstG (maximalIdeal R) e G).left) y s₀ i'') := by
    exact (congrArg IsUnit (gs_eq _ _ _ m₃ _)).mpr ((Scheme.mem_basicOpen (thickObj R (maximalIdeal R) e G).left _ y m₃).1 hy₃)
  have hA : GermRatioAgree (x.left ≫ (fstG (maximalIdeal R) e G).left)
      (x'.left ≫ (fstG (maximalIdeal R) e G).left) s₀ i i'' y := by
    refine ⟨m₁, m₃, u₁, u₃, fun s₁ => ?_⟩
    have e₁ := secRatioEq_iff_germ.1 (hx s₁ s₀) y i i' m₁ m₂
    have e₂ := secRatioEq_iff_germ.1 (hx' s₁ s₀) y i'' i' m₃ m₂
    apply (u₂.mul_left_inj).1
    linear_combination secGerm (x'.left ≫ (fstG (maximalIdeal R) e G).left) y s₀ i'' * e₁ -
      secGerm (x.left ≫ (fstG (maximalIdeal R) e G).left) y s₀ i * e₂
  have hb : x.left ≫ (thickObj R (maximalIdeal R) e G).hom = x'.left ≫ (thickObj R (maximalIdeal R) e G).hom := by
    rw [Over.w x, Over.w x']
  have hk₁' : k₁ ≤ k := le_trans (le_max_left _ _) hk
  have hk₂' : k₂ ≤ k := le_trans (le_max_right _ _) hk
  exact H₂ e k hk₂' _ x.left x'.left hb s₀ i i'' y hA (H₁ e k hk₁' _ x.left x'.left hb s₀ i i'' y hA)

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatios =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatiosStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatiosStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatios\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatiosStatement =====
