module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SlicesFiniteRegularityBuilt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjPair
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAFFStable2
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_JA_LocLemmas
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAFFStableGerm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsAgree
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsTheta
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocCC
public import Formalism.HermitianCurvature.StatementJF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaCutoffLimit
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPhi
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutCutTr
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEnBetaFrame
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDAsm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TransferSquareIntegrableHolds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocOpAdj
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAFFStableAdjComm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDQQ
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDGaugeQQAsm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJABddOp
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJABStar
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAIsAdj
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAFFStable
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellHermitian
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDJDJComm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveOrbitOpen
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator
import Mathlib.Analysis.Calculus.ContDiff.Bounds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BXiAsm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEnTrSmooth
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocAlg
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SquareIntegrableGammaZetabarInv
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BoundedOperatorsSquareIntegrable
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDCCLower
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatBdd
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutAsm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SeminormCompletion
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentComposition.Development

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGACutGraded, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdj, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjJComm, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocAdd, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocPhi, Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalSquareIntegrableTransfer, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocDone, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsOp, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocOpAdjProof, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAAdjDone, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAQQ, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAAsm, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAQQOpen, Formalism.HermitianCurvature.HermitianCurvatureProofs.JAdjTrQQOfThree

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGACutGraded =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGACutGraded", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SlicesFiniteRegularityBuilt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutMP.JA.GA

theorem graded_truncation_action_holds : GACutGraded := by
  refine ⟨2, by norm_num, ?_⟩
  intro k r Wp Wq _ _ _ _ _ _ Bs χ₀ hχ ε A Bg F hε hBg hF hFg
  obtain ⟨δ, -, hcut, -⟩ := Formalism.FourierDecayAlt.P.JCTx6.Lev0.isCutG_div hχ hε
  exact Formalism.FourierDecayAlt.P.CutMP.JA.gcut_graded Bs.z Bs.z' (fun x => χ₀ (x / ε)) (δ * ε) hcut
    (by linarith) hF hFg

end Formalism.FourierDecayAlt.P.CutMP.JA.GA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGACutGraded =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdj =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdj", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGACutGraded\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjPair\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.JA

theorem jAGroupAdj_of_jComm (h : GA.GAJComm) : JAGroupAdj :=
  GA.jAGroupAdj_of_leaves GA.graded_truncation_action_holds h GA.group_action_pairing_holds

end Formalism.FourierDecayAlt.P.CutMP.JA
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdj =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjJComm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjJComm", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAFFStable2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_JA_LocLemmas\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellHermitian\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAFFStableGerm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsAgree\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsTheta\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDJDJComm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveOrbitOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutMP.JA.GA

