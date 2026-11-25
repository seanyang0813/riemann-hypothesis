module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.UnitaryThreeReflectionRight
public import Mathlib.LinearAlgebra.Matrix.Charpoly.Basic
public import Mathlib.RingTheory.Ideal.BigOperators
public import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.IsInertiaInfiniteCyclotomic
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ChosenFrobeniusIsFrobenius
public import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.CycInertia
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsMapAlgHomStatement
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.Imports
public import Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebra.CoEvLow
public import Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebra.CoMvps
public import Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebra.CoQuot
public import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.ConjStable
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryComponentUniquePrimeDimThirteenNearBase
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
import Mathlib.Topology.Sheaves.Init
import Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebra.ResMapBijective
import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.FiniteCohomology
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import ReciprocityTheory.GaloisValuations.GlobalA
import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.FrobDense
import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.IqBasic
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsConjInvariant, Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsConjInvariantStatement, Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ReducedOrdinaryIdealLeKerOfConjOfSaturatingNeZer, Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.SaturatingElementNotMemMinimalPrimesReducedOrdin, Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.SaturatingElementNotMemMinimalPrimesReducedOrdinStatement, Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ExistsConjLift, Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.RtConj

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsConjInvariant =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsConjInvariant", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.UnitaryThreeReflectionRight\npublic import Mathlib.LinearAlgebra.Matrix.Charpoly.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebra.ResMapBijective\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.FiniteCohomology\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Mathlib.RingTheory.Ideal.BigOperators\nimport ReciprocityTheory.GaloisValuations.GlobalA\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc ReciprocityTheory.Gal Module UpperTheory.V.Loc UpperTheory.V.U3 UpperTheory.V.Alg IsLocalRing Polynomial Topology

namespace GlobalTheory.OrdLoc

theorem conjBy_left {G C : Type} [Group G] [CommRing C] (h : GL (Fin 3) C)
    (r : G →* UpperTheory.V.U3.GG (m := 3) (R := C)) (g : G)
    (hg : (r g).right = 1) : (conjBy h r g).left = h * (r g).left * h⁻¹ := by
  show (GG.ofGL h * r g * (GG.ofGL h)⁻¹).left = _
  rw [SemidirectProduct.mul_left, SemidirectProduct.mul_left, SemidirectProduct.inv_left]
  simp only [SemidirectProduct.right_inl, SemidirectProduct.left_inl, SemidirectProduct.mul_right, hg, mul_one, inv_one, map_one, MulAut.one_apply]

section Conj

variable {C : Type} [CommRing C]

theorem ent_mem_mul {J : Ideal C} {N : Matrix (Fin 3) (Fin 3) C} (hN : ∀ i j, N i j ∈ J)
    (A B : Matrix (Fin 3) (Fin 3) C) (i j : Fin 3) : (A * N * B) i j ∈ J := by
  simp only [Matrix.mul_apply]
  exact Ideal.sum_mem _ fun k _ => Ideal.mul_mem_right _ _
    (Ideal.sum_mem _ fun m _ => Ideal.mul_mem_left _ _ (hN m k))

theorem conj_sub_scalar (h : GL (Fin 3) C) (M : Matrix (Fin 3) (Fin 3) C) (c : C) :
    (h : Matrix (Fin 3) (Fin 3) C) * M * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) - Matrix.scalar _ c =
      (h : Matrix (Fin 3) (Fin 3) C) * (M - Matrix.scalar _ c) * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) := by
  have e : (h : Matrix (Fin 3) (Fin 3) C) * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) = 1 := by
    rw [← Units.val_mul, mul_inv_cancel, Units.val_one]
  rw [Matrix.mul_sub, Matrix.sub_mul, ← (Matrix.scalar_commute c (fun _ => Commute.all _ _) (h : Matrix (Fin 3) (Fin 3) C)),
    Matrix.mul_assoc (Matrix.scalar _ c), e, Matrix.mul_one]

theorem conj_mul_three_alt (h : GL (Fin 3) C) (A B E : Matrix (Fin 3) (Fin 3) C) :
    ((h : Matrix (Fin 3) (Fin 3) C) * A * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C)) *
      ((h : Matrix (Fin 3) (Fin 3) C) * B * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C)) *
      ((h : Matrix (Fin 3) (Fin 3) C) * E * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C)) =
      (h : Matrix (Fin 3) (Fin 3) C) * (A * B * E) * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) := by
  have e : ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) * (h : Matrix (Fin 3) (Fin 3) C) = 1 := by
    rw [← Units.val_mul, inv_mul_cancel, Units.val_one]
  simp only [Matrix.mul_assoc]
  rw [← Matrix.mul_assoc ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) (h : Matrix (Fin 3) (Fin 3) C), e, Matrix.one_mul,
    ← Matrix.mul_assoc ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) (h : Matrix (Fin 3) (Fin 3) C), e, Matrix.one_mul]

