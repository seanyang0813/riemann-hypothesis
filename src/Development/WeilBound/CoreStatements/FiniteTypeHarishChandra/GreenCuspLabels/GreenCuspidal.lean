module

public import Mathlib.RepresentationTheory.Character
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.CentralIdempotentIrreducibleCharacterProps
public import Mathlib.RepresentationTheory.FinGroupCharZero
public import Development.WeilBound.CoreStatements.FiniteTypeHarishChandra.FiniteDimensionalHcSpace
public import Formalism.PadicSubsetSums.CentralIdempotents.GaloisConjCentralIdempotent
public import Development.AbelianVarietyTheory.Definitions.CommutativeAlgebra.InvariantSubspaceMobiusInverseRecEqOfFinrankLt
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.InvariantSubspaceMobiusInverseOneProdIco
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLabel
public import Development.WeilBound.CoreStatements.FiniteTypeHarishChandra.SupportExistsAll
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.InvariantSubspaceMobiusInverseCharpolyOfIrreduci
public import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure
public import Formalism.PadicSubsetSums.CentralIdempotents.IsConstituent
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalLabelUnique
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCuspidalWithLabel
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.GreenCuspidalIff
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalOfUnipotentSumsVanish
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SimpleIffIrreducible
public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.Matrix.Charpoly.Basic
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Development.AbelianVarietyTheory.Definitions.CommutativeAlgebra.AbByPOfComm
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.EqOfIsPrimitiveOfEqOnEllipticFiniteGL
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.IrreducibleOfVirtualCharacterNormOne
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.IsPrimitiveExtendZeroOfSumUnipotentRadical
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.MatrixTraceIffIsCharacterOverSubfieldComplex
public import Mathlib.FieldTheory.Finite.Basic
public import Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly
public import Formalism.PadicSubsetSums.StableGradedCounts.IRRCentralIdempotent
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemRootsBarXSubC
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumRangeEqRoots
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GreenCuspidalCharsByRegularCharsProof

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FiniteTypeHarishChandra.GreenCuspLabels.GreenCuspidal

-- ===== clump member: Development.WeilBound.CoreStatements.FiniteTypeHarishChandra.GreenCuspLabels.GreenCuspidal =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FiniteTypeHarishChandra.GreenCuspLabels.GreenCuspidal", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.GreenCuspidalIff\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalOfUnipotentSumsVanish\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCuspidalWithLabel\npublic import Development.WeilBound.CoreStatements.FiniteTypeHarishChandra.FiniteDimensionalHcSpace\npublic import Development.AbelianVarietyTheory.Definitions.CommutativeAlgebra.InvariantSubspaceMobiusInverseRecEqOfFinrankLt\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.InvariantSubspaceMobiusInverseCharpolyOfIrreduci\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Charpoly.Basic\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Development.AbelianVarietyTheory.Definitions.CommutativeAlgebra.AbByPOfComm\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.EqOfIsPrimitiveOfEqOnEllipticFiniteGL\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.IrreducibleOfVirtualCharacterNormOne\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.IsPrimitiveExtendZeroOfSumUnipotentRadical\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.MatrixTraceIffIsCharacterOverSubfieldComplex\npublic import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure\npublic import Mathlib.FieldTheory.Finite.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Charpoly.Minpoly\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLabel\npublic import Development.WeilBound.CoreStatements.FiniteTypeHarishChandra.SupportExistsAll\npublic import Formalism.PadicSubsetSums.StableGradedCounts.IRRCentralIdempotent\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SimpleIffIrreducible\npublic import Formalism.PadicSubsetSums.CentralIdempotents.IsConstituent\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalLabelUnique\npublic import Formalism.PadicSubsetSums.CentralIdempotents.GaloisConjCentralIdempotent\npublic import Mathlib.RepresentationTheory.Character\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.CentralIdempotentIrreducibleCharacterProps\npublic import Mathlib.RepresentationTheory.FinGroupCharZero\npublic import Development.AbelianVarietyTheory.Proofs.CharacterTheory.InvariantSubspaceMobiusInverseOneProdIco\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemRootsBarXSubC\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SumRangeEqRoots\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GreenCuspidalCharsByRegularCharsProof\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial CategoryTheory
open Formalism.IrreducibleCountingLemmas.TYPES hiding zIdem IsCuspidal rootsBar
open ReciprocityTheory.Ty.Fin GlobalTheory.GLq GlobalTheory.CompanionTheory.TyFin.CuspIff GlobalTheory.CompanionTheory.TyFin.CuspLabel

