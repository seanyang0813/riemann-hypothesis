module

public import Aesop.BuiltinRules
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousAtPlace
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchwartzBruhatMatrixTranslationModulationIrreduc
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenPtSubset
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLagrModelOfIsLin
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchroedingerOperatorHeisenbergInnerPreserving

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.VacAny
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames GlobalTheory.BigNZ GlobalTheory.AdelicU GlobalTheory.WeilM
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ Num IsTripleOf IsDatumA skewGram mulG colV adjV₁)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chars Rep IsTriple Acts SInf At latAtV realAd evI)

open GlobalTheory.BigDat

noncomputable section

namespace GlobalTheory.SchrIrred

open ValuativeRel

theorem norm_addChar_eq_one {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (ψ : AddChar k ℂ) (hψ : Continuous ψ) (x : k) : ‖ψ x‖ = 1 := by
  apply _root_.GlobalTheory.norm_addChar_nonarch <;> assumption

def toCircle {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (ψ : AddChar k ℂ) (hψ : Continuous ψ) : AddChar k Circle where
  toFun x := ⟨ψ x, mem_sphere_zero_iff_norm.2 (norm_addChar_eq_one ψ hψ x)⟩
  map_zero_eq_one' := Circle.ext (by simp)
  map_add_eq_mul' a b := Circle.ext (by show ψ (a + b) = ψ a * ψ b; exact AddChar.map_add_eq_mul ψ a b)

theorem coe_toCircle {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (ψ : AddChar k ℂ) (hψ : Continuous ψ) (x : k) : (toCircle ψ hψ x : ℂ) = ψ x := rfl

def colH (k : Type) [TopologicalSpace k] (κ : Type) : (κ → k) ≃ₜ Matrix κ Unit k where
  toFun x := Matrix.of fun i _ => x i
  invFun M i := M i ()
  left_inv _ := rfl
  right_inv M := by ext i j; cases j; rfl
  continuous_toFun := by
    refine continuous_pi fun i => continuous_pi fun _ => continuous_apply i
  continuous_invFun := by
    refine continuous_pi fun i => ?_
    exact (continuous_apply () ).comp (continuous_apply i)

theorem sb_comp {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y] (h : X ≃ₜ Y) {f : Y → ℂ}
    (hf : f ∈ GlobalTheory.WeilM.SB Y) : f ∘ h ∈ GlobalTheory.WeilM.SB X :=
  ⟨hf.1.comp_continuous h.continuous, hf.2.comp_homeomorph h⟩

end GlobalTheory.SchrIrred

namespace GlobalTheory.SchrIrred

open ValuativeRel

theorem schr_irreducible_local (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    [CharZero k] [Invertible (2 : k)] {κ : Type} [Fintype κ] (ψk : AddChar k ℂ) (hc : Continuous ψk) (h1 : ψk ≠ 1)
    (N : Submodule ℂ ((κ → k) → ℂ)) (hN : N ≤ GlobalTheory.WeilM.SB (κ → k))
    (hS : ∀ w, ∀ φ ∈ N, schr ψk w φ ∈ N) (φ₀ : (κ → k) → ℂ) (h0 : φ₀ ∈ N) (hne : φ₀ ≠ 0) :
    N = GlobalTheory.WeilM.SB (κ → k) := by
  classical
  let e := colH k κ
  let L : (Matrix κ Unit k → ℂ) →ₗ[ℂ] ((κ → k) → ℂ) := LinearMap.funLeft ℂ ℂ e
  have hL : ∀ Φ, L Φ = Φ ∘ e := fun _ => rfl
  have hcirc : Continuous (toCircle ψk hc) := by
    have : Continuous (fun x => ((toCircle ψk hc x : Circle) : ℂ)) := hc
    exact continuous_induced_rng.2 this
  have hne1 : toCircle ψk hc ≠ 1 := by
    intro h
    apply h1
    ext x
    have := congrArg (fun χ : AddChar k Circle => ((χ x : Circle) : ℂ)) h
    simpa [coe_toCircle] using this
  have hW : N.comap L ≤ GlobalTheory.SplitWeil.SB (Matrix κ Unit k) := by
    intro Φ hΦ
    have h := sb_comp e.symm (hN hΦ)
    have : (Φ ∘ e) ∘ e.symm = Φ := by funext M; simp
    rw [← this]
    exact h
  have hT : ∀ Φ ∈ N.comap L, ∀ x : Matrix κ Unit k, (fun t => Φ (t + x)) ∈ GlobalTheory.SplitWeil.SB (Matrix κ Unit k) →
      (fun t => Φ (t + x)) ∈ N.comap L := by
    intro Φ hΦ x _
    rw [Submodule.mem_comap, hL] at hΦ ⊢
    have h := hS (e.symm x, 0) _ hΦ
    convert h using 1
    funext y
    have he : e (y + e.symm x) = e y + x := by ext i j; cases j; rfl
    simp [schr, he]
  have hM : ∀ Φ ∈ N.comap L, ∀ b : Matrix κ Unit k,
      (fun t => ((toCircle ψk hc (∑ r, ∑ q, b r q * t r q) : Circle) : ℂ) * Φ t) ∈ GlobalTheory.SplitWeil.SB (Matrix κ Unit k) →
      (fun t => ((toCircle ψk hc (∑ r, ∑ q, b r q * t r q) : Circle) : ℂ) * Φ t) ∈ N.comap L := by
    intro Φ hΦ b _
    rw [Submodule.mem_comap, hL] at hΦ ⊢
    have h := hS (0, fun r => b r ()) _ hΦ
    convert h using 1
    funext y
    simp [schr, dotProduct, coe_toCircle, e, colH, mul_comm]
    change Φ (e y) * ψk (∑ r, b r () * y r) = ψk (∑ r, b r () * y r) * Φ (e y)
    exact mul_comm _ _
  have h0' : φ₀ ∘ e.symm ∈ N.comap L := by
    rw [Submodule.mem_comap, hL]
    have : (φ₀ ∘ e.symm) ∘ e = φ₀ := by funext y; simp
    rw [this]; exact h0
  have hne' : φ₀ ∘ e.symm ≠ 0 := by
    intro h
    apply hne
    funext y
    have := congrFun h (e y)
    simpa using this
  have hall := GlobalTheory.IrredSB.sb_irreducible k κ Unit (toCircle ψk hc) hcirc hne1 (N.comap L) hW hT hM _ h0' hne'
  refine le_antisymm hN fun φ hφ => ?_
  have hm : φ ∘ e.symm ∈ N.comap L := by
    rw [hall]
    exact sb_comp e.symm hφ
  rw [Submodule.mem_comap, hL] at hm
  have : (φ ∘ e.symm) ∘ e = φ := by funext y; simp
  rwa [this] at hm

end GlobalTheory.SchrIrred

namespace GlobalTheory.SchrIrred

theorem schr_irreducible : ∀ {F : Type} [Field F] [NumberField F] (v : HeightOneSpectrum (𝓞 F)) {κ : Type} [Fintype κ] (ψk : AddChar (Fv F v) ℂ), Continuous ψk → ψk ≠ 1 →
    ∀ N : Submodule ℂ ((κ → Fv F v) → ℂ), N ≤ GlobalTheory.WeilM.SB (κ → Fv F v) → (∀ w, ∀ φ ∈ N, schr ψk w φ ∈ N) → ∀ φ₀ ∈ N, φ₀ ≠ 0 →
      N = GlobalTheory.WeilM.SB (κ → Fv F v) := by
  intro F _ _ v κ _ ψk hc h1 N hN hS φ₀ h0 hne
  haveI : CharZero (Fv F v) := charZero_of_injective_algebraMap (algebraMap F (Fv F v)).injective
  exact schr_irreducible_local (Fv F v) ψk hc h1 N hN hS φ₀ h0 hne

end GlobalTheory.SchrIrred
