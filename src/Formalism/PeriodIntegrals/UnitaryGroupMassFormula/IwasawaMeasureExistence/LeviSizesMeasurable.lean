module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirVolumeRatios.DetNorm
public import Mathlib.RingTheory.DedekindDomain.FiniteAdeleRing
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
public import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
public import Mathlib.Topology.Algebra.Valued.LocallyCompact
public import Formalism.SharpRestriction.CuspSpanNormBounds.GlobAut
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.T2SpaceFiniteAdelesExt
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.CartierFrobeniusFormLocal
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RrgCountableField

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.AlgebraMapIntMemIntAd, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.T2SpaceFiniteAdeleRing, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.NatSmulMulEq, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.LeviSizesMeasurable

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.AlgebraMapIntMemIntAd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.AlgebraMapIntMemIntAd", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirVolumeRatios.DetNorm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.IwaMeasEx.Nrm

open NumberField IsDedekindDomain
open scoped TensorProduct nonZeroDivisors
open Formalism.MainNotions.S

section Gen

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]


end Gen

section Unit

open Formalism.L2.S.S7.GLOne

variable (I : AutInst)

abbrev iE : I.E →+* AEf I := Formalism.UG.inclE (F := I.F) (Af I.F)

end Unit

end PI.IwaMeasEx.Nrm

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.AlgebraMapIntMemIntAd =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.T2SpaceFiniteAdeleRing =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.T2SpaceFiniteAdeleRing", "h": "module\n\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.CartierFrobeniusFormLocal\npublic import Mathlib.RingTheory.DedekindDomain.FiniteAdeleRing\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\npublic import Mathlib.Topology.Algebra.Valued.LocallyCompact\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.IwaMeasEx.Wau

open IsDedekindDomain IsDedekindDomain.HeightOneSpectrum NumberField Topology

variable {F : Type} [Field F] [NumberField F]

theorem finite_residue (v : HeightOneSpectrum (𝓞 F)) :
    Finite (IsLocalRing.ResidueField (Valued.integer (v.adicCompletion F))) := by
  apply PI.WAU.finite_residue

theorem compactSpace_integer (v : HeightOneSpectrum (𝓞 F)) :
    CompactSpace (Valued.integer (v.adicCompletion F)) := by
  rw [Valued.integer.compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField]
  refine ⟨?_, ?_, finite_residue v⟩
  · exact (Valued.isClosed_integer (R := v.adicCompletion F)).completeSpace_coe
  · exact inferInstanceAs (IsDiscreteValuationRing (v.adicCompletionIntegers F))

theorem isCompact_Ov (v : HeightOneSpectrum (𝓞 F)) :
    IsCompact (v.adicCompletionIntegers F : Set (v.adicCompletion F)) := by
  have := compactSpace_integer v
  exact isCompact_iff_compactSpace.mpr this

def Ohat (F : Type) [Field F] [NumberField F] : Set (FiniteAdeleRing (𝓞 F) F) :=
  {a | ∀ v, a v ∈ v.adicCompletionIntegers F}

theorem isOpen_Ohat : IsOpen (Ohat F) :=
  RestrictedProduct.isOpen_forall_mem (R := fun v : HeightOneSpectrum (𝓞 F) => v.adicCompletion F)
    (A := fun v => (v.adicCompletionIntegers F : Set (v.adicCompletion F)))
    (fun _ ↦ Valued.isOpen_valuationSubring _)

instance compactSpace_Ov' (v : HeightOneSpectrum (𝓞 F)) :
    CompactSpace ((v.adicCompletionIntegers F : Set (v.adicCompletion F))) :=
  isCompact_iff_compactSpace.mp (isCompact_Ov v)

theorem isCompact_Ohat : IsCompact (Ohat F) := by
  have hc : Continuous (RestrictedProduct.structureMap (fun v : HeightOneSpectrum (𝓞 F) => v.adicCompletion F)
      (fun v => (v.adicCompletionIntegers F : Set (v.adicCompletion F))) Filter.cofinite) :=
    RestrictedProduct.isEmbedding_structureMap.continuous
  have : Ohat F = Set.range (RestrictedProduct.structureMap (fun v : HeightOneSpectrum (𝓞 F) => v.adicCompletion F)
      (fun v => (v.adicCompletionIntegers F : Set (v.adicCompletion F))) Filter.cofinite) := by
    ext a
    constructor
    · intro ha
      exact ⟨fun v => ⟨a v, ha v⟩, rfl⟩
    · rintro ⟨x, rfl⟩ v
      exact (x v).2
  rw [this]
  exact isCompact_range hc

