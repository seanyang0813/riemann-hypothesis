module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralCongruenceLevelEqCount
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup
public import Mathlib.Topology.Algebra.Valued.ValuationTopology
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralMatrixIffBoundedPowers
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactClosureZpowersIffBoundedEntriesStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceConjugationPropertiesCmField
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowerBasisOfCharpolySeparable
public import Mathlib.GroupTheory.Index
public import Mathlib.RingTheory.Henselian
public import Mathlib.FieldTheory.Finite.GaloisField
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLat
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianModelOfNormNeZero
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
import Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary
import Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FinsumNormNeg
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.RingTheory.PiTensorProduct
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Tjcosets

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralMatrixIffBoundedPowersStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactPartCentralizerIffIntegralUnitsOfModel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactPartCentralizerIffIntegralUnitsOfModelStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalUnitaryCentralizerEquivNormOneTorus, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalUnitaryCentralizerEquivNormOneTorusStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrbitalIntegralIndicatorEqFinsumRelIndex, Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrbitalIntegralIndicatorEqFinsumRelIndexStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexEqOfMulEquivSubgroup, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexEqOfMulEquivSubgroupStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitLength, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLatticeStandardHermitian, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLatticeStandardHermitianStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLatticeStableIffConjIntegral, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLatticeStableIffConjIntegralStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeEqIffInvMulIntegral, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeEqIffInvMulIntegralStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeIsLatticeSelfDualHermitianModel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeIsLatticeSelfDualHermitianModelStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCount, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCountStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralMatrixIffBoundedPowersStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralMatrixIffBoundedPowersStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\npublic import Mathlib.Topology.Algebra.Valued.ValuationTopology\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralMatrixIffBoundedPowers\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

theorem _root_.GlobalTheory.T.isIntegral_matrix_iff_bounded_powers : ∀ (K : UQ) {L : Type} [Field L] [Valued L (WithZero (Multiplicative ℤ))] (e : K.E ≃+* L), (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (M : Matrix (Fin n) (Fin n) K.E), IsIntegral K.O M ↔ ∃ m : ℤ, ∀ k : ℕ, ∀ i j, Valued.v (e ((M ^ k) i j)) ≤ WithZero.exp m := by
  first | exact @GlobalTheory.IntMatBound.isIntegral_iff_bounded
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralMatrixIffBoundedPowersStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactPartCentralizerIffIntegralUnitsOfModel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactPartCentralizerIffIntegralUnitsOfModel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCompactClosureZpowersIffBoundedEntriesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralMatrixIffBoundedPowersStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceConjugationPropertiesCmField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

noncomputable section

namespace GlobalTheory.InertUnitOrb

theorem isIntegral_iff_of_mulVec {K : UQ} (B : InvAlg K) {n : ℕ} (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)) (a : B.A)
    (M : Matrix (Fin n) (Fin n) K.E) (h : ∀ y, ψ (a * y) = M *ᵥ ψ y) : IsIntegral K.O a ↔ IsIntegral K.O M := by
  apply _root_.GlobalTheory.KapOrb.CptInt.isIntegral_iff_of_mulVec <;> assumption

