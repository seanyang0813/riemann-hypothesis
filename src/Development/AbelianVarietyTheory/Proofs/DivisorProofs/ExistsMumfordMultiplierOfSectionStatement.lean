module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOn
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif
public import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedIotaGenerator
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ValueAtUnitSection
public import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsRatioPoints
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GtCoordEndRatioDescends
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZeroStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionAdicSumsAdmissibleBaseStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFunctionalEquationOfAdicSumTermwiseStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PhiGenPf
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SectionArithmetic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFactorExistsUniqueConstMulIntegralGeneratStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFunctionalEquationBundleTrivialAbelianParStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamilyStatement
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.GenCalc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.SectionScalarValuation
import Mathlib.Tactic.Polynomial.Basic
import Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsUniformizationEndomorphismOfLinear
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.VRatioGt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal
import Mathlib.Tactic.Basify

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOnOfTExpGen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntFam, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackTwistedSectionVanishing, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalEndomorphismPullsTorusCoordinateNormalised, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpansionPullbackFormalEndomorphismTermwise, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationPullbackOfIntegralThetaFunctional, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackIntegralExpansionFormalEndomorphis, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackIntegralExpansionFormalEndomorphisStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoGermTrans, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubeProductTwistedSectionsVanishing, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionMulOfMemberProducts, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionMulOfMemberProductsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationMulOfRelatedPairs, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProductSmallTwistedFunctionalEqnFamily, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProductSmallTwistedFunctionalEqnFamilyStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplierPowerMulPullbackSmallFamily, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplierPowerMulPullbackSmallFamilyStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSection, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSectionStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOnOfTExpGen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOnOfTExpGen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

noncomputable section

namespace GlobalTheory.MumMult

theorem chartExpOn_of_tExp_gen {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
    {a : D.toPre.P.A ⟶ D.toPre.P.A} {A : PolAV (Sp (FractionRing R))} {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G]
    (U : UnifPre I D A G) (e : ℕ) (b : thickObj R I e G ⟶ thickObj R I e G) (n : ℕ)
    (F : ∀ β, SecT D.toPre a n 0 β) (f : ∀ β, D.toPre.SecB n β) (τ : SecE U b n 0) (hF : Small I (w := id) F)
    (hf : ∀ β, ∀ (Z : Scheme.{0}) (x : Z ⟶ D.toPre.P.A.left) (z : Z) (J), Good D.toPre.P.L z J →
      sval (f β) x z J = sval (F β) x z J)
    (hτ : TExp U τ (w := id) F) (i' : Fin 1 → U.LG.L.ι) (W : (thickObj R I e G).left.Opens)
    (g : Γ((thickObj R I e G).left, W))
    (hg : ∀ (z : (thickObj R I e G).left) (J'), z ∈ W → Good U.LG.L z J' → J' (𝟙 _ ≫ (fstG I e G).left) = i' 0 →
      gs (𝟙 _) z W g = sval τ (𝟙 _) z J') : ChartExpOn U e n i' W g f := by
  classical
  let S : Finset D.toPre.X := (hF e).toFinset
  have hS : ∀ α ∉ S, Van I (F α) e := fun α hα => by_contra fun h => hα ((hF e).mem_toFinset.2 h)
  refine ⟨S, fun α hα j => fn_ext fun y hy => ?_, ?_⟩
  · choose J hJ using fun ψ : (thickObj R I e G).left ⟶ D.toPre.P.A.left => exists_chart D.toPre.P.isLB (ψ y)
    refine (gs_pull (𝟙 _) _ y _ hy _).trans (Eq.trans ?_ (DVR.gs_zero (𝟙 _) y _ hy).symm)
    rw [Category.id_comp]
    have h0 : sval (f α) (DVR.pGl U e) y J = 0 := (hf α _ _ y J hJ).trans (hS α hα _ (U.gt e).q.left y J hJ)
    exact (sec_trans (f α) _ y hy (Good.mem hJ _ _)).trans ((congrArg _ h0).trans (mul_zero _))
  · rintro ⟨p₁, p₂⟩ jf jt hj hc
    refine fn_ext fun y hy => ?_
    obtain ⟨J, hJ, eJ⟩ := exists_good D.toPre.P.L D.toPre.P.isLB y _ _ hc (by
      rintro (a | a | a)
      exacts [mem_pull.1 hy.1.1.1.1, Set.mem_iInter.1 (U.expW_le_f e _ _ jf jt a.1.2 hy.1) a.2,
        Set.mem_iInter.1 (U.expWeight_le_chart_weight e _ _ jf jt a.1.2 hy.1) a.2])
    obtain ⟨J', hJ', eJ'⟩ := exists_good U.LG.L U.LG.isLB y (K := PUnit.{1}) (fun _ => 𝟙 _ ≫ (fstG I e G).left)
      (fun _ => p₂ PUnit.unit) (fun _ _ _ => rfl) (fun _ => mem_pull.1 hy.1.1.1.2)
    have e₀ : J (𝟙 _ ≫ (U.gt e).pG.left) = p₁ PUnit.unit := by rw [Category.id_comp]; exact eJ (.inl PUnit.unit)
    have e₁ : J' (𝟙 _ ≫ (fstG I e G).left) = p₂ PUnit.unit := eJ' PUnit.unit
    have H := hτ S hS _ (𝟙 _) y J J' hJ hJ'
    rw [evalE, zpow_zero, _root_.mul_one, zpow_natCast, e₀, e₁] at H
    refine ((gs_mul (𝟙 _) y _ hy _ _).trans (congrArg₂ (· * ·) ?_ ((gs_res (𝟙 _) y inf_le_right hy g).trans
      (hg y J' hy.2 hJ' (e₁.trans hj.symm))))).trans
      (H.trans (Eq.symm ?_))
    · rw [← Units.val_pow_eq_pow_val, gs_unit (𝟙 _) y _ hy, map_pow]
      exact congrArg (fun u => (u ^ n).val) (gm_res (𝟙 _) y _ hy _)
    · refine (DVR.gs_fsum (𝟙 _) y _ hy _ _).trans (Eq.trans (Finset.sum_congr rfl fun α _ => ?_) (Finset.sum_attach S _))
      have l₁ : U.expW e (p₁, p₂) i' S jf jt ⊓ W ≤ _ := inf_le_left.trans (U.expW_le_f e (p₁, p₂) i' jf jt α.2)
      have l₂ : U.expW e (p₁, p₂) i' S jf jt ⊓ W ≤ _ := inf_le_left.trans (U.expWeight_le_chart_weight e (p₁, p₂) i' jf jt α.2)
      have a₁ := (gs_res (𝟙 _) y l₁ hy (((DVR.pGl U e).app _).hom ((f α.1).f (jf α.1)))).trans
        (gs_pull (𝟙 _) (DVR.pGl U e) y (LB.wchart D.toPre.P.L (D.toPre.famφB α.1) (jf α.1)) (l₁ hy) ((f α.1).f (jf α.1)))
      have a₂ := (gs_unit (𝟙 _) y _ hy (res l₂ ((DVR.tG U e α.1).s (jt α.1)))).trans
        (congrArg Units.val (gm_res (𝟙 _) y l₂ hy _))
      have b₁ := sval_of (f α.1) (𝟙 _ ≫ DVR.pGl U e) y J (jf α.1)
        (fun a => by rw [Category.id_comp]; exact eJ (.inr (.inl (α, a))))
      have b₂ := val_of (DVR.tG U e α.1) (𝟙 _) y J (jt α.1)
        (fun a => by rw [Category.id_comp]; exact eJ (.inr (.inr (α, a))))
      exact (gs_mul (𝟙 _) y _ hy _ _).trans (congrArg₂ (· * ·) (a₁.trans (b₁.symm.trans (hf α.1 _ _ y J hJ)))
        (a₂.trans (congrArg Units.val b₂.symm)))

theorem chartExpOn_of_tExp : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a : D.toPre.P.A ⟶ D.toPre.P.A), ∀ (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G), ∀ (e : ℕ) (b : thickObj R (maximalIdeal R) e G ⟶ thickObj R (maximalIdeal R) e G), ∀ (n : ℕ) (F : ∀ β, SecT D.toPre a n 0 β) (f : ∀ β, D.toPre.SecB n β) (τ : SecE U.toUnifPre b n 0), Small (maximalIdeal R) (w := id) F → (∀ β, (∀ (Z : Scheme.{0}) (x : Z ⟶ D.toPre.P.A.left) (z : Z) (J), Good D.toPre.P.L z J → sval (f β) x z J = sval (F β) x z J)) → TExp U.toUnifPre τ (w := id) F → ∀ (i' : Fin 1 → U.LG.L.ι) (W : (thickObj R (maximalIdeal R) e G).left.Opens) (g : Γ((thickObj R (maximalIdeal R) e G).left, W)), (∀ (z : (thickObj R (maximalIdeal R) e G).left) (J'), z ∈ W → Good U.LG.L z J' → J' (𝟙 _ ≫ (fstG (maximalIdeal R) e G).left) = i' 0 → gs (𝟙 _) z W g = sval τ (𝟙 _) z J') → GlobalTheory.MumMult.ChartExpOn U.toUnifPre e n i' W g f :=
  fun _ _ _ _ _ _ _ _ _ _ _ _ U e b n F f τ hF hf hτ i' W g hg =>
    chartExpOn_of_tExp_gen U.toUnifPre e b n F f τ hF hf hτ i' W g hg

end GlobalTheory.MumMult
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOnOfTExpGen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntFam =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntFam", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.GenCalc\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.SectionScalarValuation\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

noncomputable section

namespace GlobalTheory.TwBack

variable {R : Type} [CommRing R] [IsDomain R]

theorem prod_tw (D : DegPre R) (a : D.P.A ⟶ D.P.A) (n : ℕ) (β : D.X) {U : Type} [CommGroup U]
    (g : (D.P.A.left ⟶ D.P.A.left) → U) :
    ∏ k, g (tφ D a β k) ^ tε n 0 k = ∏ k, g (D.famφB β k) ^ DegPre.famε n k := by
  rw [Fin.prod_univ_castSucc (n := 4)]
  show (∏ k : Fin 4, _) * g a.left ^ (0 : ℤ) = _
  rw [zpow_zero, _root_.mul_one]
  refine Finset.prod_congr rfl fun k _ => ?_
  fin_cases k <;> rfl

theorem vanMod_of_van (I : Ideal R) {D : DegPre R} {k : ℕ} {α : D.X} (b : D.SecB k α) (e : ℕ) (h : Van I b e) :
    VanMod I b e := by
  intro j
  refine fn_ext fun y hy => ?_
  choose J hJ using fun χ : (thickObj R I e D.P.A).left ⟶ D.P.A.left => exists_chart D.P.isLB (χ y)
  refine (gs_pull (𝟙 _) _ y _ hy _).trans (Eq.trans ?_ (DVR.gs_zero _ y _ hy).symm)
  refine (sec_trans b _ y hy (Good.mem hJ (D.famφB α) _)).trans ?_
  exact (congrArg _ (h _ (𝟙 _) y J hJ)).trans (mul_zero _)

