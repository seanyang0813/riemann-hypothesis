module

public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.HasMultiplier
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ConjEmbRtOfNe
import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.ValNeBot
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.OverLaUnique
public import Formalism.LocalToGlobal.ProjectiveLattices.PlaceBelow

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Small

open MvPolynomial NumberField IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Formalism.L2.Pj (Rul Ix ex sec ramOverZ)
open GlobalTheory.CompanionTheory.Ar.Ref (pjSys UnifAll)

def htExp (p : ℕ) : ℝ := if p = 2 then 2 else 1 / ((p : ℝ) - 1)

def latExp (E : Type) [Field E] [NumberField E] (S : Finset ℕ) (p : ℕ) : ℝ :=
  if p ∈ S then htExp p + (padicValInt p (discr E) : ℝ) / Module.finrank ℚ E else 0

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F} {Y : Model Xo c β} {S : Finset ℕ}
  {RM : Top.RootModel (CMType H) (D.p + D.q)}
  {Sys : PB.AnSys (Top.dimFl (CMType H) (D.p + D.q)) (Option (RootIx D))} {Fx : FixedData Y Sys}
  {Or : RootOrigin Y S RM Fx}

def ReadsRootsFin (Or : RootOrigin Y S RM Fx) {p : ℕ} [Fact p.Prime] (z : (Σ k, RM.ι k) → PadicAlgCl p)
    (t : Ix D → ℝ) (θ : ℝ) : Prop :=
  ∀ ρ : RootIx D, ∃ w : PadicAlgCl p, HasVal RM.y (RM.xdeg ρ) (Or.e ρ)⁻¹ z w ∧ w ≠ 0 ∧
    |Real.log (supMet (RM.xdeg ρ) z) - Real.log (‖w‖ / t (rootFrameIx D ρ) ^ HodgeCpt.rootSgn D ρ)| ≤
      θ * Real.log p

theorem htExp_pos {p : ℕ} (hp : p.Prime) : 0 < htExp p := by
  unfold htExp
  split_ifs
  · norm_num
  · have : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
    exact one_div_pos.2 (by linarith)

theorem latExp_nonneg (E : Type) [Field E] [NumberField E] (S : Finset ℕ) {p : ℕ} (hp : p.Prime) :
    0 ≤ latExp E S p := by
  unfold latExp
  split_ifs
  · have := htExp_pos hp
    positivity
  · exact le_rfl


end GlobalTheory.CompanionTheory.Ar.Small
