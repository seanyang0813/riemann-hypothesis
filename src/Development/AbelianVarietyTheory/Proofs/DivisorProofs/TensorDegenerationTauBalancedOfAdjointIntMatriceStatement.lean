module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosVec
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialCubicalThetaFinsuppTensor
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.TauBalPow
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.RosatiAdjointBalancedPowerLift
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TransportedGeneratorUniqueGlobalFunctionsBase
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMonHomOfMulComp
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsMatrixRingAct
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorAdd, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorNeg, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumMemSpanCubicalTheta, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumMemSpanCubicalThetaStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumPsiValuesEqTauProduct, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorTensorPowerCorrespondsFormalSum, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationTauBalancedOfAdjointIntMatrice, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationTauBalancedOfAdjointIntMatriceStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorAdd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorAdd", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosVec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.TensBal

theorem prod_support_eq {U : Type} [CommGroup U] {r : ℕ} (g : Vec r → ℤ → U) (d : Vec r →₀ ℤ) :
    ∏ v : d.support, g v.1 (d v.1) = d.prod g :=
  Finset.prod_coe_sort d.support (fun v => g v (d v))

theorem triv_add : ∀ (R : Type) [CommRing R] [IsDomain R] (D D' : DegPre R) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ)
    (T : Tens D D' W) (c c' : GlobalTheory.TensBal.Vec r →₀ ℤ), GlobalTheory.TensBal.Triv T c → GlobalTheory.TensBal.Triv T c' →
    GlobalTheory.TensBal.Triv T (c + c') := by
  intro R _ _ D D' r W T c c' ⟨Ξ, hΞ, h1, h2⟩ ⟨Ξ', hΞ', h1', h2'⟩
  have hform : FormEq (Sum.elim (fun v : c.support => (vecHom T v.1).left) (fun v : c'.support => (vecHom T v.1).left))
      (Sum.elim (fun v : c.support => c v.1) (fun v : c'.support => c' v.1))
      (fun v : (c + c').support => (vecHom T v.1).left) (fun v => (c + c') v.1) := by
    intro U _ h
    rw [Fintype.prod_sum_type]
    simp only [Sum.elim_inl, Sum.elim_inr]
    rw [prod_support_eq (fun v n => h (vecHom T v).left ^ n) c,
      prod_support_eq (fun v n => h (vecHom T v).left ^ n) c',
      prod_support_eq (fun v n => h (vecHom T v).left ^ n) (c + c'),
      Finsupp.prod_add_index' (fun _ => zpow_zero _) (fun _ _ _ => zpow_add _ _ _)]
  obtain ⟨Ξ'', hΞ'', hv⟩ := exists_gen D.P.isLB hform _
    (ReciprocityTheory.ChartRestriction.G.DVR.mulGen_isGen _ _ _ _ _ _ _ hΞ hΞ')
  refine ⟨Ξ'', hΞ'', fun z J hJ => ?_, fun z J hJ y y' => ?_⟩
  · rw [hv _ _ z J hJ, val_mul hJ, h1 z J hJ, h1' z J hJ, _root_.mul_one]
  · rw [hv _ _ z J hJ, val_mul hJ, h2 z J hJ y y', h2' z J hJ y y']
    exact (Finsupp.prod_add_index' (f := c) (g := c')
      (h := fun v n => val (D.psi (vecLat T v y y')) (𝟙 _) z J ^ (-n))
      (fun _ => by simp only [neg_zero, zpow_zero]) (fun _ _ _ => by simp only [neg_add, zpow_add])).symm

end GlobalTheory.TensBal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorAdd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorNeg =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorNeg", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosVec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.TensBalNeg

theorem triv_neg : ∀ (R : Type) [CommRing R] [IsDomain R] (D D' : DegPre R) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ)
    (T : Tens D D' W) (c : GlobalTheory.TensBal.Vec r →₀ ℤ), GlobalTheory.TensBal.Triv T c → GlobalTheory.TensBal.Triv T (-c) := by
  intro R _ _ D D' r W T c ⟨Ξ, hΞ, h1, h2⟩
  have hF : FormEq (fun v : c.support => (GlobalTheory.TensBal.vecHom T v.1).left) (fun v => -(c v.1))
      (fun v : (-c).support => (GlobalTheory.TensBal.vecHom T v.1).left) (fun v => (-c) v.1) := by
    intro U _ h
    rw [Finset.prod_coe_sort c.support (fun v => h (GlobalTheory.TensBal.vecHom T v).left ^ (-(c v))),
      Finset.prod_coe_sort (-c).support (fun v => h (GlobalTheory.TensBal.vecHom T v).left ^ ((-c) v)),
      Finsupp.support_neg]
    simp only [Finsupp.neg_apply]
  obtain ⟨Ξ', hΞ', hv⟩ := exists_gen D.P.isLB hF (LB.invGen D.P.L _ _ Ξ) (LB.isGen_invGen D.P.L _ _ Ξ hΞ)
  refine ⟨Ξ', hΞ', fun z J hJ => ?_, fun z J hJ y y' => ?_⟩
  · rw [hv _ _ z J hJ, val_inv, h1 z J hJ, inv_one]
  · rw [hv _ _ z J hJ, val_inv, h2 z J hJ y y', Finsupp.support_neg, ← Finset.prod_inv_distrib]
    refine Finset.prod_congr rfl fun v _ => ?_
    rw [Finsupp.neg_apply, neg_neg, zpow_neg, inv_inv]

end GlobalTheory.TensBalNeg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorNeg =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosVec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.TensBal

theorem triv_zero : ∀ (R : Type) [CommRing R] [IsDomain R] (D D' : DegPre R) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ)
    (T : Tens D D' W), GlobalTheory.TensBal.Triv T 0 := by
  intro R _ _ D D' r W T
  obtain ⟨t, ht, hv⟩ := exists_gen D.P.isLB
    (φ' := fun v : (0 : Vec r →₀ ℤ).support => (vecHom T v.1).left) (ε' := fun v => (0 : Vec r →₀ ℤ) v.1)
    (fun U _ h => by simp) (LB.oneGen D.P.L (Y := (D'.P.A ⊗ D'.P.A).left)) (LB.isGen_oneGen _)
  refine ⟨t, ht, fun z J hJ => (hv _ _ z J hJ).trans (val_one _), fun z J hJ y y' => ?_⟩
  rw [hv _ _ z J hJ, val_one]
  simp

end GlobalTheory.TensBal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumMemSpanCubicalTheta =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumMemSpanCubicalTheta", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosVec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.TensBal.SpanPf

variable {r : ℕ}

abbrev S (r : ℕ) : Submodule ℤ (Vec r →₀ ℤ) :=
  Submodule.span ℤ (Set.range fun p : Vec r × Vec r × Vec r => theta p.1 p.2.1 p.2.2)

lemma lam_comm (u v : Vec r) : lam u v = lam v u := by
  unfold lam; rw [add_comm u v]; abel

lemma theta_eq (u u' v : Vec r) : theta u u' v = lam (u + u') v - lam u v - lam u' v := by
  unfold lam theta; abel

lemma theta_mem (a b c : Vec r) : theta a b c ∈ S r := Submodule.subset_span ⟨(a, b, c), rfl⟩

def f (u v : Vec r) : (Vec r →₀ ℤ) ⧸ S r := Submodule.Quotient.mk (lam u v)

lemma f_comm (u v : Vec r) : f u v = f v u := by unfold f; rw [lam_comm]

lemma f_add_left (u u' v : Vec r) : f (u + u') v = f u v + f u' v := by
  unfold f
  rw [← Submodule.Quotient.mk_add, Submodule.Quotient.eq]
  have h := theta_mem u u' v
  rw [theta_eq] at h
  convert h using 1; abel

lemma f_add_right (u v v' : Vec r) : f u (v + v') = f u v + f u v' := by
  rw [f_comm, f_add_left, f_comm v, f_comm v']

lemma f_smul_left (c : ℤ) (u v : Vec r) : f (c • u) v = c • f u v :=
  map_zsmul (AddMonoidHom.mk' (fun u => f u v) (fun a b => f_add_left a b v)) c u

lemma f_smul_right (c : ℤ) (u v : Vec r) : f u (c • v) = c • f u v := by
  rw [f_comm, f_smul_left, f_comm]

def B (r : ℕ) : Vec r →ₗ[ℤ] Vec r →ₗ[ℤ] (Vec r →₀ ℤ) ⧸ S r :=
  LinearMap.mk₂ ℤ f f_add_left f_smul_left f_add_right f_smul_right

lemma B_apply (u v : Vec r) : B r u v = Submodule.Quotient.mk (lam u v) := rfl

lemma B_comm (u v : Vec r) : B r u v = B r v u := f_comm u v

lemma axv_eq (A : Matrix (Fin r) (Fin r) ℤ) (i : Fin r) : axv A i = ∑ l, A i l • xv l := by
  funext s
  cases s <;> simp [axv, xv, Finset.sum_apply, Pi.single_apply]

lemma azv_eq (A' : Matrix (Fin r) (Fin r) ℤ) (i : Fin r) : azv A' i = ∑ l, A' i l • zv l := by
  funext s
  cases s <;> simp [azv, zv, Finset.sum_apply, Pi.single_apply]

def P (C : Matrix (Fin r) (Fin r) ℤ) : (Vec r →₀ ℤ) ⧸ S r := ∑ l, ∑ m, C l m • B r (xv l) (zv m)

lemma P_add (C D : Matrix (Fin r) (Fin r) ℤ) : P (C + D) = P C + P D := by
  simp [P, add_smul, Finset.sum_add_distrib]

lemma T1 (A V : Matrix (Fin r) (Fin r) ℤ) :
    ∑ i, ∑ j, V i j • B r (axv A i) (zv j) = P (A.transpose * V) := by

  simp only [P, axv_eq, map_sum, map_zsmul, LinearMap.sum_apply, LinearMap.smul_apply, Matrix.mul_apply,
  Matrix.transpose_apply, Finset.sum_smul, Finset.smul_sum, smul_smul]
  rw [Finset.sum_comm]
  refine (Finset.sum_congr rfl fun j _ => Finset.sum_comm).trans ?_
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun m _ => Finset.sum_congr rfl fun i _ => ?_
  rw [mul_comm]

lemma T3 (A' V : Matrix (Fin r) (Fin r) ℤ) :
    ∑ i, ∑ j, V i j • B r (xv i) (azv A' j) = P (V * A') := by

  simp only [P, azv_eq, map_sum, map_zsmul, Matrix.mul_apply, Finset.sum_smul, Finset.smul_sum, smul_smul]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Finset.sum_comm]

lemma swapW (V : Matrix (Fin r) (Fin r) ℤ) (g : Fin r → Fin r → (Vec r →₀ ℤ) ⧸ S r) :
    ∑ i, ∑ j, V i j • g j i = ∑ i, ∑ j, V.transpose i j • g i j := by
  rw [Finset.sum_comm]; rfl

lemma per (A A' : Matrix (Fin r) (Fin r) ℤ) (i j : Fin r) :
    ∑ a : Fin 6, rosatiε a • B r (rosVec A A' a i) (rosVec A A' a j) =
      B r (axv A i) (zv j) + B r (zv i) (axv A j) - B r (xv i) (azv A' j) - B r (azv A' i) (xv j) := by
  simp [Fin.sum_univ_six, rosVec, rosatiε, map_add (f := _), LinearMap.add_apply]
  abel

theorem main {r : ℕ} (W A A' : Matrix (Fin r) (Fin r) ℤ)
    (h : A.transpose * (W + W.transpose) = (W + W.transpose) * A') :
    GlobalTheory.TensBal.sig W A A' ∈ Submodule.span ℤ
      (Set.range fun p : GlobalTheory.TensBal.Vec r × GlobalTheory.TensBal.Vec r × GlobalTheory.TensBal.Vec r =>
        GlobalTheory.TensBal.theta p.1 p.2.1 p.2.2) := by
  rw [← Submodule.Quotient.mk_eq_zero]
  have e : (Submodule.Quotient.mk (sig W A A') : (Vec r →₀ ℤ) ⧸ S r) =
      ∑ i, ∑ j, W i j • ∑ a : Fin 6, rosatiε a • B r (rosVec A A' a i) (rosVec A A' a j) := by
    rw [sig, ← Submodule.mkQ_apply]

    simp only [map_sum, map_zsmul, Submodule.mkQ_apply, ← B_apply, Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun a _ => ?_
    rw [mul_comm]
  show (Submodule.Quotient.mk (sig W A A') : (Vec r →₀ ℤ) ⧸ S r) = 0
  rw [e]
  simp only [per, smul_sub, smul_add, Finset.sum_sub_distrib, Finset.sum_add_distrib]
  have h2 : ∑ i, ∑ j, W i j • B r (zv i) (axv A j) = P (A.transpose * W.transpose) := by
    rw [← T1]; simp only [B_comm (zv _)]; exact swapW W (fun a b => B r (axv A a) (zv b))
  have h4 : ∑ i, ∑ j, W i j • B r (azv A' i) (xv j) = P (W.transpose * A') := by
    rw [← T3]; simp only [B_comm (azv A' _)]; exact swapW W (fun a b => B r (xv a) (azv A' b))
  rw [T1, h2, T3, h4, ← P_add, sub_sub, ← P_add, ← Matrix.add_mul, ← Matrix.mul_add, h, sub_self]

end GlobalTheory.TensBal.SpanPf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumMemSpanCubicalTheta =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumMemSpanCubicalThetaStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumMemSpanCubicalThetaStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosVec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumMemSpanCubicalTheta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumMemSpanCubicalThetaStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumPsiValuesEqTauProduct =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumPsiValuesEqTauProduct", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosVec\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.TauBalPow\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.RosatiAdjointBalancedPowerLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.TensBalLat

open GlobalTheory.TensBal

section Calc

variable {M : Type} [CommGroup M] {α : Type}

def logHom (f : α → M) : (α →₀ ℤ) →+ Additive M :=
  Finsupp.liftAddHom fun v => zmultiplesHom (Additive M) (Additive.ofMul (f v)⁻¹)

theorem logHom_single (f : α → M) (v : α) : logHom f (Finsupp.single v 1) = Additive.ofMul (f v)⁻¹ := by
  simp [logHom]

theorem prod_eq_logHom (f : α → M) (c : α →₀ ℤ) :
    ∏ v ∈ c.support, f v ^ (-(c v)) = Additive.toMul (logHom f c) := by
  simp [logHom, Finsupp.liftAddHom_apply, Finsupp.sum, toMul_sum, toMul_zsmul]

end Calc

variable {R : Type} [CommRing R] [IsDomain R] {D D' : DegPre R} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}

theorem vecLat_add (T : Tens D D' W) (u v : Vec r) (y y' : D'.X) :
    vecLat T (u + v) y y' = vecLat T u y y' + vecLat T v y y' := by
  simp only [vecLat, Pi.add_apply, add_smul, Finset.sum_add_distrib]; abel

theorem vecLat_zero (T : Tens D D' W) (y y' : D'.X) : vecLat T 0 y y' = 0 := by
  simp [vecLat]

theorem vecLat_rosVec (T : Tens D D' W) (A A' : Matrix (Fin r) (Fin r) ℤ) (y y' : D'.X) (a : Fin 6) (i : Fin r) :
    vecLat T (rosVec A A' a i) y y' = T.xe (rosLat T A A' y y' a) i := by
  fin_cases a <;>
    simp [vecLat, rosVec, rosLat, axv, azv, xv, zv, GlobalTheory.TensAct.xe_latAct, map_add (f := _), Pi.single_apply,
      ite_smul]

theorem logHom_lam (T : Tens D D' W) (hB : D.TauBimult) {z : (TK R).left} {J} (hJ : Good D.P.L z J)
    (y y' : D'.X) (u v : Vec r) :
    logHom (fun w => val (D.psi (vecLat T w y y')) (𝟙 _) z J) (lam u v) =
      Additive.ofMul (val (D.tau (vecLat T u y y') (vecLat T v y y')) (𝟙 _) z J)⁻¹ := by
  have hk : val (D.psi 0) (𝟙 _) z J = (val D.rigK (𝟙 _) z J)⁻¹ := by
    have e := (GlobalTheory.TauBalBox.tau_val D hJ 0 0 (𝟙 _)).symm.trans (GlobalTheory.TauBalElem.tau_zero_left hB hJ 0)
    rw [add_zero, mul_inv_cancel, _root_.one_mul] at e
    exact inv_mul_eq_one.mp e
  have h0 : vecLat T (0 : Vec r) y y' = 0 := vecLat_zero T y y'
  simp only [lam, map_add (f := _), map_sub, logHom_single]
  rw [h0, vecLat_add]
  rw [GlobalTheory.TauBalBox.tau_val D hJ, hk]
  simp only [ofMul_mul, ofMul_inv, inv_inv]
  abel

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R] (D D' : DegPre R) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ)
    (T : Tens D D' W), D.TauBimult → ∀ (A A' : Matrix (Fin r) (Fin r) ℤ) (z : (TK R).left)
    (J : ((TK R).left ⟶ D.P.A.left) → D.P.L.ι), Good D.P.L z J → ∀ y y' : D'.X,
    ∏ v ∈ (GlobalTheory.TensBal.sig W A A').support,
        val (D.psi (GlobalTheory.TensBal.vecLat T v y y')) (𝟙 _) z J ^ (-(GlobalTheory.TensBal.sig W A A' v)) =
      ∏ a, GlobalTheory.TensBal.qv T z J (GlobalTheory.TensBal.rosLat T A A' y y' a) ^ (-(rosatiε a)) := by
  intro R _ _ D D' r W T hB A A' z J hJ y y'
  rw [prod_eq_logHom (fun w => val (D.psi (vecLat T w y y')) (𝟙 _) z J)]
  apply Additive.ofMul.injective
  rw [ofMul_toMul]

  simp only [sig, map_sum, map_zsmul, logHom_lam T hB hJ, qv, ofMul_prod, ofMul_zpow,
  Finset.smul_sum, ofMul_inv, smul_neg, smul_smul]
  refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [← neg_smul, neg_mul, vecLat_rosVec, vecLat_rosVec]

end GlobalTheory.TensBalLat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumPsiValuesEqTauProduct =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorTensorPowerCorrespondsFormalSum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorTensorPowerCorrespondsFormalSum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosVec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TransportedGeneratorUniqueGlobalFunctionsBase\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsMatrixRingAct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.TensRos
open GlobalTheory.TensBal GlobalTheory.TensAct
variable {R : Type} [CommRing R] [IsDomain R] {D D' : DegPre R} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}

theorem vecHom_add (T : Tens D D' W) (u v : Vec r) : vecHom T (u + v) = vecHom T u * vecHom T v := by
  simp only [vecHom, Pi.add_apply, zpow_add, Finset.prod_mul_distrib]
  exact mul_mul_mul_comm _ _ _ _

theorem vecHom_zero (T : Tens D D' W) : vecHom T 0 = 1 := by
  simp [vecHom]

theorem prod_single {G : Type} [CommGroup G] (f : Fin r → G) (i : Fin r) :
    ∏ k, f k ^ (Pi.single i (1 : ℤ) : Fin r → ℤ) k = f i := by
  rw [Fintype.prod_eq_single i (fun k hk => by rw [Pi.single_eq_of_ne hk, zpow_zero])]
  rw [Pi.single_eq_same, zpow_one]

theorem vecHom_xv (T : Tens D D' W) (i : Fin r) : vecHom T (xv i) = fst D'.P.A D'.P.A ≫ T.pr i := by
  simp only [vecHom, xv, Sum.elim_inl, Sum.elim_inr, Pi.zero_apply, zpow_zero, Finset.prod_const_one, _root_.mul_one]
  exact prod_single _ i

theorem vecHom_zv (T : Tens D D' W) (i : Fin r) : vecHom T (zv i) = snd D'.P.A D'.P.A ≫ T.pr i := by
  simp only [vecHom, zv, Sum.elim_inl, Sum.elim_inr, Pi.zero_apply, zpow_zero, Finset.prod_const_one, _root_.one_mul]
  exact prod_single _ i

theorem vecHom_axv (T : Tens D D' W) (A : Matrix (Fin r) (Fin r) ℤ) (i : Fin r) :
    vecHom T (axv A i) = fst D'.P.A D'.P.A ≫ matAct T A ≫ T.pr i := by
  simp only [vecHom, axv, Sum.elim_inl, Sum.elim_inr, Pi.zero_apply, zpow_zero, Finset.prod_const_one, _root_.mul_one]
  rw [matAct_pr, GlobalTheory.MatrixAction.comp_finsetProd]
  exact Finset.prod_congr rfl fun k _ => (GrpObj.comp_zpow _ _ _).symm

theorem vecHom_azv (T : Tens D D' W) (A : Matrix (Fin r) (Fin r) ℤ) (i : Fin r) :
    vecHom T (azv A i) = snd D'.P.A D'.P.A ≫ matAct T A ≫ T.pr i := by
  simp only [vecHom, azv, Sum.elim_inl, Sum.elim_inr, Pi.zero_apply, zpow_zero, Finset.prod_const_one, _root_.one_mul]
  rw [matAct_pr, GlobalTheory.MatrixAction.comp_finsetProd]
  exact Finset.prod_congr rfl fun k _ => (GrpObj.comp_zpow _ _ _).symm

theorem ros_pr (T : Tens D D' W) (A A' : Matrix (Fin r) (Fin r) ℤ) (a : Fin 6) :
    ∃ q : D'.P.A ⊗ D'.P.A ⟶ D'.P.A, rosatiφ D'.P.A (matAct T A) (matAct T A') a = q.left ∧
      ∀ k, q ≫ T.pr k = vecHom T (rosVec A A' a k) := by
  have hp := T.pr_hom
  fin_cases a
  · refine ⟨(fst D'.P.A D'.P.A ≫ matAct T A) * snd D'.P.A D'.P.A, rfl, fun k => ?_⟩
    show _ = vecHom T (axv A k + zv k)
    rw [MonObj.mul_comp, Category.assoc, vecHom_add, vecHom_axv, vecHom_zv]
  · refine ⟨fst D'.P.A D'.P.A ≫ matAct T A, rfl, fun k => ?_⟩
    show _ = vecHom T (axv A k)
    rw [vecHom_axv, Category.assoc]
  · refine ⟨snd D'.P.A D'.P.A, rfl, fun k => ?_⟩
    show _ = vecHom T (zv k)
    rw [vecHom_zv]
  · refine ⟨fst D'.P.A D'.P.A * (snd D'.P.A D'.P.A ≫ matAct T A'), rfl, fun k => ?_⟩
    show _ = vecHom T (xv k + azv A' k)
    rw [MonObj.mul_comp, Category.assoc, vecHom_add, vecHom_xv, vecHom_azv]
  · refine ⟨fst D'.P.A D'.P.A, rfl, fun k => ?_⟩
    show _ = vecHom T (xv k)
    rw [vecHom_xv]
  · refine ⟨snd D'.P.A D'.P.A ≫ matAct T A', rfl, fun k => ?_⟩
    show _ = vecHom T (azv A' k)
    rw [vecHom_azv, Category.assoc]

def lamV (u v : Vec r) : Fin 4 → Vec r := ![u + v, u, v, 0]

theorem ros_lam (T : Tens D D' W) (A A' : Matrix (Fin r) (Fin r) ℤ) (a : Fin 6) (i j : Fin r) (s : Fin 4) :
    rosatiφ D'.P.A (matAct T A) (matAct T A') a ≫ GlobalTheory.PolDeg.lamPts (T.pr i) (T.pr j) s =
      (vecHom T (lamV (rosVec A A' a i) (rosVec A A' a j) s)).left := by
  obtain ⟨q, hq, hk⟩ := ros_pr T A A' a
  rw [hq]
  fin_cases s
  · show q.left ≫ (T.pr i * T.pr j).left = _
    rw [← Over.comp_left, MonObj.comp_mul, hk, hk]
    show _ = (vecHom T (rosVec A A' a i + rosVec A A' a j)).left
    rw [vecHom_add]
  · show q.left ≫ (T.pr i).left = _
    rw [← Over.comp_left, hk]; rfl
  · show q.left ≫ (T.pr j).left = _
    rw [← Over.comp_left, hk]; rfl
  · show q.left ≫ (1 : D'.P.A ⟶ D.P.A).left = _
    rw [← Over.comp_left, MonObj.comp_one]
    show _ = (vecHom T 0).left
    rw [vecHom_zero]
theorem formEq_sig (T : Tens D D' W) (A A' : Matrix (Fin r) (Fin r) ℤ) :
    FormEq (fun p : Fin 6 × ((Fin r × Fin r) × Fin 4) =>
        rosatiφ D'.P.A (matAct T A) (matAct T A') p.1 ≫ tensφ T.pr p.2)
      (fun p => rosatiε p.1 * tensε W p.2)
      (fun v : (sig W A A').support => (vecHom T v.1).left) (fun v => sig W A A' v.1) := by
  intro U _ h
  let H : Vec r → Additive U := fun v => Additive.ofMul (h (vecHom T v).left)
  let F : (Vec r →₀ ℤ) →+ Additive U := Finsupp.liftAddHom fun v => zmultiplesHom (Additive U) (H v)
  have hF1 : ∀ x, F (Finsupp.single x 1) = H x := fun x => by
    simp only [F, Finsupp.liftAddHom_apply_single, zmultiplesHom_apply, one_zsmul]
  have hlam : ∀ u v, F (lam u v) = ∑ s : Fin 4, Oε s • H (lamV u v s) := fun u v => by
    simp only [lam, map_add (f := _), map_sub, hF1, Fin.sum_univ_four]
    simp [Oε, lamV]
    abel
  have hR : Additive.ofMul (∏ v : (sig W A A').support, h (vecHom T v.1).left ^ sig W A A' v.1) =
      F (sig W A A') := by
    rw [ofMul_prod]
    simp only [ofMul_zpow]
    rw [Finset.sum_coe_sort (sig W A A').support (fun v => sig W A A' v • H v)]
    simp only [F, Finsupp.liftAddHom_apply]
    rfl
  apply Additive.ofMul.injective
  rw [hR]

  simp only [ofMul_prod, ofMul_zpow, sig, map_sum, map_zsmul, hlam]
  rw [Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Fintype.sum_prod_type, Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun s _ => ?_
  show (rosatiε a * (W i j * Oε s)) • Additive.ofMul (h (rosatiφ D'.P.A (matAct T A) (matAct T A') a ≫
    GlobalTheory.PolDeg.lamPts (T.pr i) (T.pr j) s)) = _
  rw [ros_lam, ← _root_.mul_assoc, mul_smul]

theorem ros_sig : ∀ (R : Type) [CommRing R] [IsDomain R] (D D' : DegPre R) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D D' W) (A A' : Matrix (Fin r) (Fin r) ℤ) (u' : LB.Gen (LB.LinComb D'.P.L (rosatiφ D'.P.A (GlobalTheory.TensAct.matAct T A) (GlobalTheory.TensAct.matAct T A')) rosatiε)), u'.IsGen → LB.Gen.Corr D'.P.L _ _ _ _ (LB.pullGen D'.P.L _ _ u' (zero2 D'.P.A)) (LB.oneGen D'.P.L) → ∀ (Ξ : LB.Gen (LB.LinComb D.P.L (fun v : (GlobalTheory.TensBal.sig W A A').support => (GlobalTheory.TensBal.vecHom T v.1).left) (fun v => GlobalTheory.TensBal.sig W A A' v.1))), Ξ.IsGen → (∀ (z : (𝟙_ (Over (Spec (CommRingCat.of R)))).left) (J : ((𝟙_ (Over (Spec (CommRingCat.of R)))).left ⟶ D.P.A.left) → D.P.L.ι), Good D.P.L z J → val Ξ (zero2 D'.P.A) z J = 1) → ∀ (z : (TK R).left) (J : ((TK R).left ⟶ D.P.A.left) → D.P.L.ι) (J' : ((TK R).left ⟶ D'.P.A.left) → D'.P.L.ι), Good D.P.L z J → Good D'.P.L z J' → ∀ y y' : D'.X, (∏ a, GlobalTheory.TensBal.isoV T.w z J J' (D'.pt2 y y' ≫ rosatiφ D'.P.A (GlobalTheory.TensAct.matAct T A) (GlobalTheory.TensAct.matAct T A') a) ^ rosatiε a) * val u' (D'.pt2 y y') z J' = val Ξ (D'.pt2 y y') z J := by
  intro R _ _ D D' r W T A A' u' hu' hn' Ξ hΞ hΞ0 z J J' hJ hJ' y y'
  have hG : GlobalFnsSt := GlobalTheory.SemiRigid.globalFns
  haveI := matAct_hom T A
  haveI := matAct_hom T A'
  have sj : Function.Surjective ((snd D'.P.A D'.P.A).left ≫ D'.P.A.hom).appTop.hom :=
    surj_comp (surj_snd hG D'.P.isAb _) (hG _ _ D'.P.isAb).2
  have he : zero2 D'.P.A ≫ (snd D'.P.A D'.P.A).left ≫ D'.P.A.hom = 𝟙 _ := by
    rw [Over.w]; exact Over.w (lift η[D'.P.A] η[D'.P.A])
  refine _root_.GlobalTheory.TensBalUniq.iso_unique D.P.isLB D'.P.isLB T.w T.w_gen (formEq_sig T A A') hu' hΞ _ (zero2 D'.P.A) he sj
    (fun s I I' hI hI' => ?_) _ (D'.pt2 y y') z J J' hJ hJ'
  have o : (η[D'.P.A] : 𝟙_ (Over (Spec (CommRingCat.of R))) ⟶ D'.P.A) = 1 := by simp [Hom.one_def]
  have p := prod_ros (matAct T A) (matAct T A') η[D'.P.A] η[D'.P.A] (fun q => isoV T.w s I I' q)
  rw [IsMonHom.one_hom, IsMonHom.one_hom, show η[D'.P.A] * η[D'.P.A] = η[D'.P.A] by rw [o, _root_.mul_one]] at p
  have v' := val_corr hI' hn' (𝟙 _)
  rw [val_pull hI', Category.id_comp, val_one] at v'
  rw [hΞ0 s I hI]
  refine (congrArg₂ (· * ·) p v').trans (by simp)

end GlobalTheory.TensRos
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorTensorPowerCorrespondsFormalSum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationTauBalancedOfAdjointIntMatrice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationTauBalancedOfAdjointIntMatrice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosVec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialCubicalThetaFinsuppTensor\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorAdd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorNeg\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsStronglyTrivialFormalSumTensorZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumMemSpanCubicalThetaStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiBalanceFormalSumPsiValuesEqTauProduct\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RosatiGeneratorTensorPowerCorrespondsFormalSum\nimport Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.TauBalPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.TensBal
open GlobalTheory.TensAct
open ReciprocityTheory.ChartRestriction.G.DVR (cP cPoint_add)

theorem triv_span {R : Type} [CommRing R] [IsDomain R] {D D' : DegPre R} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}
    (T : Tens D D' W) (hB : D.TauBimult) {c : Vec r →₀ ℤ}
    (hc : c ∈ Submodule.span ℤ (Set.range fun p : Vec r × Vec r × Vec r => theta p.1 p.2.1 p.2.2)) : Triv T c := by
  induction hc using Submodule.span_induction with
  | mem x hx => obtain ⟨p, rfl⟩ := hx; exact _root_.GlobalTheory.TensBal.triv_theta R D D' W T hB _ _ _
  | zero => exact _root_.GlobalTheory.TensBal.triv_zero R D D' W T
  | add x y _ _ hx hy => exact _root_.GlobalTheory.TensBal.triv_add R D D' W T _ _ hx hy
  | smul n x _ hx =>
    induction n using Int.induction_on with
    | zero => rw [zero_smul]; exact _root_.GlobalTheory.TensBal.triv_zero R D D' W T
    | succ k ih => rw [add_smul, one_smul]; exact _root_.GlobalTheory.TensBal.triv_add R D D' W T _ _ ih hx
    | pred k ih =>
      rw [sub_smul, one_smul, sub_eq_add_neg]
      exact _root_.GlobalTheory.TensBal.triv_add R D D' W T _ _ ih (_root_.GlobalTheory.TensBalNeg.triv_neg R D D' W T _ hx)

theorem tau_tens {R : Type} [CommRing R] [IsDomain R] {D D' : DegPre R} {r : ℕ} {W : Matrix (Fin r) (Fin r) ℤ}
    (T : Tens D D' W) {z : (TK R).left} {J J'} (hJ : Good D.P.L z J) (hJ' : Good D'.P.L z J') (p q : D'.X) :
    val (D'.tau p q) (𝟙 _) z J' = isoV T.w z J J' (cP D' (TK R) (p + q)).left * qv T z J (p + q) *
      (isoV T.w z J J' (cP D' (TK R) p).left * qv T z J p)⁻¹ *
      (isoV T.w z J J' (cP D' (TK R) q).left * qv T z J q)⁻¹ * (val D'.rigK (𝟙 _) z J')⁻¹ := by
  rw [GlobalTheory.TauBalBox.tau_val D' hJ', T.psi _ z J J' hJ hJ', T.psi _ z J J' hJ hJ', T.psi _ z J J' hJ hJ']
  rfl

theorem tauBal_tens : ∀ (R : Type) [CommRing R] [IsDomain R] (I : Ideal R) (D D' : DegData R I) {r : ℕ} (W : Matrix (Fin r) (Fin r) ℤ) (T : Tens D.toPre D'.toPre W) (A A' : Matrix (Fin r) (Fin r) ℤ), A.transpose * (W + W.transpose) = (W + W.transpose) * A' → D'.toPre.TauBal (GlobalTheory.TensAct.matAct T A) (GlobalTheory.TensAct.matAct T A') (GlobalTheory.TensAct.latAct T A) (GlobalTheory.TensAct.latAct T A') := by
  intro R _ _ I D D' r W T A A' hA u' hu' hn' y y'
  obtain ⟨Ξ, hΞ, hΞ0, hΞv⟩ := triv_span T D.tau_bimult (_root_.GlobalTheory.TensBal.SpanPf.main W A A' hA)
  refine corr_of_val D'.toPre.P.isLB fun z J' hJ' => ?_
  obtain ⟨J, hJ⟩ := GlobalTheory.BoxFamily.exists_good_at D.toPre.P.isLB z
  have key := _root_.GlobalTheory.TensRos.ros_sig R D.toPre D'.toPre W T A A' u' hu' hn' Ξ hΞ hΞ0 z J J' hJ hJ' y y'
  rw [hΞv z J hJ y y', _root_.GlobalTheory.TensBalLat.main R D.toPre D'.toPre W T D.tau_bimult A A' z J hJ y y'] at key
  have pr := prod_ros (matAct T A) (matAct T A') (cP D'.toPre (TK R) y) (cP D'.toPre (TK R) y')
    (isoV T.w z J J')
  have l₁ : cP D'.toPre (TK R) y ≫ matAct T A = cP D'.toPre (TK R) (latAct T A y) := by
    rw [cP, cP, c_lin, Category.assoc]
  have l₂ : cP D'.toPre (TK R) y' ≫ matAct T A' = cP D'.toPre (TK R) (latAct T A' y') := by
    rw [cP, cP, c_lin, Category.assoc]
  rw [l₁, l₂, ← cPoint_add, ← cPoint_add] at pr
  change ∏ a, isoV T.w z J J' (D'.toPre.pt2 y y' ≫ rosatiφ D'.toPre.P.A (matAct T A) (matAct T A') a) ^ rosatiε a = _ at pr
  rw [pr] at key
  rw [val_mul hJ', val_pull hJ', Category.id_comp, tau_tens T hJ hJ', tau_tens T hJ hJ']
  have e0 : rosatiε 0 = 1 := rfl
  have e1 : rosatiε 1 = -1 := rfl
  have e2 : rosatiε 2 = -1 := rfl
  have e3 : rosatiε 3 = -1 := rfl
  have e4 : rosatiε 4 = 1 := rfl
  have e5 : rosatiε 5 = 1 := rfl
  have r0 : rosLat T A A' y y' 0 = latAct T A y + y' := rfl
  have r1 : rosLat T A A' y y' 1 = latAct T A y := rfl
  have r2 : rosLat T A A' y y' 2 = y' := rfl
  have r3 : rosLat T A A' y y' 3 = y + latAct T A' y' := rfl
  have r4 : rosLat T A A' y y' 4 = y := rfl
  have r5 : rosLat T A A' y y' 5 = latAct T A' y' := rfl
  simp only [Fin.prod_univ_six, e0, e1, e2, e3, e4, e5, r0, r1, r2, r3, r4, r5] at key
  apply Additive.ofMul.injective
  have k' := congrArg Additive.ofMul key
  simp only [ofMul_mul, ofMul_inv, ofMul_zpow] at k' ⊢
  linear_combination (norm := abel) k'

end GlobalTheory.TensBal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationTauBalancedOfAdjointIntMatrice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationTauBalancedOfAdjointIntMatriceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationTauBalancedOfAdjointIntMatriceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMonHomOfMulComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationTauBalancedOfAdjointIntMatrice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorDegenerationTauBalancedOfAdjointIntMatriceStatement =====
