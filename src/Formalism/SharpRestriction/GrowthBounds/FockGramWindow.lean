module

public import Formalism.SharpRestriction.GrowthBounds.FlipOneThree
public import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.LvlDef
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BejjSmulLeft
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfLatticeInclusion
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.CoarseCLower
public import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.FirstCoefficientLeDiv
public import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.GramWindow2
public import Formalism.MahlerMeasure.CoarseLevelSlackInequalities
public import Formalism.MahlerMeasure.FinalD
public import Formalism.MahlerMeasure.MahlerMeasureProofs.MeanGam
public import Formalism.MahlerMeasure.MahlerMeasureProofs.PhiInt
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.SLetCastSucc
public import Formalism.MahlerMeasure.MahlerMeasureProofs.SSDirect
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ValFactSumLe
public import Formalism.ThetaLogCoordinates.BihomogeneousPairs.LetterChainEmbeddings.BiHomPlus
public import Formalism.ThetaLogCoordinates.BihomogeneousPairs.LetterChainEmbeddings.SmulMemOfNorm
public import Formalism.PolynomialDimension.DigitSumValuationBound
public import Mathlib.Algebra.Polynomial.BigOperators
public import Formalism.MahlerMeasure.StatementD
public import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.PhiPair
public import Formalism.MahlerMeasure.TieVars
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.DegFactNeZero
public import Formalism.PeriodIntegrals.DiagRank
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Matrix.Rank
public import Mathlib.NumberTheory.Padics.RingHoms
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.OrthBasisLatOf
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.IntegralityFromMetricOfOrthBasisLat
public import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.GoodLeSmallMat
import Formalism.SharpRestriction.GrowthBounds.CountingStatementReduction
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.MahlerMeasure.MahlerMeasureProofs.RemoveS
import Formalism.MahlerMeasure.MahlerMeasureProofs.GamInt
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.FockKSmulRight, Formalism.SharpRestriction.GrowthBounds.FockGramWindow.RestWinOfLvl, Formalism.SharpRestriction.GrowthBounds.FockGramWindow.InitialPointNumericBound, Formalism.SharpRestriction.GrowthBounds.FockGramWindow.GramWindow2Proved, Formalism.SharpRestriction.GrowthBounds.FockGramWindow.LettersAtUPos, Formalism.PolynomialDimension.MultinomialDepth.SegmentBoundThreeHolds, Formalism.PolynomialDimension.ChangeLatticeGoodRank, Formalism.SharpRestriction.GrowthBounds.FockGramWindow.BinMatNatDegreeLe, Formalism.SharpRestriction.GrowthBounds.FockGramWindow.NeglogPowMul, Formalism.SharpRestriction.GrowthBounds.FockGramWindow.NormFockLe, Formalism.SharpRestriction.GrowthBounds.FockGramWindow.WinLvl, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DiagonalRank.DetOneSubPNe, Formalism.PeriodIntegrals.LatMin, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MinimalLatticeNorm.NormTwoEqOne, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatMin, Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.OrthSplitOfMin, Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfOrthogonalSplitting, Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfSplittingMatrix, Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfMinimalVector, Formalism.SharpRestriction.GrowthBounds.FockGramWindow

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.FockKSmulRight =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.FockKSmulRight", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.FlipOneThree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.GrowthBounds.CountingStatementReduction\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

open MvPolynomial Finset Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.MainNotions.G.CountingStatementReduction

variable (C0 CE1 CE2 : ℝ) (X : flipOneThree.Inst)

end Formalism.MainNotions.G.SymmetricFormBlocks

namespace Formalism.MainNotions.G.SymmetricFormBlocks

open MvPolynomial Finset Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.MainNotions.G.CountingStatementReduction

theorem winA_sum (X : flipOneThree.Inst) (f : ℕ → ℝ) :
    ∑ aPlus ∈ X.winA, f aPlus = ∑ j ∈ Finset.range X.winA.card, f (X.L.a + j) := by
  unfold flipOneThree.Inst.winA
  rw [Nat.card_Icc, ← Finset.Ico_add_one_right_eq_Icc, Finset.sum_Ico_eq_sum_range]

variable {C0 CE1 CE2 : ℝ} {X : flipOneThree.Inst}

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.FockKSmulRight =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.RestWinOfLvl =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FockGramWindow.RestWinOfLvl", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.LvlDef\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BejjSmulLeft\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BlockValuationZpOfLatticeInclusion\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.FockKSmulRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.GramWindowAlt

open MvPolynomial Finset Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.MainNotions.G.CountingStatementReduction Formalism.MainNotions.G.SymmetricFormBlocks

variable (C0 CE1 CE2 : ℝ) (X : flipOneThree.Inst)

def RestWinNum (CM : ℝ) : Prop :=
  ∀ aTop ∈ Fintype.piFinset (fun _ : Fin X.s => X.winA), ∀ b, Kept X.p X.r (X.S C0 CE1 CE2) aTop b → ∀ J : ℕ,
    J ≤ (X.S C0 CE1 CE2).bPlus →
    b.oPlus ≤ X.L.a ∧ 0 ≤ X.L.Y * D1r C0 CE1 CE2 X CM ∧
    ∃ h : ℕ, X.winA.card ≤ X.p ^ h ∧ J + 1 ≤ X.p ^ h ∧
      (J : ℝ) / X.winA.card +
        (((x0N X.p (aBig X) X.r (2 * X.s + 1) (X.S C0 CE1 CE2).t : ℝ) + (⌊D1r C0 CE1 CE2 X CM⌋ : ℤ) + lgN X.p (aBig X) X.r) +
          (J : ℝ) * h / X.winA.card) / (((⌊X.L.Y * D1r C0 CE1 CE2 X CM⌋ : ℤ) : ℝ) + 1) ≤ 5 / X.L.Y

variable {C0 CE1 CE2 X}

theorem restWin_of_lvl {CYb Cde Ck CD Cb Cc : ℝ} (hCYb : 1 ≤ CYb) (hCE1 : 0 ≤ CE1) (hCE2 : 0 ≤ CE2)
    (hH : flipOneThree.HI C0 CYb Cde Ck CD Cb Cc X) (CM : ℝ) (hL : WinLvl) (hN : RestWinNum C0 CE1 CE2 X CM)
    (haw : X.L.a ∈ X.winA) :
    RestWin C0 CE1 CE2 X CM := by
  classical
  haveI : NeZero X.r := ⟨X.hm⟩
  intro dl hdl aTop haTop x hx n₁ e he hli horth hdiag
  have haTop' : aTop ∈ Fintype.piFinset (fun _ : Fin X.s => X.winA) := by
    unfold cbox at haTop
    exact (Finset.mem_filter.mp haTop).1
  unfold idx at hx
  rw [Finset.mem_sigma] at hx
  have hK : Kept X.p X.r (X.S C0 CE1 CE2) aTop x.fst :=
    (mem_keptSet _ _ _ _ _).mp (Finset.mem_filter.mp hx.1).1
  have hlv : x.snd ∈ levels (gB C0 CE1 CE2 X aTop 0 x.fst) := hx.2
  unfold levels at hlv
  have hLOK : (gB C0 CE1 CE2 X aTop 0 x.fst).LevelOK x.snd.1 x.snd.2 :=
    (Finset.mem_filter.mp hlv).2
  have hJ : JN (gB C0 CE1 CE2 X aTop 0 x.fst) x.snd.2 ≤ (X.S C0 CE1 CE2).bPlus :=
    le_trans (min_le_right _ _) (Nat.sub_le _ _)
  obtain ⟨hob, hYD, h, hWh, hJh, hineq⟩ := hN aTop haTop' x.fst hK _ hJ
  obtain ⟨hA1, hdeg, hB, hz, -⟩ :=
    gB_deg_le C0 CE1 CE2 X hCYb hCE1 hCE2 hH aTop haTop' X.L.a haw x.fst hK
  have hW : 0 < X.winA.card := Finset.card_pos.mpr ⟨_, haw⟩
  have hk : 0 ≤ ⌊X.L.Y * D1r C0 CE1 CE2 X CM⌋ := Int.floor_nonneg.mpr hYD
  have hmain := hL X.p (2 * X.s + 1) X.r (gB C0 CE1 CE2 X aTop 0 x.fst) (gB_blockOK _ _ _ _ _ _ _)
    x.snd.1 x.snd.2 hLOK (aBig X) hA1 hdeg hB hz n₁ e he hli horth ⌊D1r C0 CE1 CE2 X CM⌋ hdiag
    (X.L.a - x.fst.oPlus) X.winA.card h _ hk hW hWh hJh
  have hbe : ∀ (aPlus z : ℕ), aPlus - x.fst.oPlus = z →
      bejj (r := X.r) X.p (gB C0 CE1 CE2 X aTop aPlus x.fst) x.snd.1 x.snd.2 =
        bejj (r := X.r) X.p (setZ (gB C0 CE1 CE2 X aTop 0 x.fst) z) x.snd.1 x.snd.2 := by
    rintro aPlus z rfl
    rfl
  rw [winA_sum]
  refine le_trans (le_of_eq (Finset.sum_congr rfl (fun i _ => ?_))) (le_trans hmain ?_)
  · rw [hbe (X.L.a + i) (X.L.a - x.fst.oPlus + i) (by omega)]
    rfl
  · rw [mul_comm (5 / X.L.Y)]
    apply mul_le_mul_of_nonneg_left _ (Nat.cast_nonneg _)
    exact mul_le_mul_of_nonneg_left hineq (Nat.cast_nonneg _)

end Formalism.MainNotions.G.GramWindowAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.RestWinOfLvl =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.InitialPointNumericBound =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FockGramWindow.InitialPointNumericBound", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.RestWinOfLvl\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.CoarseCLower\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.FirstCoefficientLeDiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.GramWindowAlt

open MvPolynomial Finset Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.MainNotions.G.CountingStatementReduction Formalism.MainNotions.G.SymmetricFormBlocks

theorem clog_le_lg (p : ℕ) (hp : 1 < p) (x : ℕ) (hx : 2 ≤ x) : (Nat.clog p x : ℝ) ≤ Real.logb p x + 1 := by
  have hpos : 0 < Nat.clog p x := Nat.clog_pos hp (by omega)
  have hk := Nat.pow_pred_clog_lt_self p (by omega : 1 < x)
  have hpR : (1 : ℝ) < p := by exact_mod_cast hp
  have hxR : (0 : ℝ) < x := by positivity
  have h1 : (p : ℝ) ^ (Nat.clog p x).pred < x := by exact_mod_cast hk
  have h2 : ((Nat.clog p x).pred : ℝ) < Real.logb p x := by
    rw [Real.lt_logb_iff_rpow_lt hpR hxR, Real.rpow_natCast]
    exact h1
  have h3 : Nat.clog p x = (Nat.clog p x).pred + 1 := (Nat.succ_pred_eq_of_pos hpos).symm
  rw [h3]
  push_cast
  linarith

variable {C0 CE1 CE2 : ℝ} {X : flipOneThree.Inst}

private theorem twentyfive_le_p_of_segFacts (hS : SegFacts C0 CE1 CE2 X) : (25 : ℝ) ≤ X.L.p := by
  have hm4 : (4 : ℝ) ≤ X.L.m := by exact_mod_cast hS.hF.m4
  nlinarith [hS.hF.p_ge]

