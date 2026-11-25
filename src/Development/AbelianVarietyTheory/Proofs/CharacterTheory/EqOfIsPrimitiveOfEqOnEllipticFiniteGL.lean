module

public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Data.Nat.ModEq
public import Mathlib.Data.Nat.PrimeFin
public import Mathlib.Order.Interval.Finset.Nat
public import Development.AbelianVarietyTheory.Definitions.CommutativeAlgebra.AbByPOfComm
public import Development.AbelianVarietyTheory.Definitions.CommutativeAlgebra.InvariantSubspaceMobiusInverseRecEqOfFinrankLt
public import Mathlib.Algebra.BigOperators.Group.Finset.Basic
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
public import Mathlib.Algebra.Order.GroupWithZero.Defs
public import Mathlib.Algebra.Ring.GeomSum
public import Mathlib.Basic.Complex.Basic
public import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots
public import Mathlib.LinearAlgebra.Vandermonde
public import Mathlib.Analysis.Complex.Norm
public import Mathlib.Algebra.Field.GeomSum
public import Mathlib.Analysis.Complex.Basic
public import Mathlib.RingTheory.RootsOfUnity.Complex
public import Mathlib.Algebra.Order.Ring.GeomSum
public import Mathlib.RingTheory.Coalgebra.IsFrobenius
public import Mathlib.RingTheory.HopfAlgebra.Basic
public import Mathlib.RingTheory.TotallySplit
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ExistsIntCoeffPrimitiveGLCharacter
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ExistsTeichmullerMapAlgebraicClosureFiniteField
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.FiniteGroupFunctionPairingEqZeroOfDistinctIrredu
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.FiniteGroupFunctionPairingSelfIrreducibleAlgClos
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.InvariantSubspaceMobiusInverseCharpolyOfIrreduci
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.InvertibleEndomorphismInnerProductPrimitiveMobiu
public import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure
public import Mathlib.FieldTheory.Finite.Basic
public import Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.ENatToNat
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.FrobeniusTorusCharacterOrthogonality
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.FrobeniusTorusMinpolyDegreeRootPowerSum
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.GeneralLinearFunctionExtendZeroEndProperties
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.InnerProductRootPowerSumEqOfFrobeniusModEq
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.IsCharacterOverSubfieldRestrictClassFunctionOne
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.PrimitiveClassFunctionExpansionRootSums
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.RootPowerSumCharacterAdditiveAndXSubOnePow
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.StarVirtualCharacterEqApplyInv
import Development.AbelianVarietyTheory.Proofs.CharacterTheory.VirtualCharactersMulComapConjIndLinear
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.CharacterTheory.EqOfIsPrimitiveOfEqOnEllipticFiniteGL

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.CharacterTheory.EqOfIsPrimitiveOfEqOnEllipticFiniteGL =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.CharacterTheory.EqOfIsPrimitiveOfEqOnEllipticFiniteGL", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.CommutativeAlgebra.AbByPOfComm\npublic import Development.AbelianVarietyTheory.Definitions.CommutativeAlgebra.InvariantSubspaceMobiusInverseRecEqOfFinrankLt\npublic import Mathlib.RingTheory.Coalgebra.IsFrobenius\npublic import Mathlib.RingTheory.HopfAlgebra.Basic\npublic import Mathlib.RingTheory.TotallySplit\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ExistsIntCoeffPrimitiveGLCharacter\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ExistsTeichmullerMapAlgebraicClosureFiniteField\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.FiniteGroupFunctionPairingEqZeroOfDistinctIrredu\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.FiniteGroupFunctionPairingSelfIrreducibleAlgClos\nimport Development.AbelianVarietyTheory.Proofs.CharacterTheory.FrobeniusTorusCharacterOrthogonality\nimport Development.AbelianVarietyTheory.Proofs.CharacterTheory.FrobeniusTorusMinpolyDegreeRootPowerSum\nimport Development.AbelianVarietyTheory.Proofs.CharacterTheory.GeneralLinearFunctionExtendZeroEndProperties\nimport Development.AbelianVarietyTheory.Proofs.CharacterTheory.InnerProductRootPowerSumEqOfFrobeniusModEq\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.InvariantSubspaceMobiusInverseCharpolyOfIrreduci\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.InvertibleEndomorphismInnerProductPrimitiveMobiu\nimport Development.AbelianVarietyTheory.Proofs.CharacterTheory.IsCharacterOverSubfieldRestrictClassFunctionOne\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Data.Nat.ModEq\npublic import Mathlib.Data.Nat.PrimeFin\npublic import Mathlib.Order.Interval.Finset.Nat\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Basic\npublic import Mathlib.Algebra.Order.BigOperators.Group.Finset\npublic import Mathlib.Algebra.Order.GroupWithZero.Defs\npublic import Mathlib.Algebra.Ring.GeomSum\npublic import Mathlib.LinearAlgebra.Vandermonde\npublic import Mathlib.Analysis.Complex.Norm\npublic import Mathlib.Algebra.Field.GeomSum\npublic import Mathlib.Analysis.Complex.Basic\npublic import Mathlib.RingTheory.RootsOfUnity.Complex\npublic import Mathlib.Algebra.Order.Ring.GeomSum\nimport Development.AbelianVarietyTheory.Proofs.CharacterTheory.PrimitiveClassFunctionExpansionRootSums\npublic import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure\npublic import Mathlib.FieldTheory.Finite.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly\nimport Development.AbelianVarietyTheory.Proofs.CharacterTheory.RootPowerSumCharacterAdditiveAndXSubOnePow\nimport Development.AbelianVarietyTheory.Proofs.CharacterTheory.StarVirtualCharacterEqApplyInv\nimport Development.AbelianVarietyTheory.Proofs.CharacterTheory.VirtualCharactersMulComapConjIndLinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial GlobalTheory.CuspGL GlobalTheory.BI

