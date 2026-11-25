module

import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.IntegralApproximation
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion
import Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA
import Mathlib.Tactic.Linter.HaveILetI
public import Mathlib.Analysis.Normed.Group.Basic
public import Mathlib.Topology.Algebra.Valued.NormedValued

@[expose] public section

open IsDedekindDomain NumberField

set_option linter.all false

noncomputable section

namespace DiscreteGroups.sglob.DzType

variable {E : Type} [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E))

theorem exists_int_approx (e : E) (he : w.valuation E e ≤ 1) :
    ∃ x : 𝓞 E, w.valuation E (e - algebraMap (𝓞 E) E x) < 1 := by
  apply Formalism.L2.SG.IntegralApproximation.exists_int_approx <;> assumption

theorem exists_int_approx_compl (u : w.adicCompletion E) (hu : Valued.v u ≤ 1) :
    ∃ x : 𝓞 E, Valued.v (u - algebraMap E (w.adicCompletion E) (x : E)) < 1 := by
  have hvF : ∀ e : E, Valued.v (algebraMap E (w.adicCompletion E) e) = w.valuation E e :=
    fun e => HeightOneSpectrum.valuedAdicCompletion_eq_valuation' (R := 𝓞 E) w e
  obtain ⟨e, he⟩ := (HeightOneSpectrum.denseRange_algebraMap E w).exists_dist_lt u one_pos
  rw [dist_eq_norm, Valued.toNormedField.norm_lt_one_iff] at he
  have hve : w.valuation E e ≤ 1 := by
    rw [← hvF]
    have e2 : algebraMap E (w.adicCompletion E) e = u - (u - algebraMap E (w.adicCompletion E) e) := by ring
    rw [e2]
    exact (Valuation.map_sub _ _ _).trans (max_le hu he.le)
  obtain ⟨x, hx⟩ := exists_int_approx w e hve
  refine ⟨x, ?_⟩
  have e3 : u - algebraMap E (w.adicCompletion E) (x : E) =
      (u - algebraMap E (w.adicCompletion E) e) + algebraMap E (w.adicCompletion E) (e - algebraMap (𝓞 E) E x) := by
    rw [map_sub]; ring
  rw [e3]
  exact Valuation.map_add_lt _ he (by rw [hvF]; exact hx)

end DiscreteGroups.sglob.DzType

end
