module

import Formalism.SharpRestriction.Divisibility.GeneratorPowers.PsiCover
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeLine
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.HodgeCptTest

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CompanionTheory.Ar

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}

theorem labelEmb_inl_rt (c : Coeff l) (τ : CMType H) : ((labelEmb c (.inl τ) H.rt : c.F) : ℂ) = H.rt0 := τ.2

theorem imaginary_root_conj (H : Host E) : starRingEnd ℂ H.rt0 = -H.rt0 := by
  apply Formalism.MainNotions.ModuliIntegralCharts.H1.rt0_conj_neg_ne_zero

theorem labelEmb_inr_rt (c : Coeff l) (τ : CMType H) : ((labelEmb c (.inr τ) H.rt : c.F) : ℂ) = -H.rt0 := by
  show τ.1 ((H.bar H.rt : 𝓞 E) : E) = _
  rw [H.bar_eq, IsCMField.complexEmbedding_complexConj, τ.2, imaginary_root_conj]

variable {Xo : Moduli D l} {c : Coeff l} {O : Type} [CommRing O] {β : O →+* c.F}
  {Y : Model Xo c β} {S : Finset ℕ} {Ω : Type} [Field Ω] {K : Type} [Fintype K] {J : K → Type}
  {y : (Σ k, J k) → Ω} (𝔐 : GlobalTheory.CompanionTheory.Ar.HodgeCpt Y S y)

theorem V_isVB (s) : (𝔐.V s).IsVB (labelRk D s) (𝔐.Vgen s) := 𝔐.vb s


theorem flagStep_top {F : Type} [AddCommGroup F] [Module Ω F] {r : ℕ} (b : Fin r → F) :
    flagStep Ω b r = Submodule.span Ω (Set.range b) := by
  unfold flagStep
  congr 1
  ext x
  simp

theorem span_span_regAt {X : Scheme.{0}} {ξ : Spec (CommRingCat.of Ω) ⟶ X} (q : Cpt ξ) {F : Type} [AddCommGroup F]
    [Module Ω F] (s : Set F) :
    Submodule.span Ω (Submodule.span (regAt ξ q) s : Set F) = Submodule.span Ω s :=
  Submodule.span_span_of_tower _ _ _

theorem flag_span (Fl : 𝔐.Flag) (s) : Submodule.span Ω (Set.range (Fl.b s)) = 𝔐.Vgen s := by
  obtain ⟨U, hU, b, hb, hfr⟩ := V_isVB 𝔐 s ⟨genPt 𝔐.ξ, specializes_rfl⟩ trivial
  obtain ⟨U', hU', b', hb', hfr'⟩ := Fl.sub s ⟨genPt 𝔐.ξ, specializes_rfl⟩ trivial
  have h1 := (hfr _ trivial hU).2
  have h2 := (hfr' _ trivial hU').2
  have h3 := congrArg (fun N : Submodule (regAt 𝔐.ξ ⟨genPt 𝔐.ξ, specializes_rfl⟩) 𝔐.Li =>
    Submodule.span Ω (N : Set 𝔐.Li)) (h2.symm.trans h1)
  have h4 := (span_span_regAt _ _).symm.trans (h3.trans (span_span_regAt _ _))
  rw [← flagStep_top, ← hb', flagStep_top, ← hb, h4]

end GlobalTheory.CompanionTheory.Ar.HodgeCptTest