open NumberField Formalism.FourierDecayAlt.P.CutMP Formalism.FourierDecayAlt.P.CutMP.JA

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem gAJComm_of_thetaJ (hT : LT.ThetaJ) : GAJComm := by
  refine ⟨12, 0, by norm_num, le_rfl, ?_⟩
  intro E _ _ _ Wp Wq _ _ _ _ _ _ S T f χ ν' m₀ top A₀ hB v Θ d Bg hd hBg hΘ _hCoef η F _hη hFs hFg _hFsupp
    U J hU hJ hagree x hx hxU
  have hPl : Q.IsPlace (D.parOf S v) (T v).base.z (T v).base.z' (T v).base.π (T v).base.π' :=
    (hB.1.2.2.2.1.2 v).2.2.2.1
  have hTT : (D.parOf S v).TT = Tz S.G.k S.G.r (T v).base.z * Tz S.G.k S.G.r (T v).base.z' := by
    rw [hPl.2.2.2.1, hPl.2.2.2.2.1]; rfl
  have hBg0 : 0 ≤ Bg := le_trans (by simp) hBg

  have hAg := LT.agreement_on_domain_holds S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)) (T v).base J F U hJ
    (fun q hq hqU => hagree q ⟨hq.1, by rw [hTT]; exact hq.2⟩ hqU)
  set V : Set (B.Mat S.G.k S.G.r) := Q.OmPlus S.G.k S.G.r (T v).base.z (T v).base.z' ∩
    (fun g => Gf S.G.k S.G.r (T v).base.z (T v).base.z' g) ⁻¹' U with hVdef
  have hVo : IsOpen V := (Formalism.FourierDecayAlt.P.PositiveOrbitOpen.omPlus_open _ _).inter
    (hU.preimage (Formalism.FourierDecayAlt.P.PositiveOrbitOpen.gf_cont _ _))
  have hJV : ∀ y ∈ V, y ∈ B.GV S.G.k S.G.r → J y = B.JF (T v).base F y := fun y hy hyG =>
    hAg y ⟨hyG, hy.1⟩ hy.2
  have hq : x ∈ JF.QDom S.G.k S.G.r (T v).base.z (T v).base.z' := ⟨hx.1, by rw [← hTT]; exact hx.2⟩
  have hg0 := Formalism.FourierDecayAlt.P.BigCellHermitian.gqDom (T v).base hq
  have hg0V : B.gq (T v).base x ∈ V := ⟨hg0.2, hxU⟩

  have hJck : B.CkOn ⊤ (JF.Om S.G.k S.G.r (T v).base.z (T v).base.z') J :=
    Formalism.FourierDecayAlt.P.CutMP.jdc_ckOn_om _ _ hJ.1
  set UU : Set (B.Mat S.G.k S.G.r) := JF.Om S.G.k S.G.r (T v).base.z (T v).base.z' ∩ V with hUUdef
  have hUU : UU ⊆ JF.Om S.G.k S.G.r (T v).base.z (T v).base.z' := Set.inter_subset_left
  have hCkF : B.CkOn (B.opOrder Θ : ℕ∞) UU (B.JF (T v).base F) := by
    intro g₀ hg₀
    obtain ⟨U₁, f', hU₁, hgU₁, hc, he⟩ := hJck g₀ hg₀.1
    refine ⟨U₁ ∩ V, f', hU₁.inter hVo, ⟨hgU₁, hg₀.2⟩, (hc.mono Set.inter_subset_left).of_le ?_, ?_⟩
    · exact_mod_cast le_top
    · intro g hg hgG
      rw [← hJV g hg.2 hgG]
      exact he g hg.1 hgG
  have hg0UU : B.gq (T v).base x ∈ UU := ⟨hg0, hg0V⟩

  have hThr : Formalism.FourierDecayAlt.P.WeakThresholdClauses.WeakDominationThreshold S.G.k S.G.r
      (B.AB S.G.k S.G.r + 12 * ((S.G.r : ℝ) + 1) * nDim S.G.k S.G.r ^ 2 +
          6 * (S.G.r : ℝ) * ((B.opOrder Θ : ℝ) + 5) + d + 2 * Bg * ((B.opOrder Θ : ℝ) + 5) -
        Bg * ((B.opOrder Θ : ℕ) : ℝ)) (B.opOrder Θ) := by
    have hAB : (0 : ℝ) ≤ B.AB S.G.k S.G.r := by unfold B.AB; positivity
    have hr : (0 : ℝ) ≤ S.G.r := Nat.cast_nonneg _
    have ho : (0 : ℝ) ≤ (B.opOrder Θ : ℝ) := Nat.cast_nonneg _
    apply Formalism.FourierDecayAlt.P.CutMP.jdc_thrW (B.opOrder Θ) _ (B.AB S.G.k S.G.r + 30 * (S.G.r : ℝ) + d +
      Bg * ((B.opOrder Θ : ℝ) + 10)) (by positivity)
    linarith
  obtain ⟨hT1, hT2⟩ := hT S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)) (T v).base Θ _ F UU hThr hΘ.1 hΘ.2 hFs
    (hFg (B.opOrder Θ)) hUU hCkF

  have hg0G : B.gq (T v).base x ∈ B.GV S.G.k S.G.r := hg0.1
  refine ⟨?_, ?_⟩
  · rw [← hT1 _ hg0]
    unfold B.opApply
    congr 1
    apply List.map_congr_left
    intro Tm _
    rw [Formalism.FourierDecayAlt.P.CutMP.JA.FFS.rw_local Tm.word Tm.word_lie hVo hJV _ hg0V hg0G]
  · rw [← hT2 _ hg0UU]
    unfold B.opAdj
    congr 1
    apply List.map_congr_left
    intro Tm _
    rw [Formalism.FourierDecayAlt.P.CutMP.JA.FFS.rw_local Tm.word.reverse
      (fun X hX => Tm.word_lie X (List.mem_reverse.1 hX)) hVo
      (f := fun y => Tm.coefAdj y (J y)) (f' := fun y => Tm.coefAdj y (B.JF (T v).base F y))
      (fun y hy hyG => by simp only [hJV y hy hyG]) _ hg0V hg0G]

theorem gAJComm_of_adjComm (hAC : Formalism.FourierDecayAlt.P.CutMP.JA.FFS.AdjComm) : GAJComm :=
  gAJComm_of_thetaJ (LT.thetaJ_of_adjComm hAC)

end Formalism.FourierDecayAlt.P.CutMP.JA.GA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjJComm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocAdd =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocAdd", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocCC\npublic import Formalism.HermitianCurvature.StatementJF\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellHermitian\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.FourierDecayAlt MeasureTheory
open Formalism.REAL Formalism.QuantumDeterminants

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutMP.JA

open NumberField Formalism.FourierDecayAlt.P.CutMP

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem locAdd_thr (k r : ℕ) {A : ℝ} (hA : 10 * ((r : ℝ) + 1) * nDim k r ^ 2 ≤ A) : JF.TransportedAlt k r A 0 := by
  unfold JF.TransportedAlt
  have hn : (1 : ℝ) ≤ ((2 * r + k + 1 : ℕ) : ℝ) := by exact_mod_cast (by omega : 1 ≤ 2 * r + k + 1)
  have hr : (0 : ℝ) < (r : ℝ) + 1 := by positivity
  have hA' : 10 * ((r : ℝ) + 1) * ((2 * r + k + 1 : ℕ) : ℝ) ^ 2 ≤ A := by simpa [nDim] using hA
  have hn2 : (1 : ℝ) ≤ ((2 * r + k + 1 : ℕ) : ℝ) ^ 2 := one_le_pow₀ hn
  rw [lt_div_iff₀ (by positivity)]
  simp only [Nat.cast_zero, mul_zero, sub_zero]
  linarith [mul_pos hr (lt_of_lt_of_le one_pos hn2)]

theorem local_additivity_transfer : JALocAdd := by
  refine ⟨10, ?_⟩
  intro E _ _ _ Wp Wq _ _ _ _ _ _ S T f χ ν' m₀ top Cb A₀ hB v Bg A J J' hBg hA hJ hJ'
  have hPl : Q.IsPlace (D.parOf S v) (T v).base.z (T v).base.z' (T v).base.π (T v).base.π' :=
    (hB.1.2.2.2.1.2 v).2.2.2.1
  have hTT : (D.parOf S v).TT = Tz S.G.k S.G.r (T v).base.z * Tz S.G.k S.G.r (T v).base.z' := by
    rw [hPl.2.2.2.1, hPl.2.2.2.2.1]; rfl
  have hThr := locAdd_thr S.G.k S.G.r hA
  refine ⟨Formalism.FourierDecayAlt.P.Qx8.FFl_add hJ.1 hJ'.1, fun δ hδ => ?_⟩
  obtain ⟨F, hF1, hF2, hF3⟩ := hJ.2 δ hδ
  obtain ⟨F', hF1', hF2', hF3'⟩ := hJ'.2 δ hδ
  refine ⟨F + F', Formalism.FourierDecayAlt.P.JCx2.ckOn_add' hF1 hF1', fun m => ?_, fun x hx hG => ?_⟩
  · obtain ⟨c, hc⟩ := hF2 m
    obtain ⟨c', hc'⟩ := hF2' m
    exact ⟨c + c', Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_add hc hc'⟩
  · have hq : x ∈ JF.QDom S.G.k S.G.r (T v).base.z (T v).base.z' := ⟨hx.1, hTT ▸ hx.2⟩
    have hg := Formalism.FourierDecayAlt.P.BigCellHermitian.gqDom (T v).base hq
    have h0 : B.InCC A 0 F := by simpa using hF2 0
    have h0' : B.InCC A 0 F' := by simpa using hF2' 0
    have i1 := (Formalism.FourierDecayAlt.P.bessel_integral_converges S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)) (T v).base A F hThr h0).1 _ hg
    have i2 := (Formalism.FourierDecayAlt.P.bessel_integral_converges S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)) (T v).base A F' hThr h0').1 _ hg
    have e : ∀ G : GFn S v, B.JF (T v).base G (B.gq (T v).base x) =
        ∫ p, JF.integrand (T v).base G (B.gq (T v).base x) p ∂(T v).base.μSS := fun G => rfl
    rw [Pi.add_apply, hF3 x hx hG, hF3' x hx hG, e, e, e, ← integral_add i1 i2]
    congr 1
    funext p
    simp [JF.integrand, B.rho, smul_add]

end Formalism.FourierDecayAlt.P.CutMP.JA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocAdd =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocPhi =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocPhi", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocCC\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaCutoffLimit\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPhi\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SlicesFiniteRegularityBuilt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.ContDiff.Bounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutMP.JA

open NumberField Formalism.FourierDecayAlt.P.CutMP

theorem lphi_log_deriv (m : ℕ) {x : ℝ} (hx : 0 < x) :
    ‖iteratedDeriv (m + 1) Real.log x‖ = (m.factorial : ℝ) * (x ^ (m + 1))⁻¹ := by
  rw [iteratedDeriv_succ', Real.deriv_log', iteratedDeriv_eq_iterate, iter_deriv_inv]
  rw [norm_mul, norm_mul, norm_pow, norm_neg, norm_one, one_pow, one_mul, Real.norm_natCast]
  congr 1
  have e : (-1 - (m : ℤ)) = -((m + 1 : ℕ) : ℤ) := by push_cast; ring
  rw [e, zpow_neg, zpow_natCast, norm_inv, norm_pow, Real.norm_of_nonneg hx.le]

theorem lphi_deriv_bdd {φ : ℝ → ℝ} (hφ : LE.SmoothLog φ) (hld : ∀ p, ∃ C, ∀ x, 0 < x → |LE.ld p φ x| ≤ C)
    {a : ℝ} (ha : 0 < a) (j : ℕ) : ∃ D : ℝ, ∀ x, a < x → ‖iteratedDeriv j φ x‖ ≤ D := by
  choose C hC using hld
  set Φ : ℝ → ℝ := fun u => φ (Real.exp u) with hΦdef
  have hΦ : ContDiff ℝ ∞ Φ := hφ
  set s : Set ℝ := Set.Ioi a with hs
  have hso : IsOpen s := isOpen_Ioi
  set K : ℝ := ∑ i ∈ Finset.range (j + 1), |C i| with hK
  have hKi : ∀ i ≤ j, |C i| ≤ K := fun i hi =>
    Finset.single_le_sum (f := fun i => |C i|) (fun _ _ => abs_nonneg _)
      (Finset.mem_range.2 (Nat.lt_succ_of_le hi))
  set M : ℝ := max 1 a⁻¹ with hM
  have hM1 : 1 ≤ M := le_max_left _ _
  set Dd : ℝ := (j.factorial : ℝ) * M with hDd
  refine ⟨(j.factorial : ℝ) * K * Dd ^ j, fun x hx => ?_⟩
  have hx0 : 0 < x := ha.trans hx
  have hxs : x ∈ s := hx
  have hlogc : ContDiffOn ℝ ∞ Real.log s :=
    Real.contDiffOn_log.mono fun y hy => ne_of_gt (ha.trans (show a < y from hy))
  have hFdB := norm_iteratedFDerivWithin_comp_le (n := j) (N := ∞) (g := Φ) (f := Real.log) (t := Set.univ)
    hΦ.contDiffOn hlogc (by exact_mod_cast le_top) uniqueDiffOn_univ hso.uniqueDiffOn (Set.mapsTo_univ _ _) hxs
    (C := K) (D := Dd) (fun i hi => by
      rw [iteratedFDerivWithin_univ, norm_iteratedFDeriv_eq_norm_iteratedDeriv]
      have := hC i x hx0
      unfold LE.ld at this
      rw [Real.norm_eq_abs]
      exact this.trans ((le_abs_self _).trans (hKi i hi)))
    (fun i hi1 hij => by
      rw [iteratedFDerivWithin_of_isOpen i hso hxs, norm_iteratedFDeriv_eq_norm_iteratedDeriv]
      obtain ⟨m, rfl⟩ : ∃ m, i = m + 1 := ⟨i - 1, by omega⟩
      rw [lphi_log_deriv m hx0]
      have hxi : (x ^ (m + 1))⁻¹ ≤ M ^ (m + 1) := by
        rw [← inv_pow]
        exact pow_le_pow_left₀ (inv_nonneg.2 hx0.le)
          ((inv_anti₀ ha hx.le).trans (le_max_right _ _)) _
      have hf1 : (m.factorial : ℝ) ≤ (j.factorial : ℝ) := by exact_mod_cast Nat.factorial_le (by omega)
      have hj1 : (1 : ℝ) ≤ (j.factorial : ℝ) := by exact_mod_cast Nat.one_le_iff_ne_zero.2 (Nat.factorial_ne_zero j)
      have hjp : (j.factorial : ℝ) ≤ (j.factorial : ℝ) ^ (m + 1) := le_self_pow₀ hj1 (by omega)
      rw [hDd, mul_pow]
      exact mul_le_mul (hf1.trans hjp) hxi (by positivity) (by positivity))
  rw [iteratedFDerivWithin_of_isOpen j hso hxs, norm_iteratedFDeriv_eq_norm_iteratedDeriv] at hFdB
  have heq : (Φ ∘ Real.log) =ᶠ[nhds x] φ := by
    filter_upwards [isOpen_Ioi.mem_nhds hx0] with y hy
    simp [hΦdef, Real.exp_log (show (0 : ℝ) < y from hy)]
  rw [← heq.iteratedDeriv_eq]
  exact hFdB

theorem lphi_cut {φ : ℝ → ℝ} (hφ : LE.SmoothLog φ) (hld : ∀ p, ∃ C, ∀ x, 0 < x → |LE.ld p φ x| ≤ C)
    {δ : ℝ} (hδ : 0 < δ) : ∃ (h : ℝ → ℝ) (ε' : ℝ), U.IsCutG ε' h ∧ ∀ x, δ ≤ x → h x = φ x := by
  set χ₀ : ℝ → ℝ := fun y => Real.smoothTransition (2 * y - 1) with hχ₀
  have hχ : C6.IsCut0 χ₀ := by
    refine ⟨Real.smoothTransition.contDiff.comp ((contDiff_const.mul contDiff_id).sub contDiff_const),
      ⟨1 / 2, by norm_num, fun y hy => Real.smoothTransition.zero_of_nonpos (by linarith)⟩,
      fun y hy => Real.smoothTransition.one_of_one_le (by linarith)⟩
  obtain ⟨δ₀, hδ₀, hcut, -⟩ := Formalism.FourierDecayAlt.P.JCTx6.Lev0.isCutG_div hχ hδ
  set ψ : ℝ → ℝ := fun x => χ₀ (x / δ) with hψ
  have hε : 0 < δ₀ * δ := mul_pos hδ₀ hδ
  have hψ1 : ∀ x, δ ≤ x → ψ x = 1 := fun x hx =>
    hχ.2.2 _ (by rw [le_div_iff₀ hδ]; linarith)
  have hψ0 : ∀ x, x < δ₀ * δ → ψ x = 0 := hcut.2.2
  have hφc := smoothLog_contDiffOn hφ
  refine ⟨fun x => ψ x * φ x, δ₀ * δ, ⟨?_, ?_, fun x hx => by simp [hψ0 x hx]⟩,
    fun x hx => by simp [hψ1 x hx]⟩
  · rw [contDiff_iff_contDiffAt]
    intro x
    by_cases hx : x < δ₀ * δ
    · refine contDiffAt_const (c := (0 : ℝ)).congr_of_eventuallyEq ?_
      filter_upwards [isOpen_Iio.mem_nhds hx] with y hy
      simp [hψ0 y hy]
    · have hx0 : 0 < x := lt_of_lt_of_le hε (not_lt.1 hx)
      exact hcut.1.contDiffAt.mul (hφc.contDiffAt (isOpen_Ioi.mem_nhds hx0))
  · intro q
    set a : ℝ := δ₀ * δ / 2 with ha
    have ha0 : 0 < a := by positivity
    choose cψ hcψ using hcut.2.1
    choose D hD using fun j => lphi_deriv_bdd hφ hld ha0 j
    refine ⟨∑ i ∈ Finset.range (q + 1), (q.choose i : ℝ) * |cψ i| * |D (q - i)|, fun x => ?_⟩
    have hS0 : 0 ≤ ∑ i ∈ Finset.range (q + 1), (q.choose i : ℝ) * |cψ i| * |D (q - i)| :=
      Finset.sum_nonneg fun i _ => by positivity
    by_cases hx : x < δ₀ * δ
    · have e : (fun x => ψ x * φ x) =ᶠ[nhds x] fun _ => (0 : ℝ) := by
        filter_upwards [isOpen_Iio.mem_nhds hx] with y hy
        simp [hψ0 y hy]
      rw [e.iteratedDeriv_eq]
      simp only [iteratedDeriv_const]
      split_ifs <;> simpa using hS0
    · have hxa : a < x := by linarith [not_lt.1 hx]
      set s : Set ℝ := Set.Ioi a with hs
      have hso : IsOpen s := isOpen_Ioi
      have hxs : x ∈ s := hxa
      have hφs : ContDiffOn ℝ ∞ φ s := hφc.mono fun y hy => ha0.trans (show a < y from hy)
      have hL := norm_iteratedFDerivWithin_mul_le (N := ∞) (hcut.1.contDiffOn (s := s)) hφs hso.uniqueDiffOn
        hxs (n := q) (by exact_mod_cast le_top)
      rw [iteratedFDerivWithin_of_isOpen q hso hxs, norm_iteratedFDeriv_eq_norm_iteratedDeriv] at hL
      refine hL.trans (Finset.sum_le_sum fun i hi => ?_)
      rw [iteratedFDerivWithin_of_isOpen i hso hxs, norm_iteratedFDeriv_eq_norm_iteratedDeriv,
        iteratedFDerivWithin_of_isOpen (q - i) hso hxs, norm_iteratedFDeriv_eq_norm_iteratedDeriv]
      have h1 : ‖iteratedDeriv i ψ x‖ ≤ |cψ i| := (hcψ i x).trans (le_abs_self _)
      have h2 : ‖iteratedDeriv (q - i) φ x‖ ≤ |D (q - i)| := (hD (q - i) x hxa).trans (le_abs_self _)
      exact mul_le_mul (mul_le_mul_of_nonneg_left h1 (by positivity)) h2 (norm_nonneg _) (by positivity)

theorem local_phi_transfer_holds : JALocPhi := by
  refine ⟨2, by norm_num, ?_⟩
  intro E _ _ _ Wp Wq _ _ _ _ _ _ S T f χ ν' m₀ top Cb A₀ hB v φ Bg A J hφ hld hBg hJ hFF
  refine ⟨hFF, fun δ hδ => ?_⟩
  obtain ⟨F, hF1, hF2, hF3⟩ := hJ.2 δ hδ
  obtain ⟨h, ε', hcut, hhφ⟩ := lphi_cut hφ hld hδ
  obtain ⟨hck, hcc⟩ := gcut_graded (T v).base.z (T v).base.z' h ε' hcut (A := A) hBg hF1 hF2
  refine ⟨fun g => ((h (GfP S T v g) : ℝ) : ℂ) • F g, hck, hcc, fun x hx hG => ?_⟩
  have e1 : (fun g => ((h (GfP S T v g) : ℝ) : ℂ) • F g) = D.cutF (T v).base h F 1 := by
    funext g; simp [D.cutF, GfP]
  rw [e1, Formalism.FourierDecayAlt.P.JCTx2.JF_cutF, div_one, ← hF3 x hx hG]
  simp only [mulG]
  unfold GfP at hG
  rw [hhφ _ hG]
  rfl

end Formalism.FourierDecayAlt.P.CutMP.JA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocPhi =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalSquareIntegrableTransfer =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalSquareIntegrableTransfer", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocCC\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BXiAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutCutTr\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEnBetaFrame\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEnTrSmooth\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocAlg\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDAsm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SquareIntegrableGammaZetabarInv\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TransferSquareIntegrableHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.FourierDecayAlt MeasureTheory
open Formalism.REAL Formalism.QuantumDeterminants
open NumberField

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutMP.JA

open Formalism.FourierDecayAlt.P.CutMP

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem local_square_integrable_transfer : LocalSquareIntegrableTransfer := by
  refine ⟨3, ?_⟩
  intro E _ _ _ Wp Wq _ _ _ _ _ _ S T f χ ν' m₀ top Cb A₀ hB v Bg A ε J e hFr hBg hε hA hJ π
  have hPl : Q.IsPlace (D.parOf S v) (T v).base.z (T v).base.z' (T v).base.π (T v).base.π' :=
    (hB.1.2.2.2.1.2 v).2.2.2.1
  set Db := (T v).base with hDb
  have hT : Tz S.G.k S.G.r Db.z = S.T := hPl.2.2.2.1
  have hT' : Tz S.G.k S.G.r Db.z' = S.T' := hPl.2.2.2.2.1
  have hTT : Tz S.G.k S.G.r Db.z * Tz S.G.k S.G.r Db.z' = (D.parOf S v).TT := by rw [hT, hT']; rfl
  have hQm : MeasurableSet (MA.Qset (D.parOf S v).r (D.parOf S v).TT) := (MA.Qset_open _ _).measurableSet

  obtain ⟨F, -, hCC, hFJ⟩ := hJ.2 ε hε
  set A' := A - 5 * Bg with hA'
  have hC5 : ∀ m, m ≤ 5 → B.InCC A' m F := by
    intro m hm
    refine inCC_antiA ?_ (hCC m)
    have : (m : ℝ) ≤ 5 := by exact_mod_cast hm
    rw [hA']; linarith [mul_le_mul_of_nonneg_left this hBg]

  have hAB : B.AB S.G.k S.G.r ≤ A' := by
    have := jd_AB_le S.G.k S.G.r
    rw [hA']; linarith
  obtain ⟨c0, -, -, hB1, -⟩ := Formalism.FourierDecayAlt.P.b_any_of_xi S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)) Db A' hAB
  obtain ⟨C, hC⟩ := hB1
  obtain ⟨c4, hc4⟩ := hC5 4 (by norm_num)
  have hN : B.normSq Db F ≠ ⊤ := (hC F F c4 c4 (hC5 5 le_rfl) (hC5 5 le_rfl) hc4 hc4).1
  unfold B.normSq jNormSq at hN

  have hsm := Formalism.FourierDecayAlt.P.CutMP.En.trace_smoothness E Wp Wq S T v hPl e hFr J hJ.1 π
  have hval := Formalism.FourierDecayAlt.P.CutMP.En.toSm_val_of_mem (D.parOf S v) hsm
  have hGm : Measurable (fun q : MA.Qp (D.parOf S v).r (D.parOf S v).TT => MA.Gq (D.parOf S v) q) := by
    unfold MA.Gq; fun_prop
  have hs : MeasurableSet {q : MA.Qp (D.parOf S v).r (D.parOf S v).TT | ε ≤ MA.Gq (D.parOf S v) q} :=
    measurableSet_le measurable_const hGm
  refine ⟨(((jd_evQ_meas _ _).norm).pow 2).restrict, ?_⟩
  refine (hasFiniteIntegral_iff_ofReal (ae_of_all _ fun q => by positivity)).2 ?_
  set H : MA.E S.G.r → ENNReal := fun x =>
    ENNReal.ofReal (MA.wq S.G.k x (D.parOf S v).TT * ‖B.hsVec (B.JF Db F (B.gq Db x))‖ ^ 2) with hH
  have p1 : ∀ q ∈ {q : MA.Qp (D.parOf S v).r (D.parOf S v).TT | ε ≤ MA.Gq (D.parOf S v) q},
      ENNReal.ofReal (‖MA.evQ (D.parOf S v) (trJ S T v e J π) q‖ ^ 2) ≤ H q.1 := by
    intro q hqs
    refine ENNReal.ofReal_le_ofReal ?_
    have hGg : ε ≤ GfP S T v (B.gq (T v).base q.1) := by
      have h1 := Formalism.FourierDecayAlt.P.CutMP.cutTr_Gf_gq (T v).base q.2.1 (by rw [hTT]; exact q.2.2)
      have h2 : GfP S T v (B.gq (T v).base q.1) = MA.Gq (D.parOf S v) q := by
        unfold GfP MA.Gq; rw [h1, hTT]
      rw [h2]; exact hqs
    have hJF : J (B.gq Db q.1) = B.JF Db F (B.gq Db q.1) := hFJ q.1 q.2 hGg
    have hq : MA.evQ (D.parOf S v) (trJ S T v e J π) q =
        ((Real.sqrt (MA.wq S.G.k q.1 (D.parOf S v).TT) : ℝ) : ℂ) *
          inner ℂ (B.hsVec (e π q.1.2)) (B.hsVec (B.JF Db F (B.gq Db q.1))) := by
      rw [← hJF]; exact congrFun hval q
    rw [hq, norm_mul, mul_pow, Complex.norm_real, Real.norm_eq_abs, sq_abs]
    have hw := Formalism.FourierDecayAlt.P.CutMP.En.wq_pos (k := S.G.k) q.2
    rw [Real.sq_sqrt hw.le]
    refine mul_le_mul_of_nonneg_left ?_ hw.le
    have he1 : ‖B.hsVec (e π q.1.2)‖ ≤ 1 := by
      have h1 : inner ℂ (B.hsVec (e π q.1.2)) (B.hsVec (e π q.1.2)) = (1 : ℂ) := by
        simpa using (hFr.2 q.1.2 q.2.2).2.1 π π
      rw [inner_self_eq_norm_sq_to_K] at h1
      have h2' : ((‖B.hsVec (e π q.1.2)‖ ^ 2 : ℝ) : ℂ) = ((1 : ℝ) : ℂ) := by
        rw [Complex.ofReal_pow, Complex.ofReal_one]; exact h1
      have h2 : ‖B.hsVec (e π q.1.2)‖ ^ 2 = 1 := Complex.ofReal_injective h2'
      exact le_of_sq_le_sq (by linarith : ‖B.hsVec (e π q.1.2)‖ ^ 2 ≤ 1 ^ 2) zero_le_one
    have hi : ‖inner ℂ (B.hsVec (e π q.1.2)) (B.hsVec (B.JF Db F (B.gq Db q.1)))‖ ≤
        ‖B.hsVec (B.JF Db F (B.gq Db q.1))‖ :=
      (norm_inner_le_norm _ _).trans (mul_le_of_le_one_left (norm_nonneg _) he1)
    exact pow_le_pow_left₀ (norm_nonneg _) hi 2
  have p2 : ∀ x ∈ MA.Qset (D.parOf S v).r (D.parOf S v).TT, MA.dens0 x * H x ≤
      ENNReal.ofReal (bcWeight S.G.k S.G.r (Tz S.G.k S.G.r Db.z) (Tz S.G.k S.G.r Db.z') x *
        ‖B.hsVec (B.JF Db F (B.gq Db x))‖ ^ 2) := by
    intro x hx
    have hd : MA.dens0 x = ENNReal.ofReal (Formalism.FourierDecayAlt.P.MAx2.Adj.dR x) := by
      unfold MA.dens0 Formalism.FourierDecayAlt.P.MAx2.Adj.dR
      rw [ENNReal.ofReal_prod_of_nonneg (fun l _ => inv_nonneg.2 (Complex.normSq_nonneg _))]
    have hd0 : 0 ≤ Formalism.FourierDecayAlt.P.MAx2.Adj.dR x :=
      Finset.prod_nonneg fun l _ => inv_nonneg.2 (Complex.normSq_nonneg _)
    have hW : bcWeight S.G.k S.G.r (Tz S.G.k S.G.r Db.z) (Tz S.G.k S.G.r Db.z') x =
        Formalism.FourierDecayAlt.P.MAx2.Adj.dR x * MA.wq S.G.k x (D.parOf S v).TT := by
      have hle : Tz S.G.k S.G.r Db.z * Tz S.G.k S.G.r Db.z' ≤ Complex.normSq x.2 := by
        rw [hTT]; exact le_of_lt hx.2
      unfold bcWeight
      rw [if_pos hle]
      unfold Formalism.FourierDecayAlt.P.MAx2.Adj.dR MA.wq
      rw [hTT, ← mul_assoc, ← Finset.prod_mul_distrib]
      congr 1
      refine Finset.prod_congr rfl fun l _ => ?_
      have hM : 2 ≤ MA.Mdim S.G.k S.G.r l := by
        have := l.isLt
        simp only [MA.Mdim]; omega
      have hn : Complex.normSq (x.1 l) ≠ 0 := (Complex.normSq_pos.2 (hx.1 l)).ne'
      have e1 : Formalism.QuantumDeterminants.Mdim S.G.k S.G.r l = MA.Mdim S.G.k S.G.r l := rfl
      rw [e1, pow_mul, Complex.sq_norm, show MA.Mdim S.G.k S.G.r l - 1 = (MA.Mdim S.G.k S.G.r l - 2) + 1 by omega,
        pow_succ]
      field_simp
    rw [hd, hH, ← ENNReal.ofReal_mul hd0, hW, mul_assoc]
  calc ∫⁻ q, ENNReal.ofReal (‖MA.evQ (D.parOf S v) (trJ S T v e J π) q‖ ^ 2)
          ∂(MA.mu0 (D.parOf S v).r (D.parOf S v).TT).restrict
            {q | ε ≤ MA.Gq (D.parOf S v) q}
        ≤ ∫⁻ q in {q : MA.Qp (D.parOf S v).r (D.parOf S v).TT | ε ≤ MA.Gq (D.parOf S v) q}, H q.1
            ∂MA.mu0 (D.parOf S v).r (D.parOf S v).TT := setLIntegral_mono' hs p1
      _ ≤ ∫⁻ q : MA.Qp (D.parOf S v).r (D.parOf S v).TT, H q.1 ∂MA.mu0 (D.parOf S v).r (D.parOf S v).TT :=
          setLIntegral_le_lintegral _ _
      _ ≤ ∫⁻ x in MA.Qset (D.parOf S v).r (D.parOf S v).TT, MA.dens0 x * H x := lintegral_base_measure_le H
      _ ≤ ∫⁻ x in MA.Qset (D.parOf S v).r (D.parOf S v).TT,
            ENNReal.ofReal (bcWeight S.G.k S.G.r (Tz S.G.k S.G.r Db.z) (Tz S.G.k S.G.r Db.z') x *
              ‖B.hsVec (B.JF Db F (B.gq Db x))‖ ^ 2) := setLIntegral_mono' hQm p2
      _ ≤ ∫⁻ x, ENNReal.ofReal (bcWeight S.G.k S.G.r (Tz S.G.k S.G.r Db.z) (Tz S.G.k S.G.r Db.z') x *
              ‖B.hsVec (B.JF Db F (B.gq Db x))‖ ^ 2) := setLIntegral_le_lintegral _ _
      _ < ⊤ := lt_top_iff_ne_top.2 hN

end Formalism.FourierDecayAlt.P.CutMP.JA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalSquareIntegrableTransfer =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocDone =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocDone", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocCC\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocAdd\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocPhi\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LocalSquareIntegrableTransfer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutMP.JA

theorem jALocCC_of_op (h2 : JALocOp) (h3 : JALocAdj) : JALocCC :=
  jALocCC_of_leaves h2 h3 local_phi_transfer_holds local_additivity_transfer local_square_integrable_transfer

end Formalism.FourierDecayAlt.P.CutMP.JA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocDone =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsOp =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsOp", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_JA_LocLemmas\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.BetaSesquilinearity
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutMP.JA.LT

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section op

variable {k r : ℕ} {E E' : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [NormedAddCommGroup E'] [NormedSpace ℂ E']

theorem coefLeib {O UU : Set (B.Mat k r)} (hO : IsOpen O) (hcov : ∀ g ∈ B.GV k r, g ∈ O ∨ g ∈ UU)
    {a : B.Mat k r → (E →L[ℂ] E')} {Φ : B.Mat k r → E} {d Bg A : ℝ} (hBg : 0 ≤ Bg)
    (ha : B.CkOn ⊤ UU a)
    (hab : ∀ m : ℕ, ∃ C : ℝ, ∀ u v : List (B.Mat k r), (∀ X ∈ u, B.unitLie k r X) → (∀ X ∈ v, B.unitLie k r X) →
      u.length + v.length ≤ m → ∀ g ∈ B.GV k r, g ∉ O → ‖B.dLR u v a g‖ ≤ C * B.gN g ^ (d + Bg * m))
    (hΦ : B.CkOn ⊤ (B.GV k r) Φ) (hΦg : ∀ m : ℕ, B.InCC (A - Bg * m) m Φ)
    (hz : ∀ g ∈ B.GV k r, g ∈ O → Φ g = 0) :
    B.CkOn ⊤ (B.GV k r) (ap a Φ) ∧ ∀ n : ℕ, B.InCC (A - d - Bg * n) n (ap a Φ) := by
  have hP : Pr O UU ⊤ a Φ := ⟨ha, hΦ, hz⟩
  refine ⟨hP.ck hO hcov, fun n => ?_⟩
  choose Ca hCa using hab
  choose cF hcF using hΦg
  set Ka : ℝ := ∑ j ∈ Finset.range (n + 1), |Ca j| with hKa
  set K : ℝ := ∑ j ∈ Finset.range (n + 1), |cF j| with hK
  have hKaj : ∀ j ≤ n, |Ca j| ≤ Ka := fun j hj =>
    Finset.single_le_sum (f := fun j => |Ca j|) (fun i _ => abs_nonneg _)
      (Finset.mem_range.2 (Nat.lt_succ_of_le hj))
  have hKj : ∀ j ≤ n, |cF j| ≤ K := fun j hj =>
    Finset.single_le_sum (f := fun j => |cF j|) (fun i _ => abs_nonneg _)
      (Finset.mem_range.2 (Nat.lt_succ_of_le hj))
  have hKa0 : 0 ≤ Ka := Finset.sum_nonneg fun i _ => abs_nonneg _
  have hK0 : 0 ≤ K := Finset.sum_nonneg fun i _ => abs_nonneg _
  have hCK : 0 ≤ Ka * K := mul_nonneg hKa0 hK0
  refine ⟨2 ^ n * (Ka * K), sCkOn_mono le_top (hP.ck hO hcov), fun u v hu hv hl g hg => ?_⟩
  have hlie := lie_LR (unit_lie hu) (unit_lie hv)
  have hw : (wL u ++ wR v).length = u.length + v.length := len_LR u v
  have hP' : Pr O UU ((wL u ++ wR v).length : ℕ) a Φ := hP.mono le_top
  have hp := gN_pos hg
  have hg1 := gN_ge_one hg
  rw [dLR_eq]
  by_cases hgO : g ∈ O
  · rw [Dw_vanish hO hlie (hP'.mono zero_le).apz g hg hgO]
    simp only [norm_zero, mul_zero]
    exact mul_nonneg (by positivity) hCK
  · have hb := leib_bound hO hcov g hg (Ka * K * B.gN g ^ (d + Bg * (((wL u ++ wR v).length : ℕ) : ℝ) - A))
      (wL u ++ wR v) a Φ hlie hP' (by
        intro w₁ w₂ hs₁ hs₂ hl₁₂
        obtain ⟨u₁, v₁, hu₁, hv₁, rfl⟩ := sub_LR hs₁
        obtain ⟨u₂, v₂, hu₂, hv₂, rfl⟩ := sub_LR hs₂
        rw [len_LR, len_LR] at hl₁₂
        have hl₁ : u₁.length + v₁.length ≤ n := by
          have := hu₁.length_le; have := hv₁.length_le; omega
        have hl₂ : u₂.length + v₂.length ≤ n := by
          have := hu₂.length_le; have := hv₂.length_le; omega
        have hu₁' : ∀ X ∈ u₁, B.unitLie k r X := fun X hX => hu X (hu₁.subset hX)
        have hv₁' : ∀ X ∈ v₁, B.unitLie k r X := fun X hX => hv X (hv₁.subset hX)
        have hu₂' : ∀ X ∈ u₂, B.unitLie k r X := fun X hX => hu X (hu₂.subset hX)
        have hv₂' : ∀ X ∈ v₂, B.unitLie k r X := fun X hX => hv X (hv₂.subset hX)
        set L₁ : ℝ := ((u₁.length + v₁.length : ℕ) : ℝ) with hL₁
        set L₂ : ℝ := ((u₂.length + v₂.length : ℕ) : ℝ) with hL₂
        have b1 : ‖Dw (wL u₁ ++ wR v₁) a g‖ ≤ Ka * B.gN g ^ (d + Bg * L₁) := by
          rw [← dLR_eq]
          have h1 := hCa (u₁.length + v₁.length) u₁ v₁ hu₁' hv₁' le_rfl g hg hgO
          calc _ ≤ Ca (u₁.length + v₁.length) * B.gN g ^ (d + Bg * L₁) := by rw [hL₁]; exact h1
            _ ≤ |Ca (u₁.length + v₁.length)| * B.gN g ^ (d + Bg * L₁) :=
              mul_le_mul_of_nonneg_right (le_abs_self _) (Real.rpow_nonneg hp.le _)
            _ ≤ Ka * B.gN g ^ (d + Bg * L₁) :=
              mul_le_mul_of_nonneg_right (hKaj _ hl₁) (Real.rpow_nonneg hp.le _)
        have b2 : ‖Dw (wL u₂ ++ wR v₂) Φ g‖ ≤ K * B.gN g ^ (Bg * L₂ - A) := by
          rw [← dLR_eq]
          have h1 := (hcF (u₂.length + v₂.length)).2 u₂ v₂ hu₂' hv₂' le_rfl g hg
          have e : B.gN g ^ (Bg * L₂ - A) * B.gN g ^ (A - Bg * L₂) = 1 := by
            rw [← Real.rpow_add hp]; simp
          have h4 : ‖B.dLR u₂ v₂ Φ g‖ =
              B.gN g ^ (Bg * L₂ - A) * (B.gN g ^ (A - Bg * L₂) * ‖B.dLR u₂ v₂ Φ g‖) := by
            rw [← mul_assoc, e, one_mul]
          rw [h4]
          have h5 : B.gN g ^ (A - Bg * L₂) * ‖B.dLR u₂ v₂ Φ g‖ ≤ K := by
            refine le_trans ?_ (hKj _ hl₂)
            refine le_trans ?_ (le_abs_self _)
            simpa [hL₂] using h1
          calc _ ≤ B.gN g ^ (Bg * L₂ - A) * K := mul_le_mul_of_nonneg_left h5 (Real.rpow_nonneg hp.le _)
            _ = K * B.gN g ^ (Bg * L₂ - A) := mul_comm _ _
        have hsum : (d + Bg * L₁) + (Bg * L₂ - A) = d + Bg * (((wL u ++ wR v).length : ℕ) : ℝ) - A := by
          rw [← hl₁₂, hL₁, hL₂]; push_cast; ring
        calc ‖Dw (wL u₁ ++ wR v₁) a g‖ * ‖Dw (wL u₂ ++ wR v₂) Φ g‖
            ≤ (Ka * B.gN g ^ (d + Bg * L₁)) * (K * B.gN g ^ (Bg * L₂ - A)) :=
              mul_le_mul b1 b2 (norm_nonneg _) (mul_nonneg hKa0 (Real.rpow_nonneg hp.le _))
          _ = Ka * K * (B.gN g ^ (d + Bg * L₁) * B.gN g ^ (Bg * L₂ - A)) := by ring
          _ = Ka * K * B.gN g ^ (d + Bg * (((wL u ++ wR v).length : ℕ) : ℝ) - A) := by
              rw [← Real.rpow_add hp, hsum])
    have hlen : ((wL u ++ wR v).length : ℕ) ≤ n := by rw [hw]; exact hl
    have e2 : B.gN g ^ (A - d - Bg * n) * B.gN g ^ (d + Bg * (((wL u ++ wR v).length : ℕ) : ℝ) - A) ≤ 1 := by
      rw [← Real.rpow_add hp]
      refine Real.rpow_le_one_of_one_le_of_nonpos hg1 ?_
      have h6 : (((wL u ++ wR v).length : ℕ) : ℝ) ≤ n := by exact_mod_cast hlen
      linarith [mul_le_mul_of_nonneg_left h6 hBg]
    have e3 : (2 : ℝ) ^ (wL u ++ wR v).length ≤ 2 ^ n := pow_le_pow_right₀ (by norm_num) hlen
    calc B.gN g ^ (A - d - Bg * n) * ‖Dw (wL u ++ wR v) (ap a Φ) g‖
        ≤ B.gN g ^ (A - d - Bg * n) * (2 ^ (wL u ++ wR v).length *
            (Ka * K * B.gN g ^ (d + Bg * (((wL u ++ wR v).length : ℕ) : ℝ) - A))) :=
          mul_le_mul_of_nonneg_left hb (Real.rpow_nonneg hp.le _)
      _ = 2 ^ (wL u ++ wR v).length * (Ka * K) *
            (B.gN g ^ (A - d - Bg * n) * B.gN g ^ (d + Bg * (((wL u ++ wR v).length : ℕ) : ℝ) - A)) := by ring
      _ ≤ 2 ^ (wL u ++ wR v).length * (Ka * K) * 1 :=
          mul_le_mul_of_nonneg_left e2 (mul_nonneg (by positivity) hCK)
      _ ≤ 2 ^ n * (Ka * K) := by rw [mul_one]; exact mul_le_mul_of_nonneg_right e3 hCK

theorem rwG {w : List (B.Mat k r)} (hw : ∀ X ∈ w, B.inLie k r X) {Φ : B.Mat k r → E} {A Bg : ℝ}
    (hΦ : B.CkOn ⊤ (B.GV k r) Φ) (hΦg : ∀ m : ℕ, B.InCC (A - Bg * m) m Φ) :
    B.CkOn ⊤ (B.GV k r) (B.Rw w Φ) ∧ ∀ m : ℕ, B.InCC (A - Bg * w.length - Bg * m) m (B.Rw w Φ) := by
  refine ⟨?_, fun m => ?_⟩
  · rw [← Dw_wR]
    apply CkOn_Dw (fun x hx => lie_LR (u := []) (by simp) hw x (by simpa [wL] using hx))
    simpa using hΦ
  · have h := InCC_Rw (m := m) hw (hΦg (m + w.length))
    have e : A - Bg * ((m + w.length : ℕ) : ℝ) = A - Bg * w.length - Bg * m := by push_cast; ring
    rwa [e] at h

theorem listSumG {ι : Type*} (l : List ι) (f : ι → B.Mat k r → E) {A Bg : ℝ}
    (h : ∀ i ∈ l, B.CkOn ⊤ (B.GV k r) (f i) ∧ ∀ m : ℕ, B.InCC (A - Bg * m) m (f i)) :
    B.CkOn ⊤ (B.GV k r) (fun g => (l.map fun i => f i g).sum) ∧
      ∀ m : ℕ, B.InCC (A - Bg * m) m (fun g => (l.map fun i => f i g).sum) := by
  induction l with
  | nil =>
    simp only [List.map_nil, List.sum_nil]
    exact ⟨CkOn_zero, fun m => ⟨0, CCle_zero⟩⟩
  | cons i l ih =>
    have hi := h i (by simp)
    have hl := ih (fun j hj => h j (by simp [hj]))
    simp only [List.map_cons, List.sum_cons]
    refine ⟨CkOn_add hi.1 hl.1, fun m => ?_⟩
    obtain ⟨c, hc⟩ := hi.2 m
    obtain ⟨c', hc'⟩ := hl.2 m
    exact ⟨c + c', CCle_add hc hc'⟩

end op

theorem operator_in_class_holds : OpCCg := by
  intro k r Wp Wq _ _ _ _ _ _ Bs Θ d Bg A η F hη hBg hSC hCG hF hFg hz
  set O : Set (B.Mat k r) := {g | Gf k r Bs.z Bs.z' g < η} with hOdef
  have hO : IsOpen O := isOpen_lt (Gf_cont _ _) continuous_const
  have hcov : ∀ g ∈ B.GV k r, g ∈ O ∨ g ∈ B.GPos Bs := by
    intro g hg
    by_cases h : Gf k r Bs.z Bs.z' g < η
    · exact Or.inl h
    · exact Or.inr ⟨hg, lt_of_lt_of_le hη (not_lt.1 h)⟩
  have hzO : ∀ g ∈ B.GV k r, g ∈ O → F g = 0 := fun g hg h => hz g hg h
  have hoff : ∀ g, g ∉ O → η ≤ Gf k r Bs.z Bs.z' g := fun g h => not_lt.1 h
  have hab1 : ∀ T ∈ Θ, ∀ m : ℕ, ∃ C : ℝ, ∀ u v : List (B.Mat k r), (∀ X ∈ u, B.unitLie k r X) →
      (∀ X ∈ v, B.unitLie k r X) → u.length + v.length ≤ m → ∀ g ∈ B.GV k r, g ∉ O →
        ‖B.dLR u v T.coef g‖ ≤ C * B.gN g ^ (d + Bg * m) := by
    intro T hT m
    obtain ⟨C, hC⟩ := hCG T hT η hη m
    exact ⟨C, fun u v hu hv hl g hg hgO => (hC u v hu hv hl g hg (hoff g hgO)).1⟩
  have hab2 : ∀ T ∈ Θ, ∀ m : ℕ, ∃ C : ℝ, ∀ u v : List (B.Mat k r), (∀ X ∈ u, B.unitLie k r X) →
      (∀ X ∈ v, B.unitLie k r X) → u.length + v.length ≤ m → ∀ g ∈ B.GV k r, g ∉ O →
        ‖B.dLR u v T.coefAdj g‖ ≤ C * B.gN g ^ (d + Bg * m) := by
    intro T hT m
    obtain ⟨C, hC⟩ := hCG T hT η hη m
    exact ⟨C, fun u v hu hv hl g hg hgO => (hC u v hu hv hl g hg (hoff g hgO)).2⟩
  have hApp : ∀ T ∈ Θ, B.CkOn ⊤ (B.GV k r) (ap T.coef (B.Rw T.word F)) ∧
      ∀ m : ℕ, B.InCC (A - d - Bg * (B.opOrder Θ : ℝ) - Bg * m) m (ap T.coef (B.Rw T.word F)) := by
    intro T hT
    have hR := rwG T.word_lie hF hFg
    have hzR : ∀ g ∈ B.GV k r, g ∈ O → B.Rw T.word F g = 0 := Rw_vanish hO T.word_lie hzO
    have hc := coefLeib hO hcov hBg (hSC T hT).1 (hab1 T hT) hR.1 hR.2 hzR
    have hlen : (T.word.length : ℝ) ≤ (B.opOrder Θ : ℝ) := by
      exact_mod_cast Formalism.FourierDecayAlt.P.B5.len_le_order Θ hT
    refine ⟨hc.1, fun m => sInCC_mono ?_ le_rfl (hc.2 m)⟩
    linarith [mul_le_mul_of_nonneg_left hlen hBg]
  have hAdj : ∀ T ∈ Θ, B.CkOn ⊤ (B.GV k r)
        (fun g => ((-1 : ℂ) ^ T.word.length) • B.Rw T.word.reverse (fun x => T.coefAdj x (F x)) g) ∧
      ∀ m : ℕ, B.InCC (A - d - Bg * (B.opOrder Θ : ℝ) - Bg * m) m
        (fun g => ((-1 : ℂ) ^ T.word.length) • B.Rw T.word.reverse (fun x => T.coefAdj x (F x)) g) := by
    intro T hT
    have hc := coefLeib hO hcov hBg (hSC T hT).2 (hab2 T hT) hF hFg hzO
    have hR := rwG (w := T.word.reverse) (fun X hX => T.word_lie X (List.mem_reverse.1 hX)) hc.1 hc.2
    have hlen : (T.word.length : ℝ) ≤ (B.opOrder Θ : ℝ) := by
      exact_mod_cast Formalism.FourierDecayAlt.P.B5.len_le_order Θ hT
    refine ⟨CkOn_smul _ hR.1, fun m => ?_⟩
    have h2 := hR.2 m
    rw [List.length_reverse] at h2
    obtain ⟨c, hcc⟩ := sInCC_mono (A := A - d - Bg * (B.opOrder Θ : ℝ) - Bg * m) (by
      linarith [mul_le_mul_of_nonneg_left hlen hBg]) le_rfl h2
    exact ⟨_, CCle_smul _ hcc⟩
  exact ⟨listSumG Θ (fun T => ap T.coef (B.Rw T.word F)) hApp,
    listSumG Θ (fun T g => ((-1 : ℂ) ^ T.word.length) • B.Rw T.word.reverse (fun x => T.coefAdj x (F x)) g) hAdj⟩

end Formalism.FourierDecayAlt.P.CutMP.JA.LT

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsOp =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocOpAdjProof =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocOpAdjProof", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAFFStable2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocCC\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocOpAdj\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsAgree\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsOp\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocToolsTheta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutMP.JA

theorem local_operator_transfer_holds : JALocOp :=
  jALocOp_of_tools LT.operator_in_class_holds LT.agreement_on_domain_holds LT.theta_transfer_apply_holds

theorem jALocAdj_of_adjComm (h : FFS.AdjComm) : JALocAdj :=
  jALocAdj_of_tools LT.operator_in_class_holds LT.agreement_on_domain_holds (LT.thetaJ_of_adjComm h)

end Formalism.FourierDecayAlt.P.CutMP.JA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocOpAdjProof =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAAdjDone =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAAdjDone", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocCC\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAFFStableAdjComm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdj\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGroupAdjJComm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocDone\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJALocOpAdjProof\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.JA

theorem local_adjoint_transfer_holds : JALocAdj := jALocAdj_of_adjComm FFS.adjoint_commutation_holds

theorem local_class_transfer_holds : JALocCC := jALocCC_of_op local_operator_transfer_holds local_adjoint_transfer_holds

theorem group_action_commutation_holds : GA.GAJComm := GA.gAJComm_of_adjComm FFS.adjoint_commutation_holds

theorem group_adjoint_transfer_holds : JAGroupAdj := jAGroupAdj_of_jComm group_action_commutation_holds

end Formalism.FourierDecayAlt.P.CutMP.JA
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAAdjDone =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAQQ =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAQQ", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDQQ\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDGaugeQQAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJABddOp\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BoundedOperatorsSquareIntegrable\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJABStar\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAIsAdj\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPhi\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDCCLower\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatBdd\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDJDJComm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.TransferSquareIntegrableHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.JA

open NumberField Formalism.FourierDecayAlt.P.CutMP

noncomputable section

def JAAssembleQQ : Prop :=
  JDHatOpQQ → JDHatBdd → JDJComm → JDCCLower → TransferSquareIntegrable → BoundedOperatorsSquareIntegrable → JABddOpQQ → JABddStar → JAIsAdj → JAPhiOp →
    JAStarOp → JAGroupAdj → JALocCC → JAFFStable → JAdjTrQQ

theorem jAdjTrQQ_of_leaves (hA : JAAssembleQQ) (h1 : JDHatOpQQ) (h7 : JABddOpQQ) (h11 : JAStarOp)
    (h12 : JAGroupAdj) (h13 : JALocCC) (h14 : JAFFStable) : JAdjTrQQ :=
  hA h1 hat_bounded_decay_holds transfer_commutation_holds class_lower_decay_holds transfer_square_integrable_holds bounded_operators_square_integrable h7 transfer_star_bound_holds transfer_is_adjoint_holds phi_operator_transfer_holds h11
    h12 h13 h14

end

end Formalism.FourierDecayAlt.P.CutMP.JA
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAQQ =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAAsm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAAsm", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAQQ\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutAsm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutCutTr\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDAsm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SeminormCompletion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentComposition.Development\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt MeasureTheory
open scoped ComplexConjugate

namespace Formalism.FourierDecayAlt.P.CutMP.JA

open NumberField Formalism.FourierDecayAlt.P.CutMP Classical

noncomputable section

section van

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {k r : ℕ}

theorem rdV_van {E' : Type} [NormedAddCommGroup E'] [NormedSpace ℂ E'] {F : B.Mat k r → E'} {U : Set (B.Mat k r)}
    (hU : IsOpen U) (hF : ∀ g ∈ U, F g = 0) (X : B.Mat k r) : ∀ g ∈ U, RdV X F g = 0 := by
  intro g hg
  unfold RdV
  have hc : Continuous (fun t : ℝ => g * NormedSpace.exp ((t : ℂ) • X)) :=
    (Formalism.FourierDecayAlt.P.B5.curve_contDiff g X).continuous
  have h0 : g * NormedSpace.exp (((0 : ℝ) : ℂ) • X) ∈ U := by rw [Formalism.FourierDecayAlt.P.B5.curve_zero]; exact hg
  have hev : (fun t : ℝ => F (g * NormedSpace.exp ((t : ℂ) • X))) =ᶠ[nhds 0] fun _ => (0 : E') := by
    filter_upwards [hc.continuousAt.preimage_mem_nhds (hU.mem_nhds h0)] with t ht
    exact hF _ ht
  rw [hev.deriv_eq]
  simp

theorem rw_van {E' : Type} [NormedAddCommGroup E'] [NormedSpace ℂ E'] {F : B.Mat k r → E'} {U : Set (B.Mat k r)}
    (hU : IsOpen U) (hF : ∀ g ∈ U, F g = 0) (w : List (B.Mat k r)) : ∀ g ∈ U, B.Rw w F g = 0 := by
  induction w with
  | nil => exact hF
  | cons X w ih => exact rdV_van hU ih X

theorem opApply_van {Wp' Wq' : Type} [NormedAddCommGroup Wp'] [InnerProductSpace ℂ Wp'] [NormedAddCommGroup Wq']
    [InnerProductSpace ℂ Wq'] [FiniteDimensional ℂ Wq'] (Θ : B.DiffOp k r Wp' Wq') {J : B.Mat k r → (Wq' →L[ℂ] Wp')}
    {U : Set (B.Mat k r)} (hU : IsOpen U) (hJ : ∀ g ∈ U, J g = 0) : ∀ g ∈ U, B.opApply Θ J g = 0 := by
  intro g hg
  unfold B.opApply
  refine List.sum_eq_zero fun x hx => ?_
  obtain ⟨Tm, -, rfl⟩ := List.mem_map.1 hx
  rw [rw_van hU hJ Tm.word g hg, map_zero]

end van

theorem list_sum_flatMap {α M : Type} [AddCommMonoid M] (l : List α) (f : α → List M) :
    (l.flatMap f).sum = (l.map fun a => (f a).sum).sum := by
  induction l with
  | nil => simp
  | cons a l ih => simp [List.flatMap_cons, List.sum_append, ih]

theorem list_sum_map_flatMap {α β M : Type} [AddCommMonoid M] (l : List α) (f : α → List β) (g : β → M) :
    ((l.flatMap f).map g).sum = (l.map fun a => ((f a).map g).sum).sum := by
  induction l with
  | nil => simp
  | cons a l ih => simp [List.flatMap_cons, List.sum_append, ih]

section pair

theorem list_sum_map_add {α M : Type} [AddCommMonoid M] (l : List α) (f g : α → M) :
    (l.map fun a => f a + g a).sum = (l.map f).sum + (l.map g).sum := by
  induction l with
  | nil => simp
  | cons a l ih => simp only [List.map_cons, List.sum_cons, ih]; abel

theorem list_sum_comm {α β M : Type} [AddCommMonoid M] (l₁ : List α) (l₂ : List β) (g : α → β → M) :
    (l₁.map fun a => (l₂.map fun b => g a b).sum).sum = (l₂.map fun b => (l₁.map fun a => g a b).sum).sum := by
  induction l₁ with
  | nil => simp
  | cons a l ih =>
    simp only [List.map_cons, List.sum_cons, ih]
    rw [list_sum_map_add]

theorem list_mul_sum {α : Type} (l : List α) (a : ℂ) (f : α → ℂ) :
    a * (l.map f).sum = (l.map fun x => a * f x).sum := by
  induction l with
  | nil => simp
  | cons x l ih => simp only [List.map_cons, List.sum_cons, mul_add, ih]

variable (P : M.Par)

def PI (U V : M.Ty P → MA.SmQ P.r P.TT) : Prop :=
  ∀ π, Integrable (fun q => MA.evQ P (U π) q * conj (MA.evQ P (V π) q)) (MA.mu0 P.r P.TT)

variable {P}

theorem ipA_eq (U V : M.Ty P → MA.SmQ P.r P.TT) :
    MA.ipA P U V = ∑ π, ∫ q, MA.evQ P (U π) q * conj (MA.evQ P (V π) q) ∂MA.mu0 P.r P.TT := rfl

theorem evQ_add (a b : MA.SmQ P.r P.TT) (q : MA.Qp P.r P.TT) : MA.evQ P (a + b) q = MA.evQ P a q + MA.evQ P b q := rfl
theorem evQ_smul (c : ℂ) (a : MA.SmQ P.r P.TT) (q : MA.Qp P.r P.TT) : MA.evQ P (c • a) q = c * MA.evQ P a q := rfl
theorem evQ_zero (q : MA.Qp P.r P.TT) : MA.evQ P (0 : MA.SmQ P.r P.TT) q = 0 := rfl

theorem PI_add_left {U U' V : M.Ty P → MA.SmQ P.r P.TT} (h : PI P U V) (h' : PI P U' V) : PI P (U + U') V := by
  intro π
  have e : (fun q => MA.evQ P ((U + U') π) q * conj (MA.evQ P (V π) q)) =
      (fun q => MA.evQ P (U π) q * conj (MA.evQ P (V π) q)) + (fun q => MA.evQ P (U' π) q * conj (MA.evQ P (V π) q)) := by
    funext q; simp only [Pi.add_apply, evQ_add]; ring
  rw [e]; exact (h π).add (h' π)

theorem PI_smul_left {U V : M.Ty P → MA.SmQ P.r P.TT} (c : ℂ) (h : PI P U V) : PI P (c • U) V := by
  intro π
  have e : (fun q => MA.evQ P ((c • U) π) q * conj (MA.evQ P (V π) q)) =
      fun q => c * (MA.evQ P (U π) q * conj (MA.evQ P (V π) q)) := by
    funext q; simp only [Pi.smul_apply, evQ_smul]; ring
  rw [e]; exact (h π).const_mul c

theorem PI_zero_left (V : M.Ty P → MA.SmQ P.r P.TT) : PI P 0 V := by
  intro π
  have e : (fun q => MA.evQ P ((0 : M.Ty P → MA.SmQ P.r P.TT) π) q * conj (MA.evQ P (V π) q)) = fun _ => 0 := by
    funext q; simp only [Pi.zero_apply, evQ_zero, zero_mul]
  rw [e]; exact integrable_zero _ _ _

theorem PI_add_right {U V V' : M.Ty P → MA.SmQ P.r P.TT} (h : PI P U V) (h' : PI P U V') : PI P U (V + V') := by
  intro π
  have e : (fun q => MA.evQ P (U π) q * conj (MA.evQ P ((V + V') π) q)) =
      (fun q => MA.evQ P (U π) q * conj (MA.evQ P (V π) q)) + (fun q => MA.evQ P (U π) q * conj (MA.evQ P (V' π) q)) := by
    funext q; simp only [Pi.add_apply, evQ_add, map_add (f := _)]; ring
  rw [e]; exact (h π).add (h' π)

theorem PI_smul_right {U V : M.Ty P → MA.SmQ P.r P.TT} (c : ℂ) (h : PI P U V) : PI P U (c • V) := by
  intro π
  have e : (fun q => MA.evQ P (U π) q * conj (MA.evQ P ((c • V) π) q)) =
      fun q => conj c * (MA.evQ P (U π) q * conj (MA.evQ P (V π) q)) := by
    funext q; simp only [Pi.smul_apply, evQ_smul, map_mul]; ring
  rw [e]; exact (h π).const_mul _

theorem PI_zero_right (U : M.Ty P → MA.SmQ P.r P.TT) : PI P U 0 := by
  intro π
  have e : (fun q => MA.evQ P (U π) q * conj (MA.evQ P ((0 : M.Ty P → MA.SmQ P.r P.TT) π) q)) = fun _ => 0 := by
    funext q; simp only [Pi.zero_apply, evQ_zero, map_zero, mul_zero]
  rw [e]; exact integrable_zero _ _ _

theorem ipA_add_left {U U' V : M.Ty P → MA.SmQ P.r P.TT} (h : PI P U V) (h' : PI P U' V) :
    MA.ipA P (U + U') V = MA.ipA P U V + MA.ipA P U' V := by
  simp only [ipA_eq, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun π _ => ?_
  rw [← integral_add (h π) (h' π)]
  congr 1; funext q; simp only [Pi.add_apply, evQ_add]; ring

theorem ipA_smul_left (c : ℂ) (U V : M.Ty P → MA.SmQ P.r P.TT) : MA.ipA P (c • U) V = c * MA.ipA P U V := by
  simp only [ipA_eq, Finset.mul_sum]
  refine Finset.sum_congr rfl fun π _ => ?_
  rw [← integral_const_mul]
  congr 1; funext q; simp only [Pi.smul_apply, evQ_smul]; ring

theorem ipA_add_right {U V V' : M.Ty P → MA.SmQ P.r P.TT} (h : PI P U V) (h' : PI P U V') :
    MA.ipA P U (V + V') = MA.ipA P U V + MA.ipA P U V' := by
  simp only [ipA_eq, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun π _ => ?_
  rw [← integral_add (h π) (h' π)]
  congr 1; funext q; simp only [Pi.add_apply, evQ_add, map_add (f := _)]; ring

theorem ipA_smul_right (c : ℂ) (U V : M.Ty P → MA.SmQ P.r P.TT) :
    MA.ipA P U (c • V) = conj c * MA.ipA P U V := by
  simp only [ipA_eq, Finset.mul_sum]
  refine Finset.sum_congr rfl fun π _ => ?_
  rw [← integral_const_mul]
  congr 1; funext q; simp only [Pi.smul_apply, evQ_smul, map_mul]; ring

theorem ipA_sum_left {ι : Type} (l : List ι) (c : ι → ℂ) (u : ι → M.Ty P → MA.SmQ P.r P.TT)
    (V : M.Ty P → MA.SmQ P.r P.TT) (h : ∀ i ∈ l, PI P (u i) V) :
    MA.ipA P ((l.map fun i => c i • u i).sum) V = (l.map fun i => c i * MA.ipA P (u i) V).sum ∧
      PI P ((l.map fun i => c i • u i).sum) V := by
  induction l with
  | nil => exact ⟨by simpa using _root_.Formalism.FourierDecayAlt.P.MAx3.AD.ipA_zero_left V, by simpa using PI_zero_left V⟩
  | cons i l ih =>
    obtain ⟨h1, h2⟩ := ih fun j hj => h j (List.mem_cons_of_mem _ hj)
    have hi : PI P (c i • u i) V := PI_smul_left (c i) (h i (List.mem_cons_self ..))
    simp only [List.map_cons, List.sum_cons]
    exact ⟨by rw [ipA_add_left hi h2, ipA_smul_left, h1], PI_add_left hi h2⟩

theorem ipA_sum_right {ι : Type} (U : M.Ty P → MA.SmQ P.r P.TT) (l : List ι) (c : ι → ℂ)
    (u : ι → M.Ty P → MA.SmQ P.r P.TT) (h : ∀ i ∈ l, PI P U (u i)) :
    MA.ipA P U ((l.map fun i => c i • u i).sum) = (l.map fun i => conj (c i) * MA.ipA P U (u i)).sum ∧
      PI P U ((l.map fun i => c i • u i).sum) := by
  induction l with
  | nil => exact ⟨by simpa using _root_.Formalism.FourierDecayAlt.P.MAx3.Z.ipA_zero_right U, by simpa using PI_zero_right U⟩
  | cons i l ih =>
    obtain ⟨h1, h2⟩ := ih fun j hj => h j (List.mem_cons_of_mem _ hj)
    have hi : PI P U (c i • u i) := PI_smul_right (c i) (h i (List.mem_cons_self ..))
    simp only [List.map_cons, List.sum_cons]
    exact ⟨by rw [ipA_add_right hi h2, ipA_smul_right, h1], PI_add_right hi h2⟩

theorem pairing_integrable_of_square_integrable {U V : M.Ty P → MA.SmQ P.r P.TT} {ε : ℝ}
    (hU0 : ∀ π q, MA.Gq P q < ε → MA.evQ P (U π) q = 0)
    (hU2 : ∀ π, IntegrableOn (fun q => ‖MA.evQ P (U π) q‖ ^ 2) {q | ε ≤ MA.Gq P q} (MA.mu0 P.r P.TT))
    (hV2 : ∀ π, IntegrableOn (fun q => ‖MA.evQ P (V π) q‖ ^ 2) {q | ε ≤ MA.Gq P q} (MA.mu0 P.r P.TT)) : PI P U V := by
  intro π
  have hs : MeasurableSet {q : MA.Qp P.r P.TT | ε ≤ MA.Gq P q} := measurableSet_le measurable_const (MA.Gq_meas P)
  have hmU := jd_evQ_meas P (U π)
  have hmV := jd_evQ_meas P (V π)
  have hm : AEStronglyMeasurable (fun q => MA.evQ P (U π) q * conj (MA.evQ P (V π) q)) (MA.mu0 P.r P.TT) :=
    hmU.mul (Complex.continuous_conj.comp_aestronglyMeasurable hmV)
  have hOn : IntegrableOn (fun q => MA.evQ P (U π) q * conj (MA.evQ P (V π) q)) {q | ε ≤ MA.Gq P q}
      (MA.mu0 P.r P.TT) := by
    refine Integrable.mono' (((hU2 π).add (hV2 π)).div_const 2) hm.restrict (Filter.Eventually.of_forall fun q => ?_)
    simp only [norm_mul, Complex.norm_conj, Pi.add_apply]
    linarith [sq_nonneg (‖MA.evQ P (U π) q‖ - ‖MA.evQ P (V π) q‖)]
  have heq : (fun q => MA.evQ P (U π) q * conj (MA.evQ P (V π) q)) =
      Set.indicator {q | ε ≤ MA.Gq P q} (fun q => MA.evQ P (U π) q * conj (MA.evQ P (V π) q)) := by
    funext q
    by_cases hq : q ∈ {q : MA.Qp P.r P.TT | ε ≤ MA.Gq P q}
    · rw [Set.indicator_of_mem hq]
    · rw [Set.indicator_of_notMem hq, hU0 π q (not_le.1 hq), zero_mul]
  rw [heq]
  exact (integrable_indicator_iff hs).2 hOn

end pair

theorem ja_arith (Cj Cl Cgr Sg R n N A AB : ℝ) (hCj : 0 ≤ Cj) (hSg : 0 ≤ Sg) (hR : 0 ≤ R) (hn : 1 ≤ n) (hN : 0 ≤ N)
    (hAB : AB ≤ 2 * n * (R + 1) + 1)
    (hA : 200 * (1 + |Cl| + |Cgr|) * (1 + Cj) * (1 + Sg) * ((R + 1) ^ 4 * (N * n ^ 2 + n ^ 3)) ≤ A) :
    Cl * (R + 1) * n ^ 2 + 6 * R * (Cj * n) + Cj * (R + 1) * n + 2 * (Sg * (R + 1)) * (Cj * n + 1) ≤
        A - (2 * N + 2) * (Cj * (R + 1) * n + 2 * (Sg * (R + 1)) * (Cj * n)) ∧
      AB + Cgr * (R + 1) * n ^ 2 + 6 * R * (Cj * n + 5) + Cj * (R + 1) * n + 2 * (Sg * (R + 1)) * (Cj * n + 5) ≤
        A - (2 * N + 2) * (Cj * (R + 1) * n + 2 * (Sg * (R + 1)) * (Cj * n)) ∧
      Cl * (R + 1) ^ 2 * n + 5 * (Sg * (R + 1)) ≤
        A - (2 * N + 2) * (Cj * (R + 1) * n + 2 * (Sg * (R + 1)) * (Cj * n)) := by
  set W : ℝ := (R + 1) ^ 4 * (N * n ^ 2 + n ^ 3) with hW
  have hX : 1 ≤ R + 1 := by linarith
  have hX0 : 0 ≤ R + 1 := by linarith
  have hn0 : 0 ≤ n := by linarith
  have hX4 : R + 1 ≤ (R + 1) ^ 4 := le_self_pow₀ hX (by norm_num)
  have hX24 : (R + 1) ^ 2 ≤ (R + 1) ^ 4 := pow_le_pow_right₀ hX (by norm_num)
  have hn2 : n ≤ n ^ 2 := le_self_pow₀ hn (by norm_num)
  have hn3 : n ≤ n ^ 3 := le_self_pow₀ hn (by norm_num)
  have hn23 : n ^ 2 ≤ n ^ 3 := pow_le_pow_right₀ hn (by norm_num)
  have h1n3 : 1 ≤ n ^ 3 := one_le_pow₀ hn
  have hNn : 0 ≤ N * n ^ 2 := by positivity
  have hY : ∀ a b : ℝ, 0 ≤ a → 0 ≤ b → a ≤ (R + 1) ^ 4 → b ≤ n ^ 3 → a * b ≤ W := by
    intro a b ha hb h1 h2
    calc a * b ≤ (R + 1) ^ 4 * n ^ 3 := mul_le_mul h1 h2 hb (by positivity)
      _ ≤ W := mul_le_mul_of_nonneg_left (by linarith) (by positivity)
  have f1 : (R + 1) * n ^ 2 ≤ W := hY _ _ hX0 (by positivity) hX4 hn23
  have f2 : (R + 1) ^ 2 * n ≤ W := hY _ _ (by positivity) hn0 hX24 hn3
  have f3 : (R + 1) * n ≤ W := hY _ _ hX0 hn0 hX4 hn3
  have f4 : R * n ≤ W := hY _ _ hR hn0 (by linarith) hn3
  have f5 : R + 1 ≤ W := by have := hY _ _ hX0 (by norm_num : (0:ℝ) ≤ 1) hX4 h1n3; linarith
  have f7 : (N + 1) * ((R + 1) * n) ≤ W := by
    have h1' : N * n ≤ N * n ^ 2 := mul_le_mul_of_nonneg_left hn2 hN
    have h2' : (R + 1) * (N * n + n) ≤ (R + 1) ^ 4 * (N * n ^ 2 + n ^ 3) :=
      mul_le_mul hX4 (by linarith) (by positivity) (by positivity)
    have e : (N + 1) * ((R + 1) * n) = (R + 1) * (N * n + n) := by ring
    rw [e, hW]; exact h2'
  have hW0 : 0 ≤ W := by linarith
  have hM : (2 * N + 2) * (Cj * (R + 1) * n + 2 * (Sg * (R + 1)) * (Cj * n)) ≤ (2 * Cj + 4 * Cj * Sg) * W := by
    have e : (2 * N + 2) * (Cj * (R + 1) * n + 2 * (Sg * (R + 1)) * (Cj * n)) =
        (2 * Cj + 4 * Cj * Sg) * ((N + 1) * ((R + 1) * n)) := by ring
    rw [e]; exact mul_le_mul_of_nonneg_left f7 (by positivity)
  have g1 : Cl * ((R + 1) * n ^ 2) ≤ |Cl| * W :=
    le_trans (mul_le_mul_of_nonneg_right (le_abs_self Cl) (by positivity)) (mul_le_mul_of_nonneg_left f1 (abs_nonneg _))
  have g1' : Cgr * ((R + 1) * n ^ 2) ≤ |Cgr| * W :=
    le_trans (mul_le_mul_of_nonneg_right (le_abs_self Cgr) (by positivity)) (mul_le_mul_of_nonneg_left f1 (abs_nonneg _))
  have g2 : Cl * ((R + 1) ^ 2 * n) ≤ |Cl| * W :=
    le_trans (mul_le_mul_of_nonneg_right (le_abs_self Cl) (by positivity)) (mul_le_mul_of_nonneg_left f2 (abs_nonneg _))
  have g3 : Cj * (R * n) ≤ Cj * W := mul_le_mul_of_nonneg_left f4 hCj
  have g4 : Cj * ((R + 1) * n) ≤ Cj * W := mul_le_mul_of_nonneg_left f3 hCj
  have g5 : Sg * Cj * ((R + 1) * n) ≤ Sg * Cj * W := mul_le_mul_of_nonneg_left f3 (by positivity)
  have g6 : Sg * (R + 1) ≤ Sg * W := mul_le_mul_of_nonneg_left f5 hSg
  have hAbs : 0 ≤ |Cl| + |Cgr| := by positivity
  have hK : (40 + |Cl| + |Cgr| + 10 * Cj + 10 * Sg + 10 * Cj * Sg) * W ≤
      200 * (1 + |Cl| + |Cgr|) * (1 + Cj) * (1 + Sg) * W := by
    apply mul_le_mul_of_nonneg_right _ hW0
    have h1 : 0 ≤ (|Cl| + |Cgr|) * Cj := by positivity
    have h2 : 0 ≤ (|Cl| + |Cgr|) * Sg := by positivity
    have h3 : 0 ≤ Cj * Sg := by positivity
    have h4 : 0 ≤ (|Cl| + |Cgr|) * Cj * Sg := by positivity
    have e : 200 * (1 + |Cl| + |Cgr|) * (1 + Cj) * (1 + Sg) = 200 + 200 * (|Cl| + |Cgr|) + 200 * Cj + 200 * Sg +
        200 * ((|Cl| + |Cgr|) * Cj) + 200 * ((|Cl| + |Cgr|) * Sg) + 200 * (Cj * Sg) + 200 * ((|Cl| + |Cgr|) * Cj * Sg) := by
      ring
    rw [e]
    have : 0 ≤ |Cl| + |Cgr| := hAbs
    linarith
  have hA' : (40 + |Cl| + |Cgr| + 10 * Cj + 10 * Sg + 10 * Cj * Sg) * W ≤ A := le_trans hK (by rw [hW] at hA ⊢; linarith)
  have hCjW : 0 ≤ Cj * W := by positivity
  have hSgW : 0 ≤ Sg * W := by positivity
  have hCSW : 0 ≤ Cj * Sg * W := by positivity
  have hClW : 0 ≤ |Cl| * W := by positivity
  have hCgW : 0 ≤ |Cgr| * W := by positivity
  refine ⟨?_, ?_, ?_⟩
  · have e : Cl * (R + 1) * n ^ 2 + 6 * R * (Cj * n) + Cj * (R + 1) * n + 2 * (Sg * (R + 1)) * (Cj * n + 1) =
        Cl * ((R + 1) * n ^ 2) + 6 * (Cj * (R * n)) + Cj * ((R + 1) * n) + 2 * (Sg * Cj * ((R + 1) * n)) +
          2 * (Sg * (R + 1)) := by ring
    rw [e]; linarith
  · have e : AB + Cgr * (R + 1) * n ^ 2 + 6 * R * (Cj * n + 5) + Cj * (R + 1) * n + 2 * (Sg * (R + 1)) * (Cj * n + 5) =
        AB + Cgr * ((R + 1) * n ^ 2) + 6 * (Cj * (R * n)) + 30 * R + Cj * ((R + 1) * n) +
          2 * (Sg * Cj * ((R + 1) * n)) + 10 * (Sg * (R + 1)) := by ring
    rw [e]
    linarith
  · have e : Cl * (R + 1) ^ 2 * n + 5 * (Sg * (R + 1)) = Cl * ((R + 1) ^ 2 * n) + 5 * (Sg * (R + 1)) := by ring
    rw [e]; linarith

section place

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {Wp Wq : InfinitePlace E → Type}
  [∀ x, NormedAddCommGroup (Wp x)] [∀ x, InnerProductSpace ℂ (Wp x)]
  [∀ x, NormedAddCommGroup (Wq x)] [∀ x, InnerProductSpace ℂ (Wq x)] [∀ x, FiniteDimensional ℂ (Wq x)]

abbrev OpT (S : C.HidaSetting E Wp Wq) (v : Fin S.f) : Type := B.DiffOp S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v))

variable {S : C.HidaSetting E Wp Wq} {T : ∀ v : Fin S.f, D.LevTower S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v))} {v : Fin S.f}

def Van (S : C.HidaSetting E Wp Wq) (T : ∀ v : Fin S.f, D.LevTower S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)))
    (v : Fin S.f) (ε : ℝ) (J : GFn S v) : Prop :=
  ∀ g, GfP S T v g < ε → J g = 0

theorem van_opApply (Θ : OpT S v) {ε : ℝ} {J : GFn S v} (h : Van S T v ε J) : Van S T v ε (B.opApply Θ J) := by
  have hU : IsOpen {g : B.Mat S.G.k S.G.r | GfP S T v g < ε} :=
    isOpen_lt (Formalism.FourierDecayAlt.P.Ux8.cont_Gf _ _ _ _) continuous_const
  intro g hg
  exact opApply_van Θ hU (fun g hg => h g hg) g hg

theorem van_applyL (l : List (OpT S v)) {ε : ℝ} {J : GFn S v} (h : Van S T v ε J) :
    Van S T v ε (applyL S v l J) := by
  induction l with
  | nil => exact h
  | cons Θ l ih => exact van_opApply Θ ih

theorem van_mulG {φ : ℝ → ℝ} {ε : ℝ} (hφ : ∀ x, x ≤ ε → φ x = 0) (J : GFn S v) : Van S T v ε (mulG S T v φ J) := by
  intro g hg
  simp [mulG, hφ _ hg.le]

theorem applyL_append (l₁ l₂ : List (OpT S v)) (J : GFn S v) :
    applyL S v (l₁ ++ l₂) J = applyL S v l₁ (applyL S v l₂ J) := by
  unfold applyL; rw [List.foldr_append]

theorem adjL_cons (Θ : OpT S v) (l : List (OpT S v)) (J : GFn S v) :
    adjL S v (Θ :: l) J = adjL S v l (B.opAdj Θ J) := rfl

theorem apply_list_preserves_smooth_forms (hFF : ∀ Θ : OpT S v, IsAAOp S T v Θ → ∀ J ∈ smoothFormsPositiveCone S T v, B.opApply Θ J ∈ smoothFormsPositiveCone S T v ∧ B.opAdj Θ J ∈ smoothFormsPositiveCone S T v)
    (l : List (OpT S v)) (hl : ∀ Θ ∈ l, IsAAOp S T v Θ) {J : GFn S v} (hJ : J ∈ smoothFormsPositiveCone S T v) : applyL S v l J ∈ smoothFormsPositiveCone S T v := by
  induction l with
  | nil => exact hJ
  | cons Θ l ih =>
    exact (hFF Θ (hl Θ (List.mem_cons_self ..)) _ (ih fun Θ' h => hl Θ' (List.mem_cons_of_mem _ h))).1

theorem adjoint_list_preserves_smooth_forms (hFF : ∀ Θ : OpT S v, IsAAOp S T v Θ → ∀ J ∈ smoothFormsPositiveCone S T v, B.opApply Θ J ∈ smoothFormsPositiveCone S T v ∧ B.opAdj Θ J ∈ smoothFormsPositiveCone S T v)
    (l : List (OpT S v)) (hl : ∀ Θ ∈ l, IsAAOp S T v Θ) : ∀ {J : GFn S v}, J ∈ smoothFormsPositiveCone S T v → adjL S v l J ∈ smoothFormsPositiveCone S T v := by
  induction l with
  | nil => intro J hJ; exact hJ
  | cons Θ l ih =>
    intro J hJ
    exact ih (fun Θ' h => hl Θ' (List.mem_cons_of_mem _ h)) (hFF Θ (hl Θ (List.mem_cons_self ..)) J hJ).2

theorem trJ_van (e : M.Ty (D.parOf S v) → ℂ → (Wq (S.pl v) →L[ℂ] Wp (S.pl v)))
    (hTT : (D.parOf S v).TT = Tz S.G.k S.G.r (T v).base.z * Tz S.G.k S.G.r (T v).base.z')
    {ε : ℝ} {J : GFn S v} (h : Van S T v ε J) :
    ∀ π q, MA.Gq (D.parOf S v) q < ε → MA.evQ (D.parOf S v) (trJ S T v e J π) q = 0 := by
  intro π q hq
  have hζ : Tz S.G.k S.G.r (T v).base.z * Tz S.G.k S.G.r (T v).base.z' < Complex.normSq q.1.2 := by
    rw [← hTT]; exact q.2.2
  have hGq : GfP S T v (B.gq (T v).base q.1) = MA.Gq (D.parOf S v) q := by
    unfold GfP MA.Gq
    rw [cutTr_Gf_gq (T v).base q.2.1 hζ, ← hTT]
  have hJ0 : J (B.gq (T v).base q.1) = 0 := h _ (hGq ▸ hq)
  unfold trJ MA.toSm MA.evQ
  split_ifs with hs
  · have h0 : B.hsVec (0 : Wq (S.pl v) →L[ℂ] Wp (S.pl v)) = 0 := by
      have := _root_.PI.UnitaryGroupMassFormula.UsCompose.hsVec_smul (0 : ℂ) (0 : Wq (S.pl v) →L[ℂ] Wp (S.pl v))
      simpa using this
    simp [hJ0, h0]
  · rfl

def Lt (S : C.HidaSetting E Wp Wq) (T : ∀ v : Fin S.f, D.LevTower S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)))
    (v : Fin S.f) (Bg : ℝ) (Θ : OpT S v) : Prop :=
  B.opOrder Θ = 0 ∧ CutCoef S T v Θ 0 Bg

def Good (S : C.HidaSetting E Wp Wq) (T : ∀ v : Fin S.f, D.LevTower S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)))
    (v : Fin S.f) (Bg Dh Oh : ℝ) (Θ : OpT S v) : Prop :=
  IsAAOp S T v Θ ∧ (Lt S T v Bg Θ ∨ (CutCoef S T v Θ Dh Bg ∧ (B.opOrder Θ : ℝ) ≤ Oh))

def heavy (S : C.HidaSetting E Wp Wq) (T : ∀ v : Fin S.f, D.LevTower S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)))
    (v : Fin S.f) (Bg : ℝ) (l : List (OpT S v)) : ℕ :=
  l.countP fun Θ => decide (¬ Lt S T v Bg Θ)

theorem heavy_append (Bg : ℝ) (l₁ l₂ : List (OpT S v)) :
    heavy S T v Bg (l₁ ++ l₂) = heavy S T v Bg l₁ + heavy S T v Bg l₂ := by
  unfold heavy; rw [List.countP_append]

theorem heavy_cons (Bg : ℝ) (Θ : OpT S v) (l : List (OpT S v)) :
    heavy S T v Bg (Θ :: l) = heavy S T v Bg l + (if Lt S T v Bg Θ then 0 else 1) := by
  unfold heavy
  rw [List.countP_cons]
  by_cases h : Lt S T v Bg Θ <;> simp [h]

def Rz (S : C.HidaSetting E Wp Wq) (T : ∀ v : Fin S.f, D.LevTower S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)))
    (v : Fin S.f) (e : M.Ty (D.parOf S v) → ℂ → (Wq (S.pl v) →L[ℂ] Wp (S.pl v))) (Bg Dh Oh : ℝ) (k : ℕ)
    (y : MA.A (D.parOf S v) (MA.DQ (D.parOf S v))) : Prop :=
  ∃ ts : List (ℂ × List (OpT S v)), (∀ t ∈ ts, (∀ Θ ∈ t.2, Good S T v Bg Dh Oh Θ) ∧ heavy S T v Bg t.2 ≤ k) ∧
    ∀ J ∈ smoothFormsPositiveCone S T v, MA.actA (D.parOf S v) y (trJ S T v e J) =
      (ts.map fun t => t.1 • trJ S T v e (applyL S v t.2 J)).sum

variable {e : M.Ty (D.parOf S v) → ℂ → (Wq (S.pl v) →L[ℂ] Wp (S.pl v))} {Bg Dh Oh : ℝ}

theorem Rz_mono {k k' : ℕ} (hk : k ≤ k') {y : MA.A (D.parOf S v) (MA.DQ (D.parOf S v))}
    (h : Rz S T v e Bg Dh Oh k y) : Rz S T v e Bg Dh Oh k' y := by
  obtain ⟨ts, h1, h2⟩ := h
  exact ⟨ts, fun t ht => ⟨(h1 t ht).1, le_trans (h1 t ht).2 hk⟩, h2⟩

theorem Rz_one : Rz S T v e Bg Dh Oh 0 1 := by
  refine ⟨[((1 : ℂ), [])], ?_, ?_⟩
  · intro t ht
    simp only [List.mem_singleton] at ht
    subst ht
    exact ⟨fun Θ h => absurd h (List.not_mem_nil), by simp [heavy]⟩
  · intro J _
    simp [_root_.Formalism.FourierDecayAlt.P.MAx2.R2.act_one, applyL]

theorem Rz_mul (hFF : ∀ Θ : OpT S v, IsAAOp S T v Θ → ∀ J ∈ smoothFormsPositiveCone S T v, B.opApply Θ J ∈ smoothFormsPositiveCone S T v ∧ B.opAdj Θ J ∈ smoothFormsPositiveCone S T v)
    {k₁ k₂ : ℕ} {x y : MA.A (D.parOf S v) (MA.DQ (D.parOf S v))}
    (hx : Rz S T v e Bg Dh Oh k₁ x) (hy : Rz S T v e Bg Dh Oh k₂ y) : Rz S T v e Bg Dh Oh (k₁ + k₂) (x * y) := by
  obtain ⟨tx, hx1, hx2⟩ := hx
  obtain ⟨ty, hy1, hy2⟩ := hy
  refine ⟨ty.flatMap (fun t' => tx.map (fun t => (t.1 * t'.1, t.2 ++ t'.2))), ?_, ?_⟩
  · intro t ht
    rw [List.mem_flatMap] at ht
    obtain ⟨t', ht', ht2⟩ := ht
    obtain ⟨t0, ht0, rfl⟩ := List.mem_map.1 ht2
    refine ⟨fun Θ hΘ => ?_, ?_⟩
    · rcases List.mem_append.1 hΘ with h | h
      · exact (hx1 t0 ht0).1 Θ h
      · exact (hy1 t' ht').1 Θ h
    · show heavy S T v Bg (t0.2 ++ t'.2) ≤ k₁ + k₂
      rw [heavy_append]
      exact Nat.add_le_add (hx1 t0 ht0).2 (hy1 t' ht').2
  · intro J hJ
    rw [actA_mul, hy2 J hJ, jd_actA_listsum, list_sum_map_flatMap]
    congr 1
    refine List.map_congr_left fun t' ht' => ?_
    have hJ' : applyL S v t'.2 J ∈ smoothFormsPositiveCone S T v :=
      apply_list_preserves_smooth_forms hFF _ (fun Θ h => ((hy1 t' ht').1 Θ h).1) hJ
    rw [jd_actA_smulR, hx2 _ hJ', List.smul_sum, List.map_map, List.map_map]
    congr 1
    refine List.map_congr_left fun t _ => ?_
    simp only [Function.comp, smul_smul, applyL_append, mul_comm]

variable {L : R.LevelData (MA.A (D.parOf S v) (MA.DQ (D.parOf S v))) (D.parOf S v).r}

theorem Rz_closure
    (hFF : ∀ Θ : OpT S v, IsAAOp S T v Θ → ∀ J ∈ smoothFormsPositiveCone S T v, B.opApply Θ J ∈ smoothFormsPositiveCone S T v ∧ B.opAdj Θ J ∈ smoothFormsPositiveCone S T v)
    (hBddR : ∀ b ∈ MA.bddSet (D.parOf S v) L, ∃ Θ : OpT S v, Good S T v Bg Dh Oh Θ ∧ Lt S T v Bg Θ ∧
      ∀ J ∈ smoothFormsPositiveCone S T v, MA.actA (D.parOf S v) b (trJ S T v e J) = trJ S T v e (B.opApply Θ J)) :
    ∀ b ∈ Submonoid.closure (MA.bddSet (D.parOf S v) L), Rz S T v e Bg Dh Oh 0 b := by
  intro b hb
  induction hb using Submonoid.closure_induction with
  | mem x hx =>
    obtain ⟨Θ, hG, hLt, hΘ⟩ := hBddR x hx
    refine ⟨[((1 : ℂ), [Θ])], ?_, ?_⟩
    · intro t ht
      simp only [List.mem_singleton] at ht
      subst ht
      refine ⟨fun Θ' h => ?_, ?_⟩
      · simp only [List.mem_singleton] at h
        subst h
        exact hG
      · show heavy S T v Bg [Θ] ≤ 0
        rw [heavy_cons]
        simp [heavy, hLt]
    · intro J hJ
      rw [hΘ J hJ]
      simp [applyL]
  | one => exact Rz_one
  | mul x y _ _ hx hy => exact Rz_mono (by norm_num) (Rz_mul hFF hx hy)

theorem Rz_hat
    (hFF : ∀ Θ : OpT S v, IsAAOp S T v Θ → ∀ J ∈ smoothFormsPositiveCone S T v, B.opApply Θ J ∈ smoothFormsPositiveCone S T v ∧ B.opAdj Θ J ∈ smoothFormsPositiveCone S T v)
    (hBddR : ∀ b ∈ MA.bddSet (D.parOf S v) L, ∃ Θ : OpT S v, Good S T v Bg Dh Oh Θ ∧ Lt S T v Bg Θ ∧
      ∀ J ∈ smoothFormsPositiveCone S T v, MA.actA (D.parOf S v) b (trJ S T v e J) = trJ S T v e (B.opApply Θ J))
    (hHatR : ∀ X ∈ MA.hatSet (D.parOf S v) L, ∃ ts : List (MA.A (D.parOf S v) (MA.DQ (D.parOf S v)) × OpT S v),
      (∀ t ∈ ts, t.1 ∈ Submonoid.closure (MA.bddSet (D.parOf S v) L) ∧ Good S T v Bg Dh Oh t.2) ∧
      ∀ J ∈ smoothFormsPositiveCone S T v, MA.actA (D.parOf S v) X (trJ S T v e J) =
        (ts.map fun t => MA.actA (D.parOf S v) t.1 (trJ S T v e (B.opApply t.2 J))).sum) :
    ∀ X ∈ MA.hatSet (D.parOf S v) L, Rz S T v e Bg Dh Oh 1 X := by
  intro X hX
  obtain ⟨ts0, h1, h2⟩ := hHatR X hX
  have hb : ∀ t ∈ ts0, Rz S T v e Bg Dh Oh 0 t.1 := fun t ht => Rz_closure hFF hBddR t.1 (h1 t ht).1
  let tsb : MA.A (D.parOf S v) (MA.DQ (D.parOf S v)) × OpT S v → List (ℂ × List (OpT S v)) :=
    fun t => if h : t ∈ ts0 then Classical.choose (hb t h) else []
  have hsb : ∀ t ∈ ts0, (∀ s ∈ tsb t, (∀ Θ ∈ s.2, Good S T v Bg Dh Oh Θ) ∧ heavy S T v Bg s.2 ≤ 0) ∧
      ∀ J ∈ smoothFormsPositiveCone S T v, MA.actA (D.parOf S v) t.1 (trJ S T v e J) =
        ((tsb t).map fun s => s.1 • trJ S T v e (applyL S v s.2 J)).sum := by
    intro t ht
    simp only [tsb, dif_pos ht]
    exact Classical.choose_spec (hb t ht)
  refine ⟨ts0.flatMap (fun t => (tsb t).map (fun s => (s.1, s.2 ++ [t.2]))), ?_, ?_⟩
  · intro u hu
    rw [List.mem_flatMap] at hu
    obtain ⟨t, ht, hu2⟩ := hu
    obtain ⟨s, hs, rfl⟩ := List.mem_map.1 hu2
    refine ⟨fun Θ hΘ => ?_, ?_⟩
    · rcases List.mem_append.1 hΘ with h | h
      · exact ((hsb t ht).1 s hs).1 Θ h
      · simp only [List.mem_singleton] at h
        subst h
        exact (h1 t ht).2
    · show heavy S T v Bg (s.2 ++ [t.2]) ≤ 1
      rw [heavy_append]
      have h3 := ((hsb t ht).1 s hs).2
      have h4 : heavy S T v Bg [t.2] ≤ 1 := by
        rw [heavy_cons]
        split_ifs <;> simp [heavy]
      omega
  · intro J hJ
    rw [h2 J hJ, list_sum_map_flatMap]
    congr 1
    refine List.map_congr_left fun t ht => ?_
    have hJ' : B.opApply t.2 J ∈ smoothFormsPositiveCone S T v := (hFF t.2 (h1 t ht).2.1 J hJ).1
    rw [(hsb t ht).2 _ hJ', List.map_map]
    congr 1
    refine List.map_congr_left fun s _ => ?_
    simp only [Function.comp, applyL_append]
    rfl

theorem Rz_word
    (hFF : ∀ Θ : OpT S v, IsAAOp S T v Θ → ∀ J ∈ smoothFormsPositiveCone S T v, B.opApply Θ J ∈ smoothFormsPositiveCone S T v ∧ B.opAdj Θ J ∈ smoothFormsPositiveCone S T v)
    (hHat1 : ∀ X ∈ MA.hatSet (D.parOf S v) L, Rz S T v e Bg Dh Oh 1 X) :
    ∀ w : List (MA.A (D.parOf S v) (MA.DQ (D.parOf S v))), (∀ a ∈ w, a ∈ MA.hatSet (D.parOf S v) L) →
      Rz S T v e Bg Dh Oh w.length w.prod := by
  intro w
  induction w with
  | nil => intro _; simpa using (Rz_one : Rz S T v e Bg Dh Oh 0 1)
  | cons a w ih =>
    intro h
    rw [List.prod_cons, List.length_cons]
    exact Rz_mono (by omega) (Rz_mul hFF (hHat1 a (h a (List.mem_cons_self ..)))
      (ih fun b hb => h b (List.mem_cons_of_mem _ hb)))

structure Ctx (S : C.HidaSetting E Wp Wq) (T : ∀ v : Fin S.f, D.LevTower S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v)))
    (v : Fin S.f) (e : M.Ty (D.parOf S v) → ℂ → (Wq (S.pl v) →L[ℂ] Wp (S.pl v))) where
  Bg : ℝ
  Dh : ℝ
  Oh : ℝ
  Cl : ℝ
  Cgr : ℝ
  hBg : 0 ≤ Bg
  hDh : 0 ≤ Dh
  hOh : 0 ≤ Oh
  hFF : ∀ Θ : OpT S v, IsAAOp S T v Θ → ∀ J ∈ smoothFormsPositiveCone S T v, B.opApply Θ J ∈ smoothFormsPositiveCone S T v ∧ B.opAdj Θ J ∈ smoothFormsPositiveCone S T v
  hOp : ∀ (Θ : OpT S v) (d A : ℝ) (J : GFn S v), 0 ≤ d → IsAAOp S T v Θ → CutCoef S T v Θ d Bg →
    Cl * ((S.G.r : ℝ) + 1) * nDim S.G.k S.G.r ^ 2 + 6 * (S.G.r : ℝ) * (B.opOrder Θ : ℝ) + d +
      2 * Bg * ((B.opOrder Θ : ℝ) + 1) ≤ A →
    LocCC S T v A Bg J → B.opApply Θ J ∈ smoothFormsPositiveCone S T v → LocCC S T v (A - d - 2 * Bg * (B.opOrder Θ : ℝ)) Bg (B.opApply Θ J)
  hAdj : ∀ (Θ : OpT S v) (d A : ℝ) (J : GFn S v), 0 ≤ d → IsAAOp S T v Θ → CutCoef S T v Θ d Bg →
    Cl * ((S.G.r : ℝ) + 1) * nDim S.G.k S.G.r ^ 2 + 6 * (S.G.r : ℝ) * (B.opOrder Θ : ℝ) + d +
      2 * Bg * ((B.opOrder Θ : ℝ) + 1) ≤ A →
    LocCC S T v A Bg J → B.opAdj Θ J ∈ smoothFormsPositiveCone S T v → LocCC S T v (A - d - 2 * Bg * (B.opOrder Θ : ℝ)) Bg (B.opAdj Θ J)
  hMono : ∀ (A A' : ℝ) (J : GFn S v), A' ≤ A → LocCC S T v A Bg J → LocCC S T v A' Bg J
  hGA : ∀ (Θ : OpT S v) (d : ℝ), 0 ≤ d → IsAAOp S T v Θ → CutCoef S T v Θ d Bg →
    ∀ ε : ℝ, 0 < ε → ∀ J₁ J₂ : GFn S v,
      LocCC S T v (B.AB S.G.k S.G.r + Cgr * ((S.G.r : ℝ) + 1) * nDim S.G.k S.G.r ^ 2 +
        6 * (S.G.r : ℝ) * ((B.opOrder Θ : ℝ) + 5) + d + 2 * Bg * ((B.opOrder Θ : ℝ) + 5)) Bg J₁ →
      LocCC S T v (B.AB S.G.k S.G.r + Cgr * ((S.G.r : ℝ) + 1) * nDim S.G.k S.G.r ^ 2 +
        6 * (S.G.r : ℝ) * ((B.opOrder Θ : ℝ) + 5) + d + 2 * Bg * ((B.opOrder Θ : ℝ) + 5)) Bg J₂ →
      (∀ x ∈ MA.Qset (D.parOf S v).r (D.parOf S v).TT, GfP S T v (B.gq (T v).base x) < ε → J₁ (B.gq (T v).base x) = 0) →
      B.opApply Θ J₁ ∈ smoothFormsPositiveCone S T v → B.opAdj Θ J₂ ∈ smoothFormsPositiveCone S T v →
      MA.ipA (D.parOf S v) (trJ S T v e (B.opApply Θ J₁)) (trJ S T v e J₂) =
        MA.ipA (D.parOf S v) (trJ S T v e J₁) (trJ S T v e (B.opAdj Θ J₂))

namespace Ctx

variable (c : Ctx S T v e)

def Ch : ℝ := c.Dh + 2 * c.Bg * c.Oh

def Top : ℝ := c.Cl * ((S.G.r : ℝ) + 1) * nDim S.G.k S.G.r ^ 2 + 6 * (S.G.r : ℝ) * c.Oh + c.Dh + 2 * c.Bg * (c.Oh + 1)

def Tga : ℝ := B.AB S.G.k S.G.r + c.Cgr * ((S.G.r : ℝ) + 1) * nDim S.G.k S.G.r ^ 2 +
  6 * (S.G.r : ℝ) * (c.Oh + 5) + c.Dh + 2 * c.Bg * (c.Oh + 5)

theorem Ch_nonneg : 0 ≤ c.Ch := by
  unfold Ch; have := c.hBg; have := c.hDh; have := c.hOh; positivity

theorem one_op {Θ : OpT S v} (hΘ : Good S T v c.Bg c.Dh c.Oh Θ) :
    ∃ d : ℝ, 0 ≤ d ∧ CutCoef S T v Θ d c.Bg ∧
      c.Cl * ((S.G.r : ℝ) + 1) * nDim S.G.k S.G.r ^ 2 + 6 * (S.G.r : ℝ) * (B.opOrder Θ : ℝ) + d +
        2 * c.Bg * ((B.opOrder Θ : ℝ) + 1) ≤ c.Top ∧
      B.AB S.G.k S.G.r + c.Cgr * ((S.G.r : ℝ) + 1) * nDim S.G.k S.G.r ^ 2 +
        6 * (S.G.r : ℝ) * ((B.opOrder Θ : ℝ) + 5) + d + 2 * c.Bg * ((B.opOrder Θ : ℝ) + 5) ≤ c.Tga ∧
      d + 2 * c.Bg * (B.opOrder Θ : ℝ) ≤ (if Lt S T v c.Bg Θ then 0 else 1) * c.Ch := by
  have hR : (0 : ℝ) ≤ S.G.r := Nat.cast_nonneg _
  have hBg := c.hBg
  have hDh := c.hDh
  have hOh := c.hOh
  by_cases hL : Lt S T v c.Bg Θ
  · refine ⟨0, le_rfl, hL.2, ?_, ?_, ?_⟩
    · rw [hL.1]; unfold Top; push_cast; linarith [mul_nonneg hR hOh, mul_nonneg hBg hOh]
    · rw [hL.1]; unfold Tga; push_cast; linarith [mul_nonneg hR hOh, mul_nonneg hBg hOh]
    · rw [if_pos hL, hL.1]; simp
  · rcases hΘ.2 with h | ⟨hc, ho⟩
    · exact absurd h hL
    · refine ⟨c.Dh, hDh, hc, ?_, ?_, ?_⟩
      · unfold Top; linarith [mul_le_mul_of_nonneg_left ho hR, mul_le_mul_of_nonneg_left ho hBg]
      · unfold Tga; linarith [mul_le_mul_of_nonneg_left ho hR, mul_le_mul_of_nonneg_left ho hBg]
      · rw [if_neg hL]; unfold Ch; linarith [mul_le_mul_of_nonneg_left ho hBg]

theorem applyL_loc : ∀ (l : List (OpT S v)), (∀ Θ ∈ l, Good S T v c.Bg c.Dh c.Oh Θ) →
    ∀ (A : ℝ) (J : GFn S v), LocCC S T v A c.Bg J → J ∈ smoothFormsPositiveCone S T v → c.Top ≤ A - heavy S T v c.Bg l * c.Ch →
      LocCC S T v (A - heavy S T v c.Bg l * c.Ch) c.Bg (applyL S v l J) := by
  intro l
  induction l with
  | nil => intro _ A J hJ _ _; simpa [heavy, applyL] using hJ
  | cons Θ l ih =>
    intro hl A J hJ hJF hA
    have hΘ := hl Θ (List.mem_cons_self ..)
    have hl' : ∀ Θ' ∈ l, Good S T v c.Bg c.Dh c.Oh Θ' := fun Θ' h => hl Θ' (List.mem_cons_of_mem _ h)
    have hCh := c.Ch_nonneg
    obtain ⟨d, hd, hc, hT, -, hcost⟩ := c.one_op hΘ
    have hF1 : ∀ A', c.Top ≤ A' - heavy S T v c.Bg l * c.Ch → applyL S v l J ∈ smoothFormsPositiveCone S T v := fun _ _ =>
      apply_list_preserves_smooth_forms c.hFF l (fun Θ' h => (hl' Θ' h).1) hJF
    rw [heavy_cons] at hA ⊢
    by_cases hL : Lt S T v c.Bg Θ
    · simp only [if_pos hL, add_zero, zero_mul] at hA hcost ⊢
      have h1 := ih hl' A J hJ hJF hA
      have h2 := c.hOp Θ d _ _ hd hΘ.1 hc (le_trans hT hA) h1 (c.hFF Θ hΘ.1 _ (hF1 A hA)).1
      exact c.hMono _ _ _ (by linarith) h2
    · simp only [if_neg hL, one_mul, Nat.cast_add, Nat.cast_one] at hA hcost ⊢
      have e1 : ((heavy S T v c.Bg l : ℝ) + 1) * c.Ch = (heavy S T v c.Bg l : ℝ) * c.Ch + c.Ch := by ring
      rw [e1] at hA ⊢
      have hA' : c.Top ≤ A - heavy S T v c.Bg l * c.Ch := by linarith
      have h1 := ih hl' A J hJ hJF hA'
      have h2 := c.hOp Θ d _ _ hd hΘ.1 hc (le_trans hT hA') h1 (c.hFF Θ hΘ.1 _ (hF1 A hA')).1
      exact c.hMono _ _ _ (by linarith) h2

theorem adjL_loc : ∀ (l : List (OpT S v)), (∀ Θ ∈ l, Good S T v c.Bg c.Dh c.Oh Θ) →
    ∀ (A : ℝ) (J : GFn S v), LocCC S T v A c.Bg J → J ∈ smoothFormsPositiveCone S T v → c.Top ≤ A - heavy S T v c.Bg l * c.Ch →
      LocCC S T v (A - heavy S T v c.Bg l * c.Ch) c.Bg (adjL S v l J) := by
  intro l
  induction l with
  | nil => intro _ A J hJ _ _; simpa [heavy, adjL] using hJ
  | cons Θ l ih =>
    intro hl A J hJ hJF hA
    have hΘ := hl Θ (List.mem_cons_self ..)
    have hl' : ∀ Θ' ∈ l, Good S T v c.Bg c.Dh c.Oh Θ' := fun Θ' h => hl Θ' (List.mem_cons_of_mem _ h)
    have hCh := c.Ch_nonneg
    have hh0 : (0 : ℝ) ≤ heavy S T v c.Bg l := Nat.cast_nonneg _
    have hhC : 0 ≤ (heavy S T v c.Bg l : ℝ) * c.Ch := mul_nonneg hh0 hCh
    obtain ⟨d, hd, hc, hT, -, hcost⟩ := c.one_op hΘ
    have hF2 : B.opAdj Θ J ∈ smoothFormsPositiveCone S T v := (c.hFF Θ hΘ.1 J hJF).2
    rw [heavy_cons] at hA ⊢
    rw [adjL_cons]
    by_cases hL : Lt S T v c.Bg Θ
    · simp only [if_pos hL, add_zero, zero_mul] at hA hcost ⊢
      have hAT : c.Top ≤ A := by linarith
      have h1 := c.hAdj Θ d A J hd hΘ.1 hc (le_trans hT hAT) hJ hF2
      have h1' : LocCC S T v A c.Bg (B.opAdj Θ J) := c.hMono _ _ _ (by linarith) h1
      exact ih hl' A _ h1' hF2 hA
    · simp only [if_neg hL, one_mul, Nat.cast_add, Nat.cast_one] at hA hcost ⊢
      have e1 : ((heavy S T v c.Bg l : ℝ) + 1) * c.Ch = (heavy S T v c.Bg l : ℝ) * c.Ch + c.Ch := by ring
      rw [e1] at hA ⊢
      have hAT : c.Top ≤ A := by linarith
      have h1 := c.hAdj Θ d A J hd hΘ.1 hc (le_trans hT hAT) hJ hF2
      have h1' : LocCC S T v (A - c.Ch) c.Bg (B.opAdj Θ J) := c.hMono _ _ _ (by linarith) h1
      have h2 := ih hl' (A - c.Ch) _ h1' hF2 (by linarith)
      exact c.hMono _ _ _ (by linarith) h2

theorem chain {ε : ℝ} (hε : 0 < ε) : ∀ (l : List (OpT S v)), (∀ Θ ∈ l, Good S T v c.Bg c.Dh c.Oh Θ) →
    ∀ (A₁ A₂ : ℝ) (K J₂ : GFn S v), LocCC S T v A₁ c.Bg K → K ∈ smoothFormsPositiveCone S T v → Van S T v ε K →
      LocCC S T v A₂ c.Bg J₂ → J₂ ∈ smoothFormsPositiveCone S T v →
      c.Top ≤ A₁ - heavy S T v c.Bg l * c.Ch → c.Tga ≤ A₁ - heavy S T v c.Bg l * c.Ch →
      c.Top ≤ A₂ - heavy S T v c.Bg l * c.Ch → c.Tga ≤ A₂ - heavy S T v c.Bg l * c.Ch →
      MA.ipA (D.parOf S v) (trJ S T v e (applyL S v l K)) (trJ S T v e J₂) =
        MA.ipA (D.parOf S v) (trJ S T v e K) (trJ S T v e (adjL S v l J₂)) := by
  intro l
  induction l with
  | nil => intros; rfl
  | cons Θ l ih =>
    intro hl A₁ A₂ K J₂ hK hKF hKv hJ hJF h1T h1G h2T h2G
    have hΘ := hl Θ (List.mem_cons_self ..)
    have hl' : ∀ Θ' ∈ l, Good S T v c.Bg c.Dh c.Oh Θ' := fun Θ' h => hl Θ' (List.mem_cons_of_mem _ h)
    have hCh := c.Ch_nonneg
    have hh0 : (0 : ℝ) ≤ heavy S T v c.Bg l := Nat.cast_nonneg _
    have hhC : 0 ≤ (heavy S T v c.Bg l : ℝ) * c.Ch := mul_nonneg hh0 hCh
    obtain ⟨d, hd, hc, hT, hG, hcost⟩ := c.one_op hΘ
    have hF1 : applyL S v l K ∈ smoothFormsPositiveCone S T v := apply_list_preserves_smooth_forms c.hFF l (fun Θ' h => (hl' Θ' h).1) hKF
    have hv1 : Van S T v ε (applyL S v l K) := van_applyL l hKv
    have hF2 : B.opAdj Θ J₂ ∈ smoothFormsPositiveCone S T v := (c.hFF Θ hΘ.1 J₂ hJF).2
    rw [heavy_cons] at h1T h1G h2T h2G
    show MA.ipA (D.parOf S v) (trJ S T v e (B.opApply Θ (applyL S v l K))) (trJ S T v e J₂) =
      MA.ipA (D.parOf S v) (trJ S T v e K) (trJ S T v e (adjL S v l (B.opAdj Θ J₂)))
    by_cases hL : Lt S T v c.Bg Θ
    · simp only [if_pos hL, add_zero, zero_mul] at h1T h1G h2T h2G hcost
      have hL1 := c.applyL_loc l hl' A₁ K hK hKF h1T
      have hstep := c.hGA Θ d hd hΘ.1 hc ε hε (applyL S v l K) J₂ (c.hMono _ _ _ (le_trans hG h1G) hL1)
        (c.hMono _ _ _ (by linarith) hJ) (fun x _ hx => hv1 _ hx) (c.hFF Θ hΘ.1 _ hF1).1 hF2
      rw [hstep]
      have h2 := c.hAdj Θ d A₂ J₂ hd hΘ.1 hc (le_trans hT (by linarith)) hJ hF2
      exact ih hl' A₁ A₂ K _ hK hKF hKv (c.hMono _ _ _ (by linarith) h2) hF2 h1T h1G h2T h2G
    · simp only [if_neg hL, one_mul, Nat.cast_add, Nat.cast_one] at h1T h1G h2T h2G hcost
      have e1 : ((heavy S T v c.Bg l : ℝ) + 1) * c.Ch = (heavy S T v c.Bg l : ℝ) * c.Ch + c.Ch := by ring
      rw [e1] at h1T h1G h2T h2G
      have hL1 := c.applyL_loc l hl' A₁ K hK hKF (by linarith)
      have hstep := c.hGA Θ d hd hΘ.1 hc ε hε (applyL S v l K) J₂ (c.hMono _ _ _ (by linarith) hL1)
        (c.hMono _ _ _ (by linarith) hJ) (fun x _ hx => hv1 _ hx) (c.hFF Θ hΘ.1 _ hF1).1 hF2
      rw [hstep]
      have h2 := c.hAdj Θ d A₂ J₂ hd hΘ.1 hc (le_trans hT (by linarith)) hJ hF2
      exact ih hl' A₁ (A₂ - c.Ch) K _ hK hKF hKv (c.hMono _ _ _ (by linarith) h2) hF2 (by linarith) (by linarith)
        (by linarith) (by linarith)

end Ctx

theorem cutCoef_of_glob {Θ : OpT S v} {d Bg : ℝ} (hΘ : GlobCoef Θ d) (hBg : 0 ≤ Bg) : CutCoef S T v Θ d Bg := by
  intro Tm hTm ε _ m
  obtain ⟨-, -, h⟩ := hΘ Tm hTm
  obtain ⟨Cb, hCb⟩ := h m
  refine ⟨max Cb 0, fun u w hu hw hl g hg _ => ?_⟩
  have hg1 : 1 ≤ B.gN g := Formalism.FourierDecayAlt.P.BetaSesquilinearity.gN_ge_one hg
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hpow : B.gN g ^ d ≤ B.gN g ^ (d + Bg * m) :=
    Real.rpow_le_rpow_of_exponent_le hg1 (by linarith [mul_nonneg hBg hm])
  have hp0 : 0 ≤ B.gN g ^ d := Real.rpow_nonneg (by linarith) _
  obtain ⟨h1, h2⟩ := hCb u w hu hw hl g hg
  constructor
  · calc _ ≤ Cb * B.gN g ^ d := h1
      _ ≤ max Cb 0 * B.gN g ^ d := mul_le_mul_of_nonneg_right (le_max_left _ _) hp0
      _ ≤ max Cb 0 * B.gN g ^ (d + Bg * m) := mul_le_mul_of_nonneg_left hpow (le_max_right _ _)
  · calc _ ≤ Cb * B.gN g ^ d := h2
      _ ≤ max Cb 0 * B.gN g ^ d := mul_le_mul_of_nonneg_right (le_max_left _ _) hp0
      _ ≤ max Cb 0 * B.gN g ^ (d + Bg * m) := mul_le_mul_of_nonneg_left hpow (le_max_right _ _)

theorem cutCoef_mono {Θ : OpT S v} {d Bg Bg' : ℝ} (hB : Bg ≤ Bg') (hΘ : CutCoef S T v Θ d Bg) :
    CutCoef S T v Θ d Bg' := by
  intro Tm hTm ε hε m
  obtain ⟨C, hC⟩ := hΘ Tm hTm ε hε m
  refine ⟨max C 0, fun u w hu hw hl g hg hGg => ?_⟩
  have hg1 : 1 ≤ B.gN g := Formalism.FourierDecayAlt.P.BetaSesquilinearity.gN_ge_one hg
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hpow : B.gN g ^ (d + Bg * m) ≤ B.gN g ^ (d + Bg' * m) :=
    Real.rpow_le_rpow_of_exponent_le hg1 (by linarith [mul_le_mul_of_nonneg_right hB hm])
  have hp0 : 0 ≤ B.gN g ^ (d + Bg * m) := Real.rpow_nonneg (by linarith) _
  obtain ⟨h1, h2⟩ := hC u w hu hw hl g hg hGg
  constructor
  · calc _ ≤ C * B.gN g ^ (d + Bg * m) := h1
      _ ≤ max C 0 * B.gN g ^ (d + Bg * m) := mul_le_mul_of_nonneg_right (le_max_left _ _) hp0
      _ ≤ max C 0 * B.gN g ^ (d + Bg' * m) := mul_le_mul_of_nonneg_left hpow (le_max_right _ _)
  · calc _ ≤ C * B.gN g ^ (d + Bg * m) := h2
      _ ≤ max C 0 * B.gN g ^ (d + Bg * m) := mul_le_mul_of_nonneg_right (le_max_left _ _) hp0
      _ ≤ max C 0 * B.gN g ^ (d + Bg' * m) := mul_le_mul_of_nonneg_left hpow (le_max_right _ _)

end place

theorem mulφ_sum {P : M.Par} {ι : Type} (p : MA.SmQ P.r P.TT) (l : List ι) (c : ι → ℂ)
    (U : ι → M.Ty P → MA.SmQ P.r P.TT) :
    (fun π => p * ((l.map fun i => c i • U i).sum) π) = (l.map fun i => c i • fun π => p * U i π).sum := by
  induction l with
  | nil => funext π; simp
  | cons i l ih =>
    simp only [List.map_cons, List.sum_cons]
    rw [← ih]
    funext π
    simp only [Pi.add_apply, Pi.smul_apply, mul_add, mul_smul_comm]

theorem builtOW_mono {E : Type} [Field E] [NumberField E] [IsCMField E] {Wp Wq : InfinitePlace E → Type}
    [∀ x, NormedAddCommGroup (Wp x)] [∀ x, InnerProductSpace ℂ (Wp x)]
    [∀ x, NormedAddCommGroup (Wq x)] [∀ x, InnerProductSpace ℂ (Wq x)] [∀ x, FiniteDimensional ℂ (Wq x)]
    {C₁ C₂ : ℝ} (h : C₁ ≤ C₂) {S : C.HidaSetting E Wp Wq}
    {T : ∀ v : Fin S.f, D.LevTower S.G.k S.G.r (Wp (S.pl v)) (Wq (S.pl v))}
    {f : ∀ v : Fin S.f, B.Mat S.G.k S.G.r → (Wq (S.pl v) →L[ℂ] Wp (S.pl v))} {χ : ℝ → ℝ}
    {ν' : Fin S.f → Fin (2 * S.G.r + S.G.k + 1) → ℂ} {m₀ : Fin S.f → B.Mat S.G.k S.G.r}
    {top : ∀ v : Fin S.f, (B.Mat S.G.k S.G.r → (Wq (S.pl v) →L[ℂ] Wp (S.pl v))) → List C.Letter → C.LPt → C.LPt → ℂ}
    {A₀ : ℝ} (hB : BuiltOW C₂ S T f χ ν' m₀ top A₀) : BuiltOW C₁ S T f χ ν' m₀ top A₀ :=
  ⟨_root_.Formalism.FourierDecayAlt.P.CutMP.isBuiltPlace_mono3 h hB.1, hB.2⟩

theorem weight_budget_linear_inequality (A K x a b : ℝ) (hx : 0 ≤ x) (hab : a + b ≤ K) : A - K * x ≤ A - a * x - b * x := by linarith [mul_le_mul_of_nonneg_right hab hx]

theorem quadratic_assembly_holds : JAAssembleQQ := by
  intro hHat _ _ _ _ _ hBdd _ _ hPhi hStar hGrp hLoc hFFs
  obtain ⟨Cj, hCj, hHat⟩ := hHat
  obtain ⟨Cb1, Cb, hCb, hBdd⟩ := hBdd
  obtain ⟨Cp, hPhi⟩ := hPhi
  obtain ⟨Cs, hStar⟩ := hStar
  obtain ⟨Cgr, Cg1, hCg1, hGrp⟩ := hGrp
  obtain ⟨Cl, Cg2, hCg2, hLoc⟩ := hLoc
  obtain ⟨Cf, hFFs⟩ := hFFs
  set Sg : ℝ := Cg1 + Cg2 + Cb with hSg
  set Kb : ℝ := 200 * (1 + |Cl| + |Cgr|) * (1 + Cj) * (1 + Sg) with hKb
  set Cbig : ℝ := max (max (max Cj Cb1) (max Cp Cs)) (max (max Cgr Cl) (max Cf Kb)) with hCbig
  refine ⟨Cbig, ?_⟩
  intro E _ _ _ Wp Wq _ _ _ _ _ _ S T f χ ν' m₀ top A₀ hB v e L hFr hGa hQQ hL hJf
  have hSg0 : 0 ≤ Sg := by positivity
  have hR0 : (0 : ℝ) ≤ S.G.r := Nat.cast_nonneg _
  have hR1 : (0 : ℝ) ≤ (S.G.r : ℝ) + 1 := by linarith

  have hHatP := hHat E Wp Wq S T f χ ν' m₀ top A₀ (builtOW_mono (by simp [hCbig]) hB) v e L hFr hGa hQQ hL
  have hBddP := hBdd E Wp Wq S T f χ ν' m₀ top A₀ (builtOW_mono (by simp [hCbig]) hB) v e L hFr hGa hQQ hL
  have hPhiP := hPhi E Wp Wq S T f χ ν' m₀ top A₀ (builtOW_mono (by simp [hCbig]) hB) v e hFr
  have hStarP := hStar E Wp Wq S T f χ ν' m₀ top A₀ (builtOW_mono (by simp [hCbig]) hB) v e L hFr hGa hL
  have hGrpP := hGrp E Wp Wq S T f χ ν' m₀ top A₀ (builtOW_mono (by simp [hCbig]) hB) v e hFr
  obtain ⟨hLbase, hLop, hLadj, hLphi, -, -, hLmono, hLL2⟩ :=
    hLoc E Wp Wq S T f χ ν' m₀ top A₀ (builtOW_mono (by simp [hCbig]) hB) v
  have hFFP := hFFs E Wp Wq S T f χ ν' m₀ top A₀ (builtOW_mono (by simp [hCbig]) hB) v

  have hPl : Q.IsPlace (D.parOf S v) (T v).base.z (T v).base.z' (T v).base.π (T v).base.π' :=
    (hB.1.2.2.2.1.2 v).2.2.2.1
  have hTT : (D.parOf S v).TT = Tz S.G.k S.G.r (T v).base.z * Tz S.G.k S.G.r (T v).base.z' := by
    rw [hPl.2.2.2.1, hPl.2.2.2.2.1]; rfl
  have hInCC : ∀ m : ℕ, B.InCC A₀ m (f v) := (hB.1.2.2.2.1.2 v).2.2.2.2.1
  have hCk : B.CkOn ⊤ (B.GV S.G.k S.G.r) (f v) := hB.1.2.2.2.2.2.2.2.2.2.1 v
  have hBud := hB.1.2.2.2.2.2.2.2.2.2.2.2.1

  set R : ℝ := (S.G.r : ℝ) with hR
  set n : ℝ := nDim S.G.k S.G.r with hn
  set N : ℝ := (S.Ntop : ℝ) with hN
  have hn1 : 1 ≤ n := by rw [hn]; unfold nDim; push_cast; linarith [(Nat.cast_nonneg S.G.k : (0:ℝ) ≤ S.G.k)]
  have hN0 : 0 ≤ N := Nat.cast_nonneg _
  set Bg : ℝ := Sg * (R + 1) with hBg
  have hBg0 : 0 ≤ Bg := by positivity
  have hCg1B : Cg1 * (R + 1) ≤ Bg := mul_le_mul_of_nonneg_right (by linarith) hR1
  have hCg2B : Cg2 * (R + 1) ≤ Bg := mul_le_mul_of_nonneg_right (by linarith) hR1
  have hCbB : Cb * (R + 1) ≤ Bg := mul_le_mul_of_nonneg_right (by linarith) hR1
  obtain ⟨c, hcB, hcD, hcO, hcL, hcG⟩ : ∃ c : Ctx S T v e, c.Bg = Bg ∧ c.Dh = Cj * (R + 1) * n ∧ c.Oh = Cj * n ∧
      c.Cl = Cl ∧ c.Cgr = Cgr := ⟨
    { Bg := Bg, Dh := Cj * (R + 1) * n, Oh := Cj * n, Cl := Cl, Cgr := Cgr
      hBg := hBg0
      hDh := by positivity
      hOh := by positivity
      hFF := hFFP
      hOp := fun Θ d A J hd hΘ hc hT hJ hF => hLop Θ d Bg A J hd hCg2B hΘ hc hT hJ hF
      hAdj := fun Θ d A J hd hΘ hc hT hJ hF => hLadj Θ d Bg A J hd hCg2B hΘ hc hT hJ hF
      hMono := fun A A' J h hJ => hLmono Bg A A' J h hJ
      hGA := fun Θ d hd hΘ hc ε hε J₁ J₂ h1 h2 hv hF1 hF2 => hGrpP Θ d Bg hd hCg1B hΘ hc ε hε J₁ J₂ h1 h2 hv hF1 hF2 },
    rfl, rfl, rfl, rfl, rfl⟩

  have hBddR : ∀ b ∈ MA.bddSet (D.parOf S v) L, ∃ Θ : OpT S v, Good S T v c.Bg c.Dh c.Oh Θ ∧ Lt S T v c.Bg Θ ∧
      ∀ J ∈ smoothFormsPositiveCone S T v, MA.actA (D.parOf S v) b (trJ S T v e J) = trJ S T v e (B.opApply Θ J) := by
    intro b hb
    obtain ⟨Θ, h0, hA, hc, hJ⟩ := hBddP b hb
    have hc' : CutCoef S T v Θ 0 c.Bg := by rw [hcB]; exact cutCoef_mono hCbB hc
    exact ⟨Θ, ⟨hA, Or.inl ⟨h0, hc'⟩⟩, ⟨h0, hc'⟩, fun J hJF => (hJ J hJF).2.2⟩
  have hHatR : ∀ X ∈ MA.hatSet (D.parOf S v) L, ∃ ts : List (MA.A (D.parOf S v) (MA.DQ (D.parOf S v)) × OpT S v),
      (∀ t ∈ ts, t.1 ∈ Submonoid.closure (MA.bddSet (D.parOf S v) L) ∧ Good S T v c.Bg c.Dh c.Oh t.2) ∧
      ∀ J ∈ smoothFormsPositiveCone S T v, MA.actA (D.parOf S v) X (trJ S T v e J) =
        (ts.map fun t => MA.actA (D.parOf S v) t.1 (trJ S T v e (B.opApply t.2 J))).sum := by
    intro X hX
    obtain ⟨ts, h1, h2⟩ := hHatP X hX
    refine ⟨ts, fun t ht => ?_, h2⟩
    obtain ⟨hb, hs, hcm, hg, ho⟩ := h1 t ht
    refine ⟨hb, ⟨hs, hcm⟩, Or.inr ⟨?_, ?_⟩⟩
    · rw [hcD, hcB]; exact cutCoef_of_glob hg hBg0
    · rw [hcO]; exact ho
  have hHat1 := Rz_hat c.hFF hBddR hHatR

  intro φ ε hε hφ h0 hld b hb X hX vw w hlen ha
  have hJfF : B.JF (T v).base (f v) ∈ smoothFormsPositiveCone S T v := hJf
  obtain ⟨tsU, hU1, hU2⟩ := Rz_mul c.hFF (Rz_closure c.hFF hBddR b hb)
    (Rz_word c.hFF hHat1 vw (fun a h => ha a (List.mem_append_left _ h)))
  obtain ⟨tsW, hW1, hW2⟩ := Rz_word c.hFF hHat1 w (fun a h => ha a (List.mem_append_right _ h))
  obtain ⟨tsX, hX1, hX2⟩ := hHat1 X hX

  have hAB : B.AB S.G.k S.G.r ≤ 2 * n * (R + 1) + 1 := by
    unfold B.AB
    rw [hn, hR]; unfold nDim; push_cast
    have hk : (0 : ℝ) ≤ S.G.k := Nat.cast_nonneg _
    linarith [sq_nonneg (S.G.r : ℝ), mul_nonneg hR0 hk]
  have hKbA : Kb * ((R + 1) ^ 4 * (N * n ^ 2 + n ^ 3)) ≤ A₀ := by
    have hW0 : 0 ≤ (R + 1) ^ 4 * (N * n ^ 2 + n ^ 3) := by positivity
    have hle : Kb ≤ Cbig := by simp [hCbig]
    calc Kb * ((R + 1) ^ 4 * (N * n ^ 2 + n ^ 3)) ≤ Cbig * ((R + 1) ^ 4 * (N * n ^ 2 + n ^ 3)) :=
          mul_le_mul_of_nonneg_right hle hW0
      _ ≤ A₀ := by
        have e : Cbig * ((R + 1) ^ 4 * (N * n ^ 2 + n ^ 3)) = Cbig * ((S.G.r : ℝ) + 1) ^ 4 *
            ((S.Ntop : ℝ) * (2 * (S.G.r : ℝ) + S.G.k + 1) ^ 2 + (2 * (S.G.r : ℝ) + S.G.k + 1) ^ 3) := by
          rw [hn, hR, hN]; unfold nDim; push_cast; ring
        rw [e]; exact hBud
  obtain ⟨hTop, hTga, hL2⟩ := ja_arith Cj Cl Cgr Sg R n N A₀ (B.AB S.G.k S.G.r) hCj hSg0 hR0 hn1 hN0 hAB hKbA
  have hCh := c.Ch_nonneg
  have hChE : c.Ch = Cj * (R + 1) * n + 2 * (Sg * (R + 1)) * (Cj * n) := by unfold Ctx.Ch; rw [hcD, hcB, hcO]
  have hTop' : c.Top ≤ A₀ - (2 * N + 2) * c.Ch := by unfold Ctx.Top; rw [hChE, hcL, hcO, hcD, hcB]; exact hTop
  have hTga' : c.Tga ≤ A₀ - (2 * N + 2) * c.Ch := by unfold Ctx.Tga; rw [hChE, hcG, hcO, hcD, hcB]; exact hTga
  have hL2' : Cl * ((S.G.r : ℝ) + 1) ^ 2 * nDim S.G.k S.G.r + 5 * c.Bg ≤ A₀ - (2 * N + 2) * c.Ch := by
    rw [hChE, hcB]; exact hL2
  have hlenR : (vw.length : ℝ) + w.length + 1 ≤ 2 * N + 2 := by
    have := hlen; rw [hN]; exact_mod_cast this
  have hbud : ∀ a b' : ℕ, (a : ℝ) + b' ≤ 2 * N + 2 → A₀ - (2 * N + 2) * c.Ch ≤ A₀ - a * c.Ch - b' * c.Ch :=
    fun a b' hab => weight_budget_linear_inequality A₀ (2 * N + 2) c.Ch a b' hCh hab

  have hJfL : LocCC S T v A₀ c.Bg (B.JF (T v).base (f v)) := by rw [hcB]; exact hLbase (f v) A₀ Bg hCk hInCC hJfF hBg0
  have hLt : ∀ t ∈ tsU, LocCC S T v (A₀ - heavy S T v c.Bg t.2 * c.Ch) c.Bg (applyL S v t.2 (B.JF (T v).base (f v))) ∧
      applyL S v t.2 (B.JF (T v).base (f v)) ∈ smoothFormsPositiveCone S T v := by
    intro t ht
    have hh : (heavy S T v c.Bg t.2 : ℝ) ≤ vw.length := by exact_mod_cast (by simpa using (hU1 t ht).2)
    refine ⟨c.applyL_loc t.2 (hU1 t ht).1 A₀ _ hJfL hJfF ?_, apply_list_preserves_smooth_forms c.hFF _ (fun Θ h => ((hU1 t ht).1 Θ h).1) hJfF⟩
    have := hbud (heavy S T v c.Bg t.2) 0 (by push_cast; linarith)
    push_cast at this; linarith

  have hWs : ∀ s ∈ tsW, LocCC S T v (A₀ - heavy S T v c.Bg s.2 * c.Ch) c.Bg (applyL S v s.2 (B.JF (T v).base (f v))) ∧
      applyL S v s.2 (B.JF (T v).base (f v)) ∈ smoothFormsPositiveCone S T v := by
    intro s hs
    have hh : (heavy S T v c.Bg s.2 : ℝ) ≤ w.length := by exact_mod_cast (hW1 s hs).2
    refine ⟨c.applyL_loc s.2 (hW1 s hs).1 A₀ _ hJfL hJfF ?_, apply_list_preserves_smooth_forms c.hFF _ (fun Θ h => ((hW1 s hs).1 Θ h).1) hJfF⟩
    have := hbud (heavy S T v c.Bg s.2) 0 (by push_cast; linarith)
    push_cast at this; linarith
  have hKt : ∀ t ∈ tsU, LocCC S T v (A₀ - heavy S T v c.Bg t.2 * c.Ch) c.Bg
        (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))) ∧
      mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v))) ∈ smoothFormsPositiveCone S T v ∧
      Van S T v ε (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))) := by
    intro t ht
    obtain ⟨h1, h2⟩ := hLt t ht
    have hF := (hPhiP φ hφ _ h2).1
    refine ⟨?_, hF, van_mulG h0 _⟩
    rw [hcB] at h1 ⊢
    exact hLphi φ Bg _ _ hφ hld hCg2B h1 hF
  have hL2c : ∀ (A : ℝ) (J : GFn S v), A₀ - (2 * N + 2) * c.Ch ≤ A → LocCC S T v A c.Bg J →
      ∀ π, IntegrableOn (fun q => ‖MA.evQ (D.parOf S v) (trJ S T v e J π) q‖ ^ 2)
        {q | ε ≤ MA.Gq (D.parOf S v) q} (MA.mu0 (D.parOf S v).r (D.parOf S v).TT) := by
    intro A J hA hJ
    rw [hcB] at hJ hL2'
    exact hLL2 Bg A ε J e hFr hBg0 hε (by linarith) hJ
  have key : ∀ t ∈ tsU, ∀ x ∈ tsX, ∀ s ∈ tsW,
      MA.ipA (D.parOf S v) (trJ S T v e (applyL S v x.2 (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v))))))
          (trJ S T v e (applyL S v s.2 (B.JF (T v).base (f v)))) =
        MA.ipA (D.parOf S v) (trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))
          (trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v))))) ∧
      PI (D.parOf S v) (trJ S T v e (applyL S v x.2 (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v))))))
          (trJ S T v e (applyL S v s.2 (B.JF (T v).base (f v)))) ∧
      PI (D.parOf S v) (trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))
          (trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v))))) := by
    intro t ht x hx s hs
    obtain ⟨hKL, hKF, hKv⟩ := hKt t ht
    obtain ⟨hHL, hHF⟩ := hWs s hs
    have ht' : (heavy S T v c.Bg t.2 : ℝ) ≤ vw.length := by exact_mod_cast (by simpa using (hU1 t ht).2)
    have hx' : (heavy S T v c.Bg x.2 : ℝ) ≤ 1 := by exact_mod_cast (hX1 x hx).2
    have hs' : (heavy S T v c.Bg s.2 : ℝ) ≤ w.length := by exact_mod_cast (hW1 s hs).2
    have b1 := hbud (heavy S T v c.Bg t.2) (heavy S T v c.Bg x.2) (by linarith)
    have b2 := hbud (heavy S T v c.Bg s.2) (heavy S T v c.Bg x.2) (by linarith)
    have b3 : A₀ - (2 * N + 2) * c.Ch ≤ A₀ - heavy S T v c.Bg s.2 * c.Ch := by
      have := hbud (heavy S T v c.Bg s.2) 0 (by push_cast; linarith)
      simpa using this
    have b4 : A₀ - (2 * N + 2) * c.Ch ≤ A₀ - heavy S T v c.Bg t.2 * c.Ch := by
      have := hbud (heavy S T v c.Bg t.2) 0 (by push_cast; linarith)
      simpa using this
    have hA1 := c.applyL_loc x.2 (hX1 x hx).1 _ _ hKL hKF (le_trans hTop' b1)
    have hA2 := c.adjL_loc x.2 (hX1 x hx).1 _ _ hHL hHF (le_trans hTop' b2)
    refine ⟨c.chain hε x.2 (hX1 x hx).1 _ _ _ _ hKL hKF hKv hHL hHF (le_trans hTop' b1) (le_trans hTga' b1)
      (le_trans hTop' b2) (le_trans hTga' b2), ?_, ?_⟩
    · exact pairing_integrable_of_square_integrable (trJ_van e hTT (van_applyL x.2 hKv)) (hL2c _ _ b1 hA1) (hL2c _ _ b3 hHL)
    · exact pairing_integrable_of_square_integrable (trJ_van e hTT hKv) (hL2c _ _ b4 hKL) (hL2c _ _ b2 hA2)

  have hStarX : ∀ J ∈ smoothFormsPositiveCone S T v, MA.actA (D.parOf S v) (star X) (trJ S T v e J) =
      (tsX.map fun x => (starRingEnd ℂ x.1) • trJ S T v e (adjL S v x.2 J)).sum :=
    hStarP X (Submonoid.subset_closure (Set.mem_union_left _ hX)) tsX (fun x hx Θ hΘ => ((hX1 x hx).1 Θ hΘ).1)
      (fun J hJ => ⟨fun x hx => ⟨apply_list_preserves_smooth_forms c.hFF _ (fun Θ h => ((hX1 x hx).1 Θ h).1) hJ,
        adjoint_list_preserves_smooth_forms c.hFF _ (fun Θ h => ((hX1 x hx).1 Θ h).1) hJ⟩, hX2 J hJ⟩)
  have hu : (fun π => MA.toSm (D.parOf S v) (fun q => (φ (MA.Gq (D.parOf S v) q) : ℂ)) *
        MA.actA (D.parOf S v) (b * vw.prod) (trJ S T v e (B.JF (T v).base (f v))) π) =
      (tsU.map fun t => t.1 • trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v))))).sum := by
    rw [hU2 _ hJfF, mulφ_sum]
    congr 1
    refine List.map_congr_left fun t ht => ?_
    congr 1
    exact ((hPhiP φ hφ _ (hLt t ht).2).2).symm
  have hwj := hW2 _ hJfF
  rw [hu, actA_mul, hwj, jd_actA_listsum (D.parOf S v) X, jd_actA_listsum (D.parOf S v) (star X)]
  have e1 : (tsU.map fun t => MA.actA (D.parOf S v) X
        (t.1 • trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))) =
      tsU.map fun t => t.1 • (tsX.map fun x =>
        x.1 • trJ S T v e (applyL S v x.2 (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))).sum :=
    List.map_congr_left fun t ht => by rw [jd_actA_smulR, hX2 _ (hKt t ht).2.1]
  have e2 : (tsW.map fun s => MA.actA (D.parOf S v) (star X) (s.1 • trJ S T v e (applyL S v s.2 (B.JF (T v).base (f v))))) =
      tsW.map fun s => s.1 • (tsX.map fun x =>
        (starRingEnd ℂ x.1) • trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v))))).sum :=
    List.map_congr_left fun s hs => by rw [jd_actA_smulR, hStarX _ (hWs s hs).2]
  rw [e1, e2]

  have hPIA : ∀ t ∈ tsU, ∀ x ∈ tsX, PI (D.parOf S v)
      (trJ S T v e (applyL S v x.2 (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v))))))
      ((tsW.map fun s => s.1 • trJ S T v e (applyL S v s.2 (B.JF (T v).base (f v)))).sum) :=
    fun t ht x hx => (ipA_sum_right _ tsW (fun s => s.1) _ (fun s hs => (key t ht x hx s hs).2.1)).2
  have hPIU : ∀ t ∈ tsU, PI (D.parOf S v)
      ((tsX.map fun x => x.1 • trJ S T v e (applyL S v x.2 (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))).sum)
      ((tsW.map fun s => s.1 • trJ S T v e (applyL S v s.2 (B.JF (T v).base (f v)))).sum) :=
    fun t ht => (ipA_sum_left tsX (fun x => x.1) _ _ (hPIA t ht)).2
  have hPIB : ∀ t ∈ tsU, ∀ s ∈ tsW, PI (D.parOf S v)
      (trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))
      ((tsX.map fun x => (starRingEnd ℂ x.1) • trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v))))).sum) :=
    fun t ht s hs => (ipA_sum_right _ tsX (fun x => starRingEnd ℂ x.1) _ (fun x hx => (key t ht x hx s hs).2.2)).2
  have hPIR : ∀ t ∈ tsU, PI (D.parOf S v)
      (trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))
      ((tsW.map fun s => s.1 • (tsX.map fun x =>
        (starRingEnd ℂ x.1) • trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v))))).sum).sum) :=
    fun t ht => (ipA_sum_right _ tsW (fun s => s.1) _ (hPIB t ht)).2
  refine ((ipA_sum_left tsU (fun t => t.1) _ _ hPIU).1).trans (Eq.trans ?_ ((ipA_sum_left tsU (fun t => t.1) _ _ hPIR).1).symm)
  refine congrArg List.sum (List.map_congr_left fun t ht => ?_)
  refine congrArg (fun z => t.1 * z) ?_
  refine ((ipA_sum_left tsX (fun x => x.1) _ _ (hPIA t ht)).1).trans
    (Eq.trans ?_ ((ipA_sum_right _ tsW (fun s => s.1) _ (hPIB t ht)).1).symm)
  have hin : ∀ x ∈ tsX, MA.ipA (D.parOf S v)
      (trJ S T v e (applyL S v x.2 (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v))))))
      ((tsW.map fun s => s.1 • trJ S T v e (applyL S v s.2 (B.JF (T v).base (f v)))).sum) =
      (tsW.map fun s => starRingEnd ℂ s.1 * MA.ipA (D.parOf S v)
        (trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))
        (trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v)))))).sum := by
    intro x hx
    refine ((ipA_sum_right _ tsW (fun s => s.1) _ (fun s hs => (key t ht x hx s hs).2.1)).1).trans ?_
    exact congrArg List.sum (List.map_congr_left fun s hs =>
      congrArg (fun z => starRingEnd ℂ s.1 * z) (key t ht x hx s hs).1)
  have hin2 : ∀ s ∈ tsW, MA.ipA (D.parOf S v)
      (trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))
      ((tsX.map fun x => (starRingEnd ℂ x.1) • trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v))))).sum) =
      (tsX.map fun x => x.1 * MA.ipA (D.parOf S v)
        (trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))
        (trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v)))))).sum := by
    intro s hs
    refine ((ipA_sum_right _ tsX (fun x => starRingEnd ℂ x.1) _ (fun x hx => (key t ht x hx s hs).2.2)).1).trans ?_
    exact congrArg List.sum (List.map_congr_left fun x _ =>
      congrArg (fun z => z * _) (Complex.conj_conj x.1))
  have hL1 : (tsX.map fun x => x.1 * MA.ipA (D.parOf S v)
        (trJ S T v e (applyL S v x.2 (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v))))))
        ((tsW.map fun s => s.1 • trJ S T v e (applyL S v s.2 (B.JF (T v).base (f v)))).sum)) =
      tsX.map fun x => x.1 * (tsW.map fun s => starRingEnd ℂ s.1 * MA.ipA (D.parOf S v)
        (trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))
        (trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v)))))).sum :=
    List.map_congr_left fun x hx => congrArg (fun z => x.1 * z) (hin x hx)
  have hR1 : (tsW.map fun s => starRingEnd ℂ s.1 * MA.ipA (D.parOf S v)
        (trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))
        ((tsX.map fun x => (starRingEnd ℂ x.1) • trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v))))).sum)) =
      tsW.map fun s => starRingEnd ℂ s.1 * (tsX.map fun x => x.1 * MA.ipA (D.parOf S v)
        (trJ S T v e (mulG S T v φ (applyL S v t.2 (B.JF (T v).base (f v)))))
        (trJ S T v e (adjL S v x.2 (applyL S v s.2 (B.JF (T v).base (f v)))))).sum :=
    List.map_congr_left fun s hs => congrArg (fun z => starRingEnd ℂ s.1 * z) (hin2 s hs)
  refine (congrArg List.sum hL1).trans (Eq.trans ?_ (congrArg List.sum hR1).symm)
  simp only [list_mul_sum]
  rw [list_sum_comm]
  refine congrArg List.sum (List.map_congr_left fun s _ => congrArg List.sum (List.map_congr_left fun x _ => ?_))
  ring

