module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.LoopTieOf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.GammaFixedOfHypotheses
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopsEv
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopsFinal
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FibreCountHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.WittExistsHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.PairValPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AmpFibreConstHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FinXClosed
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LeadingMinors
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.MemPerpMapFlag
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstWd
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.WRowPinHolds
public import Formalism.SharpRestriction.ParConsts
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.ThmSOwn
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.MassLandSt
public import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.SiegelMassRatioOfLI
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormChainLemmas
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TermTieOf
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.NormalizingConstantEq
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.WittFlags
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AutLzFinite
import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SplittingAdmissibleOfTermData
import Formalism.HermitianCurvature.HermitianCurvatureProofs.GrowthOfBasic
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopEvaluationThresholdZero, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopsFinalS, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FamRaise, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopRowSOf

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopEvaluationThresholdZero =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopEvaluationThresholdZero", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.LoopTieOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.GammaFixedOfHypotheses\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopsEv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopsFinal\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.TermTieOf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt Formalism.L2.SG.HidaSetting Formalism.L2.SG.Full
  Formalism.L2.SG.RowsConc Formalism.L2.SG.PackageTie2 Formalism.L2.SG.TermTieOf Formalism.L2.SG.LoopTieOf Formalism.L2.SG.LoopsCut
  Formalism.L2.SG.LoopsFinal Formalism.L2.SG.LoopsEv Formalism.FourierDecayAlt

namespace Formalism.L2.SG.LoopsTies

attribute [local instance] Formalism.BasicNotions.Host.cmStar

structure ConcAt0 (D : D7) (T : TermTie D) where
  X : HidaSetting D
  Y : Full X
  hF : FinX Y
  hI : SIso D.s (sOf hF)
  jt : JtPin hF hI T
  wr : WRowPin hF hI T
  fc : FibreCount Y

section TransportedAlt