theorem unconj (h : GL (Fin 3) C) (M : Matrix (Fin 3) (Fin 3) C) :
    M = ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) *
      ((h : Matrix (Fin 3) (Fin 3) C) * M * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C)) * (h : Matrix (Fin 3) (Fin 3) C) := by
  have e : ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) * (h : Matrix (Fin 3) (Fin 3) C) = 1 := by
    rw [← Units.val_mul, inv_mul_cancel, Units.val_one]
  simp only [Matrix.mul_assoc]
  rw [e, Matrix.mul_one, ← Matrix.mul_assoc, e, Matrix.one_mul]

theorem trace_conj (h : GL (Fin 3) C) (M : Matrix (Fin 3) (Fin 3) C) :
    ((h : Matrix (Fin 3) (Fin 3) C) * M * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C)).trace = M.trace := by
  rw [Matrix.trace_mul_comm, ← Matrix.mul_assoc, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mul]

theorem charpoly_conj (h : GL (Fin 3) C) (M : Matrix (Fin 3) (Fin 3) C) :
    ((h : Matrix (Fin 3) (Fin 3) C) * M * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C)).charpoly = M.charpoly := by
  rw [Matrix.coe_units_inv]
  exact Matrix.charpoly_units_conj h M

end Conj

end GlobalTheory.OrdLoc

namespace GlobalTheory.OrdLoc

end GlobalTheory.OrdLoc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsConjInvariant =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsConjInvariantStatement =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsConjInvariantStatement", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.IsInertiaInfiniteCyclotomic\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ChosenFrobeniusIsFrobenius\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsConjInvariant\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.CycInertia\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.FrobDense\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.IqBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc ReciprocityTheory.Gal Module UpperTheory.V.Loc UpperTheory.V.U3 UpperTheory.V.Alg IsLocalRing Polynomial Topology

