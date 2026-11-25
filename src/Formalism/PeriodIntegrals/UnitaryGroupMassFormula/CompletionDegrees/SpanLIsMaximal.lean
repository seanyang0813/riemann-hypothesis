module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CompletionDegrees.DenseSurj
public import Mathlib.NumberTheory.RamificationInertia.Inertia
public import Mathlib.RingTheory.Ideal.Int

@[expose] public section

namespace PI.CompDegEF

open IsDedekindDomain NumberField Module Formalism.BasicNotions Formalism.BasicNotions.Loc

theorem liesOver_of_mem {l : ℕ} [hl : Fact l.Prime] {E : Type} [Field E] [NumberField E]
    {v : HeightOneSpectrum (𝓞 E)} (hv : v ∈ placesOver E l) :
    v.asIdeal.LiesOver (Ideal.span {((l : ℕ) : ℤ)}) := by
  constructor
  refine (Int.ideal_span_isMaximal_of_prime l).eq_of_le ?_ ?_
  · intro h
    rw [Ideal.comap_eq_top_iff] at h
    exact v.isPrime.ne_top h
  · rw [Ideal.span_le]
    intro x hx
    rw [Set.mem_singleton_iff] at hx
    subst hx
    change algebraMap ℤ (𝓞 E) ((l : ℕ) : ℤ) ∈ v.asIdeal
    simpa using (show ((l : ℕ) : 𝓞 E) ∈ v.asIdeal from hv)

theorem normCard : NormCard := by
  intro l _ E _ _ v hv
  have := liesOver_of_mem hv
  have hmax := Int.ideal_span_isMaximal_of_prime l
  have hvmax : v.asIdeal.IsMaximal := v.isPrime.isMaximal v.ne_bot
  have h1 : Nat.card (𝓞 E ⧸ v.asIdeal ^ v.asIdeal.ramificationIdx ℤ) =
      Ideal.absNorm (v.asIdeal ^ v.asIdeal.ramificationIdx ℤ) := by
    rw [Ideal.absNorm_apply, Submodule.cardQuot_apply]
  rw [h1, map_pow, Ideal.absNorm_eq_pow_inertiaDeg'_of_liesOver v.asIdeal
    (Ideal.span {((l : ℕ) : ℤ)}) hmax.isPrime (by simp [(Fact.out : l.Prime).ne_zero]),
    Ideal.absNorm_span_natCast, Module.finrank_self, pow_one,
    Ideal.inertiaDeg'_eq_inertiaDeg, Formalism.MainNotions.N.locDeg, ← pow_mul, mul_comm]

end PI.CompDegEF
