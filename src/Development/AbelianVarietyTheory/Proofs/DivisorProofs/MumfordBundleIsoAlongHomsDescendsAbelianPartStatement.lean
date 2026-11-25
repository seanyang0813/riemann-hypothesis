module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MK
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.CartesianLiftThreeCompProjection
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff
public import Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordGeneratorAbelianPartAtLevelImports
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UnifPreCAndCoordCorrespond
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TwistBaseChangeAndValuationStatements
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.RosatiAdjointAbelianPartAndClassifyingMapLinear
public import Development.AbelianVarietyTheory.Definitions.Jets.SurjectiveAppTopSqCube
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsProjByOfIsPullback
public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.AbelianProjectiveBaseChange
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ConnectedSpaceThickening
public import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PhiGenPf
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsTorsionLift
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsRatioPoints
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ExistsUniqueNormPrim
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ConnectedSpaceOfSection
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.LocGenOfThickenings
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbelianSchemeGerms

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHomMumfordGeneratorNormalisedOrigin, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescendedGeneratorThickenedAbelianPart, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorMultiplicativeOnQuotientKernel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGluedUniformisationIsoOneLevel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratorTorusInvariantOfMultiplicative, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordGeneratorAbelianPartAtLevel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomMumfordGeneratorAdditiveCubicalStructures, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPart, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPartStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHomMumfordGeneratorNormalisedOrigin =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHomMumfordGeneratorNormalisedOrigin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MK\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.CartesianLiftThreeCompProjection\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PhiGenPf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsTorsionLift\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two
open GlobalTheory.HomMum

noncomputable section

namespace GlobalTheory.HomMum

variable {S : Scheme.{0}}

theorem prod_alt_const {U : Type} [CommGroup U] (m : U) :
    ∏ I : ULift.{0} (Finset (Fin 2)), m ^ ((-1 : ℤ) ^ (2 - I.down.card)) = 1 := by
  refine (Fintype.prod_equiv (Equiv.ulift : ULift.{0} (Finset (Fin 2)) ≃ Finset (Fin 2)) _
    (fun I => m ^ ((-1 : ℤ) ^ (2 - I.card))) (fun I => rfl)).trans ?_
  rw [show (Finset.univ : Finset (Finset (Fin 2))) = {∅, {0}, {1}, {0, 1}} by decide,
    Finset.prod_insert (by decide), Finset.prod_insert (by decide), Finset.prod_insert (by decide),
    Finset.prod_singleton]
  have q₀ : (-1 : ℤ) ^ (2 - (∅ : Finset (Fin 2)).card) = 1 := by decide
  have q₁ : ∀ i : Fin 2, (-1 : ℤ) ^ (2 - ({i} : Finset (Fin 2)).card) = -1 := by decide
  have q₄ : (-1 : ℤ) ^ (2 - ({0, 1} : Finset (Fin 2)).card) = 1 := by decide
  rw [q₀, q₁, q₁, q₄]
  simp

theorem lift_one_psum {G : Over S} [GrpObj G] [IsCommMonObj G] {T : Over S} (I : Finset (Fin 2)) :
    lift (1 : T ⟶ G) (1 : T ⟶ G) ≫ psum G (x2 G) I = 1 := by
  rw [comp_psum]
  have e : (fun k => lift (1 : T ⟶ G) (1 : T ⟶ G) ≫ x2 G k) = fun _ => (1 : T ⟶ G) := by
    funext k
    fin_cases k <;> simp [x2]
  rw [e]
  unfold psum
  induction ((List.finRange 2).filter (· ∈ I)) with
  | nil => simp only [List.foldr_nil, pzero]; rfl
  | cons a l ih =>
    simp only [List.foldr_cons]
    rw [ih]
    show (1 : T ⟶ G) * 1 = 1
    exact _root_.mul_one _

variable {H₁ H₂ : Over S} [GrpObj H₁] [IsCommMonObj H₁] [GrpObj H₂] [IsCommMonObj H₂]

theorem kappa_comp_mφ (a b : H₁ ⟶ H₂) [IsMonHom a] [IsMonHom b] (k : MK) :
    (lift (1 : H₁ ⊗ H₁ ⟶ H₁) (1 : H₁ ⊗ H₁ ⟶ H₁)).left ≫ mφ H₁ H₂ a b k =
      Sum.elim (fun _ => (1 : H₁ ⊗ H₁ ⟶ H₂).left ≫ coprod.inr) (fun _ => (1 : H₁ ⊗ H₁ ⟶ H₁).left ≫ coprod.inl) k := by
  rcases k with I | I
  · simp only [mφ, Sum.elim_inl]
    rw [← Category.assoc, ← Category.assoc, ← Over.comp_left, ← Over.comp_left, comp_lift, lift_fst_assoc,
      lift_snd_assoc, MonObj.one_comp, MonObj.one_comp, lift_one_psum]
  · simp only [mφ, Sum.elim_inr]
    rw [← Category.assoc, ← Over.comp_left, lift_one_psum]

