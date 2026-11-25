module

public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.VolUFactProdMulLe
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.BridgeA
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.DensOn
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpB
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.ConjTransposeEqOfInG
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaPQ
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarMirror
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.JacobianNearOneOfSmall
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.MeasurableEmbeddingUpqMat
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Algebra.Order.Star.Real
import Mathlib.CategoryTheory.Countable
import Mathlib.Algebra.Order.Archimedean.Real.Hom
import Mathlib.Topology.Separation.CompletelyRegular
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.PolarHaar
import Mathlib.Tactic.Lemma
import Mathlib.Topology.Compactness.Paracompact

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.Bridge, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpC, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpD, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExp, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPolA, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPolB, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPol, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaDensityMuCDtr, ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaDensityUnique

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.Bridge =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.Bridge", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.VolUFactProdMulLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.BridgeA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7

variable {N : ℕ}

def cOmega (N : ℕ) : ℝ := 1 / (2 ^ (N * (N - 1) / 2) * volU N)

theorem cOmega_pos (N : ℕ) : 0 < cOmega N := by
  have hv : 0 < volU N := by
    unfold volU
    apply Finset.prod_pos
    intro i _
    have hf : (0 : ℝ) < (i.factorial : ℝ) := by exact_mod_cast Nat.factorial_pos i
    have hp : (0 : ℝ) < Real.pi ^ (i + 1) := pow_pos Real.pi_pos _
    exact div_pos (mul_pos two_pos hp) hf
  unfold cOmega
  exact div_pos one_pos (mul_pos (pow_pos two_pos _) hv)

theorem omegaDensity_haarProb (μ : Measure (Formalism.BasicNotions.UpqT N 0)) [μ.IsHaarMeasure] [IsProbabilityMeasure μ] :
    Formalism.BasicNotions.OmegaDensity μ (ENNReal.ofReal (cOmega N)) :=
  PolarCoordinateComparison.omegaDensity_main μ

theorem omegaDensity_cd (cd : Formalism.BasicNotions.CDHaar) (N : ℕ) :
    Formalism.BasicNotions.OmegaDensity (cd.cd N 0) (ENNReal.ofReal (cOmega N)) := by
  haveI := cd.haar N 0
  haveI := cd.prob N
  exact omegaDensity_haarProb (cd.cd N 0)

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.Bridge =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpC =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpC", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.DensOn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory Filter Topology Metric

namespace ReciprocityTheory.ChartRestriction.DS.HExp

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.S7 Formalism.BasicNotions.Examples₂.CD

variable {n : ℕ}

def sg (ε : Fin n → Bool) (a : Fin n) : ℂ := if ε a then 1 else -1

theorem inG_iff_entry {ε : Fin n → Bool} {X : Matrix (Fin n) (Fin n) ℂ} :
    inG ε X ↔ ∀ i j, star (X j i) * sg ε j + sg ε i * X i j = 0 := by
  unfold inG Jm sg
  constructor
  · intro h i j
    have := congrFun (congrFun h i) j
    rwa [Matrix.add_apply, Matrix.mul_diagonal, Matrix.diagonal_mul, Matrix.conjTranspose_apply,
      Matrix.zero_apply] at this
  · intro h
    ext i j
    rw [Matrix.add_apply, Matrix.mul_diagonal, Matrix.diagonal_mul, Matrix.conjTranspose_apply,
      Matrix.zero_apply]
    exact h i j

theorem gMat_inG {ε : Fin n → Bool} (s : GCo ε) : inG ε (gMat s) := by
  rw [inG_iff_entry]
  intro i j
  simp only [gMat, Matrix.add_apply, kMat, pmat, sg]
  rcases lt_trichotomy i j with h | rfl | h
  · have h1 : ¬ j < i := lt_asymm h
    have h2 : i ≠ j := ne_of_lt h
    by_cases he : ε i = ε j
    · simp [h, h1, h2, h2.symm, he]
    · have he' : ε j ≠ ε i := Ne.symm he
      simp [h, h1, h2, h2.symm, he, he']
      rcases Bool.eq_false_or_eq_true (ε i) with hi | hi <;>
        rcases Bool.eq_false_or_eq_true (ε j) with hj | hj <;> simp [hi, hj] at he ⊢
  · apply Complex.ext <;> simp <;> split_ifs <;> simp
  · have h1 : ¬ i < j := lt_asymm h
    have h2 : j ≠ i := ne_of_lt h
    by_cases he : ε i = ε j
    · simp [h, h1, h2, h2.symm, he]
      split_ifs <;> ring
    · have he' : ε j ≠ ε i := Ne.symm he
      simp [h, h1, h2, h2.symm, he, he']
      rcases Bool.eq_false_or_eq_true (ε i) with hi | hi <;>
        rcases Bool.eq_false_or_eq_true (ε j) with hj | hj <;> simp [hi, hj] at he ⊢

def gCo (ε : Fin n → Bool) (Z : Matrix (Fin n) (Fin n) ℂ) : GCo ε :=
  ((fun a => (Z a a).im, fun p => Z p.1.1 p.1.2), fun p => Z p.1.1 p.1.2)

theorem gCo_gMat {ε : Fin n → Bool} (s : GCo ε) : gCo ε (gMat s) = s := by
  obtain ⟨⟨w, x⟩, z⟩ := s
  refine Prod.ext (Prod.ext ?_ ?_) ?_
  · funext a
    simp [gCo, gMat, kMat, pmat]
  · funext p
    obtain ⟨⟨a, b⟩, hab, he⟩ := p
    have h1 : a ≠ b := (ne_of_lt hab).symm
    have h2 : ¬ a < b := lt_asymm hab
    simp [gCo, gMat, kMat, pmat, h1, hab, he, h2]
  · funext p
    obtain ⟨⟨a, b⟩, hab, he⟩ := p
    have h1 : a ≠ b := (ne_of_lt hab).symm
    have h2 : ¬ a < b := lt_asymm hab
    simp [gCo, gMat, kMat, pmat, h1, hab, he, h2]

theorem gMat_gCo {ε : Fin n → Bool} {Z : Matrix (Fin n) (Fin n) ℂ} (hZ : inG ε Z) :
    gMat (gCo ε Z) = Z := by
  rw [inG_iff_entry] at hZ
  ext i j
  have hij := hZ i j
  simp only [gMat, Matrix.add_apply, kMat, pmat, gCo, sg] at hij ⊢
  rcases lt_trichotomy i j with h | rfl | h
  · have h1 : ¬ j < i := lt_asymm h
    have h2 : i ≠ j := ne_of_lt h
    cases hi : ε i <;> cases hj : ε j <;> simp [h, h1, h2, hi, hj] at hij ⊢ <;>
      first | linear_combination hij | linear_combination -hij
  · apply Complex.ext <;> simp
    · have := congrArg Complex.re hij
      cases hi : ε i <;> simp [hi] at this <;> linarith
  · have h1 : ¬ i < j := lt_asymm h
    have h2 : j ≠ i := ne_of_lt h
    simp [h, h1, h2.symm]
    split_ifs <;> simp

end ReciprocityTheory.ChartRestriction.DS.HExp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpC =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpD =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpD", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.DensOn\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.ConjTransposeEqOfInG\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpC\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory Filter Topology Metric
open scoped ENNReal NNReal

namespace ReciprocityTheory.ChartRestriction.DS.HExp

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.S7 Formalism.BasicNotions.Examples₂.CD

variable {n : ℕ}

theorem gMat_add {ε : Fin n → Bool} (s t : GCo ε) : gMat (s + t) = gMat s + gMat t := by
  ext a b
  simp only [gMat, Matrix.add_apply]
  simp only [kMat, pmat, Prod.fst_add, Prod.snd_add, Pi.add_apply]
  split_ifs <;> (try simp only [Complex.ofReal_add, star_add, mul_add, neg_add, add_zero]) <;>
    (try ring)

theorem gMat_smul {ε : Fin n → Bool} (c : ℝ) (s : GCo ε) : gMat (c • s) = (RingHom.id ℝ c) • gMat s := by
  ext a b
  simp only [gMat, RingHom.id_apply, Matrix.add_apply, Matrix.smul_apply]
  simp only [kMat, pmat, Prod.smul_fst, Prod.smul_snd, Pi.smul_apply]
  split_ifs <;> (try simp only [Complex.real_smul, star_mul', Complex.star_def,
    Complex.conj_ofReal, smul_add, smul_zero, smul_neg, add_zero]) <;>
    (try simp only [smul_eq_mul, Complex.ofReal_mul]) <;> (try ring_nf)

def gL (ε : Fin n → Bool) : GCo ε →ₗ[ℝ] Matrix (Fin n) (Fin n) ℂ where
  toFun := gMat
  map_add' := gMat_add
  map_smul' := gMat_smul

theorem gL_injective (ε : Fin n → Bool) : Function.Injective (gL ε) := by
  intro s t h
  have h' : gMat s = gMat t := h
  rw [← gCo_gMat s, ← gCo_gMat t, h']

abbrev gV (ε : Fin n → Bool) : Submodule ℝ (Matrix (Fin n) (Fin n) ℂ) := LinearMap.range (gL ε)

def gE (ε : Fin n → Bool) : GCo ε ≃ₗ[ℝ] gV ε := LinearEquiv.ofInjective (gL ε) (gL_injective ε)

def ujMat (ε : Fin n → Bool) : UJ ε →* Matrix (Fin n) (Fin n) ℂ :=
  (Units.coeHom _).comp (UJ ε).subtype

theorem ujMat_apply (ε : Fin n → Bool) (g : UJ ε) : ujMat ε g = toM g := rfl

section Normed

attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra

theorem exp_inUJ_small (ε : Fin n → Bool) : ∀ᶠ Z in 𝓝 (0 : Matrix (Fin n) (Fin n) ℂ),
    inUJ ε (NormedSpace.exp Z) → inG ε Z := by
  unfold inG
  have hd : HasStrictFDerivAt (NormedSpace.exp : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ)
      (1 : Matrix (Fin n) (Fin n) ℂ →L[ℂ] Matrix (Fin n) (Fin n) ℂ) 0 := hasStrictFDerivAt_exp_zero
  obtain ⟨s, hs, hap⟩ := hd.approximates_deriv_on_nhds (c := 1 / 2) (Or.inr (by norm_num))

  have hinj : ∀ x ∈ s, ∀ y ∈ s, NormedSpace.exp x = NormedSpace.exp y → x = y := by
    intro x hx y hy hxy
    have h := hap x hx y hy
    rw [hxy, sub_self] at h
    change ‖0 - (x - y)‖ ≤ ((1 / 2 : NNReal) : ℝ) * ‖x - y‖ at h
    rw [zero_sub, norm_neg, NNReal.coe_div, NNReal.coe_one, NNReal.coe_two] at h
    have h0 : ‖x - y‖ = 0 := le_antisymm (by linarith [norm_nonneg (x - y)]) (norm_nonneg _)
    exact sub_eq_zero.mp (norm_eq_zero.mp h0)
  have hJJ : Jm ε * Jm ε = 1 := by
    unfold Jm
    rw [Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
    congr 1
    funext a
    split_ifs <;> norm_num
  have hJi : (Jm ε)⁻¹ = Jm ε := Matrix.inv_eq_left_inv hJJ
  have hJu : IsUnit (Jm ε) := ⟨⟨Jm ε, Jm ε, hJJ, hJJ⟩, rfl⟩
  have hc1 : Tendsto (fun Z : Matrix (Fin n) (Fin n) ℂ => Jm ε * Zᴴ * Jm ε) (𝓝 0) (𝓝 0) := by
    have hcont : Continuous (fun Z : Matrix (Fin n) (Fin n) ℂ => Jm ε * Zᴴ * Jm ε) :=
      (continuous_const.matrix_mul continuous_id.matrix_conjTranspose).matrix_mul continuous_const
    simpa using hcont.tendsto 0
  have hc2 : Tendsto (fun Z : Matrix (Fin n) (Fin n) ℂ => -Z) (𝓝 0) (𝓝 0) := by
    simpa using (continuous_neg.tendsto (0 : Matrix (Fin n) (Fin n) ℂ))
  filter_upwards [hc1.eventually hs, hc2.eventually hs] with Z h1 h2 hU
  unfold inUJ at hU
  have hE : NormedSpace.exp (Jm ε * Zᴴ * Jm ε) = NormedSpace.exp (-Z) := by
    have hL : Jm ε * (NormedSpace.exp Z)ᴴ * Jm ε * NormedSpace.exp Z = 1 := by
      calc Jm ε * (NormedSpace.exp Z)ᴴ * Jm ε * NormedSpace.exp Z
          = Jm ε * ((NormedSpace.exp Z)ᴴ * Jm ε * NormedSpace.exp Z) := by
            simp only [Matrix.mul_assoc]
        _ = 1 := by rw [hU, hJJ]
    rw [show Jm ε * Zᴴ * Jm ε = Jm ε * Zᴴ * (Jm ε)⁻¹ by rw [hJi], Matrix.exp_conj _ _ hJu, hJi,
      Matrix.exp_conjTranspose, Matrix.exp_neg]
    exact (Matrix.inv_eq_left_inv hL).symm
  have hZ := hinj _ h1 _ h2 hE
  calc Zᴴ * Jm ε + Jm ε * Z = Jm ε * (Jm ε * Zᴴ * Jm ε) + Jm ε * Z := by
        simp only [← Matrix.mul_assoc, hJJ, Matrix.one_mul]
    _ = 0 := by rw [hZ, Matrix.mul_neg, neg_add_cancel]

def ujChart (ε : Fin n → Bool) : Chart (gV ε) (UJ ε) where
  mat := ujMat ε
  emb := (isClosedEmbedding_toM ε).isEmbedding
  H1 := fun X => by
    obtain ⟨s, hs⟩ := X.2
    have h : NormedSpace.exp (gMat s) ∈ Set.range (fun g : UJ ε => toM g) := by
      rw [range_toM]
      have := exp_smul_mem_UJset (gMat_inG s) 1
      simp only [Complex.ofReal_one, one_smul] at this
      exact this
    obtain ⟨g, hg⟩ := h
    refine ⟨g, ?_⟩
    rw [ujMat_apply, ← hs]
    exact hg
  H2 := by
    filter_upwards [exp_inUJ_small ε] with Z hZ hg
    obtain ⟨g, hg⟩ := hg
    have h1 : inUJ ε (ujMat ε g) := g.2
    rw [hg] at h1
    exact ⟨gCo ε Z, gMat_gCo (hZ h1)⟩

end Normed

end ReciprocityTheory.ChartRestriction.DS.HExp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpD =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExp =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExp", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.DensOn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpD\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExpB\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory Filter Topology Metric
open scoped ENNReal NNReal

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7 ReciprocityTheory.ChartRestriction.DS.HExp Formalism.BasicNotions.Examples₂.CD

variable {n : ℕ}

section Normed

attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra

theorem haar_exp_density {ε : Fin n → Bool} (μ : Measure (UJ ε)) [μ.IsHaarMeasure] :
    ∃ d : ℝ, 0 < d ∧ DensOn (fun S => μ (expSet S)) d := by
  letI mV : MeasurableSpace (gV ε) := borel _
  haveI : BorelSpace (gV ε) := ⟨rfl⟩
  let eC : GCo ε ≃L[ℝ] gV ε := (gE ε).toContinuousLinearEquiv
  let lam : Measure (gV ε) := Measure.map eC volume
  haveI : (volume : Measure (KCo ε)).IsAddHaarMeasure := Measure.prod.instIsAddHaarMeasure _ _
  haveI : (volume : Measure (GCo ε)).IsAddHaarMeasure := Measure.prod.instIsAddHaarMeasure _ _
  have hlamH : lam.IsAddHaarMeasure := eC.isAddHaarMeasure_map volume
  obtain ⟨c, hc0, hct, hup, hdown⟩ := HExp.Chart.exists_density_unif' (ujChart ε) inferInstance mV ⟨rfl⟩ _
    inferInstance inferInstance μ inferInstance lam (by exact hlamH)
  have himg : ∀ S : Set (GCo ε), (ujChart ε).img (eC '' S) = expSet S := by
    intro S
    ext g
    constructor
    · rintro ⟨_, ⟨s, hs, rfl⟩, h⟩
      exact ⟨s, hs, h⟩
    · rintro ⟨s, hs, h⟩
      exact ⟨eC s, ⟨s, hs, rfl⟩, h⟩
  have hmeas : ∀ S : Set (GCo ε), MeasurableSet S → MeasurableSet (eC '' S) := fun S hS =>
    eC.toHomeomorph.toMeasurableEquiv.measurableSet_image.mpr hS
  have hlam : ∀ S : Set (GCo ε), MeasurableSet S → lam (eC '' S) = volume S := by
    intro S hS
    rw [Measure.map_apply eC.continuous.measurable (hmeas S hS), Set.preimage_image_eq S eC.injective]
  have hsmall : ∀ δ > 0, ∃ δ' > 0, ∀ S : Set (GCo ε), (∀ s ∈ S, ‖s‖ < δ') →
      eC '' S ⊆ ball (0 : gV ε) δ := by
    intro δ hδ
    obtain ⟨δ', hδ', h⟩ := Metric.continuousAt_iff.mp (eC.continuous.continuousAt (x := 0)) δ hδ
    refine ⟨δ', hδ', fun S hS => ?_⟩
    rintro _ ⟨s, hs, rfl⟩
    have := h (x := s) (by simpa using hS s hs)
    simpa using this
  set d := c.toReal with hd
  have hdpos : 0 < d := ENNReal.toReal_pos hc0 hct
  have hc : c = ENNReal.ofReal d := (ENNReal.ofReal_toReal hct).symm
  refine ⟨d, hdpos, fun η hη => ?_⟩
  have hU : ∃ δ > 0, ∀ S : Set (GCo ε), MeasurableSet S → (∀ s ∈ S, ‖s‖ < δ) →
      μ (expSet S) ≤ ENNReal.ofReal ((1 + η) * d) * volume S := by
    obtain ⟨δ, hδ, h⟩ := hup (Real.toNNReal ((1 + η) * d)) (by
      rw [hc]
      show ENNReal.ofReal d < ENNReal.ofReal ((1 + η) * d)
      rw [ENNReal.ofReal_lt_ofReal_iff (by positivity)]
      nlinarith)
    obtain ⟨δ', hδ', h'⟩ := hsmall δ hδ
    refine ⟨δ', hδ', fun S hS hSδ => ?_⟩
    have := h (eC '' S) (hmeas S hS) (h' S hSδ)
    rw [himg, hlam S hS] at this
    exact this
  have hL : ∃ δ > 0, ∀ S : Set (GCo ε), MeasurableSet S → (∀ s ∈ S, ‖s‖ < δ) →
      ENNReal.ofReal ((1 - η) * d) * volume S ≤ μ (expSet S) := by
    by_cases hη1 : (1 - η) * d ≤ 0
    · refine ⟨1, one_pos, fun S _ _ => ?_⟩
      rw [ENNReal.ofReal_of_nonpos hη1, zero_mul]
      exact bot_le
    · have hη1' : 0 < (1 - η) * d := not_le.mp hη1
      obtain ⟨δ, hδ, h⟩ := hdown (Real.toNNReal ((1 - η) * d)) (by
        rw [hc]
        show ENNReal.ofReal ((1 - η) * d) < ENNReal.ofReal d
        rw [ENNReal.ofReal_lt_ofReal_iff hdpos]
        nlinarith)
      obtain ⟨δ', hδ', h'⟩ := hsmall δ hδ
      refine ⟨δ', hδ', fun S hS hSδ => ?_⟩
      have := h (eC '' S) (hmeas S hS) (h' S hSδ)
      rw [himg, hlam S hS] at this
      exact this
  obtain ⟨δ1, hδ1, h1⟩ := hU
  obtain ⟨δ2, hδ2, h2⟩ := hL
  refine ⟨min δ1 δ2, lt_min hδ1 hδ2, fun S hS hSδ => ⟨?_, ?_⟩⟩
  · exact h1 S hS fun s hs => lt_of_lt_of_le (hSδ s hs) (min_le_left _ _)
  · exact h2 S hS fun s hs => lt_of_lt_of_le (hSδ s hs) (min_le_right _ _)

end Normed

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExp =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPolA =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPolA", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.DensOn\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Filter Topology

namespace ReciprocityTheory.ChartRestriction.DS.HPol

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.S7 Formalism.BasicNotions.Examples₂.CD

variable {n : ℕ}

section Log

attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra

theorem exp_strict :
    HasStrictFDerivAt (NormedSpace.exp : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ)
      ((ContinuousLinearEquiv.refl ℝ (Matrix (Fin n) (Fin n) ℂ) :
        Matrix (Fin n) (Fin n) ℂ →L[ℝ] Matrix (Fin n) (Fin n) ℂ)) 0 := by
  first
  | exact hasStrictFDerivAt_exp_zero


variable (n) in
def logM : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ :=
  (exp_strict (n := n)).localInverse _ _ _

end Log

theorem Jm_inv (ε : Fin n → Bool) : (Jm ε)⁻¹ = Jm ε := by
  exact Matrix.inv_eq_left_inv (_root_.ReciprocityTheory.ChartRestriction.DS.S7.Jm_mul_self ε)

theorem Jm_isUnit (ε : Fin n → Bool) : IsUnit (Jm ε) := by
  exact ⟨⟨Jm ε, Jm ε, _root_.ReciprocityTheory.ChartRestriction.DS.S7.Jm_mul_self ε, _root_.ReciprocityTheory.ChartRestriction.DS.S7.Jm_mul_self ε⟩, rfl⟩

theorem conjT_of_inG {ε : Fin n → Bool} {Y : Matrix (Fin n) (Fin n) ℂ} (h : inG ε Y) :
    Yᴴ = Jm ε * (-Y) * (Jm ε)⁻¹ := by
  have hJ := _root_.ReciprocityTheory.ChartRestriction.DS.S7.Jm_mul_self ε
  have h' : Yᴴ * Jm ε + Jm ε * Y = 0 := h
  have h1 : Yᴴ * Jm ε = -(Jm ε * Y) := eq_neg_of_add_eq_zero_left h'
  rw [Jm_inv]
  calc Yᴴ = Yᴴ * Jm ε * Jm ε := by rw [Matrix.mul_assoc, hJ, Matrix.mul_one]
    _ = Jm ε * (-Y) * Jm ε := by rw [h1, Matrix.mul_neg]

theorem exp_inUJ {ε : Fin n → Bool} {Y : Matrix (Fin n) (Fin n) ℂ} (h : inG ε Y) :
    inUJ ε (NormedSpace.exp Y) := by
  have hJ := _root_.ReciprocityTheory.ChartRestriction.DS.S7.Jm_mul_self ε
  show (NormedSpace.exp Y)ᴴ * Jm ε * NormedSpace.exp Y = Jm ε
  rw [← Matrix.exp_conjTranspose, conjT_of_inG h, Matrix.exp_conj _ _ (Jm_isUnit ε), Jm_inv,
    Matrix.mul_assoc (Jm ε * NormedSpace.exp (-Y)) (Jm ε) (Jm ε), hJ, Matrix.mul_one, Matrix.mul_assoc,
    ← Matrix.exp_add_of_commute _ _ (Commute.neg_left (Commute.refl Y)), neg_add_cancel,
    NormedSpace.exp_zero, Matrix.mul_one]

theorem inG_of_exp {ε : Fin n → Bool} {Y : Matrix (Fin n) (Fin n) ℂ} (ℓ : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ)
    (hU : inUJ ε (NormedSpace.exp Y)) (h1 : ℓ (NormedSpace.exp Y) = Y)
    (h2 : ℓ (NormedSpace.exp (Jm ε * (-Yᴴ) * Jm ε)) = Jm ε * (-Yᴴ) * Jm ε) : inG ε Y := by
  have hJ := _root_.ReciprocityTheory.ChartRestriction.DS.S7.Jm_mul_self ε
  have hU' : (NormedSpace.exp Y)ᴴ * Jm ε * NormedSpace.exp Y = Jm ε := hU
  have hEE : NormedSpace.exp Y * NormedSpace.exp (-Y) = 1 := by
    rw [← Matrix.exp_add_of_commute _ _ (Commute.neg_right (Commute.refl Y)), add_neg_cancel,
      NormedSpace.exp_zero]
  have key : NormedSpace.exp (Jm ε * (-Yᴴ) * Jm ε) = NormedSpace.exp Y := by
    have e1 : Jm ε * (-Yᴴ) * Jm ε = Jm ε * (-Y)ᴴ * (Jm ε)⁻¹ := by
      rw [Jm_inv, Matrix.conjTranspose_neg]
    rw [e1, Matrix.exp_conj _ _ (Jm_isUnit ε), Jm_inv, Matrix.exp_conjTranspose]
    calc Jm ε * (NormedSpace.exp (-Y))ᴴ * Jm ε
        = Jm ε * (NormedSpace.exp (-Y))ᴴ * ((NormedSpace.exp Y)ᴴ * Jm ε * NormedSpace.exp Y) := by
          rw [hU']
      _ = Jm ε * (NormedSpace.exp Y * NormedSpace.exp (-Y))ᴴ * Jm ε * NormedSpace.exp Y := by
          rw [Matrix.conjTranspose_mul]
          simp only [Matrix.mul_assoc]
      _ = NormedSpace.exp Y := by
          rw [hEE, Matrix.conjTranspose_one, Matrix.mul_one, hJ, Matrix.one_mul]
  have hY : Y = Jm ε * (-Yᴴ) * Jm ε := by rw [← h2, key, h1]
  have h3 : Jm ε * Y = -(Yᴴ * Jm ε) := by
    calc Jm ε * Y = Jm ε * (Jm ε * (-Yᴴ) * Jm ε) := congrArg (Jm ε * ·) hY
      _ = -(Yᴴ * Jm ε) := by
          rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, hJ, Matrix.one_mul, Matrix.neg_mul]
  show Yᴴ * Jm ε + Jm ε * Y = 0
  rw [h3, add_neg_cancel]

def sg (ε : Fin n → Bool) (a : Fin n) : ℂ := if ε a then 1 else -1

theorem entry_of_inG {ε : Fin n → Bool} {Y : Matrix (Fin n) (Fin n) ℂ} (h : inG ε Y) (i j : Fin n) :
    star (Y j i) * sg ε j + sg ε i * Y i j = 0 := by
  have h' := congrFun (congrFun (show Yᴴ * Jm ε + Jm ε * Y = 0 from h) i) j
  simpa [Jm, sg, Matrix.mul_diagonal, Matrix.diagonal_mul, Matrix.conjTranspose_apply] using h'

theorem inG_of_entry' {ε : Fin n → Bool} {Y : Matrix (Fin n) (Fin n) ℂ}
    (h : ∀ i j, star (Y j i) * sg ε j + sg ε i * Y i j = 0) : inG ε Y := by
  show Yᴴ * Jm ε + Jm ε * Y = 0
  ext i j
  simpa [Jm, sg, Matrix.mul_diagonal, Matrix.diagonal_mul, Matrix.conjTranspose_apply] using h i j

def cLin (ε : Fin n → Bool) : Matrix (Fin n) (Fin n) ℂ →ₗ[ℝ] GCo ε where
  toFun Y := ((fun a => (Y a a).im, fun ab => Y ab.1.1 ab.1.2), fun ab => Y ab.1.1 ab.1.2)
  map_add' _ _ := by
    ext <;> simp
  map_smul' _ _ := by
    ext <;> simp

theorem cLin_apply (ε : Fin n → Bool) (Y : Matrix (Fin n) (Fin n) ℂ) :
    cLin ε Y = ((fun a => (Y a a).im, fun ab => Y ab.1.1 ab.1.2), fun ab => Y ab.1.1 ab.1.2) := rfl

theorem cLin_gMat {ε : Fin n → Bool} (s : GCo ε) : cLin ε (gMat s) = s := by
  obtain ⟨⟨d, k⟩, p⟩ := s
  rw [cLin_apply]
  refine Prod.ext (Prod.ext ?_ ?_) ?_
  · funext a
    simp [gMat, kMat, pmat]
  · funext ab
    obtain ⟨⟨a, b⟩, hab⟩ := ab
    have h1 : a ≠ b := ne_of_gt hab.1
    have h2 : ¬ a < b := not_lt_of_gt hab.1
    simp [gMat, kMat, pmat, h1, h2, hab.1, hab.2]
  · funext ab
    obtain ⟨⟨a, b⟩, hab⟩ := ab
    have h1 : a ≠ b := ne_of_gt hab.1
    have h2 : ¬ a < b := not_lt_of_gt hab.1
    simp [gMat, kMat, pmat, h1, h2, hab.1, hab.2]

theorem gMat_cLin {ε : Fin n → Bool} {Y : Matrix (Fin n) (Fin n) ℂ} (h : inG ε Y) :
    gMat (cLin ε Y) = Y := by
  ext a b
  have hE := entry_of_inG h a b
  rw [cLin_apply]
  simp only [gMat, kMat, pmat, Matrix.add_apply]
  rcases lt_trichotomy a b with hab | rfl | hab
  · have h1 : a ≠ b := ne_of_lt hab
    have h2 : ¬ b < a := not_lt_of_gt hab
    cases ha : ε a <;> cases hb : ε b <;>
      simp only [sg, ha, hb, ↓reduceIte, Bool.false_eq_true] at hE <;>
      simp [h1, h2, hab] <;>
      (try simp only [Complex.star_def] at hE) <;>
      first | linear_combination hE | linear_combination -hE
  · have h0 : star (Y a a) + Y a a = 0 := by
      cases ha : ε a <;> simp only [sg, ha, ↓reduceIte, Bool.false_eq_true] at hE <;>
        first | linear_combination hE | linear_combination -hE
    have hre : (Y a a).re = 0 := by
      have h4 := congrArg Complex.re h0
      simp at h4
      linarith
    apply Complex.ext <;> simp [hre]
  · have h1 : a ≠ b := ne_of_gt hab
    have h2 : ¬ a < b := not_lt_of_gt hab
    cases ha : ε a <;> cases hb : ε b <;> simp [h1, h2, hab]

theorem sg_eq {ε : Fin n → Bool} {i j : Fin n} (h : ε i = ε j) : sg ε i = sg ε j := by
  simp [sg, h]

theorem sg_ne {ε : Fin n → Bool} {i j : Fin n} (h : ¬ ε i = ε j) : sg ε i = -sg ε j := by
  unfold sg
  cases hi : ε i <;> cases hj : ε j <;> simp_all

theorem inG_gMat {ε : Fin n → Bool} (s : GCo ε) : inG ε (gMat s) := by
  apply inG_of_entry'
  intro i j
  obtain ⟨⟨d, k⟩, p⟩ := s
  simp only [gMat, kMat, pmat, Matrix.add_apply]
  rcases lt_trichotomy i j with hij | rfl | hij
  · have h1 : i ≠ j := ne_of_lt hij
    have h2 : ¬ j < i := not_lt_of_gt hij
    by_cases hε : ε i = ε j
    · simp [hε, h1, h1.symm, h2, hij, sg_eq hε]
      ring
    · simp [hε, Ne.symm hε, h1, h1.symm, h2, hij, sg_ne hε]
      ring
  · simp <;> ring
  · have h1 : i ≠ j := ne_of_gt hij
    have h2 : ¬ i < j := not_lt_of_gt hij
    by_cases hε : ε i = ε j
    · simp [hε, h1, h1.symm, h2, hij, sg_eq hε]
      ring
    · simp [hε, Ne.symm hε, h1, h1.symm, h2, hij, sg_ne hε]
      ring

end ReciprocityTheory.ChartRestriction.DS.HPol
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPolA =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPolB =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPolB", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPolA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Filter Topology MeasureTheory Metric
open scoped NNReal ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.HPol

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.S7 Formalism.BasicNotions.Examples₂.CD

variable {n : ℕ}

theorem pmat_zero' (ε : Fin n → Bool) : pmat (0 : PCoord ε → ℂ) = 0 := by
  ext a b; simp [pmat]

theorem kMat_zero' (ε : Fin n → Bool) : kMat (0 : KCo ε) = 0 := by
  ext a b; simp [kMat]

theorem gMat_fst {ε : Fin n → Bool} (w : KCo ε) : gMat ((w, 0) : GCo ε) = kMat w := by
  simp [gMat, pmat_zero']

theorem gMat_snd {ε : Fin n → Bool} (z : PCoord ε → ℂ) : gMat ((0, z) : GCo ε) = pmat z := by
  simp [gMat, kMat_zero']

def gLin (ε : Fin n → Bool) : GCo ε →ₗ[ℝ] Matrix (Fin n) (Fin n) ℂ where
  toFun := gMat
  map_add' s t := by
    ext a b
    simp only [gMat, kMat, pmat, Matrix.add_apply, Prod.fst_add, Prod.snd_add, Pi.add_apply]
    split_ifs <;> simp <;> ring
  map_smul' c s := by
    ext a b
    simp only [gMat, kMat, pmat, Matrix.add_apply, Matrix.smul_apply, Prod.smul_fst, Prod.smul_snd,
      Pi.smul_apply, RingHom.id_apply]
    split_ifs <;> simp [Complex.real_smul] <;> ring

theorem inUJ_mul {ε : Fin n → Bool} {g h : Matrix (Fin n) (Fin n) ℂ} (hg : inUJ ε g) (hh : inUJ ε h) :
    inUJ ε (g * h) := by
  unfold inUJ at *
  rw [Matrix.conjTranspose_mul]
  calc hᴴ * gᴴ * Jm ε * (g * h) = hᴴ * (gᴴ * Jm ε * g) * h := by simp only [Matrix.mul_assoc]
    _ = Jm ε := by rw [hg, hh]

theorem inUJ_pol {ε : Fin n → Bool} (s : GCo ε) :
    inUJ ε (NormedSpace.exp (kMat s.1) * NormedSpace.exp (pmat s.2)) := by
  rw [← gMat_fst, ← gMat_snd]
  exact inUJ_mul (exp_inUJ (inG_gMat _)) (exp_inUJ (inG_gMat _))

def Lm {ε : Fin n → Bool} (s : GCo ε) : GCo ε :=
  cLin ε (logM n (NormedSpace.exp (kMat s.1) * NormedSpace.exp (pmat s.2)))

section An

attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra

theorem exp_comp_strict {ε : Fin n → Bool} (A : GCo ε →L[ℝ] Matrix (Fin n) (Fin n) ℂ) :
    HasStrictFDerivAt (fun s => NormedSpace.exp (A s)) A 0 := by
  have h1 : HasStrictFDerivAt (NormedSpace.exp : Matrix (Fin n) (Fin n) ℂ → _)
      (ContinuousLinearMap.id ℝ _) (A 0) := by
    rw [map_zero]; exact exp_strict
  exact h1.comp (0 : GCo ε) A.hasStrictFDerivAt

theorem prod_strict (ε : Fin n → Bool) :
    HasStrictFDerivAt (fun s : GCo ε => NormedSpace.exp (kMat s.1) * NormedSpace.exp (pmat s.2))
      (LinearMap.toContinuousLinearMap (gLin ε)) 0 := by
  let kL : GCo ε →L[ℝ] Matrix (Fin n) (Fin n) ℂ :=
    LinearMap.toContinuousLinearMap ((gLin ε).comp ((LinearMap.inl ℝ _ _).comp (LinearMap.fst ℝ _ _)))
  let pL : GCo ε →L[ℝ] Matrix (Fin n) (Fin n) ℂ :=
    LinearMap.toContinuousLinearMap ((gLin ε).comp ((LinearMap.inr ℝ _ _).comp (LinearMap.snd ℝ _ _)))
  have ek : ∀ s : GCo ε, kL s = kMat s.1 := fun s => gMat_fst s.1
  have ep : ∀ s : GCo ε, pL s = pmat s.2 := fun s => gMat_snd s.2
  have h := (exp_comp_strict kL).mul' (exp_comp_strict pL)
  have hf : ((fun s : GCo ε => NormedSpace.exp (kL s)) * fun s => NormedSpace.exp (pL s)) =
      fun s => NormedSpace.exp (kMat s.1) * NormedSpace.exp (pmat s.2) := by
    funext s; rw [Pi.mul_apply, ek, ep]
  rw [hf] at h
  refine h.congr_fderiv (ContinuousLinearMap.ext fun s => ?_)
  have e0 : kMat (0 : GCo ε).1 = 0 := kMat_zero' ε
  have e1 : pmat (0 : GCo ε).2 = 0 := pmat_zero' ε
  change NormedSpace.exp (kL 0) * pL s + kL s * NormedSpace.exp (pL 0) = gMat s
  rw [ek, ep, ek, ep, e0, e1, NormedSpace.exp_zero, Matrix.one_mul, Matrix.mul_one, add_comm]
  rfl

theorem Lm_strict (ε : Fin n → Bool) :
    HasStrictFDerivAt (Lm (ε := ε)) (ContinuousLinearMap.id ℝ (GCo ε)) 0 := by
  have h0 : (fun s : GCo ε => NormedSpace.exp (kMat s.1) * NormedSpace.exp (pmat s.2)) 0 = 1 := by
    simp [kMat_zero', pmat_zero']
  have hl : HasStrictFDerivAt (logM n) (ContinuousLinearMap.id ℝ _)
      ((fun s : GCo ε => NormedSpace.exp (kMat s.1) * NormedSpace.exp (pmat s.2)) 0) := by
    have h := (exp_strict (n := n)).to_localInverse
    rw [NormedSpace.exp_zero] at h
    rw [h0]
    exact h
  have h := (LinearMap.toContinuousLinearMap (cLin ε)).hasStrictFDerivAt.comp (0 : GCo ε)
    (hl.comp (0 : GCo ε) (prod_strict ε))
  refine h.congr_fderiv (ContinuousLinearMap.ext fun s => ?_)
  simp only [ContinuousLinearMap.id_apply]
  exact cLin_gMat s

end An

section An

attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra

theorem Lm_exp (ε : Fin n → Bool) : ∀ᶠ s in 𝓝 (0 : GCo ε),
    NormedSpace.exp (gMat (Lm s)) = NormedSpace.exp (kMat s.1) * NormedSpace.exp (pmat s.2) := by
  have hP0 : NormedSpace.exp (kMat (0 : GCo ε).1) * NormedSpace.exp (pmat (0 : GCo ε).2) = 1 := by
    simp [kMat_zero', pmat_zero']
  have hP : Tendsto (fun s : GCo ε => NormedSpace.exp (kMat s.1) * NormedSpace.exp (pmat s.2))
      (𝓝 0) (𝓝 1) := by
    have := (prod_strict ε).continuousAt.tendsto
    rwa [hP0] at this
  have hlog := exp_strict (n := n)
  have hl : Tendsto (logM n) (𝓝 1) (𝓝 0) := by
    have h := hlog.to_localInverse.continuousAt.tendsto
    rw [hlog.localInverse_apply_image, NormedSpace.exp_zero] at h
    exact h
  have hΦ := hl.comp hP
  have hc : Continuous fun Y : Matrix (Fin n) (Fin n) ℂ => Jm ε * (-Yᴴ) * Jm ε :=
    (continuous_const.matrix_mul continuous_id.matrix_conjTranspose.neg).matrix_mul continuous_const
  have hJ : Tendsto (fun s : GCo ε =>
      Jm ε * (-(logM n (NormedSpace.exp (kMat s.1) * NormedSpace.exp (pmat s.2)))ᴴ) * Jm ε)
      (𝓝 0) (𝓝 0) := by
    have := (hc.tendsto 0).comp hΦ
    simp only [Matrix.conjTranspose_zero, neg_zero, Matrix.mul_zero, Matrix.zero_mul] at this
    exact this
  have hleft : ∀ᶠ X in 𝓝 (0 : Matrix (Fin n) (Fin n) ℂ), logM n (NormedSpace.exp X) = X :=
    hlog.eventually_left_inverse
  have hright : ∀ᶠ Y in 𝓝 (1 : Matrix (Fin n) (Fin n) ℂ), NormedSpace.exp (logM n Y) = Y := by
    have h := hlog.eventually_right_inverse
    rw [NormedSpace.exp_zero] at h
    exact h
  filter_upwards [hP.eventually hright, hΦ.eventually hleft, hJ.eventually hleft]
    with s h1 h2 h3
  have hU : inUJ ε (NormedSpace.exp (logM n (NormedSpace.exp (kMat s.1) * NormedSpace.exp (pmat s.2)))) := by
    rw [h1]; exact inUJ_pol s
  have hG := inG_of_exp (logM n) hU h2 h3
  show NormedSpace.exp (gMat (cLin ε _)) = _
  rw [gMat_cLin hG, h1]

end An

theorem polSet_eq_expSet (ε : Fin n → Bool) : ∃ δ > 0, ∀ S : Set (GCo ε), (∀ s ∈ S, ‖s‖ < δ) →
    polSet S = expSet (Lm '' S) := by
  obtain ⟨δ, hδ, h⟩ := Metric.eventually_nhds_iff_ball.mp (Lm_exp ε)
  refine ⟨δ, hδ, fun S hS => ?_⟩
  ext g
  constructor
  · rintro ⟨s, hs, hg⟩
    refine ⟨Lm s, ⟨s, hs, rfl⟩, ?_⟩
    rw [hg, h s (by simpa using hS s hs)]
  · rintro ⟨t, ⟨s, hs, rfl⟩, hg⟩
    refine ⟨s, hs, ?_⟩
    rw [hg, h s (by simpa using hS s hs)]

attribute [local instance] Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra in
theorem Lm_zero (ε : Fin n → Bool) : Lm (0 : GCo ε) = 0 := by
  have h := (exp_strict (n := n)).localInverse_apply_image
  rw [NormedSpace.exp_zero] at h
  have hzero : logM n 1 = 0 := h
  simp [Lm, kMat_zero', pmat_zero', hzero]

instance borel_gco (ε : Fin n → Bool) : BorelSpace (GCo ε) := Prod.borelSpace

theorem volume_gco_isAddHaar (ε : Fin n → Bool) : (volume : Measure (GCo ε)).IsAddHaarMeasure := by
  have : (volume : Measure (KPair ε → ℂ)).IsAddHaarMeasure := Measure.pi.isAddHaarMeasure _
  have : (volume : Measure (PCoord ε → ℂ)).IsAddHaarMeasure := Measure.pi.isAddHaarMeasure _
  have : (volume : Measure (KCo ε)).IsAddHaarMeasure := Measure.prod.instIsAddHaarMeasure _ _
  exact Measure.prod.instIsAddHaarMeasure _ _

theorem image_est (ε : Fin n → Bool) {η : ℝ} (hη : 0 < η) : ∃ δ > 0, ∀ S : Set (GCo ε),
    MeasurableSet S → (∀ s ∈ S, ‖s‖ < δ) →
      MeasurableSet (Lm '' S) ∧ (∀ s ∈ S, ‖Lm s‖ ≤ 2 * ‖s‖) ∧
      volume (Lm '' S) ≤ ENNReal.ofReal (1 + η) * volume S ∧
      ENNReal.ofReal (1 - η) * volume S ≤ volume (Lm '' S) := by
  have := volume_gco_isAddHaar ε
  set A := ContinuousLinearMap.id ℝ (GCo ε)
  have hdet : A.det = 1 := by
    rw [ContinuousLinearMap.det, ContinuousLinearMap.coe_id, LinearMap.det_id]
  have hm1 : ENNReal.ofReal |A.det| < ((Real.toNNReal (1 + η) : ℝ≥0) : ℝ≥0∞) := by
    rw [hdet, abs_one, ENNReal.ofReal_one]
    have : (1 : ℝ≥0) < Real.toNNReal (1 + η) := by
      rw [← Real.toNNReal_one]; exact (Real.toNNReal_lt_toNNReal_iff (by linarith)).2 (by linarith)
    exact_mod_cast this
  have hm2 : ((Real.toNNReal (1 - η) : ℝ≥0) : ℝ≥0∞) < ENNReal.ofReal |A.det| := by
    rw [hdet, abs_one, ENNReal.ofReal_one]
    have : Real.toNNReal (1 - η) < 1 := by
      rw [Real.toNNReal_lt_one]; linarith
    exact_mod_cast this
  have h1 := addHaar_image_le_mul_of_det_lt (volume : Measure (GCo ε)) A hm1
  have h2 := mul_le_addHaar_image_of_lt_det (volume : Measure (GCo ε)) A hm2
  have h3 : ∀ᶠ c in 𝓝[>] (0 : ℝ≥0), c < 1 :=
    nhdsWithin_le_nhds (eventually_lt_nhds zero_lt_one)
  have h4 : ∀ᶠ c in 𝓝[>] (0 : ℝ≥0), 0 < c := self_mem_nhdsWithin
  obtain ⟨c, hc1, hc2, hc3, hc4⟩ := (h1.and (h2.and (h3.and h4))).exists
  obtain ⟨U, hU, hA⟩ := (Lm_strict ε).approximates_deriv_on_nhds (c := c) (Or.inr hc4)
  obtain ⟨δ, hδ, hball⟩ := Metric.mem_nhds_iff.mp hU
  have hB := hA.mono_set hball
  refine ⟨δ, hδ, fun S hS hSδ => ?_⟩
  have hSb : S ⊆ ball 0 δ := fun s hs => mem_ball_zero_iff.mpr (hSδ s hs)
  have hAS := hB.mono_set hSb
  have hc1' : (c : ℝ) < 1 := by exact_mod_cast hc3
  have hinj : Set.InjOn Lm S := by
    intro x hx y hy hxy
    have h := hAS x hx y hy
    simp only [ContinuousLinearMap.id_apply, hxy, sub_self, zero_sub, norm_neg] at h
    have h0 : ‖x - y‖ = 0 := by
      have := norm_nonneg (x - y)
      nlinarith
    exact sub_eq_zero.mp (norm_eq_zero.mp h0)
  have : PolishSpace (KPair ε → ℂ) := inferInstance
  have : PolishSpace (PCoord ε → ℂ) := inferInstance
  have : PolishSpace (KCo ε) := inferInstance
  have : PolishSpace (GCo ε) := inferInstance
  refine ⟨hS.image_of_continuousOn_injOn hAS.continuousOn hinj, fun s hs => ?_, hc1 S Lm hAS,
    hc2 S Lm hAS⟩
  have h := hB s (hSb hs) 0 (mem_ball_self hδ)
  simp only [ContinuousLinearMap.id_apply, Lm_zero, sub_zero] at h
  have := norm_sub_norm_le (Lm s) s
  have := norm_nonneg s
  nlinarith

end ReciprocityTheory.ChartRestriction.DS.HPol
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPolB =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPol =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPol", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.DensOn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPolB\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory Metric

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7 ReciprocityTheory.ChartRestriction.DS.HPol

variable {n : ℕ}

theorem haar_pol_density {ε : Fin n → Bool} (μ : Measure (UJ ε)) [μ.IsHaarMeasure] (d : ℝ)
    (h : DensOn (fun S => μ (expSet S)) d) : DensOn (fun S => μ (polSet S)) d := by
  intro η hη
  set η' : ℝ := min (η / 3) (1 / 2) with hη'def
  have hη'0 : 0 < η' := lt_min (by positivity) (by norm_num)
  have hη'1 : η' ≤ 1 / 2 := min_le_right _ _
  have hη'3 : η' ≤ η / 3 := min_le_left _ _
  obtain ⟨δ1, hδ1, hE⟩ := h η' hη'0
  obtain ⟨δ4, hδ4, hE2⟩ := h 2 (by norm_num)
  obtain ⟨δ2, hδ2, hI⟩ := HPol.image_est ε hη'0
  obtain ⟨δ3, hδ3, hP⟩ := HPol.polSet_eq_expSet ε
  refine ⟨min (min δ2 δ3) (min (δ1 / 2) (δ4 / 2)),
    lt_min (lt_min hδ2 hδ3) (lt_min (by positivity) (by positivity)), fun S hS hsmall => ?_⟩
  have hs2 : ∀ s ∈ S, ‖s‖ < δ2 := fun s hs =>
    lt_of_lt_of_le (hsmall s hs) ((min_le_left _ _).trans (min_le_left _ _))
  have hs3 : ∀ s ∈ S, ‖s‖ < δ3 := fun s hs =>
    lt_of_lt_of_le (hsmall s hs) ((min_le_left _ _).trans (min_le_right _ _))
  have hs1 : ∀ s ∈ S, ‖s‖ < δ1 / 2 := fun s hs =>
    lt_of_lt_of_le (hsmall s hs) ((min_le_right _ _).trans (min_le_left _ _))
  have hs4 : ∀ s ∈ S, ‖s‖ < δ4 / 2 := fun s hs =>
    lt_of_lt_of_le (hsmall s hs) ((min_le_right _ _).trans (min_le_right _ _))
  obtain ⟨hmeas, hnorm, hup, hlo⟩ := hI S hS hs2
  have hsm1 : ∀ t ∈ HPol.Lm '' S, ‖t‖ < δ1 := by
    rintro _ ⟨s, hs, rfl⟩
    have := hs1 s hs
    linarith [hnorm s hs]
  have hsm4 : ∀ t ∈ HPol.Lm '' S, ‖t‖ < δ4 := by
    rintro _ ⟨s, hs, rfl⟩
    have := hs4 s hs
    linarith [hnorm s hs]
  obtain ⟨hEu, hEl⟩ := hE _ hmeas hsm1
  beta_reduce at hEu hEl ⊢
  rw [hP S hs3]
  have hsq1 : (1 + η') * (1 + η') ≤ 1 + η := by nlinarith
  have hsq2 : 1 - η ≤ (1 - η') * (1 - η') := by nlinarith
  constructor
  · calc μ (expSet (HPol.Lm '' S)) ≤ ENNReal.ofReal ((1 + η') * d) * volume (HPol.Lm '' S) := hEu
      _ ≤ ENNReal.ofReal ((1 + η') * d) * (ENNReal.ofReal (1 + η') * volume S) := by gcongr
      _ = (ENNReal.ofReal ((1 + η') * d) * ENNReal.ofReal (1 + η')) * volume S := by
        rw [mul_assoc]
      _ ≤ ENNReal.ofReal ((1 + η) * d) * volume S := by
        gcongr
        rcases le_or_gt 0 d with hd | hd
        · rw [← ENNReal.ofReal_mul (by positivity)]
          apply ENNReal.ofReal_le_ofReal
          calc (1 + η') * d * (1 + η') = ((1 + η') * (1 + η')) * d := by ring
            _ ≤ (1 + η) * d := mul_le_mul_of_nonneg_right hsq1 hd
        · rw [ENNReal.ofReal_of_nonpos (by nlinarith), zero_mul]
          exact zero_le
  · rcases le_or_gt 0 d with hd | hd
    · calc ENNReal.ofReal ((1 - η) * d) * volume S
          ≤ (ENNReal.ofReal ((1 - η') * d) * ENNReal.ofReal (1 - η')) * volume S := by
            gcongr
            rw [← ENNReal.ofReal_mul (mul_nonneg (by linarith) hd)]
            apply ENNReal.ofReal_le_ofReal
            calc (1 - η) * d ≤ ((1 - η') * (1 - η')) * d := mul_le_mul_of_nonneg_right hsq2 hd
              _ = (1 - η') * d * (1 - η') := by ring
        _ = ENNReal.ofReal ((1 - η') * d) * (ENNReal.ofReal (1 - η') * volume S) := by
            rw [mul_assoc]
        _ ≤ ENNReal.ofReal ((1 - η') * d) * volume (HPol.Lm '' S) := by gcongr
        _ ≤ μ (expSet (HPol.Lm '' S)) := hEl
    ·
      obtain ⟨hE2u, hE2l⟩ := hE2 _ hmeas hsm4
      beta_reduce at hE2u hE2l
      have h3 : ENNReal.ofReal ((1 + 2) * d) = 0 := ENNReal.ofReal_of_nonpos (by linarith)
      rw [h3, zero_mul] at hE2u
      have h0 : ENNReal.ofReal ((1 - 2) * d) * volume (HPol.Lm '' S) = 0 :=
        le_antisymm (hE2l.trans hE2u) (zero_le)
      have hpos : ENNReal.ofReal ((1 - 2) * d) ≠ 0 := by
        rw [Ne, ENNReal.ofReal_eq_zero, not_le]
        linarith
      have hvL : volume (HPol.Lm '' S) = 0 := (mul_eq_zero.mp h0).resolve_left hpos
      rw [hvL] at hlo
      have hpos' : ENNReal.ofReal (1 - η') ≠ 0 := by
        rw [Ne, ENNReal.ofReal_eq_zero, not_le]
        linarith
      have hvS : volume S = 0 :=
        (mul_eq_zero.mp (le_antisymm hlo (zero_le))).resolve_left hpos'
      rw [hvS, mul_zero]
      exact zero_le

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPol =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaDensityMuCDtr =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaDensityMuCDtr", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaPQ\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.Bridge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarMirror\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarExp\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.HaarPol\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.JacobianNearOneOfSmall\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.MeasurableEmbeddingUpqMat\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.PolarHaar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7

open Topology Filter

variable {n : ℕ}

def muCDtr {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) (ε : Fin n → Bool) : Measure (Formalism.BasicNotions.UpqT P Q) :=
  Measure.comap (β := Fin n → Fin n → ℂ)
    (fun g : Formalism.BasicNotions.UpqT P Q => Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g))
    (ENNReal.ofReal (cPQ ε) • muPolarMat ε)

theorem tie_tendsto {f : ℝ → ENNReal} {x : ℝ} (hx : 0 < x)
    (h : ∀ η : ℝ, 0 < η → ∀ᶠ r in 𝓝[>] (0 : ℝ),
      ENNReal.ofReal ((1 - η) * x) ≤ f r ∧ f r ≤ ENNReal.ofReal ((1 + η) * x)) :
    Tendsto f (𝓝[>] 0) (𝓝 (ENNReal.ofReal x)) := by
  rw [tendsto_order]
  refine ⟨fun a ha => ?_, fun a ha => ?_⟩
  · have hat : a ≠ ⊤ := ne_top_of_lt ha
    have ht : a.toReal < x := by
      have := (ENNReal.toReal_lt_toReal hat ENNReal.ofReal_ne_top).2 ha
      rwa [ENNReal.toReal_ofReal hx.le] at this
    have ht0 : 0 ≤ a.toReal := ENNReal.toReal_nonneg
    have hη : 0 < (x - a.toReal) / (2 * x) := div_pos (by linarith) (by linarith)
    filter_upwards [h _ hη] with r hr
    have e1 : (1 - (x - a.toReal) / (2 * x)) * x = (x + a.toReal) / 2 := by field_simp; ring
    calc a = ENNReal.ofReal a.toReal := (ENNReal.ofReal_toReal hat).symm
      _ < ENNReal.ofReal ((1 - (x - a.toReal) / (2 * x)) * x) := by
          rw [e1]; exact (ENNReal.ofReal_lt_ofReal_iff (by linarith)).2 (by linarith)
      _ ≤ f r := hr.1
  · by_cases hat : a = ⊤
    · filter_upwards [h 1 one_pos] with r hr
      exact lt_of_le_of_lt hr.2 (hat ▸ ENNReal.ofReal_lt_top)
    · have ht : x < a.toReal := by
        have := (ENNReal.toReal_lt_toReal ENNReal.ofReal_ne_top hat).2 ha
        rwa [ENNReal.toReal_ofReal hx.le] at this
      have hη : 0 < (a.toReal - x) / (2 * x) := div_pos (by linarith) (by linarith)
      filter_upwards [h _ hη] with r hr
      have e1 : (1 + (a.toReal - x) / (2 * x)) * x = (x + a.toReal) / 2 := by field_simp; ring
      calc f r ≤ _ := hr.2
        _ < ENNReal.ofReal a.toReal := by
          rw [e1]; exact (ENNReal.ofReal_lt_ofReal_iff (by linarith)).2 (by linarith)
        _ = a := ENNReal.ofReal_toReal hat

theorem tie_cancel {p q : ℝ} {v : ENNReal} (hv0 : v ≠ 0) (hvt : v ≠ ⊤) (hq : 0 ≤ q)
    (h : ENNReal.ofReal p * v ≤ ENNReal.ofReal q * v) : p ≤ q := by
  have := (ENNReal.mul_le_mul_iff_left hv0 hvt).1 h
  have h2 := (ENNReal.ofReal_le_ofReal_iff hq).1 this
  exact h2

theorem tie_d_eq (ε : Fin n → Bool) (d : ℝ) (hd0 : 0 < d)
    (hd : DensOn (fun S => muPolar ε (expSet S)) d) : d = 1 / (volU (pOf ε) * volU (qOf ε)) := by
  haveI := muPolar_isHaar ε
  obtain ⟨hK, hP, hG⟩ := gco_haar ε
  have hpol := haar_pol_density (muPolar ε) d hd
  set x := volU (pOf ε) * volU (qOf ε) with hx
  have hx0 : 0 < x := mul_pos (_root_.ReciprocityTheory.ChartRestriction.DS.volU_pos' _) (_root_.ReciprocityTheory.ChartRestriction.DS.volU_pos' _)
  set D := 1 / x with hD
  have hD0 : 0 < D := by positivity
  have key : ∀ η : ℝ, 0 < η → η < 1 → (1 - η) * d ≤ (1 + η) * D ∧ (1 - η) * D ≤ (1 + η) * d := by
    intro η hη hη1
    obtain ⟨δ1, hδ1, h1⟩ := hpol η hη
    obtain ⟨δ2, hδ2, h2⟩ := muPolar_near_one ε η hη
    set δ := min δ1 δ2
    have hδ : 0 < δ := lt_min hδ1 hδ2
    set B := Metric.ball (0 : KCo ε) (δ / 2)
    set C := Metric.ball (0 : PCoord ε → ℂ) (δ / 2)
    have hB0 : volume B ≠ 0 := (Metric.measure_ball_pos volume _ (by positivity)).ne'
    have hC0 : volume C ≠ 0 := (Metric.measure_ball_pos volume _ (by positivity)).ne'
    have hBt : volume B ≠ ⊤ := measure_ball_lt_top.ne
    have hCt : volume C ≠ ⊤ := measure_ball_lt_top.ne
    have hBm : MeasurableSet B := Metric.isOpen_ball.measurableSet
    have hCm : MeasurableSet C := Metric.isOpen_ball.measurableSet
    have hSm : MeasurableSet (B ×ˢ C) := hBm.prod hCm
    have hvS : volume (B ×ˢ C) = volume B * volume C := by
      rw [Measure.volume_eq_prod, Measure.prod_prod]
    have hv0 : volume B * volume C ≠ 0 := mul_ne_zero hB0 hC0
    have hvt : volume B * volume C ≠ ⊤ := ENNReal.mul_ne_top hBt hCt
    have hsm : ∀ s ∈ B ×ˢ C, ‖s‖ < δ1 := by
      intro s hs
      have h1' : ‖s.1‖ < δ / 2 := by simpa [B] using hs.1
      have h2' : ‖s.2‖ < δ / 2 := by simpa [C] using hs.2
      have : ‖s‖ ≤ δ / 2 := norm_prod_le_iff.2 ⟨h1'.le, h2'.le⟩
      linarith [min_le_left δ1 δ2]
    have hB : ∀ w ∈ B, ‖w‖ < δ2 := by
      intro w hw
      have : ‖w‖ < δ / 2 := by simpa [B] using hw
      linarith [min_le_right δ1 δ2]
    have hC : ∀ z ∈ C, ‖z‖ < δ2 := by
      intro z hz
      have : ‖z‖ < δ / 2 := by simpa [C] using hz
      linarith [min_le_right δ1 δ2]
    obtain ⟨u1, l1⟩ := h1 (B ×ˢ C) hSm hsm
    obtain ⟨u2, l2⟩ := h2 B C hBm hCm hB hC
    rw [hvS] at u1 l1
    have e1 : (1 + η) / x = (1 + η) * D := by rw [hD]; ring
    have e2 : (1 - η) / x = (1 - η) * D := by rw [hD]; ring
    rw [e1] at u2
    rw [e2] at l2
    constructor
    · exact tie_cancel hv0 hvt (by positivity) (l1.trans u2)
    · exact tie_cancel hv0 hvt (by positivity) (l2.trans u1)
  rcases lt_trichotomy d D with hlt | heq | hgt
  · exfalso
    set η := (D - d) / (2 * (D + d))
    have hη : 0 < η := div_pos (by linarith) (by linarith)
    have hη1 : η < 1 := by
      rw [div_lt_one (by linarith)]; linarith
    have e : η * (2 * (D + d)) = D - d := div_mul_cancel₀ _ (by linarith)
    have := (key η hη hη1).2
    nlinarith
  · exact heq
  · exfalso
    set η := (d - D) / (2 * (D + d))
    have hη : 0 < η := div_pos (by linarith) (by linarith)
    have hη1 : η < 1 := by
      rw [div_lt_one (by linarith)]; linarith
    have e : η * (2 * (D + d)) = d - D := div_mul_cancel₀ _ (by linarith)
    have := (key η hη hη1).1
    nlinarith

section

variable {P Q : ℕ}

theorem tie_sum_reindex (e : Fin P ⊕ Fin Q ≃ Fin n) (M : Matrix (Fin n) (Fin n) ℂ) :
    ∑ i, ∑ j, ‖Matrix.reindex e.symm e.symm M i j‖ = ∑ a, ∑ b, ‖M a b‖ := by
  simp only [Matrix.reindex_apply, Matrix.submatrix_apply, Equiv.symm_symm]
  rw [← Equiv.sum_comp e (fun a => ∑ b, ‖M a b‖)]
  refine Finset.sum_congr rfl fun i _ => ?_
  exact Equiv.sum_comp e (fun b => ‖M (e i) b‖)

theorem tie_mem_ball (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) (r : ℝ) (s : GCo ε) :
    gToLie e he1 he2 s ∈ Formalism.BasicNotions.ballU P Q r ↔ ∑ a, ∑ b, ‖gMat s a b‖ < r := by
  show ∑ i, ∑ j, ‖Matrix.reindex e.symm e.symm (gMat s) i j‖ < r ↔ _
  rw [tie_sum_reindex]

theorem tie_gToLie_cont (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) :
    Continuous (gToLie e he1 he2 : GCo ε → Formalism.BasicNotions.lieU P Q) := by
  have h1 : Continuous fun s : GCo ε => gToLieMat e s :=
    (LinearMap.continuous_of_finiteDimensional (gMatL ε)).matrix_submatrix _ _
  exact h1.subtype_mk _

theorem tie_ball_open (P Q : ℕ) (r : ℝ) : IsOpen (Formalism.BasicNotions.ballU P Q r) :=
  isOpen_lt (continuous_finsetSum _ fun i _ => continuous_finsetSum _ fun j _ =>
    continuous_norm.comp (continuous_subtype_val.matrix_elem i j)) continuous_const

end

theorem omegaDensity_muCDtr {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) :
    Formalism.BasicNotions.OmegaDensity (muCDtr e ε) (ENNReal.ofReal (cOmega n)) := by
  haveI := muPolar_isHaar ε
  haveI := lieU_borel P Q
  obtain ⟨hK, hP, hG⟩ := gco_haar ε
  obtain ⟨d, hd0, hd⟩ := haar_exp_density (muPolar ε)
  have hdD := tie_d_eq ε d hd0 hd
  refine ⟨_, isOmegaLeb_gToLie e he1 he2, ?_⟩
  set κ : ℝ := 2 ^ (n * (n - 1) / 2) with hκ
  have hκ0 : 0 < κ := by positivity
  have hσc : Continuous fun s : GCo ε => ∑ a, ∑ b, ‖gMat s a b‖ :=
    continuous_finsetSum _ fun a _ => continuous_finsetSum _ fun b _ =>
      continuous_norm.comp ((LinearMap.continuous_of_finiteDimensional (gMatL ε)).matrix_elem a b)
  have hnum : ∀ r, muCDtr e ε {g | ∃ X ∈ Formalism.BasicNotions.ballU P Q r, Formalism.BasicNotions.UpqT.mat g =
      NormedSpace.exp (X : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)} =
      ENNReal.ofReal (cPQ ε) * muPolar ε (expSet {s : GCo ε | gToLie e he1 he2 s ∈ Formalism.BasicNotions.ballU P Q r}) := by
    intro r
    have hE := measurableEmbedding_upqMat e he1 he2
    show Measure.comap (β := Fin n → Fin n → ℂ) (fun g => upqMat e g) (ENNReal.ofReal (cPQ ε) • muPolarMat ε) _ =
      _ * Measure.comap (β := Fin n → Fin n → ℂ) (fun g : UJ ε => toM g) (muPolarMat ε) _
    rw [hE.comap_apply, (measurableEmbedding_toM ε).comap_apply, Measure.smul_apply, smul_eq_mul]
    congr 2
    exact image_expBall e he1 he2 r
  have hden : ∀ r, (ENNReal.ofReal κ • Measure.map (gToLie e he1 he2) volume) (Formalism.BasicNotions.ballU P Q r) =
      ENNReal.ofReal κ * volume {s : GCo ε | gToLie e he1 he2 s ∈ Formalism.BasicNotions.ballU P Q r} := by
    intro r
    rw [Measure.smul_apply, smul_eq_mul,
      Measure.map_apply (tie_gToLie_cont e he1 he2).measurable (tie_ball_open P Q r).measurableSet]
    rfl
  have hvn := _root_.ReciprocityTheory.ChartRestriction.DS.volU_pos' n
  have hvp := _root_.ReciprocityTheory.ChartRestriction.DS.volU_pos' (pOf ε)
  have hvq := _root_.ReciprocityTheory.ChartRestriction.DS.volU_pos' (qOf ε)
  have hc : cOmega n * κ = cPQ ε * d := by
    rw [hdD, cPQ_eq_volU, cOmega, ← hκ]
    field_simp
  have hc0 : 0 < cOmega n := cOmega_pos n
  have hcP : 0 ≤ cPQ ε := (cPQ_pos ε).le
  refine tie_tendsto hc0 (fun η hη => ?_)
  obtain ⟨δ, hδ, hdδ⟩ := hd η hη
  filter_upwards [Ioo_mem_nhdsGT hδ] with r hr
  rw [hnum r, hden r]
  set S := {s : GCo ε | gToLie e he1 he2 s ∈ Formalism.BasicNotions.ballU P Q r} with hS
  have hSe : S = {s | ∑ a, ∑ b, ‖gMat s a b‖ < r} := Set.ext fun s => tie_mem_ball e he1 he2 r s
  have hSo : IsOpen S := by rw [hSe]; exact isOpen_lt hσc continuous_const
  have h0S : (0 : GCo ε) ∈ S := by
    rw [hSe, Set.mem_ofPred_eq, show gMat (0 : GCo ε) = 0 from (gMatL ε).map_zero]
    simpa using hr.1
  have hSb : ∀ s ∈ S, ‖s‖ < δ := fun s hs => by
    rw [hSe] at hs
    exact lt_of_le_of_lt (norm_le_sum_gMat s) (lt_trans hs hr.2)
  have hSball : S ⊆ Metric.ball 0 r := fun s hs => by
    rw [hSe] at hs
    rw [mem_ball_zero_iff]; exact lt_of_le_of_lt (norm_le_sum_gMat s) hs
  have hV0 : volume S ≠ 0 := (hSo.measure_pos volume ⟨0, h0S⟩).ne'
  have hVt : volume S ≠ ⊤ := ((measure_mono hSball).trans_lt measure_ball_lt_top).ne
  obtain ⟨hu, hl⟩ := hdδ S hSo.measurableSet hSb
  have hden0 : ENNReal.ofReal κ * volume S ≠ 0 := mul_ne_zero (ENNReal.ofReal_pos.2 hκ0).ne' hV0
  have hdent : ENNReal.ofReal κ * volume S ≠ ⊤ := ENNReal.mul_ne_top ENNReal.ofReal_ne_top hVt
  have eq1 : (1 - η) * cOmega n * κ = cPQ ε * ((1 - η) * d) := by linear_combination (1 - η) * hc
  have eq2 : (1 + η) * cOmega n * κ = cPQ ε * ((1 + η) * d) := by linear_combination (1 + η) * hc
  constructor
  · rw [ENNReal.le_div_iff_mul_le (Or.inl hden0) (Or.inl hdent)]
    calc ENNReal.ofReal ((1 - η) * cOmega n) * (ENNReal.ofReal κ * volume S)
        = ENNReal.ofReal (cPQ ε) * (ENNReal.ofReal ((1 - η) * d) * volume S) := by
          rw [← mul_assoc, ← ENNReal.ofReal_mul' hκ0.le, eq1, ENNReal.ofReal_mul hcP, mul_assoc]
      _ ≤ _ := by gcongr
  · apply ENNReal.div_le_of_le_mul
    calc ENNReal.ofReal (cPQ ε) * muPolar ε (expSet S)
        ≤ ENNReal.ofReal (cPQ ε) * (ENNReal.ofReal ((1 + η) * d) * volume S) := by gcongr
      _ = ENNReal.ofReal ((1 + η) * cOmega n) * (ENNReal.ofReal κ * volume S) := by
          rw [← mul_assoc, ← ENNReal.ofReal_mul hcP, ← eq2, ENNReal.ofReal_mul' hκ0.le, mul_assoc]

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaDensityMuCDtr =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaDensityUnique =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaDensityUnique", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaDensityMuCDtr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Compactness.Paracompact\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarMirror\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.BridgeA\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.MeasurableEmbeddingUpqMat\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.PolarHaar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset Matrix MeasureTheory Filter Topology

namespace ReciprocityTheory.ChartRestriction.DS

open ReciprocityTheory.ChartRestriction.DS.S7

variable {n : ℕ}

namespace UpperTriangularPsiTransport

local instance instTGUpqT (P Q : ℕ) : IsTopologicalGroup (Formalism.BasicNotions.UpqT P Q) :=
  inferInstanceAs (IsTopologicalGroup (Formalism.UG.Upq P Q))

local instance instBorelUpqT (P Q : ℕ) : BorelSpace (Formalism.BasicNotions.UpqT P Q) := ⟨rfl⟩

def reU {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) : GL (Fin P ⊕ Fin Q) ℂ ≃* (Matrix (Fin n) (Fin n) ℂ)ˣ :=
  Units.mapEquiv (Matrix.reindexAlgEquiv ℂ ℂ e).toMulEquiv

lemma Jpq_eq {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) :
    Formalism.UG.Jpq P Q = (Jm ε).submatrix e e := by
  ext i j
  simp only [Matrix.submatrix_apply, Jm, Matrix.diagonal_apply, EmbeddingLike.apply_eq_iff_eq]
  rcases i with i | i <;> rcases j with j | j <;>
    simp [Formalism.UG.Jpq, he1, he2, Matrix.one_apply]
  all_goals
    try split_ifs
    all_goals simp_all

lemma cT_eq {m : Type} (M : Matrix m m ℂ) : Formalism.UG.cT (starRingEnd ℂ) M = Mᴴ := by
  rfl

lemma map_eq {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) :
    (Formalism.UG.Upq P Q).map ((reU e : GL (Fin P ⊕ Fin Q) ℂ ≃* (Matrix (Fin n) (Fin n) ℂ)ˣ) :
      GL (Fin P ⊕ Fin Q) ℂ →* (Matrix (Fin n) (Fin n) ℂ)ˣ) = UJ ε := by
  have hJ := Jpq_eq e he1 he2
  have hJ' : Jm ε = (Formalism.UG.Jpq P Q).submatrix e.symm e.symm := by
    rw [hJ, Matrix.submatrix_submatrix, Equiv.self_comp_symm, Matrix.submatrix_id_id]
  have hval : ∀ h : GL (Fin P ⊕ Fin Q) ℂ,
      ((reU e h : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ) =
        Matrix.reindex e e (h : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) := fun h => rfl
  have hk : ∀ M : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ,
      (Matrix.reindex e e M)ᴴ * Jm ε * Matrix.reindex e e M =
        Matrix.reindex e e (Mᴴ * Formalism.UG.Jpq P Q * M) := by
    intro M
    simp only [Matrix.reindex_apply]
    rw [hJ', Matrix.conjTranspose_submatrix, Matrix.submatrix_mul_equiv, Matrix.submatrix_mul_equiv]
  ext g
  simp only [Subgroup.mem_map]
  constructor
  · rintro ⟨h, hh, rfl⟩
    have hh' : (h : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)ᴴ * Formalism.UG.Jpq P Q * h = Formalism.UG.Jpq P Q := by
      rw [← cT_eq]
      exact hh
    show (Matrix.reindex e e (h : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ))ᴴ * Jm ε *
        Matrix.reindex e e (h : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) = Jm ε
    rw [hk, hh', Matrix.reindex_apply, ← hJ']
  · intro hg
    have hg' : (g : Matrix (Fin n) (Fin n) ℂ)ᴴ * Jm ε * g = Jm ε := hg
    refine ⟨(reU e).symm g, ?_, by simp⟩
    have hgM : (g : Matrix (Fin n) (Fin n) ℂ) =
        Matrix.reindex e e (((reU e).symm g : GL (Fin P ⊕ Fin Q) ℂ) :
          Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) := by
      rw [← hval, MulEquiv.apply_symm_apply]
    show Formalism.UG.cT (starRingEnd ℂ) (((reU e).symm g : GL (Fin P ⊕ Fin Q) ℂ) :
        Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) * Formalism.UG.Jpq P Q *
        (((reU e).symm g : GL (Fin P ⊕ Fin Q) ℂ) : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) =
          Formalism.UG.Jpq P Q
    rw [cT_eq]
    apply (Matrix.reindex e e).injective
    rw [← hk, ← hgM, hg', Matrix.reindex_apply, ← hJ']

def psi {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) :
    Formalism.BasicNotions.UpqT P Q ≃* UJ ε :=
  ((reU e).subgroupMap (Formalism.UG.Upq P Q)).trans (MulEquiv.subgroupCongr (map_eq e he1 he2))

lemma psi_cont {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) :
    Continuous (psi e he1 he2) := by
  have hre : Continuous (fun M : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ => Matrix.reindex e e M) := by
    exact continuous_id.matrix_reindex e e
  have hc : Continuous (fun g : ↥(Formalism.UG.Upq P Q) => (g : GL (Fin P ⊕ Fin Q) ℂ)) :=
    continuous_subtype_val
  apply continuous_induced_rng.2
  rw [Units.continuous_iff]
  constructor
  · exact hre.comp (Units.continuous_val.comp hc)
  · exact hre.comp (Units.continuous_coe_inv.comp hc)

lemma psi_symm_cont {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) :
    Continuous (psi e he1 he2).symm := by
  have hre : Continuous (fun M : Matrix (Fin n) (Fin n) ℂ => M.submatrix e e) := by
    exact continuous_id.matrix_submatrix e e
  have hc : Continuous (fun g : ↥(UJ ε) => (g : (Matrix (Fin n) (Fin n) ℂ)ˣ)) :=
    continuous_subtype_val
  apply continuous_induced_rng.2
  rw [Units.continuous_iff]
  constructor
  · exact hre.comp (Units.continuous_val.comp hc)
  · exact hre.comp (Units.continuous_coe_inv.comp hc)

def psiC {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) :
    Formalism.BasicNotions.UpqT P Q ≃ₜ* UJ ε :=
  { psi e he1 he2 with
    continuous_toFun := psi_cont e he1 he2
    continuous_invFun := psi_symm_cont e he1 he2 }

def psiM {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) :
    Formalism.BasicNotions.UpqT P Q ≃ᵐ UJ ε :=
  (psiC e he1 he2).toHomeomorph.toMeasurableEquiv

private theorem isClosedEmbedding_coe_of_mem_iff_conjTranspose_Jm_mul_eq (ε : Fin n → Bool) (H : Subgroup (Matrix (Fin n) (Fin n) ℂ)ˣ)
    (hH : ∀ g : (Matrix (Fin n) (Fin n) ℂ)ˣ, g ∈ H ↔
      (g : Matrix (Fin n) (Fin n) ℂ)ᴴ * Formalism.REAL.Jm ε * g = Formalism.REAL.Jm ε) :
    Topology.IsClosedEmbedding
      (fun g : H => ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)) := by
  set J := Formalism.REAL.Jm ε with hJdef
  have hJJ : J * J = 1 := _root_.Formalism.REAL.Jm_mul_self ε
  have hleft : ∀ M : Matrix (Fin n) (Fin n) ℂ, Mᴴ * J * M = J → (J * Mᴴ * J) * M = 1 := by
    intro M hM
    calc J * Mᴴ * J * M = J * (Mᴴ * J * M) := by simp only [Matrix.mul_assoc]
      _ = 1 := by rw [hM, hJJ]
  have hinv : ∀ g : H, (((g : (Matrix (Fin n) (Fin n) ℂ)ˣ)⁻¹ : (Matrix (Fin n) (Fin n) ℂ)ˣ) :
      Matrix (Fin n) (Fin n) ℂ) = J * ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)ᴴ * J := by
    intro g
    exact Units.inv_eq_of_mul_eq_one_left (hleft _ ((hH _).1 g.2))
  have hcont : Continuous (fun g : H => ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)) :=
    Units.continuous_val.comp continuous_subtype_val
  have hct : Continuous (fun M : Matrix (Fin n) (Fin n) ℂ => J * Mᴴ * J) := by
    exact (continuous_const.matrix_mul continuous_id.matrix_conjTranspose).matrix_mul continuous_const
  have hψ : Continuous (fun M : Matrix (Fin n) (Fin n) ℂ => (M, MulOpposite.op (J * Mᴴ * J))) := by
    exact continuous_id.prodMk (MulOpposite.continuous_op.comp hct)
  have hcomp : ((fun M : Matrix (Fin n) (Fin n) ℂ => (M, MulOpposite.op (J * Mᴴ * J))) ∘
      (fun g : H => ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ))) =
      (Units.embedProduct (Matrix (Fin n) (Fin n) ℂ)) ∘ (Subtype.val : H → (Matrix (Fin n) (Fin n) ℂ)ˣ) := by
    funext g
    simp only [Function.comp_apply, Units.embedProduct_apply, hinv]
  have hind : Topology.IsInducing ((fun M : Matrix (Fin n) (Fin n) ℂ => (M, MulOpposite.op (J * Mᴴ * J))) ∘
      (fun g : H => ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ))) := by
    rw [hcomp]
    exact Units.isInducing_embedProduct.comp Topology.IsInducing.subtypeVal
  have hemb : Topology.IsEmbedding
      (fun g : H => ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)) :=
    ⟨Topology.IsInducing.of_comp hcont hψ hind, fun a b hab => Subtype.ext (Units.ext hab)⟩
  refine ⟨hemb, ?_⟩
  have hrange : Set.range (fun g : H => ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)) =
      {M | Mᴴ * J * M = J} := by
    ext M
    constructor
    · rintro ⟨g, rfl⟩
      exact (hH _).1 g.2
    · intro hM
      have h1 := hleft M hM
      have h2 : M * (J * Mᴴ * J) = 1 := mul_eq_one_comm.1 h1
      exact ⟨⟨⟨M, J * Mᴴ * J, h2, h1⟩, (hH _).2 hM⟩, rfl⟩
  rw [hrange]
  have hq : Continuous (fun M : Matrix (Fin n) (Fin n) ℂ => Mᴴ * J * M) := by
    exact (continuous_id.matrix_conjTranspose.matrix_mul continuous_const).matrix_mul continuous_id
  exact isClosed_eq hq continuous_const

alias toM_emb := _root_.ReciprocityTheory.ChartRestriction.DS.measurableEmbedding_toM

lemma umat_emb (ε : Fin n → Bool) :
    MeasurableEmbedding (β := Fin n → Fin n → ℂ) (fun g : Formalism.REAL.UJ ε => Formalism.MainNotions.S.umat g) := by
  have h := isClosedEmbedding_coe_of_mem_iff_conjTranspose_Jm_mul_eq ε (Formalism.REAL.UJ ε) (fun g => Iff.rfl)
  exact Topology.IsClosedEmbedding.measurableEmbedding (β := Fin n → Fin n → ℂ) h

lemma key (cd : Formalism.BasicNotions.CDHaar) {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false) :
    ∃ a : ENNReal, a ≠ ⊤ ∧ ∀ E : Set (Formalism.BasicNotions.UpqT P Q),
      cd.cd P Q E * ENNReal.ofReal (cPQ ε) = a * muCDtr e ε E := by
  have := cd.haar P Q
  have := muPolar_isHaar ε
  have : (Measure.map (psiC e he1 he2) (cd.cd P Q)).IsHaarMeasure :=
    ContinuousMulEquiv.isHaarMeasure_map (cd.cd P Q) (psiC e he1 he2)
  have hmap : Measure.map (psiM e he1 he2) (cd.cd P Q) = Measure.map (psiC e he1 he2) (cd.cd P Q) := rfl
  obtain ⟨s, hs⟩ : ∃ s : NNReal, Measure.map (psiC e he1 he2) (cd.cd P Q) = s • muPolar ε :=
    ⟨_, Measure.isMulLeftInvariant_eq_smul (Measure.map (psiC e he1 he2) (cd.cd P Q)) (muPolar ε)⟩
  refine ⟨(s : ENNReal), ENNReal.coe_ne_top, fun E => ?_⟩
  have hemb : MeasurableEmbedding (β := Fin n → Fin n → ℂ)
      (fun g : Formalism.BasicNotions.UpqT P Q => Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) :=
    (toM_emb ε).comp (psiM e he1 he2).measurableEmbedding
  have h1 : cd.cd P Q E = Measure.map (psiM e he1 he2) (cd.cd P Q) (psiM e he1 he2 '' E) := by
    rw [MeasurableEquiv.map_apply, Set.preimage_image_eq _ (psiM e he1 he2).injective]
  have h2 : muPolar ε (psiM e he1 he2 '' E) =
      muPolarMat ε ((fun g : Formalism.BasicNotions.UpqT P Q => Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) '' E) := by
    unfold muPolar
    rw [(toM_emb ε).comap_apply]
    exact congrArg (muPolarMat ε) (Set.image_image _ _ _)
  have h3 : muCDtr e ε E = ENNReal.ofReal (cPQ ε) *
      muPolarMat ε ((fun g : Formalism.BasicNotions.UpqT P Q => Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) '' E) := by
    unfold muCDtr
    rw [hemb.comap_apply, Measure.smul_apply, smul_eq_mul]
  rw [h1, hmap, hs, Measure.coe_nnreal_smul_apply, h2, h3]
  ring

lemma isOmegaLeb_unique {P Q : ℕ} (lam lam' : Measure (Formalism.BasicNotions.lieU P Q)) (h : Formalism.BasicNotions.IsOmegaLeb lam)
    (h' : Formalism.BasicNotions.IsOmegaLeb lam') : lam = lam' := by
  obtain ⟨hH, hv⟩ := h
  obtain ⟨hH', hv'⟩ := h'
  haveI := hH
  haveI := hH'
  haveI : LocallyCompactSpace (Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) :=
    inferInstanceAs (LocallyCompactSpace ((Fin P ⊕ Fin Q) → (Fin P ⊕ Fin Q) → ℂ))
  haveI : SecondCountableTopology (Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) :=
    inferInstanceAs (SecondCountableTopology ((Fin P ⊕ Fin Q) → (Fin P ⊕ Fin Q) → ℂ))
  have hcl : IsClosed (Formalism.BasicNotions.lieU P Q : Set (Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)) := by
    have hset : (Formalism.BasicNotions.lieU P Q : Set (Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)) =
        {X | Xᴴ * Formalism.UG.Jpq P Q + Formalism.UG.Jpq P Q * X = 0} := rfl
    rw [hset]
    exact isClosed_eq ((continuous_id.matrix_conjTranspose.matrix_mul continuous_const).add
      (continuous_const.matrix_mul continuous_id)) continuous_const
  haveI : LocallyCompactSpace ↥(Formalism.BasicNotions.lieU P Q) := hcl.locallyCompactSpace
  haveI : SecondCountableTopology ↥(Formalism.BasicNotions.lieU P Q) :=
    inferInstanceAs (SecondCountableTopology ↥(Formalism.BasicNotions.lieU P Q : Set (Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)))
  obtain ⟨c, hsm⟩ : ∃ c : ENNReal, lam = c • lam' := by
    exact ⟨_, MeasureTheory.Measure.isAddLeftInvariant_eq_smul_of_innerRegular lam lam'⟩
  have hvol : (c * c) • (volume : Measure ((Fin P ⊕ Fin Q) × (Fin P ⊕ Fin Q) → ℂ)) = volume := by
    haveI := lieU_borel P Q
    have hcoe : Continuous (fun X : Formalism.BasicNotions.lieU P Q =>
        (X : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ)) := continuous_subtype_val
    have hm : Measurable (fun ab : Formalism.BasicNotions.lieU P Q × Formalism.BasicNotions.lieU P Q =>
        Formalism.BasicNotions.entries ((ab.1 : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ) +
          Complex.I • (ab.2 : Matrix (Fin P ⊕ Fin Q) (Fin P ⊕ Fin Q) ℂ))) := by
      apply Continuous.measurable
      refine continuous_pi fun ij => ?_
      exact ((hcoe.comp continuous_fst).add
        ((hcoe.comp continuous_snd).const_smul Complex.I)).matrix_elem ij.1 ij.2
    conv_rhs => rw [← hv]
    rw [hsm, Measure.prod_smul_left, Measure.prod_smul_right, smul_smul,
      Measure.map_smul _ hm.aemeasurable, hv']
  have hpos : 0 < (volume : Measure ((Fin P ⊕ Fin Q) × (Fin P ⊕ Fin Q) → ℂ))
      (Metric.ball 0 1) := Metric.measure_ball_pos _ _ one_pos
  have hfin : (volume : Measure ((Fin P ⊕ Fin Q) × (Fin P ⊕ Fin Q) → ℂ)) (Metric.ball 0 1) ≠ ⊤ :=
    measure_ball_lt_top.ne
  have hcc : c * c = 1 := by
    have h1 := congrArg (fun μ : Measure ((Fin P ⊕ Fin Q) × (Fin P ⊕ Fin Q) → ℂ) =>
      μ (Metric.ball 0 1)) hvol
    simp only [Measure.smul_apply, smul_eq_mul] at h1
    generalize hvdef : (volume : Measure ((Fin P ⊕ Fin Q) × (Fin P ⊕ Fin Q) → ℂ))
      (Metric.ball 0 1) = v at h1 hpos hfin
    calc c * c = c * c * (v * v⁻¹) := by rw [ENNReal.mul_inv_cancel hpos.ne' hfin, mul_one]
      _ = c * c * v * v⁻¹ := (mul_assoc (c * c) v v⁻¹).symm
      _ = v * v⁻¹ := by rw [h1]
      _ = 1 := ENNReal.mul_inv_cancel hpos.ne' hfin
  have hc1 : c = 1 := by
    rcases lt_trichotomy c 1 with h1 | h1 | h1
    · exfalso
      have h2 : c * c < 1 := by
        calc c * c ≤ c * 1 := by
              have h3 := h1.le
              gcongr
          _ = c := mul_one c
          _ < 1 := h1
      exact h2.ne hcc
    · exact h1
    · exfalso
      have h2 : 1 < c * c := by
        calc (1 : ENNReal) < c := h1
          _ = c * 1 := (mul_one c).symm
          _ ≤ c * c := by
              have h3 := h1.le
              gcongr
      exact h2.ne' hcc
  rw [hsm, hc1, one_smul]

lemma omegaDensity_unique {P Q : ℕ} {μ : Measure (Formalism.BasicNotions.UpqT P Q)} {c c' : ENNReal}
    (h : Formalism.BasicNotions.OmegaDensity μ c) (h' : Formalism.BasicNotions.OmegaDensity μ c') : c = c' := by
  obtain ⟨lam, hlam, hc⟩ := h
  obtain ⟨lam', hlam', hc'⟩ := h'
  obtain rfl : lam' = lam := isOmegaLeb_unique lam' lam hlam' hlam
  exact tendsto_nhds_unique hc hc'

lemma omegaDensity_rel {P Q : ℕ} {μ ν : Measure (Formalism.BasicNotions.UpqT P Q)} {a b c d : ENNReal}
    (hb : b ≠ ⊤) (hd : d ≠ 0) (hrel : ∀ E, μ E * b = a * ν E)
    (hμ : Formalism.BasicNotions.OmegaDensity μ c) (hν : Formalism.BasicNotions.OmegaDensity ν d) : c * b = a * d := by
  obtain ⟨lam, hlam, hc⟩ := hμ
  obtain ⟨lam', hlam', hd'⟩ := hν
  obtain rfl : lam' = lam := isOmegaLeb_unique lam' lam hlam' hlam
  have h1 := ENNReal.Tendsto.mul_const hc (Or.inr hb)
  have h2 := ENNReal.Tendsto.const_mul (a := a) hd' (Or.inl hd)
  refine tendsto_nhds_unique h1 (h2.congr fun r => ?_)
  simp only [div_eq_mul_inv]
  rw [← mul_assoc, ← hrel, mul_right_comm]

end UpperTriangularPsiTransport

open UpperTriangularPsiTransport in
theorem muCD_eq_cd_vol (cd : Formalism.BasicNotions.CDHaar) {P Q : ℕ} (e : Fin P ⊕ Fin Q ≃ Fin n) {ε : Fin n → Bool}
    (he1 : ∀ i, ε (e (Sum.inl i)) = true) (he2 : ∀ j, ε (e (Sum.inr j)) = false)
    (A : Set (Formalism.REAL.UJ ε)) (hA : MeasurableSet A) :
    muCD ε A = cd.cd P Q {g | ∃ a ∈ A, Formalism.MainNotions.S.umat a = Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)} := by
  obtain ⟨a, -, hrel⟩ := key cd e he1 he2
  have hn : P + Q = n := by simpa using Fintype.card_congr e
  obtain ⟨c', -, -, h1, h2⟩ := cd.trick P Q
  have hc' : c' = ENNReal.ofReal (cOmega (P + Q)) := omegaDensity_unique h2 (omegaDensity_cd cd (P + Q))
  have hc0 : ENNReal.ofReal (cPQ ε) ≠ 0 := by simpa using cPQ_pos ε
  have hw0 : ENNReal.ofReal (cOmega n) ≠ 0 := by simpa using cOmega_pos n
  have hrel2 := omegaDensity_rel ENNReal.ofReal_ne_top hw0 hrel h1 (omegaDensity_muCDtr e he1 he2)
  rw [hc', hn, mul_comm a] at hrel2
  have hac : a = ENNReal.ofReal (cPQ ε) :=
    ((ENNReal.mul_right_inj hw0 ENNReal.ofReal_ne_top).1 hrel2).symm
  set E := {g : Formalism.BasicNotions.UpqT P Q | ∃ a ∈ A, Formalism.MainNotions.S.umat a = Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)}
    with hEdef
  have hE := hrel E
  rw [hac, mul_comm] at hE
  rw [(ENNReal.mul_right_inj hc0 ENNReal.ofReal_ne_top).1 hE]
  have hemb : MeasurableEmbedding (β := Fin n → Fin n → ℂ)
      (fun g : Formalism.BasicNotions.UpqT P Q => Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) :=
    (toM_emb ε).comp (psiM e he1 he2).measurableEmbedding
  have himg : (fun g : Formalism.BasicNotions.UpqT P Q => Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) '' E =
      (fun g : Formalism.REAL.UJ ε => Formalism.MainNotions.S.umat g) '' A := by
    ext M
    constructor
    · rintro ⟨g, ⟨x, hx, hxg⟩, rfl⟩
      exact ⟨x, hx, hxg⟩
    · rintro ⟨x, hx, rfl⟩
      have hx2 : x.1 ∈ UJ ε := by rw [← real_UJ_eq_UJ ε]; exact x.2
      have hy := congrArg (fun y : UJ ε => toM y) ((psi e he1 he2).apply_symm_apply ⟨x.1, hx2⟩)
      exact ⟨(psi e he1 he2).symm ⟨x.1, hx2⟩, ⟨x, hx, hy.symm⟩, hy⟩
  have hL : muCD ε A = ENNReal.ofReal (cPQ ε) *
      muPolarMat ε ((fun g : Formalism.REAL.UJ ε => Formalism.MainNotions.S.umat g) '' A) :=
    (Measure.smul_apply _ _ _).trans (congrArg _ ((umat_emb ε).comap_apply _ _))
  have hR : muCDtr e ε E = ENNReal.ofReal (cPQ ε) *
      muPolarMat ε ((fun g : Formalism.BasicNotions.UpqT P Q => Matrix.reindex e e (Formalism.BasicNotions.UpqT.mat g)) '' E) :=
    (hemb.comap_apply _ _).trans (Measure.smul_apply _ _ _)
  rw [hL, hR]
  exact congrArg (fun S => ENNReal.ofReal (cPQ ε) * muPolarMat ε S) himg.symm

end ReciprocityTheory.ChartRestriction.DS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.FormalDegree.HaarVolumes.OmegaDensityUnique =====
