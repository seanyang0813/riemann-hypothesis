module

public import Mathlib.FieldTheory.LinearDisjoint
public import Mathlib.RingTheory.Localization.InvSubmonoid
public import Mathlib.RingTheory.Jacobson.Ring
public import Mathlib.RingTheory.Polynomial.GaussLemma
public import Mathlib.RingTheory.Algebraic.Defs
public import Mathlib.RingTheory.TensorProduct.Basic
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NatDegreeMinpolyEqOfClosed
import Mathlib.FieldTheory.PurelyInseparable.Exponent
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TensorAlgebraicallyClosedDomain, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlgClosedTensorIsDomain

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TensorAlgebraicallyClosedDomain =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TensorAlgebraicallyClosedDomain", "h": "module\n\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NatDegreeMinpolyEqOfClosed\npublic import Mathlib.FieldTheory.LinearDisjoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.FieldTheory.PurelyInseparable.Exponent\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\npublic import Mathlib.RingTheory.Localization.InvSubmonoid\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Jacobson.Ring\npublic import Mathlib.RingTheory.Polynomial.GaussLemma\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct

namespace PositivityTheory.Xgn.TensorDomain

open Polynomial
open scoped IntermediateField

theorem natDegree_minpoly_eq {k F A : Type} [Field k] [Field F] [Field A] [Algebra k F]
    [Algebra F A] [Algebra k A] [IsScalarTower k F A]
    (h : ∀ x : F, IsAlgebraic k x → x ∈ (algebraMap k F).range)
    {θ : A} (hθ : IsIntegral k θ) : (minpoly F θ).natDegree = (minpoly k θ).natDegree := by
  apply GlobalTheory.CompanionTheory.Ar.Cmp.RegularTensor.natDegree_minpoly_eq_of_closed <;> assumption

theorem linearDisjoint_algebraicClosure {K Ω L : Type} [Field K] [CharZero K] [Field Ω] [Field L]
    [Algebra K Ω] [Algebra Ω L] [Algebra K L] [IsScalarTower K Ω L]
    (h : ∀ a : Ω, IsAlgebraic K a → a ∈ (algebraMap K Ω).range) :
    (algebraicClosure K L).LinearDisjoint Ω := by
  have : Algebra.IsIntegral K (algebraicClosure K L).toSubalgebra :=
    (algebraicClosure.isAlgebraic K L).isIntegral
  refine Subalgebra.LinearDisjoint.of_linearDisjoint_finite_left _ _ fun B hB _ => ?_
  have halg : B.IsAlgebraic := fun x hx => (mem_algebraicClosure_iff (F := K)).1 (hB hx)
  let M : IntermediateField K L := halg.toIntermediateField
  haveI : FiniteDimensional K M := ‹Module.Finite K B›
  change M.LinearDisjoint Ω
  obtain ⟨θ, hθ⟩ := Field.exists_primitive_element K M
  have hi : IsIntegral K (θ : L) := (Algebra.IsIntegral.isIntegral (R := K) θ).map M.val
  have e : K⟮(θ : L)⟯ = M := by
    have := congrArg (IntermediateField.lift (F := M)) hθ
    simpa using this
  rw [← e]
  refine IntermediateField.LinearDisjoint.of_basis_left
    (IntermediateField.adjoin.powerBasis hi).basis ?_
  have hd := natDegree_minpoly_eq (F := Ω) h hi
  have hl := linearIndependent_pow (K := Ω) (θ : L)
  rw [hd] at hl
  have he : (K⟮(θ : L)⟯.val ∘ (IntermediateField.adjoin.powerBasis hi).basis) =
      fun i : Fin (IntermediateField.adjoin.powerBasis hi).dim => (θ : L) ^ (i : ℕ) := by
    funext i
    simp
  rw [he]
  exact hl

