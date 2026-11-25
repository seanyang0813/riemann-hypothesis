module

public import Formalism.DivisorInequality.StatementObj
public import Formalism.DivisorInequality.DivisorInequalityProofs.BaseLevelBoundsWithCovolumeHolds
public import Formalism.LocalToGlobal.IndefiniteForms.PairingConditionOfInverseMatrixIdentity
public import Formalism.LocalToGlobal.Divisibility.Inputs
public import Formalism.LocalToGlobal.Divisibility.DivisionHeightBoundStatement
public import Formalism.MirabolicMackeyTheory.MirabolicIsMackey
public import Formalism.QuotientMetricDivisors.FinalW
public import Formalism.LocalRingCardinality.Params
public import Formalism.LocalToGlobal.Columns.AbelianHostFieldConditions
import Formalism.LocalToGlobal.IndefiniteForms.IndefUse
import Formalism.QuotientMetricDivisors.HermitianTwistDivisors.DescendedNorm
import Formalism.QuotientMetricDivisors.ReductionLemmaZero
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.DivisorInequality.BaseLevelBoundsWithCovolume, Formalism.LocalToGlobal.Divisibility.ConstantGeTwentyEight

-- ===== clump member: Formalism.DivisorInequality.BaseLevelBoundsWithCovolume =====
-- clump-header: {"m": "Formalism.DivisorInequality.BaseLevelBoundsWithCovolume", "h": "module\n\npublic import Formalism.DivisorInequality.StatementObj\npublic import Formalism.DivisorInequality.DivisorInequalityProofs.BaseLevelBoundsWithCovolumeHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.DivisorInequality

end Formalism.DivisorInequality
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.DivisorInequality.BaseLevelBoundsWithCovolume =====

-- ===== clump member: Formalism.LocalToGlobal.Divisibility.ConstantGeTwentyEight =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Divisibility.ConstantGeTwentyEight", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteForms.PairingConditionOfInverseMatrixIdentity\npublic import Formalism.LocalToGlobal.Divisibility.Inputs\npublic import Formalism.DivisorInequality.BaseLevelBoundsWithCovolume\npublic import Formalism.LocalToGlobal.Divisibility.DivisionHeightBoundStatement\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefUse\npublic import Formalism.MirabolicMackeyTheory.MirabolicIsMackey\npublic import Formalism.QuotientMetricDivisors.FinalW\nimport Formalism.QuotientMetricDivisors.HermitianTwistDivisors.DescendedNorm\nimport Formalism.QuotientMetricDivisors.ReductionLemmaZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalRingCardinality.Params\npublic import Formalism.LocalToGlobal.Columns.AbelianHostFieldConditions\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder

noncomputable section

namespace Formalism.L2.DIV

open Formalism.DivisionValues Formalism.EigenvalueLevelCeiling Formalism.L2.Indef
open Formalism.LatticeIndexTer (ph)

section GenericR

variable {K : Type} [Field K] [NumberField K] [StarRing K]
  {Bs : DefBase K} {Df0 Df1 : DefSide Bs} {Dc : DefCols Df1} {Sp : SPer Dc} {N : IndefNum Bs}

def FoOfR (P : IndefCoreR Df0 Df1 Dc Sp N) : ℝ :=
  ∑ j, ∑ y ∈ P.base.Tw, lw y * ((ramw y : ℝ) * N.F0 y j)

def boundBR (P : IndefCoreR Df0 Df1 Dc Sp N) (LG E3 : ℝ) (E2 : Bs.J → ℝ) : ℝ :=
  (∑ j, N.l3 j) + 2 * FoOfR P + LG + (∑ j, (N.E1 j + E2 j)) + E3

structure DivInputs0R {Pl : Type} [Fintype Pl] [DecidableEq Pl] (P : IndefCoreR Df0 Df1 Dc Sp N) (R : RecNums Bs.J Pl)
    (u : Dc.Mem) (Nu : Submodule (𝓞 K) (Fin (Dc.a u) → K)) (sg : HeightOneSpectrum (𝓞 K) → ℝ) where

  Nu_lat : Submodule.IsFullLattice K Nu

  sg_fin : (Function.support (shiftZ sg)).Finite

  Xc_unit : ∀ v, IsUnit (Dc.Xc u v).det

  a_pos : 0 < Dc.a u

  X0 : InfinitePlace K → Matrix (Fin (Df1.nV Bs.μ0)) (Fin (Df1.nV Bs.μ0)) ℂ

  base_matrix_det_unit : ∀ v, IsUnit (X0 v).det ∧ ((X0 v)⁻¹).conjTranspose * (X0 v)⁻¹ = (Df1.HV Bs.μ0).map v.embedding

  ch : ColChain Dc u

  hn : HtNums R (InfinitePlace K)

  nP : ∀ v, Formalism.HN.opNormAt (Pi.basisFun K (Fin (ch.c (Fin.last ch.mm)))) (ch.X (Fin.last ch.mm))
    (Pi.basisFun K (Fin (Df1.nV Bs.μ0))).dualBasis (Formalism.HN.dualFrame X0) v ch.PtL ^ 2 ≤ Real.exp hn.hPn

  cb : CBData ch.X ch.Kj

  nKcb : ∀ j v, Real.log (cb.sq j v) ≤ ∑ l ∈ Finset.univ.filter (fun l => ch.lf l = j), hn.sz l v

  eig6 : ∑ j, R.hX j ≤ ∑ j, N.l6 j

  eb : ∀ t, HeightOneSpectrum (𝓞 K) → Fin (Df0.dQ t) → Fin (Df0.dQ t) → K

  heb : ∀ t w, IsLocBasis (Df0.abelian₂ t) w (eb t w)

  Sy : Finset (HeightOneSpectrum (𝓞 K))

  Sy_tw : P.base.Tw ⊆ Sy

  G0 : ∀ y, y ∉ Sy → vw y (Df0.Gm eb (P.base.μ y) y) = 0

  LG : ℝ

  E3 : ℝ

  E2 : Bs.J → ℝ

  gy : HeightOneSpectrum (𝓞 K) → ℝ

  ηy : HeightOneSpectrum (𝓞 K) → Bs.J → ℝ

  bi : ∀ y ∈ Sy, (vw y (Df0.Gm eb (P.base.μ y) y) : ℝ) ≤ (P.base.D : ℝ) * gy y

  bLG : ∑ y ∈ Sy, lw y * gy y ≤ LG

  biv : ∀ y ∈ P.base.Tw, ∀ j, (jw (Df0.HT j (P.base.μ y)) y (Df0.Tl j (P.base.μ y)) : ℝ) ≤
    ((ramw y : ℝ) * N.J0 (P.base.μ y) y j) * (P.base.D : ℝ) + ηy y j

  borderedMinorImage : ∀ j, ∑ y ∈ P.base.Tw, lw y * ηy y j / (P.base.D : ℝ) ≤ E2 j

  twisted_third_sum_le : ∑ y ∈ Sy, lw y * (2 / ellw y ^ 2) ≤ E3

  El3 : ℝ

  L3main : ∑ j, N.l3 j ≤ (∑ j, ∑ ρ, R.pq j * R.w j ρ * R.logOm) + El3

  errB : El3 + LG + (∑ j, (N.E1 j + E2 j)) + E3 ≤ R.errB

  Q : ℝ

  de0 : 0 ≤ N.de

  deQ : 3 * N.de * Q ≤ 1

  Q1 : 1 ≤ Q

  Qb : boundBR P LG E3 E2 + N.hh + 28 * N.la ≤ Q

  la_le : N.la ≤ R.lam0

  constant_ge_twenty_eight : 28 ≤ R.C0

structure DivInputsR {Pl : Type} [Fintype Pl] [DecidableEq Pl] (P : IndefCoreR Df0 Df1 Dc Sp N) (R : RecNums Bs.J Pl)
    (u : Dc.Mem) (Nu : Submodule (𝓞 K) (Fin (Dc.a u) → K)) (sg : HeightOneSpectrum (𝓞 K) → ℝ) extends DivInputs0R P R u Nu sg where

  val2 : ∀ w, ∀ φ ∈ Nu, ∀ F ∈ Df1.Mt (P.cols.μ w),
    Dc.Pt u (P.cols.μ w) φ F = 0 ∨ sg w ≤ (vw w (Dc.Pt u (P.cols.μ w) φ F) : ℝ)

/-- The three arithmetic clauses used in the per-word bridge. -/
def DivCoreClausesR {Pl : Type} [Fintype Pl] [DecidableEq Pl] (P : IndefCoreR Df0 Df1 Dc Sp N) (R : RecNums Bs.J Pl)
    (u : Dc.Mem) (Nu : Submodule (𝓞 K) (Fin (Dc.a u) → K)) (sg : HeightOneSpectrum (𝓞 K) → ℝ) : Prop :=
  (∀ φ ∈ shiftLat Nu sg, P.cols.col.B u φ ∈ Formalism.HN.dualLat P.cols.RR) ∧
  (∃ cu : InfinitePlace K → ℝ, (∀ v, 0 < cu v ∧
      Formalism.HN.opNormAt (Pi.basisFun K (Fin (Dc.a u))) (Dc.Xc u) (Pi.basisFun K (Fin P.cols.D)).dualBasis
        (Formalism.HN.dualFrame P.cols.XE) v (P.cols.col.B u) ^ 2 ≤ cu v) ∧
    (1 / (Formalism.HN.nPl K : ℝ)) * ∑ v, Real.log (cu v) = R.hu - meanLog P.cols.κ) ∧
  P.cols.muCC - meanLog P.cols.κ + R.hu - 2 * FoOfR P ≤ R.rhs

theorem height_chain_atR {Df : DefSide Bs} {Dc : DefCols Df} {Sp : SPer Dc} [Nonempty Bs.Ix] (wf : Df.WF)
    (S : IndefColsR Df Dc Sp N) (u : Dc.Mem) (hne : S.col.B u ≠ 0)
    (X0 : InfinitePlace K → Matrix (Fin (Df.nV Bs.μ0)) (Fin (Df.nV Bs.μ0)) ℂ)
    (hX0 : ∀ v, IsUnit (X0 v).det ∧ ((X0 v)⁻¹).conjTranspose * (X0 v)⁻¹ = (Df.HV Bs.μ0).map v.embedding)
    (ch : ColChain Dc u) (hP : ℝ) (hK : Bs.J → InfinitePlace K → ℝ)
    (nP : ∀ v, Formalism.HN.opNormAt (Pi.basisFun K (Fin (ch.c (Fin.last ch.mm)))) (ch.X (Fin.last ch.mm))
      (Pi.basisFun K (Fin (Df.nV Bs.μ0))).dualBasis (Formalism.HN.dualFrame X0) v ch.PtL ^ 2 ≤ Real.exp hP)
    (nK : ∀ j v, Formalism.HN.opNormAt (Pi.basisFun K (Fin (ch.c j.castSucc))) (ch.X j.castSucc)
      (Pi.basisFun K (Fin (ch.c j.succ))) (ch.X j.succ) v (Matrix.mulVecLin (ch.Kj j)) ^ 2 ≤
        Real.exp (∑ l ∈ Finset.univ.filter (fun l => ch.lf l = j), hK l v)) :
    (∀ v, Real.log (Formalism.HN.opNormAt (Pi.basisFun K (Fin (Dc.a u))) (Dc.Xc u) (Pi.basisFun K (Fin S.D)).dualBasis
        (Formalism.HN.dualFrame S.XE) v (S.col.B u) ^ 2) ≤
      hP + ∑ j, ∑ l ∈ Finset.univ.filter (fun l => ch.lf l = j), hK l v - Real.log (S.κ v) -
        minOver (fun p => ∑ j, Real.log (S.lam j Bs.μ0 p v))) ∧
    (1 / (Fintype.card (InfinitePlace K) : ℝ)) * ∑ v, (hP + ∑ j, ∑ l ∈ Finset.univ.filter (fun l => ch.lf l = j), hK l v -
        Real.log (S.κ v) - minOver (fun p => ∑ j, Real.log (S.lam j Bs.μ0 p v))) ≤
      hP + ∑ j, (∑ v, hK j v) / (Fintype.card (InfinitePlace K) : ℝ) - ∑ j, N.l6 j - meanLog S.κ := by
  have hc := S.l1c
  have hb := S.l1b
  have hsc : ∀ v p, IsScalarOn (Df.XQ Bs.μ0) S.XE v (S.ι Bs.μ0) (Df.Qp Bs.μ0 p)
      (S.κ v * ∏ j, S.lam j Bs.μ0 p v) := fun v p => by
    rw [← S.Qpart_base p]; exact hc.2.2.2 Bs.μ0 v (Or.inl rfl) p
  have Hv := fun v => complex_height_cast_at height_constant_bound ch.c ch.c0 (S.dQ_eq Bs.μ0) (Dc.Xc u) ch.X ch.X_unit ch.X_zero
    ch.Kj (Df.HV Bs.μ0) X0 hX0 (Df.Pq Bs.μ0) (wf.Pq_surj _) (Df.XQ Bs.μ0) (wf.XQ_quot _) S.XE S.frames (S.ι Bs.μ0) (hc.1 _)
    Bs.Ix Bs.J (Df.Qp Bs.μ0) wf.Qp_top S.κ (fun j p v => S.lam j Bs.μ0 p v) hc.2.1 (fun j p v => hc.2.2.1 j _ p v) hsc
    ch.PtL (S.col.B u)
    (fun φ F => by
      have h1 := hb.1 u Bs.μ0 φ F
      rw [hb.2.1 u, one_mul] at h1
      rw [← h1]; exact ch.fact φ F)
    hne (fun _ => Real.exp (hP / 2)) (fun j v => Real.exp ((∑ l ∈ Finset.univ.filter (fun l => ch.lf l = j), hK l v) / 2))
    (fun v => le_exp_half (nP v)) (fun j v => le_exp_half (nK j v)) v
  simp only [log_exp_half_sq] at Hv
  refine ⟨Hv, ?_⟩
  have hn : (0 : ℝ) < (Fintype.card (InfinitePlace K) : ℝ) := by
    have : 0 < Fintype.card (InfinitePlace K) := Fintype.card_pos
    exact_mod_cast this
  have h2 : ∑ j, N.l6 j ≤ (1 / (Fintype.card (InfinitePlace K) : ℝ)) *
      ∑ v, minOver (fun p => ∑ j, Real.log (S.lam j Bs.μ0 p v)) := by
    have h3 : ∑ _v : InfinitePlace K, ∑ j, N.l6 j ≤
        ∑ v, minOver (fun p => ∑ j, Real.log (S.lam j Bs.μ0 p v)) := Finset.sum_le_sum fun v _ => S.log_eigenvalue_sum_le_min v
    rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul] at h3
    rw [one_div, le_inv_mul_iff₀ (by exact hn)]
    exact h3
  have h4 : (1 / (Fintype.card (InfinitePlace K) : ℝ)) * ∑ v, (hP + ∑ j, ∑ l ∈ Finset.univ.filter (fun l => ch.lf l = j), hK l v) =
      hP + ∑ j, (∑ v, hK j v) / (Fintype.card (InfinitePlace K) : ℝ) := by
    have e1 : ∀ v, ∑ j, ∑ l ∈ Finset.univ.filter (fun l => ch.lf l = j), hK l v = ∑ j, hK j v := fun v =>
      Finset.sum_fiberwise Finset.univ ch.lf (fun l => hK l v)
    simp only [e1]
    rw [Finset.sum_add_distrib, Finset.sum_const, Finset.card_univ, nsmul_eq_mul, Finset.sum_comm, ← Finset.sum_div]
    field_simp
  have e : (1 / (Fintype.card (InfinitePlace K) : ℝ)) * ∑ v, (hP + ∑ j, ∑ l ∈ Finset.univ.filter (fun l => ch.lf l = j), hK l v -
        Real.log (S.κ v) - minOver (fun p => ∑ j, Real.log (S.lam j Bs.μ0 p v))) =
      (1 / (Fintype.card (InfinitePlace K) : ℝ)) * ∑ v, (hP + ∑ j, ∑ l ∈ Finset.univ.filter (fun l => ch.lf l = j), hK l v) -
        (1 / (Fintype.card (InfinitePlace K) : ℝ)) * ∑ v, minOver (fun p => ∑ j, Real.log (S.lam j Bs.μ0 p v)) - meanLog S.κ := by
    simp only [meanLog, Finset.sum_sub_distrib]
    show _ = _ - _ - (1 / (Fintype.card (InfinitePlace K) : ℝ)) * _
    ring
  rw [e, h4]
  linarith [h2]

