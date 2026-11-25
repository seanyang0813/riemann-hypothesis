module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.VolPinAsm
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LatBAsm
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ChartCG
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.AtNormRep
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModel
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexFiniteNonzero
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.StClosed
public import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DiagMulOfBt
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.NatSmulMem
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBStable
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.NegOnePowMulSelf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.SgmPinvEq
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfLat
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexAStable
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBCongruence
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermCarrierStability.TermStableHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.VolPinG
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BlkOfOfPtEntry
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LtOfBlkOfLt
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPf
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfGrp
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfQ
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TermAttrConst

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.CovolOne3CHolds, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DeltaAE, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.Development, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.InvMulMemOfScaledEntriesCongr, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBBounded, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfCong, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.VolIdxFinP, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.VolumeDeterminedOfChart

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.CovolOne3CHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.CovolOne3CHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.VolPinAsm\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LatBAsm\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ChartCG\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.NGCut.StabilizerCovolume

theorem covolOne3C_holds : Formalism.L2.SG.Pf.VolPinAsm.CovolOne3C :=
  covolOne3C_of Formalism.L2.S.Pv.Chart.chartC_holds (stabilizerLatticeCoordinates_of Formalism.L2.SG.LatBAsm.stabilizer_lattice_twisted_prod)

end Formalism.L2.SG.NGCut.StabilizerCovolume
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.CovolOne3CHolds =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DeltaAE =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DeltaAE", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.AtNormRep\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LocModel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.LocalSplitGroups ValuativeRel

namespace Formalism.L2.SG.Pf.StabilizerIndexVolumes

theorem deltaAE_holds (D : D7) (δ : ∀ p : PlF D, (D.s.atP p).Fp)
    (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep) : DeltaAE D δ M := by
  intro hA
  have h := Formalism.L2.SG.Pf.LocModel.good_cofinite δ M hA ∅
  rw [Filter.eventually_cofinite] at h
  refine h.subset fun p hp => ?_
  intro hg
  apply hp
  have hδ : δ p ≠ 0 := (hA p).2.1
  have hu : IsUnit (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)) := (isUnit_iff_ne_zero.2 hδ).map _
  have e1 : algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)⁻¹ * algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p) = 1 := by
    rw [← map_mul, inv_mul_cancel₀ hδ, map_one]
  have hinv : Ring.inverse (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)) =
      algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)⁻¹ := by
    calc Ring.inverse (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p))
        = Ring.inverse (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)) *
            (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p) * algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)⁻¹) := by
          rw [mul_comm (algebraMap _ _ (δ p)), e1, mul_one]
      _ = (Ring.inverse (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)) *
            algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)) * algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)⁻¹ := by
          rw [mul_assoc]
      _ = _ := by rw [Ring.inverse_mul_cancel _ hu, one_mul]
  rw [hinv, (D.s.atP p).O_def]
  have hmem : (δ p)⁻¹ ∈ 𝒪[(D.s.atP p).Fp] := hg.2.1.2
  have : algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (δ p)⁻¹ =
      algebraMap 𝒪[(D.s.atP p).Fp] (D.s.atP p).Ep ⟨(δ p)⁻¹, hmem⟩ := rfl
  rw [this]
  exact isIntegral_algebraMap

end Formalism.L2.SG.Pf.StabilizerIndexVolumes
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DeltaAE =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.Development =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.Development", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexFiniteNonzero\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.AtNormRep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef Formalism.L2.SG.PairVal

