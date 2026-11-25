module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis
public import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFactorExistsUniqueConstMulIntegralGenerat
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFunctionalEquationBundleTrivialAbelianParStatement
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.PsiInOfIsPowDeg
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsZeroGt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataPsiMemMaximalIdealTendstoZero
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemUnitsK
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFactorExistsUniqueConstMulIntegralGeneratStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ExistsFamRep
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ValPowGen
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.PrecompleteBases.PsbLb
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PhiGenPf
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZeroStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFunctionalEquationOfAdicSumTermwiseStatement
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsUnitValEqMul
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.PsiInIffScalarMem
import Mathlib.Tactic.Basify
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsAbelianSchemeThick
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsSecRelationDefect
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SectionArithmetic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordTermTranslateNormalisedGenerator, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordTermTranslateNormalisedGeneratorStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedGeneratorOfFactor, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedGeneratorOfFactorStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScalarsInt, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSectionRelatedAtZeroShift, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTermsMumfordFormalSectionTranslates, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTermsMumfordFormalSectionTranslatesStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedTwistedFactorValueAtLatticePoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedTwistedFactorValueAtLatticePointStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationCocycleInTranslation, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamily, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamilyStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordTermTranslateNormalisedGenerator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordTermTranslateNormalisedGenerator", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

noncomputable section

namespace GlobalTheory.MumTerm

variable {X Y Z : Scheme.{0}}

theorem scal_spec {A B : Type} [CommRing A] [CommRing B] (q : Y ⟶ Sp B) (φ : A →+* B) (r : A) :
    scal q (φ r) = scal (q ≫ Spec.map (CommRingCat.ofHom φ)) r := by
  have e := congrArg (fun h => h.hom r) (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom φ))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at e
  simp only [scal, Scheme.Hom.comp_appTop, CommRingCat.hom_comp, RingHom.comp_apply]
  rw [e]

theorem gs_scal {A : Type} [CommRing A] (p : Z ⟶ Y) (q : Y ⟶ Sp A) (z : Z) (r : A) :
    gs p z ⊤ (scal q r) = gs (p ≫ q) z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of A)).inv.hom r) :=
  gs_pull p q z ⊤ trivial _

theorem exists_smul {L : LB X} {K : Type} [Fintype K] {φ : K → (Y ⟶ X)} {ε : K → ℤ}
    (a : Γ(Y, ⊤)) (s : LB.Sec (LB.LinComb L φ ε)) : ∃ t : LB.Sec (LB.LinComb L φ ε),
      ∀ (Z : Scheme.{0}) (r : Z ⟶ Y) (z : Z) (J), Good L z J → sval t r z J = gs r z ⊤ a * sval s r z J := by
  refine ⟨⟨fun i => (Y.presheaf.map (homOfLE le_top).op).hom a * s.f i, fun i j => ?_⟩, fun Z r z J hJ => ?_⟩
  · rw [map_mul, map_mul, s.compat i j, mul_left_comm]
    congr 2
    rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, ← Functor.map_comp, ← Functor.map_comp]
    rfl
  · have hm := hJ.mem φ r
    exact (gs_mul r z _ hm _ _).trans (congrArg (· * _) (gs_res r z le_top hm a))