theorem shift_zero {X : Type} [AddCommGroup X] (h h' : X →+ X) (n : ℕ) (mu : X) :
    shift h h' n 0 mu = n • mu := by
  rw [shift, zero_smul, add_zero, natCast_zsmul]

theorem famFE_of_tfe (D : DegPre R) (a : D.P.A ⟶ D.P.A) (h h' : D.X →+ D.X) (n : ℕ) (F : ∀ β, SecT D a n 0 β)
    (hF : TFE h h' F)
    (s : ∀ α : D.X, LB.Sec (LB.LinComb D.P.L (DegPre.famφ D (FractionRing R) α) (DegPre.famε n)))
    (hs : ∀ α (Z : Scheme.{0}) (x : Z ⟶ (DegPre.BF D (FractionRing R)).left) (z : Z) (J), Good D.P.L z J →
      sval (s α) x z J = sval (F α) (x ≫ (DegPre.prB D (FractionRing R)).left) z J) :
    DegPre.FamFE D (FractionRing R) n s := by
  intro mu α u hu hc
  have hT : TRel h mu (F α) (F (α + n • mu)) := by
    have := hF mu α
    rwa [shift_zero] at this
  obtain ⟨u', hu', hv⟩ := exists_gen D.P.isLB (φ' := dφ D a mu α (α + n • mu)) (ε' := dε n 0) (fun U _ g => by
    simp only [Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, DegPre.deltaφ, DegPre.deltaε, dφ, dε, zpow_neg,
      Finset.prod_inv_distrib, DVR.GC.famφ_eq]
    rw [prod_tw D a n _ (fun ψ => g ((DegPre.prB D (FractionRing R)).left ≫ ψ)),
      prod_tw D a n _ (fun ψ => g ((DegPre.trF D (FractionRing R) mu).left ≫ (DegPre.prB D (FractionRing R)).left ≫ ψ))])
    u hu
  have hfac : IsFac D a h n 0 mu α (α + n • mu) u' := by
    refine ⟨hu', fun z J hJ => ?_⟩
    have e := val_corr hJ hc (𝟙 _)
    rw [val_pull hJ, Category.id_comp, DegPre.famMult, val_pull hJ, val_mul hJ, val_mul hJ, Category.id_comp] at e
    rw [hv _ _ z J hJ, zpow_zero, _root_.mul_one, add_zero, zpow_natCast, zpow_natCast]
    exact e.trans (congrArg₂ (· * ·) (congrArg₂ (· * ·) (map_pow _ _ _) rfl) (map_pow _ _ _))
  refine (secRel_iff D.P.isLB _ _ _ _ _ _ _ _ _ u).2 fun y J hJ => ?_
  rw [hs _ _ _ y J hJ, hs _ _ _ y J hJ, ← hv _ _ y J hJ, Category.assoc]
  exact hT u' hfac _ (𝟙 _) y J hJ

theorem exists_intFam : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a : D.toPre.P.A ⟶ D.toPre.P.A), ∀ (h h' : D.toPre.X →+ D.toPre.X) (n : ℕ) (F : ∀ β, SecT D.toPre a n 0 β), Small (maximalIdeal R) (w := id) F → TFE h h' F → ∃ Φ : IntFam (maximalIdeal R) D.toPre n, ∀ β, (∀ (Z : Scheme.{0}) (x : Z ⟶ D.toPre.P.A.left) (z : Z) (J), Good D.toPre.P.L z J → sval (Φ.f β) x z J = sval (F β) x z J) := by
  intro R _ _ _ _ D a h h' n F hS hF
  have hL := D.toPre.P.isLB
  choose f hf using fun β => exists_sec hL (φ' := D.toPre.famφB β) (ε' := DegPre.famε n)
    (fun U _ g => prod_tw D.toPre a n β g) (F β)
  choose s hs using fun β => exists_sec hL (φ' := DegPre.famφ D.toPre (FractionRing R) β) (ε' := DegPre.famε n)
    (fun U _ g => Finset.prod_congr rfl fun i _ => by rw [DVR.GC.famφ_eq])
    (DVR.pullSec D.toPre.P.L _ _ (f β) (DegPre.prB D.toPre (FractionRing R)).left)
  have hs' : ∀ β (Z : Scheme.{0}) (x : Z ⟶ (DegPre.BF D.toPre (FractionRing R)).left) (z : Z) (J),
      Good D.toPre.P.L z J → sval (s β) x z J = sval (f β) (x ≫ (DegPre.prB D.toPre (FractionRing R)).left) z J :=
    fun β Z x z J hJ => (hs β Z x z J hJ).trans (DVR.SectionScalarValuation.sval_pullSec _ _ _ _ x z hJ)
  have h1 : Out.scal (DegPre.BF D.toPre (FractionRing R)).hom (1 : R) = 1 := by
    unfold Out.scal; rw [map_one, map_one]
  refine ⟨⟨⟨s, famFE_of_tfe D.toPre a h h' n F hF s fun β Z x z J hJ => (hs' β Z x z J hJ).trans (hf β Z _ z J hJ)⟩,
    f, fun β => ?_, fun e => (hS e).subset fun β hβ hv => hβ (vanMod_of_van _ _ e fun Z x z J hJ =>
      (hf β Z _ z J hJ).trans (hv Z x z J hJ))⟩, hf⟩
  rw [h1]
  exact DVR.SectionScalarValuation.secScal_of_sval hL fun y J hJ => (hs' β _ _ y J hJ).symm

end GlobalTheory.TwBack
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntFam =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackTwistedSectionVanishing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackTwistedSectionVanishing", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.TwFam

theorem formEq_pull {R : Type} [CommRing R] [IsDomain R] (D : DegPre R) (a : D.P.A ⟶ D.P.A) (k : ℕ) (α δ : D.X) :
    FormEq (Sum.elim (fun i => a.left ≫ D.famφB α i) (Sum.elim (D.Oφ (𝟙 D.P.A) δ) (D.Oφ a α)))
      (Sum.elim (DegPre.famε k) (Sum.elim Oε Oinvε)) (tφ D a δ) (tε 0 k) := by
  intro U _ h
  have e₁ : a.left ≫ (padd D.P.A (𝟙 D.P.A) (toUnit _ ≫ D.c α)).left = (padd D.P.A a (toUnit _ ≫ D.c α)).left := by
    rw [← Over.comp_left, padd, padd, ← Category.assoc, comp_lift, Category.comp_id, ← Category.assoc, comp_toUnit]
  have e₂ : a.left ≫ (toUnit D.P.A ≫ D.c α).left = (toUnit D.P.A ≫ D.c α).left := by
    rw [← Over.comp_left, ← Category.assoc, comp_toUnit]
  have e₃ : a.left ≫ (toUnit D.P.A ≫ η[D.P.A]).left = (toUnit D.P.A ≫ η[D.P.A]).left := by
    rw [← Over.comp_left, ← Category.assoc, comp_toUnit]
  simp only [Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, Fin.prod_univ_succ, Fin.prod_univ_zero, DegPre.famφB,
    DegPre.Oφ, tφ, tε, DegPre.famε, Oε, Oinvε, Matrix.cons_val_zero, Matrix.cons_val_succ, e₁, e₂, e₃,
    Category.comp_id, Over.id_left]
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_zpow, ofMul_one]
  module

theorem exists_isPullT : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a : D.toPre.P.A ⟶ D.toPre.P.A), ∀ (k : ℕ) (α δ : D.toPre.X) (u : LB.Gen (IotaLB D.toPre a α δ)) (f : D.toPre.SecB k α), u.IsGen → ∃ s : SecT D.toPre a 0 k δ, IsPullT u f s ∧ ∀ e, VanMod (maximalIdeal R) f e → Van (maximalIdeal R) s e := by
  intro R _ _ _ _ D a k α δ u f hu
  obtain ⟨s, hs⟩ := exists_sec D.toPre.P.isLB (formEq_pull D.toPre a k α δ) (pullMulSec f a.left u hu)
  have hp : IsPullT u f s := fun Z x z J hJ => (hs Z x z J hJ).trans (sval_pullMulSec f a.left u hu x z hJ)
  refine ⟨s, hp, fun e hb Z x z J hJ => ?_⟩
  obtain ⟨h, hh⟩ : ∃ h : Z ⟶ pullback D.toPre.P.A.hom (thick R (maximalIdeal R) e),
      h ≫ pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e) =
        (x ≫ pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e)) ≫ a.left :=
    ⟨pullback.lift _ (x ≫ pullback.snd D.toPre.P.A.hom (thick R (maximalIdeal R) e)) (by
      rw [Category.assoc, Over.w, Category.assoc, Category.assoc, pullback.condition]), pullback.lift_fst _ _ _⟩
  have z₁ : sval f ((x ≫ pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e)) ≫ a.left) z J = 0 := by
    rw [← hh]
    have hm := hJ.mem (D.toPre.famφB α) (h ≫ pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e))
    exact (gs_pull h _ z _ hm _).symm.trans ((congrArg (gs h z _) (hb _)).trans (DVR.gs_zero h z _ hm))
  rw [hp Z _ z J hJ, z₁, zero_mul]

end GlobalTheory.TwFam
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackTwistedSectionVanishing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalEndomorphismPullsTorusCoordinateNormalised =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalEndomorphismPullsTorusCoordinateNormalised", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\nimport Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ValueAtUnitSection\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsRatioPoints\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GtCoordEndRatioDescends\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.TwFam

