module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DecayPairEstimate
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveOperatorLeL2Subspace
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPCompactOfSquareDensity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH2
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportHer
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContinuousZetaL
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsPlaceWithVectors
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermMulVecMulVec
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelTransport
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ModuleFormEqRadialFormOne
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.Tower
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SfiniteOfHaar
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHAsm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHCellTie
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHFamAlg
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHFamJFOK
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHOpClosed
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamGood
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamJF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPCompactOfStepDensity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FsvMulFsvNeg
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellZetaMinors
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChainRecursionFromSingleDescent
import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenAdelicUnipotentTimesIntegralOutsideSet
import Formalism.HermitianCurvature.HermitianCurvatureProofs.WeylCellConjTransposeMulApply
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SfiniteOfIsHaarOn
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationContinuousOnInvertible
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting
import Formalism.HermitianCurvature.HermitianCurvatureProofs.QNFAsm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SiteTransport
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHRepLin

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEDecayAsm, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSESiteOpsC, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWaveOut, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWaveOutJ, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHBTl, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHUUiw, Formalism.HermitianCurvature.HermitianCurvatureProofs.PtieLevTransportHerOf, Formalism.HermitianCurvature.HermitianCurvatureProofs.PTieAll, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHChk, Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPCompactOfStepSquare, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopHer

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEDecayAsm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEDecayAsm", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DecayPairEstimate\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FsvMulFsvNeg\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveOperatorLeL2Subspace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped Matrix ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA Formalism.FourierDecayAlt.P5.HerB Formalism.FourierDecayAlt.P5.HerC
  Formalism.FourierDecayAlt.P5.HerD

theorem fsv_conj' (s t : ℂ) : conj (fsv s t) = fsv (-s) t := by
  unfold fsv
  rw [← Complex.exp_conj]
  congr 1
  simp only [map_sub, map_mul, Complex.conj_conj, map_neg]
  ring

theorem peetre (N : ℝ) (hN : 0 ≤ N) (s a : ℂ) :
    (1 + ‖s + a‖) ^ (-N) ≤ (1 + ‖a‖) ^ N * (1 + ‖s‖) ^ (-N) := by
  have ha : 0 ≤ ‖a‖ := norm_nonneg a
  have hs : 0 ≤ ‖s‖ := norm_nonneg s
  have hsa : 0 ≤ ‖s + a‖ := norm_nonneg (s + a)
  have htri : ‖s‖ ≤ ‖s + a‖ + ‖a‖ := by
    have := norm_sub_le (s + a) a
    simpa using this
  have hkey : 1 + ‖s‖ ≤ (1 + ‖s + a‖) * (1 + ‖a‖) := by nlinarith
  have hA : 0 < (1 + ‖s + a‖) ^ N := Real.rpow_pos_of_pos (by linarith) N
  have hB : 0 < (1 + ‖a‖) ^ N := Real.rpow_pos_of_pos (by linarith) N
  have hC : 0 < (1 + ‖s‖) ^ N := Real.rpow_pos_of_pos (by linarith) N
  have hmono : (1 + ‖s‖) ^ N ≤ (1 + ‖s + a‖) ^ N * (1 + ‖a‖) ^ N := by
    rw [← Real.mul_rpow (by linarith) (by linarith)]
    exact Real.rpow_le_rpow (by linarith) hkey hN
  rw [Real.rpow_neg (by linarith), Real.rpow_neg (by linarith), ← div_eq_mul_inv, le_div_iff₀ hC,
    inv_mul_le_iff₀ hA]
  exact hmono

section FormP

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
  [FiniteDimensional ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}
variable (μ : Measure (Mt k r)) [SFinite μ] (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ) (c : Fin r → ℂ)

include hμ in
theorem formP_add_left_of_mem_squareIntegrable {u1 u2 v : RadSp k r z z' π π'} (h1 : u1 ∈ squareIntegrableSmoothSubmoduleGL k r z z' π π' μ hμ)
    (h2 : u2 ∈ squareIntegrableSmoothSubmoduleGL k r z z' π π' μ hμ) (hv : v ∈ squareIntegrableSmoothSubmoduleGL k r z z' π π' μ hμ) :
    LocFacts₂ μ 0 (u1 + u2) v c = LocFacts₂ μ 0 u1 v c + LocFacts₂ μ 0 u2 v c := by
  have i1 := HerC.int_cross μ hμ h1.1 hv.1 c (h1.2 c) (hv.2 c)
  have i2 := HerC.int_cross μ hμ h2.1 hv.1 c (h2.2 c) (hv.2 c)
  simp only [HerC.wt0] at i1 i2
  unfold LocFacts₂
  rw [← integral_add i1 i2]
  congr 1
  funext c'
  rw [HerD.pairAt_add_left_lc μ hμ h1.1 h2.1 hv.1, mul_add]

theorem formP_smul_left' (u v : RadSp k r z z' π π') (a : ℂ) : LocFacts₂ μ 0 (a • u) v c = a * LocFacts₂ μ 0 u v c := by
  unfold LocFacts₂
  simp_rw [pairAt_smul_left]
  rw [← integral_const_mul]
  congr 1; funext c'; ring

theorem formP_swap_eq_conj (u v : RadSp k r z z' π π') : LocFacts₂ μ 0 v u c = conj (LocFacts₂ μ 0 u v c) := by
  unfold LocFacts₂
  rw [← integral_conj]
  congr 1; funext c'
  rw [pairAt_swap, map_mul]
  congr 1
  exact (Complex.conj_ofReal _).symm

include hμ in
theorem formP_add_right_of_mem_squareIntegrable {u v1 v2 : RadSp k r z z' π π'} (hu : u ∈ squareIntegrableSmoothSubmoduleGL k r z z' π π' μ hμ)
    (h1 : v1 ∈ squareIntegrableSmoothSubmoduleGL k r z z' π π' μ hμ) (h2 : v2 ∈ squareIntegrableSmoothSubmoduleGL k r z z' π π' μ hμ) :
    LocFacts₂ μ 0 u (v1 + v2) c = LocFacts₂ μ 0 u v1 c + LocFacts₂ μ 0 u v2 c := by
  rw [formP_swap_eq_conj, formP_add_left_of_mem_squareIntegrable μ hμ c h1 h2 hu, map_add (f := _), ← formP_swap_eq_conj, ← formP_swap_eq_conj]

theorem formP_smul_right_eq_conj_mul (u v : RadSp k r z z' π π') (a : ℂ) :
    LocFacts₂ μ 0 u (a • v) c = conj a * LocFacts₂ μ 0 u v c := by
  unfold LocFacts₂
  simp_rw [HerA.pairAt_smul_right]
  rw [← MeasureTheory.integral_const_mul]
  congr 1
  funext c'
  ring

theorem formP_zero_left' (v : RadSp k r z z' π π') : LocFacts₂ μ 0 0 v c = 0 := by
  have := formP_smul_left' μ c (0 : RadSp k r z z' π π') v 0
  simpa using this

theorem formP_zero_right' (u : RadSp k r z z' π π') : LocFacts₂ μ 0 u 0 c = 0 := by
  simpa using formP_smul_right_eq_conj_mul μ c u (0 : ↥(RadSp k r z z' π π')) 0

private theorem pairAt_congr_of_apply_eq (X X' Y Y' : RadSp k r z z' π π') (d : Fin r → ℂ)
    (hX : X.1 d = X'.1 d) (hY : Y.1 d = Y'.1 d) : pairAt μ X Y d = pairAt μ X' Y' d := by
  unfold pairAt
  simp only [hX, hY]

