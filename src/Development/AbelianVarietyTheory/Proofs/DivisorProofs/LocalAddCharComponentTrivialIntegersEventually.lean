module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
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

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open Classical
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ alpha beta Num skewGram blk conjU)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model HasExp SplitsFully Chars)

open GlobalTheory.AdelicU GlobalTheory.WeilM

noncomputable section

namespace GlobalTheory

theorem eq_one_of_forall_norm_pow_sub_one_lt (w : ℂ) (h : ∀ n : ℕ, ‖w ^ n - 1‖ < 1 / 2) : w = 1 := by
  by_contra hw
  have hd : 0 < ‖w - 1‖ := norm_pos_iff.2 (sub_ne_zero.2 hw)
  obtain ⟨N, hN⟩ := exists_nat_gt (1 / ‖w - 1‖)
  have hre : ∀ k : ℕ, 1 / 2 < (w ^ k).re := by
    intro k
    have h1 := (Complex.abs_re_le_norm (w ^ k - 1)).trans_lt (h k)
    rw [Complex.sub_re, Complex.one_re] at h1
    linarith [(abs_lt.1 h1).1]
  have hsum : (N : ℝ) / 2 ≤ (∑ k ∈ Finset.range N, w ^ k).re := by
    rw [Complex.re_sum]
    have := Finset.sum_le_sum (s := Finset.range N) (fun k _ => (hre k).le)
    simpa [div_eq_mul_inv, mul_comm] using this
  have hnorm : (N : ℝ) / 2 ≤ ‖∑ k ∈ Finset.range N, w ^ k‖ :=
    hsum.trans (Complex.re_le_norm _)
  have hgeom : ‖∑ k ∈ Finset.range N, w ^ k‖ * ‖w - 1‖ < 1 / 2 := by
    rw [← norm_mul, geom_sum_mul]; exact h N
  have : (N : ℝ) / 2 * ‖w - 1‖ < 1 / 2 :=
    lt_of_le_of_lt (mul_le_mul_of_nonneg_right hnorm hd.le) hgeom
  have h2 : (N : ℝ) * ‖w - 1‖ < 1 := by linarith
  rw [div_lt_iff₀ hd] at hN
  linarith


open Filter Topology in
theorem psiLoc_eventually_trivial_integers {F : Type} [Field F] [NumberField F] (ψ : AddChar (AF F) ℂ)
    (hψ : Continuous ψ) :
    ∀ᶠ v in Filter.cofinite, ∀ x ∈ (v : HeightOneSpectrum (𝓞 F)).adicCompletionIntegers F,
      GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.psiLoc ψ v x = 1 := by
  classical
  let ι : (∀ v : HeightOneSpectrum (𝓞 F), ↥(v.adicCompletionIntegers F)) → AF F := fun y =>
    LinearMap.inr F (Ainf F) (Af F)
      (RestrictedProduct.structureMap (fun v : HeightOneSpectrum (𝓞 F) => v.adicCompletion F)
        (fun v => (v.adicCompletionIntegers F : Set (v.adicCompletion F))) Filter.cofinite
        (fun v => ⟨(y v).1, (y v).2⟩))
  have hι : Continuous ι := by
    have hs : Continuous (fun y : (∀ v : HeightOneSpectrum (𝓞 F), ↥(v.adicCompletionIntegers F)) =>
        RestrictedProduct.structureMap (fun v : HeightOneSpectrum (𝓞 F) => v.adicCompletion F)
          (fun v => (v.adicCompletionIntegers F : Set (v.adicCompletion F))) Filter.cofinite
          (fun v => ⟨(y v).1, (y v).2⟩)) :=
      RestrictedProduct.isEmbedding_structureMap.continuous
    exact continuous_const.prodMk hs
  have hopen : IsOpen {y | ‖ψ (ι y) - 1‖ < 1 / 2} :=
    isOpen_lt ((hψ.comp hι).sub continuous_const).norm continuous_const
  have h0 : (0 : ∀ v : HeightOneSpectrum (𝓞 F), ↥(v.adicCompletionIntegers F)) ∈ {y | ‖ψ (ι y) - 1‖ < 1 / 2} := by
    have : ι 0 = 0 := by
      refine Prod.ext rfl ?_
      show RestrictedProduct.structureMap _ _ _ _ = (0 : Af F)
      refine af_ext fun w => ?_
      rfl
    simp [this, AddChar.map_zero_eq_one]
  obtain ⟨I, u, hu, hsub⟩ := isOpen_pi_iff.1 hopen 0 h0
  have key : ∀ v, v ∉ I → ∀ x ∈ v.adicCompletionIntegers F, ‖GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.psiLoc ψ v x - 1‖ < 1 / 2 := by
    intro v hv x hx
    let y : ∀ u : HeightOneSpectrum (𝓞 F), ↥(u.adicCompletionIntegers F) := Pi.single v ⟨x, hx⟩
    have hy : y ∈ (I : Set _).pi u := by
      intro a ha
      have hav : a ≠ v := fun e => hv (e ▸ ha)
      have : y a = 0 := Pi.single_eq_of_ne hav _
      rw [this]; exact (hu a ha).2
    have hmem := hsub hy
    have hιy : ι y = LinearMap.inr F (Ainf F) (Af F) (singleFin v x) := by
      refine congrArg (LinearMap.inr F (Ainf F) (Af F)) (af_ext fun w => ?_)
      by_cases e : w = v
      · subst e; rw [evalV_singleFin_self]
        show ((y w : w.adicCompletion F)) = x
        simp [y]
      · rw [evalV_singleFin_ne e]
        show ((y w : w.adicCompletion F)) = 0
        simp [y, Pi.single_eq_of_ne e]
    simpa [hιy, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.psiLoc] using hmem
  have hfin : {v : HeightOneSpectrum (𝓞 F) | ¬ ∀ x ∈ v.adicCompletionIntegers F,
      GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.psiLoc ψ v x = 1}.Finite := by
    refine (I.finite_toSet).subset fun v hv => ?_
    by_contra hvI
    apply hv
    intro x hx
    refine eq_one_of_forall_norm_pow_sub_one_lt _ fun n => ?_
    have hnx : n • x ∈ v.adicCompletionIntegers F := nsmul_mem hx n
    have := key v hvI (n • x) hnx
    have hpow : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.psiLoc ψ v (n • x) = GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.psiLoc ψ v x ^ n := by
      simp only [GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.psiLoc, map_nsmul]
      exact AddChar.map_nsmul_eq_pow ψ n _
    rwa [hpow] at this
  exact Filter.eventually_cofinite.2 hfin

end GlobalTheory