theorem coord_of_formalEnd : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G), ∀ b, FormalEnd U.toUnifPre a h' b → ∀ (α : D.toPre.X) (u : LB.Gen (IotaLB D.toPre a α (h' α))), IsIota u → ∀ (e : ℕ) (Z : Scheme.{0}) (x : Z ⟶ (thickObj R (maximalIdeal R) e G).left) (z : Z) (J), Good D.toPre.P.L z J → val ((U.gt e).t α) (x ≫ (b e).left) z J = val ((U.gt e).t (h' α)) x z J * val u (x ≫ (U.gt e).pG.left) z J := by
  intro R _ _ _ _ D a a' h h' hE A G _ _ _ U b ⟨hb, _, hq, ht⟩ α u ⟨hu, hu1⟩ e Z x z J hJ
  obtain ⟨t, ht, hi⟩ := ht e
  have := hb e
  have := (U.gt e).q_hom
  obtain ⟨v, hv, vv⟩ := GlobalTheory.gtCoord_end_ratio_descends R (maximalIdeal R) D.toPre e G (U.gt e) (b e) a h' t
    (hb e) ht hi (hq e) α
  have hA : IsAbelianScheme (thickObj R (maximalIdeal R) e D.toPre.P.A) :=
    GlobalTheory.isAbelianScheme_pullback_obj _ _ D.toPre.P.isAb
  have key := gen_unique D.toPre.P.isLB (thickObj R (maximalIdeal R) e D.toPre.P.A).hom
    (η[thickObj R (maximalIdeal R) e D.toPre.P.A]).left (Over.w _) (GlobalTheory.globalFns_holds _ _ hA).2 hv
    (DVR.pullGen_isGen _ _ _ _ hu (pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e)))
    (fun y J hJ => by
      have k := vv _ (1 : 𝟙_ (Over (Spec (CommRingCat.of (R ⧸ maximalIdeal R ^ (e + 1))))) ⟶
        thickObj R (maximalIdeal R) e G).left y J hJ
      rw [← Over.comp_left, ← Over.comp_left, MonObj.one_comp, MonObj.one_comp, TorusCoord.val_unit _ _ hJ,
        TorusCoord.val_unit _ _ hJ, _root_.one_mul] at k
      have o : (1 : 𝟙_ (Over (Spec (CommRingCat.of (R ⧸ maximalIdeal R ^ (e + 1))))) ⟶
          thickObj R (maximalIdeal R) e D.toPre.P.A) = η[thickObj R (maximalIdeal R) e D.toPre.P.A] := by
        simp [Hom.one_def]
      rw [o] at k
      exact k.symm.trans ((hu1 _ (thick R (maximalIdeal R) e) y J hJ).symm.trans
        ((congrArg (fun p => val u p y J)
          (UnitValue.eSec_pullback_fst (thick R (maximalIdeal R) e) D.toPre.P.A).symm).trans
          (val_pull hJ _ _ _).symm)))
  refine (vv Z x z J hJ).trans (congrArg (_ * ·) ((key Z _ z J hJ).trans ((val_pull hJ _ _ _).trans ?_)))
  exact congrArg (fun p => val u p z J) (Category.assoc _ _ _)

end GlobalTheory.TwFam
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalEndomorphismPullsTorusCoordinateNormalised =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpansionPullbackFormalEndomorphismTermwise =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpansionPullbackFormalEndomorphismTermwise", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalEndomorphismPullsTorusCoordinateNormalised\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.TwFam

theorem texp_pull : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G), ∀ b, FormalEnd U.toUnifPre a h' b → ∀ (k e : ℕ) (σ : H0 U.LG.L k) (f : ∀ α, D.toPre.SecB k α) (u : ∀ α, LB.Gen (IotaLB D.toPre a α (h' α))) (s : ∀ α, SecT D.toPre a 0 k (h' α)) (τ : SecE U.toUnifPre (b e) 0 k), U.ExpandsAt e k σ f → (∀ α, IsIota (u α)) → (∀ α, IsPullT (u α) (f α) (s α)) → (∀ (Z : Scheme.{0}) (x : Z ⟶ (thickObj R (maximalIdeal R) e G).left) (z : Z) (J'), Good U.LG.L z J' → sval τ x z J' = sval σ (x ≫ (b e).left ≫ (fstG (maximalIdeal R) e G).left) z J') → TExp U.toUnifPre τ s := by
  intro R _ _ _ hR D a a' h h' hE A G _ _ hG U b hb k e σ f u s τ hσ hu hs hτ S hS Z x z J J' hJ hJ'
  classical
  obtain ⟨S₀, hS₀⟩ := DVR.expandsAt_val U.toUnifPre e k σ f hσ
  have hp : (U.gt e).pG.left = (U.gt e).q.left ≫ pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e) := rfl
  have hc : (b e).left ≫ (U.gt e).pG.left = (U.gt e).pG.left ≫ a.left := by
    have h₁ := congrArg (fun m => m.left) (hb.2.2.1 e)
    have h₂ : ((Over.pullback (thick R (maximalIdeal R) e)).map a).left ≫
        pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e) =
        pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e) ≫ a.left := pullback.lift_fst _ _ _
    rw [hp]
    exact (Category.assoc _ _ _).symm.trans ((congrArg (· ≫ _) h₁).trans ((Category.assoc _ _ _).trans
      ((congrArg (_ ≫ ·) h₂).trans (Category.assoc _ _ _).symm)))
  have hx : (x ≫ (b e).left) ≫ (U.gt e).pG.left = (x ≫ (U.gt e).pG.left) ≫ a.left := by
    rw [Category.assoc, hc, Category.assoc]
  obtain ⟨z₀, e₀⟩ := hS₀ Z (x ≫ (b e).left) z J hJ
  have e₁ := e₀ (J' (x ≫ (b e).left ≫ (fstG (maximalIdeal R) e G).left)) (hJ' (x ≫ (b e).left ≫ (fstG (maximalIdeal R) e G).left))
  have term : ∀ α, sval (f α) ((x ≫ (b e).left) ≫ (U.gt e).pG.left) z J * (val ((U.gt e).t α) (x ≫ (b e).left) z J).val =
      sval (s α) (x ≫ (U.gt e).pG.left) z J * (val ((U.gt e).t (h' α)) x z J).val := fun α => by
    rw [hs α Z _ z J hJ, _root_.GlobalTheory.TwFam.coord_of_formalEnd R hR D a a' h h' hE A G hG U b hb α (u α) (hu α) e Z x z J hJ, hx, Units.val_mul]
    ring
  have l : evalE U.toUnifPre τ x z J J' = ∑ α ∈ S₀, sval (s α) (x ≫ (U.gt e).pG.left) z J * (val ((U.gt e).t (h' α)) x z J).val := by
    refine Eq.trans ?_ (e₁.trans (Finset.sum_congr rfl fun α _ => term α))
    rw [evalE, hτ Z x z J' hJ', zpow_zero, _root_.one_mul, zpow_natCast, Category.assoc, Category.assoc,
      sval_of σ _ z J' (fun _ => J' (x ≫ (b e).left ≫ (fstG (maximalIdeal R) e G).left))
        (fun _ => congrArg J' (Category.comp_id _))]
    rfl
  rw [l]
  refine (Finset.sum_subset (Finset.subset_union_left (s₂ := S)) fun α _ hα => ?_).trans
    (Finset.sum_subset (Finset.subset_union_right (s₁ := S₀)) fun α _ hα => ?_).symm
  · rw [← term α, z₀ α hα, zero_mul]
  · have := hS α hα Z (x ≫ (U.gt e).q.left) z J hJ
    rw [hp, ← Category.assoc, this, zero_mul]

end GlobalTheory.TwFam
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpansionPullbackFormalEndomorphismTermwise =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationPullbackOfIntegralThetaFunctional =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationPullbackOfIntegralThetaFunctional", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsUniformizationEndomorphismOfLinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.SectionScalarValuation\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.VRatioGt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

noncomputable section

namespace GlobalTheory.TwFam.PullRel

variable {R : Type} [CommRing R] [IsDomain R]

theorem prod_tφ (D : DegPre R) (a : D.P.A ⟶ D.P.A) {T : Over (Sp R)} (ρ : T ⟶ D.P.A) (β : D.X) (n j : ℤ)
    {U : Type} [CommGroup U] (hh : (T.left ⟶ D.P.A.left) → U) :
    ∏ i, hh (ρ.left ≫ tφ D a β i) ^ tε n j i = hh ρ.left ^ (n - 1) * hh (DVR.cP D T β * ρ).left *
      (hh (DVR.cP D T β).left)⁻¹ * hh (1 : T ⟶ D.P.A).left * hh (ρ ≫ a).left ^ j := by
  have e₁ : ρ.left ≫ tφ D a β 1 = (DVR.cP D T β * ρ).left :=
    congrArg (fun q => q.left) ((MonObj.comp_mul ρ (𝟙 D.P.A) (toUnit _ ≫ D.c β)).trans (by
      rw [Category.comp_id, ← DVR.cP, DVR.comp_cP, mul_comm]))
  have e₂ : ρ.left ≫ tφ D a β 2 = (DVR.cP D T β).left := congrArg (fun q => q.left) (DVR.comp_cP D ρ β)
  have e₃ : ρ.left ≫ tφ D a β 3 = (1 : T ⟶ D.P.A).left :=
    congrArg (fun q : T ⟶ D.P.A => q.left) (MonObj.comp_one (M := D.P.A) ρ)
  have e₀ : ρ.left ≫ tφ D a β 0 = ρ.left := Category.comp_id _
  have e₄ : ρ.left ≫ tφ D a β 4 = (ρ ≫ a).left := rfl
  rw [Fin.prod_univ_five, e₀, e₁, e₂, e₃, e₄]
  show _ ^ (n - 1) * _ ^ (1 : ℤ) * _ ^ (-1 : ℤ) * _ ^ (1 : ℤ) * _ ^ j = _
  rw [zpow_one, zpow_one, zpow_neg_one]

end GlobalTheory.TwFam.PullRel

namespace GlobalTheory.TwFam.PullRel

variable {R : Type} [CommRing R] [IsDomain R]

theorem iota_c (D : DegPre R) (a a' : D.P.A ⟶ D.P.A) (h h' : D.X →+ D.X) (hE : EndData D a a' h h') (α mu : D.X)
    (u : LB.Gen (IotaLB D a α (h' α))) (hu : IsIota u) (Z : Scheme.{0}) (r : Z ⟶ (TK R).left) (z : Z) (J)
    (hJ : Good D.P.L z J) :
    val (D.tau (h mu) α) r z J = val (D.tau mu (h' α)) r z J * val u (r ≫ D.xK mu) z J := by
  have hG := GlobalTheory.globalFns_holds
  obtain ⟨hma, hma', hr, -, hc, hB⟩ := hE
  obtain ⟨t, ht, t₀⟩ := exists_ros hG D.P.isAb D.P.isLB a a' hr
  have cf : ∀ T, DVR.cP D T (h' α) = DVR.cP D T α ≫ a' := fun T => by
    rw [DVR.cP, hc, ← Category.assoc]; rfl
  have key := gen_unique' D.P.isLB (φ := Sum.elim (D.Oφ (𝟙 _) (h' α)) (D.Oφ a α)) (ε := Sum.elim Oε Oinvε)
    (u' := LB.invGen D.P.L _ _ (LB.pullGen D.P.L _ _ t (lift (𝟙 D.P.A) (DVR.cP D D.P.A α)).left))
    (fun U _ h => by
      refine (DVR.prod_neg _ _ (prod_ros a a' (𝟙 D.P.A) (DVR.cP D _ α) h)).trans (Eq.symm ?_)
      refine (DVR.prod_sum₂ (K := Fin 4) (K' := Fin 4) (U := U) _ (GlobalTheory.UT.OLinEnd.prod_Oφ D (𝟙 _) _ h)
        (GlobalTheory.UT.OLinEnd.prod_Oφ_inv D a α h)).trans ?_
      rw [cf, Category.id_comp, _root_.mul_comm (DVR.cP D _ α) a, _root_.mul_comm (DVR.cP D _ α ≫ a') (𝟙 _)]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv]
      abel)
    D.P.A.hom (eSec D.P.A) (Over.w η[D.P.A]) (hG _ _ D.P.isAb).2 hu.1
    (DVR.invGen_isGen _ _ _ _ (DVR.pullGen_isGen _ _ _ _ ht _)) (fun y I hI => by
      let T : Over (Spec (CommRingCat.of R)) := Over.mk (𝟙 _)
      have C : IsCub (cubV D.cub (T := T) y I) := isCub_cubV D.cub hI
      have e := (ros_add D.cub hG D.P.isAb a a' t ht t₀ (T := T) hI 1 1 (DVR.cP D _ α)).1
      rw [_root_.mul_one, MonObj.one_comp, C.face, C.face, _root_.mul_one, _root_.one_mul] at e
      have e' : val₂ t (T := T) y I 1 (DVR.cP D _ α) = 1 := mul_eq_left.1 e.symm
      have o : (1 : T ⟶ D.P.A).left = eSec D.P.A := Category.id_comp _
      have k : eSec D.P.A ≫ (lift (𝟙 D.P.A) (DVR.cP D D.P.A α)).left = (lift (1 : T ⟶ D.P.A) (DVR.cP D T α)).left := by
        rw [← o, ← Over.comp_left, comp_lift, DVR.comp_cP, Category.comp_id]
      have n := hu.2 _ (𝟙 _) y I hI
      rw [Category.id_comp] at n
      rw [val_inv, val_pull hI, k]
      exact n.trans (inv_eq_one.2 e').symm) Z (r ≫ D.xK mu) z J hJ
  have m : D.xK mu ≫ (lift (𝟙 D.P.A) (DVR.cP D D.P.A α)).left = D.pt2 mu α := by
    rw [← Over.comp_left, comp_lift, DVR.comp_cP, Category.comp_id]; rfl
  have b := (val_mul hJ _ _ _).symm.trans (val_corr hJ (hB t ht t₀ mu α) r)
  rw [val_pull hJ] at b
  rw [val_inv, val_pull hJ, Category.assoc, m] at key
  rw [key, ← b, mul_inv_cancel_right]

end GlobalTheory.TwFam.PullRel

namespace GlobalTheory.TwFam.PullRel

variable {R : Type} [CommRing R] [IsDomain R]

theorem formEq_pull (D : DegPre R) (a : D.P.A ⟶ D.P.A) (k : ℕ) (mu ν α β β' : D.X)
    (aK : DegPre.BF D (FractionRing R) ⟶ DegPre.BF D (FractionRing R))
    (h₁ : aK ≫ DegPre.prB D (FractionRing R) = DegPre.prB D (FractionRing R) ≫ a)
    (h₂ : aK ≫ DegPre.trF D (FractionRing R) ν ≫ DegPre.prB D (FractionRing R) =
      DegPre.trF D (FractionRing R) mu ≫ DegPre.prB D (FractionRing R) ≫ a) :
    FormEq (Sum.elim (Sum.elim (fun i => aK.left ≫ DegPre.deltaφ D (FractionRing R) k α ν i)
        (fun i => (DegPre.prB D (FractionRing R)).left ≫
          Sum.elim (D.Oφ (𝟙 D.P.A) β') (D.Oφ a (α + k • ν)) i))
        (fun i => (DegPre.trF D (FractionRing R) mu ≫ DegPre.prB D (FractionRing R)).left ≫
          Sum.elim (D.Oφ (𝟙 D.P.A) β) (D.Oφ a α) i))
      (Sum.elim (Sum.elim (DegPre.deltaε k) (Sum.elim Oε Oinvε)) (fun i => - Sum.elim Oε Oinvε i))
      (dφ D a mu β β') (dε 0 k) := by
  intro U _ hh
  have io : ∀ (ρ : DegPre.BF D (FractionRing R) ⟶ D.P.A) (ξ δ : D.X),
      ∏ i, hh (ρ.left ≫ Sum.elim (D.Oφ (𝟙 D.P.A) δ) (D.Oφ a ξ) i) ^ Sum.elim Oε Oinvε i =
        (hh (DVR.cP D _ δ * ρ).left * (hh (DVR.cP D _ δ).left)⁻¹ * (hh ρ.left)⁻¹ *
          hh (1 : DegPre.BF D (FractionRing R) ⟶ D.P.A).left) *
        ((hh (DVR.cP D _ ξ * (ρ ≫ a)).left)⁻¹ * hh (DVR.cP D _ ξ).left * hh (ρ ≫ a).left *
          (hh (1 : DegPre.BF D (FractionRing R) ⟶ D.P.A).left)⁻¹) := fun ρ ξ δ => by
    refine DVR.prod_sum₂ (K := Fin 4) (K' := Fin 4) (U := U) _ ?_ ?_
    · simp only [Sum.elim_inl, WeightPf.Oφ_comp, Category.comp_id]
      exact GlobalTheory.UT.OLinEnd.prod_Oφ D ρ δ hh
    · simp only [Sum.elim_inr, WeightPf.Oφ_comp]
      exact GlobalTheory.UT.OLinEnd.prod_Oφ_inv D (ρ ≫ a) ξ hh
  have p₁ := DVR.prod_fam D (FractionRing R) aK (α + k • ν) k hh
  have p₂ := DVR.prod_fam D (FractionRing R) (aK ≫ DegPre.trF D (FractionRing R) ν) α k hh
  have q₁ := prod_tφ D a (DegPre.prB D (FractionRing R)) β' 0 k hh
  have q₂ := prod_tφ D a (DegPre.trF D (FractionRing R) mu ≫ DegPre.prB D (FractionRing R)) β 0 k hh
  rw [h₁] at p₁
  rw [Category.assoc, h₂, ← Category.assoc] at p₂
  simp only [Over.comp_left, Category.assoc] at p₂ q₂
  refine (DVR.prod_sum₂ (K := (Fin 4 ⊕ Fin 4) ⊕ (Fin 4 ⊕ Fin 4)) (K' := Fin 4 ⊕ Fin 4) (U := U) _
    (DVR.prod_sum₂ (K := Fin 4 ⊕ Fin 4) (K' := Fin 4 ⊕ Fin 4) (U := U) _
      (DVR.prod_sum₂ (K := Fin 4) (K' := Fin 4) (U := U) _ p₁ (DVR.prod_neg _ _ p₂)) (io _ _ _))
    (DVR.prod_neg _ _ (io _ _ _))).trans
    (Eq.trans ?_ (DVR.prod_sum₂ (K := Fin 5) (K' := Fin 5) (U := U) _ q₁ (DVR.prod_neg _ _ q₂)).symm)
  simp only [Over.comp_left, Category.assoc]
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_inv, ofMul_zpow]
  module

end GlobalTheory.TwFam.PullRel

namespace GlobalTheory.TwFam.PullRel

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ (k : ℕ) (F : IntFam (maximalIdeal R) D.toPre k) (mu α : D.toPre.X) (u : LB.Gen (IotaLB D.toPre a α (h' α))) (u' : LB.Gen (IotaLB D.toPre a (α + k • h mu) (h' (α + k • h mu)))) (s : SecT D.toPre a 0 k (h' α)) (s' : SecT D.toPre a 0 k (h' (α + k • h mu))), IsIota u → IsIota u' → IsPullT u (F.f α) s → IsPullT u' (F.f (α + k • h mu)) s' → TRel h mu s s' := by
  intro R _ _ _ _ D a a' h h' hE k F mu α u u' s s' hu hu' hs hs'
  have hG := GlobalTheory.globalFns_holds
  obtain ⟨hma, -, -, hch, -, -⟩ := id hE
  have hL := D.toPre.P.isLB
  obtain ⟨⟨uF, huF, hcF⟩, -⟩ := DVR.gen_fe (D := D.toPre) (F := FractionRing R) hG k (h mu) α
  have feF := (secRel_iff hL _ _ _ _ _ _ _ _ _ uF).1 (F.F.fe (h mu) α uF huF hcF)
  have h1 : scal (DegPre.BF D.toPre (FractionRing R)).hom (1 : R) = 1 := by unfold scal; rw [map_one, map_one]
  have ext : ∀ β (Z : Scheme.{0}) (r : Z ⟶ (DegPre.BF D.toPre (FractionRing R)).left) (z : Z) (J), Good D.toPre.P.L z J →
      sval (F.F.s β) r z J = sval (F.f β) (r ≫ (DegPre.prB D.toPre (FractionRing R)).left) z J := by
    intro β Z r z J hJ
    have e := F.ext β
    rw [h1] at e
    exact (DVR.SectionScalarValuation.secScal_sval e r z hJ).symm
  let aK : DegPre.BF D.toPre (FractionRing R) ⟶ DegPre.BF D.toPre (FractionRing R) :=
    lift (fst _ _) (DegPre.prB D.toPre (FractionRing R) ≫ a)
  have aK_pr : aK ≫ DegPre.prB D.toPre (FractionRing R) = DegPre.prB D.toPre (FractionRing R) ≫ a := lift_snd _ _
  have aK_fst : aK ≫ fst _ _ = fst _ _ := lift_fst _ _
  have cPh : ∀ T, DVR.cP D.toPre T (h mu) = DVR.cP D.toPre T mu ≫ a := fun T => by
    rw [DVR.cP, hch, ← Category.assoc]; rfl
  have trpr : ∀ ν, DegPre.trF D.toPre (FractionRing R) ν ≫ DegPre.prB D.toPre (FractionRing R) =
      DegPre.prB D.toPre (FractionRing R) * DVR.cP D.toPre _ ν := fun ν => by
    rw [DVR.trF_eq, DVR.tr_pr, DVR.comp_cP]
  have M1 : aK ≫ DegPre.trF D.toPre (FractionRing R) (h mu) ≫ DegPre.prB D.toPre (FractionRing R) =
      DegPre.trF D.toPre (FractionRing R) mu ≫ DegPre.prB D.toPre (FractionRing R) ≫ a := by
    haveI := hma
    rw [trpr, MonObj.comp_mul, aK_pr, DVR.comp_cP, ← Category.assoc, trpr, MonObj.mul_comp, cPh]
  haveI := hma
  have z₁ : DegPre.zF D.toPre (FractionRing R) ≫ fst _ _ = 𝟙 _ := lift_fst _ _
  have z₂ : DegPre.zF D.toPre (FractionRing R) ≫ DegPre.prB D.toPre (FractionRing R) = 1 := lift_snd _ _
  have M2 : DegPre.zF D.toPre (FractionRing R) ≫ aK = DegPre.zF D.toPre (FractionRing R) := by
    apply CartesianMonoidalCategory.hom_ext
    · rw [Category.assoc, aK_fst]
    · rw [Category.assoc, aK_pr, ← Category.assoc, z₂, MonObj.one_comp]
  have M3 : DegPre.zF D.toPre (FractionRing R) ≫ DegPre.trF D.toPre (FractionRing R) mu ≫
      DegPre.prB D.toPre (FractionRing R) = DVR.cP D.toPre _ mu := by
    rw [trpr, MonObj.comp_mul, z₂, DVR.comp_cP, _root_.one_mul]
  intro v hv Z x z J hJ
  have wv : ∀ (Z : Scheme.{0}) (x : Z ⟶ (DegPre.BF D.toPre (FractionRing R)).left) (z : Z) (J), Good D.toPre.P.L z J →
      val (LB.mulGen _ _ _ _ _ (LB.mulGen _ _ _ _ _ (LB.pullGen _ _ _ uF aK.left)
        (LB.pullGen _ _ _ u' (DegPre.prB D.toPre (FractionRing R)).left)) (LB.invGen _ _ _ (LB.pullGen _ _ _ u
          (DegPre.trF D.toPre (FractionRing R) mu ≫ DegPre.prB D.toPre (FractionRing R)).left))) x z J =
      val uF (x ≫ aK.left) z J * val u' (x ≫ (DegPre.prB D.toPre (FractionRing R)).left) z J *
        (val u (x ≫ (DegPre.trF D.toPre (FractionRing R) mu ≫ DegPre.prB D.toPre (FractionRing R)).left) z J)⁻¹ :=
    fun Z x z J hJ => by rw [val_mul hJ, val_mul hJ, val_inv, val_pull hJ, val_pull hJ, val_pull hJ]
  have key := (gen_unique' hL (formEq_pull D.toPre a k mu (h mu) α (h' α) (h' (α + k • h mu)) aK aK_pr M1)
    (fst (TF (R := R) (FractionRing R)) D.toPre.P.A).left (DegPre.zF D.toPre (FractionRing R)).left
    (congrArg (fun q => q.left) z₁) (DVR.surj_appTop D.toPre _ hG) hv.1
    (DVR.mulGen_isGen _ _ _ _ _ _ _ (DVR.mulGen_isGen _ _ _ _ _ _ _ (DVR.pullGen_isGen _ _ _ _ huF _)
      (DVR.pullGen_isGen _ _ _ _ hu'.1 _)) (DVR.invGen_isGen _ _ _ _ (DVR.pullGen_isGen _ _ _ _ hu.1 _)))
    (fun y I hI => by
      have e₁ := val_corr hI hcF (𝟙 _)
      rw [val_pull hI, Category.id_comp] at e₁
      have e₂ := DVR.val_famMult (D := D.toPre) (F := FractionRing R) (𝟙 _) hI k (h mu) α
      rw [Over.id_left, Category.id_comp, DVR.TWM.val_powGen, DVR.TWM.val_powGen] at e₂
      have e₃ : val u' (1 : TF (R := R) (FractionRing R) ⟶ D.toPre.P.A).left y I = 1 :=
        hu'.2 _ (TF (R := R) (FractionRing R)).hom y I hI
      have e₄ := iota_c D.toPre a a' h h' hE α mu u hu _ (jFK (R := R) (FractionRing R)) y I hI
      have e₅ : jFK (R := R) (FractionRing R) ≫ D.toPre.xK mu = (DVR.cP D.toPre (TF (R := R) (FractionRing R)) mu).left :=
        (Category.assoc _ _ _).symm
      rw [wv _ _ y I hI, hv.2 y I hI, ← Over.comp_left, ← Over.comp_left, ← Over.comp_left, M2, z₂, M3, e₁, e₂, e₃, e₄, e₅]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv, ofMul_zpow, ofMul_pow, ofMul_one]
      module) Z x z J hJ).trans (wv Z x z J hJ)
  have f₁ : (x ≫ (DegPre.prB D.toPre (FractionRing R)).left) ≫ a.left =
      (x ≫ aK.left) ≫ (DegPre.prB D.toPre (FractionRing R)).left := by
    rw [Category.assoc, Category.assoc, ← Over.comp_left, ← Over.comp_left, aK_pr]
  have f₂ : ((x ≫ aK.left) ≫ (DegPre.trF D.toPre (FractionRing R) (h mu)).left) ≫ (DegPre.prB D.toPre (FractionRing R)).left =
      (x ≫ (DegPre.trF D.toPre (FractionRing R) mu).left ≫ (DegPre.prB D.toPre (FractionRing R)).left) ≫ a.left := by
    have := congrArg (fun q => x ≫ q.left) M1
    simpa only [Over.comp_left, Category.assoc] using this
  rw [hs' _ _ z J hJ, hs _ _ z J hJ, key, f₁, ← ext _ _ _ z J hJ, feF _ _ z J hJ, ext _ _ _ z J hJ, f₂, Over.comp_left,
    _root_.mul_assoc, _root_.mul_assoc, ← Units.val_mul, ← Units.val_mul, mul_comm (val u _ z J), inv_mul_cancel_right]

end GlobalTheory.TwFam.PullRel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationPullbackOfIntegralThetaFunctional =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackIntegralExpansionFormalEndomorphis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackIntegralExpansionFormalEndomorphis", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZeroStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedIotaGenerator\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackTwistedSectionVanishing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExpansionPullbackFormalEndomorphismTermwise\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionAdicSumsAdmissibleBaseStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFunctionalEquationOfAdicSumTermwiseStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationPullbackOfIntegralThetaFunctional\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.TwFam

theorem exists_pull_expansion : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G), ∀ b, FormalEnd U.toUnifPre a h' b → ∀ (k : ℕ) (σ : H0 U.LG.L k) (f : IntFam (maximalIdeal R) D.toPre k), (∀ e, U.ExpandsAt e k σ f.f) → ∃ ρ : ∀ β, SecT D.toPre a 0 k β, Small (maximalIdeal R) (w := id) ρ ∧ TFE h h' ρ ∧ ∀ e, ∃ τ : SecE U.toUnifPre (b e) 0 k, (∀ (Z : Scheme.{0}) (x : Z ⟶ (thickObj R (maximalIdeal R) e G).left) (z : Z) (J'), Good U.LG.L z J' → sval τ x z J' = sval σ (x ≫ (b e).left ≫ (fstG (maximalIdeal R) e G).left) z J') ∧ TExp U.toUnifPre τ (w := id) ρ := by
  intro R _ _ _ hR D a a' h h' hE A G _ _ hG U b hb k σ f hσ
  choose u hu using _root_.GlobalTheory.TwFam.exists_iota R hR D a a' h h' hE
  choose s hs hv using fun α => _root_.GlobalTheory.TwFam.exists_isPullT R hR D a k α (h' α) (u α) (f.f α) (hu α).1
  have hsm : Small (maximalIdeal R) (w := fun α => h' α) s := fun e =>
    (f.small e).subset fun α hα hf => hα (hv α e hf)
  obtain ⟨ρ, hρ, hρs⟩ := _root_.GlobalTheory.TwFam.AdicSum.exists_isSum R hR D a 0 k _ (fun α => h' α) s hsm
  refine ⟨ρ, hρs, _root_.GlobalTheory.TwFam.SumFE.tfe_of_isSum R hR D a a' h h' hE 0 k _ (fun α => h' α) s ρ
    (fun mu => Equiv.addRight (k • h mu)) hsm hρ (fun mu i => by simp [shift])
    (fun mu i => _root_.GlobalTheory.TwFam.PullRel.main R hR D a a' h h' hE k f mu i _ _ _ _ (hu _) (hu _) (hs _) (hs _)), fun e => ?_⟩
  have hL : U.LG.L.IsLB := U.LG.isLB
  have h1 : (LB.oneGen U.LG.L (Y := (thickObj R (maximalIdeal R) e G).left)).IsGen := fun _ _ =>
    (map_one _).trans ((congrArg₂ (· * ·) (Fintype.prod_empty _) (map_one _)).trans (_root_.mul_one _)).symm
  obtain ⟨τ, hτ⟩ := exists_sec hL (K' := Fin 2)
    (φ' := ![(fstG (maximalIdeal R) e G).left, (b e).left ≫ (fstG (maximalIdeal R) e G).left]) (ε' := ![(0 : ℤ), (k : ℤ)])
    (fun V _ g => by simp [Fintype.prod_sum_type, Fin.prod_univ_two])
    (pullMulSec σ ((b e).left ≫ (fstG (maximalIdeal R) e G).left) (LB.oneGen U.LG.L) h1)
  have key : ∀ (Z : Scheme.{0}) (x : Z ⟶ (thickObj R (maximalIdeal R) e G).left) (z : Z) (J'), Good U.LG.L z J' →
      sval τ x z J' = sval σ (x ≫ (b e).left ≫ (fstG (maximalIdeal R) e G).left) z J' := fun Z x z J hJ => by
    rw [hτ Z x z J hJ, sval_pullMulSec _ _ _ _ _ _ hJ, val_one, Units.val_one, _root_.mul_one]
  exact ⟨τ, key, _root_.GlobalTheory.TwFam.texp_sum R hR D a A G hG U e (b e) 0 k τ _ (fun α => h' α) s ρ hsm hρ
    (_root_.GlobalTheory.TwFam.texp_pull R hR D a a' h h' hE A G hG U b hb k e σ f.f u s τ (hσ e) hu hs key)⟩

end GlobalTheory.TwFam
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackIntegralExpansionFormalEndomorphis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackIntegralExpansionFormalEndomorphisStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackIntegralExpansionFormalEndomorphisStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackIntegralExpansionFormalEndomorphis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackIntegralExpansionFormalEndomorphisStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoGermTrans =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoGermTrans", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PhiGenPf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.TwFamGlue

section General

variable {X₁ X₂ Y T : Scheme.{0}} {L : LB X₁} {M : LB X₂} {a : Y ⟶ X₁} {b : Y ⟶ X₂} {K : Type} [Fintype K]

def isoGerm (w : LB.Iso (L.pull a) (M.pull b)) {Z : Scheme.{0}} (r : Z ⟶ Y) (z : Z) (p : M.ι) (q : L.ι) :
    (Z.presheaf.stalk z)ˣ :=
  gm r z ((M.pull b).U (fun _ => p) ⊓ (L.pull a).U (fun _ => q)) (w.s (fun _ => p, fun _ => q))

theorem isoGerm_trans {w : LB.Iso (L.pull a) (M.pull b)} (hw : w.IsGen) {Z : Scheme.{0}} (r : Z ⟶ Y) (z : Z)
    {p p' : M.ι} {q q' : L.ι}
    (hp : b (r z) ∈ M.U p) (hp' : b (r z) ∈ M.U p') (hq : a (r z) ∈ L.U q) (hq' : a (r z) ∈ L.U q') :
    isoGerm w r z p q = gm (r ≫ b) z _ (M.g p p') * (gm (r ≫ a) z _ (L.g q q'))⁻¹ * isoGerm w r z p' q' := by
  have hm : r z ∈ (M.pull b).U (fun _ => p) ⊓ (L.pull a).U (fun _ => q) ⊓
      ((M.pull b).U (fun _ => p') ⊓ (L.pull a).U (fun _ => q')) :=
    ⟨⟨mem_pull.2 hp, mem_pull.2 hq⟩, mem_pull.2 hp', mem_pull.2 hq'⟩
  refine (gm_res r z _ hm _).symm.trans ((congrArg (gm r z _)
    (hw (fun _ => p, fun _ => q) (fun _ => p', fun _ => q'))).trans ((map_mul _ _ _).trans
    (congrArg₂ (· * ·) ((gm_div (L.pull a) (M.pull b) r z (fun _ => p, fun _ => q) (fun _ => p', fun _ => q') hm).trans ?_)
      (gm_res r z _ hm _))))
  exact congrArg₂ (· * ·) (gm_pull_g M b r z _ _ hm.1.1 hm.2.1) (congrArg (·⁻¹) (gm_pull_g L a r z _ _ hm.1.2 hm.2.2))

theorem prod_trans {w : LB.Iso (L.pull a) (M.pull b)} (hw : w.IsGen) (ψ : K → (T ⟶ Y)) (ε : K → ℤ)
    {Z : Scheme.{0}} (r : Z ⟶ T) (z : Z) {p p' : K → M.ι} {q q' : K → L.ι}
    (hp : r z ∈ LB.wchart M (fun k => ψ k ≫ b) p) (hp' : r z ∈ LB.wchart M (fun k => ψ k ≫ b) p')
    (hq : r z ∈ LB.wchart L (fun k => ψ k ≫ a) q) (hq' : r z ∈ LB.wchart L (fun k => ψ k ≫ a) q') :
    ∏ k, isoGerm w (r ≫ ψ k) z (p k) (q k) ^ ε k = trF (fun k => ψ k ≫ b) ε r z p p' *
      (trF (fun k => ψ k ≫ a) ε r z q q')⁻¹ * ∏ k, isoGerm w (r ≫ ψ k) z (p' k) (q' k) ^ ε k := by
  rw [trF, trF, ← Finset.prod_inv_distrib, ← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun k _ => ?_
  rw [isoGerm_trans hw (r ≫ ψ k) z (Set.mem_iInter.1 hp k) (Set.mem_iInter.1 hp' k) (Set.mem_iInter.1 hq k)
    (Set.mem_iInter.1 hq' k), mul_zpow, mul_zpow, inv_zpow]
  simp only [Category.assoc]

theorem exists_down (hL : L.IsLB) (hM : M.IsLB) {w : LB.Iso (L.pull a) (M.pull b)} (hw : w.IsGen) (ψ : K → (T ⟶ Y))
    (ε : K → ℤ) (σ : LB.Sec (LB.LinComb M (fun k => ψ k ≫ b) ε)) :
    ∃ τ : LB.Sec (LB.LinComb L (fun k => ψ k ≫ a) ε), ∀ (Z : Scheme.{0}) (r : Z ⟶ T) (z : Z) (p : K → M.ι) (q : K → L.ι),
      r z ∈ LB.wchart M (fun k => ψ k ≫ b) p → r z ∈ LB.wchart L (fun k => ψ k ≫ a) q →
      (∏ k, isoGerm w (r ≫ ψ k) z (p k) (q k) ^ ε k).val * gs r z (LB.wchart L (fun k => ψ k ≫ a) q) (τ.f q) =
        gs r z (LB.wchart M (fun k => ψ k ≫ b) p) (σ.f p) := by
  have cov : ∀ y : T, ∃ p, y ∈ LB.wchart M (fun k => ψ k ≫ b) p := fun y => by
    choose I hI using fun k => exists_chart hM ((ψ k ≫ b) y)
    exact ⟨I, Set.mem_iInter.2 hI⟩
  have glue : ∀ q : K → L.ι, ∃ c : Γ(T, LB.wchart L (fun k => ψ k ≫ a) q), ∀ (Z : Scheme.{0}) (r : Z ⟶ T) (z : Z)
      (p : K → M.ι), r z ∈ LB.wchart M (fun k => ψ k ≫ b) p → r z ∈ LB.wchart L (fun k => ψ k ≫ a) q →
      gs r z _ c = (∏ k, isoGerm w (r ≫ ψ k) z (p k) (q k) ^ ε k)⁻¹.val *
        gs r z (LB.wchart M (fun k => ψ k ≫ b) p) (σ.f p) := by
    intro q
    let V : (K → M.ι) → T.Opens := fun p => LB.wchart M (fun k => ψ k ≫ b) p ⊓ LB.wchart L (fun k => ψ k ≫ a) q
    have h₃ : ∀ p k, V p ≤ ψ k ⁻¹ᵁ ((M.pull b).U (fun _ => p k) ⊓ (L.pull a).U (fun _ => q k)) := fun p k y hy =>
      ⟨mem_pull.2 (Set.mem_iInter.1 hy.1 k), mem_pull.2 (Set.mem_iInter.1 hy.2 k)⟩
    obtain ⟨u, hu⟩ : ∃ u : ∀ p, Γ(T, V p), ∀ (Z : Scheme.{0}) (r : Z ⟶ T) (z : Z) p, r z ∈ V p →
        gs r z (V p) (u p) = (∏ k, isoGerm w (r ≫ ψ k) z (p k) (q k) ^ ε k)⁻¹.val *
          gs r z (LB.wchart M (fun k => ψ k ≫ b) p) (σ.f p) :=
      ⟨fun p => (∏ k, res (h₃ p k) (pullU (ψ k) _ (w.s (fun _ => p k, fun _ => q k))) ^ ε k)⁻¹.val *
          (T.presheaf.map (homOfLE (inf_le_left : V p ≤ LB.wchart M (fun k => ψ k ≫ b) p)).op).hom (σ.f p),
        fun Z r z p hz => (gs_mul r z _ hz _ _).trans (congrArg₂ (· * ·) ((gs_unit r z _ hz _).trans
          (congrArg Units.val ((map_inv _ _).trans (congrArg (·⁻¹) ((map_prod _ _ _).trans
            (Finset.prod_congr rfl fun k _ => (map_zpow _ _ _).trans (congrArg (· ^ ε k)
              ((gm_res r z (h₃ p k) hz _).trans (gm_pull r (ψ k) z _ (h₃ p k hz) _))))))))) (gs_res r z _ hz _))⟩
    obtain ⟨c, hc, -⟩ := T.sheaf.existsUnique_gluing' V (LB.wchart L (fun k => ψ k ≫ a) q)
      (fun p => homOfLE inf_le_right) (fun y hy => by
        obtain ⟨p, hp⟩ := cov y
        exact TopologicalSpace.Opens.mem_iSup.2 ⟨p, hp, hy⟩) u
      (fun p p' => fn_ext (V := V p ⊓ V p') fun y hy => by
        refine (gs_res (𝟙 T) y inf_le_left hy _).trans (Eq.trans ?_ (gs_res (𝟙 T) y inf_le_right hy _).symm)
        rw [hu _ _ y p hy.1, hu _ _ y p' hy.2, sec_trans σ (𝟙 T) y hy.1.1 hy.2.1,
          prod_trans hw ψ ε (𝟙 T) y hy.1.1 hy.2.1 hy.1.2 hy.1.2,
          mul_eq_left.1 (trF_trans hL _ ε (𝟙 T) y hy.1.2 hy.1.2 hy.1.2), ← _root_.mul_assoc, ← Units.val_mul]
        congr 2
        rw [inv_one, _root_.mul_one, mul_inv_rev, inv_mul_cancel_right])
    refine ⟨c, fun Z r z p h₁ h₂ => ?_⟩
    have hz : r z ∈ V p := ⟨h₁, h₂⟩
    exact (gs_res r z inf_le_right hz c).symm.trans ((congrArg (gs r z (V p)) (hc p)).trans (hu Z r z p hz))
  choose c hc using glue
  refine ⟨⟨c, fun q q' => fn_ext fun y hy => ?_⟩, fun Z r z p q hp hq => ?_⟩
  · obtain ⟨p, hp⟩ := cov y
    refine (gs_res (𝟙 T) y _ hy _).trans (Eq.trans ?_ ((gs_mul (𝟙 T) y _ hy _ _).trans (congrArg₂ (· * ·)
      ((gs_unit (𝟙 T) y _ hy _).trans (congrArg Units.val (gm_linComb L _ ε (𝟙 T) y q q' hy.1 hy.2)))
      (gs_res (𝟙 T) y _ hy _))).symm)
    refine (hc q _ (𝟙 T) y p hp hy.1).trans (Eq.trans ?_ (congrArg _ (hc q' _ (𝟙 T) y p hp hy.2)).symm)
    rw [prod_trans hw ψ ε (𝟙 T) y hp hp hy.1 hy.2, mul_eq_left.1 (trF_trans hM _ ε (𝟙 T) y hp hp hp),
      ← _root_.mul_assoc, ← Units.val_mul, _root_.one_mul, mul_inv_rev, inv_inv, _root_.mul_comm _⁻¹]
    rfl
  · exact (congrArg _ (hc q Z r z p hp hq)).trans (Units.mul_inv_cancel_left _ _)

def sumSec {N : LB Y} {A : Type} (S : Finset A) (s : A → N.Sec) : N.Sec where
  f i := ∑ x ∈ S, (s x).f i
  compat i j := by

    rw [map_sum, map_sum, Finset.mul_sum]
    exact Finset.sum_congr rfl fun x _ => (s x).compat i j

theorem sval_sumSec {φ : K → (Y ⟶ X₁)} {ε : K → ℤ} {A : Type} (S : Finset A) (s : A → (LB.LinComb L φ ε).Sec)
    {Z : Scheme.{0}} (r : Z ⟶ Y) (z : Z) {J} (hJ : Good L z J) :
    sval (sumSec S s) r z J = ∑ x ∈ S, sval (s x) r z J := DVR.gs_fsum r z _ (hJ.mem φ r) S _

end General

section Main

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I} {A : PolAV (Sp (FractionRing R))}
  {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G] (U : UnifPre I D A G) (e : ℕ)

theorem formEq_term (a : D.toPre.P.A ⟶ D.toPre.P.A) (b : thickObj R I e G ⟶ thickObj R I e G)
    (hb : b.left ≫ DVR.pGl U e = DVR.pGl U e ≫ a.left) (n j : ℤ) (β : D.toPre.X) :
    FormEq (Sum.elim (fun k => DVR.pGl U e ≫ tφ D.toPre a β k) (DVR.Oφl U e β)) (Sum.elim (tε n j) Oinvε)
      (fun k => (![𝟙 _, b.left] : Fin 2 → _) k ≫ DVR.pGl U e) ![n, j] := by
  intro V _ h
  have a₀ : DVR.pGl U e ≫ tφ D.toPre a β 0 = DVR.pGl U e := Category.comp_id _
  have a₁ : DVR.pGl U e ≫ tφ D.toPre a β 1 = DVR.Oφl U e β 0 := congrArg (fun z => z.left)
    ((MonObj.comp_mul (U.gt e).pG (𝟙 _) (DVR.cP D.toPre _ β)).trans
      (congrArg₂ (· * ·) (Category.comp_id _) (DVR.comp_cP D.toPre _ β)))
  have a₂ : DVR.pGl U e ≫ tφ D.toPre a β 2 = DVR.Oφl U e β 1 :=
    congrArg (fun z => z.left) (DVR.comp_cP D.toPre (U.gt e).pG β)
  have a₃ : DVR.pGl U e ≫ tφ D.toPre a β 3 = DVR.Oφl U e β 3 :=
    congrArg (fun z : _ ⟶ D.toPre.P.A => z.left) (MonObj.comp_one (M := D.toPre.P.A) (U.gt e).pG)
  have a₄ : DVR.Oφl U e β 2 = DVR.pGl U e := rfl
  have a₅ : DVR.pGl U e ≫ tφ D.toPre a β 4 = b.left ≫ DVR.pGl U e := hb.symm
  have a₆ : (![𝟙 _, b.left] : Fin 2 → _) 0 ≫ DVR.pGl U e = DVR.pGl U e := Category.id_comp _
  have a₇ : (![𝟙 _, b.left] : Fin 2 → _) 1 ≫ DVR.pGl U e = b.left ≫ DVR.pGl U e := rfl
  rw [Fintype.prod_sum_type, Fin.prod_univ_five, Fin.prod_univ_four, Fin.prod_univ_two]
  simp only [Sum.elim_inl, Sum.elim_inr]
  rw [a₀, a₁, a₂, a₃, a₄, a₅, a₆, a₇]
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_zpow, tε, Oinvε, Matrix.cons_val]
  module

theorem exists_texp (a : D.toPre.P.A ⟶ D.toPre.P.A) (b : thickObj R I e G ⟶ thickObj R I e G)
    (hb : b ≫ (U.gt e).q = (U.gt e).q ≫ (Over.pullback (thick R I e)).map a) (n j : ℤ) {Ix : Type}
    {w : Ix → D.toPre.X} (s : ∀ i, SecT D.toPre a n j (w i)) (hs : Small I s) :
    ∃ τ : SecE U b n j, TExp U τ s := by
  classical
  have hb' : b.left ≫ DVR.pGl U e = DVR.pGl U e ≫ a.left := by
    have h₁ : b.left ≫ (U.gt e).q.left = (U.gt e).q.left ≫ ((Over.pullback (thick R I e)).map a).left :=
      congrArg (fun f => f.left) hb
    have h₂ : ((Over.pullback (thick R I e)).map a).left ≫ pullback.fst D.toPre.P.A.hom (thick R I e) =
        pullback.fst D.toPre.P.A.hom (thick R I e) ≫ a.left := pullback.lift_fst _ _ _
    show b.left ≫ (U.gt e).q.left ≫ pullback.fst D.toPre.P.A.hom (thick R I e) =
      ((U.gt e).q.left ≫ pullback.fst D.toPre.P.A.hom (thick R I e)) ≫ a.left
    rw [← Category.assoc, h₁, Category.assoc, h₂, Category.assoc]
  choose σ hσ using fun i => exists_sec D.toPre.P.isLB (formEq_term U e a b hb' n j (w i))
    (pullMulSec (s i) (DVR.pGl U e) (DVR.tG U e (w i)) ((U.gt e).t_gen (w i)))
  obtain ⟨τ₀, h₀⟩ := exists_down U.LG.isLB D.toPre.P.isLB (U.w_gen e) (![𝟙 _, b.left] : Fin 2 → _) ![n, j]
    (sumSec (hs e).toFinset σ)
  obtain ⟨τ, hτ⟩ := exists_sec U.LG.isLB (φ' := ![(fstG I e G).left, b.left ≫ (fstG I e G).left]) (ε' := ![n, j])
    (fun V _ h => by
      rw [Fin.prod_univ_two, Fin.prod_univ_two]
      exact congrArg (fun f => h f ^ n * _) (Category.id_comp _)) τ₀
  refine ⟨τ, fun S hS Z x z J J' hJ hJ' => ?_⟩
  have H := h₀ Z x z _ _ (hJ.mem _ x) (hJ'.mem _ x)
  have van : ∀ i, Van I (s i) e → sval (s i) (x ≫ (U.gt e).pG.left) z J * (val ((U.gt e).t (w i)) x z J).val = 0 :=
    fun i hi => by
      have := hi Z (x ≫ (U.gt e).q.left) z J hJ
      rw [Category.assoc] at this
      exact (congrArg (· * _) this).trans (zero_mul _)
  have H₂ : sval (sumSec (hs e).toFinset σ) x z J =
      ∑ i ∈ S, sval (s i) (x ≫ (U.gt e).pG.left) z J * (val ((U.gt e).t (w i)) x z J).val := by
    rw [sval_sumSec _ _ x z hJ]
    refine (Finset.sum_congr rfl fun i _ => (hσ i Z x z J hJ).trans (sval_pullMulSec _ _ _ _ x z hJ)).trans ?_
    refine Finset.sum_subset (fun i hi => by_contra fun h => (hs e).mem_toFinset.1 hi (hS i h)) fun i _ hi => ?_
    exact van i (by_contra fun h => hi ((hs e).mem_toFinset.2 h))
  refine Eq.trans ?_ (H.trans H₂)
  refine congrArg₂ (· * ·) (congrArg Units.val ?_) (hτ Z x z J' hJ')
  rw [Fin.prod_univ_two]
  show _ = DVR.wv U e (x ≫ 𝟙 _) z (J (x ≫ 𝟙 _ ≫ _)) (J' (x ≫ 𝟙 _ ≫ _)) ^ n * _
  rw [Category.id_comp, Category.id_comp, Category.comp_id]
  rfl

end Main

theorem glue : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a : D.toPre.P.A ⟶ D.toPre.P.A), ∀ (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G), ∀ (e : ℕ) (b : thickObj R (maximalIdeal R) e G ⟶ thickObj R (maximalIdeal R) e G), b ≫ (U.gt e).q = (U.gt e).q ≫ (Over.pullback (thick R (maximalIdeal R) e)).map a → ∀ (n j : ℤ) (Ix : Type) (w : Ix → D.toPre.X) (s : ∀ i, SecT D.toPre a n j (w i)), Small (maximalIdeal R) s → ∃ τ : SecE U.toUnifPre b n j, TExp U.toUnifPre τ s :=
  fun _ _ _ _ _ _ a _ _ _ _ _ U e b hb n j _ _ s hs => exists_texp U.toUnifPre e a b hb n j s hs

end GlobalTheory.TwFamGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoGermTrans =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubeProductTwistedSectionsVanishing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubeProductTwistedSectionsVanishing", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SectionArithmetic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.TwFam

theorem prod_tφ_eq {R : Type} [CommRing R] [IsDomain R] (D : DegPre R) (a : D.P.A ⟶ D.P.A) (n j : ℤ) (β : D.X)
    {U : Type} [CommGroup U] (h : (D.P.A.left ⟶ D.P.A.left) → U) :
    ∏ k, h (tφ D a β k) ^ tε n j k =
      h (𝟙 D.P.A : D.P.A ⟶ D.P.A).left ^ (n - 1) * h ((toUnit D.P.A ≫ D.c β) * 𝟙 D.P.A : D.P.A ⟶ D.P.A).left *
        (h (toUnit D.P.A ≫ D.c β).left)⁻¹ * h (1 : D.P.A ⟶ D.P.A).left * h a.left ^ j := by
  rw [Fin.prod_univ_five, _root_.mul_comm (toUnit D.P.A ≫ D.c β)]
  simp only [← zpow_neg_one]
  exact congrArg₂ (· * ·) (congrArg₂ (· * ·) (congrArg₂ (· * ·) (congrArg₂ (· * ·) rfl (zpow_one _)) rfl)
    (zpow_one _)) rfl

theorem exists_isProdT {R : Type} [CommRing R] [IsDomain R] (D : DegPre R) (a : D.P.A ⟶ D.P.A) (n j n' j' : ℤ)
    (β β' : D.X) (f : SecT D a n j β) (g : SecT D a n' j' β') :
    ∃ p : SecT D a (n + n') (j + j') (β + β'), IsProdT f g p := by
  have hadd : toUnit D.P.A ≫ D.c (β + β') = (toUnit D.P.A ≫ D.c β) * (toUnit D.P.A ≫ D.c β') := by
    rw [D.c_add]; exact MonObj.comp_mul _ _ _
  have hu := DVR.pullGen_isGen D.P.L (thφ D.P.A (x3 D.P.A)) thε D.cub.t D.cub.isGen
    (lift (toUnit _ ≫ D.c β) (lift (toUnit _ ≫ D.c β') (𝟙 D.P.A)) : D.P.A ⟶ G3 D.P.A).left
  obtain ⟨p, hp⟩ := exists_sec D.P.isLB (φ' := tφ D a (β + β')) (ε' := tε (n + n') (j + j')) (fun U _ h => by
      refine ((Fintype.prod_sum_type _).trans (congrArg₂ (· * ·) ((Fintype.prod_sum_type _).trans
        (congrArg₂ (· * ·) (prod_tφ_eq D a n j β h) (prod_tφ_eq D a n' j' β' h)))
        (prod_cub (toUnit D.P.A ≫ D.c β) (toUnit D.P.A ≫ D.c β') (𝟙 D.P.A) h))).trans ?_
      rw [prod_tφ_eq, hadd]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv, ofMul_zpow]
      module)
    (H1.SectionArithmetic.mulSec (H1.SectionArithmetic.mulSec f g) (genSec _ hu))
  refine ⟨p, fun Z x z J hJ => (hp Z x z J hJ).trans ((H1.SectionArithmetic.sval_mulSec _ _ _ z hJ).trans (congrArg₂ (· * ·)
    (H1.SectionArithmetic.sval_mulSec _ _ _ z hJ) ((sval_genSec _ hu _ z hJ).trans (congrArg Units.val (val_pull hJ _ _ _)))))⟩

theorem exists_prodT_van : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a : D.toPre.P.A ⟶ D.toPre.P.A), ∀ (n j n' j' n'' j'' : ℤ), n'' = n + n' → j'' = j + j' → ∀ (β β' : D.toPre.X) (f : SecT D.toPre a n j β) (g : SecT D.toPre a n' j' β'), ∃ p : SecT D.toPre a n'' j'' (β + β'), IsProdT f g p ∧ ∀ e, (Van (maximalIdeal R) f e ∨ Van (maximalIdeal R) g e) → Van (maximalIdeal R) p e := by
  intro R _ _ _ _ D a n j n' j' n'' j'' hn hj β β' f g
  subst hn hj
  obtain ⟨p, hp⟩ := exists_isProdT D.toPre a n j n' j' β β' f g
  refine ⟨p, hp, fun e he Z x z J hJ => ?_⟩
  rw [hp Z _ z J hJ]
  rcases he with he | he
  · rw [he Z x z J hJ, zero_mul, zero_mul]
  · rw [he Z x z J hJ, mul_zero, zero_mul]

end GlobalTheory.TwFam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubeProductTwistedSectionsVanishing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionMulOfMemberProducts =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionMulOfMemberProducts", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.TwFam

theorem texp_mul_of_prod : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a : D.toPre.P.A ⟶ D.toPre.P.A), ∀ (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G), ∀ (e : ℕ) (b : thickObj R (maximalIdeal R) e G ⟶ thickObj R (maximalIdeal R) e G), ∀ (n j n' j' n'' j'' : ℤ), n'' = n + n' → j'' = j + j' → ∀ (f : ∀ β, SecT D.toPre a n j β) (g : ∀ β, SecT D.toPre a n' j' β) (p : ∀ q : D.toPre.X × D.toPre.X, SecT D.toPre a n'' j'' (q.1 + q.2)) (τ : SecE U.toUnifPre b n j) (τ' : SecE U.toUnifPre b n' j') (τ'' : SecE U.toUnifPre b n'' j''), Small (maximalIdeal R) (w := id) f → Small (maximalIdeal R) (w := id) g → (∀ q : D.toPre.X × D.toPre.X, IsProdT (f q.1) (g q.2) (p q)) → TExp U.toUnifPre τ (w := id) f → TExp U.toUnifPre τ' (w := id) g → (∀ (Z : Scheme.{0}) (x : Z ⟶ (thickObj R (maximalIdeal R) e G).left) (z : Z) (J'), Good U.LG.L z J' → sval τ'' x z J' = sval τ x z J' * sval τ' x z J') → TExp U.toUnifPre τ'' (w := fun q : D.toPre.X × D.toPre.X => q.1 + q.2) p := by
  intro R _ _ _ _ D a A G _ _ _ U e b n j n' j' n'' j'' hn hj f g p τ τ' τ'' hf hg hp hτ hτ' hτ''
  classical
  subst hn hj
  intro S hS Z x z J J' hJ hJ'
  have hy : x ≫ (U.gt e).pG.left = (x ≫ (U.gt e).q.left) ≫ pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e) := by
    simp [GtCoord.pG, DegPre.prBe, Over.comp_left, Over.map_map_left, Over.homMk_left]
  have vanAt : ∀ {n j : ℤ} {β : D.toPre.X} (s : SecT D.toPre a n j β), Van (maximalIdeal R) s e →
      sval s (x ≫ (U.gt e).pG.left) z J = 0 := fun s hs => by rw [hy]; exact hs Z _ z J hJ
  have h1 : evalE U.toUnifPre τ'' x z J J' = evalE U.toUnifPre τ x z J J' * evalE U.toUnifPre τ' x z J J' := by
    simp only [evalE, zpow_add, Units.val_mul]; rw [hτ'' Z x z J' hJ']; ring
  have hL : ∀ χ χ' : D.toPre.X, x ≫ (lift (toUnit _ ≫ D.toPre.c χ) (lift (toUnit _ ≫ D.toPre.c χ') (U.gt e).pG)).left =
      (x ≫ (U.gt e).pG.left) ≫ (lift (toUnit _ ≫ D.toPre.c χ) (lift (toUnit _ ≫ D.toPre.c χ') (𝟙 D.toPre.P.A)) :
        D.toPre.P.A ⟶ G3 D.toPre.P.A).left := by
    intro χ χ'
    rw [Category.assoc, ← Over.comp_left]
    congr 2
    simp [comp_lift]
  have hT : ∀ χ χ' : D.toPre.X, (val ((U.gt e).t (χ + χ')) x z J).val *
      (val D.toPre.cub.t ((x ≫ (U.gt e).pG.left) ≫ (lift (toUnit _ ≫ D.toPre.c χ) (lift (toUnit _ ≫ D.toPre.c χ') (𝟙 D.toPre.P.A)) :
        D.toPre.P.A ⟶ G3 D.toPre.P.A).left) z J).val =
      (val ((U.gt e).t χ) x z J).val * (val ((U.gt e).t χ') x z J).val := by
    intro χ χ'
    have h := (val_mul hJ _ _ x).symm.trans ((val_corr hJ ((U.gt e).t_mul χ χ') x).trans (val_mul hJ _ _ x))
    have h' := (congrArg (val ((U.gt e).t (χ + χ')) x z J * ·) (val_pull hJ _ _ x)).symm.trans h
    rw [← hL χ χ']
    exact (Units.val_mul _ _).symm.trans ((congrArg Units.val h').trans (Units.val_mul _ _))
  have hSf : ∀ i ∉ (hf e).toFinset, Van (maximalIdeal R) (f i) e := fun i hi =>
    by_contra fun hc => hi ((hf e).mem_toFinset.2 hc)
  have hSg : ∀ i ∉ (hg e).toFinset, Van (maximalIdeal R) (g i) e := fun i hi =>
    by_contra fun hc => hi ((hg e).mem_toFinset.2 hc)
  have ef : evalE U.toUnifPre τ x z J J' = ∑ i ∈ (hf e).toFinset,
      sval (f i) (x ≫ (U.gt e).pG.left) z J * (val ((U.gt e).t i) x z J).val := hτ _ hSf Z x z J J' hJ hJ'
  have eg : evalE U.toUnifPre τ' x z J J' = ∑ i ∈ (hg e).toFinset,
      sval (g i) (x ≫ (U.gt e).pG.left) z J * (val ((U.gt e).t i) x z J).val := hτ' _ hSg Z x z J J' hJ hJ'
  have hP := fun q => hp q Z (x ≫ (U.gt e).pG.left) z J hJ
  have z₁ : ∀ q ∉ S, sval (p q) (x ≫ (U.gt e).pG.left) z J * (val ((U.gt e).t (q.1 + q.2)) x z J).val = 0 :=
    fun q hq => by rw [vanAt _ (hS q hq), zero_mul]
  have z₂ : ∀ q ∉ (hf e).toFinset ×ˢ (hg e).toFinset,
      sval (p q) (x ≫ (U.gt e).pG.left) z J * (val ((U.gt e).t (q.1 + q.2)) x z J).val = 0 := by
    intro q hq
    rw [Finset.mem_product, not_and_or] at hq
    rw [hP q]
    rcases hq with h | h
    · rw [vanAt _ (hSf _ h), zero_mul, zero_mul, zero_mul]
    · rw [vanAt _ (hSg _ h), mul_zero, zero_mul, zero_mul]
  show _ = ∑ q ∈ S, sval (p q) (x ≫ (U.gt e).pG.left) z J * (val ((U.gt e).t (q.1 + q.2)) x z J).val
  rw [h1, ef, eg, Finset.sum_mul_sum, ← Finset.sum_product',
    Finset.sum_subset (Finset.subset_union_right (s₁ := (hf e).toFinset ×ˢ (hg e).toFinset)) (fun q _ hq => z₁ q hq),
    ← Finset.sum_subset (Finset.subset_union_left (s₂ := S)) (fun q _ hq => z₂ q hq)]
  refine Finset.sum_congr rfl fun q _ => ?_
  rw [hP q]
  linear_combination (-(sval (f q.1) (x ≫ (U.gt e).pG.left) z J * sval (g q.2) (x ≫ (U.gt e).pG.left) z J)) * hT q.1 q.2

end GlobalTheory.TwFam
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionMulOfMemberProducts =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionMulOfMemberProductsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionMulOfMemberProductsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionMulOfMemberProducts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionMulOfMemberProductsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationMulOfRelatedPairs =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationMulOfRelatedPairs", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PhiGenPf\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFactorExistsUniqueConstMulIntegralGeneratStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFunctionalEquationBundleTrivialAbelianParStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

noncomputable section

namespace GlobalTheory.TwFam.ProdRel

variable {R : Type} [CommRing R] [IsDomain R]


open ReciprocityTheory.ChartRestriction.G.DVR in
theorem comp_tφ (D : DegPre R) (a : D.P.A ⟶ D.P.A) (β : D.X) {T : Over (Spec (CommRingCat.of R))} (r : T ⟶ D.P.A) (k : Fin 5) :
    r.left ≫ tφ D a β k = ((![r, r * cP D T β, cP D T β, 1, r ≫ a] : Fin 5 → (T ⟶ D.P.A)) k).left := by
  fin_cases k
  · show r.left ≫ 𝟙 _ = r.left; simp
  · show r.left ≫ (padd D.P.A (𝟙 D.P.A) (toUnit D.P.A ≫ D.c β)).left = (r * cP D T β).left
    rw [← Over.comp_left, padd, ← Hom.mul_def, MonObj.comp_mul, Category.comp_id]
    congr 2
    exact comp_cP D r β
  · show r.left ≫ (toUnit D.P.A ≫ D.c β).left = (cP D T β).left
    rw [← Over.comp_left]; exact congrArg _ (comp_cP D r β)
  · show r.left ≫ (toUnit D.P.A ≫ η[D.P.A]).left = (1 : T ⟶ D.P.A).left
    rw [← Over.comp_left, Hom.one_def, ← Category.assoc, toUnit_unique (r ≫ toUnit _) (toUnit T)]
  · show r.left ≫ a.left = (r ≫ a).left; rw [Over.comp_left]


open ReciprocityTheory.ChartRestriction.G.DVR in
theorem formEq (D : DegPre R) (a : D.P.A ⟶ D.P.A) (mu β β' β₁ β₁' : D.X) (n j n' j' : ℤ) :
    FormEq (Sum.elim (Sum.elim (Sum.elim (dφ D a mu β β₁) (dφ D a mu β' β₁'))
        (fun k => (lift (cP D (DegPre.BF D (FractionRing R)) β₁) (lift (cP D (DegPre.BF D (FractionRing R)) β₁')
          (DegPre.prB D (FractionRing R)))).left ≫ thφ D.P.A (x3 D.P.A) k))
        (fun k => (lift (cP D (DegPre.BF D (FractionRing R)) β) (lift (cP D (DegPre.BF D (FractionRing R)) β')
          (DegPre.trF D (FractionRing R) mu ≫ DegPre.prB D (FractionRing R)))).left ≫ thφ D.P.A (x3 D.P.A) k))
      (Sum.elim (Sum.elim (Sum.elim (dε n j) (dε n' j')) thε) (fun k => - thε k))
      (dφ D a mu (β + β') (β₁ + β₁')) (dε (n + n') (j + j')) := by
  intro U _ h
  simp only [Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, zpow_neg, Finset.prod_inv_distrib]
  rw [prod_cub, prod_cub]
  simp only [dφ, dε, Sum.elim_inl, Sum.elim_inr]
  simp only [← Category.assoc, ← Over.comp_left]
  simp only [comp_tφ]
  simp only [Fin.prod_univ_five, tε, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_three, Matrix.cons_val_four, Matrix.head_cons, Matrix.tail_cons, zpow_one, neg_neg]
  have htr : DegPre.trF D (FractionRing R) mu ≫ DegPre.prB D (FractionRing R) =
      DegPre.prB D (FractionRing R) * cP D (DegPre.BF D (FractionRing R)) mu := by
    simp only [DegPre.trF, DegPre.prB, lift_snd, padd, ← Hom.mul_def]; rfl
  rw [htr, cPoint_add, cPoint_add]
  generalize DegPre.prB D (FractionRing R) = Y
  generalize cP D (DegPre.BF D (FractionRing R)) mu = Cm
  generalize cP D (DegPre.BF D (FractionRing R)) β = Cb
  generalize cP D (DegPre.BF D (FractionRing R)) β' = Cb'
  generalize cP D (DegPre.BF D (FractionRing R)) β₁ = Cc
  generalize cP D (DegPre.BF D (FractionRing R)) β₁' = Cc'
  rw [mul_comm Cc Y, mul_comm Cc' Y, mul_comm Cb (Y * Cm), mul_comm Cb' (Y * Cm), mul_comm (Cc * Cc') Y,
    mul_comm (Cb * Cb') (Y * Cm)]
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_zpow, ofMul_inv]
  module


open ReciprocityTheory.ChartRestriction.G.DVR in
theorem trF_prB (D : DegPre R) (mu : D.X) : DegPre.trF D (FractionRing R) mu ≫ DegPre.prB D (FractionRing R) =
    DegPre.prB D (FractionRing R) * cP D (DegPre.BF D (FractionRing R)) mu := by
  simp only [DegPre.trF, DegPre.prB, lift_snd, padd, ← Hom.mul_def]; rfl

theorem zF_prB (D : DegPre R) : DegPre.zF D (FractionRing R) ≫ DegPre.prB D (FractionRing R) = 1 := by
  simp only [DegPre.zF, DegPre.prB, lift_snd, Hom.one_def]


open ReciprocityTheory.ChartRestriction.G.DVR in
theorem exists_prodFac (D : DegPre R) (hB : D.TauBimult) (a : D.P.A ⟶ D.P.A) (h : D.X →+ D.X) (n j n' j' : ℤ)
    (mu β β' β₁ β₁' : D.X) (uf : LB.Gen (LB.LinComb D.P.L (dφ D a mu β β₁) (dε n j)))
    (ug : LB.Gen (LB.LinComb D.P.L (dφ D a mu β' β₁') (dε n' j')))
    (hf : IsFac D a h n j mu β β₁ uf) (hg : IsFac D a h n' j' mu β' β₁' ug) :
    ∃ w : LB.Gen (LB.LinComb D.P.L (dφ D a mu (β + β') (β₁ + β₁')) (dε (n + n') (j + j'))),
      IsFac D a h (n + n') (j + j') mu (β + β') (β₁ + β₁') w ∧
      ∀ (Z : Scheme.{0}) (x : Z ⟶ (DegPre.BF D (FractionRing R)).left) (z : Z) (J), Good D.P.L z J →
        val w x z J = val uf x z J * val ug x z J *
          val D.cub.t (x ≫ (lift (cP D (DegPre.BF D (FractionRing R)) β₁) (lift (cP D (DegPre.BF D (FractionRing R)) β₁')
            (DegPre.prB D (FractionRing R)))).left) z J *
          (val D.cub.t (x ≫ (lift (cP D (DegPre.BF D (FractionRing R)) β) (lift (cP D (DegPre.BF D (FractionRing R)) β')
            (DegPre.trF D (FractionRing R) mu ≫ DegPre.prB D (FractionRing R)))).left) z J)⁻¹ := by
  let c1 := LB.pullGen D.P.L (thφ D.P.A (x3 D.P.A)) thε D.cub.t
    (lift (cP D (DegPre.BF D (FractionRing R)) β₁) (lift (cP D (DegPre.BF D (FractionRing R)) β₁')
      (DegPre.prB D (FractionRing R)))).left
  let c2 := LB.pullGen D.P.L (thφ D.P.A (x3 D.P.A)) thε D.cub.t
    (lift (cP D (DegPre.BF D (FractionRing R)) β) (lift (cP D (DegPre.BF D (FractionRing R)) β')
      (DegPre.trF D (FractionRing R) mu ≫ DegPre.prB D (FractionRing R)))).left
  let w0 := LB.mulGen D.P.L _ _ _ _ (LB.mulGen D.P.L _ _ _ _ (LB.mulGen D.P.L _ _ _ _ uf ug) c1)
    (LB.invGen D.P.L _ _ c2)
  have hw0 : w0.IsGen := mulGen_isGen _ _ _ _ _ _ _ (mulGen_isGen _ _ _ _ _ _ _ (mulGen_isGen _ _ _ _ _ _ _ hf.1 hg.1)
    (pullGen_isGen _ _ _ _ D.cub.isGen _)) (invGen_isGen _ _ _ _ (pullGen_isGen _ _ _ _ D.cub.isGen _))
  obtain ⟨w, hw, hv⟩ := exists_gen D.P.isLB (formEq D a mu β β' β₁ β₁' n j n' j') w0 hw0
  have ev : ∀ (Z : Scheme.{0}) (x : Z ⟶ (DegPre.BF D (FractionRing R)).left) (z : Z) (J), Good D.P.L z J →
      val w x z J = val uf x z J * val ug x z J * val c1 x z J * (val c2 x z J)⁻¹ := fun Z x z J hJ => by
    exact (hv _ _ z J hJ).trans ((val_mul hJ _ _ _).trans (congrArg₂ (· * ·) ((val_mul hJ _ _ _).trans
      (congrArg₂ (· * ·) (val_mul hJ _ _ _) rfl)) (val_inv _ _)))
  refine ⟨w, ⟨hw, fun z J hJ => ?_⟩, fun Z x z J hJ => ?_⟩
  · rw [ev _ _ z J hJ, hf.2 z J hJ, hg.2 z J hJ, val_cub D.cub (DegPre.zF D (FractionRing R)) hJ,
      val_cub D.cub (DegPre.zF D (FractionRing R)) hJ, comp_cP, comp_cP, comp_cP, comp_cP, zF_prB,
      trF_prB, MonObj.comp_mul, zF_prB, comp_cP, _root_.one_mul, (isCub_cubV D.cub hJ).face₃]
    have t := tau_mul (𝟙 (TF (R := R) (FractionRing R))) hJ hB β β' mu
    rw [tau_symm (𝟙 (TF (R := R) (FractionRing R))) hJ (β + β'), tau_symm (𝟙 (TF (R := R) (FractionRing R))) hJ β,
      tau_symm (𝟙 (TF (R := R) (FractionRing R))) hJ β'] at t
    simp only [Over.id_left, Category.id_comp] at t
    have t' := congrArg Additive.ofMul t
    apply Additive.ofMul.injective
    simp only [ofMul_mul, ofMul_zpow, ofMul_inv, ofMul_one] at t' ⊢
    linear_combination (norm := module) -t'
  · exact (ev _ _ z J hJ).trans (congrArg₂ (· * ·) (congrArg₂ (· * ·) rfl (val_pull hJ _ _ _))
      (congrArg (·⁻¹) (val_pull hJ _ _ _)))


open ReciprocityTheory.ChartRestriction.G.DVR in
theorem comp_cub (D : DegPre R) (β β' : D.X) {T : Over (Spec (CommRingCat.of R))} (r : T ⟶ D.P.A) :
    r.left ≫ (lift (toUnit _ ≫ D.c β) (lift (toUnit _ ≫ D.c β') (𝟙 D.P.A)) : D.P.A ⟶ G3 D.P.A).left =
      (lift (cP D T β) (lift (cP D T β') r) : T ⟶ G3 D.P.A).left := by
  rw [← Over.comp_left, comp_lift, comp_lift, Category.comp_id, ← comp_cP D r β, ← comp_cP D r β']
  rfl

theorem trel_prod : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ (n j n' j' n'' j'' : ℤ), n'' = n + n' → j'' = j + j' → ∀ (mu β β' β₁ β₁' : D.toPre.X) (f : SecT D.toPre a n j β) (g : SecT D.toPre a n' j' β') (p : SecT D.toPre a n'' j'' (β + β')) (f₁ : SecT D.toPre a n j β₁) (g₁ : SecT D.toPre a n' j' β₁') (p₁ : SecT D.toPre a n'' j'' (β₁ + β₁')), β₁ = β + shift h h' n j mu → β₁' = β' + shift h h' n' j' mu → IsProdT f g p → IsProdT f₁ g₁ p₁ → TRel h mu f f₁ → TRel h mu g g₁ → TRel h mu p p₁ := by
  intro R _ _ _ hA D a a' h h' hE n j n' j' n'' j'' hn hj mu β β' β₁ β₁' f g p f₁ g₁ p₁ e e' hp hp₁ hf hg
  subst hn hj
  obtain ⟨v, hv⟩ := GlobalTheory.T.twistedFunctionalEquation_bundle_trivial_abelianPart R hA D a a' h h' hE n j mu β β₁ e
  obtain ⟨v', hv'⟩ := GlobalTheory.T.twistedFunctionalEquation_bundle_trivial_abelianPart R hA D a a' h h' hE n' j' mu β' β₁' e'
  obtain ⟨v'', hv''⟩ := GlobalTheory.T.twistedFunctionalEquation_bundle_trivial_abelianPart R hA D a a' h h' hE (n + n') (j + j') mu (β + β') (β₁ + β₁') (by
    rw [e, e']; simp only [shift, add_smul]; abel)
  obtain ⟨uf, huf⟩ := (_root_.GlobalTheory.TwFac.fac_exists_unique_const R hA D a h hE.1 hE.2.2.2.1 n j mu β β₁ v hv).1
  obtain ⟨ug, hug⟩ := (_root_.GlobalTheory.TwFac.fac_exists_unique_const R hA D a h hE.1 hE.2.2.2.1 n' j' mu β' β₁' v' hv').1
  obtain ⟨w, hw, ew⟩ := exists_prodFac D.toPre D.tau_bimult a h n j n' j' mu β β' β₁ β₁' uf ug huf hug
  intro u hu Z x z J hJ
  have e₁ := hp₁ Z (x ≫ (DegPre.prB D.toPre (FractionRing R)).left) z J hJ
  have e₂ := hp Z (x ≫ (DegPre.trF D.toPre (FractionRing R) mu).left ≫ (DegPre.prB D.toPre (FractionRing R)).left) z J hJ
  rw [Category.assoc, comp_cub] at e₁
  rw [Category.assoc, show ((DegPre.trF D.toPre (FractionRing R) mu).left ≫ (DegPre.prB D.toPre (FractionRing R)).left) ≫ _ = _
    from comp_cub D.toPre β β' (DegPre.trF D.toPre (FractionRing R) mu ≫ DegPre.prB D.toPre (FractionRing R))] at e₂
  rw [e₁, e₂, hf uf huf Z x z J hJ, hg ug hug Z x z J hJ,
    (_root_.GlobalTheory.TwFac.fac_exists_unique_const R hA D a h hE.1 hE.2.2.2.1 _ _ mu _ _ v'' hv'').2.1 u w hu hw Z x z J hJ, ew Z x z J hJ]
  have key : ∀ {S : Type} [CommRing S] (s t : S) (c₁ c₂ b₁ b₂ : Sˣ),
      s * b₁.val * (t * b₂.val) * c₁.val = s * t * c₂.val * (b₁ * b₂ * c₁ * c₂⁻¹).val := by
    intro S _ s t c₁ c₂ b₁ b₂
    simp only [Units.val_mul]
    linear_combination (-(s * t * b₁.val * b₂.val * c₁.val)) * c₂.mul_inv
  exact key _ _ _ _ _ _

end GlobalTheory.TwFam.ProdRel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationMulOfRelatedPairs =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProductSmallTwistedFunctionalEqnFamily =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProductSmallTwistedFunctionalEqnFamily", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZeroStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCubeProductTwistedSectionsVanishing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionAdicSumsAdmissibleBaseStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedExpansionMulOfMemberProductsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFunctionalEquationOfAdicSumTermwiseStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationMulOfRelatedPairs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SectionArithmetic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

theorem GlobalTheory.TwFam.exists_prod_family : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G), ∀ b, FormalEnd U.toUnifPre a h' b → ∀ (n j n' j' n'' j'' : ℤ), n'' = n + n' → j'' = j + j' → ∀ (f : ∀ β, SecT D.toPre a n j β) (g : ∀ β, SecT D.toPre a n' j' β), Small (maximalIdeal R) (w := id) f → Small (maximalIdeal R) (w := id) g → TFE h h' f → TFE h h' g → ∃ F : ∀ β, SecT D.toPre a n'' j'' β, Small (maximalIdeal R) (w := id) F ∧ TFE h h' F ∧ ∀ (e : ℕ) (τ : SecE U.toUnifPre (b e) n j) (τ' : SecE U.toUnifPre (b e) n' j'), TExp U.toUnifPre τ (w := id) f → TExp U.toUnifPre τ' (w := id) g → ∃ τ'' : SecE U.toUnifPre (b e) n'' j'', (∀ (Z : Scheme.{0}) (x : Z ⟶ (thickObj R (maximalIdeal R) e G).left) (z : Z) (J'), Good U.LG.L z J' → sval τ'' x z J' = sval τ x z J' * sval τ' x z J') ∧ TExp U.toUnifPre τ'' (w := id) F := by
  intro R _ _ _ hadm D a a' h h' hED A G _ _ hG U b hb n j n' j' n'' j'' hn hj f g hfs hgs hf hg
  have hP := _root_.GlobalTheory.TwFam.exists_prodT_van R hadm D a n j n' j' n'' j'' hn hj
  choose p hpP hpV using fun q : D.toPre.X × D.toPre.X => hP q.1 q.2 (f q.1) (g q.2)
  have hps : Small (maximalIdeal R) (w := fun q : D.toPre.X × D.toPre.X => q.1 + q.2) p := by
    intro e
    refine ((hfs e).prod (hgs e)).subset ?_
    intro q hq
    by_contra hc
    simp only [Set.mem_prod, Set.mem_setOf_eq, not_and_or, not_not] at hc
    exact hq (hpV q e hc)
  obtain ⟨F, hFs, hFsm⟩ := _root_.GlobalTheory.TwFam.AdicSum.exists_isSum R hadm D a n'' j'' (D.toPre.X × D.toPre.X) (fun q => q.1 + q.2) p hps
  refine ⟨F, hFsm, ?_, ?_⟩
  · let σ : D.toPre.X → (D.toPre.X × D.toPre.X) ≃ (D.toPre.X × D.toPre.X) := fun mu =>
      Equiv.prodCongr (Equiv.addRight (shift h h' n j mu)) (Equiv.addRight (shift h h' n' j' mu))
    have hσw : ∀ mu q, (σ mu q).1 + (σ mu q).2 = q.1 + q.2 + shift h h' n'' j'' mu := by
      intro mu q
      subst hn hj
      simp only [σ, Equiv.prodCongr_apply, Prod.map_fst, Prod.map_snd, Equiv.coe_addRight, shift, add_smul]
      abel
    have hσr : ∀ (mu : D.toPre.X) (q : D.toPre.X × D.toPre.X), TRel h mu (p q) (p (σ mu q)) := fun mu q =>
      _root_.GlobalTheory.TwFam.ProdRel.trel_prod R hadm D a a' h h' hED n j n' j' n'' j'' hn hj mu q.1 q.2 (σ mu q).1 (σ mu q).2
        (f q.1) (g q.2) (p q) (f _) (g _) (p (σ mu q)) rfl rfl (hpP q) (hpP (σ mu q)) (hf mu q.1) (hg mu q.2)
    exact _root_.GlobalTheory.TwFam.SumFE.tfe_of_isSum R hadm D a a' h h' hED n'' j'' (D.toPre.X × D.toPre.X) (fun q => q.1 + q.2) p F σ
      hps hFs hσw hσr
  · intro e τ τ' hτ hτ'
    have hform : FormEq
        (Sum.elim ![(fstG (maximalIdeal R) e G).left, (b e).left ≫ (fstG (maximalIdeal R) e G).left]
          ![(fstG (maximalIdeal R) e G).left, (b e).left ≫ (fstG (maximalIdeal R) e G).left])
        (Sum.elim ![n, j] ![n', j'])
        ![(fstG (maximalIdeal R) e G).left, (b e).left ≫ (fstG (maximalIdeal R) e G).left] ![n'', j''] := by
      intro V _ k
      rw [Fintype.prod_sum_type]
      simp only [Fin.prod_univ_two, Matrix.cons_val_zero, Matrix.cons_val_one, Sum.elim_inl,
        Sum.elim_inr, hn, hj, zpow_add]
      exact mul_mul_mul_comm _ _ _ _
    obtain ⟨τ'', hτ''⟩ := exists_sec U.LG.isLB hform (H1.SectionArithmetic.mulSec τ τ')
    have hmul : ∀ (Z : Scheme.{0}) (x : Z ⟶ (thickObj R (maximalIdeal R) e G).left) (z : Z) (J'),
        Good U.LG.L z J' → sval τ'' x z J' = sval τ x z J' * sval τ' x z J' := fun Z x z J' hJ =>
      (hτ'' Z x z J' hJ).trans (H1.SectionArithmetic.sval_mulSec τ τ' x z hJ)
    exact ⟨τ'', hmul, _root_.GlobalTheory.TwFam.texp_sum R hadm D a A G hG U e (b e) n'' j'' τ'' (D.toPre.X × D.toPre.X)
      (fun q => q.1 + q.2) p F hps hFs
      (_root_.GlobalTheory.TwFam.texp_mul_of_prod R hadm D a A G hG U e (b e) n j n' j' n'' j'' hn hj f g p τ τ' τ'' hfs hgs hpP hτ hτ' hmul)⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProductSmallTwistedFunctionalEqnFamily =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProductSmallTwistedFunctionalEqnFamilyStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProductSmallTwistedFunctionalEqnFamilyStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProductSmallTwistedFunctionalEqnFamily\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProductSmallTwistedFunctionalEqnFamilyStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplierPowerMulPullbackSmallFamily =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplierPowerMulPullbackSmallFamily", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsProductSmallTwistedFunctionalEqnFamilyStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.ZmPow

theorem pow_mul_small : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (U : Unif (maximalIdeal R) D A G), ∀ b, FormalEnd U.toUnifPre a h' b → ∀ (N k : ℕ) (g : ∀ β, SecT D.toPre a N (-1) β) (ρ : ∀ β, SecT D.toPre a 0 k β), Small (maximalIdeal R) (w := id) g → Small (maximalIdeal R) (w := id) ρ → TFE h h' g → TFE h h' ρ → ∃ F : ∀ β, SecT D.toPre a ((N * k : ℕ) : ℤ) 0 β, Small (maximalIdeal R) (w := id) F ∧ TFE h h' F ∧ ∀ (e : ℕ) (τ : SecE U.toUnifPre (b e) N (-1)) (τ' : SecE U.toUnifPre (b e) 0 k), TExp U.toUnifPre τ (w := id) g → TExp U.toUnifPre τ' (w := id) ρ → ∃ τ'' : SecE U.toUnifPre (b e) ((N * k : ℕ) : ℤ) 0, (∀ (Z : Scheme.{0}) (x : Z ⟶ (thickObj R (maximalIdeal R) e G).left) (z : Z) (J'), Good U.LG.L z J' → sval τ'' x z J' = sval τ x z J' ^ k * sval τ' x z J') ∧ TExp U.toUnifPre τ'' (w := id) F := by
  intro R _ _ _ hAdm D a a' h h' hE A G _ _ hG U b hb N k g ρ hgS hρS hgT hρT
  have key : ∀ m : ℕ, ∀ n j : ℤ, n = (N : ℤ) * m → j = (k : ℤ) - m →
      ∃ F : ∀ β, SecT D.toPre a n j β, Small (maximalIdeal R) (w := id) F ∧ TFE h h' F ∧
        ∀ (e : ℕ) (τ : SecE U.toUnifPre (b e) N (-1)) (τ' : SecE U.toUnifPre (b e) 0 k),
          TExp U.toUnifPre τ (w := id) g → TExp U.toUnifPre τ' (w := id) ρ →
          ∃ τ'' : SecE U.toUnifPre (b e) n j,
            (∀ (Z : Scheme.{0}) (x : Z ⟶ (thickObj R (maximalIdeal R) e G).left) (z : Z) (J'),
              Good U.LG.L z J' → sval τ'' x z J' = sval τ x z J' ^ m * sval τ' x z J') ∧
            TExp U.toUnifPre τ'' (w := id) F := by
    intro m
    induction m with
    | zero =>
      intro n j hn hj
      have hn' : n = 0 := by simp [hn]
      have hj' : j = (k : ℤ) := by simp [hj]
      subst hn' hj'
      refine ⟨ρ, hρS, hρT, fun e τ τ' _ hτ' => ⟨τ', fun Z x z J' _ => by simp, hτ'⟩⟩
    | succ m ih =>
      intro n j hn hj
      obtain ⟨Fm, hFS, hFT, hFm⟩ := ih ((N : ℤ) * m) ((k : ℤ) - m) rfl rfl
      obtain ⟨F, hS, hT, hP⟩ := _root_.GlobalTheory.TwFam.exists_prod_family R hAdm D a a' h h' hE A G hG U b hb
        (N : ℤ) (-1) ((N : ℤ) * m) ((k : ℤ) - m) n j (by rw [hn]; push_cast; ring)
        (by rw [hj]; push_cast; ring) g Fm hgS hFS hgT hFT
      refine ⟨F, hS, hT, fun e τ τ' hτ hτ' => ?_⟩
      obtain ⟨τm, hτmv, hτmE⟩ := hFm e τ τ' hτ hτ'
      obtain ⟨τ'', hv, hE''⟩ := hP e τ τm hτ hτmE
      refine ⟨τ'', fun Z x z J' hJ => ?_, hE''⟩
      rw [hv Z x z J' hJ, hτmv Z x z J' hJ]
      ring
  exact key k _ _ (by push_cast; ring) (by simp)

end GlobalTheory.ZmPow
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplierPowerMulPullbackSmallFamily =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplierPowerMulPullbackSmallFamilyStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplierPowerMulPullbackSmallFamilyStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplierPowerMulPullbackSmallFamily\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplierPowerMulPullbackSmallFamilyStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSection =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSection", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOnOfTExpGen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntFam\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamilyStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPullbackIntegralExpansionFormalEndomorphisStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsoGermTrans\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplierPowerMulPullbackSmallFamilyStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.MumMult

theorem gs_pow_mul_pull {X Y : Scheme.{0}} {L : LB X} (hL : L.IsLB) (v u : Y ⟶ X) (N k : ℕ)
    (τ : LB.Sec (LB.LinComb L (K := Fin 2) ![v, u] ![(N : ℤ), -1])) (s : H0 L k) (i i' : Fin 1 → L.ι)
    (hle : u ⁻¹ᵁ secChart L i ⊓ v ⁻¹ᵁ secChart L i' ≤ LB.wchart L ![v, u] ![i' 0, i 0])
    (z : Y) (J' : (Y ⟶ X) → L.ι) (hz : z ∈ u ⁻¹ᵁ secChart L i ⊓ v ⁻¹ᵁ secChart L i') (hJ : Good L z J')
    (hv : J' (𝟙 Y ≫ v) = i' 0) :
    gs (𝟙 Y) z (u ⁻¹ᵁ secChart L i ⊓ v ⁻¹ᵁ secChart L i')
      ((Y.presheaf.map (homOfLE hle).op).hom (τ.f ![i' 0, i 0]) ^ k *
        (Y.presheaf.map (homOfLE (inf_le_left : u ⁻¹ᵁ secChart L i ⊓ v ⁻¹ᵁ secChart L i' ≤
          u ⁻¹ᵁ secChart L i)).op).hom ((u.app (secChart L i)).hom (s.f i))) =
      sval τ (𝟙 Y) z J' ^ k * sval s (𝟙 Y ≫ u) z J' := by
  have hm : (𝟙 Y : Y ⟶ Y) z ∈ LB.wchart L ![v, u] ![i' 0, i 0] := hle hz
  have hu : (𝟙 Y ≫ u) z ∈ secChart L i := hz.1
  have hv' : (𝟙 Y ≫ v) z ∈ L.U (i' 0) := Set.mem_iInter.1 hz.2 0
  have a0 : ∀ x y : Γ(Y, u ⁻¹ᵁ secChart L i ⊓ v ⁻¹ᵁ secChart L i'),
      gs (𝟙 Y) z _ (x ^ k * y) = gs (𝟙 Y) z _ x ^ k * gs (𝟙 Y) z _ y := fun x y => by
    rw [gs_eq _ _ _ hz, gs_eq _ _ _ hz, gs_eq _ _ _ hz, map_mul, map_mul, map_pow, map_pow]
  have a1 := gs_res (𝟙 Y) z hle hz (τ.f ![i' 0, i 0])
  have a2 := (gs_res (𝟙 Y) z (inf_le_left : u ⁻¹ᵁ secChart L i ⊓ v ⁻¹ᵁ secChart L i' ≤
          u ⁻¹ᵁ secChart L i) hz ((u.app (secChart L i)).hom (s.f i))).trans (gs_pull (𝟙 Y) u z _ hu (s.f i))
  rw [a0, a1, a2, sec_trans τ (𝟙 Y) z hm (hJ.mem _ (𝟙 Y)), sec_trans s (𝟙 Y ≫ u) z hu (hJ.mem _ _)]
  have e1 : trF (L := L) ![v, u] ![(N : ℤ), -1] (𝟙 Y) z ![i' 0, i 0] (fun k => J' (𝟙 Y ≫ (![v, u] : Fin 2 → _) k)) =
      (gm (𝟙 Y ≫ u) z _ (L.g (i 0) (J' (𝟙 Y ≫ u))))⁻¹ := by
    rw [trF, Fin.prod_univ_two]
    change gm (𝟙 Y ≫ v) z (L.U (i' 0) ⊓ L.U (J' (𝟙 Y ≫ v))) (L.g (i' 0) (J' (𝟙 Y ≫ v))) ^ (N : ℤ) *
      gm (𝟙 Y ≫ u) z (L.U (i 0) ⊓ L.U (J' (𝟙 Y ≫ u))) (L.g (i 0) (J' (𝟙 Y ≫ u))) ^ (-1 : ℤ) = _
    have gself : ∀ c : L.ι, c = i' 0 → gm (𝟙 Y ≫ v) z (L.U (i' 0) ⊓ L.U c) (L.g (i' 0) c) = 1 := by
      rintro c rfl; exact gm_self hL _ _ hv'
    rw [gself _ hv, one_zpow, _root_.one_mul, zpow_neg, zpow_one]
  have e2 : trF (L := L) (fun _ : Fin 1 => 𝟙 X) (fun _ => (k : ℤ)) (𝟙 Y ≫ u) z i
      (fun k => J' ((𝟙 Y ≫ u) ≫ (fun _ : Fin 1 => 𝟙 X) k)) =
      (gm (𝟙 Y ≫ u) z _ (L.g (i 0) (J' (𝟙 Y ≫ u)))) ^ k := by
    simp only [trF, Fin.prod_univ_one]
    have gid : ∀ f : Y ⟶ X, f = 𝟙 Y ≫ u →
        gm f z (L.U (i 0) ⊓ L.U (J' f)) (L.g (i 0) (J' f)) = gm (𝟙 Y ≫ u) z _ (L.g (i 0) (J' (𝟙 Y ≫ u))) := by
      rintro f rfl; rfl
    rw [gid _ (Category.comp_id _), zpow_natCast]
  rw [e1, e2]
  unfold sval
  generalize gm (𝟙 Y ≫ u) z _ (L.g (i 0) (J' (𝟙 Y ≫ u))) = A
  have hA : ((A⁻¹ : _ˣ) : Y.presheaf.stalk z) ^ k * ((A ^ k : _ˣ) : Y.presheaf.stalk z) = 1 := by
    rw [Units.val_pow_eq_pow_val, ← mul_pow, ← Units.val_mul, inv_mul_cancel, Units.val_one, one_pow]
  rw [mul_pow, _root_.mul_mul_mul_comm, hA, _root_.one_mul]

theorem exists_mult_of_posN : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ b, FormalEnd U.toUnifPre a h' b → ∀ N : ℕ, 1 ≤ N → GlobalTheory.MumMult.PosN D a h h' N → ∀ (σ₀ : LB.Sec (LB.LinComb D.toPre.P.L (K := Fin 2) ![𝟙 D.toPre.P.A.left, a.left] ![(N : ℤ), -1])) (x : D.toPre.P.A.left), D.toPre.P.A.hom x = (IsLocalRing.closedPoint R : PrimeSpectrum R) → GlobalTheory.MumMult.NonzeroAt D a N σ₀ x → ∃ m : ∀ (e : ℕ) (i i' : Fin 1 → U.LG.L.ι), Γ((thickObj R (maximalIdeal R) e G).left, GlobalTheory.MumMult.multW U b e i i'), GlobalTheory.MumMult.MultAct U b N m ∧ GlobalTheory.MumMult.LeadPt U b m := by
  intro R _ _ _ hR D A G _ _ hG U a a' h h' hE b hb N hN hP σ₀ x hx hnz
  obtain ⟨g, gsm, gtfe, gvan, g0⟩ := _root_.GlobalTheory.MumCoef.coef R hR.1 D a a' h h' hE N hN hP σ₀
  choose τ hτ using fun e => GlobalTheory.TwFamGlue.glue R hR.1 D a A G hG U e (b e) (hb.2.2.1 e) (N : ℤ) (-1) D.toPre.X id g gsm
  have hle : ∀ e (i i' : Fin 1 → U.LG.L.ι), multW U b e i i' ≤ LB.wchart U.LG.L
      ![(fstG (maximalIdeal R) e G).left, (b e).left ≫ (fstG (maximalIdeal R) e G).left] ![i' 0, i 0] := by
    intro e i i' y hy
    refine Set.mem_iInter.2 fun k => ?_
    fin_cases k
    · simpa using Set.mem_iInter.1 hy.2 0
    · simpa using Set.mem_iInter.1 hy.1 0
  refine ⟨fun e i i' => ((thickObj R (maximalIdeal R) e G).left.presheaf.map (homOfLE (hle e i i')).op).hom
    ((τ e).f ![i' 0, i 0]), ?_, ?_⟩
  · intro k hk f s hs
    obtain ⟨ρ, ρsm, ρtfe, hρ⟩ := _root_.GlobalTheory.TwFam.exists_pull_expansion R hR.1 D a a' h h' hE A G hG U b hb k s f hs
    obtain ⟨F, Fsm, Ftfe, hF⟩ := _root_.GlobalTheory.ZmPow.pow_mul_small R hR.1 D a a' h h' hE A G hG U b hb N k g ρ gsm ρsm gtfe ρtfe
    obtain ⟨Φ, hΦ⟩ := GlobalTheory.TwBack.exists_intFam R hR.1 D a h h' (N * k) F Fsm Ftfe
    refine ⟨Φ, fun e i i' => ?_⟩
    obtain ⟨τ', hτ'1, hτ'2⟩ := hρ e
    obtain ⟨τ'', h1, h2⟩ := hF e (τ e) τ' (hτ e) hτ'2
    refine GlobalTheory.MumMult.chartExpOn_of_tExp R hR.1 D a A G hG U e (b e) (N * k) F Φ.f τ'' Fsm hΦ h2 i' _ _ ?_
    intro z J' hz hJ' hv
    rw [h1 _ _ z J' hJ', hτ'1 _ _ z J' hJ']
    exact gs_pow_mul_pull U.LG.isLB _ _ N k (τ e) s i i' (hle e i i') z J' hz hJ' hv
  · refine ⟨x, hx, fun y hy i i' hyW => ?_⟩
    choose J hJ using fun χ : (thickObj R (maximalIdeal R) 0 G).left ⟶ D.toPre.P.A.left =>
      exists_chart D.toPre.P.isLB (χ y)
    choose J' hJ' using fun χ : (thickObj R (maximalIdeal R) 0 G).left ⟶ G.left => exists_chart U.LG.isLB (χ y)
    have hx0 : IsUnit (sval σ₀ (𝟙 _ ≫ (U.gt 0).pG.left) y J) := by
      have hm := Good.mem (L := D.toPre.P.L) hJ
        (![𝟙 D.toPre.P.A.left, a.left] : Fin 2 → (D.toPre.P.A.left ⟶ D.toPre.P.A.left)) (𝟙 _ ≫ (U.gt 0).pG.left)
      have hyx : (𝟙 _ ≫ (U.gt 0).pG.left : (thickObj R (maximalIdeal R) 0 G).left ⟶ D.toPre.P.A.left) y = x := hy
      refine (_root_.GlobalTheory.LBGerm.isUnit_gs_iff _ y _ hm _).2 ?_
      rw [hyx] at hm ⊢
      exact hnz _ hm
    have hg0 : sval (g 0) (𝟙 _ ≫ (U.gt 0).pG.left) y J = sval σ₀ (𝟙 _ ≫ (U.gt 0).pG.left) y J :=
      g0 _ (𝟙 _ ≫ (U.gt 0).q.left) y J hJ
    have hexp := hτ 0 {0} (fun β hβ => gvan β (by simpa using hβ)) _ (𝟙 _) y J J' hJ hJ'
    rw [Finset.sum_singleton] at hexp
    have hu : IsUnit (evalE U.toUnifPre (τ 0) (𝟙 _) y J J') := by
      rw [hexp]
      exact (hg0 ▸ hx0 : IsUnit (sval (g 0) (𝟙 _ ≫ (U.gt 0).pG.left) y J)).mul (Units.isUnit _)
    have hs : IsUnit (sval (τ 0) (𝟙 _) y J') := isUnit_of_mul_isUnit_right hu
    refine (_root_.GlobalTheory.LBGerm.isUnit_gs_iff (𝟙 _) y _ hyW _).1 ?_
    have e := (gs_res (𝟙 _) y (hle 0 i i') hyW ((τ 0).f ![i' 0, i 0])).trans
      (sec_trans (τ 0) (𝟙 _) y (hle 0 i i' hyW) (Good.mem (L := U.LG.L) hJ' _ (𝟙 _)))
    exact e ▸ (Units.isUnit _).mul hs

end GlobalTheory.MumMult
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSection =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSectionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSectionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSectionStatement =====
