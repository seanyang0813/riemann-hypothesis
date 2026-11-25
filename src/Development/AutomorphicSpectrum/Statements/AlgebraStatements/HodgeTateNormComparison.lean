module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsCompactUnitaryPointsAtPlaceFstMemCompact

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.HT

open Module NumberField

def ChartSequence : Prop :=
  ∀ (A K : Type) [CommRing A] [IsDomain A] [IsNoetherianRing A] [IsIntegrallyClosed A] [Field K] [Algebra A K]
    [IsFractionRing A K] [CharZero K] (E : Type) [Field E] [NumberField E] (c : E ≃+* E), (∀ x, c (c x) = x) →
    ∀ (p R N : ℕ) [Fact p.Prime] (Ω : Type) [AddCommGroup Ω] [Module K Ω] [Module A Ω] [IsScalarTower A K Ω]
      (D : HTChart A K c p R N Ω) (κ : A) (m : ℕ), κ * (p : A) ^ m ∣ (p : A) ^ R → D.HasTestPoints κ →
      Module.Projective A D.om' →
      (D.om' ≤ D.om ∧ ∀ x ∈ D.om, κ • x ∈ D.om') ∧
      ∀ (σ : E →+* K) (d d' : A), GeneratesDiff σ d → GeneratesDiff (σ.comp c.toRingHom) d' →
        Module.Projective A (D.omHT σ) → Module.Projective A (D.omHT (σ.comp c.toRingHom)) →
        ∃ i, D.IsDualMap σ d m i ∧ D.ExactMod σ m i

end GlobalTheory.CompanionTheory.Ar.HT
