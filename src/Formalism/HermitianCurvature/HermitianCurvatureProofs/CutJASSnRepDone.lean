module

public import Formalism.FormalDegreeBessel.StatementG
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJABddSSn
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParametersUPrimeForULower
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThtFacts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSIo
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedS
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCModConstCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThConst
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLExistsOf
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLIsoAlg
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLLieGrp
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGaugeLinesLeft
public import Formalism.HermitianCurvature.FrameExists2
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLAtMost
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLemB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTKLineCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_GCore_GenTransferKapCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLEig
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.ConstantOneMemNonvanishing
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCLRadT
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTKLine
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSAdj
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSLocal
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThConstS
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutRegFF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRhoExists
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GaugeConstructionHolds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SsnRepOfOpen2
import Formalism.HermitianCurvature.StatementI
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameEntries
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.FormalDegreeBessel.FinalG
import Mathlib.RingTheory.Etale.Weakly
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJABddKapNrmW
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LieBracketMultiplication
import Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTConnGaugeA
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSAdjH
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSLMat
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSTr
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGenTransferKPt
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedF

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitFam, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitPt, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSGen, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitExists, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSStab, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransit, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCLineNonzero, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCModConst, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.UpRelationSourceUnique, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.CrossSectionAtPoint, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.LineMove, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SRaiseSNorm, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDone

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitFam =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitFam", "h": "module\n\npublic import Formalism.FormalDegreeBessel.StatementG\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.StatementI\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.DT

noncomputable section

variable {k r : ℕ}

def fam (k r : ℕ) (e : Fin (k + 1) → Fin (2 * r + k + 1) → ℂ) : Fin (2 * r + k + 1) → Fin (2 * r + k + 1) → ℂ :=
  fun i => if h : r ≤ i.val ∧ i.val ≤ r + k then e ⟨i.val - r, by omega⟩ else bvec i

def ONb (k r : ℕ) (e : Fin (k + 1) → Fin (2 * r + k + 1) → ℂ) : Prop :=
  (∀ a, inWb k r (e a)) ∧
    ∀ a b, herm (Hpk k r) (e a) (e b) = if a = b then (if a.val = k then -1 else 1) else 0

theorem hpk_out_in {i j : Fin (2 * r + k + 1)} (hi : i.val < r ∨ r + k < i.val) (hj : r ≤ j.val ∧ j.val ≤ r + k) :
    Hpk k r i j = 0 ∧ Hpk k r j i = 0 := by
  constructor <;> simp only [Hpk] <;> split_ifs <;> first | rfl | (exfalso; omega)

theorem herm_bvec_bvec (i j : Fin (2 * r + k + 1)) : herm (Hpk k r) (bvec i) (bvec j) = Hpk k r j i := by
  simp [herm, bvec, dotProduct, Matrix.mulVec, Pi.single_apply]

theorem herm_bvec_w {i : Fin (2 * r + k + 1)} (hi : i.val < r ∨ r + k < i.val) {w : Fin (2 * r + k + 1) → ℂ}
    (hw : inWb k r w) : herm (Hpk k r) (bvec i) w = 0 := by
  have hc : ∀ l, (Hpk k r *ᵥ bvec i) l = Hpk k r l i := fun l => by
    simp [bvec, Matrix.mulVec, dotProduct, Pi.single_apply]
  simp only [herm, dotProduct, hc]
  apply Finset.sum_eq_zero
  intro l _
  by_cases hl : r ≤ l.val ∧ l.val ≤ r + k
  · rw [(hpk_out_in hi hl).2, mul_zero]
  · rw [Pi.star_apply, hw l (by omega), star_zero, zero_mul]

theorem herm_w_bvec {i : Fin (2 * r + k + 1)} (hi : i.val < r ∨ r + k < i.val) {w : Fin (2 * r + k + 1) → ℂ}
    (hw : inWb k r w) : herm (Hpk k r) w (bvec i) = 0 := by
  have hc : herm (Hpk k r) w (bvec i) = (Hpk k r *ᵥ w) i := by
    simp [herm, bvec, dotProduct, Pi.single_apply]
  rw [hc]
  simp only [Matrix.mulVec, dotProduct]
  apply Finset.sum_eq_zero
  intro l _
  by_cases hl : r ≤ l.val ∧ l.val ≤ r + k
  · rw [(hpk_out_in hi hl).1, zero_mul]
  · rw [hw l (by omega), mul_zero]

theorem fam_in {e : Fin (k + 1) → Fin (2 * r + k + 1) → ℂ} {i : Fin (2 * r + k + 1)} (h : r ≤ i.val ∧ i.val ≤ r + k) :
    fam k r e i = e ⟨i.val - r, by omega⟩ := by
  simp only [fam]
  rw [dite_eq_left h]

theorem fam_out {e : Fin (k + 1) → Fin (2 * r + k + 1) → ℂ} {i : Fin (2 * r + k + 1)} (h : i.val < r ∨ r + k < i.val) :
    fam k r e i = bvec i := by
  simp only [fam]
  rw [dite_eq_right]
  omega

theorem famGram {e : Fin (k + 1) → Fin (2 * r + k + 1) → ℂ} (he : ONb k r e) (i j : Fin (2 * r + k + 1)) :
    herm (Hpk k r) (fam k r e i) (fam k r e j) = Hpk k r j i := by
  by_cases hi : r ≤ i.val ∧ i.val ≤ r + k <;> by_cases hj : r ≤ j.val ∧ j.val ≤ r + k
  · rw [fam_in hi, fam_in hj, he.2]
    simp only [Hpk]
    split_ifs <;> (try simp only [Fin.ext_iff] at *) <;> first | rfl | (exfalso; omega)
  · rw [fam_in hi, fam_out (i := j) (by omega), herm_w_bvec (i := j) (by omega) (he.1 _),
      (hpk_out_in (i := j) (j := i) (by omega) hi).1]
  · rw [fam_out (i := i) (by omega), fam_in hj, herm_bvec_w (i := i) (by omega) (he.1 _),
      (hpk_out_in (i := i) (j := j) (by omega) hj).2]
  · rw [fam_out (i := i) (by omega), fam_out (i := j) (by omega), herm_bvec_bvec]

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.DT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitFam =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitPt =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitPt", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitFam\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJABddSSn\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameEntries\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParametersUPrimeForULower\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.DT

noncomputable section

variable {k r : ℕ}

def mk3 (k : ℕ) {n : ℕ} (v0 : Fin n → ℂ) (F : Fin (k - 1) → Fin n → ℂ) (zz : Fin n → ℂ) : Fin (k + 1) → Fin n → ℂ :=
  fun a => if h0 : a.val = 0 then v0 else if hk : a.val = k then zz else F ⟨a.val - 1, by have := a.isLt; omega⟩

theorem three_part_frame_zero {n : ℕ} {v0 zz : Fin n → ℂ} {F : Fin (k - 1) → Fin n → ℂ} {a : Fin (k + 1)} (h : a.val = 0) :
    mk3 k v0 F zz a = v0 := by
  unfold mk3; rw [dite_eq_left h]

theorem three_part_frame_last {n : ℕ} {v0 zz : Fin n → ℂ} {F : Fin (k - 1) → Fin n → ℂ} (hk : 1 ≤ k) {a : Fin (k + 1)}
    (h : a.val = k) : mk3 k v0 F zz a = zz := by
  unfold mk3; rw [dite_eq_right (by omega), dite_eq_left h]

theorem three_part_frame_middle {n : ℕ} {v0 zz : Fin n → ℂ} {F : Fin (k - 1) → Fin n → ℂ} {a : Fin (k + 1)} (h0 : a.val ≠ 0)
    (hk : a.val ≠ k) : mk3 k v0 F zz a = F ⟨a.val - 1, by have := a.isLt; omega⟩ := by
  unfold mk3; rw [dite_eq_right h0, dite_eq_right hk]

theorem three_part_frame_orthonormal (hk : 2 ≤ k) {v0 zz : Fin (2 * r + k + 1) → ℂ} {F : Fin (k - 1) → Fin (2 * r + k + 1) → ℂ}
    (hv0 : inWb k r v0) (hzz : inWb k r zz) (hF : ∀ j, inWb k r (F j))
    (h00 : herm (Hpk k r) v0 v0 = 1) (hzz1 : herm (Hpk k r) zz zz = -1) (h0z : herm (Hpk k r) v0 zz = 0)
    (hF0 : ∀ j, herm (Hpk k r) (F j) v0 = 0) (hFz : ∀ j, herm (Hpk k r) (F j) zz = 0)
    (hFF : ∀ i j, herm (Hpk k r) (F i) (F j) = if i = j then 1 else 0) : ONb k r (mk3 k v0 F zz) := by
  have hz0 : herm (Hpk k r) zz v0 = 0 := by rw [DU.hswap, h0z, map_zero]
  have h0F : ∀ j, herm (Hpk k r) v0 (F j) = 0 := fun j => by rw [DU.hswap, hF0 j, map_zero]
  have hzF : ∀ j, herm (Hpk k r) zz (F j) = 0 := fun j => by rw [DU.hswap, hFz j, map_zero]
  constructor
  · intro a
    by_cases h0 : a.val = 0
    · rw [three_part_frame_zero h0]; exact hv0
    · by_cases hl : a.val = k
      · rw [three_part_frame_last (by omega) hl]; exact hzz
      · rw [three_part_frame_middle h0 hl]; exact hF _
  · intro a b
    by_cases ha0 : a.val = 0
    · rw [three_part_frame_zero ha0]
      by_cases hb0 : b.val = 0
      · rw [three_part_frame_zero hb0, h00, if_pos (Fin.ext (by omega)), if_neg (by omega)]
      · rw [if_neg (fun h => hb0 (by rw [← h]; exact ha0))]
        by_cases hbl : b.val = k
        · rw [three_part_frame_last (by omega) hbl, h0z]
        · rw [three_part_frame_middle hb0 hbl, h0F]
    · by_cases hal : a.val = k
      · rw [three_part_frame_last (by omega) hal]
        by_cases hb0 : b.val = 0
        · rw [three_part_frame_zero hb0, hz0, if_neg (fun h => ha0 (by rw [h]; exact hb0))]
        · by_cases hbl : b.val = k
          · rw [three_part_frame_last (by omega) hbl, hzz1, if_pos (Fin.ext (by omega)), if_pos hal]
          · rw [three_part_frame_middle hb0 hbl, hzF, if_neg (fun h => hbl (by rw [← h]; exact hal))]
      · rw [three_part_frame_middle ha0 hal]
        by_cases hb0 : b.val = 0
        · rw [three_part_frame_zero hb0, hF0, if_neg (fun h => ha0 (by rw [h]; exact hb0))]
        · by_cases hbl : b.val = k
          · rw [three_part_frame_last (by omega) hbl, hFz, if_neg (fun h => hal (by rw [h]; exact hbl))]
          · rw [three_part_frame_middle hb0 hbl, hFF]
            by_cases hab : a = b
            · subst hab; rw [if_pos rfl, if_pos rfl, if_neg hal]
            · have hv : a.val ≠ b.val := fun h => hab (Fin.ext h)
              rw [if_neg (fun h => hv (by have := congrArg Fin.val h; simp at this; omega)), if_neg hab]

section pt

