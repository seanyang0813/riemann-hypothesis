module

public import Formalism.LocalToGlobal.IndefiniteReal.ConjSubConjSub
public import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
import Mathlib.Algebra.Order.Archimedean.Real.Hom
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
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq
import Development.AbelianVarietyTheory.Definitions.Foundations.ValuedAlgebraMapEqOne
import Formalism.LocalToGlobal.Divisibility.CoefMod
import Formalism.LocalToGlobal.HilbertRowConditions.CenterIdempotentAction
import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Formalism.LocalToGlobal.IndefiniteReal.RecTie

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.RecTie Formalism.L2.Rows GlobalTheory.Mem GlobalTheory.Mem.R3 ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.RowLocalRows

open Formalism.IndefR.principalLevelFrame

theorem fixed_fd_of_isotIn {D : D7} {n : ℕ} {A : Type} [AddCommGroup A] [Module ℂ A]
    (ρ : GAf D.host.E n →* Module.End ℂ A) (C : Submodule ℂ A)
    (hadm : ∀ N : ℕ, 0 < N →
      FiniteDimensional ℂ ↥(Submodule.span ℂ {x | x ∈ C ∧ ∀ κ, NG.Cong D.host.E n N κ → ρ κ x = x}))
    (π : NG.FinTyp D.host.E n) (hne : isotIn (D := D) ρ C π ≠ ⊥) (N : ℕ) (hN : 0 < N) :
    FiniteDimensional ℂ ↥(Submodule.span ℂ {f | f ∈ π.S ∧ ∀ κ, NG.Cong D.host.E n N κ → NG.rt D.host.E n κ f = f}) := by
  obtain ⟨Φ, ⟨hΦe, hΦC⟩, hΦne⟩ : ∃ Φ : π.S →ₗ[ℂ] A,
      (IsEqvA ρ π Φ ∧ LinearMap.range Φ ≤ C) ∧ LinearMap.range Φ ≠ ⊥ := by
    by_contra hcon
    push_neg at hcon
    apply hne
    unfold isotIn
    exact iSup_eq_bot.2 fun Φ => iSup_eq_bot.2 fun hΦ => hcon Φ hΦ
  have hinj : Function.Injective Φ := by
    rw [← LinearMap.ker_eq_bot]
    let S' : Submodule ℂ (GAf D.host.E n → ℂ) := (LinearMap.ker Φ).map π.S.subtype
    have hS'le : S' ≤ π.S := by
      rintro f ⟨k, _, rfl⟩
      exact k.2
    have hS'st : ∀ h, ∀ f ∈ S', NG.rt D.host.E n h f ∈ S' := by
      rintro h f ⟨k, hk, rfl⟩
      refine ⟨⟨NG.rt D.host.E n h k, π.stable h k k.2⟩, ?_, rfl⟩
      show Φ _ = 0
      rw [hΦe h k, LinearMap.mem_ker.1 hk, map_zero]
    rcases π.irr S' hS'le hS'st with h0 | hall
    · rw [eq_bot_iff]
      intro k hk
      have : (k : GAf D.host.E n → ℂ) ∈ S' := ⟨k, hk, rfl⟩
      rw [h0, Submodule.mem_bot] at this
      exact (Submodule.mem_bot ℂ).2 (Subtype.ext this)
    · exfalso
      apply hΦne
      rw [eq_bot_iff]
      rintro a ⟨y, rfl⟩
      have : (y : GAf D.host.E n → ℂ) ∈ S' := by rw [hall]; exact y.2
      obtain ⟨k, hk, hky⟩ := this
      rw [show y = k from Subtype.ext hky.symm]
      exact (Submodule.mem_bot ℂ).2 (LinearMap.mem_ker.1 hk)
  set F := Submodule.span ℂ {f | f ∈ π.S ∧ ∀ κ, NG.Cong D.host.E n N κ → NG.rt D.host.E n κ f = f} with hF
  set T := Submodule.span ℂ {x | x ∈ C ∧ ∀ κ, NG.Cong D.host.E n N κ → ρ κ x = x} with hT
  have := hadm N hN
  have hFS : F ≤ π.S := Submodule.span_le.2 fun f hf => hf.1
  have hFT : ∀ f (hf : f ∈ F), Φ ⟨f, hFS hf⟩ ∈ T := by
    intro f hf
    induction hf using Submodule.span_induction with
    | mem x hx =>
      refine Submodule.subset_span ⟨hΦC ⟨_, rfl⟩, fun κ hκ => ?_⟩
      rw [← hΦe κ]
      congr 1
      exact Subtype.ext (hx.2 κ hκ)
    | zero =>
      have : (⟨0, hFS F.zero_mem⟩ : π.S) = 0 := rfl
      rw [this, map_zero]
      exact T.zero_mem
    | add x y hx hy ihx ihy =>
      have : (⟨x + y, hFS (F.add_mem hx hy)⟩ : π.S) = ⟨x, hFS hx⟩ + ⟨y, hFS hy⟩ := rfl
      rw [this, map_add (f := _)]
      exact T.add_mem ihx ihy
    | smul a x hx ih =>
      have : (⟨a • x, hFS (F.smul_mem a hx)⟩ : π.S) = a • ⟨x, hFS hx⟩ := rfl
      rw [this, map_smul]
      exact T.smul_mem a ih
  let g : F →ₗ[ℂ] T := LinearMap.codRestrict T (Φ ∘ₗ Submodule.inclusion hFS) (fun f => hFT f f.2)
  have hg : Function.Injective g := by
    intro a b hab
    have h1 : Φ (Submodule.inclusion hFS a) = Φ (Submodule.inclusion hFS b) := congrArg Subtype.val hab
    exact Submodule.inclusion_injective hFS (hinj h1)
  exact Module.Finite.of_injective g hg

section Conj

variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ}

theorem fixed_fd_of_conjT (π : NG.FinTyp L n) (N : ℕ)
    (h : FiniteDimensional ℂ ↥(Submodule.span ℂ
      {f | f ∈ (FinTyp.conjT π).S ∧ ∀ κ, NG.Cong L n N κ → NG.rt L n κ f = f})) :
    FiniteDimensional ℂ ↥(Submodule.span ℂ {f | f ∈ π.S ∧ ∀ κ, NG.Cong L n N κ → NG.rt L n κ f = f}) := by
  set S1 := Submodule.span ℂ {f | f ∈ π.S ∧ ∀ κ, NG.Cong L n N κ → NG.rt L n κ f = f} with hS1
  set S2 := Submodule.span ℂ {f | f ∈ (FinTyp.conjT π).S ∧ ∀ κ, NG.Cong L n N κ → NG.rt L n κ f = f} with hS2
  have hmap : ∀ f ∈ S1, (fun g => star (f g)) ∈ S2 := by
    intro f hf
    induction hf using Submodule.span_induction with
    | mem x hx =>
      refine Submodule.subset_span ⟨?_, fun κ hκ => ?_⟩
      · rw [conjT_S, mem_conjSub]
        simpa using hx.1
      · rw [← conj_rt, hx.2 κ hκ]
    | zero =>
      have : (fun g => star ((0 : GAf L n → ℂ) g)) = 0 := by
        funext g
        simp
      rw [this]
      exact S2.zero_mem
    | add x y _ _ hx hy =>
      have : (fun g => star ((x + y) g)) = (fun g => star (x g)) + (fun g => star (y g)) := by
        funext g
        simp
      rw [this]
      exact S2.add_mem hx hy
    | smul a x _ hx =>
      have : (fun g => star ((a • x) g)) = star a • (fun g => star (x g)) := by
        funext g
        simp
      rw [this]
      exact S2.smul_mem _ hx
  let c : S1 →ₗ[ℝ] S2 :=
    { toFun := fun f => ⟨fun g => star ((f : GAf L n → ℂ) g), hmap f f.2⟩
      map_add' := fun a b => Subtype.ext (funext fun g => by simp)
      map_smul' := fun r a => Subtype.ext (funext fun g => by simp) }
  have hc : Function.Injective c := by
    intro a b hab
    apply Subtype.ext
    funext g
    have := congrFun (congrArg Subtype.val hab) g
    exact star_injective this
  haveI : FiniteDimensional ℝ S2 := Module.Finite.trans ℂ S2
  haveI : FiniteDimensional ℝ S1 := Module.Finite.of_injective c hc
  exact Module.Finite.of_restrictScalars_finite ℝ ℂ S1

theorem form_of_conjT (π : NG.FinTyp L n) (B' : (FinTyp.conjT π).S → (FinTyp.conjT π).S → ℂ)
    (hlin : ∀ x y z (c : ℂ), B' x (y + c • z) = B' x y + c * B' x z)
    (hherm : ∀ x y, B' x y = starRingEnd ℂ (B' y x))
    (hpos : ∀ x, x ≠ 0 → 0 < (B' x x).re)
    (hinv : ∀ h (x y x' y' : (FinTyp.conjT π).S), (x' : GAf L n → ℂ) = NG.rt L n h x →
      (y' : GAf L n → ℂ) = NG.rt L n h y → B' x' y' = B' x y) :
    ∃ B : π.S → π.S → ℂ, (∀ x y z (c : ℂ), B x (y + c • z) = B x y + c * B x z) ∧
      (∀ x y, B x y = starRingEnd ℂ (B y x)) ∧ (∀ x, x ≠ 0 → 0 < (B x x).re) ∧
      ∀ h (x y x' y' : π.S), (x' : GAf L n → ℂ) = NG.rt L n h x →
        (y' : GAf L n → ℂ) = NG.rt L n h y → B x' y' = B x y := by
  let c : π.S → (FinTyp.conjT π).S := fun f =>
    ⟨fun g => star ((f : GAf L n → ℂ) g), by rw [conjT_S, mem_conjSub]; simpa using f.2⟩
  have hc : ∀ f : π.S, ((c f : (FinTyp.conjT π).S) : GAf L n → ℂ) = fun g => star ((f : GAf L n → ℂ) g) := fun _ => rfl
  refine ⟨fun x y => starRingEnd ℂ (B' (c x) (c y)), ?_, ?_, ?_, ?_⟩
  · intro x y z a
    have e : c (y + a • z) = c y + (starRingEnd ℂ a) • c z := by
      apply Subtype.ext
      funext g
      simp [hc]
    simp only
    rw [e, hlin, map_add (f := _), map_mul, Complex.conj_conj]
  · intro x y
    simp only
    rw [hherm (c x) (c y)]
  · intro x hx
    simp only
    rw [Complex.conj_re]
    apply hpos
    intro h0
    apply hx
    apply Subtype.ext
    funext g
    have := congrFun (congrArg Subtype.val h0) g
    rw [hc] at this
    simpa using this
  · intro h x y x' y' hx hy
    simp only
    congr 1
    apply hinv h
    · rw [hc, hc, hx]
      rfl
    · rw [hc, hc, hy]
      rfl

end Conj

end GlobalTheory.RowLocalRows

namespace GlobalTheory.RowLocalRows

open Formalism.IndefR.principalLevelFrame Formalism.IndefR.Mult


end GlobalTheory.RowLocalRows

end
