module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasThetaConstantsTwoLevelsMoveCartesianStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipallyPolarisedFibreExistsGeneratorStableStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProjectiveHomogeneousCoordsFieldDetermineDescendStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsListedFiniteGaloisExtensionStatement
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMapCoordsOfSymmetricThetaIsomorphicFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMapCoordsOfSymmetricThetaIsomorphicFibreStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMapCoordsOfSymmetricThetaIsomorphicFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMapCoordsOfSymmetricThetaIsomorphicFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasThetaConstantsTwoLevelsMoveCartesianStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipallyPolarisedFibreExistsGeneratorStableStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProjectiveHomogeneousCoordsFieldDetermineDescendStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaConstantsListedFiniteGaloisExtensionStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ZM GlobalTheory.ZH GlobalTheory.UMin GlobalTheory.UPoinc GlobalTheory.Ex.OneGen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.UMin

theorem pCrd_of_symAt : ∀ (S : Scheme.{0}) (G : Over S) [GrpObj G] [IsCommMonObj G] (L : LB G.left) (ρ : LB.Gen (L.pull (eSec G))), L.IsLB → ρ.IsGen → ∀ (g m n : ℕ) (o : Type) [CommRing o] (X : Scheme.{0}) (q : X ⟶ S) (f : X ⟶ PSpace o n) (S' : Scheme.{0}) (A : Over S') [GrpObj A] [IsCommMonObj A] (L' : LB A.left) (ρ' : LB.Gen (L'.pull (eSec A))) (Ω : Type) [Field Ω] [CharZero Ω] (x : Sp Ω ⟶ X) (x' : Sp Ω ⟶ S') (P : PolAV (Sp Ω)) (α : P.A.left ⟶ G.left) (α' : P.A.left ⟶ A.left) (θ : SecAt A L' x') (e : Fin (n + 1) → Ω), Odd m → n + 1 = m ^ (4 * g) → ThMap G L ρ m q f → L'.IsLB → ρ'.IsGen → P.g = g → IsGrpPullback P.A G (x ≫ q) α → LBIso P.L (L.pull α) → IsGrpPullback P.A A x' α' → LBIso P.L (L'.pull α') → IsGenSec A L' _ θ → SymAt A L' ρ' m x' θ e → PCrd (x ≫ f) e := by
  intro S G _ _ L ρ hL hρ g m n o _ X q f S' A _ _ L' ρ' Ω _ _ x x' P α α' θ e hm hn hf hL' hρ' hg hα hw hα' hw' hθ he
  have hpol : PolFib A L' g x' := ⟨P, α', hg, hα', hw'⟩
  obtain ⟨Ω', _, _, pt, c, -, -, -, hl, -⟩ := GlobalTheory.T.theta_constants_listed_finite_galois_extension S' A L' ρ' hL' hρ' g m (n + 1) Ω x' θ hm hn hpol
  have hgen := (GlobalTheory.T.principallyPolarisedFibre_exists_generator_stable S' A L' hL' g Ω x' hpol).2 θ hθ Ω' (algebraMap Ω Ω')
  have h₁ : HasTh₂ A L' ρ' m m (spMap (algebraMap Ω Ω') ≫ x') c c := hasTh_iff.1 ⟨_, pt, hgen, hl⟩
  obtain ⟨w, hw₀⟩ := id hw
  obtain ⟨ρP, hρP, -⟩ := exists_rigidificationPullbackCompatibleIso hα hw₀ hL P.isLB hρ
  haveI : IsCommMonObj P.A := P.isAb.comm
  have h₂ := (GlobalTheory.T.hasThetaConstantsTwoLevels_move_cartesian S' A L' ρ' hL' hρ' _ P.A P.L ρP x' α' P.isLB hρP hα' hw' m m _ _ Ω' _ c c).2 h₁
  have h₃ := (GlobalTheory.T.hasThetaConstantsTwoLevels_move_cartesian S G L ρ hL hρ _ P.A P.L ρP (x ≫ q) α P.isLB hρP hα hw m m _ _ Ω' _ c c).1 h₂
  rw [← Category.assoc] at h₃
  have h₄ := hf Ω' _ c (hasTh_iff.2 h₃)
  refine GlobalTheory.T.projectiveHomogeneousCoords_field_determine_descend.2.2 o Ω Ω' n _ e (algebraMap Ω Ω') ?_
  rw [← Category.assoc, funext (he Ω' _ pt c hl)]
  exact h₄

end GlobalTheory.UMin
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMapCoordsOfSymmetricThetaIsomorphicFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMapCoordsOfSymmetricThetaIsomorphicFibreStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMapCoordsOfSymmetricThetaIsomorphicFibreStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMapCoordsOfSymmetricThetaIsomorphicFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ZM GlobalTheory.ZH GlobalTheory.UMin GlobalTheory.UPoinc GlobalTheory.Ex.OneGen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaMapCoordsOfSymmetricThetaIsomorphicFibreStatement =====