theorem cptPart_iff_intUnits_of_model : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ (x : B.Aˣ) (γ : UL n w), IsModel B ((((γ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) x ψ → B.P.Separable → ∀ τ : twCent (MonoidHom.id (UL n w)) γ ≃* B.T, (∀ (t : twCent (MonoidHom.id (UL n w)) γ) (y : B.A), ψ (((τ t : B.Aˣ) : B.A) * y) = (((((t : UL n w) : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) *ᵥ ψ y) → ∀ t : twCent (MonoidHom.id (UL n w)) γ, ((t : UL n w) ∈ cptPart (twCent (MonoidHom.id (UL n w)) γ) ↔ ((τ t : B.Aˣ)) ∈ intUnits K.O B.A) := by
  intro E _ _ _ hE w hw K e he hint n B ψ x γ hmod hsep τ hτ t
  have hcont := (GlobalTheory.ConjAtPlace.main E hE w).1
  have hcl : IsClosed ((UL n w : Subgroup (GLw n w)) : Set (GLw n w)) := by
    unfold UL; rw [if_neg hw]
    have : ((UJ (cj w) (1 : Matrix (Fin n) (Fin n) (w.adicCompletion E)) : Subgroup _) : Set (GLw n w)) =
        (fun g : GLw n w => cT (cj w) (g : Matrix (Fin n) (Fin n) (w.adicCompletion E)) * 1 *
          (g : Matrix (Fin n) (Fin n) (w.adicCompletion E))) ⁻¹' {1} := rfl
    rw [this]
    refine IsClosed.preimage ?_ isClosed_singleton
    unfold cT
    exact (((Units.continuous_val.matrix_map hcont).matrix_transpose).matrix_mul continuous_const).matrix_mul
      Units.continuous_val
  have hmat : ∀ (g : GLw n w) (k : ℕ) i j,
      e ((((g : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) ^ k) i j) =
        ((g ^ k : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) i j := by
    intro g k i j
    have : ((g : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) ^ k =
        ((g ^ k : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm := by
      rw [Units.val_pow_eq_pow_val]
      exact (map_pow (e.symm.toRingHom.mapMatrix) _ k).symm
    rw [this, Matrix.map_apply, RingEquiv.apply_symm_apply]
  have key : ∀ s : twCent (MonoidHom.id (UL n w)) γ,
      IsCompact (closure (Subgroup.zpowers (s : UL n w) : Set (UL n w))) ↔ (τ s : B.Aˣ) ∈ intUnits K.O B.A := by
    intro s
    have hinv : ((τ s : B.Aˣ))⁻¹ = ((τ s⁻¹ : B.T) : B.Aˣ) := by rw [map_inv, Subgroup.coe_inv]
    have hI1 : IsIntegral K.O ((τ s : B.Aˣ) : B.A) ↔ ∃ m : ℤ, ∀ k : ℕ, ∀ i j,
        Valued.v (((((s : UL n w) : GLw n w) ^ k : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) i j) ≤
          WithZero.exp m := by
      rw [isIntegral_iff_of_mulVec B ψ _ _ (hτ s), GlobalTheory.T.isIntegral_matrix_iff_bounded_powers K e hint n]
      simp only [hmat]
    have hI2 : IsIntegral K.O ((((τ s : B.Aˣ))⁻¹ : B.Aˣ) : B.A) ↔ ∃ m : ℤ, ∀ k : ℕ, ∀ i j,
        Valued.v (((((s : UL n w) : GLw n w)⁻¹ ^ k : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) i j) ≤
          WithZero.exp m := by
      rw [hinv, isIntegral_iff_of_mulVec B ψ _ _ (hτ s⁻¹), GlobalTheory.T.isIntegral_matrix_iff_bounded_powers K e hint n]
      simp only [hmat, Subgroup.coe_inv]
    rw [_root_.GlobalTheory.PowersCompact.isCompact_closure_zpowers_iff w n (UL n w) hcl (s : UL n w)]
    show _ ↔ IsIntegral K.O _ ∧ IsIntegral K.O _
    rw [hI1, hI2]
    simp only [SubgroupClass.coe_zpow]
    constructor
    · rintro ⟨m, hm⟩
      refine ⟨⟨m, fun k i j => ?_⟩, ⟨m, fun k i j => ?_⟩⟩
      · have := hm (k : ℤ) i j
        rwa [zpow_natCast] at this
      · have := hm (-(k : ℤ)) i j
        rwa [_root_.zpow_neg, zpow_natCast, ← inv_pow] at this
    · rintro ⟨⟨m1, h1⟩, ⟨m2, h2⟩⟩
      refine ⟨max m1 m2, fun k i j => ?_⟩
      rcases Int.eq_nat_or_neg k with ⟨l, rfl | rfl⟩
      · rw [zpow_natCast]
        exact (h1 l i j).trans (WithZero.exp_le_exp.2 (le_max_left _ _))
      · rw [_root_.zpow_neg, zpow_natCast, ← inv_pow]
        exact (h2 l i j).trans (WithZero.exp_le_exp.2 (le_max_right _ _))
  let H' : Subgroup (UL n w) := ((intUnits K.O B.A).comap (B.T.subtype.comp τ.toMonoidHom)).map
    (twCent (MonoidHom.id (UL n w)) γ).subtype
  constructor
  · intro ht
    have hle : cptPart (twCent (MonoidHom.id (UL n w)) γ) ≤ H' := by
      rw [cptPart, Subgroup.closure_le]
      rintro u ⟨hu, hc⟩
      exact ⟨⟨u, hu⟩, (key ⟨u, hu⟩).1 hc, rfl⟩
    obtain ⟨t₀, ht₀, he₀⟩ := hle ht
    have : t₀ = t := Subtype.ext he₀
    subst this
    exact ht₀
  · intro ht
    exact Subgroup.subset_closure ⟨t.2, (key t).2 ht⟩

end GlobalTheory.InertUnitOrb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactPartCentralizerIffIntegralUnitsOfModel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactPartCentralizerIffIntegralUnitsOfModelStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactPartCentralizerIffIntegralUnitsOfModelStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactPartCentralizerIffIntegralUnitsOfModel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactPartCentralizerIffIntegralUnitsOfModelStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalUnitaryCentralizerEquivNormOneTorus =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalUnitaryCentralizerEquivNormOneTorus", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowerBasisOfCharpolySeparable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

noncomputable section

namespace GlobalTheory.CentTorusModel

variable {K : UQ} (B : InvAlg K) {n : ℕ} (ψ : B.A ≃ₗ[K.E] (Fin n → K.E))

def mulMat (a : B.A) : Matrix (Fin n) (Fin n) K.E :=
  LinearMap.toMatrix' (ψ.toLinearMap ∘ₗ LinearMap.mulLeft K.E a ∘ₗ ψ.symm.toLinearMap)

theorem mulMat_mulVec (a y : B.A) : mulMat B ψ a *ᵥ ψ y = ψ (a * y) := by
  simp [mulMat, LinearMap.toMatrix'_mulVec]

theorem eq_mulMat {M : Matrix (Fin n) (Fin n) K.E} {a : B.A} (h : ∀ y, M *ᵥ ψ y = ψ (a * y)) :
    M = mulMat B ψ a := by
  apply Matrix.toLin'.injective
  apply LinearMap.ext
  intro v
  obtain ⟨y, rfl⟩ := ψ.surjective v
  simp only [Matrix.toLin'_apply, h, mulMat_mulVec]

theorem mulMat_one : mulMat B ψ 1 = 1 :=
  (eq_mulMat B ψ (fun y => by simp)).symm

theorem mulMat_mul (a b : B.A) : mulMat B ψ (a * b) = mulMat B ψ a * mulMat B ψ b :=
  (eq_mulMat B ψ (fun y => by rw [← Matrix.mulVec_mulVec, mulMat_mulVec, mulMat_mulVec, mul_assoc])).symm

def mulHom : B.A →* Matrix (Fin n) (Fin n) K.E where
  toFun := mulMat B ψ
  map_one' := mulMat_one B ψ
  map_mul' := mulMat_mul B ψ

theorem commutant (hs : B.P.Separable) (f : B.A →ₗ[K.E] B.A) (hf : ∀ y, f (B.g * y) = B.g * f y) (y : B.A) :
    f y = f 1 * y := by
  obtain ⟨b, hb⟩ := exists_basis_pow_of_separable K B hs
  have key : f = LinearMap.mulRight K.E (f 1) := by
    refine b.ext fun i => ?_
    rw [hb i, LinearMap.mulRight_apply]
    generalize (i : ℕ) = k
    induction k with
    | zero => simp
    | succ k ih => rw [pow_succ', hf, ih, mul_assoc]
  rw [key, LinearMap.mulRight_apply, LinearMap.mulRight_apply, one_mul, mul_comm]

theorem stdH_mulVec_eq (M : Matrix (Fin n) (Fin n) K.E) (u v : Fin n → K.E) :
    stdH K n (M *ᵥ u) (M *ᵥ v) = u ⬝ᵥ ((Mᵀ * M.map K.c) *ᵥ fun k => K.c (v k)) := by
  have h1 : (fun k => K.c ((M *ᵥ v) k)) = M.map K.c *ᵥ fun k => K.c (v k) := by
    funext k

    simp [Matrix.mulVec, dotProduct, map_sum]
  have h2 : stdH K n (M *ᵥ u) (M *ᵥ v) = (M *ᵥ u) ⬝ᵥ fun k => K.c ((M *ᵥ v) k) := rfl
  rw [h2, h1, dotProduct_comm, Matrix.dotProduct_mulVec, ← Matrix.mulVec_transpose, dotProduct_comm,
    Matrix.mulVec_mulVec]

theorem stdH_mulVec_iff (M : Matrix (Fin n) (Fin n) K.E) :
    (∀ u v, stdH K n (M *ᵥ u) (M *ᵥ v) = stdH K n u v) ↔ (M.map K.c)ᵀ * M = 1 := by
  constructor
  · intro h
    ext i j
    have := h (Pi.single j 1) (Pi.single i 1)
    simp [InertUnitOrb.stdH, Pi.single_apply] at this
    rw [Matrix.mul_apply, Matrix.one_apply, ← this]
    exact Finset.sum_congr rfl fun k _ => by simp [mul_comm]
  · intro h u v
    have h' : Mᵀ * M.map K.c = 1 := by
      have := congrArg (fun X => X.map K.c) h
      simp only [Matrix.map_mul, Matrix.transpose_map, Matrix.map_map, Matrix.map_one _ (map_zero K.c) (map_one K.c)] at this
      convert this using 2
      ext a b; simp [K.c_c]
    rw [stdH_mulVec_eq, h', Matrix.one_mulVec]
    rfl

theorem isom_iff {γ' : Matrix (Fin n) (Fin n) K.E} {x : B.Aˣ} (hm : IsModel B γ' x ψ) (a : B.A) :
    (∀ u v, stdH K n (mulMat B ψ a *ᵥ u) (mulMat B ψ a *ᵥ v) = stdH K n u v) ↔ a * B.σ a = 1 := by
  have hh := hm.2.2
  constructor
  · intro h
    have h2 : ∀ y z, B.herm x (a * y) (a * z) = B.herm x y z := by
      intro y z
      rw [← hh, ← hh, ← mulMat_mulVec, ← mulMat_mulVec]
      exact h _ _
    have h3 : ∀ z, B.herm x (a * B.σ a - 1) z = 0 := by
      intro z
      have := h2 1 z
      simp only [InvAlg.herm] at this ⊢
      rw [show (x : B.A) * (a * B.σ a - 1) * B.σ z = (x : B.A) * (a * 1) * B.σ (a * z) - x * 1 * B.σ z by
        rw [map_mul]; ring, map_sub, this, sub_self]
    have h4 : ψ (a * B.σ a - 1) = 0 := by
      funext k
      have := h3 (ψ.symm (Pi.single k 1))
      rw [← hh, ψ.apply_symm_apply] at this
      simpa [InertUnitOrb.stdH, Pi.single_apply] using this
    exact sub_eq_zero.mp ((LinearEquiv.map_eq_zero_iff ψ).mp h4)
  · intro h u v
    obtain ⟨y, rfl⟩ := ψ.surjective u
    obtain ⟨z, rfl⟩ := ψ.surjective v
    rw [mulMat_mulVec, mulMat_mulVec, hh, hh]
    simp only [InvAlg.herm, map_mul]
    congr 1
    calc (x : B.A) * (a * y) * (B.σ a * B.σ z) = x * y * B.σ z * (a * B.σ a) := by ring
      _ = _ := by rw [h, mul_one]

theorem map_map_symm {R S : Type} [Ring R] [Ring S] (e : R ≃+* S) (M : Matrix (Fin n) (Fin n) R) :
    (M.map e).map e.symm = M := by
  ext i j; simp

theorem map_symm_map {R S : Type} [Ring R] [Ring S] (e : R ≃+* S) (M : Matrix (Fin n) (Fin n) S) :
    (M.map e.symm).map e = M := by
  ext i j; simp

theorem unitary_map {E : Type} [Field E] [NumberField E] [IsCMField E] {w : Pl E}
    (e : K.E ≃+* w.adicCompletion E) (he : ∀ x, e (K.c x) = cj w (e x)) (M : Matrix (Fin n) (Fin n) K.E) :
    cT (cj w) (M.map e) * 1 * M.map e = 1 ↔ (M.map K.c)ᵀ * M = 1 := by
  have h1 : cT (cj w) (M.map e) = ((M.map K.c)ᵀ).map e := by
    ext i j; simp [cT, he]
  rw [h1, mul_one, ← Matrix.map_mul]
  constructor
  · intro h
    have : ((((M.map K.c)ᵀ * M).map e).map e.symm) = (1 : Matrix (Fin n) (Fin n) _).map e.symm := by rw [h]
    rw [map_map_symm] at this
    simpa using this
  · intro h
    rw [h]; simp

theorem cent_equiv_torus : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ (x : B.Aˣ) (γ : UL n w), IsModel B ((((γ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) x ψ → B.P.Separable → ∃ τ : twCent (MonoidHom.id (UL n w)) γ ≃* B.T, ∀ (t : twCent (MonoidHom.id (UL n w)) γ) (y : B.A), ψ (((τ t : B.Aˣ) : B.A) * y) = (((((t : UL n w) : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) *ᵥ ψ y := by
  intro E _ _ _ _ w hw K e he _ n B ψ x γ hm hs
  have hUL : UL n w = UJ (cj w) 1 := by simp [UL, hw]
  let ρ : B.A →* Matrix (Fin n) (Fin n) (w.adicCompletion E) :=
    (e.toRingHom.mapMatrix : Matrix (Fin n) (Fin n) K.E →+* _).toMonoidHom.comp (mulHom B ψ)
  have hρa : ∀ a, ρ a = (mulMat B ψ a).map e := fun a => rfl
  have hγ' := eq_mulMat B ψ (fun y => (hm.2.1 y).symm)
  have hγ : (((γ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) = ρ B.g := by
    rw [hρa, ← hγ', map_symm_map]
  have hmem : ∀ u : B.Aˣ, u ∈ B.T → (Units.map ρ u : GLw n w) ∈ UL n w := by
    intro u hu
    rw [hUL]
    show cT (cj w) (((Units.map ρ u : GLw n w)) : Matrix (Fin n) (Fin n) _) * 1 * _ = 1
    rw [Units.coe_map, hρa, unitary_map e he, ← stdH_mulVec_iff, isom_iff B ψ hm]
    exact hu
  have hcent : ∀ (u : B.Aˣ) (hu : u ∈ B.T),
      (⟨Units.map ρ u, hmem u hu⟩ : UL n w) ∈ twCent (MonoidHom.id (UL n w)) γ := by
    intro u hu
    show _ * γ = γ * _
    apply Subtype.ext
    apply Units.ext
    simp only [Subgroup.coe_mul, Units.val_mul, MonoidHom.id_apply, Units.coe_map, hγ]
    rw [← map_mul, ← map_mul, mul_comm]
  let φ : B.T →* twCent (MonoidHom.id (UL n w)) γ :=
    { toFun := fun u => ⟨⟨Units.map ρ u, hmem u u.2⟩, hcent u u.2⟩
      map_one' := by
        apply Subtype.ext; apply Subtype.ext; apply Units.ext
        simp
      map_mul' := by
        intro a b
        apply Subtype.ext; apply Subtype.ext; apply Units.ext
        simp }
  have hφ : ∀ u : B.T, ((((φ u : twCent (MonoidHom.id (UL n w)) γ) : UL n w) : GLw n w) :
      Matrix (Fin n) (Fin n) (w.adicCompletion E)) = (mulMat B ψ ((u : B.Aˣ) : B.A)).map e := fun u => rfl
  have hinj : Function.Injective φ := by
    intro a b hab
    have h1 := congrArg (fun t : twCent (MonoidHom.id (UL n w)) γ =>
      (((t : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) hab
    simp only [hφ, map_map_symm] at h1
    have h2 : ψ (((a : B.Aˣ) : B.A) * 1) = ψ (((b : B.Aˣ) : B.A) * 1) := by
      rw [← mulMat_mulVec, ← mulMat_mulVec, h1]
    apply Subtype.ext; apply Units.ext
    simpa using ψ.injective h2
  have hsurj : Function.Surjective φ := by
    intro t
    set T : Matrix (Fin n) (Fin n) (w.adicCompletion E) := (((t : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) with hT
    set T' := T.map e.symm with hT'
    have hc : T * (((γ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) _) =
        (((γ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) _) * T := by
      have := t.2
      change (t : UL n w) * γ = γ * (t : UL n w) at this
      have := congrArg (fun s : UL n w => ((s : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E))) this
      simpa using this
    have hc' : T' * mulMat B ψ B.g = mulMat B ψ B.g * T' := by
      rw [← hγ', hT', ← Matrix.map_mul, ← Matrix.map_mul, hc]
    let f : B.A →ₗ[K.E] B.A := ψ.symm.toLinearMap ∘ₗ Matrix.toLin' T' ∘ₗ ψ.toLinearMap
    have hfa : ∀ y, ψ (f y) = T' *ᵥ ψ y := by
      intro y; simp [f]
    have hf : ∀ y, f (B.g * y) = B.g * f y := by
      intro y
      apply ψ.injective
      rw [hfa, ← mulMat_mulVec, ← mulMat_mulVec, hfa, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hc']
    have ha : ∀ y, T' *ᵥ ψ y = ψ (f 1 * y) := by
      intro y; rw [← hfa, commutant B hs f hf y]
    have hM := eq_mulMat B ψ ha
    have hTu : cT (cj w) T * 1 * T = 1 := by
      have hULmem : ∀ g : GLw n w, g ∈ UL n w → g ∈ UJ (cj w) 1 := fun g hg => by rwa [hUL] at hg
      exact hULmem _ (t : UL n w).2
    have hu : f 1 * B.σ (f 1) = 1 := by
      rw [← isom_iff B ψ hm, stdH_mulVec_iff, ← hM, ← unitary_map e he, hT', map_symm_map]
      exact hTu
    let u : B.Aˣ := ⟨f 1, B.σ (f 1), hu, by rw [mul_comm]; exact hu⟩
    refine ⟨⟨u, hu⟩, ?_⟩
    apply Subtype.ext; apply Subtype.ext; apply Units.ext
    change (mulMat B ψ (f 1)).map e = T
    rw [← hM, hT', map_symm_map]
  refine ⟨(MulEquiv.ofBijective φ ⟨hinj, hsurj⟩).symm, fun t y => ?_⟩
  have h1 : φ ((MulEquiv.ofBijective φ ⟨hinj, hsurj⟩).symm t) = t :=
    (MulEquiv.ofBijective φ ⟨hinj, hsurj⟩).apply_symm_apply t
  conv_rhs => rw [← h1]
  rw [hφ, map_map_symm, mulMat_mulVec]

end GlobalTheory.CentTorusModel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalUnitaryCentralizerEquivNormOneTorus =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalUnitaryCentralizerEquivNormOneTorusStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalUnitaryCentralizerEquivNormOneTorusStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalUnitaryCentralizerEquivNormOneTorus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalUnitaryCentralizerEquivNormOneTorusStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrbitalIntegralIndicatorEqFinsumRelIndex =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrbitalIntegralIndicatorEqFinsumRelIndex", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

namespace GlobalTheory.OrbIndUnit

theorem avg_const_fun {H : Type} [Group H] (c : ℂ) : avg (fun _ : H => c) = c := by
  have hs : rStab (fun _ : H => c) = ⊤ := by
    ext k; simp [rStab]
  unfold avg
  rw [hs, Subgroup.index_top]
  haveI : Subsingleton (H ⧸ (⊤ : Subgroup H)) := QuotientGroup.subsingleton_quotient_top
  haveI : Unique (H ⧸ (⊤ : Subgroup H)) := uniqueOfSubsingleton (1 : H ⧸ (⊤ : Subgroup H))
  rw [finsum_unique]
  simp

theorem twOrb_id_indicator (G : Type) [Group G] [TopologicalSpace G] (K : Subgroup G) (γ : G) :
    twOrb (MonoidHom.id G) K γ ((K : Set G).indicator 1) = ∑ᶠ q : DoubleCoset.Quotient (twCent (MonoidHom.id G) γ : Set G) (K : Set G), if (Quotient.out q)⁻¹ * γ * Quotient.out q ∈ K then (((twCent (MonoidHom.id G) γ ⊓ K.map (MulAut.conj (Quotient.out q)).toMonoidHom).relIndex (cptPart (twCent (MonoidHom.id G) γ)) : ℕ) : ℂ) else 0 := by
  unfold twOrb
  apply finsum_congr
  intro q
  set Q : G := Quotient.out q with hQ
  have hfun : (fun k : K => (K : Set G).indicator 1 ((Q * k)⁻¹ * γ * (MonoidHom.id G) (Q * k)))
      = fun _ => (K : Set G).indicator (1 : G → ℂ) (Q⁻¹ * γ * Q) := by
    funext k
    have he : (Q * k)⁻¹ * γ * (MonoidHom.id G) (Q * k) = (k : G)⁻¹ * (Q⁻¹ * γ * Q) * k := by
      simp only [MonoidHom.id_apply]; group
    rw [he]
    by_cases h : Q⁻¹ * γ * Q ∈ K
    · have h' : (k : G)⁻¹ * (Q⁻¹ * γ * Q) * k ∈ K := K.mul_mem (K.mul_mem (K.inv_mem k.2) h) k.2
      simp [h, h']
    · have h' : (k : G)⁻¹ * (Q⁻¹ * γ * Q) * k ∉ K := by
        intro h'
        apply h
        have := K.mul_mem (K.mul_mem k.2 h') (K.inv_mem k.2)
        simpa [mul_assoc] using this
      simp [h, h']
  rw [hfun, avg_const_fun]
  by_cases h : Q⁻¹ * γ * Q ∈ K
  · simp [h]
  · simp [h]

end GlobalTheory.OrbIndUnit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrbitalIntegralIndicatorEqFinsumRelIndex =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrbitalIntegralIndicatorEqFinsumRelIndexStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrbitalIntegralIndicatorEqFinsumRelIndexStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrbitalIntegralIndicatorEqFinsumRelIndex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrbitalIntegralIndicatorEqFinsumRelIndexStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexEqOfMulEquivSubgroup =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexEqOfMulEquivSubgroup", "h": "module\n\npublic import Mathlib.GroupTheory.Index\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

namespace GlobalTheory

theorem relIndex_eq_of_mulEquiv_subgroup : ∀ (G H : Type) [Group G] [Group H] (T : Subgroup G) (S : Subgroup H) (τ : T ≃* S) (A₁ A₂ : Subgroup G) (B₁ B₂ : Subgroup H), A₁ ≤ T → A₂ ≤ T → (∀ t : T, (t : G) ∈ A₁ ↔ ((τ t : S) : H) ∈ B₁) → (∀ t : T, (t : G) ∈ A₂ ↔ ((τ t : S) : H) ∈ B₂) → A₁.relIndex A₂ = (B₁ ⊓ S).relIndex (B₂ ⊓ S) := by
  intro G H _ _ T S τ A₁ A₂ B₁ B₂ h₁ h₂ e₁ e₂
  have key : ∀ (A : Subgroup G) (B : Subgroup H), (∀ t : T, (t : G) ∈ A ↔ ((τ t : S) : H) ∈ B) →
      (A.subgroupOf T).map τ.toMonoidHom = (B ⊓ S).subgroupOf S := by
    intro A B e
    ext s
    rw [Subgroup.mem_map_equiv, Subgroup.mem_subgroupOf, Subgroup.mem_subgroupOf, e]
    simp
  rw [← Subgroup.relIndex_subgroupOf h₂, ← Subgroup.relIndex_subgroupOf (inf_le_right : B₂ ⊓ S ≤ S),
    ← key A₁ B₁ e₁, ← key A₂ B₂ e₂,
    Subgroup.relIndex_map_map_of_injective _ _ τ.injective]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexEqOfMulEquivSubgroup =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexEqOfMulEquivSubgroupStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexEqOfMulEquivSubgroupStatement", "h": "module\n\npublic import Mathlib.GroupTheory.Index\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexEqOfMulEquivSubgroup\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\nimport Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.BaseChangeDefiniteUnitary\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexEqOfMulEquivSubgroupStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitLength =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitLength", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.FinsumNormNeg\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\npublic import Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.FieldTheory.Finite.GaloisField\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.InvolutionTraceUnit

open Polynomial IsLocalRing

theorem ff_norm {k : Type} [Field k] [Finite k] (σ : k →+* k) (hσ : ∀ x, σ (σ x) = x)
    (hne : ∃ x, σ x ≠ x) (u : k) (hu : σ u = u) : ∃ w, w * σ w = u := by
  apply GlobalTheory.NormGauss.exists_norm_eq <;> assumption

section Local

variable {O : Type} [CommRing O] [IsDomain O] [IsLocalRing O]

theorem mem_of_invol (s : O →+* O) (hs : ∀ x, s (s x) = x) {a : O} (ha : a ∈ maximalIdeal O) :
    s a ∈ maximalIdeal O := by
  rw [mem_maximalIdeal, mem_nonunits_iff] at ha ⊢
  intro h
  exact ha (hs a ▸ h.map s)

theorem unit_of_not_mem {a : O} (ha : a ∉ maximalIdeal O) : IsUnit a := by
  rw [mem_maximalIdeal, mem_nonunits_iff] at ha
  exact not_not.1 ha

theorem not_mem_of_unit {a : O} (ha : IsUnit a) : a ∉ maximalIdeal O := by
  rw [mem_maximalIdeal, mem_nonunits_iff]
  exact not_not.2 ha

theorem exists_trace_unit (s : O →+* O) (hs : ∀ x, s (s x) = x) (θ : O)
    (hθ : θ - s θ ∉ maximalIdeal O) : ∃ t : O, IsUnit (t + s t) ∧ IsUnit (t * s t) := by
  by_cases h2 : (2 : O) ∈ maximalIdeal O
  · have hu : IsUnit θ := by
      apply unit_of_not_mem
      intro h
      exact hθ (sub_mem h (mem_of_invol s hs h))
    refine ⟨θ, unit_of_not_mem fun h => hθ ?_, hu.mul (hu.map s)⟩
    have : θ - s θ = (θ + s θ) - 2 * s θ := by ring
    rw [this]
    exact sub_mem h (Ideal.mul_mem_right _ _ h2)
  · refine ⟨1, ?_, by simp⟩
    rw [map_one, one_add_one_eq_two]
    exact unit_of_not_mem h2

theorem norm_principal [IsAdicComplete (maximalIdeal O) O] (s : O →+* O) (hs : ∀ x, s (s x) = x)
    (θ : O) (hθ : θ - s θ ∉ maximalIdeal O) (x : O) (hx : s x = x)
    (hx1 : 1 - x ∈ maximalIdeal O) : ∃ w, w * s w = x := by
  obtain ⟨t, hT, hN⟩ := exists_trace_unit s hs θ hθ
  obtain ⟨M, hM⟩ := hN.exists_right_inv
  have hMu : IsUnit M := IsUnit.of_mul_eq_one_right _ hM
  have H := IsAdicComplete.henselianRing O (maximalIdeal O)
  obtain ⟨a, ha, ha0⟩ := H.is_henselian
    (X ^ 2 + (C ((t + s t) * M) * X + C ((1 - x) * M)))
    (by
      apply Polynomial.monic_X_pow_add
      refine lt_of_le_of_lt (Polynomial.degree_linear_le) ?_
      norm_num)
    0 (by simpa using Ideal.mul_mem_right _ _ hx1)
    (by
      apply IsUnit.map
      simpa using And.intro hT hMu)
  rw [sub_zero] at ha0
  have e : a ^ 2 + ((t + s t) * M * a + (1 - x) * M) = 0 := by
    simpa [IsRoot] using ha
  have e1 : t * s t * a ^ 2 + (t + s t) * a + (1 - x) = 0 := by
    linear_combination (t * s t) * e - ((t + s t) * a + (1 - x)) * hM
  have e2 : t * s t * s a ^ 2 + (t + s t) * s a + (1 - x) = 0 := by
    have := congrArg s e1
    simp only [map_add (f := _), map_mul, map_pow, map_sub, map_one, map_zero, hs, hx] at this
    linear_combination this
  have e3 : (a - s a) * (t * s t * (a + s a) + (t + s t)) = 0 := by
    linear_combination e1 - e2
  have e4 : s a = a := by
    rcases mul_eq_zero.1 e3 with h | h
    · exact (sub_eq_zero.1 h).symm
    · exfalso
      apply not_mem_of_unit hT
      have : t + s t = -(t * s t * (a + s a)) := by linear_combination h
      rw [this]
      exact neg_mem (Ideal.mul_mem_left _ _ (add_mem ha0 (mem_of_invol s hs ha0)))
  refine ⟨1 + a * t, ?_⟩
  rw [map_add (f := _), map_one, map_mul, e4]
  linear_combination e1

theorem norm_unit [IsAdicComplete (maximalIdeal O) O] [Finite (ResidueField O)] (s : O →+* O)
    (hs : ∀ x, s (s x) = x) (θ : O) (hθ : θ - s θ ∉ maximalIdeal O) (u : O) (hu : IsUnit u)
    (hsu : s u = u) : ∃ w, w * s w = u := by
  haveI : IsLocalHom s := ⟨fun a ha => hs a ▸ ha.map s⟩
  obtain ⟨w', hw'⟩ := ff_norm (ResidueField.map s)
    (by
      intro x
      obtain ⟨x, rfl⟩ := residue_surjective x
      rw [ResidueField.map_residue, ResidueField.map_residue, hs])
    ⟨residue O θ, by
      rw [ResidueField.map_residue]
      intro h
      apply hθ
      rw [← residue_eq_zero_iff, map_sub, h, sub_self]⟩
    (residue O u) (by rw [ResidueField.map_residue, hsu])
  obtain ⟨w, rfl⟩ := residue_surjective w'
  rw [ResidueField.map_residue, ← map_mul] at hw'
  have hm : u - w * s w ∈ maximalIdeal O := by
    rw [← residue_eq_zero_iff, map_sub, hw', sub_self]
  obtain ⟨v, hv⟩ := hu.exists_right_inv
  have hsv : s v = v := by
    have := congrArg s hv
    rw [map_mul, hsu, map_one] at this
    linear_combination v * this - s v * hv
  have hwu : IsUnit (w * s w) := by
    apply unit_of_not_mem
    intro h
    apply not_mem_of_unit hu
    simpa using add_mem hm h
  have hw : IsUnit w := isUnit_of_mul_isUnit_left hwu
  obtain ⟨r, hr⟩ := hw.exists_right_inv
  have hr' : s w * s r = 1 := by rw [← map_mul, hr, map_one]
  obtain ⟨z, hz⟩ := norm_principal s hs θ hθ (u * (r * s r))
    (by rw [map_mul, map_mul, hs, hsu, mul_comm (s r)])
    (by
      have : 1 - u * (r * s r) = -((u - w * s w) * (r * s r)) := by
        linear_combination (-(s w * s r)) * hr - hr'
      rw [this]
      exact neg_mem (Ideal.mul_mem_right _ _ hm))
  refine ⟨w * z, ?_⟩
  rw [map_mul]
  linear_combination (w * s w) * hz + u * (s w * s r) * hr + u * hr'

end Local

section Lattice

variable {O E V : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field E] [Algebra O E]
  [IsFractionRing O E] [AddCommGroup V] [Module E V] [Module O V] [IsScalarTower O E V]

theorem clear_denominator (L : Submodule O V) (y : V) (hy : y ∈ Submodule.span E (L : Set V)) :
    ∃ d : O, d ≠ 0 ∧ d • y ∈ L := by
  induction hy using Submodule.span_induction with
  | mem x hx => exact ⟨1, one_ne_zero, by simpa using hx⟩
  | zero => exact ⟨1, one_ne_zero, by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨d, hd, hx⟩ := hx
    obtain ⟨e, he, hy⟩ := hy
    refine ⟨d * e, mul_ne_zero hd he, ?_⟩
    rw [smul_add]
    refine add_mem ?_ ?_
    · rw [mul_comm, mul_smul]; exact L.smul_mem _ hx
    · rw [mul_smul]; exact L.smul_mem _ hy
  | smul a x _ hx =>
    obtain ⟨d, hd, hx⟩ := hx
    obtain ⟨p, q, hq, rfl⟩ := IsFractionRing.div_surjective O a
    have hq0 : q ≠ 0 := nonZeroDivisors.ne_zero hq
    have hq1 : algebraMap O E q ≠ 0 := by simpa using hq0
    refine ⟨d * q, mul_ne_zero hd hq0, ?_⟩
    have : (d * q) • ((algebraMap O E p / algebraMap O E q) • x) = p • d • x := by
      rw [← algebraMap_smul E (d * q), ← algebraMap_smul E p, ← algebraMap_smul E d, smul_smul,
        smul_smul, map_mul]
      congr 1
      field_simp
    rw [this]
    exact L.smul_mem _ hx

theorem exists_unit_length (c : E →+* E) (s : O →+* O) (hs : ∀ x, s (s x) = x)
    (hcs : ∀ x, c (algebraMap O E x) = algebraMap O E (s x)) (θ : O)
    (hθ : θ - s θ ∉ maximalIdeal O) (h : V → V → E)
    (ha : ∀ y y' z, h (y + y') z = h y z + h y' z) (hm : ∀ (a : E) y z, h (a • y) z = a * h y z)
    (hc : ∀ y z, h z y = c (h y z)) (W : Submodule E V) (L : Submodule O V) (hfg : L.FG)
    (hne : L ≠ ⊥) (hLW : ∀ y ∈ L, y ∈ W)
    (hint : ∀ y ∈ L, ∀ z ∈ L, h y z ∈ (algebraMap O E).range)
    (hdual : ∀ y ∈ W, (∀ z ∈ L, h y z ∈ (algebraMap O E).range) → y ∈ L) :
    ∃ e ∈ L, ∃ u : O, IsUnit u ∧ algebraMap O E u = h e e := by
  by_contra hcon
  have inj := IsFractionRing.injective O E
  have h0 : ∀ e ∈ L, ∀ a : O, algebraMap O E a = h e e → a ∈ maximalIdeal O := by
    intro e he a hae
    by_contra hn
    exact hcon ⟨e, he, a, unit_of_not_mem hn, hae⟩
  have h1 : ∀ y ∈ L, ∀ z ∈ L, ∀ a : O, algebraMap O E a = h y z → a + s a ∈ maximalIdeal O := by
    intro y hy z hz a hayz
    obtain ⟨b, hb⟩ := hint y hy y hy
    obtain ⟨d, hd⟩ := hint z hz z hz
    have hsum : algebraMap O E (b + d + (a + s a)) = h (y + z) (y + z) := by
      have e1 : h y (y + z) = h y y + h y z := by
        rw [hc (y + z) y, ha, map_add (f := _), ← hc, ← hc]
      have e2 : h z (y + z) = h z y + h z z := by
        rw [hc (y + z) z, ha, map_add (f := _), ← hc, ← hc]
      rw [ha, e1, e2, hc y z, map_add (f := _), map_add (f := _), map_add (f := _), ← hcs, hb, hd, hayz]
      ring
    have := sub_mem (h0 _ (add_mem hy hz) _ hsum) (add_mem (h0 y hy b hb) (h0 z hz d hd))
    simpa using this
  have h2 : ∀ y ∈ L, ∀ z ∈ L, ∀ a : O, algebraMap O E a = h y z → a ∈ maximalIdeal O := by
    intro y hy z hz a hayz
    have k1 := h1 y hy z hz a hayz
    have k2 := h1 (θ • y) (L.smul_mem _ hy) z hz (θ * a)
      (by rw [← algebraMap_smul E θ y, hm, map_mul, hayz])
    have k3 : (θ - s θ) * a ∈ maximalIdeal O := by
      have : (θ - s θ) * a = (θ * a + s (θ * a)) - s θ * (a + s a) := by
        rw [map_mul]; ring
      rw [this]
      exact sub_mem k2 (Ideal.mul_mem_left _ _ k1)
    exact ((Ideal.IsMaximal.isPrime inferInstance).mem_or_mem k3).resolve_left hθ
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  have hϖ0 : algebraMap O E ϖ ≠ 0 := by simpa using hϖ.ne_zero
  apply hne
  apply Submodule.eq_bot_of_le_smul_of_le_jacobson_bot (maximalIdeal O) L hfg
  · intro y hy
    have hy' : (algebraMap O E ϖ)⁻¹ • y ∈ L := by
      apply hdual _ (W.smul_mem _ (hLW y hy))
      intro z hz
      obtain ⟨a, hayz⟩ := hint y hy z hz
      have := h2 y hy z hz a hayz
      rw [hϖ.maximalIdeal_eq, Ideal.mem_span_singleton] at this
      obtain ⟨b, rfl⟩ := this
      refine ⟨b, ?_⟩
      rw [hm, ← hayz, map_mul, inv_mul_cancel_left₀ hϖ0]
    have : y = ϖ • ((algebraMap O E ϖ)⁻¹ • y) := by
      rw [← algebraMap_smul E ϖ, smul_smul, mul_inv_cancel₀ hϖ0, one_smul]
    rw [this]
    refine Submodule.smul_mem_smul ?_ hy'
    rw [hϖ.maximalIdeal_eq]
    exact Ideal.mem_span_singleton_self _
  · rw [jacobson_eq_maximalIdeal _ bot_ne_top]

theorem extend_family [IsAdicComplete (maximalIdeal O) O] [Finite (ResidueField O)]
    [FiniteDimensional E V] (c : E →+* E) (s : O →+* O) (hs : ∀ x, s (s x) = x)
    (hcs : ∀ x, c (algebraMap O E x) = algebraMap O E (s x)) (θ : O)
    (hθ : θ - s θ ∉ maximalIdeal O) (h : V → V → E)
    (ha : ∀ y y' z, h (y + y') z = h y z + h y' z) (hm : ∀ (a : E) y z, h (a • y) z = a * h y z)
    (hc : ∀ y z, h z y = c (h y z)) (L : Submodule O V) (hfg : L.FG)
    (hspan : Submodule.span E (L : Set V) = ⊤)
    (hdual : ∀ y, y ∈ L ↔ ∀ z ∈ L, h y z ∈ (algebraMap O E).range)
    (k : ℕ) (hk : k < Module.finrank E V) (v : Fin k → V) (hv : ∀ i, v i ∈ L)
    (hon : ∀ i j, h (v i) (v j) = if i = j then 1 else 0) :
    ∃ e ∈ L, h e e = 1 ∧ ∀ i, h e (v i) = 0 := by
  classical
  have inj := IsFractionRing.injective O E
  let B : V → V →ₗ[E] E := fun z =>
    { toFun := fun y => h y z, map_add' := fun y y' => ha y y' z,
      map_smul' := fun a y => hm a y z }
  have hB : ∀ z y, B z y = h y z := fun _ _ => rfl
  let φ : V →ₗ[E] (Fin k → E) := LinearMap.pi fun i => B (v i)
  have hφ : ∀ y, y ∈ LinearMap.ker φ ↔ ∀ i, h y (v i) = 0 := by
    intro y
    rw [LinearMap.mem_ker, funext_iff]
    rfl
  let L' : Submodule O V := L ⊓ (LinearMap.ker φ).restrictScalars O
  have hL' : ∀ y, y ∈ L' ↔ y ∈ L ∧ y ∈ LinearMap.ker φ := fun y => Iff.rfl
  have hker : LinearMap.ker φ ≠ ⊥ := LinearMap.ker_ne_bot_of_finrank_lt (by simpa using hk)
  obtain ⟨y₀, hy₀, hy0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hker
  obtain ⟨d, hd, hdy⟩ := clear_denominator (E := E) L y₀ (by rw [hspan]; trivial)
  have hne : L' ≠ ⊥ := by
    rw [Submodule.ne_bot_iff]
    refine ⟨d • y₀, (hL' _).2 ⟨hdy, ?_⟩, ?_⟩
    · rw [← algebraMap_smul E d]; exact Submodule.smul_mem _ _ hy₀
    · rw [← algebraMap_smul E d]; exact smul_ne_zero (by simpa using hd) hy0
  obtain ⟨e, he, u, hu, hue⟩ := exists_unit_length c s hs hcs θ hθ h ha hm hc (LinearMap.ker φ) L'
    (hfg.of_le inf_le_left) hne (fun y hy => hy.2)
    (fun y hy z hz => (hdual y).1 hy.1 z hz.1)
    (by
      intro y hy hyz
      refine (hL' y).2 ⟨(hdual y).2 fun z hz => ?_, hy⟩
      have hz' : z - ∑ i, h z (v i) • v i ∈ L' := by
        refine (hL' _).2 ⟨sub_mem hz (Submodule.sum_mem _ fun i _ => ?_), (hφ _).2 fun j => ?_⟩
        · obtain ⟨a, hai⟩ := (hdual z).1 hz (v i) (hv i)
          rw [← hai, algebraMap_smul]
          exact L.smul_mem _ (hv i)
        · set_option synthInstance.maxHeartbeats 100000 in
            rw [← hB, map_sub, map_sum]
          simp only [hB, hm, hon]
          simp
      have := hyz _ hz'
      have hvy : ∀ i, h (v i) y = 0 := fun i => by rw [hc, (hφ y).1 hy i, map_zero]

      rw [hc, ← hB, map_sub, map_sum] at this
      simp only [hB, hm, hvy, mul_zero, Finset.sum_const_zero, sub_zero] at this
      rw [hc]
      exact this)
  have hsu : s u = u := inj (by rw [← hcs, hue, ← hc])
  obtain ⟨w, hw⟩ := norm_unit s hs θ hθ u hu hsu
  have hwu : IsUnit w := isUnit_of_mul_isUnit_left (hw ▸ hu)
  obtain ⟨r, hr⟩ := hwu.exists_right_inv
  have hr' : s w * s r = 1 := by rw [← map_mul, hr, map_one]
  have key : r * (s r * u) = 1 := by
    linear_combination (-(r * s r)) * hw + (s w * s r) * hr + hr'
  refine ⟨r • e, L.smul_mem _ he.1, ?_, fun i => ?_⟩
  · rw [← algebraMap_smul E r, hm, hc, hm, map_mul, ← hc, hcs, ← hue, ← map_mul, ← map_mul, key,
      map_one]
  · rw [← algebraMap_smul E r, hm, (hφ e).1 he.2 i, mul_zero]

end Lattice

theorem exists_orthonormal {K : GlobalTheory.UnitLemma.UQ} (n : ℕ) (V : Type) [AddCommGroup V] [Module K.E V]
    [Module K.O V] [IsScalarTower K.O K.E V] [FiniteDimensional K.E V] (h : V → V → K.E)
    (ha : ∀ y y' z, h (y + y') z = h y z + h y' z) (hm : ∀ (a : K.E) y z, h (a • y) z = a * h y z)
    (hc : ∀ y z, h z y = K.c (h y z)) (hn : Module.finrank K.E V = n) (L : Submodule K.O V)
    (hfg : L.FG) (hspan : Submodule.span K.E (L : Set V) = ⊤)
    (hdual : ∀ y, y ∈ L ↔ ∀ z ∈ L, h y z ∈ (algebraMap K.O K.E).range) :
    ∃ v : Fin n → V, (∀ i, v i ∈ L) ∧ ∀ i j, h (v i) (v j) = if i = j then 1 else 0 := by
  have inj := IsFractionRing.injective K.O K.E
  choose f hf using K.c_int
  let s : K.O →+* K.O :=
    { toFun := f
      map_one' := inj (by rw [← hf]; simp)
      map_mul' := fun x y => inj (by simp [← hf])
      map_zero' := inj (by rw [← hf]; simp)
      map_add' := fun x y => inj (by simp [← hf]) }
  have hcs : ∀ x, (K.c : K.E →+* K.E) (algebraMap K.O K.E x) = algebraMap K.O K.E (s x) := hf
  have hs : ∀ x, s (s x) = x := fun x => inj (by rw [← hcs, ← hcs]; exact K.c_c _)
  obtain ⟨θ, θ', hθ', hθ⟩ := K.c_res
  obtain rfl : θ' = s θ := inj (by rw [← hθ', ← hcs]; rfl)
  have main : ∀ k ≤ n, ∃ v : Fin k → V, (∀ i, v i ∈ L) ∧
      ∀ i j, h (v i) (v j) = if i = j then 1 else 0 := by
    intro k
    induction k with
    | zero => exact fun _ => ⟨Fin.elim0, fun i => i.elim0, fun i => i.elim0⟩
    | succ k ih =>
      intro hk
      obtain ⟨v, hv, hon⟩ := ih (by omega)
      obtain ⟨e, he, he1, he0⟩ := extend_family (K.c : K.E →+* K.E) s hs hcs θ hθ h ha hm hc L hfg
        hspan hdual k (by omega) v hv hon
      refine ⟨Fin.cons e v, fun i => ?_, fun i j => ?_⟩
      · refine Fin.cases ?_ (fun i => ?_) i
        · simpa using he
        · simpa using hv i
      · refine Fin.cases ?_ (fun i => ?_) i <;> refine Fin.cases ?_ (fun j => ?_) j
        · simpa using he1
        · simpa [(Fin.succ_ne_zero j).symm] using he0 j
        · simp only [Fin.cons_succ, Fin.cons_zero, Fin.succ_ne_zero, if_false]
          rw [hc, he0, map_zero]
        · simpa using hon i j
  exact main n le_rfl

end GlobalTheory.InvolutionTraceUnit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitLength =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLatticeStandardHermitian =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLatticeStandardHermitian", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianModelOfNormNeZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnitLength\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

noncomputable section

namespace GlobalTheory.InertUnitOrb.LatOnto

end GlobalTheory.InertUnitOrb.LatOnto

namespace GlobalTheory.InertUnitOrb.LatOnto

open GlobalTheory.InertUnitOrb.ModelOfN

theorem exists_unitLat_eq : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ (x : B.Aˣ), B.σ (x : B.A) = x → (∀ y z, stdH K n (ψ y) (ψ z) = B.herm x y z) → ∀ L : Submodule K.O B.A, IsLat K.O K.E L → (∀ y, y ∈ L ↔ ∀ z ∈ L, B.herm x y z ∈ (algebraMap K.O K.E).range) → ∃ q : UL n w, unitLat e B ψ q = L := by
  intro E _ _ _ _ w hns K e he hint n B ψ x hσx hH L hLat hdual
  have hadd : ∀ y y' z, B.herm x (y + y') z = B.herm x y z + B.herm x y' z := by
    intro y y' z
    simp only [InvAlg.herm, mul_add, add_mul, map_add (f := _)]
  have hsmul : ∀ (a : K.E) y z, B.herm x (a • y) z = a * B.herm x y z := by
    intro a y z
    simp only [InvAlg.herm, mul_smul_comm, smul_mul_assoc, map_smul, smul_eq_mul]
  have hsym : ∀ y z, B.herm x z y = K.c (B.herm x y z) := by
    intro y z
    simp only [InvAlg.herm]
    rw [← trace_sigma B, map_mul B.σ, map_mul B.σ, B.σ_σ, hσx]
    congr 1
    ring
  have hn : Module.finrank K.E B.A = n := by rw [ψ.finrank_eq, Module.finrank_fin_fun]
  obtain ⟨v, hvL, hv⟩ := _root_.GlobalTheory.InvolutionTraceUnit.exists_orthonormal n B.A (B.herm x) hadd hsmul hsym hn L hLat.1 hLat.2 hdual
  obtain ⟨b, hb⟩ := exists_basis_of_orthonormal (B.herm x) hadd hsmul hn v hv
  let P : Matrix (Fin n) (Fin n) K.E := Matrix.of fun i j => ψ (v j) i
  let Pc : Matrix (Fin n) (Fin n) K.E := Formalism.UG.cT (K.c : K.E →+* K.E) P
  have hPc : ∀ i k, Pc i k = K.c (ψ (v i) k) := fun i k => rfl
  have hPP : Pc * P = 1 := by
    ext i j
    rw [Matrix.mul_apply, Matrix.one_apply]
    have h1 := hH (v j) (v i)
    simp only [stdH] at h1
    simp only [hPc, P, Matrix.of_apply]
    rw [show (∑ k, K.c (ψ (v i) k) * ψ (v j) k) = ∑ k, ψ (v j) k * K.c (ψ (v i) k) from
      Finset.sum_congr rfl fun k _ => mul_comm _ _, h1, hv]
    by_cases hij : i = j
    · subst hij; simp
    · simp [hij, Ne.symm hij]
  have hPP' : P * Pc = 1 := mul_eq_one_comm.1 hPP
  let eh : K.E →+* w.adicCompletion E := e.toRingHom
  have hmul1 : P.map eh * Pc.map eh = 1 := by
    rw [← Matrix.map_mul, hPP', Matrix.map_one _ (map_zero eh) (map_one eh)]
  have hmul2 : Pc.map eh * P.map eh = 1 := by
    rw [← Matrix.map_mul, hPP, Matrix.map_one _ (map_zero eh) (map_one eh)]
  let qG : GLw n w := ⟨P.map eh, Pc.map eh, hmul1, hmul2⟩
  have hcT : Formalism.UG.cT (cj w) (P.map eh) = Pc.map eh := by
    refine Matrix.ext fun i j => ?_
    change cj w (e (ψ (v i) j)) = e (K.c (ψ (v i) j))
    exact (he _).symm
  have hqU : qG ∈ UL n w := by
    unfold UL
    rw [if_neg hns]
    show Formalism.UG.cT (cj w) (P.map eh) * 1 * P.map eh = 1
    rw [hcT, Matrix.mul_one, hmul2]
  refine ⟨⟨qG, hqU⟩, ?_⟩
  have hinv : ((((⟨qG, hqU⟩ : UL n w)⁻¹ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map
      e.symm = Pc := by
    refine Matrix.ext fun i j => ?_
    show e.symm (e (Pc i j)) = Pc i j
    exact e.symm_apply_apply _
  have hcoef : ∀ y i, (Pc *ᵥ ψ y) i = B.herm x y (v i) := by
    intro y i
    rw [← hH]
    simp only [Matrix.mulVec, dotProduct, hPc, stdH]
    exact Finset.sum_congr rfl fun k _ => mul_comm _ _
  have hexp : ∀ y j, B.herm x y (v j) = b.repr y j := by
    intro y j
    conv_lhs => rw [← b.sum_repr y]
    rw [show B.herm x (∑ i, b.repr y i • b i) (v j) = ∑ i, b.repr y i * B.herm x (b i) (v j) from ?_]
    · simp only [hb, hv, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
    · induction (Finset.univ : Finset (Fin n)) using Finset.induction_on with
      | empty =>
        simp only [Finset.sum_empty]
        have := hsmul 0 0 (v j)
        simpa using this
      | insert a s ha ih' =>
        rw [Finset.sum_insert ha, Finset.sum_insert ha, hadd, hsmul, ih']
  unfold unitLat
  rw [hinv]
  ext y
  show (∀ i, (Matrix.toLin' Pc (ψ y)) i ∈ (algebraMap K.O K.E).range) ↔ y ∈ L
  simp only [Matrix.toLin'_apply, hcoef]
  constructor
  · intro H
    choose a ha using H
    have hy : y = ∑ i, a i • v i := by
      conv_lhs => rw [← b.sum_repr y]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [← hexp, ← ha, algebraMap_smul, hb]
    rw [hy]
    exact Submodule.sum_mem _ fun i _ => L.smul_mem _ (hvL i)
  · intro hy i
    exact (hdual y).1 hy (v i) (hvL i)

end GlobalTheory.InertUnitOrb.LatOnto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLatticeStandardHermitian =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLatticeStandardHermitianStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLatticeStandardHermitianStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLatticeStandardHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

theorem _root_.GlobalTheory.T.self_dual_lattice_standard_hermitian : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ (x : B.Aˣ), B.σ (x : B.A) = x → (∀ y z, stdH K n (ψ y) (ψ z) = B.herm x y z) → ∀ L : Submodule K.O B.A, IsLat K.O K.E L → (∀ y, y ∈ L ↔ ∀ z ∈ L, B.herm x y z ∈ (algebraMap K.O K.E).range) → ∃ q : UL n w, unitLat e B ψ q = L := by
  first | exact @GlobalTheory.InertUnitOrb.LatOnto.exists_unitLat_eq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLatticeStandardHermitianStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLatticeStableIffConjIntegral =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLatticeStableIffConjIntegral", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceConjugationPropertiesCmField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

noncomputable section

namespace GlobalTheory.InertUnitOrb.LatStable

theorem mulVec_int_iff {E : Type} [Field E] [NumberField E] {n : ℕ} (w : Pl E)
    (M : Matrix (Fin n) (Fin n) (w.adicCompletion E)) :
    (∀ v : Fin n → w.adicCompletion E, (∀ i, Valued.v (v i) ≤ 1) → ∀ i, Valued.v ((M *ᵥ v) i) ≤ 1) ↔
      ∀ i j, Valued.v (M i j) ≤ 1 := by
  have hmem : ∀ x : w.adicCompletion E, Valued.v x ≤ 1 ↔ x ∈ Formalism.UG.Ov E w := fun x =>
    (HeightOneSpectrum.mem_adicCompletionIntegers (R := 𝓞 E) (K := E) (v := w)).symm
  constructor
  · intro h i j
    have := h (Pi.single j 1) (fun k => by
      by_cases hk : k = j
      · subst hk; simp
      · simp [Pi.single_apply, hk]) i
    simpa [Matrix.mulVec_single] using this
  · intro h v hv i
    rw [hmem]
    simp only [Matrix.mulVec, dotProduct]
    exact Subring.sum_mem _ fun k _ => Subring.mul_mem _ ((hmem _).1 (h i k)) ((hmem _).1 (hv k))

theorem mem_KGL_of_int {E : Type} [Field E] [NumberField E] {n : ℕ} (w : Pl E) (M : GLw n w)
    (h1 : ∀ i j, Valued.v ((M : Matrix (Fin n) (Fin n) (w.adicCompletion E)) i j) ≤ 1)
    (h2 : ∀ i j, Valued.v (((M⁻¹ : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) i j) ≤ 1) :
    M ∈ GlobalTheory.LFun.KGL w (n := n) := by
  have hmem : ∀ x : w.adicCompletion E, Valued.v x ≤ 1 ↔ x ∈ Formalism.UG.Ov E w := fun x =>
    (HeightOneSpectrum.mem_adicCompletionIntegers (R := 𝓞 E) (K := E) (v := w)).symm
  let N : Matrix (Fin n) (Fin n) (Formalism.UG.Ov E w) := fun i j => ⟨_, (hmem _).1 (h1 i j)⟩
  let N' : Matrix (Fin n) (Fin n) (Formalism.UG.Ov E w) := fun i j => ⟨_, (hmem _).1 (h2 i j)⟩
  have hinj : Function.Injective ((Formalism.UG.Ov E w).subtype.mapMatrix :
      Matrix (Fin n) (Fin n) (Formalism.UG.Ov E w) →+* Matrix (Fin n) (Fin n) (w.adicCompletion E)) := by
    intro a b hab
    exact Matrix.ext fun i j => Subtype.ext (congrFun (congrFun hab i) j)
  have hN : (Formalism.UG.Ov E w).subtype.mapMatrix N = (M : Matrix (Fin n) (Fin n) (w.adicCompletion E)) := by
    ext i j; rfl
  have hN' : (Formalism.UG.Ov E w).subtype.mapMatrix N' = ((M⁻¹ : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) := by
    ext i j; rfl
  refine ⟨⟨N, N', hinj ?_, hinj ?_⟩, ?_⟩
  · rw [map_mul, hN, hN', map_one]; exact M.mul_inv
  · rw [map_mul, hN, hN', map_one]; exact M.inv_mul
  · apply Units.ext
    simp only [Formalism.UG.bc, Units.coe_map]
    exact hN

end GlobalTheory.InertUnitOrb.LatStable

namespace GlobalTheory.InertUnitOrb.LatStable

theorem mem_KGL_of_unitary {E : Type} [Field E] [NumberField E] [IsCMField E] (hU : Unr E) {n : ℕ} (w : Pl E)
    (hw : ¬ IsSplitAt w) (M : GLw n w) (hM : M ∈ UL n w)
    (h1 : ∀ i j, Valued.v ((M : Matrix (Fin n) (Fin n) (w.adicCompletion E)) i j) ≤ 1) :
    M ∈ GlobalTheory.LFun.KGL w (n := n) := by
  have hcj := (GlobalTheory.ConjAtPlace.main E hU w).2.2.1
  rw [UL, if_neg hw] at hM
  have hM' : Formalism.UG.cT (cj w) (M : Matrix (Fin n) (Fin n) (w.adicCompletion E)) * 1 *
      (M : Matrix (Fin n) (Fin n) (w.adicCompletion E)) = 1 := hM
  have hinv : ((M⁻¹ : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) =
      Formalism.UG.cT (cj w) (M : Matrix (Fin n) (Fin n) (w.adicCompletion E)) := by
    have := congrArg (· * ((M⁻¹ : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E))) hM'
    simp only [Matrix.mul_one, Matrix.one_mul, Matrix.mul_assoc, Units.mul_inv] at this
    exact this.symm
  refine mem_KGL_of_int w M h1 fun i j => ?_
  rw [hinv]
  simp only [Formalism.UG.cT, Matrix.transpose_apply, Matrix.map_apply]
  rw [hcj]
  exact h1 j i

theorem e_mulVec {K F : Type} [Field K] [Field F] (e : K ≃+* F) {n : ℕ} (Q : Matrix (Fin n) (Fin n) F)
    (u : Fin n → K) (i : Fin n) : e ((Q.map e.symm *ᵥ u) i) = (Q *ᵥ fun j => e (u j)) i := by
  set_option synthInstance.maxHeartbeats 100000 in
    simp [Matrix.mulVec, dotProduct, map_sum, map_mul]

end GlobalTheory.InertUnitOrb.LatStable

namespace GlobalTheory.InertUnitOrb.LatStable

theorem unitLat_stable_iff : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ (γ : UL n w), (∀ y, ψ (B.g * y) = ((((γ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) *ᵥ ψ y) → ∀ q : UL n w, ((∀ y ∈ unitLat e B ψ q, B.g * y ∈ unitLat e B ψ q) ↔ q⁻¹ * γ * q ∈ KL n w) := by
  intro E _ _ _ hU w hw K e _ hint n B ψ γ hg q
  let ψ' : B.A → Fin n → w.adicCompletion E := fun y i => e (ψ y i)
  have hsurj : Function.Surjective ψ' := fun u => ⟨ψ.symm fun i => e.symm (u i), by funext i; simp [ψ']⟩
  set Qi := (((q⁻¹ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) with hQi
  set Qm := (((q : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) with hQm
  set Gm := (((γ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) with hGm
  set Mm := (((q⁻¹ * γ * q : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) with hMm'
  have hMm : Mm = Qi * Gm * Qm := rfl
  have hQiQm : Qi * Qm = 1 := by
    rw [hQi, hQm, ← Units.val_mul, ← Subgroup.coe_mul, inv_mul_cancel]; rfl
  have hQmQi : Qm * Qi = 1 := by
    rw [hQi, hQm, ← Units.val_mul, ← Subgroup.coe_mul, mul_inv_cancel]; rfl
  have hmemL : ∀ y, y ∈ unitLat e B ψ q ↔ ∀ i, Valued.v ((Qi *ᵥ ψ' y) i) ≤ 1 := by
    intro y
    show (∀ i, ((Qi.map e.symm) *ᵥ ψ y) i ∈ (algebraMap K.O K.E).range) ↔ _
    refine forall_congr' fun i => ?_
    rw [hint, e_mulVec]
  have hgψ : ∀ y, ψ' (B.g * y) = Gm *ᵥ ψ' y := by
    intro y; funext i
    simp only [ψ']
    rw [hg, e_mulVec]
  have hstab : (∀ y ∈ unitLat e B ψ q, B.g * y ∈ unitLat e B ψ q) ↔
      ∀ v : Fin n → w.adicCompletion E, (∀ i, Valued.v (v i) ≤ 1) → ∀ i, Valued.v ((Mm *ᵥ v) i) ≤ 1 := by
    constructor
    · intro hst v hv
      obtain ⟨y, hy⟩ := hsurj (Qm *ᵥ v)
      have hyL : y ∈ unitLat e B ψ q := (hmemL y).2 (by rw [hy, Matrix.mulVec_mulVec, hQiQm, Matrix.one_mulVec]; exact hv)
      have := (hmemL _).1 (hst y hyL)
      rw [hgψ, hy, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec] at this
      rw [hMm]; exact this
    · intro h y hy
      rw [hmemL] at hy ⊢
      rw [hgψ]
      have key : Qi *ᵥ (Gm *ᵥ ψ' y) = Mm *ᵥ (Qi *ᵥ ψ' y) := by
        simp only [hMm, Matrix.mulVec_mulVec, Matrix.mul_assoc, hQmQi, Matrix.mul_one]
      rw [key]
      exact h _ hy
  rw [hstab, mulVec_int_iff, KL, Subgroup.mem_subgroupOf]
  constructor
  · intro h
    exact mem_KGL_of_unitary hU w hw _ (q⁻¹ * γ * q).2 h
  · rintro ⟨N, hN⟩ i j
    have hmem : ∀ x : w.adicCompletion E, Valued.v x ≤ 1 ↔ x ∈ Formalism.UG.Ov E w := fun x =>
      (HeightOneSpectrum.mem_adicCompletionIntegers (R := 𝓞 E) (K := E) (v := w)).symm
    rw [hmem, hMm', ← hN]
    exact ((N : Matrix (Fin n) (Fin n) (Formalism.UG.Ov E w)) i j).2

end GlobalTheory.InertUnitOrb.LatStable
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLatticeStableIffConjIntegral =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLatticeStableIffConjIntegralStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLatticeStableIffConjIntegralStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLatticeStableIffConjIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

theorem _root_.GlobalTheory.T.unitLattice_stable_iff_conj_integral : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ (γ : UL n w), (∀ y, ψ (B.g * y) = ((((γ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) *ᵥ ψ y) → ∀ q : UL n w, ((∀ y ∈ unitLat e B ψ q, B.g * y ∈ unitLat e B ψ q) ↔ q⁻¹ * γ * q ∈ KL n w) := by
  first | exact @GlobalTheory.InertUnitOrb.LatStable.unitLat_stable_iff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLatticeStableIffConjIntegralStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeEqIffInvMulIntegral =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeEqIffInvMulIntegral", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLat\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Tjcosets\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

noncomputable section

namespace GlobalTheory.InertUnitLat

theorem mulVec_int_iff {K : UQ} {n : ℕ} (P : Matrix (Fin n) (Fin n) K.E) :
    (∀ u : Fin n → K.E, (∀ i, u i ∈ (algebraMap K.O K.E).range) →
      ∀ i, (P *ᵥ u) i ∈ (algebraMap K.O K.E).range) ↔
    ∀ i j, P i j ∈ (algebraMap K.O K.E).range := by
  constructor
  · intro h i j
    have := h (Pi.single j 1) (fun k => by
      by_cases hk : k = j
      · subst hk; simpa using Subring.one_mem _
      · simpa [hk] using Subring.zero_mem _) i
    simpa [Matrix.mulVec_single] using this
  · intro h u hu i
    simp only [Matrix.mulVec, dotProduct]
    exact Subring.sum_mem _ fun j _ => Subring.mul_mem _ (h i j) (hu j)

theorem unitLat_eq_iff : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ q q' : UL n w, unitLat e B ψ q = unitLat e B ψ q' ↔ q⁻¹ * q' ∈ KL n w := by
  intro E _ _ _ _ w _ K e _ hint n B ψ q q'
  let R := (algebraMap K.O K.E).range
  let M : GLw n w → Matrix (Fin n) (Fin n) K.E := fun g => (g : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm
  have hMmul : ∀ g h : GLw n w, M (g * h) = M g * M h := fun g h => by
    simp only [M, Units.val_mul]
    exact Matrix.map_mul (f := (e.symm : w.adicCompletion E →+* K.E))
  have hM1 : M 1 = 1 := by
    simp only [M, Units.val_one]
    exact Matrix.map_one (f := e.symm) (map_zero _) (map_one _)
  have hent : ∀ g : GLw n w, (∀ i j, M g i j ∈ R) ↔ ∀ i j, (g : Matrix (Fin n) (Fin n) (w.adicCompletion E)) i j ∈ Ov E w := by
    intro g
    refine forall_congr' fun i => forall_congr' fun j => ?_
    show e.symm _ ∈ R ↔ _
    rw [hint, RingEquiv.apply_symm_apply]
    exact (HeightOneSpectrum.mem_adicCompletionIntegers _ _ _).symm
  have hmem : ∀ g : UL n w, ∀ y, y ∈ unitLat e B ψ g ↔ ∀ i, (M ((g : GLw n w)⁻¹) *ᵥ ψ y) i ∈ R :=
    fun g y => Iff.rfl

  have hlat : unitLat e B ψ q = unitLat e B ψ q' ↔
      ∀ v : Fin n → K.E, ((∀ i, (M ((q : GLw n w)⁻¹) *ᵥ v) i ∈ R) ↔ ∀ i, (M ((q' : GLw n w)⁻¹) *ᵥ v) i ∈ R) := by
    rw [SetLike.ext_iff]
    constructor
    · intro h v
      have := h (ψ.symm v)
      rwa [hmem, hmem, LinearEquiv.apply_symm_apply] at this
    · intro h y
      rw [hmem, hmem]
      exact h (ψ y)

  have half : ∀ a b : GLw n w,
      (∀ v : Fin n → K.E, (∀ i, (M b⁻¹ *ᵥ v) i ∈ R) → ∀ i, (M a⁻¹ *ᵥ v) i ∈ R) ↔
      ∀ i j, M (a⁻¹ * b) i j ∈ R := by
    intro a b
    rw [← mulVec_int_iff]
    constructor
    · intro h u hu
      have h1 := h (M b *ᵥ u) (by
        rw [Matrix.mulVec_mulVec, ← hMmul, inv_mul_cancel, hM1, Matrix.one_mulVec]; exact hu)
      rwa [Matrix.mulVec_mulVec, ← hMmul] at h1
    · intro h v hv
      have h1 := h _ hv
      rwa [Matrix.mulVec_mulVec, ← hMmul, mul_assoc, mul_inv_cancel, mul_one] at h1
  have hKL : q⁻¹ * q' ∈ KL n w ↔
      ((q : GLw n w)⁻¹ * q') ∈ Formalism.UG.GLint (Fin n) (Ov E w) := by
    rw [KL, Subgroup.mem_subgroupOf]
    rfl
  rw [hKL, Formalism.UG.P.tjcosets_mem_K_iff, ← hent, ← hent, hlat]
  have hinv : ((q : GLw n w)⁻¹ * q')⁻¹ = (q' : GLw n w)⁻¹ * q := by group
  rw [hinv, ← half, ← half]
  constructor
  · intro h
    exact ⟨fun v hv => (h v).2 hv, fun v hv => (h v).1 hv⟩
  · intro h v
    exact ⟨h.2 v, h.1 v⟩

end GlobalTheory.InertUnitLat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeEqIffInvMulIntegral =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeEqIffInvMulIntegralStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeEqIffInvMulIntegralStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeEqIffInvMulIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

theorem _root_.GlobalTheory.T.unitaryLattice_eq_iff_inv_mul_integral : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ q q' : UL n w, unitLat e B ψ q = unitLat e B ψ q' ↔ q⁻¹ * q' ∈ KL n w := by
  first | exact @GlobalTheory.InertUnitLat.unitLat_eq_iff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeEqIffInvMulIntegralStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeIsLatticeSelfDualHermitianModel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeIsLatticeSelfDualHermitianModel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

noncomputable section

namespace GlobalTheory.InertUnitOrb.SelfDualLat

theorem stdH_eq_dot (K : UQ) {n : ℕ} (a b : Fin n → K.E) :
    stdH K n a b = a ⬝ᵥ (fun k => K.c (b k)) := rfl

theorem stdH_mulVec (K : UQ) {n : ℕ} (P : Matrix (Fin n) (Fin n) K.E)
    (hP : Pᵀ * P.map K.c = 1) (u v : Fin n → K.E) :
    stdH K n (P *ᵥ u) (P *ᵥ v) = stdH K n u v := by
  have hv : (fun k => K.c ((P *ᵥ v) k)) = P.map K.c *ᵥ (fun k => K.c (v k)) := by
    funext k
    exact RingHom.map_mulVec (K.c : K.E →+* K.E) P v k
  rw [stdH_eq_dot, stdH_eq_dot, hv, dotProduct_mulVec, ← vecMul_transpose, vecMul_vecMul, hP, vecMul_one]

theorem intVec_eq_range (K : UQ) (n : ℕ) :
    intVec K n = LinearMap.range ((Algebra.linearMap K.O K.E).compLeft (Fin n)) := by
  ext v
  constructor
  · intro hv
    have h := fun i => RingHom.mem_range.mp (hv i)
    choose o ho using h
    exact ⟨o, funext fun i => ho i⟩
  · rintro ⟨o, rfl⟩ i
    exact ⟨o i, rfl⟩

theorem intVec_fg (K : UQ) (n : ℕ) : (intVec K n).FG := by
  rw [intVec_eq_range, LinearMap.range_eq_map]
  exact Submodule.FG.map _ Module.Finite.fg_top

theorem single_mem_intVec (K : UQ) {n : ℕ} (i : Fin n) : (Pi.single i (1 : K.E) : Fin n → K.E) ∈ intVec K n := by
  intro j
  by_cases h : j = i
  · subst h; exact ⟨1, by simp⟩
  · exact ⟨0, by simp [h]⟩

theorem unitLat_isLat_selfDual : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ (x : B.Aˣ), B.σ (x : B.A) = x → (∀ y z, stdH K n (ψ y) (ψ z) = B.herm x y z) → ∀ q : UL n w, IsLat K.O K.E (unitLat e B ψ q) ∧ ∀ y, y ∈ unitLat e B ψ q ↔ ∀ z ∈ unitLat e B ψ q, B.herm x y z ∈ (algebraMap K.O K.E).range := by
  intro E _ _ _ _ w hns K e he hint n B ψ x hx hψ q
  set Qm : Matrix (Fin n) (Fin n) (w.adicCompletion E) :=
    (((q⁻¹ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)) with hQm
  have hmem : ∀ g : GLw n w, g ∈ UL n w → g ∈ UJ (cj w) 1 := by
    intro g hg
    simpa [UL, hns] using hg
  have hQ : cT (cj w) Qm * 1 * Qm = 1 := hmem _ (q⁻¹).2
  have h2 : (Qm.map (cj w))ᵀ * Qm = 1 := by simpa [cT] using hQ
  set P : Matrix (Fin n) (Fin n) K.E := Qm.map e.symm with hPdef
  have hPc : P.map K.c = (Qm.map (cj w)).map e.symm := by
    ext i j
    apply e.injective
    simp [hPdef, he]
  have hP1 : (P.map K.c)ᵀ * P = 1 := by
    have h3 := congrArg (e.symm.toRingHom.mapMatrix) h2
    simp only [map_mul, map_one, RingHom.mapMatrix_apply] at h3
    rw [hPc, hPdef, ← Matrix.transpose_map]
    simpa using h3
  have hPR : P * (P.map K.c)ᵀ = 1 := mul_eq_one_comm.mp hP1
  have hPT : Pᵀ * P.map K.c = 1 := by
    have h4 := congrArg Matrix.transpose hP1
    simpa [Matrix.transpose_mul] using h4
  let G : (Fin n → K.E) →ₗ[K.E] B.A := ψ.symm.toLinearMap ∘ₗ Matrix.toLin' (P.map K.c)ᵀ
  have hGP : ∀ y, G (P *ᵥ ψ y) = y := by
    intro y
    simp [G, Matrix.toLin'_apply, mulVec_mulVec, hP1]
  have hPG : ∀ a, P *ᵥ ψ (G a) = a := by
    intro a
    simp [G, Matrix.toLin'_apply, mulVec_mulVec, hPR]
  have hmemL : ∀ y, y ∈ unitLat e B ψ q ↔ P *ᵥ ψ y ∈ intVec K n := fun y => Iff.rfl
  have hmap : unitLat e B ψ q = (intVec K n).map (G.restrictScalars K.O) := by
    ext y
    rw [hmemL]
    constructor
    · intro hy
      exact ⟨P *ᵥ ψ y, hy, hGP y⟩
    · rintro ⟨a, ha, rfl⟩
      rw [LinearMap.restrictScalars_apply, hPG]
      exact ha
  refine ⟨⟨?_, ?_⟩, ?_⟩
  · rw [hmap]
    exact (intVec_fg K n).map _
  · apply top_unique
    intro y _
    rw [← hGP y, ← Finset.univ_sum_single (P *ᵥ ψ y), map_sum]
    apply Submodule.sum_mem
    intro i _
    have hi : G (Pi.single i (1 : K.E)) ∈ unitLat e B ψ q := by
      rw [hmemL, hPG]
      exact single_mem_intVec K i
    have hs : G (Pi.single i (1 : K.E)) ∈ Submodule.span K.E (unitLat e B ψ q : Set B.A) :=
      Submodule.subset_span hi
    have heq : Pi.single i ((P *ᵥ ψ y) i) = (P *ᵥ ψ y) i • Pi.single i (1 : K.E) := by
      ext j
      simp [Pi.single_apply]
    rw [heq, map_smul]
    exact Submodule.smul_mem _ _ hs
  · intro y
    rw [hmemL]
    constructor
    · intro hy z hz
      rw [hmemL] at hz
      rw [← hψ, ← stdH_mulVec K P hPT]
      unfold stdH
      apply Subring.sum_mem
      intro k _
      apply Subring.mul_mem _ (hy k)
      obtain ⟨o, ho⟩ := hz k
      obtain ⟨o', ho'⟩ := K.c_int o
      exact ⟨o', by rw [← ho, ho']⟩
    · intro h i
      have h5 := h (G (Pi.single i 1)) (by rw [hmemL, hPG]; exact single_mem_intVec K i)
      rw [← hψ, ← stdH_mulVec K P hPT, hPG] at h5
      simpa [stdH, Pi.single_apply, apply_ite] using h5

end GlobalTheory.InertUnitOrb.SelfDualLat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeIsLatticeSelfDualHermitianModel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeIsLatticeSelfDualHermitianModelStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeIsLatticeSelfDualHermitianModelStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeIsLatticeSelfDualHermitianModel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeIsLatticeSelfDualHermitianModelStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCount =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCount", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLat\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactPartCentralizerIffIntegralUnitsOfModelStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalUnitaryCentralizerEquivNormOneTorusStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrbitalIntegralIndicatorEqFinsumRelIndexStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexEqOfMulEquivSubgroupStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.SelfDualLatticeStandardHermitianStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLatticeStableIffConjIntegralStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeEqIffInvMulIntegralStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLatticeIsLatticeSelfDualHermitianModelStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

namespace GlobalTheory.InertUnitOrb
open GlobalTheory.UnitLemma
theorem unitLat_stable_iff : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ (γ : UL n w), (∀ y, ψ (B.g * y) = ((((γ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) *ᵥ ψ y) → ∀ q : UL n w, ((∀ y ∈ unitLat e B ψ q, B.g * y ∈ unitLat e B ψ q) ↔ q⁻¹ * γ * q ∈ KL n w) := GlobalTheory.T.unitLattice_stable_iff_conj_integral
theorem unitLat_eq_iff : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ q q' : UL n w, unitLat e B ψ q = unitLat e B ψ q' ↔ q⁻¹ * q' ∈ KL n w := GlobalTheory.T.unitaryLattice_eq_iff_inv_mul_integral
theorem exists_unitLat_eq : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ (x : B.Aˣ), B.σ (x : B.A) = x → (∀ y z, stdH K n (ψ y) (ψ z) = B.herm x y z) → ∀ L : Submodule K.O B.A, IsLat K.O K.E L → (∀ y, y ∈ L ↔ ∀ z ∈ L, B.herm x y z ∈ (algebraMap K.O K.E).range) → ∃ q : UL n w, unitLat e B ψ q = L := GlobalTheory.T.self_dual_lattice_standard_hermitian
end GlobalTheory.InertUnitOrb

namespace GlobalTheory.InertUnitOrb
open GlobalTheory.UnitLemma

theorem mem_mulLat_unit {O A : Type} [CommRing O] [CommRing A] [Algebra O A] (L : Submodule O A) (a : Aˣ) (y : A) :
    y ∈ mulLat O (a : A) L ↔ ((a⁻¹ : Aˣ) : A) * y ∈ L := by
  constructor
  · rintro ⟨z, hz, rfl⟩
    simpa [← mul_assoc] using hz
  · intro h
    exact ⟨((a⁻¹ : Aˣ) : A) * y, h, by simp [← mul_assoc]⟩

theorem mem_stabLat_iff : ∀ (O : Type) [CommRing O] (A : Type) [CommRing A] [Algebra O A] (L : Submodule O A) (u : Aˣ), u ∈ stabLat O L ↔ mulLat O (u : A) L = L := by
  intro O _ A _ _ L u
  constructor
  · intro h
    have h' : ∀ y, y ∈ L ↔ (u : A) * y ∈ L := h
    ext y
    rw [mem_mulLat_unit, h', ← mul_assoc, Units.mul_inv, one_mul]
  · intro h y
    have hy := mem_mulLat_unit L u ((u : A) * y)
    rw [h, ← mul_assoc, Units.inv_mul, one_mul] at hy
    exact hy.symm

theorem unitLat_mul : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : InvAlg K) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), ∀ (t q : UL n w) (a : B.Aˣ), (∀ y, ψ ((a : B.A) * y) = ((((t : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) *ᵥ ψ y) → unitLat e B ψ (t * q) = mulLat K.O (a : B.A) (unitLat e B ψ q) := by
  intro E _ _ _ hE w hw K e he hint n B ψ t q a ha
  have hmap : ∀ (g h : UL n w), ((((g * h : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) =
      (((g : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm *
        (((h : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm := by
    intro g h
    simp only [Subgroup.coe_mul, Units.val_mul]
    exact Matrix.map_mul (f := (e.symm : w.adicCompletion E →+* K.E))
  have hinv : ∀ y, ((((t⁻¹ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) *ᵥ ψ y =
      ψ (((a⁻¹ : B.Aˣ) : B.A) * y) := by
    intro y
    have h1 : ψ y = ((((t : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) *ᵥ
        ψ (((a⁻¹ : B.Aˣ) : B.A) * y) := by
      rw [← ha, ← mul_assoc, Units.mul_inv, one_mul]
    rw [h1, Matrix.mulVec_mulVec, ← hmap, inv_mul_cancel]
    simp
  have key : ∀ (r : UL n w) (z : B.A), z ∈ unitLat e B ψ r ↔
      ∀ i, (((((r⁻¹ : UL n w) : GLw n w) : Matrix (Fin n) (Fin n) (w.adicCompletion E)).map e.symm) *ᵥ ψ z) i ∈
        (algebraMap K.O K.E).range := fun r z => Iff.rfl
  ext y
  rw [key, _root_.mul_inv_rev, hmap, ← Matrix.mulVec_mulVec, hinv, ← key, mem_mulLat_unit]

end GlobalTheory.InertUnitOrb

namespace GlobalTheory.InertUnitOrb
open GlobalTheory.UnitLemma

theorem mulLat_one' {O A : Type} [CommRing O] [CommRing A] [Algebra O A] (L : Submodule O A) :
    mulLat O (1 : A) L = L := by
  simp [mulLat]

theorem mulLat_mul' {O A : Type} [CommRing O] [CommRing A] [Algebra O A] (a b : A) (L : Submodule O A) :
    mulLat O (a * b) L = mulLat O a (mulLat O b L) := by
  rw [mulLat, mulLat, mulLat, LinearMap.mulLeft_mul, Submodule.map_comp]

theorem orbRel_equivalence {O A : Type} [CommRing O] [CommRing A] [Algebra O A] (G : Subgroup Aˣ)
    (X : Set (Submodule O A)) :
    Equivalence (fun L M : X => ∃ t ∈ G, (M : Submodule O A) = mulLat O (t : A) (L : Submodule O A)) := by
  constructor
  · intro L
    exact ⟨1, G.one_mem, by simp [mulLat_one']⟩
  · rintro L M ⟨t, ht, h⟩
    refine ⟨t⁻¹, G.inv_mem ht, ?_⟩
    rw [h, ← mulLat_mul', Units.inv_mul, mulLat_one']
  · rintro L M N ⟨t, ht, h⟩ ⟨s, hs, h'⟩
    refine ⟨s * t, G.mul_mem hs ht, ?_⟩
    rw [h', h, Units.val_mul, mulLat_mul']

theorem ratCast_finsum' {α : Type} (f : α → ℚ) : ((∑ᶠ i, f i : ℚ) : ℂ) = ∑ᶠ i, ((f i : ℚ) : ℂ) := by
  by_cases h : (Function.support f).Finite
  · exact AddMonoidHom.map_finsum (Rat.castHom ℂ).toAddMonoidHom h
  · rw [finsum_of_infinite_support h, finsum_of_infinite_support]
    · simp
    · have : Function.support (fun i => ((f i : ℚ) : ℂ)) = Function.support f := by
        ext i; simp
      rwa [this]

theorem finsum_ite_subtype' {α M : Type} [AddCommMonoid M] (p : α → Prop) [DecidablePred p] (f : α → M) :
    ∑ᶠ i, (if p i then f i else 0) = ∑ᶠ i : Subtype p, f i := by
  rw [finsum_subtype_eq_finsum_cond]
  exact finsum_congr fun i => finsum_eq_if.symm

theorem orb_eq_N : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : GlobalTheory.UnitLemma.UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : GlobalTheory.UnitLemma.InvAlg K), B.P.Separable → ∀ (γ : UL n w) (x : B.Aˣ) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel B (γ.1.val.map e.symm) x ψ → twOrb (MonoidHom.id _) (KL n w) γ ((KL n w : Set (UL n w)).indicator 1) = ((B.N x : ℚ) : ℂ) := by
  intro E _ _ _ hE w hw K e he hint n B hsep γ x ψ hM
  obtain ⟨hx, hg, hh⟩ := hM
  obtain ⟨τ, hτ⟩ := _root_.GlobalTheory.CentTorusModel.cent_equiv_torus E hE w hw K e he hint n B ψ x γ ⟨hx, hg, hh⟩ hsep
  have hcpt := _root_.GlobalTheory.InertUnitOrb.cptPart_iff_intUnits_of_model E hE w hw K e he hint n B ψ x γ ⟨hx, hg, hh⟩ hsep τ hτ
  have hS1 := _root_.GlobalTheory.InertUnitOrb.SelfDualLat.unitLat_isLat_selfDual E hE w hw K e he hint n B ψ x hx hh
  have hS1b := _root_.GlobalTheory.InertUnitOrb.LatStable.unitLat_stable_iff E hE w hw K e he hint n B ψ γ hg
  have hS2 := _root_.GlobalTheory.InertUnitLat.unitLat_eq_iff E hE w hw K e he hint n B ψ
  have hS3 := _root_.GlobalTheory.InertUnitOrb.LatOnto.exists_unitLat_eq E hE w hw K e he hint n B ψ x hx hh
  have hS6 : ∀ (t : twCent (MonoidHom.id (UL n w)) γ) (q : UL n w),
      unitLat e B ψ ((t : UL n w) * q) = mulLat K.O ((τ t : B.Aˣ) : B.A) (unitLat e B ψ q) :=
    fun t q => unitLat_mul E hE w hw K e he hint n B ψ t q (τ t) (hτ t)
  have hcomm : ∀ s t : twCent (MonoidHom.id (UL n w)) γ, (s : UL n w) * t = t * s := by
    intro s t
    have h1 : τ (s * t) = τ (t * s) := by rw [map_mul, map_mul, mul_comm]
    have := congrArg Subtype.val (τ.injective h1)
    simpa using this
  have hX : ∀ q : UL n w, q⁻¹ * γ * q ∈ KL n w → unitLat e B ψ q ∈ B.X x := fun q hq =>
    ⟨(hS1 q).1, (hS1b q).2 hq, (hS1 q).2⟩
  have hrel : ∀ L M : B.X x, (Quot.mk _ L : Orb K.O B.T (B.X x)) = Quot.mk _ M →
      ∃ t ∈ B.T, (M : Submodule K.O B.A) = mulLat K.O (t : B.A) L := fun L M h =>
    (orbRel_equivalence B.T (B.X x)).eqvGen_iff.mp (Quot.eqvGen_exact h)
  have hcle : cptPart (twCent (MonoidHom.id (UL n w)) γ) ≤ twCent (MonoidHom.id (UL n w)) γ :=
    (Subgroup.closure_le _).mpr fun s hs => hs.1
  have hconj : ∀ (Q s : UL n w), s ∈ (KL n w).map (MulAut.conj Q).toMonoidHom ↔ Q⁻¹ * s * Q ∈ KL n w := by
    intro Q s
    rw [Subgroup.mem_map_equiv, MulAut.conj_symm_apply]
  rw [_root_.GlobalTheory.OrbIndUnit.twOrb_id_indicator]
  unfold InvAlg.N orbSum
  rw [ratCast_finsum']
  rw [finsum_ite_subtype']
  let φ : {q : DoubleCoset.Quotient (twCent (MonoidHom.id (UL n w)) γ : Set (UL n w)) (KL n w : Set (UL n w)) //
      (Quotient.out q)⁻¹ * γ * Quotient.out q ∈ KL n w} → Orb K.O B.T (B.X x) :=
    fun q => Quot.mk _ ⟨unitLat e B ψ (Quotient.out q.1), hX _ q.2⟩
  refine finsum_eq_of_bijective φ ⟨?_, ?_⟩ ?_
  · rintro ⟨q, hq⟩ ⟨q', hq'⟩ h
    obtain ⟨a, ha, hQ⟩ := hrel _ _ h
    set t := τ.symm ⟨a, ha⟩
    have hta : ((τ t : B.Aˣ) : B.A) = a := by simp [t]
    rw [← hta, ← hS6, hS2] at hQ
    apply Subtype.ext
    show q = q'
    rw [← DoubleCoset.out_eq' q, ← DoubleCoset.out_eq' q', DoubleCoset.eq]
    exact ⟨t, t.2, _, (KL n w).inv_mem hQ, by group⟩
  · intro o
    set R := Quot.out o
    obtain ⟨q0, hq0⟩ := hS3 R.1 R.2.1 R.2.2.2
    have hq0K : q0⁻¹ * γ * q0 ∈ KL n w := (hS1b q0).1 (hq0 ▸ R.2.2.1)
    obtain ⟨h, hh, k, hk, hout⟩ := DoubleCoset.mk_out_eq_mul (twCent (MonoidHom.id (UL n w)) γ) (KL n w) q0
    have hhγ : h * γ = γ * h := hh
    have hP : (Quotient.out (DoubleCoset.mk (twCent (MonoidHom.id (UL n w)) γ) (KL n w) q0))⁻¹ * γ *
        Quotient.out (DoubleCoset.mk (twCent (MonoidHom.id (UL n w)) γ) (KL n w) q0) ∈ KL n w := by
      rw [hout]
      have : (h * q0 * k)⁻¹ * γ * (h * q0 * k) = k⁻¹ * (q0⁻¹ * γ * q0) * k := by
        calc (h * q0 * k)⁻¹ * γ * (h * q0 * k) = k⁻¹ * q0⁻¹ * (h⁻¹ * (γ * h)) * q0 * k := by group
          _ = k⁻¹ * (q0⁻¹ * γ * q0) * k := by rw [← hhγ]; group
      rw [this]
      exact (KL n w).mul_mem ((KL n w).mul_mem ((KL n w).inv_mem hk) hq0K) hk
    refine ⟨⟨_, hP⟩, ?_⟩
    show Quot.mk _ _ = o
    rw [← Quot.out_eq o]
    refine (Quot.sound ?_).symm
    refine ⟨τ ⟨h, hh⟩, (τ ⟨h, hh⟩).2, ?_⟩
    show unitLat e B ψ _ = mulLat K.O _ R.1
    rw [hout, ← hq0, ← hS6]
    exact ((hS2 _ _).2 (by simpa [mul_assoc] using hk)).symm
  · rintro ⟨q, hq⟩
    set R := Quot.out (φ ⟨q, hq⟩)
    have hR : (Quot.mk _ R : Orb K.O B.T (B.X x)) = φ ⟨q, hq⟩ := Quot.out_eq _
    obtain ⟨a, ha, hRa⟩ := hrel _ _ hR.symm
    set t := τ.symm ⟨a, ha⟩
    have hta : ((τ t : B.Aˣ) : B.A) = a := by simp [t]
    rw [← hta, ← hS6] at hRa
    simp only [one_mul, Rat.cast_natCast]
    congr 1
    refine _root_.GlobalTheory.relIndex_eq_of_mulEquiv_subgroup (UL n w) B.Aˣ _ B.T τ _ _ (stabLat K.O R.1) (intUnits K.O B.A) inf_le_left hcle ?_ hcpt
    intro s
    rw [mem_stabLat_iff, hRa, ← hS6, hS2, Subgroup.mem_inf, hconj]
    simp only [SetLike.coe_mem, true_and]
    have : ((s : UL n w) * ((t : UL n w) * Quotient.out q))⁻¹ * ((t : UL n w) * Quotient.out q) =
        ((Quotient.out q)⁻¹ * s * Quotient.out q)⁻¹ := by
      rw [← mul_assoc (s : UL n w), hcomm s t]
      group
    rw [this]
    exact inv_mem_iff.symm

end GlobalTheory.InertUnitOrb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCount =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCountStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCountStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem _root_.GlobalTheory.T.inert_orbitalIntegral_unit_eq_lattice_count : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : GlobalTheory.UnitLemma.UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → ∀ (n : ℕ) (B : GlobalTheory.UnitLemma.InvAlg K), B.P.Separable → ∀ (γ : UL n w) (x : B.Aˣ) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel B (γ.1.val.map e.symm) x ψ → twOrb (MonoidHom.id _) (KL n w) γ ((KL n w : Set (UL n w)).indicator 1) = ((B.N x : ℚ) : ℂ) := by
  first | exact @GlobalTheory.InertUnitOrb.orb_eq_N
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCountStatement =====
