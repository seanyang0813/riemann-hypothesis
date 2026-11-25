module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsCompactUnitaryPointsAtPlaceFstMemCompact

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.HT

open Module NumberField

namespace HTChart

variable {A K : Type} [CommRing A] [Field K] [Algebra A K] {E : Type} [Field E] [NumberField E]
  {c : E ≃+* E} {p R N : ℕ}
  {Ω : Type} [AddCommGroup Ω] [Module K Ω] [Module A Ω] [IsScalarTower A K Ω]
  (D : HTChart A K c p R N Ω)

def IsFrame (σ : E →+* K) (m : ℕ)
    (i : Module.Dual A (D.omHT (σ.comp c.toRingHom)) →ₗ[A] (Fin N → A)) {j k : ℕ}
    (bW : Basis (Fin j) A (Module.Dual A (D.omHT (σ.comp c.toRingHom))))
    (bM : Basis (Fin k) A (D.omHT σ)) (g : Matrix (Fin N) (Fin j ⊕ Fin k) A) : Prop :=
  (∀ a, ∃ x' : Fin N → A, (fun l => g l (Sum.inl a)) = i (bW a) + ((p : A) ^ m) • x') ∧
  ∀ a, ∃ y ∈ D.omHT σ, D.q σ (fun l => g l (Sum.inr a)) = (bM a : Ω) + ((p : A) ^ m) • y

end HTChart

end GlobalTheory.CompanionTheory.Ar.HT