noncomputable section

namespace PositivityTheory.GreenCharacters

theorem sum_char_eq_zero {G V : Type} [Group G] [Fintype G] [AddCommGroup V] [Module ℂ V] [FiniteDimensional ℂ V]
    (ρ : Representation ℂ G V) (U : Subgroup G) [DecidablePred (· ∈ U)]
    (h : ∀ v : V, (∀ u ∈ U, ρ u v = v) → v = 0) : (∑ u : G, if u ∈ U then ρ.character u else 0) = 0 := by
  classical
  have hP : ∀ v : V, (∑ u : G, if u ∈ U then ρ u v else 0) = 0 := by
    intro v
    apply h
    intro u hu

    rw [map_sum]
    refine Fintype.sum_equiv (Equiv.mulLeft u) _ _ ?_
    intro w
    simp only [Equiv.coe_mulLeft, map_mul, Module.End.mul_apply, U.mul_mem_cancel_left hu]
    split_ifs <;> simp
  have hL : (∑ u : G, if u ∈ U then ρ u else 0) = 0 := by
    ext v
    rw [LinearMap.sum_apply, LinearMap.zero_apply, ← hP v]
    refine Finset.sum_congr rfl fun u _ => ?_
    split_ifs <;> rfl
  calc (∑ u : G, if u ∈ U then ρ.character u else 0)
      = LinearMap.trace ℂ V (∑ u : G, if u ∈ U then ρ u else 0) := by

        rw [map_sum]
        refine Finset.sum_congr rfl fun u _ => ?_
        split_ifs <;> simp [Representation.character]
    _ = 0 := by rw [hL, map_zero]

variable {g : ℕ} [Fact g.Prime]

theorem entN_eq {A : Type} [Zero A] {N : ℕ} (M : Matrix (Fin N) (Fin N) A) (i j : Fin N) {a b : ℕ}
    (ha : a = i) (hb : b = j) : Formalism.MainNotions.ArithmeticCylinders.entN M a b = M i j := by
  subst ha hb
  simp [Formalism.MainNotions.ArithmeticCylinders.entN]