end

end Formalism.FourierDecayAlt.P.CutMP.JA
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAAsm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAQQOpen =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAQQOpen", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJABddOp\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDGaugeQQAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDQQ\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAFFStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.JA

open Formalism.FourierDecayAlt.P.CutMP

theorem jAdjTrQQ_of_open (h1 : JDHatOpQQ) (h7 : JABddOpQQ) (h11 : JAStarOp) (h12 : JAGroupAdj) (h13 : JALocCC) :
    JAdjTrQQ :=
  jAdjTrQQ_of_leaves quadratic_assembly_holds h1 h7 h11 h12 h13 smooth_forms_stability_holds

end Formalism.FourierDecayAlt.P.CutMP.JA
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAQQOpen =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.JAdjTrQQOfThree =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.JAdjTrQQOfThree", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJABddOp\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDGaugeQQAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDQQ\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAAdjDone\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAQQOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.JA

theorem jAdjTrQQ_of_three (h1 : JDHatOpQQ) (h7 : JABddOpQQ) (h11 : JAStarOp) : JAdjTrQQ :=
  jAdjTrQQ_of_open h1 h7 h11 group_adjoint_transfer_holds local_class_transfer_holds

end Formalism.FourierDecayAlt.P.CutMP.JA
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.JAdjTrQQOfThree =====