variable {z z' : Fin (2 * r + k + 1) → ℂ} {μsec : ℂ → Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ}

theorem pt_facts (hz : inWb k r z) (hz' : inWb k r z') (hT : 0 < Tz k r z) (hT' : 0 < Tz k r z')
    (hsec : IsSection k r z z' μsec) {ζ : ℂ} (hζ : Tz k r z * Tz k r z' < Complex.normSq ζ) :
    inWb k r (SSn.nu0 k r z z' μsec ζ) ∧ herm (Hpk k r) (SSn.nu0 k r z z' μsec ζ) z = 0 ∧
    herm (Hpk k r) (SSn.nu0 k r z z' μsec ζ) (SSn.nu0 k r z z' μsec ζ) = 1 ∧
    SSn.prWv k r z (SSn.nu0 k r z z' μsec ζ) = SSn.nu0 k r z z' μsec ζ ∧
    inWb k r (SSn.nu0' k r z z' μsec ζ) ∧ herm (Hpk k r) (SSn.nu0' k r z z' μsec ζ) z' = 0 ∧
    herm (Hpk k r) (SSn.nu0' k r z z' μsec ζ) (SSn.nu0' k r z z' μsec ζ) = 1 ∧
    SSn.prWv k r z' (SSn.nu0' k r z z' μsec ζ) = SSn.nu0' k r z z' μsec ζ := by
  obtain ⟨h1, h2, h3, h4⟩ := DU.base hz hz' hT hT' hsec hζ
  have hG := NFRadRedA.uwb_glev (NFRadRedA.muZ_uwb hsec hζ)
  have hGi := FrameEntries.glev_inv hG
  have hy : inWb k r (NF.muZ k r μsec ζ *ᵥ z') := Qx8.inWb_mulVec hG hz'
  have hyi : inWb k r ((NF.muZ k r μsec ζ)⁻¹ *ᵥ z) := Qx8.inWb_mulVec hGi hz
  have hνW : inWb k r (SSn.nu0 k r z z' μsec ζ) := by
    show inWb k r (SSn.unitH k r (SSn.prWv k r z (NF.muZ k r μsec ζ *ᵥ z')))
    unfold SSn.unitH
    exact Qx8.inWb_smul (DU.prWv_inWb hz hy) _
  have hνW' : inWb k r (SSn.nu0' k r z z' μsec ζ) := by
    show inWb k r (SSn.unitH k r (SSn.prWv k r z' ((NF.muZ k r μsec ζ)⁻¹ *ᵥ z)))
    unfold SSn.unitH
    exact Qx8.inWb_smul (DU.prWv_inWb hz' hyi) _
  refine ⟨hνW, ?_, h2, h1, hνW', ?_, h4, h3⟩
  · rw [← h1]; exact DU.prWv_perp hT hνW
  · rw [← h3]; exact DU.prWv_perp hT' hνW'

theorem mu_frame (hz : inWb k r z) (hz' : inWb k r z') (hT : 0 < Tz k r z) (hT' : 0 < Tz k r z')
    (hsec : IsSection k r z z' μsec) {ζ : ℂ} (hζ : Tz k r z * Tz k r z' < Complex.normSq ζ)
    {m : ℕ} {Fr : Fin m → Fin (2 * r + k + 1) → ℂ}
    (hFr : Q.IsFrameOf k r [z', SSn.nu0' k r z z' μsec ζ] Fr) :
    (∀ j, inWb k r (NF.muZ k r μsec ζ *ᵥ Fr j)) ∧
    (∀ i j, herm (Hpk k r) (NF.muZ k r μsec ζ *ᵥ Fr i) (NF.muZ k r μsec ζ *ᵥ Fr j) = if i = j then 1 else 0) ∧
    (∀ j, herm (Hpk k r) (NF.muZ k r μsec ζ *ᵥ Fr j) z = 0) ∧
    ∀ j, herm (Hpk k r) (NF.muZ k r μsec ζ *ᵥ Fr j) (SSn.nu0 k r z z' μsec ζ) = 0 := by
  obtain ⟨-, -, hνν, -, -, -, hν'ν', -⟩ := pt_facts hz hz' hT hT' hsec hζ
  set μ := NF.muZ k r μsec ζ with hμ
  have hG := NFRadRedA.uwb_glev (NFRadRedA.muZ_uwb hsec hζ)
  have hU : μ ∈ UH (Hpk k r) := hG.1
  have hGi := FrameEntries.glev_inv hG
  have hy : inWb k r (μ *ᵥ z') := Qx8.inWb_mulVec hG hz'
  have hyi : inWb k r (μ⁻¹ *ᵥ z) := Qx8.inWb_mulVec hGi hz
  have hFz' : ∀ j, herm (Hpk k r) (Fr j) z' = 0 := fun j => hFr.2.2 j z' (by simp)
  have hFν' : ∀ j, herm (Hpk k r) (Fr j) (SSn.nu0' k r z z' μsec ζ) = 0 := fun j => hFr.2.2 j _ (by simp)

  have hz0 : ∀ j, herm (Hpk k r) (μ *ᵥ Fr j) z = 0 := by
    intro j
    rw [FrameEntries.herm_inv hU]
    set t : ℂ := (((Real.sqrt (herm (Hpk k r) (SSn.prWv k r z' (μ⁻¹ *ᵥ z)) (SSn.prWv k r z' (μ⁻¹ *ᵥ z))).re)⁻¹ : ℝ) : ℂ)
      with ht
    have hν' : SSn.nu0' k r z z' μsec ζ = t • SSn.prWv k r z' (μ⁻¹ *ᵥ z) := rfl
    have ht0 : t ≠ 0 := by
      intro h0
      rw [hν', h0, zero_smul] at hν'ν'
      simp [herm] at hν'ν'
    have h1 := hFν' j
    rw [hν', DU.hsmul_r] at h1
    have h2 : herm (Hpk k r) (Fr j) (SSn.prWv k r z' (μ⁻¹ *ᵥ z)) = 0 := by
      rcases mul_eq_zero.1 h1 with h | h
      · exact absurd ((map_eq_zero (starRingEnd ℂ)).1 h) ht0
      · exact h
    rw [DU.prWv_of hyi, DU.hadd_r, DU.hsmul_r, hFz' j, mul_zero, add_zero] at h2
    exact h2
  refine ⟨fun j => Qx8.inWb_mulVec hG (hFr.1 j), fun i j => by rw [Qx2.herm_uh hU]; exact hFr.2.1 i j, hz0, ?_⟩
  intro j
  set s : ℂ := (((Real.sqrt (herm (Hpk k r) (SSn.prWv k r z (μ *ᵥ z')) (SSn.prWv k r z (μ *ᵥ z'))).re)⁻¹ : ℝ) : ℂ)
  have hν : SSn.nu0 k r z z' μsec ζ = s • SSn.prWv k r z (μ *ᵥ z') := rfl
  rw [hν, DU.hsmul_r, DU.prWv_of hy, DU.hadd_r, DU.hsmul_r, hz0 j, Qx2.herm_uh hU, hFz' j]
  simp

theorem frame'_exists (hk : 2 ≤ k) (hz : inWb k r z) (hz' : inWb k r z') (hT : 0 < Tz k r z) (hT' : 0 < Tz k r z')
    (hsec : IsSection k r z z' μsec) {ζ : ℂ} (hζ : Tz k r z * Tz k r z' < Complex.normSq ζ) :
    ∃ Fr : Fin (k - 1) → Fin (2 * r + k + 1) → ℂ, Q.IsFrameOf k r [z', SSn.nu0' k r z z' μsec ζ] Fr := by
  obtain ⟨-, -, -, -, hW', hz'0, h11, -⟩ := pt_facts hz hz' hT hT' hsec hζ
  exact Topx1.typ_frame_exists k r (by omega) z' _ hz' hT' hW' hz'0 h11

end pt

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.DT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitPt =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSGen =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSGen", "h": "module\n\npublic import Formalism.FormalDegreeBessel.StatementG\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.StatementI\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.DT

noncomputable section

variable {n : ℕ}

def cols (x : Fin n → Fin n → ℂ) : Matrix (Fin n) (Fin n) ℂ := Matrix.of fun p i => x i p

theorem cols_mulVec (x : Fin n → Fin n → ℂ) (c : Fin n → ℂ) : cols x *ᵥ c = ∑ i, c i • x i := by
  funext p
  simp [cols, Matrix.mulVec, dotProduct, Finset.sum_apply, mul_comm]

theorem cols_mulVec_single (x : Fin n → Fin n → ℂ) (i : Fin n) : cols x *ᵥ Pi.single i 1 = x i := by
  rw [cols_mulVec, Finset.sum_eq_single i]
  · simp
  · intro b _ hb
    simp [Pi.single_eq_of_ne hb]
  · intro h
    exact absurd (Finset.mem_univ i) h

theorem mul_cols (A : Matrix (Fin n) (Fin n) ℂ) (x : Fin n → Fin n → ℂ) :
    A * cols x = cols (fun i => A *ᵥ x i) := by
  ext p i
  simp [cols, Matrix.mul_apply, Matrix.mulVec, dotProduct]

theorem gram_cols (H : Matrix (Fin n) (Fin n) ℂ) (x : Fin n → Fin n → ℂ) :
    (cols x)ᴴ * H * cols x = Matrix.of fun j i => herm H (x i) (x j) := by
  ext j i
  rw [Matrix.mul_assoc, mul_cols]
  simp [cols, Matrix.mul_apply, herm, dotProduct, Matrix.conjTranspose_apply]

theorem gram_eq {H : Matrix (Fin n) (Fin n) ℂ} {x : Fin n → Fin n → ℂ}
    (hx : ∀ i j, herm H (x i) (x j) = H j i) : (cols x)ᴴ * H * cols x = H := by
  rw [gram_cols]
  ext j i
  exact hx i j

theorem cols_unit {H : Matrix (Fin n) (Fin n) ℂ} (hH : IsUnit H.det) {x : Fin n → Fin n → ℂ}
    (hx : ∀ i j, herm H (x i) (x j) = H j i) : IsUnit (cols x).det := by
  have h := congrArg Matrix.det (gram_eq hx)
  rw [Matrix.det_mul] at h
  rw [← h] at hH
  exact isUnit_of_mul_isUnit_right hH

theorem wittGram (n : ℕ) (H : Matrix (Fin n) (Fin n) ℂ) (hH : IsUnit H.det) (x y : Fin n → Fin n → ℂ)
    (hx : ∀ i j, herm H (x i) (x j) = H j i) (hy : ∀ i j, herm H (y i) (y j) = H j i) :
    ∃ g ∈ UH H, ∀ i, g *ᵥ x i = y i := by
  have hX := cols_unit hH hx
  have gx := gram_eq hx
  have gy := gram_eq hy
  have e1 : (cols x)⁻¹ * cols x = 1 := Matrix.nonsing_inv_mul _ hX
  have e2 : cols x * (cols x)⁻¹ = 1 := Matrix.mul_nonsing_inv _ hX
  refine ⟨cols y * (cols x)⁻¹, ?_, ?_⟩
  · show (cols y * (cols x)⁻¹)ᴴ * H * (cols y * (cols x)⁻¹) = H
    calc (cols y * (cols x)⁻¹)ᴴ * H * (cols y * (cols x)⁻¹)
        = ((cols x)⁻¹)ᴴ * ((cols y)ᴴ * H * cols y) * (cols x)⁻¹ := by
          rw [Matrix.conjTranspose_mul]; simp only [Matrix.mul_assoc]
      _ = ((cols x)⁻¹)ᴴ * ((cols x)ᴴ * H * cols x) * (cols x)⁻¹ := by rw [gy, gx]
      _ = (cols x * (cols x)⁻¹)ᴴ * H * (cols x * (cols x)⁻¹) := by
          rw [Matrix.conjTranspose_mul]; simp only [Matrix.mul_assoc]
      _ = H := by rw [e2]; simp
  · intro i
    calc (cols y * (cols x)⁻¹) *ᵥ x i = (cols y * (cols x)⁻¹) *ᵥ (cols x *ᵥ Pi.single i 1) := by
          rw [cols_mulVec_single]
      _ = y i := by
          rw [Matrix.mulVec_mulVec, Matrix.mul_assoc, e1, Matrix.mul_one, cols_mulVec_single]

theorem extGram (n : ℕ) (H : Matrix (Fin n) (Fin n) ℂ) (hH : IsUnit H.det) (x : Fin n → Fin n → ℂ)
    (hx : ∀ i j, herm H (x i) (x j) = H j i) (A B : Matrix (Fin n) (Fin n) ℂ)
    (h : ∀ i, A *ᵥ x i = B *ᵥ x i) : A = B := by
  have hX := cols_unit hH hx
  have e : A * cols x = B * cols x := by
    rw [mul_cols, mul_cols]
    congr 1
    funext i
    exact h i
  calc A = A * cols x * (cols x)⁻¹ := by rw [Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hX, Matrix.mul_one]
    _ = B := by rw [e, Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hX, Matrix.mul_one]

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.DT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSGen =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitExists =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitExists", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitPt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitCut\nimport Formalism.FormalDegreeBessel.FinalG\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThtFacts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSGen\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSIo\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameEntries\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.DT

noncomputable section

variable {k r : ℕ}

theorem frame_family_middle_index {v0 zz : Fin (2 * r + k + 1) → ℂ} {F : Fin (k - 1) → Fin (2 * r + k + 1) → ℂ}
    {i : Fin (2 * r + k + 1)} (hi : i.val = r) : fam k r (mk3 k v0 F zz) i = v0 := by
  rw [fam_in (by omega), three_part_frame_zero (by show i.val - r = 0; omega)]

theorem frame_family_last_index {v0 zz : Fin (2 * r + k + 1) → ℂ} {F : Fin (k - 1) → Fin (2 * r + k + 1) → ℂ} (hk : 1 ≤ k)
    {i : Fin (2 * r + k + 1)} (hi : i.val = r + k) : fam k r (mk3 k v0 F zz) i = zz := by
  rw [fam_in (by omega), three_part_frame_last hk (by show i.val - r = k; omega)]

theorem frame_family_middle_range {v0 zz : Fin (2 * r + k + 1) → ℂ} {F : Fin (k - 1) → Fin (2 * r + k + 1) → ℂ}
    {i : Fin (2 * r + k + 1)} (hi : r + 1 ≤ i.val ∧ i.val < r + k) :
    fam k r (mk3 k v0 F zz) i = F ⟨i.val - r - 1, by omega⟩ := by
  rw [fam_in (by omega), three_part_frame_middle (by show i.val - r ≠ 0; omega) (by show i.val - r ≠ k; omega)]

theorem blockProjection_basisVector_eq_zero {i : Fin (2 * r + k + 1)} (hi : i.val < r ∨ r + k < i.val) : SSn.wbP k r (bvec i) = 0 := by
  funext p
  unfold SSn.wbP bvec
  split_ifs with hp
  · rw [Pi.single_apply, if_neg (by rintro rfl; omega)]; rfl
  · rfl

theorem prWv_bvec_out (z' : Fin (2 * r + k + 1) → ℂ) {i : Fin (2 * r + k + 1)} (hi : i.val < r ∨ r + k < i.val) :
    SSn.prWv k r z' (bvec i) = 0 := by
  unfold SSn.prWv
  rw [blockProjection_basisVector_eq_zero hi]
  simp [herm]

theorem prWv_self {z' : Fin (2 * r + k + 1) → ℂ} (hz' : inWb k r z') (hT' : 0 < Tz k r z') :
    SSn.prWv k r z' z' = 0 := by
  rw [DU.prWv_of hz', FrameEntries.herm_self]
  have hT0 : ((Tz k r z' : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hT'.ne'
  rw [neg_div, div_self hT0, neg_smul, one_smul, add_neg_cancel]

theorem herm_zero_l (w : Fin (2 * r + k + 1) → ℂ) : herm (Hpk k r) 0 w = 0 := by simp [herm]

section pt

variable {z z' : Fin (2 * r + k + 1) → ℂ} {μsec : ℂ → Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ}

theorem io_fam (hk : 2 ≤ k) (hz : inWb k r z) (hz' : inWb k r z') (hT : 0 < Tz k r z) (hT' : 0 < Tz k r z')
    (hsec : IsSection k r z z' μsec) {ζ : ℂ} (hζ : Tz k r z * Tz k r z' < Complex.normSq ζ)
    {Fr : Fin (k - 1) → Fin (2 * r + k + 1) → ℂ} (hFr : Q.IsFrameOf k r [z', SSn.nu0' k r z z' μsec ζ] Fr) (c : ℂ)
    (i : Fin (2 * r + k + 1)) :
    SSn.io0 k r z z' μsec ζ *ᵥ fam k r (mk3 k (SSn.nu0' k r z z' μsec ζ) Fr (c • z')) i =
      if h : r + 1 ≤ i.val ∧ i.val < r + k then NF.muZ k r μsec ζ *ᵥ Fr ⟨i.val - r - 1, by omega⟩ else 0 := by
  obtain ⟨-, -, -, -, -, -, h11, hfix⟩ := pt_facts hz hz' hT hT' hsec hζ
  rw [ioMulVec]
  by_cases hout : i.val < r ∨ r + k < i.val
  · rw [fam_out hout, prWv_bvec_out z' hout, herm_zero_l, zero_smul, sub_zero, Matrix.mulVec_zero,
      dite_eq_right (by omega)]
  · by_cases h0 : i.val = r
    · rw [frame_family_middle_index h0, hfix, h11, one_smul, sub_self, Matrix.mulVec_zero, dite_eq_right (by omega)]
    · by_cases hl : i.val = r + k
      · rw [frame_family_last_index (by omega) hl, TF.prWv_smul, prWv_self hz' hT', smul_zero, herm_zero_l, zero_smul, sub_zero,
          Matrix.mulVec_zero, dite_eq_right (by omega)]
      · have hm : r + 1 ≤ i.val ∧ i.val < r + k := by omega
        rw [frame_family_middle_range hm, dite_eq_left hm,
          DU.prWv_fix (hFr.1 _) (hFr.2.2 _ z' (by simp)), hFr.2.2 _ _ (by simp), zero_smul, sub_zero]

end pt

theorem hpk_det_unit : IsUnit (Hpk k r).det :=
  Matrix.isUnit_det_of_left_inverse (Formalism.QuantumDeterminants.hpkFacts k r).2.1

theorem cz_facts {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (hT : 0 < Tz k r z) :
    inWb k r ((((Real.sqrt (Tz k r z))⁻¹ : ℝ) : ℂ) • z) ∧
    herm (Hpk k r) ((((Real.sqrt (Tz k r z))⁻¹ : ℝ) : ℂ) • z) ((((Real.sqrt (Tz k r z))⁻¹ : ℝ) : ℂ) • z) = -1 ∧
    (((Real.sqrt (Tz k r z))⁻¹ : ℝ) : ℂ) ≠ 0 := by
  have hs : 0 < Real.sqrt (Tz k r z) := Real.sqrt_pos.2 hT
  refine ⟨Qx8.inWb_smul hz _, ?_, by exact_mod_cast (inv_pos.2 hs).ne'⟩
  rw [DU.hsmul_l, DU.hsmul_r, FrameEntries.herm_self, Complex.conj_ofReal]
  have hsq : Real.sqrt (Tz k r z) ^ 2 = Tz k r z := Real.sq_sqrt hT.le
  have hsq' : ((Real.sqrt (Tz k r z) : ℝ) : ℂ) ^ 2 = ((Tz k r z : ℝ) : ℂ) := by exact_mod_cast hsq
  have hne : ((Real.sqrt (Tz k r z) : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hs.ne'
  push_cast
  field_simp
  rw [hsq']

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.DT

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC


noncomputable section

open DT in
theorem datum_transit_existence : DTExists := by
  intro k r z z' μsec hk hz hz' hT hT' hsec ζ₁ ζ₂ h₁ h₂
  obtain ⟨Fr₁, hFr₁⟩ := frame'_exists hk hz hz' hT hT' hsec h₁
  obtain ⟨Fr₂, hFr₂⟩ := frame'_exists hk hz hz' hT hT' hsec h₂
  obtain ⟨hW₁, hνz₁, hνν₁, -, hW₁', hνz₁', hνν₁', -⟩ := pt_facts hz hz' hT hT' hsec h₁
  obtain ⟨hW₂, hνz₂, hνν₂, -, hW₂', hνz₂', hνν₂', -⟩ := pt_facts hz hz' hT hT' hsec h₂
  obtain ⟨mW₁, mO₁, mz₁, mν₁⟩ := mu_frame hz hz' hT hT' hsec h₁ hFr₁
  obtain ⟨mW₂, mO₂, mz₂, mν₂⟩ := mu_frame hz hz' hT hT' hsec h₂ hFr₂
  obtain ⟨czW, czz, cz0⟩ := cz_facts hz hT
  obtain ⟨czW', czz', cz0'⟩ := cz_facts hz' hT'
  set c := (((Real.sqrt (Tz k r z))⁻¹ : ℝ) : ℂ) with hc
  set c' := (((Real.sqrt (Tz k r z'))⁻¹ : ℝ) : ℂ) with hc'
  have hνc : ∀ ν, herm (Hpk k r) ν z = 0 → herm (Hpk k r) ν (c • z) = 0 := fun ν h => by
    rw [DU.hsmul_r, h, mul_zero]
  have hνc' : ∀ ν, herm (Hpk k r) ν z' = 0 → herm (Hpk k r) ν (c' • z') = 0 := fun ν h => by
    rw [DU.hsmul_r, h, mul_zero]
  have hFz' : ∀ {ζ : ℂ} {Fr : Fin (k - 1) → Fin (2 * r + k + 1) → ℂ},
      Q.IsFrameOf k r [z', SSn.nu0' k r z z' μsec ζ] Fr → ∀ j, herm (Hpk k r) (Fr j) z' = 0 :=
    fun hF j => hF.2.2 j z' (by simp)
  have hFν' : ∀ {ζ : ℂ} {Fr : Fin (k - 1) → Fin (2 * r + k + 1) → ℂ},
      Q.IsFrameOf k r [z', SSn.nu0' k r z z' μsec ζ] Fr → ∀ j, herm (Hpk k r) (Fr j) (SSn.nu0' k r z z' μsec ζ) = 0 :=
    fun hF j => hF.2.2 j _ (by simp)

  have oX' := three_part_frame_orthonormal hk hW₁' czW' hFr₁.1 hνν₁' czz' (hνc' _ hνz₁') (hFν' hFr₁) (fun j => hνc' _ (hFz' hFr₁ j)) hFr₁.2.1
  have oY' := three_part_frame_orthonormal hk hW₂' czW' hFr₂.1 hνν₂' czz' (hνc' _ hνz₂') (hFν' hFr₂) (fun j => hνc' _ (hFz' hFr₂ j)) hFr₂.2.1
  have oX := three_part_frame_orthonormal hk hW₁ czW mW₁ hνν₁ czz (hνc _ hνz₁) mν₁ (fun j => hνc _ (mz₁ j)) mO₁
  have oY := three_part_frame_orthonormal hk hW₂ czW mW₂ hνν₂ czz (hνc _ hνz₂) mν₂ (fun j => hνc _ (mz₂ j)) mO₂
  set x' := fam k r (mk3 k (SSn.nu0' k r z z' μsec ζ₁) Fr₁ (c' • z')) with hx'
  set y' := fam k r (mk3 k (SSn.nu0' k r z z' μsec ζ₂) Fr₂ (c' • z')) with hy'
  set x := fam k r (mk3 k (SSn.nu0 k r z z' μsec ζ₁) (fun j => NF.muZ k r μsec ζ₁ *ᵥ Fr₁ j) (c • z)) with hx
  set y := fam k r (mk3 k (SSn.nu0 k r z z' μsec ζ₂) (fun j => NF.muZ k r μsec ζ₂ *ᵥ Fr₂ j) (c • z)) with hy
  obtain ⟨h', hh'U, hh'⟩ := wittGram _ (Hpk k r) hpk_det_unit x' y' (famGram oX') (famGram oY')
  obtain ⟨h, hhU, hh⟩ := wittGram _ (Hpk k r) hpk_det_unit x y (famGram oX) (famGram oY)
  have pr : r ≤ r ∧ r ≤ r + k := by omega
  let iR : Fin (2 * r + k + 1) := ⟨r, by omega⟩
  let iL : Fin (2 * r + k + 1) := ⟨r + k, by omega⟩
  have fixOut : ∀ (g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)
      (e e' : Fin (k + 1) → Fin (2 * r + k + 1) → ℂ), (∀ i, g *ᵥ fam k r e i = fam k r e' i) →
      ∀ a : Fin r, g *ᵥ bvec (eI k r a) = bvec (eI k r a) ∧ g *ᵥ bvec (esI k r a) = bvec (esI k r a) := by
    intro g e e' hg a
    have h1 := hg (eI k r a)
    have h2 := hg (esI k r a)
    rw [fam_out (by simp [eI]), fam_out (by simp [eI])] at h1
    rw [fam_out (by simp [esI]; omega), fam_out (by simp [esI]; omega)] at h2
    exact ⟨h1, h2⟩
  have fixZ : ∀ (g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (w : Fin (2 * r + k + 1) → ℂ) (t : ℂ),
      t ≠ 0 → g *ᵥ (t • w) = t • w → g *ᵥ w = w := by
    intro g w t ht h
    rw [Matrix.mulVec_smul] at h
    exact smul_right_injective _ ht h
  have hhz : h *ᵥ z = z := by
    have := hh iL
    rw [hx, hy, frame_family_last_index (by omega) rfl, frame_family_last_index (by omega) rfl] at this
    exact fixZ h z c cz0 this
  have hh'z : h' *ᵥ z' = z' := by
    have := hh' iL
    rw [hx', hy', frame_family_last_index (by omega) rfl, frame_family_last_index (by omega) rfl] at this
    exact fixZ h' z' c' cz0' this
  have hmem : h ∈ UWset k r z := ⟨hhU, fixOut h _ _ hh, hhz⟩
  have hmem' : h' ∈ UWset k r z' := ⟨hh'U, fixOut h' _ _ hh', hh'z⟩
  refine ⟨h, hmem, h', hmem', ?_, ?_, ?_⟩
  · have := hh iR
    rw [hx, hy, frame_family_middle_index rfl, frame_family_middle_index rfl] at this
    exact this
  · have := hh' iR
    rw [hx', hy', frame_family_middle_index rfl, frame_family_middle_index rfl] at this
    exact this
  · have key : h * SSn.io0 k r z z' μsec ζ₁ = SSn.io0 k r z z' μsec ζ₂ * h' := by
      refine extGram _ (Hpk k r) hpk_det_unit x' (famGram oX') _ _ fun i => ?_
      rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hh' i, hx', io_fam hk hz hz' hT hT' hsec h₁ hFr₁ c' i,
        hy', io_fam hk hz hz' hT hT' hsec h₂ hFr₂ c' i]
      by_cases hm : r + 1 ≤ i.val ∧ i.val < r + k
      · rw [dite_eq_left hm, dite_eq_left hm]
        have := hh i
        rw [hx, hy, frame_family_middle_range hm, frame_family_middle_range hm] at this
        exact this
      · rw [dite_eq_right hm, dite_eq_right hm, Matrix.mulVec_zero]
    rw [key, Matrix.mul_assoc, FrameEntries.mul_inv_uh hh'U, Matrix.mul_one]

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitExists =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSStab =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSStab", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSIo\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJABddKapNrmW\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameEntries\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LieBracketMultiplication\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedS\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC

noncomputable section

namespace DT

variable {k r : ℕ}

theorem eP_uw {z' : Fin (2 * r + k + 1) → ℂ} (hz' : inWb k r z') {g : B.Mat k r} (hg : g ∈ UWset k r z')
    (ν v : Fin (2 * r + k + 1) → ℂ) : eP k r z' (g *ᵥ ν) (g *ᵥ v) = g *ᵥ eP k r z' ν v := by
  unfold eP
  rw [kap_prWv_mulVec hz' hg, Qx2.herm_uh hg.1, Matrix.mulVec_sub, Matrix.mulVec_smul]

theorem decomp (z' ν v : Fin (2 * r + k + 1) → ℂ) :
    ∃ (o : Fin (2 * r + k + 1) → ℂ) (α β : ℂ), (∀ i : Fin (2 * r + k + 1), r ≤ i.val → i.val ≤ r + k → o i = 0) ∧
      v = eP k r z' ν v + o + α • z' + β • ν := by
  refine ⟨v - SSn.wbP k r v, -(herm (Hpk k r) (SSn.wbP k r v) z' / (Tz k r z' : ℂ)),
    herm (Hpk k r) (SSn.prWv k r z' v) ν, ?_, ?_⟩
  · intro i h1 h2
    simp [SSn.wbP, h1, h2]
  · have hP : SSn.prWv k r z' v =
        SSn.wbP k r v + (herm (Hpk k r) (SSn.wbP k r v) z' / (Tz k r z' : ℂ)) • z' := rfl
    unfold eP
    generalize herm (Hpk k r) (SSn.prWv k r z' v) ν = β
    rw [hP, neg_smul]
    abel

theorem fixOut {g : B.Mat k r}
    (hg : ∀ a : Fin r, g *ᵥ bvec (eI k r a) = bvec (eI k r a) ∧ g *ᵥ bvec (esI k r a) = bvec (esI k r a))
    {o : Fin (2 * r + k + 1) → ℂ} (ho : ∀ i : Fin (2 * r + k + 1), r ≤ i.val → i.val ≤ r + k → o i = 0) :
    g *ᵥ o = o := by
  have hcol : ∀ j : Fin (2 * r + k + 1), (j.val < r ∨ r + k < j.val) →
      g *ᵥ Pi.single j 1 = Pi.single j 1 := by
    intro j hj
    rcases hj with hj | hj
    · have h1 := (hg ⟨j.val, hj⟩).1
      have e : eI k r ⟨j.val, hj⟩ = j := Fin.ext rfl
      rw [e] at h1
      exact h1
    · have hlt : 2 * r + k - j.val < r := by omega
      have h1 := (hg ⟨2 * r + k - j.val, hlt⟩).2
      have e : esI k r ⟨2 * r + k - j.val, hlt⟩ = j := Fin.ext (by simp only [esI]; omega)
      rw [e] at h1
      exact h1
  have hent : ∀ i j : Fin (2 * r + k + 1), (g *ᵥ Pi.single j 1) i = g i j := by
    intro i j
    simp [Matrix.mulVec, dotProduct, Pi.single_apply]
  funext i
  simp only [Matrix.mulVec, dotProduct]
  calc ∑ j, g i j * o j = ∑ j, (if j = i then o i else 0) := by
        refine Finset.sum_congr rfl fun j _ => ?_
        by_cases hj : r ≤ j.val ∧ j.val ≤ r + k
        · rw [ho j hj.1 hj.2, mul_zero]
          split_ifs with hji
          · rw [← hji, ho j hj.1 hj.2]
          · rfl
        · rw [← hent i j, hcol j (by omega), Pi.single_apply]
          split_ifs with hij hji hji
          · rw [one_mul, hij]
          · exact absurd hij.symm hji
          · exact absurd hji.symm hij
          · rw [zero_mul]
    _ = o i := by simp

theorem core {z z' ν₁ ν₂ ν₁' ν₂' : Fin (2 * r + k + 1) → ℂ} {μ₁ μ₂ h h' a b : B.Mat k r}
    (hz' : inWb k r z') (hμ₁ : μ₁ ∈ Q.Glev k r (Fin.last r)) (hμ₂ : μ₂ ∈ Q.Glev k r (Fin.last r))
    (hh : h ∈ UWset k r z) (hh' : h' ∈ UWset k r z') (ha : a ∈ UWset k r z) (hb : b ∈ UWset k r z')
    (hab : a * μ₂ * b = μ₂) (e1 : h *ᵥ ν₁ = ν₂) (e2 : h' *ᵥ ν₁' = ν₂')
    (e3 : ∀ v, h *ᵥ (μ₁ *ᵥ eP k r z' ν₁' (h'⁻¹ *ᵥ v)) = μ₂ *ᵥ eP k r z' ν₂' v)
    {s₁ c₁ s₂ c₂ s₁' c₁' s₂' c₂' : ℂ} (hs₁ : s₁ ≠ 0)
    (f1 : ν₁ = s₁ • (μ₁ *ᵥ z' + c₁ • z)) (f2 : ν₂ = s₂ • (μ₂ *ᵥ z' + c₂ • z))
    (f1' : ν₁' = s₁' • (μ₁⁻¹ *ᵥ z + c₁' • z')) (f2' : ν₂' = s₂' • (μ₂⁻¹ *ᵥ z + c₂' • z')) :
    h⁻¹ * a * h * μ₁ * (h'⁻¹ * b * h') = μ₁ := by
  have hai : a⁻¹ * a = 1 := NFRadRedS.uw_inv_mul ha
  have hhi : h⁻¹ * h = 1 := NFRadRedS.uw_inv_mul hh
  have hh'i : h'⁻¹ * h' = 1 := NFRadRedS.uw_inv_mul hh'
  have hμ₂i : μ₂⁻¹ * μ₂ = 1 := FrameEntries.inv_mul_uh hμ₂.1
  have hμ₂m : μ₂ * μ₂⁻¹ = 1 := FrameEntries.mul_inv_uh hμ₂.1
  have hμ₁m : μ₁ * μ₁⁻¹ = 1 := FrameEntries.mul_inv_uh hμ₁.1
  have hi' : h'⁻¹ ∈ UWset k r z' := LieBracketMultiplication.uw_inv hh'
  have A0 : a *ᵥ (μ₂ *ᵥ z') = μ₂ *ᵥ z' := by
    have h1 : (a * μ₂ * b) *ᵥ z' = μ₂ *ᵥ z' := by rw [hab]
    rwa [← Matrix.mulVec_mulVec, hb.2.2, ← Matrix.mulVec_mulVec] at h1
  have A : a *ᵥ ν₂ = ν₂ := by
    rw [f2, Matrix.mulVec_smul, Matrix.mulVec_add, Matrix.mulVec_smul, A0, ha.2.2]
  have B0 : b *ᵥ (μ₂⁻¹ *ᵥ z) = μ₂⁻¹ *ᵥ z := by
    have h1 : b * μ₂⁻¹ = μ₂⁻¹ * a⁻¹ := by
      calc b * μ₂⁻¹ = μ₂⁻¹ * (a⁻¹ * a) * μ₂ * b * μ₂⁻¹ := by
            rw [hai, Matrix.mul_one, hμ₂i, Matrix.one_mul]
        _ = μ₂⁻¹ * a⁻¹ * (a * μ₂ * b) * μ₂⁻¹ := by simp only [Matrix.mul_assoc]
        _ = μ₂⁻¹ * a⁻¹ := by rw [hab, Matrix.mul_assoc, hμ₂m, Matrix.mul_one]
    rw [Matrix.mulVec_mulVec, h1, ← Matrix.mulVec_mulVec, (LieBracketMultiplication.uw_inv ha).2.2]
  have B : b *ᵥ ν₂' = ν₂' := by
    rw [f2', Matrix.mulVec_smul, Matrix.mulVec_add, Matrix.mulVec_smul, B0, hb.2.2]
  have e2i : h'⁻¹ *ᵥ ν₂' = ν₁' := by
    rw [← e2, Matrix.mulVec_mulVec, hh'i, Matrix.one_mulVec]
  have C1 : ∀ v, h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ eP k r z' ν₂' v)) = μ₂ *ᵥ eP k r z' ν₂' v := by
    intro v
    rw [← eP_uw hz' hi', e2i]
    exact e3 v
  have Z0 : μ₁ *ᵥ z' = s₁⁻¹ • ν₁ - c₁ • z := by
    rw [f1, smul_smul, inv_mul_cancel₀ hs₁, one_smul, add_sub_cancel_right]
  have Z1 : h *ᵥ (μ₁ *ᵥ z') = s₁⁻¹ • ν₂ - c₁ • z := by
    rw [Z0, Matrix.mulVec_sub, Matrix.mulVec_smul, Matrix.mulVec_smul, e1, hh.2.2]
  have Z2 : a *ᵥ (h *ᵥ (μ₁ *ᵥ z')) = h *ᵥ (μ₁ *ᵥ z') := by
    rw [Z1, Matrix.mulVec_sub, Matrix.mulVec_smul, Matrix.mulVec_smul, A, ha.2.2]
  have V0 : μ₁ *ᵥ ν₁' = s₁' • (z + c₁' • (μ₁ *ᵥ z')) := by
    rw [f1', Matrix.mulVec_smul, Matrix.mulVec_add, Matrix.mulVec_smul, Matrix.mulVec_mulVec, hμ₁m,
      Matrix.one_mulVec]
  have V1 : h *ᵥ (μ₁ *ᵥ ν₁') = s₁' • (z + c₁' • (h *ᵥ (μ₁ *ᵥ z'))) := by
    rw [V0, Matrix.mulVec_smul, Matrix.mulVec_add, Matrix.mulVec_smul, hh.2.2]
  have V2 : a *ᵥ (h *ᵥ (μ₁ *ᵥ ν₁')) = h *ᵥ (μ₁ *ᵥ ν₁') := by
    rw [V1, Matrix.mulVec_smul, Matrix.mulVec_add, Matrix.mulVec_smul, ha.2.2, Z2]
  have key : ∀ v, a *ᵥ (h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ (b *ᵥ v)))) = h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ v)) := by
    intro v
    obtain ⟨o, α, β, ho, hv⟩ := decomp z' ν₂' v
    have E : a *ᵥ (h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ (b *ᵥ eP k r z' ν₂' v)))) =
        h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ eP k r z' ν₂' v)) := by
      have h1 : b *ᵥ eP k r z' ν₂' v = eP k r z' ν₂' (b *ᵥ v) := by
        rw [← eP_uw hz' hb, B]
      rw [h1, C1, C1, ← h1, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hab]
    have O : a *ᵥ (h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ (b *ᵥ o)))) = h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ o)) := by
      rw [fixOut hb.2.1 ho, fixOut hi'.2.1 ho, fixOut (fun c => hμ₁.2 c (by simp)) ho, fixOut hh.2.1 ho,
        fixOut ha.2.1 ho]
    have Zc : a *ᵥ (h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ (b *ᵥ z')))) = h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ z')) := by
      rw [hb.2.2, hi'.2.2, Z2]
    have Vc : a *ᵥ (h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ (b *ᵥ ν₂')))) = h *ᵥ (μ₁ *ᵥ (h'⁻¹ *ᵥ ν₂')) := by
      rw [B, e2i, V2]
    generalize eP k r z' ν₂' v = u at hv E
    subst hv
    simp only [Matrix.mulVec_add, Matrix.mulVec_smul]
    rw [E, O, Zc, Vc]
  have M : a * (h * μ₁ * h'⁻¹) * b = h * μ₁ * h'⁻¹ := by
    have h1 : ∀ v, (a * (h * μ₁ * h'⁻¹) * b) *ᵥ v = (h * μ₁ * h'⁻¹) *ᵥ v := by
      intro v
      simp only [← Matrix.mulVec_mulVec]
      exact key v
    exact Matrix.toLin'.injective (LinearMap.ext fun v => by
      rw [Matrix.toLin'_apply, Matrix.toLin'_apply]; exact h1 v)
  calc h⁻¹ * a * h * μ₁ * (h'⁻¹ * b * h') = h⁻¹ * (a * (h * μ₁ * h'⁻¹) * b) * h' := by
        simp only [Matrix.mul_assoc]
    _ = h⁻¹ * (h * μ₁ * h'⁻¹) * h' := by rw [M]
    _ = (h⁻¹ * h) * μ₁ * (h'⁻¹ * h') := by simp only [Matrix.mul_assoc]
    _ = μ₁ := by rw [hhi, hh'i, Matrix.one_mul, Matrix.mul_one]

theorem herm_zero_zero : herm (Hpk k r) 0 0 = 0 := by
  simp [herm]

theorem first_vector_normal_form {z z' : Fin (2 * r + k + 1) → ℂ} {μsec : ℂ → Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ}
    (hz : inWb k r z) (hz' : inWb k r z') (hT : 0 < Tz k r z) (hT' : 0 < Tz k r z')
    (hsec : IsSection k r z z' μsec) {ζ : ℂ} (hζ : Tz k r z * Tz k r z' < Complex.normSq ζ) :
    ∃ s c : ℂ, s ≠ 0 ∧ SSn.nu0 k r z z' μsec ζ = s • (NF.muZ k r μsec ζ *ᵥ z' + c • z) := by
  have hG := NFRadRedA.uwb_glev (NFRadRedA.muZ_uwb hsec hζ)
  have hy : inWb k r (NF.muZ k r μsec ζ *ᵥ z') := Qx8.inWb_mulVec hG hz'
  have hb := (DU.base hz hz' hT hT' hsec hζ).2.1
  have e : SSn.nu0 k r z z' μsec ζ =
      (((Real.sqrt (herm (Hpk k r) (SSn.prWv k r z (NF.muZ k r μsec ζ *ᵥ z'))
        (SSn.prWv k r z (NF.muZ k r μsec ζ *ᵥ z'))).re)⁻¹ : ℝ) : ℂ) • SSn.prWv k r z (NF.muZ k r μsec ζ *ᵥ z') := rfl
  refine ⟨(((Real.sqrt (herm (Hpk k r) (SSn.prWv k r z (NF.muZ k r μsec ζ *ᵥ z'))
        (SSn.prWv k r z (NF.muZ k r μsec ζ *ᵥ z'))).re)⁻¹ : ℝ) : ℂ),
    herm (Hpk k r) (NF.muZ k r μsec ζ *ᵥ z') z / (Tz k r z : ℂ), ?_, ?_⟩
  · intro h0
    rw [e, h0, zero_smul, herm_zero_zero] at hb
    exact zero_ne_one hb
  · rw [← DU.prWv_of hy]
    exact e

theorem nu0'_form {z z' : Fin (2 * r + k + 1) → ℂ} {μsec : ℂ → Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ}
    (hz : inWb k r z) (hsec : IsSection k r z z' μsec) {ζ : ℂ} (hζ : Tz k r z * Tz k r z' < Complex.normSq ζ) :
    ∃ s c : ℂ, SSn.nu0' k r z z' μsec ζ = s • ((NF.muZ k r μsec ζ)⁻¹ *ᵥ z + c • z') := by
  have hG := FrameEntries.glev_inv (NFRadRedA.uwb_glev (NFRadRedA.muZ_uwb hsec hζ))
  have hy : inWb k r ((NF.muZ k r μsec ζ)⁻¹ *ᵥ z) := Qx8.inWb_mulVec hG hz
  refine ⟨(((Real.sqrt (herm (Hpk k r) (SSn.prWv k r z' ((NF.muZ k r μsec ζ)⁻¹ *ᵥ z))
        (SSn.prWv k r z' ((NF.muZ k r μsec ζ)⁻¹ *ᵥ z))).re)⁻¹ : ℝ) : ℂ),
    herm (Hpk k r) ((NF.muZ k r μsec ζ)⁻¹ *ᵥ z) z' / (Tz k r z' : ℂ), ?_⟩
  rw [← DU.prWv_of hy]
  rfl

end DT

theorem datum_transit_stabilizer : DTStab := by
  intro k r z z' μsec hk hz hz' hT hT' hsec ζ₁ ζ₂ h₁ h₂ h hh h' hh' e1 e2 e3 p hp
  obtain ⟨ha, hb, hab⟩ := hp
  refine ⟨LieBracketMultiplication.uw_mul (LieBracketMultiplication.uw_mul (LieBracketMultiplication.uw_inv hh) ha) hh, LieBracketMultiplication.uw_mul (LieBracketMultiplication.uw_mul (LieBracketMultiplication.uw_inv hh') hb) hh', ?_⟩
  obtain ⟨s₁, c₁, hs₁, f1⟩ := DT.first_vector_normal_form hz hz' hT hT' hsec h₁
  obtain ⟨s₂, c₂, -, f2⟩ := DT.first_vector_normal_form hz hz' hT hT' hsec h₂
  obtain ⟨s₁', c₁', f1'⟩ := DT.nu0'_form (z' := z') hz hsec h₁
  obtain ⟨s₂', c₂', f2'⟩ := DT.nu0'_form (z' := z') hz hsec h₂
  have e3' : ∀ v, h *ᵥ (NF.muZ k r μsec ζ₁ *ᵥ DT.eP k r z' (SSn.nu0' k r z z' μsec ζ₁) (h'⁻¹ *ᵥ v)) =
      NF.muZ k r μsec ζ₂ *ᵥ DT.eP k r z' (SSn.nu0' k r z z' μsec ζ₂) v := by
    intro v
    have h3 : (h * SSn.io0 k r z z' μsec ζ₁ * h'⁻¹) *ᵥ v = SSn.io0 k r z z' μsec ζ₂ *ᵥ v := by rw [e3]
    rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, DT.ioMulVec, DT.ioMulVec] at h3
    exact h3
  exact DT.core hz' (NFRadRedA.uwb_glev (NFRadRedA.muZ_uwb hsec h₁)) (NFRadRedA.uwb_glev (NFRadRedA.muZ_uwb hsec h₂))
    hh hh' ha hb hab e1 e2 e3' hs₁ f1 f2 f1' f2'

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSStab =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransit =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransit", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCModConstCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitExists\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSStab\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransitCut\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC

theorem datum_transitivity_holds : DatumTransit := datumTransit_of_cut datum_transit_existence datum_transit_stabilizer

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransit =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCLineNonzero =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCLineNonzero", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThConst\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLExistsOf\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLIsoAlg\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLLieGrp\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGaugeLinesLeft\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParametersUPrimeForULower\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.HermitianCurvature.FrameExists2\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC

noncomputable section

theorem line_nonvanishing_holds : LineNonzero := by
  intro Wp Wq _ _ _ _ _ _ P Bs hpl hk Pr hPr π ζ hζ
  have hζT : P.TT < Complex.normSq ζ := hζ
  obtain ⟨hOK, hz, hz', hTz, hTz', -, -⟩ := id hpl
  have hζ' : Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq ζ := by
    rw [hTz, hTz']; exact hζT
  have hT := Bs.T_pos
  obtain ⟨hνfix, hνν, -, -⟩ := DU.base hz hz' Bs.T_pos Bs.T'_pos Bs.sec hζ'
  set ν := SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ with hνdef

  set μ := NF.muZ P.k P.r Bs.μsec ζ with hμ
  have hm := NFRadRedA.muZ_uwb Bs.sec hζ'
  have hG := NFRadRedA.uwb_glev hm
  have hy : inWb P.k P.r (μ *ᵥ Bs.z') := Qx8.inWb_mulVec hG hz'
  have hνW : inWb P.k P.r ν := by
    show inWb P.k P.r (SSn.unitH P.k P.r (SSn.prWv P.k P.r Bs.z (μ *ᵥ Bs.z')))
    unfold SSn.unitH
    exact Qx8.inWb_smul (DU.prWv_inWb hz hy) _
  have hνz : herm (Hpk P.k P.r) ν Bs.z = 0 := by
    rw [← hνfix]; exact DU.prWv_perp hT hνW
  obtain ⟨Fr, hFr⟩ := Topx1.typ_frame_exists P.k P.r (by omega) Bs.z ν hz hT hνW hνz hνν
  obtain ⟨hFr', hpass⟩ := PRho.GL.gauge_left_line_holds Wp Wq P Bs hpl hk ζ hζT Fr hFr
  have hq : ((fun _ => (1 : ℂ)), ζ) ∈ NF.QR P.k P.r Bs.z Bs.z' := ⟨fun _ => one_ne_zero, hζ'⟩
  obtain ⟨-, hg, hGG⟩ := Formalism.FourierDecayAlt.P.NFRadRedA.mem_domR hz hz' Bs.sec hq
  have hEx := Gauge.GC.lie_existence_of_iso_group Gauge.GC.KLIso.lie_algebra_isomorphism_holds Gauge.GC.lie_group_realization
  obtain ⟨E, hEfib, hEeig, hE0⟩ := hEx Wp Wq P Bs.z Bs.z' Bs.π Bs.π' hpl hk _ hg hGG.ne' _ hFr' π
  have hEF : E ∈ NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ :=
    fun p hp => hEfib p.1 hp.1 p.2 hp.2.1 hp.2.2
  have hgl' := (Formalism.FourierDecayAlt.P.frame_general_linear Wq P.k P.r (P.k - 1) Bs.z' Bs.π'
    (fun a => μ⁻¹ *ᵥ Fr a) ⟨Bs.π'_rep, Bs.π'_cont⟩
    (Formalism.FourierDecayAlt.P.Qx8.frame_sub hFr' (by simp))).2
  have hπrep : Qr.IsRepW P.k P.r Bs.z Bs.π := ⟨Bs.π_rep, Bs.π_cont⟩
  refine ⟨E, hEF, ?_, hE0⟩
  have hpos : 0 < PRho.nrmW P.k P.r Bs.z ν := by
    unfold PRho.nrmW
    rw [hνfix, hνν]; simp
  have hrange := ((hPr.2.2 ν hpos).2.2.2 π)
  ext v
  rw [ContinuousLinearMap.comp_apply]
  refine (hrange (E v)).2 ?_
  intro Fr2 hFr2 w
  rw [hνfix] at hFr2
  rw [Topx1.typ_frame_change P.k P.r (by omega) Bs.z ν Bs.π Fr2 Fr hz hT hνW hνz hνν hπrep hFr2 hFr w (E v),
    hpass E hEF w v, hgl']
  have hw : w = (w - ((P.k : ℂ) - 2) / 2) + ((P.k : ℂ) - 2) / 2 := by ring
  conv_lhs => rw [hw]
  exact hEeig _ v

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCLineNonzero =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCModConst =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCModConst", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCModConstCut\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTConnGaugeA\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLAtMost\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGaugeLinesLeft\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLemB\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LieBracketMultiplication\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedS\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ParametersUPrimeForULower\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTKLineCut\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC

noncomputable section

theorem line_at_most_one_holds : LineAtMost := by
  intro Wp Wq _ _ _ _ _ _ P Bs hpl hk Pr hPr π ζ hζ X hX Y hY hX0
  have hζT : P.TT < Complex.normSq ζ := hζ
  obtain ⟨hOK, hz, hz', hTz, hTz', -, -⟩ := id hpl
  have hζ' : Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq ζ := by
    rw [hTz, hTz']; exact hζT
  have hT := Bs.T_pos
  obtain ⟨hνfix, hνν, -, -⟩ := DU.base hz hz' Bs.T_pos Bs.T'_pos Bs.sec hζ'
  set ν := SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ with hνdef
  set μ := NF.muZ P.k P.r Bs.μsec ζ with hμ
  have hm := NFRadRedA.muZ_uwb Bs.sec hζ'
  have hG := NFRadRedA.uwb_glev hm
  have hy : inWb P.k P.r (μ *ᵥ Bs.z') := Qx8.inWb_mulVec hG hz'
  have hνW : inWb P.k P.r ν := by
    show inWb P.k P.r (SSn.unitH P.k P.r (SSn.prWv P.k P.r Bs.z (μ *ᵥ Bs.z')))
    unfold SSn.unitH
    exact Qx8.inWb_smul (DU.prWv_inWb hz hy) _
  have hνz : herm (Hpk P.k P.r) ν Bs.z = 0 := by
    rw [← hνfix]; exact DU.prWv_perp hT hνW
  obtain ⟨Fr, hFr⟩ := Topx1.typ_frame_exists P.k P.r (by omega) Bs.z ν hz hT hνW hνz hνν
  obtain ⟨hFr', hpass⟩ := PRho.GL.gauge_left_line_holds Wp Wq P Bs hpl hk ζ hζT Fr hFr
  have hq : ((fun _ => (1 : ℂ)), ζ) ∈ NF.QR P.k P.r Bs.z Bs.z' := ⟨fun _ => one_ne_zero, hζ'⟩
  obtain ⟨-, hg, hGG⟩ := Formalism.FourierDecayAlt.P.NFRadRedA.mem_domR hz hz' Bs.sec hq
  have hgl' := (Formalism.FourierDecayAlt.P.frame_general_linear Wq P.k P.r (P.k - 1) Bs.z' Bs.π'
    (fun a => μ⁻¹ *ᵥ Fr a) ⟨Bs.π'_rep, Bs.π'_cont⟩
    (Formalism.FourierDecayAlt.P.Qx8.frame_sub hFr' (by simp))).2
  have hpos : 0 < PRho.nrmW P.k P.r Bs.z ν := by
    unfold PRho.nrmW
    rw [hνfix, hνν]; simp
  have hcap : ∀ Z ∈ Line P Bs Pr π ζ, Gauge.GC.CapEig P Bs.π' (fun a => μ⁻¹ *ᵥ Fr a) π Z := by
    intro Z hZ Yc v
    have hZv : Pr π ν (Z v) = Z v := by
      have := DFunLike.congr_fun hZ.2 v
      simpa only [ContinuousLinearMap.comp_apply] using this
    have hr := ((hPr.2.2 ν hpos).2.2.2 π (Z v)).1 hZv Fr (by rw [hνfix]; exact hFr) (Yc + ((P.k : ℂ) - 2) / 2)
    rw [hpass Z hZ.1, hgl'] at hr
    have e : Yc + ((P.k : ℂ) - 2) / 2 - ((P.k : ℂ) - 2) / 2 = Yc := by ring
    rw [e] at hr
    exact hr
  have hXF : X ∈ Gauge.GC.FibAt P.k P.r Bs.z Bs.z' Bs.π Bs.π' μ :=
    fun h hh h' hh' he => hX.1 (h, h') ⟨hh, hh', he⟩
  have hYF : Y ∈ Gauge.GC.FibAt P.k P.r Bs.z Bs.z' Bs.π Bs.π' μ :=
    fun h hh h' hh' he => hY.1 (h, h') ⟨hh, hh', he⟩
  exact Gauge.GC.lie_weight_at_most_holds Wp Wq P Bs.z Bs.z' Bs.π Bs.π' hpl hk _ hg hGG.ne' _ hFr' π X Y hXF hYF
    (hcap X hX) (hcap Y hY) hX0

theorem modConst_of_cut : ModConstOfCut := by
  intro hLN hAM hDT hSR hSN hTF Wp Wq _ _ _ _ _ _ P Bs hk X d hA l hl S hS Pr hPr Bw Bw' hBw hBw' π ρ hUp
  have hpl : Q.IsPlace P Bs.z Bs.z' Bs.π Bs.π' := hA.1
  obtain ⟨hOK, hz, hz', hTz, hTz', -, -⟩ := id hpl
  set x0 : ℝ := |P.TT| + 1 with hx0
  have hζ0 : ((x0 : ℝ) : ℂ) ∈ Gauge.GC.Ann P := by
    show P.TT < Complex.normSq ((x0 : ℝ) : ℂ)
    rw [Complex.normSq_ofReal]
    nlinarith [abs_nonneg P.TT, le_abs_self P.TT]
  obtain ⟨X0, hX0F, hX0P, hX0ne⟩ := hLN Wp Wq P Bs hpl hk Pr hPr π _ hζ0
  set ζ0 : ℂ := ((x0 : ℝ) : ℂ) with hζ0def
  set T0 := (Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ0)).comp
    (tht P.k P.r Bs.z Bs.z' Bs.π Bs.π' Bw Bw' (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ0)
      (SSn.nu0' P.k P.r Bs.z Bs.z' Bs.μsec ζ0) (SSn.io0 P.k P.r Bs.z Bs.z' Bs.μsec ζ0) X0) with hT0
  have hB0 : ‖B.hsVec X0‖ ≠ 0 := norm_ne_zero_iff.2 (Gauge.GC.hsVec_ne_zero hX0ne)
  refine ⟨M.Nrm P l π, ‖B.hsVec T0‖ ^ 2 / ‖B.hsVec X0‖ ^ 2, fun ζ hζ Xf hXf hXP => ⟨?_, ?_⟩⟩
  · have hL : Xf ∈ Line P Bs Pr π ζ := ⟨hXf, hXP⟩
    have hR := hSR Wp Wq P Bs hk X d hA l hl S hS Pr hPr π ρ hUp ζ hζ Xf hL
    rw [hR.2]
    exact hSN Wp Wq P Bs hk X d hA l hl S hS Pr hPr π ζ hζ Xf hL
  · have hζT : P.TT < Complex.normSq ζ := hζ
    have hζ' : Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq ζ := by
      rw [hTz, hTz']; exact hζT
    have hζ0T : P.TT < Complex.normSq ζ0 := hζ0
    have hζ0' : Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq ζ0 := by
      rw [hTz, hTz']; exact hζ0T
    obtain ⟨h, hh, h', hh', hν, hν', hι, hst⟩ :=
      hDT P.k P.r Bs.z Bs.z' Bs.μsec hk hz hz' Bs.T_pos Bs.T'_pos Bs.sec ζ0 ζ hζ0' hζ'
    have hhi := LieBracketMultiplication.uw_inv hh
    have hh'i := LieBracketMultiplication.uw_inv hh'
    have hiso : ∀ Y, ‖B.hsVec ((Bs.π h).comp (Y.comp (Bs.π' h'⁻¹)))‖ = ‖B.hsVec Y‖ :=
      fun Y => CutBP.hsVec_norm_CinL Bs hh hh' Y
    have hinv1 : ∀ w, Bs.π h⁻¹ (Bs.π h w) = w := by
      intro w
      rw [← ContinuousLinearMap.comp_apply, ← Bs.π_rep.2 _ hhi _ hh, NFRadRedS.uw_inv_mul hh, Bs.π_rep.1]
      rfl

    have hF : (Bs.π h).comp (X0.comp (Bs.π' h'⁻¹)) ∈ NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ := by
      refine fun p hp => ?_
      have hp1 : p.1 ∈ UWset P.k P.r Bs.z := hp.1
      have hp2 : p.2 ∈ UWset P.k P.r Bs.z' := hp.2.1
      have hm1 : h⁻¹ * p.1 * h ∈ UWset P.k P.r Bs.z := LieBracketMultiplication.uw_mul (LieBracketMultiplication.uw_mul hhi hp1) hh
      have hm2 : h'⁻¹ * p.2 * h' ∈ UWset P.k P.r Bs.z' := LieBracketMultiplication.uw_mul (LieBracketMultiplication.uw_mul hh'i hp2) hh'
      have key := hX0F _ (hst p hp)
      have e1 : (Bs.π p.1).comp (Bs.π h) = (Bs.π h).comp (Bs.π (h⁻¹ * p.1 * h)) := by
        rw [← Bs.π_rep.2 _ hp1 _ hh, ← Bs.π_rep.2 _ hh _ hm1, ← mul_assoc, ← mul_assoc,
          NFRadRedS.uw_mul_inv hh, one_mul]
      have e2 : (Bs.π' h'⁻¹).comp (Bs.π' p.2) = (Bs.π' (h'⁻¹ * p.2 * h')).comp (Bs.π' h'⁻¹) := by
        rw [← Bs.π'_rep.2 _ hh'i _ hp2, ← Bs.π'_rep.2 _ hm2 _ hh'i, mul_assoc (h'⁻¹ * p.2) h' h'⁻¹,
          NFRadRedS.uw_mul_inv hh', mul_one]
      ext v
      have k1 := DFunLike.congr_fun e1 (X0 (Bs.π' h'⁻¹ (Bs.π' p.2 v)))
      have k2 := DFunLike.congr_fun e2 v
      have k3 := DFunLike.congr_fun key (Bs.π' h'⁻¹ v)
      simp only [ContinuousLinearMap.comp_apply] at k1 k2 k3 ⊢
      rw [k1, k2, k3]

    have hP : (Pr π (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp ((Bs.π h).comp (X0.comp (Bs.π' h'⁻¹))) =
        (Bs.π h).comp (X0.comp (Bs.π' h'⁻¹)) := by
      rw [← hν, hPr.2.1 h hh π (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ0)]
      ext v
      have k1 := DFunLike.congr_fun hX0P (Bs.π' h'⁻¹ v)
      simp only [ContinuousLinearMap.comp_apply] at k1 ⊢
      rw [hinv1, k1]
    have hL0 : (Bs.π h).comp (X0.comp (Bs.π' h'⁻¹)) ∈ Line P Bs Pr π ζ := ⟨hF, hP⟩
    have hne : (Bs.π h).comp (X0.comp (Bs.π' h'⁻¹)) ≠ 0 := by
      intro h0
      apply hB0
      have hz0 : B.hsVec (0 : Wq →L[ℂ] Wp) = 0 := by
        rw [← zero_smul ℂ (0 : Wq →L[ℂ] Wp), Gauge.GC.hsVec_smul, zero_smul]
      rw [← hiso X0, h0, hz0, norm_zero]
    obtain ⟨c, hc⟩ := hAM Wp Wq P Bs hpl hk Pr hPr π ζ hζ _ hL0 Xf ⟨hXf, hXP⟩ hne

    have hTe := ((hTF Wp Wq P Bs hpl Bw Bw' hBw hBw').2.2.2.1 h hh h' hh'
      (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ0) (SSn.nu0' P.k P.r Bs.z Bs.z' Bs.μsec ζ0)
      (SSn.io0 P.k P.r Bs.z Bs.z' Bs.μsec ζ0) X0).1
    rw [hν, hν', hι] at hTe
    have hPT : (Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp
        (tht P.k P.r Bs.z Bs.z' Bs.π Bs.π' Bw Bw' (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)
          (SSn.nu0' P.k P.r Bs.z Bs.z' Bs.μsec ζ) (SSn.io0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)
          ((Bs.π h).comp (X0.comp (Bs.π' h'⁻¹)))) = (Bs.π h).comp (T0.comp (Bs.π' h'⁻¹)) := by
      rw [hTe]
      conv_lhs => rw [← hν]
      rw [hPr.2.1 h hh ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ0), hT0]
      ext v
      simp only [ContinuousLinearMap.comp_apply]
      rw [hinv1]
    rw [hc, map_smul, ContinuousLinearMap.comp_smul, hPT, Gauge.GC.hsVec_smul, Gauge.GC.hsVec_smul,
      norm_smul, norm_smul, hiso, hiso]
    field_simp

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCModConst =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.UpRelationSourceUnique =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.UpRelationSourceUnique", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCModConstCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_GCore_GenTransferKapCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLEig\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGaugeLinesLeft\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParametersUPrimeForULower\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.HermitianCurvature.FrameExists2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTKLineCut\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.SR

noncomputable section

theorem up_relation_source_unique {P : M.Par} {l : ℕ} {a b c : M.Ty P} (h1 : M.Up P l a b) (h2 : M.Up P l c b) : a = c := by
  funext i
  apply Fin.ext
  have e1 := h1 i
  have e2 := h2 i
  omega

section line

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem line_smul (P : M.Par) (Bs : B.RealPlaceData P.k P.r Wp Wq)
    (Pr : M.Ty P → (Fin (2 * P.r + P.k + 1) → ℂ) → (Wp →L[ℂ] Wp)) (σ : M.Ty P) (ζ : ℂ) (c : ℂ)
    {E : Wq →L[ℂ] Wp} (hE : E ∈ Line P Bs Pr σ ζ) : c • E ∈ Line P Bs Pr σ ζ := by
  refine ⟨fun p hp => ?_, ?_⟩
  · rw [ContinuousLinearMap.smul_comp, ContinuousLinearMap.comp_smul, hE.1 p hp]
  · rw [ContinuousLinearMap.comp_smul, hE.2]

theorem lineQ (P : M.Par) (Bs : B.RealPlaceData P.k P.r Wp Wq) (X : Q.ActualOps P.k P.r Bs.z Bs.z' Bs.π Bs.π')
    (d : Q.NFData P (Q.Pr (Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π'))) (hH : Gauge.GC.GTHyp P Bs X d)
    (Qs : M.Ty P → (Wq →L[ℂ] Wq)) (hQ : Gauge.GC.KapPt P Bs d Qs)
    (Pr : M.Ty P → (Fin (2 * P.r + P.k + 1) → ℂ) → (Wp →L[ℂ] Wp)) (hPr : PRho.PRhoSpec P Bs.z Bs.π Pr)
    (ζ : ℂ) (hζ : ζ ∈ Gauge.GC.Ann P) (σ : M.Ty P) (E : Wq →L[ℂ] Wp)
    (hE : E ∈ NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ) :
    E ∈ Line P Bs Pr σ ζ ↔ E.comp (Qs σ) = E := by
  have hpl : Q.IsPlace P Bs.z Bs.z' Bs.π Bs.π' := hH.1
  have hk : 2 ≤ P.k := hH.2.1
  have hζT : P.TT < Complex.normSq ζ := hζ
  obtain ⟨hOK, hz, hz', hTz, hTz', -, -⟩ := id hpl
  have hζ' : Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq ζ := by
    rw [hTz, hTz']; exact hζT
  have hT := Bs.T_pos
  obtain ⟨hνfix, hνν, -, -⟩ := DU.base hz hz' Bs.T_pos Bs.T'_pos Bs.sec hζ'
  set ν := SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ with hνdef
  set μ := NF.muZ P.k P.r Bs.μsec ζ with hμ
  have hm := NFRadRedA.muZ_uwb Bs.sec hζ'
  have hG := NFRadRedA.uwb_glev hm
  have hy : inWb P.k P.r (μ *ᵥ Bs.z') := Qx8.inWb_mulVec hG hz'
  have hνW : inWb P.k P.r ν := by
    show inWb P.k P.r (SSn.unitH P.k P.r (SSn.prWv P.k P.r Bs.z (μ *ᵥ Bs.z')))
    unfold SSn.unitH
    exact Qx8.inWb_smul (DU.prWv_inWb hz hy) _
  have hνz : herm (Hpk P.k P.r) ν Bs.z = 0 := by
    rw [← hνfix]; exact DU.prWv_perp hT hνW
  have hpos : 0 < PRho.nrmW P.k P.r Bs.z ν := by
    unfold PRho.nrmW
    rw [hνfix, hνν]; simp

  have pass : ∀ Fr : Fin (P.k - 1) → Fin (2 * P.r + P.k + 1) → ℂ, Q.IsFrameOf P.k P.r [Bs.z, ν] Fr →
      Q.IsFrameOf P.k P.r [μ⁻¹ *ᵥ Bs.z, Bs.z'] (fun a => μ⁻¹ *ᵥ Fr a) ∧
      ∀ (w : ℂ) (v : Wq), Q.capRep P.k P.r Bs.π Fr w (E v) =
        E (qdet (Qr.EB Bs.π' (fun a => μ⁻¹ *ᵥ Fr a)) w v) := by
    intro Fr hFr
    obtain ⟨hFr', hpass⟩ := PRho.GL.gauge_left_line_holds Wp Wq P Bs hpl hk ζ hζT Fr hFr
    have hgl' := (Formalism.FourierDecayAlt.P.frame_general_linear Wq P.k P.r (P.k - 1) Bs.z' Bs.π'
      (fun a => μ⁻¹ *ᵥ Fr a) ⟨Bs.π'_rep, Bs.π'_cont⟩
      (Formalism.FourierDecayAlt.P.Qx8.frame_sub hFr' (by simp))).2
    refine ⟨hFr', fun w v => ?_⟩
    rw [hpass E hE, hgl']
  constructor
  · intro hL
    obtain ⟨Fr, hFr⟩ := Topx1.typ_frame_exists P.k P.r (by omega) Bs.z ν hz hT hνW hνz hνν
    obtain ⟨hFr', hp⟩ := pass Fr hFr
    have hcap : Gauge.GC.CapEig P Bs.π' (fun a => μ⁻¹ *ᵥ Fr a) σ E := by
      intro Yc v
      have hEv : Pr σ ν (E v) = E v := by
        have := DFunLike.congr_fun hL.2 v
        simpa only [ContinuousLinearMap.comp_apply] using this
      have hr := ((hPr.2.2 ν hpos).2.2.2 σ (E v)).1 hEv Fr (by rw [hνfix]; exact hFr)
        (Yc + ((P.k : ℂ) - 2) / 2)
      rw [hp] at hr
      have e : Yc + ((P.k : ℂ) - 2) / 2 - ((P.k : ℂ) - 2) / 2 = Yc := by ring
      rw [e] at hr
      exact hr
    exact (Gauge.GC.lie_eigenvalue_holds Wp Wq P Bs X d hH Qs hQ ζ hζT _ hFr' σ E hE).2 hcap
  · intro hEQ
    refine ⟨hE, ?_⟩
    ext v
    show Pr σ ν (E v) = E v
    refine ((hPr.2.2 ν hpos).2.2.2 σ (E v)).2 fun Fr hFr w => ?_
    rw [hνfix] at hFr
    obtain ⟨hFr', hp⟩ := pass Fr hFr
    have hcap := (Gauge.GC.lie_eigenvalue_holds Wp Wq P Bs X d hH Qs hQ ζ hζT _ hFr' σ E hE).1 hEQ
    have h1 := hcap (w - ((P.k : ℂ) - 2) / 2) v
    rw [sub_add_cancel] at h1
    rw [hp, h1]

end line

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.SR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.UpRelationSourceUnique =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.CrossSectionAtPoint =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.CrossSectionAtPoint", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.ConstantOneMemNonvanishing\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCLRadT\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTKLine\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSAdj\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSAdjH\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSLMat\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSLocal\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSTr\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGenTransferKPt\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedF\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.UpRelationSourceUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.SR

open Formalism.FourierDecayAlt.P.CutMP.Gauge.GC Formalism.FourierDecayAlt.P.CutMP.Gauge

noncomputable section

theorem sum_ite_smul {ι V : Type} [Fintype ι] [DecidableEq ι] [AddCommGroup V] [Module ℂ V] (σ : ι) (Q : ι → V) :
    (∑ ρ, (if ρ = σ then (1 : ℂ) else 0) • Q ρ) = Q σ := by
  simp only [ite_smul, one_smul, zero_smul, Finset.sum_ite_eq', Finset.mem_univ, if_true]

theorem cross_section_at_point : AtCSec := by
  intro Wp Wq _ _ _ _ _ _ P Bs hk hcs X d hA l hl Pr hPr π ζ hζ X0 hX0
  obtain ⟨hpl, hL, hS, hRel, hQQ⟩ := hA
  have hH : GTHyp P Bs X d := ⟨hpl, hk, hcs, hL, hS, hRel, hQQ⟩
  obtain ⟨e, he, hkF⟩ := gauge_kappa_holds Wp Wq P Bs X d hH
  obtain ⟨Qs, hQ⟩ := gauge_kappa_pointwise_holds Wp Wq P Bs X d hH
  obtain ⟨s, t, hst, hSL⟩ := gTSSLocal_of_radT radial_torus_local_holds Wp Wq P Bs X d hH e he hkF
  have hadj := second_shift_adjoint_pointwise Wp Wq P Bs X d hH e he hkF s t hst hSL l hl
  have hTz := tz_TT P Bs hpl
  have hRB := radBase_of P Bs hpl
  have hζT : P.TT < Complex.normSq ζ := hζ

  have hsec : ∀ ρ, ((NF.QR P.k P.r Bs.z Bs.z').indicator fun q : (Fin P.r → ℂ) × ℂ => e ρ q.2) ∈
      NF.RadSec P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' := by
    intro ρ
    refine ⟨((he.1 ρ).comp contDiff_snd.contDiffOn fun q hq => ?_).congr fun q hq => ?_, fun q hq => ?_,
      fun q hq => ?_⟩
    · show P.TT < Complex.normSq q.2
      rw [← hTz]; exact hq.2
    · simp [Set.indicator_of_mem hq]
    · rw [Set.indicator_of_mem hq]
      exact (he.2 q.2 (by rw [← hTz]; exact hq.2)).1 ρ
    · simp [Set.indicator_of_notMem hq]
  choose Ψ0 hΨ0 hΨr using fun ρ =>
    Formalism.FourierDecayAlt.P.radical_reduction_surjective Wp Wq P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' hRB _ (hsec ρ)
  let Ψ : M.Ty P → Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π' := fun ρ => ⟨Ψ0 ρ, hΨ0 ρ⟩
  have hq : ((c1 P.r, ζ) : (Fin P.r → ℂ) × ℂ) ∈ NF.QR P.k P.r Bs.z Bs.z' := ⟨constant_one_mem_nonvanishing P.r, by rw [hTz]; exact hζ⟩
  have hΨ : ∀ ρ, (Ψ ρ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) (c1 P.r) (NF.muZ P.k P.r Bs.μsec ζ) = e ρ ζ := by
    intro ρ
    have h := congrFun (hΨr ρ) (c1 P.r, ζ)
    simp only [NF.radR, Set.indicator_of_mem hq] at h
    exact h
  have hval : ∀ Z : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π',
      (Z : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) (c1 P.r) (NF.muZ P.k P.r Bs.μsec ζ) ∈
        NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ := by
    intro Z
    have hmem := (_root_.Formalism.FourierDecayAlt.P.NFRadRedA.radRedMem Wp Wq P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' hRB _ Z.2).2.1
      (c1 P.r, ζ) hq
    simpa only [NF.radR, Set.indicator_of_mem hq] using hmem
  have hexp := (he.2 ζ hζT).2.2
  have hδ : ∀ ρ σ, inner ℂ (B.hsVec (e ρ ζ)) (B.hsVec (e σ ζ)) = if ρ = σ then (1 : ℂ) else 0 :=
    (he.2 ζ hζT).2.1
  let q : MA.Qp P.r P.TT := ⟨(c1 P.r, ζ), fun _ => one_ne_zero, hζT⟩
  set w : ℂ := ((wR P.k P.TT ζ : ℝ) : ℂ) with hwdef
  have hw : w ≠ 0 := wRc_ne P hζ
  have hraw : ∀ (Z : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) (ρ : M.Ty P), rawR P Bs.μsec e Z ρ q =
      w * inner ℂ (B.hsVec (e ρ ζ)) (B.hsVec (Z (c1 P.r) (NF.muZ P.k P.r Bs.μsec ζ))) := fun Z ρ => rfl
  have hrawΨ : ∀ σ ρ, rawR P Bs.μsec e (Ψ σ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) ρ q =
      w * (if ρ = σ then (1 : ℂ) else 0) := by
    intro σ ρ
    rw [hraw, hΨ σ, hδ]
  have hmulapply : ∀ (A C : Q.Pr (Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π')) (Z : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π'),
      (A * C).1 Z = A.1 (C.1 Z) := fun A C Z => rfl

  have hκpt : ∀ (f : M.Ty P → ℂ) (Z : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π'),
      (((d.κ f).1 Z : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) (c1 P.r)
          (NF.muZ P.k P.r Bs.μsec ζ) =
        ((Z : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) (c1 P.r) (NF.muZ P.k P.r Bs.μsec ζ)).comp (∑ ρ, f ρ • Qs ρ) :=
    fun f Z => hQ.2.2.2 f Z q

  have hK0 : ∀ σ, e σ ζ ∈ Line P Bs Pr σ ζ := by
    intro σ
    refine (lineQ P Bs X d hH Qs hQ Pr hPr ζ hζ σ (e σ ζ) ((he.2 ζ hζT).1 σ)).2 ?_
    have h1 := hκpt (fun ρ => if ρ = σ then (1 : ℂ) else 0) (Ψ σ)
    rw [sum_ite_smul, hΨ σ] at h1
    rw [← h1, hexp _ (hval _)]
    have hc : ∀ ρ, inner ℂ (B.hsVec (e ρ ζ)) (B.hsVec ((((d.κ (fun ρ => if ρ = σ then (1 : ℂ) else 0)).1 (Ψ σ) :
        Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) (c1 P.r) (NF.muZ P.k P.r Bs.μsec ζ))) =
        if ρ = σ then (1 : ℂ) else 0 := by
      intro ρ
      have h2 := SSAdjH.kap_pt P Bs hpl hk e he d hkF (fun ρ => if ρ = σ then (1 : ℂ) else 0) (Ψ σ) ρ q
      rw [hraw, hrawΨ] at h2
      by_cases hρ : ρ = σ
      · rw [if_pos hρ] at h2 ⊢
        apply mul_left_cancel₀ hw
        rw [h2]; ring
      · rw [if_neg hρ] at h2 ⊢
        apply mul_left_cancel₀ hw
        rw [h2]; ring
    simp only [hc, ite_smul, one_smul, zero_smul, Finset.sum_ite_eq', Finset.mem_univ, if_true]

  set a : M.Ty P → ℂ := fun σ => inner ℂ (B.hsVec (e σ ζ)) (B.hsVec X0) with hadef
  let Φ : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π' := ∑ σ, a σ • Ψ σ
  have hsumv : ∀ (G : M.Ty P → Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') (c : Fin P.r → ℂ) (g : Q.Mx P.k P.r),
      ((∑ ρ, G ρ : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c g =
        ∑ ρ, (G ρ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c g := by
    intro G c g
    rw [Submodule.coe_sum, Finset.sum_apply, Finset.sum_apply]
  have hΦv : (Φ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) (c1 P.r) (NF.muZ P.k P.r Bs.μsec ζ) = X0 := by
    rw [hsumv]
    conv_rhs => rw [hexp X0 hX0.1]
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [Submodule.coe_smul, Pi.smul_apply, Pi.smul_apply, hΨ σ]
  have hrawΦ : ∀ ρ, rawR P Bs.μsec e (Φ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) ρ q = w * a ρ := by
    intro ρ
    rw [hraw, hΦv]

  have hXQ : X0.comp (Qs π) = X0 := (lineQ P Bs X d hH Qs hQ Pr hPr ζ hζ π X0 hX0.1).1 hX0
  have hK1 : ∀ σ, σ ≠ π → a σ = 0 := by
    intro σ hσ
    have h1 := hκpt (fun ρ => if ρ = π then (1 : ℂ) else 0) Φ
    rw [sum_ite_smul, hΦv, hXQ] at h1
    have h2 := SSAdjH.kap_pt P Bs hpl hk e he d hkF (fun ρ => if ρ = π then (1 : ℂ) else 0) Φ σ q
    rw [hraw, h1, hrawΦ, if_neg hσ, zero_mul] at h2
    exact (mul_eq_zero.1 h2).resolve_left hw

  have hSSΨ : ∀ σ, rawR P Bs.μsec e ((((d.SS l).1 (Ψ π) : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π')) :
      Q.Fn P.k P.r (Wq →L[ℂ] Wp)) σ q = s l σ π ζ * w := by
    intro σ
    rw [(SSAdjH.ss_pt P Bs hpl hk e he d s t hst hSL hl (Ψ π) σ q).1]
    simp only [hrawΨ, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
    rfl

  have hK2 : ∀ ρ', ¬ M.Up P l π ρ' → s l ρ' π ζ = 0 := by
    intro ρ' hn
    have hcond : ∀ ρ ρ'', M.Up P l ρ ρ'' →
        (fun x => if M.Up P l π x then (1 : ℂ) else 0) ρ'' = (fun x => if x = π then (1 : ℂ) else 0) ρ := by
      intro ρ ρ'' hU
      dsimp only
      by_cases hρ : ρ = π
      · subst hρ
        rw [if_pos hU, if_pos rfl]
      · have hn2 : ¬ M.Up P l π ρ'' := fun h2 => hρ (up_relation_source_unique hU h2)
        rw [if_neg hn2, if_neg hρ]
    have heq := hRel.2.2.2.1 l _ _ hcond
    have hz := congrArg (fun A : Q.Pr (Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') => A.1 (Ψ π)) heq
    simp only [hmulapply] at hz
    have h3 := congrArg (fun Z : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π' =>
      rawR P Bs.μsec e (Z : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) ρ' q) hz
    try dsimp only at h3
    rw [SSAdjH.kap_pt P Bs hpl hk e he d hkF, hSSΨ,
      (SSAdjH.ss_pt P Bs hpl hk e he d s t hst hSL hl _ ρ' q).1] at h3
    try dsimp only at h3
    rw [if_neg hn, zero_mul] at h3
    rw [Finset.sum_eq_single π (fun b _ hb => by
        rw [SSAdjH.kap_pt P Bs hpl hk e he d hkF, hrawΨ]; try dsimp only
        rw [if_neg hb]; ring)
      (fun h => absurd (Finset.mem_univ π) h)] at h3
    rw [SSAdjH.kap_pt P Bs hpl hk e he d hkF, hrawΨ] at h3
    try dsimp only at h3
    have h4 : s l ρ' π ζ * w = 0 := by
      have h5 : (0 : ℂ) = s l ρ' π ζ * ((if π = π then (1 : ℂ) else 0) * (w * if π = π then (1 : ℂ) else 0)) := h3
      rw [if_pos rfl] at h5
      linear_combination -h5
    exact (mul_eq_zero.1 h4).resolve_right hw

  have hK3 : ∑ σ, star (s l σ π ζ) * s l σ π ζ = ((M.Nrm P l π : ℝ) : ℂ) := by
    have heq := hRel.2.2.2.2.2 l hl
    have hz := congrArg (fun A : Q.Pr (Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') => A.1 (Ψ π)) heq
    simp only [hmulapply] at hz
    have h3 := congrArg (fun Z : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π' =>
      rawR P Bs.μsec e (Z : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) π q) hz
    try dsimp only at h3
    rw [(SSAdjH.ss_pt P Bs hpl hk e he d s t hst hSL hl _ π q).2, SSAdjH.kap_pt P Bs hpl hk e he d hkF,
      hrawΨ] at h3
    try dsimp only at h3
    rw [if_pos rfl] at h3
    have h4 : ∀ σ, t l π σ q.1.2 * rawR P Bs.μsec e ((((d.SS l).1 (Ψ π) : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π')) :
        Q.Fn P.k P.r (Wq →L[ℂ] Wp)) σ q = (star (s l σ π ζ) * s l σ π ζ) * w := by
      intro σ
      rw [hSSΨ σ, show t l π σ q.1.2 = star (s l σ π ζ) from hadj π σ ζ hζ]
      ring
    rw [Finset.sum_congr rfl (fun σ _ => h4 σ), ← Finset.sum_mul] at h3
    apply mul_right_cancel₀ hw
    rw [h3]
    ring

  have hY : ∀ ρ', rawR P Bs.μsec e ((((d.SS l).1 Φ : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π')) :
      Q.Fn P.k P.r (Wq →L[ℂ] Wp)) ρ' q = s l ρ' π ζ * (w * a π) := by
    intro ρ'
    rw [(SSAdjH.ss_pt P Bs hpl hk e he d s t hst hSL hl Φ ρ' q).1, Finset.sum_eq_single π
      (fun b _ hb => by rw [hrawΦ, hK1 b hb]; ring) (fun h => absurd (Finset.mem_univ π) h), hrawΦ]
  set Y := (((d.SS l).1 Φ : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) (c1 P.r)
    (NF.muZ P.k P.r Bs.μsec ζ) with hYdef
  refine ⟨Φ, hΦv, ?_, fun ρ hUp => ?_⟩
  · have hp1 := SSAdjH.hs_pair P Bs hpl hk e he ((d.SS l).1 Φ) ((d.SS l).1 Φ) q
    simp only [hY] at hp1
    have hp2 := SSAdjH.hs_pair P Bs hpl hk e he Φ Φ q
    simp only [hrawΦ] at hp2
    rw [Finset.sum_eq_single π (fun b _ hb => by rw [hK1 b hb]; simp)
      (fun h => absurd (Finset.mem_univ π) h)] at hp2
    have hp2' : ((wR P.k P.TT ζ ^ 2 : ℝ) : ℂ) * inner ℂ (B.hsVec X0) (B.hsVec X0) = star (w * a π) * (w * a π) := by
      rw [← hΦv]
      exact hp2
    have hp1' : ((wR P.k P.TT ζ ^ 2 : ℝ) : ℂ) * inner ℂ (B.hsVec Y) (B.hsVec Y) =
        ∑ σ, star (s l σ π ζ * (w * a π)) * (s l σ π ζ * (w * a π)) := hp1
    have hsum1 : ∑ σ, star (s l σ π ζ * (w * a π)) * (s l σ π ζ * (w * a π)) =
        (star (w * a π) * (w * a π)) * ((M.Nrm P l π : ℝ) : ℂ) := by
      rw [← hK3, Finset.mul_sum]
      refine Finset.sum_congr rfl fun σ _ => ?_
      rw [star_mul']
      ring
    have hW2 : ((wR P.k P.TT ζ ^ 2 : ℝ) : ℂ) ≠ 0 := by
      have := SSTr.wR_pos P hζT
      exact_mod_cast (pow_pos this 2).ne'
    have key : inner ℂ (B.hsVec Y) (B.hsVec Y) = ((M.Nrm P l π : ℝ) : ℂ) * inner ℂ (B.hsVec X0) (B.hsVec X0) := by
      apply mul_left_cancel₀ hW2
      rw [hp1', hsum1, show ((wR P.k P.TT ζ ^ 2 : ℝ) : ℂ) * (((M.Nrm P l π : ℝ) : ℂ) * inner ℂ (B.hsVec X0) (B.hsVec X0)) =
        ((M.Nrm P l π : ℝ) : ℂ) * (((wR P.k P.TT ζ ^ 2 : ℝ) : ℂ) * inner ℂ (B.hsVec X0) (B.hsVec X0)) by ring, hp2']
      ring
    have k2 := congrArg Complex.re key
    rw [Complex.re_ofReal_mul] at k2
    show ‖B.hsVec Y‖ ^ 2 = M.Nrm P l π * ‖B.hsVec X0‖ ^ 2
    rw [← inner_self_eq_norm_sq (𝕜 := ℂ), ← inner_self_eq_norm_sq (𝕜 := ℂ)]
    exact k2
  · have hc0 : ∀ ρ', ρ' ≠ ρ → inner ℂ (B.hsVec (e ρ' ζ)) (B.hsVec Y) = 0 := by
      intro ρ' hne
      have hn : ¬ M.Up P l π ρ' := fun h2 => hne (_root_.Formalism.FourierDecayAlt.P.NFx4.NO.up_unique hUp h2).symm
      have h := hY ρ'
      rw [hraw, hK2 ρ' hn, zero_mul] at h
      exact (mul_eq_zero.1 h).resolve_left hw
    have hYe : Y = inner ℂ (B.hsVec (e ρ ζ)) (B.hsVec Y) • e ρ ζ := by
      conv_lhs => rw [hexp Y (hval _)]
      rw [Finset.sum_eq_single ρ (fun b _ hb => by rw [hc0 b hb, zero_smul])
        (fun h => absurd (Finset.mem_univ ρ) h)]
    show Y ∈ Line P Bs Pr ρ ζ
    rw [hYe]
    exact line_smul P Bs Pr ρ ζ _ (hK0 ρ)

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.SR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.CrossSectionAtPoint =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.LineMove =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.LineMove", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.ConstantOneMemNonvanishing\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThtFacts\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LieBracketMultiplication\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedS\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.SR

noncomputable section

theorem line_move_formula : LineMove := by
  intro Wp Wq _ _ _ _ _ _ P Bs μ' hμ' _hpl ζ _hζ h hh h' hh' he Pr hPr σ Y hY
  obtain ⟨hYF, hYP⟩ := hY
  have hhi := Formalism.FourierDecayAlt.P.LieBracketMultiplication.uw_inv hh
  have hh'i := Formalism.FourierDecayAlt.P.LieBracketMultiplication.uw_inv hh'
  refine ⟨?_, ?_⟩
  · intro p hp
    obtain ⟨hp1, hp2, hpe⟩ := hp
    have hq1 : h⁻¹ * p.1 * h ∈ UWset P.k P.r Bs.z :=
      Formalism.FourierDecayAlt.P.LieBracketMultiplication.uw_mul (Formalism.FourierDecayAlt.P.LieBracketMultiplication.uw_mul hhi hp1) hh
    have hq2 : h' * p.2 * h'⁻¹ ∈ UWset P.k P.r Bs.z' :=
      Formalism.FourierDecayAlt.P.LieBracketMultiplication.uw_mul (Formalism.FourierDecayAlt.P.LieBracketMultiplication.uw_mul hh' hp2) hh'i
    have hback : NF.muZ P.k P.r μ' ζ = h⁻¹ * NF.muZ P.k P.r Bs.μsec ζ * h'⁻¹ := by
      rw [he, ← Matrix.mul_assoc, ← Matrix.mul_assoc, Formalism.FourierDecayAlt.P.NFRadRedS.uw_inv_mul hh, Matrix.one_mul,
        Matrix.mul_assoc, Formalism.FourierDecayAlt.P.NFRadRedS.uw_mul_inv hh', Matrix.mul_one]
    have hq : ((h⁻¹ * p.1 * h, h' * p.2 * h'⁻¹) : Q.Mx P.k P.r × Q.Mx P.k P.r) ∈
        NF.Stab P.k P.r Bs.z Bs.z' μ' ζ := by
      refine ⟨hq1, hq2, ?_⟩
      change h⁻¹ * p.1 * h * NF.muZ P.k P.r μ' ζ * (h' * p.2 * h'⁻¹) = NF.muZ P.k P.r μ' ζ
      have e : h⁻¹ * p.1 * h * NF.muZ P.k P.r μ' ζ * (h' * p.2 * h'⁻¹) =
          h⁻¹ * (p.1 * (h * NF.muZ P.k P.r μ' ζ * h') * p.2) * h'⁻¹ := by
        simp only [Matrix.mul_assoc]
      rw [e, ← he, hpe, ← hback]
    have key : (Bs.π (h⁻¹ * p.1 * h)).comp (Y.comp (Bs.π' (h' * p.2 * h'⁻¹))) = Y := hYF _ hq
    have e1 : (Bs.π p.1).comp (Bs.π h) = (Bs.π h).comp (Bs.π (h⁻¹ * p.1 * h)) := by
      rw [← Bs.π_rep.2 _ hp1 _ hh, ← Bs.π_rep.2 _ hh _ hq1]
      congr 1
      rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, Formalism.FourierDecayAlt.P.NFRadRedS.uw_mul_inv hh, Matrix.one_mul]
    have e2 : (Bs.π' h').comp (Bs.π' p.2) = (Bs.π' (h' * p.2 * h'⁻¹)).comp (Bs.π' h') := by
      rw [← Bs.π'_rep.2 _ hh' _ hp2, ← Bs.π'_rep.2 _ hq2 _ hh']
      congr 1
      rw [Matrix.mul_assoc, Formalism.FourierDecayAlt.P.NFRadRedS.uw_inv_mul hh', Matrix.mul_one]
    change (Bs.π p.1).comp (((Bs.π h).comp (Y.comp (Bs.π' h'))).comp (Bs.π' p.2)) = (Bs.π h).comp (Y.comp (Bs.π' h'))
    calc (Bs.π p.1).comp (((Bs.π h).comp (Y.comp (Bs.π' h'))).comp (Bs.π' p.2))
        = ((Bs.π p.1).comp (Bs.π h)).comp (Y.comp ((Bs.π' h').comp (Bs.π' p.2))) := by
          simp only [ContinuousLinearMap.comp_assoc]
      _ = ((Bs.π h).comp (Bs.π (h⁻¹ * p.1 * h))).comp (Y.comp ((Bs.π' (h' * p.2 * h'⁻¹)).comp (Bs.π' h'))) := by
          rw [e1, e2]
      _ = (Bs.π h).comp (((Bs.π (h⁻¹ * p.1 * h)).comp (Y.comp (Bs.π' (h' * p.2 * h'⁻¹)))).comp (Bs.π' h')) := by
          simp only [ContinuousLinearMap.comp_assoc]
      _ = (Bs.π h).comp (Y.comp (Bs.π' h')) := by rw [key]
  · set a := SSn.nu0 P.k P.r Bs.z Bs.z' μ' ζ with ha
    have hYP' : (Pr σ a).comp Y = Y := hYP
    have hν : SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ = h *ᵥ a := by
      rw [ha]
      unfold SSn.nu0 SSn.unitH
      rw [he, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hh'.2.2,
        Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.TF.prWv_uw Bs.z_mem Bs.T_pos hh, Formalism.FourierDecayAlt.P.Qx2.herm_uh hh.1,
        Matrix.mulVec_smul]
    have e0 : (Bs.π h⁻¹).comp (Bs.π h) = 1 := by
      rw [← Bs.π_rep.2 _ hhi _ hh, Formalism.FourierDecayAlt.P.NFRadRedS.uw_inv_mul hh, Bs.π_rep.1]
    have e0' : ∀ T : Wq →L[ℂ] Wp, (Bs.π h⁻¹).comp ((Bs.π h).comp T) = T := by
      intro T
      ext v
      have k1 := DFunLike.congr_fun e0 (T v)
      simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.one_apply] at k1 ⊢
      exact k1
    change (Pr σ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp ((Bs.π h).comp (Y.comp (Bs.π' h'))) =
      (Bs.π h).comp (Y.comp (Bs.π' h'))
    rw [hν, hPr.2.1 h hh σ a]
    calc ((Bs.π h).comp ((Pr σ a).comp (Bs.π h⁻¹))).comp ((Bs.π h).comp (Y.comp (Bs.π' h')))
        = (Bs.π h).comp ((Pr σ a).comp ((Bs.π h⁻¹).comp ((Bs.π h).comp (Y.comp (Bs.π' h'))))) := by
          simp only [ContinuousLinearMap.comp_assoc]
      _ = (Bs.π h).comp (((Pr σ a).comp Y).comp (Bs.π' h')) := by
          rw [e0' (Y.comp (Bs.π' h'))]; simp only [ContinuousLinearMap.comp_assoc]
      _ = (Bs.π h).comp (Y.comp (Bs.π' h')) := by rw [hYP']

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC.SR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.LineMove =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SRaiseSNorm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SRaiseSNorm", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCModConstCut\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.CrossSectionAtPoint\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.LineMove\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LineScalingNorm.ConstantOneMemNonvanishing\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC

theorem s_raise_section : SRaise := SR.sRaise_of SR.cross_section_at_point SR.line_move_formula

theorem s_norm_section : SNorm := SR.sNorm_of SR.cross_section_at_point SR.line_move_formula

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SRaiseSNorm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDone =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDone", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThConstS\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutRegFF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRhoExists\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThtFacts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDatumTransit\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCLineNonzero\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCModConst\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GaugeConstructionHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SsnRepOfOpen2\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SRaiseSNorm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC

theorem modular_constancy_holds : ModConst :=
  modConst_of_cut line_nonvanishing_holds line_at_most_one_holds datum_transitivity_holds s_raise_section s_norm_section
    Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.theta_facts_hold

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.MC

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep

theorem ssnRep_of_polyS (h : Core.TC.PolyRadialS) : SSnRep :=
  ssnRep_of_open2 rho_projection_existence Core.TC.MC.modular_constancy_holds Core.TC.line_nonvanishing_holds (Or.inr h)

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep

namespace Formalism.FourierDecayAlt.P.CutMP

theorem modelPlaceBuilt2_of_polyS (hJ : JfSmoothDS) (h : JA.SSn.Rep.Core.TC.PolyRadialS) :
    Formalism.FourierDecayAlt.JCT.ModelPlaceBuilt2 :=
  modelPlaceBuilt2_of_SSnRep hJ (JA.SSn.Rep.ssnRep_of_polyS h)

end Formalism.FourierDecayAlt.P.CutMP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDone =====