theorem divCoreClausesR_of [_root_.NumberField.IsTotallyComplex K] {Pl : Type} [Fintype Pl] [DecidableEq Pl] (wf0 : Df0.WF) (wf1 : Df1.WF)
    (P : IndefCoreR Df0 Df1 Dc Sp N) (R : RecNums Bs.J Pl) (u : Dc.Mem) (Nu : Submodule (𝓞 K) (Fin (Dc.a u) → K))
    (sg : HeightOneSpectrum (𝓞 K) → ℝ) (I : DivInputsR P R u Nu sg) : DivCoreClausesR P R u Nu sg := by
  have : Nonempty Bs.Ix := nonempty_Ix wf0 P.base.pos
  have hsh := shiftEx K (Dc.a u) Nu I.Nu_lat (shiftZ sg) I.sg_fin
  refine ⟨?_, ?_, ?_⟩
  ·
    exact P.cols.intoDual divIntoDualShift latticeGlue wf1 u Nu (shiftLat Nu sg) sg (shiftZ sg) I.val2
      (fun w => Int.floor_le_ceil _) hsh.1
  ·
    have hX := fun v => OperatorNormFrames.opNormAt_nonneg (Pi.basisFun K (Fin (Dc.a u))) (Dc.Xc u) (Pi.basisFun K (Fin P.cols.D)).dualBasis
      (Formalism.HN.dualFrame P.cols.XE) v (P.cols.col.B u)
    by_cases hne : P.cols.col.B u = 0
    · refine exists_cu _ (fun _ => R.hu - meanLog P.cols.κ) _ hX (fun v => Or.inl ?_) (le_of_eq ?_)
      · rw [hne]; simp [Formalism.HN.opNormAt]
      · have hn : (0 : ℝ) < (Fintype.card (InfinitePlace K) : ℝ) := by
          have : 0 < Fintype.card (InfinitePlace K) := Fintype.card_pos
          exact_mod_cast this
        simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
        field_simp
    · have nK := nK_of_cb I.cb (fun j v => ∑ l ∈ Finset.univ.filter (fun l => I.ch.lf l = j), I.hn.sz l v) I.nKcb
      obtain ⟨Hv, Hm⟩ := height_chain_atR wf1 P.cols u hne I.X0 I.base_matrix_det_unit I.ch I.hn.hPn I.hn.sz I.nP nK
      have h1 := I.hn.le_hu (∑ j, N.l6 j) I.eig6
      refine exists_cu _ (fun v => I.hn.hPn + ∑ j, ∑ l ∈ Finset.univ.filter (fun l => I.ch.lf l = j), I.hn.sz l v -
        Real.log (P.cols.κ v) - minOver (fun p => ∑ j, Real.log (P.cols.lam j Bs.μ0 p v))) _ hX (fun v => Or.inr (Hv v)) ?_
      linarith [Hm, h1]
  ·
    have hB := P.base.boundsMu _root_.Formalism.DivisorInequality.slope_bounds specDet reduction_lemma_zero latticeGlue ramBasic wf0 P.extra.untw I.eb I.heb
      I.Sy I.Sy_tw I.G0 I.LG I.E3 I.E2 I.gy I.ηy I.bi I.bLG I.biv I.borderedMinorImage I.twisted_third_sum_le
    have de0 : 0 ≤ N.de := I.de0
    have deQ : 3 * N.de * I.Q ≤ 1 := I.deQ
    have de3 : N.de ≤ 1 / 3 := by nlinarith [I.Q1]
    have hp := (P.extra.passage de0 de3 _ P.extra.fun0).2
    have hκ : P.cols.κ = P.base.κ := P.extra.level.2.1.symm
    set mu0 : ℝ := P.base.muCC - meanLog P.base.κ with hmu0def
    have hmu0 : mu0 ≤ boundBR P I.LG I.E3 I.E2 := by
      have : P.base.muCC ≤ meanLog P.base.κ + (∑ j, N.l3 j) +
          2 * (∑ j, ∑ y ∈ P.base.Tw, lw y * ((ramw y : ℝ) * N.F0 y j)) + I.LG +
          (∑ j, (N.E1 j + I.E2 j)) + I.E3 := hB
      simp only [boundBR, FoOfR, hmu0def]
      linarith
    have hpass : 3 * N.de * (mu0 + N.hh + 28 * N.la) + 28 * N.la ≤ 1 + R.C0 * (R.m * R.lam0) := by
      have h1 : 3 * N.de * (mu0 + N.hh + 28 * N.la) ≤ 3 * N.de * I.Q :=
        mul_le_mul_of_nonneg_left (by linarith [I.Qb]) (by linarith)
      have h2 : 28 * R.lam0 ≤ R.C0 * (R.m * R.lam0) := by
        have h3 : R.lam0 ≤ R.m * R.lam0 := by nlinarith [R.p14, R.p35]
        nlinarith [I.constant_ge_twenty_eight, R.p35, R.c1]
      linarith [I.la_le]
    have hC : P.cols.muCC - meanLog P.cols.κ ≤ mu0 + (3 * N.de * (mu0 + N.hh + 28 * N.la) + 28 * N.la) := by
      rw [hκ, hmu0def]
      have : P.cols.muCC ≤ P.base.muCC + 3 * N.de * (P.base.muCC + (N.hh - meanLog P.base.κ) + 28 * N.la) +
          28 * N.la := hp
      have e : P.base.muCC + (N.hh - meanLog P.base.κ) + 28 * N.la =
          P.base.muCC - meanLog P.base.κ + N.hh + 28 * N.la := by ring
      rw [e] at this
      linarith
    have hM : mu0 ≤ (∑ j, ∑ ρ, R.pq j * R.w j ρ * R.logOm) + 2 * FoOfR P +
        (I.El3 + I.LG + (∑ j, (N.E1 j + I.E2 j)) + I.E3) := by
      have h1 := I.L3main
      have h2 : boundBR P I.LG I.E3 I.E2 = (∑ j, N.l3 j) + 2 * FoOfR P + I.LG + (∑ j, (N.E1 j + I.E2 j)) + I.E3 := rfl
      linarith
    exact R.divIneq _ mu0 (FoOfR P) _ _ hC hM hpass I.errB

end GenericR

section ConcreteR

variable {K : Type} [Field K] [NumberField K] [StarRing K] {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {m : ℕ}

end ConcreteR

section ConcreteColR

open Formalism.BasicNotions Formalism.L2.Col

variable {X : Fields} {Pr : Primes X} {Rk : Ranks} {W : Wts X Pr.Word Rk} {Ch : Chars X Pr Rk.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {Sg : Set ℕ}
  {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {m : ℕ}

end ConcreteColR

end Formalism.L2.DIV
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Divisibility.ConstantGeTwentyEight =====
