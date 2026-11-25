module

public import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.AdelicCharacterRationalDual
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.HeisenbergCommutingOperatorScalar
public import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaSumAdmissibility
import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaDistributionNonzeroAdmissible

@[expose] public section

open Matrix NumberField IsDedekindDomain GlobalTheory.WeilM MeasureTheory
open scoped TensorProduct

namespace GlobalTheory.CompanionTheory.AdelicSchur

theorem schur : ∀ (F : Type) [Field F] [NumberField F] [LocallyCompactSpace (AdeleRing (𝓞 F) F)] [Invertible (2 : AdeleRing (𝓞 F) F)] (κ : Type) [Fintype κ] (ψ : AddChar (AdeleRing (𝓞 F) F) ℂ), Continuous ψ → ψ ≠ 1 → (∀ a : F, ψ (algebraMap F (AdeleRing (𝓞 F) F) a) = 1) → ∀ T : Module.End ℂ ((κ → AdeleRing (𝓞 F) F) → ℂ), (∀ Φ ∈ schA F κ, T Φ ∈ schA F κ) → (∀ l ∈ (adeleClass F).adm κ, l ∘ₗ T ∈ (adeleClass F).adm κ) → (∀ w, ∀ Φ ∈ schA F κ, T (schr ψ w Φ) = schr ψ w (T Φ)) → ∃ a : ℂ, ∀ Φ ∈ schA F κ, T Φ = a • Φ := by
  intro F _ _ _ _ κ _ ψ hψc hψ1 hψF T hTS hTadm hTcomm
  obtain ⟨-, ⟨l₀, hl₀adm, hl₀⟩, -⟩ :=
    _root_.GlobalTheory.CompanionTheory.ThetaAdm.theta_adm F κ
  obtain ⟨hρS, hθinv⟩ :=
    _root_.GlobalTheory.CompanionTheory.AdelicHeis.schr_mem_and_thetaSum F κ ψ hψc hψ1 hψF
  obtain ⟨a, ha⟩ := _root_.GlobalTheory.CompanionTheory.ThetaUniq.theta_unique F κ ψ hψc hψ1 hψF
    (l₀ ∘ₗ T) (hTadm l₀ hl₀adm) (by
      intro w Φ hΦ
      rw [LinearMap.comp_apply, LinearMap.comp_apply, hTcomm _ Φ hΦ,
        hl₀ _ (hρS _ _ (hTS Φ hΦ)), hl₀ _ (hTS Φ hΦ)]
      exact hθinv w (T Φ))
  have ha' : ∀ Φ ∈ GlobalTheory.WeilM.schA F κ, l₀ (T Φ) = a * _ := ha
  refine ⟨a, fun Φ hΦ => ?_⟩
  have hlin : ∀ w, GlobalTheory.WeilM.schr ψ w (T Φ - a • Φ) =
      GlobalTheory.WeilM.schr ψ w (T Φ) - a • GlobalTheory.WeilM.schr ψ w Φ := by
    intro w
    funext x
    simp only [GlobalTheory.WeilM.schr, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
    ring
  have hmem : T Φ - a • Φ ∈ GlobalTheory.WeilM.schA F κ :=
    Submodule.sub_mem _ (hTS Φ hΦ) (Submodule.smul_mem _ a hΦ)
  refine sub_eq_zero.mp (_root_.GlobalTheory.CompanionTheory.ThetaInj.theta_inj F κ ψ hψc hψ1
    hψF _ hmem fun w => ?_)
  rw [← hl₀ _ (hρS w _ hmem), hlin w, map_sub, map_smul, ← hTcomm w Φ hΦ,
    ha' _ (hρS w Φ hΦ), hl₀ _ (hρS w Φ hΦ), smul_eq_mul, sub_self]

end GlobalTheory.CompanionTheory.AdelicSchur
