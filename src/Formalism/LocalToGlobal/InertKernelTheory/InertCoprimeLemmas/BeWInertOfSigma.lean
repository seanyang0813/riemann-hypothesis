module

public import Formalism.PeriodIntegrals.ExpIntW
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialIntegrality.InvNatMemWf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialIntegrality.RootsOfUnityRingLeWittIntegers
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialIntegrality.StepIII
public import Formalism.SharpRestriction.GlobalSchurBounds.GL3Theta
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.AddPtW
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtEndIntWOfOkp
public import Formalism.PeriodIntegrals.FglPtW
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.ConstantCoeffPsubst
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdditiveIntegralGroups.SubstMem
public import Formalism.LocalToGlobal.InertKernelTheory.StatementBeW
public import Formalism.LocalToGlobal.InertKernelTheory.DefsBeW
public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.FormalExponentialAgree
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementK
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KurComplete
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.ChordEquation
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.AdditionIdentityOfSigmaFormulaUnit
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.BeConjOfNormHolds
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.FormalGroupLawFirstHalfHolds
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.RetcutA
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtEndIntWHolds
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS
import Mathlib.Tactic.Linter.Style
import Formalism.FormalGroupLog.FormalGroupLogProofs.ConstantCoeffSubstOfZero
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalC
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffSeriesAtVariable
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.TwoTorsionU
import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.FamilyLogGammaSmallHolds
import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.TestVectorMemSchwartzBruhat
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.NormHalfB2SubTwoTorsionLeOne

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExpIntW, Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.ReadWHolds, Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.CoefWfPhAt, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.AddGenThm, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.MulGenThm, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FglPtW, Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtPhDualWHolds, Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeWInertOfSigma

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExpIntW =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExpIntW", "h": "module\n\npublic import Formalism.PeriodIntegrals.ExpIntW\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialIntegrality.InvNatMemWf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialIntegrality.RootsOfUnityRingLeWittIntegers\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ExponentialIntegrality.StepIII\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem expIntegralWitt : PI.ExpIntW :=
  PI.ExpIntWProof.expIntW_of_key PI.ExpIntWProof.stepI PI.ExpIntWProof.keyW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExpIntW =====