theorem formP_waves (l : Fin r) (i : Fin (r + 1)) {W W1 W2 W' : Module.End ℂ (RadSp k r z z' π π')} {s s1 s2 : ℂ}
    (hW : multiplicationOperator W (fun c _ => fsv s (c l))) (h1 : multiplicationOperator W1 (fun c _ => fsv s1 (c l)))
    (h2 : multiplicationOperator W2 (fun c _ => fsv s2 (c l))) (h' : multiplicationOperator W' (fun c _ => fsv (s + s1 - s2) (c l)))
    (Φ Ψ : RadSp k r z z' π π') : LocFacts₂ μ i (W (W1 Φ)) (W2 Ψ) c = LocFacts₂ μ i (W' Φ) Ψ c := by
  unfold LocFacts₂
  congr 1
  funext c'
  congr 1
  have key : fsv s (glue i c c' l) * fsv s1 (glue i c c' l) * conj (fsv s2 (glue i c c' l))
      = fsv (s + s1 - s2) (glue i c c' l) := by
    rw [fsv_conj', HerD.fsv_add, HerD.fsv_add, sub_eq_add_neg]
  have k1 := pairAt_congr_of_apply_eq μ (W (W1 Φ)) ((fsv s (glue i c c' l) * fsv s1 (glue i c c' l)) • Φ) (W2 Ψ)
    (fsv s2 (glue i c c' l) • Ψ) (glue i c c')
    (by
      funext g
      rw [hW, h1]
      simp [smul_smul])
    (by
      funext g
      rw [h2]
      simp)
  have k2 := pairAt_congr_of_apply_eq μ (W' Φ) (fsv (s + s1 - s2) (glue i c c' l) • Φ) Ψ Ψ (glue i c c')
    (by
      funext g
      rw [h']
      simp) rfl
  rw [k1, k2, HerA.pairAt_smul_left, HerA.pairAt_smul_right, HerA.pairAt_smul_left, ← key]
  ring

end FormP

section WaveDecay

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem nice_min {k r : ℕ} {Bs : B.RealPlaceData k r Wp Wq} {ε ε' : ℝ} {G : Mx k r → (Wq →L[ℂ] Wp)}
    (h : JC.NiceCoef Bs ε G) : JC.NiceCoef Bs (min ε ε') G :=
  ⟨h.1, h.2.1, fun g hg hne => (min_le_left _ _).trans (h.2.2 g hg hne)⟩

theorem nice_min' {k r : ℕ} {Bs : B.RealPlaceData k r Wp Wq} {ε ε' : ℝ} {G : Mx k r → (Wq →L[ℂ] Wp)}
    (h : JC.NiceCoef Bs ε' G) : JC.NiceCoef Bs (min ε ε') G :=
  ⟨h.1, h.2.1, fun g hg hne => (min_le_right _ _).trans (h.2.2 g hg hne)⟩

private theorem exists_isMulOp_fsv_coord {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)}
    {π' : Mx k r → (Wq →L[ℂ] Wq)} (l : Fin r) (s0 : ℂ) :
    ∃ W : Module.End ℂ (RadSp k r z z' π π'), multiplicationOperator W (fun c _ => fsv s0 (c l)) :=
  ⟨P5.mulOp (fun x => fsv s0 (x.1 l)) (contDiff_fsv_coord l s0) (fun _ _ _ _ _ _ => rfl),
    P5.mulOp_isMulOp _ _ _⟩

private theorem clsDecayW_lemma_2 (hR : RadDecay) (S : Type) [Fintype S] [DecidableEq S] (P : M.Par)
    (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp)) (π' : Mx P.k P.r → (Wq →L[ℂ] Wq))
    (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq) (hD : IsData P z z' π π' X μ L st l0) (h1 : 1 ≤ l0) (h2 : l0 ≤ P.k)
    (hz : D.z = z) (hz' : D.z' = z') (hπ : D.π = π) (hπ' : D.π' = π') (l : Fin P.r) (hl : l.val = 0)
    (Φ Ψ : RadSp P.k P.r z z' π π') (hΦ : HerD.IsWaveJ P z z' π π' D l Φ)
    (hΨ : HerD.IsWaveJ P z z' π π' D l Ψ) (c : Fin P.r → ℂ) (hc : c ∈ OmX P.r) (n : ℕ) :
    ∃ C : ℝ, ∀ (s : ℂ) (Wv : Module.End ℂ (RadSp P.k P.r z z' π π')), multiplicationOperator Wv (fun c' _ => fsv s (c' l)) →
      ‖LocFacts₂ μ l.castSucc (Wv Φ) Ψ c‖ ≤ C * (1 + ‖s‖) ^ (-((n : ℝ) + 3)) := by
  haveI : IsFiniteMeasureOnCompacts μ := ⟨hD.2.1.finite_compact⟩
  obtain ⟨_, s0, ε, G, hε, hG, hΦG⟩ := hΦ
  obtain ⟨_, s1, ε', H, hε', hH, hΨH⟩ := hΨ
  obtain ⟨Wm0, hWm0⟩ := exists_isMulOp_fsv_coord (z := z) (z' := z') (π := π) (π' := π') l (-s0)
  obtain ⟨Wm1, hWm1⟩ := exists_isMulOp_fsv_coord (z := z) (z' := z') (π := π) (π' := π') l (-s1)
  obtain ⟨Wp0, hWp0⟩ := exists_isMulOp_fsv_coord (z := z) (z' := z') (π := π) (π' := π') l s0
  obtain ⟨Wp1, hWp1⟩ := exists_isMulOp_fsv_coord (z := z) (z' := z') (π := π) (π' := π') l s1
  have eΦ : Wp0 (Wm0 Φ) = Φ := by
    apply Subtype.ext
    funext c' g
    rw [hWp0, hWm0, smul_smul, fsv_mul_fsv_neg, one_smul]
  have eΨ : Wp1 (Wm1 Ψ) = Ψ := by
    apply Subtype.ext
    funext c' g
    rw [hWp1, hWm1, smul_smul, fsv_mul_fsv_neg, one_smul]
  have hΦ0 : ∀ y ∈ DomR P.k P.r z z', (Wm0 Φ).1 y.1 y.2 = resG P.k P.r (Fin.last P.r) (B.JF D G) y.1 y.2 := by
    intro y hy
    rw [hWm0, hΦG y hy, smul_smul, mul_comm, fsv_mul_fsv_neg, one_smul]
  have hΨ0 : ∀ y ∈ DomR P.k P.r z z', (Wm1 Ψ).1 y.1 y.2 = resG P.k P.r (Fin.last P.r) (B.JF D H) y.1 y.2 := by
    intro y hy
    rw [hWm1, hΨH y hy, smul_smul, mul_comm, fsv_mul_fsv_neg, one_smul]
  obtain ⟨C, hC⟩ := hR Wp Wq S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl (min ε ε') G H
    (lt_min hε hε') (nice_min hG) (nice_min' hH) (Wm0 Φ) (Wm1 Ψ) hΦ0 hΨ0 c hc n
  have hN : (0 : ℝ) ≤ (n : ℝ) + 3 := by positivity
  refine ⟨max C 0 * (1 + ‖s0 - s1‖) ^ ((n : ℝ) + 3), fun s Wv hWv => ?_⟩
  obtain ⟨W', hW'⟩ := exists_isMulOp_fsv_coord (z := z) (z' := z') (π := π) (π' := π') l (s + s0 - s1)
  have eq : LocFacts₂ μ l.castSucc (Wv Φ) Ψ c = LocFacts₂ μ l.castSucc (W' (Wm0 Φ)) (Wm1 Ψ) c := by
    conv_lhs => rw [← eΦ, ← eΨ]
    exact formP_waves μ c l l.castSucc hWv hWp0 hWp1 hW' (Wm0 Φ) (Wm1 Ψ)
  have hb := hC (s + s0 - s1) W' hW'
  rw [add_sub_assoc] at hb
  rw [eq]
  calc ‖LocFacts₂ μ l.castSucc (W' (Wm0 Φ)) (Wm1 Ψ) c‖
      ≤ C * (1 + ‖s + (s0 - s1)‖) ^ (-((n : ℝ) + 3)) := hb
    _ ≤ max C 0 * (1 + ‖s + (s0 - s1)‖) ^ (-((n : ℝ) + 3)) :=
        mul_le_mul_of_nonneg_right (le_max_left _ _) (Real.rpow_nonneg (by positivity) _)
    _ ≤ max C 0 * ((1 + ‖s0 - s1‖) ^ ((n : ℝ) + 3) * (1 + ‖s‖) ^ (-((n : ℝ) + 3))) :=
        mul_le_mul_of_nonneg_left (peetre _ hN s (s0 - s1)) (le_max_right _ _)
    _ = max C 0 * (1 + ‖s0 - s1‖) ^ ((n : ℝ) + 3) * (1 + ‖s‖) ^ (-((n : ℝ) + 3)) := by ring

theorem clsDecayW (hR : RadDecay) (S : Type) [Fintype S] [DecidableEq S] (P : M.Par)
    (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp)) (π' : Mx P.k P.r → (Wq →L[ℂ] Wq))
    (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq) (hD : IsData P z z' π π' X μ L st l0) (h1 : 1 ≤ l0) (h2 : l0 ≤ P.k)
    (hz : D.z = z) (hz' : D.z' = z') (hπ : D.π = π) (hπ' : D.π' = π') (l : Fin P.r) (hl : l.val = 0)
    (Φ Ψ : RadSp P.k P.r z z' π π') (hΦ : Φ ∈ waveJ P z z' π π' D l) (hΨ : Ψ ∈ waveJ P z z' π π' D l)
    (c : Fin P.r → ℂ) (hc : c ∈ OmX P.r) (n : ℕ) :
    ∃ C : ℝ, ∀ (s : ℂ) (Wv : Module.End ℂ (RadSp P.k P.r z z' π π')), multiplicationOperator Wv (fun c' _ => fsv s (c' l)) →
      ‖LocFacts₂ μ l.castSucc (Wv Φ) Ψ c‖ ≤ C * (1 + ‖s‖) ^ (-((n : ℝ) + 3)) := by
  haveI : IsFiniteMeasureOnCompacts μ := ⟨hD.2.1.finite_compact⟩
  have hμ := hD.2.1
  have hl0 : l.castSucc = 0 := Fin.ext (by simp [hl])
  have hL2 := wave_operator_le_l2_subspace P z z' π π' μ hμ D hz hz' hπ hπ' l
  have hWJ : ∀ (s : ℂ) (Wv : Module.End ℂ (RadSp P.k P.r z z' π π')), multiplicationOperator Wv (fun c' _ => fsv s (c' l)) →
      ∀ Φ' ∈ waveJ P z z' π π' D l, Wv Φ' ∈ squareIntegrableSmoothSubmoduleGL P.k P.r z z' π π' μ hμ :=
    fun s Wv hWv Φ' hΦ' => hL2 (HerD.waveJ_wave P z z' π π' D l hWv Φ' hΦ')
  have stepA : ∀ Φ', HerD.IsWaveJ P z z' π π' D l Φ' → ∀ Ψ' ∈ waveJ P z z' π π' D l, ∃ C : ℝ,
      ∀ (s : ℂ) (Wv : Module.End ℂ (RadSp P.k P.r z z' π π')), multiplicationOperator Wv (fun c' _ => fsv s (c' l)) →
        ‖LocFacts₂ μ 0 (Wv Φ') Ψ' c‖ ≤ C * (1 + ‖s‖) ^ (-((n : ℝ) + 3)) := by
    intro Φ' hΦ' Ψ' hΨ'
    have hΨs : Ψ' ∈ Submodule.span ℂ {Ψ | HerD.IsWaveJ P z z' π π' D l Ψ} := hΨ'
    induction hΨs using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨C, hC⟩ := clsDecayW_lemma_2 hR S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl Φ' x hΦ' hx c hc n
      exact ⟨C, fun s Wv hWv => by simpa only [hl0] using hC s Wv hWv⟩
    | zero =>
      exact ⟨0, fun s Wv hWv => by simp [formP_zero_right']⟩
    | add x y hx hy ihx ihy =>
      obtain ⟨C1, hC1⟩ := ihx hx
      obtain ⟨C2, hC2⟩ := ihy hy
      refine ⟨C1 + C2, fun s Wv hWv => ?_⟩
      have hΦl : Wv Φ' ∈ squareIntegrableSmoothSubmoduleGL P.k P.r z z' π π' μ hμ :=
        hWJ s Wv hWv Φ' (Submodule.subset_span hΦ')
      rw [formP_add_right_of_mem_squareIntegrable μ hμ c hΦl (hL2 hx) (hL2 hy), add_mul]
      exact (norm_add_le _ _).trans (add_le_add (hC1 s Wv hWv) (hC2 s Wv hWv))
    | smul a x hx ihx =>
      obtain ⟨C1, hC1⟩ := ihx hx
      refine ⟨‖a‖ * C1, fun s Wv hWv => ?_⟩
      rw [formP_smul_right_eq_conj_mul, norm_mul, Complex.norm_conj, mul_assoc]
      exact mul_le_mul_of_nonneg_left (hC1 s Wv hWv) (norm_nonneg a)
  simp only [hl0]
  have hΦs : Φ ∈ Submodule.span ℂ {Ψ | HerD.IsWaveJ P z z' π π' D l Ψ} := hΦ
  induction hΦs using Submodule.span_induction with
  | mem x hx => exact stepA x hx Ψ hΨ
  | zero => exact ⟨0, fun s Wv hWv => by simp [formP_zero_left']⟩
  | add x y hx hy ihx ihy =>
    obtain ⟨C1, hC1⟩ := ihx hx
    obtain ⟨C2, hC2⟩ := ihy hy
    refine ⟨C1 + C2, fun s Wv hWv => ?_⟩
    rw [map_add (f := _), formP_add_left_of_mem_squareIntegrable μ hμ c (hWJ s Wv hWv x hx) (hWJ s Wv hWv y hy) (hL2 hΨ), add_mul]
    exact (norm_add_le _ _).trans (add_le_add (hC1 s Wv hWv) (hC2 s Wv hWv))
  | smul a x hx ihx =>
    obtain ⟨C1, hC1⟩ := ihx hx
    refine ⟨‖a‖ * C1, fun s Wv hWv => ?_⟩
    rw [map_smul, formP_smul_left', norm_mul, mul_assoc]
    exact mul_le_mul_of_nonneg_left (hC1 s Wv hWv) (norm_nonneg a)

end WaveDecay

theorem clsDecayJ_of (hR : RadDecay) : ClsDecayJ := by
  intro Wp Wq _ _ _ _ _ _ S _ _ P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl Φ Ψ hΦ hΨ c hc n
  exact clsDecayW hR S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl Φ Ψ hΦ hΨ c hc n

section Pairs

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]

theorem form_eq_sum_components {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)}
    {π' : Mx k r → (Wq →L[ℂ] Wq)} (μ : Measure (Mt k r)) [SFinite μ] (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ)
    (u v : Ix S → RadSp k r z z' π π') (hu : ∀ a, u a ∈ squareIntegrableSmoothSubmoduleGL k r z z' π π' μ hμ)
    (hv : ∀ a, v a ∈ squareIntegrableSmoothSubmoduleGL k r z z' π π' μ hμ) (c : Fin r → ℂ) :
    form μ 0 u v c = ∑ a, LocFacts₂ μ 0 (u a) (v a) c := by
  unfold form LocFacts₂
  rw [← integral_finsetSum]
  · congr 1
    funext c'
    rw [Finset.mul_sum]
  · intro a _
    have := HerC.int_cross μ hμ (hu a).1 (hv a).1 c ((hu a).2 c) ((hv a).2 c)
    simpa only [HerC.wt0] using this

theorem comps_waveJ (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp))
    (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq) (hD : IsData P z z' π π' X μ L st l0) (hz : D.z = z) (hz' : D.z' = z')
    (hπ : D.π = π) (hπ' : D.π' = π') (l : Fin P.r) (hl0 : l.castSucc = 0) (w : List (Letter ℂ S))
    (hw : WordOK P z z' π π' st l0 w) (x : Ix S → RadSp P.k P.r z z' π π')
    (hx : InK (herKc S P z z' π π' L st l0 D 0) x) (a : Ix S) :
    act (RRi L st 0 w) x a ∈ waveJ P z z' π π' D l := by
  unfold act
  refine Submodule.sum_mem _ (fun b _ => ?_)
  exact HerD.rr_waveJ P z z' π π' X μ L st l0 D hD hz hz' hπ hπ' l hl0 w hw a b (x b)
    (HerD.herKc0_le_waveJ P z z' π π' X μ L st l0 D hD hz hz' hπ hπ' l hl0 (hx b))

end Pairs

private theorem decayPair3_of_lemma (hW : WaveOutJ) (hC : ClsDecayJ) (Wp Wq : Type) [NormedAddCommGroup Wp]
    [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
    [FiniteDimensional ℂ Wq] (S : Type) [Fintype S] [DecidableEq S] (P : M.Par)
    (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp)) (π' : Mx P.k P.r → (Wq →L[ℂ] Wq))
    (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq) (hD : IsData P z z' π π' X μ L st l0) (h1 : 1 ≤ l0) (h2 : l0 ≤ P.k)
    (hz : D.z = z) (hz' : D.z' = z') (hπ : D.π = π) (hπ' : D.π' = π') (l : Fin P.r) (hl : l.val = 0)
    (u v : Ix S → RadSp P.k P.r z z' π π') (hu : ∀ a, u a ∈ waveJ P z z' π π' D l)
    (hv : ∀ a, v a ∈ waveJ P z z' π π' D l) (c : Fin P.r → ℂ) (hc : c ∈ OmX P.r) (n : ℕ) :
    ∃ C : ℝ, ∀ s : ℂ, ‖∫ t : ℂ, fsv s t * Dens μ l u v c t‖ ≤ C * (1 + ‖s‖) ^ (-((n : ℝ) + 3)) := by
  haveI : IsFiniteMeasureOnCompacts μ := ⟨hD.2.1.finite_compact⟩
  have hμ := hD.2.1
  have hl0 : l.castSucc = 0 := Fin.ext (by simp [hl])
  have hb := fun a => hC Wp Wq S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl
    (u a) (v a) (hu a) (hv a) c hc n
  choose C hC' using hb
  refine ⟨∑ a, C a, fun s => ?_⟩
  obtain ⟨Wv, hWv⟩ := exists_isMulOp_fsv_coord (z := z) (z' := z') (π := π) (π' := π') l s
  have hL2 := wave_operator_le_l2_subspace P z z' π π' μ hμ D hz hz' hπ hπ' l
  rw [hW Wp Wq S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl u v hu hv c hc s Wv hWv, hl0,
    form_eq_sum_components μ hμ _ v (fun a => hL2 (HerD.waveJ_wave P z z' π π' D l hWv _ (hu a))) (fun a => hL2 (hv a)) c,
    Finset.sum_mul]
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun a _ => ?_)
  have := hC' a s Wv hWv
  rwa [hl0] at this

theorem decayPair3_of (hW : WaveOutJ) (hC : ClsDecayJ) : DecayPair3 := by
  intro Wp Wq _ _ _ _ _ _ S _ _ P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' w hw l hl x v hx hv c hc n
  have hl0 : l.castSucc = 0 := Fin.ext (by simp [hl])
  rw [hl0] at hx hv
  rw [hl0]
  exact decayPair3_of_lemma hW hC Wp Wq S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl _ v
    (fun a => comps_waveJ P z z' π π' X μ L st l0 D hD hz hz' hπ hπ' l hl0 w hw x hx a)
    (fun a => HerD.herKc0_le_waveJ P z z' π π' X μ L st l0 D hD hz hz' hπ hπ' l hl0 (hv a)) c hc n

theorem dpMul_eq {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
    [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
    [FiniteDimensional ℂ Wq]
    {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)} (X : ActualOps k r z z' π π') (l : Fin r)
    (Φ : RadSp k r z z' π π') :
    dpMul l Φ = Φ + (2 : ℂ) • X.op l 1 (X.op l 4 Φ) + X.op l 1 (X.op l 4 (X.op l 1 (X.op l 4 Φ))) := by
  apply Subtype.ext
  funext c g
  show (dpMul l Φ : Fn k r (Wq →L[ℂ] Wp)) c g = ((Φ + (2 : ℂ) • X.op l 1 (X.op l 4 Φ) +
    X.op l 1 (X.op l 4 (X.op l 1 (X.op l 4 Φ))) : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) c g
  have hs : ((dpW (c l) : ℝ) : ℂ) = 1 + 2 * (c l * star (c l)) + c l * star (c l) * (c l * star (c l)) := by
    have h : c l * star (c l) = ((‖c l‖ ^ 2 : ℝ) : ℂ) := by
      rw [show star (c l) = (starRingEnd ℂ) (c l) from rfl, Complex.mul_conj, Complex.normSq_eq_norm_sq]
    rw [h]
    unfold dpW
    push_cast
    ring
  rw [dpMul_isMulOp l Φ c g]
  simp only [Submodule.coe_add, Submodule.coe_smul, Pi.add_apply, Pi.smul_apply, X.op_apply, crd, opL, cOp, cbOp]
  rw [hs]
  module

private theorem one_add_normSq_sq_smul_dens_eq_dens_dpMul {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
    [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
    [FiniteDimensional ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)} {S : Type} [Fintype S]
    [DecidableEq S] (μ : Measure (Mt k r)) (l : Fin r) (u v : Ix S → RadSp k r z z' π π') (c : Fin r → ℂ) (t : ℂ) :
    (1 + ‖t‖ ^ 2) ^ 2 • Dens μ l u v c t = Dens μ l u (fun b => dpMul l (v b)) c t := by
  have hg : ∀ c' : Cf r l.succ, glue l.succ (Function.update c l t) c' l = t := by
    intro c'
    simp [glue]
  unfold Dens form
  simp_rw [pairAt_dpMul_right, hg, ← Finset.mul_sum]
  simp_rw [mul_left_comm _ ((dpW t : ℝ) : ℂ)]
  rw [integral_const_mul, Complex.real_smul]
  unfold dpW
  push_cast
  ring

theorem decayPair4_of (hW : WaveOutJ) (hC : ClsDecayJ) (hM : SiteMulWaveJ) : DecayPair4 := by
  intro Wp Wq _ _ _ _ _ _ S _ _ P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' w hw l hl x v hx hv c hc n
  have hl0 : l.castSucc = 0 := Fin.ext (by simp [hl])
  rw [hl0] at hx hv
  rw [hl0]
  simp_rw [one_add_normSq_sq_smul_dens_eq_dens_dpMul]
  have hvw : ∀ b, dpMul l (v b) ∈ waveJ P z z' π π' D l := by
    intro b
    have h0 := HerD.herKc0_le_waveJ P z z' π π' X μ L st l0 D hD hz hz' hπ hπ' l hl0 (hv b)
    have hop : ∀ Φ ∈ waveJ P z z' π π' D l, X.op l 1 (X.op l 4 Φ) ∈ waveJ P z z' π π' D l := fun Φ hΦ =>
      (hM Wp Wq S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl _
        (hM Wp Wq S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl Φ hΦ).2).1
    rw [dpMul_eq X l]
    exact add_mem (add_mem h0 (Submodule.smul_mem _ _ (hop _ h0))) (hop _ (hop _ h0))
  exact decayPair3_of_lemma hW hC Wp Wq S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl _ _
    (fun a => comps_waveJ P z z' π π' X μ L st l0 D hD hz hz' hπ hπ' l hl0 w hw x hx a) hvw c hc n

theorem base_le_closed_extension {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] (S : Type) [Fintype S] [DecidableEq S] (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ)
    (π : Mx P.k P.r → (Wp →L[ℂ] Wp)) (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (X : ActualOps P.k P.r z z' π π')
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq) (l : Fin P.r) :
    base0 S P z z' π π' L st l0 D ≤ ClsE S P z z' π π' X L st l0 D l := by
  unfold ClsE OpClos
  intro Φ hΦ
  exact Submodule.subset_span ⟨[], Φ, hΦ, rfl⟩

theorem decayPair2_of_smooth (h : DensSmoothCls) : DecayPair2 := by
  intro Wp Wq _ _ _ _ _ _ S _ _ P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' w hw l hl x v hx hv c hc n t ht
  have hl0 : l.castSucc = (0 : Fin (P.r + 1)) := Fin.ext (by simp [hl])
  rw [hl0] at hx hv ⊢
  have hb := base_le_closed_extension S P z z' π π' X L st l0 D l
  have hu : ∀ a, act (RRi L st 0 w) x a ∈ ClsE S P z z' π π' X L st l0 D l := fun a => by
    apply hb
    show ∑ b, ((RRi L st 0 w) a b).1 (x b) ∈ base0 S P z z' π π' L st l0 D
    exact Submodule.sum_mem _ fun b _ => Submodule.mem_sup_right (Submodule.subset_span ⟨w, hw, a, b, x b, hx b, rfl⟩)
  have hv' : ∀ a, v a ∈ ClsE S P z z' π π' X L st l0 D l := fun a => hb (Submodule.mem_sup_left (hv a))
  have hs := (h Wp Wq S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl _ v hu hv' c hc).1 0
  exact (hs.continuousOn.continuousAt (isOpen_compl_singleton.mem_nhds ht))

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEDecayAsm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSESiteOpsC =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSESiteOpsC", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellZetaMinors\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ChainRecursionFromSingleDescent\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenAdelicUnipotentTimesIntegralOutsideSet\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.WeylCellConjTransposeMulApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA Formalism.FourierDecayAlt.P5.HerB Formalism.FourierDecayAlt.P5.HerC
  Formalism.FourierDecayAlt.P5.HerD

def SiteOpsWaveJC : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (S : Type) [Fintype S] [DecidableEq S]
    (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp))
    (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq),
    IsData P z z' π π' X μ L st l0 → 1 ≤ l0 → l0 ≤ P.k → D.z = z → D.z' = z' → D.π = π → D.π' = π' →
    ∀ (l : Fin P.r), l.val = 0 →
    ∀ (j : Fin 6), (j = 1 ∨ j = 4) →
    ∀ (Φ : RadSp P.k P.r z z' π π'), Φ ∈ waveJ P z z' π π' D l → X.op l j Φ ∈ waveJ P z z' π π' D l

namespace SiteC

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem jf_mul_inv (Bs : B.RealPlaceData k r Wp Wq) (ι : B.Mat k r → ℂ)
    (hι : ∀ p : B.SS k r, Bs.inSS p → ∀ g, ι (B.sgs p g) = ι g) (G : B.Mat k r → (Wq →L[ℂ] Wp))
    (h : B.Mat k r) : B.JF Bs (fun g => ι g • G g) h = ι h • B.JF Bs G h := by
  unfold B.JF besselJ
  rw [← integral_smul]
  refine integral_congr_ae ?_
  filter_upwards [B7.ae_inSS Bs] with p hp
  have hp' := hι p hp h
  simp only [B.sgs] at hp'
  simp only [hp', ContinuousLinearMap.smul_comp, ContinuousLinearMap.comp_smul, smul_comm (ι h)]

theorem first_minor_double_coset_invariant (Bs : B.RealPlaceData k r Wp Wq) (p : B.SS k r) (hp : Bs.inSS p) (g : B.Mat k r) :
    Dmin k r Bs.z Bs.z' (B.sgs p g) ⟨1, by omega⟩ = Dmin k r Bs.z Bs.z' g ⟨1, by omega⟩ :=
  Formalism.FourierDecayAlt.P.BigCellZetaMinors.dmin_sgs Bs hp g _

private theorem dmin_one_eq_herm_mulVec_fvec {k r : ℕ} (z z' : Fin (2 * r + k + 1) → ℂ) (g : B.Mat k r) :
    Dmin k r z z' g ⟨1, by omega⟩ = herm (Hpk k r) (g *ᵥ fvec k r z' 0) (fvec k r z 0) := by
  unfold Dmin
  erw [Matrix.det_fin_one]
  rfl

theorem first_minor_good_function (Bs : B.RealPlaceData k r Wp Wq) (ε : ℝ) :
    Formalism.FourierDecayAlt.P.JCx2.mnGood Bs ε (fun g => Dmin k r Bs.z Bs.z' g ⟨1, by omega⟩) := by
  refine JCx2.mn_good_congr (c := fun g => herm (Hpk k r) (g *ᵥ fvec k r Bs.z' 0) (fvec k r Bs.z 0)) ?_
    (JCx2.mn_good_herm _ _)
  intro g _
  rw [dmin_one_eq_herm_mulVec_fvec]

theorem first_minor_conj_good_function (Bs : B.RealPlaceData k r Wp Wq) (ε : ℝ) :
    Formalism.FourierDecayAlt.P.JCx2.mnGood Bs ε (fun g => star (Dmin k r Bs.z Bs.z' g ⟨1, by omega⟩)) := by
  refine JCx2.mn_good_congr
    (c := fun g => (Complex.conjCLE.toContinuousLinearMap.comp
      (JCx2.mnLinHerm (k := k) (r := r) (fvec k r Bs.z' 0) (fvec k r Bs.z 0))) g) ?_
    (JCx2.mn_good_lin _)
  intro g _
  rw [dmin_one_eq_herm_mulVec_fvec]
  simp [JCx2.mnLinHerm]

private theorem wCell_succ_mulVec_bvec_eI_zero_eq_smul {k r : ℕ} (hr : 0 < r) (c : Fin r → ℂ) :
    ∀ (i : ℕ) (hi : i < r), wCell k r ⟨i + 1, by omega⟩ c *ᵥ bvec (eI k r ⟨0, hr⟩) =
      c ⟨0, hr⟩ • bvec (esI k r ⟨0, hr⟩) := by
  intro i
  induction i with
  | zero =>
    intro hi
    have h := Qx6.wCell_succ (k := k) (⟨0, hr⟩ : Fin r) c
    simp only [Fin.succ_mk, Fin.castSucc_mk, Fin.mk_zero, Qx6.wCell_zero, one_mul] at h
    rw [h, Qx4.w1_mulVec_bvec_eI]
  | succ n ih =>
    intro hi
    have h := Qx6.wCell_succ (k := k) (⟨n + 1, hi⟩ : Fin r) c
    simp only [Fin.succ_mk, Fin.castSucc_mk] at h
    have h1 : eI k r ⟨0, hr⟩ ≠ eI k r ⟨n + 1, hi⟩ := by
      simp [eI, Fin.ext_iff]
    have h2 : eI k r ⟨0, hr⟩ ≠ esI k r ⟨n + 1, hi⟩ := by
      simp [eI, esI, Fin.ext_iff]; omega
    rw [h, ← Matrix.mulVec_mulVec, Qx3.reflection_fixes_basis_vector _ _ h1 h2, ih (by omega)]

theorem first_minor_at_cell_eq_coefficient {z z' : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (hz' : inWb k r z') (hr : 0 < r)
    (c : Fin r → ℂ) {g : Mx k r} (hg : g ∈ Glev k r (Fin.last r)) :
    Dmin k r z z' (wCell k r (Fin.last r) c * g) ⟨1, by omega⟩ = c ⟨0, hr⟩ := by
  rw [dmin_one_eq_herm_mulVec_fvec]
  have hf : ∀ w : Fin (2 * r + k + 1) → ℂ, fvec k r w 0 = bvec (eI k r ⟨0, hr⟩) := by
    intro w; simp [fvec, hr]
  rw [hf, hf, ← Matrix.mulVec_mulVec, (hg.2 ⟨0, hr⟩ (by simp; omega)).1]
  have h3 := wCell_succ_mulVec_bvec_eI_zero_eq_smul (k := k) hr c (r - 1) (by omega)
  have e : (⟨r - 1 + 1, by omega⟩ : Fin (r + 1)) = Fin.last r := by ext; simp; omega
  rw [e] at h3
  rw [h3]
  simp only [herm, bvec, eI, esI]
  simp
  rw [Matrix.mulVec_smul, Pi.smul_apply, Matrix.mulVec_single_one]
  simp [Hpk, hr]

end SiteC

open SiteC in
theorem site_operators_preserve_orbital : SiteOpsWaveJC := by
  intro Wp Wq _ _ _ _ _ _ S _ _ P z z' π π' X μ L st l0 D _ _ _ hz hz' hπ hπ' l hl j hj Φ hΦ
  subst hz hz' hπ hπ'
  have hr : 0 < P.r := by have := l.2; omega
  have hl' : l = ⟨0, hr⟩ := Fin.ext hl
  have key : ∀ Ψ, IsWaveJ P D.z D.z' D.π D.π' D l Ψ → IsWaveJ P D.z D.z' D.π D.π' D l (X.op l j Ψ) := by
    rintro Ψ ⟨hlc, s, ε, G, hε, hG, hΨ⟩
    rcases hj with rfl | rfl
    · refine ⟨?_, s, ε, fun g => Dmin P.k P.r D.z D.z' g ⟨1, by omega⟩ • G g, hε, first_minor_good_function D ε G hG, ?_⟩
      · intro c hc
        obtain ⟨U, hU, hcU, K, hK, hKs, hv⟩ := hlc c hc
        refine ⟨U, hU, hcU, K, hK, hKs, fun c' hc' g hg hgK => ?_⟩
        rw [X.op_apply]
        simp [crd, opL, cOp, hv c' hc' g hg hgK]
      · intro y hy
        rw [X.op_apply]
        simp only [crd, opL, cOp]
        rw [hΨ y hy]
        simp only [resG]
        rw [jf_mul_inv D _ (fun p hp g => BigCellZetaMinors.dmin_sgs D hp g _) G,
          first_minor_at_cell_eq_coefficient D.z_mem D.z'_mem hr y.1 hy.2.1, hl']
        simp only [smul_smul]
        ring_nf
    · refine ⟨?_, s, ε, fun g => star (Dmin P.k P.r D.z D.z' g ⟨1, by omega⟩) • G g, hε, first_minor_conj_good_function D ε G hG, ?_⟩
      · intro c hc
        obtain ⟨U, hU, hcU, K, hK, hKs, hv⟩ := hlc c hc
        refine ⟨U, hU, hcU, K, hK, hKs, fun c' hc' g hg hgK => ?_⟩
        rw [X.op_apply]
        simp [crd, opL, cbOp, hv c' hc' g hg hgK]
      · intro y hy
        rw [X.op_apply]
        simp only [crd, opL, cbOp]
        rw [hΨ y hy]
        simp only [resG]
        rw [jf_mul_inv D _ (fun p hp g => by rw [BigCellZetaMinors.dmin_sgs D hp g _]) G,
          first_minor_at_cell_eq_coefficient D.z_mem D.z'_mem hr y.1 hy.2.1, hl']
        simp only [smul_smul]
        ring_nf
  refine Submodule.span_induction (p := fun Φ _ => X.op l j Φ ∈ waveJ P D.z D.z' D.π D.π' D l) ?_ ?_ ?_ ?_ hΦ
  · intro x hx
    exact Submodule.subset_span (key x hx)
  · simp
  · intro x y _ _ hx hy
    rw [map_add (f := _)]
    exact add_mem hx hy
  · intro a x _ hx
    rw [map_smul]
    exact Submodule.smul_mem _ _ hx

theorem site_multiplication_orbital : SiteMulWaveJ := by
  intro Wp Wq _ _ _ _ _ _ S _ _ P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl Φ hΦ
  exact ⟨site_operators_preserve_orbital Wp Wq S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl 1 (Or.inl rfl) Φ hΦ,
    site_operators_preserve_orbital Wp Wq S P z z' π π' X μ L st l0 D hD h1 h2 hz hz' hπ hπ' l hl 4 (Or.inr rfl) Φ hΦ⟩

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSESiteOpsC =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWaveOut =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWaveOut", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPCompactOfSquareDensity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped Matrix ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA Formalism.FourierDecayAlt.P5.HerB Formalism.FourierDecayAlt.P5.HerC
  Formalism.FourierDecayAlt.P5.HerD

section Wave

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
  [FiniteDimensional ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)} {S : Type} [Fintype S]
  [DecidableEq S]

theorem waveOut_pairAt_left (μ : Measure (Mt k r)) {W : Module.End ℂ (RadSp k r z z' π π')} {m : (Fin r → ℂ) → ℂ}
    (hW : multiplicationOperator W (fun c _ => m c)) (Φ Ψ : RadSp k r z z' π π') (c : Fin r → ℂ) :
    pairAt μ (W Φ) Ψ c = m c * pairAt μ Φ Ψ c := by
  unfold pairAt
  have e : ∀ g : Mt k r, B.hsInner ((W Φ : Fn k r (Wq →L[ℂ] Wp)) c (Matrix.of g))
      ((Ψ : Fn k r (Wq →L[ℂ] Wp)) c (Matrix.of g)) =
      m c * B.hsInner ((Φ : Fn k r (Wq →L[ℂ] Wp)) c (Matrix.of g)) ((Ψ : Fn k r (Wq →L[ℂ] Wp)) c (Matrix.of g)) := by
    intro g
    have h1 := hW Φ c (Matrix.of g)
    simp only at h1
    rw [h1, hsInner_smul_left']
  simp_rw [e]
  exact integral_const_mul _ _

theorem waveOut_pairAt_self (μ : Measure (Mt k r)) {W : Module.End ℂ (RadSp k r z z' π π')} {m : (Fin r → ℂ) → ℂ}
    (hW : multiplicationOperator W (fun c _ => m c)) (hm : ∀ c, ‖m c‖ = 1) (Φ : RadSp k r z z' π π') (c : Fin r → ℂ) :
    pairAt μ (W Φ) (W Φ) c = pairAt μ Φ Φ c := by
  unfold pairAt
  refine integral_congr_ae (Filter.Eventually.of_forall fun g => ?_)
  have h1 := hW Φ c (Matrix.of g)
  simp only at h1
  show B.hsInner ((W Φ : Fn k r (Wq →L[ℂ] Wp)) c (Matrix.of g)) ((W Φ : Fn k r (Wq →L[ℂ] Wp)) c (Matrix.of g)) = _
  rw [h1, hsInner_smul_left', hsInner_smul_right', ← mul_assoc, Complex.mul_conj, Complex.normSq_eq_norm_sq, hm]
  simp

theorem waveOut_glue (l : Fin r) (c : Fin r → ℂ) (t : ℂ) (c' : Cf r l.succ) :
    glue l.succ (Function.update c l t) c' l = t := by
  unfold glue
  rw [dite_eq_right (by simp)]
  first
  | exact Function.update_self l t c

theorem waveOut_dens (μ : Measure (Mt k r)) (l : Fin r) (s : ℂ) {W : Module.End ℂ (RadSp k r z z' π π')}
    (hW : multiplicationOperator W (fun c' _ => fsv s (c' l))) (u v : Ix S → RadSp k r z z' π π') (c : Fin r → ℂ) (t : ℂ) :
    Dens μ l (fun b => W (u b)) v c t = fsv s t * Dens μ l u v c t := by
  have e : (fun c' : Cf r l.succ => ((∏ j, ‖c' j‖ ^ (-2 : ℤ) : ℝ) : ℂ) *
      ∑ a, pairAt μ (W (u a)) (v a) (glue l.succ (Function.update c l t) c')) =
      fun c' => fsv s t * (((∏ j, ‖c' j‖ ^ (-2 : ℤ) : ℝ) : ℂ) *
        ∑ a, pairAt μ (u a) (v a) (glue l.succ (Function.update c l t) c')) := by
    funext c'
    have hp : ∀ a, pairAt μ (W (u a)) (v a) (glue l.succ (Function.update c l t) c') =
        fsv s t * pairAt μ (u a) (v a) (glue l.succ (Function.update c l t) c') := by
      intro a
      rw [waveOut_pairAt_left (m := fun c' => fsv s (c' l)) μ hW, waveOut_glue]
    simp only [hp, ← Finset.mul_sum]
    ring
  simp only [Dens, form]
  rw [e, integral_const_mul]
  ring

end Wave

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWaveOut =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWaveOutJ =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWaveOutJ", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWaveOut\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SfiniteOfIsHaarOn\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WaveOperatorLeL2Subspace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA Formalism.FourierDecayAlt.P5.HerB Formalism.FourierDecayAlt.P5.HerC
  Formalism.FourierDecayAlt.P5.HerD

theorem wave_outgoing_orbital : WaveOutJ := by
  intro Wp Wq _ _ _ _ _ _ S _ _ P z z' π π' X μ L st l0 D hdat hl0 hle hz hz' hπ hπ' l hl u v hu hv c hc s Wv hW
  have hμ : B.IsHaarOn (Glev P.k P.r (Fin.last P.r)) μ := hdat.2.1
  haveI := sfinite_of_isHaarOn _ μ hμ

  have hl2u := fun b => wave_operator_le_l2_subspace P z z' π π' μ hμ D hz hz' hπ hπ' l (hu b)
  have hl2v := fun b => wave_operator_le_l2_subspace P z z' π π' μ hμ D hz hz' hπ hπ' l (hv b)
  have hW1 : ∀ c' : Fin P.r → ℂ, ‖fsv s (c' l)‖ = 1 := fun c' => HerC.norm_fsv s (c' l)
  have hl' : l.castSucc = 0 := by
    ext
    simp [hl]
  have keyu : ∀ b, LevelSquareIntegrable μ l.castSucc (u b) c := by
    intro b
    rw [hl']
    exact (hl2u b).2 c
  have keyv : ∀ b, LevelSquareIntegrable μ l.castSucc (v b) c := by
    intro b
    rw [hl']
    exact (hl2v b).2 c

  have keyW : ∀ b, LevelSquareIntegrable μ l.castSucc (Wv (u b)) c := by
    intro b
    have h := keyu b
    unfold LevelSquareIntegrable at h ⊢
    simp only [waveOut_pairAt_self μ hW hW1]
    exact h
  have hd := dens_int μ hμ l (fun b => Wv (u b)) v (fun b => mul_lc hW _ (hl2u b).1)
    (fun b => (hl2v b).1) c keyW keyv
  rw [← hd.2]
  simp_rw [waveOut_dens μ l s hW u v c]

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWaveOutJ =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHBTl =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHBTl", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P5

theorem boundary_torus_adjoin : CutSH.BTlAdjoin := by
  intro Wp Wq _ _ _ _ _ _ k r z z' π π' X L hX S _ _ l w a b
  set Qa : Subalgebra ℂ (Module.End ℂ (RadSp k r z z' π π')) := Algebra.adjoin ℂ (Set.range (X.op l)) with hQa
  let good : Pr (RadSp k r z z' π π') → Prop := fun x => x.1 ∈ Qa ∧ x.2.unop ∈ Qa
  have hop : ∀ i, X.op l i ∈ Qa := fun i => Algebra.subset_adjoin ⟨i, rfl⟩
  have gmul : ∀ x y, good x → good y → good (x * y) := fun x y hx hy =>
    ⟨Subalgebra.mul_mem _ hx.1 hy.1, Subalgebra.mul_mem _ hy.2 hx.2⟩
  have gadd : ∀ x y, good x → good y → good (x + y) := fun x y hx hy =>
    ⟨Subalgebra.add_mem _ hx.1 hy.1, Subalgebra.add_mem _ hx.2 hy.2⟩
  have gneg : ∀ x, good x → good (-x) := fun x hx => ⟨Subalgebra.neg_mem _ hx.1, Subalgebra.neg_mem _ hx.2⟩
  have gzero : good 0 := ⟨Subalgebra.zero_mem _, Subalgebra.zero_mem _⟩
  have gone : good 1 := ⟨Subalgebra.one_mem _, Subalgebra.one_mem _⟩
  have gstar : ∀ x, good x → good (star x) := fun x hx => ⟨hx.2, hx.1⟩
  have galg : ∀ c : ℂ, good (algebraMap ℂ (Pr (RadSp k r z z' π π')) c) := fun c =>
    ⟨Subalgebra.algebraMap_mem _ c, Subalgebra.algebraMap_mem _ (starRingEnd ℂ c)⟩
  have gp : good (L.p l) := by
    rw [hX.1 l]
    exact ⟨hop 0, Subalgebra.neg_mem _ (hop 3)⟩
  have gc : good (L.c l) := by
    rw [hX.2.2.1 l]
    exact ⟨hop 1, hop 4⟩
  have gci : good (L.ci l) := by
    rw [hX.2.2.2.1 l]
    exact ⟨hop 2, hop 5⟩
  have hTs : ∀ (Y : ℂ) (i j : Fin 2), good ((Wd.Ts (site L l) Y) i j) := by
    intro Y i j
    fin_cases i <;> fin_cases j <;>
      simp only [Wd.Ts, site, Formalism.YangianSpanCharacter.T.Tm, Matrix.of_apply, Matrix.cons_val', Matrix.cons_val_zero,
        Matrix.cons_val_one, Matrix.empty_val', Matrix.cons_val_fin_one, Fin.zero_eta, Fin.mk_one]
    · exact gadd _ _ (galg Y) gp
    · exact gneg _ gc
    · exact gci
    · exact gzero
  have hmulA : ∀ M N : Wd.SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π')), (∀ a b, good (M a b)) → (∀ a b, good (N a b)) →
      ∀ a b, good ((M * N) a b) := by
    intro M N hM hN a b
    rw [Matrix.mul_apply]
    refine Finset.sum_induction _ good (fun x y hx hy => gadd x y hx hy) gzero (fun c _ => ?_)
    exact gmul _ _ (hM a c) (hN c b)
  have hsumA : ∀ (ι : Type) (t : Finset ι) (f : ι → Wd.SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))),
      (∀ i, ∀ a b, good (f i a b)) → ∀ a b, good ((∑ i ∈ t, f i) a b) := by
    intro ι t f hf a b
    rw [Matrix.sum_apply]
    exact Finset.sum_induction _ good (fun x y hx hy => gadd x y hx hy) gzero (fun i _ => hf i a b)
  have heU : ∀ (x : S) (i j : Fin 2), ∀ a b, good ((Wd.eU (A := Pr (RadSp k r z z' π π')) x i j : Wd.SlopeTestRemainingChoices S _) a b) := by
    intro x i j a b
    unfold Wd.eU
    simp only [Matrix.of_apply]
    split_ifs
    · exact gone
    · exact gzero
  have hio : ∀ y, good y → ∀ a b, good ((Wd.io (S := S) y) a b) := by
    intro y hy a b
    unfold Wd.io
    rw [Matrix.scalar_apply, Matrix.diagonal_apply]
    split_ifs
    · exact hy
    · exact gzero
  have hvlet : ∀ lt : Wd.Letter ℂ S, ∀ a b, good ((Wd.vlet (site L l) lt) a b) := by
    intro lt
    unfold Wd.vlet Wd.ins
    refine hsumA _ _ _ (fun i => ?_)
    refine hsumA _ _ _ (fun j => ?_)
    refine hmulA _ _ (heU _ i j) ?_
    intro a b
    unfold Wd.lift0
    rw [Matrix.map_apply]
    refine hio _ ?_ a b
    split_ifs
    · exact hTs _ i j
    · rw [Matrix.map_apply]
      exact gstar _ (hTs _ i j)
  have hbT : ∀ w' : List (Wd.Letter ℂ S), ∀ a b, good ((Wd.bT (site L l) w') a b) := by
    intro w'
    induction w' with
    | nil =>
      intro a b
      simp only [Wd.bT]
      rw [Matrix.one_apply]
      split_ifs
      · exact gone
      · exact gzero
    | cons lt w' ih =>
      intro a b
      simp only [Wd.bT]
      exact hmulA _ _ (hvlet lt) ih a b
  exact (hbT w a b).1

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHBTl =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHUUiw =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHUUiw", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt

private theorem matrix_mul_entries_mem_bot_subalgebra {A ι : Type} [Ring A] [Algebra ℂ A] [Fintype ι] {M N : Matrix ι ι A}
    (hM : ∀ x y, M x y ∈ (⊥ : Subalgebra ℂ A)) (hN : ∀ x y, N x y ∈ (⊥ : Subalgebra ℂ A)) :
    ∀ x y, (M * N) x y ∈ (⊥ : Subalgebra ℂ A) := by
  intro x y
  rw [Matrix.mul_apply]
  exact Subalgebra.sum_mem _ fun k _ => Subalgebra.mul_mem _ (hM x k) (hN k y)

private theorem ite_zero_mem_bot_subalgebra {A : Type} [Ring A] [Algebra ℂ A] (p : Prop) [Decidable p] (u : A)
    (hu : u ∈ (⊥ : Subalgebra ℂ A)) : (if p then u else 0) ∈ (⊥ : Subalgebra ℂ A) := by
  split_ifs
  · exact hu
  · exact Subalgebra.zero_mem _

theorem unipotent_scalar_identity : CutSH.UUiwScalar := by
  intro A _ _ _ S _ _ s w
  induction w with
  | nil =>
    intro a b
    show (1 : Wd.SlopeTestRemainingChoices S A) a b ∈ _
    rw [Matrix.one_apply]
    exact ite_zero_mem_bot_subalgebra _ _ (Subalgebra.one_mem _)
  | cons l w ih =>
    intro a b
    show ((Wd.ins l.intersection_update_fsHerm_neg_one (Wd.lift0 (YangianSpanCharacter.T.Uinv (if l.plus = true then s else star s))) : Wd.SlopeTestRemainingChoices S A) *
      (Wd.UUiw s w : Wd.SlopeTestRemainingChoices S A)) a b ∈ _
    refine matrix_mul_entries_mem_bot_subalgebra ?_ ih a b
    intro x y
    simp only [Wd.ins, Matrix.sum_apply]
    refine Subalgebra.sum_mem _ fun i _ => Subalgebra.sum_mem _ fun j _ => ?_
    refine matrix_mul_entries_mem_bot_subalgebra ?_ ?_ x y
    · intro u v
      simp only [Wd.eU, Matrix.of_apply]
      exact ite_zero_mem_bot_subalgebra _ _ (Subalgebra.one_mem _)
    · intro u v
      have hU : YangianSpanCharacter.T.Uinv (A := A) (if l.plus = true then s else star s) i j ∈ (⊥ : Subalgebra ℂ A) := by
        fin_cases i <;> fin_cases j <;>
          simp [YangianSpanCharacter.T.Uinv]
      simp only [Wd.lift0, Matrix.map_apply, Wd.io, Matrix.scalar_apply, Matrix.diagonal_apply]
      exact ite_zero_mem_bot_subalgebra _ _ hU

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHUUiw =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PtieLevTransportHerOf =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PtieLevTransportHerOf", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportHer\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationContinuousOnInvertible\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContinuousZetaL\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsPlaceWithVectors\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermMulVecMulVec\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelTransport\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ModuleFormEqRadialFormOne\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.QNFAsm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SiteTransport\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.Tower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory
open scoped ENNReal NNReal

noncomputable section

namespace Formalism.FourierDecayAlt.P.PTieH

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P.PBH Formalism.FourierDecayAlt.P.PTieB Formalism.FourierDecayAlt.P.PTieL

section closure

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]
  {P : M.Par} {z z' : Fin (2 * P.r + P.k + 1) → ℂ} {π : Mx P.k P.r → (Wp →L[ℂ] Wp)}
  {π' : Mx P.k P.r → (Wq →L[ℂ] Wq)} {L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r}
  {st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))} {l0 : ℕ} {Bs : B.RealPlaceData P.k P.r Wp Wq}

theorem mem_of_gen {V' : Type} [AddCommGroup V'] [Module ℂ V'] {i : Fin (P.r + 1)}
    (U : RadSp P.k P.r z z' π π' →ₗ[ℂ] V') (K : Submodule ℂ V')
    (h : ∀ Φ, HerGenC S P z z' π π' L st l0 Bs i Φ → U Φ ∈ K) :
    ∀ Φ ∈ herKc S P z z' π π' L st l0 Bs i, U Φ ∈ K := by
  have hle : herKc S P z z' π π' L st l0 Bs i ≤ K.comap U := Submodule.span_le.mpr fun Φ hΦ => h Φ hΦ
  exact fun Φ hΦ => hle hΦ

theorem waveC_closed (l : Fin P.r) (hl : l.val = 0) {w : List (Wd.Letter ℂ S)} (hw : WordOK P z z' π π' st l0 w)
    {s : ℂ} {Wv Wv' : Module.End ℂ (RadSp P.k P.r z z' π π')} (hW : multiplicationOperator Wv (fun c' _ => fsv s (c' l)))
    (hW' : multiplicationOperator Wv' (fun c' _ => fsv (-s) (c' l))) (a b : Wd.Ix S) :
    ∀ Ψ ∈ herKc S P z z' π π' L st l0 Bs 0, (Wd.Vw (mkP Wv Wv') s w a b).1 Ψ ∈ herKc S P z z' π π' L st l0 Bs 0 := by
  have h0 : l.castSucc = 0 := Fin.ext (by simp [hl])
  refine mem_of_gen (Wd.Vw (mkP Wv Wv') s w a b).1 _ fun Φ hΦ => Submodule.subset_span ?_
  have := HerGenC.waveC l w s Wv Wv' a b Φ hw hW hW' (by rw [h0]; exact hΦ)
  rw [h0] at this
  exact this

theorem waveZ_closed (hr : P.r = 0) {w : List (Wd.Letter ℂ S)} (hw : WordOK P z z' π π' st l0 w)
    {s : ℂ} {Wv Wv' : Module.End ℂ (RadSp P.k P.r z z' π π')}
    (hW : multiplicationOperator Wv (fun _ g => fsv s (P5.zeta P.k P.r z z' g)))
    (hW' : multiplicationOperator Wv' (fun _ g => fsv (-s) (P5.zeta P.k P.r z z' g))) (a b : Wd.Ix S) :
    ∀ Ψ ∈ herKc S P z z' π π' L st l0 Bs 0, (Wd.Vw (mkP Wv Wv') s w a b).1 Ψ ∈ herKc S P z z' π π' L st l0 Bs 0 := by
  have h0 : Fin.last P.r = 0 := Fin.ext (by simp [hr])
  refine mem_of_gen (Wd.Vw (mkP Wv Wv') s w a b).1 _ fun Φ hΦ => Submodule.subset_span ?_
  have := HerGenC.waveZ w s Wv Wv' a b Φ hw hW hW' (by rw [h0]; exact hΦ)
  rw [h0] at this
  exact this

end closure

section wave

variable {V V' : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup V'] [Module ℂ V'] {T : V →ₗ[ℂ] V'}
  {S : Type} [Fintype S] [DecidableEq S]

theorem mrel_Uinv (x : ℂ) : MRel T (Formalism.YangianSpanCharacter.T.Uinv (A := Pr V) x) (Formalism.YangianSpanCharacter.T.Uinv (A := Pr V') x) := fun a b => by
  fin_cases a <;> fin_cases b <;> simp [Formalism.YangianSpanCharacter.T.Uinv] <;>
    first | exact rel_one | exact rel_zero | exact rel_algebraMap x

theorem arel_UUiw (s : ℂ) : ∀ w : List (Wd.Letter ℂ S), ARel T (Wd.UUiw (A := Pr V) s w) (Wd.UUiw (A := Pr V') s w)
  | [] => by unfold Wd.UUiw; exact arel_one
  | l :: w => by
    unfold Wd.UUiw
    exact arel_mul (arel_ins _ (brel_lift0 (mrel_Uinv _))) (arel_UUiw s w)

theorem arel_Vw {f : Pr V} {f' : Pr V'} (hf : Rel T f f') (s : ℂ) (w : List (Wd.Letter ℂ S)) :
    ARel T (Wd.Vw f s w) (Wd.Vw f' s w) := by
  unfold Wd.Vw
  exact arel_mul (arel_io hf) (arel_UUiw s w)

end wave

theorem glue_at {r : ℕ} (i : ℕ) (hi : i < r) (c : Fin r → ℂ) (c'' : Fin (r - i) → ℂ) (l : Fin r) (hl : l.val = i) :
    P5.glue (⟨i, by omega⟩ : Fin (r + 1)) c (PTie.shiftCf ⟨i, by omega⟩ c'') l = c'' ⟨0, by omega⟩ := by
  unfold P5.glue PTie.shiftCf
  rw [dite_eq_left (by simp [hl])]
  congr 1
  ext
  simp [hl]

theorem zeta_step {k n ρ : ℕ} (hn : n = 1 + ρ) {z z' : Fin (2 * n + k + 1) → ℂ} {zs zs' : Fin (2 * ρ + k + 1) → ℂ}
    (hz : z = D.castV hn.symm (liftVec k 1 ρ zs)) (hz' : z' = D.castV hn.symm (liftVec k 1 ρ zs')) (g : Mx k ρ) :
    P5.zeta k n z z' (D.castM hn.symm (ιLev k 1 ρ g)) = P5.zeta k ρ zs zs' g := by
  subst hn
  rw [P.JCTx5.castV_rfl] at hz hz'
  subst hz hz'
  rw [P.JCTx5.castM_rfl]
  exact zeta_iota zs zs' g

theorem wordOK_tr {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] {P : M.Par} {z z' : Fin (2 * P.r + P.k + 1) → ℂ} {π : Mx P.k P.r → (Wp →L[ℂ] Wp)}
    {π' : Mx P.k P.r → (Wq →L[ℂ] Wq)} {X : ActualOps P.k P.r z z' π π'} {μ : Measure (Mt P.k P.r)}
    {L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r} {st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))} {l0 j : ℕ}
    {zj zj' : Fin (2 * (P.r - j) + P.k + 1) → ℂ} {πj : Mx P.k (P.r - j) → (Wp →L[ℂ] Wp)}
    {πj' : Mx P.k (P.r - j) → (Wq →L[ℂ] Wq)} {Xj : ActualOps (JC.parLev P j).k (JC.parLev P j).r zj zj' πj πj'}
    {μj : Measure (Mt P.k (P.r - j))} {Lj : R.LevelData (Pr (RadSp P.k (P.r - j) zj zj' πj πj')) (P.r - j)}
    {stj : Fr.Start (Pr (RadSp P.k (P.r - j) zj zj' πj πj'))}
    (hD : IsData P z z' π π' X μ L st l0) (hDj : IsData (JC.parLev P j) zj zj' πj πj' Xj μj Lj stj l0)
    {S : Type} [Fintype S] [DecidableEq S] {w : List (Wd.Letter ℂ S)} (hw : WordOK P z z' π π' st l0 w) :
    WordOK (JC.parLev P j) zj zj' πj πj' stj l0 w := by
  obtain ⟨⟨hA1, hA2, hA3, hA4⟩, hw2, hw3⟩ := hw
  have hq : stj.q = st.q := hDj.2.2.2.2.1.trans hD.2.2.2.2.1.symm
  have hinv : stj.inv = st.inv := hDj.2.2.2.2.2.1.trans hD.2.2.2.2.2.1.symm
  refine ⟨⟨hA1, hA2, fun l hl => ?_, hA4⟩, hw2, hw3⟩
  rw [hq, hinv]
  exact hA3 l hl

section mul

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] {k r i : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)}
  {π' : Mx k r → (Wq →L[ℂ] Wq)} {zs zs' : Fin (2 * (r - i) + k + 1) → ℂ} {πs : Mx k (r - i) → (Wp →L[ℂ] Wp)}
  {πs' : Mx k (r - i) → (Wq →L[ℂ] Wq)}

theorem mulC_tr (hi : i < r) (c : Fin r → ℂ) (U : RadSp k r z z' π π' →ₗ[ℂ] RadSp k (r - i) zs zs' πs πs')
    (hU : ∀ Φ c'' g, (U Φ : Fn k (r - i) (Wq →L[ℂ] Wp)) c'' g =
      (Φ : Fn k r (Wq →L[ℂ] Wp)) (P5.glue ⟨i, by omega⟩ c (PTie.shiftCf ⟨i, by omega⟩ c''))
        (D.castM (by omega) (ιLev k i (r - i) g)))
    (l : Fin r) (hl : l.val = i) (s : ℂ) {Wv : Module.End ℂ (RadSp k r z z' π π')}
    {Wl : Module.End ℂ (RadSp k (r - i) zs zs' πs πs')} (hW : multiplicationOperator Wv (fun c' _ => fsv s (c' l)))
    (hWl : multiplicationOperator Wl (fun c' _ => fsv s (c' ⟨0, by omega⟩))) (v : RadSp k r z z' π π') :
    Wl (U v) = U (Wv v) := by
  apply Subtype.ext
  funext c'' g
  have e1 := hWl (U v) c'' g
  have e2 := hU v c'' g
  have e3 := hU (Wv v) c'' g
  have e4 := hW v (P5.glue ⟨i, by omega⟩ c (PTie.shiftCf ⟨i, by omega⟩ c'')) (D.castM (by omega) (ιLev k i (r - i) g))
  dsimp only at e1 e4
  rw [glue_at i hi c c'' l hl] at e4
  show (Wl (U v) : Fn k (r - i) (Wq →L[ℂ] Wp)) c'' g = (U (Wv v) : Fn k (r - i) (Wq →L[ℂ] Wp)) c'' g
  rw [e1, e2, e3, e4]

theorem mulZ_tr (c : Fin r → ℂ) (U : RadSp k r z z' π π' →ₗ[ℂ] RadSp k (r - i) zs zs' πs πs') (hir : i ≤ r)
    (hU : ∀ Φ c'' g, (U Φ : Fn k (r - i) (Wq →L[ℂ] Wp)) c'' g =
      (Φ : Fn k r (Wq →L[ℂ] Wp)) (P5.glue ⟨i, by omega⟩ c (PTie.shiftCf ⟨i, by omega⟩ c''))
        (D.castM (by omega) (ιLev k i (r - i) g)))
    (hz : ∀ g, P5.zeta k r z z' (D.castM (by omega) (ιLev k i (r - i) g)) = P5.zeta k (r - i) zs zs' g)
    (s : ℂ) {Wv : Module.End ℂ (RadSp k r z z' π π')} {Wl : Module.End ℂ (RadSp k (r - i) zs zs' πs πs')}
    (hW : multiplicationOperator Wv (fun _ g => fsv s (P5.zeta k r z z' g)))
    (hWl : multiplicationOperator Wl (fun _ g => fsv s (P5.zeta k (r - i) zs zs' g))) (v : RadSp k r z z' π π') :
    Wl (U v) = U (Wv v) := by
  apply Subtype.ext
  funext c'' g
  have e1 := hWl (U v) c'' g
  have e2 := hU v c'' g
  have e3 := hU (Wv v) c'' g
  have e4 := hW v (P5.glue ⟨i, by omega⟩ c (PTie.shiftCf ⟨i, by omega⟩ c'')) (D.castM (by omega) (ιLev k i (r - i) g))
  dsimp only at e1 e4
  rw [hz g] at e4
  show (Wl (U v) : Fn k (r - i) (Wq →L[ℂ] Wp)) c'' g = (U (Wv v) : Fn k (r - i) (Wq →L[ℂ] Wp)) c'' g
  rw [e1, e2, e3, e4]

end mul

theorem resG_smul {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] (i : Fin (r + 1)) (κ : ℂ)
    (J : Mx k r → E) (c : Fin r → ℂ) (g : Mx k r) : resG k r i (κ • J) c g = κ • resG k r i J c g := by
  unfold resG
  rw [Pi.smul_apply, smul_comm]


theorem lev_ind_her {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par)
    (T : D.LevTower P.k P.r Wp Wq) (hT : D.TowerNormalised T) (hP : IsPlace P T.base.z T.base.z' T.base.π T.base.π')
    (X : ActualOps P.k P.r T.base.z T.base.z' T.base.π T.base.π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r T.base.z T.base.z' T.base.π T.base.π')) P.r)
    (st : Fr.Start (Pr (RadSp P.k P.r T.base.z T.base.z' T.base.π T.base.π'))) (l0 : ℕ)
    (hD : P5.IsData P T.base.z T.base.z' T.base.π T.base.π' X μ L st l0) (hl1 : 1 ≤ l0) (hl2 : l0 ≤ P.k)
    (Bs : B.RealPlaceData P.k P.r Wp Wq) (κ0 : ℂ) (hκ0 : ∀ F, B.JF Bs F = κ0 • B.JF T.base F)
    (hS : PTie.SliceStepHer) (c : Fin P.r → ℂ) :
    ∀ (j : ℕ) (hj : j ≤ P.r), (∀ l : Fin P.r, l.val < j → c l ≠ 0) →
    ∃ (Xj : ActualOps (JC.parLev P j).k (JC.parLev P j).r (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π')
      (μj : Measure (Mt P.k (P.r - j)))
      (Lj : R.LevelData (Pr (RadSp P.k (P.r - j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π')) (P.r - j))
      (stj : Fr.Start (Pr (RadSp P.k (P.r - j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π')))
      (Tj : RadSp P.k P.r T.base.z T.base.z' T.base.π T.base.π' →ₗ[ℂ]
        RadSp P.k (P.r - j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π'),
      P5.IsData (JC.parLev P j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π' Xj μj Lj stj l0 ∧
      KB.ZetaNorm (T.bs j) μj ∧
      (∀ Φ c'' g, (Tj Φ : Fn P.k (P.r - j) (Wq →L[ℂ] Wp)) c'' g =
        (Φ : Fn P.k P.r (Wq →L[ℂ] Wp)) (P5.glue ⟨j, by omega⟩ c (PTie.shiftCf ⟨j, by omega⟩ c''))
          (D.castM (by omega) (ιLev P.k j (P.r - j) g))) ∧
      (∃ κ : ℝ, 0 < κ ∧ ∀ Φ Ψ c'', P5.pairAt μj (Tj Φ) (Tj Ψ) c'' =
        (κ : ℂ) * P5.pairAt μ Φ Ψ (P5.glue ⟨j, by omega⟩ c (PTie.shiftCf ⟨j, by omega⟩ c''))) ∧
      (∀ l : Fin (P.r - j), Rel Tj (L.p ⟨l.val + j, by omega⟩) (Lj.p l) ∧
        Rel Tj (L.c ⟨l.val + j, by omega⟩) (Lj.c l) ∧ Rel Tj (L.ci ⟨l.val + j, by omega⟩) (Lj.ci l)) ∧
      (∀ (n : ℕ) (hn : n + j ≤ P.r) (Y : ℂ),
        MRel Tj (P5.QQi L st ⟨n + j, by omega⟩ Y) (P5.QQi Lj stj ⟨n, by omega⟩ Y)) ∧
      (∀ g, P5.zeta P.k P.r T.base.z T.base.z' (D.castM (by omega) (ιLev P.k j (P.r - j) g)) =
        P5.zeta P.k (P.r - j) (T.bs j).z (T.bs j).z' g) ∧
      ∀ (S : Type) [Fintype S] [DecidableEq S],
        ∀ Φ ∈ herKc S P T.base.z T.base.z' T.base.π T.base.π' L st l0 Bs ⟨j, by omega⟩,
          Tj Φ ∈ herKc S (JC.parLev P j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π' Lj stj l0 (T.bs j) 0 := by
  intro j
  induction j with
  | zero =>
    intro hj _
    obtain ⟨μ0, hμ0⟩ := Formalism.FourierDecayAlt.P.exists_zeta_normalized_haar P.k (P.r - 0) Wp Wq (T.bs 0)
    have h1 : B.IsHaarOn (Glev P.k P.r (Fin.last P.r)) μ := hD.2.1
    obtain ⟨a, ha⟩ : ∃ a : ℝ≥0, μ = a • μ0 := by
      have hU := Formalism.FourierDecayAlt.P.opposite_weyl_subgroup_closed P.k P.r
      have h1' := h1
      have h0 : B.IsHaarOn (Glev P.k P.r (Fin.last P.r)) μ0 := hμ0.1
      rw [glev_last_eq] at h1' h0
      exact Formalism.FourierDecayAlt.P.haar_measure_unique_up_to_scalar P.k P.r _ μ0 μ hU h0 h1'.conc h1'.left h1'.finite_compact
    have ha0 : (a : ℝ) ≠ 0 := by
      intro h
      apply h1.ne_zero
      rw [ha, show a = 0 from by exact_mod_cast h, zero_smul]
    have hD0 : P5.IsData (JC.parLev P 0) (T.bs 0).z (T.bs 0).z' (T.bs 0).π (T.bs 0).π' X μ0 L st l0 :=
      ⟨JCTx5.isPlace_lev P T ⟨0, by omega⟩ hP, hμ0.1, hD.2.2⟩
    refine ⟨X, μ0, L, st, LinearMap.id, hD0, hμ0,
      fun Φ c'' g => ?_, ⟨(a : ℝ)⁻¹, inv_pos.2 (lt_of_le_of_ne a.2 (Ne.symm ha0)), fun Φ Ψ c'' => ?_⟩,
      fun l => ⟨rel_id _, rel_id _, rel_id _⟩, fun n hn Y => mrel_id _, fun g => ?_, fun S _ _ => ?_⟩
    · rw [glue_zero', castM_iota0]; rfl
    · rw [glue_zero', ha, pairAt_smul, ← mul_assoc, ← Complex.ofReal_mul, inv_mul_cancel₀ ha0, Complex.ofReal_one,
        one_mul]
      rfl
    · rw [castM_iota0]
      try rfl
    · refine mem_of_gen (S := S) LinearMap.id
        (herKc S (JC.parLev P 0) (T.bs 0).z (T.bs 0).z' (T.bs 0).π (T.bs 0).π' L st l0 (T.bs 0) 0) fun Φ hΦ => ?_
      suffices H : ∀ (i : Fin (P.r + 1)) (Φ : RadSp P.k P.r T.base.z T.base.z' T.base.π T.base.π'),
          HerGenC S P T.base.z T.base.z' T.base.π T.base.π' L st l0 Bs i Φ → i.val = 0 →
          Φ ∈ herKc S (JC.parLev P 0) (T.bs 0).z (T.bs 0).z' (T.bs 0).π (T.bs 0).π' L st l0 (T.bs 0) 0 from
        H _ Φ hΦ rfl
      intro i Φ h
      induction h with
      | jf F Φ hF hΦ =>
        intro _
        by_cases hκ : κ0 = 0
        · have e : Φ = 0 := by
            apply Subtype.ext
            funext c' g
            by_cases hx : (c', g) ∈ DomR P.k P.r T.base.z T.base.z'
            · have h2 := hΦ (c', g) hx
              simp only at h2
              rw [h2, hκ0 F, resG_smul, hκ, zero_smul]
              try rfl
            · exact Φ.2.1 (c', g) hx
          rw [e]
          exact Submodule.zero_mem _
        · obtain ⟨Φ', hΦ'e⟩ : ∃ Φ' : RadSp P.k P.r T.base.z T.base.z' T.base.π T.base.π', Φ' = κ0⁻¹ • Φ := ⟨_, rfl⟩
          have hΦ' : IsRadJF (JC.parLev P 0) (T.bs 0).z (T.bs 0).z' (T.bs 0).π (T.bs 0).π' (T.bs 0) F Φ' := by
            intro x hx
            rw [hΦ'e]
            show κ0⁻¹ • (Φ : Fn P.k P.r (Wq →L[ℂ] Wp)) x.1 x.2 = _
            rw [hΦ x hx, hκ0 F, resG_smul, smul_smul, inv_mul_cancel₀ hκ, one_smul]
            try rfl
          have e : Φ = κ0 • Φ' := by rw [hΦ'e, smul_smul, mul_inv_cancel₀ hκ, one_smul]
          have hmem : Φ' ∈ herKc S (JC.parLev P 0) (T.bs 0).z (T.bs 0).z'
              (T.bs 0).π (T.bs 0).π' L st l0 (T.bs 0) 0 :=
            Submodule.subset_span (HerGenC.jf F Φ' hF hΦ')
          rw [e]
          exact Submodule.smul_mem _ κ0 hmem
      | slice l w a b Φ hw hΦ ih =>
        intro he
        simp at he
      | waveC l w s Wv Wv' a b Φ hw hW hW' hΦ ih =>
        intro he
        exact waveC_closed l (by simpa using he) (wordOK_tr hD hD0 hw) hW hW' a b Φ (ih he)
      | waveZ w s Wv Wv' a b Φ hw hW hW' hΦ ih =>
        intro he
        exact waveZ_closed (by simpa [JC.parLev] using he) (wordOK_tr hD hD0 hw) hW hW' a b Φ (ih he)
  | succ j ih =>
    intro hj hc
    obtain ⟨Xj, μj, Lj, stj, Tj, hDj, hZj, hform, ⟨κ, hκ, hpair⟩, hsite, hqq, hzeta, hher⟩ :=
      ih (by omega) (fun l hl => hc l (by omega))
    have hj' : j + 1 ≤ P.r := hj
    have hPl := JCTx5.isPlace_lev P T ⟨j + 1, by omega⟩ hP
    obtain ⟨Xs⟩ := Formalism.FourierDecayAlt.P.actual_operators_exist _ _ _ _ _ _ _ hPl
    obtain ⟨Ls, sts, h1, h2, h3, h4, h5, h6⟩ := Formalism.FourierDecayAlt.P.level_start_actual _ _ _ _ _ _ _ hPl Xs l0
    obtain ⟨μs, hμs⟩ := Formalism.FourierDecayAlt.P.exists_zeta_normalized_haar P.k (P.r - (j + 1)) Wp Wq (T.bs (j + 1))
    have hDs : P5.IsData (JC.parLev P (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' (T.bs (j + 1)).π
        (T.bs (j + 1)).π' Xs μs Ls sts l0 := ⟨hPl, hμs.1, h1, h2, h3, h4, h5, h6⟩
    have hn : P.r - j = 1 + (P.r - (j + 1)) := by omega
    have hcj : c ⟨j, by omega⟩ ≠ 0 := hc ⟨j, by omega⟩ (by simp)
    obtain ⟨T', hf', hs', hq', hp'⟩ := step_cast (k := P.k) (n := P.r - j) (ρ := P.r - (j + 1)) hn
      (levTower_bs_z_eq_castV_liftVec T j hj') (levTower_bs_z'_eq_castV_liftVec T j hj') (T.bs (j + 1)).z_mem (T.bs (j + 1)).z'_mem (tower_π T j hj')
      (tower_π' T j hj') Xj Xs Lj stj Ls sts (M.sgn (JC.parLev P j) l0) μj μs hDj.2.2.1 hDs.2.2.1
      hDj.2.2.2.1 hDs.2.2.2.1 hZj.1 hμs.1 hZj.2 hμs.2 (c ⟨j, by omega⟩) hcj
    have hform1 : ∀ Φ c'' g, ((T' ∘ₗ Tj) Φ : Fn P.k (P.r - (j + 1)) (Wq →L[ℂ] Wp)) c'' g =
        (Φ : Fn P.k P.r (Wq →L[ℂ] Wp)) (P5.glue ⟨j + 1, by omega⟩ c (PTie.shiftCf ⟨j + 1, by omega⟩ c''))
          (D.castM (by omega) (ιLev P.k (j + 1) (P.r - (j + 1)) g)) := by
      intro Φ c'' g
      rw [LinearMap.comp_apply, hf', hform, glue_step j hj' c c'' hn,
        lift_lift_M j (P.r - (j + 1)) (P.r - j) P.r hn.symm (by omega) (by omega)]
    have hzeta1 : ∀ g, P5.zeta P.k P.r T.base.z T.base.z' (D.castM (by omega) (ιLev P.k (j + 1) (P.r - (j + 1)) g)) =
        P5.zeta P.k (P.r - (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' g := by
      intro g
      rw [← lift_lift_M j (P.r - (j + 1)) (P.r - j) P.r hn.symm (by omega) (by omega), hzeta,
        zeta_step hn (levTower_bs_z_eq_castV_liftVec T j hj') (levTower_bs_z'_eq_castV_liftVec T j hj') g]
    refine ⟨Xs, μs, Ls, sts, T' ∘ₗ Tj, hDs, hμs, hform1, ⟨κ, hκ, fun Φ Ψ c'' => ?_⟩,
      fun l => ?_, fun n hn' Y => ?_, hzeta1, fun S _ _ => ?_⟩
    · rw [LinearMap.comp_apply, LinearMap.comp_apply, hp', hpair, glue_step j hj' c c'' hn]
    · have e : (⟨l.val + 1 + j, by omega⟩ : Fin P.r) = ⟨l.val + (j + 1), by omega⟩ :=
        Fin.ext (show l.val + 1 + j = l.val + (j + 1) by omega)
      obtain ⟨a1, a2, a3⟩ := hsite ⟨l.val + 1, by omega⟩
      obtain ⟨b1, b2, b3⟩ := hs' l
      rw [← e]
      exact ⟨rel_comp a1 b1, rel_comp a2 b2, rel_comp a3 b3⟩
    · have e : (⟨n + 1 + j, by omega⟩ : Fin (P.r + 1)) = ⟨n + (j + 1), by omega⟩ :=
        Fin.ext (show n + 1 + j = n + (j + 1) by omega)
      have a := hqq (n + 1) (by omega) Y
      have b := hq' n (by omega) Y
      rw [← e]
      exact mrel_comp a b
    · refine mem_of_gen (S := S) (T' ∘ₗ Tj) (herKc S (JC.parLev P (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z'
        (T.bs (j + 1)).π (T.bs (j + 1)).π' Ls sts l0 (T.bs (j + 1)) 0) fun Φ hΦ => ?_
      suffices H : ∀ (i : Fin (P.r + 1)) (Φ : RadSp P.k P.r T.base.z T.base.z' T.base.π T.base.π'),
          HerGenC S P T.base.z T.base.z' T.base.π T.base.π' L st l0 Bs i Φ → i.val = j + 1 →
          (T' ∘ₗ Tj) Φ ∈ herKc S (JC.parLev P (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' (T.bs (j + 1)).π
            (T.bs (j + 1)).π' Ls sts l0 (T.bs (j + 1)) 0 from H _ Φ hΦ rfl
      intro i Φ h
      induction h with
      | jf F Φ hF hΦ =>
        intro he
        simp at he
      | slice l w a b Φ hw hΦ ih =>
        intro he
        have hl : l.val = j := by simp at he; omega
        have hmem : Φ ∈ herKc S P T.base.z T.base.z' T.base.π T.base.π' L st l0 Bs ⟨j, by omega⟩ := by
          have e : l.castSucc = ⟨j, by omega⟩ := Fin.ext (by simp [hl])
          exact Submodule.subset_span (by rw [← e]; exact hΦ)
        have hTΦ := hher S Φ hmem
        have hl' : l = ⟨0 + j, by omega⟩ := Fin.ext (by simp [hl])
        obtain ⟨a1, a2, a3⟩ := hsite ⟨0, by omega⟩
        have hrel := arel_bT (σ := P5.site L ⟨0 + j, by omega⟩) (σ' := P5.site Lj ⟨0, by omega⟩) a1 a2 a3 w a b
        have e2 : Tj ((P5.bTl L ⟨0 + j, by omega⟩ w a b).1 Φ) =
            (P5.bTl Lj (⟨0, by change 0 < P.r - j; omega⟩ : Fin (JC.parLev P j).r) w a b).1 (Tj Φ) :=
          (LinearMap.congr_fun hrel.1 Φ).symm
        rw [LinearMap.comp_apply, hl', e2]
        exact hS Wp Wq P T hP hT j hj' l0 hl1 hl2 Xj μj Lj stj Xs μs Ls sts hDj hDs T' (c ⟨j, by omega⟩) hcj hf' S w a b
          (wordOK_tr hD hDj hw) (Tj Φ) hTΦ
      | waveC l w s Wv Wv' a b Φ hw hW hW' hΦ ih =>
        intro he
        have hl : l.val = j + 1 := by simpa using he
        obtain ⟨Wl, hWl⟩ := Formalism.FourierDecayAlt.P5.waveCExists Wp Wq P.k (P.r - (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z'
          (T.bs (j + 1)).π (T.bs (j + 1)).π' ⟨0, by omega⟩ s
        obtain ⟨Wl', hWl'⟩ := Formalism.FourierDecayAlt.P5.waveCExists Wp Wq P.k (P.r - (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z'
          (T.bs (j + 1)).π (T.bs (j + 1)).π' ⟨0, by omega⟩ (-s)
        have hrel : Rel (T' ∘ₗ Tj) (mkP Wv Wv') (mkP Wl Wl') :=
          rel_mk (fun v => mulC_tr (i := j + 1) (by omega) c (T' ∘ₗ Tj) hform1 l hl s hW hWl v)
            (fun v => mulC_tr (i := j + 1) (by omega) c (T' ∘ₗ Tj) hform1 l hl (-s) hW' hWl' v)
        have hV := arel_Vw hrel s w
        have e : (T' ∘ₗ Tj) ((Wd.Vw (mkP Wv Wv') s w a b).1 Φ) = (Wd.Vw (mkP Wl Wl') s w a b).1 ((T' ∘ₗ Tj) Φ) :=
          (LinearMap.congr_fun (hV a b).1 Φ).symm
        rw [e]
        exact waveC_closed (⟨0, by have := l.isLt; change 0 < P.r - (j + 1); omega⟩ : Fin (JC.parLev P (j + 1)).r) rfl (wordOK_tr hD hDs hw) hWl hWl' a b _ (ih he)
      | waveZ w s Wv Wv' a b Φ hw hW hW' hΦ ih =>
        intro he
        have hr : P.r = j + 1 := by simpa using he
        obtain ⟨Wl, hWl⟩ := Formalism.FourierDecayAlt.P5.waveZExists Wp Wq P.k (P.r - (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z'
          (T.bs (j + 1)).π (T.bs (j + 1)).π' s
        obtain ⟨Wl', hWl'⟩ := Formalism.FourierDecayAlt.P5.waveZExists Wp Wq P.k (P.r - (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z'
          (T.bs (j + 1)).π (T.bs (j + 1)).π' (-s)
        have hrel : Rel (T' ∘ₗ Tj) (mkP Wv Wv') (mkP Wl Wl') :=
          rel_mk (fun v => mulZ_tr (i := j + 1) c (T' ∘ₗ Tj) hj' hform1 hzeta1 s hW hWl v)
            (fun v => mulZ_tr (i := j + 1) c (T' ∘ₗ Tj) hj' hform1 hzeta1 (-s) hW' hWl' v)
        have hV := arel_Vw hrel s w
        have e : (T' ∘ₗ Tj) ((Wd.Vw (mkP Wv Wv') s w a b).1 Φ) = (Wd.Vw (mkP Wl Wl') s w a b).1 ((T' ∘ₗ Tj) Φ) :=
          (LinearMap.congr_fun (hV a b).1 Φ).symm
        rw [e]
        exact waveZ_closed (by simp [JC.parLev]; omega) (wordOK_tr hD hDs hw) hWl hWl' a b _ (ih he)

theorem levTransportHer_of (hJ : PTie.JFScale) (hS : PTie.SliceStepHer) : PTie.LevTransportHer := by
  intro Wp Wq _ _ _ _ _ _ P z z' π π' X μ L st l0 Bs hD hl1 hl2 hz hz' hπ hπ' i c hc
  obtain ⟨T, h1, h2, h3, h4, hN⟩ := _root_.Formalism.FourierDecayAlt.P.HaarMassHermitianCurvature.towerAt P.k P.r Wp Wq Bs
  obtain ⟨κ0, hκ0⟩ := hJ P.k P.r Wp Wq Bs T.base h1.symm h2.symm h3.symm h4.symm
  have e1 : T.base.z = z := h1.trans hz
  have e2 : T.base.z' = z' := h2.trans hz'
  have e3 : T.base.π = π := h3.trans hπ
  have e4 : T.base.π' = π' := h4.trans hπ'
  subst e1 e2 e3 e4
  obtain ⟨Xi, μi, Li, sti, Ti, hDi, -, hform, hpair, hsite, hqq, -, hher⟩ :=
    lev_ind_her P T hN hD.1 X μ L st l0 hD hl1 hl2 Bs κ0 hκ0 hS c i.val (by omega) hc
  refine ⟨T.bs i, Xi, μi, Li, sti, Ti, hDi, ⟨hform, hpair, fun n hn Y => hqq n hn Y,
    fun S _ _ w => ⟨fun l => ?_, fun n hn => ?_, fun hw => wordOK_tr hD hDi hw⟩⟩, fun S _ _ => hher S⟩
  · obtain ⟨a1, a2, a3⟩ := hsite l
    exact arel_bT (σ := P5.site L ⟨l.val + i, by omega⟩) (σ' := P5.site Li l) a1 a2 a3 w
  · exact arel_RRw (fun Y => hqq n hn Y) w

end Formalism.FourierDecayAlt.P.PTieH

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PtieLevTransportHerOf =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PTieAll =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PTieAll", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportHer\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PtieLevTransportHerOf\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SfiniteOfHaar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem ptie_levTransportHer_of_sliceStep (hS : Formalism.FourierDecayAlt.P.PTie.SliceStepHer) : Formalism.FourierDecayAlt.P.PTie.LevTransportHer :=
  _root_.Formalism.FourierDecayAlt.P.PTieH.levTransportHer_of _root_.Formalism.FourierDecayAlt.P.PTieJ.jfScale hS

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PTieAll =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHChk =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHChk", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSH2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportHer\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHBTl\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHCellTie\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHFamAlg\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHFamJFOK\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHOpClosed\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHRepLin\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamGood\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamJF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHUUiw\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PTieAll\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem cutSH_sliceStepHer_of_sfg (h7 : CutSH.SliceFamGood) : PTie.SliceStepHer :=
  CutSH.sliceStepHer_of CutSH.family_orbital_valid CutSH.family_algebraic CutSH.representation_linear
    _root_.Formalism.FourierDecayAlt.P.CutSH.cell_compatibility h7 CutSH.slice_family_orbital operator_class_closed boundary_torus_adjoin
    unipotent_scalar_identity

theorem cutSH_levTransportHer_of_sfg (h7 : CutSH.SliceFamGood) : PTie.LevTransportHer :=
  ptie_levTransportHer_of_sliceStep (cutSH_sliceStepHer_of_sfg h7)

theorem level_transport_hermitian : PTie.LevTransportHer := cutSH_levTransportHer_of_sfg slice_family_good

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHChk =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPCompactOfStepSquare =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPCompactOfStepSquare", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPCompactOfStepDensity\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHChk\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P5.HerD

theorem thmPActualCpt_of_stepExp0 (h0 : StepExp0) : ThmPActualCpt :=
  theorem_P_compact_of_step_density Formalism.FourierDecayAlt.P.level_transport_hermitian h0

end Formalism.FourierDecayAlt.P5.HerD
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPCompactOfStepSquare =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopHer =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopHer", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEDecayAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSESiteOpsC\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETop\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEWaveOutJ\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPCompactOfStepSquare\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutSE

theorem stepExp0_of_leaves (hO : OneLetterDens) (hS : DensSmoothCls) (hR : RadDecay) : Formalism.FourierDecayAlt.P5.HerD.StepExp0 :=
  stepExp0_of_open hO hS (decayPair2_of_smooth hS) (decayPair3_of wave_outgoing_orbital (clsDecayJ_of hR))
    (decayPair4_of wave_outgoing_orbital (clsDecayJ_of hR) site_multiplication_orbital)

theorem thmPActualCpt_of_leaves (hO : OneLetterDens) (hS : DensSmoothCls) (hR : RadDecay) :
    Formalism.FourierDecayAlt.P5.ThmPActualCpt :=
  Formalism.FourierDecayAlt.P5.HerD.thmPActualCpt_of_stepExp0 (stepExp0_of_leaves hO hS hR)

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopHer =====