theorem _root_.GlobalTheory.T.ordinaryIdeal_saturators_conj_invariant :
    ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] [IsLocalRing O] [Algebra ℤ_[l] O]
      (D : Dat3 l O) {C : Type} [CommRing C] [Algebra O C]
      (r : GQ l →* GG (m := 3) (R := C)) (h : GL (Fin 3) C), HasMult D.η r →
      D.ordIdeal (conjBy h r) = D.ordIdeal r ∧
        (∀ a, D.dd (conjBy h r) a = D.dd r a) ∧ D.del (conjBy h r) = D.del r := by
  intro l _ O _ _ _ D C _ _ r h hr
  have hone : ∀ s ∈ D.HL, (r s).right = 1 := by
    intro s hs
    rw [hr s]
    exact MonoidHom.mem_ker.1 (Subgroup.mem_inf.1 hs).1
  have hmat (s : GQ l) (hs : s ∈ D.HL) :
      (conjBy h r s).mat =
        (h : Matrix (Fin 3) (Fin 3) C) * (r s).mat *
          ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) := by
    have hleft : (conjBy h r s).left = h * (r s).left * h⁻¹ := by
      show (GG.ofGL h * r s * (GG.ofGL h)⁻¹).left = _
      rw [SemidirectProduct.mul_left, SemidirectProduct.mul_left, SemidirectProduct.inv_left]
      simp only [SemidirectProduct.right_inl, SemidirectProduct.left_inl, SemidirectProduct.mul_right,
        hone s hs, mul_one, inv_one, map_one, MulAut.one_apply]
    unfold GG.mat
    rw [hleft, Units.val_mul, Units.val_mul]
  have hsh : ∀ s ∈ D.HL, ∀ a, D.sh (conjBy h r) a s =
      (h : Matrix (Fin 3) (Fin 3) C) * D.sh r a s * ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) := by
    intro s hs a
    simp only [UpperTheory.V.Loc.Dat3.sh]
    rw [hmat s hs, GlobalTheory.OrdLoc.conj_sub_scalar]
  have hHLopen : IsOpen (D.HL : Set (GQ l)) := GlobalTheory.OrdLoc.hl_isOpen' D
  have hs0 : D.s0 ∈ D.HL := by
    obtain ⟨s, ⟨hs, hi⟩, hcyc⟩ := ((cycInertia l).2 D.HL hHLopen).2
    have hex : ∃ s, D.IsInertiaInfiniteCyclotomic s := ⟨s, hs, hi, hcyc⟩
    exact (Classical.epsilon_spec hex).1
  have hex : ∃ σ, D.IsFr σ := by
    have : D.HL.Normal := GlobalTheory.OrdLoc.hl_normal' D
    obtain ⟨hIn, -, -, ⟨σ₀, hσ₀⟩, -⟩ := iqBasic l
    have : (Iq l).Normal := hIn
    have : D.HL.FiniteIndex := GlobalTheory.OrdLoc.finiteIndex_of_open' ⟨D.HL, hHLopen⟩
    let N : Subgroup (GQ l) := D.HL ⊔ Iq l
    have : N.FiniteIndex := Subgroup.finiteIndex_of_le (show D.HL ≤ N from le_sup_left)
    have : N.Normal := Subgroup.sup_normal _ _
    let q : GQ l ⧸ N := (σ₀ : GQ l ⧸ N)
    let m := orderOf q
    have hmN : σ₀ ^ m ∈ N := by
      rw [← QuotientGroup.eq_one_iff, QuotientGroup.mk_pow]
      exact pow_orderOf_eq_one q
    obtain ⟨σ, hσ, i₀, hi₀, hpow⟩ := Subgroup.mem_sup_of_normal_right.1 hmN
    let φ := QuotientGroup.mk' (Iq l)
    have hφ : ∀ {x}, φ x = 1 ↔ x ∈ Iq l := fun {x} => QuotientGroup.eq_one_iff x
    have hφm : φ σ₀ ^ m = φ σ := by
      rw [← map_pow, ← hpow, map_mul, hφ.2 hi₀, mul_one]
    refine ⟨σ, ⟨hσ, ?_⟩, σ₀, m, hσ₀, orderOf_pos q, ?_⟩
    · rw [eq_top_iff]
      intro g _
      rw [← SetLike.mem_coe, Subgroup.topologicalClosure_coe, mem_closure_iff]
      intro U hU hgU
      have hV : IsOpen (D.HL.subtype '' U) :=
        hHLopen.isOpenEmbedding_subtypeVal.isOpenMap U hU
      have hcl : (g : GQ l) ∈ closure ((Iq l ⊔ Subgroup.zpowers σ₀ : Subgroup (GQ l)) :
          Set (GQ l)) := by
        rw [← Subgroup.topologicalClosure_coe, frobDense σ₀ hσ₀]
        trivial
      obtain ⟨x, ⟨u, huU, rfl⟩, hx⟩ := mem_closure_iff.1 hcl _ hV ⟨g, hgU, rfl⟩
      obtain ⟨i, hi, z, hz, hiz⟩ := Subgroup.mem_sup_of_normal_left.1 hx
      obtain ⟨k, rfl⟩ := Subgroup.mem_zpowers_iff.1 hz
      change i * σ₀ ^ k = (u : GQ l) at hiz
      have hkN : σ₀ ^ k ∈ N := by
        have e : σ₀ ^ k = i⁻¹ * (u : GQ l) := by rw [← hiz]; group
        rw [e]
        exact N.mul_mem (Subgroup.mem_sup_right (Subgroup.inv_mem _ hi)) (Subgroup.mem_sup_left u.2)
      have hdvd : (m : ℤ) ∣ k := by
        change (orderOf q : ℤ) ∣ k
        rw [orderOf_dvd_iff_zpow_eq_one, ← QuotientGroup.mk_zpow, QuotientGroup.eq_one_iff]
        exact hkN
      obtain ⟨j, rfl⟩ := hdvd
      have hφu : φ (u : GQ l) = φ σ ^ j := by
        rw [← hiz, map_mul, hφ.2 hi, one_mul, map_zpow, zpow_mul, zpow_natCast, hφm]
      have hy : (u : GQ l) * σ ^ (-j) ∈ Iq l := by
        rw [← hφ, map_mul, map_zpow, hφu, zpow_neg, mul_inv_cancel]
      refine ⟨u, huU, ?_⟩
      let y : D.HL := ⟨(u : GQ l) * σ ^ (-j), D.HL.mul_mem u.2 (D.HL.zpow_mem hσ _)⟩
      have e : u = y * (⟨σ, hσ⟩ : D.HL) ^ j := by
        ext
        simp [y]
      rw [SetLike.mem_coe, e]
      exact Subgroup.mul_mem _ (Subgroup.mem_sup_left hy)
        (Subgroup.mem_sup_right (Subgroup.zpow_mem_zpowers _ _))
    · rw [← hpow]
      simpa using Subgroup.inv_mem _ hi₀
  have hfrSpec : D.IsFr D.fr := Classical.epsilon_spec hex
  obtain ⟨hfr, -⟩ := hfrSpec.1
  have htr : ∀ a, D.tr (conjBy h r) a = D.tr r a := by
    intro a
    simp only [UpperTheory.V.Loc.Dat3.tr]
    rw [hsh _ hs0, hsh _ hs0, hmat _ hfr, GlobalTheory.OrdLoc.conj_mul_three_alt, GlobalTheory.OrdLoc.trace_conj]
  have hdd : ∀ a, D.dd (conjBy h r) a = D.dd r a := by
    intro a
    simp only [UpperTheory.V.Loc.Dat3.dd, htr]
  have hprod : ∀ t : Fin 3 → GQ l, (∀ a, t a ∈ D.HL ⊓ Iq l) →
      D.sh (conjBy h r) 0 (t 0) * D.sh (conjBy h r) 1 (t 1) * D.sh (conjBy h r) 2 (t 2) =
        (h : Matrix (Fin 3) (Fin 3) C) * (D.sh r 0 (t 0) * D.sh r 1 (t 1) * D.sh r 2 (t 2)) *
          ((h⁻¹ : GL (Fin 3) C) : Matrix (Fin 3) (Fin 3) C) := by
    intro t ht
    rw [hsh _ (Subgroup.mem_inf.1 (ht 0)).1, hsh _ (Subgroup.mem_inf.1 (ht 1)).1,
      hsh _ (Subgroup.mem_inf.1 (ht 2)).1, GlobalTheory.OrdLoc.conj_mul_three_alt]
  refine ⟨?_, hdd, by simp only [UpperTheory.V.Loc.Dat3.del, hdd]⟩
  unfold UpperTheory.V.Loc.Dat3.ordIdeal
  apply le_antisymm
  · rw [Ideal.span_le]
    rintro x (⟨s, hs, i, rfl⟩ | ⟨t, ht, i, j, rfl⟩)
    · exact Ideal.subset_span
        (Or.inl ⟨s, hs, i, by rw [hmat s (Subgroup.mem_inf.1 hs).1, GlobalTheory.OrdLoc.charpoly_conj]⟩)
    · rw [hprod t ht]
      apply GlobalTheory.OrdLoc.ent_mem_mul
      intro a b
      exact Ideal.subset_span (Or.inr ⟨t, ht, a, b, rfl⟩)
  · rw [Ideal.span_le]
    rintro x (⟨s, hs, i, rfl⟩ | ⟨t, ht, i, j, rfl⟩)
    · exact Ideal.subset_span
        (Or.inl ⟨s, hs, i, by rw [hmat s (Subgroup.mem_inf.1 hs).1, GlobalTheory.OrdLoc.charpoly_conj]⟩)
    · rw [GlobalTheory.OrdLoc.unconj h (D.sh r 0 (t 0) * D.sh r 1 (t 1) * D.sh r 2 (t 2)), ← hprod t ht]
      apply GlobalTheory.OrdLoc.ent_mem_mul
      intro a b
      exact Ideal.subset_span (Or.inr ⟨t, ht, a, b, rfl⟩)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsConjInvariantStatement =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ReducedOrdinaryIdealLeKerOfConjOfSaturatingNeZer =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ReducedOrdinaryIdealLeKerOfConjOfSaturatingNeZer", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.IsInertiaInfiniteCyclotomic\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsConjInvariantStatement\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryIdealSaturatorsMapAlgHomStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc ReciprocityTheory.Gal Module UpperTheory.V.Loc UpperTheory.V.U3 UpperTheory.V.Alg IsLocalRing Polynomial Topology