end PI.IwaMeasEx.Wau

end

noncomputable section

namespace PI.IwaMeasEx.Wau

open scoped TensorProduct

variable {F E B : Type} [Field F] [Field E] [Algebra F E] [CommRing B] [Algebra F B]
variable {ι : Type} [Fintype ι] [DecidableEq ι] (b : Module.Basis ι F E)

section Topology

variable [TopologicalSpace B] [IsTopologicalRing B]

variable {b}
variable {X : Type*} [TopologicalSpace X]

end Topology

end PI.IwaMeasEx.Wau

end

noncomputable section

namespace PI.IwaMeasEx.Wau

open IsDedekindDomain IsDedekindDomain.HeightOneSpectrum NumberField
open scoped TensorProduct

variable {F : Type} [Field F] [NumberField F]

theorem ohat_zero : (0 : FiniteAdeleRing (𝓞 F) F) ∈ Ohat F :=
  fun v => by
    show (0 : v.adicCompletion F) ∈ _
    exact zero_mem _

section Coord

variable {E : Type} [Field E] [NumberField E] [Algebra F E]
variable {ι : Type} [Fintype ι] [DecidableEq ι] (b : Module.Basis ι F E)

variable {b}

end Coord

end PI.IwaMeasEx.Wau

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.T2SpaceFiniteAdeleRing =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.NatSmulMulEq =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.NatSmulMulEq", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.T2SpaceFiniteAdeleRing\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.GlobAut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.IwaMeasEx.Wau

open IsDedekindDomain NumberField Formalism.MainNotions.S Topology
open scoped TensorProduct Matrix

namespace Cpt

variable (I : AutInst)

abbrev sg : I.E ⊗[I.F] Af I.F →+* I.E ⊗[I.F] Af I.F := Formalism.UG.sigR I.cm.sig (Af I.F)

def Bx (N : ℕ) : Set (Af I.F) := (fun u => algebraMap I.F (Af I.F) ((N : I.F)⁻¹) * u) '' Ohat I.F

theorem isCompact_Bx (N : ℕ) : IsCompact (Bx I N) :=
  isCompact_Ohat.image (continuous_const.mul continuous_id)

theorem mem_Bx {N : ℕ} (hN : 0 < N) {a : Af I.F} (ha : N • a ∈ Ohat I.F) : a ∈ Bx I N := by
  refine ⟨N • a, ha, ?_⟩
  have hN0 : (N : I.F) ≠ 0 := by exact_mod_cast hN.ne'
  simp only
  rw [nsmul_eq_mul, ← mul_assoc, ← map_natCast (algebraMap I.F (Af I.F)), ← map_mul, inv_mul_cancel₀ hN0,
    map_one, one_mul]

end Cpt

end PI.IwaMeasEx.Wau

end

noncomputable section

namespace PI.IwaMeasEx.Wau

open IsDedekindDomain NumberField Formalism.MainNotions.S Topology
open scoped TensorProduct Matrix

namespace Cpt

variable (I : AutInst)

end Cpt

end PI.IwaMeasEx.Wau

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.NatSmulMulEq =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.LeviSizesMeasurable =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.LeviSizesMeasurable", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirVolumeRatios.DetNorm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.T2SpaceFiniteAdelesExt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.AlgebraMapIntMemIntAd\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.NatSmulMulEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RrgCountableField\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.IwaMeasEx.Nrm

open Matrix NumberField Topology Filter MeasureTheory Formalism.MainNotions.S
  Formalism.MainNotions.LeviCoordinates Formalism.L2.S.S7.GLOne
open scoped TensorProduct nonZeroDivisors

section Top

variable (I : AutInst)

attribute [local instance] AfT.tAf

theorem topRing : IsTopologicalRing (AEf I) := AfT.isTopologicalRing_tAf I

theorem t2 : T2Space (AEf I) := AfT.t2Space_finite_adeles_ext I

attribute [local instance] topRing t2

def mAf : MeasurableSpace (AEf I) := borel (AEf I)

attribute [local instance] mAf

theorem borel_mAf : BorelSpace (AEf I) := ⟨rfl⟩

attribute [local instance] borel_mAf

