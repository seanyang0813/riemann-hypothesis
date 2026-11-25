module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulPullOfRigOfSym
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal
public import Mathlib.RingTheory.DividedPowers.Basic
public import Development.AbelianVarietyTheory.Definitions.Divisors.TorsionTowersOfDivisibleGroup
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLatticesComplete
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.CubeTheorem
public import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsValueEq
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.CubWeilOneLeft
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsUniquePairsToTower
public import Development.AutomorphicSpectrum.Statements.AlgebraStatements.IsPolarisationOfRelAmple
public import Development.AbelianVarietyTheory.Definitions.Divisors.PrismaticDieudonnePerfdIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualAbelianSchemeExistsBiduality
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsPullbackBaseChange
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordBundlePullbackGrpPullback
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PdivisibleBaseChangeIsoSemiabelian
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ConstGen
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.WeilIsGrpPullbackOfCommute
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsDimEqOne
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
import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne
import Development.AbelianVarietyTheory.Definitions.Divisors.IsKSValueOneOfRetraction
import Development.AbelianVarietyTheory.Definitions.Divisors.Pullback1MemHodgeFiltration
import Development.AbelianVarietyTheory.Definitions.Divisors.IsEquivariantToBidual
import Development.AbelianVarietyTheory.Definitions.Divisors.IsFrameOfForallExists
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntEmbCoe
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDeRhamSheafIffAlt
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictsTo
import Mathlib.RingTheory.PiTensorProduct
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.CubicalOfNormalised
import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.CubeTheorem.CubeTheoremHolds
import Mathlib.Tactic.Basify
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbelianSchemeGerms
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelDimUniqueOfIsoGrp
import Development.AbelianVarietyTheory.Definitions.Divisors.ToSpanSingletonConstGenInjective

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.H2EqZeroOfIsInitial, Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingAdjointEndomorphism, Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingExistsOfCubeTheorem, Development.AbelianVarietyTheory.Statements.EllipticCurveLevels.BaseChangeMapRingAct, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionDual

-- ===== clump member: Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.H2EqZeroOfIsInitial =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.H2EqZeroOfIsInitial", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsKSValueOneOfRetraction\nimport Development.AbelianVarietyTheory.Definitions.Divisors.Pullback1MemHodgeFiltration\npublic import Mathlib.RingTheory.DividedPowers.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj DividedPowers
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.DeRham GlobalTheory.AbDual

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Published.AbelianDualCrystal.Test

section Dual

variable {S : Scheme.{0}} {A B A₁ B₁ : Over S} [GrpObj A] [GrpObj B] [GrpObj A₁] [GrpObj B₁]
  {P : LB (A ⊗ B).left} {P₁ : LB (A₁ ⊗ B₁).left}