theorem rad_iff {d a : ℕ} (had : a ≤ d) (M : Mt g d) :
    (InPar a M ∧ tl a M = 1 ∧ br a (d - a) M = 1) ↔
      ∀ i j : Fin d, M i j = (if i = j then 1 else 0) ∨ ((i : ℕ) < a ∧ a ≤ (j : ℕ)) := by
  constructor
  · rintro ⟨hP, ht, hb⟩ i j
    have hid := i.isLt
    have hjd := j.isLt
    by_cases hi : (i : ℕ) < a
    · by_cases hj : (j : ℕ) < a
      · left
        have := congrFun (congrFun ht ⟨i, hi⟩) ⟨j, hj⟩
        change Formalism.MainNotions.ArithmeticCylinders.entN M (i : ℕ) (j : ℕ) = (1 : Matrix (Fin a) (Fin a) (ZMod g)) ⟨i, hi⟩ ⟨j, hj⟩ at this
        rw [entN_eq M i j rfl rfl, Matrix.one_apply] at this
        rw [this]
        exact if_congr (by simp [Fin.ext_iff]) rfl rfl
      · exact Or.inr ⟨hi, not_lt.mp hj⟩
    · by_cases hj : (j : ℕ) < a
      · left
        have hne : i ≠ j := by
          intro e
          subst e
          exact hi hj
        rw [if_neg hne]
        exact hP i j hj (not_lt.mp hi)
      · left
        have hi' : (i : ℕ) - a < d - a := by omega
        have hj' : (j : ℕ) - a < d - a := by omega
        have := congrFun (congrFun hb ⟨i - a, hi'⟩) ⟨j - a, hj'⟩
        change Formalism.MainNotions.ArithmeticCylinders.entN M (a + ((i : ℕ) - a)) (a + ((j : ℕ) - a)) =
          (1 : Matrix (Fin (d - a)) (Fin (d - a)) (ZMod g)) ⟨i - a, hi'⟩ ⟨j - a, hj'⟩ at this
        rw [entN_eq M i j (by omega) (by omega), Matrix.one_apply] at this
        rw [this]
        refine if_congr ?_ rfl rfl
        rw [Fin.ext_iff, Fin.ext_iff]
        simp only
        omega
  · intro hM
    refine ⟨?_, ?_, ?_⟩
    · intro i j hj hi
      rcases hM i j with h | h
      · rw [h, if_neg]
        intro e
        subst e
        omega
      · omega
    · refine Matrix.ext fun i j => ?_
      have hi := i.isLt
      have hj := j.isLt
      change Formalism.MainNotions.ArithmeticCylinders.entN M (i : ℕ) (j : ℕ) = (1 : Matrix (Fin a) (Fin a) (ZMod g)) i j
      rw [entN_eq M ⟨i, by omega⟩ ⟨j, by omega⟩ rfl rfl, Matrix.one_apply]
      rcases hM ⟨i, by omega⟩ ⟨j, by omega⟩ with h | h
      · rw [h]
        exact if_congr (by simp [Fin.ext_iff]) rfl rfl
      · exfalso
        have := h.2
        simp only at this
        omega
    · refine Matrix.ext fun i j => ?_
      have hi := i.isLt
      have hj := j.isLt
      change Formalism.MainNotions.ArithmeticCylinders.entN M (a + (i : ℕ)) (a + (j : ℕ)) = (1 : Matrix (Fin (d - a)) (Fin (d - a)) (ZMod g)) i j
      rw [entN_eq M ⟨a + i, by omega⟩ ⟨a + j, by omega⟩ rfl rfl, Matrix.one_apply]
      rcases hM ⟨a + i, by omega⟩ ⟨a + j, by omega⟩ with h | h
      · rw [h]
        refine if_congr ?_ rfl rfl
        simp only [Fin.ext_iff]
        omega
      · exfalso
        have := h.1
        simp only at this
        omega


open Classical in
theorem res_eq_zero_iff {d a : ℕ} (had : a ≤ d) (χ : Gn g d → ℂ) :
    res a (d - a) χ 1 1 = 0 ↔ (∑ u : Gn g d, if u ∈ stdRadical (ZMod g) d a then χ u else 0) = 0 := by
  unfold res
  have hg : ((g : ℂ) ^ (a * (d - a)))⁻¹ ≠ 0 :=
    inv_ne_zero (pow_ne_zero _ (Nat.cast_ne_zero.mpr (Fact.out : g.Prime).ne_zero))
  rw [mul_eq_zero, or_iff_right hg]
  have key : ∀ x : Gn g d, (InPar a (x : Mt g d) ∧ tl a (x : Mt g d) = ((1 : Gn g a) : Mt g a) ∧
      br a (d - a) (x : Mt g d) = ((1 : Gn g (d - a)) : Mt g (d - a))) ↔ x ∈ stdRadical (ZMod g) d a := by
    intro x
    rw [Units.val_one, Units.val_one, rad_iff had, mem_stdRadical]
  rw [Finset.sum_congr rfl fun x _ => if_congr (key x) rfl rfl]

theorem isCuspidal_of_isCusp {d : ℕ} (τ : FDRep ℂ (Gn g d)) (h : IsCusp τ.character) : IsCuspidal (ZMod g) τ := by
  classical
  refine isCuspidal_of_sum_char (ZMod g) d τ fun a ha had => ?_
  have := (res_eq_zero_iff had.le τ.character).mp (h.2.2 a ha had)
  refine Eq.trans ?_ this
  exact Finset.sum_congr rfl fun u _ => if_congr mem_stdRadical.symm rfl rfl

theorem greenCuspidal : GlobalTheory.Published.GreenCuspidal :=
  GlobalTheory.GreenBridge.green_of_regular GlobalTheory.greenRegularCharacters_holds

end PositivityTheory.GreenCharacters
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FiniteTypeHarishChandra.GreenCuspLabels.GreenCuspidal =====
