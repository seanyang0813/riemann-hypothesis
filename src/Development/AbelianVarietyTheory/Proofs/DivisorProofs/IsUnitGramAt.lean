module

public import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContDiffSetIntegralNat
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsSmoothAutomorphicFunctionTranslateAtRealPlace
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section

namespace GlobalTheory.UnifEvery

open NumberField IsDedekindDomain Matrix Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Mult
open scoped TensorProduct

variable {D : D7} {V : HSp D} {S : D.what₂.Tau → SPar}

theorem isUnit_gramAt (M : DSModel V S) (τ : D.what₂.Tau) : IsUnit (gramAt D V τ) := by
  rw [← M.fr_gram τ]
  have hJ : IsUnit (Formalism.REAL.Jm (M.ε τ)) := by
    unfold Formalism.REAL.Jm
    rw [Matrix.isUnit_diagonal, Pi.isUnit_iff]
    intro i
    split_ifs <;> simp
  exact (((Matrix.isUnit_conjTranspose _).2 (M.fr_unit τ)).mul hJ).mul (M.fr_unit τ)

theorem rep_mul (M : DSModel V S) (τ : D.what₂.Tau) {a b : Matrix (Fin V.rank) (Fin V.rank) ℂ}
    (ha : a ∈ Formalism.QuantumDeterminants.UH (gramAt D V τ)) (hb : b ∈ Formalism.QuantumDeterminants.UH (gramAt D V τ)) (w : M.H τ) :
    M.rep τ (a * b) w = M.rep τ a (M.rep τ b w) := by
  have hu : IsUnit (M.fr τ).det := (Matrix.isUnit_iff_isUnit_det _).1 (M.fr_unit τ)
  have h := (M.ds τ).2.2.1.1.2 _ (GlobalTheory.GardingVec.conj_mem (M.fr_unit τ) (M.fr_gram τ) ha) _
    (GlobalTheory.GardingVec.conj_mem (M.fr_unit τ) (M.fr_gram τ) hb)
  have e : M.fr τ * (a * b) * (M.fr τ)⁻¹ = M.fr τ * a * (M.fr τ)⁻¹ * (M.fr τ * b * (M.fr τ)⁻¹) := by
    simp only [Matrix.mul_assoc, Matrix.nonsing_inv_mul_cancel_left _ _ hu]
  unfold DSModel.rep
  rw [e, h]
  rfl

theorem prod_mul_eq {G : Type} [Monoid G] (h : G) : ∀ (k : ℕ) (u v : Fin k → G), (∀ i, u i * h = h * v i) →
    (List.ofFn u).prod * h = h * (List.ofFn v).prod
  | 0, _, _, _ => by simp
  | k + 1, u, v, e => by
    rw [List.ofFn_succ, List.ofFn_succ, List.prod_cons, List.prod_cons, mul_assoc,
      prod_mul_eq h k _ _ fun i => e i.succ, ← mul_assoc, e, mul_assoc]

theorem rep_mem_sm (M : DSModel V S) (τ : D.what₂.Tau) {g : Matrix (Fin V.rank) (Fin V.rank) ℂ}
    (hg : g ∈ Formalism.QuantumDeterminants.UH (gramAt D V τ)) {v : M.H τ} (hv : v ∈ M.sm τ) : M.rep τ g v ∈ M.sm τ := by
  have hG := isUnit_gramAt M τ
  have hgu : IsUnit g.det := by
    have h1 : IsUnit (gᴴ * gramAt D V τ * g) := by rw [show gᴴ * gramAt D V τ * g = _ from hg]; exact hG
    rw [Matrix.isUnit_iff_isUnit_det, Matrix.det_mul] at h1
    exact isUnit_of_mul_isUnit_right h1
  have hab : g * g⁻¹ = 1 := Matrix.mul_nonsing_inv g hgu
  induction hv using Submodule.span_induction with
  | mem w hw =>
    refine Submodule.subset_span fun k Xs hX => ?_
    have hX' : ∀ i, g⁻¹ * Xs i * g ∈ lieAt V τ := fun i => GlobalTheory.Mem.RealTranslate.skew_conj hg hab (hX i)
    have h1 := ((M.rep τ g).restrictScalars ℝ).contDiff.comp (hw k (fun i => g⁻¹ * Xs i * g) hX')
    have hm : ∀ (Y : Fin k → Matrix (Fin V.rank) (Fin V.rank) ℂ), (∀ i, Y i ∈ lieAt V τ) → ∀ t : Fin k → ℝ,
        (List.ofFn fun i => NormedSpace.exp (t i • Y i)).prod ∈ Formalism.QuantumDeterminants.UH (gramAt D V τ) := fun Y hY t =>
      GlobalTheory.GardingVec.list_prod_mem _ fun x hx => by
        obtain ⟨i, rfl⟩ := List.mem_ofFn.1 hx
        exact GlobalTheory.GardingVec.exp_mem hG (hY i) (t i)
    convert h1 using 1
    funext t
    show _ = M.rep τ g (M.rep τ _ w)
    rw [← rep_mul M τ (hm Xs hX t) hg, ← rep_mul M τ hg (hm _ hX' t),
      prod_mul_eq g k _ _ fun i => GlobalTheory.Mem.RealTranslate.exp_conj_eq hab (Xs i) (t i)]
  | zero => rw [map_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
  | smul a x _ hx => rw [map_smul]; exact Submodule.smul_mem _ a hx

variable (θ : D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ))


variable {θ} {M : DSModel V S}

end GlobalTheory.UnifEvery