theorem point_ext (h : IsDual A B P) {T : Over S} {x y : T ⟶ B}
    (e : evc h.isLB (fst A T) (snd A T ≫ x) = evc h.isLB (fst A T) (snd A T ≫ y)) : x = y := by
  have hM : (ev P (fst A T) (snd A T ≫ x)).IsLB := pull_isLB h.isLB _
  refine (h.univ T _ hM ((isAdditive_iff hM).2 fun Y a a' t ↦ ?_)).unique
    ((cls_eq_iff hM hM).1 rfl) ((cls_eq_iff hM (pull_isLB h.isLB _)).1 e)
  simp only [evc_ev h.isLB, lift_fst, lift_snd_assoc]
  exact (isAdditive_iff h.isLB).1 h.additive _ _ _ _

theorem dual_unique {B' : Over S} [GrpObj B'] {P' : LB (A ⊗ B').left} (h : IsDual A B P) (h' : IsDual A B' P') :
    Nonempty (B ≅ B') := by
  have key : ∀ {C D : Over S} [GrpObj C] [GrpObj D] {Q : LB (A ⊗ C).left} {Q' : LB (A ⊗ D).left}
      (q : IsDual A C Q) (q' : IsDual A D Q'), ∃ x : C ⟶ D, ∀ (Y : Over S) (a : Y ⟶ A) (b : Y ⟶ C),
        evc q'.isLB a (b ≫ x) = evc q.isLB a b := by
    intro C D _ _ Q Q' q q'
    obtain ⟨x, hx, -⟩ := q'.univ C Q q.isLB q.additive
    refine ⟨x, fun Y a b ↦ ?_⟩
    have := congrArg (CechPic.pull (lift a b).left) ((cls_eq_iff q.isLB (pull_isLB q'.isLB _)).2 hx)
    rw [cls_ev q'.isLB, pull_evc] at this
    simpa [evc] using this.symm
  obtain ⟨x, hx⟩ := key h h'
  obtain ⟨y, hy⟩ := key h' h
  exact ⟨⟨x, y, point_ext h (by rw [← Category.assoc, hy, hx, Category.comp_id]),
    point_ext h' (by rw [← Category.assoc, hx, hy, Category.comp_id])⟩⟩

end Dual

section Crystal

variable {R R₀ : Type} [CommRing R] [CommRing R₀] {I : Ideal R} {κ : DividedPowers I} {π : R →+* R₀}

end Crystal

end GlobalTheory.Published.AbelianDualCrystal.Test
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.H2EqZeroOfIsInitial =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingAdjointEndomorphism =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingAdjointEndomorphism", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TorsionTowersOfDivisibleGroup\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsAlternatingSkewNatural\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsEquivariantToBidual\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsFrameOfForallExists\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLatticesComplete\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntEmbCoe\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsDeRhamSheafIffAlt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictsTo\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry Limits MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.VB GlobalTheory.LieVB GlobalTheory.CurveRootGeometry GlobalTheory.TwoSeq GlobalTheory.DeRham GlobalTheory.AbDual GlobalTheory.ConjSeq GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.BadPt
open GlobalTheory.Cris (dp0)
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.WeilAdjoint

end GlobalTheory.WeilAdjoint
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingAdjointEndomorphism =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingExistsOfCubeTheorem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingExistsOfCubeTheorem", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLatticesComplete\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.CubeTheorem\npublic import Development.AbelianVarietyTheory.Definitions.Uniformization.PointEqOfSubsingleton\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.WeilIsValueEq\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.CubWeilOneLeft\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsUniquePairsToTower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry Limits MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.DeRham GlobalTheory.AbDual GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.BadPt GlobalTheory.CartierDual WithConv

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.WeilHom

section Alg

variable {R A B : Type} [CommRing R] [CommRing A] [CommRing B]

section Values

variable [Algebra R A] [Algebra R B] {D E : Type} [CommRing D] [Algebra R D] [CommRing E] [Algebra R E]

def ev (x : A →ₐ[R] D) (z : B →ₐ[R] D) : A ⊗[R] B →ₐ[R] D :=
  Algebra.TensorProduct.lift x z fun _ _ => Commute.all _ _

theorem tensorToHom_ev (f : A →ₐ[R] D) (g : B →ₐ[R] E) (u : A ⊗[R] B) (φ : CartierDual R E) :
    tensorToHom R D E (ev (Algebra.TensorProduct.includeLeft.comp f) (Algebra.TensorProduct.includeRight.comp g) u) φ =
      f (tensorToHom R A B u (transpose g.toLinearMap φ)) := by
  induction u with
  | add s t hs ht => simp only [map_add (f := _), LinearMap.add_apply, hs, ht]
  | tmul a b => simp [ev, tensorToHom_apply]

theorem tensorToHom_mul_right (u v : A ⊗[R] B) (φ ψ : CartierDual R B) :
    tensorToHom R A (B ⊗[R] B)
      (ev Algebra.TensorProduct.includeLeft
          (Algebra.TensorProduct.includeRight.comp Algebra.TensorProduct.includeLeft) u *
        ev Algebra.TensorProduct.includeLeft
          (Algebra.TensorProduct.includeRight.comp Algebra.TensorProduct.includeRight) v : A ⊗[R] (B ⊗[R] B))
      (toConv (pair R B B (φ ⊗ₜ ψ))) = tensorToHom R A B u φ * tensorToHom R A B v ψ := by
  induction u with
  | add s t hs ht => simp only [map_add (f := _), LinearMap.add_apply, add_mul, hs, ht]
  | tmul a b =>
    induction v with
    | add s t hs ht => simp only [map_add (f := _), LinearMap.add_apply, mul_add, hs, ht]
    | tmul a' b' => simp [ev, tensorToHom_apply, mul_smul, smul_comm (φ.ofConv b)]

theorem tensorToHom_mul_left [Module.Finite R B] [Module.Projective R B] (u v : A ⊗[R] B) (φ : CartierDual R B) :
    tensorToHom R (A ⊗[R] A) B
      (ev (Algebra.TensorProduct.includeLeft.comp Algebra.TensorProduct.includeLeft)
          Algebra.TensorProduct.includeRight u *
        ev (Algebra.TensorProduct.includeLeft.comp Algebra.TensorProduct.includeRight)
          Algebra.TensorProduct.includeRight v : (A ⊗[R] A) ⊗[R] B) φ =
      TensorProduct.map (tensorToHom R A B u) (tensorToHom R A B v) (Coalgebra.comul φ) := by
  induction u with
  | add s t hs ht => simp only [map_add (f := _), LinearMap.add_apply, add_mul, hs, ht, TensorProduct.map_add_left]
  | tmul a b =>
    induction v with
    | add s t hs ht => simp only [map_add (f := _), LinearMap.add_apply, mul_add, hs, ht, TensorProduct.map_add_right]
    | tmul a' b' =>
      have key : ∀ t : CartierDual R B ⊗[R] CartierDual R B,
          TensorProduct.map (tensorToHom R A B (a ⊗ₜ b)) (tensorToHom R A B (a' ⊗ₜ b')) t =
            pair R B B t (b ⊗ₜ b') • (a ⊗ₜ a') := fun t => by
        induction t with
        | add s t hs ht => simp only [map_add (f := _), LinearMap.add_apply, add_smul, hs, ht]
        | tmul f g => simp [tensorToHom_apply, ← smul_tmul', smul_smul, mul_comm]
      rw [key, pair_comul_tmul]
      simp [ev, tensorToHom_apply]

end Values

variable [Bialgebra R A] [Bialgebra R B]

structure IsBimul (u : A ⊗[R] B) : Prop where

  isUnit : IsUnit u

  mul_left : ∀ (D : Type) [CommRing D] [Algebra R D] (x x' : WithConv (A →ₐ[R] D)) (z : B →ₐ[R] D),
    ev (x * x').ofConv z u = ev x.ofConv z u * ev x'.ofConv z u

  mul_right : ∀ (D : Type) [CommRing D] [Algebra R D] (x : A →ₐ[R] D) (z z' : WithConv (B →ₐ[R] D)),
    ev x (z * z').ofConv u = ev x z.ofConv u * ev x z'.ofConv u

theorem conv_incl {D : Type} [CommRing D] [Algebra R D] (j : A ⊗[R] A →ₐ[R] D) :
    (toConv (j.comp Algebra.TensorProduct.includeLeft) * toConv (j.comp Algebra.TensorProduct.includeRight)).ofConv =
      j.comp (Bialgebra.comulAlgHom R A) := AlgHom.ext fun a => by
  rw [AlgHom.convMul_apply]
  refine DFunLike.congr_fun (g := j) ?_ _
  ext <;> simp

variable [Module.Finite R B] [Module.Projective R B] {u : A ⊗[R] B} (h : IsBimul u)

def IsBimul.hom : CartierDual R B →ₐc[R] A where
  __ := tensorToHom R A B u
  counit_comp := LinearMap.ext fun φ => by
    have e := h.mul_left B 1 1 (AlgHom.id R B)
    rw [_root_.mul_one] at e
    have e' := (h.isUnit.map _).mul_eq_left.1 e.symm
    have k : ∀ v : A ⊗[R] B, Coalgebra.counit (tensorToHom R A B v φ) =
        φ (ev (1 : WithConv (A →ₐ[R] B)).ofConv (AlgHom.id R B) v) := fun v => by
      induction v with
      | add s t hs ht => simp only [map_add (f := _), LinearMap.add_apply, hs, ht]
      | tmul a b =>
        change Coalgebra.counit (φ.ofConv b • a) =
          φ.ofConv (algebraMap R B (Coalgebra.counit a) * b)
        rw [← Algebra.smul_def, map_smul, map_smul]
        exact mul_comm _ _
    exact (k u).trans (congrArg φ.ofConv e')
  map_comp_comul := LinearMap.ext fun φ => by
    have e := h.mul_left ((A ⊗[R] A) ⊗[R] B)
      (toConv (Algebra.TensorProduct.includeLeft.comp Algebra.TensorProduct.includeLeft))
      (toConv (Algebra.TensorProduct.includeLeft.comp Algebra.TensorProduct.includeRight))
      Algebra.TensorProduct.includeRight
    rw [conv_incl] at e
    exact (tensorToHom_mul_left u u φ).symm.trans ((congrArg (tensorToHom R _ B · φ) e.symm).trans
      (tensorToHom_ev (Bialgebra.comulAlgHom R A) (AlgHom.id R B) u φ))
  map_one' := by
    have e := h.mul_right A (AlgHom.id R A) 1 1
    rw [_root_.mul_one] at e
    have e' := (h.isUnit.map _).mul_eq_left.1 e.symm
    have k : ∀ v : A ⊗[R] B, tensorToHom R A B v 1 =
        ev (AlgHom.id R A) (1 : WithConv (B →ₐ[R] A)).ofConv v := fun v => by
      induction v with
      | add s t hs ht => simp only [map_add (f := _), LinearMap.add_apply, hs, ht]
      | tmul a b =>
        change (Coalgebra.counit (R := R) b) • a = a * algebraMap R A (Coalgebra.counit b)
        rw [Algebra.smul_def, mul_comm]
    exact (k u).trans e'
  map_mul' φ ψ := by
    have e := h.mul_right (A ⊗[R] (B ⊗[R] B)) Algebra.TensorProduct.includeLeft
      (toConv (Algebra.TensorProduct.includeRight.comp Algebra.TensorProduct.includeLeft))
      (toConv (Algebra.TensorProduct.includeRight.comp Algebra.TensorProduct.includeRight))
    rw [conv_incl] at e
    refine Eq.trans ?_ ((congrArg (tensorToHom R A _ · _) e).trans (tensorToHom_mul_right u u φ ψ))
    refine Eq.trans ?_ (tensorToHom_ev (AlgHom.id R A) (Bialgebra.comulAlgHom R B) u _).symm
    exact congrArg (tensorToHom R A B u) (ext_apply fun a => mul_apply φ ψ a)

theorem exists_hom {p : ℕ} (G H : PDivGroup p R) (u : ∀ n, G.A n ⊗[R] H.A n) (h : ∀ n, IsBimul (u n))
    (hl : ∀ (n : ℕ) (D : Type) [CommRing D] [Algebra R D] (x : G.A n →ₐ[R] D) (z : H.A (n + 1) →ₐ[R] D),
      ev (x.comp (G.res n : G.A (n + 1) →ₐ[R] G.A n)) z (u (n + 1)) =
        ev x (z.comp (H.mulP n : H.A n →ₐ[R] H.A (n + 1))) (u n)) :
    ∃ w : G ⟶ H.dual, ∀ n χ, w.app n χ = tensorToHom R _ _ (u n) χ :=
  ⟨⟨fun n => (h n).hom, fun n => BialgHom.ext fun χ =>
    (tensorToHom_ev (G.res n : G.A (n + 1) →ₐ[R] G.A n) (AlgHom.id R _) (u (n + 1)) χ).symm.trans
      ((congrArg (tensorToHom R _ _ · χ) (hl n (G.A n ⊗[R] H.A (n + 1)) Algebra.TensorProduct.includeLeft
        Algebra.TensorProduct.includeRight)).trans
        (tensorToHom_ev (AlgHom.id R _) (H.mulP n : H.A n →ₐ[R] H.A (n + 1)) (u n) χ))⟩, fun _ _ => rfl⟩

end Alg

section Geo

variable {S : Scheme.{0}}

theorem triv_theta (hC : GlobalTheory.Published.CubeTheorem) {A : Over S} [GrpObj A] (hA : IsAbelianScheme A) {L : LB A.left}
    (hL : L.IsLB) : ∃ t : LB.Gen (Theta A L), t.IsGen := by
  apply _root_.GlobalTheory.SymMulPull.hasGen_theta <;> assumption

variable {p : ℕ} {R : Type} [CommRing R] {A B : Over (Sp R)} [GrpObj A] [GrpObj B]

end Geo

end GlobalTheory.WeilHom
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingExistsOfCubeTheorem =====

-- ===== clump member: Development.AbelianVarietyTheory.Statements.EllipticCurveLevels.BaseChangeMapRingAct =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Statements.EllipticCurveLevels.BaseChangeMapRingAct", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLatticesComplete\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.IsPolarisationOfRelAmple\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PrismaticDieudonnePerfdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualAbelianSchemeExistsBiduality\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsPullbackBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordBundlePullbackGrpPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PdivisibleBaseChangeIsoSemiabelian\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingAdjointEndomorphism\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairingExistsOfCubeTheorem\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsGrpPullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ConstGen\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.WeilIsGrpPullbackOfCommute\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.CubicalOfNormalised\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.CubeTheorem\nimport Development.WeilBound.CoreStatements.TemperedRepresentationTheory.CubeTheorem.CubeTheoremHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbelianSchemeGerms\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry Limits MonoidalCategory CartesianMonoidalCategory MonObj TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open ReciprocityTheory.ChartRestriction.G.Out (RingAct)
open GlobalTheory.DeRham (spOver)
open GlobalTheory.AbDual GlobalTheory.PDiv GlobalTheory.PDivGroup
open GlobalTheory.BadPt (IsWeilHom)
open GlobalTheory.PerfdLat (dualBaseChange)
open GlobalTheory.CompanionTheory.Hypotheses₂.Zarhin (IsPolarisation)

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.SerreTateDef

section Notions

variable {S S₀ : Scheme.{0}} {A B : Over S} {A₀ B₀ : Over S₀}

def IsPairRed (i : A₀.left ⟶ A.left) (j : B₀.left ⟶ B.left) (P : LB (A ⊗ B).left) (P₀ : LB (A₀ ⊗ B₀).left) :
    Prop :=
  ∃ l : (A₀ ⊗ B₀).left ⟶ (A ⊗ B).left, l ≫ (fst A B).left = (fst A₀ B₀).left ≫ i ∧
    l ≫ (snd A B).left = (snd A₀ B₀).left ≫ j ∧ LBIso P₀ (P.pull l)

abbrev polBundle (P : LB (A ⊗ B).left) (lam : A ⟶ B) : LB (A ⊗ A).left := ev P (fst A A) (snd A A ≫ lam)

end Notions

section Clauses

variable (p : ℕ) [Fact p.Prime] (R R₀ : Type) [CommRing R] [CommRing R₀] [Algebra R R₀]

abbrev red : Sp R₀ ⟶ Sp R := spMap (algebraMap R R₀)

end Clauses

section Functor

variable {p : ℕ} [Fact p.Prime] {R R₀ : Type} [CommRing R] [CommRing R₀] [Algebra R R₀]
  {A B : Over (Sp R)} [GrpObj A] [GrpObj B] {A₀ B₀ : Over (Sp R₀)} [GrpObj A₀] [GrpObj B₀]
  {i : A₀.left ⟶ A.left} {j : B₀.left ⟶ B.left} {G H : PDivGroup p R}


omit [Algebra R R₀] [GrpObj A] [GrpObj B] [GrpObj A₀] [GrpObj B₀] in
theorem IsPairRed.polBundle {P : LB (A ⊗ B).left} {P₀ : LB (A₀ ⊗ B₀).left} (hP : P.IsLB) (hP₀ : P₀.IsLB)
    (r : IsPairRed i j P P₀) {lam : A ⟶ B} {lam₀ : A₀ ⟶ B₀} (e : i ≫ lam.left = lam₀.left ≫ j)
    {l : (A₀ ⊗ A₀).left ⟶ (A ⊗ A).left} (l₁ : l ≫ (fst A A).left = (fst A₀ A₀).left ≫ i)
    (l₂ : l ≫ (snd A A).left = (snd A₀ A₀).left ≫ i) : IsPairRed i i (polBundle P lam) (polBundle P₀ lam₀) := by
  obtain ⟨m, m₁, m₂, hm⟩ := r
  refine ⟨l, l₁, l₂, (CechPic.cls_eq_iff (pull_isLB hP₀ _) (pull_isLB (pull_isLB hP _) _)).1 ?_⟩
  rw [CechPic.cls_pull hP₀, CechPic.cls_pull (pull_isLB hP _), CechPic.cls_pull hP,
    (CechPic.cls_eq_iff hP₀ (pull_isLB hP _)).2 hm, CechPic.cls_pull hP, ← CechPic.pull_comp, ← CechPic.pull_comp]
  congr 2
  apply pullback.hom_ext
  · change (_ ≫ m) ≫ (fst A B).left = (l ≫ _) ≫ (fst A B).left
    rw [Category.assoc, m₁, ← Category.assoc, ← Over.comp_left, lift_fst, Category.assoc, ← Over.comp_left,
      lift_fst, l₁]
  · change (_ ≫ m) ≫ (snd A B).left = (l ≫ _) ≫ (snd A B).left
    rw [Category.assoc, m₂, ← Category.assoc, ← Over.comp_left, lift_snd, Category.assoc, ← Over.comp_left,
      lift_snd, Over.comp_left, Over.comp_left, Category.assoc, ← e, ← Category.assoc, ← l₂, Category.assoc]


end Functor

section Consequences

variable {p : ℕ} [Fact p.Prime] {R R₀ : Type} [CommRing R] [CommRing R₀] [Algebra R R₀]

end Consequences

section Base

end Base

section Elliptic

open GlobalTheory.WeierstrassCurve (ellPolAV)

def curve : _root_.WeierstrassCurve ℤ_[2] := ⟨0, 0, 1, 0, 0⟩

instance : curve.IsElliptic := by
  refine ⟨?_⟩
  have e : curve.Δ = ((-27 : ℤ) : ℤ_[2]) := by
    simp [curve, _root_.WeierstrassCurve.Δ, _root_.WeierstrassCurve.b₂, _root_.WeierstrassCurve.b₄,
      _root_.WeierstrassCurve.b₆, _root_.WeierstrassCurve.b₈]
  rw [e, PadicInt.isUnit_iff]
  refine le_antisymm (PadicInt.norm_le_one _) (not_lt.1 fun h => ?_)
  have := (PadicInt.norm_int_lt_one_iff_dvd (-27)).1 h
  omega

variable (R R₀ : Type) [CommRing R] [CommRing R₀] [Algebra R R₀] [IsNoetherianRing R] [IsNoetherianRing R₀]

end Elliptic

end GlobalTheory.SerreTateDef
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Statements.EllipticCurveLevels.BaseChangeMapRingAct =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionDual =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionDual", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsDimEqOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualAbelianSchemeExistsBiduality\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelDimUniqueOfIsoGrp\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.H2EqZeroOfIsInitial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PrismaticDieudonnePerfdIff\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ToSpanSingletonConstGenInjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLatticesComplete\npublic import Development.AbelianVarietyTheory.Statements.EllipticCurveLevels.BaseChangeMapRingAct\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.PDiv GlobalTheory.PDivGroup GlobalTheory.AbDual GlobalTheory.CechPic
open GlobalTheory.SerreTateDef (IsPairRed polBundle)
open GlobalTheory.CompanionTheory.Hypotheses₂.Zarhin (IsPolarisation)
open GlobalTheory.BadPt (IsWeilHom)
open GlobalTheory.PerfdLat (dualBaseChange)

attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory

namespace GlobalTheory.DualTower

theorem dim_eq_of_isDual {K : Type} [Field K] (A D : AV.AbVar K) (P : LB (A.X ⊗ D.X).left)
    (h : IsDual A.X D.X P) : D.dim = A.dim := by
  obtain ⟨B, _, P₀, _, hdim, hdual, _⟩ := GlobalTheory.dualAbelianScheme _ A.X A.ab
  obtain ⟨e⟩ := GlobalTheory.Published.AbelianDualCrystal.Test.dual_unique hdual h
  have hB := hdim A.dim A.smooth
  have hne : Nonempty (Sp K) := ⟨IsLocalRing.closedPoint K⟩
  exact (GlobalTheory.relDim_unique_of_iso_grp _ hne B D.X e.hom inferInstance A.dim D.dim hB D.smooth).symm

end GlobalTheory.DualTower
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionDual =====