theorem exists_isNrm : ∀ {S : Scheme.{0}} {H₁ H₂ : Over S} [GrpObj H₁] [IsCommMonObj H₁] [GrpObj H₂] [IsCommMonObj H₂]
    {L₁ : LB H₁.left} {L₂ : LB H₂.left}, (join L₁ L₂).IsLB → ∀ (a b : H₁ ⟶ H₂) [IsMonHom a] [IsMonHom b]
    (t : LB.Gen (LB.LinComb (join L₁ L₂) (mφ H₁ H₂ a b) mε)), t.IsGen →
    ∃ u : LB.Gen (LB.LinComb (join L₁ L₂) (mφ H₁ H₂ a b) mε), IsNrm u := by
  intro S H₁ H₂ _ _ _ _ L₁ L₂ hL a b _ _ t ht
  have p : ∀ (V : Type) [CommGroup V] (k : ((H₁ ⊗ H₁).left ⟶ H₁.left ⨿ H₂.left) → V),
      ∏ i : MK, k ((lift (1 : H₁ ⊗ H₁ ⟶ H₁) (1 : H₁ ⊗ H₁ ⟶ H₁)).left ≫ mφ H₁ H₂ a b i) ^ mε i = 1 := by
    intro V _ k
    rw [Fintype.prod_sum_type]
    simp only [kappa_comp_mφ, Sum.elim_inl, Sum.elim_inr, mε, zpow_neg, Finset.prod_inv_distrib]
    rw [prod_alt_const, prod_alt_const, inv_one, _root_.mul_one]
  obtain ⟨u, hu, hv⟩ := exists_gen hL (φ' := mφ H₁ H₂ a b) (ε' := mε)
    (fun V _ k => by
      refine Eq.trans (DVR.prod_sum₂ (K := MK) (K' := MK) (U := V) _
        (c := ∏ i, k (mφ H₁ H₂ a b i) ^ mε i) rfl (DVR.prod_neg _ _ (p V k))) ?_
      simp)
    (LB.mulGen _ _ _ _ _ t (LB.invGen _ _ _ (LB.pullGen _ _ _ t (lift (1 : H₁ ⊗ H₁ ⟶ H₁) (1 : H₁ ⊗ H₁ ⟶ H₁)).left)))
    (DVR.mulGen_isGen _ _ _ _ _ _ _ ht (DVR.invGen_isGen _ _ _ _ (DVR.pullGen_isGen _ _ _ _ ht _)))
  refine ⟨u, hu, fun y J hJ => ?_⟩
  have e : (lift (1 : 𝟙_ (Over S) ⟶ H₁) (1 : 𝟙_ (Over S) ⟶ H₁)).left ≫ (lift (1 : H₁ ⊗ H₁ ⟶ H₁) (1 : H₁ ⊗ H₁ ⟶ H₁)).left =
      (lift (1 : 𝟙_ (Over S) ⟶ H₁) (1 : 𝟙_ (Over S) ⟶ H₁)).left := by
    rw [← Over.comp_left, comp_lift, MonObj.comp_one]
  rw [hv _ _ y J hJ, val_mul hJ, val_inv, val_pull hJ, e, mul_inv_cancel]

end GlobalTheory.HomMum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHomMumfordGeneratorNormalisedOrigin =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescendedGeneratorThickenedAbelianPart =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescendedGeneratorThickenedAbelianPart", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MK\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordGeneratorAbelianPartAtLevelImports\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsRatioPoints\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.UnifPreCAndCoordCorrespond\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two
open GlobalTheory.HomMum

noncomputable section
namespace GlobalTheory.HomMum

open GlobalTheory.EndRosati



theorem exists_gen_thick_two : ∀ {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D₁ D₂ : DegData R I} {A₁ A₂ : PolAV (Sp (FractionRing R))} {G₁ G₂ : Over (Sp R)} [GrpObj G₁] [IsCommMonObj G₁] [GrpObj G₂] [IsCommMonObj G₂] (U₁ : UnifPre I D₁ A₁ G₁) (U₂ : UnifPre I D₂ A₂ G₂) (e : ℕ) {f g : G₁ ⟶ G₂} [IsMonHom f] [IsMonHom g] {fB gB : D₁.toPre.P.A ⟶ D₂.toPre.P.A} [IsMonHom fB] [IsMonHom gB], (Over.pullback (thick R I e)).map f ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map fB → (Over.pullback (thick R I e)).map g ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map gB → ∀ (v : LB.Gen (LB.LinComb (JN D₁.toPre D₂.toPre) (fun k => mφ (thickObj R I e G₁) (thickObj R I e G₂) ((Over.pullback (thick R I e)).map f) ((Over.pullback (thick R I e)).map g) k ≫ coprod.map (U₁.gt e).pG.left (U₂.gt e).pG.left) mε)), v.IsGen → (∀ (T : Over (Sp (R ⧸ I ^ (e + 1)))) (z : T.left) (J : (T.left ⟶ D₁.toPre.P.A.left ⨿ D₂.toPre.P.A.left) → (JN D₁.toPre D₂.toPre).ι), Good (JN D₁.toPre D₂.toPre) z J → ∀ x x' y y' : T ⟶ thickObj R I e G₁, x ≫ (U₁.gt e).q = x' ≫ (U₁.gt e).q → y ≫ (U₁.gt e).q = y' ≫ (U₁.gt e).q → val v (lift x y).left z J = val v (lift x' y').left z J) → ∃ t : LB.Gen (LB.LinComb (JN D₁.toPre D₂.toPre) (fun k => pullback.fst (D₁.toPre.P.A ⊗ D₁.toPre.P.A).hom (thick R I e) ≫ mφ D₁.toPre.P.A D₂.toPre.P.A fB gB k) mε), t.IsGen := by
  intro R _ _ I D₁ D₂ A₁ A₂ G₁ G₂ _ _ _ _ U₁ U₂ e f g _ _ fB gB _ _ hf hg v hv hi
  have hM := jn_isLB D₁.toPre D₂.toPre
  have := (U₁.gt e).q_affine
  have pp : ∀ {c : G₁ ⟶ G₂} {cB : D₁.toPre.P.A ⟶ D₂.toPre.P.A},
      (Over.pullback (thick R I e)).map c ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map cB →
      push (U₂.gt e).pG ((Over.pullback (thick R I e)).map c) = (U₁.gt e).pG ≫ cB := fun {c cB} h => by
    rw [push, GtCoord.pG, ← Functor.map_comp_assoc, h, Functor.map_comp_assoc, Category.assoc]
    exact congrArg _ (GlobalTheory.EndRosati.push_fstG e cB)
  let m := (U₁.gt e).q ⊗ₘ (U₁.gt e).q
  have : Flat m.left := MorphismProperty.pullbackMap (P := @Flat) (U₁.gt e).q_flat (U₁.gt e).q_flat
    (Over.w (U₁.gt e).q).symm (Over.w (U₁.gt e).q).symm
  have : Surjective m.left :=
    have : MorphismProperty.IsStableUnderComposition @Surjective.{0} := ⟨fun _ _ _ _ => inferInstance⟩
    MorphismProperty.pullbackMap (P := @Surjective) (U₁.gt e).q_surj (U₁.gt e).q_surj
      (Over.w (U₁.gt e).q).symm (Over.w (U₁.gt e).q).symm
  have qc : QuasiCompact (U₁.gt e).q.left := inferInstance
  have : QuasiCompact m.left := MorphismProperty.pullbackMap (P := @QuasiCompact) qc qc
    (Over.w (U₁.gt e).q).symm (Over.w (U₁.gt e).q).symm
  let Be := thickObj R I e D₁.toPre.P.A
  let π := lift (push (fstG I e D₁.toPre.P.A) (fst Be Be)) (push (fstG I e D₁.toPre.P.A) (snd Be Be))
  have hπ : m.left ≫ π.left = (lift (push (U₁.gt e).pG (fst _ _)) (push (U₁.gt e).pG (snd _ _))).left := by
    refine (GlobalTheory.EndRosati.lift_push (fstG I e D₁.toPre.P.A) (fst _ _ ≫ (U₁.gt e).q) (snd _ _ ≫ (U₁.gt e).q)).trans ?_
    simp only [push, Functor.map_comp, Category.assoc]
    rfl
  have hφ : ∀ k, mφ (thickObj R I e G₁) (thickObj R I e G₂) ((Over.pullback (thick R I e)).map f)
      ((Over.pullback (thick R I e)).map g) k ≫ coprod.map (U₁.gt e).pG.left (U₂.gt e).pG.left =
      m.left ≫ π.left ≫ mφ D₁.toPre.P.A D₂.toPre.P.A fB gB k := fun k => by
    rw [← Category.assoc, hπ, mφ_push (U₁.gt e).pG (U₂.gt e).pG (TorusCoord.im_mul (U₁.gt e))
      (TorusCoord.im_mul (U₂.gt e)) (pp hf) (pp hg) (fst _ _) (snd _ _) k, lift_fst_snd]
    exact (Category.id_comp _).symm
  obtain ⟨v', hv', vv⟩ := exists_gen hM (φ' := fun k => m.left ≫ π.left ≫ mφ D₁.toPre.P.A D₂.toPre.P.A fB gB k)
    (ε' := mε) (fun V _ h => Finset.prod_congr rfl fun k _ => congrArg (h · ^ mε k) (hφ k)) v hv
  obtain ⟨t, ht, -⟩ := CoordCompare.exists_gen_of_val_eq hM _ _ m.left v' hv' fun Z r r' z J hJ h => by
    have hw : r ≫ (thickObj R I e G₁ ⊗ thickObj R I e G₁).hom = r' ≫ (thickObj R I e G₁ ⊗ thickObj R I e G₁).hom := by
      rw [← Over.w m, reassoc_of% h]
    let T := Over.mk (r' ≫ (thickObj R I e G₁ ⊗ thickObj R I e G₁).hom)
    let s : T ⟶ thickObj R I e G₁ ⊗ thickObj R I e G₁ := Over.homMk r hw
    let s' : T ⟶ thickObj R I e G₁ ⊗ thickObj R I e G₁ := Over.homMk r' rfl
    have hs : s ≫ m = s' ≫ m := Over.OverMorphism.ext h
    have := hi T z J hJ (s ≫ fst _ _) (s' ≫ fst _ _) (s ≫ snd _ _) (s' ≫ snd _ _)
      (by simpa [m] using congrArg (· ≫ fst _ _) hs) (by simpa [m] using congrArg (· ≫ snd _ _) hs)
    rw [lift_comp_fst_snd, lift_comp_fst_snd] at this
    exact (vv _ r z J hJ).trans (this.trans (vv _ r' z J hJ).symm)
  have hn : (lift ((Over.pullback (thick R I e)).map (fst D₁.toPre.P.A D₁.toPre.P.A))
      ((Over.pullback (thick R I e)).map (snd D₁.toPre.P.A D₁.toPre.P.A))).left ≫ π.left =
      pullback.fst (D₁.toPre.P.A ⊗ D₁.toPre.P.A).hom (thick R I e) := by
    refine (GlobalTheory.EndRosati.lift_push (fstG I e D₁.toPre.P.A) _ _).trans ?_
    rw [GlobalTheory.EndRosati.push_fstG, GlobalTheory.EndRosati.push_fstG, lift_comp_fst_snd]
    rfl
  have := (GlobalTheory.EndRosati.gen_iff_sum hM _ _).1 ⟨_, DVR.pullGen_isGen _ _ _ _ ht (lift ((Over.pullback (thick R I e)).map
    (fst D₁.toPre.P.A D₁.toPre.P.A)) ((Over.pullback (thick R I e)).map (snd D₁.toPre.P.A D₁.toPre.P.A))).left⟩
  refine (GlobalTheory.EndRosati.gen_iff_sum hM _ _).2 (Eq.trans (Finset.sum_congr rfl fun k _ => ?_) this)
  rw [← hn, Category.assoc]

end GlobalTheory.HomMum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescendedGeneratorThickenedAbelianPart =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorMultiplicativeOnQuotientKernel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorMultiplicativeOnQuotientKernel", "h": "module\n\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TwistBaseChangeAndValuationStatements\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MK\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.RosatiAdjointAbelianPartAndClassifyingMapLinear\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordGeneratorAbelianPartAtLevelImports\nimport Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ExistsUniqueNormPrim\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two
open GlobalTheory.HomMum

noncomputable section

namespace GlobalTheory.HomMum

theorem prod_mφ {S : Scheme.{0}} {H₁ H₂ : Over S} [GrpObj H₁] [IsCommMonObj H₁] [GrpObj H₂] [IsCommMonObj H₂]
    (a b : H₁ ⟶ H₂) {T : Over S} (x y : T ⟶ H₁) {V : Type} [CommGroup V] (h : (T.left ⟶ H₁.left ⨿ H₂.left) → V) :
    ∏ k, h ((lift x y).left ≫ mφ H₁ H₂ a b k) ^ mε k =
      (h (((x ≫ a) * (y ≫ b)).left ≫ coprod.inr) * (h ((x ≫ a).left ≫ coprod.inr))⁻¹ *
        (h ((y ≫ b).left ≫ coprod.inr))⁻¹ * h ((1 : T ⟶ H₂).left ≫ coprod.inr)) *
      (h ((x * y).left ≫ coprod.inl) * (h (x.left ≫ coprod.inl))⁻¹ * (h (y.left ≫ coprod.inl))⁻¹ *
        h ((1 : T ⟶ H₁).left ≫ coprod.inl))⁻¹ := by
  rw [Fintype.prod_sum_type]
  refine congrArg₂ (· * ·) ((Finset.prod_congr rfl fun I _ => ?_).trans
    (_root_.GlobalTheory.JetSer.prod_lam (x ≫ a) (y ≫ b) (fun q => h (q ≫ coprod.inr))))
    ((Finset.prod_congr rfl fun I _ => ?_).trans ((Finset.prod_inv_distrib _).trans
      (congrArg (·⁻¹) (_root_.GlobalTheory.JetSer.prod_lam x y (fun q => h (q ≫ coprod.inl))))))
  · rw [mφ_comp]; rfl
  · rw [mφ_comp]; exact zpow_neg _ _

theorem push_comp_two {S S' : Scheme.{0}} {j : S' ⟶ S} {E₁ E₂ : Over S'} {A₁ A₂ : Over S}
    (p₁ : (Over.map j).obj E₁ ⟶ A₁) (p₂ : (Over.map j).obj E₂ ⟶ A₂) {c' : E₁ ⟶ E₂} {c : A₁ ⟶ A₂}
    (h : GlobalTheory.EndRosati.push p₂ c' = p₁ ≫ c) {T : Over S'} (x : T ⟶ E₁) :
    GlobalTheory.EndRosati.push p₂ (x ≫ c') = GlobalTheory.EndRosati.push p₁ x ≫ c := by
  simp only [GlobalTheory.EndRosati.push, Functor.map_comp, Category.assoc] at h ⊢
  rw [h]

theorem push_pG_pair {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D₁ D₂ : DegData R I}
    {A₁ A₂ : PolAV (Sp (FractionRing R))} {G₁ G₂ : Over (Sp R)} [GrpObj G₁] [IsCommMonObj G₁] [GrpObj G₂]
    [IsCommMonObj G₂] (U₁ : UnifPre I D₁ A₁ G₁) (U₂ : UnifPre I D₂ A₂ G₂) (e : ℕ) {f : G₁ ⟶ G₂}
    {fB : D₁.toPre.P.A ⟶ D₂.toPre.P.A}
    (hf : (Over.pullback (thick R I e)).map f ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map fB) :
    GlobalTheory.EndRosati.push (U₂.gt e).pG ((Over.pullback (thick R I e)).map f) = (U₁.gt e).pG ≫ fB := by
  rw [GlobalTheory.EndRosati.push]
  simp only [GtCoord.pG]
  rw [← Functor.map_comp_assoc, hf, Functor.map_comp_assoc, Category.assoc]
  exact congrArg _ (GlobalTheory.EndRosati.push_fstG e fB)

theorem add_left_two {P₁ P₂ V : Type} [CommGroup P₁] [CommGroup P₂] [CommGroup V] (W₁ : P₁ → V) (W₂ : P₂ → V)
    {x x' y : P₁} {a a' b : P₂} {c₁ c₂ v v₁ v₂ : V}
    (h₁ : 1 = W₁ (x * x' * y) * (W₁ (x * x'))⁻¹ * (W₁ (x * y))⁻¹ * (W₁ (x' * y))⁻¹ * W₁ x * W₁ x' * W₁ y *
      (W₁ 1)⁻¹ * c₁)
    (h₂ : 1 = W₂ (a * a' * b) * (W₂ (a * a'))⁻¹ * (W₂ (a * b))⁻¹ * (W₂ (a' * b))⁻¹ * W₂ a * W₂ a' * W₂ b *
      (W₂ 1)⁻¹ * c₂)
    (h : v * c₁ = c₂ * (v₁ * v₂)) :
    (W₂ (a * a' * b) * (W₂ (a * a'))⁻¹ * (W₂ b)⁻¹ * W₂ 1) * (W₁ (x * x' * y) * (W₁ (x * x'))⁻¹ * (W₁ y)⁻¹ * W₁ 1)⁻¹ *
        v =
      ((W₂ (a * b) * (W₂ a)⁻¹ * (W₂ b)⁻¹ * W₂ 1) * (W₁ (x * y) * (W₁ x)⁻¹ * (W₁ y)⁻¹ * W₁ 1)⁻¹ * v₁) *
        ((W₂ (a' * b) * (W₂ a')⁻¹ * (W₂ b)⁻¹ * W₂ 1) * (W₁ (x' * y) * (W₁ x')⁻¹ * (W₁ y)⁻¹ * W₁ 1)⁻¹ * v₂) := by
  have e₁ := congrArg Additive.ofMul h₁
  have e₂ := congrArg Additive.ofMul h₂
  have e := congrArg Additive.ofMul h
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_inv, ofMul_one] at e₁ e₂ e ⊢
  linear_combination (norm := abel) e₁ - e₂ + e

theorem add_right_two {P₁ P₂ V : Type} [CommGroup P₁] [CommGroup P₂] [CommGroup V] (W₁ : P₁ → V) (W₂ : P₂ → V)
    {x x' y : P₁} {a b b' : P₂} {c₁ c₂ v v₁ v₂ : V}
    (h₁ : 1 = W₁ (y * x * x') * (W₁ (y * x))⁻¹ * (W₁ (y * x'))⁻¹ * (W₁ (x * x'))⁻¹ * W₁ y * W₁ x * W₁ x' *
      (W₁ 1)⁻¹ * c₁)
    (h₂ : 1 = W₂ (a * b * b') * (W₂ (a * b))⁻¹ * (W₂ (a * b'))⁻¹ * (W₂ (b * b'))⁻¹ * W₂ a * W₂ b * W₂ b' *
      (W₂ 1)⁻¹ * c₂)
    (h : v * c₁ = c₂ * (v₁ * v₂)) :
    (W₂ (a * (b * b')) * (W₂ a)⁻¹ * (W₂ (b * b'))⁻¹ * W₂ 1) *
        (W₁ (y * (x * x')) * (W₁ y)⁻¹ * (W₁ (x * x'))⁻¹ * W₁ 1)⁻¹ * v =
      ((W₂ (a * b) * (W₂ a)⁻¹ * (W₂ b)⁻¹ * W₂ 1) * (W₁ (y * x) * (W₁ y)⁻¹ * (W₁ x)⁻¹ * W₁ 1)⁻¹ * v₁) *
        ((W₂ (a * b') * (W₂ a)⁻¹ * (W₂ b')⁻¹ * W₂ 1) * (W₁ (y * x') * (W₁ y)⁻¹ * (W₁ x')⁻¹ * W₁ 1)⁻¹ * v₂) := by
  rw [← _root_.mul_assoc a b b', ← _root_.mul_assoc y x x']
  have e₁ := congrArg Additive.ofMul h₁
  have e₂ := congrArg Additive.ofMul h₂
  have e := congrArg Additive.ofMul h
  apply Additive.ofMul.injective
  simp only [ofMul_mul, ofMul_inv, ofMul_one] at e₁ e₂ e ⊢
  linear_combination (norm := abel) e₁ - e₂ + e

end GlobalTheory.HomMum

end

namespace GlobalTheory.HomMum



theorem exists_gen_mul_level : ∀ {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D₁ D₂ : DegData R I} {A₁ A₂ : PolAV (Sp (FractionRing R))} {G₁ G₂ : Over (Sp R)} [GrpObj G₁] [IsCommMonObj G₁] [GrpObj G₂] [IsCommMonObj G₂] (U₁ : UnifPre I D₁ A₁ G₁) (U₂ : UnifPre I D₂ A₂ G₂) (e : ℕ) {f g : G₁ ⟶ G₂} [IsMonHom f] [IsMonHom g] {fB gB : D₁.toPre.P.A ⟶ D₂.toPre.P.A} [IsMonHom fB] [IsMonHom gB], (Over.pullback (thick R I e)).map f ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map fB → (Over.pullback (thick R I e)).map g ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map gB → ∀ (W : LB.Iso ((join U₁.LG.L U₂.LG.L).pull (coprod.map (fstG I e G₁).left (fstG I e G₂).left)) ((JN D₁.toPre D₂.toPre).pull (coprod.map (U₁.gt e).pG.left (U₂.gt e).pG.left))), W.IsGen → (∀ (Z : Scheme.{0}) (r : Z ⟶ (thickObj R I e G₁).left) (z : Z) (j : (JN D₁.toPre D₂.toPre).ι) (k : (join U₁.LG.L U₂.LG.L).ι), (U₁.gt e).pG.left (r z) ∈ D₁.toPre.P.L.U j.1 → (fstG I e G₁).left (r z) ∈ U₁.LG.L.U k.1 → gw W (r ≫ coprod.inl) z j (fun _ => k) = gw (U₁.w e) r z j.1 (fun _ => k.1)) → (∀ (Z : Scheme.{0}) (r : Z ⟶ (thickObj R I e G₂).left) (z : Z) (j : (JN D₁.toPre D₂.toPre).ι) (k : (join U₁.LG.L U₂.LG.L).ι), (U₂.gt e).pG.left (r z) ∈ D₂.toPre.P.L.U j.2 → (fstG I e G₂).left (r z) ∈ U₂.LG.L.U k.2 → gw W (r ≫ coprod.inr) z j (fun _ => k) = gw (U₂.w e) r z j.2 (fun _ => k.2)) → ∀ (u : LB.Gen (LB.LinComb (join U₁.LG.L U₂.LG.L) (mφ G₁ G₂ f g) mε)), u.IsGen → (∀ (T : Over (Sp R)) (z : T.left) (J : (T.left ⟶ G₁.left ⨿ G₂.left) → (join U₁.LG.L U₂.LG.L).ι), Good (join U₁.LG.L U₂.LG.L) z J → ∀ x x' y : T ⟶ G₁, val u (lift (x * x') y).left z J * cubV U₁.cubG z (rl J) x x' y = cubV U₂.cubG z (rr J) (x ≫ f) (x' ≫ f) (y ≫ g) * (val u (lift x y).left z J * val u (lift x' y).left z J) ∧ val u (lift y (x * x')).left z J * cubV U₁.cubG z (rl J) y x x' = cubV U₂.cubG z (rr J) (y ≫ f) (x ≫ g) (x' ≫ g) * (val u (lift y x).left z J * val u (lift y x').left z J)) → ∃ v : LB.Gen (LB.LinComb (JN D₁.toPre D₂.toPre) (fun k => mφ (thickObj R I e G₁) (thickObj R I e G₂) ((Over.pullback (thick R I e)).map f) ((Over.pullback (thick R I e)).map g) k ≫ coprod.map (U₁.gt e).pG.left (U₂.gt e).pG.left) mε), v.IsGen ∧ (∀ (T : Over (Sp (R ⧸ I ^ (e + 1)))) (z : T.left) (J : (T.left ⟶ D₁.toPre.P.A.left ⨿ D₂.toPre.P.A.left) → (JN D₁.toPre D₂.toPre).ι), Good (JN D₁.toPre D₂.toPre) z J → ∀ x x' y : T ⟶ thickObj R I e G₁, (Over.map (thick R I e)).map x ≫ (U₁.gt e).pG = 1 → val v (lift (x * x') y).left z J = val v (lift x y).left z J * val v (lift x' y).left z J ∧ val v (lift y (x * x')).left z J = val v (lift y x).left z J * val v (lift y x').left z J) := by
  intro R _ _ I D₁ D₂ A₁ A₂ G₁ G₂ _ _ _ _ U₁ U₂ e f g _ _ fB gB _ _ hf hg W hW hW₁ hW₂ u hu hadd
  let f' := (Over.pullback (thick R I e)).map f
  let g' := (Over.pullback (thick R I e)).map g
  haveI : Nonempty G₁.left := ⟨eSec G₁ (⊥ : PrimeSpectrum R)⟩
  haveI : Nonempty G₂.left := ⟨eSec G₂ (⊥ : PrimeSpectrum R)⟩
  have hL : (join U₁.LG.L U₂.LG.L).IsLB := join_isLB U₁.LG.isLB U₂.LG.isLB
  obtain ⟨u', hu', vu⟩ := exists_gen hL
    (φ' := fun k => mφ (thickObj R I e G₁) (thickObj R I e G₂) f' g' k ≫
      coprod.map (fstG I e G₁).left (fstG I e G₂).left) (ε' := mε)
    (fun V _ h => Finset.prod_congr rfl fun k _ => congrArg (h · ^ mε k) (by
      rw [mφ_push (fstG I e G₁) (fstG I e G₂) (GlobalTheory.EndRosati.fstG_mul e) (GlobalTheory.EndRosati.fstG_mul e)
        (GlobalTheory.EndRosati.push_fstG e f) (GlobalTheory.EndRosati.push_fstG e g) (fst _ _) (snd _ _) k, lift_fst_snd,
        Over.id_left, Category.id_comp]))
    (LB.pullGen (join U₁.LG.L U₂.LG.L) _ _ u
      (lift (GlobalTheory.EndRosati.push (fstG I e G₁) (fst (thickObj R I e G₁) (thickObj R I e G₁)))
        (GlobalTheory.EndRosati.push (fstG I e G₁) (snd (thickObj R I e G₁) (thickObj R I e G₁)))).left)
    (DVR.pullGen_isGen _ _ _ _ hu _)
  obtain ⟨v, hv, vv⟩ := GlobalTheory.EndRosati.exists_gen_through hL (jn_isLB D₁.toPre D₂.toPre) W hW
    (fun k => mφ (thickObj R I e G₁) (thickObj R I e G₂) f' g' k) mε u' hu'
  refine ⟨v, hv, fun T z J hJ x x' y hx => ?_⟩
  choose N hN using fun χ : T.left ⟶ G₁.left ⨿ G₂.left => exists_chart hL (χ z)
  have hN' : Good (join U₁.LG.L U₂.LG.L) z N := hN
  have gJ₁ : Good D₁.toPre.P.L z (rl (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) := (isPart_inl _ _).good hJ
  have gJ₂ : Good D₂.toPre.P.L z (rr (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) := (isPart_inr _ _).good hJ
  have gN₁ : Good U₁.LG.L z (rl N) := (isPart_inl _ _).good hN'
  have gN₂ : Good U₂.LG.L z (rr N) := (isPart_inr _ _).good hN'
  let W₁ : (T ⟶ thickObj R I e G₁) → (T.left.presheaf.stalk z)ˣ := fun q =>
    GlobalTheory.TorusInvariance.wVal U₁ e z (rl (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) (rl N) q.left
  let W₂ : (T ⟶ thickObj R I e G₂) → (T.left.presheaf.stalk z)ˣ := fun q =>
    GlobalTheory.TorusInvariance.wVal U₂ e z (rr (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) (rr N) q.left
  have hinl : ∀ q : T ⟶ thickObj R I e G₁, gw W (q.left ≫ coprod.inl) z
      (J ((q.left ≫ coprod.inl) ≫ coprod.map (U₁.gt e).pG.left (U₂.gt e).pG.left))
      (fun _ => N ((q.left ≫ coprod.inl) ≫ coprod.map (fstG I e G₁).left (fstG I e G₂).left)) = W₁ q := fun q => by
    have := hW₁ T.left q.left z (J ((q.left ≫ (U₁.gt e).pG.left) ≫ coprod.inl))
      (N ((q.left ≫ (fstG I e G₁).left) ≫ coprod.inl)) (gJ₁ _) (gN₁ _)
    simp only [Category.assoc, coprod.inl_map] at this ⊢
    exact this
  have hinr : ∀ q : T ⟶ thickObj R I e G₂, gw W (q.left ≫ coprod.inr) z
      (J ((q.left ≫ coprod.inr) ≫ coprod.map (U₁.gt e).pG.left (U₂.gt e).pG.left))
      (fun _ => N ((q.left ≫ coprod.inr) ≫ coprod.map (fstG I e G₁).left (fstG I e G₂).left)) = W₂ q := fun q => by
    have := hW₂ T.left q.left z (J ((q.left ≫ (U₂.gt e).pG.left) ≫ coprod.inr))
      (N ((q.left ≫ (fstG I e G₂).left) ≫ coprod.inr)) (gJ₂ _) (gN₂ _)
    simp only [Category.assoc, coprod.inr_map] at this ⊢
    exact this
  let p₁ : (T ⟶ thickObj R I e G₁) → ((Over.map (thick R I e)).obj T ⟶ G₁) := GlobalTheory.EndRosati.push (fstG I e G₁)
  let p₂ : (T ⟶ thickObj R I e G₂) → ((Over.map (thick R I e)).obj T ⟶ G₂) := GlobalTheory.EndRosati.push (fstG I e G₂)
  let q₁ : (T ⟶ thickObj R I e G₁) → ((Over.map (thick R I e)).obj T ⟶ D₁.toPre.P.A) :=
    GlobalTheory.EndRosati.push (U₁.gt e).pG
  let q₂ : (T ⟶ thickObj R I e G₂) → ((Over.map (thick R I e)).obj T ⟶ D₂.toPre.P.A) :=
    GlobalTheory.EndRosati.push (U₂.gt e).pG
  have hV : ∀ a b : T ⟶ thickObj R I e G₁, val v (lift a b).left z J =
      (W₂ ((a ≫ f') * (b ≫ g')) * (W₂ (a ≫ f'))⁻¹ * (W₂ (b ≫ g'))⁻¹ * W₂ 1) *
        (W₁ (a * b) * (W₁ a)⁻¹ * (W₁ b)⁻¹ * W₁ 1)⁻¹ *
        @id (T.left.presheaf.stalk z)ˣ (val u (lift (p₁ a) (p₁ b)).left z N) :=
    fun a b => by
      refine (vv _ _ z J N hJ hN').trans (congrArg₂ (· * ·) ?_
        ((vu _ _ z N hN').trans ((val_pull hN' _ _ _).trans (congrArg (val u · z N) (GlobalTheory.EndRosati.lift_push _ a b)))))
      refine (prod_mφ f' g' a b (fun ψ => gw W ψ z (J (ψ ≫ coprod.map (U₁.gt e).pG.left (U₂.gt e).pG.left))
        (fun _ => N (ψ ≫ coprod.map (fstG I e G₁).left (fstG I e G₂).left)))).trans ?_
      erw [hinr ((a ≫ f') * (b ≫ g')), hinr (a ≫ f'), hinr (b ≫ g'), hinr 1, hinl (a * b), hinl a, hinl b, hinl 1]
  have hc₁ : ∀ a b c : T ⟶ thickObj R I e G₁,
      @id (T.left.presheaf.stalk z)ˣ (cubV D₁.toPre.cub (T := (Over.map (thick R I e)).obj T) z
        (rl (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) (q₁ a) (q₁ b) (q₁ c)) =
      W₁ (a * b * c) * (W₁ (a * b))⁻¹ * (W₁ (a * c))⁻¹ * (W₁ (b * c))⁻¹ * W₁ a * W₁ b * W₁ c * (W₁ 1)⁻¹ *
        @id (T.left.presheaf.stalk z)ˣ (cubV U₁.cubG (T := (Over.map (thick R I e)).obj T) z (rl N) (p₁ a) (p₁ b) (p₁ c)) :=
    fun a b c => (GlobalTheory.TorusInvariance.cube_val U₁ ![a, b, c] gJ₁ gN₁).trans
      (congrArg (· * _) (GlobalTheory.TorusInvariance.prod_psum a b c
        (GlobalTheory.TorusInvariance.wVal U₁ e z (rl (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) (rl N))))
  have hc₂ : ∀ a b c : T ⟶ thickObj R I e G₂,
      @id (T.left.presheaf.stalk z)ˣ (cubV D₂.toPre.cub (T := (Over.map (thick R I e)).obj T) z
        (rr (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) (q₂ a) (q₂ b) (q₂ c)) =
      W₂ (a * b * c) * (W₂ (a * b))⁻¹ * (W₂ (a * c))⁻¹ * (W₂ (b * c))⁻¹ * W₂ a * W₂ b * W₂ c * (W₂ 1)⁻¹ *
        @id (T.left.presheaf.stalk z)ˣ (cubV U₂.cubG (T := (Over.map (thick R I e)).obj T) z (rr N) (p₂ a) (p₂ b) (p₂ c)) :=
    fun a b c => (GlobalTheory.TorusInvariance.cube_val U₂ ![a, b, c] gJ₂ gN₂).trans
      (congrArg (· * _) (GlobalTheory.TorusInvariance.prod_psum a b c
        (GlobalTheory.TorusInvariance.wVal U₂ e z (rr (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) (rr N))))
  have C₁ := isCub_cubV D₁.toPre.cub (T := (Over.map (thick R I e)).obj T) gJ₁
  have C₂ := isCub_cubV D₂.toPre.cub (T := (Over.map (thick R I e)).obj T) gJ₂
  have c₁ : ∀ a b c, q₁ a = 1 → _ := fun a b c h =>
    ((congrArg (cubV D₁.toPre.cub (T := (Over.map (thick R I e)).obj T) z
      (rl (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) · (q₁ b) (q₁ c)) h).trans (C₁.face _ _)).symm.trans (hc₁ a b c)
  have c₂ : ∀ a b c, q₁ b = 1 → _ := fun a b c h =>
    ((congrArg (cubV D₁.toPre.cub (T := (Over.map (thick R I e)).obj T) z
      (rl (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) (q₁ a) · (q₁ c)) h).trans (C₁.face₂ _ _)).symm.trans (hc₁ a b c)
  have d₁ : ∀ a b c, q₂ a = 1 → _ := fun a b c h =>
    ((congrArg (cubV D₂.toPre.cub (T := (Over.map (thick R I e)).obj T) z
      (rr (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) · (q₂ b) (q₂ c)) h).trans (C₂.face _ _)).symm.trans (hc₂ a b c)
  have d₂ : ∀ a b c, q₂ b = 1 → _ := fun a b c h =>
    ((congrArg (cubV D₂.toPre.cub (T := (Over.map (thick R I e)).obj T) z
      (rr (M₁ := D₁.toPre.P.L) (M₂ := D₂.toPre.P.L) J) (q₂ a) · (q₂ c)) h).trans (C₂.face₂ _ _)).symm.trans (hc₂ a b c)
  have hx' : q₁ x = 1 := hx
  have xf : q₂ (x ≫ f') = 1 :=
    (push_comp_two _ _ (push_pG_pair U₁ U₂ e hf) x).trans (by rw [show GlobalTheory.EndRosati.push (U₁.gt e).pG x = 1 from hx, MonObj.one_comp])
  have xg : q₂ (x ≫ g') = 1 :=
    (push_comp_two _ _ (push_pG_pair U₁ U₂ e hg) x).trans (by rw [show GlobalTheory.EndRosati.push (U₁.gt e).pG x = 1 from hx, MonObj.one_comp])
  have pf : ∀ a, p₁ a ≫ f = p₂ (a ≫ f') := fun a => (push_comp_two _ _ (GlobalTheory.EndRosati.push_fstG e f) a).symm
  have pg : ∀ a, p₁ a ≫ g = p₂ (a ≫ g') := fun a => (push_comp_two _ _ (GlobalTheory.EndRosati.push_fstG e g) a).symm
  have pm : p₁ x * p₁ x' = p₁ (x * x') := (GlobalTheory.EndRosati.fstG_mul e x x').symm
  obtain ⟨r₁, r₂⟩ := hadd ((Over.map (thick R I e)).obj T) z N hN' (p₁ x) (p₁ x') (p₁ y)
  rw [pm, pf, pf, pg] at r₁
  rw [pm, pf, pg, pg] at r₂
  rw [hV, hV, hV, hV, hV, hV, MonObj.mul_comp x x' f', MonObj.mul_comp x x' g']
  exact ⟨add_left_two W₁ W₂ (c₁ _ _ _ hx') (d₁ _ _ _ xf) r₁, add_right_two W₁ W₂ (c₂ _ _ _ hx') (d₂ _ _ _ xg) r₂⟩

end GlobalTheory.HomMum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorMultiplicativeOnQuotientKernel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGluedUniformisationIsoOneLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGluedUniformisationIsoOneLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.MK\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two
open GlobalTheory.HomMum

noncomputable section

namespace GlobalTheory.Mum.Two.GlueLevel

section General

variable {X₁ X₂ B₁ B₂ H₁ H₂ : Scheme.{0}} {M₁ : LB B₁} {M₂ : LB B₂} {L₁ : LB H₁} {L₂ : LB H₂}

theorem map_inl_apply (f₁ : X₁ ⟶ B₁) (f₂ : X₂ ⟶ B₂) (x : X₁) :
    (coprod.map f₁ f₂) ((coprod.inl : X₁ ⟶ X₁ ⨿ X₂) x) = (coprod.inl : B₁ ⟶ B₁ ⨿ B₂) (f₁ x) := by
  change ((coprod.inl : X₁ ⟶ X₁ ⨿ X₂) ≫ coprod.map f₁ f₂) x = _
  rw [coprod.inl_map]; rfl

theorem map_inr_apply (f₁ : X₁ ⟶ B₁) (f₂ : X₂ ⟶ B₂) (x : X₂) :
    (coprod.map f₁ f₂) ((coprod.inr : X₂ ⟶ X₁ ⨿ X₂) x) = (coprod.inr : B₂ ⟶ B₁ ⨿ B₂) (f₂ x) := by
  change ((coprod.inr : X₂ ⟶ X₁ ⨿ X₂) ≫ coprod.map f₁ f₂) x = _
  rw [coprod.inr_map]; rfl

theorem mem_pull_inl (M₁ : LB B₁) (M₂ : LB B₂) (f₁ : X₁ ⟶ B₁) (f₂ : X₂ ⟶ B₂) (x : X₁)
    (J : PUnit → (join M₁ M₂).ι) :
    (coprod.inl : X₁ ⟶ X₁ ⨿ X₂) x ∈ ((join M₁ M₂).pull (coprod.map f₁ f₂)).U J ↔
      x ∈ (M₁.pull f₁).U (fun _ => (J PUnit.unit).1) := by
  rw [mem_pull, mem_pull, map_inl_apply]
  exact (isPart_inl M₁ M₂).mem _ _

theorem mem_pull_inr (M₁ : LB B₁) (M₂ : LB B₂) (f₁ : X₁ ⟶ B₁) (f₂ : X₂ ⟶ B₂) (x : X₂)
    (J : PUnit → (join M₁ M₂).ι) :
    (coprod.inr : X₂ ⟶ X₁ ⨿ X₂) x ∈ ((join M₁ M₂).pull (coprod.map f₁ f₂)).U J ↔
      x ∈ (M₂.pull f₂).U (fun _ => (J PUnit.unit).2) := by
  rw [mem_pull, mem_pull, map_inr_apply]
  exact (isPart_inr M₁ M₂).mem _ _

end General

section Glue

variable {X₁ X₂ B₁ B₂ H₁ H₂ : Scheme.{0}} {M₁ : LB B₁} {M₂ : LB B₂} {L₁ : LB H₁} {L₂ : LB H₂}
  {p₁ : X₁ ⟶ B₁} {p₂ : X₂ ⟶ B₂} {f₁ : X₁ ⟶ H₁} {f₂ : X₂ ⟶ H₂}

theorem gm_div_inl (x : X₁) (i j : (PUnit → (join M₁ M₂).ι) × (PUnit → (join L₁ L₂).ι))
    (hi : (coprod.inl : X₁ ⟶ X₁ ⨿ X₂) x ∈
      (LB.div ((join M₁ M₂).pull (coprod.map p₁ p₂)) ((join L₁ L₂).pull (coprod.map f₁ f₂))).U i)
    (hj : (coprod.inl : X₁ ⟶ X₁ ⨿ X₂) x ∈
      (LB.div ((join M₁ M₂).pull (coprod.map p₁ p₂)) ((join L₁ L₂).pull (coprod.map f₁ f₂))).U j) :
    gm coprod.inl x _
        ((LB.div ((join M₁ M₂).pull (coprod.map p₁ p₂)) ((join L₁ L₂).pull (coprod.map f₁ f₂))).g i j) =
      gm (𝟙 X₁) x _ ((LB.div (M₁.pull p₁) (L₁.pull f₁)).g
        (fun _ => (i.1 PUnit.unit).1, fun _ => (i.2 PUnit.unit).1)
        (fun _ => (j.1 PUnit.unit).1, fun _ => (j.2 PUnit.unit).1)) := by
  obtain ⟨I₁, K₁⟩ := i
  obtain ⟨I₂, K₂⟩ := j
  have a₁ := mem_pull.1 hi.1
  have a₂ := mem_pull.1 hj.1
  have b₁ := mem_pull.1 hi.2
  have b₂ := mem_pull.1 hj.2
  rw [map_inl_apply] at a₁ a₂ b₁ b₂
  have a₁' := ((isPart_inl M₁ M₂).mem _ _).1 a₁
  have a₂' := ((isPart_inl M₁ M₂).mem _ _).1 a₂
  have b₁' := ((isPart_inl L₁ L₂).mem _ _).1 b₁
  have b₂' := ((isPart_inl L₁ L₂).mem _ _).1 b₂
  have d := gm_div_g (L := join M₁ M₂) (F := coprod.map p₁ p₂) (L' := (join L₁ L₂).pull (coprod.map f₁ f₂))
    coprod.inl x (I₁ PUnit.unit) (I₂ PUnit.unit) K₁ K₂ (mem_pull.1 hi.1) (mem_pull.1 hj.1) hi.2 hj.2
  have d₁ := gm_div_g (L := M₁) (F := p₁) (L' := L₁.pull f₁) (𝟙 X₁) x (I₁ PUnit.unit).1 (I₂ PUnit.unit).1
    (fun _ => (K₁ PUnit.unit).1) (fun _ => (K₂ PUnit.unit).1) a₁' a₂' (mem_pull.2 b₁') (mem_pull.2 b₂')
  refine d.trans (Eq.trans ?_ d₁.symm)
  rw [gm_pull_g (join L₁ L₂) (coprod.map f₁ f₂) coprod.inl x K₁ K₂ hi.2 hj.2,
    gm_pull_g L₁ f₁ (𝟙 X₁) x _ _ (mem_pull.2 b₁') (mem_pull.2 b₂'), coprod.inl_map, coprod.inl_map,
    (isPart_inl M₁ M₂).g _ p₁ x _ _ a₁' a₂', (isPart_inl L₁ L₂).g _ f₁ x _ _ b₁' b₂', Category.id_comp,
    Category.id_comp]

theorem gm_div_inr (x : X₂) (i j : (PUnit → (join M₁ M₂).ι) × (PUnit → (join L₁ L₂).ι))
    (hi : (coprod.inr : X₂ ⟶ X₁ ⨿ X₂) x ∈
      (LB.div ((join M₁ M₂).pull (coprod.map p₁ p₂)) ((join L₁ L₂).pull (coprod.map f₁ f₂))).U i)
    (hj : (coprod.inr : X₂ ⟶ X₁ ⨿ X₂) x ∈
      (LB.div ((join M₁ M₂).pull (coprod.map p₁ p₂)) ((join L₁ L₂).pull (coprod.map f₁ f₂))).U j) :
    gm coprod.inr x _
        ((LB.div ((join M₁ M₂).pull (coprod.map p₁ p₂)) ((join L₁ L₂).pull (coprod.map f₁ f₂))).g i j) =
      gm (𝟙 X₂) x _ ((LB.div (M₂.pull p₂) (L₂.pull f₂)).g
        (fun _ => (i.1 PUnit.unit).2, fun _ => (i.2 PUnit.unit).2)
        (fun _ => (j.1 PUnit.unit).2, fun _ => (j.2 PUnit.unit).2)) := by
  obtain ⟨I₁, K₁⟩ := i
  obtain ⟨I₂, K₂⟩ := j
  have a₁ := mem_pull.1 hi.1
  have a₂ := mem_pull.1 hj.1
  have b₁ := mem_pull.1 hi.2
  have b₂ := mem_pull.1 hj.2
  rw [map_inr_apply] at a₁ a₂ b₁ b₂
  have a₁' := ((isPart_inr M₁ M₂).mem _ _).1 a₁
  have a₂' := ((isPart_inr M₁ M₂).mem _ _).1 a₂
  have b₁' := ((isPart_inr L₁ L₂).mem _ _).1 b₁
  have b₂' := ((isPart_inr L₁ L₂).mem _ _).1 b₂
  have d := gm_div_g (L := join M₁ M₂) (F := coprod.map p₁ p₂) (L' := (join L₁ L₂).pull (coprod.map f₁ f₂))
    coprod.inr x (I₁ PUnit.unit) (I₂ PUnit.unit) K₁ K₂ (mem_pull.1 hi.1) (mem_pull.1 hj.1) hi.2 hj.2
  have d₁ := gm_div_g (L := M₂) (F := p₂) (L' := L₂.pull f₂) (𝟙 X₂) x (I₁ PUnit.unit).2 (I₂ PUnit.unit).2
    (fun _ => (K₁ PUnit.unit).2) (fun _ => (K₂ PUnit.unit).2) a₁' a₂' (mem_pull.2 b₁') (mem_pull.2 b₂')
  refine d.trans (Eq.trans ?_ d₁.symm)
  rw [gm_pull_g (join L₁ L₂) (coprod.map f₁ f₂) coprod.inr x K₁ K₂ hi.2 hj.2,
    gm_pull_g L₂ f₂ (𝟙 X₂) x _ _ (mem_pull.2 b₁') (mem_pull.2 b₂'), coprod.inr_map, coprod.inr_map,
    (isPart_inr M₁ M₂).g _ p₂ x _ _ a₁' a₂', (isPart_inr L₁ L₂).g _ f₂ x _ _ b₁' b₂', Category.id_comp,
    Category.id_comp]

theorem exists_iso_glue (w₁ : LB.Iso (L₁.pull f₁) (M₁.pull p₁)) (w₂ : LB.Iso (L₂.pull f₂) (M₂.pull p₂))
    (hw₁ : w₁.IsGen) (hw₂ : w₂.IsGen) :
    ∃ W : LB.Iso ((join L₁ L₂).pull (coprod.map f₁ f₂)) ((join M₁ M₂).pull (coprod.map p₁ p₂)), W.IsGen ∧
      (∀ (Z : Scheme.{0}) (r : Z ⟶ X₁) (z : Z) (j : (join M₁ M₂).ι) (k : (join L₁ L₂).ι), p₁ (r z) ∈ M₁.U j.1 →
        f₁ (r z) ∈ L₁.U k.1 → gw W (r ≫ coprod.inl) z j (fun _ => k) = gw w₁ r z j.1 (fun _ => k.1)) ∧
      ∀ (Z : Scheme.{0}) (r : Z ⟶ X₂) (z : Z) (j : (join M₁ M₂).ι) (k : (join L₁ L₂).ι), p₂ (r z) ∈ M₂.U j.2 →
        f₂ (r z) ∈ L₂.U k.2 → gw W (r ≫ coprod.inr) z j (fun _ => k) = gw w₂ r z j.2 (fun _ => k.2) := by
  have key : ∀ p : (PUnit → (join M₁ M₂).ι) × (PUnit → (join L₁ L₂).ι),
      ∃ a : Γ(X₁ ⨿ X₂,
        (LB.div ((join M₁ M₂).pull (coprod.map p₁ p₂)) ((join L₁ L₂).pull (coprod.map f₁ f₂))).U p)ˣ,
      (∀ (Z : Scheme.{0}) (ψ : Z ⟶ X₁) (z : Z), (coprod.inl : X₁ ⟶ X₁ ⨿ X₂) (ψ z) ∈
          (LB.div ((join M₁ M₂).pull (coprod.map p₁ p₂)) ((join L₁ L₂).pull (coprod.map f₁ f₂))).U p →
        gm (ψ ≫ coprod.inl) z _ a =
          gm ψ z _ (w₁.s (fun _ => (p.1 PUnit.unit).1, fun _ => (p.2 PUnit.unit).1))) ∧
      ∀ (Z : Scheme.{0}) (ψ : Z ⟶ X₂) (z : Z), (coprod.inr : X₂ ⟶ X₁ ⨿ X₂) (ψ z) ∈
          (LB.div ((join M₁ M₂).pull (coprod.map p₁ p₂)) ((join L₁ L₂).pull (coprod.map f₁ f₂))).U p →
        gm (ψ ≫ coprod.inr) z _ a =
          gm ψ z _ (w₂.s (fun _ => (p.1 PUnit.unit).2, fun _ => (p.2 PUnit.unit).2)) := fun p =>
    exists_glue ((LB.div ((join M₁ M₂).pull (coprod.map p₁ p₂)) ((join L₁ L₂).pull (coprod.map f₁ f₂))).U p)
      ((LB.div (M₁.pull p₁) (L₁.pull f₁)).U (fun _ => (p.1 PUnit.unit).1, fun _ => (p.2 PUnit.unit).1))
      ((LB.div (M₂.pull p₂) (L₂.pull f₂)).U (fun _ => (p.1 PUnit.unit).2, fun _ => (p.2 PUnit.unit).2))
      (fun x hx => ⟨(mem_pull_inl M₁ M₂ p₁ p₂ x _).1 hx.1, (mem_pull_inl L₁ L₂ f₁ f₂ x _).1 hx.2⟩)
      (fun x hx => ⟨(mem_pull_inr M₁ M₂ p₁ p₂ x _).1 hx.1, (mem_pull_inr L₁ L₂ f₁ f₂ x _).1 hx.2⟩) _ _
  choose s hs₁ hs₂ using key
  let W : LB.Iso ((join L₁ L₂).pull (coprod.map f₁ f₂)) ((join M₁ M₂).pull (coprod.map p₁ p₂)) := ⟨s⟩
  refine ⟨W, fun i j => unit_ext_coprod (fun x hx => ?_) (fun x hx => ?_), fun Z r z j k hj hk => ?_,
    fun Z r z j k hj hk => ?_⟩
  · have e₁ := hs₁ i X₁ (𝟙 _) x hx.1
    have e₂ := hs₁ j X₁ (𝟙 _) x hx.2
    rw [Category.id_comp] at e₁ e₂
    have m₁ : x ∈ (LB.div (M₁.pull p₁) (L₁.pull f₁)).U
        (fun _ => (i.1 PUnit.unit).1, fun _ => (i.2 PUnit.unit).1) :=
      ⟨(mem_pull_inl M₁ M₂ p₁ p₂ x _).1 hx.1.1, (mem_pull_inl L₁ L₂ f₁ f₂ x _).1 hx.1.2⟩
    have m₂ : x ∈ (LB.div (M₁.pull p₁) (L₁.pull f₁)).U
        (fun _ => (j.1 PUnit.unit).1, fun _ => (j.2 PUnit.unit).1) :=
      ⟨(mem_pull_inl M₁ M₂ p₁ p₂ x _).1 hx.2.1, (mem_pull_inl L₁ L₂ f₁ f₂ x _).1 hx.2.2⟩
    have h := congrArg (gm (𝟙 X₁) x _) (hw₁ (fun _ => (i.1 PUnit.unit).1, fun _ => (i.2 PUnit.unit).1)
      (fun _ => (j.1 PUnit.unit).1, fun _ => (j.2 PUnit.unit).1))
    have m : x ∈ (LB.div (M₁.pull p₁) (L₁.pull f₁)).U (fun _ => (i.1 PUnit.unit).1, fun _ => (i.2 PUnit.unit).1) ⊓
        (LB.div (M₁.pull p₁) (L₁.pull f₁)).U (fun _ => (j.1 PUnit.unit).1, fun _ => (j.2 PUnit.unit).1) := ⟨m₁, m₂⟩
    rw [map_mul, gm_res _ x _ m, gm_res _ x _ m] at h
    rw [map_mul, gm_res _ x _ hx, gm_res _ x _ hx, gm_div_inl x i j hx.1 hx.2]
    exact e₁.trans (h.trans (congrArg _ e₂.symm))
  · have e₁ := hs₂ i X₂ (𝟙 _) x hx.1
    have e₂ := hs₂ j X₂ (𝟙 _) x hx.2
    rw [Category.id_comp] at e₁ e₂
    have m₁ : x ∈ (LB.div (M₂.pull p₂) (L₂.pull f₂)).U
        (fun _ => (i.1 PUnit.unit).2, fun _ => (i.2 PUnit.unit).2) :=
      ⟨(mem_pull_inr M₁ M₂ p₁ p₂ x _).1 hx.1.1, (mem_pull_inr L₁ L₂ f₁ f₂ x _).1 hx.1.2⟩
    have m₂ : x ∈ (LB.div (M₂.pull p₂) (L₂.pull f₂)).U
        (fun _ => (j.1 PUnit.unit).2, fun _ => (j.2 PUnit.unit).2) :=
      ⟨(mem_pull_inr M₁ M₂ p₁ p₂ x _).1 hx.2.1, (mem_pull_inr L₁ L₂ f₁ f₂ x _).1 hx.2.2⟩
    have h := congrArg (gm (𝟙 X₂) x _) (hw₂ (fun _ => (i.1 PUnit.unit).2, fun _ => (i.2 PUnit.unit).2)
      (fun _ => (j.1 PUnit.unit).2, fun _ => (j.2 PUnit.unit).2))
    have m : x ∈ (LB.div (M₂.pull p₂) (L₂.pull f₂)).U (fun _ => (i.1 PUnit.unit).2, fun _ => (i.2 PUnit.unit).2) ⊓
        (LB.div (M₂.pull p₂) (L₂.pull f₂)).U (fun _ => (j.1 PUnit.unit).2, fun _ => (j.2 PUnit.unit).2) := ⟨m₁, m₂⟩
    rw [map_mul, gm_res _ x _ m, gm_res _ x _ m] at h
    rw [map_mul, gm_res _ x _ hx, gm_res _ x _ hx, gm_div_inr x i j hx.1 hx.2]
    exact e₁.trans (h.trans (congrArg _ e₂.symm))
  · exact hs₁ (fun _ => j, fun _ => k) Z r z
      ⟨(mem_pull_inl M₁ M₂ p₁ p₂ _ _).2 (mem_pull.2 hj), (mem_pull_inl L₁ L₂ f₁ f₂ _ _).2 (mem_pull.2 hk)⟩
  · exact hs₂ (fun _ => j, fun _ => k) Z r z
      ⟨(mem_pull_inr M₁ M₂ p₁ p₂ _ _).2 (mem_pull.2 hj), (mem_pull_inr L₁ L₂ f₁ f₂ _ _).2 (mem_pull.2 hk)⟩

end Glue

theorem exists_iso_level : ∀ {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D₁ D₂ : DegData R I} {A₁ A₂ : PolAV (Sp (FractionRing R))} {G₁ G₂ : Over (Sp R)} [GrpObj G₁] [IsCommMonObj G₁] [GrpObj G₂] [IsCommMonObj G₂] (U₁ : UnifPre I D₁ A₁ G₁) (U₂ : UnifPre I D₂ A₂ G₂) (e : ℕ), ∃ W : LB.Iso ((join U₁.LG.L U₂.LG.L).pull (coprod.map (fstG I e G₁).left (fstG I e G₂).left)) ((JN D₁.toPre D₂.toPre).pull (coprod.map (U₁.gt e).pG.left (U₂.gt e).pG.left)), W.IsGen ∧ (∀ (Z : Scheme.{0}) (r : Z ⟶ (thickObj R I e G₁).left) (z : Z) (j : (JN D₁.toPre D₂.toPre).ι) (k : (join U₁.LG.L U₂.LG.L).ι), (U₁.gt e).pG.left (r z) ∈ D₁.toPre.P.L.U j.1 → (fstG I e G₁).left (r z) ∈ U₁.LG.L.U k.1 → gw W (r ≫ coprod.inl) z j (fun _ => k) = gw (U₁.w e) r z j.1 (fun _ => k.1)) ∧ (∀ (Z : Scheme.{0}) (r : Z ⟶ (thickObj R I e G₂).left) (z : Z) (j : (JN D₁.toPre D₂.toPre).ι) (k : (join U₁.LG.L U₂.LG.L).ι), (U₂.gt e).pG.left (r z) ∈ D₂.toPre.P.L.U j.2 → (fstG I e G₂).left (r z) ∈ U₂.LG.L.U k.2 → gw W (r ≫ coprod.inr) z j (fun _ => k) = gw (U₂.w e) r z j.2 (fun _ => k.2)) := by
  intro R _ _ I D₁ D₂ A₁ A₂ G₁ G₂ _ _ _ _ U₁ U₂ e
  exact exists_iso_glue (U₁.w e) (U₂.w e) (U₁.w_gen e) (U₂.w_gen e)

end GlobalTheory.Mum.Two.GlueLevel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGluedUniformisationIsoOneLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratorTorusInvariantOfMultiplicative =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratorTorusInvariantOfMultiplicative", "h": "module\n\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TwistBaseChangeAndValuationStatements\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MK\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.RosatiAdjointAbelianPartAndClassifyingMapLinear\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordGeneratorAbelianPartAtLevelImports\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two
open GlobalTheory.HomMum

noncomputable section

namespace GlobalTheory.HomMum

open GlobalTheory.EndRosati

theorem prod_psum_eq_one {S : Scheme.{0}} {A T : Over S} [GrpObj A] [IsCommMonObj A] (x y : T ⟶ A)
    (hxy : x = 1 ∨ y = 1) {U : Type} [CommGroup U] (h : (T.left ⟶ A.left) → U) :
    ∏ I : ULift.{0} (Finset (Fin 2)), h (psum A ![x, y] I.down).left ^ ((-1 : ℤ) ^ (2 - I.down.card)) = 1 := by
  refine (Fintype.prod_equiv Equiv.ulift _ (fun I => h (psum A ![x, y] I).left ^ ((-1 : ℤ) ^ (2 - I.card)))
    fun _ => rfl).trans ?_
  rw [show (Finset.univ : Finset (Finset (Fin 2))) = {∅, {0}, {1}, {0, 1}} by decide, Finset.prod_insert (by decide),
    Finset.prod_insert (by decide), Finset.prod_insert (by decide), Finset.prod_singleton]
  have p₀ : psum A ![x, y] ∅ = 1 := rfl
  have p₁ : psum A ![x, y] {0} = x := _root_.mul_one x
  have p₂ : psum A ![x, y] {1} = y := _root_.mul_one y
  have p₃ : psum A ![x, y] {0, 1} = x * y := congrArg (x * ·) (_root_.mul_one y)
  have q₀ : (-1 : ℤ) ^ (2 - (∅ : Finset (Fin 2)).card) = 1 := by decide
  have q₁ : ∀ i : Fin 2, (-1 : ℤ) ^ (2 - ({i} : Finset (Fin 2)).card) = -1 := by decide
  have q₃ : (-1 : ℤ) ^ (2 - ({0, 1} : Finset (Fin 2)).card) = 1 := by decide
  rw [p₀, p₁, p₂, p₃, q₀, q₁, q₁, q₃]
  simp only [zpow_neg, zpow_one]
  rcases hxy with rfl | rfl
  · rw [_root_.one_mul y, inv_mul_cancel, _root_.mul_one, mul_inv_cancel]
  · rw [_root_.mul_one x, mul_left_comm (h x.left)⁻¹, inv_mul_cancel, _root_.mul_one, mul_inv_cancel]

theorem prod_mφ_eq_one {S : Scheme.{0}} {H₁ H₂ T : Over S} [GrpObj H₁] [IsCommMonObj H₁] [GrpObj H₂] [IsCommMonObj H₂]
    (a b : H₁ ⟶ H₂) [IsMonHom a] [IsMonHom b] (x y : T ⟶ H₁) (hxy : x = 1 ∨ y = 1) {U : Type} [CommGroup U]
    (h : (T.left ⟶ H₁.left ⨿ H₂.left) → U) :
    ∏ k, h ((lift x y).left ≫ mφ H₁ H₂ a b k) ^ mε k = 1 := by
  simp only [mφ_comp]
  rw [Fintype.prod_sum_type]
  have e₁ := prod_psum_eq_one (x ≫ a) (y ≫ b)
    (hxy.imp (fun e => by rw [e, MonObj.one_comp]) (fun e => by rw [e, MonObj.one_comp]))
    (fun q => h (q ≫ coprod.inr))
  have e₂ := prod_psum_eq_one x y hxy (fun q => h (q ≫ coprod.inl))
  simp only [Sum.elim_inl, Sum.elim_inr, mε, zpow_neg, Finset.prod_inv_distrib]
  rw [e₁, e₂, inv_one, _root_.mul_one]

theorem push_pG_two {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D₁ D₂ : DegData R I}
    {A₁ A₂ : PolAV (Sp (FractionRing R))} {G₁ G₂ : Over (Sp R)} [GrpObj G₁] [IsCommMonObj G₁] [GrpObj G₂]
    [IsCommMonObj G₂] (U₁ : UnifPre I D₁ A₁ G₁) (U₂ : UnifPre I D₂ A₂ G₂) (e : ℕ) {f : G₁ ⟶ G₂}
    {a : D₁.toPre.P.A ⟶ D₂.toPre.P.A}
    (hf : (Over.pullback (thick R I e)).map f ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map a) :
    push (U₂.gt e).pG ((Over.pullback (thick R I e)).map f) = (U₁.gt e).pG ≫ a := by
  rw [push, GtCoord.pG, GtCoord.pG, ← Functor.map_comp_assoc, hf, Functor.map_comp_assoc, Category.assoc]
  exact congrArg _ (push_fstG e a)



theorem gen_invariant_of_mul : ∀ {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D₁ D₂ : DegData R I} {A₁ A₂ : PolAV (Sp (FractionRing R))} {G₁ G₂ : Over (Sp R)} [GrpObj G₁] [IsCommMonObj G₁] [GrpObj G₂] [IsCommMonObj G₂] (U₁ : UnifPre I D₁ A₁ G₁) (U₂ : UnifPre I D₂ A₂ G₂) (e : ℕ) {f g : G₁ ⟶ G₂} [IsMonHom f] [IsMonHom g] {fB gB : D₁.toPre.P.A ⟶ D₂.toPre.P.A} [IsMonHom fB] [IsMonHom gB], (Over.pullback (thick R I e)).map f ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map fB → (Over.pullback (thick R I e)).map g ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map gB → ∀ [ConnectedSpace (thickObj R I e G₁).left] (v : LB.Gen (LB.LinComb (JN D₁.toPre D₂.toPre) (fun k => mφ (thickObj R I e G₁) (thickObj R I e G₂) ((Over.pullback (thick R I e)).map f) ((Over.pullback (thick R I e)).map g) k ≫ coprod.map (U₁.gt e).pG.left (U₂.gt e).pG.left) mε)), v.IsGen → (∀ (T : Over (Sp (R ⧸ I ^ (e + 1)))) (z : T.left) (J : (T.left ⟶ D₁.toPre.P.A.left ⨿ D₂.toPre.P.A.left) → (JN D₁.toPre D₂.toPre).ι), Good (JN D₁.toPre D₂.toPre) z J → ∀ x x' y : T ⟶ thickObj R I e G₁, (Over.map (thick R I e)).map x ≫ (U₁.gt e).pG = 1 → val v (lift (x * x') y).left z J = val v (lift x y).left z J * val v (lift x' y).left z J ∧ val v (lift y (x * x')).left z J = val v (lift y x).left z J * val v (lift y x').left z J) → (∀ (T : Over (Sp (R ⧸ I ^ (e + 1)))) (z : T.left) (J : (T.left ⟶ D₁.toPre.P.A.left ⨿ D₂.toPre.P.A.left) → (JN D₁.toPre D₂.toPre).ι), Good (JN D₁.toPre D₂.toPre) z J → ∀ x x' y y' : T ⟶ thickObj R I e G₁, x ≫ (U₁.gt e).q = x' ≫ (U₁.gt e).q → y ≫ (U₁.gt e).q = y' ≫ (U₁.gt e).q → val v (lift x y).left z J = val v (lift x' y').left z J) := by
  intro R _ _ I D₁ D₂ A₁ A₂ G₁ G₂ _ _ _ _ U₁ U₂ e f g _ _ fB gB _ _ hf hg _ v hv hm
  have := (U₁.gt e).q_hom
  have := (U₁.gt e).i_hom
  have hM := jn_isLB D₁.toPre D₂.toPre
  have ti : ∀ {Z : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} (t : Z ⟶ splitTorus _ D₁.toPre.X),
      push (U₁.gt e).pG (t ≫ (U₁.gt e).i) = 1 := fun t =>
    (TorusCoord.im_congr (U₁.gt e) (x' := 1) (by
      rw [Category.assoc, (U₁.gt e).isKernel.w, MonObj.one_comp, comp_toUnit_assoc, Hom.one_def])).trans
      (TorusCoord.im_one (U₁.gt e))
  have unit : ∀ {T : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))} (x y : T ⟶ thickObj R I e G₁),
      push (U₁.gt e).pG x = 1 ∨ push (U₁.gt e).pG y = 1 → ∃ ρ : Γ(T.left, ⊤)ˣ,
        ∀ (Z : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))) (r : Z ⟶ T) (z : Z.left) (J),
          Good (JN D₁.toPre D₂.toPre) z J →
          gm r.left z ⊤ ρ = val v (lift (r ≫ x) (r ≫ y)).left z J := fun x y hxy => by
    obtain ⟨ρ, hρ⟩ := exists_unit_of_formal hM (fun V _ h =>
      (Finset.prod_congr rfl fun k _ => congrArg (h · ^ mε k) (mφ_push (U₁.gt e).pG (U₂.gt e).pG
        (TorusCoord.im_mul (U₁.gt e)) (TorusCoord.im_mul (U₂.gt e)) (push_pG_two U₁ U₂ e hf)
        (push_pG_two U₁ U₂ e hg) x y k).symm).trans
        (prod_mφ_eq_one fB gB (push (U₁.gt e).pG x) (push (U₁.gt e).pG y) hxy h))
      (LB.pullGen (JN D₁.toPre D₂.toPre) _ _ v (lift x y).left) (DVR.pullGen_isGen _ _ _ _ hv _)
    refine ⟨ρ, fun Z r z J hJ => (hρ _ r.left z J hJ).symm.trans ((val_pull hJ _ _ _).trans ?_)⟩
    rw [← Over.comp_left, comp_lift]
  have one : ∀ (T : Over (Spec (CommRingCat.of (R ⧸ I ^ (e + 1))))) (z : T.left) (J),
      Good (JN D₁.toPre D₂.toPre) z J →
      ∀ y : T ⟶ thickObj R I e G₁, val v (lift 1 y).left z J = 1 ∧ val v (lift y 1).left z J = 1 :=
    fun T z J hJ y => by
      have := hm T z J hJ 1 1 y (TorusCoord.im_one (U₁.gt e))
      rw [_root_.mul_one] at this
      exact ⟨left_eq_mul.1 this.1, left_eq_mul.1 this.2⟩
  have gd : ∀ {Z : Scheme.{0}} (z : Z), ∃ J, Good (JN D₁.toPre D₂.toPre) z J := fun {Z} z => by
    choose J hJ using fun χ : Z ⟶ D₁.toPre.P.A.left ⨿ D₂.toPre.P.A.left => Geo.Tor.exists_chart hM (χ z)
    exact ⟨J, hJ⟩
  obtain ⟨ρ₁, h₁⟩ := unit (fst (splitTorus _ D₁.toPre.X) (thickObj R I e G₁) ≫ (U₁.gt e).i) (snd _ _) (Or.inl (ti _))
  obtain ⟨ρ₂, h₂⟩ := unit (snd _ _) (fst (splitTorus _ D₁.toPre.X) (thickObj R I e G₁) ≫ (U₁.gt e).i) (Or.inr (ti _))
  have e₁ := fun Z t y z J hJ => h₁ Z (lift t y) z J hJ
  have e₂ := fun Z t y z J hJ => h₂ Z (lift t y) z J hJ
  simp only [lift_fst_assoc, lift_snd] at e₁ e₂
  have k₁ := fun Z t y z => unit_eq_one ρ₁ (fun Z t t' y z => by
      obtain ⟨J, hJ⟩ := gd z
      rw [e₁ Z _ y z J hJ, e₁ Z _ y z J hJ, e₁ Z _ y z J hJ, MonObj.mul_comp]
      exact (hm Z z J hJ _ _ y (ti t)).1) (fun Z t z => by
      obtain ⟨J, hJ⟩ := gd z
      exact (e₁ Z t 1 z J hJ).trans (one Z z J hJ _).2) (Z := Z) t y z
  have k₂ := fun Z t y z => unit_eq_one ρ₂ (fun Z t t' y z => by
      obtain ⟨J, hJ⟩ := gd z
      rw [e₂ Z _ y z J hJ, e₂ Z _ y z J hJ, e₂ Z _ y z J hJ, MonObj.mul_comp]
      exact (hm Z z J hJ _ _ y (ti t)).2) (fun Z t z => by
      obtain ⟨J, hJ⟩ := gd z
      exact (e₂ Z t 1 z J hJ).trans (one Z z J hJ _).1) (Z := Z) t y z
  intro T z J hJ x x' y y' hx hy
  obtain ⟨t, rfl⟩ := TorusCoord.exists_torus (U₁.gt e) x x' hx
  obtain ⟨t', rfl⟩ := TorusCoord.exists_torus (U₁.gt e) y y' hy
  rw [(hm T z J hJ _ x' _ (ti t)).1, (hm T z J hJ _ y' x' (ti t')).2, ← e₁ T t _ z J hJ, ← e₂ T t' _ z J hJ, k₁, k₂,
    _root_.one_mul, _root_.one_mul]

end GlobalTheory.HomMum

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratorTorusInvariantOfMultiplicative =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordGeneratorAbelianPartAtLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordGeneratorAbelianPartAtLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MK\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescendedGeneratorThickenedAbelianPart\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGeneratorMultiplicativeOnQuotientKernel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGluedUniformisationIsoOneLevel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeneratorTorusInvariantOfMultiplicative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two
open GlobalTheory.HomMum

theorem GlobalTheory.HomMum.exists_gen_level : ∀ {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D₁ D₂ : DegData R I} {A₁ A₂ : PolAV (Sp (FractionRing R))} {G₁ G₂ : Over (Sp R)} [GrpObj G₁] [IsCommMonObj G₁] [GrpObj G₂] [IsCommMonObj G₂] (U₁ : UnifPre I D₁ A₁ G₁) (U₂ : UnifPre I D₂ A₂ G₂) (e : ℕ) {f g : G₁ ⟶ G₂} [IsMonHom f] [IsMonHom g] {fB gB : D₁.toPre.P.A ⟶ D₂.toPre.P.A} [IsMonHom fB] [IsMonHom gB], (Over.pullback (thick R I e)).map f ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map fB → (Over.pullback (thick R I e)).map g ≫ (U₂.gt e).q = (U₁.gt e).q ≫ (Over.pullback (thick R I e)).map gB → ∀ [ConnectedSpace (thickObj R I e G₁).left] (u : LB.Gen (LB.LinComb (join U₁.LG.L U₂.LG.L) (mφ G₁ G₂ f g) mε)), IsNrm u → (∀ (T : Over (Sp R)) (z : T.left) (J : (T.left ⟶ G₁.left ⨿ G₂.left) → (join U₁.LG.L U₂.LG.L).ι), Good (join U₁.LG.L U₂.LG.L) z J → ∀ x x' y : T ⟶ G₁, val u (lift (x * x') y).left z J * cubV U₁.cubG z (rl J) x x' y = cubV U₂.cubG z (rr J) (x ≫ f) (x' ≫ f) (y ≫ g) * (val u (lift x y).left z J * val u (lift x' y).left z J) ∧ val u (lift y (x * x')).left z J * cubV U₁.cubG z (rl J) y x x' = cubV U₂.cubG z (rr J) (y ≫ f) (x ≫ g) (x' ≫ g) * (val u (lift y x).left z J * val u (lift y x').left z J)) → ∃ t : LB.Gen (LB.LinComb (JN D₁.toPre D₂.toPre) (fun k => pullback.fst (D₁.toPre.P.A ⊗ D₁.toPre.P.A).hom (thick R I e) ≫ mφ D₁.toPre.P.A D₂.toPre.P.A fB gB k) mε), t.IsGen := by
  intro R _ _ I D₁ D₂ A₁ A₂ G₁ G₂ _ _ _ _ U₁ U₂ e f g _ _ fB gB _ _ hf hg _ u hu hadd
  obtain ⟨W, hW, h₁, h₂⟩ := _root_.GlobalTheory.Mum.Two.GlueLevel.exists_iso_level U₁ U₂ e
  obtain ⟨v, hv, hm⟩ := _root_.GlobalTheory.HomMum.exists_gen_mul_level U₁ U₂ e hf hg W hW h₁ h₂ u hu.1 hadd
  exact _root_.GlobalTheory.HomMum.exists_gen_thick_two U₁ U₂ e hf hg v hv (_root_.GlobalTheory.HomMum.gen_invariant_of_mul U₁ U₂ e hf hg v hv hm)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordGeneratorAbelianPartAtLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomMumfordGeneratorAdditiveCubicalStructures =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomMumfordGeneratorAdditiveCubicalStructures", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MK\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PhiGenPf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsTorsionLift\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two
open GlobalTheory.HomMum

namespace GlobalTheory.HomMumAdd

variable {S : Scheme.{0}}

theorem prod_mumford {G : Over S} [GrpObj G] [IsCommMonObj G] {T : Over S} (x y : T ⟶ G) {U : Type} [CommGroup U]
    (h : (T.left ⟶ G.left) → U) :
    ∏ I : ULift.{0} (Finset (Fin 2)), h ((lift x y).left ≫ (psum G (x2 G) I.down).left) ^ ((-1 : ℤ) ^ (2 - I.down.card)) =
      h (x * y).left * (h x.left)⁻¹ * (h y.left)⁻¹ * h (1 : T ⟶ G).left := by
  have e : ∀ I : ULift.{0} (Finset (Fin 2)), (lift x y).left ≫ (psum G (x2 G) I.down).left =
      (psum G ![x, y] I.down).left := fun I =>
    congrArg (fun q => q.left) ((psum_hom (preHom (lift x y)) (x2 G) I.down).trans
      (congrArg (fun q => psum G q I.down) (funext fun i => by fin_cases i <;> simp [preHom, x2])))
  refine (Fintype.prod_equiv (Equiv.ulift : ULift.{0} (Finset (Fin 2)) ≃ Finset (Fin 2)) _
    (fun I => h (psum G ![x, y] I).left ^ ((-1 : ℤ) ^ (2 - I.card)))
    (fun I => congrArg (fun q => h q ^ ((-1 : ℤ) ^ (2 - I.down.card))) (e I))).trans ?_
  rw [show (Finset.univ : Finset (Finset (Fin 2))) = {∅, {0}, {1}, {0, 1}} by decide,
    Finset.prod_insert (by decide), Finset.prod_insert (by decide), Finset.prod_insert (by decide),
    Finset.prod_singleton]
  have p₀ : psum G ![x, y] ∅ = 1 := rfl
  have p₁ : psum G ![x, y] {0} = x := _root_.mul_one x
  have p₂ : psum G ![x, y] {1} = y := _root_.mul_one y
  have p₄ : psum G ![x, y] {0, 1} = x * y := congrArg (x * ·) (_root_.mul_one y)
  rw [p₀, p₁, p₂, p₄]
  have q₀ : (-1 : ℤ) ^ (2 - (∅ : Finset (Fin 2)).card) = 1 := by decide
  have q₁ : ∀ i : Fin 2, (-1 : ℤ) ^ (2 - ({i} : Finset (Fin 2)).card) = -1 := by decide
  have q₄ : (-1 : ℤ) ^ (2 - ({0, 1} : Finset (Fin 2)).card) = 1 := by decide
  rw [q₀, q₁, q₁, q₄]
  simp only [zpow_neg, zpow_one]
  ac_rfl

variable {H₁ H₂ : Over S} [GrpObj H₁] [IsCommMonObj H₁] [GrpObj H₂] [IsCommMonObj H₂]

theorem prod_pair (a b : H₁ ⟶ H₂) {T : Over S} (x y : T ⟶ H₁) {U : Type} [CommGroup U]
    (h : (T.left ⟶ H₁.left ⨿ H₂.left) → U) :
    ∏ I : MK, h ((lift x y).left ≫ mφ H₁ H₂ a b I) ^ mε I =
      (h (((x ≫ a) * (y ≫ b)).left ≫ coprod.inr) * (h ((x ≫ a).left ≫ coprod.inr))⁻¹ *
        (h ((y ≫ b).left ≫ coprod.inr))⁻¹ * h ((1 : T ⟶ H₂).left ≫ coprod.inr)) *
      (h ((x * y).left ≫ coprod.inl) * (h (x.left ≫ coprod.inl))⁻¹ * (h (y.left ≫ coprod.inl))⁻¹ *
        h ((1 : T ⟶ H₁).left ≫ coprod.inl))⁻¹ := by
  refine prod_sum₂ _ ?_ ?_
  · refine Eq.trans (Finset.prod_congr rfl fun I _ => ?_)
      (prod_mumford (x ≫ a) (y ≫ b) fun q => h (q ≫ coprod.inr))
    have e : lift x y ≫ lift (fst H₁ H₁ ≫ a) (snd H₁ H₁ ≫ b) = lift (x ≫ a) (y ≫ b) := by
      rw [comp_lift, lift_fst_assoc, lift_snd_assoc]
    refine congrArg (fun q => h q ^ ((-1 : ℤ) ^ (2 - I.down.card))) ?_
    rw [← e, Over.comp_left, Category.assoc, Category.assoc]
    rfl
  · refine Eq.trans ?_ (congrArg (·⁻¹) (prod_mumford x y fun q => h (q ≫ coprod.inl)))
    refine Eq.trans (Finset.prod_congr rfl fun I _ => ?_) (Finset.prod_inv_distrib _)
    refine (zpow_neg _ _).trans (congrArg (fun q => (h q ^ ((-1 : ℤ) ^ (2 - I.down.card)))⁻¹) ?_)
    exact (Category.assoc _ _ _).symm

theorem pair_add_of_surj : ∀ {S : Scheme.{0}} {H₁ H₂ : Over S} [GrpObj H₁] [IsCommMonObj H₁] [GrpObj H₂] [IsCommMonObj H₂] {L₁ : RigLB H₁} {L₂ : RigLB H₂} (c₁ : CubicalStr H₁ L₁) (c₂ : CubicalStr H₂ L₂), (join L₁.L L₂.L).IsLB → Function.Surjective (H₁ ⊗ H₁ ⊗ H₁).hom.appTop.hom → ∀ (a b : H₁ ⟶ H₂) [IsMonHom a] [IsMonHom b] (u : LB.Gen (LB.LinComb (join L₁.L L₂.L) (mφ H₁ H₂ a b) mε)), IsNrm u → ∀ (T : Over S) (z : T.left) (J : (T.left ⟶ H₁.left ⨿ H₂.left) → (join L₁.L L₂.L).ι), Good (join L₁.L L₂.L) z J → ∀ x x' y : T ⟶ H₁, val u (lift (x * x') y).left z J * cubV c₁ z (rl J) x x' y = cubV c₂ z (rr J) (x ≫ a) (x' ≫ a) (y ≫ b) * (val u (lift x y).left z J * val u (lift x' y).left z J) ∧ val u (lift y (x * x')).left z J * cubV c₁ z (rl J) y x x' = cubV c₂ z (rr J) (y ≫ a) (x ≫ b) (x' ≫ b) * (val u (lift y x).left z J * val u (lift y x').left z J) := by
  intro S H₁ H₂ _ _ _ _ L₁ L₂ c₁ c₂ hL sj f g _ _ u hu T z J hJ x x' y
  let p₀ := x3 H₁ 0
  let p₁ := x3 H₁ 1
  let p₂ := x3 H₁ 2
  have mf : ∀ {T : Over S} (a b : T ⟶ H₁), (a * b) ≫ f = (a ≫ f) * (b ≫ f) := fun a b => MonObj.mul_comp a b f
  have mg : ∀ {T : Over S} (a b : T ⟶ H₁), (a * b) ≫ g = (a ≫ g) * (b ≫ g) := fun a b => MonObj.mul_comp a b g
  have P₁ := isPart_inl L₁.L L₂.L
  have P₂ := isPart_inr L₁.L L₂.L
  have vp : ∀ {T T' : Over S} (ρ : T' ⟶ T) {z : T'.left} {J}, Good (join L₁.L L₂.L) z J → ∀ a b : T ⟶ H₁,
      val (LB.pullGen (join L₁.L L₂.L) _ _ u (lift a b).left) ρ.left z J = val u (lift (ρ ≫ a) (ρ ≫ b)).left z J :=
    fun ρ z J hJ a b => by rw [val_pull hJ, ← Over.comp_left, comp_lift]
  let e : 𝟙_ (Over S) ⟶ G3 H₁ := lift 1 (lift 1 1)
  have e₀ : e ≫ p₀ = 1 := by simp [e, p₀, x3]
  have e₁ : e ≫ p₁ = 1 := by simp [e, p₁, x3]
  have e₂ : e ≫ p₂ = 1 := by simp [e, p₂, x3]
  have he : e.left ≫ (H₁ ⊗ H₁ ⊗ H₁).hom = 𝟙 _ := Over.w e
  let ρ : T ⟶ G3 H₁ := lift x (lift x' y)
  have r₀ : ρ ≫ p₀ = x := by simp [ρ, p₀, x3]
  have r₁ : ρ ≫ p₁ = x' := by simp [ρ, p₁, x3]
  have r₂ : ρ ≫ p₂ = y := by simp [ρ, p₂, x3]
  have gen : ∀ (a b a₁ b₁ a₂ b₂ k₁ k₂ k₃ : G3 H₁ ⟶ H₁) (l₁ l₂ l₃ : G3 H₁ ⟶ H₂),
      (∀ (V : Type) [CommGroup V] (k : (G3 H₁ ⟶ H₁) → V) (l : (G3 H₁ ⟶ H₂) → V),
        (l (l₁ * l₂ * l₃) * (l (l₁ * l₂))⁻¹ * (l (l₁ * l₃))⁻¹ * (l (l₂ * l₃))⁻¹ * l l₁ * l l₂ * l l₃ * (l 1)⁻¹) *
          (((l ((a₁ ≫ f) * (b₁ ≫ g)) * (l (a₁ ≫ f))⁻¹ * (l (b₁ ≫ g))⁻¹ * l 1) *
              (k (a₁ * b₁) * (k a₁)⁻¹ * (k b₁)⁻¹ * k 1)⁻¹) *
            ((l ((a₂ ≫ f) * (b₂ ≫ g)) * (l (a₂ ≫ f))⁻¹ * (l (b₂ ≫ g))⁻¹ * l 1) *
              (k (a₂ * b₂) * (k a₂)⁻¹ * (k b₂)⁻¹ * k 1)⁻¹)) =
        ((l ((a ≫ f) * (b ≫ g)) * (l (a ≫ f))⁻¹ * (l (b ≫ g))⁻¹ * l 1) *
              (k (a * b) * (k a)⁻¹ * (k b)⁻¹ * k 1)⁻¹) *
          (k (k₁ * k₂ * k₃) * (k (k₁ * k₂))⁻¹ * (k (k₁ * k₃))⁻¹ * (k (k₂ * k₃))⁻¹ * k k₁ * k k₂ * k k₃ * (k 1)⁻¹)) →
      e ≫ a = 1 → e ≫ b = 1 → e ≫ a₁ = 1 → e ≫ b₁ = 1 → e ≫ a₂ = 1 → e ≫ b₂ = 1 → e ≫ k₁ = 1 → e ≫ l₁ = 1 →
      val u (lift (ρ ≫ a) (ρ ≫ b)).left z J * cubV c₁ z (rl J) (ρ ≫ k₁) (ρ ≫ k₂) (ρ ≫ k₃) =
        cubV c₂ z (rr J) (ρ ≫ l₁) (ρ ≫ l₂) (ρ ≫ l₃) *
          (val u (lift (ρ ≫ a₁) (ρ ≫ b₁)).left z J * val u (lift (ρ ≫ a₂) (ρ ≫ b₂)).left z J) := by
    intro a b a₁ b₁ a₂ b₂ k₁ k₂ k₃ l₁ l₂ l₃ hF ha hb ha₁ hb₁ ha₂ hb₂ hk hl
    have ev : ∀ {T' : Over S} (σ : T' ⟶ G3 H₁) {z : T'.left} {J}, Good (join L₁.L L₂.L) z J →
        val (LB.mulGen (join L₁.L L₂.L) _ _ _ _ (LB.pullGen (join L₁.L L₂.L) _ _ u (lift a b).left)
          (P₁.gen (LB.pullGen L₁.L (thφ H₁ (x3 H₁)) thε c₁.t (lift k₁ (lift k₂ k₃)).left))) σ.left z J =
          val u (lift (σ ≫ a) (σ ≫ b)).left z J * cubV c₁ z (rl J) (σ ≫ k₁) (σ ≫ k₂) (σ ≫ k₃) ∧
        val (LB.mulGen (join L₁.L L₂.L) _ _ _ _
          (P₂.gen (LB.pullGen L₂.L (thφ H₂ (x3 H₂)) thε c₂.t (lift l₁ (lift l₂ l₃)).left))
          (LB.mulGen (join L₁.L L₂.L) _ _ _ _ (LB.pullGen (join L₁.L L₂.L) _ _ u (lift a₁ b₁).left)
            (LB.pullGen (join L₁.L L₂.L) _ _ u (lift a₂ b₂).left)))
          σ.left z J = cubV c₂ z (rr J) (σ ≫ l₁) (σ ≫ l₂) (σ ≫ l₃) *
            (val u (lift (σ ≫ a₁) (σ ≫ b₁)).left z J * val u (lift (σ ≫ a₂) (σ ≫ b₂)).left z J) := fun σ z J hJ =>
      ⟨(val_mul hJ _ _ _).trans (congrArg₂ (· * ·) (vp σ hJ _ _)
          ((P₁.val_gen _ _ z hJ).trans (val_cub c₁ σ (P₁.good hJ) _ _ _))),
        (val_mul hJ _ _ _).trans (congrArg₂ (· * ·) ((P₂.val_gen _ _ z hJ).trans (val_cub c₂ σ (P₂.good hJ) _ _ _))
          ((val_mul hJ _ _ _).trans (congrArg₂ (· * ·) (vp σ hJ _ _) (vp σ hJ _ _))))⟩
    refine (ev ρ hJ).1.symm.trans (Eq.trans (gen_unique' hL (fun V _ k => ?_) _ e.left he sj
      (mulGen_isGen _ _ _ _ _ _ _ (pullGen_isGen _ _ _ _ hu.1 _) (P₁.gen_isGen (pullGen_isGen _ _ _ _ c₁.isGen _)))
      (mulGen_isGen _ _ _ _ _ _ _ (P₂.gen_isGen (pullGen_isGen _ _ _ _ c₂.isGen _)) (mulGen_isGen _ _ _ _ _ _ _
        (pullGen_isGen _ _ _ _ hu.1 _) (pullGen_isGen _ _ _ _ hu.1 _))) (fun y I hI => ?_) _ ρ.left z J hJ) (ev ρ hJ).2)
    · exact (prod_sum₂ (K := thK) (K' := MK ⊕ MK) (U := V) _ (prod_cub l₁ l₂ l₃ fun q => k (q ≫ coprod.inr))
        (prod_sum₂ (K := MK) (K' := MK) (U := V) _ (prod_pair f g a₁ b₁ k) (prod_pair f g a₂ b₂ k))).trans
        ((hF V (fun q => k (q.left ≫ coprod.inl)) (fun q => k (q.left ≫ coprod.inr))).trans
          (prod_sum₂ (K := MK) (K' := thK) (U := V) _ (prod_pair f g a b k)
          (prod_cub k₁ k₂ k₃ fun q => k (q ≫ coprod.inl))).symm)
    · have C₁ : IsCub (cubV c₁ y (rl I)) := isCub_cubV c₁ (P₁.good hI)
      have C₂ : IsCub (cubV c₂ y (rr I)) := isCub_cubV c₂ (P₂.good hI)
      refine (ev e hI).1.trans (Eq.trans ?_ (ev e hI).2.symm)
      rw [ha, hb, ha₁, hb₁, ha₂, hb₂, hk, hl, hu.2 y I hI, C₁.face, C₂.face]
      simp
  have o₁ : e ≫ (p₀ * p₁) = 1 := (MonObj.comp_mul _ _ _).trans (by rw [e₀, e₁, _root_.mul_one])
  have s₁ : ρ ≫ (p₀ * p₁) = x * x' := (MonObj.comp_mul _ _ _).trans (by rw [r₀, r₁])
  constructor
  · have := gen (p₀ * p₁) p₂ p₀ p₂ p₁ p₂ p₀ p₁ p₂ (p₀ ≫ f) (p₁ ≫ f) (p₂ ≫ g) (fun V _ k l => by
      rw [mf]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv]
      abel) o₁ e₂ e₀ e₂ e₁ e₂ e₀ (by rw [← Category.assoc, e₀, MonObj.one_comp])
    rwa [s₁, ← Category.assoc ρ p₂, ← Category.assoc ρ p₀, ← Category.assoc ρ p₁, r₀, r₁, r₂] at this
  · have := gen p₂ (p₀ * p₁) p₂ p₀ p₂ p₁ p₂ p₀ p₁ (p₂ ≫ f) (p₀ ≫ g) (p₁ ≫ g) (fun V _ k l => by
      rw [mg, _root_.mul_assoc p₂, _root_.mul_assoc (p₂ ≫ f)]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv]
      abel) e₂ o₁ e₂ e₀ e₂ e₁ e₂ (by rw [← Category.assoc, e₂, MonObj.one_comp])
    rwa [s₁, ← Category.assoc ρ p₂, ← Category.assoc ρ p₀, ← Category.assoc ρ p₁, r₀, r₁, r₂] at this

end GlobalTheory.HomMumAdd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomMumfordGeneratorAdditiveCubicalStructures =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPart =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPart", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Definitions.Jets.SurjectiveAppTopSqCube\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsProjByOfIsPullback\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.AbelianProjectiveBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MK\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHomMumfordGeneratorNormalisedOrigin\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordGeneratorAbelianPartAtLevel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomMumfordGeneratorAdditiveCubicalStructures\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ConnectedSpaceOfSection\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ConnectedSpaceThickening\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.LocGenOfThickenings\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbelianSchemeGerms\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two


open GlobalTheory.HomMum in
theorem GlobalTheory.HomMum.lbIso_descends : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [CharZero R], AdmBase R (maximalIdeal R) → ∀ (D₁ D₂ : DegData R (maximalIdeal R)) (A₁ A₂ : PolAV (Sp (FractionRing R))) (G₁ G₂ : Over (Sp R)) [GrpObj G₁] [IsCommMonObj G₁] [GrpObj G₂] [IsCommMonObj G₂], IsSemiAbelian G₁ → IsSemiAbelian G₂ → ∀ (U₁ : Unif (maximalIdeal R) D₁ A₁ G₁) (U₂ : Unif (maximalIdeal R) D₂ A₂ G₂) (f g : G₁ ⟶ G₂) (fB gB : D₁.toPre.P.A ⟶ D₂.toPre.P.A), IsMonHom f → IsMonHom g → IsMonHom fB → IsMonHom gB → Over₀ U₁.toUnifPre U₂.toUnifPre f fB → Over₀ U₁.toUnifPre U₂.toUnifPre g gB → LBIso (abelian₂ G₁ U₁.LG.L) ((abelian₂ G₂ U₂.LG.L).pull (lift (fst G₁ G₁ ≫ f) (snd G₁ G₁ ≫ g) : G2 G₁ ⟶ G2 G₂).left) → LBIso (abelian₂ D₁.toPre.P.A D₁.toPre.P.L) ((abelian₂ D₂.toPre.P.A D₂.toPre.P.L).pull (lift (fst D₁.toPre.P.A D₁.toPre.P.A ≫ fB) (snd D₁.toPre.P.A D₁.toPre.P.A ≫ gB) : G2 D₁.toPre.P.A ⟶ G2 D₂.toPre.P.A).left) := by
  intro R _ _ _ _ hR D₁ D₂ A₁ A₂ G₁ G₂ _ _ _ _ hG₁ hG₂ U₁ U₂ f g fB gB _ _ _ _ of og H
  have hGF := GlobalTheory.firstFiveLaws.1.globalFns
  obtain ⟨-, -, -, hC⟩ := hR
  have := hG₁.geomConnected
  haveI : Nonempty G₁.left := ⟨eSec G₁ (⊥ : PrimeSpectrum R)⟩
  haveI : Nonempty G₂.left := ⟨eSec G₂ (⊥ : PrimeSpectrum R)⟩
  obtain ⟨w, hw⟩ := H
  obtain ⟨t, ht, -⟩ := exists_gen_of_iso (isPart_inr U₁.LG.L U₂.LG.L) (isPart_inl U₁.LG.L U₂.LG.L) w hw
  have hN := join_isLB U₁.LG.isLB U₂.LG.isLB
  obtain ⟨u, hu⟩ := _root_.GlobalTheory.HomMum.exists_isNrm hN f g t ht
  have sj := (FamGerm.surjective_appTop_sq_cube U₁.toUnifPre).2
  have hP : AbLaw.IsProjBy D₁.toPre.P.A.hom := AbProj.isProjBy_of_isPullback D₁.toPre.P (IsPullback.id_horiz _)
  obtain ⟨V, hV, t', ht'⟩ := GlobalTheory.EndRosati.loc_gen_of_thickenings hGF (maximalIdeal R) _
    (AbelianSchemeGerms.isAbelianScheme_tensor _ _ D₁.toPre.P.isAb D₁.toPre.P.isAb)
    (AbLaw.isProjBy_tensor R _ _ hP hP) (jn_isLB D₁.toPre D₂.toPre) (mφ D₁.toPre.P.A D₂.toPre.P.A fB gB) mε
    (fun e => by
      have := EndTorus.connectedSpace_thickening (maximalIdeal R) e
      have : GeometricallyConnected (thickObj R (maximalIdeal R) e G₁).hom :=
        inferInstanceAs (GeometricallyConnected (pullback.snd G₁.hom (thick R (maximalIdeal R) e)))
      have : ConnectedSpace (thickObj R (maximalIdeal R) e G₁).left :=
        GroupConn.connectedSpace_of_section (thickObj R (maximalIdeal R) e G₁).hom
          (η : 𝟙_ _ ⟶ thickObj R (maximalIdeal R) e G₁).left (Over.w _)
      exact _root_.GlobalTheory.HomMum.exists_gen_level U₁.toUnifPre U₂.toUnifPre e (of e) (og e) u hu
        fun T z J hJ x x' y => _root_.GlobalTheory.HomMumAdd.pair_add_of_surj U₁.cubG U₂.cubG hN sj f g u hu T z J hJ x x' y) (closedPoint R)
  have hall : ∀ p : PrimeSpectrum R, p ∈ V := fun p =>
    ((PrimeSpectrum.le_iff_specializes p (closedPoint R)).1 (le_maximalIdeal p.isPrime.ne_top)).mem_open V.isOpen hV
  obtain ⟨t'', ht'', -⟩ := glue_gen (jn_isLB D₁.toPre D₂.toPre) (mφ D₁.toPre.P.A D₂.toPre.P.A fB gB) mε
    (fun _ : Unit => (D₁.toPre.P.A ⊗ D₁.toPre.P.A).hom ⁻¹ᵁ V) (fun y => ⟨(), hall _⟩) (fun _ => t') (fun _ => ht')
    (fun _ _ Z r r' z J _ h => by
      obtain rfl := (cancel_mono _).1 h
      rfl)
  obtain ⟨w', hw', -⟩ := exists_iso_of_gen (isPart_inr D₁.toPre.P.L D₂.toPre.P.L) (isPart_inl D₁.toPre.P.L D₂.toPre.P.L)
    D₂.toPre.P.isLB D₁.toPre.P.isLB (snd_surjective D₁.toPre.P.isLB) (fst_surjective D₂.toPre.P.isLB) t'' ht''
  exact ⟨w', hw'⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPart =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPartStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPartStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusHomOfIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.DVR
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT GlobalTheory.Mum GlobalTheory.Mum.Two

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordBundleIsoAlongHomsDescendsAbelianPartStatement =====
