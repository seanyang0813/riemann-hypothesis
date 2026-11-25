module

public import GroundTheory.HeightsAndTheta.Heights.Regularisation.IsOpenKappaOpenNeighbourhood

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open MeasureTheory Filter Topology
open scoped ContDiff
open ReciprocityTheory.AnForm (levi)
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential IsPosPot mInt MIntegrable)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Regular (RegChartData ThGe ell errE)

noncomputable section

variable {D : ℕ} {X : Type*} [TopologicalSpace X]

theorem locPot_add_φ (P Q : LocPot X) (x y : X) : (P + Q).φ x y = P.φ x y + Q.φ x y := rfl

def FormNonneg (A : FinHolAtlas D X) (V : Set X) (P : LocPot X) : Prop :=
  ∀ x k, ∀ y ∈ (A.chart k).target ∩ (A.chart k).symm ⁻¹' (V ∩ P.U x), ∀ w : Fin D → ℂ,
    0 ≤ levi (P.φ x ∘ (A.chart k).symm) y w

def LeviLe (A : FinHolAtlas D X) (V : Set X) (a : ℝ) (P : LocPot X) (b : ℝ) (Q : LocPot X) :
    Prop :=
  ∀ x k, ∀ y ∈ (A.chart k).target ∩ (A.chart k).symm ⁻¹' (V ∩ P.U x ∩ Q.U x), ∀ w : Fin D → ℂ,
    a * levi (P.φ x ∘ (A.chart k).symm) y w ≤ b * levi (Q.φ x ∘ (A.chart k).symm) y w

structure KaehlerForm (A : FinHolAtlas D X) where

  pot : LocPot X
  isPot : IsPotential A pot
  pos : IsPosPot A pot

def KaehlerForm.vol {A : FinHolAtlas D X} (Om : KaehlerForm A) : ℝ :=
  mInt A (fun _ => Om.pot) fun _ => 1

def potForm (th : LocPot X) (u : X → ℝ) : LocPot X := th + LocPot.ofFun u

structure IsBoundedPotForm (A : FinHolAtlas D X) (Yo : Set X) (r : X → ℝ) (Om : KaehlerForm A)
    (C₁ : ℝ) (th : LocPot X) (u : X → ℝ) : Prop where
  th_pot : IsPotential A th
  th_le : LeviLe A Set.univ 1 th 1 Om.pot
  neg_le_th : LeviLe A Set.univ (-1) Om.pot 1 th
  u_smooth : A.SmoothOn Yo u
  u_nonpos : ∀ x ∈ Yo, u x ≤ 0
  le_u : ∀ x ∈ Yo, -(C₁ * Real.log (r x)) ≤ u x
  nonneg : FormNonneg A Yo (potForm th u)
  smooth_or_pole : A.Smooth u ∨ ∀ y, y ∉ Yo → Tendsto u (𝓝[Yo] y) atBot

def IsSmoothPotForm (A : FinHolAtlas D X) (Yo : Set X) (r : X → ℝ) (Om : KaehlerForm A) (C₁ : ℝ)
    (th : LocPot X) (u : X → ℝ) : Prop :=
  IsBoundedPotForm A Yo r Om C₁ th u ∧ A.Smooth u

def tail (Yo : Set X) (r : X → ℝ) (R₀ : ℝ) : Set X := {x | x ∈ Yo ∧ R₀ ≤ r x}

def TailMassBound (A : FinHolAtlas D X) (Yo : Set X) (r : X → ℝ) (T : Fin D → LocPot X)
    (CE : ℝ) : Prop :=
  ∀ R₀ : ℝ, Real.exp 1 ≤ R₀ → MIntegrable A T ((tail Yo r R₀).indicator 1) ∧
    mInt A T ((tail Yo r R₀).indicator 1) ≤ CE * Real.log R₀ ^ D / R₀

def TailLogBound (A : FinHolAtlas D X) (Yo : Set X) (r : X → ℝ) (T : Fin D → LocPot X)
    (CE : ℝ) : Prop :=
  ∀ R₀ : ℝ, Real.exp 1 ≤ R₀ →
    MIntegrable A T ((tail Yo r R₀).indicator fun x => Real.log (r x)) ∧
    mInt A T ((tail Yo r R₀).indicator fun x => Real.log (r x)) ≤
      CE * Real.log R₀ ^ (D + 1) / R₀

structure System {A : FinHolAtlas D X} (R : RegChartData A) where

  ph : ℝ → X → ℝ

  C : ℝ

  ell₀ : ℝ
  smooth : ∀ t, 0 < t → ell₀ ≤ ell t → A.Smooth (ph t)
  le_ph : ∀ t, 0 < t → ell₀ ≤ ell t → ∀ x ∈ R.Yo, R.φ x ≤ ph t x
  ph_le : ∀ t, 0 < t → ell₀ ≤ ell t → ∀ x, ph t x ≤ C
  le_log : ∀ t, 0 < t → ell₀ ≤ ell t → ∀ x, -(C * Real.log (ell t)) ≤ ph t x
  thGe : ∀ t, 0 < t → ell₀ ≤ ell t → ThGe A R.θ (ph t) R.om (-errE C t)
  near : ∀ t, 0 < t → ell₀ ≤ ell t → ∀ x ∈ R.Yo, R.r x ≤ ell t →
    ph t x ≤ R.φ x + t ^ (1 / 3 : ℝ) + errE C t
  far : ∀ t, 0 < t → ell₀ ≤ ell t → ∀ x ∈ R.Yo,
    ph t x ≤ R.φ x + t ^ (1 / 3 : ℝ) + errE C t * R.r x
  mono : ∀ t t₀, 0 < t → t ≤ t₀ → ell₀ ≤ ell t₀ → ∀ x, ph t x ≤ ph t₀ x + C * errE C t₀
  c2 : ∀ (k : Fin A.n) (K : Set (Fin D → ℂ)), IsCompact K →
    K ⊆ (A.chart k).target ∩ (A.chart k).symm ⁻¹' R.Yo →
    TendstoUniformlyOn (fun t y => ph t ((A.chart k).symm y)) (fun y => R.φ ((A.chart k).symm y))
        (𝓝[>] 0) K ∧
      TendstoUniformlyOn (fun t y => fderiv ℝ (fun y' => ph t ((A.chart k).symm y')) y)
        (fun y => fderiv ℝ (fun y' => R.φ ((A.chart k).symm y')) y) (𝓝[>] 0) K ∧
      TendstoUniformlyOn (fun t y => fderiv ℝ (fderiv ℝ fun y' => ph t ((A.chart k).symm y')) y)
        (fun y => fderiv ℝ (fderiv ℝ fun y' => R.φ ((A.chart k).symm y')) y) (𝓝[>] 0) K

namespace System

variable {A : FinHolAtlas D X} {R : RegChartData A} (S : System R)

end System

section Inhabitants


theorem levi_const {ι : Type*} [Fintype ι] (c : ℝ) (z w : ι → ℂ) :
    levi (fun _ : ι → ℂ => c) z w = 0 := by
  simp [levi]

end Inhabitants

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
