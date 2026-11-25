module

public import Mathlib.RingTheory.Ideal.Height
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Mathlib.RingTheory.Valuation.ValuationRing
public import Mathlib.RingTheory.DiscreteValuationRing.TFAE
public import Mathlib.RingTheory.Localization.Submodule

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

open IsLocalRing

theorem regVert_eq_of_le_height_one {A : Type*} [CommRing A] [IsDomain A] {Q P : Ideal A} [Q.IsPrime]
    [P.IsPrime] (hQ : Q ≠ ⊥) (hQP : Q ≤ P) (hP : P.height = 1) : Q = P := by
  by_contra hne
  have hlt : Q < P := lt_of_le_of_ne hQP hne
  have hbot : (⊥ : Ideal A) < Q := bot_lt_iff_ne_bot.mpr hQ
  have hQle : Q.height ≤ 1 := hP ▸ Ideal.height_mono hQP
  have hQfin : Q.height ≠ ⊤ := ne_top_of_le_ne_top (by simp) hQle
  haveI : Q.FiniteHeight := ⟨Or.inr hQfin⟩
  haveI : (⊥ : Ideal A).FiniteHeight := ⟨Or.inr (by simp)⟩
  have h1 : (⊥ : Ideal A).height + 1 ≤ Q.height := by
    first
    | exact Order.add_one_le_of_lt (Ideal.height_strict_mono_of_isPrime hbot)
  have h2 : Q.height + 1 ≤ P.height := by
    first
    | exact Order.add_one_le_of_lt (Ideal.height_strict_mono_of_isPrime hlt)
  rw [hP] at h2
  have h3 : (2 : ℕ∞) ≤ 1 := by
    calc (2 : ℕ∞) = 0 + 1 + 1 := by norm_num
      _ ≤ (⊥ : Ideal A).height + 1 + 1 := by gcongr; simp
      _ ≤ Q.height + 1 := by gcongr
      _ ≤ 1 := h2
  exact absurd h3 (by norm_num)

theorem regVert_valuationRing {A : Type*} [CommRing A] [IsDomain A] [IsNoetherianRing A]
    [IsIntegrallyClosed A] (P : Ideal A) [P.IsPrime] (hP : P.height = 1) :
    ValuationRing (Localization.AtPrime P) := by
  have hPne : P ≠ ⊥ := by
    rintro rfl
    have h0 : (⊥ : Ideal A).height = 0 := by
      first
      | exact Ideal.height_bot
    rw [h0] at hP
    exact zero_ne_one hP
  haveI : IsNoetherianRing (Localization.AtPrime P) :=
    IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
  have hinj : Function.Injective (algebraMap A (Localization.AtPrime P)) :=
    IsLocalization.injective _ P.primeCompl_le_nonZeroDivisors
  have hmax : Ideal.map (algebraMap A (Localization.AtPrime P)) P =
      IsLocalRing.maximalIdeal (Localization.AtPrime P) :=
    Localization.AtPrime.map_eq_maximalIdeal
  have hcm : Ideal.comap (algebraMap A (Localization.AtPrime P))
      (IsLocalRing.maximalIdeal (Localization.AtPrime P)) = P := by
    first
    | exact Localization.AtPrime.under_maximalIdeal
  have hmne : IsLocalRing.maximalIdeal (Localization.AtPrime P) ≠ ⊥ := by
    rw [← hmax]
    intro h
    exact hPne ((Ideal.map_eq_bot_iff_of_injective hinj).mp h)
  have hnf : ¬ IsField (Localization.AtPrime P) := by
    rw [IsLocalRing.isField_iff_maximalIdeal_eq]
    exact hmne
  haveI : IsDomain (Localization.AtPrime P) := by
    first
    | infer_instance
  haveI hic : IsIntegrallyClosed (Localization.AtPrime P) := by
    first
    | exact isIntegrallyClosed_of_isLocalization (S := Localization.AtPrime P) P.primeCompl
        P.primeCompl_le_nonZeroDivisors
  have huniq : ∃! Q' : Ideal (Localization.AtPrime P), Q' ≠ ⊥ ∧ Q'.IsPrime := by
    refine ⟨IsLocalRing.maximalIdeal _, ⟨hmne, inferInstance⟩, ?_⟩
    rintro Q' ⟨hQ'ne, hQ'p⟩
    haveI := hQ'p
    have hc : Q'.under A ≤ P := by
      exact (Ideal.comap_mono (IsLocalRing.le_maximalIdeal hQ'p.ne_top)).trans hcm.le
    have hcne : Q'.under A ≠ ⊥ := by
      intro h
      apply hQ'ne
      rw [← IsLocalization.map_under P.primeCompl (Localization.AtPrime P) Q', h, Ideal.map_bot]
    have heq := regVert_eq_of_le_height_one hcne hc hP
    rw [← IsLocalization.map_under P.primeCompl (Localization.AtPrime P) Q', heq, hmax]
  first
  | exact ((IsDiscreteValuationRing.TFAE (Localization.AtPrime P) hnf).out 2 4).mpr (And.intro hic huniq)

end ReciprocityTheory.ChartRestriction.G.T0
