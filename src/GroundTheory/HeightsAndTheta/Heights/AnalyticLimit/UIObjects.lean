module

public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.Objects

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open MeasureTheory Filter Topology
open ReciprocityTheory.AnForm (levi)
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential IsSection IsSNC HoloMap mInt MIntegrable
  integralWith)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Regular (ell errE)

noncomputable section

section Defs

variable {W : Type} [TopologicalSpace W]

def secNorm (L : LocPot W) (s : W → W → ℂ) (x : W) : ℝ := ‖s x x‖ * Real.exp (-L.φ x x)

def greenEp (L : LocPot W) (s : W → W → ℂ) (ε : ℝ) (x : W) : ℝ :=
  Real.log (1 + ε / secNorm L s x ^ 2)

def kappaEp (L : LocPot W) (s : W → W → ℂ) (ε : ℝ) : LocPot W :=
  LocPot.rsmul 2 L + LocPot.ofFun fun x => Real.log (secNorm L s x ^ 2 + ε)

def curForms {D : ℕ} (th : Fin (D + 1) → LocPot W) (u : Fin (D + 1) → ℝ → W → ℝ) (t : ℝ) :
    Fin (D + 1) → LocPot W :=
  fun i => potForm (th i) (u i t)

def mixedForms {D : ℕ} (Om : LocPot W) (T : Fin (D + 1) → LocPot W) (b : ℕ) :
    Fin (D + 1) → LocPot W :=
  fun i => if (i : ℕ) < b then T i else Om

def restForms {D : ℕ} (Om : LocPot W) (T : Fin (D + 1) → LocPot W) (b : ℕ) : Fin D → LocPot W :=
  fun i => if (i : ℕ) < b then T i.castSucc else Om

def restrictForms {D : ℕ} (S : Set W) (Φ : Fin D → LocPot W) : Fin D → LocPot S :=
  fun i => (Φ i).pullback Subtype.val continuous_subtype_val

end Defs

structure UIData (D : ℕ) (W : Type) [TopologicalSpace W] where

  A : FinHolAtlas (D + 1) W

  Om : KaehlerForm A

  L : LocPot W

  s : W → W → ℂ

  nc : ℕ

  mult : Fin nc → ℕ

  comp : Fin nc → Set W

  B : ∀ k, FinHolAtlas D (comp k)
  L_pot : IsPotential A L
  s_sec : IsSection A L s
  s_snc : IsSNC A L s mult comp
  B_holo : ∀ k, HoloMap (B k) A Subtype.val

  Yo : Set W
  Yo_open : IsOpen Yo
  bd_analytic : A.IsAnalyticSubset Yoᶜ
  bd_interior : interior Yoᶜ = ∅
  bdComp_analytic : ∀ k, (B k).IsAnalyticSubset (Subtype.val ⁻¹' Yo)ᶜ
  bdComp_interior : ∀ k, interior ((Subtype.val ⁻¹' Yo : Set (comp k))ᶜ) = ∅

  r : W → ℝ

  th : Fin (D + 1) → LocPot W

  u : Fin (D + 1) → ℝ → W → ℝ

  lim : Fin (D + 1) → W → ℝ

  C : ℝ

  C₁ : ℝ

  ell₀ : ℝ

  CE : ℝ
  form : ∀ a t, 0 < t → ell₀ ≤ ell t → IsSmoothPotForm A Yo r Om C₁ (th a) (u a t)
  lim_le : ∀ a t, 0 < t → ell₀ ≤ ell t → ∀ x ∈ Yo, lim a x ≤ u a t x
  near : ∀ a t, 0 < t → ell₀ ≤ ell t → ∀ x ∈ Yo, r x ≤ ell t →
    u a t x ≤ lim a x + t ^ (1 / 3 : ℝ) + errE C t
  mono : ∀ a t t₀, 0 < t → t ≤ t₀ → ell₀ ≤ ell t₀ → ∀ x, u a t x ≤ u a t₀ x + C * errE C t₀
  tail : ∀ b, b ≤ D → ∀ t, 0 < t → ell₀ ≤ ell t →
    TailLogBound A Yo r (mixedForms Om.pot (curForms th u t) b) CE
  tailComp : ∀ k b, b ≤ D → ∀ t, 0 < t → ell₀ ≤ ell t →
    TailLogBound (B k) (Subtype.val ⁻¹' Yo) (r ∘ Subtype.val)
      (restrictForms (comp k) (restForms Om.pot (curForms th u t) b)) CE

namespace UIData

variable {D : ℕ} {W : Type} [TopologicalSpace W] (S : UIData D W)

def T (t : ℝ) : Fin (D + 1) → LocPot W := curForms S.th S.u t

def green (ε : ℝ) : W → ℝ := greenEp S.L S.s ε

def J (a : ℕ) (ε t : ℝ) : ℝ := mInt S.A (mixedForms S.Om.pot (S.T t) a) (S.green ε)

def rest (a : ℕ) (t : ℝ) : Fin D → LocPot W := restForms S.Om.pot (S.T t) a

def divInt (Φ : Fin D → LocPot W) (g : W → ℝ) : ℝ :=
  ∑ k, (S.mult k : ℝ) * mInt (S.B k) (restrictForms (S.comp k) Φ) (g ∘ Subtype.val)

def plTerm (a : ℕ) (ha : a < D + 1) (ε t : ℝ) : ℝ :=
  mInt S.A (Fin.cons (kappaEp S.L S.s ε) (S.rest a t)) (S.u ⟨a, ha⟩ t) -
    2 * S.divInt (S.rest a t) (S.u ⟨a, ha⟩ t)

def gap (a : ℕ) (ha : a < D + 1) (t₀ t : ℝ) : W → ℝ :=
  fun x => S.u ⟨a, ha⟩ t₀ x + S.C * errE S.C t₀ - S.u ⟨a, ha⟩ t x

def errW (a : ℕ) (ha : a < D + 1) (t₀ t : ℝ) : ℝ :=
  mInt S.A (mixedForms S.Om.pot (S.T t) a) (S.gap a ha t₀ t)

def errDiv (a : ℕ) (ha : a < D + 1) (t₀ t : ℝ) : ℝ :=
  S.divInt (S.rest a t) (S.gap a ha t₀ t)

end UIData

def UniformIntegrability.Statement : Prop :=
  ∀ {D : ℕ} {W : Type} [TopologicalSpace W] [CompactSpace W] [T2Space W] (S : UIData D W),
    ∀ η, 0 < η → ∃ ε₀, 0 < ε₀ ∧ ∃ t₁, 0 < t₁ ∧ ∀ ε t, 0 < ε → ε ≤ ε₀ → 0 < t → t ≤ t₁ →
      S.ell₀ ≤ ell t → mInt S.A (S.T t) (S.green ε) ≤ η

section Inhabitant

open OnePoint

end Inhabitant

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
