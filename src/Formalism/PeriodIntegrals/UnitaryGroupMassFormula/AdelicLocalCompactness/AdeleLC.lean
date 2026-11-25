module

import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.CartierFrobeniusFormLocal
public import Mathlib.NumberTheory.NumberField.AdeleRing
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
public import Mathlib.Topology.Algebra.Valued.LocallyCompact

@[expose] public section

noncomputable section

namespace PI.AdicCompletionValuation

open NumberField IsDedekindDomain IsDedekindDomain.HeightOneSpectrum Topology
open scoped RestrictedProduct

variable (F : Type) [Field F] [NumberField F] (v : HeightOneSpectrum (𝓞 F))

theorem algebraMap_mem_integer (r : 𝓞 F) :
    algebraMap (𝓞 F) (v.adicCompletion F) r ∈ Valued.integer (v.adicCompletion F) := by
  have h := v.coe_mem_adicCompletionIntegers (K := F) r
  rw [IsScalarTower.algebraMap_apply (𝓞 F) F (v.adicCompletion F)]
  exact h

theorem finite_residueField :
    Finite (IsLocalRing.ResidueField (Valued.integer (v.adicCompletion F))) := by
  apply PI.WAU.finite_residue

instance compactSpace_integer : CompactSpace (Valued.integer (v.adicCompletion F)) := by
  haveI : IsDiscreteValuationRing (Valued.integer (v.adicCompletion F)) :=
    inferInstanceAs (IsDiscreteValuationRing (v.adicCompletionIntegers F))
  haveI : CompleteSpace (Valued.integer (v.adicCompletion F)) :=
    (Valued.isClosed_integer (v.adicCompletion F)).completeSpace_coe
  haveI := finite_residueField F v
  exact Valued.integer.compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField.mpr
    ⟨inferInstance, inferInstance, this⟩

theorem isCompact_adicCompletionIntegers :
    IsCompact (v.adicCompletionIntegers F : Set (v.adicCompletion F)) := by
  have : CompactSpace (Valued.integer (v.adicCompletion F)) := compactSpace_integer F v
  exact isCompact_iff_compactSpace.mpr this

instance locallyCompactSpace_finiteAdeleRing : LocallyCompactSpace (FiniteAdeleRing (𝓞 F) F) := by
  haveI : Fact (∀ v : HeightOneSpectrum (𝓞 F),
      IsOpen (v.adicCompletionIntegers F : Set (v.adicCompletion F))) :=
    ⟨fun _ ↦ Valued.isOpen_valuationSubring _⟩
  haveI : ∀ v : HeightOneSpectrum (𝓞 F), CompactSpace (v.adicCompletionIntegers F) :=
    fun v => isCompact_iff_compactSpace.mp (isCompact_adicCompletionIntegers F v)
  exact inferInstanceAs (LocallyCompactSpace (Πʳ v : HeightOneSpectrum (𝓞 F),
    [v.adicCompletion F, v.adicCompletionIntegers F]))

instance t2Space_finiteAdeleRing : T2Space (FiniteAdeleRing (𝓞 F) F) :=
  inferInstanceAs (T2Space (Πʳ v : HeightOneSpectrum (𝓞 F),
    [v.adicCompletion F, v.adicCompletionIntegers F]))

instance locallyCompactSpace_adeleRing : LocallyCompactSpace (AdeleRing (𝓞 F) F) :=
  inferInstanceAs (LocallyCompactSpace (InfiniteAdeleRing F × FiniteAdeleRing (𝓞 F) F))

instance t2Space_infiniteAdeleRing : T2Space (InfiniteAdeleRing F) :=
  inferInstanceAs (T2Space ((v : InfinitePlace F) → v.Completion))

instance t2Space_adeleRing : T2Space (AdeleRing (𝓞 F) F) :=
  inferInstanceAs (T2Space (InfiniteAdeleRing F × FiniteAdeleRing (𝓞 F) F))

end PI.AdicCompletionValuation