namespace GlobalTheory.OrdLoc

theorem icr_le_ker_of_conj : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] [IsLocalRing O] [Algebra ℤ_[l] O] (D : Dat3 l O) (U : _root_.UpperTheory.V.U3.Univ (_root_.UpperTheory.V.U3.GCond.noCondition O D.η D.Ψ)) (S : Type) [CommRing S] [IsDomain S] [Algebra O S] (i α : U.R →ₐ[O] S) (u : GL (Fin 3) S), push α U.r.hom = conjBy u (push i U.r.hom) → GlobalTheory.OrdLoc.IY D U ≤ RingHom.ker i → i (GlobalTheory.OrdLoc.del D U.r.hom) ≠ 0 → GlobalTheory.OrdLoc.Icr D U ≤ RingHom.ker α := by
  intro l _ O _ _ _ D U S _ _ _ i α u hc hY hd
  have hm : HasMult D.η (push i U.r.hom) := U.r.hasMult
  obtain ⟨hcI, -, hcd⟩ := GlobalTheory.T.ordinaryIdeal_saturators_conj_invariant D (push i U.r.hom) u hm
  obtain ⟨hiI, -, hid⟩ := GlobalTheory.T.ordinaryIdeal_saturators_map_algHom D i U.r.hom
  obtain ⟨haI, -, had⟩ := GlobalTheory.T.ordinaryIdeal_saturators_map_algHom D α U.r.hom
  have hord : ordIdeal D U.r.hom ≤ IY D U := fun a ha => ⟨0, by simpa using ha⟩
  have hbot : ordIdeal D (push i U.r.hom) = ⊥ := by
    rw [← hiI, eq_bot_iff, Ideal.map_le_iff_le_comap]
    intro a ha
    simpa [Ideal.mem_comap] using hY (hord ha)
  have hα : ordIdeal D (push α U.r.hom) = ⊥ := by rw [hc, hcI, hbot]
  have hdel : α (del D U.r.hom) ≠ 0 := by
    rw [had, hc, hcd, ← hid]; exact hd
  intro x hx
  obtain ⟨k, n, hn⟩ := hx
  have h1 : α (del D U.r.hom ^ n * x ^ k) ∈ ordIdeal D (push α U.r.hom) := by
    rw [← haI]; exact Ideal.mem_map_of_mem _ hn
  rw [hα, Ideal.mem_bot, map_mul, map_pow, map_pow] at h1
  have h2 : α x ^ k = 0 := by
    rcases mul_eq_zero.1 h1 with h | h
    · exact absurd (pow_eq_zero_iff'.1 h).1 hdel
    · exact h
  exact RingHom.mem_ker.2 (pow_eq_zero_iff'.1 h2).1

end GlobalTheory.OrdLoc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ReducedOrdinaryIdealLeKerOfConjOfSaturatingNeZer =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.SaturatingElementNotMemMinimalPrimesReducedOrdin =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.SaturatingElementNotMemMinimalPrimesReducedOrdin", "h": "module\n\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebra.ResMapBijective\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.FiniteCohomology\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.UnitaryThreeReflectionRight\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport ReciprocityTheory.GaloisValuations.GlobalA\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc ReciprocityTheory.Gal Module UpperTheory.V.Loc UpperTheory.V.U3 UpperTheory.V.Alg IsLocalRing Polynomial Topology

namespace GlobalTheory.OrdLoc

end GlobalTheory.OrdLoc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.SaturatingElementNotMemMinimalPrimesReducedOrdin =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.SaturatingElementNotMemMinimalPrimesReducedOrdinStatement =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.SaturatingElementNotMemMinimalPrimesReducedOrdinStatement", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.IsInertiaInfiniteCyclotomic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.Imports\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.SaturatingElementNotMemMinimalPrimesReducedOrdin\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc ReciprocityTheory.Gal Module UpperTheory.V.Loc UpperTheory.V.U3 UpperTheory.V.Alg IsLocalRing Polynomial Topology

theorem _root_.GlobalTheory.T.saturatingElement_notMem_minimalPrimes_reducedOrdinaryIdeal : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] [IsLocalRing O] [Algebra ℤ_[l] O] (D : Dat3 l O) (U : _root_.UpperTheory.V.U3.Univ (_root_.UpperTheory.V.U3.GCond.noCondition O D.η D.Ψ)), ∀ P ∈ (GlobalTheory.OrdLoc.Icr D U).minimalPrimes, GlobalTheory.OrdLoc.del D U.r.hom ∉ P := by
  intro l _ O _ _ _ D U P hP hdel
  have hmem : ∀ a, a ∈ D.IY U ↔ ∃ n, D.del U.r.hom ^ n * a ∈ D.ordIdeal U.r.hom := by
    intro a
    rw [UpperTheory.V.Loc.Dat3.IY.eq_1]
    rfl
  obtain ⟨y, hy, hxy⟩ := Ideal.exists_mul_mem_of_mem_minimalPrimes hP hdel
  apply hy
  rw [UpperTheory.V.Loc.Dat3.Icr.eq_1] at hxy ⊢
  obtain ⟨k, hk⟩ := hxy
  obtain ⟨n, hn⟩ := (hmem _).1 hk
  refine ⟨k, (hmem _).2 ⟨n + k, ?_⟩⟩
  have e : D.del U.r.hom ^ (n + k) * y ^ k = D.del U.r.hom ^ n * (D.del U.r.hom * y) ^ k := by
    ring
  rw [e]
  exact hn
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.SaturatingElementNotMemMinimalPrimesReducedOrdinStatement =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ExistsConjLift =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ExistsConjLift", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.IsInertiaInfiniteCyclotomic\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebra.CoEvLow\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebra.CoMvps\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebra.CoQuot\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.UnitaryThreeGroups.ConjStable\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.OrdinaryComponentUniquePrimeDimThirteenNearBase\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ReducedOrdinaryIdealLeKerOfConjOfSaturatingNeZer\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.SaturatingElementNotMemMinimalPrimesReducedOrdinStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc ReciprocityTheory.Gal Module UpperTheory.V.Loc UpperTheory.V.U3 UpperTheory.V.Alg IsLocalRing Polynomial Topology

namespace GlobalTheory.OrdLoc.RootConjugation

private theorem map_conj {A B G : Type} [CommRing A] [CommRing B] [Group G] (f : A →+* B) (h : GL (Fin 3) A)
    (r : G →* GG (m := 3) (R := A)) (g : G) :
    GG.map f (conjBy h r g) = GG.ofGL (Matrix.GeneralLinearGroup.map f h) * GG.map f (r g) *
      (GG.ofGL (Matrix.GeneralLinearGroup.map f h))⁻¹ := by
  have e : GG.map f (GG.ofGL h) = GG.ofGL (Matrix.GeneralLinearGroup.map f h) := by
    unfold GG.map
    rw [SemidirectProduct.map_inl]
  have e2 : conjBy h r g = GG.ofGL h * r g * (GG.ofGL h)⁻¹ := rfl
  rw [e2, map_mul, map_mul, map_inv, e]

private theorem push_conj {O A B G : Type} [CommRing O] [CommRing A] [CommRing B] [Algebra O A] [Algebra O B]
    [Group G] (f : A →ₐ[O] B) (h : GL (Fin 3) A) (r : G →* GG (m := 3) (R := A)) :
    push f (conjBy h r) = conjBy (Matrix.GeneralLinearGroup.map (f : A →+* B) h) (push f r) :=
  MonoidHom.ext fun g => map_conj _ h r g

private theorem conjBy_one {A G : Type} [CommRing A] [Group G] (r : G →* GG (m := 3) (R := A)) :
    conjBy 1 r = r := by
  refine MonoidHom.ext fun g => ?_
  have e2 : conjBy 1 r g = GG.ofGL 1 * r g * (GG.ofGL 1)⁻¹ := rfl
  rw [e2, map_one, one_mul, inv_one, mul_one]

private theorem exists_conjLift {O : Type} [CommRing O] [IsLocalRing O] {Γ : Type} [Group Γ] [TopologicalSpace Γ]
    {η : Γ →* ℤˣ} {Ψ : Γ →* Oˣ} (hη : IsLocallyConstant η) {R : Type} [CommRing R] [Algebra O R] [IsCO O R]
    (r : GLift O η Ψ R) (h : GL (Fin 3) R) (hh : CongOne (maximalIdeal R) h) :
    ∃ r' : GLift O η Ψ R, r'.hom = conjBy h r.hom := by
  refine ⟨⟨conjBy h r.hom, fun a b N => ?_, fun g => ?_⟩, rfl⟩
  · have h1 : IsLocallyConstant fun g => GG.map (Ideal.Quotient.mk (maximalIdeal R ^ N)) (r.hom g) := by
      rw [IsLocallyConstant.iff_eventually_eq]
      intro x
      have h2 : ∀ᶠ y in nhds x, ∀ a b, Ideal.Quotient.mk (maximalIdeal R ^ N) ((r.hom y).mat a b) =
          Ideal.Quotient.mk (maximalIdeal R ^ N) ((r.hom x).mat a b) :=
        Filter.eventually_all.2 fun a => Filter.eventually_all.2 fun b => (r.cont a b N).eventually_eq x
      filter_upwards [h2, hη.eventually_eq x] with y h3 h4
      refine SemidirectProduct.ext (Units.ext (Matrix.ext h3)) ?_
      rw [GG.map_right, GG.map_right, r.hasMult y, r.hasMult x, h4]
    have h5 := h1.comp fun z => GG.mat (GG.ofGL (Matrix.GeneralLinearGroup.map (Ideal.Quotient.mk _) h) * z *
      (GG.ofGL (Matrix.GeneralLinearGroup.map (Ideal.Quotient.mk _) h))⁻¹) a b
    convert h5 using 2 with g
    rw [Function.comp_apply, ← map_conj]
    rfl
  · have e : Matrix.GeneralLinearGroup.map (res O R : R →+* ResidueField O) h = 1 := by
      refine Units.ext (Matrix.ext fun a b => ?_)
      have h1 := (res_eq_zero_iff O R _).2 (hh a b)
      rw [Matrix.sub_apply, map_sub, sub_eq_zero] at h1
      refine h1.trans ?_
      simp only [Matrix.one_apply, Units.val_one]
      split_ifs <;> simp
    rw [map_conj, e, map_one, one_mul, inv_one, mul_one, r.red]

private alias eta_lc := _root_.UpperTheory.V.Loc.OrdinaryDeformation.eta_lc

private theorem exists_univMat (R : Type) [CommRing R] :
    ∃ h : GL (Fin 3) (MvPowerSeries (Fin 3 × Fin 3) R), ∀ a b,
      h.val a b = (1 : Matrix (Fin 3) (Fin 3) (MvPowerSeries (Fin 3 × Fin 3) R)) a b + MvPowerSeries.X (a, b) := by
  let M : Matrix (Fin 3) (Fin 3) (MvPowerSeries (Fin 3 × Fin 3) R) := 1 + Matrix.of fun a b => MvPowerSeries.X (a, b)
  have hM : IsUnit M := by
    rw [Matrix.isUnit_iff_isUnit_det, MvPowerSeries.isUnit_iff_constantCoeff, RingHom.map_det]
    have : (MvPowerSeries.constantCoeff (σ := Fin 3 × Fin 3) (R := R)).mapMatrix M = 1 := by
      rw [map_add (f := _), map_one]
      ext a b
      simp
    rw [this, Matrix.det_one]
    exact isUnit_one
  exact ⟨hM.unit, fun a b => rfl⟩

private theorem gl_ext {S C : Type} [CommRing S] [CommRing C] (F : S →+* C) (u : GL (Fin 3) S) (h : GL (Fin 3) C)
    (x : Fin 3 × Fin 3 → S) (hu : ∀ a b, (u : Matrix (Fin 3) (Fin 3) S) a b = (1 : Matrix (Fin 3) (Fin 3) S) a b + x (a, b))
    (hx : ∀ a b, F (x (a, b)) = ((h : Matrix (Fin 3) (Fin 3) C) - 1) a b) :
    Matrix.GeneralLinearGroup.map F u = h := by
  refine Units.ext (Matrix.ext fun a b => ?_)
  show F ((u : Matrix (Fin 3) (Fin 3) S) a b) = _
  rw [hu, map_add (f := _), hx, Matrix.sub_apply]
  simp only [Matrix.one_apply]
  split_ifs <;> simp

end GlobalTheory.OrdLoc.RootConjugation


open GlobalTheory.OrdLoc.RootConjugation in
theorem GlobalTheory.OrdLoc.rtConj :
    LocalPublishedTheorems → ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] [CharZero O] [Algebra ℤ_[l] O] [Module.Finite ℤ_[l] O]
    [IsAdicComplete (maximalIdeal O) O] (D : Dat3 l O)
    (U : _root_.UpperTheory.V.U3.Univ (_root_.UpperTheory.V.U3.GCond.noCondition O D.η D.Ψ))
    (C : Type) [CommRing C] [Algebra O C] [IsCO O C] (r : GQ l →* GG (m := 3) (R := C))
    (h : GL (Fin 3) C), UpperTheory.V.UnitaryThreeInertia.InHat h → Dat3.On D U r →
      Dat3.On D U (conjBy h r) := by
  intro hP l _ O _ _ _ _ _ _ _ D U C _ _ _ r h hh hr
  obtain ⟨f, rfl, hf⟩ := hr
  obtain ⟨hpr, hprime, hl, hIt, -, -, -⟩ := _root_.GlobalTheory.OrdLoc.component_basic hP D U
  have hmin : GlobalTheory.OrdLoc.It D U ∈ (GlobalTheory.OrdLoc.Icr D U).minimalPrimes := by
    have : GlobalTheory.OrdLoc.It D U ∈ GlobalTheory.OrdLoc.primesAt0 D U := by rw [hpr]; rfl
    exact this.1
  haveI := hprime
  let q : U.R →ₐ[O] GlobalTheory.OrdLoc.Rt D U := Ideal.Quotient.mkₐ O (GlobalTheory.OrdLoc.It D U)
  haveI : IsCO O (GlobalTheory.OrdLoc.Rt D U) := co_quot O U.R _ q (Ideal.Quotient.mkₐ_surjective O _)
  let S := MvPowerSeries (Fin 3 × Fin 3) (GlobalTheory.OrdLoc.Rt D U)
  haveI : IsCO O S := co_mvps O _ _
  haveI : IsDomain S := NoZeroDivisors.to_isDomain S
  let i : U.R →ₐ[O] S := (IsScalarTower.toAlgHom O (GlobalTheory.OrdLoc.Rt D U) S).comp q
  have hi : ∀ a, i a = MvPowerSeries.C (q a) := fun a => rfl
  have hiI : ∀ a ∈ GlobalTheory.OrdLoc.It D U, i a = 0 := fun a ha => by
    rw [hi, show q a = 0 from Ideal.Quotient.eq_zero_iff_mem.2 ha, map_zero]
  obtain ⟨u, hu⟩ := exists_univMat (GlobalTheory.OrdLoc.Rt D U)
  have hu1 : CongOne (maximalIdeal S) u := fun a b => by
    rw [Matrix.sub_apply, hu, add_sub_cancel_left]
    intro hx
    have := MvPowerSeries.isUnit_constantCoeff _ hx
    simp at this
  obtain ⟨r', hr'⟩ := exists_conjLift (eta_lc D) (U.r.map i) u hu1
  obtain ⟨α, hα, -⟩ := (U.rep S).2 r' trivial
  have hα' : push α U.r.hom = conjBy u (push i U.r.hom) := (congrArg GLift.hom hα).trans hr'
  have hcomp : ∀ {T : Type} [CommRing T] [Algebra O T] (y : S →ₐ[O] T), push (y.comp α) U.r.hom =
      conjBy (Matrix.GeneralLinearGroup.map (y : S →+* T) u) (push (y.comp i) U.r.hom) := fun y => by
    show push y (push α U.r.hom) = _
    rw [hα', push_conj]
    rfl
  have hIY : GlobalTheory.OrdLoc.IY D U ≤ RingHom.ker i := fun a ha =>
    hiI a (hIt (Ideal.le_radical ha))
  have hdel : i (GlobalTheory.OrdLoc.del D U.r.hom) ≠ 0 := by
    rw [hi]
    intro h0
    have h1 : q (GlobalTheory.OrdLoc.del D U.r.hom) = 0 := by
      have := congrArg MvPowerSeries.constantCoeff h0
      simpa using this
    exact GlobalTheory.T.saturatingElement_notMem_minimalPrimes_reducedOrdinaryIdeal D U _ hmin (Ideal.Quotient.eq_zero_iff_mem.1 h1)
  have h1 : GlobalTheory.OrdLoc.Icr D U ≤ RingHom.ker α := _root_.GlobalTheory.OrdLoc.icr_le_ker_of_conj D U S i α u hα' hIY hdel
  obtain ⟨c, ⟨hc1, hc2⟩, -⟩ := co_ev O (GlobalTheory.OrdLoc.Rt D U) (GlobalTheory.OrdLoc.Rt D U) (Fin 3 × Fin 3) (AlgHom.id O _) 0 fun _ => zero_mem _
  have h2 : c.comp α = q := by
    have e1 : c.comp i = q := AlgHom.ext fun a => hc1 _
    refine ((U.rep (GlobalTheory.OrdLoc.Rt D U)).2 (U.r.map q) trivial).unique (GLift.ext ?_) rfl
    show push (c.comp α) U.r.hom = push q U.r.hom
    rw [hcomp, e1, gl_ext (c : S →+* GlobalTheory.OrdLoc.Rt D U) u 1 _ hu fun a b => (hc2 _).trans (by simp), conjBy_one]
  have h3 : RingHom.ker α ≤ GlobalTheory.OrdLoc.It D U := fun a ha => by
    have : q a = 0 := by
      rw [← h2, AlgHom.comp_apply, show α a = 0 from ha, map_zero]
    exact Ideal.Quotient.eq_zero_iff_mem.1 this
  have h4 : GlobalTheory.OrdLoc.It D U ≤ RingHom.ker α := hmin.2 ⟨RingHom.ker_isPrime α, h1⟩ h3
  obtain ⟨F, ⟨hF1, hF2⟩, -⟩ := co_ev O (GlobalTheory.OrdLoc.Rt D U) C (Fin 3 × Fin 3) (Ideal.Quotient.liftₐ (GlobalTheory.OrdLoc.It D U) f fun a ha => hf ha)
    (fun s => ((h : Matrix (Fin 3) (Fin 3) C) - 1) s.1 s.2) fun s => hh s.1 s.2
  refine ⟨F.comp α, ?_, fun a ha => ?_⟩
  · have e1 : F.comp i = f := AlgHom.ext fun a => hF1 _
    rw [hcomp, e1, gl_ext (F : S →+* C) u h _ hu fun a b => hF2 _]
  · show F (α a) = 0
    rw [show α a = 0 from h4 ha, map_zero]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ExistsConjLift =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.RtConj =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.RtConj", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.IsInertiaInfiniteCyclotomic\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CrystallineOrdinaryIdeals.ExistsConjLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc ReciprocityTheory.Gal Module UpperTheory.V.Loc UpperTheory.V.U3 UpperTheory.V.Alg IsLocalRing Polynomial

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.PadicHodgeTheory.RtConj =====
