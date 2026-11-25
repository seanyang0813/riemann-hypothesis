module

public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.IsRc
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.HeckeOpen
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsSplitPlace
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt

@[expose] public section



section
noncomputable section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 NumberField IsDedekindDomain
namespace GlobalTheory.TypeRec.Model
section Compl
variable {F : Type} [Field F] [NumberField F] (w : HeightOneSpectrum (𝓞 F)) (p : ℕ) [hp : Fact p.Prime]
end Compl
open Classical in
theorem exists_isRc_alt (hL : _root_.UpperTheory.Zero.LLC.RecTExists) {D : D7} (T : GlobalTheory.RowTie.WDTie D.nd D.naut) (I : Ident D) :
    ∃ rc, _root_.GlobalTheory.TypeRec.IsSeriesCorrespondence hL T I rc := by
  refine ⟨fun k v n π => if h : ∃ σ, Nonempty (π ≅ pull I k v σ) then
    (T.e _).symm (_root_.GlobalTheory.CuspRep.ParLawsT.locRecT hL (D.nd.plOm.2 (D.naut.plGw k v)) (GlobalTheory.LocLanglands.cls h.choose))
    else D.naut.lpZero _, fun k v n σ π h => ?_⟩
  have h' : ∃ σ, Nonempty (π ≅ pull I k v σ) := ⟨σ, h⟩
  beta_reduce
  rw [dite_eq_left h', Equiv.apply_symm_apply, cls_eq_of_iso I k v _ σ ⟨h'.choose_spec.some.symm ≪≫ h.some⟩]
theorem locR_eq_rc_of_isRc_and_true_reading {hL : _root_.UpperTheory.Zero.LLC.RecTExists} {D : D7} {T : GlobalTheory.RowTie.WDTie D.nd D.naut} {I : Ident D} {rc}
    (h : _root_.GlobalTheory.TypeRec.IsSeriesCorrespondence hL T I rc) {rep cp} (hc : IsComp I rep cp) {loc : D.what₂.FT → ∀ w, D.naut.LP w} {sat}
    (hr : _root_.GlobalTheory.HeightCounting.RepresentationParametersHold hL D rep (fun σ w => T.e w (loc σ w)) sat) (σ k v) :
    loc σ (D.naut.plGw k v) = rc k v D.R.r (cp σ k v) := by
  obtain ⟨s, hs, τ, h1, h2⟩ := hc σ k v
  apply (T.e _).injective
  rw [h2, h k v _ τ _ ⟨CategoryTheory.Iso.refl _⟩]
  have key : ∀ (w) (hs : s.w = w) (τ : GlobalTheory.SmGL.IrrRep (GL (Fin D.R.r) (w.adicCompletion D.host.E))),
      GlobalTheory.HeightCounting.IsLocS (rep σ).S s (hs ▸ τ) → T.e w (loc σ w) =
        _root_.GlobalTheory.CuspRep.ParLawsT.locRecT hL (D.nd.plOm.2 w) (GlobalTheory.LocLanglands.cls τ) := by
    rintro _ rfl τ h1
    exact hr.1 σ s τ h1
  exact key _ hs τ h1
end GlobalTheory.TypeRec.Model
end
end