theorem loop_evaluation_threshold_zero (hLC : PN.LoopCores) (hSub : PB.SubFamily) (hS : Formalism.HermitianLatticesTheory.SiegelMassRatio)
    (Cg cb Cw cT CT C0 A C₀ : ℝ) :
    ∃ C'₀ Cl₀ : ℝ, ∀ {eps : ℝ} (Fm : FamP eps) (C1 : ℝ) (At : ∀ x, Fm.x1 < x → ∀ i : Fm.Ix x, TermTie (Fm.D x i))
      (Yt : ∀ x (hx : Fm.x1 < x) (i : Fm.Ix x) (u u' : (Fm.D x i).what₂.Word),
        LoopTie (Fm.D x i) (Fm.L x i) (At x hx i) u u' C1)
      (Cc : ∀ x (hx : Fm.x1 < x) (i : Fm.Ix x), ConcAt0 (Fm.D x i) (At x hx i)),
      (∀ C : ℝ, C₀ ≤ C → OwnEv Fm fun C' Cl x i => ∀ (hx : Fm.x1 < x) (u u' : (Fm.D x i).what₂.Word),
        Cnt.Hyp (Fm.D x i) (Fm.L x i) u u' C' Cl Cg cb Cw cT CT C0 A →
          Formalism.MainNotions.BridgeLemma.RowsND (At x hx i) (Yt x hx i u u') C ∧ Formalism.MainNotions.BridgeLemma.RowsDeg (At x hx i) (Yt x hx i u u') C ∧
            Formalism.MainNotions.BridgeLemma.RowsOne (At x hx i) (Yt x hx i u u') C) →
      (OwnEv Fm fun C' Cl x i =>
        Hyp0 (Fm.D x i) (Fm.L x i) C' Cl Cg cb Cw cT CT C0 → ∀ u, UnitaryVolumeMass.FormAt (Fm.D x i) u) →
      OwnEv Fm fun C' Cl x i => C'₀ ≤ C' → Cl₀ ≤ Cl →
        ∀ (hx : Fm.x1 < x) (u u' : (Fm.D x i).what₂.Word),
          Cnt.Hyp (Fm.D x i) (Fm.L x i) u u' C' Cl Cg cb Cw cT CT C0 A → ConcTie (Cc x hx i).X (Cc x hx i).Y →
          ((Cc x hx i).Y.tO u u').AbsConv →
          ((Cc x hx i).Y.tO u u').RowBig (epsL (Fm.D x i)) (ddC (Cc x hx i).X (Cc x hx i).Y u u') ∧
          ((Cc x hx i).Y.tO u u').RowNotScalar (epsL (Fm.D x i)) (ddC (Cc x hx i).X (Cc x hx i).Y u u') := by
  obtain ⟨C₃, _, HX⟩ := xiSizesC_of hS Cg cb Cw cT CT C0 A
  obtain ⟨C, hCdef⟩ : ∃ C : ℝ, C = max (max C₀ C₃) (max CT 1) := ⟨_, rfl⟩
  have hCC₀ : C₀ ≤ C := by rw [hCdef]; exact le_max_of_le_left (le_max_left _ _)
  have hCC₃ : C₃ ≤ C := by rw [hCdef]; exact le_max_of_le_left (le_max_right _ _)
  have hCT : CT ≤ C := by rw [hCdef]; exact le_max_of_le_right (le_max_left _ _)
  have hC : 1 ≤ C := by rw [hCdef]; exact le_max_of_le_right (le_max_right _ _)
  obtain ⟨K₀, hJ⟩ := Formalism.L2.SG.RowsOther.rowLoops_of_input hLC hSub C hC
  obtain ⟨a3, b3, HX'⟩ := HX C hCC₃
  obtain ⟨A₀, hA₀⟩ : ∃ A₀ : ℝ, A₀ = max 1 C0 := ⟨_, rfl⟩
  have hA₀1 : 1 ≤ A₀ := by rw [hA₀]; exact le_max_left _ _
  refine ⟨max a3 K₀, max b3 (max 4 (3 + 6 * Real.log (3 * A₀))), ?_⟩
  intro eps Fm C1 At Yt Cc HR hFo
  refine (OwnEv.and (HR C hCC₀) hFo).mono ?_
  rintro C' Cl x i ⟨H1, H2⟩ hC' hCl hx u u' hH hT hA
  have ha3 : a3 ≤ C' := le_trans (le_max_left _ _) hC'
  have hK₀ : K₀ ≤ C' := le_trans (le_max_right _ _) hC'
  have hb3 : b3 ≤ Cl := le_trans (le_max_left _ _) hCl
  have hCl4 : 4 ≤ Cl := le_trans (le_max_of_le_right (le_max_left _ _)) hCl
  have hClA : 3 + 6 * Real.log (3 * A₀) ≤ Cl := le_trans (le_max_of_le_right (le_max_right _ _)) hCl
  obtain ⟨hn, hd, h1⟩ := H1 hx u u' hH
  have hFo' := H2 hH.1 u
  have hGP : GamPin (Cc x hx i).Y := gammaFixed_of_hypotheses (Cc x hx i).Y hH.1
  have hXiH := HX' C' Cl ha3 hb3 (Fm.D x i) (Fm.L x i) u u' hH
  have hP := params_at hH.1 (Cc x hx i).X u hCl4 hCT hC hK₀
  have hb := Formalism.MainNotions.BridgeLemma.d_two_le_b (Fm.D x i) (Fm.L x i)
  have hb0 : (0 : ℝ) < (Fm.L x i).sc.b := by linarith
  have hk0 : (0 : ℝ) < (Fm.D x i).R.k := by
    have := (Fm.D x i).R.m_add_three_le_k
    exact_mod_cast (by omega : 0 < (Fm.D x i).R.k)
  have hg : 0 < ((Cc x hx i).X.B.g : ℝ) := by
    have h5 : (((Fm.D x i).R.k : ℝ) * (Fm.L x i).sc.b) ^ 8 ≤ ((Cc x hx i).X.B.g : ℝ) := hP.2.2.2.2.1
    have h8 : 0 < (((Fm.D x i).R.k : ℝ) * (Fm.L x i).sc.b) ^ 8 := by positivity
    linarith
  have hv : 0 ≤ (Fm.D x i).host.v := by linarith [hP.2.2.2.2.2.2.1]
  have hC0' : (0 : ℝ) ≤ C := by linarith
  have hGam : 0 ≤ GamS (Fm.D x i) (Fm.L x i) := by unfold GamS; exact (Real.exp_pos _).le
  have HS : ∀ s, 2 ≤ s → s ≤ (Fm.D x i).R.k →
      ClassLe ((Cc x hx i).Y.tO u u') (bigS ((Cc x hx i).Y.tO u u') s)
        (A₀ * rowS C (Fm.D x i).R.k (Fm.D x i).R.rS (Fm.D x i).R.f s (Fm.L x i).sc.b ((Cc x hx i).X.B.g : ℝ)
          (Fm.D x i).host.v (GamS (Fm.D x i) (Fm.L x i)) (Formalism.MainNotions.BridgeLemma.XiB (Fm.D x i) (Fm.L x i) u C) *
          ddC (Cc x hx i).X (Cc x hx i).Y u u') := by
    intro s h2 hk
    have hX0 := xi_nonneg hXiH s h2 hk
    rw [hA₀]
    exact rowsSC_at (At x hx i) (Cc x hx i).jt (Cc x hx i).wr (Cc x hx i).fc hGP (Yt x hx i u u') hFo' hT
      hH C hn hd s h2 hk (ndRow_nonneg hC0' hb0 hg hv hGam hX0) (degRow_nonneg hC0' hb0 hg hv hGam hX0)
  have H1' : ClassLe ((Cc x hx i).Y.tO u u') (((Cc x hx i).Y.tO u u').nsc ((Cc x hx i).Y.tO u u').genSet)
      (A₀ * oneT C (Fm.D x i).R.k (Fm.D x i).R.rS (Fm.D x i).R.f (Fm.L x i).sc.b ((Cc x hx i).X.B.g : ℝ)
        (GamS (Fm.D x i) (Fm.L x i)) * ddC (Cc x hx i).X (Cc x hx i).Y u u') := by
    rw [hA₀]
    exact oneSC_at (At x hx i) (Cc x hx i).jt (Cc x hx i).wr (Cc x hx i).fc hGP (Yt x hx i u u') hFo' hT
      C0 C hC0' h1
  obtain ⟨Al, NT', Gam, Xi, hAl, hP', hX', h6, hAmp⟩ :=
    loopsAmp_at hH hT hA hC hCT hK₀ hA₀1 hCl4 hClA hXiH HS H1'
  exact hJ _ _ _ _ _ ((Cc x hx i).Y.tO u u') (Fm.D x i).R.k (Fm.D x i).R.rS (Fm.D x i).R.f Al (Fm.L x i).sc.b
    ((Cc x hx i).X.B.g : ℝ) (Fm.D x i).host.v NT' Gam Xi (ddC (Cc x hx i).X (Cc x hx i).Y u u')
    hAl hP' hX' h6 (dd_nonneg hT u u') hA
    (Formalism.L2.SG.RowsOther.loopsInput_of_amp _ hA.2.2.le _ _ _ _ _ _ _ _ _ _ _ hAmp)

end TransportedAlt

section Fam5

variable {eps : ℝ} (Fm : FamP eps) (C1 : ℝ)
  (X : ∀ x, Fm.x1 < x → ∀ i : Fm.Ix x, HidaSetting (Fm.D x i))
  (Y : ∀ x (hx : Fm.x1 < x) (i : Fm.Ix x), Full (X x hx i))
  (hF : ∀ x (hx : Fm.x1 < x) (i : Fm.Ix x), FinX (Y x hx i))
  (hI : ∀ x (hx : Fm.x1 < x) (i : Fm.Ix x), SIso (Fm.D x i).s (sOf (hF x hx i)))
  (hCT : ∀ x (hx : Fm.x1 < x) (i : Fm.Ix x), ConcTie (X x hx i) (Y x hx i))


end Fam5

end Formalism.L2.SG.LoopsTies
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopEvaluationThresholdZero =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopsFinalS =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopsFinalS", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopEvaluationThresholdZero\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FibreCountHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.WittExistsHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.PairValPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.AmpFibreConstHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FinXClosed\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LeadingMinors\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopsFinal\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.MemPerpMapFlag\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.NormalizingConstantEq\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PairAmpConstWd\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.WRowPinHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.WittFlags\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AutLzFinite\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.SplittingAdmissibleOfTermData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt Formalism.L2.SG.HidaSetting Formalism.L2.SG.Full
  Formalism.L2.SG.RowsConc Formalism.L2.SG.PackageTie2 Formalism.L2.SG.TermTieOf Formalism.L2.SG.LoopTieOf Formalism.L2.SG.LoopsCut
  Formalism.L2.SG.LoopsFinal Formalism.L2.SG.LoopsEv Formalism.FourierDecayAlt

namespace Formalism.L2.SG.LoopsTies

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section ThrS

end ThrS

section Point

variable {D : D7} (X : HidaSetting D) (Y : Full X) (hF : FinX Y) (hI : SIso D.s (sOf hF)) (hCT : ConcTie X Y)

def wOf : WittDat X := Classical.choice (Formalism.L2.SG.Pf.WittFlags.WittExists_holds D X)

theorem hOf : TieHyp (wOf X) hI :=
  { lat := Formalism.L2.SG.Pf.WittFlags.LatIso_holds D
    atSome := fun u u' => Formalism.L2.SG.LeadingMinorsNonvanishing.atSomeAll_holds _ _ Y u u'
    autFin := fun u => Formalism.L2.SG.Pf.autFin_of (_root_.PI.AutLzFinite.SlopeTestRemainingChoices.autLzFin_main D) (D.sp.Y_sig 0)
      (Formalism.MainNotions.BridgeLemma.tie_Tu_pos D u)
      (Formalism.L2.SG.Pf.WittFlags.RowRepsIso_holds D ((wOf X).δ u) ((wOf X).isom u) (X.Fu u) (Y.what₂ u) (Y.rowsOK u))
    pairs := Formalism.L2.SG.Pf.pairTiesAll_holds _ _ Y hF (wOf X) hI }

def aOf : AmpDat X := Classical.choose (Formalism.L2.SG.Pf.KernelOfEmbedding.pvalForm_holds (wOf X) hI hCT.2.2.2.2.1)

end Point

section PointW

variable {D : D7} (X : HidaSetting D) (Y : Full X) (hF : FinX Y) (hI : SIso D.s (sOf hF))
  (hWD : Formalism.L2.SG.WuDecay.WuDecay X)

def aOfW : AmpDat X := Classical.choose (Formalism.L2.SG.Pf.KernelOfEmbedding.pvalForm_holds (wOf X) hI hWD)

theorem hvOfW : PvalForm (wOf X) hI (aOfW X Y hF hI hWD) :=
  Classical.choose_spec (Formalism.L2.SG.Pf.KernelOfEmbedding.pvalForm_holds (wOf X) hI hWD)

def atOfW : TermTie D := termTieOf (wOf X) hI (hOf X Y hF hI) (aOfW X Y hF hI hWD) (hvOfW X Y hF hI hWD)

def ccOfW : ConcAt0 D (atOfW X Y hF hI hWD) :=
  ⟨X, Y, hF, hI,
    jtPin_of (wOf X) hI (hOf X Y hF hI) (aOfW X Y hF hI hWD) (hvOfW X Y hF hI hWD)
      (Formalism.L2.SG.Pf.FibreCounting.AmpFibreConst_holds Y),
    Formalism.L2.SG.Pf.WittFlags.WRowPin_holds hF hI (wOf X) (hOf X Y hF hI) (aOfW X Y hF hI hWD) (hvOfW X Y hF hI hWD),
    Formalism.L2.SG.Pf.FibreCounting.FibreCount_holds Y⟩

end PointW

end Formalism.L2.SG.LoopsTies
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopsFinalS =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FamRaise =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FamRaise", "h": "module\n\npublic import Formalism.SharpRestriction.ParConsts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions

theorem raise_lt {eps : ℝ} {Fm : FamP eps} {y x : ℝ} (h : max Fm.x1 y < x) : Fm.x1 < x :=
  lt_of_le_of_lt (le_max_left _ _) h

def FamP.raise {eps : ℝ} (Fm : FamP eps) (y : ℝ) : FamP eps :=
  { Fm with
    x1 := max Fm.x1 y
    one_lt_family_threshold := lt_of_lt_of_le Fm.one_lt_family_threshold (le_max_left _ _)
    L_x := fun x i h => Fm.L_x x i (raise_lt h)
    o_le_Co := fun x i h => Fm.o_le_Co x i (raise_lt h)
    QS_le_Co := fun x i h => Fm.QS_le_Co x i (raise_lt h)
    bTop_eq := fun x h => Fm.bTop_eq x (raise_lt h)
    bTop_ge := fun x h => Fm.bTop_ge x (raise_lt h)
    bT_le := fun x h => Fm.bT_le x (raise_lt h)
    coverS := fun x h => Fm.coverS x (raise_lt h)
    params := fun x h => Fm.params x (raise_lt h)
    params_K := fun x h => Fm.params_K x (raise_lt h)
    parT := fun x h => Fm.parT x (raise_lt h)
    parT_K := fun x h => Fm.parT_K x (raise_lt h)
    sizes := fun x h => Fm.sizes x (raise_lt h)
    supp_sat := fun x h => Fm.supp_sat x (raise_lt h)
    tw_supp := fun x h => Fm.tw_supp x (raise_lt h)
    fills := fun x h => Fm.fills x (raise_lt h)
    lats0 := fun x h => Fm.lats0 x (raise_lt h)
    latTied := fun x h => Fm.latTied x (raise_lt h)
    nuDef := fun x h => Fm.nuDef x (raise_lt h)
    nprimeDef := fun x h => Fm.nprimeDef x (raise_lt h)
    rrDef := fun x h => Fm.rrDef x (raise_lt h)
    h_eq := fun x h => Fm.h_eq x (raise_lt h)
    ex := fun x h => Fm.ex x (raise_lt h)
    rho_le := fun x h => Fm.rho_le x (raise_lt h)
    drop_iff := fun x h => Fm.drop_iff x (raise_lt h)
    fixed := ⟨Fm.fixed.1, Fm.fixed.2.1, Fm.fixed.2.2.1, Fm.fixed.2.2.2.1, Fm.fixed.2.2.2.2.1, Fm.fixed.2.2.2.2.2.1,
      Fm.fixed.2.2.2.2.2.2.1, fun x h => Fm.fixed.2.2.2.2.2.2.2 x (raise_lt h)⟩ }

end Formalism.MainNotions
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FamRaise =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopRowSOf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopRowSOf", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopsFinalS\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.ThmSOwn\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.FamRaise\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.MassLandSt\npublic import Formalism.GL3MeanSquares.GenusMeanAsymptotics.UnimodularClassRepresentatives.SiegelMassRatioOfLI\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.GrowthOfBasic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormChainLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt Formalism.L2.SG.HidaSetting Formalism.L2.SG.Full
  Formalism.L2.SG.RowsConc Formalism.L2.SG.PackageTie2 Formalism.L2.SG.TermTieOf Formalism.L2.SG.LoopTieOf Formalism.L2.SG.LoopsFinal Formalism.FourierDecayAlt
  Formalism.L2.SG.ThmSOwn

namespace Formalism.L2.SG.LoopsTies

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section SelQ

variable {𝒞 : FamClass} (sel : SSel 𝒞)

variable {eps : ℝ} (Fm : FamP eps) (hc : 𝒞 Fm)

end SelQ

section Closed

variable (C0 : ℝ) {𝒞 : FamClass} (sel : SSel 𝒞)

theorem cOut_take {eps : ℝ} (Fm : FamP eps) (CH : ℝ) : (Fm.cOut ++ Fm.cMid CH).take 16 = Fm.cOut := by
  unfold FamP.cOut; simp

theorem constant_list_cylinder {eps : ℝ} (Fm : FamP eps) (CH : ℝ) : (Fm.cOut ++ Fm.cMid CH).getD 6 0 = Fm.CYL := by
  unfold FamP.cOut; simp

theorem constant_list_trace {eps : ℝ} (Fm : FamP eps) (CH : ℝ) : (Fm.cOut ++ Fm.cMid CH).getD 13 0 = Fm.CTu := by
  unfold FamP.cOut; simp

end Closed

section Raised

variable (C0 : ℝ) {𝒞 : FamClass} (sel : SSel 𝒞)
  (yF : ∀ {eps : ℝ} (Fm : FamP eps), 𝒞 Fm → ℝ)

def YFOK : Prop :=
  ∀ {eps : ℝ} (Fm : FamP eps) (hc : 𝒞 Fm) x (hx : Fm.x1 < x) (h0 : (sel Fm hc).1 ≤ x), yF Fm hc ≤ x →
    ∀ i : Fm.Ix x, FinX ((sel Fm hc).2 x hx h0 i).Y ∧ Formalism.L2.SG.WuDecay.WuDecay ((sel Fm hc).2 x hx h0 i).X

def yR {eps : ℝ} (Fm : FamP eps) (hc : 𝒞 Fm) : ℝ := max (sel Fm hc).1 (yF Fm hc)

theorem h0R {eps : ℝ} {Fm : FamP eps} {hc : 𝒞 Fm} {x : ℝ} (hx : (Fm.raise (yR sel yF Fm hc)).x1 < x) :
    (sel Fm hc).1 ≤ x :=
  ((le_max_left _ _).trans (le_max_right _ _)).trans hx.le

theorem hyR {eps : ℝ} {Fm : FamP eps} {hc : 𝒞 Fm} {x : ℝ} (hx : (Fm.raise (yR sel yF Fm hc)).x1 < x) :
    yF Fm hc ≤ x :=
  ((le_max_right _ _).trans (le_max_right _ _)).trans hx.le

def AtR (hyF : YFOK sel yF) {eps : ℝ} (Fm : FamP eps) (hc : 𝒞 Fm) (x : ℝ) (hx : (Fm.raise (yR sel yF Fm hc)).x1 < x)
    (i : Fm.Ix x) : TermTie (Fm.D x i) :=
  atOfW ((sel Fm hc).2 x (raise_lt hx) (h0R sel yF hx) i).X ((sel Fm hc).2 x (raise_lt hx) (h0R sel yF hx) i).Y
    (hyF Fm hc x (raise_lt hx) (h0R sel yF hx) (hyR sel yF hx) i).1
    (((sel Fm hc).2 x (raise_lt hx) (h0R sel yF hx) i).hI (hyF Fm hc x (raise_lt hx) (h0R sel yF hx) (hyR sel yF hx) i).1)
    (hyF Fm hc x (raise_lt hx) (h0R sel yF hx) (hyR sel yF hx) i).2

def CcR (hyF : YFOK sel yF) {eps : ℝ} (Fm : FamP eps) (hc : 𝒞 Fm) (x : ℝ) (hx : (Fm.raise (yR sel yF Fm hc)).x1 < x)
    (i : Fm.Ix x) : ConcAt0 (Fm.D x i) (AtR sel yF hyF Fm hc x hx i) :=
  ccOfW ((sel Fm hc).2 x (raise_lt hx) (h0R sel yF hx) i).X ((sel Fm hc).2 x (raise_lt hx) (h0R sel yF hx) i).Y
    (hyF Fm hc x (raise_lt hx) (h0R sel yF hx) (hyR sel yF hx) i).1
    (((sel Fm hc).2 x (raise_lt hx) (h0R sel yF hx) i).hI (hyF Fm hc x (raise_lt hx) (h0R sel yF hx) (hyR sel yF hx) i).1)
    (hyF Fm hc x (raise_lt hx) (h0R sel yF hx) (hyR sel yF hx) i).2


variable [Fact Formalism.HermitianLattices.Ext.L3.HermRepUnram] in
theorem loopRowS_of_raised (hyF : YFOK sel yF) (C1f : List ℝ → ℝ) (C₀f : (List ℝ → ℝ) → List ℝ → ℝ)
    (Yt : ∀ {eps : ℝ} (Fm : FamP eps) (hc : 𝒞 Fm) x (hx : (Fm.raise (yR sel yF Fm hc)).x1 < x) (i : Fm.Ix x)
      (u u' : (Fm.D x i).what₂.Word), LoopTie (Fm.D x i) (Fm.L x i) (AtR sel yF hyF Fm hc x hx i) u u' (C1f Fm.cOut))
    (hRowsF : ∀ aF : List ℝ → ℝ, Closed 𝒞 fun Fm CH => ∀ hc : 𝒞 Fm, ∀ C : ℝ, C₀f aF (Fm.cOut ++ Fm.cMid CH) ≤ C →
      OwnEv Fm fun C' Cl x i => ∀ (hx : (Fm.raise (yR sel yF Fm hc)).x1 < x) (u u' : (Fm.D x i).what₂.Word),
        Cnt.Hyp (Fm.D x i) (Fm.L x i) u u' C' Cl (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0 (aF Fm.cOut) →
          Formalism.MainNotions.BridgeLemma.RowsND (AtR sel yF hyF Fm hc x hx i) (Yt Fm hc x hx i u u') C ∧
            Formalism.MainNotions.BridgeLemma.RowsDeg (AtR sel yF hyF Fm hc x hx i) (Yt Fm hc x hx i u u') C ∧
            Formalism.MainNotions.BridgeLemma.RowsOne (AtR sel yF hyF Fm hc x hx i) (Yt Fm hc x hx i u u') C)
    (hForm : Closed 𝒞 fun Fm _ => OwnEv Fm fun C' Cl x i =>
      Hyp0 (Fm.D x i) (Fm.L x i) C' Cl (Fm.CYL + 1) (1 / 4) 3 (1 / 2) Fm.CTu C0 → ∀ u, UnitaryVolumeMass.FormAt (Fm.D x i) u) :
    LoopRowS C0 𝒞 sel := by
  intro aF
  choose f g hfg using fun p : ℝ × ℝ × ℝ × ℝ =>
    loop_evaluation_threshold_zero _root_.Formalism.FourierDecayAlt.P.NormChainLemmas.loopCores _root_.Formalism.FourierDecayAlt.P.GrowthPolynomialOperator.t_SubFamily Formalism.HermitianLattices.Ext.L3.siegelMassRatio
      (p.1 + 1) (1 / 4) 3 (1 / 2) p.2.1 C0 p.2.2.1 p.2.2.2
  let par : List ℝ → ℝ × ℝ × ℝ × ℝ := fun l => (l.getD 6 0, l.getD 13 0, aF (l.take 16), C₀f aF l)
  obtain ⟨e1, he1, H1⟩ := hRowsF aF
  obtain ⟨e2, he2, H2⟩ := hForm
  refine ⟨min e1 e2, lt_min he1 he2, fun eps he hle => ?_⟩
  obtain ⟨K1, hK1⟩ := H1 eps he (hle.trans (min_le_left _ _))
  obtain ⟨K2, hK2⟩ := H2 eps he (hle.trans (min_le_right _ _))
  let K4 : TransportedAlt := ⟨0, fun _ => 0, fun _ => 0, fun l => max (f (par l)) (g (par l))⟩
  refine ⟨(K1.sup K2).sup K4, fun Fm CH hc hL => ?_⟩
  obtain ⟨hL12, hL4⟩ := (Fm.large_sup _ _ CH).1 hL
  obtain ⟨hL1, hL2⟩ := (Fm.large_sup _ _ CH).1 hL12
  intro hc'
  have epar : par (Fm.cOut ++ Fm.cMid CH) = (Fm.CYL, Fm.CTu, aF Fm.cOut, C₀f aF (Fm.cOut ++ Fm.cMid CH)) := by
    simp only [par, constant_list_cylinder, constant_list_trace, cOut_take]
  have hthr : ∀ c ∈ Fm.cLast, max (f (Fm.CYL, Fm.CTu, aF Fm.cOut, C₀f aF (Fm.cOut ++ Fm.cMid CH)))
      (g (Fm.CYL, Fm.CTu, aF Fm.cOut, C₀f aF (Fm.cOut ++ Fm.cMid CH))) ≤ c := by
    intro c hc0
    have := hL4.2.2.2 c hc0
    simpa only [K4, epar] using this
  have hC' : f (Fm.CYL, Fm.CTu, aF Fm.cOut, C₀f aF (Fm.cOut ++ Fm.cMid CH)) ≤ sC' Fm :=
    (le_max_left _ _).trans (hthr _ (by unfold FamP.cLast sC'; simp))
  have hCl : g (Fm.CYL, Fm.CTu, aF Fm.cOut, C₀f aF (Fm.cOut ++ Fm.cMid CH)) ≤ sCl Fm := by
    have h := fun c hc => (le_max_right _ _).trans (hthr c hc)
    unfold sCl
    refine le_min (h _ (by unfold FamP.cLast; simp)) (le_min (h _ (by unfold FamP.cLast; simp))
      (le_min (h _ (by unfold FamP.cLast; simp)) (le_min (h _ (by unfold FamP.cLast; simp))
        (le_min (h _ (by unfold FamP.cLast; simp)) (h _ (by unfold FamP.cLast; simp))))))
  have hE := hfg (Fm.CYL, Fm.CTu, aF Fm.cOut, C₀f aF (Fm.cOut ++ Fm.cMid CH)) (Fm.raise (yR sel yF Fm hc')) (C1f Fm.cOut)
    (AtR sel yF hyF Fm hc') (Yt Fm hc') (CcR sel yF hyF Fm hc') (hK1 Fm CH hc hL1 hc') (hK2 Fm CH hc hL2)
  obtain ⟨x0, H⟩ := hE
  refine ⟨max x0 (yR sel yF Fm hc' + 1), fun x hx0 i => ?_⟩
  intro hx h0 u u' hH hCT hA
  have hx' : (Fm.raise (yR sel yF Fm hc')).x1 < x := by
    show max Fm.x1 (yR sel yF Fm hc') < x
    refine max_lt hx ?_
    have := (le_max_right _ _).trans hx0
    linarith
  exact H x ((le_max_left _ _).trans hx0) i hC' hCl hx' u u' hH hCT hA

theorem constant_list_gamma {eps : ℝ} (Fm : FamP eps) (CH : ℝ) : (Fm.cOut ++ Fm.cMid CH).getD 17 0 = Fm.CGam := by
  unfold FamP.cOut FamP.cMid; simp


end Raised

end Formalism.L2.SG.LoopsTies
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopRowSOf =====
