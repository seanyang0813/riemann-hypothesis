module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FrameDefinitions.IsFrameOverLine
import Mathlib.Tactic.ENatToNat
import Mathlib.NumberTheory.Zsqrtd.GaussianInt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterSt

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi

open GroundTheory.Heights₂.Heights.LowerBoundFree

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}
  {II : IntersectionSystem} {K : Type} [Fintype K] {J : K → Type} [∀ k, Fintype (J k)] {Ω : Type} [Field Ω]
  [Algebra ℚ Ω] {W : CMType H → Type} [∀ τ, AddCommGroup (W τ)] [∀ τ, Module Ω (W τ)]

structure CptOrigin (Y : Model Xo c β) (S₀ : Finset ℕ) (Dc : ComponentData II (CMType H) K J Ω W)
    (Hd : HodgeData Dc) where

  𝔐 : HodgeCpt Y S₀ Dc.y

  deg : ℕ
  cover : 𝔐.IsCover deg

  bg : CMType H → CMType H ⊕ CMType H

  sm : CMType H → CMType H ⊕ CMType H
  side : (bg = Sum.inl ∧ sm = Sum.inr ∧ Dc.j = D.p) ∨ (bg = Sum.inr ∧ sm = Sum.inl ∧ Dc.j = D.q)
  N_eq : Dc.N = D.p + D.q

  i : ∀ τ, W τ →ₗ[Ω] 𝔐.Li
  i_inj : ∀ τ, Function.Injective (i τ)
  i_range : ∀ τ, LinearMap.range (i τ) = 𝔐.Vgen (bg τ) ⊔ 𝔐.Vgen (sm τ)
  F_eq : ∀ τ, Hd.F τ = (𝔐.Vgen (bg τ)).comap (i τ)
  lat : ∀ τ, (Lat.comap (fun p => 𝔐.V (bg τ) p ⊔ 𝔐.V (sm τ) p) (i τ)).IsChartOf (segreCoord Dc.y) (Dc.W τ).lat
  bd : ∀ (z : Spec (CommRingCat.of ℂ) ⟶ 𝔐.X) w, CoordsAt 𝔐.ξ Dc.y z w → (w ∈ Dc.Bd ↔ ¬ 𝔐.Interior z)
  metric : ∀ τ a (z : Spec (CommRingCat.of ℂ) ⟶ 𝔐.X) w, CoordsAt 𝔐.ξ Dc.y z w → 𝔐.Interior z →
    InFrameDomain Dc.y ((Dc.h τ).chart a) ((Dc.h τ).fr a) w →
      𝔐.M.GramAt 𝔐.t.PP.L z (fun k => i τ ((Dc.h τ).b a k)) ((Dc.h τ).gram a w)
  S_disj : Disjoint Dc.S S₀
  R_ge : ∀ p ∈ Dc.S, 4 ≤ 𝔐.R p
  tors : ∀ p ∈ Dc.S, FullTorsion 𝔐.t.G 𝔐.ξ (p ^ 𝔐.R p)
  ht_vb : ∀ p ∈ Dc.S, ∀ s, (𝔐.HT p s).IsVBOn {q | ∀ r : ℕ, r.Prime → r ≠ p → ¬ InFibre 𝔐.ξ r q} (labelRk D s)
    (𝔐.Vgen s)
  vert : ∀ p ∈ Dc.S, ∀ q : Cpt 𝔐.ξ, InFibre 𝔐.ξ p q → ∀ ch, InChart 𝔐.ξ (segreCoord Dc.y) ch q →
    ∀ (b b' : ∀ τ, Fin (labelRk D (sm τ)) → 𝔐.Li)
      (T : ∀ τ, Matrix (Fin (labelRk D (sm τ))) (Fin (labelRk D (sm τ))) Ω),
      (∀ τ, (𝔐.V (sm τ)).IsFrameAt (b τ) q) → (∀ τ, (𝔐.HT p (sm τ)).IsFrameAt (b' τ) q) →
      (∀ τ k, b' τ k = ∑ k', T τ k' k • b τ k') →
        unitAt 𝔐.ξ q ((∏ τ, (T τ).det) / (MvPolynomial.aeval Dc.y (Dc.vnum p) / MvPolynomial.aeval Dc.y (Dc.vden p) *
          chartMono Dc.y ch (-Dc.vdeg p)))

section Ranks

variable {Y : Model Xo c β} {S₀ : Finset ℕ} {Dc : ComponentData II (CMType H) K J Ω W} {Hd : HodgeData Dc}
  (Or : CptOrigin Y S₀ Dc Hd)

theorem CptOrigin.rk_bg (τ : CMType H) : labelRk D (Or.bg τ) = Dc.j := by
  rcases Or.side with ⟨h, -, hj⟩ | ⟨h, -, hj⟩ <;> simp [h, hj]

theorem CptOrigin.rk_sm (τ : CMType H) : labelRk D (Or.sm τ) = Dc.N - Dc.j := by
  rcases Or.side with ⟨-, h, hj⟩ | ⟨-, h, hj⟩ <;> simp [h, hj, Or.N_eq]

theorem CptOrigin.bg_ne_sm (τ τ' : CMType H) : Or.bg τ ≠ Or.sm τ' := by
  rcases Or.side with ⟨h, h', -⟩ | ⟨h, h', -⟩ <;> simp [h, h']


include Or in
theorem CptOrigin.n_eq : Dc.n = Fintype.card (CMType H) * D.p * D.q := by
  rcases Or.side with ⟨-, -, hj⟩ | ⟨-, -, hj⟩ <;> simp [ComponentData.n, hj, Or.N_eq]
  ring

end Ranks

namespace Origin

section Period

variable {Ψ : Type} [Fintype Ψ] {V : Ψ → Type} [∀ τ, AddCommGroup (V τ)] [∀ τ, Module Ω (V τ)]
  {Dc : ComponentData II Ψ K J Ω V} {T T' : Set ((Σ k, J k) → ℂ)} {O' Lt : Type} [CommRing O'] [AddCommGroup Lt]
  [Module O' Lt]

end Period

section Plane

open Line GaussianInt

variable (II) (hII : ∀ W : Ideal (MRing (PBlk 2)), IsArithVar W 1 → 0 ≤ II Unit (PBlk 2) W 1 ![fsLine 2])

end Plane

end Origin

section Comparison₂

variable {Y : Model Xo c β} {S₀ : Finset ℕ} {Dc : ComponentData II (CMType H) K J Ω W} {Hd : HodgeData Dc}
  (Or : CptOrigin Y S₀ Dc Hd) {T T' : Set ((Σ k, J k) → ℂ)} {O' Lt : Type} [CommRing O'] [AddCommGroup Lt]
  [Module O' Lt]

variable {Or}

end Comparison₂

end GlobalTheory.CompanionTheory.Ar