namespace Formalism.L2.SG.Pf.StabilizerIndexVolumes

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem volume_index_finite_of_hyps (D : D7) (u u' : D.what₂.Word)
    (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E))
    (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V))
    (δ : ∀ p : Formalism.MainNotions.S.LocalSplitGroups.PlF D, (D.s.atP p).Fp)
    (M : ∀ p : Formalism.MainNotions.S.LocalSplitGroups.PlF D, Formalism.MainNotions.S.Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep)
    (hyps : Hyps D u u' F0 what₂)
    (hC : Commens) (hSt : StClosed) (hDel : DeltaAE D δ M)
    (hAin : AinSt D u u' F0 what₂ δ M) (hAbdd : ABddOf D u u' F0 what₂ δ M) (hAcong : ACong D u u' F0 what₂ δ M)
    (hBin : BinSt D u u' F0 what₂ δ M) (hBbdd : BBdd D u u' F0 what₂ δ M) (hBcong : BCong D u u' F0 what₂ δ M) :
    Formalism.L2.SG.Pf.StabilizerIndexVolumes.VolumeIndexFiniteNonzero D u u' F0 what₂ δ M := by
  intro hAg t w F' L U hr hg hN hG
  exact ⟨hC _ _ _ _ _ (hAin hSt hyps hAg t w F' L U hr hg hN hG) (hAbdd hDel hyps hAg t w F' L U hr hg hN hG)
      (hBcong hyps hAg t w F' L U hr hg hN hG),
    hC _ _ _ _ _ (hBin hSt hyps hAg t w F' L U hr hg hN hG) (hBbdd hyps hAg t w F' L U hr hg hN hG)
      (hAcong hyps hAg t w F' L U hr hg hN hG)⟩

end Formalism.L2.SG.Pf.StabilizerIndexVolumes
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.Development =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.InvMulMemOfScaledEntriesCongr =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.InvMulMemOfScaledEntriesCongr", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.StClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix

namespace Formalism.L2.SG.Pf.StabilizerIndexVolumes

variable {E : Type} [Field E] [NumberField E] {n : ℕ}

theorem inv_mul_mem_of_scaled_entries_congr (W : Matrix (Fin n) (Fin n) E) (H K : Subgroup (Matrix.GeneralLinearGroup (Fin n) E))
    (hHS : (H : Set (Matrix.GeneralLinearGroup (Fin n) E)) ⊆ StSet W) (N0 : ℕ) (hN0 : N0 ≠ 0)
    (hbd : ∀ h ∈ H, ∀ i j, IntE ((N0 : E) * (h : Matrix (Fin n) (Fin n) E) i j)) (N1 : ℕ) (hN1 : N1 ≠ 0)
    (hcg : ∀ a : Matrix.GeneralLinearGroup (Fin n) E, a ∈ StSet W →
      (∀ i j, IntE (((a : Matrix (Fin n) (Fin n) E) i j - (1 : Matrix (Fin n) (Fin n) E) i j) / (N1 : E))) → a ∈ K)
    (h1 h2 : Matrix.GeneralLinearGroup (Fin n) E) (hh1 : h1 ∈ H) (hh2 : h2 ∈ H)
    (c : Fin n → Fin n → 𝓞 E)
    (hc : ∀ k j, ((c k j : 𝓞 E) : E) * ((N0 * N0 * N1 : ℕ) : E) =
      (N0 : E) * (h2 : Matrix (Fin n) (Fin n) E) k j - (N0 : E) * (h1 : Matrix (Fin n) (Fin n) E) k j) :
    h1⁻¹ * h2 ∈ K := by
  have hN0E : (N0 : E) ≠ 0 := by exact_mod_cast hN0
  have hN1E : (N1 : E) ≠ 0 := by exact_mod_cast hN1
  apply hcg _ (hHS (H.mul_mem (H.inv_mem hh1) hh2))
  intro i j
  have hinv := hbd _ (H.inv_mem hh1)
  choose p hp using hinv
  refine ⟨∑ k, p i k * c k j, ?_⟩
  have hsub : ((h1⁻¹ * h2 : Matrix.GeneralLinearGroup (Fin n) E) : Matrix (Fin n) (Fin n) E) - 1 =
      ((h1⁻¹ : Matrix.GeneralLinearGroup (Fin n) E) : Matrix (Fin n) (Fin n) E) *
        ((h2 : Matrix (Fin n) (Fin n) E) - (h1 : Matrix (Fin n) (Fin n) E)) := by
    rw [Matrix.mul_sub, Units.val_mul, Units.inv_mul]
  have hent := congrFun (congrFun hsub i) j
  rw [Matrix.sub_apply] at hent
  have hcast : ((∑ k, p i k * c k j : 𝓞 E) : E) = ∑ k, (p i k : E) * (c k j : E) := by push_cast; rfl
  rw [hent, Matrix.mul_apply, Finset.sum_div, hcast]
  refine Finset.sum_congr rfl fun k _ => ?_
  have hpk := hp i k
  have hck := hc k j
  push_cast at hck
  have hX : ((h1⁻¹ : Matrix.GeneralLinearGroup (Fin n) E) : Matrix (Fin n) (Fin n) E) i k =
      (p i k : E) / N0 := by
    rw [hpk]; field_simp
  have hD : (h2 : Matrix (Fin n) (Fin n) E) k j - (h1 : Matrix (Fin n) (Fin n) E) k j =
      (c k j : E) * (N0 * N1) := by
    have : (N0 : E) * ((h2 : Matrix (Fin n) (Fin n) E) k j - (h1 : Matrix (Fin n) (Fin n) E) k j) =
        (N0 : E) * ((c k j : E) * (N0 * N1)) := by rw [mul_sub, ← hck]; ring
    exact mul_left_cancel₀ hN0E this
  rw [hX, Matrix.sub_apply, hD]
  field_simp

theorem commens : Commens := by
  intro E _ _ n W H K hHS ⟨N0, hN0, hbd⟩ ⟨N1, hN1, hcg⟩
  have hM0 : ((N0 * N0 * N1 : ℕ) : 𝓞 E) ≠ 0 := by
    exact_mod_cast (Nat.mul_ne_zero (Nat.mul_ne_zero hN0 hN0) hN1)
  have hI : Ideal.span {((N0 * N0 * N1 : ℕ) : 𝓞 E)} ≠ ⊥ := by
    simpa [Ideal.span_singleton_eq_bot] using hM0
  have : Finite (𝓞 E ⧸ Ideal.span {((N0 * N0 * N1 : ℕ) : 𝓞 E)}) :=
    Ideal.finiteQuotientOfFreeOfNeBot _ hI
  choose o ho using hbd
  let φ : H → Fin n → Fin n → 𝓞 E ⧸ Ideal.span {((N0 * N0 * N1 : ℕ) : 𝓞 E)} :=
    fun h i j => Ideal.Quotient.mk _ (o h h.2 i j)
  have key : ∀ h1 h2 : H, φ h1 = φ h2 → h1⁻¹ * h2 ∈ K.subgroupOf H := by
    intro h1 h2 hq
    have hc : ∀ k j, ∃ c : 𝓞 E, c * ((N0 * N0 * N1 : ℕ) : 𝓞 E) = o h2 h2.2 k j - o h1 h1.2 k j := by
      intro k j
      have := congrFun (congrFun hq k) j
      simp only [φ] at this
      exact Ideal.mem_span_singleton'.mp (Ideal.Quotient.eq.mp this.symm)
    choose c hc using hc
    rw [Subgroup.mem_subgroupOf]
    simp only [Subgroup.coe_mul, Subgroup.coe_inv]
    refine inv_mul_mem_of_scaled_entries_congr W H K hHS N0 hN0 (fun h hh i j => ⟨o h hh i j, ho h hh i j⟩) N1 hN1 hcg _ _ h1.2 h2.2 c
      fun k j => ?_
    have h3 := congrArg (fun x : 𝓞 E => (x : E)) (hc k j)
    have e1 : ((c k j * ((N0 * N0 * N1 : ℕ) : 𝓞 E) : 𝓞 E) : E) = (c k j : E) * ((N0 * N0 * N1 : ℕ) : E) := by
      push_cast; rfl
    have e2 : ((o h2 h2.2 k j - o h1 h1.2 k j : 𝓞 E) : E) = (o h2 h2.2 k j : E) - (o h1 h1.2 k j : E) := by
      push_cast; rfl
    rw [← e1, h3, e2, ho, ho]
  have : Finite (H ⧸ K.subgroupOf H) := by
    refine Finite.of_injective (fun q : H ⧸ K.subgroupOf H => φ (Quotient.out q)) ?_
    intro q1 q2 hq
    have := (QuotientGroup.eq (s := K.subgroupOf H)).mpr (key _ _ hq)
    simpa [QuotientGroup.out_eq'] using this
  exact Subgroup.index_ne_zero_of_finite

end Formalism.L2.SG.Pf.StabilizerIndexVolumes
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.InvMulMemOfScaledEntriesCongr =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBBounded =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBBounded", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.AtNormRep\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DiagMulOfBt\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.NatSmulMem\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef Formalism.L2.SG.PairVal Matrix

namespace Formalism.L2.SG.Pf.StabilizerIndexVolumes

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {n : ℕ}

def Xi (Λ : Submodule (𝓞 E) S.V) (f : Fin n → S.V) (x : Fin n → E) : Prop := ∑ c, x c • f c ∈ Λ

def Pres (Λ : Submodule (𝓞 E) S.V) (f : Fin n → S.V) (g : Matrix (Fin n) (Fin n) E) : Prop :=
  ∀ x, Xi Λ f x → Xi Λ f (g *ᵥ x)

theorem comp_sum (f : Fin n → S.V) (s : S.V ≃ₗ[E] S.V) (uu : Matrix (Fin n) (Fin n) E)
    (hu : ∀ b, s (f b) = ∑ c, uu c b • f c) (y : Fin n → E) :
    ∑ c, (uu *ᵥ y) c • f c = s (∑ b, y b • f b) := by

  rw [map_sum]
  simp only [LinearEquiv.map_smul, hu, Finset.smul_sum, smul_smul, Matrix.mulVec, dotProduct,
    Finset.sum_smul]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by rw [mul_comm]

theorem pres_one (Λ : Submodule (𝓞 E) S.V) (f : Fin n → S.V) : Pres Λ f 1 := by
  intro x hx; simpa using hx

theorem pres_mul (Λ : Submodule (𝓞 E) S.V) (f : Fin n → S.V) {A B : Matrix (Fin n) (Fin n) E}
    (hA : Pres Λ f A) (hB : Pres Λ f B) : Pres Λ f (A * B) := by
  intro x hx; rw [← Matrix.mulVec_mulVec]; exact hA _ (hB _ hx)

theorem pres_of_aut (Λ : Submodule (𝓞 E) S.V) (f : Fin n → S.V) (s : S.V ≃ₗ[E] S.V)
    (hs : Formalism.HermitianLatticesTheory.gmap s Λ = Λ) (uu : Matrix (Fin n) (Fin n) E) (hu : ∀ b, s (f b) = ∑ c, uu c b • f c)
    (hdet : IsUnit uu.det) : Pres Λ f uu ∧ Pres Λ f uu⁻¹ := by
  refine ⟨fun x hx => ?_, fun x hx => ?_⟩
  · unfold Xi at hx ⊢
    rw [comp_sum f s uu hu x, ← hs]
    exact Submodule.mem_map_of_mem hx
  · unfold Xi at hx ⊢
    rw [← hs] at hx
    obtain ⟨w, hw, hsw⟩ := Submodule.mem_map.mp hx
    have h1 : s (∑ c, (uu⁻¹ *ᵥ x) c • f c) = s w := by
      rw [← comp_sum f s uu hu, Matrix.mulVec_mulVec, mul_nonsing_inv _ hdet, Matrix.one_mulVec]
      exact hsw.symm
    rw [s.injective h1]; exact hw

end Gen

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem volume_index_b_bounded (D : D7) (u u' : D.what₂.Word)
    (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E))
    (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V))
    (δ : ∀ p : Formalism.MainNotions.S.LocalSplitGroups.PlF D, (D.s.atP p).Fp)
    (M : ∀ p : Formalism.MainNotions.S.LocalSplitGroups.PlF D, Formalism.MainNotions.S.Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep) :
    BBdd D u u' F0 what₂ δ M := by
  intro hyps _ t w F' L U _ _ hN _
  obtain ⟨_, _, hL, _, _⟩ := hN
  have hT : ((Tu D u : ℕ) : D.host.E) ≠ 0 := by
    have := hyps.2.2.2.1.1.pos
    exact_mod_cast this.ne'
  have hlat : Submodule.IsFullLattice D.host.E t.lam := (hyps.2.2.2.2.2.1 t.lam t.mem).1.1
  have hf := frame_indep F0 hT
  have hLi : L⁻¹ * L = 1 := nonsing_inv_mul _ (by rw [lo_det hL]; exact isUnit_one)
  have hLL : L * L⁻¹ = 1 := mul_nonsing_inv _ (by rw [lo_det hL]; exact isUnit_one)

  have key : ∀ a ∈ stabAut D u u' F0 what₂ t F' L, ∃ g : GLR D, Pres t.lam F0.fvec (g : MatR D) ∧
      Pres t.lam F0.fvec ((g⁻¹ : GLR D) : MatR D) ∧ (a : MatR D) = L⁻¹ * (g : MatR D).conjTranspose * L := by
    intro a ha
    induction ha using Subgroup.closure_induction with
    | mem x hx =>
      obtain ⟨s, ⟨hsF, _⟩, uu, huu, hx⟩ := hx
      obtain ⟨⟨_, hgm⟩, hf1, hf2⟩ := hsF
      obtain ⟨uu0, huu0, hu0⟩ := tri_exists F0 s hf1 hf2
      have heq : uu = uu0 := coef_unique hf (fun b => s (F0.fvec b)) uu uu0 huu hu0
      subst heq
      have hdet : IsUnit uu.det := by rw [up_det huu0]; exact isUnit_one
      obtain ⟨h1, h2⟩ := pres_of_aut t.lam F0.fvec s hgm uu huu hdet
      refine ⟨Matrix.nonsingInvUnit uu hdet, h1, ?_, hx⟩
      rw [Matrix.coe_units_inv]; exact h2
    | one =>
      refine ⟨1, pres_one _ _, by simpa using pres_one t.lam F0.fvec, ?_⟩
      simp [hLi]
    | mul x y _ _ hx hy =>
      obtain ⟨g1, h11, h12, e1⟩ := hx
      obtain ⟨g2, h21, h22, e2⟩ := hy
      refine ⟨g2 * g1, ?_, ?_, ?_⟩
      · rw [Units.val_mul]; exact pres_mul _ _ h21 h11
      · rw [_root_.mul_inv_rev, Units.val_mul]; exact pres_mul _ _ h12 h22
      · rw [Units.val_mul, Units.val_mul, e1, e2, Matrix.conjTranspose_mul]
        calc L⁻¹ * (g1 : MatR D).conjTranspose * L * (L⁻¹ * (g2 : MatR D).conjTranspose * L)
            = L⁻¹ * (g1 : MatR D).conjTranspose * (L * L⁻¹) * (g2 : MatR D).conjTranspose * L := by
              simp only [Matrix.mul_assoc]
          _ = L⁻¹ * ((g1 : MatR D).conjTranspose * (g2 : MatR D).conjTranspose) * L := by
              rw [hLL, Matrix.mul_one]; simp only [Matrix.mul_assoc]
    | inv x _ hx =>
      obtain ⟨g, h1, h2, e⟩ := hx
      refine ⟨g⁻¹, h2, by rw [inv_inv]; exact h1, ?_⟩
      rw [Matrix.coe_units_inv, e]
      apply Matrix.inv_eq_left_inv
      have hg : ((g⁻¹ : GLR D) : MatR D).conjTranspose * (g : MatR D).conjTranspose = 1 := by
        rw [← Matrix.conjTranspose_mul, ← Units.val_mul, mul_inv_cancel, Units.val_one,
          Matrix.conjTranspose_one]
      calc L⁻¹ * ((g⁻¹ : GLR D) : MatR D).conjTranspose * L * (L⁻¹ * (g : MatR D).conjTranspose * L)
          = L⁻¹ * ((g⁻¹ : GLR D) : MatR D).conjTranspose * (L * L⁻¹) * (g : MatR D).conjTranspose * L := by
            simp only [Matrix.mul_assoc]
        _ = L⁻¹ * (((g⁻¹ : GLR D) : MatR D).conjTranspose * (g : MatR D).conjTranspose) * L := by
            rw [hLL, Matrix.mul_one]; simp only [Matrix.mul_assoc]
        _ = 1 := by rw [hg, Matrix.mul_one, hLi]

  obtain ⟨φ, hφ⟩ := coord_exists hf
  obtain ⟨m1, hm1, hb1⟩ := lat_fun_bdd t.lam hlat.toIsLattice φ
  have hmc : ∀ c, ∃ m : ℕ, m ≠ 0 ∧ (m : D.host.E) • F0.fvec c ∈ t.lam := fun c => lat_smul_mem t.lam hlat _
  choose mc hmc0 hmcL using hmc
  set m2 : ℕ := ∏ c, mc c with hm2
  have hm20 : m2 ≠ 0 := Finset.prod_ne_zero_iff.mpr fun c _ => hmc0 c
  have hm2L : ∀ c, (m2 : D.host.E) • F0.fvec c ∈ t.lam := by
    intro c
    have : (m2 : D.host.E) • F0.fvec c = ((∏ j ∈ Finset.univ.erase c, mc j : ℕ) : D.host.E) • ((mc c : D.host.E) • F0.fvec c) := by
      rw [smul_smul, hm2, ← Finset.mul_prod_erase Finset.univ mc (Finset.mem_univ c)]; push_cast; ring_nf
    rw [this]; exact nat_smul_mem _ _ (hmcL c)
  have hcoord : ∀ y : Fin (D.R.rS + 1) → D.host.E, ∀ i, φ i (∑ c, y c • F0.fvec c) = y i := by
    intro y i

    simp [map_sum, hφ]
  obtain ⟨mL, hmL, hbL⟩ := den_mat L
  obtain ⟨mL', hmL', hbL'⟩ := den_mat L⁻¹
  refine ⟨mL' * (m1 * m2) * mL, by positivity, ?_⟩
  intro a ha i j
  obtain ⟨g, hg, _, hag⟩ := key a ha
  have hgb : ∀ i j, IntE (((m1 * m2 : ℕ) : D.host.E) * (g : MatR D) i j) := by
    intro i j
    let x : Fin (D.R.rS + 1) → D.host.E := fun k => if k = j then (m2 : D.host.E) else 0
    have hx : Xi t.lam F0.fvec x := by
      unfold Xi
      simp only [x, ite_smul, zero_smul, Finset.sum_ite_eq', Finset.mem_univ, if_true]
      exact hm2L j
    have h1 := hb1 _ (hg x hx) i
    rw [hcoord] at h1
    have h2 : ((g : MatR D) *ᵥ x) i = (g : MatR D) i j * (m2 : D.host.E) := by
      simp [x, Matrix.mulVec, dotProduct]
    rw [h2] at h1
    have h3 : ((m1 * m2 : ℕ) : D.host.E) * (g : MatR D) i j = (m1 : D.host.E) * ((g : MatR D) i j * (m2 : D.host.E)) := by
      push_cast; ring
    rw [h3]; exact h1
  have hgt : ∀ i j, IntE (((m1 * m2 : ℕ) : D.host.E) * (g : MatR D).conjTranspose i j) := by
    intro i j
    have := intE_star (hgb j i)
    rw [star_mul', star_natCast] at this
    simpa [Matrix.conjTranspose_apply] using this
  have h4 := intE_matmul (intE_matmul hbL' hgt) hbL i j
  rw [hag]; exact h4

end Formalism.L2.SG.Pf.StabilizerIndexVolumes
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBBounded =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfCong =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfCong", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.AtNormRep\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.NegOnePowMulSelf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LtOfBlkOfLt\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.SgmPinvEq\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfGrp\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfLat\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfQ\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.PairVal Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.PtCell Formalism.L2.SG.RealObj
  Formalism.L2.SG.Pf.BlockPermutation Formalism.L2.SG.Pf.StabIntSh Formalism.L2.SG.Pf.StabIntLat

namespace Formalism.L2.SG.Pf.StabIntCong

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

theorem intE_iff (x : D.host.E) : Formalism.L2.SG.Pf.StabilizerIndexVolumes.IntE x ↔ x ∈ (1 : FI D) := by
  rw [FractionalIdeal.mem_one_iff]
  exact ⟨fun ⟨o, h⟩ => ⟨o, h⟩, fun ⟨o, h⟩ => ⟨o, h⟩⟩

theorem one_mem_one_FI : (1 : D.host.E) ∈ (1 : FI D) := (FractionalIdeal.mem_one_iff _).2 ⟨1, map_one _⟩

theorem natCast_mem_one_FI (n : ℕ) : (n : D.host.E) ∈ (1 : FI D) := (FractionalIdeal.mem_one_iff _).2 ⟨n, map_natCast _ _⟩

theorem mul_mem_one_FI {x y : D.host.E} (hx : x ∈ (1 : FI D)) (hy : y ∈ (1 : FI D)) : x * y ∈ (1 : FI D) := by
  have := FractionalIdeal.mul_mem_mul hx hy; rwa [one_mul] at this

abbrev ddI (D : D7) : Ideal (𝓞 D.host.E) :=
  Ideal.map (algebraMap (𝓞 D.host.F) (𝓞 D.host.E)) (differentIdeal ℤ (𝓞 D.host.F))

theorem ddS_eq : ddS D = (ddI D : FI D) := rfl

theorem ddS_pow_le_one (h : ℕ) : ddS D ^ h ≤ 1 := by
  rw [ddS_eq, ← FractionalIdeal.coeIdeal_pow]; exact FractionalIdeal.coeIdeal_le_one

theorem one_le_ddPow (h : ℕ) : (1 : FI D) ≤ ddPow D h := by
  unfold ddPow
  rw [zpow_neg, zpow_natCast]
  have := FractionalIdeal.inv_anti_mono (pow_ne_zero h (ddS_ne (D := D))) (ddS_pow_le_one (D := D) h)
  rwa [inv_one] at this

theorem mem_dd_of_int {h : ℕ} {x : D.host.E} (hx : x ∈ (1 : FI D)) : x ∈ ddPow D h := one_le_ddPow h hx

theorem mem_qd_of_qq {h : ℕ} {x : D.host.E} (hx : x ∈ (qq D : FI D)) : x ∈ qdPow D h := by
  unfold qdPow
  have := FractionalIdeal.mul_mem_mul hx (mem_dd_of_int (h := h) one_mem_one_FI)
  rwa [mul_one] at this

theorem mul_mem_qq {x y : D.host.E} (hx : x ∈ (1 : FI D)) (hy : y ∈ (qq D : FI D)) : x * y ∈ (qq D : FI D) := by
  have := FractionalIdeal.mul_mem_mul hx hy; rwa [one_mul] at this

theorem qq_le_one {x : D.host.E} (hx : x ∈ (qq D : FI D)) : x ∈ (1 : FI D) := FractionalIdeal.coeIdeal_le_one hx

theorem gS_mem_qqE (x : D.host.E) (hx : x ∈ (1 : FI D)) : ((gS D : ℕ) : D.host.E) * x ∈ (qq D : FI D) := by
  obtain ⟨o, rfl⟩ := (FractionalIdeal.mem_one_iff _).1 hx
  rw [FractionalIdeal.mem_coeIdeal]
  exact ⟨(gS D : ℕ) * o, Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _), by simp⟩

theorem conjF_mem_one_FI {x : D.host.E} (hx : x ∈ (1 : FI D)) : D.conjF x ∈ (1 : FI D) := by
  obtain ⟨o, rfl⟩ := (FractionalIdeal.mem_one_iff _).1 hx
  rw [FractionalIdeal.mem_one_iff]
  have hi : IsIntegral ℤ (D.conjF (algebraMap (𝓞 D.host.E) D.host.E o)) :=
    (RingOfIntegers.isIntegral_coe o).map (D.conjF.toRingHom.toIntAlgHom)
  exact ⟨⟨_, hi⟩, rfl⟩

theorem conj_mem_qq {x : D.host.E} (hx : x ∈ (qq D : FI D)) : D.conjF x ∈ (qq D : FI D) := by
  obtain ⟨o, ho, rfl⟩ := (FractionalIdeal.mem_coeIdeal _).1 hx
  obtain ⟨t, rfl⟩ := Ideal.mem_span_singleton'.1 ho
  have ht : D.conjF (algebraMap (𝓞 D.host.E) D.host.E t) ∈ (1 : FI D) :=
    conjF_mem_one_FI ((FractionalIdeal.mem_one_iff _).2 ⟨t, rfl⟩)
  rw [map_mul, map_mul, map_natCast, map_natCast, mul_comm]
  exact gS_mem_qqE _ ht

theorem absNorm_mem_ideal : ((Ideal.absNorm (ddI D) : ℕ) : D.host.E) ∈ ddS D := by
  rw [ddS_eq, FractionalIdeal.mem_coeIdeal]
  exact ⟨_, Ideal.absNorm_mem (ddI D), map_natCast _ _⟩

theorem absNorm_ddI_ne_zero : Ideal.absNorm (ddI D) ≠ 0 := by
  rw [Ne, Ideal.absNorm_eq_zero_iff]
  intro h
  apply ddS_ne (D := D)
  rw [ddS_eq, h, FractionalIdeal.coeIdeal_bot]

theorem pow_mem_ddS (k : ℕ) : ((Ideal.absNorm (ddI D) : ℕ) : D.host.E) ^ k ∈ ddS D ^ k := by
  induction k with
  | zero => simp only [pow_zero]; exact one_mem_one_FI
  | succ k ih => rw [pow_succ, pow_succ]; exact FractionalIdeal.mul_mem_mul ih absNorm_mem_ideal

theorem clear_den (k : ℕ) {x : D.host.E} (hx : x ∈ ddPow D k) :
    ((Ideal.absNorm (ddI D) : ℕ) : D.host.E) ^ k * x ∈ (1 : FI D) := by
  have := FractionalIdeal.mul_mem_mul (pow_mem_ddS k) hx
  unfold ddPow at this
  rwa [← zpow_natCast, ← zpow_add₀ (ddS_ne (D := D)), add_neg_cancel, zpow_zero] at this

theorem aBddOf (u u' : D.what₂.Word) (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E))
    (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)) (δ : ∀ p : PlF D, (D.s.atP p).Fp)
    (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep) :
    Formalism.L2.SG.Pf.StabilizerIndexVolumes.ABddOf D u u' F0 what₂ δ M := by
  intro _ _ hA t w F' L U _ _ _ _
  refine ⟨Ideal.absNorm (ddI D) ^ D.R.rS, pow_ne_zero _ absNorm_ddI_ne_zero, fun h hh i j => ?_⟩
  rw [intE_iff]
  have hS := (stabIntShape D δ M hA u u' w h).1 hh
  obtain ⟨hlo, b, hb, hW, hE⟩ := hS
  push_cast
  rcases lt_trichotomy j i with hji | rfl | hij
  · have hk : i.val - j.val ≤ D.R.rS := by have := i.isLt; omega
    rw [show ((Ideal.absNorm (ddI D) : ℕ) : D.host.E) ^ D.R.rS =
        ((Ideal.absNorm (ddI D) : ℕ) : D.host.E) ^ (D.R.rS - (i.val - j.val)) *
          ((Ideal.absNorm (ddI D) : ℕ) : D.host.E) ^ (i.val - j.val) by
        rw [← pow_add, Nat.sub_add_cancel hk], mul_assoc]
    exact mul_mem_one_FI (by rw [← Nat.cast_pow]; exact natCast_mem_one_FI _) (clear_den _ (hE i j hji).1)
  · rw [(hlo _ _).2 rfl, mul_one, ← Nat.cast_pow]; exact natCast_mem_one_FI _
  · rw [(hlo i j).1 hij, mul_zero]; exact FractionalIdeal.zero_mem _

abbrev Sint (D : D7) : Subring D.host.E := (integralClosure ℤ D.host.E).toSubring

theorem mem_Sint_iff (x : D.host.E) : x ∈ Sint D ↔ x ∈ (1 : FI D) := by
  rw [FractionalIdeal.mem_one_iff]
  constructor
  · intro h; exact ⟨⟨x, h⟩, rfl⟩
  · rintro ⟨o, rfl⟩; exact o.2

theorem sign_mem_one (a c : Fin (D.R.rS + 1)) : (sgm a c : D.host.E) ∈ (1 : FI D) := by
  rcases sgm_cases a c with e | e
  · rw [e]; exact one_mem_one_FI
  · rw [e]; exact (1 : FI D).coeToSubmodule.neg_mem one_mem_one_FI

theorem aCong (u u' : D.what₂.Word) (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E))
    (what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)) (δ : ∀ p : PlF D, (D.s.atP p).Fp)
    (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep) :
    Formalism.L2.SG.Pf.StabilizerIndexVolumes.ACong D u u' F0 what₂ δ M := by
  intro _ hA t w F' L U _ _ _ _
  refine ⟨gS D, fun h0 => gS_ne (D := D) (by rw [h0]; simp), fun a ha hc => ?_⟩
  obtain ⟨hlo, b, hb, hW⟩ := ha
  have hq : ∀ i j, (a : MatR D) i j - (1 : MatR D) i j ∈ (qq D : FI D) := by
    intro i j
    have h1 := (intE_iff _).1 (hc i j)
    have := gS_mem_qqE _ h1
    rwa [mul_div_cancel₀ _ gS_ne] at this
  rw [mem_stabInt_iff_X δ M hA u u' w a hlo hb hW]
  obtain ⟨-, hU, hB⟩ := X_of_st w hlo hb hW
  set X := (ptMat w)⁻¹ * (a : MatR D) * ptMat w with hXdef
  have hXe : ∀ c d, X c d - (1 : MatR D) c d ∈ (qq D : FI D) := by
    intro c d
    by_cases hs : blkOf w.1 c.val = blkOf w.1 d.val
    · have hcv : cv w c = cv w d := pval_eq_blk w c d hs
      have hone : (1 : MatR D) c d = (1 : MatR D) (pinv w c) (pinv w d) := by
        by_cases hcd : c = d
        · rw [hcd]; simp
        · have : pinv w c ≠ pinv w d := fun e => hcd (pinv_inj w e)
          rw [Matrix.one_apply_ne hcd, Matrix.one_apply_ne this]
      rw [hXdef, Formalism.L2.SG.Pf.BlockPermutation.conj_apply, hcv, mul_comm, ← mul_assoc, mul_inv_cancel₀ (cv_ne w d), one_mul, hone]
      exact hq _ _
    · have hcd : c ≠ d := fun e => hs (by rw [e])
      rw [hB c d hs, Matrix.one_apply_ne hcd, sub_zero]
      exact FractionalIdeal.zero_mem _
  have hX1 : ∀ c d, X c d ∈ (1 : FI D) := by
    intro c d
    have := (1 : FI D).coeToSubmodule.add_mem (qq_le_one (hXe c d))
      (show (1 : MatR D) c d ∈ (1 : FI D) by
        by_cases h : c = d
        · rw [h, Matrix.one_apply_eq]; exact one_mem_one_FI
        · rw [Matrix.one_apply_ne h]; exact FractionalIdeal.zero_mem _)
    rwa [sub_add_cancel] at this
  have hXi1 : ∀ c d, X⁻¹ c d ∈ (1 : FI D) := by
    have hL : StabIntGrp.LoIn (Sint D) X.transpose := by
      refine ⟨fun c => (hU c c).2 rfl, fun c d h => (hU d c).1 h, fun c d => (mem_Sint_iff _).2 (hX1 d c)⟩
    have := StabIntGrp.loIn_inv hL
    rw [← Matrix.transpose_nonsing_inv] at this
    intro c d
    exact (mem_Sint_iff _).1 (this.2.2 d c)
  have hXd : IsUnit X.det := by rw [upU_det hU]; exact isUnit_one
  have hXie : ∀ c d, X⁻¹ c d - (1 : MatR D) c d ∈ (qq D : FI D) := by
    have hm : X⁻¹ - 1 = -(X⁻¹ * (X - 1)) := by
      rw [Matrix.mul_sub, Matrix.nonsing_inv_mul _ hXd, Matrix.mul_one, neg_sub]
    intro c d
    rw [← Matrix.sub_apply, hm, Matrix.neg_apply, Matrix.mul_apply]
    refine (qq D : FI D).coeToSubmodule.neg_mem (Submodule.sum_mem _ fun e _ => ?_)
    rw [Matrix.sub_apply]
    exact mul_mem_qq (hXi1 c e) (hXe e d)
  have hPe : ∀ c d, Psi w X⁻¹ c d - (1 : MatR D) c d ∈ (qq D : FI D) := by
    intro c d
    rw [← Matrix.sub_apply, show Psi w X⁻¹ - 1 = Psi w (X⁻¹ - 1) by rw [Psi_sub, Psi_one]]
    simp only [Formalism.L2.SG.Pf.StabIntLat.Psi]
    exact mul_mem_qq (sign_mem_one c d) (conj_mem_qq (by rw [Matrix.sub_apply]; exact hXie _ _))
  rw [← Xmat_coordX w hU hB, condX_iff, Xmat_coordX w hU hB]
  refine ⟨fun q => mem_dd_of_int (hX1 _ _), fun q => mem_qd_of_qq ?_⟩
  rw [Matrix.sub_apply, show X q.1.1 q.1.2 - Psi w X⁻¹ q.1.1 q.1.2 =
    (X q.1.1 q.1.2 - (1 : MatR D) q.1.1 q.1.2) - (Psi w X⁻¹ q.1.1 q.1.2 - (1 : MatR D) q.1.1 q.1.2) by ring]
  exact (qq D : FI D).coeToSubmodule.sub_mem (hXe _ _) (hPe _ _)

end Formalism.L2.SG.Pf.StabIntCong
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfCong =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.VolIdxFinP =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.VolIdxFinP", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.VolPinAsm\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.AtNormRep\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DeltaAE\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.Development\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.DiagMulOfBt\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.InvMulMemOfScaledEntriesCongr\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexAStable\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBBounded\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBCongruence\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StabilizerIndexVolumes.VolumeIndexBStable\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.TermDefPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StabIntPfCong\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TermAttrConst\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermCarrierStability.TermStableHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.HidaSetting Formalism.L2.SG.Full Formalism.L2.SG.PackageTie2

namespace Formalism.L2.SG.Pf.VolPinAsm

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem hyps_of {D : D7} {X : HidaSetting D} (Y : Full X) (u u' : D.what₂.Word) (hPH : PrimeHyp D u (Tu D u')) :
    Formalism.L2.SG.Pf.StabilizerIndexVolumes.Hyps D u u' (X.Fu u) (Y.what₂ u) := by
  refine ⟨PI.TCS.termStable_holds D u u', _root_.term_eq_iff_relation D u u', term_function_const D u u',
    hPH, D.sp.Y_sig 0, Y.rowsOK u⟩

theorem volIdxFinP (D : D7) (X : HidaSetting D) (Y : Full X) (u u' : D.what₂.Word) (hPH : PrimeHyp D u (Tu D u')) :
    Formalism.L2.SG.Pf.StabilizerIndexVolumes.VolumeIndexFiniteNonzero D u u' (X.Fu u) (Y.what₂ u) Y.δ Y.M := Formalism.L2.SG.Pf.StabilizerIndexVolumes.volume_index_finite_of_hyps D u u' (X.Fu u) (Y.what₂ u) Y.δ Y.M (hyps_of Y u u' hPH)
    Formalism.L2.SG.Pf.StabilizerIndexVolumes.commens Formalism.L2.SG.Pf.StabilizerIndexVolumes.stClosed (Formalism.L2.SG.Pf.StabilizerIndexVolumes.deltaAE_holds D _ _)
    (Formalism.L2.SG.Pf.StabilizerIndexVolumes.volume_index_a_stable D u u' _ _ _ _) (Formalism.L2.SG.Pf.StabIntCong.aBddOf u u' _ _ _ _)
    (Formalism.L2.SG.Pf.StabIntCong.aCong u u' _ _ _ _) (Formalism.L2.SG.Pf.StabilizerIndexVolumes.volume_index_b_stable D u u' _ _ _ _)
    (Formalism.L2.SG.Pf.StabilizerIndexVolumes.volume_index_b_bounded D u u' _ _ _ _) (Formalism.L2.SG.Pf.StabilizerIndexVolumes.volume_index_b_congruence D u u' _ _ _ _)

theorem volume_generic_odd_of_rep (hD : DictC) (hC : CovolOne3C) : Formalism.L2.SG.VolPin.VolumeOddGeneric := by
  refine volume_generic_odd_of hD hC (fun D X Y u u' hPH t w F' L U hrel hgen hNR hG => ?_)
    (fun D X Y u u' h => volIdxFinP D X Y u u' h)
  exact Formalism.L2.SG.Pf.StabilizerIndexVolumes.volume_index_b_stable D u u' (X.Fu u) (Y.what₂ u) Y.δ Y.M Formalism.L2.SG.Pf.StabilizerIndexVolumes.stClosed
    (hyps_of Y u u' hPH) Y.agree t.toTerm w F' L U hrel hgen hNR hG

end Formalism.L2.SG.Pf.VolPinAsm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.VolIdxFinP =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.VolumeDeterminedOfChart =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.VolumeDeterminedOfChart", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.VolPinG\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.CovolOne3CHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BlkOfOfPtEntry\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.VolIdxFinP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Closed

theorem volume_determined : Formalism.L2.SG.VolPin.VolumeOddGeneric :=
  Formalism.L2.SG.Pf.VolPinAsm.volume_generic_odd_of_rep Formalism.L2.SG.Pf.VolPinAsm.dictC_holds Formalism.L2.SG.NGCut.StabilizerCovolume.covolOne3C_holds

end Formalism.L2.SG.Closed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.VolumeDeterminedOfChart =====