-- ===== clump member: Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.ReadWHolds =====
-- clump-header: {"m": "Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.ReadWHolds", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GL3Theta\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExpIntW\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.GL3Theta

theorem readW_holds : readW := expIntegralWitt

end Formalism.MainNotions.GL3Theta
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.ReadWHolds =====

-- ===== clump member: Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.CoefWfPhAt =====
-- clump-header: {"m": "Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.CoefWfPhAt", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.AddPtW\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.ReadWHolds\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtEndIntWOfOkp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.Ext

open Formalism.BasicNotions Formalism.MainNotions.GL3Theta Formalism.MainNotions.TaylorLogMetric

section

variable {p : ℕ} [Fact p.Prime]

theorem ptW_X {σ : Type} (i : σ) : PtW (Xv i : MvPowerSeries σ ℂ_[p]) := by
  classical
  unfold PtW
  constructor
  · intro n
    rw [MvPowerSeries.coeff_X]
    split_ifs
    · exact Subring.one_mem _
    · exact Subring.zero_mem _
  · simp

theorem coefWf_add {σ : Type} {f g : MvPowerSeries σ ℂ_[p]} (hf : CoefWf f) (hg : CoefWf g) : CoefWf (f + g) := (coefWfRing_holds p σ f g hf hg).1

theorem coefWf_sub {σ : Type} {f g : MvPowerSeries σ ℂ_[p]} (hf : CoefWf f) (hg : CoefWf g) : CoefWf (f - g) := (coefWfRing_holds p σ f g hf hg).2.1

theorem coefWf_phAt (g : G1 p) (hph : CoefWf g.ph) {σ : Type} {a : MvPowerSeries σ ℂ_[p]} (ha : PtW a) : CoefWf (g.phAt a) := by
  obtain ⟨ha1, ha2⟩ := ha
  exact substWf_holds p σ g.ph a hph ha1 ha2

theorem coefWf_be (HA : AddPtW) (g : G1 p) (hOk : g.Ok) (hF : IntegralW (g.add (Xv 0) (Xv 1) : MvPowerSeries (Fin 2) ℂ_[p]))
    (hph : CoefWf g.ph) {σ : Type} {a b : MvPowerSeries σ ℂ_[p]} (ha : PtW a) (hb : PtW b) : CoefWf (g.be a b) := by
  have hab : PtW (g.add a b) := HA p g hOk hF σ a b ha hb
  show CoefWf (g.phAt (g.add a b) - g.phAt a - g.phAt b)
  exact coefWf_sub (coefWf_sub (coefWf_phAt g hph hab) (coefWf_phAt g hph ha)) (coefWf_phAt g hph hb)

theorem simeqW_of {σ : Type} {f g : MvPowerSeries σ ℂ_[p]} (hf : CoefWf f) (hg : CoefWf g) (h : Simeq f g) : SimeqW f g := by

  obtain ⟨h0, hI⟩ := h
  have hr : SimeqW (f - g) 0 :=
    readW_holds p σ (f - g) (coefWf_sub hf hg) (And.intro (by simpa using h0) (by simpa using hI))
  obtain ⟨r0, rI⟩ := hr
  exact And.intro (by simpa using r0) (by simpa using rI)

end

end Formalism.MainNotions.Ext
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.CoefWfPhAt =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.AddGenThm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.AddGenThm", "h": "module\n\npublic import Formalism.PeriodIntegrals.FglPtW\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.ConstantCoeffPsubst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdditiveIntegralGroups.SubstMem\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.FglPtW.Wk

open PI.AddIntG.Wk

theorem addGen_thm : PI.FglPtW.AddGen := by
  intro K _ S l ex hex0 hinv hF σ a b ha hb
  have hcc : ∀ {τ : Type} (f : PowerSeries K) (c : MvPowerSeries τ K),
      MvPowerSeries.constantCoeff c = 0 →
      MvPowerSeries.constantCoeff (PowerSeries.subst c f) = PowerSeries.constantCoeff f := by
    intro τ f c hc
    rw [PowerSeries.constantCoeff_subst (PowerSeries.HasSubst.of_constantCoeff_zero hc)]
    rw [finsum_eq_single _ 0]
    · simp
    · intro d hd
      rw [map_pow, hc, zero_pow hd, smul_zero]
  have hl0 : PowerSeries.constantCoeff l = 0 := by
    have h := hcc l ex hex0
    rw [hinv] at h
    rw [← h]
    exact PowerSeries.constantCoeff_X
  have hP0 : ∀ s, MvPowerSeries.constantCoeff ((![a, b] : Fin 2 → MvPowerSeries σ K) s) = 0 := by
    intro s
    fin_cases s <;> simp [ha.2, hb.2]
  have hP : MvPowerSeries.HasSubst (![a, b] : Fin 2 → MvPowerSeries σ K) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero hP0
  have hmix : ∀ (c : MvPowerSeries (Fin 2) K), MvPowerSeries.constantCoeff c = 0 →
      ∀ f : PowerSeries K, MvPowerSeries.subst (![a, b] : Fin 2 → MvPowerSeries σ K) (PowerSeries.subst c f) =
        PowerSeries.subst (MvPowerSeries.subst (![a, b] : Fin 2 → MvPowerSeries σ K) c) f := by
    intro c hc f
    exact MvPowerSeries.subst_comp_subst_apply
      (PowerSeries.HasSubst.const (PowerSeries.HasSubst.of_constantCoeff_zero hc)) hP f
  have hX0 : MvPowerSeries.constantCoeff (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) = 0 :=
    MvPowerSeries.constantCoeff_X 0
  have hX1 : MvPowerSeries.constantCoeff (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) = 0 :=
    MvPowerSeries.constantCoeff_X 1
  have hG0 : MvPowerSeries.constantCoeff
      (PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) l +
        PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) l) = 0 := by
    rw [map_add (f := _), hcc l _ hX0, hcc l _ hX1, hl0, add_zero]
  have hG : MvPowerSeries.subst (![a, b] : Fin 2 → MvPowerSeries σ K)
      (PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) l +
        PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) l) =
      PowerSeries.subst a l + PowerSeries.subst b l := by
    rw [MvPowerSeries.subst_add hP, hmix _ hX0, hmix _ hX1, MvPowerSeries.subst_X hP,
      MvPowerSeries.subst_X hP]
    rfl
  have heq : PowerSeries.subst (PowerSeries.subst a l + PowerSeries.subst b l) ex =
      MvPowerSeries.subst (![a, b] : Fin 2 → MvPowerSeries σ K) (PowerSeries.subst
        (PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) l +
          PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) l) ex) := by
    rw [hmix _ hG0, hG]
  refine ⟨?_, ?_⟩
  · rw [heq, serOver_iff]
    refine mvsubst_mem_SerS S hP0 (fun i => ?_) ((serOver_iff S _).mp hF)
    fin_cases i <;> simp [(serOver_iff S a).mp ha.1, (serOver_iff S b).mp hb.1]
  · rw [hcc ex _ (by rw [map_add (f := _), hcc l a ha.2, hcc l b hb.2, hl0, add_zero])]
    exact hex0