namespace GlobalTheory.CuspGL

open Polynomial in
theorem _root_.GlobalTheory.CuspGL.isCharacter_of_isIrreducibleCharacter_complex {G : Type} [Group G] {χ : G → ℂ} (h : _root_.GlobalTheory.BI.IsIrrChar ℂ ℂ χ) : _root_.GlobalTheory.BI.IsChar ℂ ℂ χ := by
  obtain ⟨n, ρ, -, hρ⟩ := h
  exact ⟨n, ρ, hρ⟩

open Polynomial in
alias _root_.GlobalTheory.CuspGL.generalLinearGroupCardComplex_finiteField_ne_zero := _root_.GlobalTheory.CuspGL.MassMult.glCard_ne_zero


open Polynomial in
theorem _root_.GlobalTheory.CuspGL.sum_coef_mul_eq_pair (F : Type) [Field F] [Finite F] (θ : AlgebraicClosure F →* ℂ)
    (hθ : ∀ x y : AlgebraicClosure F, x ≠ 0 → y ≠ 0 → θ x = θ y → x = y) (d : ℕ) (hd : 0 < d)
    (χ χ' : GL (Fin d) F → ℂ) (h : _root_.GlobalTheory.BI.IsChar ℂ ℂ χ) (h' : _root_.GlobalTheory.BI.IsChar ℂ ℂ χ')
    (hp : _root_.GlobalTheory.CuspGL.IsPrimitive (_root_.GlobalTheory.CuspGL.extZero χ)) (hp' : _root_.GlobalTheory.CuspGL.IsPrimitive (_root_.GlobalTheory.CuspGL.extZero χ')) (a b : ℕ → ℤ)
    (ha : ∀ k : ℕ, _root_.GlobalTheory.CuspGL.ipGL (_root_.GlobalTheory.CuspGL.extZero χ) (fun g : Module.End F (Fin d → F) => _root_.GlobalTheory.CuspGL.rootSum θ k (LinearMap.charpoly g))
      = a k * _root_.GlobalTheory.CuspGL.glCard F d)
    (hb : ∀ k : ℕ, _root_.GlobalTheory.CuspGL.ipGL (_root_.GlobalTheory.CuspGL.extZero χ') (fun g : Module.End F (Fin d → F) => _root_.GlobalTheory.CuspGL.rootSum θ k (LinearMap.charpoly g))
      = b k * _root_.GlobalTheory.CuspGL.glCard F d) :
    ((∑ k ∈ Finset.range (Nat.card F ^ d - 1), a k * b k : ℤ) : ℂ) = d * _root_.GlobalTheory.BI.pair χ χ' := by
  classical
  letI : Fintype (GL (Fin d) F) := Fintype.ofFinite _
  have hN : _root_.GlobalTheory.CuspGL.glCard F d ≠ 0 := _root_.GlobalTheory.CuspGL.generalLinearGroupCardComplex_finiteField_ne_zero F d
  have hfr : Module.finrank F (Fin d → F) = d := Module.finrank_fin_fun F
  obtain ⟨h1, -, h3, h4⟩ := _root_.GlobalTheory.CuspGL.extZero_spec F d χ
  obtain ⟨h1', -, -, h4'⟩ := _root_.GlobalTheory.CuspGL.extZero_spec F d χ'
  have hinv' := h4' (_root_.GlobalTheory.isChar_restrict_conj_one ℂ ℂ _ χ' h').2.1
  set M : ℕ → Module.End F (Fin d → F) → ℂ := fun k =>
    _root_.GlobalTheory.CuspGL.psi (_root_.GlobalTheory.CuspGL.rootSum θ k) (Fin d → F) with hMdef

  have hexp : ∀ x : GL (Fin d) F, (d : ℂ) * χ' x =
      ∑ k ∈ Finset.range (Nat.card F ^ d - 1), (b k : ℂ) * M k (Matrix.toLin' (x : Matrix (Fin d) (Fin d) F)) := by
    intro x
    have hu : IsUnit (Matrix.toLin' (x : Matrix (Fin d) (Fin d) F)) :=
      x.isUnit.map (Matrix.toLinAlgEquiv' (R := F) (n := Fin d))
    have := _root_.GlobalTheory.CuspGL.expand_primitive F (Fin d → F) θ hθ _ hinv' hp'
      (by rw [hfr]; exact hd) _ hu
    rw [hfr, h1'] at this
    simp only [hb] at this
    apply mul_left_cancel₀ hN
    rw [Finset.mul_sum, ← mul_assoc, this]
    refine Finset.sum_congr rfl fun k _ => by simp only [M]; ring

  have hMk : ∀ k, ∑ x : GL (Fin d) F, χ x * star (M k (Matrix.toLin' (x : Matrix (Fin d) (Fin d) F))) =
      a k * _root_.GlobalTheory.CuspGL.glCard F d := by
    intro k
    rw [← ha k, ← _root_.GlobalTheory.CuspGL.PrimOrth.ipGL_psi_eq F (Fin d → F) _
      (_root_.GlobalTheory.CuspGL.rootSum_isAdditive_and_pow_X_sub_one F θ k).1 _ hp, h3,
      finsum_eq_sum_of_fintype]
    refine Finset.sum_congr rfl fun x _ => by rw [h1]
  have hpair : ∑ x : GL (Fin d) F, χ x * star (χ' x) =
      _root_.GlobalTheory.CuspGL.glCard F d * _root_.GlobalTheory.BI.pair χ χ' := by
    unfold _root_.GlobalTheory.BI.pair _root_.GlobalTheory.CuspGL.glCard
    have hN' : ((Nat.card (GL (Fin d) F) : ℂ)) ≠ 0 := by exact_mod_cast Nat.card_pos.ne'
    rw [← mul_assoc, mul_inv_cancel₀ hN', one_mul, finsum_eq_sum_of_fintype]
    refine Finset.sum_congr rfl fun x _ => ?_
    rw [_root_.GlobalTheory.CuspGL.star_virt_eq_inv _ _ (_root_.GlobalTheory.BI.isChar_mem_virt_complex h') x]
  have hmain : (d : ℂ) * ∑ x : GL (Fin d) F, χ x * star (χ' x) =
      ∑ k ∈ Finset.range (Nat.card F ^ d - 1), (b k : ℂ) *
        ∑ x : GL (Fin d) F, χ x * star (M k (Matrix.toLin' (x : Matrix (Fin d) (Fin d) F))) := by
    simp_rw [Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun x _ => ?_
    have := congrArg star (hexp x)
    rw [star_mul', star_natCast, star_sum] at this
    rw [mul_left_comm, this, Finset.mul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [star_mul', star_intCast]
    ring
  rw [hpair] at hmain
  simp only [hMk] at hmain
  apply mul_left_cancel₀ hN
  push_cast
  have hre : ∑ k ∈ Finset.range (Nat.card F ^ d - 1), (b k : ℂ) * (a k * _root_.GlobalTheory.CuspGL.glCard F d) =
      _root_.GlobalTheory.CuspGL.glCard F d * ∑ k ∈ Finset.range (Nat.card F ^ d - 1), (a k : ℂ) * b k := by
    rw [Finset.mul_sum]
    exact Finset.sum_congr rfl fun k _ => by ring
  rw [hre] at hmain
  linear_combination -hmain

end GlobalTheory.CuspGL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.CharacterTheory.EqOfIsPrimitiveOfEqOnEllipticFiniteGL =====