theorem exists_term : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegData R (maximalIdeal R)) (a : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X) (N : ℕ) (s₀ : SecT D.toPre a N (-1) 0) (ν : D.toPre.X) (u₀ : LB.Gen (LB.LinComb D.toPre.P.L (Sum.elim (tφ D.toPre a (shift h h' N (-1) ν)) (fun k => (padd D.toPre.P.A (𝟙 _) (toUnit _ ≫ D.toPre.c ν)).left ≫ tφ D.toPre a 0 k)) (dε N (-1)))), u₀.IsGen → ∀ ρ : R, (∀ u, IsFac D.toPre a h N (-1) ν 0 (shift h h' N (-1) ν) u → ∀ (Z : Scheme.{0}) (x : Z ⟶ (DegPre.BF D.toPre (FractionRing R)).left) (z : Z) (J), Good D.toPre.P.L z J → (val u x z J).val = gs x z ⊤ (scal ((fst _ _ : DegPre.BF D.toPre (FractionRing R) ⟶ TF (R := R) (FractionRing R)).left : (DegPre.BF D.toPre (FractionRing R)).left ⟶ Sp (FractionRing R)) (algebraMap R (FractionRing R) ρ)) * (val u₀ (x ≫ (DegPre.prB D.toPre (FractionRing R)).left) z J).val) → ∃ t : SecT D.toPre a N (-1) (shift h h' N (-1) ν), TRel h ν s₀ t ∧ ∀ e : ℕ, ρ ∈ maximalIdeal R ^ (e + 1) → Van (maximalIdeal R) t e := by
  intro R _ _ _ D a h h' N s₀ ν u₀ hu₀ ρ H
  obtain ⟨p, hp⟩ := exists_sec D.toPre.P.isLB (φ' := tφ D.toPre a (shift h h' N (-1) ν)) (ε' := tε N (-1))
    (fun U _ g => by
      simp only [Fintype.prod_sum_type, dε, Sum.elim_inl, Sum.elim_inr, zpow_neg, Finset.prod_inv_distrib]
      rw [mul_left_comm, mul_inv_cancel, _root_.mul_one])
    (pullMulSec s₀ (padd D.toPre.P.A (𝟙 _) (toUnit _ ≫ D.toPre.c ν)).left u₀ hu₀)
  obtain ⟨t, ht⟩ := exists_smul (scal D.toPre.P.A.hom ρ) p
  refine ⟨t, fun u hu Z x z J hJ => ?_, fun e he Z x z J hJ => ?_⟩
  · have e₁ : (DegPre.prB D.toPre (FractionRing R)).left ≫ (padd D.toPre.P.A (𝟙 _) (toUnit _ ≫ D.toPre.c ν)).left =
        (DegPre.trF D.toPre (FractionRing R) ν).left ≫ (DegPre.prB D.toPre (FractionRing R)).left := by
      rw [← Over.comp_left, ← Over.comp_left]
      congr 1
      simp only [DegPre.trF, padd, lift_snd]
      rw [← Category.assoc, comp_lift, Category.comp_id, ← Category.assoc, comp_toUnit]
    have e₂ : (DegPre.prB D.toPre (FractionRing R)).left ≫ D.toPre.P.A.hom =
        ((fst _ _ : DegPre.BF D.toPre (FractionRing R) ⟶ TF (R := R) (FractionRing R)).left :
          (DegPre.BF D.toPre (FractionRing R)).left ⟶ Sp (FractionRing R)) ≫ jK R := by
      have j : jFK (R := R) (FractionRing R) = 𝟙 _ := by
        simp [jFK]
      rw [Over.w]
      refine (Over.w (fst _ _ : DegPre.BF D.toPre (FractionRing R) ⟶ TF (R := R) (FractionRing R))).symm.trans ?_
      congr 1
      show jFK (R := R) (FractionRing R) ≫ jK R = jK R
      rw [j, Category.id_comp]
    rw [ht _ _ z J hJ, hp _ _ z J hJ, sval_pullMulSec _ _ _ _ _ z hJ, H u hu Z x z J hJ, Category.assoc, e₁,
      scal_spec, gs_scal, gs_scal, Category.assoc, e₂, mul_left_comm]
  · rw [ht _ _ z J hJ, gs_scal, Category.assoc, pullback.condition, ← gs_scal, ← scal_spec,
      Ideal.Quotient.eq_zero_iff_mem.2 he]
    have : scal (pullback.snd D.toPre.P.A.hom (thick R (maximalIdeal R) e)) (0 : R ⧸ maximalIdeal R ^ (e + 1)) = 0 := by
      simp only [scal, map_zero]
    exact (congrArg (· * _) ((congrArg (gs x z ⊤) this).trans (DVR.gs_zero x z ⊤ trivial))).trans (zero_mul _)

end GlobalTheory.MumTerm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordTermTranslateNormalisedGenerator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordTermTranslateNormalisedGeneratorStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordTermTranslateNormalisedGeneratorStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordTermTranslateNormalisedGenerator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordTermTranslateNormalisedGeneratorStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedGeneratorOfFactor =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedGeneratorOfFactor", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFactorExistsUniqueConstMulIntegralGenerat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFunctionalEquationBundleTrivialAbelianParStatement\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.PsiInOfIsPowDeg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsZeroGt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

noncomputable section

namespace GlobalTheory.TwNorm

open GlobalTheory.TwFac

variable {R : Type} [CommRing R] [IsDomain R]

theorem exists_normalised (D : DegPre R) (a : D.P.A ⟶ D.P.A) (h : D.X →+ D.X) [IsMonHom a]
    (hh : ∀ y, D.c (h y) = D.c y ≫ a) (n j : ℤ) (mu β' : D.X)
    (g : ∀ y : D.X, LB.Gen (LB.LinComb D.P.L (K := PUnit) (fun _ => (D.c y).left) (fun _ => -1)))
    (hg : ∀ y, (g y).IsGen)
    (w : LB.Gen (LB.LinComb D.P.L (Sum.elim (tφ D a β')
      (fun k => (padd D.P.A (𝟙 _) (toUnit _ ≫ D.c mu)).left ≫ tφ D a 0 k)) (dε n j))) (hw : w.IsGen) :
    ∃ u : LB.Gen (LB.LinComb D.P.L (Sum.elim (tφ D a β')
      (fun k => (padd D.P.A (𝟙 _) (toUnit _ ≫ D.c mu)).left ≫ tφ D a 0 k)) (dε n j)), u.IsGen ∧
      ∀ (Z : Scheme.{0}) (r : Z ⟶ (𝟙_ (Over (Sp R))).left) (z : Z) J, Good D.P.L z J →
        val u (r ≫ eSec D.P.A) z J = val (g mu) r z J ^ n * val (g (h mu)) r z J ^ j * val D.rig r z J ^ (n + j) := by
  obtain ⟨p₁, h₁, v₁⟩ := exists_zpow (g mu) (hg mu) n
  obtain ⟨p₂, h₂, v₂⟩ := exists_zpow (g (h mu)) (hg _) j
  obtain ⟨p₃, h₃, v₃⟩ := exists_zpow D.rig D.rig_gen (n + j)
  have i₀ : toUnit (𝟙_ (Over (Sp R))) = 𝟙 _ := toUnit_unique _ _
  have a₁ : ∀ χ, DVR.cP D (𝟙_ _) χ = D.c χ := fun χ => by rw [DVR.cP, i₀, Category.id_comp]
  have a₂ : η[D.P.A] = 1 := by rw [Hom.one_def, i₀, Category.id_comp]
  have z₃ : η[D.P.A] ≫ padd D.P.A (𝟙 _) (toUnit _ ≫ D.c mu) = D.c mu := by
    refine (MonObj.comp_mul _ (𝟙 _) (DVR.cP D _ mu)).trans ?_
    rw [DVR.comp_cP, Category.comp_id, a₂, _root_.one_mul, a₁]
  obtain ⟨u, hu, vu⟩ := exists_norm D.P.isLB (toUnit D.P.A).left (eSec D.P.A)
    (congrArg (fun q => q.left) (toUnit_unique (η[D.P.A] ≫ toUnit _) (𝟙 _))) (fun U _ f => by
      have q₁ := prod_t D a β' n j η[D.P.A] f
      have q₂ := prod_t D a 0 n j (η[D.P.A] ≫ padd D.P.A (𝟙 _) (toUnit _ ≫ D.c mu)) f
      have b₁ : (1 : 𝟙_ (Over (Sp R)) ⟶ D.P.A) ≫ a = 1 := MonObj.one_comp _
      conv_rhs at q₁ => rw [a₂, b₁, _root_.one_mul]
      conv_rhs at q₂ => rw [z₃, ← hh, cPoint_zero, _root_.mul_one]
      simp only [Over.comp_left, Category.assoc] at q₂
      refine (DVR.prod_sum₂ (K := Fin 5) (K' := Fin 5) (U := U) _ q₁ (DVR.prod_neg _ _ q₂)).trans ?_
      have a₃ : eSec D.P.A = (1 : 𝟙_ (Over (Sp R)) ⟶ D.P.A).left := congrArg (fun q => q.left) a₂
      simp only [Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, Fintype.prod_unique, a₃]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv, ofMul_zpow]
      module)
    w hw (LB.mulGen D.P.L _ _ _ _ (LB.mulGen D.P.L _ _ _ _ p₁ p₂) p₃)
    (DVR.mulGen_isGen _ _ _ _ _ _ _ (DVR.mulGen_isGen _ _ _ _ _ _ _ h₁ h₂) h₃)
  have hc := corr_of_val D.P.isLB (t := LB.pullGen D.P.L _ _ u (eSec D.P.A))
    (t' := LB.mulGen D.P.L _ _ _ _ (LB.mulGen D.P.L _ _ _ _ p₁ p₂) p₃) fun y J hJ => by
      rw [val_pull hJ, Category.id_comp]; exact vu y J hJ
  refine ⟨u, hu, fun Z r z J hJ => (val_pull hJ _ _ _).symm.trans ((val_corr hJ hc r).trans ?_)⟩
  exact (val_mul hJ _ _ _).trans (congrArg₂ (· * ·)
    ((val_mul hJ _ _ _).trans (congrArg₂ (· * ·) (v₁ _ _ _ _) (v₂ _ _ _ _))) (v₃ _ _ _ _))

theorem val_tau_zero (D : DegPre R) (hB : D.TauBimult) (x : D.X) {z : (TK R).left} {J} (hJ : Good D.P.L z J) :
    val (D.tau x 0) (𝟙 _) z J = 1 := by
  unfold DegPre.tau
  rw [val_mul hJ, val_mul hJ, val_mul hJ, val_inv, val_inv, val_inv,
    congrArg (fun w => val (D.psi w) (𝟙 _) z J) (add_zero x), mul_inv_cancel, _root_.one_mul,
    GlobalTheory.PsiInPow.val_psi_zero D hB hJ, inv_inv, mul_inv_cancel]

def germK (K : Type) [Field K] (z : Sp K) : K →+* (Sp K).presheaf.stalk z :=
  ((Sp K).presheaf.germ ⊤ z trivial).hom.comp (Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom

theorem gs_sec {K : Type} [Field K] {Y : Scheme.{0}} (p : Y ⟶ Sp K) (e : Sp K ⟶ Y) (he : e ≫ p = 𝟙 _) (z : Sp K) (c : K) :
    gs e z ⊤ (scal p c) = germK K z c := by
  refine (gs_pull e p z ⊤ trivial _).trans ?_
  rw [he, gs_eq _ z ⊤ trivial]
  rfl

theorem gs_generic (z : Sp (FractionRing R)) (r : R) :
    gs (𝟙 _) z ⊤ (scal (jK R) r) = germK (FractionRing R) z (algebraMap R _ r) := by
  have nat := congrArg (fun g => g.hom r)
    (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom (algebraMap R (FractionRing R))))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at nat
  rw [gs_eq _ z ⊤ trivial]
  exact congrArg ((Sp (FractionRing R)).presheaf.germ ⊤ z trivial).hom nat.symm

theorem const_eq {S : Type} [CommRing S] {u u₀ p t k k' G : Sˣ} {c r : S} {m : ℤ} (e₁ : u.val = c * u₀.val)
    (e₂ : u = p * t * k ^ m) (ht : t = 1) (hk : k = k') (e₃ : p.val = r * G.val) (e₄ : u₀ = G * k' ^ m) : c = r := by
  subst ht hk e₂
  refine (Units.mul_left_inj u₀).1 ?_
  rw [← e₁, e₄, _root_.mul_one, Units.val_mul, Units.val_mul, e₃, _root_.mul_assoc]

theorem exists_gen_fac : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ N : ℕ, 1 ≤ N → ∀ (r : D.toPre.X → R) (g : ∀ y : D.toPre.X, LB.Gen (LB.LinComb D.toPre.P.L (K := PUnit) (fun _ => (D.toPre.c y).left) (fun _ => -1))), (∀ y, (g y).IsGen) → (∀ y (z : (TK R).left) (J), Good D.toPre.P.L z J → (val (D.toPre.psi y) (𝟙 _) z J ^ N * (val (D.toPre.psi (h y)) (𝟙 _) z J)⁻¹).val = gs (𝟙 _) z ⊤ (scal (jK R) (r y)) * (val (g y) (toUnit (TK R)).left z J ^ N * (val (g (h y)) (toUnit (TK R)).left z J)⁻¹).val) → ∀ ν : D.toPre.X, ∃ u₀ : LB.Gen (LB.LinComb D.toPre.P.L (Sum.elim (tφ D.toPre a (shift h h' N (-1) ν)) (fun k => (padd D.toPre.P.A (𝟙 _) (toUnit _ ≫ D.toPre.c ν)).left ≫ tφ D.toPre a 0 k)) (dε N (-1))), u₀.IsGen ∧ ∀ u, IsFac D.toPre a h N (-1) ν 0 (shift h h' N (-1) ν) u → ∀ (Z : Scheme.{0}) (x : Z ⟶ (DegPre.BF D.toPre (FractionRing R)).left) (z : Z) (J), Good D.toPre.P.L z J → (val u x z J).val = gs x z ⊤ (scal ((fst _ _ : DegPre.BF D.toPre (FractionRing R) ⟶ TF (R := R) (FractionRing R)).left : (DegPre.BF D.toPre (FractionRing R)).left ⟶ Sp (FractionRing R)) (algebraMap R (FractionRing R) (r ν))) * (val u₀ (x ≫ (DegPre.prB D.toPre (FractionRing R)).left) z J).val := by
  intro R _ _ _ hR D a a' h h' hE N _ r g hg hr ν
  have ha : IsMonHom a := hE.1
  have hh : ∀ y, D.toPre.c (h y) = D.toPre.c y ≫ a := hE.2.2.2.1
  obtain ⟨w, hw⟩ := GlobalTheory.T.twistedFunctionalEquation_bundle_trivial_abelianPart R hR D a a' h h' hE N (-1) ν 0 (shift h h' N (-1) ν) (zero_add _).symm
  obtain ⟨u₀, hu₀, v₀⟩ := exists_normalised D.toPre a h hh N (-1) ν _ g hg w hw
  refine ⟨u₀, hu₀, fun u hu => ?_⟩
  obtain ⟨c, hc⟩ := (fac_exists_unique_const R hR D a h ha hh N (-1) ν 0 _ u₀ hu₀).2.2 u hu.1
  suffices e : c = algebraMap R (FractionRing R) (r ν) by subst e; exact hc
  obtain ⟨z⟩ : Nonempty (Sp (FractionRing R)) := inferInstanceAs (Nonempty (PrimeSpectrum (FractionRing R)))
  choose J hJ using fun ψ : Sp (FractionRing R) ⟶ D.toPre.P.A.left => exists_chart D.toPre.P.isLB (ψ z)
  have j₁ : jFK (R := R) (FractionRing R) = 𝟙 _ := Spec.map_id _
  have z₁ : DegPre.zF D.toPre (FractionRing R) ≫ fst _ _ = 𝟙 _ := lift_fst _ _
  have z₂ : (DegPre.zF D.toPre (FractionRing R)).left ≫ (DegPre.prB D.toPre (FractionRing R)).left =
      (toUnit (TK R)).left ≫ eSec D.toPre.P.A := by
    refine (congrArg (fun q => q.left) (lift_snd (𝟙 (TF (R := R) (FractionRing R))) (toUnit _ ≫ η[D.toPre.P.A]))).trans ?_
    show (jFK (R := R) (FractionRing R) ≫ (toUnit (TK R)).left) ≫ eSec D.toPre.P.A = _
    rw [j₁, Category.id_comp]
  have e₁ := hc _ (DegPre.zF D.toPre (FractionRing R)).left z J hJ
  have e₂ := hu.2 z J hJ
  have e₃ := hr ν z J hJ
  have e₄ := v₀ _ (toUnit (TK R)).left z J hJ
  have e₅ : val D.toPre.rigK (𝟙 _) z J = val D.toPre.rig (toUnit (TK R)).left z J :=
    (val_pull hJ _ _ _).trans (congrArg (fun q => val D.toPre.rig q z J) (Category.id_comp _))
  rw [j₁, zpow_natCast, zpow_neg_one] at e₂
  rw [zpow_natCast, zpow_neg_one] at e₄
  have e₆ := gs_sec _ _ (congrArg (fun q => q.left) z₁) z c
  have e₇ := gs_generic z (r ν)
  exact (germK (FractionRing R) z).injective (e₆.symm.trans ((const_eq e₁ e₂ (val_tau_zero D.toPre D.tau_bimult ν hJ) e₅ e₃
    ((congrArg (fun q => val u₀ q z J) z₂).trans e₄)).trans e₇))

end GlobalTheory.TwNorm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedGeneratorOfFactor =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedGeneratorOfFactorStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedGeneratorOfFactorStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedGeneratorOfFactor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedGeneratorOfFactorStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScalarsInt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScalarsInt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDataPsiMemMaximalIdealTendstoZero\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemUnitsK\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsUnitValEqMul\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.PsiInIffScalarMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam
open GlobalTheory.UU GlobalTheory.Mum.TensPos GlobalTheory.PsiScalUnit

noncomputable section

namespace GlobalTheory.MumInt

theorem bal_part {R : Type} [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegPre R)
    (ga : ∀ χ : D.X, LB.Gen (LB.LinComb D.P.L (K := PUnit) (fun _ => (D.c χ).left) (fun _ => -1)))
    (k : D.X → (FractionRing R)ˣ) (hk : PsiScal D ga k) {a a' : D.P.A ⟶ D.P.A} {h h' : D.X →+ D.X}
    (hE : EndData D a a' h h') (y w : D.X) :
    ∃ u ∈ unitsK R, k (h y + w) * k y * k (h' w) = u * (k (y + h' w) * k (h y) * k w) := by
  obtain ⟨ha, ha', hr, -, -, hb⟩ := hE
  obtain ⟨t, ht, t₀⟩ := exists_ros GlobalTheory.globalFns_holds D.P.isAb D.P.isLB a a' hr
  obtain ⟨z⟩ : Nonempty (TK R).left := inferInstanceAs (Nonempty (PrimeSpectrum (FractionRing R)))
  obtain ⟨J, hJ, iJ⟩ := GlobalTheory.Mum.TensPos.exists_int D.P z
  let E : (FractionRing R)ˣ →* ((TK R).left.presheaf.stalk z)ˣ := Units.map (ev z).toMonoidHom
  have hψ : ∀ χ, val (D.psi χ) (𝟙 _) z J = E (k χ) * val (ga χ) (toUnit (TK R)).left z J := fun χ =>
    Units.ext (((hk χ).2 (TK R) (𝟙 _) z J hJ).trans (congrArg₂ (· * ·) (ev_eq z _) rfl))
  have vτ : ∀ a b : D.X, val (D.tau a b) (𝟙 _) z J =
      val (D.psi (a + b)) (𝟙 _) z J * (val (D.psi a) (𝟙 _) z J)⁻¹ * (val (D.psi b) (𝟙 _) z J)⁻¹ *
        (val D.rigK (𝟙 _) z J)⁻¹ := fun a b =>
    (val_mul hJ _ _ _).trans (congrArg₂ (· * ·) ((val_mul hJ _ _ _).trans (congrArg₂ (· * ·) ((val_mul hJ _ _ _).trans
      (congrArg₂ (· * ·) rfl (val_inv _ _))) (val_inv _ _))) (val_inv _ _))
  have mg : ∀ χ, val (ga χ) (toUnit (TK R)).left z J ∈ unitsS z := fun χ => GlobalTheory.Mum.TensPos.val_mem D.P z iJ _ _ _
  have e := ((val_mul hJ _ _ _).trans (congrArg₂ (· * ·) rfl (val_pull hJ _ _ _))).symm.trans
    (val_corr hJ (hb t ht t₀ y w) (𝟙 _))
  have ep : 𝟙 _ ≫ D.pt2 y w = (toUnit (TK R)).left ≫ (lift (D.c y) (D.c w)).left := by
    rw [Category.id_comp, ← Over.comp_left, comp_lift]; rfl
  have mt : val t (𝟙 _ ≫ D.pt2 y w) z J ∈ unitsS z := by
    rw [ep, ← val_pull hJ]
    refine GlobalTheory.Mum.TensPol.val_mem z iJ _ (fun i => ?_) _ _
    have hφ : rosatiφ D.P.A a a' i ≫ D.P.A.hom = (D.P.A ⊗ D.P.A).hom := by
      fin_cases i <;> exact Over.w _
    rw [Category.assoc, hφ]
    exact Over.w _
  rw [vτ, vτ] at e
  simp only [hψ] at e
  generalize val t (𝟙 _ ≫ D.pt2 y w) z J = v at e mt
  refine ⟨k (h y + w) * k y * k (h' w) * (k (y + h' w) * k (h y) * k w)⁻¹, GlobalTheory.Mum.TensPol.mem_unitsK z ?_,
    by rw [inv_mul_cancel_right]⟩
  have : E (k (h y + w) * k y * k (h' w) * (k (y + h' w) * k (h y) * k w)⁻¹) =
      val (ga (y + h' w)) (toUnit (TK R)).left z J * val (ga (h y)) (toUnit (TK R)).left z J *
        val (ga w) (toUnit (TK R)).left z J * (val (ga (h y + w)) (toUnit (TK R)).left z J *
        val (ga y) (toUnit (TK R)).left z J * val (ga (h' w)) (toUnit (TK R)).left z J * v)⁻¹ := by
    simp only [map_mul, map_inv]
    apply Additive.ofMul.injective
    have e' := congrArg Additive.ofMul e
    simp only [ofMul_mul, ofMul_inv] at e' ⊢
    linear_combination (norm := abel) e'
  exact this ▸ mul_mem (mul_mem (mul_mem (mg _) (mg _)) (mg _))
    (inv_mem (mul_mem (mul_mem (mul_mem (mg _) (mg _)) (mg _)) mt))

theorem scalars_int {R : Type} [CommRing R] [IsDomain R] {X : Type} [AddCommGroup X] [Module.Free ℤ X]
    (k : X → (FractionRing R)ˣ) (h h' : X →+ X) (N : ℕ)
    (hn : ∀ x, ∃ u ∈ unitsK R, k (-x) = u * k x)
    (hc : ∀ x y w, ∃ u ∈ unitsK R, k (x + y + w) * k x * k y * k w = u * (k (x + y) * k (x + w) * k (y + w)))
    (hi : ∀ x, x ≠ 0 → ∃ s : R, (k x : FractionRing R) = algebraMap R _ s)
    (hb : ∀ y w, ∃ u ∈ unitsK R, k (h y + w) * k y * k (h' w) = u * (k (y + h' w) * k (h y) * k w))
    (hP : ∀ (κ : X → (FractionRing R)ˣ), (∀ y, κ (-y) = κ y) → κ 0 = 1 →
      (∀ x y z, κ (x + y + z) * κ x * κ y * κ z = κ (x + y) * κ (x + z) * κ (y + z)) →
      (∀ y, ∃ r : R, (κ y : FractionRing R) = algebraMap R _ r) →
      (∀ y z, ∃ u : Rˣ, ((κ (h y + z) * κ y * κ (h' z) : (FractionRing R)ˣ) : FractionRing R) =
        algebraMap R _ (u : R) * ((κ (y + h' z) * κ (h y) * κ z : (FractionRing R)ˣ) : FractionRing R)) →
      ∀ y, ∃ r : R, ((κ y ^ N : (FractionRing R)ˣ) : FractionRing R) = algebraMap R _ r * κ y * κ (h y)) (y : X) :
    (∃ s : R, (k y : FractionRing R) = algebraMap R _ s) ∧
      ∃ ρ : R, ((k y ^ N * (k (h y))⁻¹ : (FractionRing R)ˣ) : FractionRing R) = algebraMap R _ ρ * k y := by
  obtain ⟨B, hB⟩ := exists_exact (unitsK R) k hn hc
  choose u hu eu using hB
  let κ : X → (FractionRing R)ˣ := fun x => (B x x).toMul
  have eκ : ∀ x, k x = u x * κ x := eu
  have κn : ∀ x, κ (-x) = κ x := fun x => by simp [κ]
  have κ0 : κ 0 = 1 := by simp [κ]
  have κc : ∀ x y w, κ (x + y + w) * κ x * κ y * κ w = κ (x + y) * κ (x + w) * κ (y + w) := fun x y w => by
    apply Additive.ofMul.injective
    simp only [κ, ofMul_mul, ofMul_toMul, map_add (f := _), LinearMap.add_apply]
    abel
  have κi : ∀ x, ∃ s : R, (κ x : FractionRing R) = algebraMap R _ s := fun x => by
    by_cases hx : x = 0
    · exact ⟨1, by rw [hx, κ0, map_one, Units.val_one]⟩
    · obtain ⟨s, hs⟩ := hi x hx
      obtain ⟨s', -, e⟩ := mem_of_unit ⊤ ((unitsK R).inv_mem (hu x)) ⟨s, trivial, hs⟩
      rw [eκ x, inv_mul_cancel_left] at e
      exact ⟨s', e⟩
  have κb : ∀ y z, ∃ v : Rˣ, ((κ (h y + z) * κ y * κ (h' z) : (FractionRing R)ˣ) : FractionRing R) =
      algebraMap R _ (v : R) * ((κ (y + h' z) * κ (h y) * κ z : (FractionRing R)ˣ) : FractionRing R) := fun y z => by
    obtain ⟨v, hv, e⟩ := hb y z
    obtain ⟨v', ev'⟩ := mul_mem (mul_mem hv (mul_mem (mul_mem (hu (y + h' z)) (hu (h y))) (hu z)))
      (inv_mem (mul_mem (mul_mem (hu (h y + z)) (hu y)) (hu (h' z))))
    refine ⟨v', congrArg Units.val (?_ : _ = Units.map (algebraMap R (FractionRing R)).toMonoidHom v' * _)⟩
    rw [ev']
    simp only [eκ] at e
    apply Additive.ofMul.injective
    have e' := congrArg Additive.ofMul e
    simp only [ofMul_mul, ofMul_inv] at e' ⊢
    linear_combination (norm := abel) e'
  obtain ⟨ρ, eρ⟩ := hP κ κn κ0 κc κi κb y
  obtain ⟨v, ev'⟩ := mul_mem (pow_mem (hu y) N) (inv_mem (mul_mem (hu y) (hu (h y))))
  refine ⟨?_, v * ρ, ?_⟩
  · obtain ⟨s, hs⟩ := κi y
    obtain ⟨s', -, e⟩ := mem_of_unit ⊤ (hu y) ⟨s, trivial, hs⟩
    exact ⟨s', eκ y ▸ e⟩
  · have e1 : algebraMap R (FractionRing R) v = ((u y ^ N * (u y * u (h y))⁻¹ : (FractionRing R)ˣ) : FractionRing R) :=
      congrArg Units.val ev'
    rw [map_mul, e1, eκ y, eκ (h y), mul_pow]
    simp only [Units.val_mul, Units.val_inv_eq_inv_val, eρ]
    have := (u y).ne_zero
    have := (u (h y)).ne_zero
    have := (κ (h y)).ne_zero
    field_simp

theorem gs_scal {R : Type} [CommRing R] [IsDomain R] (z : (TK R).left) (r : R) :
    gs (𝟙 _) z ⊤ (scal (jK R) r) = ev z (algebraMap R _ r) := by
  have nat := congrArg (fun g => g.hom r)
    (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom (algebraMap R (FractionRing R))))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at nat
  rw [gs_eq _ z ⊤ trivial]
  exact congrArg ((TK R).left.presheaf.germ ⊤ z trivial).hom nat.symm

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ N : ℕ, 1 ≤ N → GlobalTheory.MumMult.PosN D a h h' N → ∃ (r : D.toPre.X → R) (g : ∀ y : D.toPre.X, LB.Gen (LB.LinComb D.toPre.P.L (K := PUnit) (fun _ => (D.toPre.c y).left) (fun _ => -1))), (∀ y, (g y).IsGen) ∧ (∀ y, y ≠ 0 → r y ∈ maximalIdeal R) ∧ (∀ e : ℕ, {y | r y ∉ maximalIdeal R ^ e}.Finite) ∧ ∀ y (z : (TK R).left) (J), Good D.toPre.P.L z J → (val (D.toPre.psi y) (𝟙 _) z J ^ N * (val (D.toPre.psi (h y)) (𝟙 _) z J)⁻¹).val = gs (𝟙 _) z ⊤ (scal (jK R) (r y)) * (val (g y) (toUnit (TK R)).left z J ^ N * (val (g (h y)) (toUnit (TK R)).left z J)⁻¹).val := by
  intro R _ _ _ _ D a a' h h' hE N _ hP
  obtain ⟨ga, k, hk⟩ := exists_psiScal R D.toPre
  have key := scalars_int k h h' N
    (fun x => by
      obtain ⟨u, e⟩ := even_part D.toPre ga k hk D.psi_even x
      exact ⟨_, ⟨u, rfl⟩, Units.ext e⟩)
    (fun x y w => by
      obtain ⟨u, e⟩ := cub_part D.toPre ga k hk D.tau_bimult x y w
      exact ⟨_, ⟨u, rfl⟩, Units.ext e⟩)
    (fun x hx => by
      obtain ⟨s, -, e⟩ := (PsiScalIn.main_local D.toPre ga k hk x _).1 (D.psi_pos x hx)
      exact ⟨s, e.symm⟩)
    (bal_part D.toPre ga k hk hE) hP.2
  choose s hs using fun y => (key y).1
  choose ρ hρ using fun y => (key y).2
  have hm : ∀ y (I : Ideal R), D.toPre.PsiIn y I → ρ y * s y ∈ I := fun y I hy => by
    obtain ⟨t, ht, e⟩ := (PsiScalIn.main_local D.toPre ga k hk y _).1 hy
    obtain rfl : t = s y := IsFractionRing.injective R (FractionRing R) (e.trans (hs y))
    exact I.mul_mem_left _ ht
  refine ⟨fun y => ρ y * s y, ga, fun y => (hk y).1, fun y hy => hm y _ (D.psi_pos y hy),
    fun e => (D.psi_tendsto e).subset fun y hy hi => hy (hm y _ hi), fun y z J hJ => ?_⟩
  have hψ : ∀ χ, val (D.toPre.psi χ) (𝟙 _) z J =
      Units.map (ev z).toMonoidHom (k χ) * val (ga χ) (toUnit (TK R)).left z J := fun χ =>
    Units.ext (((hk χ).2 (TK R) (𝟙 _) z J hJ).trans (congrArg₂ (· * ·) (ev_eq z _) rfl))
  have e : algebraMap R (FractionRing R) (ρ y * s y) = (k y ^ N * (k (h y))⁻¹).val := by
    rw [hρ, map_mul, hs]
  rw [gs_scal, e, hψ, hψ]
  refine congrArg Units.val (?_ : _ = Units.map (ev z).toMonoidHom (k y ^ N * (k (h y))⁻¹) * _)
  rw [map_mul, map_pow, map_inv, mul_pow, mul_inv, _root_.mul_mul_mul_comm]

end GlobalTheory.MumInt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScalarsInt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSectionRelatedAtZeroShift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSectionRelatedAtZeroShift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFactorExistsUniqueConstMulIntegralGeneratStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsZeroGt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ExistsFamRep\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ValPowGen\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.PrecompleteBases.PsbLb\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.TwFac

theorem formEq_empty_dε {X Y : Scheme.{0}} (φ φ' : Fin 5 → (Y ⟶ X)) (e : φ' = φ) (n j : ℤ) :
    FormEq (K := PEmpty) PEmpty.elim PEmpty.elim (Sum.elim φ φ') (dε n j) := by
  subst e
  intro U _ h
  simp only [dε, Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, zpow_neg, Finset.prod_inv_distrib,
    mul_inv_cancel, Finset.univ_eq_empty, Finset.prod_empty]

theorem val_tau_psi_zero {R : Type} [CommRing R] [IsDomain R] {D : DegPre R} (hB : D.TauBimult)
    (z : (TF (R := R) (FractionRing R)).left) (J) (hJ : Good D.P.L z J) :
    val (D.tau 0 0) (jFK (R := R) (FractionRing R)) z J = 1 ∧
      val (D.psi 0) (jFK (R := R) (FractionRing R)) z J * val D.rigK (jFK (R := R) (FractionRing R)) z J = 1 := by
  have C : IsCub (DVR.th D (T := TF (R := R) (FractionRing R)) z J) := isCub_cubV D.cub hJ
  have z0 : (0 : D.X) + 0 = 0 := add_zero 0
  have hτ := DVR.tau_mul (𝟙 (TF (R := R) (FractionRing R))) hJ hB 0 0 0
  have hψ := DVR.UUA.psi_add (𝟙 (TF (R := R) (FractionRing R))) hJ (0 : D.X) 0
  have hpt : ∀ a b c : D.X, a = b → ∀ (r : (TF (R := R) (FractionRing R)).left ⟶ _),
      val (D.tau a c) r z J = val (D.tau b c) r z J := by rintro a b c rfl r; rfl
  have hpp : ∀ a b : D.X, a = b → ∀ (r : (TF (R := R) (FractionRing R)).left ⟶ _),
      val (D.psi a) r z J = val (D.psi b) r z J := by rintro a b rfl r; rfl
  rw [hpt _ _ _ z0, cPoint_zero, C.face] at hτ
  have t00 := (mul_left_cancel hτ).symm
  rw [hpp _ _ z0, t00, _root_.one_mul] at hψ
  rw [Over.id_left, Category.id_comp] at t00 hψ
  refine ⟨t00, mul_left_cancel (a := val (D.psi 0) (jFK (R := R) (FractionRing R)) z J) ?_⟩
  rw [_root_.mul_one, ← _root_.mul_assoc]
  exact hψ.symm

theorem trel_zero : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ N : ℕ, 1 ≤ N → ∀ (s₀ : SecT D.toPre a N (-1) 0) (s' : SecT D.toPre a N (-1) (shift h h' N (-1) 0)), (∀ (Z : Scheme.{0}) (x : Z ⟶ D.toPre.P.A.left) (z : Z) (J), Good D.toPre.P.L z J → sval s' x z J = sval s₀ x z J) → TRel h 0 s₀ s' := by
  intro R _ _ _ hR D a a' h h' hE N _ s₀
  have hs : shift h h' N (-1) 0 = 0 := by simp [shift]
  generalize shift h h' N (-1) 0 = β' at hs
  subst hs
  intro s' hv u hu Z x z J hJ
  have hL := D.toPre.P.isLB
  have htr : (DegPre.trF D.toPre (FractionRing R) 0).left = 𝟙 _ := by rw [DVR.UUA.trF_zero, Over.id_left]
  have hc0 : D.toPre.c 0 = 1 := by
    have h := D.toPre.c_add 0 0
    rw [add_zero] at h
    exact mul_eq_left.1 h.symm
  have hp : padd D.toPre.P.A (𝟙 _) (toUnit _ ≫ D.toPre.c 0) = 𝟙 _ := by
    rw [hc0, MonObj.comp_one]
    exact _root_.mul_one (𝟙 D.toPre.P.A)
  obtain ⟨u₀, hu₀, -⟩ := exists_gen hL (formEq_empty_dε (tφ D.toPre a 0)
    (fun k => (padd D.toPre.P.A (𝟙 _) (toUnit _ ≫ D.toPre.c 0)).left ≫ tφ D.toPre a 0 k)
    (funext fun k => by rw [hp, Over.id_left, Category.id_comp]) (N : ℤ) (-1)) (LB.oneGen D.toPre.P.L)
    (LB.isGen_oneGen D.toPre.P.L)
  obtain ⟨u', hu', hv'⟩ := exists_gen hL (φ' := dφ D.toPre a 0 0 0) (formEq_empty_dε _ _
    (funext fun k => by rw [htr, Category.id_comp]) (N : ℤ) (-1)) (LB.oneGen D.toPre.P.L)
    (LB.isGen_oneGen D.toPre.P.L)
  have hf : IsFac D.toPre a h N (-1) 0 0 0 u' := by
    refine ⟨hu', fun y I hI => ?_⟩
    obtain ⟨t0, p0⟩ := val_tau_psi_zero D.tau_bimult y I hI
    have hh : val (D.toPre.psi (h 0)) (jFK (R := R) (FractionRing R)) y I =
        val (D.toPre.psi 0) (jFK (R := R) (FractionRing R)) y I :=
      congrArg (fun w => val (D.toPre.psi w) (jFK (R := R) (FractionRing R)) y I) (map_zero h)
    rw [hv' _ _ y I hI, val_one, hh, t0, _root_.mul_one, ← zpow_add, ← mul_zpow, p0, one_zpow]
  have key := (_root_.GlobalTheory.TwFac.fac_exists_unique_const R hR D a h hE.1 hE.2.2.2.1 N (-1) 0 0 0 u₀ hu₀).2.1 u u' hu hf Z x z J hJ
  rw [key, hv' _ _ z J hJ, val_one, htr, Category.id_comp, Units.val_one, _root_.mul_one]
  exact hv Z _ z J hJ

end GlobalTheory.TwFac
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSectionRelatedAtZeroShift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTermsMumfordFormalSectionTranslates =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTermsMumfordFormalSectionTranslates", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsAbelianSchemeThick\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordTermTranslateNormalisedGeneratorStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalisedTwistedGeneratorOfFactorStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ScalarsInt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedSectionRelatedAtZeroShift\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsSecRelationDefect\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SectionArithmetic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

noncomputable section

namespace GlobalTheory.TwFam

theorem exists_secT_weight_zero : ∀ (R : Type) [CommRing R] [IsDomain R] (D : DegPre R) (a : D.P.A ⟶ D.P.A) (N : ℕ) (σ₀ : LB.Sec (LB.LinComb D.P.L (K := Fin 2) ![𝟙 D.P.A.left, a.left] ![(N : ℤ), -1])) (β : D.X), β = 0 → ∃ s : SecT D a N (-1) β, ∀ (Z : Scheme.{0}) (x : Z ⟶ D.P.A.left) (z : Z) (J), Good D.P.L z J → sval s x z J = sval σ₀ x z J := by
  intro R _ _ D a N σ₀ β hβ
  subst hβ
  have hc : (toUnit D.P.A ≫ D.c 0) = (1 : D.P.A ⟶ D.P.A) := GlobalTheory.CoordToExt.c_zero D D.P.A
  have h1 : (padd D.P.A (𝟙 D.P.A) (toUnit _ ≫ D.c 0)).left = 𝟙 D.P.A.left := by
    rw [hc]
    have e : padd D.P.A (𝟙 D.P.A) (1 : D.P.A ⟶ D.P.A) = 𝟙 D.P.A * 1 := rfl
    rw [e, _root_.mul_one]
    rfl
  have h2 : (toUnit D.P.A ≫ D.c 0).left = (toUnit D.P.A ≫ η[D.P.A]).left := by
    rw [hc]
    rfl
  obtain ⟨d, hd⟩ := GlobalTheory.exists_sec_relation_defect D.P.A.left D.P.A.left D.P.A.left D.P.L D.P.isLB _ _ _
    ![𝟙 D.P.A.left, a.left] ![(N : ℤ), -1] (tφ D a 0) (tε N (-1)) _ _ (𝟙 _) σ₀
    (ReciprocityTheory.ChartRestriction.G.H1.SectionArithmetic.secZero _) (LB.oneGen D.P.L) (-1) 0 GlobalTheory.CoordToExt.isGen_one
    (fun U _ f => by
      simp only [tφ, tε, h1, h2, Fin.prod_univ_five, Fin.prod_univ_two, Fintype.prod_sum_type,
        Sum.elim_inl, Sum.elim_inr, Category.id_comp, Matrix.cons_val_zero, Matrix.cons_val_one,
        Matrix.cons_val_two, Matrix.cons_val_three, Matrix.cons_val_four]
      simp
      group)
  refine ⟨d, fun Z x z J hJ => ?_⟩
  have k0 : gs x z ⊤ (0 : Γ(D.P.A.left, ⊤)) = 0 := by
    rw [gs_eq x z ⊤ (by simp)]
    first
      | (rw [map_zero, map_zero]; done)
  have k1 : gs x z ⊤ (-1 : Γ(D.P.A.left, ⊤)) = -1 := by
    rw [gs_eq x z ⊤ (by simp)]
    first
      | (rw [map_neg, map_one, map_neg, map_one]; done)
  rw [hd Z x z J hJ, val_one, k0, k1, Category.comp_id]
  simp

theorem exists_terms : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ N : ℕ, 1 ≤ N → GlobalTheory.MumMult.PosN D a h h' N → ∀ (σ₀ : LB.Sec (LB.LinComb D.toPre.P.L (K := Fin 2) ![𝟙 D.toPre.P.A.left, a.left] ![(N : ℤ), -1])), ∃ (s₀ : SecT D.toPre a N (-1) 0) (s : ∀ ν, SecT D.toPre a N (-1) (shift h h' N (-1) ν)), (∀ ν, TRel h ν s₀ (s ν)) ∧ Small (maximalIdeal R) s ∧ (∀ ν, ν ≠ 0 → Van (maximalIdeal R) (s ν) 0) ∧ (∀ (Z : Scheme.{0}) (x : Z ⟶ D.toPre.P.A.left) (z : Z) (J), Good D.toPre.P.L z J → sval (s 0) x z J = sval σ₀ x z J) := by
  intro R _ _ _ hB D a a' h h' hE N hN hP σ₀
  obtain ⟨r, g, hg, hr, hfin, hval⟩ := GlobalTheory.MumInt.main R hB D a a' h h' hE N hN hP
  obtain ⟨s₀, hs₀⟩ := exists_secT_weight_zero R D.toPre a N σ₀ 0 rfl
  have h0 : shift h h' (N : ℤ) (-1) (0 : D.toPre.X) = 0 := by simp [shift]
  obtain ⟨z₀, hz₀⟩ := exists_secT_weight_zero R D.toPre a N σ₀ _ h0
  have key : ∀ ν, ∃ t : SecT D.toPre a N (-1) (shift h h' N (-1) ν), TRel h ν s₀ t ∧
      ∀ e : ℕ, r ν ∈ maximalIdeal R ^ (e + 1) → Van (maximalIdeal R) t e := by
    intro ν
    obtain ⟨u₀, hu₀, hfac⟩ := _root_.GlobalTheory.TwNorm.exists_gen_fac R hB D a a' h h' hE N hN r g hg hval ν
    exact _root_.GlobalTheory.MumTerm.exists_term R D a h h' N s₀ ν u₀ hu₀ (r ν) hfac
  choose t ht using key
  have hz : TRel h 0 s₀ z₀ :=
    _root_.GlobalTheory.TwFac.trel_zero R hB D a a' h h' hE N hN s₀ z₀ fun Z x z J hJ => (hz₀ Z x z J hJ).trans (hs₀ Z x z J hJ).symm
  classical
  let s : ∀ ν, SecT D.toPre a N (-1) (shift h h' N (-1) ν) := fun ν =>
    if hν : ν = 0 then hν.symm ▸ z₀ else t ν
  have hs0 : s 0 = z₀ := dif_pos rfl
  have hsν : ∀ ν, ν ≠ 0 → s ν = t ν := fun ν hν => dif_neg hν
  refine ⟨s₀, s, fun ν => ?_, fun e => ?_, fun ν hν => ?_, fun Z x z J hJ => ?_⟩
  · by_cases hν : ν = 0
    · subst hν
      rw [hs0]
      exact hz
    · rw [hsν ν hν]
      exact (ht ν).1
  · refine ((hfin (e + 1)).insert 0).subset fun ν hν => ?_
    by_cases h0' : ν = 0
    · exact Or.inl h0'
    · refine Or.inr fun hm => hν ?_
      rw [hsν ν h0']
      exact (ht ν).2 e hm
  · rw [hsν ν hν]
    exact (ht ν).2 0 (by rw [zero_add, pow_one]; exact hr ν hν)
  · rw [hs0]
    exact hz₀ Z x z J hJ

end GlobalTheory.TwFam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTermsMumfordFormalSectionTranslates =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTermsMumfordFormalSectionTranslatesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTermsMumfordFormalSectionTranslatesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTermsMumfordFormalSectionTranslates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTermsMumfordFormalSectionTranslatesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedTwistedFactorValueAtLatticePoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedTwistedFactorValueAtLatticePoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PhiGenPf\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ValPowGen\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

noncomputable section

namespace GlobalTheory.TwFacVal

section General

variable {X Y Z : Scheme.{0}}

def pt (q : Y ⟶ X) : Multiplicative (FreeAddCommGroup (Y ⟶ X)) := Multiplicative.ofAdd (FreeAddCommGroup.of q)

def ratSub {L : LB X} (e₀ e₁ : Z ⟶ Y) {z : Z} {J : (Z ⟶ X) → L.ι} (hJ : Good L z J) :
    Subgroup (Multiplicative (FreeAddCommGroup (Y ⟶ X)) × (Z.presheaf.stalk z)ˣ) where
  carrier := {g | ∃ (K : Type) (_ : Fintype K) (φ : K → (Y ⟶ X)) (ε : K → ℤ) (t : LB.Gen (LB.LinComb L φ ε)),
    t.IsGen ∧ ∏ k, pt (φ k) ^ ε k = g.1 ∧ val t e₁ z J = g.2 * val t e₀ z J}
  one_mem' := ⟨PEmpty, inferInstance, _, _, LB.oneGen L, (fun i j => (map_one _).trans
    ((congrArg₂ (· * ·) (Fintype.prod_empty _) (map_one _)).trans (_root_.mul_one _)).symm), Fintype.prod_empty _, by
      rw [val_one, val_one]; exact (_root_.mul_one _).symm⟩
  mul_mem' := by
    rintro g g' ⟨K, _, φ, ε, t, ht, f, v⟩ ⟨K', _, φ', ε', t', ht', f', v'⟩
    refine ⟨K ⊕ K', inferInstance, _, _, LB.mulGen L _ _ _ _ t t', DVR.mulGen_isGen _ _ _ _ _ _ _ ht ht',
      DVR.prod_sum₂ _ f f', ?_⟩
    rw [val_mul hJ, val_mul hJ, v, v']
    exact mul_mul_mul_comm _ _ _ _
  inv_mem' := by
    rintro g ⟨K, _, φ, ε, t, ht, f, v⟩
    refine ⟨K, inferInstance, _, _, LB.invGen L _ _ t, DVR.invGen_isGen _ _ _ _ ht, DVR.prod_neg _ _ f, ?_⟩
    rw [val_inv, val_inv, v]
    exact mul_inv _ _

theorem ratSub_eq_one {L : LB X} (hL : L.IsLB) (p : Y ⟶ Z) (e₀ e₁ : Z ⟶ Y) (h₀ : e₀ ≫ p = 𝟙 _) (h₁ : e₁ ≫ p = 𝟙 _)
    (hp : Function.Surjective p.appTop.hom) {z : Z} {J : (Z ⟶ X) → L.ι} (hJ : Good L z J)
    {g : Multiplicative (FreeAddCommGroup (Y ⟶ X)) × (Z.presheaf.stalk z)ˣ} (hg : g ∈ ratSub e₀ e₁ hJ) (h : g.1 = 1) :
    g.2 = 1 := by
  obtain ⟨K, _, φ, ε, t, ht, f, v⟩ := hg
  have triv : ∀ (U : Type) [CommGroup U] (k : (Y ⟶ X) → U), ∏ i, k (φ i) ^ ε i = 1 := fun U _ k => by
    let F : Multiplicative (FreeAddCommGroup (Y ⟶ X)) →* U :=
      AddMonoidHom.toMultiplicativeLeft (FreeAddCommGroup.lift fun q => Additive.ofMul (k q))
    have hF : ∀ q, F (pt q) = k q := fun q => by simp [F, pt]
    have := congrArg F (f.trans h)
    simpa only [map_prod, map_zpow, hF, map_one] using this
  have key := gen_unique' hL (φ := φ) (ε := ε) (φ' := fun k => (p ≫ e₀) ≫ φ k) (ε' := ε)
    (fun U _ k => (triv U fun q => k ((p ≫ e₀) ≫ q)).trans (triv U k).symm) p e₀ h₀ hp ht
    (DVR.pullGen_isGen _ _ _ _ ht (p ≫ e₀)) (fun y I hI => by
      rw [val_pull hI, ← Category.assoc, h₀, Category.id_comp]) _ e₁ z J hJ
  rw [val_pull hJ, ← Category.assoc, h₁, Category.id_comp, v] at key
  exact mul_eq_right.1 key

end General

section Points

variable {R : Type} [CommRing R] [IsDomain R] {D : DegPre R} {T B : Over (Spec (CommRingCat.of R))}

theorem prod_tφ (a : D.P.A ⟶ D.P.A) (n j : ℤ) (β : D.X) (ρ : B ⟶ D.P.A) {U : Type} [CommGroup U]
    (h : (B.left ⟶ D.P.A.left) → U) : ∏ i, h (ρ.left ≫ tφ D a β i) ^ tε n j i =
      h ρ.left ^ (n - 1) * h (ρ * DVR.cP D B β).left * (h (DVR.cP D B β).left)⁻¹ * h (1 : B ⟶ D.P.A).left *
        h (ρ ≫ a).left ^ j := by
  intros
  apply _root_.GlobalTheory.TwFac.prod_t <;> assumption

variable (ρ₀ ρ₁ : T ⟶ B) {z : T.left} {J : (T.left ⟶ D.P.A.left) → D.P.L.ι} (hJ : Good D.P.L z J)

theorem mem_const (κ : B ⟶ TK R) (hκ : ρ₁ ≫ κ = ρ₀ ≫ κ) (χ : D.X) :
    (pt (DVR.cP D B χ).left, 1) ∈ ratSub ρ₀.left ρ₁.left hJ := by
  refine (Subgroup.inv_mem_iff _).1 ⟨PUnit, inferInstance, _, _, LB.pullGen D.P.L _ _ (D.psi χ) κ.left,
    DVR.pullGen_isGen _ _ _ _ (D.psi_gen χ) _, ?_, ?_⟩
  · rw [Fintype.prod_unique, zpow_neg_one, ← DVR.comp_cP D κ χ]; rfl
  · rw [val_pull hJ, val_pull hJ, ← Over.comp_left, ← Over.comp_left, hκ]
    simp

theorem mem_cub (x x' y : B ⟶ D.P.A) :
    (pt (x * x' * y).left * (pt (x * x').left)⁻¹ * (pt (x * y).left)⁻¹ * (pt (x' * y).left)⁻¹ * pt x.left * pt x'.left *
        pt y.left * (pt (1 : B ⟶ D.P.A).left)⁻¹,
      cubV D.cub z J (ρ₁ ≫ x) (ρ₁ ≫ x') (ρ₁ ≫ y) * (cubV D.cub z J (ρ₀ ≫ x) (ρ₀ ≫ x') (ρ₀ ≫ y))⁻¹) ∈
      ratSub ρ₀.left ρ₁.left hJ :=
  ⟨thK, inferInstance, _, _, LB.pullGen D.P.L (thφ D.P.A (x3 D.P.A)) thε D.cub.t (lift x (lift x' y)).left,
    DVR.pullGen_isGen _ _ _ _ D.cub.isGen _, prod_cub x x' y pt,
    (val_cub D.cub ρ₁ hJ x x' y).trans ((inv_mul_cancel_right _ _).symm.trans
      (congrArg (_ * ·) (val_cub D.cub ρ₀ hJ x x' y).symm))⟩

theorem mem_ros (f g : D.P.A ⟶ D.P.A) (u : LB.Gen (LB.LinComb D.P.L (rosatiφ D.P.A f g) rosatiε)) (hu : u.IsGen)
    (x y : B ⟶ D.P.A) :
    (pt ((x ≫ f) * y).left * (pt (x ≫ f).left)⁻¹ * (pt y.left)⁻¹ * (pt (x * (y ≫ g)).left)⁻¹ * pt x.left * pt (y ≫ g).left,
      val₂ u z J (ρ₁ ≫ x) (ρ₁ ≫ y) * (val₂ u z J (ρ₀ ≫ x) (ρ₀ ≫ y))⁻¹) ∈ ratSub ρ₀.left ρ₁.left hJ := by
  refine ⟨Fin 6, inferInstance, _, _, LB.pullGen D.P.L _ _ u (lift x y).left,
    DVR.pullGen_isGen _ _ _ _ hu _, prod_ros f g x y pt, ?_⟩
  rw [val_pull hJ, val_pull hJ, ← Over.comp_left, ← Over.comp_left, comp_lift, comp_lift]
  exact (inv_mul_cancel_right _ _).symm

end Points

theorem mem_of_add {X G : Type} [AddCommGroup X] [CommGroup G] (H : Subgroup G) (l : X → G)
    (hl : ∀ a b, l (a + b) * (l a)⁻¹ * (l b)⁻¹ ∈ H) (n j : ℤ) (β ν δ : X) :
    l (β + (n • ν + j • δ)) * (l β * l ν ^ n * l δ ^ j)⁻¹ ∈ H := by
  let f : X →+ Additive (G ⧸ H) := AddMonoidHom.mk' (fun a => Additive.ofMul (QuotientGroup.mk' H (l a))) (fun a b => by
    have := (QuotientGroup.eq_one_iff _).2 (hl a b)
    rw [← QuotientGroup.mk'_apply, map_mul, map_mul, map_inv, map_inv, _root_.mul_assoc, ← mul_inv, mul_inv_eq_one] at this
    rw [this, ofMul_mul])
  have e : f (β + (n • ν + j • δ)) = f β + (n • f ν + j • f δ) := by simp only [map_add (f := _), map_zsmul]
  refine (QuotientGroup.eq_one_iff _).1 ?_
  rw [← QuotientGroup.mk'_apply, map_mul, map_inv, map_mul, map_mul, map_zpow, map_zpow, mul_inv_eq_one, _root_.mul_assoc]
  exact congrArg Additive.toMul e

theorem val_fac {R : Type} [CommRing R] [IsDomain R] (D : DegPre R) (hB : D.TauBimult) (a a' : D.P.A ⟶ D.P.A)
    (h h' : D.X →+ D.X) (hE : EndData D a a' h h') (n j : ℤ) (ν mu β₀ β₁ : D.X) (hβ : β₁ = β₀ + shift h h' n j ν)
    (u₁ : LB.Gen (LB.LinComb D.P.L (dφ D a ν β₀ β₁) (dε n j))) (hu₁ : IsFac D a h n j ν β₀ β₁ u₁)
    (z : (TF (R := R) (FractionRing R)).left) (J : ((TF (R := R) (FractionRing R)).left ⟶ D.P.A.left) → D.P.L.ι)
    (hJ : Good D.P.L z J) :
    val u₁ ((DegPre.zF D (FractionRing R)).left ≫ (DegPre.trF D (FractionRing R) mu).left) z J =
      (val (D.psi (ν + mu)) (jFK (R := R) (FractionRing R)) z J ^ n *
        val (D.psi (h (ν + mu))) (jFK (R := R) (FractionRing R)) z J ^ j *
        val (D.tau (ν + mu) β₀) (jFK (R := R) (FractionRing R)) z J * val D.rigK (jFK (R := R) (FractionRing R)) z J ^ (n + j)) *
      (val (D.psi mu) (jFK (R := R) (FractionRing R)) z J ^ n * val (D.psi (h mu)) (jFK (R := R) (FractionRing R)) z J ^ j *
        val (D.tau mu β₁) (jFK (R := R) (FractionRing R)) z J * val D.rigK (jFK (R := R) (FractionRing R)) z J ^ (n + j))⁻¹ := by
  obtain ⟨ha, ha', hr, hc, hc', hbal⟩ := hE
  have hG := GlobalTheory.globalFns_holds
  obtain ⟨u, hu, u₀⟩ := exists_ros hG D.P.isAb D.P.isLB a a' hr
  let T : Over (Spec (CommRingCat.of R)) := TF (R := R) (FractionRing R)
  let B : Over (Spec (CommRingCat.of R)) := DegPre.BF D (FractionRing R)
  let ρ₀ : T ⟶ B := DegPre.zF D (FractionRing R)
  let ρ₁ : T ⟶ B := DegPre.zF D (FractionRing R) ≫ DegPre.trF D (FractionRing R) mu
  let x : B ⟶ D.P.A := DegPre.prB D (FractionRing R)
  let p : B ⟶ T := fst _ _
  let κ : T ⟶ TK R := Over.homMk (jFK (R := R) (FractionRing R)) rfl
  have C : IsCub (cubV D.cub (T := T) z J) := isCub_cubV D.cub hJ
  have tx : ∀ χ, DegPre.trF D (FractionRing R) χ ≫ x = x * DVR.cP D B χ := fun χ => lift_snd _ _
  have p₀ : ρ₀ ≫ p = 𝟙 _ := lift_fst _ _
  have p₁ : ρ₁ ≫ p = 𝟙 _ := (Category.assoc _ _ _).trans ((congrArg (ρ₀ ≫ ·) (lift_fst _ _)).trans p₀)
  have x₀ : ρ₀ ≫ x = 1 := lift_snd _ _
  have x₁ : ρ₁ ≫ x = DVR.cP D T mu := by
    refine (Category.assoc _ _ _).trans ((congrArg (ρ₀ ≫ ·) (tx mu)).trans ((MonObj.comp_mul _ _ _).trans ?_))
    rw [x₀, DVR.comp_cP, _root_.one_mul]
  have ca : ∀ S χ, DVR.cP D S χ ≫ a = DVR.cP D S (h χ) := fun S χ => by rw [DVR.cP, DVR.cP, hc, Category.assoc]
  have ca' : ∀ S χ, DVR.cP D S χ ≫ a' = DVR.cP D S (h' χ) := fun S χ => by rw [DVR.cP, DVR.cP, hc', Category.assoc]
  have c0 : DVR.cP D B 0 = 1 := by simpa using DVR.cPoint_nsmul D B 0 0
  have s : (𝟙 T : T ⟶ T).left ≫ jFK (R := R) (FractionRing R) = jFK (R := R) (FractionRing R) := Category.id_comp _

  let τ : D.X → D.X → (T.left.presheaf.stalk z)ˣ := fun χ χ' => val (D.tau χ χ') (jFK (R := R) (FractionRing R)) z J
  have tm : ∀ χ χ' b, τ (χ + χ') b * cubV D.cub z J (DVR.cP D T χ) (DVR.cP D T χ') (DVR.cP D T b) = τ χ b * τ χ' b :=
    fun χ χ' b => by have := DVR.tau_mul (𝟙 T) hJ hB χ χ' b; rw [s] at this; exact this
  have ts : ∀ χ χ', τ χ χ' = τ χ' χ := fun χ χ' => by have := DVR.tau_symm (𝟙 T) hJ χ χ'; rw [s] at this; exact this
  let ψ : D.X → (T.left.presheaf.stalk z)ˣ := fun χ => val (D.psi χ) (jFK (R := R) (FractionRing R)) z J
  let rg : (T.left.presheaf.stalk z)ˣ := val D.rigK (jFK (R := R) (FractionRing R)) z J
  have pa : ∀ χ χ', ψ (χ + χ') = τ χ χ' * ψ χ * ψ χ' * rg := fun χ χ' => by
    have := DVR.UUA.psi_add (𝟙 T) hJ χ χ'; rw [s] at this; exact this
  have tb : τ (h mu) (h ν) * val₂ u (T := T) z J (DVR.cP D T mu) (DVR.cP D T (h ν)) = τ mu (h' (h ν)) := by
    have := (val_mul hJ _ _ _).symm.trans (val_corr hJ (hbal u hu u₀ mu (h ν)) κ.left)
    refine Eq.trans (congrArg₂ (· * ·) rfl ?_) this
    rw [val_pull hJ, val₂, ← DVR.comp_cP D κ, ← DVR.comp_cP D κ, ← comp_lift]
    rfl
  have r₀ : val₂ u (T := T) z J 1 (DVR.cP D T (h ν)) = 1 := by
    have e := (ros_add D.cub hG D.P.isAb a a' u hu u₀ (T := T) hJ 1 1 (DVR.cP D _ (h ν))).1
    rw [_root_.mul_one, MonObj.one_comp, C.face, C.face, _root_.mul_one, _root_.one_mul] at e
    exact mul_eq_left.1 e.symm

  have mc : ∀ χ, (pt (DVR.cP D B χ).left, 1) ∈ ratSub ρ₀.left ρ₁.left hJ :=
    mem_const ρ₀ ρ₁ hJ (p ≫ κ) (by rw [← Category.assoc, ← Category.assoc, p₀, p₁])
  have ml := mem_of_add (ratSub ρ₀.left ρ₁.left hJ) (fun χ => (pt (DVR.cP D B χ * x).left * (pt x.left)⁻¹ *
      (pt (DVR.cP D B χ).left)⁻¹ * pt (1 : B ⟶ D.P.A).left, (τ χ mu)⁻¹)) (fun χ χ' => by
    have m := mem_cub ρ₀ ρ₁ hJ (DVR.cP D B χ) (DVR.cP D B χ') x
    simp only [DVR.comp_cP, x₀, x₁, C.face₃] at m
    convert m using 1
    have t := congrArg Additive.ofMul (tm χ χ' mu)
    refine Prod.ext ?_ ?_
    · simp only [Prod.fst_mul, Prod.fst_inv, DVR.cPoint_add]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv]
      abel
    · simp only [Prod.snd_mul, Prod.snd_inv]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv, ofMul_one] at t ⊢
      linear_combination (norm := abel) -t) n j β₀ ν (h' (h ν))
  rw [show β₀ + (n • ν + j • h' (h ν)) = β₁ from hβ.symm] at ml
  have mr := mem_ros ρ₀ ρ₁ hJ a a' u hu x (DVR.cP D B (h ν))
  simp only [DVR.comp_cP, x₀, x₁, r₀, ca'] at mr
  have mk := mem_cub ρ₀ ρ₁ hJ (DVR.cP D B ν) x (DVR.cP D B β₀)
  simp only [DVR.comp_cP, x₀, x₁, C.face₂] at mk
  have f₁ := prod_tφ a n j β₁ x pt
  have f₀ := prod_tφ a n j β₀ (DegPre.trF D (FractionRing R) ν ≫ x) pt
  have mu₁ : (_, val u₁ ρ₁.left z J * (val u₁ ρ₀.left z J)⁻¹) ∈ ratSub ρ₀.left ρ₁.left hJ :=
    ⟨Fin 5 ⊕ Fin 5, inferInstance, _, _, u₁, hu₁.1, DVR.prod_sum₂ _ f₁ (DVR.prod_neg _ _
      ((Finset.prod_congr rfl fun i _ => by rw [Over.comp_left, Category.assoc]; rfl).trans f₀)),
      (inv_mul_cancel_right _ _).symm⟩
  rw [tx, MonObj.mul_comp, ca] at mu₁
  have key := ratSub_eq_one D.P.isLB p.left ρ₀.left ρ₁.left (congrArg (fun q => q.left) p₀) (congrArg (fun q => q.left) p₁)
    (DVR.surj_appTop D (FractionRing R) hG) hJ
    (mul_mem (mul_mem (mul_mem (mul_mem mu₁ (inv_mem ml)) (zpow_mem mr j)) mk)
      (mul_mem (mul_mem (mul_mem (mul_mem (mc (ν + β₀)) (zpow_mem (mc ν) (n - 1))) (inv_mem (mc β₀)))
        (zpow_mem (mc 0) (1 - n - j))) (zpow_mem (mc (h ν)) j))) (by
      simp only [Prod.fst_mul, Prod.fst_inv, Prod.pow_fst, DVR.cPoint_add, c0, _root_.mul_comm (DVR.cP D B _) x]
      apply Additive.ofMul.injective
      simp only [ofMul_mul, ofMul_inv, ofMul_zpow, ofMul_one]
      module)
  have v₀ := hu₁.2 z J hJ
  simp only [Prod.snd_mul, Prod.snd_inv, Prod.pow_snd] at key
  show val u₁ ρ₁.left z J = ψ (ν + mu) ^ n * ψ (h (ν + mu)) ^ j * τ (ν + mu) β₀ * rg ^ (n + j) *
    (ψ mu ^ n * ψ (h mu) ^ j * τ mu β₁ * rg ^ (n + j))⁻¹
  change val u₁ ρ₀.left z J = ψ ν ^ n * ψ (h ν) ^ j * τ ν β₀ * rg ^ (n + j) at v₀
  rw [map_add (f := _), pa, pa]
  rw [v₀, ts β₁, ts β₀, ts (h' (h ν)), ← tb, ts (h mu)] at key
  apply Additive.ofMul.injective
  have k := congrArg Additive.ofMul key
  have t := congrArg Additive.ofMul (tm ν mu β₀)
  simp only [ofMul_mul, ofMul_inv, ofMul_zpow, ofMul_one, smul_add, smul_neg] at k t ⊢
  linear_combination (norm := module) k - t

theorem val_fac_at_point : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ (n j : ℤ) (ν mu β₀ β₁ : D.toPre.X), β₁ = β₀ + shift h h' n j ν → ∀ (u₁ : LB.Gen (LB.LinComb D.toPre.P.L (dφ D.toPre a ν β₀ β₁) (dε n j))), IsFac D.toPre a h n j ν β₀ β₁ u₁ → ∀ (z : (TF (R := R) (FractionRing R)).left) (J : ((TF (R := R) (FractionRing R)).left ⟶ D.toPre.P.A.left) → D.toPre.P.L.ι), Good D.toPre.P.L z J → val u₁ ((DegPre.zF D.toPre (FractionRing R)).left ≫ (DegPre.trF D.toPre (FractionRing R) mu).left) z J = (val (D.toPre.psi (ν + mu)) (jFK (R := R) (FractionRing R)) z J ^ n * val (D.toPre.psi (h (ν + mu))) (jFK (R := R) (FractionRing R)) z J ^ j * val (D.toPre.tau (ν + mu) β₀) (jFK (R := R) (FractionRing R)) z J * val D.toPre.rigK (jFK (R := R) (FractionRing R)) z J ^ (n + j)) * (val (D.toPre.psi mu) (jFK (R := R) (FractionRing R)) z J ^ n * val (D.toPre.psi (h mu)) (jFK (R := R) (FractionRing R)) z J ^ j * val (D.toPre.tau mu β₁) (jFK (R := R) (FractionRing R)) z J * val D.toPre.rigK (jFK (R := R) (FractionRing R)) z J ^ (n + j))⁻¹ :=
  fun _ _ _ _ _ D a a' h h' hE n j ν mu β₀ β₁ hβ u₁ hu₁ z J hJ =>
    val_fac D.toPre D.tau_bimult a a' h h' hE n j ν mu β₀ β₁ hβ u₁ hu₁ z J hJ

end GlobalTheory.TwFacVal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedTwistedFactorValueAtLatticePoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedTwistedFactorValueAtLatticePointStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedTwistedFactorValueAtLatticePointStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedTwistedFactorValueAtLatticePoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedTwistedFactorValueAtLatticePointStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationCocycleInTranslation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationCocycleInTranslation", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedTwistedFactorValueAtLatticePointStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFactorExistsUniqueConstMulIntegralGeneratStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFunctionalEquationBundleTrivialAbelianParStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ExistsFamRep\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

theorem GlobalTheory.TwFam.trel_cocycle : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ (n j : ℤ) (ν mu β₀ β₁ β₂ : D.toPre.X) (s₀ : SecT D.toPre a n j β₀) (s₁ : SecT D.toPre a n j β₁) (s₂ : SecT D.toPre a n j β₂), β₁ = β₀ + shift h h' n j ν → β₂ = β₁ + shift h h' n j mu → TRel h ν s₀ s₁ → TRel h (ν + mu) s₀ s₂ → TRel h mu s₁ s₂ := by
  intro R _ _ _ hR D a a' h h' hE n j ν mu β₀ β₁ β₂ s₀ s₁ s₂ h₁ h₂ hν hνμ
  have hL := D.toPre.P.isLB
  obtain ⟨u₀, hu₀⟩ := GlobalTheory.T.twistedFunctionalEquation_bundle_trivial_abelianPart R hR D a a' h h' hE n j ν β₀ β₁ h₁
  obtain ⟨⟨u₁, hu₁⟩, -, -⟩ := GlobalTheory.T.twistedFactor_exists_unique_const_mul_integralGenerator R hR D a h hE.1 hE.2.2.2.1 n j ν β₀ β₁ u₀ hu₀
  intro u hu Z x z J hJ
  have hc : (DegPre.trF D.toPre (FractionRing R) mu).left ≫ (DegPre.trF D.toPre (FractionRing R) ν).left =
      (DegPre.trF D.toPre (FractionRing R) (ν + mu)).left := by
    rw [← Over.comp_left, ReciprocityTheory.ChartRestriction.G.DVR.UUA.trF_add, add_comm]
  have FE : FormEq (Sum.elim (dφ D.toPre a mu β₁ β₂) (fun k => (DegPre.trF D.toPre (FractionRing R) mu).left ≫ dφ D.toPre a ν β₀ β₁ k))
      (Sum.elim (dε n j) (dε n j)) (dφ D.toPre a (ν + mu) β₀ β₂) (dε n j) := by
    intro U _ g
    simp only [dφ, dε, Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, ← Category.assoc, hc]
    simp only [zpow_neg, Finset.prod_inv_distrib, Category.assoc]
    group
  obtain ⟨w, hw, hwv⟩ := exists_gen hL FE _ (ReciprocityTheory.ChartRestriction.G.DVR.mulGen_isGen _ _ _ _ _ u _ hu.1
    (ReciprocityTheory.ChartRestriction.G.DVR.pullGen_isGen _ _ _ u₁ hu₁.1 _))
  have hwf : IsFac D.toPre a h n j (ν + mu) β₀ β₂ w := by
    refine ⟨hw, fun z' J' hJ' => ?_⟩
    rw [hwv _ _ z' J' hJ', val_mul hJ', val_pull hJ', hu.2 z' J' hJ', _root_.GlobalTheory.TwFacVal.val_fac_at_point R hR D a a' h h' hE n j ν mu β₀ β₁ h₁ u₁ hu₁ z' J' hJ']
    rw [mul_comm]
    exact inv_mul_cancel_right _ _
  have e1 := hν u₁ hu₁ Z (x ≫ (DegPre.trF D.toPre (FractionRing R) mu).left) z J hJ
  have e2 := hνμ w hwf Z x z J hJ
  rw [hwv _ _ z J hJ, val_mul hJ, val_pull hJ, ← hc] at e2
  simp only [Category.assoc] at e1 e2 ⊢
  rw [e2, e1, Units.val_mul]
  ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationCocycleInTranslation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamily =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamily", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZeroStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTermsMumfordFormalSectionTranslatesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedFunctionalEquationOfAdicSumTermwiseStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedRelationCocycleInTranslation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.MumCoef

theorem shift_add' {X : Type} [AddCommGroup X] (h h' : X →+ X) (n j : ℤ) (a b : X) :
    shift h h' n j (a + b) = shift h h' n j a + shift h h' n j b := by
  simp only [shift, map_add (f := _), smul_add]; abel

theorem shift_zero' {X : Type} [AddCommGroup X] (h h' : X →+ X) (n j : ℤ) :
    shift h h' n j 0 = 0 := by
  simp [shift]

theorem coef : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ N : ℕ, 1 ≤ N → GlobalTheory.MumMult.PosN D a h h' N → ∀ (σ₀ : LB.Sec (LB.LinComb D.toPre.P.L (K := Fin 2) ![𝟙 D.toPre.P.A.left, a.left] ![(N : ℤ), -1])), ∃ g : ∀ β, SecT D.toPre a N (-1) β, Small (maximalIdeal R) (w := id) g ∧ TFE h h' g ∧ (∀ β, β ≠ 0 → Van (maximalIdeal R) (g β) 0) ∧ ∀ (Z : Scheme.{0}) (x : Z ⟶ (thickObj R (maximalIdeal R) 0 D.toPre.P.A).left) (z : Z) (J), Good D.toPre.P.L z J → sval (g 0) (x ≫ pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) 0)) z J = sval σ₀ (x ≫ pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) 0)) z J := by
  classical
  intro R _ _ _ hB D a a' h h' hE N hN hP σ₀
  obtain ⟨s₀, s, hrel, hsmall, hvan, hσ⟩ := _root_.GlobalTheory.TwFam.exists_terms R hB D a a' h h' hE N hN hP σ₀
  obtain ⟨F, hsum, hFs⟩ := _root_.GlobalTheory.TwFam.AdicSum.exists_isSum R hB D a (N : ℤ) (-1) D.toPre.X (shift h h' (N : ℤ) (-1)) s hsmall
  have hw0 : shift h h' (N : ℤ) (-1) (0 : D.toPre.X) = 0 := shift_zero' h h' _ _
  have hfe : TFE h h' F := by
    refine _root_.GlobalTheory.TwFam.SumFE.tfe_of_isSum R hB D a a' h h' hE (N : ℤ) (-1) D.toPre.X (shift h h' (N : ℤ) (-1)) s F
      (fun mu => Equiv.addRight mu) hsmall hsum ?_ ?_
    · intro mu i
      exact shift_add' h h' _ _ i mu
    · intro mu i
      exact _root_.GlobalTheory.TwFam.trel_cocycle R hB D a a' h h' hE (N : ℤ) (-1) i mu 0 _ _ s₀ (s i) (s (i + mu))
        (zero_add _).symm (shift_add' h h' _ _ i mu) (hrel i) (hrel (i + mu))
  have hv0 : ∀ i ∉ ({0} : Finset D.toPre.X), Van (maximalIdeal R) (s i) 0 := fun i hi =>
    hvan i (by simpa using hi)
  refine ⟨F, hFs, hfe, ?_, ?_⟩
  · intro β hβ Z x z J hJ
    rw [hsum 0 {0} hv0 β Z x z J hJ]
    have : ({0} : Finset D.toPre.X).filter (fun i => shift h h' (N : ℤ) (-1) i = β) = ∅ := by
      rw [Finset.filter_singleton, hw0, if_neg (Ne.symm hβ)]
    rw [this, Finset.sum_empty]
  · intro Z x z J hJ
    rw [hsum 0 {0} hv0 0 Z x z J hJ]
    have : ({0} : Finset D.toPre.X).filter (fun i => shift h h' (N : ℤ) (-1) i = 0) = {0} := by
      rw [Finset.filter_singleton, hw0, if_pos rfl]
    rw [this, Finset.sum_singleton]
    exact hσ Z _ z J hJ

end GlobalTheory.MumCoef
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamily =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamilyStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamilyStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamily\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordFormalSectionCoefficientFamilyStatement =====