end PI.FglPtW.Wk

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.AddGenThm =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.MulGenThm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.MulGenThm", "h": "module\n\npublic import Formalism.PeriodIntegrals.FglPtW\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.ConstantCoeffPsubst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdditiveIntegralGroups.SubstMem\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.FglPtW.Wk

open PI.AddIntG.Wk

theorem mulGen_thm : PI.FglPtW.MulGen := by
  intro K _ S l ex hex hl c hG σ a ha
  obtain ⟨haS, ha0⟩ := ha
  have hex' : MvPowerSeries.constantCoeff ex = 0 := hex
  have hsub : PowerSeries.HasSubst ex := PowerSeries.HasSubst.of_constantCoeff_zero hex'

  have hl0 : PowerSeries.constantCoeff l = 0 := by
    have h1 := congrArg MvPowerSeries.constantCoeff hl
    rw [PowerSeries.constantCoeff_subst hsub,
      finsum_eq_single _ 0 (fun d hd => by rw [map_pow, hex', zero_pow hd, smul_zero])] at h1
    simpa using h1.trans (PowerSeries.constantCoeff_X (R := K))
  have hX0 : MvPowerSeries.constantCoeff (MvPowerSeries.X () : MvPowerSeries Unit K) = 0 := by simp
  have hXs : PowerSeries.HasSubst (MvPowerSeries.X () : MvPowerSeries Unit K) :=
    PowerSeries.HasSubst.of_constantCoeff_zero hX0
  have has : PowerSeries.HasSubst a := PowerSeries.HasSubst.of_constantCoeff_zero ha0
  have hA0 : MvPowerSeries.constantCoeff (MvPowerSeries.C c *
      PowerSeries.subst (MvPowerSeries.X () : MvPowerSeries Unit K) l) = 0 := by
    rw [map_mul, PowerSeries.constantCoeff_subst_eq_zero hX0 l hl0, mul_zero]
  have hAs := PowerSeries.HasSubst.of_constantCoeff_zero hA0

  have hinner : PowerSeries.subst a (MvPowerSeries.C c *
      PowerSeries.subst (MvPowerSeries.X () : MvPowerSeries Unit K) l) =
      MvPowerSeries.C c * PowerSeries.subst a l := by
    rw [← PowerSeries.coe_substAlgHom has, map_mul, PowerSeries.coe_substAlgHom,
      PowerSeries.subst_comp_subst_apply hXs has]
    congr 1
    · have h2 := (PowerSeries.substAlgHom has).commutes c
      rw [PowerSeries.coe_substAlgHom] at h2
      first
        | exact h2
    · congr 1
      exact PowerSeries.subst_X has
  have key : PowerSeries.subst (MvPowerSeries.C c * PowerSeries.subst a l) ex =
      PowerSeries.subst a (PowerSeries.subst (MvPowerSeries.C c *
        PowerSeries.subst (MvPowerSeries.X () : MvPowerSeries Unit K) l) ex) := by
    rw [PowerSeries.subst_comp_subst_apply hAs has, hinner]
  rw [key]
  refine ⟨?_, ?_⟩
  · rw [serOver_iff]
    exact subst_mem_SerS S ha0 ((serOver_iff S a).mp haS) ((serOver_iff S _).mp hG)
  · exact PowerSeries.constantCoeff_subst_eq_zero ha0 _
      (PowerSeries.constantCoeff_subst_eq_zero hA0 ex hex)

end PI.FglPtW.Wk

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.MulGenThm =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FglPtW =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FglPtW", "h": "module\n\npublic import Formalism.PeriodIntegrals.FglPtW\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.AddGenThm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FormalGroupPoints.MulGenThm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

private theorem cc_subst_lemma {K : Type*} [CommRing K] {σ : Type*} {a : MvPowerSeries σ K}
    (ha : MvPowerSeries.constantCoeff a = 0) (f : PowerSeries K) :
    MvPowerSeries.constantCoeff (PowerSeries.subst a f) = PowerSeries.constantCoeff f := by
  rw [PowerSeries.constantCoeff_subst (PowerSeries.HasSubst.of_constantCoeff_zero ha)]
  rw [finsum_eq_single _ 0]
  · simp
  · intro d hd
    simp [map_pow, ha, zero_pow hd]

private theorem subst_subst_eq_of_subst_eq_X {K : Type*} [CommRing K] {l ex : PowerSeries K}
    (hex : PowerSeries.constantCoeff ex = 0) (hl : PowerSeries.subst ex l = PowerSeries.X)
    {σ : Type*} {u : MvPowerSeries σ K} (hu : MvPowerSeries.constantCoeff u = 0) :
    PowerSeries.subst (PowerSeries.subst u ex) l = u := by
  have hexS : PowerSeries.HasSubst ex := PowerSeries.HasSubst.of_constantCoeff_zero' hex
  have huS : PowerSeries.HasSubst u := PowerSeries.HasSubst.of_constantCoeff_zero hu
  rw [← PowerSeries.subst_comp_subst_apply hexS huS, hl, PowerSeries.subst_X huS]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FglPtW =====

-- ===== clump member: Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtPhDualWHolds =====
-- clump-header: {"m": "Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtPhDualWHolds", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.AddPtW\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FglPtW\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.Ext

theorem addPtW_holds : AddPtW :=
  fun p _ g hOk hF σ a b ha hb =>
    _root_.PI.FglPtW.Wk.addGen_thm ℂ_[p] (Formalism.MainNotions.GL3Theta.Wp p) g.l g.ex hOk.2.2.1 hOk.2.2.2 hF σ a b ha hb

theorem mulPtW_holds : MulPtW :=
  fun p _ g hOk c hc σ a ha =>
    _root_.PI.FglPtW.Wk.mulGen_thm ℂ_[p] (Formalism.MainNotions.GL3Theta.Wp p) g.l g.ex hOk.2.2.1 hOk.2.2.2 c hc σ a ha

end Formalism.MainNotions.Ext
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtPhDualWHolds =====

-- ===== clump member: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeWInertOfSigma =====
-- clump-header: {"m": "Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeWInertOfSigma", "h": "module\n\npublic import Formalism.LocalToGlobal.InertKernelTheory.StatementBeW\npublic import Formalism.LocalToGlobal.InertKernelTheory.DefsBeW\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.FormalExponentialAgree\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementK\nimport Formalism.FormalGroupLog.FormalGroupLogProofs.ConstantCoeffSubstOfZero\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalC\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffSeriesAtVariable\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KurComplete\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.ChordEquation\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.TwoTorsionU\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.AdditionIdentityOfSigmaFormulaUnit\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.BeConjOfNormHolds\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.CoefWfPhAt\nimport Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.FamilyLogGammaSmallHolds\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.FormalGroupLawFirstHalfHolds\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.RetcutA\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtEndIntWHolds\nimport Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtEndIntWOfOkp\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtPhDualWHolds\nimport Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.TestVectorMemSchwartzBruhat\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.AddPtW\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.NormHalfB2SubTwoTorsionLeOne\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.KerInert

open Formalism.BasicNotions Formalism.MainNotions.GL3Theta Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.Ext Formalism.MainNotions.Ext.CutA NumberField

theorem beWInert_of (hP : PhWAll) (hE : EndIntInert) (hB : BiaddInert) (hN : PhNormOKInert) : BeWInert := by
  intro D p _ cc δ g hA h5 hI hW
  have ok : g.Ok := hA.2.2.2.2
  have hp : p ≠ 2 := by omega
  have ha := addInt_holds D p cc δ g hA
  have he := hE D p cc δ g hA h5 hI hW
  have hb := hB D p cc δ g hA h5 hI hW
  have hn : ∀ α ∈ OKp D g.lam, Simeq (g.phAt (g.mulBy α.1 (Xv ())) : MvPowerSeries Unit ℂ_[p])
      (MvPowerSeries.C (α.1 * α.2) * g.phAt (Xv ())) := by
    refine phNormOfUnits_holds p g (OKp D g.lam) ok hp (okpTwo_holds D p g.lam) (okpSwap_holds D p g.lam)
      (fun α hα β hβ => okp_add D g.lam α β hα hβ) (fun α hα β hβ => okp_mul D g.lam α β hα hβ)
      he ha.1 (okpTrace_holds D p g.lam) (okpNorm_holds D p g.lam) (okpTwoUnits2_holds D p g.lam hp) hb.1 ?_
    intro α hα h1 h2
    have hc := okpUnitsDense_holds D p g.lam hp α hα h1 h2
    refine phNormClosed_holds p g _ ok ?_ ?_ α hc
    · rintro _ ⟨a, -, rfl⟩
      exact he _ (subset_closure ⟨a, rfl⟩)
    · rintro _ ⟨a, hcop, rfl⟩
      exact hN D p cc δ g hA h5 hI hW a hcop
  have hc : ∀ α ∈ OKp D g.lam, Simeq (g.be (g.mulBy α.1 (Xv 0)) (Xv 1) : MvPowerSeries (Fin 2) ℂ_[p])
      (g.be (Xv 0) (g.mulBy α.2 (Xv 1))) :=
    beConjOfNorm_holds p g (OKp D g.lam) ok (okpSwap_holds D p g.lam)
      (fun α hα β hβ => okp_add D g.lam α β hα hβ) he ha.1 (okpNorm_holds D p g.lam)
      (okpTwoUnits_holds D p g.lam hp) hn hb.1
  have heW : ∀ α ∈ OKp D g.lam, IntegralW (g.mulBy α.1 (Xv ()) : MvPowerSeries Unit ℂ_[p]) := by
    intro α hα
    have hO := okpInert_holds D p g.lam hp hI
    exact endIntWG_holds p g ok hW α (hO ▸ hα) (he α hα)
  have hPh : CoefWf g.ph := hP D p cc δ g hA h5 hI hW
  have hF := ha.2 hW
  have add' : ∀ {σ : Type} {a b : MvPowerSeries σ ℂ_[p]}, PtW a → PtW b → PtW (g.add a b) :=
    fun {σ a b} h1 h2 => addPtW_holds p g ok hF σ a b h1 h2
  have be' : ∀ {σ : Type} {a b : MvPowerSeries σ ℂ_[p]}, PtW a → PtW b → CoefWf (g.be a b) :=
    fun h1 h2 => coefWf_be addPtW_holds g ok hF hPh h1 h2
  refine ⟨be' (ptW_X 0) (ptW_X 1), ?_, ?_, ?_⟩
  · exact simeqW_of (be' (add' (ptW_X 0) (ptW_X 1)) (ptW_X 2))
      (coefWf_add (be' (ptW_X 0) (ptW_X 2)) (be' (ptW_X 1) (ptW_X 2))) hb.1
  · exact simeqW_of (be' (ptW_X 0) (add' (ptW_X 1) (ptW_X 2)))
      (coefWf_add (be' (ptW_X 0) (ptW_X 1)) (be' (ptW_X 0) (ptW_X 2))) hb.2
  · intro α hα
    have h1 := heW α hα
    have h2 := heW α.swap (okp_swap D g.lam α hα)
    exact simeqW_of (be' (mulPtW_holds p g ok α.1 h1 _ _ (ptW_X 0)) (ptW_X 1))
      (be' (ptW_X 0) (mulPtW_holds p g ok α.2 h2 _ _ (ptW_X 1))) (hc α hα)

end Formalism.L2.KerInert

noncomputable section

namespace Formalism.L2.KerInert.Dict

open Formalism.BasicNotions Formalism.MainNotions.GL3Theta Formalism.MainNotions.TaylorLogMetric

section

variable {p : ℕ} [Fact p.Prime]

theorem be_eq (g : G1 p) (hOk : g.Ok) (s2 : ℂ_[p]) (hph : g.ph = Formalism.L2.Th1.B.phW g.W s2)
    {σ : Type} (a b : MvPowerSeries σ ℂ_[p]) (ha : MvPowerSeries.constantCoeff a = 0)
    (hb : MvPowerSeries.constantCoeff b = 0) :
    g.be a b = MvPowerSeries.subst ![a, b] (Formalism.L2.Th1.B.beW g.W s2) := by
  have hF : MvPowerSeries.constantCoeff (Formalism.L2.Th1.A.fgl g.W) = 0 :=
    ((Formalism.L2.Th1.A.bridgeLaw ℂ_[p] g.W (intModel_of_ok hOk)).1).1
  unfold G1.be G1.phAt
  rw [formal_addition_agree p g hOk σ a b ha hb, hph, Formalism.L2.Th1.B.beW,
    Formalism.L2.Th1.B.law_cob_subst _ hF _ a b ha hb]

theorem simeq_of_sub {σ : Type} {A B : MvPowerSeries σ ℂ_[p]} (h : Formalism.InvariantFactorPaths.G7.Simeq (A - B) 0) :
    Formalism.MainNotions.GL3Theta.Simeq A B := by
  rw [formal_equivalence_agree p σ A B]
  obtain ⟨h0, h1⟩ := h
  rw [sub_zero] at h0 h1
  exact ⟨h0, h1⟩

theorem integral_X {ι : Type} (i : ι) : Formalism.DworkPowerSeriesWeights.Integral (MvPowerSeries.X i : MvPowerSeries ι ℂ_[p]) := by
  classical
  intro n
  rw [MvPowerSeries.coeff_X]
  split_ifs <;> simp

theorem biadd_of_ph (g : G1 p) (hOk : g.Ok) (hp : p ≠ 2) (s2 : ℂ_[p])
    (hph : g.ph = Formalism.L2.Th1.B.phW g.W s2) :
    Formalism.MainNotions.GL3Theta.Simeq (g.be (g.add (Xv 0) (Xv 1)) (Xv 2) : MvPowerSeries (Fin 3) ℂ_[p])
      (g.be (Xv 0) (Xv 2) + g.be (Xv 1) (Xv 2)) ∧
    Formalism.MainNotions.GL3Theta.Simeq (g.be (Xv 0) (g.add (Xv 1) (Xv 2)) : MvPowerSeries (Fin 3) ℂ_[p])
      (g.be (Xv 0) (Xv 1) + g.be (Xv 0) (Xv 2)) := by
  have hL := (Formalism.L2.Th1.A.bridgeLaw ℂ_[p] g.W (intModel_of_ok hOk)).1
  have hF : MvPowerSeries.constantCoeff (Formalism.L2.Th1.A.fgl g.W) = 0 := hL.1
  obtain ⟨-, hsym, hd1, -⟩ := _root_.Formalism.L2.Th1.B.Crv.curve_formal_first_level_holds ℂ_[p] g.W s2 (intModel_of_ok hOk)
    (Formalism.MainNotions.Ext.CutA.norm_two_cp hp)
  have cX : ∀ i : Fin 3, MvPowerSeries.constantCoeff (MvPowerSeries.X i : MvPowerSeries (Fin 3) ℂ_[p]) = 0 :=
    fun i => by simp
  have hadd : ∀ i j : Fin 3, g.add (Xv i) (Xv j) =
      MvPowerSeries.subst ![(MvPowerSeries.X i : MvPowerSeries (Fin 3) ℂ_[p]), MvPowerSeries.X j]
        (Formalism.L2.Th1.A.fgl g.W) :=
    fun i j => formal_addition_agree p g hOk _ _ _ (cX i) (cX j)
  have cA : ∀ i j : Fin 3, MvPowerSeries.constantCoeff (MvPowerSeries.subst
      ![(MvPowerSeries.X i : MvPowerSeries (Fin 3) ℂ_[p]), MvPowerSeries.X j] (Formalism.L2.Th1.A.fgl g.W)) = 0 :=
    fun i j => Formalism.L2.Th1.B.law_constantCoeff_subst2 _ hF _ _ (cX i) (cX j)
  have hbe := fun (a b : MvPowerSeries (Fin 3) ℂ_[p]) ha hb => be_eq g hOk s2 hph a b ha hb

  have hsw : ∀ u v : MvPowerSeries (Fin 3) ℂ_[p], MvPowerSeries.constantCoeff u = 0 →
      MvPowerSeries.constantCoeff v = 0 →
      MvPowerSeries.subst ![u, v] (Formalism.L2.Th1.B.beW g.W s2) =
        MvPowerSeries.subst ![v, u] (Formalism.L2.Th1.B.beW g.W s2) := by
    intro u v hu hv
    conv_lhs => rw [← hsym]
    unfold Formalism.InvariantFactorPaths.G7.swap2
    rw [Formalism.G.LogP.subst2_subst _ (by simp) (by simp) (Formalism.G.LogP.hs2 hu hv),
      MvPowerSeries.subst_X (Formalism.G.LogP.hs2 hu hv), MvPowerSeries.subst_X (Formalism.G.LogP.hs2 hu hv)]
    rfl
  constructor
  · apply simeq_of_sub
    rw [hadd, hbe _ _ (cA 0 1) (cX 2), hbe _ _ (cX 0) (cX 2), hbe _ _ (cX 1) (cX 2)]
    convert hd1 using 2
    unfold Formalism.InvariantFactorPaths.G7.d1 Formalism.InvariantFactorPaths.G7.in3
    ring
  · apply simeq_of_sub
    have hψ : MvPowerSeries.HasSubst ![(MvPowerSeries.X 1 : MvPowerSeries (Fin 3) ℂ_[p]), MvPowerSeries.X 2,
        MvPowerSeries.X 0] := Formalism.G.LogP.hs3 (cX 1) (cX 2) (cX 0)
    have hR := (Formalism.InvariantFactorPaths.G7.Top.simeqRules ℂ_[p] (Fin 3)).2.2.2.2 (Fin 3) _ 0
      ![(MvPowerSeries.X 1 : MvPowerSeries (Fin 3) ℂ_[p]), MvPowerSeries.X 2, MvPowerSeries.X 0]
      (fun i => by fin_cases i <;> simp) (fun i => by fin_cases i <;> exact integral_X _) hd1
    rw [← MvPowerSeries.coe_substAlgHom hψ, map_zero, MvPowerSeries.coe_substAlgHom hψ] at hR
    rw [hadd, hbe _ _ (cX 0) (cA 1 2), hbe _ _ (cX 0) (cX 1), hbe _ _ (cX 0) (cX 2),
      hsw _ _ (cX 0) (cA 1 2), hsw _ _ (cX 0) (cX 1), hsw _ _ (cX 0) (cX 2)]
    convert hR using 2
    unfold Formalism.InvariantFactorPaths.G7.d1 Formalism.InvariantFactorPaths.G7.in3
    rw [← MvPowerSeries.coe_substAlgHom hψ, map_sub, map_sub, MvPowerSeries.coe_substAlgHom hψ,
      Formalism.G.LogP.subst2_subst _ (Formalism.L2.Th1.B.law_constantCoeff_subst2 _ hF _ _ (cX 0) (cX 1)) (cX 2) hψ,
      Formalism.G.LogP.subst2_subst _ (cX 0) (cX 2) hψ, Formalism.G.LogP.subst2_subst _ (cX 1) (cX 2) hψ,
      Formalism.G.LogP.subst2_subst _ (cX 0) (cX 1) hψ]
    simp only [MvPowerSeries.subst_X hψ]
    simp
    ring

theorem biaddInert_of (hS : SigmaCurveInert) : BiaddInert := by
  intro D p _ cc δ g hA h5 hI hW
  obtain ⟨s2, -, hR⟩ := hS D p cc δ g hA h5 hI hW
  have hOk : g.Ok := hA.2.2.2.2
  exact biadd_of_ph g hOk (by omega) s2 (formal_phase_agree p g s2 hOk hR)

theorem ringB_eq_Wp : Formalism.L2.Th1.D.ringB p = Wp p := by
  unfold Formalism.L2.Th1.D.ringB Formalism.L2.Th1.D.ringA Formalism.L2.Th1.D.muPrime Wp
  congr 2
  ext ζ
  simp only [Set.mem_ofPred_eq]
  constructor
  · rintro ⟨n, hn, hd, hz⟩
    exact ⟨n, hn, Nat.coprime_comm.1 ((Nat.Prime.coprime_iff_not_dvd Fact.out).2 hd), hz⟩
  · rintro ⟨n, hn, hc, hz⟩
    exact ⟨n, hn, (Nat.Prime.coprime_iff_not_dvd Fact.out).1 (Nat.coprime_comm.1 hc), hz⟩

theorem kur_of_Wp {x : ℂ_[p]} (hx : x ∈ Wp p) : x ∈ Formalism.L2.Th1.CM.MaximalUnramifiedExtension p := by
  rw [← ringB_eq_Wp] at hx
  exact (((Formalism.L2.Th1.D.kurIntegers p).1 x).1 hx).1

theorem inWf_of_kur {x : ℂ_[p]} (hx : x ∈ Formalism.L2.Th1.CM.MaximalUnramifiedExtension p) : InWf x := by
  have hp1 : ‖(p : ℂ_[p])‖ < 1 := by
    have := Formalism.MainNotions.Ext.CutA.norm_int_cp_lt_one (p := p) (p : ℤ) dvd_rfl
    simpa using this
  obtain ⟨k, hk⟩ : ∃ k : ℕ, ‖(p : ℂ_[p])‖ ^ k * ‖x‖ ≤ 1 := by
    rcases eq_or_ne x 0 with h | h
    · exact ⟨0, by simp [h]⟩
    · obtain ⟨k, hk⟩ := exists_pow_lt_of_lt_one (inv_pos.2 (norm_pos_iff.2 h)) hp1
      refine ⟨k, ?_⟩
      have := mul_lt_mul_of_pos_right hk (norm_pos_iff.2 h)
      rw [inv_mul_cancel₀ (norm_ne_zero_iff.2 h)] at this
      exact this.le
  refine ⟨k, ?_⟩
  rw [← ringB_eq_Wp]
  refine ((Formalism.L2.Th1.D.kurIntegers p).1 _).2 ⟨?_, ?_⟩
  · exact (Formalism.L2.Th1.CM.MaximalUnramifiedExtension p).mul_mem ((Formalism.L2.Th1.CM.MaximalUnramifiedExtension p).pow_mem (natCast_mem _ p) k) hx
  · rw [norm_mul, norm_pow]
    exact hk

theorem coefWf_phW (W : WeierstrassCurve ℂ_[p]) (h1 : W.a₁ ∈ Formalism.L2.Th1.CM.MaximalUnramifiedExtension p)
    (h2 : W.a₂ ∈ Formalism.L2.Th1.CM.MaximalUnramifiedExtension p) (h3 : W.a₃ ∈ Formalism.L2.Th1.CM.MaximalUnramifiedExtension p) (h4 : W.a₄ ∈ Formalism.L2.Th1.CM.MaximalUnramifiedExtension p)
    (h6 : W.a₆ ∈ Formalism.L2.Th1.CM.MaximalUnramifiedExtension p) {s2 : ℂ_[p]} (hs : s2 ∈ Formalism.L2.Th1.CM.MaximalUnramifiedExtension p) :
    CoefWf (Formalism.L2.Th1.B.phW W s2 : MvPowerSeries Unit ℂ_[p]) := by
  let K := Formalism.L2.Th1.CM.MaximalUnramifiedExtension p
  let W' : WeierstrassCurve K := ⟨⟨W.a₁, h1⟩, ⟨W.a₂, h2⟩, ⟨W.a₃, h3⟩, ⟨W.a₄, h4⟩, ⟨W.a₆, h6⟩⟩
  have hWW : W'.map K.subtype = W := rfl
  obtain ⟨hl, -, hwp, -, -⟩ := Formalism.L2.Th1.A.zMap K ℂ_[p] K.subtype W'
  obtain ⟨h0, h1', -, -⟩ := Formalism.L2.Th1.A.logSpec K W'
  have hB := (_root_.Formalism.L2.Th1.B.Map.baseChangeCompatible K ℂ_[p] K.subtype ⟨s2, hs⟩ 0 0 (Formalism.L2.Th1.A.wpReg W') 0
    (Formalism.L2.Th1.A.logSer W') 0 h0 h1' (by simp)).2.2.2.2.1
  have e : Formalism.L2.Th1.B.phW W s2 =
      PowerSeries.map K.subtype (Formalism.L2.Th1.B.phO ⟨s2, hs⟩ (Formalism.L2.Th1.A.wpReg W') (Formalism.L2.Th1.A.logSer W')) := by
    rw [hB, hl, hwp, hWW]
    rfl
  intro n
  rw [e]
  refine inWf_of_kur ?_
  rw [show MvPowerSeries.coeff n (PowerSeries.map K.subtype
      (Formalism.L2.Th1.B.phO ⟨s2, hs⟩ (Formalism.L2.Th1.A.wpReg W') (Formalism.L2.Th1.A.logSer W')) : MvPowerSeries Unit ℂ_[p]) =
      K.subtype (MvPowerSeries.coeff n (Formalism.L2.Th1.B.phO ⟨s2, hs⟩ (Formalism.L2.Th1.A.wpReg W')
        (Formalism.L2.Th1.A.logSer W') : MvPowerSeries Unit K)) from MvPowerSeries.coeff_map _ _ _]
  exact (MvPowerSeries.coeff n _ : K).2

theorem phWAll_of (hS : SigmaCurveInert) : PhWAll := by
  intro D p _ cc δ g hA h5 hI hW
  obtain ⟨s2, hs, hR⟩ := hS D p cc δ g hA h5 hI hW
  rw [formal_phase_agree p g s2 hA.2.2.2.2 hR]
  obtain ⟨w1, w2, w3, w4, w6⟩ := hW
  exact coefWf_phW g.W (kur_of_Wp w1) (kur_of_Wp w2) (kur_of_Wp w3) (kur_of_Wp w4) (kur_of_Wp w6) hs

end

end Formalism.L2.KerInert.Dict

namespace Formalism.L2.KerInert

theorem beWInert_of_sigma (hS : Dict.SigmaCurveInert) (hE : EndIntInert) (hN : PhNormOKInert) : BeWInert :=
  beWInert_of (Dict.phWAll_of hS) hE (Dict.biaddInert_of hS) hN

end Formalism.L2.KerInert
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeWInertOfSigma =====
