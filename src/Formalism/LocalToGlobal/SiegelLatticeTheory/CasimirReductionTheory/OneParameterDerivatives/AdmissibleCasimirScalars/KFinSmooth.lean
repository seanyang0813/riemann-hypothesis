module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.CompactDerivativesBounded
public import Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv
public import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CompactHaarRightInvariantInst
public import Mathlib.Analysis.InnerProductSpace.Calculus
public import Mathlib.Analysis.InnerProductSpace.Spectrum
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.HasDerivAtDS
public import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeCPX
public import Formalism.SharpRestriction.CuspSpanNormBounds.ExpansionFromLemmaB
public import Formalism.SharpRestriction.CuspSpanNormBounds.LowestKTypeMultiplicity
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.HcMultDSOfAll
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.GenApplyEqZero
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.ImInnerSelf
import Aesop.Frontend.Tactic
import Aesop.Main
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.GenApplyZero, Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.IntegralSumCoef, Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.KavgFixRange, Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.OneParamHasDerivAt, Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.SgCases, Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.KFinSmooth

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.GenApplyZero =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.GenApplyZero", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.CompactDerivativesBounded\nimport Aesop.Frontend.Tactic\nimport Aesop.Main\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Filter Topology
open scoped InnerProductSpace

noncomputable section

namespace Formalism.L2.SG.Pf.admitted

open Formalism.MainNotions.S Formalism.REAL Formalism.MainNotions.BridgeCPX

namespace CoordinateExpansion

theorem exp_localHomeo (n : ℕ) :
    ∃ e : OpenPartialHomeomorph (Matrix (Fin n) (Fin n) ℂ) (Matrix (Fin n) (Fin n) ℂ),
      (0 : Matrix (Fin n) (Fin n) ℂ) ∈ e.source ∧ ∀ Z ∈ e.source, e Z = NormedSpace.exp Z := by
  letI : NormedRing (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra ℂ (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedAlgebra
  have hf : HasStrictFDerivAt (NormedSpace.exp : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ)
      ((ContinuousLinearEquiv.refl ℂ (Matrix (Fin n) (Fin n) ℂ) :
        Matrix (Fin n) (Fin n) ℂ →L[ℂ] Matrix (Fin n) (Fin n) ℂ)) 0 := by
    exact hasStrictFDerivAt_exp_zero (𝕂 := ℂ) (𝔸 := Matrix (Fin n) (Fin n) ℂ)
  exact ⟨hf.toOpenPartialHomeomorph _, hf.mem_toOpenPartialHomeomorph_source, fun Z _ => rfl⟩

variable {n : ℕ}

def coord (Z : Matrix (Fin n) (Fin n) ℂ) (p : Fin n × Fin n) : ℝ :=
  if p.1 = p.2 then (Z p.1 p.1).im else if p.1 < p.2 then (Z p.1 p.2).re else (Z p.2 p.1).im

theorem continuous_coord (p : Fin n × Fin n) : Continuous fun Z : Matrix (Fin n) (Fin n) ℂ => coord Z p := by
  unfold coord
  split_ifs
  · exact Complex.continuous_im.comp (continuous_id.matrix_elem _ _)
  · exact Complex.continuous_re.comp (continuous_id.matrix_elem _ _)
  · exact Complex.continuous_im.comp (continuous_id.matrix_elem _ _)

theorem entry_of_inG {ε : Fin n → Bool} {Z : Matrix (Fin n) (Fin n) ℂ} (hZ : inG ε Z) (a b : Fin n) :
    Z a b = -((sg ε (a, b) : ℝ) : ℂ) * star (Z b a) := by
  have h := congrFun (congrFun hZ a) b
  simp only [Matrix.add_apply, Matrix.mul_diagonal, Matrix.diagonal_mul, Jm, Matrix.conjTranspose_apply,
    Matrix.zero_apply] at h
  simp only [sg]
  cases ha : ε a <;> cases hb : ε b <;> simp [ha, hb] at h ⊢ <;>
    first | linear_combination h | linear_combination -h

theorem sg_swap (ε : Fin n → Bool) (a b : Fin n) : sg ε (b, a) = sg ε (a, b) := by
  simp only [sg]
  by_cases h : ε a = ε b
  · rw [if_pos h.symm, if_pos h]
  · rw [if_neg (fun h' => h h'.symm), if_neg h]

theorem gen_apply_zero (ε : Fin n → Bool) (p : Fin n × Fin n) (i j : Fin n) (h1 : p ≠ (i, j)) (h2 : p ≠ (j, i)) :
    gen ε p i j = 0 := by
  obtain ⟨p1, p2⟩ := p
  simp only [ne_eq, Prod.mk.injEq] at h1 h2
  unfold gen
  split_ifs <;> simp [Matrix.single_apply] <;> aesop

theorem eq_sum_gen {ε : Fin n → Bool} {Z : Matrix (Fin n) (Fin n) ℂ} (hZ : inG ε Z) :
    Z = ∑ p, ((coord Z p : ℝ) : ℂ) • gen ε p := by
  ext i j
  rw [Matrix.sum_apply]
  simp only [Matrix.smul_apply, smul_eq_mul]
  rcases lt_trichotomy i j with h | rfl | h
  · rw [Fintype.sum_eq_add (i, j) (j, i) (by simp [h.ne])
      (fun q hq => by rw [gen_apply_zero ε q i j hq.1 hq.2, mul_zero])]
    simp [coord, gen, h, h.ne, h.ne', not_lt.mpr h.le]
  · rw [Fintype.sum_eq_single (i, i) (fun q hq => by rw [gen_apply_zero ε q i i hq hq, mul_zero])]
    have he := entry_of_inG hZ i i
    simp only [sg, if_true] at he
    have hre : (Z i i).re = 0 := by
      have h2 := congrArg Complex.re he
      simp at h2
      linarith
    simp [coord, gen]
    try (apply Complex.ext <;> simp [hre])
  · rw [Fintype.sum_eq_add (i, j) (j, i) (by simp [h.ne'])
      (fun q hq => by rw [gen_apply_zero ε q i j hq.1 hq.2, mul_zero])]
    rw [entry_of_inG hZ i j]
    simp [coord, gen, h, h.ne, h.ne', not_lt.mpr h.le, sg_swap]
    try (apply Complex.ext <;> simp <;> ring)

theorem inG_of_log {ε : Fin n → Bool} (e : OpenPartialHomeomorph (Matrix (Fin n) (Fin n) ℂ) (Matrix (Fin n) (Fin n) ℂ))
    (hee : ∀ Z ∈ e.source, e Z = NormedSpace.exp Z) {Z g : Matrix (Fin n) (Fin n) ℂ} (hZ : Z ∈ e.source)
    (hτZ : -(Jm ε * Zᴴ * Jm ε) ∈ e.source) (hg : inUJ ε g) (hZg : NormedSpace.exp Z = g) : inG ε Z := by

  have hJJ : Jm ε * Jm ε = 1 := by
    rw [Jm, Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
    congr 1
    funext a
    split_ifs <;> norm_num
  have hJi : (Jm ε)⁻¹ = Jm ε := Matrix.inv_eq_left_inv hJJ
  have hJu : IsUnit (Jm ε) := (Matrix.isUnit_iff_isUnit_det _).mpr
    (Matrix.isUnit_det_of_left_inverse hJJ)
  have hJh : (Jm ε)ᴴ = Jm ε := by
    rw [Jm, Matrix.diagonal_conjTranspose]
    congr 1
    funext a
    split_ifs with ha <;> simp [ha]
  have hg' : gᴴ * Jm ε * g = Jm ε := hg

  have hgl : (Jm ε * gᴴ * Jm ε) * g = 1 := by
    rw [Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_assoc gᴴ, hg', hJJ]
  have hgi : g⁻¹ = Jm ε * gᴴ * Jm ε := Matrix.inv_eq_left_inv hgl
  have key : NormedSpace.exp (-(Jm ε * Zᴴ * Jm ε)) = g := by
    have h1 : -(Jm ε * Zᴴ * Jm ε) = Jm ε * (-Z)ᴴ * (Jm ε)⁻¹ := by
      rw [hJi, Matrix.conjTranspose_neg, Matrix.mul_neg, Matrix.neg_mul]
    rw [h1, Matrix.exp_conj _ _ hJu, Matrix.exp_conjTranspose, Matrix.exp_neg, hZg, hgi, hJi,
      Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hJh]
    simp only [← Matrix.mul_assoc]
    rw [hJJ, Matrix.one_mul, Matrix.mul_assoc, hJJ, Matrix.mul_one]
  have hτ : -(Jm ε * Zᴴ * Jm ε) = Z := e.injOn hτZ hZ (by rw [hee _ hτZ, hee _ hZ, key, hZg])
  show Zᴴ * Jm ε + Jm ε * Z = 0
  have hJZ : Jm ε * Z = -(Zᴴ * Jm ε) := by
    calc Jm ε * Z = Jm ε * (-(Jm ε * Zᴴ * Jm ε)) := by rw [hτ]
      _ = -(Zᴴ * Jm ε) := by
        rw [Matrix.mul_neg, ← Matrix.mul_assoc, ← Matrix.mul_assoc, hJJ, Matrix.one_mul]
  rw [hJZ, add_neg_cancel]

end CoordinateExpansion

theorem c6 : SmallMotionNeighbourhood := by
  intro n ε H _ _ _ σ D hD W C' hC' hdense
  obtain ⟨e, he0, hee⟩ := CoordinateExpansion.exp_localHomeo n
  set M := max C' 0 with hM
  let τ : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ := fun Z => -(Jm ε * Zᴴ * Jm ε)
  have hτ : Continuous τ :=
    ((continuous_const.matrix_mul continuous_id.matrix_conjTranspose).matrix_mul continuous_const).neg
  let V : Set (Matrix (Fin n) (Fin n) ℂ) :=
    e.source ∩ τ ⁻¹' e.source ∩ {Z | (∑ p, |CoordinateExpansion.coord Z p|) * M < 1 / 2}
  have hVo : IsOpen V := by
    refine (e.open_source.inter (e.open_source.preimage hτ)).inter (isOpen_lt ?_ continuous_const)
    exact (continuous_finsetSum _ fun p _ => (CoordinateExpansion.continuous_coord p).abs).mul continuous_const
  have hV0 : (0 : Matrix (Fin n) (Fin n) ℂ) ∈ V := by
    refine ⟨⟨he0, ?_⟩, ?_⟩
    · simpa [τ] using he0
    · simp [CoordinateExpansion.coord]
  have himg : IsOpen (e '' V) := e.isOpen_image_of_subset_source hVo (fun Z h => h.1.1)
  have h1 : (1 : Matrix (Fin n) (Fin n) ℂ) ∈ e '' V := ⟨0, hV0, by rw [hee 0 he0, NormedSpace.exp_zero]⟩
  refine ⟨(fun g : UJ ε => umat g) ⁻¹' (e '' V), ?_, ?_⟩
  · exact continuous_umat.continuousAt.preimage_mem_nhds (himg.mem_nhds (by exact h1))
  · rintro g ⟨Z, hZV, hZg⟩ v hv
    have hZg' : NormedSpace.exp Z = umat g := by rw [← hee Z hZV.1.1]; exact hZg
    have hG : inG ε Z := CoordinateExpansion.inG_of_log e hee hZV.1.1 hZV.1.2 (umat_mem g) hZg'
    have key : ((D ⊓ W : Submodule ℂ H) : Set H) ⊆ {u : H | ‖σ (umat g) u - u‖ ≤ ‖u‖ / 2} := by
      intro u hu
      have huD : u ∈ D := hu.1
      have huW : u ∈ W := hu.2
      show ‖σ (umat g) u - u‖ ≤ ‖u‖ / 2
      rw [← hZg']
      calc ‖σ (NormedSpace.exp Z) u - u‖ ≤ ‖dS σ Z u‖ := hD.mv Z hG u huD
        _ = ‖∑ p, ((CoordinateExpansion.coord Z p : ℝ) : ℂ) • dS σ (gen ε p) u‖ := by
          rw [← hD.lin _ u huD, ← CoordinateExpansion.eq_sum_gen hG]
        _ ≤ ∑ p, |CoordinateExpansion.coord Z p| * (M * ‖u‖) := by
          refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun p _ => ?_)
          rw [norm_smul, Complex.norm_real, Real.norm_eq_abs]
          refine mul_le_mul_of_nonneg_left ((hC' p u huD huW).trans ?_) (abs_nonneg _)
          exact mul_le_mul_of_nonneg_right (le_max_left _ _) (norm_nonneg _)
        _ = ((∑ p, |CoordinateExpansion.coord Z p|) * M) * ‖u‖ := by
          rw [Finset.sum_mul, Finset.sum_mul]
          exact Finset.sum_congr rfl fun p _ => by ring
        _ ≤ (1 / 2) * ‖u‖ := mul_le_mul_of_nonneg_right hZV.2.le (norm_nonneg _)
        _ = ‖u‖ / 2 := by ring
    have hcl : IsClosed {u : H | ‖σ (umat g) u - u‖ ≤ ‖u‖ / 2} :=
      isClosed_le (((σ (umat g)).continuous.sub continuous_id).norm) (continuous_norm.div_const _)
    exact closure_minimal key hcl (hdense v hv)

end Formalism.L2.SG.Pf.admitted
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.GenApplyZero =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.IntegralSumCoef =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.IntegralSumCoef", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.CompactDerivativesBounded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Filter Topology
open scoped InnerProductSpace

noncomputable section

namespace Formalism.L2.SG.Pf.admitted

open Formalism.MainNotions.S Formalism.REAL Formalism.MainNotions.BridgeCPX

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace CoefficientIntegrals

variable {n : ℕ} {ε : Fin n → Bool} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem re_coef_ge {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} {g : UJ ε} {v : H} (hv : ‖v‖ = 1)
    (h : ‖σ (umat g) v - v‖ ≤ ‖v‖ / 2) : (1 / 2 : ℝ) ≤ (coefOn σ v v g).re := by
  have h1 : coefOn σ v v g = ⟪v, v⟫_ℂ + ⟪v, σ (umat g) v - v⟫_ℂ := by
    simp [coefOn]
  have h2 : ‖⟪v, σ (umat g) v - v⟫_ℂ‖ ≤ 1 / 2 := by
    calc _ ≤ ‖v‖ * ‖σ (umat g) v - v‖ := norm_inner_le_norm _ _
      _ ≤ 1 / 2 := by rw [hv] at h ⊢; linarith
  have h4 := (abs_le.1 ((Complex.abs_re_le_norm _).trans h2)).1
  have h5 : (⟪v, v⟫_ℂ).re = 1 := by
    have := inner_self_eq_norm_sq (𝕜 := ℂ) v
    rw [hv] at this
    simpa using this
  rw [h1, Complex.add_re, h5]
  linarith

def sumCoef {ι : Type} [Fintype ι] (σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)) (v : ι → H) (g : UJ ε) : ℂ :=
  ∑ i, coefOn σ (v i) (v i) g

theorem re_sumCoef_ge {ι : Type} [Fintype ι] {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} {W : Submodule ℂ H}
    {v : ι → H} (hv : Orthonormal ℂ v) (hW : ∀ i, v i ∈ W) {g : UJ ε}
    (hg : ∀ w ∈ W, ‖σ (umat g) w - w‖ ≤ ‖w‖ / 2) :
    (Fintype.card ι : ℝ) / 2 ≤ (sumCoef σ v g).re := by
  unfold sumCoef
  rw [Complex.re_sum]
  have hi : ∀ i, (1 / 2 : ℝ) ≤ (coefOn σ (v i) (v i) g).re := fun i =>
    re_coef_ge (hv.1 i) (hg _ (hW i))
  calc (Fintype.card ι : ℝ) / 2 = ∑ _i : ι, (1 / 2 : ℝ) := by
        rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
        ring
    _ ≤ _ := Finset.sum_le_sum fun i _ => hi i

theorem integral_sumCoef {ι : Type} [Fintype ι] [DecidableEq ι] {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)}
    {d : ℝ} (hd : IsFdeg (muG ε) σ d) {v : ι → H} (hv : Orthonormal ℂ v) :
    Integrable (fun g => sumCoef σ v g * star (sumCoef σ v g)) (muG ε) ∧
      ∫ g, sumCoef σ v g * star (sumCoef σ v g) ∂(muG ε) = (Fintype.card ι : ℂ) / (d : ℂ) := by
  have hexp : (fun g : UJ ε => sumCoef σ v g * star (sumCoef σ v g)) = fun g =>
      ∑ i, ∑ j, coefOn σ (v i) (v i) g * star (coefOn σ (v j) (v j) g) := by
    funext g
    unfold sumCoef
    rw [star_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Finset.mul_sum]
  have hint : ∀ i j, Integrable
      (fun g => coefOn σ (v i) (v i) g * star (coefOn σ (v j) (v j) g)) (muG ε) :=
    fun i j => (hd.2 _ _ _ _).1
  have hij : ∀ i j, ∫ g, coefOn σ (v i) (v i) g * star (coefOn σ (v j) (v j) g) ∂(muG ε) =
      if i = j then 1 / (d : ℂ) else 0 := by
    intro i j
    rw [(hd.2 _ _ _ _).2, orthonormal_iff_ite.mp hv j i, orthonormal_iff_ite.mp hv i j]
    by_cases h : i = j
    · subst h
      simp
    · simp [h, Ne.symm h]
  refine ⟨?_, ?_⟩
  · rw [hexp]
    exact integrable_finsetSum _ fun i _ => integrable_finsetSum _ fun j _ => hint i j
  · rw [hexp, integral_finsetSum _ fun i _ => integrable_finsetSum _ fun j _ => hint i j]
    calc _ = ∑ i, ∑ j, ∫ g, coefOn σ (v i) (v i) g * star (coefOn σ (v j) (v j) g) ∂(muG ε) := by
          refine Finset.sum_congr rfl fun i _ => ?_
          exact integral_finsetSum _ fun j _ => hint i j
      _ = _ := by
          simp only [hij, Finset.sum_ite_eq, Finset.mem_univ, if_true, Finset.sum_const,
            Finset.card_univ, nsmul_eq_mul]
          ring

theorem card_le {ι : Type} [Fintype ι] {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} {d : ℝ}
    (hd : IsFdeg (muG ε) σ d) {W : Submodule ℂ H} {K : Set (UJ ε)} (hKm : MeasurableSet K)
    (hKf : muG ε K ≠ ⊤) (hKpos : 0 < (muG ε).real K)
    (hK : ∀ g ∈ K, ∀ w ∈ W, ‖σ (umat g) w - w‖ ≤ ‖w‖ / 2)
    {v : ι → H} (hv : Orthonormal ℂ v) (hW : ∀ i, v i ∈ W) :
    (Fintype.card ι : ℝ) ≤ 4 / (d * (muG ε).real K) := by
  classical
  set m := (Fintype.card ι : ℝ) with hmdef
  obtain ⟨hint, hval⟩ := integral_sumCoef hd hv
  let f : UJ ε → ℝ := fun g => (sumCoef σ v g * star (sumCoef σ v g)).re
  have hfint : Integrable f (muG ε) := hint.re
  have hfn : ∀ g, f g = Complex.normSq (sumCoef σ v g) := fun g => by
    simp [f, Complex.mul_conj]
  have hf0 : ∀ g, 0 ≤ f g := fun g => by rw [hfn]; exact Complex.normSq_nonneg _
  have hm0 : 0 ≤ m := by positivity
  have hK' : ∀ g ∈ K, (m / 2) ^ 2 ≤ f g := by
    intro g hg
    have h1 := re_sumCoef_ge hv hW (hK g hg)
    rw [hfn, Complex.normSq_apply]
    nlinarith [sq_nonneg (sumCoef σ v g).im]
  have hset : (m / 2) ^ 2 * (muG ε).real K ≤ ∫ g in K, f g ∂(muG ε) :=
    by
      have := setIntegral_ge_of_const_le hKm hKf hK' hfint.integrableOn
      rwa [smul_eq_mul, mul_comm] at this
  have hle : ∫ g in K, f g ∂(muG ε) ≤ ∫ g, f g ∂(muG ε) :=
    setIntegral_le_integral hfint (Filter.Eventually.of_forall hf0)
  have htot : ∫ g, f g ∂(muG ε) = m / d := by
    show ∫ g, (sumCoef σ v g * star (sumCoef σ v g)).re ∂(muG ε) = m / d
    have hc : ((Fintype.card ι : ℂ) / (d : ℂ)) = ((m / d : ℝ) : ℂ) := by
      rw [hmdef]
      push_cast
      ring
    have hr := integral_re hint
    simp only [RCLike.re_to_complex] at hr
    rw [hr, hval, hc, Complex.ofReal_re]
  have hd0 := hd.1
  rcases eq_or_lt_of_le hm0 with h0 | hpos
  · rw [← h0]
    exact div_nonneg (by norm_num) (mul_pos hd0 hKpos).le
  · rw [le_div_iff₀ (mul_pos hd0 hKpos)]
    have hA : (m / 2) ^ 2 * (muG ε).real K ≤ m / d := (hset.trans hle).trans_eq htot
    have hB : (m / 2) ^ 2 * (muG ε).real K * d ≤ m := by
      have := mul_le_mul_of_nonneg_right hA hd0.le
      rwa [div_mul_cancel₀ _ hd0.ne'] at this
    nlinarith [hB, hpos, mul_pos hd0 hKpos]

end CoefficientIntegrals

open CoefficientIntegrals in
theorem c7 : FormalDegreeFiniteDim := by
  intro n ε H _ _ _ σ _ d hd W U hU hUW
  classical
  haveI : (muG ε).IsHaarMeasure := by unfold muG; infer_instance
  obtain ⟨K, hKn, hKU, hKc⟩ := local_compact_nhds hU
  have hKm : MeasurableSet K := hKc.isClosed.measurableSet
  have hKf : muG ε K ≠ ⊤ := hKc.measure_lt_top.ne
  have hKpos : 0 < (muG ε).real K :=
    ENNReal.toReal_pos (Measure.measure_pos_of_mem_nhds (muG ε) hKn).ne' hKf
  have hbound : ∀ (m : ℕ) (v : Fin m → H), Orthonormal ℂ v → (∀ i, v i ∈ W) →
      (m : ℝ) ≤ 4 / (d * (muG ε).real K) := by
    intro m v hv hvW
    simpa using card_le hd hKm hKf hKpos (fun g hg => hUW g (hKU hg)) hv hvW
  by_contra hfin
  obtain ⟨m, hm⟩ := exists_nat_gt (4 / (d * (muG ε).real K))
  let bW := Module.Basis.ofVectorSpace ℂ W
  have hI : (Module.Basis.ofVectorSpaceIndex ℂ W).Infinite := by
    intro hfinI
    haveI : Finite (Module.Basis.ofVectorSpaceIndex ℂ W) := hfinI.to_subtype
    exact hfin (Module.Finite.of_basis bW)
  obtain ⟨t, htsub, htcard⟩ := hI.exists_subset_card_eq m
  let u : t → W := fun x => bW ⟨x.1, htsub x.2⟩
  have hu : LinearIndependent ℂ u :=
    bW.linearIndependent.comp _ (fun a b h => Subtype.ext (by simpa using congrArg Subtype.val h))
  let F : Submodule ℂ W := Submodule.span ℂ (Set.range u)
  haveI : FiniteDimensional ℂ F := FiniteDimensional.span_of_finite ℂ (Set.finite_range u)
  have hF : Module.finrank ℂ F = m := by
    rw [finrank_span_eq_card hu]
    simp [htcard]
  let ob := stdOrthonormalBasis ℂ F
  let v : Fin (Module.finrank ℂ F) → H := fun i => ((ob i : F) : W)
  have hv : Orthonormal ℂ v :=
    (ob.orthonormal.comp_linearIsometry F.subtypeₗᵢ).comp_linearIsometry W.subtypeₗᵢ
  have h := hbound _ v hv (fun i => ((ob i : F) : W).2)
  rw [hF] at h
  linarith

end Formalism.L2.SG.Pf.admitted
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.IntegralSumCoef =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.KavgFixRange =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.KavgFixRange", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.CompactDerivativesBounded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Filter Topology
open scoped InnerProductSpace

noncomputable section

namespace Formalism.L2.SG.Pf.admitted

open Formalism.MainNotions.S Formalism.REAL Formalism.MainNotions.BridgeCPX

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace ExponentialDecomposition

variable {n : ℕ} {ε : Fin n → Bool} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

theorem kavg_fix_range {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} (hσ : IsURepOn (UJset ε) σ)
    {S : Submodule ℂ H} [FiniteDimensional ℂ S] (hst : IsKStableOn ε σ S)
    {e : KG ε → ℂ} (he : Continuous e) (hfix : ∀ x ∈ S, kavg hσ he x = x) (Θ : S →ₗ[ℂ] H)
    (hΘ : ∀ (a : KG ε) (v w : S), (w : H) = σ (toMK a) v → Θ w = σ (toMK a) (Θ v)) (s : S) :
    kavg hσ he (Θ s) = Θ s := by
  have hs : kavg hσ he (s : H) = s := hfix s s.2
  have hval : ∀ x : H, kavg hσ he x = ∫ k, e k • σ (toMK k) x ∂muK ε := fun x => by
    unfold Formalism.MainNotions.BridgeCPX.kavg
    rfl
  have hkS : ∀ k : KG ε, σ (toMK k) s ∈ S := fun k => hst _ k.2 _ s.2
  let F : KG ε → S := fun k => e k • ⟨σ (toMK k) s, hkS k⟩
  have hΘF : ∀ k, Θ (F k) = e k • σ (toMK k) (Θ s) := fun k => by
    simp only [F, map_smul]
    rw [hΘ k s ⟨σ (toMK k) s, hkS k⟩ rfl]
  have hsub : ((∫ k, F k ∂muK ε : S) : H) = ∫ k, (F k : H) ∂muK ε :=
    (S.subtypeₗᵢ.integral_comp_comm F).symm
  have hint : (∫ k, F k ∂muK ε) = s := by
    apply Subtype.ext
    rw [hsub, ← hs, hval]
    rfl
  rw [hval, integral_congr_ae (Filter.Eventually.of_forall fun k => (hΘF k).symm)]
  by_cases hFi : Integrable F (muK ε)
  · have h := (LinearMap.toContinuousLinearMap Θ).integral_comp_comm hFi
    simp only [LinearMap.coe_toContinuousLinearMap'] at h
    rw [h, hint]
  · rw [integral_undef hFi] at hint
    subst hint
    have h0 : ∀ k, F k = 0 := fun k => by
      ext
      simp [F]
    simp only [h0, map_zero, integral_zero]

theorem kavg_fix_isoK {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} (hσ : IsURepOn (UJset ε) σ)
    {S : Submodule ℂ H} [FiniteDimensional ℂ S] (hst : IsKStableOn ε σ S)
    {e : KG ε → ℂ} (he : Continuous e) (hfix : ∀ x ∈ S, kavg hσ he x = x) {v : H} (hv : v ∈ isoK ε σ S) :
    kavg hσ he v = v := by
  have hle : isoK ε σ S ≤ LinearMap.ker
      ((((kavg hσ he : H →L[ℂ] H) - ContinuousLinearMap.id ℂ H : H →L[ℂ] H)) : H →ₗ[ℂ] H) := by
    refine sSup_le ?_
    rintro T ⟨Θ, hΘ, rfl⟩
    rintro x ⟨s, rfl⟩
    simp [LinearMap.mem_ker, kavg_fix_range hσ hst he hfix Θ hΘ s]
  have h := hle hv
  simpa [LinearMap.mem_ker, sub_eq_zero] using h

end ExponentialDecomposition

theorem c0 : SmoothVectorsDense := by
  intro n ε H _ _ _ σ hσ hirr w hw S hfd hst v hv
  obtain ⟨e, he, hfix, hrange⟩ := compactProj (KG ε) (muK ε) H (fun k : KG ε => σ (toMK k)) hσ.1.1
    (fun a b => hσ.1.2 _ (umat_mem (a : UJ ε)) _ (umat_mem (b : UJ ε)))
    (fun a v => hσ.2.1 _ (umat_mem (a : UJ ε)) v)
    (fun v => (cont_orbit hσ v).comp continuous_subtype_val) S hfd (fun a v hv => hst _ a.2 v hv)
  have hfix' : ∀ x ∈ S, kavg hσ he x = x := fun x hx => by
    rw [kavg_apply]
    exact hfix x hx
  have hE : kavg hσ he v = v := ExponentialDecomposition.kavg_fix_isoK hσ hst he hfix' hv
  have hvc : v ∈ closure (Vsub ε hσ w : Set H) := by
    have h := Vsub_dense hσ hirr hw
    have h2 : v ∈ (Vsub ε hσ w).topologicalClosure := by
      rw [h]
      trivial
    exact h2
  have h3 : kavg hσ he v ∈ closure ((Vsub ε hσ w ⊓ isoK ε σ S : Submodule ℂ H) : Set H) := by
    refine map_mem_closure (kavg hσ he).continuous hvc ?_
    rintro _ ⟨Φ, hΦ, rfl⟩
    rw [SetLike.mem_coe, Submodule.mem_inf]
    refine ⟨⟨kconv ε e Φ, test_kconv he hΦ, kavg_vec hσ w he hΦ⟩, ?_⟩
    rw [kavg_apply]
    exact hrange _
  rwa [hE] at h3

end Formalism.L2.SG.Pf.admitted
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.KavgFixRange =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.OneParamHasDerivAt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.OneParamHasDerivAt", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.CompactDerivativesBounded\npublic import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CompactHaarRightInvariantInst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Calculus\npublic import Mathlib.Analysis.InnerProductSpace.Spectrum\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Filter Topology
open scoped InnerProductSpace

noncomputable section

namespace Formalism.L2.SG.Pf.admitted.SkewDerivative

open Formalism.MainNotions.S Formalism.REAL Formalism.MainNotions.BridgeCPX

section Gen

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [FiniteDimensional ℂ E] [CompleteSpace E]

theorem oneParam_hasDerivAt (φ : ℝ → E →L[ℂ] E) (h0 : φ 0 = 1) (hadd : ∀ s t, φ (s + t) = φ s * φ t)
    (hc : Continuous φ) : ∃ A : E →L[ℂ] E, HasDerivAt φ A 0 := by
  set ψ : ℝ → (E →L[ℂ] E) := fun t => ∫ s in (0 : ℝ)..t, φ s with hψdef
  have hψ : ∀ t, HasDerivAt ψ (φ t) t := fun t => (hc.integral_hasStrictDerivAt 0 t).hasDerivAt
  have hψ0 : ψ 0 = 0 := intervalIntegral.integral_same
  have key : ∀ t d : ℝ, φ t * ψ d = ψ (t + d) - ψ t := by
    intro t d
    have h1 : φ t * ψ d = ∫ s in (0 : ℝ)..d, φ t * φ s :=
      ((ContinuousLinearMap.mul ℂ (E →L[ℂ] E) (φ t)).intervalIntegral_comp_comm
        (hc.intervalIntegrable 0 d)).symm
    rw [h1]
    simp_rw [← hadd]
    rw [intervalIntegral.integral_comp_add_left φ t, add_zero, hψdef]
    exact (intervalIntegral.integral_interval_sub_left (hc.intervalIntegrable _ _)
      (hc.intervalIntegrable _ _)).symm
  have hs := hasDerivAt_iff_tendsto_slope.mp (hψ 0)
  rw [h0] at hs
  have hev : ∀ᶠ d in nhdsWithin (0 : ℝ) {0}ᶜ, IsUnit (slope ψ 0 d) ∧ d ∈ ({0}ᶜ : Set ℝ) :=
    (hs.eventually_mem (Units.isOpen.mem_nhds isUnit_one)).and self_mem_nhdsWithin
  obtain ⟨δ, hδu, hδ0⟩ := hev.exists
  have hδ0' : δ ≠ 0 := hδ0
  obtain ⟨u, hu⟩ := hδu
  have hψδ : ψ δ = δ • (u : E →L[ℂ] E) := by
    rw [hu, slope_def_module, hψ0, sub_zero, sub_zero, smul_smul, mul_inv_cancel₀ hδ0', one_smul]
  have e : φ = fun t => δ⁻¹ • (ψ (t + δ) - ψ t) * ((u⁻¹ : (E →L[ℂ] E)ˣ) : E →L[ℂ] E) := by
    funext t
    have h2 := key t δ
    rw [hψδ, mul_smul_comm] at h2
    rw [← h2, smul_smul, inv_mul_cancel₀ hδ0', one_smul, mul_assoc, Units.mul_inv, mul_one]
  have hD : HasDerivAt (fun t => ψ (t + δ) - ψ t) (φ (0 + δ) - φ 0) 0 :=
    (HasDerivAt.comp_add_const 0 δ (hψ (0 + δ))).sub (hψ 0)
  rw [e]
  exact ⟨_, (hD.const_smul δ⁻¹).mul_const _⟩

theorem clm_der {F G : Type*} [NormedAddCommGroup F] [NormedSpace ℂ F] [NormedAddCommGroup G] [NormedSpace ℂ G]
    (L : F →L[ℂ] G) {f : ℝ → F} {f' : F} (hf : HasDerivAt f f' 0) : HasDerivAt (fun t => L (f t)) (L f') 0 :=
  (L.restrictScalars ℝ).hasFDerivAt.comp_hasDerivAt 0 hf

theorem apply_der {F G : Type*} [NormedAddCommGroup F] [NormedSpace ℂ F] [NormedAddCommGroup G] [NormedSpace ℂ G]
    {φ : ℝ → F →L[ℂ] G} {A : F →L[ℂ] G} (hA : HasDerivAt φ A 0) (x : F) :
    HasDerivAt (fun t => φ t x) (A x) 0 := clm_der (ContinuousLinearMap.apply ℂ G x) hA

end Gen

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section Orth

variable {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem norm_sq_sum_orth {ι : Type*} [DecidableEq ι] (s : Finset ι) (x : ι → H)
    (h : ∀ i ∈ s, ∀ j ∈ s, i ≠ j → ⟪x i, x j⟫_ℂ = 0) : ‖∑ i ∈ s, x i‖ ^ 2 = ∑ i ∈ s, ‖x i‖ ^ 2 := by
  revert h
  refine Finset.induction_on s (fun _ => by simp) ?_
  intro a s ha ih h
  rw [Finset.sum_insert ha, Finset.sum_insert ha]
  have h0 : ⟪x a, ∑ i ∈ s, x i⟫_ℂ = 0 := by
    rw [inner_sum]
    exact Finset.sum_eq_zero fun i hi => h a (Finset.mem_insert_self _ _) i (Finset.mem_insert_of_mem hi)
      (fun e => ha (by rw [e]; exact hi))
  rw [← ih (fun i hi j hj => h i (Finset.mem_insert_of_mem hi) j (Finset.mem_insert_of_mem hj))]
  simpa only [sq] using norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero _ _ h0

end Orth

section Gens

variable {n : ℕ} {ε : Fin n → Bool}

theorem gen_inK (p : Fin n × Fin n) (hp : ε p.1 = ε p.2) : inK ε (gen ε p) := by
  obtain ⟨a, b⟩ := p
  simp only at hp
  rw [Formalism.REAL.f1alg_inK_iff]
  have hsg : ((sg ε (a, b) : ℝ) : ℂ) = 1 := by simp [sg, hp]
  have hc : ∀ i j : Fin n, ε i = ε j → Matrix.single i j (1 : ℂ) * Jm ε = Jm ε * Matrix.single i j 1 := by
    intro i j hij
    ext k l
    simp only [Jm, Matrix.mul_diagonal, Matrix.diagonal_mul, Matrix.single_apply]
    by_cases h : i = k ∧ j = l
    · rw [if_pos h]
      obtain ⟨rfl, rfl⟩ := h
      rw [hij]
      ring
    · rw [if_neg h]
      ring
  have hI : star Complex.I = -Complex.I := Complex.conj_I
  unfold gen
  dsimp only
  simp only [hsg, one_smul]
  split_ifs with h1 h2
  · constructor
    · rw [Matrix.conjTranspose_smul, Matrix.conjTranspose_single, star_one, hI, neg_smul]
    · rw [Matrix.smul_mul, Matrix.mul_smul, hc a a rfl]
  · constructor
    · rw [Matrix.conjTranspose_sub, Matrix.conjTranspose_single, Matrix.conjTranspose_single, star_one, neg_sub]
    · rw [Matrix.sub_mul, Matrix.mul_sub, hc a b hp, hc b a hp.symm]
  · constructor
    · rw [Matrix.conjTranspose_smul, Matrix.conjTranspose_add, Matrix.conjTranspose_single,
        Matrix.conjTranspose_single, star_one, hI, neg_smul, add_comm (Matrix.single a b (1 : ℂ))]
    · rw [Matrix.smul_mul, Matrix.mul_smul, Matrix.add_mul, Matrix.mul_add, hc a b hp, hc b a hp.symm]

theorem exp_mem_Kset (p : Fin n × Fin n) (hp : ε p.1 = ε p.2) (t : ℝ) :
    NormedSpace.exp ((t : ℂ) • gen ε p) ∈ Kset ε := by
  exact (Formalism.REAL.maximal_compact_facts n ε).2.2.2.1 _ (Formalism.REAL.inK_smul_real ε (gen_inK p hp) t)

end Gens

section Main

variable {n : ℕ} {ε : Fin n → Bool} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
  (σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)) (hσ : IsURepOn (UJset ε) σ)
  (p : Fin n × Fin n) (hp : ε p.1 = ε p.2)

include hσ hp in
theorem U_mem (t : ℝ) : NormedSpace.exp ((t : ℂ) • gen ε p) ∈ UJset ε := (Formalism.REAL.maximal_compact_facts n ε).1 _ (exp_mem_Kset p hp t)

include hσ hp in
theorem U_zero (v : H) : σ (NormedSpace.exp (((0 : ℝ) : ℂ) • gen ε p)) v = v := by
  rw [Complex.ofReal_zero, zero_smul, NormedSpace.exp_zero, hσ.1.1, ContinuousLinearMap.one_apply]

include hσ hp in
theorem U_add (s t : ℝ) (v : H) : σ (NormedSpace.exp (((s + t : ℝ) : ℂ) • gen ε p)) v =
    σ (NormedSpace.exp ((s : ℂ) • gen ε p)) (σ (NormedSpace.exp ((t : ℂ) • gen ε p)) v) := by
  have e : (((s + t : ℝ) : ℂ) • gen ε p) = (s : ℂ) • gen ε p + (t : ℂ) • gen ε p := by
    push_cast
    rw [add_smul]
  rw [e, Matrix.exp_add_of_commute _ _ (((Commute.refl (gen ε p)).smul_left (s : ℂ)).smul_right (t : ℂ)),
    hσ.1.2 _ (U_mem σ hσ p hp s) _ (U_mem σ hσ p hp t)]
  rfl

include hσ hp in
theorem U_inner (t : ℝ) (u w : H) : ⟪σ (NormedSpace.exp ((t : ℂ) • gen ε p)) u,
    σ (NormedSpace.exp ((t : ℂ) • gen ε p)) w⟫_ℂ = ⟪u, w⟫_ℂ := by
  let L : H →ₗᵢ[ℂ] H :=
    { toLinearMap := (σ (NormedSpace.exp ((t : ℂ) • gen ε p)) : H →ₗ[ℂ] H)
      norm_map' := hσ.2.1 _ (U_mem σ hσ p hp t) }
  exact L.inner_map_map u w

include hσ hp in
theorem U_cont (v : H) : Continuous fun t : ℝ => σ (NormedSpace.exp ((t : ℂ) • gen ε p)) v := by
  have hc : Continuous fun t : ℝ => NormedSpace.exp ((t : ℂ) • gen ε p) := by
    have hE := (Formalism.REAL.group_exponential_facts n ε (gen ε p) (gen_inK p hp).1).2.2.1
    have e : (fun t : ℝ => NormedSpace.exp ((t : ℂ) • gen ε p)) =
        fun t => Formalism.REAL.toM (Formalism.REAL.expG ε (gen ε p) t) := by
      funext t
      rw [Formalism.REAL.toM_expG ε _ t (gen_inK p hp).1]
    rw [e]
    exact Units.continuous_val.comp (continuous_subtype_val.comp hE)
  exact (hσ.2.2 v).comp_continuous hc (fun t => U_mem σ hσ p hp t)


include hσ hp in
theorem skew_of_der {u w u' w' : H}
    (hu : HasDerivAt (fun t : ℝ => σ (NormedSpace.exp ((t : ℂ) • gen ε p)) u) u' 0)
    (hw : HasDerivAt (fun t : ℝ => σ (NormedSpace.exp ((t : ℂ) • gen ε p)) w) w' 0) :
    ⟪u, w'⟫_ℂ + ⟪u', w⟫_ℂ = 0 := by
  have h1 := hu.inner ℂ hw
  have h2 : HasDerivAt (fun t : ℝ => ⟪σ (NormedSpace.exp ((t : ℂ) • gen ε p)) u,
      σ (NormedSpace.exp ((t : ℂ) • gen ε p)) w⟫_ℂ) 0 0 := by
    simp only [U_inner σ hσ p hp]
    exact hasDerivAt_const _ _
  have h3 := h1.unique h2
  simpa only [U_zero σ hσ p hp] using h3


omit hσ p hp in
def Ev (X : Matrix (Fin n) (Fin n) ℂ) (μ : ℝ) : Submodule ℂ H where
  carrier := {u | HasDerivAt (fun t : ℝ => σ (NormedSpace.exp ((t : ℂ) • X)) u) (((μ : ℂ) * Complex.I) • u) 0}
  zero_mem' := by
    simp only [Set.mem_ofPred_eq, map_zero, smul_zero]
    exact hasDerivAt_const _ _
  add_mem' := by
    intro a b ha hb
    simp only [Set.mem_ofPred_eq, map_add (f := _), smul_add] at *
    exact ha.add hb
  smul_mem' := by
    intro c a ha
    simp only [Set.mem_ofPred_eq, map_smul] at *
    rw [smul_comm]
    exact ha.const_smul c

include hσ hp in
theorem Ev_orth {μ ν : ℝ} (hne : μ ≠ ν) {u w : H} (hu : u ∈ Ev σ (gen ε p) μ) (hw : w ∈ Ev σ (gen ε p) ν) :
    ⟪u, w⟫_ℂ = 0 := by
  have h := skew_of_der σ hσ p hp hu hw
  rw [inner_smul_right, inner_smul_left] at h
  have hc : (starRingEnd ℂ) ((μ : ℂ) * Complex.I) = -((μ : ℂ) * Complex.I) := by
    simp [Complex.conj_ofReal]
  rw [hc, ← add_mul] at h
  have hne' : ((ν : ℂ) * Complex.I + -((μ : ℂ) * Complex.I)) ≠ 0 := by
    intro h0
    apply hne
    have h5 := congrArg Complex.im h0
    simp at h5
    linarith
  exact (mul_eq_zero.mp h).resolve_left hne'


include hσ hp in
theorem bound_on_sup (Λ : Finset ℝ) (v : H) (hv : v ∈ ⨆ μ ∈ Λ, Ev σ (gen ε p) μ) :
    ‖dS σ (gen ε p) v‖ ≤ (∑ μ ∈ Λ, |μ|) * ‖v‖ := by
  obtain ⟨c, hc⟩ := (Submodule.mem_iSup_finset_iff_exists_sum _ v).mp hv
  have hder : HasDerivAt (fun t : ℝ => σ (NormedSpace.exp ((t : ℂ) • gen ε p)) v)
      (∑ μ ∈ Λ, ((μ : ℂ) * Complex.I) • (c μ : H)) 0 := by
    rw [← hc]

    simp only [map_sum]
    exact HasDerivAt.fun_sum fun μ _ => (c μ).2
  have hpy : ‖v‖ ^ 2 = ∑ μ ∈ Λ, ‖(c μ : H)‖ ^ 2 := by
    rw [← hc]
    exact norm_sq_sum_orth Λ (fun μ => (c μ : H)) (fun i _ j _ hij => Ev_orth σ hσ p hp hij (c i).2 (c j).2)
  have hle : ∀ μ ∈ Λ, ‖(c μ : H)‖ ≤ ‖v‖ := by
    intro μ hμ
    have h4 : ‖(c μ : H)‖ ^ 2 ≤ ‖v‖ ^ 2 := by
      rw [hpy]
      exact Finset.single_le_sum (f := fun μ => ‖(c μ : H)‖ ^ 2) (fun i _ => sq_nonneg _) hμ
    nlinarith [norm_nonneg (c μ : H), norm_nonneg v]
  show ‖deriv (fun t : ℝ => σ (NormedSpace.exp ((t : ℂ) • gen ε p)) v) 0‖ ≤ _
  rw [hder.deriv]
  calc ‖∑ μ ∈ Λ, ((μ : ℂ) * Complex.I) • (c μ : H)‖ ≤ ∑ μ ∈ Λ, ‖((μ : ℂ) * Complex.I) • (c μ : H)‖ :=
        norm_sum_le _ _
    _ = ∑ μ ∈ Λ, |μ| * ‖(c μ : H)‖ := by
        refine Finset.sum_congr rfl fun μ _ => ?_
        rw [norm_smul, norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Real.norm_eq_abs]
    _ ≤ ∑ μ ∈ Λ, |μ| * ‖v‖ := Finset.sum_le_sum fun μ hμ => mul_le_mul_of_nonneg_left (hle μ hμ) (abs_nonneg μ)
    _ = (∑ μ ∈ Λ, |μ|) * ‖v‖ := (Finset.sum_mul _ _ _).symm


include hσ hp in
theorem isoK_le (S : Submodule ℂ H) (hfd : FiniteDimensional ℂ S) (hst : IsKStableOn ε σ S) :
    ∃ Λ : Finset ℝ, isoK ε σ S ≤ ⨆ μ ∈ Λ, Ev σ (gen ε p) μ := by
  haveI := hfd
  have hKmem : ∀ t : ℝ, NormedSpace.exp ((t : ℂ) • gen ε p) ∈ Formalism.REAL.Kset ε := exp_mem_Kset p hp
  let φ : ℝ → (S →L[ℂ] S) := fun t =>
    LinearMap.toContinuousLinearMap
      (((σ (NormedSpace.exp ((t : ℂ) • gen ε p)) : H →ₗ[ℂ] H).restrict
        (p := S) (q := S) (fun v hv => hst _ (hKmem t) v hv)))
  have hφ : ∀ (t : ℝ) (v : S), ((φ t v : S) : H) = σ (NormedSpace.exp ((t : ℂ) • gen ε p)) v :=
    fun t v => rfl
  have h0 : φ 0 = 1 := ContinuousLinearMap.ext fun v => Subtype.ext (by
    rw [hφ]
    exact U_zero σ hσ p hp v)
  have hadd : ∀ s t, φ (s + t) = φ s * φ t := fun s t =>
    ContinuousLinearMap.ext fun v => Subtype.ext (by
      rw [hφ]
      exact U_add σ hσ p hp s t v)
  have hcont : Continuous φ := by
    rw [continuous_clm_apply]
    intro v
    exact (U_cont σ hσ p hp (v : H)).subtype_mk _
  obtain ⟨A, hA⟩ := oneParam_hasDerivAt φ h0 hadd hcont
  have hder : ∀ v : S, HasDerivAt (fun t : ℝ => σ (NormedSpace.exp ((t : ℂ) • gen ε p)) (v : H))
      ((A v : S) : H) 0 := fun v => clm_der S.subtypeL (apply_der hA v)
  have hskew : ∀ v w : S, ⟪(v : H), ((A w : S) : H)⟫_ℂ + ⟪((A v : S) : H), (w : H)⟫_ℂ = 0 :=
    fun v w => skew_of_der σ hσ p hp (hder v) (hder w)
  let B : S →ₗ[ℂ] S := (((-Complex.I) • A : S →L[ℂ] S) : S →ₗ[ℂ] S)
  have hB : B.IsSymmetric := by
    intro x y
    show ⟪((-Complex.I) • A x : S), y⟫_ℂ = ⟪x, ((-Complex.I) • A y : S)⟫_ℂ
    rw [inner_smul_left, inner_smul_right, Submodule.coe_inner, Submodule.coe_inner]
    rw [show ⟪(x : H), ((A y : S) : H)⟫_ℂ = -⟪((A x : S) : H), (y : H)⟫_ℂ from
      eq_neg_of_add_eq_zero_left (hskew x y)]
    rw [map_neg, Complex.conj_I]
    ring
  have hbA : ∀ i, (A (hB.eigenvectorBasis rfl i) : S) =
      (((hB.eigenvalues rfl i : ℝ) : ℂ) * Complex.I) • hB.eigenvectorBasis rfl i := by
    intro i
    have h1 := hB.apply_eigenvectorBasis rfl i
    have h2 : (A (hB.eigenvectorBasis rfl i) : S) = Complex.I • B (hB.eigenvectorBasis rfl i) := by
      show _ = Complex.I • ((-Complex.I) • A (hB.eigenvectorBasis rfl i))
      rw [smul_smul, mul_neg, Complex.I_mul_I, neg_neg, one_smul]
    rw [h2, h1, smul_smul, mul_comm]
    rfl
  have hmemΛ : ∀ i, Ev σ (gen ε p) (hB.eigenvalues rfl i) ≤
      ⨆ μ ∈ Finset.univ.image (hB.eigenvalues rfl), Ev σ (gen ε p) μ := fun i =>
    le_biSup (fun μ => Ev σ (gen ε p) μ) (Finset.mem_image_of_mem _ (Finset.mem_univ i))
  have hG : Formalism.REAL.inG ε (gen ε p) := (gen_inK p hp).1
  have hexpK : ∀ t : ℝ, Formalism.REAL.toMK (Formalism.REAL.expK ε (gen ε p) t) =
      NormedSpace.exp ((t : ℂ) • gen ε p) := by
    intro t
    show Formalism.REAL.toM ((Formalism.REAL.expK ε (gen ε p) t : Formalism.REAL.KG ε) : Formalism.REAL.UJ ε) = _
    rw [((Formalism.REAL.group_exponential_facts n ε (gen ε p) hG).2.2.2 (gen_inK p hp)).1 t,
      Formalism.REAL.toM_expG ε (gen ε p) t hG]
  refine ⟨Finset.univ.image (hB.eigenvalues rfl), ?_⟩
  show sSup _ ≤ _
  refine sSup_le ?_
  rintro S' ⟨Θ, hΘ, rfl⟩
  have hΘEv : ∀ i, Θ (hB.eigenvectorBasis rfl i) ∈ Ev σ (gen ε p) (hB.eigenvalues rfl i) := by
    intro i
    have horb : (fun t : ℝ => σ (NormedSpace.exp ((t : ℂ) • gen ε p)) (Θ (hB.eigenvectorBasis rfl i))) =
        fun t => (LinearMap.toContinuousLinearMap Θ) (φ t (hB.eigenvectorBasis rfl i)) := by
      funext t
      have h3 := hΘ (Formalism.REAL.expK ε (gen ε p) t) (hB.eigenvectorBasis rfl i) (φ t (hB.eigenvectorBasis rfl i))
        (by
          show _ = σ (Formalism.REAL.toMK (Formalism.REAL.expK ε (gen ε p) t)) _
          rw [hexpK t]
          rfl)
      simp only [hexpK t] at h3
      show _ = Θ (φ t (hB.eigenvectorBasis rfl i))
      rw [h3]
    show HasDerivAt _ _ 0
    rw [horb]
    have h4 := clm_der (LinearMap.toContinuousLinearMap Θ) (apply_der hA (hB.eigenvectorBasis rfl i))
    rw [hbA i, map_smul] at h4
    exact h4
  rintro _ ⟨v, rfl⟩

  rw [← (hB.eigenvectorBasis rfl).sum_repr v, map_sum]
  refine Submodule.sum_mem _ fun i _ => ?_
  rw [map_smul]
  exact Submodule.smul_mem _ _ (hmemΛ i (hΘEv i))

include hσ hp in
theorem bound_one (S : Submodule ℂ H) (hfd : FiniteDimensional ℂ S) (hst : IsKStableOn ε σ S) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ v ∈ isoK ε σ S, ‖dS σ (gen ε p) v‖ ≤ C * ‖v‖ := by
  obtain ⟨Λ, hΛ⟩ := isoK_le σ hσ p hp S hfd hst
  exact ⟨∑ μ ∈ Λ, |μ|, Finset.sum_nonneg fun μ _ => abs_nonneg μ,
    fun v hv => bound_on_sup σ hσ p hp Λ v (hΛ hv)⟩

end Main

end Formalism.L2.SG.Pf.admitted.SkewDerivative

namespace Formalism.L2.SG.Pf.admitted

open Formalism.MainNotions.S Formalism.REAL Formalism.MainNotions.BridgeCPX

theorem c5 : CompactDerivativesBounded := by
  intro n ε H _ _ _ σ hσ S hfd hst
  have hb : ∀ p : Fin n × Fin n, ε p.1 = ε p.2 → ∃ C : ℝ, 0 ≤ C ∧
      ∀ v ∈ isoK ε σ S, ‖dS σ (gen ε p) v‖ ≤ C * ‖v‖ :=
    fun p hp => SkewDerivative.bound_one σ hσ p hp S hfd hst
  choose! C hC0 hC using hb
  refine ⟨∑ q, max (C q) 0, fun p hp v hv => (hC p hp v hv).trans (mul_le_mul_of_nonneg_right ?_ (norm_nonneg v))⟩
  exact (le_max_left _ _).trans
    (Finset.single_le_sum (f := fun q => max (C q) 0) (fun q _ => le_max_right _ _) (Finset.mem_univ p))

end Formalism.L2.SG.Pf.admitted
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.OneParamHasDerivAt =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.SgCases =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.SgCases", "h": "module\n\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.HasDerivAtDS\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.CompactDerivativesBounded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Filter Topology
open scoped InnerProductSpace

noncomputable section

namespace Formalism.L2.SG.Pf.admitted

open Formalism.MainNotions.S Formalism.REAL Formalism.MainNotions.BridgeCPX

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace GeneratorWeights

variable {n : ℕ}

theorem sg_cases (ε : Fin n → Bool) (p : Fin n × Fin n) : sg ε p = 1 ∨ sg ε p = -1 := by
  unfold sg
  split_ifs <;> simp

theorem wt_ge (p : Fin n × Fin n) : 1 / 2 ≤ wt p := by
  unfold wt
  split_ifs <;> norm_num

theorem wt_le (p : Fin n × Fin n) : wt p ≤ 1 := by
  unfold wt
  split_ifs <;> norm_num

theorem gen_mem (ε : Fin n → Bool) (p : Fin n × Fin n) : inG ε (gen ε p) := by
  apply Formalism.L2.SG.Pf.admitted.AdmissibleVectors.inG_gen

variable {ε : Fin n → Bool} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
  {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} {D : Submodule ℂ H}

theorem sum_eq (hC : Calc ε σ D) {c : ℝ} (hc : ∀ v ∈ D, Cas ε σ v = (c : ℂ) • v) {v : H} (hv : v ∈ D) :
    ∑ p : Fin n × Fin n, wt p * sg ε p * ‖dS σ (gen ε p) v‖ ^ 2 = c * ‖v‖ ^ 2 := by
  have hgen : ∀ p, inG ε (gen ε p) := gen_mem ε
  have key : ⟪Cas ε σ v, v⟫_ℂ =
      ∑ p, ((wt p * sg ε p * ‖dS σ (gen ε p) v‖ ^ 2 : ℝ) : ℂ) := by
    unfold Cas
    rw [inner_neg_left, sum_inner, ← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun p _ => ?_
    rw [inner_smul_left, hC.skew _ (hgen p) _ (hC.mem _ (hgen p) v hv) v hv,
      inner_self_eq_norm_sq_to_K]
    apply Complex.ext <;> simp [Complex.mul_re, Complex.mul_im]
  have h2 : ((c * ‖v‖ ^ 2 : ℝ) : ℂ) =
      ((∑ p, wt p * sg ε p * ‖dS σ (gen ε p) v‖ ^ 2 : ℝ) : ℂ) := by
    rw [Complex.ofReal_sum, ← key, hc v hv, inner_smul_left, inner_self_eq_norm_sq_to_K]
    apply Complex.ext <;> simp [Complex.mul_re, Complex.mul_im]
  exact (Complex.ofReal_inj.1 h2).symm

end GeneratorWeights

open GeneratorWeights in
theorem c4 : CasimirScalarBounded := by
  intro n ε H _ _ _ σ D hC c hc W C hW
  set K : ℝ := 2 * ((Fintype.card (Fin n × Fin n) : ℝ) * C ^ 2 + |c|) with hK
  refine ⟨max C (Real.sqrt K), fun p v hvD hvW => ?_⟩
  have hv0 : 0 ≤ ‖v‖ := norm_nonneg v
  by_cases hp : ε p.1 = ε p.2
  · exact (hW p hp v hvW).trans (mul_le_mul_of_nonneg_right (le_max_left _ _) hv0)
  · have hsum := sum_eq hC hc hvD
    have hsgp : sg ε p = -1 := by simp [sg, hp]
    have hterm : ∀ q, wt q * sg ε q * ‖dS σ (gen ε q) v‖ ^ 2 ≤ C ^ 2 * ‖v‖ ^ 2 := by
      intro q
      have h3 := wt_le q
      have h4 := wt_ge q
      rcases sg_cases ε q with h | h
      · have hq : ε q.1 = ε q.2 := by
          by_contra hne
          simp [sg, hne] at h
          norm_num at h
        have h1 := hW q hq v hvW
        have h2 : ‖dS σ (gen ε q) v‖ ^ 2 ≤ (C * ‖v‖) ^ 2 :=
          pow_le_pow_left₀ (norm_nonneg _) h1 2
        rw [h, mul_one]
        have h5 : wt q * ‖dS σ (gen ε q) v‖ ^ 2 ≤ 1 * ‖dS σ (gen ε q) v‖ ^ 2 :=
          mul_le_mul_of_nonneg_right h3 (sq_nonneg _)
        nlinarith [h2, h5]
      · rw [h]
        have h5 : 0 ≤ wt q * ‖dS σ (gen ε q) v‖ ^ 2 :=
          mul_nonneg (by linarith) (sq_nonneg _)
        nlinarith [sq_nonneg (C * ‖v‖), h5]
    have hsplit := Finset.add_sum_erase Finset.univ
      (fun q => wt q * sg ε q * ‖dS σ (gen ε q) v‖ ^ 2) (Finset.mem_univ p)
    have hrest : ∑ q ∈ Finset.univ.erase p, wt q * sg ε q * ‖dS σ (gen ε q) v‖ ^ 2 ≤
        (Fintype.card (Fin n × Fin n) : ℝ) * (C ^ 2 * ‖v‖ ^ 2) := by
      calc _ ≤ ∑ q ∈ Finset.univ.erase p, C ^ 2 * ‖v‖ ^ 2 :=
            Finset.sum_le_sum fun q _ => hterm q
        _ = ((Finset.univ.erase p).card : ℝ) * (C ^ 2 * ‖v‖ ^ 2) := by
            rw [Finset.sum_const, nsmul_eq_mul]
        _ ≤ _ := mul_le_mul_of_nonneg_right
            (by exact_mod_cast (Finset.card_erase_le.trans (le_of_eq Finset.card_univ)))
            (by positivity)
    have hwp := wt_ge p
    rw [hsgp] at hsplit
    have e2 : (1 / 2) * ‖dS σ (gen ε p) v‖ ^ 2 ≤ wt p * ‖dS σ (gen ε p) v‖ ^ 2 :=
      mul_le_mul_of_nonneg_right hwp (sq_nonneg _)
    have e3 : -c * ‖v‖ ^ 2 ≤ |c| * ‖v‖ ^ 2 :=
      mul_le_mul_of_nonneg_right (neg_le_abs c) (sq_nonneg _)
    have hsq : ‖dS σ (gen ε p) v‖ ^ 2 ≤ K * ‖v‖ ^ 2 := by
      rw [hK]
      nlinarith [hsplit, hsum, hrest, e2, e3]
    have hK0 : 0 ≤ K := by positivity
    have hle : ‖dS σ (gen ε p) v‖ ≤ Real.sqrt K * ‖v‖ := by
      rw [← Real.sqrt_sq (norm_nonneg (dS σ (gen ε p) v)), ← Real.sqrt_sq hv0,
        ← Real.sqrt_mul hK0]
      exact Real.sqrt_le_sqrt hsq
    exact hle.trans (mul_le_mul_of_nonneg_right (le_max_right _ _) hv0)

end Formalism.L2.SG.Pf.admitted
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.SgCases =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.KFinSmooth =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.KFinSmooth", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeCPX\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.ExpansionFromLemmaB\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.LowestKTypeMultiplicity\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.HcMultDSOfAll\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.GenApplyEqZero\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.GenApplyZero\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.HasDerivAtDS\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.ImInnerSelf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.IntegralSumCoef\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.KavgFixRange\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.OneParamHasDerivAt\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.SmoothGeneratorAverages.SgCases\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.admitted

theorem hcMultDS : Formalism.MainNotions.BridgeCPX.HCMultDS :=
  hcMultDS_of_all c0 c1 c2 c3 c4 c5 c6 c7

theorem hcAdmDS : Formalism.MainNotions.BridgeCPX.HCAdmDS := _root_.Formalism.MainNotions.BridgeCPX.HCAdmDS_of_mult hcMultDS

theorem kFinSmooth : Formalism.MainNotions.LowestKTypeMultiplicity.KFinSmooth := kFinSmooth_of hcMultDS

theorem kFinSmooth' : Formalism.MainNotions.DiscreteSeriesInnerProducts.KFinSmooth := kFinSmooth_of' hcMultDS

end Formalism.L2.SG.Pf.admitted
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.OneParameterDerivatives.AdmissibleCasimirScalars.KFinSmooth =====