theorem isOpen_IntAf : IsOpen ((IntAf I.F I.E : Subring (AEf I)) : Set (AEf I)) := by
  rw [isOpen_iff_mem_nhds]
  intro x hx
  rw [(AfT.hasBasis_nhds_tAf I x).mem_iff]
  refine ⟨0, trivial, fun y hy => ?_⟩
  change y - x ∈ AfT.bsub I (0 + 1) at hy
  obtain ⟨z, hz, he⟩ := (AfT.mem_bsub I).1 hy
  have e : y = x + (y - x) := by ring
  show y ∈ IntAf I.F I.E
  rw [e, ← he]
  exact add_mem hx (mul_mem (natCast_mem _ _) hz)

theorem continuous_inclR :
    Continuous (Algebra.TensorProduct.includeRight (R := I.F) (A := I.E) (B := Af I.F) : Af I.F → AEf I) := by
  apply continuous_of_continuousAt_zero
  rw [ContinuousAt, map_zero]
  refine (AfT.hasBasis_nhds_zero_tAf I).tendsto_right_iff.2 fun k _ => ?_
  have hk : ((k + 1 : ℕ) : I.F) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.succ_ne_zero k)
  have hU : IsOpen {a : Af I.F | algebraMap I.F (Af I.F) (((k + 1 : ℕ) : I.F)⁻¹) * a ∈ Wau.Ohat I.F} :=
    Wau.isOpen_Ohat.preimage (continuous_const.mul continuous_id)
  have h0 : (0 : Af I.F) ∈ {a : Af I.F | algebraMap I.F (Af I.F) (((k + 1 : ℕ) : I.F)⁻¹) * a ∈ Wau.Ohat I.F} := by
    show _ * 0 ∈ Wau.Ohat I.F
    rw [mul_zero]
    exact Wau.ohat_zero
  filter_upwards [hU.mem_nhds h0] with a ha
  show Algebra.TensorProduct.includeRight a ∈ AfT.bsub I (k + 1)
  refine (AfT.mem_bsub I).2 ⟨Algebra.TensorProduct.includeRight
    (algebraMap I.F (Af I.F) (((k + 1 : ℕ) : I.F)⁻¹) * a), AfT.includeRight_mem_IntAf I ha, ?_⟩
  rw [← map_natCast (Algebra.TensorProduct.includeRight (R := I.F) (A := I.E) (B := Af I.F)), ← map_mul, ← mul_assoc,
    ← map_natCast (algebraMap I.F (Af I.F)), ← map_mul, mul_inv_cancel₀ hk, map_one, one_mul]

theorem continuous_embC {ι : Type} [Fintype ι] (b : Module.Basis ι I.F I.E) :
    Continuous (fun c : ι → Af I.F => (∑ j, b j ⊗ₜ[I.F] c j : AEf I)) := by
  refine continuous_finsetSum _ fun j _ => ?_
  have e : (fun c : ι → Af I.F => (b j ⊗ₜ[I.F] c j : AEf I)) =
      fun c => iE I (b j) * Algebra.TensorProduct.includeRight (c j) := by
    funext c
    show b j ⊗ₜ[I.F] c j = (b j ⊗ₜ[I.F] (1 : Af I.F)) * ((1 : I.E) ⊗ₜ[I.F] c j)
    rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
  rw [e]
  exact continuous_const.mul ((continuous_inclR I).comp (continuous_apply j))

theorem isCompact_IntAf : IsCompact ((IntAf I.F I.E : Subring (AEf I)) : Set (AEf I)) := by
  let b := Module.finBasis I.F I.E
  obtain ⟨D, hD, hDb⟩ := AfT.exists_denom I b
  have hK : IsCompact ((fun c => (∑ j, b j ⊗ₜ[I.F] c j : AEf I)) '' Set.univ.pi fun _ => Wau.Cpt.Bx I D) :=
    (isCompact_univ_pi fun _ => Wau.Cpt.isCompact_Bx I D).image (continuous_embC I b)
  have hcl : IsClosed ((IntAf I.F I.E : Subring (AEf I)) : Set (AEf I)) :=
    AddSubgroup.isClosed_of_isOpen (IntAf I.F I.E).toAddSubgroup (isOpen_IntAf I)
  refine hK.of_isClosed_subset hcl fun x hx => ?_
  refine ⟨fun j => AfT.crd I b j x, fun j _ => Wau.Cpt.mem_Bx I (by omega) ?_, (AfT.sum_crd I b x).symm⟩
  rw [nsmul_eq_mul]
  exact AfT.crd_mem I b hDb (AfT.IntAf_le_sumsInt I hx) j


end Top

attribute [local instance] AfT.tAf topRing t2 mAf borel_mAf

end PI.IwaMeasEx.Nrm

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IwasawaMeasureExistence.LeviSizesMeasurable =====
