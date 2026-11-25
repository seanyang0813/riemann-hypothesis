module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IntegralClosureHeightEqOneOfLiesOver

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.HT.ModelTest

open AlgebraicGeometry CategoryTheory NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F} {Y : Model Xo c β} {S : Finset ℕ}
  {Ω : Type} [Field Ω] {K : Type} [Fintype K] {J : K → Type} {y : (Σ k, J k) → Ω} (𝔐 : HodgeCpt Y S y)

theorem bar_eq (H : Host E) (a : 𝓞 E) : RingOfIntegers.mapRingEquiv (cmConj E) a = H.bar a := by
  apply RingOfIntegers.ext
  rw [H.bar_eq a]
  rfl

theorem overZp_of_inFibre {p : ℕ} (hp : p.Prime) (q : Cpt 𝔐.ξ) (hq : InFibre 𝔐.ξ p q) : OverZp 𝔐 p q := by
  intro r hr hrq
  by_contra hne
  have hloc : IsLocalRing (GlobalTheory.CompanionTheory.Ar.regAt 𝔐.ξ q) :=
    IsLocalRing.of_surjective' (GlobalTheory.CompanionTheory.Ar.genMap 𝔐.ξ q).rangeRestrict
      (GlobalTheory.CompanionTheory.Ar.genMap 𝔐.ξ q).rangeRestrict_surjective
  have key : ∀ m : ℕ, GlobalTheory.CompanionTheory.Ar.InFibre 𝔐.ξ m q → ¬ IsUnit ((m : GlobalTheory.CompanionTheory.Ar.regAt 𝔐.ξ q)) := by
    intro m hm hu
    apply hm
    obtain ⟨u, hu'⟩ := hu
    have h1 : (m : Ω) * (((u⁻¹ : (GlobalTheory.CompanionTheory.Ar.regAt 𝔐.ξ q)ˣ) : GlobalTheory.CompanionTheory.Ar.regAt 𝔐.ξ q) : Ω) = 1 := by
      have h2 := congrArg (fun x : GlobalTheory.CompanionTheory.Ar.regAt 𝔐.ξ q => (x : Ω)) u.mul_inv
      simpa [hu'] using h2
    have h0 : (m : Ω) ≠ 0 := left_ne_zero_of_mul_eq_one h1
    refine ⟨h0, natCast_mem _ m, ?_⟩
    rw [← eq_inv_of_mul_eq_one_right h1]
    exact SetLike.coe_mem _
  have hcop : Nat.Coprime r p := (Nat.coprime_primes hr hp).2 hne
  obtain ⟨a, b, hab⟩ := (Nat.isCoprime_iff_coprime.2 hcop).map (Int.castRingHom (GlobalTheory.CompanionTheory.Ar.regAt 𝔐.ξ q))
  rcases IsLocalRing.isUnit_or_isUnit_of_add_one hab with h | h
  · exact key r hrq (by simpa using isUnit_of_mul_isUnit_right h)
  · exact key p hq (by simpa using isUnit_of_mul_isUnit_right h)

variable {𝔐} {p : ℕ} {o : Type} [CommRing o] [Algebra o Ω]
  {Dc Dc' : ∀ s : {s : ∀ k, J k // mseg y s ≠ 0},
      HTChart (chartRing o (mseg y) s.1) Ω (cmConj E) p (𝔐.R p) (D.p + D.q) (Module.Dual Ω 𝔐.Li)}

end GlobalTheory.CompanionTheory.Ar.HT.ModelTest
