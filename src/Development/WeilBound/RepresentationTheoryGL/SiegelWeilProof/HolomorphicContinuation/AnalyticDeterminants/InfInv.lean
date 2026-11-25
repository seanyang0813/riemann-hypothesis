module

public import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.InfInvA
public import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Comp
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Mathlib.Analysis.Complex.RealDeriv
public import Mathlib.Analysis.SpecialFunctions.ExpDeriv
public import Mathlib.Analysis.Calculus.LineDeriv.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.Analysis.Calculus.Deriv.Linear
public import Mathlib.Analysis.Calculus.Deriv.Pow
public import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.SingToDiffAlt
public import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.IILeft
import Mathlib.Algebra.Order.Archimedean.Real.Hom
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
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
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.DetOneAddSmulSingleSame, Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.FderivXZxSkew, Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.InfInv

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.DetOneAddSmulSingleSame =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.DetOneAddSmulSingleSame", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.InfInvA\npublic import Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Comp\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Complex.RealDeriv\npublic import Mathlib.Analysis.SpecialFunctions.ExpDeriv\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Filter Topology
open scoped ContDiff ComplexConjugate

namespace PositivityTheory.Rg.Sw.LVs.II

open PositivityTheory.Rg.Sw PositivityTheory.Rg.Sw.LVs

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

def rmulL (x : M2 n) : M2 n →L[ℝ] M2 n :=
  LinearMap.toContinuousLinearMap
    { toFun := fun M => M * x
      map_add' := fun _ _ => Matrix.add_mul _ _ _
      map_smul' := fun c M => by simp }

theorem deriv_piece (Θ : M2 n → ℂ) (x : M2 n) (hΘ : DifferentiableAt ℂ Θ x)
    (γ : ℝ → M2 n) (Y : M2 n) (hγ : HasDerivAt γ Y 0) (hγ0 : γ 0 = 1)
    (f : ℝ → ℂ) (r : ℂ) (hf : HasDerivAt f r 0)
    (hlaw : ∀ᶠ t in 𝓝 (0 : ℝ), Θ (γ t * x) = f t * Θ x) :
    fderiv ℂ Θ x (Y * x) = r * Θ x := by
  have h1 : HasDerivAt (fun t => γ t * x) (Y * x) 0 := by
    have := (rmulL x).hasFDerivAt.comp_hasDerivAt (0 : ℝ) hγ
    exact this
  have hx : γ 0 * x = x := by simp [hγ0]
  have hF : HasFDerivAt Θ ((fderiv ℂ Θ x).restrictScalars ℝ) (γ 0 * x) := by
    rw [hx]; exact hΘ.hasFDerivAt.restrictScalars ℝ
  have h2 : HasDerivAt (fun t => Θ (γ t * x)) (fderiv ℂ Θ x (Y * x)) 0 := by
    have := hF.comp_hasDerivAt (0 : ℝ) h1
    exact this
  have h3 : HasDerivAt (fun t => Θ (γ t * x)) (r * Θ x) 0 :=
    (hf.mul_const (Θ x)).congr_of_eventuallyEq hlaw
  exact h2.unique h3

theorem one_add_smul_fromBlocks (t : ℝ) (A B C D : Matrix (Fin n) (Fin n) ℂ) :
    (1 : M2 n) + t • fromBlocks A B C D = fromBlocks (1 + t • A) (t • B) (t • C) (1 + t • D) := by
  rw [← Matrix.fromBlocks_one, Matrix.fromBlocks_smul, Matrix.fromBlocks_add]; simp

theorem inG_one_add (P : M2 n) (h1 : Pᴴ * JJ n + JJ n * P = 0) (h2 : Pᴴ * JJ n * P = 0) (t : ℝ) :
    InG ((1 : M2 n) + t • P) := by
  unfold InG
  have key : ((1 : M2 n) + t • P)ᴴ * JJ n * (1 + t • P)
      = JJ n + t • (Pᴴ * JJ n + JJ n * P) + (t * t) • (Pᴴ * JJ n * P) := by
    rw [Matrix.conjTranspose_add, Matrix.conjTranspose_one, Matrix.conjTranspose_smul, star_trivial]
    simp only [add_mul, mul_add, one_mul, mul_one, smul_mul_assoc, mul_smul_comm, smul_add,
      smul_smul, Matrix.mul_assoc]
    abel
  rw [key, h1, h2]
  simp

theorem inG_fromBlocks_diag (a d : Matrix (Fin n) (Fin n) ℂ) (h1 : aᴴ * d = 1) (h2 : dᴴ * a = 1) :
    InG (fromBlocks a 0 0 d) := by
  unfold InG JJ
  rw [Matrix.fromBlocks_conjTranspose, Matrix.fromBlocks_multiply, Matrix.fromBlocks_multiply]
  simp [h1, h2]

theorem det_one_add_smul_single_same (i : Fin n) (s : ℂ) :
    ((1 : Matrix (Fin n) (Fin n) ℂ) + s • Matrix.single i i 1).det = 1 + s := by
  have h : (1 : Matrix (Fin n) (Fin n) ℂ) + s • Matrix.single i i 1 =
      Matrix.diagonal (fun j => if j = i then 1 + s else 1) := by
    ext a b
    by_cases hab : a = b
    · subst hab
      by_cases hai : a = i
      · subst hai
        simp
      · simp [hai, Ne.symm hai]
    · have hn : ¬ (i = a ∧ i = b) := fun h => hab (h.1.symm.trans h.2)
      simp [hn, hab, Matrix.one_apply_ne hab]
  rw [h, Matrix.det_diagonal]
  simp

def LawH (Θ : M2 n → ℂ) : Prop :=
  ∀ p x, InG p → p.toBlocks₂₁ = 0 → InG x → Θ (p * x) = ((‖(p.toBlocks₂₂).det‖ ^ (-(2 * (n : ℤ))) : ℝ) : ℂ) * Θ x

def lam (Y : M2 n) : ℂ := (n : ℂ) * (Y.toBlocks₁₁.trace - Y.toBlocks₂₂.trace)

theorem hasDerivAt_affine (P : M2 n) : HasDerivAt (fun t : ℝ => (1 : M2 n) + t • P) P 0 := by
  exact (((hasDerivAt_id (0 : ℝ)).smul_const P).const_add (1 : M2 n)).congr_deriv (one_smul ℝ P)

theorem pieceN (Θ : M2 n → ℂ) (hl : LawH Θ) (x : M2 n) (hx : InG x) (hd : DifferentiableAt ℂ Θ x)
    (β : Matrix (Fin n) (Fin n) ℂ) (hβ : βᴴ = β) :
    fderiv ℂ Θ x (fromBlocks 0 β 0 0 * x) = lam (fromBlocks 0 β 0 0) * Θ x := by
  have hc1 : (fromBlocks 0 β 0 0 : M2 n)ᴴ * JJ n + JJ n * fromBlocks 0 β 0 0 = 0 := by
    simp [JJ, Matrix.fromBlocks_conjTranspose, Matrix.fromBlocks_multiply, Matrix.fromBlocks_add, hβ]
  have hc2 : (fromBlocks 0 β 0 0 : M2 n)ᴴ * JJ n * fromBlocks 0 β 0 0 = 0 := by
    simp [JJ, Matrix.fromBlocks_conjTranspose, Matrix.fromBlocks_multiply, hβ]
  have key := deriv_piece Θ x hd (fun t : ℝ => 1 + t • (fromBlocks 0 β 0 0 : M2 n)) _
    (hasDerivAt_affine _) (by simp) (fun _ => (1 : ℂ)) 0 (hasDerivAt_const _ _)
    (Filter.Eventually.of_forall fun t => by
      have h21 : ((1 : M2 n) + t • (fromBlocks 0 β 0 0 : M2 n)).toBlocks₂₁ = 0 := by
        rw [one_add_smul_fromBlocks]
        simp
      rw [hl _ x (inG_one_add _ hc1 hc2 t) h21 hx, one_add_smul_fromBlocks]
      simp)
  rw [key]
  simp [lam]

def Pij (c : ℂ) (i j : Fin n) : M2 n := fromBlocks (c • Matrix.single i j 1) 0 0 (-(conj c) • Matrix.single j i 1)

theorem pieceOff (Θ : M2 n → ℂ) (hl : LawH Θ) (x : M2 n) (hx : InG x) (hd : DifferentiableAt ℂ Θ x)
    (c : ℂ) (i j : Fin n) (hij : i ≠ j) :
    fderiv ℂ Θ x (Pij c i j * x) = lam (Pij c i j) * Θ x := by
  have hc1 : (Pij c i j)ᴴ * JJ n + JJ n * Pij c i j = 0 := by
    simp [Pij, JJ, Matrix.fromBlocks_conjTranspose, Matrix.fromBlocks_multiply, Matrix.fromBlocks_add,
      Matrix.conjTranspose_single]
  have hc2 : (Pij c i j)ᴴ * JJ n * Pij c i j = 0 := by
    simp [Pij, JJ, Matrix.fromBlocks_conjTranspose, Matrix.fromBlocks_multiply,
      Matrix.conjTranspose_single, Matrix.single_mul_single_of_ne, hij, Ne.symm hij]
  have hdet : ∀ t : ℝ, ((1 : Matrix (Fin n) (Fin n) ℂ) + t • (-(conj c) • Matrix.single j i 1)).det = 1 := by
    intro t
    rw [← smul_assoc, Matrix.smul_single, smul_eq_mul, mul_one]
    exact Matrix.det_transvection_of_ne j i (Ne.symm hij) _
  have key := deriv_piece Θ x hd (fun t : ℝ => 1 + t • Pij c i j) _
    (hasDerivAt_affine _) (by simp) (fun _ => (1 : ℂ)) 0 (hasDerivAt_const _ _)
    (Filter.Eventually.of_forall fun t => by
      have h21 : ((1 : M2 n) + t • Pij c i j).toBlocks₂₁ = 0 := by
        rw [Pij, one_add_smul_fromBlocks]
        simp
      rw [hl _ x (inG_one_add _ hc1 hc2 t) h21 hx, Pij, one_add_smul_fromBlocks,
        Matrix.toBlocks_fromBlocks₂₂, hdet]
      simp)
  rw [key]
  simp [lam, Pij, Matrix.trace_single_eq_of_ne _ _ _ hij,
    Matrix.trace_single_eq_of_ne _ _ _ (Ne.symm hij)]

theorem one_add_smul_single_mul (i : Fin n) (u v : ℂ) :
    ((1 : Matrix (Fin n) (Fin n) ℂ) + u • Matrix.single i i 1) * (1 + v • Matrix.single i i 1) =
      1 + (u + v + u * v) • Matrix.single i i 1 := by
  simp only [add_mul, mul_add, one_mul, mul_one, smul_mul_assoc, mul_smul_comm, smul_add, smul_smul,
    Matrix.single_mul_single_same, add_smul]
  simp only [mul_comm v u]
  abel

private theorem one_add_smul_single_conjTranspose_mul_eq_one (a b : ℂ) (h : (1 + star a) * (1 + b) = 1) (i : Fin n) :
    ((1 : Matrix (Fin n) (Fin n) ℂ) + a • Matrix.single i i 1)ᴴ * (1 + b • Matrix.single i i 1) = 1 := by
  rw [Matrix.conjTranspose_add, Matrix.conjTranspose_one, Matrix.conjTranspose_smul,
    Matrix.conjTranspose_single, star_one, one_add_smul_single_mul]
  have h0 : star a + b + star a * b = 0 := by linear_combination h
  rw [h0, zero_smul, add_zero]

theorem pieceDiag (Θ : M2 n → ℂ) (hl : LawH Θ) (x : M2 n) (hx : InG x) (hd : DifferentiableAt ℂ Θ x)
    (c : ℂ) (i : Fin n) :
    fderiv ℂ Θ x (Pij c i i * x) = lam (Pij c i i) * Θ x := by
  have e : ∀ w : ℂ, (1 : ℂ) + (w - 1) = w := fun w => by ring
  have hu : HasDerivAt (fun t : ℝ => Complex.exp (↑t * c) - 1) c 0 := by
    have h := (((hasDerivAt_id' (0 : ℝ)).ofReal_comp).mul_const c).cexp.sub_const 1
    exact h.congr_deriv (by simp)
  have hv : HasDerivAt (fun t : ℝ => Complex.exp (-↑t * conj c) - 1) (-(conj c)) 0 := by
    have h := (((hasDerivAt_id' (0 : ℝ)).ofReal_comp).neg.mul_const (conj c)).cexp.sub_const 1
    exact h.congr_deriv (by simp)
  have hγ : HasDerivAt (fun t : ℝ => (1 : M2 n) +
      ((Complex.exp (↑t * c) - 1) • (fromBlocks (Matrix.single i i 1) 0 0 0 : M2 n) +
        (Complex.exp (-↑t * conj c) - 1) • (fromBlocks 0 0 0 (Matrix.single i i 1) : M2 n)))
      (Pij c i i) 0 := by
    have h := ((hu.smul_const (fromBlocks (Matrix.single i i 1) 0 0 0 : M2 n)).add
      (hv.smul_const (fromBlocks 0 0 0 (Matrix.single i i 1) : M2 n))).const_add (1 : M2 n)
    refine h.congr_deriv ?_
    rw [Pij, Matrix.fromBlocks_smul, Matrix.fromBlocks_smul, Matrix.fromBlocks_add]
    simp
  have hform : ∀ t : ℝ, (1 : M2 n) +
      ((Complex.exp (↑t * c) - 1) • (fromBlocks (Matrix.single i i 1) 0 0 0 : M2 n) +
        (Complex.exp (-↑t * conj c) - 1) • (fromBlocks 0 0 0 (Matrix.single i i 1) : M2 n)) =
      fromBlocks (1 + (Complex.exp (↑t * c) - 1) • Matrix.single i i 1) 0 0
        (1 + (Complex.exp (-↑t * conj c) - 1) • Matrix.single i i 1) := by
    intro t
    rw [← Matrix.fromBlocks_one, Matrix.fromBlocks_smul, Matrix.fromBlocks_smul,
      Matrix.fromBlocks_add, Matrix.fromBlocks_add]
    simp
  have hG : ∀ t : ℝ, InG (fromBlocks (1 + (Complex.exp (↑t * c) - 1) • Matrix.single i i 1) 0 0
      (1 + (Complex.exp (-↑t * conj c) - 1) • Matrix.single i i 1) : M2 n) := by
    intro t
    apply inG_fromBlocks_diag
    · apply one_add_smul_single_conjTranspose_mul_eq_one
      rw [star_sub, star_one, e, e, Complex.star_def, ← Complex.exp_conj, ← Complex.exp_add,
        show (conj (↑t * c) + -↑t * conj c : ℂ) = 0 by rw [map_mul, Complex.conj_ofReal]; ring,
        Complex.exp_zero]
    · apply one_add_smul_single_conjTranspose_mul_eq_one
      rw [star_sub, star_one, e, e, Complex.star_def, ← Complex.exp_conj, ← Complex.exp_add,
        show (conj (-↑t * conj c) + ↑t * c : ℂ) = 0 by
          rw [map_mul, map_neg, Complex.conj_ofReal, Complex.conj_conj]; ring,
        Complex.exp_zero]
  have hf := (((hasDerivAt_id' (0 : ℝ)).const_mul (2 * (n : ℝ) * c.re)).exp).ofReal_comp
  have key := deriv_piece Θ x hd _ _ hγ (by simp) _ _ hf
    (Filter.Eventually.of_forall fun t => by
      have h21 : ((1 : M2 n) +
          ((Complex.exp (↑t * c) - 1) • (fromBlocks (Matrix.single i i 1) 0 0 0 : M2 n) +
            (Complex.exp (-↑t * conj c) - 1) • (fromBlocks 0 0 0 (Matrix.single i i 1) : M2 n))).toBlocks₂₁ = 0 := by
        rw [hform]
        simp
      rw [hl _ x (by rw [hform]; exact hG t) h21 hx, hform, Matrix.toBlocks_fromBlocks₂₂,
        det_one_add_smul_single_same, e, Complex.norm_exp]
      congr 2
      rw [← Real.rpow_intCast, ← Real.exp_mul]
      congr 1
      simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re, Complex.ofReal_im, Complex.neg_im,
        Complex.conj_re, Complex.conj_im]
      push_cast
      ring)
  rw [key]
  congr 1
  simp [lam, Pij]
  apply Complex.ext <;> simp <;> ring

theorem lam_add (Y Y' : M2 n) : lam (Y + Y') = lam Y + lam Y' := by
  have e1 : (Y + Y').toBlocks₁₁ = Y.toBlocks₁₁ + Y'.toBlocks₁₁ := by ext; rfl
  have e2 : (Y + Y').toBlocks₂₂ = Y.toBlocks₂₂ + Y'.toBlocks₂₂ := by ext; rfl
  simp only [lam, e1, e2, Matrix.trace_add]
  ring

theorem lam_smul (c : ℂ) (Y : M2 n) : lam (c • Y) = c * lam Y := by
  simp only [lam]
  have h1 : (c • Y).toBlocks₁₁ = c • Y.toBlocks₁₁ := by ext; simp [Matrix.toBlocks₁₁]
  have h2 : (c • Y).toBlocks₂₂ = c • Y.toBlocks₂₂ := by ext; simp [Matrix.toBlocks₂₂]
  rw [h1, h2, Matrix.trace_smul, Matrix.trace_smul]; simp only [smul_eq_mul]; ring

def Gen (n : ℕ) : Set (M2 n) :=
  {Y | (∃ β : Matrix (Fin n) (Fin n) ℂ, βᴴ = β ∧ Y = fromBlocks 0 β 0 0) ∨ ∃ c i j, Y = Pij c i j}

theorem sum_single_mem (W : Submodule ℂ (M2 n)) (Φ : Matrix (Fin n) (Fin n) ℂ →ₗ[ℂ] M2 n)
    (h : ∀ i j a, Φ (Matrix.single i j a) ∈ W) (M : Matrix (Fin n) (Fin n) ℂ) : Φ M ∈ W := by

  rw [Matrix.matrix_eq_sum_single M, map_sum]
  exact Submodule.sum_mem _ fun i _ => by rw [map_sum]; exact Submodule.sum_mem _ fun j _ => h i j _

def fb11 (n : ℕ) : Matrix (Fin n) (Fin n) ℂ →ₗ[ℂ] M2 n where
  toFun A := fromBlocks A 0 0 0
  map_add' A B := by rw [Matrix.fromBlocks_add]; simp
  map_smul' c A := by rw [Matrix.fromBlocks_smul]; simp

def fb22 (n : ℕ) : Matrix (Fin n) (Fin n) ℂ →ₗ[ℂ] M2 n where
  toFun A := fromBlocks 0 0 0 A
  map_add' A B := by rw [Matrix.fromBlocks_add]; simp
  map_smul' c A := by rw [Matrix.fromBlocks_smul]; simp

theorem mem_span_gen (Y : M2 n) (hY : Y.toBlocks₂₁ = 0) : Y ∈ Submodule.span ℂ (Gen n) := by
  have hE1 : ∀ i j (a : ℂ), (fromBlocks (Matrix.single i j a) 0 0 0 : M2 n) ∈ Submodule.span ℂ (Gen n) := by
    intro i j a
    have h : (fromBlocks (Matrix.single i j a) 0 0 0 : M2 n) =
        (a / 2) • (Pij 1 i j - Complex.I • Pij Complex.I i j) := by
      ext (p|p) (q|q)
      all_goals simp [Pij, Matrix.single_apply]
      all_goals split_ifs
      all_goals ring_nf
      all_goals simp
    rw [h]
    exact Submodule.smul_mem _ _ (Submodule.sub_mem _
      (Submodule.subset_span (Or.inr ⟨1, i, j, rfl⟩))
      (Submodule.smul_mem _ _ (Submodule.subset_span (Or.inr ⟨Complex.I, i, j, rfl⟩))))
  have hE2 : ∀ i j (a : ℂ), (fromBlocks 0 0 0 (Matrix.single i j a) : M2 n) ∈ Submodule.span ℂ (Gen n) := by
    intro i j a
    have h : (fromBlocks 0 0 0 (Matrix.single i j a) : M2 n) =
        (-a / 2) • (Pij 1 j i + Complex.I • Pij Complex.I j i) := by
      ext (p|p) (q|q)
      all_goals simp [Pij, Matrix.single_apply]
      all_goals split_ifs
      all_goals ring_nf
      all_goals simp
    rw [h]
    exact Submodule.smul_mem _ _ (Submodule.add_mem _
      (Submodule.subset_span (Or.inr ⟨1, j, i, rfl⟩))
      (Submodule.smul_mem _ _ (Submodule.subset_span (Or.inr ⟨Complex.I, j, i, rfl⟩))))
  have hA : ∀ A, fb11 n A ∈ Submodule.span ℂ (Gen n) :=
    sum_single_mem _ (fb11 n) (fun i j a => hE1 i j a)
  have hD : ∀ D, fb22 n D ∈ Submodule.span ℂ (Gen n) :=
    sum_single_mem _ (fb22 n) (fun i j a => hE2 i j a)
  have hB : ∀ B : Matrix (Fin n) (Fin n) ℂ, (fromBlocks 0 B 0 0 : M2 n) ∈ Submodule.span ℂ (Gen n) := by
    intro B
    have hH1 : ((1 / 2 : ℂ) • (B + Bᴴ))ᴴ = (1 / 2 : ℂ) • (B + Bᴴ) := by
      ext p q
      simp [Matrix.conjTranspose_apply]
      ring
    have hH2 : ((-Complex.I / 2) • (B - Bᴴ))ᴴ = (-Complex.I / 2) • (B - Bᴴ) := by
      ext p q
      simp [Matrix.conjTranspose_apply]
      ring
    have hsplit : (fromBlocks 0 B 0 0 : M2 n) = fromBlocks 0 ((1 / 2 : ℂ) • (B + Bᴴ)) 0 0 +
        Complex.I • fromBlocks 0 ((-Complex.I / 2) • (B - Bᴴ)) 0 0 := by
      ext (p|p) (q|q)
      all_goals simp
      ring_nf
      simp [Complex.I_sq]
      ring
    rw [hsplit]
    exact Submodule.add_mem _ (Submodule.subset_span (Or.inl ⟨_, hH1, rfl⟩))
      (Submodule.smul_mem _ _ (Submodule.subset_span (Or.inl ⟨_, hH2, rfl⟩)))
  have hYe : Y = fb11 n Y.toBlocks₁₁ + fromBlocks 0 Y.toBlocks₁₂ 0 0 + fb22 n Y.toBlocks₂₂ := by
    conv_lhs => rw [← Matrix.fromBlocks_toBlocks Y, hY]
    simp [fb11, fb22, Matrix.fromBlocks_add]
  rw [hYe]
  exact Submodule.add_mem _ (Submodule.add_mem _ (hA _) (hB _)) (hD _)

theorem lawDeriv : LawDeriv := by
  intro n Θ Ω hΩ hsub hdiff hlaw x hx Y hY
  have hd : DifferentiableAt ℂ Θ x := hdiff.differentiableAt (hΩ.mem_nhds (hsub hx))
  show fderiv ℂ Θ x (Y * x) = lam Y * Θ x
  refine Submodule.span_induction (p := fun Y _ => fderiv ℂ Θ x (Y * x) = lam Y * Θ x)
    ?_ ?_ ?_ ?_ (mem_span_gen Y hY)
  · intro Z hZ
    rcases hZ with ⟨β, hβ, rfl⟩ | ⟨c, i, j, rfl⟩
    · exact pieceN Θ hlaw x hx hd β hβ
    · by_cases hij : i = j
      · subst hij
        exact pieceDiag Θ hlaw x hx hd c i
      · exact pieceOff Θ hlaw x hx hd c i j hij
  · have h0 : lam (0 : M2 n) = 0 := by simpa using lam_smul 0 (0 : M2 n)
    rw [zero_mul, map_zero, h0, zero_mul]
  · intro a b _ _ ha hb
    rw [add_mul, map_add (f := _), ha, hb, lam_add, add_mul]
  · intro a b _ hb
    rw [smul_mul_assoc, map_smul, hb, lam_smul, smul_eq_mul, mul_assoc]

end PositivityTheory.Rg.Sw.LVs.II
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.DetOneAddSmulSingleSame =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.FderivXZxSkew =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.FderivXZxSkew", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.InfInvA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.LineDeriv.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Linear\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Calculus.Deriv.Pow\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped ContDiff

namespace PositivityTheory.Rg.Sw.LVs.II

open PositivityTheory.Rg.Sw PositivityTheory.Rg.Sw.LVs

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ}

theorem contDiff_entry (i j : Fin n ⊕ Fin n) : ContDiff ℝ ∞ (fun x : M2 n => x i j) :=
  contDiff_apply_apply (𝕜 := ℝ) (E := ℂ) i j

theorem xZx_apply (x Z : M2 n) (i j : Fin n ⊕ Fin n) :
    (x * Z * xᴴ) i j = ∑ l, (∑ m, x i m * Z m l) * starRingEnd ℂ (x j l) := by
  simp [Matrix.mul_apply, Matrix.conjTranspose_apply]

theorem contDiff_xZx (Z : M2 n) (i j : Fin n ⊕ Fin n) : ContDiff ℝ ∞ (fun x : M2 n => (x * Z * xᴴ) i j) := by
  simp_rw [xZx_apply]
  refine ContDiff.sum fun l _ => ContDiff.mul (ContDiff.sum fun m _ => (contDiff_entry i m).mul contDiff_const) ?_
  exact Complex.conjCLE.contDiff.comp (contDiff_entry j l)

theorem cDiff : CDiff := by
  intro n Z a b
  exact ⟨contDiff_xZx Z (Sum.inr a) (Sum.inr b), (contDiff_xZx Z (Sum.inr a) (Sum.inl b)).neg⟩

theorem fderiv_xZx (Z x v : M2 n) (i j : Fin n ⊕ Fin n) :
    fderiv ℝ (fun y : M2 n => (y * Z * yᴴ) i j) x v = (v * Z * xᴴ + x * Z * vᴴ) i j := by
  have hd : DifferentiableAt ℝ (fun y : M2 n => (y * Z * yᴴ) i j) x :=
    ((contDiff_xZx Z i j).differentiable (by simp)).differentiableAt
  refine (hd.lineDeriv_eq_fderiv (v := v)).symm.trans ?_
  have e : (fun t : ℝ => ((x + t • v) * Z * (x + t • v)ᴴ) i j) = fun t : ℝ =>
      (x * Z * xᴴ) i j + (t : ℂ) * (v * Z * xᴴ + x * Z * vᴴ) i j + (t : ℂ) ^ 2 * (v * Z * vᴴ) i j := by
    funext t
    simp only [Matrix.conjTranspose_add, Matrix.conjTranspose_smul, star_trivial, Matrix.add_mul, Matrix.mul_add,
      Matrix.smul_mul, Matrix.mul_smul, Matrix.add_apply, Matrix.smul_apply, Complex.real_smul]
    ring
  have hr : HasDerivAt (fun t : ℝ => (t : ℂ)) 1 0 := Complex.ofRealCLM.hasDerivAt
  have h : HasDerivAt (fun t : ℝ => ((x + t • v) * Z * (x + t • v)ᴴ) i j) ((v * Z * xᴴ + x * Z * vᴴ) i j) 0 := by
    rw [e]
    have h1 : HasDerivAt (fun t : ℝ => (t : ℂ) * (v * Z * xᴴ + x * Z * vᴴ) i j) ((v * Z * xᴴ + x * Z * vᴴ) i j) 0 := by
      simpa using hr.mul_const ((v * Z * xᴴ + x * Z * vᴴ) i j)
    have h2 : HasDerivAt (fun t : ℝ => (t : ℂ) ^ 2 * (v * Z * vᴴ) i j) 0 0 := by
      simpa using (hr.pow 2).mul_const ((v * Z * vᴴ) i j)
    have h3 := ((hasDerivAt_const (0 : ℝ) ((x * Z * xᴴ) i j)).add h1).add h2
    refine (h3.congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_)).congr_deriv (by simp)
    simp
  simpa [lineDeriv] using h.deriv

theorem reK_add_imK (e : M2 n) : reK e + Complex.I • imK e = e := by
  simp only [reK, imK, smul_smul, smul_sub, smul_add]
  have h : Complex.I * (-Complex.I / 2) = 1 / 2 := by
    rw [mul_div_assoc', mul_neg, Complex.I_mul_I]; ring
  rw [h]
  module


theorem fderiv_xZx_skew (Z x E : M2 n) (hE : Eᴴ = -E) (i j : Fin n ⊕ Fin n) :
    fderiv ℝ (fun y : M2 n => (y * Z * yᴴ) i j) x (E * x) = (E * (x * Z * xᴴ) - (x * Z * xᴴ) * E) i j := by
  rw [fderiv_xZx, Matrix.conjTranspose_mul, hE]
  simp only [Matrix.mul_assoc, Matrix.mul_neg, sub_eq_add_neg]

theorem dK_xZx (Z x e : M2 n) (i j : Fin n ⊕ Fin n) :
    dK (fun y : M2 n => (y * Z * yᴴ) i j) x e = (e * (x * Z * xᴴ) - (x * Z * xᴴ) * e) i j := by
  rw [dK, fderiv_xZx_skew Z x _ (PositivityTheory.Rg.Sw.LVs.II.reK_skew e), fderiv_xZx_skew Z x _ (PositivityTheory.Rg.Sw.LVs.II.imK_skew e)]
  conv_rhs => rw [← reK_add_imK e]
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.smul_mul, Matrix.mul_smul, Matrix.sub_apply, Matrix.add_apply,
    Matrix.smul_apply, smul_eq_mul]
  ring

theorem toBlocks₂₂_apply' (M : M2 n) (a b : Fin n) : M.toBlocks₂₂ a b = M (Sum.inr a) (Sum.inr b) := rfl
theorem toBlocks₁₁_apply' (M : M2 n) (a b : Fin n) : M.toBlocks₁₁ a b = M (Sum.inl a) (Sum.inl b) := rfl

theorem decomp (M : M2 n) : M = fromBlocks (M.toBlocks₁₁ - M.toBlocks₂₂) (M.toBlocks₁₂ + M.toBlocks₂₁) 0 0 +
    ∑ a, ∑ b, (M.toBlocks₂₂ a b • eA a b + (-M.toBlocks₂₁ a b) • eB a b) := by
  ext i j
  rcases i with a' | a' <;> rcases j with b' | b' <;>
    simp [eA, eB, Matrix.sum_apply, Matrix.single_apply, ite_and, Finset.sum_ite_eq',
      Matrix.toBlocks₁₁, Matrix.toBlocks₁₂, Matrix.toBlocks₂₁, Matrix.toBlocks₂₂]

theorem eA_mul_apply (M : M2 n) (a b : Fin n) : (eA a b * M) (Sum.inr a) (Sum.inr b) = M (Sum.inr b) (Sum.inr b) := by
  simp [eA, Matrix.mul_apply, Fintype.sum_sum_type, Matrix.single_apply]

theorem mul_eA_apply (M : M2 n) (a b : Fin n) : (M * eA a b) (Sum.inr a) (Sum.inr b) = M (Sum.inr a) (Sum.inr a) := by
  simp [eA, Matrix.mul_apply, Fintype.sum_sum_type, Matrix.single_apply]

theorem eB_mul_apply (M : M2 n) (a b : Fin n) : (eB a b * M) (Sum.inr a) (Sum.inl b) = -M (Sum.inl b) (Sum.inl b) := by
  simp [eB, Matrix.mul_apply, Fintype.sum_sum_type, Matrix.single_apply]

theorem mul_eB_apply (M : M2 n) (a b : Fin n) : (M * eB a b) (Sum.inr a) (Sum.inl b) = -M (Sum.inr a) (Sum.inr a) := by
  simp [eB, Matrix.mul_apply, Fintype.sum_sum_type, Matrix.single_apply]

theorem sumA (M : M2 n) : ∑ a, ∑ b, ((eA a b * M - M * eA a b : M2 n) (Sum.inr a) (Sum.inr b)) = 0 := by
  simp only [Matrix.sub_apply, eA_mul_apply, mul_eA_apply, Finset.sum_sub_distrib]
  rw [Finset.sum_comm (f := fun a b => M (Sum.inr b) (Sum.inr b))]
  simp

theorem sumB (M : M2 n) : ∑ a, ∑ b, -((eB a b * M - M * eB a b : M2 n) (Sum.inr a) (Sum.inl b)) =
    (n : ℂ) * (M.toBlocks₁₁.trace - M.toBlocks₂₂.trace) := by
  simp only [Matrix.sub_apply, eB_mul_apply, mul_eB_apply, sub_neg_eq_add]
  simp only [Matrix.trace, Matrix.diag, toBlocks₁₁_apply', toBlocks₂₂_apply', mul_sub]
  have h : ∀ a b : Fin n, -(-M (Sum.inl b) (Sum.inl b) + M (Sum.inr a) (Sum.inr a)) =
      M (Sum.inl b) (Sum.inl b) - M (Sum.inr a) (Sum.inr a) := fun _ _ => by ring
  simp only [h, Finset.sum_sub_distrib, Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul,
    Finset.mul_sum]

theorem ptId : PtId := by
  intro n Θ x Z hx hΘ hlaw
  set M := x * Z * xᴴ with hM
  have hxZ : x * Z = M * x := by rw [hM, Matrix.mul_assoc (x * Z), hx.2, Matrix.mul_one]
  have hΘd : DifferentiableAt ℂ Θ x := hΘ.differentiableAt (by simp)
  have hR : ∀ v, fderiv ℝ Θ x v = fderiv ℂ Θ x v := fun v => by
    have h := (hΘd.hasFDerivAt.restrictScalars ℝ).fderiv
    exact (congrArg (fun L => L v) h).trans rfl
  have hdK : ∀ e, dK Θ x e = fderiv ℂ Θ x (e * x) := fun e => by
    rw [dK, hR, hR]
    conv_rhs => rw [← reK_add_imK e]
    rw [Matrix.add_mul, Matrix.smul_mul, map_add (f := _), map_smul, smul_eq_mul]
  have hLeib : ∀ c : M2 n → ℂ, DifferentiableAt ℝ c x → ∀ e,
      dK (fun y => c y * Θ y) x e = dK c x e * Θ x + c x * dK Θ x e := fun c hc e => by
    have hΘr : DifferentiableAt ℝ Θ x := hΘd.restrictScalars ℝ
    have h := (hc.hasFDerivAt.mul hΘr.hasFDerivAt).fderiv
    have hv : ∀ v, fderiv ℝ (fun y => c y * Θ y) x v = c x * fderiv ℝ Θ x v + Θ x * fderiv ℝ c x v := fun v => by
      exact (congrArg (fun L : M2 n →L[ℝ] ℂ => L v) h).trans rfl
    simp only [dK, hv]
    ring
  have hcA : ∀ a b, DifferentiableAt ℝ (cA Z a b) x := fun a b =>
    ((cDiff n Z a b).1.differentiable (by simp)).differentiableAt
  have hcB : ∀ a b, DifferentiableAt ℝ (cB Z a b) x := fun a b =>
    ((cDiff n Z a b).2.differentiable (by simp)).differentiableAt
  have hdA : ∀ a b e, dK (cA Z a b) x e = (e * M - M * e) (Sum.inr a) (Sum.inr b) := fun a b e =>
    dK_xZx Z x e (Sum.inr a) (Sum.inr b)
  have hdB : ∀ a b e, dK (cB Z a b) x e = -((e * M - M * e) (Sum.inr a) (Sum.inl b)) := fun a b e => by
    have : cB Z a b = fun y => -((y * Z * yᴴ) (Sum.inr a) (Sum.inl b)) := rfl
    have hd : DifferentiableAt ℝ (fun y : M2 n => (y * Z * yᴴ) (Sum.inr a) (Sum.inl b)) x :=
      ((contDiff_xZx Z _ _).differentiable (by simp)).differentiableAt
    have hn := hd.hasFDerivAt.neg.fderiv
    have hv : ∀ v, fderiv ℝ (fun y : M2 n => -(y * Z * yᴴ) (Sum.inr a) (Sum.inl b)) x v =
        -fderiv ℝ (fun y : M2 n => (y * Z * yᴴ) (Sum.inr a) (Sum.inl b)) x v := fun v => by
      exact (congrArg (fun L : M2 n →L[ℝ] ℂ => L v) hn).trans rfl
    have h := dK_xZx Z x e (Sum.inr a) (Sum.inl b)
    rw [dK] at h
    rw [this, dK, hv, hv, ← h]; ring

  have hL : fderiv ℂ Θ x (x * Z) = (n : ℂ) * (M.toBlocks₁₁.trace - M.toBlocks₂₂.trace) * Θ x +
      ∑ a, ∑ b, (cA Z a b x * dK Θ x (eA a b) + cB Z a b x * dK Θ x (eB a b)) := by
    rw [hxZ]
    conv_lhs => rw [decomp M]
    rw [Matrix.add_mul, map_add (f := _), hlaw _ (by simp)]

    simp only [Matrix.sum_mul, map_sum, Matrix.add_mul, Matrix.smul_mul, map_add (f := _), map_smul, smul_eq_mul, hdK]
    congr 1
    · simp [Matrix.trace_sub]
  rw [hL]
  simp only [hLeib _ (hcA _ _), hLeib _ (hcB _ _), hdA, hdB]
  have e1 : ∀ a b, (eA a b * M - M * eA a b) (Sum.inr a) (Sum.inr b) * Θ x + cA Z a b x * dK Θ x (eA a b) +
      (-((eB a b * M - M * eB a b) (Sum.inr a) (Sum.inl b)) * Θ x + cB Z a b x * dK Θ x (eB a b)) =
      ((eA a b * M - M * eA a b) (Sum.inr a) (Sum.inr b) + -((eB a b * M - M * eB a b) (Sum.inr a) (Sum.inl b))) * Θ x +
      (cA Z a b x * dK Θ x (eA a b) + cB Z a b x * dK Θ x (eB a b)) := fun a b => by ring
  simp only [e1, Finset.sum_add_distrib, ← Finset.sum_mul, sumA, sumB]
  ring

end PositivityTheory.Rg.Sw.LVs.II
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.FderivXZxSkew =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.InfInv =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.InfInv", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.InfInvA\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.SingToDiffAlt\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.DetOneAddSmulSingleSame\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.FderivXZxSkew\npublic import Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.IILeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped ContDiff

namespace PositivityTheory.Rg.Sw.LVs.II

open PositivityTheory.Rg.Sw PositivityTheory.Rg.Sw.LVs

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem eA_comm {n : ℕ} (a b : Fin n) : eA a b * JJ n = JJ n * eA a b := by
  simp [eA, JJ, Matrix.fromBlocks_multiply]

theorem eB_comm {n : ℕ} (a b : Fin n) : eB a b * JJ n = JJ n * eB a b := by
  simp [eB, JJ, Matrix.fromBlocks_multiply]

theorem infInv_of (hL : LeftDeriv) (hP : LawDeriv) (hI : PtId) (hC : CDiff) : InfInv := by
  intro n F1 F2 Ω hΩ hGΩ hF1 hF2 hlaw Kg _ _ _ _ _ _ μ _ ι hι hK Z
  have hΘc : ContDiffOn ℂ ∞ (fun y => F1 y * F2 y) Ω := hF1.mul hF2
  have hKk : ∀ k : Kg, InK (ι k) := fun k => (hK (ι k)).2 ⟨k, rfl⟩
  have hmem : ∀ k : Kg, ι k ∈ Ω := fun k => hGΩ (hKk k).1
  have hlawΘ := hP n (fun y => F1 y * F2 y) Ω hΩ hGΩ (hΘc.differentiableOn (by simp))
    (fun p x hp hp0 hx => hlaw p x hp hp0 hx)
  have hU : KSet n ⊆ Ω := fun g hg => hGΩ hg.1
  have hcd : ∀ c : M2 n → ℂ, ContDiff ℝ ∞ c →
      ContDiffOn ℝ 1 (fun y => c y * (F1 y * F2 y)) Ω := fun c hc =>
    (hc.contDiffOn.mul (hΘc.restrict_scalars ℝ)).of_le (by simp)
  have hA : ∀ a b : Fin n, Integrable (fun k => dK (fun y => cA Z a b y * (F1 y * F2 y)) (ι k) (eA a b)) μ ∧
      ∫ k, dK (fun y => cA Z a b y * (F1 y * F2 y)) (ι k) (eA a b) ∂μ = 0 := fun a b =>
    hL n Kg μ ι hι hK _ Ω hΩ hU (hcd _ (hC n Z a b).1) (eA a b) (eA_comm a b)
  have hB : ∀ a b : Fin n, Integrable (fun k => dK (fun y => cB Z a b y * (F1 y * F2 y)) (ι k) (eB a b)) μ ∧
      ∫ k, dK (fun y => cB Z a b y * (F1 y * F2 y)) (ι k) (eB a b) ∂μ = 0 := fun a b =>
    hL n Kg μ ι hι hK _ Ω hΩ hU (hcd _ (hC n Z a b).2) (eB a b) (eB_comm a b)
  have key : ∀ k : Kg, fderiv ℂ F1 (ι k) (ι k * Z) * F2 (ι k) + F1 (ι k) * fderiv ℂ F2 (ι k) (ι k * Z) =
      ∑ a : Fin n, ∑ b : Fin n, (dK (fun y => cA Z a b y * (F1 y * F2 y)) (ι k) (eA a b) +
        dK (fun y => cB Z a b y * (F1 y * F2 y)) (ι k) (eB a b)) := by
    intro k
    have hnh : Ω ∈ nhds (ι k) := hΩ.mem_nhds (hmem k)
    have hd1 : DifferentiableAt ℂ F1 (ι k) :=
      ((hF1.differentiableOn (by simp)) _ (hmem k)).differentiableAt hnh
    have hd2 : DifferentiableAt ℂ F2 (ι k) :=
      ((hF2.differentiableOn (by simp)) _ (hmem k)).differentiableAt hnh
    have hprod : fderiv ℂ (fun y => F1 y * F2 y) (ι k) (ι k * Z) =
        fderiv ℂ F1 (ι k) (ι k * Z) * F2 (ι k) + F1 (ι k) * fderiv ℂ F2 (ι k) (ι k * Z) := by
      have h : HasFDerivAt (fun y => F1 y * F2 y)
          (F1 (ι k) • fderiv ℂ F2 (ι k) + F2 (ι k) • fderiv ℂ F1 (ι k)) (ι k) :=
        hd1.hasFDerivAt.mul hd2.hasFDerivAt
      rw [h.fderiv]
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
      ring
    rw [← hprod]
    exact hI n (fun y => F1 y * F2 y) (ι k) Z (hKk k) ((hΘc.contDiffAt hnh).of_le (by simp))
      (fun Y hY => hlawΘ (ι k) (hKk k).1 Y hY)
  simp_rw [key]
  rw [MeasureTheory.integral_finsetSum]
  · refine Finset.sum_eq_zero (fun a _ => ?_)
    rw [MeasureTheory.integral_finsetSum]
    · refine Finset.sum_eq_zero (fun b _ => ?_)
      rw [integral_add (hA a b).1 (hB a b).1, (hA a b).2, (hB a b).2, add_zero]
    · intro b _
      exact (hA a b).1.add (hB a b).1
  · intro a _
    exact MeasureTheory.integrable_finsetSum _ (fun b _ => (hA a b).1.add (hB a b).1)

end PositivityTheory.Rg.Sw.LVs.II

namespace PositivityTheory.Rg.Sw.LVs

theorem infInv : InfInv := II.infInv_of II.leftDeriv II.lawDeriv II.ptId II.cDiff

end PositivityTheory.Rg.Sw.LVs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.SiegelWeilProof.HolomorphicContinuation.AnalyticDeterminants.InfInv =====
