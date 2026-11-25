module

public import Development.WeilBound.RepresentationTheoryGL.HolomorphicDiscreteSeries.HarishChandraDescent.Restrict
public import Development.WeilBound.RepresentationTheoryGL.HolomorphicDiscreteSeries.HarishChandraDescent.Commutant
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
import Mathlib.RingTheory.PiTensorProduct
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.Unitary
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

open Finset Matrix
open scoped InnerProductSpace

namespace PositivityTheory.RgHe3

open ReciprocityTheory.ChartRestriction.DS PositivityTheory.UnitaryDecomposition PositivityTheory.RgHe

namespace Mom2Aux

theorem block_embed_single {n : ℕ} (e : Fin n ⊕ Unit ≃ Fin (n + 1)) (a b : Fin n) :
    blk0 e (Matrix.single a b (1 : ℂ)) = Matrix.single (e (Sum.inl a)) (e (Sum.inl b)) 1 := by
  ext i j
  obtain ⟨i', rfl⟩ := e.surjective i
  obtain ⟨j', rfl⟩ := e.surjective j
  rcases i' with i' | u <;> rcases j' with j' | u' <;>
    simp [blk0, Matrix.single_apply, fromBlocks, e.injective.eq_iff]

theorem trace_dg {m : ℕ} (d : Fin m → ℝ) (X : Matrix (Fin m) (Fin m) ℂ) :
    trace (dg d * X) = ∑ c, X c c * ((d c : ℝ) : ℂ) := by
  simp [Matrix.trace, dg, Matrix.diagonal_mul, mul_comm]

theorem trace_dg_single {m : ℕ} (d : Fin m → ℝ) (a b : Fin m) :
    trace (dg d * Matrix.single a b (1 : ℂ)) = if a = b then ((d a : ℝ) : ℂ) else 0 := by
  rw [trace_dg]
  split_ifs with h
  · subst h; simp [Matrix.single_apply]
  · refine Finset.sum_eq_zero fun c _ => ?_
    simp [show ¬(a = c ∧ b = c) from fun ⟨h1, h2⟩ => h (h1.trans h2.symm)]

theorem casValK_lowK {m : ℕ} (ε : Fin m → Bool) (μ : Fin m → ℝ) :
    casValK ε (lowK ε μ) - casVal μ = 2 * dot μ (rhoN ε) + nsq (rhoN ε) - nsq (rhoC ε) + nsq (rho m) := by
  simp only [casValK, lowK, casVal, nsq, dot, Pi.add_apply, Finset.mul_sum, ← Finset.sum_sub_distrib,
    ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun a _ => by simp only [Pi.add_apply, Pi.sub_apply]; ring

theorem dot_add_smul {m : ℕ} (x y z : Fin m → ℝ) (t : ℝ) : dot (x + t • y) z = dot x z + t * dot y z := by
  simp only [dot, Pi.add_apply, Pi.smul_apply, smul_eq_mul, add_mul, Finset.sum_add_distrib, Finset.mul_sum]
  congr 1
  exact Finset.sum_congr rfl fun _ _ => by ring

end Mom2Aux

private theorem actM_single_lemma {m : ℕ} {M : Type} [AddCommGroup M] [Module ℂ M]
    (E : Fin m → Fin m → Module.End ℂ M) (p q : Fin m) :
    actM E (Matrix.single p q (1 : ℂ)) = E p q := by
  simp [actM, Matrix.single_apply, ite_smul, ite_and, Finset.sum_ite_eq]

private theorem conj_lemma_2 {n : ℕ} (ε : Fin n → Bool) (g : Formalism.REAL.UJ ε) (Z : Matrix (Fin n) (Fin n) ℂ) :
    um g * (um g⁻¹ * Z * um g) * (um g)⁻¹ = Z := by
  have hi : (um g)⁻¹ = um g⁻¹ := (Matrix.coe_units_inv (g : (Matrix (Fin n) (Fin n) ℂ)ˣ)).symm
  have h1 : um g * um g⁻¹ = 1 := Units.mul_inv (g : (Matrix (Fin n) (Fin n) ℂ)ˣ)
  rw [hi, ← Matrix.mul_assoc, ← Matrix.mul_assoc, h1, Matrix.one_mul, Matrix.mul_assoc, h1, Matrix.mul_one]

open Mom2Aux in
theorem second_moment_of_bounds : RootBd → MatBd → AdEq → Mom2 := by
  intro hRoot hMat hAd n ε e lam d d' g hOver
  let L : Fin (n + 1) → ℝ := fun c => lam c + rhoN ε c - rhoC ε c
  let Y : Fin n → Fin n → Matrix (Fin (n + 1)) (Fin (n + 1)) ℂ :=
    fun a b => um g⁻¹ * blk0 e (Matrix.single a b 1) * um g
  let S : Fin n → Fin n → ℝ := fun a b => ∑ i, ∑ j, ‖Y a b i j‖
  let S' : Fin n → Fin n → ℝ := fun a b => ∑ c, ‖Y a b c c‖ * |L c|
  let P : ℝ := (∑ a, ∑ b, |L a - L b|)
    + |2 * dot lam (rhoN ε) + nsq (rhoN ε) - nsq (rhoC ε) + nsq (rho (n + 1))|
  let Q : ℝ := (∑ a, ∑ b, |d a - d b|) + |2 * dot d (rhoN ε)|
  have hP0 : 0 ≤ P := add_nonneg (Finset.sum_nonneg fun _ _ => Finset.sum_nonneg fun _ _ => abs_nonneg _) (abs_nonneg _)
  have hQ0 : 0 ≤ Q := add_nonneg (Finset.sum_nonneg fun _ _ => Finset.sum_nonneg fun _ _ => abs_nonneg _) (abs_nonneg _)
  have hcab0 : 0 ≤ ∑ a, ∑ b, (2 * S a b ^ 2 * (P + Q) + 2 * S' a b ^ 2) :=
    Finset.sum_nonneg fun _ _ => Finset.sum_nonneg fun _ _ => by positivity
  refine ⟨1 + ∑ a, ∑ b, (2 * S a b ^ 2 * (P + Q) + 2 * S' a b ^ 2), by linarith, ?_⟩
  intro t ht H _ _ _ π hπ v hv1 hKHW hcas
  have hDer := isDerivedOn_smE hπ
  have hGl := hDer.glRep
  have hIU := isInfUnitary_of_isDerivedOn hπ hDer
  obtain ⟨T', hT'1, hT'2⟩ := hAd (n + 1) ε H π hπ (um g) g.2
  have hTn : ∀ x, ‖T' x‖ = ‖x‖ := fun x => by
    show ‖(T' x : H)‖ = ‖(x : H)‖
    rw [hT'1]
    exact hπ.2.1 _ g.2 _
  have ht0 : 0 < t := by linarith
  let μ : Fin (n + 1) → ℝ := lowK ε (lam + t • d)
  have hΛ : ∀ c, μ c = L c + t * d c := fun c => by
    simp only [μ, L, lowK, Pi.add_apply, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]; ring
  have hcasb : |casValK ε μ - casVal (lam + t • d)|
      ≤ |2 * dot lam (rhoN ε) + nsq (rhoN ε) - nsq (rhoC ε) + nsq (rho (n + 1))| + t * |2 * dot d (rhoN ε)| := by
    rw [casValK_lowK, dot_add_smul,
      show 2 * (dot lam (rhoN ε) + t * dot d (rhoN ε)) + nsq (rhoN ε) - nsq (rhoC ε) + nsq (rho (n + 1))
        = (2 * dot lam (rhoN ε) + nsq (rhoN ε) - nsq (rhoC ε) + nsq (rho (n + 1))) + t * (2 * dot d (rhoN ε)) by ring]
    exact (abs_add_le _ _).trans_eq (by rw [abs_mul, abs_of_pos ht0])
  have hR0 : 0 ≤ P + Q * t := by positivity
  have pairLe : ∀ (f : Fin (n + 1) → ℝ) (a b : Fin (n + 1)), |f a - f b| ≤ ∑ a', ∑ b', |f a' - f b'| :=
    fun f a b => (Finset.single_le_sum (f := fun b' => |f a - f b'|) (fun _ _ => abs_nonneg _) (Finset.mem_univ b)).trans
      (Finset.single_le_sum (f := fun a' => ∑ b', |f a' - f b'|)
        (fun _ _ => Finset.sum_nonneg fun _ _ => abs_nonneg _) (Finset.mem_univ a))
  have hoff : ∀ a b, a ≠ b → ‖smE ε π a b v‖ ≤ Real.sqrt (P + Q * t) * ‖v‖ := fun a b hab => by
    have h1 := hRoot (n + 1) ε _ (smE ε π) hGl hIU μ _ v hKHW hcas a b hab
    rw [hv1, one_pow, mul_one] at h1
    rw [hv1, mul_one]
    have hΛab : |μ a - μ b| ≤ |L a - L b| + t * |d a - d b| := by
      rw [hΛ, hΛ, show L a + t * d a - (L b + t * d b) = (L a - L b) + t * (d a - d b) by ring]
      exact (abs_add_le _ _).trans_eq (by rw [abs_mul, abs_of_pos ht0])
    have h2 : ‖smE ε π a b v‖ ^ 2 ≤ P + Q * t := by
      have hLab := pairLe L a b
      have hdab := pairLe d a b
      dsimp only [P, Q]
      nlinarith
    simpa [abs_of_nonneg (norm_nonneg _)] using Real.abs_le_sqrt h2
  have hmat := hMat (n + 1) ε _ (smE ε π) hGl hIU μ (Real.sqrt (P + Q * t)) v hKHW.1 (Real.sqrt_nonneg _) hoff
  have hab : ∀ a b, ‖smE ε π (e (Sum.inl a)) (e (Sum.inl b)) (T' v)
      - (if a = b then ((t * d' a : ℝ) : ℂ) else 0) • T' v‖ ^ 2
      ≤ t * (2 * S a b ^ 2 * (P + Q) + 2 * S' a b ^ 2) := fun a b => by
    have hE : smE ε π (e (Sum.inl a)) (e (Sum.inl b)) = actM (smE ε π) (um g * Y a b * (um g)⁻¹) := by
      rw [conj_lemma_2, block_embed_single, actM_single_lemma]
    have htr : ∑ c, Y a b c c * ((d c : ℝ) : ℂ) = if a = b then ((d' a : ℝ) : ℂ) else 0 := by
      rw [← trace_dg, show (dg d * Y a b).trace = (dg d' * Matrix.single a b 1).trace from hOver _, trace_dg_single]
    have hsum : (∑ c, Y a b c c * ((μ c : ℝ) : ℂ)) - (if a = b then ((t * d' a : ℝ) : ℂ) else 0)
        = ∑ c, Y a b c c * ((L c : ℝ) : ℂ) := by
      simp only [hΛ]; push_cast; simp only [mul_add, Finset.sum_add_distrib]
      rw [show ∑ c, Y a b c c * ((t : ℂ) * (d c : ℂ)) = (t : ℂ) * ∑ c, Y a b c c * (d c : ℂ) by
        rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun _ _ => by ring, htr]
      split_ifs <;> push_cast <;> ring
    let w₁ := actM (smE ε π) (Y a b) v - (∑ c, Y a b c c * ((μ c : ℝ) : ℂ)) • v
    let w₂ := (∑ c, Y a b c c * ((L c : ℝ) : ℂ)) • v
    have hdecomp : smE ε π (e (Sum.inl a)) (e (Sum.inl b)) (T' v)
        - (if a = b then ((t * d' a : ℝ) : ℂ) else 0) • T' v = T' (w₁ + w₂) := by
      dsimp only [w₁, w₂]
      rw [hE, ← hT'2, ← hsum]
      simp only [map_add (f := _), map_sub, map_smul, sub_smul]; abel
    rw [hdecomp, hTn]
    have hm : ‖w₁‖ ≤ S a b * Real.sqrt (P + Q * t) := by
      simpa only [w₁, S, hv1, mul_one] using hmat (Y a b)
    have hs' : ‖w₂‖ ≤ S' a b := by
      dsimp only [w₂, S']
      rw [norm_smul, hv1, mul_one]
      exact (norm_sum_le _ _).trans <| Finset.sum_le_sum fun c _ => by
        rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
    have hz : ‖w₁ + w₂‖ ≤ S a b * Real.sqrt (P + Q * t) + S' a b := (norm_add_le w₁ w₂).trans (by linarith)
    calc ‖w₁ + w₂‖ ^ 2 ≤ (S a b * Real.sqrt (P + Q * t) + S' a b) ^ 2 := pow_le_pow_left₀ (norm_nonneg _) hz 2
      _ ≤ 2 * S a b ^ 2 * (P + Q * t) + 2 * S' a b ^ 2 := by
          nlinarith [sq_nonneg (S a b * Real.sqrt (P + Q * t) - S' a b), Real.sq_sqrt hR0]
      _ ≤ t * (2 * S a b ^ 2 * (P + Q) + 2 * S' a b ^ 2) := by
          have hRt : P + Q * t ≤ t * (P + Q) := by nlinarith
          nlinarith [mul_le_mul_of_nonneg_left hRt (sq_nonneg (S a b)), sq_nonneg (S' a b)]
  refine ⟨T' v, by rw [hTn, hv1], ?_⟩
  calc _ ≤ ∑ a, ∑ b, t * (2 * S a b ^ 2 * (P + Q) + 2 * S' a b ^ 2) :=
        Finset.sum_le_sum fun a _ => Finset.sum_le_sum fun b _ => hab a b
    _ = t * ∑ a, ∑ b, (2 * S a b ^ 2 * (P + Q) + 2 * S' a b ^ 2) := by simp only [Finset.mul_sum]
    _ ≤ (1 + ∑ a, ∑ b, (2 * S a b ^ 2 * (P + Q) + 2 * S' a b ^ 2)) * t := by nlinarith

end PositivityTheory.RgHe3