theorem exists_point (k A : Type) [Field k] [IsAlgClosed k] [CommRing A] [IsDomain A]
    [Algebra k A] [Algebra.FiniteType k A] {a : A} (ha : a ≠ 0) : ∃ φ : A →ₐ[k] k, φ a ≠ 0 := by
  let S := Localization.Away a
  haveI : IsDomain S :=
    IsLocalization.isDomain_localization (powers_le_nonZeroDivisors_of_noZeroDivisors ha)
  haveI : Algebra.FiniteType A S := IsLocalization.finiteType_of_monoid_fg (Submonoid.powers a) S
  haveI : Algebra.FiniteType k S := Algebra.FiniteType.trans (S := A) inferInstance inferInstance
  obtain ⟨m, hm⟩ := Ideal.exists_maximal S
  letI : Field (S ⧸ m) := Ideal.Quotient.field m
  haveI : Module.Finite k (S ⧸ m) := finite_of_finite_type_of_isJacobsonRing k (S ⧸ m)
  let ψ : (S ⧸ m) →ₐ[k] k := (by
    refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
    solve_by_elim* (maxDepth := 2) only [*,
      @_root_.DivisionSemiring.to_moduleIsTorsionFree,
      @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
  refine ⟨(ψ.comp (Ideal.Quotient.mkₐ k m)).comp (IsScalarTower.toAlgHom k A S), ?_⟩
  have hu : IsUnit (algebraMap A S a) := IsLocalization.Away.algebraMap_isUnit a
  exact (hu.map (ψ.comp (Ideal.Quotient.mkₐ k m))).ne_zero

theorem isDomain_tensor_of_isAlgClosed (k A : Type) [Field k] [IsAlgClosed k] [CommRing A]
    [IsDomain A] [Algebra k A] [Algebra.FiniteType k A] (F : Type) [Field F] [Algebra k F] :
    IsDomain (F ⊗[k] A) := by
  let b := Module.Basis.ofVectorSpace k F
  let B := Algebra.TensorProduct.basis A b
  haveI : Nontrivial (A ⊗[k] F) :=
    (Algebra.TensorProduct.includeRight_injective (R := k) (A := A) (B := F)
      (algebraMap k A).injective).nontrivial
  haveI : NoZeroDivisors (A ⊗[k] F) := ⟨fun {x y} hxy => by
    by_contra hc
    rw [not_or] at hc
    obtain ⟨hx, hy⟩ := hc
    obtain ⟨i, hi⟩ : ∃ i, B.repr x i ≠ 0 := by
      by_contra hn
      exact hx (B.repr.map_eq_zero_iff.1 (Finsupp.ext fun i => not_not.1 fun h => hn ⟨i, h⟩))
    obtain ⟨j, hj⟩ : ∃ i, B.repr y i ≠ 0 := by
      by_contra hn
      exact hy (B.repr.map_eq_zero_iff.1 (Finsupp.ext fun i => not_not.1 fun h => hn ⟨i, h⟩))
    obtain ⟨φ, hφ⟩ := exists_point k A (mul_ne_zero hi hj)
    let Φ : A ⊗[k] F →ₐ[k] F :=
      Algebra.TensorProduct.lift ((Algebra.ofId k F).comp φ) (AlgHom.id k F)
        fun _ _ => Commute.all _ _
    have key : ∀ z i, φ (B.repr z i) = b.repr (Φ z) i := by
      intro z i
      induction z using TensorProduct.induction_on with
      | zero => simp
      | add u v hu hv => simp only [map_add (f := _), Finsupp.add_apply, hu, hv]
      | tmul a f =>
        have h1 : Φ (a ⊗ₜ f) = φ a • f := by simp [Φ, Algebra.smul_def]
        rw [h1, map_smul]
        simp [B, Algebra.TensorProduct.basis_repr_tmul]
    have h0 : Φ x * Φ y = 0 := by rw [← map_mul, hxy, map_zero]
    apply hφ
    rw [map_mul, key, key]
    rcases mul_eq_zero.1 h0 with h | h <;> simp [h]⟩
  haveI : IsDomain (A ⊗[k] F) := NoZeroDivisors.to_isDomain _
  exact (Algebra.TensorProduct.comm k F A).toMulEquiv.isDomain

theorem isDomain_tensor_of_closure (k Ω S : Type) [Field k] [Field Ω] [IsAlgClosed Ω] [Algebra k Ω]
    [Algebra.IsAlgebraic k Ω] [CommRing S] [Algebra k S] [Algebra.FiniteType k S]
    [IsDomain (Ω ⊗[k] S)] (F : Type) [Field F] [Algebra k F] : IsDomain (F ⊗[k] S) := by
  let L := AlgebraicClosure F
  let j : Ω →ₐ[k] L := (by
    refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
    solve_by_elim* (maxDepth := 2) only [*,
      @_root_.DivisionSemiring.to_moduleIsTorsionFree,
      @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
  letI : Algebra Ω L := j.toRingHom.toAlgebra
  haveI : IsScalarTower k Ω L := IsScalarTower.of_algebraMap_eq fun x => (j.commutes x).symm
  haveI := isDomain_tensor_of_isAlgClosed Ω (Ω ⊗[k] S) L
  haveI : IsDomain (L ⊗[k] S) :=
    (Algebra.TensorProduct.cancelBaseChange k Ω L L S).symm.toMulEquiv.isDomain _
  let φ := Algebra.TensorProduct.map (IsScalarTower.toAlgHom k F L) (AlgHom.id k S)
  have hφ : Function.Injective φ :=
    Module.Flat.rTensor_preserves_injective_linearMap (M := S)
      (IsScalarTower.toAlgHom k F L).toLinearMap (algebraMap F L).injective
  exact Function.Injective.isDomain φ.toRingHom hφ

theorem isDomain_tensor {K A Ω : Type} [Field K] [CharZero K] [CommRing A] [Field Ω] [Algebra K A]
    [Algebra K Ω] [Algebra.FiniteType K A] (j : A →ₐ[K] Ω) (hj : Function.Injective j)
    (h : ∀ a : Ω, IsAlgebraic K a → a ∈ (algebraMap K Ω).range) (F : Type) [Field F]
    [Algebra K F] : IsDomain (F ⊗[K] A) := by
  let N := algebraicClosure K (AlgebraicClosure Ω)
  haveI : IsDomain (N ⊗[K] Ω) := (linearDisjoint_algebraicClosure h).isDomain
  haveI : IsAlgClosed N := IsAlgClosure.isAlgClosed K
  let φ := Algebra.TensorProduct.map (AlgHom.id K N) j
  have hφ : Function.Injective φ :=
    Module.Flat.lTensor_preserves_injective_linearMap (M := N) j.toLinearMap hj
  haveI : IsDomain (N ⊗[K] A) := Function.Injective.isDomain φ.toRingHom hφ
  exact isDomain_tensor_of_closure K N A F

theorem isDomain_of_algClosed {K L F : Type} [Field K] [Field L] [Field F] [Algebra K L]
    [Algebra K F] [CharZero K] (h : ∀ a : F, IsAlgebraic K a → a ∈ (algebraMap K F).range) :
    IsDomain (L ⊗[K] F) := by
  classical
  haveI : Nontrivial (L ⊗[K] F) :=
    (Algebra.TensorProduct.includeRight_injective (R := K) (A := L) (B := F)
      (algebraMap K L).injective).nontrivial
  haveI : NoZeroDivisors (L ⊗[K] F) := ⟨fun {u v} huv => by
    obtain ⟨Su, rfl⟩ := TensorProduct.exists_finset u
    obtain ⟨Sv, rfl⟩ := TensorProduct.exists_finset v
    let T : Finset F := (Su ∪ Sv).image Prod.snd
    let A := Algebra.adjoin K (T : Set F)
    haveI : Algebra.FiniteType K A :=
      (Subalgebra.fg_iff_finiteType A).1 (Subalgebra.fg_adjoin_finset T)
    haveI := isDomain_tensor A.val Subtype.val_injective h L
    let φ := Algebra.TensorProduct.map (AlgHom.id K L) A.val
    have hφ : Function.Injective φ :=
      Module.Flat.lTensor_preserves_injective_linearMap (M := L) A.val.toLinearMap
        Subtype.val_injective
    have hr : ∀ S : Finset (L × F), S ⊆ Su ∪ Sv → (∑ q ∈ S, q.1 ⊗ₜ[K] q.2) ∈ φ.range :=
      fun S hS => sum_mem fun q hq => ⟨q.1 ⊗ₜ ⟨q.2, Algebra.subset_adjoin
        (Finset.mem_coe.2 (Finset.mem_image_of_mem _ (hS hq)))⟩, rfl⟩
    obtain ⟨a, ha⟩ := hr Su Finset.subset_union_left
    obtain ⟨b, hb⟩ := hr Sv Finset.subset_union_right
    have ha' : φ a = _ := ha
    have hb' : φ b = _ := hb
    rw [← ha', ← hb', ← map_mul, map_eq_zero_iff _ hφ] at huv
    rw [← ha', ← hb']
    rcases mul_eq_zero.1 huv with h0 | h0
    · left; rw [h0, map_zero]
    · right; rw [h0, map_zero]⟩
  exact NoZeroDivisors.to_isDomain _

end PositivityTheory.Xgn.TensorDomain

theorem PositivityTheory.Xgn.tensor_algebraically_closed_domain : ∀ (K Ω C : Type) [Field K] [CharZero K] [Field Ω] [Algebra K Ω] [Field C] [Algebra K C], (∀ a : Ω, IsAlgebraic K a → a ∈ (algebraMap K Ω).range) → IsDomain (Ω ⊗[K] C) := by
  intro K Ω C _ _ _ _ _ _ h
  haveI : IsDomain (C ⊗[K] Ω) := PositivityTheory.Xgn.TensorDomain.isDomain_of_algClosed h
  exact (Algebra.TensorProduct.comm K Ω C).toMulEquiv.isDomain
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TensorAlgebraicallyClosedDomain =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlgClosedTensorIsDomain =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlgClosedTensorIsDomain", "h": "module\n\npublic import Mathlib.RingTheory.Algebraic.Defs\npublic import Mathlib.RingTheory.TensorProduct.Basic\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TensorAlgebraicallyClosedDomain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct

namespace GlobalTheory.CompanionTheory.Ar.Flat

theorem isDomain_tensor_of_algebraically_closed_constants :
    ∀ (K Ω C : Type) [Field K] [CharZero K] [Field Ω] [Algebra K Ω] [Field C] [Algebra K C],
      (∀ a : Ω, IsAlgebraic K a → a ∈ (algebraMap K Ω).range) → IsDomain (Ω ⊗[K] C) :=
  @PositivityTheory.Xgn.tensor_algebraically_closed_domain

end GlobalTheory.CompanionTheory.Ar.Flat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlgClosedTensorIsDomain =====
