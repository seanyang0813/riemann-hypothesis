module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift
public import Formalism.LocalToGlobal.Columns.Adelic
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ValDetSubOneLt
public import Formalism.LocalToGlobal.Columns.RecLevelTop
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReferenceCharactersFactorTame
public import Development.AbelianVarietyTheory.Definitions.Foundations.ValuedAlgebraMapEqOne
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.TrueColumnChoicesHeckeCharReferenceEqOne
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemberLevelPrimeNotMemUnderLevelPrimes
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PointDeterminantEqNormOneClassOfLevel
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistPrimesReferenceTupleEqEmpty
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StdLvPr
public import Formalism.LocalToGlobal.HermitianForms.ExtraSym
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LevOkTwists
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RelDetAdelicOfPinned
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetMulConjDet
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
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Algebra.Group.Units
import Mathlib.Topology.Sheaves.Init
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemKDSupUnitIdlIff

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenKerNormOneFiniteAdeleDetClass, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenKerNormOneFiniteAdeleDetClassStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormOneIntegralIffConjugateValuationsEq, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormOneIntegralIffConjugateValuationsEqStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemberLevelPrimeNotMemUnderLevelPrimesStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PointDeterminantEqNormOneClassOfLevelStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RationalNormOneClassEqFiniteAdelicDetClass, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RationalNormOneClassEqFiniteAdelicDetClassStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistPrimesReferenceTupleEqEmptyStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFullHermitianColumnsTrueColumns

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenKerNormOneFiniteAdeleDetClass =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenKerNormOneFiniteAdeleDetClass", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift\npublic import Formalism.LocalToGlobal.Columns.Adelic\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetMulConjDet\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ValDetSubOneLt\npublic import Formalism.LocalToGlobal.Columns.RecLevelTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.FullDt ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open scoped TensorProduct Topology

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Mem.Col2.FullDt

attribute [local instance] rlt_top rlt_topRing adeles_t2Space

variable {R : Ranks} {H : Formalism.BasicNotions.Host R} {SG SQ : Finset (HeightOneSpectrum (𝓞 H.E))}

end GlobalTheory.Mem.Col2.FullDt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenKerNormOneFiniteAdeleDetClass =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenKerNormOneFiniteAdeleDetClassStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenKerNormOneFiniteAdeleDetClassStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenKerNormOneFiniteAdeleDetClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.FullDt ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenKerNormOneFiniteAdeleDetClassStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormOneIntegralIffConjugateValuationsEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormOneIntegralIffConjugateValuationsEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReferenceCharactersFactorTame\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ValuedAlgebraMapEqOne\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ValDetSubOneLt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.FullDt ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section
namespace GlobalTheory.Mem.Col2.FullDt
section Gen
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] [StarRing E]
  (hc : Formalism.BasicNotions.CMData F E)

theorem mem_u1int_iff_entry (u : GL (Fin 1) (AfE F E)) :
    u ∈ Formalism.L2.Herm.IntegralUnitGroup hc ↔ u ∈ Formalism.L2.Herm.unitaryOneFiniteAdeles hc ∧ ∀ y : Fin 1 → AfE F E,
      (y 0 ∈ RInt F E ↔ (u : Matrix (Fin 1) (Fin 1) (AfE F E)) 0 0 * y 0 ∈ RInt F E) := by
  have hl : ∀ y : Fin 1 → AfE F E, y ∈ (Formalism.UG.stdLat (n := Fin 1) ↥(RInt F E) : Submodule ↥(RInt F E) (Fin 1 → AfE F E)) ↔
      y 0 ∈ RInt F E := by
    intro y
    simp only [Formalism.UG.stdLat, Submodule.mem_pi, Set.mem_univ, true_implies, Fin.forall_fin_one]
    exact ⟨fun ⟨r, hr⟩ => hr ▸ r.2, fun h => ⟨⟨_, h⟩, rfl⟩⟩
  show u ∈ Formalism.UG.UJ _ _ ⊓ Formalism.UG.stabGL _ ↔ _
  rw [Subgroup.mem_inf]
  refine and_congr Iff.rfl ?_
  show (∀ y, _ ↔ _) ↔ _
  refine forall_congr' fun y => ?_
  rw [hl, hl]
  simp [Matrix.mulVec, dotProduct]


omit [StarRing E] in
theorem rInt_mul_iff {c d : AfE F E} (hcd : c * d = 1) :
    (∀ y : AfE F E, y ∈ RInt F E ↔ c * y ∈ RInt F E) ↔ ∀ P : HeightOneSpectrum (𝓞 E), Valued.v (adAt F P c) = 1 := by
  constructor
  · intro h P
    have hc1 : c ∈ RInt F E := by simpa using (h 1).1 (one_mem _)
    have hd1 : d ∈ RInt F E := (h d).2 (by rw [hcd]; exact one_mem _)
    have a1 := (mem_rInt_iff F E c).1 hc1 P
    have a2 := (mem_rInt_iff F E d).1 hd1 P
    rw [← adAt_apply] at a1 a2
    have e : Valued.v (adAt F P c) * Valued.v (adAt F P d) = 1 := by rw [← map_mul, ← map_mul, hcd, map_one, map_one]
    refine le_antisymm a1 ?_
    rw [← e]
    exact mul_le_of_le_one_right' a2
  · intro h y
    rw [mem_rInt_iff, mem_rInt_iff]
    refine forall_congr' fun P => ?_
    rw [← adAt_apply, ← adAt_apply, map_mul, map_mul, h P, one_mul]
end Gen

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem mem_u1int_iff_val : ∀ (R : Ranks) (H : Formalism.BasicNotions.Host R) (x : Formalism.L2.Herm.unitaryOneFiniteAdeles (host_cmData R H)) (a : GlobalTheory.Mem.Chr.Ideles H.E),
    IsDetLift (host_cmData R H) x.1 a → ((x.1 ∈ Formalism.L2.Herm.IntegralUnitGroup (host_cmData R H)) ↔
      ∀ w : HeightOneSpectrum (𝓞 H.E), Valued.v (compAt w a) = Valued.v (compAt (conjPrime₂ w) a)) := by
  intro R H x a ha
  have hcd : ((x.1 : Matrix (Fin 1) (Fin 1) (AfE H.F H.E)) 0 0) * ((x.1⁻¹ : GL (Fin 1) (AfE H.F H.E)) : Matrix (Fin 1) (Fin 1) (AfE H.F H.E)) 0 0 = 1 := by
    have := congrArg (fun M : Matrix (Fin 1) (Fin 1) (AfE H.F H.E) => M 0 0) (Units.mul_inv x.1)
    simpa [Matrix.mul_apply] using this
  rw [mem_u1int_iff_entry, and_iff_right x.2]
  have e1 : (∀ y : Fin 1 → AfE H.F H.E, (y 0 ∈ RInt H.F H.E ↔ (x.1 : Matrix (Fin 1) (Fin 1) (AfE H.F H.E)) 0 0 * y 0 ∈ RInt H.F H.E)) ↔
      ∀ y : AfE H.F H.E, (y ∈ RInt H.F H.E ↔ (x.1 : Matrix (Fin 1) (Fin 1) (AfE H.F H.E)) 0 0 * y ∈ RInt H.F H.E) :=
    ⟨fun h y => h fun _ => y, fun h y => h (y 0)⟩
  rw [e1, rInt_mul_iff hcd]
  refine forall_congr' fun w => ?_
  have k := congrArg Valued.v (DetSpec.compAt_eq ha w)
  rw [map_mul, valued_sigR, adAt_finAf, Matrix.det_fin_one] at k
  rw [k]
  have h0 := DetSpec.val_compAt_ne (conjPrime₂ w) a
  constructor
  · intro h; rw [h, one_mul]
  · intro h
    exact (mul_eq_right₀ h0).1 h
end GlobalTheory.Mem.Col2.FullDt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormOneIntegralIffConjugateValuationsEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormOneIntegralIffConjugateValuationsEqStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormOneIntegralIffConjugateValuationsEqStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReferenceCharactersFactorTame\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ValuedAlgebraMapEqOne\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormOneIntegralIffConjugateValuationsEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.FullDt ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.mem_normOneIntegral_iff_conjugate_valuations_eq : ∀ (R : Ranks) (H : Formalism.BasicNotions.Host R) (x : Formalism.L2.Herm.unitaryOneFiniteAdeles (host_cmData R H)) (a : GlobalTheory.Mem.Chr.Ideles H.E), IsDetLift (host_cmData R H) x.1 a → ((x.1 ∈ Formalism.L2.Herm.IntegralUnitGroup (host_cmData R H)) ↔ ∀ w : HeightOneSpectrum (𝓞 H.E), Valued.v (compAt w a) = Valued.v (compAt (conjPrime₂ w) a)) := by
  first | exact @GlobalTheory.Mem.Col2.FullDt.mem_u1int_iff_val
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormOneIntegralIffConjugateValuationsEqStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemberLevelPrimeNotMemUnderLevelPrimesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemberLevelPrimeNotMemUnderLevelPrimesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.TrueColumnChoicesHeckeCharReferenceEqOne\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemberLevelPrimeNotMemUnderLevelPrimes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.FullDt ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.memberLevelPrime_not_mem_under_levelPrimes : ∀ (B : Base) (X : PreX B.toPre) (I : ColIn B X), I.Ok → ∀ (u : B.Word) (P : HeightOneSpectrum (𝓞 B.host.E)), P ∈ uSG (B.primes X).vGs I.SQ → (B.T u : 𝓞 B.host.F) ∉ (P.under (𝓞 B.host.F)).asIdeal := by
  first | exact @GlobalTheory.Mem.LevTwist.T_notMem_under_uSG
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemberLevelPrimeNotMemUnderLevelPrimesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PointDeterminantEqNormOneClassOfLevelStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PointDeterminantEqNormOneClassOfLevelStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PointDeterminantEqNormOneClassOfLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.FullDt ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PointDeterminantEqNormOneClassOfLevelStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RationalNormOneClassEqFiniteAdelicDetClass =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RationalNormOneClassEqFiniteAdelicDetClass", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.FullDt ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Mem.Col2.FullDt

theorem e1Q_eq_u1Dt_of_det_eq : ∀ (R : Ranks) (H : Formalism.BasicNotions.Host R) (SQ : Finset (HeightOneSpectrum (𝓞 H.E))) (z : unitary H.E) (x : Formalism.L2.Herm.unitaryOneFiniteAdeles (host_cmData R H)), Matrix.GeneralLinearGroup.det x.1 = Formalism.L2.Herm.unitaryOneRationalAdele H.F z → e1Q H SQ z = u1Dt H SQ x := by
  intro R H SQ z x hx
  obtain ⟨k, hk⟩ := exists_eq_div_conj H z
  rw [← isUnitaryPointsMap_unitaryRationalPointsFiner H SQ k z hk]
  symm
  apply normOneFiniteAdeleDetClass_of_isDetLift
  unfold IsDetLift
  rw [hx]
  have hf : finAf H.F H.E (Neutral.B1.diagUnits H.E k) = Units.map (Formalism.UG.inclE (F := H.F) (FiniteAdeleRing (𝓞 H.F) H.F)).toMonoidHom k := by
    apply Units.ext
    apply (afIso H.F H.E).injective
    rw [afIso_finAf]
    show _ = afIso H.F H.E ((k : H.E) ⊗ₜ[H.F] 1)
    rw [afIso_tmul_one]
    rfl
  rw [hf]
  have key : Formalism.L2.Herm.unitaryOneRationalAdele H.F z * conjId (host_cmData R H).sig
      (Units.map (Formalism.UG.inclE (F := H.F) (FiniteAdeleRing (𝓞 H.F) H.F)).toMonoidHom k) =
      Units.map (Formalism.UG.inclE (F := H.F) (FiniteAdeleRing (𝓞 H.F) H.F)).toMonoidHom k := by
    apply Units.ext
    show Formalism.UG.inclE (F := H.F) (FiniteAdeleRing (𝓞 H.F) H.F) (z : H.E) *
      Formalism.UG.sigR (host_cmData R H).sig _ (Formalism.UG.inclE (F := H.F) (FiniteAdeleRing (𝓞 H.F) H.F) (k : H.E)) =
      Formalism.UG.inclE (F := H.F) (FiniteAdeleRing (𝓞 H.F) H.F) (k : H.E)
    rw [sigR_inclE, ← map_mul, bridge_star_holds R H, hk]
  rw [h90, MonoidHom.div_apply, MonoidHom.id_apply, div_eq_iff_eq_mul]
  exact key.symm

end GlobalTheory.Mem.Col2.FullDt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RationalNormOneClassEqFiniteAdelicDetClass =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RationalNormOneClassEqFiniteAdelicDetClassStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RationalNormOneClassEqFiniteAdelicDetClassStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RationalNormOneClassEqFiniteAdelicDetClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.FullDt ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.rationalNormOne_class_eq_finiteAdelic_det_class : ∀ (R : Ranks) (H : Formalism.BasicNotions.Host R) (SQ : Finset (HeightOneSpectrum (𝓞 H.E))) (z : unitary H.E) (x : Formalism.L2.Herm.unitaryOneFiniteAdeles (host_cmData R H)), Matrix.GeneralLinearGroup.det x.1 = Formalism.L2.Herm.unitaryOneRationalAdele H.F z → e1Q H SQ z = u1Dt H SQ x := by
  first | exact @GlobalTheory.Mem.Col2.FullDt.e1Q_eq_u1Dt_of_det_eq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RationalNormOneClassEqFiniteAdelicDetClassStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistPrimesReferenceTupleEqEmptyStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistPrimesReferenceTupleEqEmptyStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.TrueColumnChoicesHeckeCharReferenceEqOne\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistPrimesReferenceTupleEqEmpty\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.FullDt ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.q_mu0_eq_empty : ∀ (B : Base) (X : PreX B.toPre) (I : ColIn B X), I.Q I.mu0 = ∅ := by
  first | exact @GlobalTheory.Mem.Col2.RefTup.twistPrimes_reference_tuple_eq_empty
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistPrimesReferenceTupleEqEmptyStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFullHermitianColumnsTrueColumns =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFullHermitianColumnsTrueColumns", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormOneFiniteAdeleDetClassOfIsDetLift\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StdLvPr\npublic import Formalism.LocalToGlobal.HermitianForms.ExtraSym\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsOpenKerNormOneFiniteAdeleDetClassStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LevOkTwists\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemKDSupUnitIdlIff\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormOneIntegralIffConjugateValuationsEqStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemberLevelPrimeNotMemUnderLevelPrimesStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PointDeterminantEqNormOneClassOfLevelStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RationalNormOneClassEqFiniteAdelicDetClassStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RelDetAdelicOfPinned\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TwistPrimesReferenceTupleEqEmptyStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.FullDt ReciprocityTheory.Neutral.Bridge.HCFR Neutral.B1
open scoped TensorProduct

namespace GlobalTheory.Mem.Col2.FullDt

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Gen

variable {R : Ranks} (H : Formalism.BasicNotions.Host R) (SQ : Finset (HeightOneSpectrum (𝓞 H.E)))

theorem mem_integralNormOne_of_normOneDetClass_eq_one (x : Formalism.L2.Herm.unitaryOneFiniteAdeles (host_cmData R H)) (h : u1Dt H SQ x = 1) :
    x.1 ∈ Formalism.L2.Herm.IntegralUnitGroup (host_cmData R H) := by
  obtain ⟨a, ha⟩ := exists_lift H x
  have e : (QuotientGroup.mk a : DtQ H SQ) = 1 := (normOneFiniteAdeleDetClass_of_isDetLift H SQ x a ha).symm.trans h
  have ha' : a ∈ KDq H SQ := (QuotientGroup.eq_one_iff a).1 e
  refine (GlobalTheory.T.mem_normOneIntegral_iff_conjugate_valuations_eq R H x a ha).2 fun w => ?_
  exact (GlobalTheory.Mem.Chr.mem_KD_sup_unitIdl_iff R H a).1 (Subgroup.mem_sup_left (KDq_le_KD H SQ ha')) w (conjPrime₂ w)
    ((isConjPl_iff H w _).2 rfl)

theorem unitIdeleImage_eq_map_integralNormOne : UOQ H SQ = ((Formalism.L2.Herm.IntegralUnitGroup (host_cmData R H)).subgroupOf (Formalism.L2.Herm.unitaryOneFiniteAdeles (host_cmData R H))).map (u1Dt H SQ) := by
  ext t
  constructor
  · rintro ⟨a, ha, rfl⟩
    obtain ⟨x, hx⟩ := exists_of_idele H a
    refine ⟨x, ?_, normOneFiniteAdeleDetClass_of_isDetLift H SQ x a hx⟩
    refine (GlobalTheory.T.mem_normOneIntegral_iff_conjugate_valuations_eq R H x a hx).2 fun w => ?_
    exact (ha w).trans (ha (conjPrime₂ w)).symm
  · rintro ⟨x, hx, rfl⟩
    obtain ⟨a, ha⟩ := exists_lift H x
    rw [normOneFiniteAdeleDetClass_of_isDetLift H SQ x a ha, mk_mem_UOQ, KDq_sup_unitIdl]
    refine (GlobalTheory.Mem.Chr.mem_KD_sup_unitIdl_iff R H a).2 fun w w' hw => ?_
    rw [(isConjPl_iff H w w').1 hw]
    exact (GlobalTheory.T.mem_normOneIntegral_iff_conjugate_valuations_eq R H x a ha).1 hx w

end Gen

section Main

open Formalism.UG Formalism.L2.Forms GlobalTheory.Mem.Col2.TC
attribute [local instance] GlobalTheory.Mem.Col2.starE

variable {B : GlobalTheory.Mem.Base} {X : PreX B.toPre} (I : TC B X)

theorem detPt_of_reads (hI : I.Ok) (u : B.Word) (i : ℕ) {Ch : Type} {chOf : (I.stp u I.mu0 i).Cl → Ch}
    {Lb : Ch → Submodule (𝓞 B.host.E) (Fin (B.R.N i) → B.host.E)} {U : Ch → Subgroup (GA B (B.R.N i))} {chi : ∀ β, U β →* ℂˣ}
    {y : (I.stp u I.mu0 i).Cl → GA B (B.R.N i)} {st : ∀ c, (I.stp u I.mu0 i).Stab c → GL (Fin (B.R.N i)) B.host.E}
    {k : Ch → GA B (B.R.N i)} (hR : I.Reads u I.mu0 i chOf Lb U chi y st k) (c : (I.stp u I.mu0 i).Cl)
    (x : Formalism.L2.Herm.unitaryOneFiniteAdeles (host_cmData B.R B.host))
    (hx : Matrix.GeneralLinearGroup.det x.1 = Matrix.GeneralLinearGroup.det (y c)) :
    detPt B.host I.SQ ((I.stp u I.mu0 i).rep c).1.1 = u1Dt B.host I.SQ x := by
  obtain ⟨p, hp, hN⟩ := hR.k_std (chOf c)
  refine _root_.GlobalTheory.Mem.Col2.FullDt.detPt_eq_u1Dt_of_level B.R B.host _ _ _ _ I.SQ _ (y c) (k (chOf c)) x (GlobalTheory.Mem.LevTwist.levOk_twists B X I hI).1 (hR.pt c) hp.uni
    (hN ▸ hp.lat) (fun P hP => ?_) hx
  refine hR.k_off _ _ (GlobalTheory.T.memberLevelPrime_not_mem_under_levelPrimes B X I hI u P hP) ?_ (Or.inl rfl)
  rintro ⟨Q, hQ, -⟩
  rw [GlobalTheory.T.q_mu0_eq_empty B X I] at hQ
  exact absurd hQ (Finset.notMem_empty Q)

theorem det_reGL {a b : ℕ} (h : a = b) {A : Type} [CommRing A] (g : GL (Fin a) A) :
    Matrix.GeneralLinearGroup.det (reGL h A g) = Matrix.GeneralLinearGroup.det g := by
  subst h
  refine Units.ext ?_
  simp [reGL, Matrix.GeneralLinearGroup.det]

variable (l : I.Laws) (Z : TC.Later B (I.cols l)) (C : ColsTiedSym (I.rec7 l Z))


def hermS (_hI : I.Ok) (_hS : I.StdC l Z C) : Formalism.L2.Herm.SymmetricHermitianColumns (I.rec7 l Z) :=
  { C.herm.base with
    dt := u1Dt B.host I.SQ
    dt_ker := mem_integralNormOne_of_normOneDetClass_eq_one B.host I.SQ
    dt_UO := unitIdeleImage_eq_map_integralNormOne B.host I.SQ
    dt_rat := fun z x h => GlobalTheory.T.rationalNormOne_class_eq_finiteAdelic_det_class B.R B.host I.SQ z x h }

theorem relDet_std (hI : I.Ok) (hS : I.StdC l Z C) : Formalism.L2.Herm.SymmetricRelativeDeterminant (I.rec7 l Z) (hermS I l Z C hI hS) := by
  intro N L L' g _ hg x hx
  obtain ⟨idl, hp⟩ := GlobalTheory.Mem.NormOneIdeal.pinned_of_finer (I.rec7 l Z) I.SQ (MulEquiv.refl _)
    (by ext t; exact ⟨fun h => ⟨t, h, rfl⟩, fun ⟨_, h, e⟩ => e ▸ h⟩) (fun _ => rfl)
    (fun N L L' t h => h)
  exact GlobalTheory.Mem.NormOneIdeal.relDet_eq_of_pinned (I.rec7 l Z) idl hp _ (hermS I l Z C hI hS).dt (hermS I l Z C hI hS).dt_ker
    (hermS I l Z C hI hS).dt_UO (hermS I l Z C hI hS).dt_rat L L' g x hg hx

/-- Full data over given columns, once the compatibilities not recorded in `ColsHermS` are supplied. -/
theorem exists_colsFullS_of_compat (hI : I.Ok) (hS : I.StdC l Z C)
    (g : Formalism.L2.Herm.SymmetricGroupCompatibility (I.rec7 l Z) C.herm.base)
    (ad : Formalism.L2.Herm.SymmetricAdelicCompatibility (I.rec7 l Z) C.herm.base C.herm.atT)
    (cof : Formalism.L2.Herm.SymmetricCofactorCompatibility (I.rec7 l Z) C.herm.base C.herm.atT)
    (stabMap : Formalism.L2.Herm.SymmetricStabilizerMapCompatibility (I.rec7 l Z) C.herm.base C.herm.atT)
    (fvI : Formalism.L2.Herm.SymmetricResidueFieldLevels (I.rec7 l Z) C.herm.base C.herm.atT) :
    ∃ Fu : ColsFullS C, HEq Fu.1.g g ∧ I.StdDt l Z Fu.1.base.dt := by
  let Fu : Formalism.L2.Herm.FullTiedS (I.rec7 l Z) :=
    { base := hermS I l Z C hI hS
      atT := C.herm.atT
      levelZeroCompatibility := C.herm.levelZeroCompatibility
      g := g
      ad := ad
      cof := cof
      piG := C.herm.piG
      stabMap := stabMap
      fvI := fvI
      relDet := relDet_std I l Z C hI hS
      std := C.herm.std
      baseL := C.herm.baseL }
  refine ⟨⟨Fu, rfl⟩, HEq.rfl, ?_⟩
  intro x a ha
  exact normOneFiniteAdeleDetClass_of_isDetLift B.host I.SQ x a ha

/-- `ColsHermS` does not determine the adelic compatibility of its level-prime moves, so the
level-prime data is chosen again: the new columns have the same base and the same forms.
`hA` is `GlobalTheory.T.exists_hermitian_data_carT_of_std I hI hP l Z C.herm.base C.forms` and
`hB` is `GlobalTheory.T.hermitianColumns_generators_baseLattices_functionals I hI hP l Z C.herm.base C.forms`. -/
theorem exists_colsFullS : ∀ {B : GlobalTheory.Mem.Base} {X : PreX B.toPre} (I : TC B X), I.Ok → TC.Pins B X → ∀ (l : I.Laws) (Z : TC.Later B (I.cols l)), ∀ (C : ColsTiedSym (I.rec7 l Z)) (g : Formalism.L2.Herm.SymmetricGroupCompatibility (I.rec7 l Z) C.herm.base), I.StdC l Z C → (∀ u, I.StdLvC l Z u (C.forms u)) →
    ∀ (_hA : (∀ u, I.StdF l Z u (C.forms u) ∧ I.StdLvC l Z u (C.forms u)) → CarH C.herm.base C.forms →
        ∃ A, CarT C.herm.base C.forms A ∧ Formalism.L2.Herm.SymmetricAdelicCompatibility (I.rec7 l Z) C.herm.base A ∧
          Formalism.L2.Herm.SymmetricStabilizerMapCompatibility (I.rec7 l Z) C.herm.base A)
      (_hB : ∀ A : ∀ u, Formalism.L2.Herm.AtT (I.rec7 l Z) u (C.herm.base.vT u) (C.herm.base.Fv u),
        (∀ u, I.StdF l Z u (C.forms u) ∧ I.StdLvC l Z u (C.forms u)) → CarH C.herm.base C.forms → CarT C.herm.base C.forms A →
        (∀ u (w : HeightOneSpectrum (𝓞 (I.rec7 l Z).host.F)) (h : ((((I.rec7 l Z).mem u).A.T : ℕ) : 𝓞 (I.rec7 l Z).host.F) ∈ w.asIdeal) (a : intV (I.rec7 l Z).host.E w), (a : TensorProduct (I.rec7 l Z).host.F (I.rec7 l Z).host.E (w.adicCompletion (I.rec7 l Z).host.F)) = inclE (F := (I.rec7 l Z).host.F) (w.adicCompletion (I.rec7 l Z).host.F) ((A u).piU : (I.rec7 l Z).host.E) → ∀ m : (C.herm.base.lev0 u).fM w h, a • m = 0) →
        Formalism.L2.Herm.SymmetricCofactorCompatibility (I.rec7 l Z) C.herm.base A ∧
          Formalism.L2.Herm.SymmetricBaseCompatibility (I.rec7 l Z) C.herm.base A ∧
          Nonempty (Formalism.L2.Herm.SymmetricResidueFieldLevels (I.rec7 l Z) C.herm.base A) ∧
          ∃ X0 : Formalism.L2.Herm.SymmetricLevelZeroData (I.rec7 l Z) C.herm.base A, ∀ u, (X0 u).piG = X.piG),
    ∃ C' : ColsTiedSym (I.rec7 l Z),
      (⟨C'.herm.base, C'.forms⟩ : Σ H : Formalism.L2.Herm.HermColsCh (I.rec7 l Z), ∀ u, FormsTiedSym (I.rec7 l Z) u (H.Ch u) (H.chOf u)) = ⟨C.herm.base, C.forms⟩ ∧
      I.StdC l Z C' ∧ (∀ u, I.StdLvC l Z u (C'.forms u)) ∧
      ∃ Fu : ColsFullS C', HEq Fu.1.g g ∧ I.StdDt l Z Fu.1.base.dt := by
  intro B X I hI hP l Z C g hS hL hA hB
  have hF : ∀ u, I.StdF l Z u (C.forms u) ∧ I.StdLvC l Z u (C.forms u) := fun u => ⟨hS u, hL u⟩
  have hH : CarH C.herm.base C.forms :=
    { eV := C.eV
      fv := fun u v a => by rw [C.res u]; exact (C.herm.atT u).res_F v a
      car0 := C.car0
      carC := C.carC
      carM := C.carM
      sp := C.sp
      fr0 := C.fr0 }
  obtain ⟨A, hT, hAd, hSt⟩ := hA hF hH
  have hpi : ∀ u, (A u).piU = (C.herm.atT u).piU := fun u => (hT.piU u).symm.trans (C.piU u)
  obtain ⟨hCof, hBase, ⟨hFv⟩, X0, hX0⟩ := hB A hF hH hT
    (fun u w h a ha m => (C.herm.levelZeroCompatibility u).fM_pi w h a (by rw [ha, hpi u]) m)
  let C' : ColsTiedSym (I.rec7 l Z) :=
    { herm :=
        { base := C.herm.base
          atT := A
          levelZeroCompatibility := X0
          piG := fun u u' => by rw [hX0 u, hX0 u']
          std := C.herm.std
          baseL := hBase }
      forms := C.forms
      eV := C.eV
      piU := hT.piU
      res := hT.res
      car0 := C.car0
      carC := C.carC
      carM := C.carM
      carP := hT.carP
      lattice₂ := hT.lattice₂
      pr := hT.pr
      prk := hT.prk
      prC := hT.prC
      z0 := hT.z0
      ga := hT.ga
      sp := C.sp
      piG := fun u => by rw [hX0 u]; exact (hS u).gl.piG
      fr0 := C.fr0
      gl_const := C.gl_const
      chi := C.chi
      frame_level_zero_const := C.frame_level_zero_const
      frP_const := C.frP_const }
  exact ⟨C', rfl, hS, hL,exists_colsFullS_of_compat I l Z C' hI hS g hAd hCof hSt hFv⟩

end Main

end GlobalTheory.Mem.Col2.FullDt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFullHermitianColumnsTrueColumns =====
