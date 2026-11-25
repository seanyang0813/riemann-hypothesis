module

public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LinMulti
public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ISmulOneMemUnitaryLie
public import Mathlib.Analysis.Calculus.InverseFunctionTheorem.ContDiff
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.OneMemNbh
public import Development.AbelianVarietyTheory.BlockTheory.SiegelWeilLocal.OrbitStepSpace
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LayerProd
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LowestKTypeInfinitesimalCharLargeGap
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothOfMemLowKSub
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LowestKTypeMultiplicityOneLargeGaps
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothVectorsLieIff, Development.AbelianVarietyTheory.Proofs.TwistedOperators.LowestKTypeLieWordNormBound

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothVectorsLieIff =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothVectorsLieIff", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LinMulti\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.ISmulOneMemUnitaryLie\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.InverseFunctionTheorem.ContDiff\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Formalism.MainNotions.S GlobalTheory.Ell Filter
open scoped InnerProductSpace ContDiff Topology

namespace GlobalTheory.SmChart

variable {n : ℕ}

def oneProd {d : ℕ} (Y : Fin d → Matrix (Fin n) (Fin n) ℂ) (t : Fin d → ℝ) : Matrix (Fin n) (Fin n) ℂ :=
  (List.ofFn fun i => NormedSpace.exp (t i • Y i)).prod

theorem oneProd_succ {d : ℕ} (Y : Fin (d + 1) → Matrix (Fin n) (Fin n) ℂ) (t : Fin (d + 1) → ℝ) :
    oneProd Y t = NormedSpace.exp (t 0 • Y 0) * oneProd (fun i => Y i.succ) (fun i => t i.succ) := by
  simp [oneProd, List.ofFn_succ]

theorem mul_mem_UH {G a b : Matrix (Fin n) (Fin n) ℂ} (ha : a ∈ Formalism.QuantumDeterminants.UH G) (hb : b ∈ Formalism.QuantumDeterminants.UH G) :
    a * b ∈ Formalism.QuantumDeterminants.UH G := by
  have ha' : aᴴ * G * a = G := ha
  have hb' : bᴴ * G * b = G := hb
  show (a * b)ᴴ * G * (a * b) = G
  calc (a * b)ᴴ * G * (a * b) = bᴴ * (aᴴ * G * a) * b := by simp only [conjTranspose_mul, Matrix.mul_assoc]
    _ = G := by rw [ha', hb']

theorem exp_mem {G X : Matrix (Fin n) (Fin n) ℂ} (hG : IsUnit G) (hX : X ∈ lieOf G) (t : ℝ) :
    NormedSpace.exp (t • X) ∈ Formalism.QuantumDeterminants.UH G := by
  have hX0 : Xᴴ * G + G * X = 0 := hX
  show (NormedSpace.exp (t • X))ᴴ * G * NormedSpace.exp (t • X) = G
  have hd : IsUnit G.det := (Matrix.isUnit_iff_isUnit_det G).1 hG
  have h1 : (t • X)ᴴ = G * (-(t • X)) * G⁻¹ := by
    have h2 : Xᴴ = G * (-X) * G⁻¹ := by
      rw [Matrix.mul_neg, ← eq_neg_of_add_eq_zero_left hX0, Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hd,
        Matrix.mul_one]
    rw [conjTranspose_smul, h2]
    simp
  rw [← Matrix.exp_conjTranspose, h1, Matrix.exp_conj _ _ hG, Matrix.exp_neg]
  have hu : IsUnit (NormedSpace.exp (t • X)).det := (Matrix.isUnit_iff_isUnit_det _).1 (Matrix.isUnit_exp _)
  rw [Matrix.mul_assoc (G * _), Matrix.nonsing_inv_mul _ hd, Matrix.mul_one, Matrix.mul_assoc,
    Matrix.nonsing_inv_mul _ hu, Matrix.mul_one]

theorem oneProd_mem {G : Matrix (Fin n) (Fin n) ℂ} (hG : IsUnit G) :
    ∀ {d : ℕ} (Y : Fin d → Matrix (Fin n) (Fin n) ℂ), (∀ i, Y i ∈ lieOf G) → ∀ t : Fin d → ℝ,
      oneProd Y t ∈ Formalism.QuantumDeterminants.UH G := by
  intro d
  induction d with
  | zero =>
    intro Y _ t
    show (oneProd Y t)ᴴ * G * oneProd Y t = G
    simp [oneProd]
  | succ d ih =>
    intro Y hY t
    rw [oneProd_succ]
    exact mul_mem_UH (exp_mem hG (hY 0) _) (ih _ (fun i => hY _) _)

section Op

attribute [local instance] Matrix.linftyOpNormedAddCommGroup Matrix.linftyOpNormedSpace
  Matrix.linftyOpNormedRing Matrix.linftyOpNormedAlgebra

theorem contDiff_oneProd : ∀ {d : ℕ} (Y : Fin d → Matrix (Fin n) (Fin n) ℂ), ContDiff ℝ ∞ (oneProd Y) := by
  intro d
  induction d with
  | zero =>
    intro Y
    have e : oneProd Y = fun _ => 1 := by funext t; simp [oneProd]
    rw [e]
    exact contDiff_const
  | succ d ih =>
    intro Y
    have e : oneProd Y = fun t => NormedSpace.exp (t 0 • Y 0) * oneProd (fun i => Y i.succ) (fun i => t i.succ) := by
      funext t
      rw [oneProd_succ]
    rw [e]
    have hexp : ContDiff ℝ ∞ (NormedSpace.exp : Matrix (Fin n) (Fin n) ℂ → Matrix (Fin n) (Fin n) ℂ) :=
      contDiff_iff_contDiffAt.2 fun x => (NormedSpace.exp_analytic (𝕂 := ℝ) x).contDiffAt
    have h1 : ContDiff ℝ ∞ fun t : Fin (d + 1) → ℝ => NormedSpace.exp (t 0 • Y 0) :=
      hexp.comp ((contDiff_apply ℝ (fun _ => ℝ) (0 : Fin (d + 1))).smul contDiff_const)
    have h2 : ContDiff ℝ ∞ fun t : Fin (d + 1) → ℝ => oneProd (fun i => Y i.succ) (fun i => t i.succ) :=
      (ih _).comp (contDiff_pi.2 fun i => contDiff_apply ℝ (fun _ => ℝ) i.succ)
    exact h1.mul h2

end Op

section Sup

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def idOp' : @ContinuousLinearMap ℝ ℝ _ _ (RingHom.id ℝ) (Matrix (Fin n) (Fin n) ℂ)
    (Matrix.linftyOpNormedAddCommGroup).toUniformSpace.toTopologicalSpace _
    (Matrix (Fin n) (Fin n) ℂ) _ _ (Matrix.linftyOpNormedSpace (R := ℝ)).toModule _ :=
  { toFun := id, map_add' := fun _ _ => rfl, map_smul' := fun _ _ => rfl, cont := continuous_id }