theorem lgN_le (hS : SegFacts C0 CE1 CE2 X) : (lgN X.p (aBig X) X.r : ℝ) ≤ lgA X.p X.L.a X.r + 1 := by
  have hF := hS.hF
  have hp25 := twentyfive_le_p_of_segFacts hS
  have hp1 : (1 : ℝ) < X.p := by
    show (1 : ℝ) < X.L.p
    linarith
  have ha1 : (1 : ℝ) ≤ X.L.a := hF.a1
  have ha1N : 1 ≤ X.L.a := by exact_mod_cast hF.a1
  have hm4 : (4 : ℝ) ≤ X.L.m := by exact_mod_cast hF.m4
  have hs : 2 * (X.s : ℝ) + 2 ≤ X.L.m := by exact_mod_cast hF.s_le
  have hyN : 8 * aBig X + X.r ≠ 0 := by
    apply Nat.pos_iff_ne_zero.mp
    unfold aBig
    have := Nat.mul_pos (by omega : 0 < 3 * X.s + 2) (by omega : 0 < X.L.a)
    omega
  have hpow := Nat.pow_log_le_self X.p hyN
  have hyR : (0 : ℝ) < ((8 * aBig X + X.r : ℕ) : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hyN
  have hlog : ((Nat.log X.p (8 * aBig X + X.r) : ℕ) : ℝ) ≤ Real.logb X.p ((8 * aBig X + X.r : ℕ) : ℝ) := by
    rw [Real.le_logb_iff_rpow_le hp1 hyR, Real.rpow_natCast]
    exact_mod_cast hpow
  have hs0 : (0 : ℝ) ≤ X.s := Nat.cast_nonneg _
  have hr0 : (0 : ℝ) ≤ X.r := Nat.cast_nonneg _
  have hyle : ((8 * aBig X + X.r : ℕ) : ℝ) ≤ (3 * (X.s : ℝ) + 2) * (8 * X.L.a + X.r) := by
    unfold aBig
    push_cast
    nlinarith
  have hA : (0 : ℝ) < 8 * X.L.a + X.r := by linarith
  have hB : (0 : ℝ) < 3 * (X.s : ℝ) + 2 := by linarith
  have h2 : Real.logb X.p ((8 * aBig X + X.r : ℕ) : ℝ)
      ≤ Real.logb X.p ((3 * (X.s : ℝ) + 2) * (8 * X.L.a + X.r)) :=
    Real.logb_le_logb_of_le hp1 hyR hyle
  rw [Real.logb_mul hB.ne' hA.ne'] at h2
  have h3 : Real.logb X.p (3 * (X.s : ℝ) + 2) ≤ 1 := by
    rw [Real.logb_le_iff_le_rpow hp1 hB, Real.rpow_one]
    show 3 * (X.s : ℝ) + 2 ≤ X.L.p
    nlinarith [hF.p_ge]
  unfold lgN lgA
  push_cast
  linarith

theorem initial_point_numeric_bound (t s r L lam : ℝ) (ht0 : 0 ≤ t) (hts : t ≤ s) (hr4 : 4 ≤ r) (hL : L ≤ 2 * lam)
    (hlam : 0 ≤ lam) : ((t + 1) * (r + 1) + ((2 * s + 1 + 1) * r + (t + 1) * 2)) * L + L ≤ 3 * (s + 2) * r ^ 2 * lam := by
  have hs0 : 0 ≤ s := le_trans ht0 hts
  have hC0 : 0 ≤ (t + 1) * (r + 1) + ((2 * s + 1 + 1) * r + (t + 1) * 2) + 1 := by nlinarith
  have key := mul_le_mul_of_nonneg_left hL hC0
  have hcoef : 2 * ((t + 1) * (r + 1) + ((2 * s + 1 + 1) * r + (t + 1) * 2) + 1) ≤ 3 * (s + 2) * r ^ 2 := by
    nlinarith [mul_le_mul_of_nonneg_right hts (by linarith : (0 : ℝ) ≤ r),
      mul_le_mul_of_nonneg_left hr4 (by nlinarith : (0 : ℝ) ≤ (s + 2) * r)]
  nlinarith [mul_le_mul_of_nonneg_right hcoef hlam]

theorem initial_point_nat_cast (p A r N t : ℕ) : (x0N p A r N t : ℝ) =
    (((t : ℝ) + 1) * ((r : ℝ) + 1) + (((N : ℝ) + 1) * (r : ℝ) + ((t : ℝ) + 1) * 2)) * (lgN p A r : ℝ) := by
  unfold x0N; push_cast; ring

private theorem one_le_lgA_of_segFacts (hS : SegFacts C0 CE1 CE2 X) : 1 ≤ lgA X.p X.L.a X.r := by
  have hp25 := twentyfive_le_p_of_segFacts hS
  have hp1 : (1 : ℝ) < X.p := by
    show (1 : ℝ) < X.L.p
    linarith
  have ha1 : (1 : ℝ) ≤ X.L.a := hS.hF.a1
  have hr0 : (0 : ℝ) ≤ X.r := Nat.cast_nonneg _
  unfold lgA
  have : 0 ≤ Real.logb X.p (8 * X.L.a + X.r) := Real.logb_nonneg hp1 (by linarith)
  linarith

theorem hx_inst (hS : SegFacts C0 CE1 CE2 X) :
    (x0N X.p (aBig X) X.r (2 * X.s + 1) (X.S C0 CE1 CE2).t : ℝ) + lgN X.p (aBig X) X.r ≤ kapS X := by
  have hF := hS.hF
  rw [initial_point_nat_cast]
  push_cast
  have hL := lgN_le hS
  have hlam1 := one_le_lgA_of_segFacts hS
  have htN : (X.S C0 CE1 CE2).t ≤ X.s := Nat.sub_le _ _
  have ht : ((X.S C0 CE1 CE2).t : ℝ) ≤ X.s := by exact_mod_cast htN
  have hr4 : (4 : ℝ) ≤ X.r := by exact_mod_cast hF.m4
  have key := initial_point_numeric_bound ((X.S C0 CE1 CE2).t : ℝ) X.s X.r (lgN X.p (aBig X) X.r) (lgA X.p X.L.a X.r)
    (Nat.cast_nonneg _) ht hr4 (by linarith) (by linarith)
  unfold kapS
  linarith

theorem win_facts (hS : SegFacts C0 CE1 CE2 X) :
    (X.L.a : ℝ) / (X.L.k * X.L.Y) ≤ (X.winA.card : ℝ) ∧ X.winA.card ≤ X.L.a + 1 := by
  have hF := hS.hF
  have hmem := a_mem_win hS
  unfold flipOneThree.Inst.winA at hmem ⊢
  rw [Nat.card_Icc]
  have haF := (Finset.mem_Icc.mp hmem).2
  have hlt := Nat.lt_floor_add_one ((X.L.a : ℝ) + X.L.a / (X.L.k * X.L.Y) + X.xa)
  have hle : ((⌊(X.L.a : ℝ) + X.L.a / (X.L.k * X.L.Y) + X.xa⌋₊ : ℕ) : ℝ) ≤ 2 * X.L.a :=
    (Nat.floor_le hF.win0).trans hF.win_le
  have hleN : ⌊(X.L.a : ℝ) + X.L.a / (X.L.k * X.L.Y) + X.xa⌋₊ ≤ 2 * X.L.a := by exact_mod_cast hle
  constructor
  · rw [Nat.cast_sub (by omega)]
    push_cast
    linarith [hS.xa0]
  · omega

theorem q_num (J W a k Y b' p : ℝ) (hY : 1 ≤ Y) (hk : 5 ≤ k) (hb : 0 < b') (hpk : k ^ 2 * Y ^ 2 ≤ p) (hpb : p * b' < a)
    (hJ : J ≤ 5 / 2 * b') (hW : a / (k * Y) ≤ W) : 0 < W ∧ J / W ≤ 1 / (2 * Y) := by
  have hY0 : 0 < Y := by linarith
  have hk0 : 0 < k := by linarith
  have hkY : 0 < k * Y := mul_pos hk0 hY0
  have hp0 : 0 < p := by
    have : 0 < k ^ 2 * Y ^ 2 := by positivity
    linarith
  have ha0 : 0 < a := by
    have := mul_pos hp0 hb
    linarith
  have hW1 : k * Y * b' < a / (k * Y) := by
    rw [lt_div_iff₀ hkY]
    have e : k * Y * b' * (k * Y) = k ^ 2 * Y ^ 2 * b' := by ring
    rw [e]
    have : k ^ 2 * Y ^ 2 * b' ≤ p * b' := mul_le_mul_of_nonneg_right hpk hb.le
    linarith
  have hkYb : 0 < k * Y * b' := by positivity
  have hW0 : 0 < W := by linarith
  refine ⟨hW0, ?_⟩
  rw [div_le_div_iff₀ hW0 (by positivity)]
  have h1 : J * (2 * Y) ≤ 5 * b' * Y := by
    nlinarith [mul_le_mul_of_nonneg_right hJ (by linarith : (0 : ℝ) ≤ 2 * Y)]
  have h2 : 5 * b' * Y ≤ k * Y * b' := by
    nlinarith [mul_le_mul_of_nonneg_right hk (by positivity : (0 : ℝ) ≤ Y * b')]
  linarith

theorem kap_facts (hS : SegFacts C0 CE1 CE2 X) (CM : ℝ) (hCM : 1 ≤ CM) :
    lgA X.p X.L.a X.r ≤ kapS X ∧ 0 < kapS X ∧ kapS X ≤ D1r C0 CE1 CE2 X CM := by
  have hF := hS.hF
  have hlam1 := one_le_lgA_of_segFacts hS
  have hr4 : (4 : ℝ) ≤ X.r := by exact_mod_cast hF.m4
  have hs0 : (0 : ℝ) ≤ X.s := Nat.cast_nonneg _
  have hc : 1 ≤ 3 * ((X.s : ℝ) + 2) * (X.r : ℝ) ^ 2 := by nlinarith
  have hk : lgA X.p X.L.a X.r ≤ kapS X := by
    unfold kapS
    nlinarith
  have hk0 : 0 < kapS X := by linarith
  refine ⟨hk, hk0, ?_⟩
  unfold D1r
  have ht0 : (0 : ℝ) ≤ ((X.S C0 CE1 CE2).t : ℝ) := Nat.cast_nonneg _
  have hY := hS.Y1
  have h1 : 0 ≤ X.L.Y * kapS X + CM * kapS X := by
    nlinarith [mul_pos (by linarith : (0 : ℝ) < X.L.Y) hk0, mul_pos (by linarith : (0 : ℝ) < CM) hk0]
  nlinarith [mul_nonneg ht0 h1, mul_le_mul_of_nonneg_right hCM hk0.le]

private theorem bPlus_le_five_halves_mul_b' (hS : SegFacts C0 CE1 CE2 X) :
    ((X.S C0 CE1 CE2).bPlus : ℝ) ≤ 5 / 2 * X.L.b' := by
  have hmemT : ∀ x ∈ evenTops X.L.TT, x ∈ X.L.TT := fun x hx => by
    unfold evenTops at hx
    rw [Finset.mem_sort] at hx
    exact (Finset.mem_filter.mp hx).1
  have hmem : segNext X.L.TT X.j ∈ X.L.TT := by
    unfold segNext
    exact hmemT _ (List.get_mem _ _)
  exact hS.hF.bT_le _ hmem

theorem restWinNum_proved (hS : SegFacts C0 CE1 CE2 X) (hpk : X.L.k ^ 2 * X.L.Y ^ 2 ≤ (X.L.p : ℝ)) (CM : ℝ)
    (hCM : 1 ≤ CM) : RestWinNum C0 CE1 CE2 X CM := by
  intro aTop haTop b hK J hJ
  have hF := hS.hF
  have hY1 := hS.Y1
  have hp25 := twentyfive_le_p_of_segFacts hS
  have hp1 : (1 : ℝ) < X.p := by
    show (1 : ℝ) < X.L.p
    linarith
  have hp1N : 1 < X.p := by exact_mod_cast hp1
  have ha1 : (1 : ℝ) ≤ X.L.a := hF.a1
  have ha1N : 1 ≤ X.L.a := by exact_mod_cast hF.a1
  have hm4 : (4 : ℝ) ≤ X.L.m := by exact_mod_cast hF.m4
  have hk5 : (5 : ℝ) ≤ X.L.k := by
    unfold ColumnSystems.Loc.k
    linarith
  obtain ⟨hlk, hk0, hkD⟩ := kap_facts hS CM hCM
  have hD0 : 0 < D1r C0 CE1 CE2 X CM := lt_of_lt_of_le hk0 hkD
  refine ⟨oplus_le_a hS b aTop hK, mul_nonneg (by linarith) hD0.le, ?_⟩
  obtain ⟨hWlow, hWup⟩ := win_facts hS
  have hJR : (J : ℝ) ≤ 5 / 2 * X.L.b' := (Nat.cast_le.mpr hJ).trans (bPlus_le_five_halves_mul_b' hS)
  have hb0 := hF.b0
  have hblt := hF.b_lt
  have hJa : (J : ℝ) ≤ X.L.a := by nlinarith
  have hJaN : J + 1 ≤ X.L.a + 1 := by
    have : J ≤ X.L.a := by exact_mod_cast hJa
    omega
  refine ⟨Nat.clog X.p (X.L.a + 1), hWup.trans (Nat.le_pow_clog hp1N _),
    hJaN.trans (Nat.le_pow_clog hp1N _), ?_⟩
  obtain ⟨hW0, hqY⟩ := q_num (J : ℝ) (X.winA.card : ℝ) X.L.a X.L.k X.L.Y X.L.b' X.L.p hY1 hk5 hb0 hpk hblt hJR hWlow
  have hq0 : 0 ≤ (J : ℝ) / (X.winA.card : ℝ) := div_nonneg (Nat.cast_nonneg _) hW0.le
  have hh0 : (0 : ℝ) ≤ (Nat.clog X.p (X.L.a + 1) : ℝ) := Nat.cast_nonneg _
  have hhk : (Nat.clog X.p (X.L.a + 1) : ℝ) ≤ kapS X := by
    have h1 := clog_le_lg X.p hp1N (X.L.a + 1) (by omega)
    have hr0 : (0 : ℝ) ≤ X.r := Nat.cast_nonneg _
    have hlog : Real.logb X.p ((X.L.a + 1 : ℕ) : ℝ) ≤ Real.logb X.p (8 * X.L.a + X.r) :=
      Real.logb_le_logb_of_le hp1 (by positivity) (by push_cast; linarith)
    unfold lgA at hlk
    linarith
  have hx := hx_inst hS
  have hfl : ((⌊D1r C0 CE1 CE2 X CM⌋ : ℤ) : ℝ) ≤ D1r C0 CE1 CE2 X CM := Int.floor_le _
  have hE : X.L.Y * D1r C0 CE1 CE2 X CM ≤ ((⌊X.L.Y * D1r C0 CE1 CE2 X CM⌋ : ℤ) : ℝ) + 1 :=
    (Int.lt_floor_add_one _).le
  have key := eps_num X.L.Y (D1r C0 CE1 CE2 X CM) (kapS X) ((J : ℝ) / (X.winA.card : ℝ))
    (Nat.clog X.p (X.L.a + 1) : ℝ)
    ((x0N X.p (aBig X) X.r (2 * X.s + 1) (X.S C0 CE1 CE2).t : ℝ) + (lgN X.p (aBig X) X.r : ℝ))
    ((⌊D1r C0 CE1 CE2 X CM⌋ : ℤ) : ℝ) (((⌊X.L.Y * D1r C0 CE1 CE2 X CM⌋ : ℤ) : ℝ) + 1)
    hY1 hk0 hkD hqY hh0 hhk hx hfl hE
  calc _ = (J : ℝ) / (X.winA.card : ℝ)
        + ((x0N X.p (aBig X) X.r (2 * X.s + 1) (X.S C0 CE1 CE2).t : ℝ) + (lgN X.p (aBig X) X.r : ℝ)
          + ((⌊D1r C0 CE1 CE2 X CM⌋ : ℤ) : ℝ) + (J : ℝ) / (X.winA.card : ℝ) * (Nat.clog X.p (X.L.a + 1) : ℝ))
          / (((⌊X.L.Y * D1r C0 CE1 CE2 X CM⌋ : ℤ) : ℝ) + 1) := by ring
    _ ≤ 5 / X.L.Y := key

end Formalism.MainNotions.G.GramWindowAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.InitialPointNumericBound =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.GramWindow2Proved =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FockGramWindow.GramWindow2Proved", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.GramWindow2\npublic import Formalism.MahlerMeasure.CoarseLevelSlackInequalities\npublic import Formalism.MahlerMeasure.FinalD\npublic import Formalism.MahlerMeasure.MahlerMeasureProofs.MeanGam\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.BejjSmulLeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.GramWindowAlt

open MvPolynomial Finset

section Point

variable {p : ℕ} [hp : Fact p.Prime] {σ : Type}

theorem zsmul_eq (c : ℤ_[p]) (x : MvPolynomial σ ℚ_[p]) : c • x = (c : ℚ_[p]) • x := by
  rw [← algebraMap_smul ℚ_[p] c x, PadicInt.algebraMap_apply]

theorem norm_ge_of_gt (d : ℚ_[p]) (k : ℤ) (h : (p : ℝ) ^ (-((k : ℝ) + 1)) < ‖d‖) : (p : ℝ) ^ (-k) ≤ ‖d‖ := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.out.one_lt
  have hd : d ≠ 0 := by
    rintro rfl
    rw [norm_zero] at h
    exact absurd h (not_lt.2 (Real.rpow_nonneg (by linarith) _))
  rw [Padic.norm_eq_zpow_neg_valuation hd] at h ⊢
  have e1 : (p : ℝ) ^ (-((k : ℝ) + 1)) = (p : ℝ) ^ (-(k + 1) : ℤ) := by
    rw [← Real.rpow_intCast]
    push_cast
    rfl
  rw [e1] at h
  have h2 := (zpow_lt_zpow_iff_right₀ hp1).1 h
  exact (zpow_le_zpow_iff_right₀ hp1).2 (by omega)

theorem bad_le_smith (n : ℕ) (k : ℤ) (Ψ : MvPolynomial σ ℚ_[p] → MvPolynomial σ ℚ_[p] → ℚ_[p])
    (e : Fin n → MvPolynomial σ ℚ_[p]) (hli : LinearIndependent ℤ_[p] e)
    (h1 : ∀ (a : ℚ_[p]) u v, Ψ (a • u) v = a * Ψ u v) (h2 : ∀ u u' v, Ψ (u + u') v = Ψ u v + Ψ u' v)
    (h3 : ∀ (a : ℚ_[p]) u v, Ψ u (a • v) = a * Ψ u v) (h4 : ∀ u v v', Ψ u (v + v') = Ψ u v + Ψ u v')
    (s : ℚ_[p]) (hs0 : s ≠ 0) (hs1 : ‖s‖ ≤ 1) (U V : Matrix (Fin n) (Fin n) ℤ_[p]) (d : Fin n → ℤ_[p])
    (hU : IsUnit U.det) (hV : IsUnit V.det)
    (hG : ∀ a b, s * Ψ (e a) (e b) = (((U * Matrix.diagonal d * V) a b : ℤ_[p]) : ℚ_[p])) :
    Formalism.GM.M.bad p Ψ (Submodule.span ℤ_[p] (Set.range e)) k ≤
      (Finset.univ.filter (fun i => ‖(d i : ℚ_[p])‖ ≤ (p : ℝ) ^ (-((k : ℝ) + 1)))).card := by
  classical
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.out.one_lt
  have hp0 : (p : ℚ_[p]) ≠ 0 := Nat.cast_ne_zero.2 hp.out.ne_zero
  set be : MvPolynomial σ ℚ_[p] →ₗ[ℚ_[p]] MvPolynomial σ ℚ_[p] →ₗ[ℚ_[p]] ℚ_[p] :=
    LinearMap.mk₂ ℚ_[p] Ψ h2 (fun c u v => by rw [h1, smul_eq_mul]) h4 (fun c u v => by rw [h3, smul_eq_mul]) with hbe
  have hbeΨ : ∀ u v, be u v = Ψ u v := fun u v => rfl
  set L := Submodule.span ℤ_[p] (Set.range e) with hL
  have heL : ∀ a, e a ∈ L := fun a => Submodule.subset_span ⟨a, rfl⟩

  set P := U⁻¹ with hP
  set Q := V⁻¹ with hQ
  have hPU : P * U = 1 := Matrix.nonsing_inv_mul U hU
  have hVQ : V * Q = 1 := Matrix.mul_nonsing_inv V hV
  set x : Fin n → MvPolynomial σ ℚ_[p] := fun i => ∑ a, P i a • e a with hx
  set y : Fin n → MvPolynomial σ ℚ_[p] := fun l => ∑ b, Q b l • e b with hy
  have hxL : ∀ i, x i ∈ L := fun i => L.sum_mem fun a _ => L.smul_mem _ (heL a)
  have hyL : ∀ i, y i ∈ L := fun i => L.sum_mem fun a _ => L.smul_mem _ (heL a)
  have hxy : ∀ i l, s * Ψ (x i) (y l) = if i = l then (d i : ℚ_[p]) else 0 := by
    intro i l
    have e1 : s * Ψ (x i) (y l) = ∑ a, ∑ b, (P i a : ℚ_[p]) * (s * Ψ (e a) (e b)) * (Q b l : ℚ_[p]) := by
      rw [← hbeΨ, hx, hy]

      simp only [zsmul_eq, map_sum, map_smul, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul, hbeΨ,
      Finset.mul_sum]
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun a _ => ?_
      refine Finset.sum_congr rfl fun b _ => ?_
      ring
    have e2 : (((P * (U * Matrix.diagonal d * V) * Q) i l : ℤ_[p]) : ℚ_[p]) =
        ∑ a, ∑ b, (P i a : ℚ_[p]) * (s * Ψ (e a) (e b)) * (Q b l : ℚ_[p]) := by
      simp only [hG]
      generalize U * Matrix.diagonal d * V = M
      rw [Matrix.mul_apply]
      simp only [Matrix.mul_apply, Finset.sum_mul]
      rw [Finset.sum_comm]
      simp only [PadicInt.coe_sum, PadicInt.coe_mul]
    have e3 : P * (U * Matrix.diagonal d * V) * Q = Matrix.diagonal d := by
      calc P * (U * Matrix.diagonal d * V) * Q = (P * U) * Matrix.diagonal d * (V * Q) := by
            simp only [Matrix.mul_assoc]
        _ = Matrix.diagonal d := by rw [hPU, hVQ, Matrix.one_mul, Matrix.mul_one]
    rw [e1, ← e2, e3, Matrix.diagonal_apply]
    split_ifs <;> simp

  set S := Finset.univ.filter (fun i => ¬ ‖(d i : ℚ_[p])‖ ≤ (p : ℝ) ^ (-((k : ℝ) + 1))) with hS
  set m := S.card with hm
  set ι : Fin m → Fin n := fun t => (S.equivFin.symm t : Fin n) with hι
  have hιinj : Function.Injective ι := fun t t' h => S.equivFin.symm.injective (Subtype.ext h)
  have hιS : ∀ t, (p : ℝ) ^ (-k) ≤ ‖(d (ι t) : ℚ_[p])‖ := by
    intro t
    have : ι t ∈ S := (S.equivFin.symm t).2
    rw [hS, Finset.mem_filter] at this
    exact norm_ge_of_gt _ k (not_le.1 this.2)
  have hd0 : ∀ t, (d (ι t) : ℚ_[p]) ≠ 0 := by
    intro t h0
    have := hιS t
    rw [h0, norm_zero] at this
    exact absurd this (not_le.2 (zpow_pos (by linarith) _))
  have hsc : ∀ t, ‖(p : ℚ_[p]) ^ k * s / (d (ι t) : ℚ_[p])‖ ≤ 1 := by
    intro t
    rw [norm_div, norm_mul, norm_zpow, Padic.norm_p, inv_zpow', div_le_one (norm_pos_iff.2 (hd0 t))]
    calc (p : ℝ) ^ (-k) * ‖s‖ ≤ (p : ℝ) ^ (-k) * 1 :=
          mul_le_mul_of_nonneg_left hs1 (zpow_nonneg (by linarith) _)
      _ ≤ ‖(d (ι t) : ℚ_[p])‖ := by rw [mul_one]; exact hιS t
  have hgood : m ≤ Formalism.GM.M.goodCount p Ψ L k := by
    have hW : FiniteDimensional ℚ_[p] (Submodule.span ℚ_[p] (Set.range e)) :=
      FiniteDimensional.span_of_finite ℚ_[p] (Set.finite_range e)
    have hb := Formalism.MainNotions.G.SymmetricFormBlocks.gc_bdd_gen p Ψ h1
      (fun n' s' f v => by
        show be (∑ i ∈ s', f i) v = ∑ i ∈ s', be (f i) v

        rw [map_sum, LinearMap.sum_apply])
      L (Submodule.span ℚ_[p] (Set.range e)) (fun z hz => Submodule.span_subset_span ℤ_[p] ℚ_[p] _ hz) k
    set cc : Fin m → ℤ_[p] := fun t => ⟨(p : ℚ_[p]) ^ k * s / (d (ι t) : ℚ_[p]), hsc t⟩ with hcc
    refine le_csSup hb ⟨fun t => x (ι t), fun t => cc t • y (ι t), fun t => hxL _,
      fun t => L.smul_mem _ (hyL _), ?_⟩
    intro t t'
    show Ψ (x (ι t)) (cc t' • y (ι t')) = _
    rw [zsmul_eq, h3]
    have hh := hxy (ι t) (ι t')
    have hΨ : Ψ (x (ι t)) (y (ι t')) = (if ι t = ι t' then (d (ι t) : ℚ_[p]) else 0) / s := by
      rw [← hh]; field_simp
    rw [hΨ]
    by_cases htt : t = t'
    · subst htt
      rw [if_pos rfl, if_pos rfl]
      show (p : ℚ_[p]) ^ k * s / (d (ι t) : ℚ_[p]) * ((d (ι t) : ℚ_[p]) / s) = _
      have := hd0 t
      field_simp
    · rw [if_neg htt, if_neg (fun h => htt (hιinj h)), zero_div, mul_zero]
  have hrank : Module.finrank ℤ_[p] L = n := by
    rw [hL, finrank_span_eq_card hli, Fintype.card_fin]
  have hcard : (Finset.univ.filter (fun i => ‖(d i : ℚ_[p])‖ ≤ (p : ℝ) ^ (-((k : ℝ) + 1)))).card + m = n := by
    rw [hm, hS, Finset.card_filter_add_card_filter_not]
    simp
  unfold Formalism.GM.M.bad
  omega

end Point

open Formalism.GM Formalism.GM.MeanGammaLemmas in
theorem gramWindow2_proved : GramWindow2 := by
  intro p hp σ n del h Y0 k La0 t0 Ψ e s c hli h1 h2 h3 h4 hY0 hYh hdel hk hc hdet hlead hgram
  classical
  set Aq := binMatK ℚ_[p] del c with hAq

  set cz : Fin n → Fin n → ℕ → ℤ_[p] := fun a b i => ⟨c a b i, hc a b i⟩ with hcz
  have hczc : ∀ a b i, ((cz a b i : ℤ_[p]) : ℚ_[p]) = c a b i := fun _ _ _ => rfl
  set M : ℕ → Matrix (Fin n) (Fin n) ℤ_[p] := fun j a b =>
    ∑ i ∈ Finset.range (del + 1), cz a b i * (((t0 + j).choose i : ℕ) : ℤ_[p]) with hMdef
  have hM : ∀ j a b, ((M j a b : ℤ_[p]) : ℚ_[p]) = (Aq a b).eval (((t0 + j : ℕ) : ℚ_[p])) := by
    intro j a b
    rw [hAq, binMatK_eval_nat]
    simp only [hMdef, PadicInt.coe_sum, PadicInt.coe_mul, PadicInt.coe_natCast, hczc]
  choose U V d hU hV hfac using fun j => _root_.Formalism.GM.smith_form_p_adic_integers p n (M j)

  have hpt : ∀ j ∈ Finset.range Y0,
      (Formalism.GM.M.bad p (Ψ j) (Submodule.span ℤ_[p] (Set.range e)) k : ℝ) ≤
        ((Finset.univ.filter (fun i => ‖(d j i : ℚ_[p])‖ ≤ (p : ℝ) ^ (-((k : ℝ) + 1)))).card : ℝ) := by
    intro j hj
    obtain ⟨hs0, hs1, hg⟩ := hgram j hj
    have := bad_le_smith n k (Ψ j) e hli (h1 j) (h2 j) (h3 j) (h4 j) (s j) hs0 hs1 (U j) (V j) (d j) (hU j) (hV j)
      (fun a b => by rw [hg a b, ← hfac j, hM, Matrix.map_apply])
    exact_mod_cast this

  set alg := algebraMap ℚ_[p] (PadicAlgCl p) with halg
  set φ : ℤ_[p] →+* PadicAlgCl p := alg.comp PadicInt.Coe.ringHom with hφ
  have hφn : ∀ z : ℤ_[p], ‖φ z‖ = ‖z‖ := by
    intro z
    show ‖alg (z : ℚ_[p])‖ = _
    rw [halg, norm_algebraMap', PadicInt.norm_def]
  set c' : Fin n → Fin n → ℕ → PadicAlgCl p := fun i j k => alg (c i j k) with hc'
  have hAK : binMatK (PadicAlgCl p) del c' = Aq.map (Polynomial.map alg) :=
    binMatK_map ℚ_[p] (PadicAlgCl p) alg del _
  have hDk : (binMatK (PadicAlgCl p) del c').det = Aq.det.map alg := by
    rw [hAK]; exact split_det p Aq
  obtain ⟨hsplit, hcard⟩ := splits_form (binMatK (PadicAlgCl p) del c').det
  have hlc : (binMatK (PadicAlgCl p) del c').det.leadingCoeff = alg Aq.det.leadingCoeff := by
    rw [hDk, Polynomial.leadingCoeff_map]
  have hnd : (binMatK (PadicAlgCl p) del c').det.natDegree = Aq.det.natDegree := by
    rw [hDk, Polynomial.natDegree_map]
  have hlcnorm : ‖(binMatK (PadicAlgCl p) del c').det.leadingCoeff‖ = ‖Aq.det.leadingCoeff‖ := by
    rw [hlc, halg, norm_algebraMap']
  have hleadne : (binMatK (PadicAlgCl p) del c').det.leadingCoeff ≠ 0 := by
    rw [← norm_pos_iff, hlcnorm, norm_pos_iff]
    exact Polynomial.leadingCoeff_ne_zero.2 hdet
  have hLB' : -Real.logb p ‖(binMatK (PadicAlgCl p) del c').det.leadingCoeff‖ +
      ((binMatK (PadicAlgCl p) del c').det.roots.card : ℝ) / ((p : ℝ) - 1) ≤ (n : ℝ) * La0 := by
    rw [hlcnorm, hcard, hnd]; exact hlead
  have hc'norm : ∀ i j k, ‖c' i j k‖ ≤ 1 := by
    intro i j k
    simp only [hc', halg, norm_algebraMap']
    exact hc i j k
  set idx : ℤ → ℕ := fun t => (t - (t0 : ℤ)).toNat with hidxdef
  have hidx : ∀ j : ℕ, idx (progr (t0 : ℤ) 1 j) = j := by
    intro j
    simp only [hidxdef, progr]
    omega
  set U' : ℤ → Matrix (Fin n) (Fin n) (PadicAlgCl p) := fun t => φ.mapMatrix (U (idx t)) with hU'
  set V' : ℤ → Matrix (Fin n) (Fin n) (PadicAlgCl p) := fun t => φ.mapMatrix (V (idx t)) with hV'
  set dg' : ℤ → Fin n → PadicAlgCl p := fun t b => φ (d (idx t) b) with hdg'
  have hsm : ∀ j ∈ Finset.range Y0, (∀ x y, ‖U' (progr (t0 : ℤ) 1 j) x y‖ ≤ 1) ∧
      (∀ x y, ‖V' (progr (t0 : ℤ) 1 j) x y‖ ≤ 1) ∧
      ‖(U' (progr (t0 : ℤ) 1 j)).det‖ = 1 ∧ ‖(V' (progr (t0 : ℤ) 1 j)).det‖ = 1 ∧
      (binMatK (PadicAlgCl p) del c').map (Polynomial.eval ((progr (t0 : ℤ) 1 j : ℤ) : PadicAlgCl p)) =
        U' (progr (t0 : ℤ) 1 j) * Matrix.diagonal (dg' (progr (t0 : ℤ) 1 j)) * V' (progr (t0 : ℤ) 1 j) := by
    intro j _
    simp only [hU', hV', hdg', hidx]
    refine ⟨fun x y => ?_, fun x y => ?_, ?_, ?_, ?_⟩
    · rw [RingHom.mapMatrix_apply, Matrix.map_apply, hφn]; exact PadicInt.norm_le_one _
    · rw [RingHom.mapMatrix_apply, Matrix.map_apply, hφn]; exact PadicInt.norm_le_one _
    · rw [← RingHom.map_det, hφn]; exact PadicInt.isUnit_iff.1 (hU j)
    · rw [← RingHom.map_det, hφn]; exact PadicInt.isUnit_iff.1 (hV j)
    · have e1 : (Matrix.diagonal fun b => φ (d j b)) = φ.mapMatrix (Matrix.diagonal (d j)) := by
        rw [RingHom.mapMatrix_apply, Matrix.diagonal_map (map_zero φ)]
      rw [e1, ← map_mul, ← map_mul, ← hfac j, hAK]
      ext x y
      have hpt' : ((progr (t0 : ℤ) 1 j : ℤ) : PadicAlgCl p) = ((t0 + j : ℕ) : PadicAlgCl p) := by
        simp [progr]
      rw [Matrix.map_apply, Matrix.map_apply, hpt', Polynomial.eval_natCast_map, ← hM, RingHom.mapMatrix_apply,
        Matrix.map_apply]
      rfl
  have hE0 : (0 : ℝ) < (k : ℝ) + 1 := by
    have : (0 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
    linarith
  have key := Formalism.GM.Top.windowFullAP p (PadicAlgCl p) n del h ((k : ℝ) + 1) c'
    (binMatK (PadicAlgCl p) del c').det.leadingCoeff (binMatK (PadicAlgCl p) del c').det.roots (t0 : ℤ) 1 Y0 La0
    U' V' dg' isCoprime_one_left hY0 hYh (by omega) hE0 hleadne hc'norm hsplit hsm hLB'
  have hYpos : (0 : ℝ) < Y0 := by exact_mod_cast hY0
  rw [div_le_iff₀ hYpos] at key
  calc (∑ j ∈ Finset.range Y0, (Formalism.GM.M.bad p (Ψ j) (Submodule.span ℤ_[p] (Set.range e)) k : ℝ))
      ≤ ∑ j ∈ Finset.range Y0,
          ((Finset.univ.filter (fun i => ‖(d j i : ℚ_[p])‖ ≤ (p : ℝ) ^ (-((k : ℝ) + 1)))).card : ℝ) :=
        Finset.sum_le_sum hpt
    _ = ∑ j ∈ Finset.range Y0,
          ((Finset.univ.filter (fun i => ‖dg' (progr (t0 : ℤ) 1 j) i‖ ≤ (p : ℝ) ^ (-((k : ℝ) + 1)))).card : ℝ) := by
        refine Finset.sum_congr rfl fun j _ => ?_
        simp only [hdg', hidx, hφn, PadicInt.norm_def]
    _ ≤ (n : ℝ) * ((del : ℝ) / Y0 + (La0 + (del : ℝ) * h / Y0) / ((k : ℝ) + 1)) * Y0 := key
    _ = (Y0 : ℝ) * ((n : ℝ) * ((del : ℝ) / Y0 + (La0 + (del : ℝ) * h / Y0) / ((k : ℝ) + 1))) := by ring

end Formalism.MainNotions.G.GramWindowAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.GramWindow2Proved =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.LettersAtUPos =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FockGramWindow.LettersAtUPos", "h": "module\n\npublic import Formalism.MahlerMeasure.MahlerMeasureProofs.PhiInt\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.LvlDef\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.SLetCastSucc\npublic import Formalism.MahlerMeasure.MahlerMeasureProofs.SSDirect\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ValFactSumLe\npublic import Formalism.ThetaLogCoordinates.BihomogeneousPairs.LetterChainEmbeddings.BiHomPlus\npublic import Formalism.ThetaLogCoordinates.BihomogeneousPairs.LetterChainEmbeddings.SmulMemOfNorm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.GramWindowAlt

open MvPolynomial Finset Formalism.GM Formalism.GM.M.PhiIntegrality Formalism.MainNotions.G.SymmetricFormBlocks
open scoped Nat

section Lat

variable (p : ℕ) [hp : Fact p.Prime] {N r : ℕ} [NeZero r] (G : M.BlockData N)

theorem Ljj_le (S : Submodule ℤ_[p] (MvPolynomial (M.BVar N r G.T.t) ℚ_[p])) (j : Fin G.T.t → ℕ) (jp : ℕ)
    (h : ∀ y ∈ M.YZ p (r := r) (G.lettersAt j jp) G.T.J G.T.thr, ∀ g ∈ M.XiPolZ p N r G.T.t (G.B - jp),
      rename (M.chainEmb N r G.T.t) y * g ∈ S) : Ljj p (r := r) G j jp ≤ S := by
  unfold Ljj
  rw [Submodule.span_le]
  rintro x ⟨y, hy, g, hg, rfl⟩
  exact h y hy g hg

theorem Ljj_int (j : Fin G.T.t → ℕ) (jp : ℕ) (v : MvPolynomial (M.BVar N r G.T.t) ℚ_[p])
    (hv : v ∈ Ljj p (r := r) G j jp) : Bnd 1 v := by
  have h := Ljj_le p G (M.IntPol p (M.BVar N r G.T.t)) j jp
    (fun y hy g hg => M.intPol_mul' (M.intPol_rename' _ hy.2.2) hg.2) hv
  exact (Formalism.InvariantFactorPaths.KP.LL.intPol_iff_bnd v).1 h

def dJ (j : Fin G.T.t → ℕ) (jp : ℕ) (a : Fin (N + 1)) : ℕ :=
  chDeg (G.lettersAt j jp) a + (if Fin.last N = a then G.B - jp else 0)

theorem Ljj_hom (a : Fin (N + 1)) (j : Fin G.T.t → ℕ) (jp : ℕ) (v : MvPolynomial (M.BVar N r G.T.t) ℚ_[p])
    (hv : v ∈ Ljj p (r := r) G j jp) : IsWeightedHomogeneous (wL (r := r) G a) v (dJ G j jp a) := by
  have key : Ljj p (r := r) G j jp ≤
      (weightedHomogeneousSubmodule ℚ_[p] (wL (r := r) G a) (dJ G j jp a)).restrictScalars ℤ_[p] := by
    refine Ljj_le p G _ j jp ?_
    intro y hy g hg
    exact (hom_chain p G a _ y hy.2.1).mul (hom_xi p G a _ g hg)
  exact key hv

theorem prod_dJ (j : Fin G.T.t → ℕ) (jp : ℕ) : ∏ a, (dJ G j jp a)! = degFact G j jp := by
  unfold dJ degFact chDeg
  rw [Fin.prod_univ_castSucc]
  congr 1
  · apply Finset.prod_congr rfl
    intro a0 _
    simp [Fin.castSucc_inj, (Fin.castSucc_lt_last a0).ne']
  · simp [Fin.castSucc_ne_last]

theorem lettersAt_le (j : Fin G.T.t → ℕ) (jp : ℕ) (a0 : Fin N) : (G.lettersAt j jp).deg a0 ≤ G.LL.deg a0 := by
  unfold M.BlockData.lettersAt
  exact le_trans (Nat.sub_le _ _) (Nat.sub_le _ _)

theorem dJ_le (A : ℕ) (hdeg : ∀ x, G.LL.deg x ≤ 2 * A) (hBa : G.B ≤ 2 * A) (j : Fin G.T.t → ℕ) (jp : ℕ)
    (a : Fin (N + 1)) : dJ G j jp a ≤ 2 * A := by
  unfold dJ chDeg
  by_cases ha : Fin.last N = a
  · subst ha
    simp [Fin.castSucc_ne_last]
    omega
  · rw [if_neg ha]
    obtain ⟨a0, rfl⟩ : ∃ a0, Fin.castSucc a0 = a := Fin.exists_castSucc_eq.2 (Ne.symm ha)
    have h1 := lettersAt_le G j jp a0
    have h2 := hdeg a0
    simp [Fin.castSucc_inj]
    omega

theorem log_le_lgN (A x : ℕ) (hx : x ≤ 8 * A + r) : Nat.log p x + 1 ≤ lgN p A r := by
  unfold lgN
  have h1 := Nat.log_mono_right (b := p) hx
  omega

theorem Ljj_val (A : ℕ) (hdeg : ∀ x, G.LL.deg x ≤ 2 * A) (hBa : G.B ≤ 2 * A) (j : Fin G.T.t → ℕ) (jp : ℕ)
    (v : MvPolynomial (M.BVar N r G.T.t) ℚ_[p]) (hv : v ∈ Ljj p (r := r) G j jp) :
    ∀ m ∈ v.support, padicValNat p (degFact G j jp) ≤
      padicValNat p (m.prod fun _ i => i !) + ((N + 1) * r + (G.T.t + 1) * 2) * lgN p A r := by
  intro m hm
  rw [← prod_dJ G j jp]
  have hw : ∀ a, Finsupp.weight (wL (r := r) G a) m = dJ G j jp a :=
    fun a => Ljj_hom p G a j jp v hv (mem_support_iff.mp hm)
  refine val_letters_le p G m (dJ G j jp) hw (lgN p A r) (fun a => ?_)
  have h1 := dJ_le G A hdeg hBa j jp a
  have h2 := log_le_lgN p (r := r) A (dJ G j jp a) (by omega)
  omega

theorem lettersAt_uPos (hB : G.BlockOK) (j : Fin G.T.t → ℕ) (jp : ℕ) :
    (G.lettersAt j jp).deg G.uPos = G.LL.deg G.uPos - jp := by
  obtain ⟨-, hpos, -, -⟩ := hB
  have hz : (∑ i : Fin G.T.t, if (G.uPos : ℕ) = G.T.pos i ∨ (G.uPos : ℕ) = G.T.pos i + 1 then j i else 0) = 0 :=
    Finset.sum_eq_zero fun i _ => if_neg (by have := hpos i; omega)
  change (List.map (fun i : Fin G.T.t => if (G.uPos : ℕ) = G.T.pos i ∨ (G.uPos : ℕ) = G.T.pos i + 1 then j i else 0) (List.finRange G.T.t)).sum = 0 at hz
  unfold M.BlockData.lettersAt
  simp only [hz, ite_true, Nat.sub_zero]

theorem Ljj_biHom (hB : G.BlockOK) (j : Fin G.T.t → ℕ) (jp : ℕ) (v : MvPolynomial (M.BVar N r G.T.t) ℚ_[p])
    (hv : v ∈ Ljj p (r := r) G j jp) :
    BiHom (fun c => (Sum.inl (Fin.castSucc G.uPos, c) : M.BVar N r G.T.t)) (fun c => M.xiVar N r G.T.t c)
      (G.LL.deg G.uPos - jp) (G.B - jp) v := by
  have h1 := Formalism.InvariantFactorPaths.KP.LL.biHom_plus (p := p) (r := r) (D := G) j jp v hv
  rw [lettersAt_uPos G hB j jp] at h1
  exact h1

end Lat

end Formalism.MainNotions.G.GramWindowAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.LettersAtUPos =====

-- ===== clump member: Formalism.PolynomialDimension.MultinomialDepth.SegmentBoundThreeHolds =====
-- clump-header: {"m": "Formalism.PolynomialDimension.MultinomialDepth.SegmentBoundThreeHolds", "h": "module\n\npublic import Formalism.PolynomialDimension.DigitSumValuationBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Polynomial.BigOperators\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Finset

namespace Formalism.CountingSumsFrames

theorem det_leading_diagonal : DetLeadDiag := by
  intro K _ n J A d hdeg hcoeff
  have hprod : ∀ σ : Equiv.Perm (Fin n), (∏ i, A (σ i) i).coeff (n * J) = ∏ i, (A (σ i) i).coeff J := by
    intro σ
    have h1 := Polynomial.coeff_prod_of_natDegree_le (s := Finset.univ) (fun i => A (σ i) i) J
      (fun i _ => hdeg (σ i) i)
    rw [Finset.card_univ, Fintype.card_fin] at h1
    exact h1
  rw [Matrix.det_apply']
  constructor
  · apply Polynomial.natDegree_sum_le_of_forall_le
    intro σ _
    refine (Polynomial.natDegree_mul_le).trans ?_
    rw [Polynomial.natDegree_intCast, zero_add]
    refine (Polynomial.natDegree_prod_le _ _).trans ?_
    calc ∑ i, (A (σ i) i).natDegree ≤ ∑ _i : Fin n, J := Finset.sum_le_sum fun i _ => hdeg (σ i) i
      _ = n * J := by simp
  · rw [Polynomial.finsetSum_coeff, Finset.sum_eq_single 1]
    · rw [← Polynomial.C_eq_intCast, Polynomial.coeff_C_mul, hprod]
      simp only [Equiv.Perm.sign_one, Units.val_one, Int.cast_one, one_mul, Equiv.Perm.one_apply]
      exact Finset.prod_congr rfl fun i _ => by rw [hcoeff]; simp
    · intro σ _ hσ
      rw [← Polynomial.C_eq_intCast, Polynomial.coeff_C_mul, hprod]
      obtain ⟨i, hi⟩ := not_forall.mp (mt Equiv.ext hσ)
      rw [Finset.prod_eq_zero (Finset.mem_univ i) (by rw [hcoeff, if_neg (by simpa using hi)]), mul_zero]
    · intro h
      exact absurd (Finset.mem_univ _) h

end Formalism.CountingSumsFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PolynomialDimension.MultinomialDepth.SegmentBoundThreeHolds =====

-- ===== clump member: Formalism.PolynomialDimension.ChangeLatticeGoodRank =====
-- clump-header: {"m": "Formalism.PolynomialDimension.ChangeLatticeGoodRank", "h": "module\n\npublic import Formalism.PolynomialDimension.DigitSumValuationBound\npublic import Formalism.PolynomialDimension.MultinomialDepth.SegmentBoundThreeHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.CountingSumsFrames.Top

end Formalism.CountingSumsFrames.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PolynomialDimension.ChangeLatticeGoodRank =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.BinMatNatDegreeLe =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FockGramWindow.BinMatNatDegreeLe", "h": "module\n\npublic import Formalism.MahlerMeasure.StatementD\npublic import Formalism.MahlerMeasure.MahlerMeasureProofs.MeanGam\npublic import Formalism.PolynomialDimension.ChangeLatticeGoodRank\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.GramWindowAlt

open Polynomial Finset Formalism.GM

section
variable (K : Type) [Field K] [CharZero K]

theorem binK_natDegree (k : ℕ) : (binK K k).natDegree = k := by
  unfold binK
  have h : ((k.factorial : K))⁻¹ ≠ 0 := inv_ne_zero (by exact_mod_cast k.factorial_ne_zero)
  rw [natDegree_C_mul h, descPochhammer_natDegree]

theorem binK_coeff_top (k : ℕ) : (binK K k).coeff k = ((k.factorial : K))⁻¹ := by
  unfold binK
  rw [coeff_C_mul]
  have h := (monic_descPochhammer K k).coeff_natDegree
  rw [descPochhammer_natDegree] at h
  rw [h, mul_one]

theorem binMat_natDegree_le {n : ℕ} (J : ℕ) (c : Fin n → Fin n → ℕ → K) (a b : Fin n) :
    (binMatK K J c a b).natDegree ≤ J := by
  unfold binMatK
  refine natDegree_sum_le_of_forall_le _ _ fun k hk => ?_
  refine (natDegree_C_mul_le _ _).trans ?_
  rw [binK_natDegree]
  simp only [mem_range] at hk; omega

theorem binMat_coeff_top {n : ℕ} (J : ℕ) (c : Fin n → Fin n → ℕ → K) (a b : Fin n) :
    (binMatK K J c a b).coeff J = c a b J * ((J.factorial : K))⁻¹ := by
  unfold binMatK
  rw [finsetSum_coeff, Finset.sum_eq_single J]
  · rw [coeff_C_mul, binK_coeff_top]
  · intro k hk hne
    rw [coeff_C_mul, coeff_eq_zero_of_natDegree_lt, mul_zero]
    rw [binK_natDegree]
    simp only [mem_range] at hk; omega
  · intro h; simp at h

end

theorem lead_bound (p : ℕ) [hp : Fact p.Prime] (n J : ℕ) (c : Fin n → Fin n → ℕ → ℚ_[p]) (d : Fin n → ℚ_[p])
    (hc : ∀ a b, c a b J = if a = b then d a else 0) (R Λ : ℝ) (hd : ∀ a, d a ≠ 0 ∧ -Real.logb p ‖d a‖ ≤ R)
    (hV : (J : ℝ) / ((p : ℝ) - 1) - padicValNat p J.factorial ≤ Λ) :
    (binMatK ℚ_[p] J c).det ≠ 0 ∧
      -Real.logb p ‖(binMatK ℚ_[p] J c).det.leadingCoeff‖ +
        ((binMatK ℚ_[p] J c).det.natDegree : ℝ) / ((p : ℝ) - 1) ≤ (n : ℝ) * (R + Λ) := by
  have hJ0 : ((J.factorial : ℚ_[p])) ≠ 0 := by exact_mod_cast J.factorial_ne_zero
  obtain ⟨h1, h2⟩ := _root_.Formalism.CountingSumsFrames.det_leading_diagonal ℚ_[p] n J (binMatK ℚ_[p] J c) (fun a => d a * ((J.factorial : ℚ_[p]))⁻¹)
    (binMat_natDegree_le ℚ_[p] J c) (fun a b => by
      rw [binMat_coeff_top, hc]; split_ifs <;> simp)
  have hne : ∏ a, d a * ((J.factorial : ℚ_[p]))⁻¹ ≠ 0 :=
    Finset.prod_ne_zero_iff.2 fun a _ => mul_ne_zero (hd a).1 (inv_ne_zero hJ0)
  have hdet : (binMatK ℚ_[p] J c).det ≠ 0 := by
    intro h0; rw [h0, coeff_zero] at h2; exact hne h2.symm
  have hdeg : (binMatK ℚ_[p] J c).det.natDegree = n * J :=
    le_antisymm h1 (le_natDegree_of_ne_zero (by rw [h2]; exact hne))
  have hlead : (binMatK ℚ_[p] J c).det.leadingCoeff = ∏ a, d a * ((J.factorial : ℚ_[p]))⁻¹ := by
    rw [leadingCoeff, hdeg, h2]
  refine ⟨hdet, ?_⟩
  rw [hlead, hdeg, norm_prod, Real.logb_prod _ _ (fun a _ => norm_ne_zero_iff.2 (mul_ne_zero (hd a).1 (inv_ne_zero hJ0)))]
  have hterm : ∀ a, Real.logb p ‖d a * ((J.factorial : ℚ_[p]))⁻¹‖ =
      Real.logb p ‖d a‖ + padicValNat p J.factorial := by
    intro a
    rw [norm_mul, norm_inv, Real.logb_mul (norm_ne_zero_iff.2 (hd a).1) (inv_ne_zero (norm_ne_zero_iff.2 hJ0)),
      Real.logb_inv, Formalism.GM.MeanGammaLemmas.neglog_nat p _ J.factorial_ne_zero]
  simp_rw [hterm]
  rw [Finset.sum_add_distrib, Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  have hs : -∑ a, Real.logb p ‖d a‖ ≤ n * R := by
    rw [← Finset.sum_neg_distrib]
    calc ∑ a, -Real.logb p ‖d a‖ ≤ ∑ _a : Fin n, R := Finset.sum_le_sum fun a _ => (hd a).2
      _ = n * R := by simp
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have := mul_le_mul_of_nonneg_left hV hn
  push_cast
  have e1 : (n : ℝ) * J / ((p : ℝ) - 1) = n * ((J : ℝ) / ((p : ℝ) - 1)) := by ring
  rw [e1]
  nlinarith

end Formalism.MainNotions.G.GramWindowAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.BinMatNatDegreeLe =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.NeglogPowMul =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FockGramWindow.NeglogPowMul", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.GramWindow2\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.PhiPair\npublic import Formalism.MahlerMeasure.MahlerMeasureProofs.MeanGam\nimport Formalism.MahlerMeasure.MahlerMeasureProofs.RemoveS\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.BinMatNatDegreeLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.GramWindowAlt

open MvPolynomial Finset Formalism.GM

variable {p : ℕ} [hp : Fact p.Prime] {σ : Type} {r : ℕ} (w e : Fin r → σ)

theorem mX_zero (J : ℕ) (u v : MvPolynomial σ ℚ_[p]) : mX w e J 0 u v = M.fockK u v := by
  unfold mX; simp

theorem neglog_pow_mul (x0 : ℕ) (c : ℚ_[p]) (hc : c ≠ 0) :
    -Real.logb p ‖(p : ℚ_[p]) ^ x0 * c‖ = (x0 : ℝ) + c.valuation := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.out.one_lt
  have hp0 : (p : ℚ_[p]) ≠ 0 := by exact_mod_cast hp.out.ne_zero
  rw [norm_mul, norm_pow, Padic.norm_p, Padic.norm_eq_zpow_neg_valuation hc,
    Real.logb_mul (pow_ne_zero _ (inv_ne_zero (by linarith))) (zpow_ne_zero _ (by linarith)), Real.logb_pow,
    Real.logb_inv, Real.logb_self_eq_one hp1, neg_add, Formalism.GM.MeanGammaLemmas.neglog_zpow]
  ring

theorem win_abs (hGW : GramWindow2) (hw : Function.Injective w) (he : Function.Injective e) (hwe : ∀ c d, w c ≠ e d)
    (hr : 1 ≤ r) (o n : ℕ) (T : MvPolynomial σ ℚ_[p] →ₗ[ℚ_[p]] MvPolynomial σ ℚ_[p]) (dF : ℚ_[p])
    (n₁ : ℕ) (f : Fin n₁ → MvPolynomial σ ℚ_[p]) (hli : LinearIndependent ℤ_[p] f)
    (hbi : ∀ b, BiHom w e o n (f b)) (x0 : ℕ)
    (hint : ∀ l ≤ min o n, ∀ a b, ‖(p : ℚ_[p]) ^ x0 * (mX w e (min o n) l (T (f a)) (f b) / dF)‖ ≤ 1)
    (horth : ∀ a b, a ≠ b → M.fockK (T (f a)) (f b) / dF = 0) (D1z : ℤ)
    (hsmall : ∀ a, M.fockK (T (f a)) (f a) / dF ≠ 0 ∧ (M.fockK (T (f a)) (f a) / dF).valuation ≤ D1z)
    (Λ : ℝ) (hV : ((min o n : ℕ) : ℝ) / ((p : ℝ) - 1) - padicValNat p (min o n).factorial ≤ Λ)
    (z0 W h : ℕ) (k : ℤ) (hk : 0 ≤ k) (hW : 0 < W) (hWh : W ≤ p ^ h) (hJh : min o n + 1 ≤ p ^ h) :
    (∑ i ∈ Finset.range W, (M.bad p (fun u v => M.fockK (tiePhi w e o n (z0 + i) (T u)) v / dF)
        (Submodule.span ℤ_[p] (Set.range f)) k : ℝ)) ≤
      (W : ℝ) * ((n₁ : ℝ) * (((min o n : ℕ) : ℝ) / W +
        (((x0 : ℝ) + D1z + Λ) + ((min o n : ℕ) : ℝ) * h / W) / ((k : ℝ) + 1))) := by
  set J := min o n with hJ
  have hp0 : (p : ℚ_[p]) ≠ 0 := by exact_mod_cast hp.out.ne_zero
  set c : Fin n₁ → Fin n₁ → ℕ → ℚ_[p] := fun a b =>
    cW (o + n + r - 1) J (fun l => (p : ℚ_[p]) ^ x0 * (mX w e J l (T (f a)) (f b) / dF)) with hc
  have hlb := lead_bound p n₁ J c (fun a => (p : ℚ_[p]) ^ x0 * (M.fockK (T (f a)) (f a) / dF))
    (fun a b => by
      simp only [hc]
      rw [cW_top, mX_zero]
      split_ifs with hab
      · rw [hab]
      · rw [horth a b hab, mul_zero])
    ((x0 : ℝ) + D1z) Λ
    (fun a => ⟨mul_ne_zero (pow_ne_zero _ hp0) (hsmall a).1, by
      rw [neglog_pow_mul x0 _ (hsmall a).1]
      have : ((M.fockK (T (f a)) (f a) / dF).valuation : ℝ) ≤ (D1z : ℝ) := by exact_mod_cast (hsmall a).2
      linarith⟩) hV
  refine hGW p σ n₁ J h W k ((x0 : ℝ) + D1z + Λ) z0
    (fun i u v => M.fockK (tiePhi w e o n (z0 + i) (T u)) v / dF) f
    (fun i => (p : ℚ_[p]) ^ x0 * ((o + n + r + (z0 + i) - 1).choose J : ℚ_[p])) c hli
    (fun i a u v => by
      show M.fockK (tiePhi w e o n (z0 + i) (T (a • u))) v / dF = _
      rw [map_smul, map_smul, ProjS.fockK_smul_left, mul_div_assoc])
    (fun i u u' v => by
      show M.fockK (tiePhi w e o n (z0 + i) (T (u + u'))) v / dF = _
      rw [map_add (f := _), map_add (f := _), ProjS.fockK_add_left, add_div])
    (fun i a u v => by
      show M.fockK (tiePhi w e o n (z0 + i) (T u)) (a • v) / dF = _
      rw [ProjS.fockK_smul_right, mul_div_assoc])
    (fun i u v v' => by
      show M.fockK (tiePhi w e o n (z0 + i) (T u)) (v + v') / dF = _
      rw [ProjS.fockK_add_right, add_div])
    hW hWh hJh hk (fun a b i => cW_norm _ _ _ (fun l hl => hint l hl a b) i) hlb.1 hlb.2 ?_
  intro i _
  have hJM : J ≤ o + n + r + (z0 + i) - 1 := by omega
  refine ⟨mul_ne_zero (pow_ne_zero _ hp0) (by exact_mod_cast (Nat.choose_pos hJM).ne'), ?_, fun a b => ?_⟩
  · rw [norm_mul, norm_pow, Padic.norm_p]
    have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.out.one_lt
    have h1 : ‖(((o + n + r + (z0 + i) - 1).choose J : ℕ) : ℚ_[p])‖ ≤ 1 := by
      rw [← PadicInt.coe_natCast, ← PadicInt.norm_def]; exact PadicInt.norm_le_one _
    have h2 : ((p : ℝ)⁻¹) ^ x0 ≤ 1 := pow_le_one₀ (by positivity) (inv_le_one_of_one_le₀ hp1.le)
    calc _ ≤ (1 : ℝ) * 1 := mul_le_mul h2 h1 (norm_nonneg _) zero_le_one
      _ = 1 := one_mul 1
  · rw [Matrix.map_apply, Formalism.GM.MeanGammaLemmas.binMatK_eval_nat]
    simp only [hc]
    rw [cW_sum (o + n + r - 1) J (z0 + i) (by omega)]
    have hpp := phi_pair w e hw he hwe hr o n (z0 + i) (T (f a)) (f b) (hbi b)
    rw [← hJ] at hpp
    calc (p : ℚ_[p]) ^ x0 * ((o + n + r + (z0 + i) - 1).choose J : ℚ_[p]) *
          (M.fockK (tiePhi w e o n (z0 + i) (T (f a))) (f b) / dF)
        = (p : ℚ_[p]) ^ x0 * ((((o + n + r + (z0 + i) - 1).choose J : ℚ_[p]) *
          M.fockK (tiePhi w e o n (z0 + i) (T (f a))) (f b)) / dF) := by ring
      _ = _ := by
        rw [hpp, Finset.sum_div, Finset.mul_sum]
        refine Finset.sum_congr rfl fun l hl => ?_
        have hl' : l ≤ J := by simp only [mem_range] at hl; omega
        rw [show o + n + r - 1 + (z0 + i) - l = o + n + r + (z0 + i) - 1 - l by omega]
        ring

end Formalism.MainNotions.G.GramWindowAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.NeglogPowMul =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.NormFockLe =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FockGramWindow.NormFockLe", "h": "module\n\npublic import Formalism.MahlerMeasure.MahlerMeasureProofs.PhiInt\npublic import Formalism.MahlerMeasure.TieVars\npublic import Formalism.MahlerMeasure.MahlerMeasureProofs.MeanGam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.MahlerMeasure.MahlerMeasureProofs.GamInt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.GramWindowAlt

open MvPolynomial Finset Formalism.GM Formalism.GM.M.PhiIntegrality

section Ops

variable {p : ℕ} [hp : Fact p.Prime] {σ : Type} {r : ℕ}

theorem bnd_Xl (w e : Fin r → σ) (J l : ℕ) (hl : l ≤ J) (B : ℝ) (hB : 0 ≤ B) (u : MvPolynomial σ ℚ_[p])
    (hu : Bnd B u) :
    Bnd (B * (p : ℝ) ^ ((r + 1) * Nat.log p J))
      ((((l.factorial : ℚ_[p]) ^ 2 * (J.choose l : ℚ_[p]))⁻¹) • ((tieE w e ^ l) ((tieF w e ^ l) u))) := by
  have hp1 : (1 : ℝ) ≤ p := _root_.Formalism.GM.gammaIntegralityLemmas.p_real_one_le
  set Mc : ℝ := (p : ℝ) ^ (Nat.log p J) with hMc
  have hM1 : 1 ≤ Mc := one_le_pow₀ hp1
  have hM : ∀ j ≤ J, ∀ k ≤ j, ‖(((j.choose k : ℕ) : ℚ_[p]))⁻¹‖ ≤ Mc := fun j hj k hk =>
    (norm_choose_inv_le j k hk).trans (pow_le_pow_right₀ hp1 (Nat.log_mono_right hj))
  let D : Fin r → (MvPolynomial σ ℚ_[p] →ₗ[ℚ_[p]] MvPolynomial σ ℚ_[p]) := fun c =>
    (pderiv (w c) : Derivation ℚ_[p] (MvPolynomial σ ℚ_[p]) (MvPolynomial σ ℚ_[p])).toLinearMap ∘ₗ
      (pderiv (e c)).toLinearMap
  have hcomm : ∀ a b, Commute (D a) (D b) := by
    intro a b
    simp only [D, ← Module.End.mul_eq_comp]
    refine Commute.mul_left (Commute.mul_right ?_ ?_) (Commute.mul_right ?_ ?_) <;>
      exact commute_pderiv _ _
  have hF := contr_Fsum D hcomm (fun a k => contr_D _ _ k) hM1 J hM Finset.univ
  rw [Finset.card_univ, Fintype.card_fin] at hF
  have hFeq : Formalism.GM.tieF (k := ℚ_[p]) w e = ∑ c ∈ Finset.univ, D c := rfl
  have h1 := hF l hl B hB u hu
  rw [← hFeq] at h1
  have h2 := contr_pow zero_le_one (contr_E (p := p) w e) l _ (by positivity) _ h1
  have eq : (((l.factorial : ℚ_[p]) ^ 2 * (J.choose l : ℚ_[p]))⁻¹) • ((tieE w e ^ l) ((tieF w e ^ l) u)) =
      (((J.choose l : ℕ) : ℚ_[p])⁻¹) • ((tieE w e ^ l) (((((l.factorial : ℚ_[p]) ^ 2))⁻¹ • (tieF w e ^ l)) u)) := by
    rw [LinearMap.smul_apply, map_smul, smul_smul, mul_inv, mul_comm]
  rw [eq]
  refine bnd_mono (bnd_smul _ h2) ?_
  have hA := hM J le_rfl l hl
  calc ‖(((J.choose l : ℕ) : ℚ_[p]))⁻¹‖ * (B * Mc ^ r * 1 ^ l) ≤ Mc * (B * Mc ^ r * 1 ^ l) := by gcongr
    _ = B * (p : ℝ) ^ ((r + 1) * Nat.log p J) := by
        rw [hMc, one_pow, mul_one, ← pow_mul, mul_comm ((p : ℝ) ^ Nat.log p J), mul_assoc, ← pow_add]
        congr 2; ring

theorem bnd_pow_iff (k : ℕ) (u : MvPolynomial σ ℚ_[p]) :
    Bnd ((p : ℝ) ^ k) u ↔ M.IsIntegral' p (((p : ℚ_[p]) ^ k) • u) := by
  have hp0 : (0 : ℝ) < p := lt_of_lt_of_le zero_lt_one _root_.Formalism.GM.gammaIntegralityLemmas.p_real_one_le
  have hk : (0 : ℝ) < (p : ℝ) ^ k := pow_pos hp0 k
  refine forall_congr' fun m => ?_
  rw [MvPolynomial.coeff_smul, smul_eq_mul, norm_mul, norm_pow, Padic.norm_p, inv_pow, inv_mul_le_iff₀ hk, mul_one]

theorem bnd_phi (w e : Fin r → σ) (hw : Function.Injective w) (he : Function.Injective e) (hwe : ∀ c d, w c ≠ e d)
    (hr : 1 ≤ r) (o n z Λ : ℕ) (hΛ : Nat.log p (o + n + r + z) + 1 ≤ Λ) (k : ℕ) (u : MvPolynomial σ ℚ_[p])
    (hu : Bnd ((p : ℝ) ^ k) u) : Bnd ((p : ℝ) ^ (k + (r + 1) * Λ)) (tiePhi w e o n z u) := by
  have h1 := (bnd_pow_iff k u).1 hu
  have h2 := _root_.Formalism.GM.M.PhiIntegrality.phi_integrality p σ r w e hw he hwe hr o n z _ h1
  rw [map_smul, smul_smul, ← pow_add] at h2
  refine bnd_mono ((bnd_pow_iff _ _).2 h2) (pow_le_pow_right₀ _root_.Formalism.GM.gammaIntegralityLemmas.p_real_one_le ?_)
  have := Nat.mul_le_mul_left (r + 1) hΛ
  omega

theorem bnd_foldr {ι : Type} (φ : ι → MvPolynomial σ ℚ_[p] →ₗ[ℚ_[p]] MvPolynomial σ ℚ_[p]) (c : ℕ) (l : List ι)
    (h : ∀ i ∈ l, ∀ k u, Bnd ((p : ℝ) ^ k) u → Bnd ((p : ℝ) ^ (k + c)) (φ i u)) (k : ℕ) (u : MvPolynomial σ ℚ_[p])
    (hu : Bnd ((p : ℝ) ^ k) u) :
    Bnd ((p : ℝ) ^ (k + l.length * c)) ((l.foldr (fun i acc => φ i ∘ₗ acc) LinearMap.id) u) := by
  induction l with
  | nil => simpa using hu
  | cons i l ih =>
    simp only [List.foldr_cons, LinearMap.comp_apply, List.length_cons]
    have h1 := ih (fun i' hi' => h i' (List.mem_cons_of_mem _ hi'))
    have h2 := h i List.mem_cons_self _ _ h1
    rw [show k + (l.length + 1) * c = k + l.length * c + c by ring]
    exact h2

theorem norm_fock_le (U v : MvPolynomial σ ℚ_[p]) (dF : ℕ) (hdF : dF ≠ 0) (k E : ℕ) (hU : Bnd ((p : ℝ) ^ k) U)
    (hv : Bnd 1 v)
    (hval : ∀ m ∈ v.support, padicValNat p dF ≤ padicValNat p (m.prod fun _ i => i.factorial) + E) :
    ‖M.fockK U v / (dF : ℚ_[p])‖ ≤ (p : ℝ) ^ (k + E) := by
  have hp1 : (1 : ℝ) ≤ p := _root_.Formalism.GM.gammaIntegralityLemmas.p_real_one_le
  have hp0 : (0 : ℝ) < p := lt_of_lt_of_le zero_lt_one hp1
  unfold M.fockK
  rw [Finset.sum_div]
  refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg (by positivity) fun m _ => ?_
  by_cases hm : m ∈ v.support
  · have hne : (m.prod fun _ i => i.factorial) ≠ 0 := by
      rw [Finsupp.prod]
      exact Finset.prod_ne_zero_iff.2 fun i _ => Nat.factorial_ne_zero _
    have hcast : (m.prod fun _ j => (j.factorial : ℚ_[p])) = (((m.prod fun _ i => i.factorial) : ℕ) : ℚ_[p]) := by
      simp [Finsupp.prod]
    rw [hcast, norm_div, norm_mul, norm_mul, Formalism.GM.MeanGammaLemmas.norm_nat p _ hne, Formalism.GM.MeanGammaLemmas.norm_nat p _ hdF,
      mul_div_assoc, ← zpow_sub₀ hp0.ne']
    have h3 : (p : ℝ) ^ (-(padicValNat p (m.prod fun _ i => i.factorial) : ℤ) - -(padicValNat p dF : ℤ)) ≤
        (p : ℝ) ^ E := by
      rw [← zpow_natCast]
      apply zpow_le_zpow_right₀ hp1
      have := hval m hm
      omega
    calc ‖AddMonoidAlgebra.coeff U m‖ * ‖AddMonoidAlgebra.coeff v m‖ *
          (p : ℝ) ^ (-(padicValNat p (m.prod fun _ i => i.factorial) : ℤ) - -(padicValNat p dF : ℤ))
        ≤ (p : ℝ) ^ k * 1 * (p : ℝ) ^ E := by
          gcongr
          · exact hU m
          · exact hv m
      _ = (p : ℝ) ^ (k + E) := by rw [mul_one, pow_add]
  · rw [notMem_support_iff.1 hm, mul_zero, zero_mul, zero_div, norm_zero]
    positivity

end Ops

end Formalism.MainNotions.G.GramWindowAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.NormFockLe =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.WinLvl =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FockGramWindow.WinLvl", "h": "module\n\npublic import Formalism.MahlerMeasure.MahlerMeasureProofs.PhiInt\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.LvlDef\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.PhiPair\nimport Formalism.MahlerMeasure.MahlerMeasureProofs.MeanGam\nimport Formalism.MahlerMeasure.MahlerMeasureProofs.RemoveS\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.GramWindow2Proved\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.LettersAtUPos\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.NeglogPowMul\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.NormFockLe\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.DegFactNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.GramWindowAlt

open MvPolynomial Finset Formalism.GM Formalism.GM.M.PhiIntegrality Formalism.MainNotions.G.SymmetricFormBlocks
open scoped Nat

section Lvl

variable (p : ℕ) [hp : Fact p.Prime] {N r : ℕ} [NeZero r] (G : M.BlockData N)

theorem bnd_phisB (hB : G.BlockOK) (A : ℕ) (hdeg : ∀ x, G.LL.deg x ≤ 2 * A) (hz : ∀ i, G.T.z i ≤ 2 * A)
    (j : Fin G.T.t → ℕ) (jp : ℕ) (u : MvPolynomial (M.BVar N r G.T.t) ℚ_[p]) (hu : Bnd 1 u) :
    Bnd ((p : ℝ) ^ (G.T.t * ((r + 1) * lgN p A r))) (phisB p (r := r) G j jp u) := by
  have hr : 1 ≤ r := Nat.one_le_iff_ne_zero.2 (NeZero.ne r)
  have h := bnd_foldr (p := p) (fun i : Fin G.T.t =>
    Formalism.GM.tiePhi (k := ℚ_[p]) (fun c => (Sum.inl (M.finPos N (G.T.pos i), c) : M.BVar N r G.T.t))
      (fun c => Sum.inl (M.finPos N (G.T.pos i + 1), c))
      ((G.lettersAt j jp).deg (G.letterAt (G.T.pos i))) ((G.lettersAt j jp).deg (G.letterAt (G.T.pos i + 1)))
      (G.T.z i)) ((r + 1) * lgN p A r) (List.finRange G.T.t)
    (fun i _ k u hu => by
      refine bnd_phi _ _ ?_ ?_ ?_ hr _ _ _ (lgN p A r) ?_ k u hu
      · intro c d h
        simpa using h
      · intro c d h
        simpa using h
      · intro c d h
        simp only [Sum.inl.injEq, Prod.mk.injEq] at h
        have h1 := congrArg Fin.val h.1
        have h2 : min (G.T.pos i) N = min (G.T.pos i + 1) N := h1
        have h3 := hB.2.1 i
        have h4 := G.uPos.2
        omega
      · refine log_le_lgN p A _ ?_
        have h1 := (lettersAt_le G j jp (G.letterAt (G.T.pos i))).trans (hdeg _)
        have h2 := (lettersAt_le G j jp (G.letterAt (G.T.pos i + 1))).trans (hdeg _)
        have h3 := hz i
        omega) 0 u (by simpa using hu)
  rw [List.length_finRange, zero_add] at h
  exact h

theorem int_lvl (hB : G.BlockOK) (A : ℕ) (hdeg : ∀ x, G.LL.deg x ≤ 2 * A) (hBa : G.B ≤ 2 * A)
    (hz : ∀ i, G.T.z i ≤ 2 * A) (j : Fin G.T.t → ℕ) (jp : ℕ) (l : ℕ) (hl : l ≤ JN G jp)
    (u v : MvPolynomial (M.BVar N r G.T.t) ℚ_[p]) (hu : u ∈ Ljj p (r := r) G j jp) (hv : v ∈ Ljj p (r := r) G j jp) :
    ‖(p : ℚ_[p]) ^ (x0N p A r N G.T.t) *
      (mX (fun c => (Sum.inl (Fin.castSucc G.uPos, c) : M.BVar N r G.T.t)) (fun c => M.xiVar N r G.T.t c) (JN G jp) l
        (phisB p (r := r) G j jp u) v / (degFact G j jp : ℚ_[p]))‖ ≤ 1 := by
  have hp1 : (1 : ℝ) ≤ p := _root_.Formalism.GM.gammaIntegralityLemmas.p_real_one_le
  have hp0 : (0 : ℝ) < p := lt_of_lt_of_le zero_lt_one hp1
  have h1 := bnd_phisB p G hB A hdeg hz j jp u (Ljj_int p G j jp u hu)
  have h2 := bnd_Xl (fun c => (Sum.inl (Fin.castSucc G.uPos, c) : M.BVar N r G.T.t)) (fun c => M.xiVar N r G.T.t c)
    (JN G jp) l hl _ (by positivity) _ h1
  have hJ : JN G jp ≤ 2 * A := (min_le_right _ _).trans ((Nat.sub_le _ _).trans hBa)
  have hlog : Nat.log p (JN G jp) ≤ lgN p A r := by
    have := log_le_lgN p (r := r) A (JN G jp) (by omega)
    omega
  have h3 : Bnd ((p : ℝ) ^ (G.T.t * ((r + 1) * lgN p A r) + (r + 1) * lgN p A r)) _ :=
    bnd_mono h2 (by
      rw [← pow_add]
      exact pow_le_pow_right₀ hp1 (Nat.add_le_add_left (Nat.mul_le_mul_left _ hlog) _))
  have h4 := norm_fock_le _ v (degFact G j jp) (degFact_ne_zero G j jp) _
    (((N + 1) * r + (G.T.t + 1) * 2) * lgN p A r) h3 (Ljj_int p G j jp v hv) (Ljj_val p G A hdeg hBa j jp v hv)
  rw [ProjS.fockK_smul_left] at h4
  have hx : G.T.t * ((r + 1) * lgN p A r) + (r + 1) * lgN p A r + ((N + 1) * r + (G.T.t + 1) * 2) * lgN p A r =
      x0N p A r N G.T.t := by
    unfold x0N; ring
  rw [hx] at h4
  unfold mX
  rw [norm_mul, norm_pow, Padic.norm_p, inv_pow, div_eq_inv_mul (M.fockK _ _)]
  rw [inv_mul_le_iff₀ (pow_pos hp0 _), mul_one]
  exact h4

end Lvl

theorem winLvl : WinLvl := by
  intro p _ N r _ G hB j jp _ A _ hdeg hBa hz n₁ f hf hli horth D hsmall z0 W h k hk hW hWh hJh
  have hr : 1 ≤ r := Nat.one_le_iff_ne_zero.2 (NeZero.ne r)
  have hJ : JN G jp ≤ 2 * A := (min_le_right _ _).trans ((Nat.sub_le _ _).trans hBa)
  have hV : ((min (G.LL.deg G.uPos - jp) (G.B - jp) : ℕ) : ℝ) / ((p : ℝ) - 1) -
      padicValNat p (min (G.LL.deg G.uPos - jp) (G.B - jp)).factorial ≤ (lgN p A r : ℝ) := by
    refine (Formalism.GM.MeanGammaLemmas.legendre' p _).trans ?_
    have := log_le_lgN p (r := r) A (JN G jp) (by omega)
    exact_mod_cast this
  exact win_abs (fun c => (Sum.inl (Fin.castSucc G.uPos, c) : M.BVar N r G.T.t)) (fun c => M.xiVar N r G.T.t c)
    gramWindow2_proved
    (by intro c d h; simpa using h)
    (by intro c d h; simpa [M.xiVar] using h)
    (by
      intro c d h
      simp only [M.xiVar, Sum.inl.injEq, Prod.mk.injEq] at h
      exact (Fin.castSucc_lt_last G.uPos).ne h.1)
    hr (G.LL.deg G.uPos - jp) (G.B - jp) (phisB p (r := r) G j jp) (degFact G j jp : ℚ_[p]) n₁ f hli
    (fun b => Ljj_biHom p G hB j jp (f b) (hf b)) (x0N p A r N G.T.t)
    (fun l hl a b => int_lvl p G hB A hdeg hBa hz j jp l hl (f a) (f b) (hf a) (hf b))
    horth D hsmall (lgN p A r : ℝ) hV z0 W h k hk hW hWh hJh

end Formalism.MainNotions.G.GramWindowAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow.WinLvl =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DiagonalRank.DetOneSubPNe =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DiagonalRank.DetOneSubPNe", "h": "module\n\npublic import Formalism.PeriodIntegrals.DiagRank\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.GroupTheory.Nilpotent\npublic import Mathlib.LinearAlgebra.Matrix.Rank\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.Padics.RingHoms\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.DiagRank

open Finset

theorem det_one_sub_p_ne {p : ℕ} [Fact p.Prime] {n : ℕ} (M : Matrix (Fin n) (Fin n) ℤ_[p]) :
    (1 - (p : ℤ_[p]) • M).det ≠ 0 := by

  intro h0
  have h1 := congrArg (PadicInt.toZMod (p := p)) h0
  rw [RingHom.map_det, map_zero] at h1
  have hI : (PadicInt.toZMod (p := p)).mapMatrix (1 - (p : ℤ_[p]) • M) = 1 := by
    ext i j
    simp [Matrix.sub_apply, Matrix.one_apply, Matrix.smul_apply]
  rw [hI, Matrix.det_one] at h1
  exact one_ne_zero h1

theorem exists_int_mul {p : ℕ} [Fact p.Prime] (D : ℤ) (x : ℚ_[p]) (hx : x ≠ 0 → D < x.valuation) :
    ∃ u : ℤ_[p], x = (p : ℚ_[p]) ^ (D + 1) * (u : ℚ_[p]) := by
  by_cases h0 : x = 0
  · exact ⟨0, by simp [h0]⟩
  have hv := hx h0
  have hp1 : (1 : ℝ) < p := by exact_mod_cast (Fact.out : p.Prime).one_lt
  have hp0 : (p : ℚ_[p]) ≠ 0 := by exact_mod_cast (Fact.out : p.Prime).ne_zero
  have hpow : (p : ℚ_[p]) ^ (D + 1) ≠ 0 := zpow_ne_zero _ hp0
  have hnp : ‖(p : ℚ_[p]) ^ (D + 1)‖ = (p : ℝ) ^ (-(D + 1)) := by
    rw [norm_zpow, Padic.norm_p, inv_zpow', zpow_neg]
  refine ⟨⟨x / (p : ℚ_[p]) ^ (D + 1), ?_⟩, ?_⟩
  · rw [PadicInt.mem_subring_iff, norm_div, hnp, Padic.norm_eq_zpow_neg_valuation h0]
    rw [div_le_one (zpow_pos (by linarith) _)]
    exact zpow_le_zpow_right₀ hp1.le (by omega)
  · show x = (p : ℚ_[p]) ^ (D + 1) * (x / (p : ℚ_[p]) ^ (D + 1))
    field_simp

open Classical in
theorem diagRank : PI.DiagRank := by
  unfold PI.DiagRank
  intro p _ n m X Y c D h
  have hp0 : (p : ℚ_[p]) ≠ 0 := by exact_mod_cast (Fact.out : p.Prime).ne_zero
  have hpD : (p : ℚ_[p]) ^ D ≠ 0 := zpow_ne_zero _ hp0
  obtain ⟨S, hS⟩ : ∃ S : Finset (Fin m),
      S = Finset.univ.filter (fun a : Fin m => c a ≠ 0 ∧ (c a).valuation ≤ D) := ⟨_, rfl⟩
  rw [← hS]
  have hsplit : ∀ a, a ∉ S → ∃ u : ℤ_[p], c a = (p : ℚ_[p]) ^ (D + 1) * (u : ℚ_[p]) := by
    intro a ha
    apply exists_int_mul D (c a)
    intro hc
    by_contra hle
    exact ha (by rw [hS]; simp [hc, not_lt.mp hle])
  choose! u hu using hsplit

  obtain ⟨s, hs⟩ : ∃ s : Fin m → ℚ_[p], s = fun a => if a ∈ S then c a / (p : ℚ_[p]) ^ D else 0 :=
    ⟨_, rfl⟩
  obtain ⟨u', hu'⟩ : ∃ u' : Fin m → ℤ_[p], u' = fun a => if a ∈ S then 0 else u a := ⟨_, rfl⟩
  have key : ∀ a, c a = (p : ℚ_[p]) ^ D * s a + (p : ℚ_[p]) ^ (D + 1) * (u' a : ℚ_[p]) := by
    intro a
    by_cases ha : a ∈ S
    · simp [hs, hu', ha]; field_simp
    · simp [hs, hu', ha, hu a ha]
  have hent : ∀ i j, ∑ a, (X i a : ℚ_[p]) * s a * (Y j a : ℚ_[p]) =
      (if i = j then 1 else 0) - (p : ℚ_[p]) * ∑ a, (X i a : ℚ_[p]) * (u' a : ℚ_[p]) * (Y j a : ℚ_[p]) := by
    intro i j
    have h1 := h i j
    have h2 : ∑ a, (X i a : ℚ_[p]) * c a * (Y j a : ℚ_[p]) = (p : ℚ_[p]) ^ D *
        (∑ a, (X i a : ℚ_[p]) * s a * (Y j a : ℚ_[p]) +
          (p : ℚ_[p]) * ∑ a, (X i a : ℚ_[p]) * (u' a : ℚ_[p]) * (Y j a : ℚ_[p])) := by
      rw [mul_add, Finset.mul_sum, Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [key a, zpow_add₀ hp0, zpow_one]
      ring
    have h3 : (if i = j then (p : ℚ_[p]) ^ D else 0) = (p : ℚ_[p]) ^ D * (if i = j then 1 else 0) := by
      split_ifs <;> simp
    rw [h2, h3] at h1
    exact eq_sub_of_add_eq (mul_left_cancel₀ hpD h1)
  obtain ⟨N, hN⟩ : ∃ N : Matrix (Fin n) (Fin n) ℤ_[p], N = fun i j => ∑ a, X i a * u' a * Y j a :=
    ⟨_, rfl⟩
  obtain ⟨Xq, hXq⟩ : ∃ Xq : Matrix (Fin n) (Fin m) ℚ_[p], Xq = fun i a => (X i a : ℚ_[p]) := ⟨_, rfl⟩
  obtain ⟨B, hB⟩ : ∃ B : Matrix (Fin m) (Fin n) ℚ_[p], B = fun a j => (Y j a : ℚ_[p]) := ⟨_, rfl⟩
  have heq : Xq * Matrix.diagonal s * B = PadicInt.Coe.ringHom.mapMatrix (1 - (p : ℤ_[p]) • N) := by
    ext i j
    rw [Matrix.mul_apply]
    simp_rw [Matrix.mul_diagonal]
    subst hXq hB
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply,
      Matrix.sub_apply, Matrix.one_apply, Matrix.smul_apply, smul_eq_mul]
    rw [hent i j, hN]
    show _ = ((_ : ℤ_[p]) : ℚ_[p])
    have hc : ((∑ a, X i a * u' a * Y j a : ℤ_[p]) : ℚ_[p]) = ∑ a, (X i a : ℚ_[p]) * (u' a : ℚ_[p]) * (Y j a : ℚ_[p]) := by

      rw [show ((∑ a, X i a * u' a * Y j a : ℤ_[p]) : ℚ_[p]) = PadicInt.Coe.ringHom (∑ a, X i a * u' a * Y j a) from rfl, map_sum]
      rfl
    split_ifs <;> push_cast <;> rw [hc]
  have hdet : (PadicInt.Coe.ringHom.mapMatrix (1 - (p : ℤ_[p]) • N)).det ≠ 0 := by
    rw [← RingHom.map_det]
    intro h0
    exact det_one_sub_p_ne N (Subtype.ext h0)
  have hrank : (Xq * Matrix.diagonal s * B).rank = n := by
    rw [heq, Matrix.rank_of_isUnit _ ((Matrix.isUnit_iff_isUnit_det _).2 (isUnit_iff_ne_zero.2 hdet))]
    simp
  calc n = (Xq * Matrix.diagonal s * B).rank := hrank.symm
    _ ≤ (Xq * Matrix.diagonal s).rank := Matrix.rank_mul_le_left _ _
    _ ≤ (Matrix.diagonal s).rank := Matrix.rank_mul_le_right _ _
    _ = Fintype.card {a // s a ≠ 0} := Matrix.rank_diagonal s
    _ = (Finset.univ.filter (fun a => s a ≠ 0)).card := Fintype.card_subtype _
    _ ≤ S.card := by
      apply Finset.card_le_card
      intro a ha
      by_contra haS
      simp [hs, haS] at ha

end PI.UnitaryGroupMassFormula.DiagRank

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DiagonalRank.DetOneSubPNe =====

-- ===== clump member: Formalism.PeriodIntegrals.LatMin =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.LatMin", "h": "module\n\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI

open MvPolynomial

def LatMin : Prop :=
  ∀ (p : ℕ) [Fact p.Prime] (σ : Type) (B : MvPolynomial σ ℚ_[p] → MvPolynomial σ ℚ_[p] → ℚ_[p])
    (L : Submodule ℤ_[p] (MvPolynomial σ ℚ_[p])) (W : Submodule ℚ_[p] (MvPolynomial σ ℚ_[p])),
    p ≠ 2 → FiniteDimensional ℚ_[p] W → (∀ x ∈ L, x ∈ W) → L.FG →
    (∀ (c : ℚ_[p]) u v, B (c • u) v = c * B u v) → (∀ u u' v, B (u + u') v = B u v + B u' v) →
    (∀ u ∈ L, ∀ v ∈ L, B u v = B v u) → (∃ u ∈ L, ∃ v ∈ L, B u v ≠ 0) →
    ∃ x ∈ L, B x x ≠ 0 ∧ ∀ u ∈ L, ∃ c : ℤ_[p], B u x = (c : ℚ_[p]) * B x x

end PI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.LatMin =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MinimalLatticeNorm.NormTwoEqOne =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MinimalLatticeNorm.NormTwoEqOne", "h": "module\n\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.LatMinWork

variable {p : ℕ} [hp : Fact p.Prime]

lemma norm_two_eq_one (hp2 : p ≠ 2) : ‖(2 : ℚ_[p])‖ = 1 := by
  have h2 : ¬ (p : ℤ) ∣ 2 := by
    intro h
    have h' : p ∣ 2 := by exact_mod_cast h
    exact hp2 ((Nat.prime_dvd_prime_iff_eq hp.out Nat.prime_two).mp h')
  have h1 : ‖((2 : ℤ) : ℚ_[p])‖ ≤ 1 := by
    first
      | exact Padic.norm_int_le_one 2
  have h3 : ¬ ‖((2 : ℤ) : ℚ_[p])‖ < 1 := fun h => h2 (by
    first
      | exact Padic.norm_intCast_lt_one_iff.mp h)
  have := le_antisymm h1 (not_lt.1 h3)
  exact_mod_cast this

variable {V : Type*} [AddCommGroup V] [Module ℤ_[p] V]

lemma bound_span (B : V → V → ℚ_[p])
    (hsm : ∀ (c : ℤ_[p]) u v, B (c • u) v = (c : ℚ_[p]) * B u v)
    (hadd : ∀ u u' v, B (u + u') v = B u v + B u' v)
    (S : Set V) (w : V) (M : ℝ) (hM : 0 ≤ M) (hS : ∀ b ∈ S, ‖B b w‖ ≤ M) :
    ∀ v ∈ Submodule.span ℤ_[p] S, ‖B v w‖ ≤ M := by
  intro v hv
  induction hv using Submodule.span_induction with
  | mem x hx => exact hS x hx
  | zero =>
    have h0 : B 0 w = 0 := by simpa using hsm 0 0 w
    rw [h0, norm_zero]; exact hM
  | add x y _ _ hx hy =>
    rw [hadd]
    exact (show ‖B x w + B y w‖ ≤ max ‖B x w‖ ‖B y w‖ by first | exact Padic.nonarchimedean _ _).trans (max_le hx hy)
  | smul c x _ hx =>
    rw [hsm, norm_mul]
    have hc : ‖(c : ℚ_[p])‖ ≤ 1 := by
      first
        | exact c.2
    calc ‖(c : ℚ_[p])‖ * ‖B x w‖ ≤ 1 * ‖B x w‖ := mul_le_mul_of_nonneg_right hc (norm_nonneg _)
      _ ≤ M := by rw [one_mul]; exact hx

theorem main (hp2 : p ≠ 2) (B : V → V → ℚ_[p]) (L : Submodule ℤ_[p] V) (hL : L.FG)
    (hsm : ∀ (c : ℤ_[p]) u v, B (c • u) v = (c : ℚ_[p]) * B u v)
    (hadd : ∀ u u' v, B (u + u') v = B u v + B u' v)
    (hsym : ∀ u ∈ L, ∀ v ∈ L, B u v = B v u) (hne : ∃ u ∈ L, ∃ v ∈ L, B u v ≠ 0) :
    ∃ x ∈ L, B x x ≠ 0 ∧ ∀ u ∈ L, ∃ c : ℤ_[p], B u x = (c : ℚ_[p]) * B x x := by
  classical
  obtain ⟨S, hS⟩ := hL
  obtain ⟨u0, hu0, v0, hv0, hne0⟩ := hne
  have hSL : ∀ a ∈ S, a ∈ L := fun a ha => hS ▸ Submodule.subset_span ha
  have hB0 : ∀ v, B 0 v = 0 := fun v => by simpa using hsm 0 0 v
  have hSn : S.Nonempty := by
    rcases S.eq_empty_or_nonempty with h | h
    · subst h
      rw [Finset.coe_empty, Submodule.span_empty] at hS
      rw [← hS, Submodule.mem_bot] at hu0
      subst hu0
      exact absurd (hB0 v0) hne0
    · exact h
  obtain ⟨q, hq, hqmax⟩ := (S ×ˢ S).exists_max_image (fun q : V × V => ‖B q.1 q.2‖) (hSn.product hSn)
  obtain ⟨a, b⟩ := q
  have ha : a ∈ S := (Finset.mem_product.1 hq).1
  have hb : b ∈ S := (Finset.mem_product.1 hq).2
  have hmaxS : ∀ a' ∈ S, ∀ b' ∈ S, ‖B a' b'‖ ≤ ‖B a b‖ := fun a' ha' b' hb' =>
    hqmax (a', b') (Finset.mem_product.2 ⟨ha', hb'⟩)
  have hM0 : 0 ≤ ‖B a b‖ := norm_nonneg _
  have h1 : ∀ b' ∈ S, ∀ u ∈ L, ‖B u b'‖ ≤ ‖B a b‖ := fun b' hb' u hu => by
    rw [← hS] at hu
    exact bound_span B hsm hadd (↑S) b' _ hM0 (fun a' ha' => hmaxS a' ha' b' hb') u hu
  have hbound : ∀ u ∈ L, ∀ v ∈ L, ‖B u v‖ ≤ ‖B a b‖ := by
    intro u hu v hv
    rw [hsym u hu v hv]
    have h2 : ∀ b' ∈ (S : Set V), ‖B b' u‖ ≤ ‖B a b‖ := fun b' hb' => by
      rw [hsym b' (hSL b' hb') u hu]; exact h1 b' hb' u hu
    rw [← hS] at hv
    exact bound_span B hsm hadd (↑S) u _ hM0 h2 v hv
  have hMpos : 0 < ‖B a b‖ := lt_of_lt_of_le (norm_pos_iff.2 hne0) (hbound u0 hu0 v0 hv0)
  have haL := hSL a ha
  have hbL := hSL b hb
  have hx : ∃ x ∈ L, ‖B x x‖ = ‖B a b‖ := by
    by_cases haa : ‖B a a‖ = ‖B a b‖
    · exact ⟨a, haL, haa⟩
    by_cases hbb : ‖B b b‖ = ‖B a b‖
    · exact ⟨b, hbL, hbb⟩
    have habL := L.add_mem haL hbL
    refine ⟨a + b, habL, ?_⟩
    have e : B (a + b) (a + b) = 2 * B a b + (B a a + B b b) := by
      rw [hadd, hsym a haL _ habL, hsym b hbL _ habL, hadd, hadd, hsym b hbL a haL]; ring
    have hlt : ‖B a a + B b b‖ < ‖B a b‖ := lt_of_le_of_lt (show ‖B a a + B b b‖ ≤ max ‖B a a‖ ‖B b b‖ by first | exact Padic.nonarchimedean _ _)
      (max_lt (lt_of_le_of_ne (hbound a haL a haL) haa) (lt_of_le_of_ne (hbound b hbL b hbL) hbb))
    have h2ab : ‖2 * B a b‖ = ‖B a b‖ := by rw [norm_mul, norm_two_eq_one hp2, one_mul]
    rw [e, (show ‖2 * B a b + (B a a + B b b)‖ = max ‖2 * B a b‖ ‖B a a + B b b‖ by
      first
        | exact Padic.add_eq_max_of_ne (by rw [h2ab]; exact hlt.ne')), h2ab]
    exact max_eq_left hlt.le
  obtain ⟨x, hxL, hxn⟩ := hx
  have hxx : B x x ≠ 0 := fun h => by rw [h, norm_zero] at hxn; linarith
  refine ⟨x, hxL, hxx, fun u hu => ?_⟩
  have hc : ‖B u x / B x x‖ ≤ 1 := by
    rw [norm_div, hxn, div_le_one hMpos]; exact hbound u hu x hxL
  exact ⟨(⟨B u x / B x x, hc⟩ : {y : ℚ_[p] // ‖y‖ ≤ 1}), (div_mul_cancel₀ _ hxx).symm⟩

end PI.LatMinWork

namespace PI

end PI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MinimalLatticeNorm.NormTwoEqOne =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatMin =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatMin", "h": "module\n\npublic import Formalism.PeriodIntegrals.LatMin\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MinimalLatticeNorm.NormTwoEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI

theorem exists_minimalNormVector : PI.LatMin := by
  intro p _ σ B L W hp2 _ _ hL hsm hadd hsym hne
  refine PI.LatMinWork.main hp2 B L hL ?_ hadd hsym hne
  intro c u v
  have h : c • u = (c : ℚ_[p]) • u := (algebraMap_smul ℚ_[p] c u).symm
  rw [h, hsm]

end PI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatMin =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.OrthSplitOfMin =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.OrthSplitOfMin", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.OrthBasisLatOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

open MvPolynomial

def OrthMin : Prop :=
  ∀ (p : ℕ) [Fact p.Prime] (σ : Type) (B : MvPolynomial σ ℚ_[p] → MvPolynomial σ ℚ_[p] → ℚ_[p])
    (L : Submodule ℤ_[p] (MvPolynomial σ ℚ_[p])) (W : Submodule ℚ_[p] (MvPolynomial σ ℚ_[p])),
    p ≠ 2 → FiniteDimensional ℚ_[p] W → (∀ x ∈ L, x ∈ W) → L.FG →
    (∀ (c : ℚ_[p]) u v, B (c • u) v = c * B u v) → (∀ u u' v, B (u + u') v = B u v + B u' v) →
    (∀ u ∈ L, ∀ v ∈ L, B u v = B v u) → (∃ u ∈ L, ∃ v ∈ L, B u v ≠ 0) →
    ∃ x ∈ L, B x x ≠ 0 ∧ ∀ u ∈ L, ∃ c : ℤ_[p], B u x = (c : ℚ_[p]) * B x x

def SplitRank : Prop :=
  ∀ (p : ℕ) [Fact p.Prime] (σ : Type) (L L' : Submodule ℤ_[p] (MvPolynomial σ ℚ_[p]))
    (W : Submodule ℚ_[p] (MvPolynomial σ ℚ_[p])) (x : MvPolynomial σ ℚ_[p]),
    FiniteDimensional ℚ_[p] W → (∀ y ∈ L, y ∈ W) → L.FG → L' ≤ L → x ∈ L → x ≠ 0 →
    Submodule.span ℤ_[p] {x} ⊔ L' = L → (∀ (c : ℤ_[p]) (y : MvPolynomial σ ℚ_[p]), y ∈ L' → c • x + y = 0 → c = 0) →
    Module.finrank ℤ_[p] L' < Module.finrank ℤ_[p] L

theorem zsmul_eq' {p : ℕ} [Fact p.Prime] {σ : Type} (c : ℤ_[p]) (u : MvPolynomial σ ℚ_[p]) :
    c • u = (c : ℚ_[p]) • u := rfl

theorem orthSplit_of (hM : OrthMin) (hR : SplitRank) : OrthSplit := by
  intro p _ σ B L W hp hW hLW hfg hsm hadd hsym hne
  obtain ⟨x, hxL, hxx, hdiv⟩ := hM p σ B L W hp hW hLW hfg hsm hadd hsym hne
  have hB0 : ∀ v, B 0 v = 0 := by
    intro v
    have h := hsm 0 0 v
    rwa [zero_smul, zero_mul] at h
  have hsub : ∀ u v w, B (u - v) w = B u w - B v w := by
    intro u v w
    have h := hadd (u - v) v w
    rw [sub_add_cancel] at h
    rw [h]
    ring
  let K : Submodule ℤ_[p] (MvPolynomial σ ℚ_[p]) :=
    { carrier := {u | u ∈ L ∧ B u x = 0}
      add_mem' := fun {u v} hu hv => ⟨L.add_mem hu.1 hv.1, by rw [hadd, hu.2, hv.2, add_zero]⟩
      zero_mem' := ⟨L.zero_mem, hB0 x⟩
      smul_mem' := fun c u hu => ⟨L.smul_mem c hu.1, by
        rw [zsmul_eq' c u, hsm, hu.2, mul_zero]⟩ }
  have hKL : K ≤ L := fun u hu => hu.1
  have hx0 : x ≠ 0 := by
    intro h
    apply hxx
    rw [h, hB0]
  have hdirect : ∀ (c : ℤ_[p]) (y : MvPolynomial σ ℚ_[p]), y ∈ K → c • x + y = 0 → c = 0 := by
    intro c y hy hcy
    have h1 : B (c • x + y) x = 0 := by
      rw [hcy, hB0]
    rw [hadd, zsmul_eq' c x, hsm, hy.2, add_zero] at h1
    have h2 : (c : ℚ_[p]) = 0 := (mul_eq_zero.mp h1).resolve_right hxx
    first
    | exact PadicInt.coe_eq_zero.mp h2
  have hsup : Submodule.span ℤ_[p] {x} ⊔ K = L := by
    apply le_antisymm
    · exact sup_le ((Submodule.span_le).mpr (Set.singleton_subset_iff.mpr hxL)) hKL
    · intro u hu
      obtain ⟨c, hc⟩ := hdiv u hu
      refine Submodule.mem_sup.mpr ⟨c • x, Submodule.mem_span_singleton.mpr ⟨c, rfl⟩, u - c • x, ⟨?_, ?_⟩, ?_⟩
      · exact L.sub_mem hu (L.smul_mem c hxL)
      · rw [hsub, zsmul_eq' c x, hsm, hc, sub_self]
      · abel
  refine ⟨x, hxL, K, hKL, hfg.of_le hKL, hR p σ L K W x hW hLW hfg hKL hxL hx0 hsup hdirect, ?_, hsup, hdirect⟩
  intro u hu
  rw [hsym x hxL u hu.1]
  exact hu.2

theorem splitRank_proved : SplitRank := by
  intro p _ σ L L' W x hW hLW hfg hL'L hxL hx0 hsup hdirect
  haveI : NoZeroSMulDivisors ℤ_[p] (MvPolynomial σ ℚ_[p]) := by
    constructor
    intro c y h
    rw [zsmul_eq'] at h
    rcases smul_eq_zero.mp h with h | h
    · left
      first
      | exact PadicInt.coe_eq_zero.mp h
    · right
      exact h
  haveI : Module.Finite ℤ_[p] L := Module.Finite.iff_fg.mpr hfg
  haveI : Module.Finite ℤ_[p] L' := Module.Finite.iff_fg.mpr (hfg.of_le hL'L)
  haveI : Module.Free ℤ_[p] L' := Module.free_of_finite_type_torsion_free'
  haveI : Module.Free ℤ_[p] L := Module.free_of_finite_type_torsion_free'
  let f : (ℤ_[p] × L') →ₗ[ℤ_[p]] L :=
    { toFun := fun q => ⟨q.1 • x + (q.2 : MvPolynomial σ ℚ_[p]), L.add_mem (L.smul_mem _ hxL) (hL'L q.2.2)⟩
      map_add' := fun q q' => by
        apply Subtype.ext
        simp only [Prod.fst_add, Prod.snd_add, Submodule.coe_add, add_smul]
        abel
      map_smul' := fun c q => by
        apply Subtype.ext
        simp only [Prod.smul_fst, Prod.smul_snd, Submodule.coe_smul, smul_eq_mul, RingHom.id_apply, smul_add,
          mul_smul] }
  have hbij : Function.Bijective f := by
    constructor
    · rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
      rintro ⟨c, y⟩ hq
      have h1 : c • x + (y : MvPolynomial σ ℚ_[p]) = 0 := congrArg Subtype.val hq
      have hc : c = 0 := hdirect c y y.2 h1
      subst hc
      rw [zero_smul, zero_add] at h1
      exact Prod.ext rfl (Subtype.ext h1)
    · rintro ⟨u, hu⟩
      rw [← hsup] at hu
      obtain ⟨a, ha, b, hb, rfl⟩ := Submodule.mem_sup.mp hu
      obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.mp ha
      exact ⟨(c, ⟨b, hb⟩), rfl⟩
  have he := (LinearEquiv.ofBijective f hbij).finrank_eq
  rw [Module.finrank_prod, Module.finrank_self] at he
  omega

theorem orthSplit_of_min (hM : OrthMin) : OrthSplit := by
  exact orthSplit_of hM splitRank_proved

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.OrthSplitOfMin =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfOrthogonalSplitting =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfOrthogonalSplitting", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.IntegralityFromMetricOfOrthBasisLat\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.OrthBasisLatOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

theorem closed_of_orthogonal_splitting (D : Formalism.BasicNotions.D7) (hS : OrthSplit) (hG : GoodLeSmall) (h : RestWinE D) :
    Formalism.MainNotions.flipOneThree.IntegralityFromMetricForLargeConstants D :=
  integralityFromMetric_of_orthBasisLat D (orthBasisLat_of freeLat_proved hS) hG h

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfOrthogonalSplitting =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfSplittingMatrix =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfSplittingMatrix", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.GoodLeSmallMat\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.IntegralityFromMetricOfOrthBasisLat\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.OrthBasisLatOf\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfOrthogonalSplitting\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

theorem closed_of_splitting_matrix (D : Formalism.BasicNotions.D7) (hS : OrthSplit) (hM : GoodLeSmallMat) (h : RestWinE D) :
    Formalism.MainNotions.flipOneThree.IntegralityFromMetricForLargeConstants D :=
  closed_of_orthogonal_splitting D hS (goodLeSmall_of hM) h

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfSplittingMatrix =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfMinimalVector =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfMinimalVector", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.OrthSplitOfMin\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.GoodLeSmallMat\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.IntegralityFromMetricOfOrthBasisLat\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfSplittingMatrix\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.SymmetricFormBlocks

theorem closed_of_minimal_vector (D : Formalism.BasicNotions.D7) (hO : OrthMin) (hM : GoodLeSmallMat) (h : RestWinE D) :
    Formalism.MainNotions.flipOneThree.IntegralityFromMetricForLargeConstants D :=
  closed_of_splitting_matrix D (orthSplit_of_min hO) hM h

end Formalism.MainNotions.G.SymmetricFormBlocks

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfMinimalVector =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FockGramWindow", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.InitialPointNumericBound\npublic import Formalism.SharpRestriction.GrowthBounds.FockGramWindow.WinLvl\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.IntegralityFromMetricOfOrthBasisLat\npublic import Formalism.PeriodIntegrals.DiagRank\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DiagonalRank.DetOneSubPNe\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LatMin\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialFactorials.ClosedOfMinimalVector\nimport Formalism.SharpRestriction.GrowthBounds.FockGramWindow.FirstCoefficientLeDiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.GramWindowAlt

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.MainNotions.G.CountingStatementReduction Formalism.MainNotions.G.SymmetricFormBlocks

theorem restWinE_proved (D : Formalism.BasicNotions.D7) : RestWinE D := by
  intro Cc _
  refine ⟨1, one_pos, fun C0 _ => ⟨1, one_pos, fun CE1 CE2 h1 h2 => ⟨2, two_pos, fun CYb Cde Ck CD Cb a1 _ _ a4 a5 => ?_⟩⟩⟩
  intro Ckap Cs CM hCM X _ hH
  have hS : SegFacts C0 CE1 CE2 X := segFacts a1 (by linarith) (by linarith) (by linarith) (by linarith) hH
  have hpk : X.L.k ^ 2 * X.L.Y ^ 2 ≤ (X.L.p : ℝ) := by
    obtain ⟨h0, -⟩ := hH
    obtain ⟨-, hpk, -⟩ := h0
    exact hpk
  exact restWin_of_lvl (by linarith) (by linarith) (by linarith) hH CM winLvl (restWinNum_proved hS hpk CM hCM)
    (a_mem_win hS)

theorem theorem_A_closed_form_holds (D : Formalism.BasicNotions.D7) : Formalism.MainNotions.flipOneThree.IntegralityFromMetricForLargeConstants D :=
  closed_of_minimal_vector D PI.exists_minimalNormVector _root_.PI.UnitaryGroupMassFormula.DiagRank.diagRank (restWinE_proved D)

end Formalism.MainNotions.G.GramWindowAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FockGramWindow =====
