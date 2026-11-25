module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemSum
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ContinuousSingleAt
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsLocComb
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationDisjointPlacesCommuteVacua
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.NeConjOfIdemSum
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
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.MiStarOfMid

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.StepData GlobalTheory.SymChain GlobalTheory.LocMod GlobalTheory.MiS GlobalTheory.MiTop GlobalTheory.Fam ValuativeRel
open scoped TensorProduct Classical
noncomputable section

namespace GlobalTheory.PlaceModelComb

variable {D : D7}

theorem mxAt_of_idemAt {es : AE D} {PP : Pl D.host.E} (h : Formalism.L2.NTheta.IsIdemAt es PP) {Q : GlobalTheory.FinPl.Pl D → Prop}
    (hQ : Q ((_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP))) {m n : ℕ} {w : Mx D m n} (hw : IsHalf (es + cA D es) w) : GlobalTheory.FinPl.MxAt Q w := by
  obtain ⟨v, ε, hε, hsum⟩ := h.1.2.2
  obtain ⟨q, hqe, -⟩ := GlobalTheory.FinPl.SplitPoint.exists_splitPt D v es ε h.1 hε hsum
  have hv : q.v = (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP) := GlobalTheory.LocMod.LevelPlaces.splitPt_v_eq_under q (hqe ▸ h)
  exact GlobalTheory.LevPin.mxAt_of_half q (hv ▸ hQ) w (hqe ▸ hw)

theorem mxAt_of_idemSum {e : AE D} {Pg : Finset (Pl D.host.E)} (hs : IsIdemSum e Pg) {m n : ℕ} {x : Mx D m n}
    (hx : IsHalf e x ∨ IsHalf (cA D e) x) :
    GlobalTheory.FinPl.MxAt (fun p => ∃ PP ∈ Pg, p = (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP)) x := by
  obtain ⟨⟨es, hes, rfl⟩, -⟩ := hs
  intro i j
  rcases hx with hx | hx
  · rw [← hx i j, Finset.sum_mul]
    refine Ideal.sum_mem _ fun PP hPP => ?_
    have hw : IsHalf (es PP + cA D (es PP)) (es PP • x) := fun a b => by
      obtain ⟨h1, h2, -⟩ := (hes PP hPP).1
      rw [Matrix.smul_apply, smul_eq_mul, add_mul, ← mul_assoc, h1, ← mul_assoc, mul_comm (cA D (es PP)), h2,
        zero_mul, add_zero]
    have := mxAt_of_idemAt (Q := fun p => ∃ PP ∈ Pg, p = (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP)) (hes PP hPP) ⟨PP, hPP, rfl⟩ hw i j
    rwa [Matrix.smul_apply, smul_eq_mul] at this
  · rw [← hx i j, map_sum, Finset.sum_mul]
    refine Ideal.sum_mem _ fun PP hPP => ?_
    have hw : IsHalf (es PP + cA D (es PP)) (cA D (es PP) • x) := fun a b => by
      obtain ⟨h1, h2, -⟩ := (hes PP hPP).1
      rw [Matrix.smul_apply, smul_eq_mul, add_mul, ← mul_assoc, h2, zero_mul, zero_add, ← mul_assoc, ← map_mul, h1]
    have := mxAt_of_idemAt (Q := fun p => ∃ PP ∈ Pg, p = (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP)) (hes PP hPP) ⟨PP, hPP, rfl⟩ hw i j
    rwa [Matrix.smul_apply, smul_eq_mul] at this

theorem main : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (S T : HSp D) (Λ : AddSubgroup (WO S T)) (e : AE D) (Pg : Finset (Pl D.host.E)) (P' : GlobalTheory.FinPl.Pl D → Prop), IsIdemSum e Pg → (∀ PP ∈ Pg, ¬ P' ((_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP))) → ∀ (d : WO S T →₀ ℂ), GlobalTheory.FinPl.CombAt P' d → ∀ (f₁ : WO S T → ℂ) (T₁ T₂ : (WO S T → ℂ) →ₗ[ℂ] (WO S T → ℂ)), IsPlaceModel ψ (symplO S T) (heisO ψ S T) e Λ 1 f₁ T₁ → (∀ Φ, T₂ Φ = comb ψ S T d (T₁ Φ)) → IsPlaceModel ψ (symplO S T) (heisO ψ S T) e Λ 1 (comb ψ S T d f₁) T₂ := by
  intro D ψ hψ S T Λ e Pg P' hs hd d hdc f₁ T₁ T₂ hT₁ hT₂
  have hd' : ∀ p, (∃ PP ∈ Pg, p = (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP)) → ¬ P' p := by
    rintro p ⟨PP, hPP, rfl⟩
    exact hd PP hPP
  have hcomm : ∀ x : WO S T, GlobalTheory.FinPl.MxAt (fun p => ∃ PP ∈ Pg, p = (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP)) x → ∀ f,
      heisO ψ S T x (comb ψ S T d f) = comb ψ S T d (heisO ψ S T x f) := by
    intro x hx f
    have h := (GlobalTheory.DisjComb.main D ψ hψ S T _ P' hd').1 (Finsupp.single x 1) d (fun u hu => by
      rw [Finsupp.support_single_ne_zero _ one_ne_zero, Finset.mem_singleton] at hu
      subst hu
      exact hx) hdc f
    simpa only [GlobalTheory.DisjComb.comb_single] using h
  refine ⟨fun Φ hΦ x hx => ?_, fun Φ hΦ y hy => ?_, ?_⟩
  · rw [hT₂, hT₁.trans Φ hΦ x hx, ← hcomm x (mxAt_of_idemSum hs (Or.inl hx)), hT₂]
  · rw [hT₂, hT₁.modul Φ hΦ y hy, ← hcomm y (mxAt_of_idemSum hs (Or.inr hy)), hT₂]
  · rw [hT₂, hT₁.vac]

end GlobalTheory.PlaceModelComb