theorem contDiff_oneProd_sup {d : ℕ} (Y : Fin d → Matrix (Fin n) (Fin n) ℂ) : ContDiff ℝ ∞ (oneProd Y) :=
  @ContDiff.comp ℝ (Fin d → ℝ) (Matrix (Fin n) (Fin n) ℂ) (Matrix (Fin n) (Fin n) ℂ) _ _ _
    Matrix.linftyOpNormedAddCommGroup (Matrix.linftyOpNormedSpace (R := ℝ)) _ _ ∞ idOp' (oneProd Y)
    (@ContinuousLinearMap.contDiff ℝ (Matrix (Fin n) (Fin n) ℂ) (Matrix (Fin n) (Fin n) ℂ) _
      Matrix.linftyOpNormedAddCommGroup (Matrix.linftyOpNormedSpace (R := ℝ)) _ _ ∞ idOp')
    (contDiff_oneProd Y)

variable {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

theorem smV_of_smoothOnH {G : Matrix (Fin n) (Fin n) ℂ} (hG : IsUnit G)
    {ρ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} (x : H) :
    Formalism.QuantumDeterminants.SmoothOnH G (fun g => ρ g x) → SmV (lieOf G) ρ x := by
  intro hx m Xs hXs
  have hP : ContDiff ℝ ∞ (oneProd Xs) := contDiff_oneProd_sup Xs
  show ContDiff ℝ ∞ fun t => ρ (oneProd Xs t) x
  rw [contDiff_iff_contDiffAt]
  intro t₀
  obtain ⟨U, F, hU, hgU, hF, hfF⟩ := hx (oneProd Xs t₀) (oneProd_mem hG Xs hXs t₀)
  have hev : (fun t => ρ (oneProd Xs t) x) =ᶠ[𝓝 t₀] fun t => F (oneProd Xs t) := by
    filter_upwards [hP.continuous.continuousAt.preimage_mem_nhds (hU.mem_nhds hgU)] with t ht
    exact hfF _ ht (oneProd_mem hG Xs hXs t)
  exact ((hF.contDiffAt (hU.mem_nhds hgU)).comp t₀ hP.contDiffAt).congr_of_eventuallyEq hev

end Sup

end GlobalTheory.SmChart
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothVectorsLieIff =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.LowestKTypeLieWordNormBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.LowestKTypeLieWordNormBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.OneMemNbh\npublic import Development.AbelianVarietyTheory.BlockTheory.SiegelWeilLocal.OrbitStepSpace\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LayerProd\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LowestKTypeInfinitesimalCharLargeGap\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.LowestKTypeMultiplicityOneLargeGaps\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothOfMemLowKSub\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.SmoothVectorsLieIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Finset Formalism.MainNotions.S Formalism.REAL Formalism.QuantumDeterminants GlobalTheory.Ell
open scoped InnerProductSpace
open GlobalTheory.SepReal

namespace GlobalTheory.SepReal.LieWords

theorem dR_eq_dAct {m : ℕ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (π : Mat m → (H →L[ℂ] H)) : dR π = GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.dAct π := by
  funext X w
  unfold dR GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.dAct GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.orbit
  congr 1

theorem one_le_of_bound {m : ℕ} (hm : 3 ≤ m) {lam : Fin m → ℝ} (hc : IsHCParam lam) {B : ℝ}
    (hB : ∀ a, |lam a| ≤ B) : 1 ≤ B := by
  have hint : ∀ a c : Fin m, a < c → 1 ≤ lam a - lam c := by
    intro a c hac
    obtain ⟨ka, hka⟩ := hc.2 a
    obtain ⟨kc, hkc⟩ := hc.2 c
    have e : lam a - lam c = ((ka - kc : ℤ) : ℝ) := by push_cast; linarith
    have hpos : (0 : ℝ) < ((ka - kc : ℤ) : ℝ) := by rw [← e]; linarith [hc.1 hac]
    have h1 : (0 : ℤ) < ka - kc := by exact_mod_cast hpos
    have h2 : (1 : ℝ) ≤ ((ka - kc : ℤ) : ℝ) := by exact_mod_cast h1
    linarith
  have h01 := hint ⟨0, by omega⟩ ⟨1, by omega⟩ (by simp [Fin.lt_def])
  have h12 := hint ⟨1, by omega⟩ ⟨2, by omega⟩ (by simp [Fin.lt_def])
  have a0 := abs_le.mp (hB ⟨0, by omega⟩)
  have a2 := abs_le.mp (hB ⟨2, by omega⟩)
  linarith [a0.1, a0.2, a2.1, a2.2]

theorem stepConst_le {m : ℕ} (hm : 3 ≤ m) {B : ℝ} (hB : 1 ≤ B) (P : ℕ) (hP : P ≤ m + 1) :
    GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.stepConst m (Real.sqrt B) P ≤ (8 * (m : ℝ) * B) ^ 2 := by
  have hm' : (3 : ℝ) ≤ m := by exact_mod_cast hm
  have hB0 : (0 : ℝ) ≤ B := by linarith
  unfold GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.stepConst
  rw [Real.sq_sqrt hB0]
  have h12 : (m : ℝ) ^ (1 / 2 : ℝ) ≤ m := by
    calc (m : ℝ) ^ (1 / 2 : ℝ) ≤ (m : ℝ) ^ (1 : ℝ) :=
          Real.rpow_le_rpow_of_exponent_le (by linarith) (by norm_num)
      _ = m := Real.rpow_one _
  have h32 : (m : ℝ) ^ (3 / 2 : ℝ) ≤ (m : ℝ) ^ 2 := by
    calc (m : ℝ) ^ (3 / 2 : ℝ) ≤ (m : ℝ) ^ (2 : ℝ) :=
          Real.rpow_le_rpow_of_exponent_le (by linarith) (by norm_num)
      _ = (m : ℝ) ^ 2 := Real.rpow_two _
  have hPr : (P : ℝ) ≤ m + 1 := by exact_mod_cast hP
  have a1 : (m : ℝ) ^ (1 / 2 : ℝ) * B ≤ m * B := mul_le_mul_of_nonneg_right h12 hB0
  have hmB : 1 ≤ (m : ℝ) * B := by nlinarith
  have a2 : (m : ℝ) * B ≤ (m * B) ^ 2 := by nlinarith
  have a3 : (m : ℝ) ^ 2 ≤ (m * B) ^ 2 := by
    have hB2 : 1 ≤ B ^ 2 := one_le_pow₀ hB
    rw [mul_pow]
    calc (m : ℝ) ^ 2 = (m : ℝ) ^ 2 * 1 := (mul_one _).symm
      _ ≤ (m : ℝ) ^ 2 * B ^ 2 := mul_le_mul_of_nonneg_left hB2 (sq_nonneg _)
  have a4 : 3 * (P : ℝ) ≤ 2 * (m : ℝ) ^ 2 := by nlinarith
  have e : (8 * (m : ℝ) * B) ^ 2 = 64 * (m * B) ^ 2 := by ring
  rw [e]
  nlinarith [sq_nonneg ((m : ℝ) * B)]

theorem rk_le {m : ℕ} (hm : 3 ≤ m) (ε : Fin m → Bool) :
    120 * (m : ℝ) * ((GlobalTheory.Count.rkR ε : ℕ) : ℝ) ^ ((3 : ℝ) / 2) ≤ 1000 * (m : ℝ) ^ 3 := by
  have hm' : (3 : ℝ) ≤ m := by exact_mod_cast hm
  have hrk : GlobalTheory.Count.rkR ε ≤ m := by
    unfold GlobalTheory.Count.rkR
    exact (min_le_left _ _).trans ((Finset.card_filter_le _ _).trans (by simp))
  have h1 : ((GlobalTheory.Count.rkR ε : ℕ) : ℝ) ^ ((3 : ℝ) / 2) ≤ (m : ℝ) ^ ((3 : ℝ) / 2) :=
    Real.rpow_le_rpow (Nat.cast_nonneg _) (by exact_mod_cast hrk) (by norm_num)
  have h32 : (m : ℝ) ^ ((3 : ℝ) / 2) ≤ (m : ℝ) ^ 2 := by
    calc (m : ℝ) ^ ((3 : ℝ) / 2) ≤ (m : ℝ) ^ (2 : ℝ) :=
          Real.rpow_le_rpow_of_exponent_le (by linarith) (by norm_num)
      _ = (m : ℝ) ^ 2 := Real.rpow_two _
  have h0 : 0 ≤ ((GlobalTheory.Count.rkR ε : ℕ) : ℝ) ^ ((3 : ℝ) / 2) := by positivity
  have h2 : 120 * (m : ℝ) * ((GlobalTheory.Count.rkR ε : ℕ) : ℝ) ^ ((3 : ℝ) / 2) ≤ 120 * (m : ℝ) * (m : ℝ) ^ 2 :=
    mul_le_mul_of_nonneg_left (h1.trans h32) (by positivity)
  nlinarith

end GlobalTheory.SepReal.LieWords


open GlobalTheory.SepReal.LieWords in
theorem GlobalTheory.SepReal.lieBound : LieBound := by
  intro m ε lam B hm hc hgap hB H _ _ π hDS v₀ hv₀
  haveI : CompleteSpace H := hDS.1
  have hU : IsURepOn (UJset ε) π := hDS.2.2.1
  have hm' : (3 : ℝ) ≤ m := by exact_mod_cast hm
  have hgap2 : ∀ a b : Fin m, ε a ≠ ε b → 2 * (m : ℝ) < |lam a - lam b| := by
    intro a b hab
    have h := hgap a b hab
    nlinarith [sq_nonneg (m : ℝ)]
  have hK := GlobalTheory.Jet.MultGap.isKTypeOf_lowKSub m ε lam H π hc hDS hgap2
  have hZ := GlobalTheory.DSId.LowCharGap.lowChar m ε lam H π hc hDS _ hgap (rk_le hm ε)
  have hB1 : 1 ≤ B := one_le_of_bound hm hc hB
  have hb : ∀ a, |lam a| ≤ (Real.sqrt B) ^ 2 := by
    rw [Real.sq_sqrt (by linarith)]; exact hB
  have hSB := GlobalTheory.StepBoundOneRep.stepBound_of_eigen m ε H π lam (Real.sqrt B) hU hK hZ hb
  refine ⟨?_, ?_⟩
  · have hs := GlobalTheory.StepBoundOneRep.smooth_of_mem_lowKSub ε lam π hU hK v₀ hv₀.2
    have hJ : IsUnit (Jm ε) := (Matrix.isUnit_iff_isUnit_det _).2 (Matrix.isUnit_det_of_right_inverse (Jm_mul_self ε))
    exact GlobalTheory.SmChart.smV_of_smoothOnH hJ v₀ hs
  · rw [dR_eq_dAct]
    intro l
    induction l with
    | nil => intro _ _; simp [hv₀.1]
    | cons X l ih =>
      intro hl hlen
      have hX : inG ε X := hl X List.mem_cons_self
      have hl' : ∀ Y ∈ l, Y ∈ lieOf (Jm ε) := fun Y hY => hl Y (List.mem_cons_of_mem _ hY)
      have hlen' : l.length ≤ m + 2 := by simp at hlen; omega
      have hmem : l.foldr (GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.dAct π) v₀ ∈ GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.stepSpace ε lam π l.length :=
        Submodule.subset_span ⟨l, v₀, le_rfl, hl', hv₀.2, rfl⟩
      have h1 := (hSB l.length).2.2.2 X hX _ hmem
      have hcst := stepConst_le hm hB1 l.length (by simp at hlen; omega)
      have hrest := ih hl' hlen'
      have hsq : Real.sqrt (hs X) = hsn X := rfl
      have hh : 0 ≤ hsn X := Real.sqrt_nonneg _
      rw [List.foldr_cons, List.map_cons, List.prod_cons]
      calc ‖GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.dAct π X (l.foldr (GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.dAct π) v₀)‖
          ≤ Real.sqrt (hs X) * GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.stepConst m (Real.sqrt B) l.length *
              ‖l.foldr (GlobalTheory.IndefiniteRowSideFullHecke.OrbitDifferenceSpace.dAct π) v₀‖ := h1
        _ ≤ ((8 * (m : ℝ) * B) ^ 2 * hsn X) * (l.map fun X => (8 * (m : ℝ) * B) ^ 2 * hsn X).prod := by
          rw [hsq]
          refine mul_le_mul ?_ hrest (norm_nonneg _) (by positivity)
          rw [mul_comm]
          exact mul_le_mul_of_nonneg_right hcst hh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.LowestKTypeLieWordNormBound =====
