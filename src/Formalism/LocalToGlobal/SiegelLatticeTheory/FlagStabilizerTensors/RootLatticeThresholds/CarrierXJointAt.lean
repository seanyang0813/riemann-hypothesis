module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.RealObj
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierParts
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.DFrameAtPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointPin
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.DetUpMatSub
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.DistinctWordsDistinctParameters
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.PtCellUniq
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SatGramActL
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LeviTens
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierEnergyPfLoc
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointQuot
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgePlace
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierInOf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeNC
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeRel
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierSizes
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointQuotGeo
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.IsBuiltPlaceOfCompactTest
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateCommuteRaisingConstant
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BlockScaling
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointQuotStRel
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointQuotStVFix
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierTopOf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.OoQuotOfNuQPin
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.InfCut
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative
import Mathlib.Tactic.TypeStar
import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.ArchPlace
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.Choice

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeVIndep, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierXJoint, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointPinJB, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeRelTr, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierXJointAt

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeVIndep =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeVIndep", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.RealObj\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S

namespace Formalism.L2.SG.Pf.Carrier

open Formalism.L2.SG.RealObj Formalism.L2.SG.DataInst

attribute [local instance] Formalism.BasicNotions.Host.cmStar instCM

variable {D : D7}

variable (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word)

def VIndepAt (sc : ℝ) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) (νq : X.B.I.Ginf → Measure X.B.I.Ginf) :
    Prop :=
  ∀ w : Point D.host.E (D.R.rS + 1), (∃ γ, IsPtRep X u u' w γ) →
    (∀ v, 0 < GX X u u' D.host.rdE (gamW X u u' w) v) →
    ∀ h₁ h₁' h₂ h₂', IsDFrameX X u u' sc i0 i0' (gamW X u u' w) h₁ h₁' →
      IsDFrameX X u u' sc i0 i0' (gamW X u u' w) h₂ h₂' →
      (X.piU u h₁⁻¹).comp ((haveI := FiniteDimensional.complete ℂ (X.Vpi u)
          Formalism.L2.SG.TermOp.OO (νq (gamW X u u' w)) Set.univ (X.Wu u) (X.Wu u') (gamW X u u' w)).comp
          (X.piU u' h₁')) =
        (X.piU u h₂⁻¹).comp ((haveI := FiniteDimensional.complete ℂ (X.Vpi u)
          Formalism.L2.SG.TermOp.OO (νq (gamW X u u' w)) Set.univ (X.Wu u) (X.Wu u') (gamW X u u' w)).comp
          (X.piU u' h₂'))

end Formalism.L2.SG.Pf.Carrier
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeVIndep =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierXJoint =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierXJoint", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeVIndep\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.DFrameAtPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.RealObj

namespace Formalism.L2.SG.Pf.CarrierXAll

open Formalism.L2.SG.Pf.Carrier

variable {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word)
  {Wp Wq : InfinitePlace D.host.E → Type} [∀ x, NormedAddCommGroup (Wp x)] [∀ x, InnerProductSpace ℂ (Wp x)]
  [∀ x, NormedAddCommGroup (Wq x)] [∀ x, InnerProductSpace ℂ (Wq x)] [∀ x, FiniteDimensional ℂ (Wq x)]

def JointTensorAt (S : Formalism.FourierDecayAlt.C.HidaSetting D.host.E Wp Wq)
    (T : ∀ j : Fin S.f, Formalism.FourierDecayAlt.D.LevTower S.G.k S.G.r (Wp (S.pl j)) (Wq (S.pl j)))
    (f : ∀ j : Fin S.f, Formalism.FourierDecayAlt.B.Mat S.G.k S.G.r → (Wq (S.pl j) →L[ℂ] Wp (S.pl j)))
    (ν' : Fin S.f → Fin (2 * S.G.r + S.G.k + 1) → ℂ) (m₀ : Fin S.f → Formalism.FourierDecayAlt.B.Mat S.G.k S.G.r)
    (τ : Fin S.f ≃ InfinitePlace X.B.I.F)
    (eP : ∀ v, Wp (S.pl (τ.symm v)) ≃ₗᵢ[ℂ] X.Vloc u v) (eQ : ∀ v, Wq (S.pl (τ.symm v)) ≃ₗᵢ[ℂ] X.Vloc u' v)
    (sc : ℝ) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) (νq : X.B.I.Ginf → Measure X.B.I.Ginf) : Prop :=
  ∀ (p : Formalism.FourierDecayAlt.TB.Pt D.host.E) (w : Point D.host.E (D.R.rS + 1)),
    ptOfL (D := D) (D.R.rS + 1) p = some w → (∃ γ, IsPtRep X u u' w γ) →
    (∀ v, 0 < GX X u u' D.host.rdE (gamW X u u' w) v) →
    ∀ h h', IsDFrameX X u u' sc i0 i0' (gamW X u u' w) h h' →
    ∀ x : ∀ v, X.Vloc u' v,
      (X.piU u h⁻¹) ((haveI := FiniteDimensional.complete ℂ (X.Vpi u)
        Formalism.L2.SG.TermOp.OO (νq (gamW X u u' w)) Set.univ (X.Wu u) (X.Wu u') (gamW X u u' w))
          (X.piU u' h' (X.tensU u' x))) =
        X.tensU u (fun v => eP v
          (((((Formalism.FourierDecayAlt.D.bSt (Formalism.FourierDecayAlt.D.kapG (S.g : ℝ) (Formalism.FourierDecayAlt.S6.rd D.host.E))
              (Formalism.FourierDecayAlt.C.loc (S.emb (τ.symm v)) p))⁻¹ : ℝ) : ℂ) •
            Formalism.FourierDecayAlt.D.vecV (T (τ.symm v)).base (ν' (τ.symm v)) (m₀ (τ.symm v)) (f (τ.symm v))
              (Formalism.FourierDecayAlt.D.toStd S.G.r S.g 1 (Formalism.FourierDecayAlt.C.loc (S.emb (τ.symm v)) p)))
            ((eQ v).symm (x v))))

theorem vJoint_of_tensorAt (S : Formalism.FourierDecayAlt.C.HidaSetting D.host.E Wp Wq)
    (T : ∀ j : Fin S.f, Formalism.FourierDecayAlt.D.LevTower S.G.k S.G.r (Wp (S.pl j)) (Wq (S.pl j)))
    (f : ∀ j : Fin S.f, Formalism.FourierDecayAlt.B.Mat S.G.k S.G.r → (Wq (S.pl j) →L[ℂ] Wp (S.pl j)))
    (ν' : Fin S.f → Fin (2 * S.G.r + S.G.k + 1) → ℂ) (m₀ : Fin S.f → Formalism.FourierDecayAlt.B.Mat S.G.k S.G.r)
    (τ : Fin S.f ≃ InfinitePlace X.B.I.F)
    (eP : ∀ v, Wp (S.pl (τ.symm v)) ≃ₗᵢ[ℂ] X.Vloc u v) (eQ : ∀ v, Wq (S.pl (τ.symm v)) ≃ₗᵢ[ℂ] X.Vloc u' v)
    (sc : ℝ) (hsc : 0 < sc) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) (hi : ∀ v, i0 v = i0' v)
    (νq : X.B.I.Ginf → Measure X.B.I.Ginf) (h2 : JointTensorAt X u u' S T f ν' m₀ τ eP eQ sc i0 i0' νq) :
    VJoint X S u u' sc i0 i0' νq T f ν' m₀ τ eP eQ := by
  unfold JointTensorAt at h2
  unfold VJoint
  intro p w hpw hrep hpos x
  have hex : ∃ q : X.B.I.Ginf × X.B.I.Ginf, IsDFrameX X u u' sc i0 i0' (gamW X u u' w) q.1 q.2 := by
    have hii : i0' = i0 := funext fun v => (hi v).symm
    rw [hii]
    obtain ⟨h, h', hh⟩ := dual_frame_at_places X u u' sc i0 hsc w hrep hpos
    exact ⟨(h, h'), hh⟩
  refine Eq.trans ?_ (h2 p w hpw hrep hpos hex.choose.1 hex.choose.2 hex.choose_spec x)
  unfold unscaledOperatorAtPointRepresentative unscaledFrameConjugatedOperator
  rw [if_pos hrep, dite_eq_left hex]
  rfl

private theorem sign_flip_involutive {K : Type} [Ring K] (r b : ℕ) (x : Formalism.FourierDecayAlt.TB.Pt K) :
    Formalism.L2.SG.DataInst.signAux r b (Formalism.L2.SG.DataInst.signAux r b x) = x := by
  induction x generalizing b with
  | nil => rfl
  | cons a rest ih =>
    obtain ⟨s, t⟩ := a
    have hm : ∀ n : ℕ, ((-1 : K) ^ n) * ((-1 : K) ^ n * t) = t := by
      intro n
      rw [← mul_assoc, ← pow_add, ← two_mul, pow_mul, neg_one_sq, one_pow, one_mul]
    simp only [Formalism.L2.SG.DataInst.signAux, hm, ih]

private theorem exists_pt_ptOfL_of_point (w : Point D.host.E (D.R.rS + 1)) :
    ∃ p : Formalism.FourierDecayAlt.TB.Pt D.host.E, ptOfL (D := D) (D.R.rS + 1) p = some w := by
  refine ⟨Formalism.L2.SG.DataInst.signPt D.R.rS (Formalism.L2.S.ptList w), ?_⟩
  have hs : Formalism.L2.SG.DataInst.signPt D.R.rS (Formalism.L2.SG.DataInst.signPt D.R.rS (Formalism.L2.S.ptList w)) =
      Formalism.L2.S.ptList w := sign_flip_involutive _ _ _
  unfold ptOfL Formalism.L2.SG.DataInst.ptOfList
  split_ifs with h
  · congr 1
    rw [Equiv.symm_apply_eq]
    exact Subtype.ext hs
  · exact (h (by rw [hs]; exact Formalism.L2.S.ptList_isPtL w)).elim

theorem vIndepAt_of_tensorAt (S : Formalism.FourierDecayAlt.C.HidaSetting D.host.E Wp Wq)
    (T : ∀ j : Fin S.f, Formalism.FourierDecayAlt.D.LevTower S.G.k S.G.r (Wp (S.pl j)) (Wq (S.pl j)))
    (f : ∀ j : Fin S.f, Formalism.FourierDecayAlt.B.Mat S.G.k S.G.r → (Wq (S.pl j) →L[ℂ] Wp (S.pl j)))
    (ν' : Fin S.f → Fin (2 * S.G.r + S.G.k + 1) → ℂ) (m₀ : Fin S.f → Formalism.FourierDecayAlt.B.Mat S.G.k S.G.r)
    (τ : Fin S.f ≃ InfinitePlace X.B.I.F)
    (eP : ∀ v, Wp (S.pl (τ.symm v)) ≃ₗᵢ[ℂ] X.Vloc u v) (eQ : ∀ v, Wq (S.pl (τ.symm v)) ≃ₗᵢ[ℂ] X.Vloc u' v)
    (sc : ℝ) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) (νq : X.B.I.Ginf → Measure X.B.I.Ginf)
    (hJT : JointTensorAt X u u' S T f ν' m₀ τ eP eQ sc i0 i0' νq) : VIndepAt X u u' sc i0 i0' νq := by
  unfold JointTensorAt at hJT
  unfold VIndepAt
  intro w hrep hpos h₁ h₁' h₂ h₂' hf₁ hf₂
  obtain ⟨p, hp⟩ := exists_pt_ptOfL_of_point (D := D) w

  refine ContinuousLinearMap.coe_injective (LinearMap.ext_on_range (X.81 u') fun x => ?_)
  have e1 := hJT p w hp hrep hpos h₁ h₁' hf₁ x
  have e2 := hJT p w hp hrep hpos h₂ h₂' hf₂ x
  exact e1.trans e2.symm

end Formalism.L2.SG.Pf.CarrierXAll
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierXJoint =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointPinJB =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointPinJB", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointPin\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.DetUpMatSub\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.DistinctWordsDistinctParameters\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.InfCut\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.PtCellUniq\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SatGramActL\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LeviTens\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierEnergyPfLoc\nimport Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S
open scoped ENNReal
open Matrix

namespace Formalism.L2.SG.Pf.Carrier.JointPinJB

open Formalism.L2.SG.RealObj Formalism.L2.SG.RealObj.EnergyCut Formalism.L2.SG.Pf.Carrier Formalism.L2.SG.Pf.Carrier.JointPf
  Formalism.L2.SG.Pf.Carrier.JointQuot Formalism.L2.SG.Pf.Carrier.JointPin

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

def HlocU (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u : D.what₂.Word) (v : InfinitePlace X.B.I.F) :
    Set (Formalism.REAL.UJ (X.B.I.ε v)) :=
  {s | ∀ x ∈ Set.range X.eR ∪ Set.range X.fR ∪ {X.zR u},
    uMat s *ᵥ Formalism.L2.SG.HidaSetting.rv X.B.I v x = Formalism.L2.SG.HidaSetting.rv X.B.I v x}

def WlocEqv (X : Formalism.L2.SG.HidaSetting.HidaSetting D) : Prop :=
  ∀ (u : D.what₂.Word) (v : InfinitePlace X.B.I.F) (s : Formalism.REAL.UJ (X.B.I.ε v)), s ∈ HlocU X u v →
    ∀ x, X.Wloc u v (s * x) = X.piLoc u v (matQ (X.B.I.ε v) (X.wfr u v) (uMat s)) (X.Wloc u v x)

def JvConj (X : Formalism.L2.SG.HidaSetting.HidaSetting D) : Prop :=
  ∀ (u u' : D.what₂.Word) (v : InfinitePlace X.B.I.F) (h h' : Formalism.REAL.UJ (X.B.I.ε v)), h ∈ HlocU X u v →
    h' ∈ HlocU X u' v → ∀ (ν : Measure (Formalism.REAL.UJ (X.B.I.ε v))) (γ : Formalism.REAL.UJ (X.B.I.ε v)) (y : X.Vloc u' v),
      X.piLoc u v (matQ (X.B.I.ε v) (X.wfr u v) (uMat h⁻¹))
        ((haveI := FiniteDimensional.complete ℂ (X.Vloc u v); Jv ν (X.Wloc u v) (X.Wloc u' v) γ)
          (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h')) y)) =
      (haveI := FiniteDimensional.complete ℂ (X.Vloc u v);
        Jv (ν.map (fun x => h⁻¹ * x)) (X.Wloc u v) (X.Wloc u' v) (h⁻¹ * γ * h')) y

def ZhatConj (X : Formalism.L2.SG.HidaSetting.HidaSetting D) : Prop :=
  ∀ (u u' : D.what₂.Word) (sc : ℝ) (v : InfinitePlace X.B.I.F) (h h' γ : Formalism.REAL.UJ (X.B.I.ε v)), h ∈ HlocU X u v →
    h' ∈ HlocU X u' v →
    Zhat (X.B.I.ε v) (frm X u sc v) (frm X u' sc v) (uMat (h⁻¹ * γ * h')) =
      Zhat (X.B.I.ε v) (frm X u sc v) (frm X u' sc v) (uMat γ)

def GPosScale (X : Formalism.L2.SG.HidaSetting.HidaSetting D) : Prop :=
  ∀ (u u' : D.what₂.Word) (v : InfinitePlace X.B.I.F) (γ : Formalism.REAL.UJ (X.B.I.ε v)),
    0 < Gv (Tw (D := D) u) (Tw (D := D) u')
      (Zhat (X.B.I.ε v) (frm X u D.host.rdE v) (frm X u' D.host.rdE v) (uMat γ)) →
    0 < Gv (Tw (D := D) u) (Tw (D := D) u') (Zhat (X.B.I.ε v) (frm X u 1 v) (frm X u' 1 v) (uMat γ))

def MonoPt (X : Formalism.L2.SG.HidaSetting.HidaSetting D) : Prop :=
  ∀ (u u' : D.what₂.Word) (w : Point D.host.E (D.R.rS + 1)), OkPt X u u' w → ∀ v : InfinitePlace X.B.I.F,
    Formalism.FourierDecayAlt.C2.IsMonomial (Zhat (X.B.I.ε v) (frm X u 1 v) (frm X u' 1 v) (uMat ((gamW X u u' w) v)))

def RelTr {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word} (P : Parts X u u') (sc : ℝ)
    (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) : Prop :=
  0 < sc → StRel X u u' → P.FromX → P.Base i0 i0' → (∀ j x, P.S.emb j (X.ιE x) = X.B.I.φ (P.τ j) x) →
  ∀ w, OkPt X u u' w → ∀ h h', IsDFrameX X u u' sc i0 i0' (gamW X u u' w) h h' → ∀ v : InfinitePlace X.B.I.F,
    Formalism.FourierDecayAlt.C6.IsRelevant (P.T (P.τ.symm v)).base
      (trG (P.Q v) (P.Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v))

def MeasConj (X : Formalism.L2.SG.HidaSetting.HidaSetting D) : Prop :=
  ∀ (u u' : D.what₂.Word) (v : InfinitePlace X.B.I.F) (h h' γ : Formalism.REAL.UJ (X.B.I.ε v)), h ∈ HlocU X u v →
    h' ∈ HlocU X u' v → ∀ μR ν : Measure (Formalism.REAL.UJ (X.B.I.ε v)),
    IsHaarLoc (StSet (NV X u v) (NV X u' v) γ) μR → IsQuotLoc μR ν →
    IsHaarLoc (StSet (NV X u v) (NV X u' v) (h⁻¹ * γ * h')) (μR.map (fun s => h⁻¹ * s * h)) ∧
      IsQuotLoc (μR.map (fun s => h⁻¹ * s * h)) (ν.map (fun x => h⁻¹ * x))

def OrbVecAt {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word} (P : Parts X u u') (sc : ℝ)
    (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) : Prop :=
  0 < sc → P.FromX → P.Base i0 i0' → (∀ j x, P.S.emb j (X.ιE x) = X.B.I.φ (P.τ j) x) → P.Built →
  ∀ (p : Formalism.FourierDecayAlt.TB.Pt D.host.E) (w : Point D.host.E (D.R.rS + 1)),
    ptOfL (D := D) (D.R.rS + 1) p = some w → OkPt X u u' w →
    ∀ h h', IsDFrameX X u u' sc i0 i0' (gamW X u u' w) h h' → ∀ (v : InfinitePlace X.B.I.F)
      (μRv : Measure (Formalism.REAL.UJ (X.B.I.ε v))), IsHaarLoc (StV X u u' (gamW X u u' w) v) μRv →
      μRv.map (stCoordV X u' w (gamW X u u' w) v) = muStabV X w →
    ∀ F : Formalism.FourierDecayAlt.B.Mat P.S.G.k P.S.G.r → (P.Wq (P.S.pl (P.τ.symm v)) →L[ℂ] P.Wp (P.S.pl (P.τ.symm v))),
      Formalism.FourierDecayAlt.D.orbJ (P.T (P.τ.symm v)).base (trG (P.Q v) (P.Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v))
                (trMeas P v (μRv.map (fun s => (h v)⁻¹ * s * h v))) F =
        (((Formalism.FourierDecayAlt.D.bSt (Formalism.FourierDecayAlt.D.kapG (P.S.g : ℝ) (Formalism.FourierDecayAlt.S6.rd D.host.E))
            (Formalism.FourierDecayAlt.C.loc (P.S.emb (P.τ.symm v)) p))⁻¹ : ℝ) : ℂ) •
          Formalism.FourierDecayAlt.D.vecV (P.T (P.τ.symm v)).base (P.ν' (P.τ.symm v)) (P.m₀ (P.τ.symm v)) F
            (Formalism.FourierDecayAlt.D.toStd P.S.G.r P.S.g 1 (Formalism.FourierDecayAlt.C.loc (P.S.emb (P.τ.symm v)) p))

variable {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word}

theorem hlocU_of_mem {h : X.B.I.Ginf} (hh : h ∈ HsetU X u) (v : InfinitePlace X.B.I.F) : h v ∈ HlocU X u v :=
  fun x hx => hh v x hx

theorem hloc_fix_frm (sc : ℝ) (v : InfinitePlace X.B.I.F) (s : Formalism.REAL.UJ (X.B.I.ε v)) (hs : s ∈ HlocU X u v)
    (a : Fin (D.R.rS + 1)) : uMat s *ᵥ frm X u sc v a = frm X u sc v a := by
  unfold frm famSc
  rw [mulVec_smul]
  congr 1
  unfold fam
  induction a using Fin.lastCases with
  | last => simp only [Fin.snoc_last]; exact hs _ (Or.inr rfl)
  | cast i => simp only [Fin.snoc_castSucc]; exact hs _ (Or.inl (Or.inl ⟨i, rfl⟩))

theorem zhatConj_holds : ZhatConj X := by
  intro u u' sc v h h' γ hh hh'
  have hm : uMat (h⁻¹ * γ * h') = uMat h⁻¹ * uMat γ * uMat h' := by simp [uMat]
  funext a b
  unfold Formalism.L2.SG.RealObj.Zhat
  rw [hm, ← mulVec_mulVec, ← mulVec_mulVec, hloc_fix_frm sc v h' hh' b,
    Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates.JL.hJ_adj h⁻¹ (frm X u sc v a), inv_inv, hloc_fix_frm sc v h hh a]

def dsc (r : ℕ) (sc : ℝ) : Fin (r + 1) → ℂ := fun a => (((sc ^ (r - a.1))⁻¹ : ℝ) : ℂ)

theorem zhat_famSc {n r : ℕ} (ε : Fin n → Bool) (sc : ℝ) (e e' : Fin r → Fin n → ℂ) (z z' : Fin n → ℂ)
    (g : Matrix (Fin n) (Fin n) ℂ) :
    Zhat ε (famSc sc e z) (famSc sc e' z') g =
      Matrix.diagonal (dsc r sc) * Zhat ε (famSc 1 e z) (famSc 1 e' z') g * Matrix.diagonal (dsc r sc) := by
  ext a b
  simp only [Matrix.mul_diagonal, Matrix.diagonal_mul]
  unfold Formalism.L2.SG.RealObj.Zhat famSc Formalism.L2.SG.HidaSetting.hJ dsc
  simp only [mulVec_smul, star_smul, smul_dotProduct, dotProduct_smul, smul_eq_mul,
    RCLike.star_def, map_inv₀, map_pow, Complex.conj_ofReal]
  push_cast
  ring

theorem dl_dzd {r : ℕ} (d : Fin (r + 1) → ℂ) (Z : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) (l : ℕ) (hl : l ≤ r + 1) :
    Dl (Matrix.diagonal d * Z * Matrix.diagonal d) l = (∏ i : Fin l, d (Fin.castLE hl i)) ^ 2 * Dl Z l := by
  unfold Formalism.L2.SG.RealObj.Dl
  rw [dite_eq_left hl, dite_eq_left hl]
  have hs : (Matrix.diagonal d * Z * Matrix.diagonal d).submatrix (Fin.castLE hl) (Fin.castLE hl) =
      Matrix.diagonal (fun i => d (Fin.castLE hl i)) * Z.submatrix (Fin.castLE hl) (Fin.castLE hl) *
        Matrix.diagonal (fun i => d (Fin.castLE hl i)) := by
    ext i j
    simp [Matrix.mul_diagonal, Matrix.diagonal_mul]
  rw [hs, Matrix.det_mul, Matrix.det_mul, Matrix.det_diagonal]
  ring

theorem gv_dzd {r : ℕ} (T T' : ℝ) (d : Fin (r + 1) → ℂ) (hd : d (Fin.last r) = 1)
    (Z : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) :
    Gv T T' (Matrix.diagonal d * Z * Matrix.diagonal d) =
      ‖∏ i : Fin r, d (Fin.castSucc i)‖ ^ 4 * Gv T T' Z := by
  unfold Gv
  rw [dl_dzd d Z (r + 1) le_rfl, dl_dzd d Z r (Nat.le_succ r)]
  have e1 : (∏ i : Fin (r + 1), d (Fin.castLE (le_refl (r + 1)) i)) = ∏ i : Fin r, d (Fin.castSucc i) := by
    rw [Fin.prod_univ_castSucc]
    have : Fin.castLE (le_refl (r + 1)) (Fin.last r) = Fin.last r := Fin.ext rfl
    rw [this, hd, mul_one]
    rfl
  have e2 : (∏ i : Fin r, d (Fin.castLE (Nat.le_succ r) i)) = ∏ i : Fin r, d (Fin.castSucc i) := rfl
  rw [e1, e2]
  simp only [norm_mul, norm_pow]
  ring

theorem gPosScale_holds : GPosScale X := by
  intro u u' v γ hG
  have hd : dsc D.R.rS D.host.rdE (Fin.last D.R.rS) = 1 := by simp [dsc]
  unfold frm at hG ⊢
  rw [zhat_famSc, gv_dzd _ _ _ hd] at hG
  by_contra hc
  push Not at hc
  have h4 : 0 ≤ ‖∏ i : Fin D.R.rS, dsc D.R.rS D.host.rdE (Fin.castSucc i)‖ ^ 4 := by positivity
  nlinarith [mul_nonpos_of_nonneg_of_nonpos h4 hc]

theorem monoPt_holds : MonoPt X := by
  intro u u' w hok v
  have hrep : IsPtRep X u u' w (gamW X u u' w) := by
    unfold gamW; rw [dite_eq_left hok.1]; exact hok.1.choose_spec
  have hZ := hrep v
  have hinv : Function.Involutive (Formalism.L2.SG.PtCell.pinv w) := Formalism.L2.SG.PtCell.pinv_pinv w
  refine ⟨hinv.toPerm _, fun a => (-1 : ℂ) ^ (D.R.rS - a.val) *
      X.B.I.φ v (X.ιE.symm (Formalism.L2.SG.PtCell.pval w.1 (Formalism.L2.SG.PtCell.pinv w a).val)),
    fun a => mul_ne_zero (pow_ne_zero _ (by norm_num)) ?_, ?_⟩
  · refine (map_ne_zero _).2 ((map_ne_zero _).2 ?_)
    exact Formalism.L2.SG.PtCell.pval_ne w.1 (fun b hb => (w.2.1 b hb).1) _
      (by rw [w.2.2]; exact (Formalism.L2.SG.PtCell.pinv w a).isLt)
  · ext i a
    have hia : Zhat (X.B.I.ε v) (frm X u 1 v) (frm X u' 1 v) (uMat ((gamW X u u' w) v)) i a =
        (-1 : ℂ) ^ (D.R.rS - a.val) * Formalism.L2.SG.RealObj.ZhatO (ZX X u u' 1 (gamW X u u' w) v) i a := by
      unfold Formalism.L2.SG.RealObj.ZhatO ZX
      rw [← mul_assoc, ← mul_pow]
      norm_num
    rw [hia, hZ]
    unfold ptC
    rw [Matrix.map_apply, Formalism.L2.SG.PtCell.ptMat_eq_mono]
    simp only [Formalism.L2.SG.PtCell.mono, Formalism.FourierDecayAlt.C2.monoP, Matrix.of_apply, Function.Involutive.coe_toPerm]
    by_cases h : a = Formalism.L2.SG.PtCell.pinv w i
    · have h2 : i = Formalism.L2.SG.PtCell.pinv w a := by rw [h, hinv]
      rw [if_pos h]
      simp only [h2, if_true]
    · have h2 : ¬ i = Formalism.L2.SG.PtCell.pinv w a := fun e => h (by rw [e, hinv])
      rw [if_neg h]
      simp only [h2, if_false, map_zero, mul_zero]

theorem hlocU_inv {v : InfinitePlace X.B.I.F} {h : Formalism.REAL.UJ (X.B.I.ε v)} (hh : h ∈ HlocU X u v) :
    h⁻¹ ∈ HlocU X u v := by
  intro x hx
  calc uMat h⁻¹ *ᵥ Formalism.L2.SG.HidaSetting.rv X.B.I v x
      = uMat h⁻¹ *ᵥ (uMat h *ᵥ Formalism.L2.SG.HidaSetting.rv X.B.I v x) := by rw [hh x hx]
    _ = Formalism.L2.SG.HidaSetting.rv X.B.I v x := by
      rw [mulVec_mulVec, Formalism.L2.SG.RealObj.InfCut.uMat_inv_mul', one_mulVec]

theorem spanLt_fix {n r : ℕ} (M : Matrix (Fin n) (Fin n) ℂ) (e : Fin r → Fin n → ℂ) (hM : ∀ b, M *ᵥ e b = e b)
    (a : ℕ) {x : Fin n → ℂ} (hx : x ∈ Formalism.L2.SG.HidaSetting.spanLt e a) : M *ᵥ x ∈ Formalism.L2.SG.HidaSetting.spanLt e a := by
  unfold Formalism.L2.SG.HidaSetting.spanLt at hx ⊢
  have hle : Submodule.span ℂ (e '' {b | b.1 < a}) ≤
      (Submodule.span ℂ (e '' {b | b.1 < a})).comap (Matrix.mulVecLin M) := by
    refine Submodule.span_le.2 ?_
    intro y hy
    obtain ⟨b, hb, rfl⟩ := hy
    rw [SetLike.mem_coe, Submodule.mem_comap, Matrix.mulVecLin_apply, hM b]
    exact Submodule.subset_span ⟨b, hb, rfl⟩
  exact hle hx

theorem nv_conj {v : InfinitePlace X.B.I.F} {h s : Formalism.REAL.UJ (X.B.I.ε v)} (hh : h ∈ HlocU X u v)
    (hs : s ∈ NV X u v) : h⁻¹ * s * h ∈ NV X u v := by
  have hhi := hlocU_inv hh
  have hfe : ∀ a, uMat h *ᵥ Formalism.L2.SG.HidaSetting.rv X.B.I v (X.eR a) = Formalism.L2.SG.HidaSetting.rv X.B.I v (X.eR a) :=
    fun a => hh _ (Or.inl (Or.inl ⟨a, rfl⟩))
  have hfz : uMat h *ᵥ Formalism.L2.SG.HidaSetting.rv X.B.I v (X.zR u) = Formalism.L2.SG.HidaSetting.rv X.B.I v (X.zR u) :=
    hh _ (Or.inr rfl)
  have hie : ∀ a, uMat h⁻¹ *ᵥ Formalism.L2.SG.HidaSetting.rv X.B.I v (X.eR a) = Formalism.L2.SG.HidaSetting.rv X.B.I v (X.eR a) :=
    fun a => hhi _ (Or.inl (Or.inl ⟨a, rfl⟩))
  have hm : uMat (h⁻¹ * s * h) = uMat h⁻¹ * uMat s * uMat h := by simp [uMat]
  have hI : uMat h⁻¹ * uMat h = 1 := Formalism.L2.SG.RealObj.InfCut.uMat_inv_mul' h
  have key : ∀ x, (uMat (h⁻¹ * s * h) - 1) *ᵥ x = uMat h⁻¹ *ᵥ ((uMat s - 1) *ᵥ (uMat h *ᵥ x)) := by
    intro x
    rw [hm]
    simp only [mulVec_mulVec, ← Matrix.mul_assoc]
    rw [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_one, hI, sub_mulVec, one_mulVec]
  obtain ⟨⟨he, hz⟩, hy⟩ := hs
  refine ⟨⟨fun a => ?_, ?_⟩, fun y hy0 => ?_⟩
  · rw [key, hfe a]
    exact spanLt_fix _ _ hie _ (he a)
  · rw [key, hfz]
    exact spanLt_fix _ _ hie _ hz
  · rw [key]
    refine spanLt_fix _ _ hie _ (hy _ fun a => ?_)
    rw [Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates.JL.hJ_adj h, hie a]
    exact hy0 a

theorem stSet_conj {v : InfinitePlace X.B.I.F} {h h' γ : Formalism.REAL.UJ (X.B.I.ε v)} (hh : h ∈ HlocU X u v)
    (hh' : h' ∈ HlocU X u' v) (s : Formalism.REAL.UJ (X.B.I.ε v)) :
    h⁻¹ * s * h ∈ StSet (NV X u v) (NV X u' v) (h⁻¹ * γ * h') ↔ s ∈ StSet (NV X u v) (NV X u' v) γ := by
  have e1 : (h⁻¹ * γ * h')⁻¹ * (h⁻¹ * s * h) * (h⁻¹ * γ * h') = h'⁻¹ * (γ⁻¹ * s * γ) * h' := by group
  constructor
  · rintro ⟨h1, h2⟩
    refine ⟨?_, ?_⟩
    · have := nv_conj (hlocU_inv hh) h1
      simpa [mul_assoc] using this
    · rw [e1] at h2
      have := nv_conj (hlocU_inv hh') h2
      simpa [mul_assoc] using this
  · rintro ⟨h1, h2⟩
    refine ⟨nv_conj hh h1, ?_⟩
    rw [e1]
    exact nv_conj hh' h2

theorem measConj_holds : MeasConj X := by
  intro u u' v h h' γ hh hh' μR ν hH hQ
  obtain ⟨hsf, hne, hc, hinv⟩ := hH
  let c : Formalism.REAL.UJ (X.B.I.ε v) ≃ᵐ Formalism.REAL.UJ (X.B.I.ε v) :=
    (MeasurableEquiv.mulLeft h⁻¹).trans (MeasurableEquiv.mulRight h)
  have hcc : (fun s => h⁻¹ * s * h) = ⇑c := rfl
  let L : Formalism.REAL.UJ (X.B.I.ε v) ≃ᵐ Formalism.REAL.UJ (X.B.I.ε v) := MeasurableEquiv.mulLeft h⁻¹
  have hLL : (fun x => h⁻¹ * x) = ⇑L := rfl
  have hpre : c ⁻¹' (StSet (NV X u v) (NV X u' v) (h⁻¹ * γ * h')) = StSet (NV X u v) (NV X u' v) γ := by
    ext s; exact stSet_conj hh hh' s
  rw [hcc, hLL]
  refine ⟨⟨?_, ?_, ?_, ?_⟩, ?_⟩
  · exact c.sigmaFinite_map
  · exact (Measure.map_ne_zero_iff c.measurable.aemeasurable).2 hne
  · rw [c.map_apply, Set.preimage_compl, hpre]
    exact hc
  · intro s hs
    have ht : h * s * h⁻¹ ∈ StSet (NV X u v) (NV X u' v) γ := by
      rw [← stSet_conj hh hh']
      simpa [mul_assoc] using hs
    have e2 : (fun x => s * x) ∘ ⇑c = ⇑c ∘ (fun x => (h * s * h⁻¹) * x) := by
      funext x; simp only [Function.comp, hcc.symm]; group
    rw [Measure.map_map (measurable_const_mul s) c.measurable, e2,
      ← Measure.map_map c.measurable (measurable_const_mul _), hinv _ ht]
  · intro f hf
    rw [lintegral_map_equiv]
    simp_rw [lintegral_map_equiv]
    have e3 : ∀ x s, f (c s * L x) = (fun y => f (h⁻¹ * y)) (s * x) := by
      intro x s; show f (h⁻¹ * s * h * (h⁻¹ * x)) = f (h⁻¹ * (s * x)); congr 1; group
    simp_rw [e3]
    have hQ' := hQ (fun y => f (h⁻¹ * y)) (hf.comp (measurable_const_mul _))
    rw [← hQ']
    exact (lintegral_mul_left_eq_self f h⁻¹).symm


open Classical in
theorem tens_cancel (w0 : D.what₂.Word) (v : InfinitePlace X.B.I.F) (a b : ∀ w, X.Vloc w0 w)
    (hab : ∀ w, w ≠ v → a w = b w) (hK : (∏ w ∈ Finset.univ.erase v, inner ℂ (a w) (a w)) ≠ 0)
    (h : X.tensU w0 a = X.tensU w0 b) : a v = b v := by
  have key : ∀ p q : ∀ w, X.Vloc w0 w, (∀ w, w ≠ v → p w = a w) → (∀ w, w ≠ v → q w = a w) →
      inner ℂ (X.tensU w0 p) (X.tensU w0 q) =
        inner ℂ (p v) (q v) * ∏ w ∈ Finset.univ.erase v, inner ℂ (a w) (a w) := by
    intro p q hp hq
    rw [X.tensU_inner, ← Finset.mul_prod_erase _ _ (Finset.mem_univ v)]
    congr 1
    refine Finset.prod_congr rfl fun w hw => ?_
    rw [hp w (Finset.ne_of_mem_erase hw), hq w (Finset.ne_of_mem_erase hw)]
  have hb : ∀ w, w ≠ v → b w = a w := fun w hw => (hab w hw).symm
  have ha : ∀ w, w ≠ v → a w = a w := fun _ _ => rfl
  have e1 := key a a ha ha
  have e2 := key a b ha hb
  have e3 := key b a hb ha
  have e4 := key b b hb hb
  rw [h] at e1 e2 e3
  have f1 : inner ℂ (a v) (a v) = inner ℂ (b v) (b v) := mul_right_cancel₀ hK (e1.symm.trans e4)
  have f2 : inner ℂ (a v) (b v) = inner ℂ (b v) (b v) := mul_right_cancel₀ hK (e2.symm.trans e4)
  have f3 : inner ℂ (b v) (a v) = inner ℂ (b v) (b v) := mul_right_cancel₀ hK (e3.symm.trans e4)
  have hz : inner ℂ (a v - b v) (a v - b v) = (0 : ℂ) := by
    rw [inner_sub_left, inner_sub_right, inner_sub_right, f1, f2, f3]
    ring
  exact sub_eq_zero.1 (inner_self_eq_zero.1 hz)


open Classical in
theorem wlocEqv_holds : WlocEqv X := by
  intro w0 v s hs x
  obtain ⟨x0, hx0⟩ := Formalism.L2.SG.Pf.Carrier.EnergyPfLoc.wu_ne X w0
  set S : X.B.I.Ginf := Function.update 1 v s with hSdef
  have hSw : ∀ w, ∀ y ∈ Set.range X.eR ∪ Set.range X.fR ∪ {X.zR w0},
      uMat (S w) *ᵥ Formalism.L2.SG.HidaSetting.rv X.B.I w y = Formalism.L2.SG.HidaSetting.rv X.B.I w y := by
    intro w y hy
    by_cases hw : w = v
    · subst hw; simpa [S] using hs y hy
    · simp [S, Function.update_of_ne hw, uMat]
  have hSH : S ∈ Formalism.L2.SG.PoincareInHH.PoincareSetting.Hinf X w0 := hSw
  have hmul : S * Function.update x0 v x = Function.update x0 v (s * x) := by
    funext w
    by_cases hw : w = v
    · subst hw; simp [S]
    · simp [S, Function.update_of_ne hw]
  set a : ∀ w, X.Vloc w0 w := fun w => X.Wloc w0 w (Function.update x0 v (s * x) w) with ha
  set b : ∀ w, X.Vloc w0 w := fun w => X.piLoc w0 w (Formalism.L2.SG.HidaSetting.matW X.B.I (X.wfr w0 w) w S)
    (X.Wloc w0 w (Function.update x0 v x w)) with hb
  have hT : X.tensU w0 a = X.tensU w0 b := by
    rw [ha, hb, ← X.Wu_tens, ← hmul, Formalism.L2.SG.Pf.SatGramActL.wu_left X w0 hSH, X.Wu_tens]
    exact X.tensU_equiv w0 S hSw _
  have hone : ∀ w, w ≠ v → Formalism.L2.SG.HidaSetting.matW X.B.I (X.wfr w0 w) w S = 1 := by
    intro w hw
    ext i j
    simp [Formalism.L2.SG.HidaSetting.matW, S, Function.update_of_ne hw, uMat, X.wfr_on, Matrix.one_apply]
  have hab : ∀ w, w ≠ v → a w = b w := by
    intro w hw
    simp only [ha, hb]
    rw [hone w hw, (X.piLoc_type w0 w).2.2.1.1.1, Function.update_of_ne hw, Function.update_of_ne hw]
    rfl
  have hK : (∏ w ∈ Finset.univ.erase v, inner ℂ (a w) (a w)) ≠ 0 := by
    have hne : inner ℂ (X.Wu w0 x0) (X.Wu w0 x0) ≠ (0 : ℂ) := inner_self_ne_zero.2 hx0
    rw [X.Wu_tens, X.tensU_inner, ← Finset.mul_prod_erase _ _ (Finset.mem_univ v)] at hne
    have h2 := right_ne_zero_of_mul hne
    rwa [Finset.prod_congr rfl fun w hw => by
      simp only [ha]; rw [Function.update_of_ne (Finset.ne_of_mem_erase hw)]]
  have := tens_cancel w0 v a b hab hK hT
  simp only [ha, hb, Function.update_self] at this
  have hv : Formalism.L2.SG.HidaSetting.matW X.B.I (X.wfr w0 v) v S = matQ (X.B.I.ε v) (X.wfr w0 v) (uMat s) := by
    ext i j
    simp [Formalism.L2.SG.HidaSetting.matW, matQ, S]
  rw [hv] at this
  exact this

theorem hJ_sum_left {n : ℕ} (ε : Fin n → Bool) {ι : Type*} [Fintype ι] (c : ι → ℂ) (x : ι → Fin n → ℂ)
    (y : Fin n → ℂ) :
    Formalism.L2.SG.HidaSetting.hJ ε (∑ i, c i • x i) y = ∑ i, star (c i) * Formalism.L2.SG.HidaSetting.hJ ε (x i) y := by
  unfold Formalism.L2.SG.HidaSetting.hJ
  simp only [star_sum, star_smul, sum_dotProduct, smul_dotProduct, smul_eq_mul]

theorem hJ_sum_right {n : ℕ} (ε : Fin n → Bool) {ι : Type*} [Fintype ι] (c : ι → ℂ) (x : Fin n → ℂ)
    (y : ι → Fin n → ℂ) :
    Formalism.L2.SG.HidaSetting.hJ ε x (∑ i, c i • y i) = ∑ i, c i * Formalism.L2.SG.HidaSetting.hJ ε x (y i) := by
  unfold Formalism.L2.SG.HidaSetting.hJ
  simp only [mulVec_sum, mulVec_smul, dotProduct_sum, dotProduct_smul, smul_eq_mul]

theorem hloc_perp {w0 : D.what₂.Word} {v : InfinitePlace X.B.I.F} {g : Formalism.REAL.UJ (X.B.I.ε v)}
    (hg : g ∈ HlocU X w0 v) (b : Fin D.R.k) :
    (∀ a, Formalism.L2.SG.HidaSetting.hJ (X.B.I.ε v) (Formalism.L2.SG.HidaSetting.rv X.B.I v (X.eR a)) (uMat g *ᵥ X.wfr w0 v b) = 0 ∧
      Formalism.L2.SG.HidaSetting.hJ (X.B.I.ε v) (Formalism.L2.SG.HidaSetting.rv X.B.I v (X.fR a)) (uMat g *ᵥ X.wfr w0 v b) = 0) ∧
    Formalism.L2.SG.HidaSetting.hJ (X.B.I.ε v) (Formalism.L2.SG.HidaSetting.rv X.B.I v (X.zR w0)) (uMat g *ᵥ X.wfr w0 v b) = 0 := by
  have hgi := hlocU_inv hg
  simp only [Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates.JL.hJ_adj g]
  refine ⟨fun a => ⟨?_, ?_⟩, ?_⟩
  · rw [hgi _ (Or.inl (Or.inl ⟨a, rfl⟩))]; exact ((X.wfr_perp w0 v b).1 a).1
  · rw [hgi _ (Or.inl (Or.inr ⟨a, rfl⟩))]; exact ((X.wfr_perp w0 v b).1 a).2
  · rw [hgi _ (Or.inr rfl)]; exact (X.wfr_perp w0 v b).2

theorem hloc_span {w0 : D.what₂.Word} {v : InfinitePlace X.B.I.F} {g : Formalism.REAL.UJ (X.B.I.ε v)}
    (hg : g ∈ HlocU X w0 v) (b : Fin D.R.k) :
    uMat g *ᵥ X.wfr w0 v b =
      ∑ c, Formalism.L2.SG.HidaSetting.hJ (X.B.I.ε v) (X.wfr w0 v c) (uMat g *ᵥ X.wfr w0 v b) • X.wfr w0 v c :=
  PI.SchurPlaces.wfrSpan D X w0 v _ (hloc_perp hg b).1 (hloc_perp hg b).2

theorem matQ_unitary {w0 : D.what₂.Word} {v : InfinitePlace X.B.I.F} {g : Formalism.REAL.UJ (X.B.I.ε v)}
    (hg : g ∈ HlocU X w0 v) :
    (matQ (X.B.I.ε v) (X.wfr w0 v) (uMat g))ᴴ * matQ (X.B.I.ε v) (X.wfr w0 v) (uMat g) = 1 := by
  ext a b
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, matQ, Matrix.one_apply]
  have h1 : Formalism.L2.SG.HidaSetting.hJ (X.B.I.ε v) (uMat g *ᵥ X.wfr w0 v a) (uMat g *ᵥ X.wfr w0 v b) =
      ∑ c, star (Formalism.L2.SG.HidaSetting.hJ (X.B.I.ε v) (X.wfr w0 v c) (uMat g *ᵥ X.wfr w0 v a)) *
        Formalism.L2.SG.HidaSetting.hJ (X.B.I.ε v) (X.wfr w0 v c) (uMat g *ᵥ X.wfr w0 v b) := by
    conv_lhs => rw [hloc_span hg a]
    rw [hJ_sum_left]
  have h2 : Formalism.L2.SG.HidaSetting.hJ (X.B.I.ε v) (uMat g *ᵥ X.wfr w0 v a) (uMat g *ᵥ X.wfr w0 v b) =
      Formalism.L2.SG.HidaSetting.hJ (X.B.I.ε v) (X.wfr w0 v a) (X.wfr w0 v b) := by
    rw [Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates.JL.hJ_adj g, mulVec_mulVec, Formalism.L2.SG.RealObj.InfCut.uMat_inv_mul',
      one_mulVec]
  rw [← h1, h2, X.wfr_on]

theorem matQ_mul {w0 : D.what₂.Word} {v : InfinitePlace X.B.I.F} {h : Formalism.REAL.UJ (X.B.I.ε v)}
    (hh : h ∈ HlocU X w0 v) (g : Formalism.REAL.UJ (X.B.I.ε v)) :
    matQ (X.B.I.ε v) (X.wfr w0 v) (uMat (g * h)) =
      matQ (X.B.I.ε v) (X.wfr w0 v) (uMat g) * matQ (X.B.I.ε v) (X.wfr w0 v) (uMat h) := by
  ext a b
  simp only [matQ, Matrix.mul_apply]
  have e : uMat (g * h) = uMat g * uMat h := by simp [uMat]
  rw [e, ← mulVec_mulVec]
  conv_lhs => rw [hloc_span hh b]
  rw [mulVec_sum]
  simp only [mulVec_smul]
  rw [hJ_sum_right]
  exact Finset.sum_congr rfl fun c _ => mul_comm _ _

theorem matQ_one (w0 : D.what₂.Word) (v : InfinitePlace X.B.I.F) :
    matQ (X.B.I.ε v) (X.wfr w0 v) (uMat (1 : Formalism.REAL.UJ (X.B.I.ε v))) = 1 := by
  ext a b
  simp [matQ, uMat, X.wfr_on, Matrix.one_apply]

theorem piLoc_inv_comp {w0 : D.what₂.Word} {v : InfinitePlace X.B.I.F} {g : Formalism.REAL.UJ (X.B.I.ε v)}
    (hg : g ∈ HlocU X w0 v) :
    (X.piLoc w0 v (matQ (X.B.I.ε v) (X.wfr w0 v) (uMat g⁻¹))).comp
      (X.piLoc w0 v (matQ (X.B.I.ε v) (X.wfr w0 v) (uMat g))) = 1 := by
  have hU := (X.piLoc_type w0 v).2.2.1
  rw [← hU.1.2 _ (Formalism.L2.SG.Pf.IdBlocks2.Geo.uj_of_unitary (matQ_unitary (hlocU_inv hg))) _
    (Formalism.L2.SG.Pf.IdBlocks2.Geo.uj_of_unitary (matQ_unitary hg)), ← matQ_mul hg g⁻¹, inv_mul_cancel,
    matQ_one, hU.1.1]

theorem piLoc_comp_inv {w0 : D.what₂.Word} {v : InfinitePlace X.B.I.F} {g : Formalism.REAL.UJ (X.B.I.ε v)}
    (hg : g ∈ HlocU X w0 v) :
    (X.piLoc w0 v (matQ (X.B.I.ε v) (X.wfr w0 v) (uMat g))).comp
      (X.piLoc w0 v (matQ (X.B.I.ε v) (X.wfr w0 v) (uMat g⁻¹))) = 1 := by
  have hU := (X.piLoc_type w0 v).2.2.1
  rw [← hU.1.2 _ (Formalism.L2.SG.Pf.IdBlocks2.Geo.uj_of_unitary (matQ_unitary hg)) _
    (Formalism.L2.SG.Pf.IdBlocks2.Geo.uj_of_unitary (matQ_unitary (hlocU_inv hg))), ← matQ_mul (hlocU_inv hg) g,
    mul_inv_cancel, matQ_one, hU.1.1]

theorem jvConj_holds : JvConj X := by
  intro u u' v h h' hh hh' ν γ y
  have := FiniteDimensional.complete ℂ (X.Vloc u v)
  have := FiniteDimensional.complete ℂ (X.Vloc u' v)
  have hU' := (X.piLoc_type u' v).2.2.1
  let Ae : X.Vloc u v ≃L[ℂ] X.Vloc u v :=
    ContinuousLinearEquiv.equivOfInverse (X.piLoc u v (matQ (X.B.I.ε v) (X.wfr u v) (uMat h⁻¹)))
      (X.piLoc u v (matQ (X.B.I.ε v) (X.wfr u v) (uMat h)))
      (fun x => by
        have := congrArg (fun T : X.Vloc u v →L[ℂ] X.Vloc u v => T x) (piLoc_comp_inv hh)
        simpa using this)
      (fun x => by
        have := congrArg (fun T : X.Vloc u v →L[ℂ] X.Vloc u v => T x) (piLoc_inv_comp hh)
        simpa using this)
  let Be : X.Vloc u' v ≃L[ℂ] X.Vloc u' v :=
    ContinuousLinearEquiv.equivOfInverse (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h')))
      (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h'⁻¹)))
      (fun x => by
        have := congrArg (fun T : X.Vloc u' v →L[ℂ] X.Vloc u' v => T x) (piLoc_inv_comp hh')
        simpa using this)
      (fun x => by
        have := congrArg (fun T : X.Vloc u' v →L[ℂ] X.Vloc u' v => T x) (piLoc_comp_inv hh')
        simpa using this)
  let L : (X.Vloc u' v →L[ℂ] X.Vloc u v) ≃L[ℂ] (X.Vloc u' v →L[ℂ] X.Vloc u v) := Be.symm.arrowCongr Ae
  have hL : ∀ T, L T = (X.piLoc u v (matQ (X.B.I.ε v) (X.wfr u v) (uMat h⁻¹))).comp
      (T.comp (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h')))) := fun T => by
    ext ξ; rfl
  have hn : ∀ ξ, ‖X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h')) ξ‖ = ‖ξ‖ :=
    hU'.2.1 _ (Formalism.L2.SG.Pf.IdBlocks2.Geo.uj_of_unitary (matQ_unitary hh'))
  let Bi : X.Vloc u' v →ₗᵢ[ℂ] X.Vloc u' v :=
    ⟨(X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h'))).toLinearMap, hn⟩
  have hadj : ∀ b ξ, inner ℂ b (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h')) ξ) =
      inner ℂ (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h'⁻¹)) b) ξ := by
    intro b ξ
    have e : X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h'))
        (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h'⁻¹)) b) = b := by
      have := congrArg (fun T : X.Vloc u' v →L[ℂ] X.Vloc u' v => T b) (piLoc_comp_inv hh')
      simpa using this
    have e2 : inner ℂ (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h'))
          (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h'⁻¹)) b))
          (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h')) ξ) =
        inner ℂ (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h'⁻¹)) b) ξ := Bi.inner_map_map _ _
    rw [← e2, e]
  have hpt : ∀ x, L (Formalism.L2.SG.TermOp.rk1 (X.Wloc u v x) (X.Wloc u' v (γ⁻¹ * x))) =
      Formalism.L2.SG.TermOp.rk1 (X.Wloc u v (h⁻¹ * x)) (X.Wloc u' v ((h⁻¹ * γ * h')⁻¹ * (h⁻¹ * x))) := by
    intro x
    rw [hL]
    ext ξ
    have e1 : (h⁻¹ * γ * h')⁻¹ * (h⁻¹ * x) = h'⁻¹ * (γ⁻¹ * x) := by group
    simp only [ContinuousLinearMap.comp_apply, Formalism.L2.SG.TermOp.rankOneInnerOperator_apply, map_smul, hadj]
    rw [e1, wlocEqv_holds u v h⁻¹ (hlocU_inv hh) x, wlocEqv_holds u' v h'⁻¹ (hlocU_inv hh') (γ⁻¹ * x)]
  have hA : X.piLoc u v (matQ (X.B.I.ε v) (X.wfr u v) (uMat h⁻¹))
      ((Jv ν (X.Wloc u v) (X.Wloc u' v) γ) (X.piLoc u' v (matQ (X.B.I.ε v) (X.wfr u' v) (uMat h')) y)) =
      (L (Jv ν (X.Wloc u v) (X.Wloc u' v) γ)) y := by
    rw [hL]; rfl
  rw [hA]
  congr 1
  unfold Jv Formalism.L2.SG.TermOp.OO
  rw [Measure.restrict_univ, Measure.restrict_univ, ← ContinuousLinearEquiv.integral_comp_comm]
  simp_rw [hpt]
  rw [show (fun x => h⁻¹ * x) = ⇑(MeasurableEquiv.mulLeft h⁻¹) from rfl, integral_map_equiv]
  rfl

theorem jointBridge_of_steps (P : Parts X u u') (sc : ℝ) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k)
    (hJC : JvConj X) (hZC : ZhatConj X) (hGS : GPosScale X) (hMP : MonoPt X) (hRT : RelTr P sc i0 i0')
    (hMC : MeasConj X) (hOV : OrbVecAt P sc i0 i0') : JointBridge P sc i0 i0' := by
  intro hsc hR hFX hBase hEmb hBuilt νl hνl p w hp hw hG h h' hf v
  have hok : OkPt X u u' w := ⟨hw, hG⟩
  obtain ⟨μRv, hHaar, hQ, hmap⟩ := hνl w hok v
  have hv : h v ∈ HlocU X u v := hlocU_of_mem hf.1 v
  have hv' : h' v ∈ HlocU X u' v := hlocU_of_mem hf.2.1 v
  obtain ⟨hH2, hQ2⟩ := hMC u u' v (h v) (h' v) ((gamW X u u' w) v) hv hv' μRv (νl w v) hHaar hQ
  refine ⟨(h v)⁻¹ * (gamW X u u' w) v * h' v, μRv.map (fun s => (h v)⁻¹ * s * h v),
    (νl w v).map (fun x => (h v)⁻¹ * x), ⟨?_, ?_, hRT hsc hR hFX hBase hEmb w hok h h' hf v, hH2, hQ2⟩, ?_,
    hOV hsc hFX hBase hEmb hBuilt p w hp hok h h' hf v μRv hHaar hmap _⟩
  · rw [hZC u u' 1 v (h v) (h' v) _ hv hv']
    exact hGS u u' v _ (hG v)
  · rw [hZC u u' 1 v (h v) (h' v) _ hv hv']
    exact hMP u u' w hok v
  · intro y
    exact hJC u u' v (h v) (h' v) hv hv' (νl w v) ((gamW X u u' w) v) y

theorem jointBridge_of_open (P : Parts X u u') (sc : ℝ) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k)
    (hRT : RelTr P sc i0 i0') (hOV : OrbVecAt P sc i0 i0') : JointBridge P sc i0 i0' :=
  jointBridge_of_steps P sc i0 i0' jvConj_holds zhatConj_holds gPosScale_holds monoPt_holds hRT measConj_holds hOV

end Formalism.L2.SG.Pf.Carrier.JointPinJB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointPinJB =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeRelTr =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeRelTr", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointQuot\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgePlace\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierInOf\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeNC\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeRel\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierSizes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeCountingBound.ArchPlace\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix MeasureTheory NumberField Formalism.BasicNotions
open Classical

namespace Formalism.L2.SG.Pf.Carrier

open Formalism.L2.SG.RealObj Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj.InfCut Formalism.L2.SG.Pf.Carrier.JointQuot

attribute [local instance] Formalism.BasicNotions.Host.cmStar instCM

section Gen

variable {n : ℕ} {ε : Fin n → Bool}

theorem jUnit_mul {A B : Matrix (Fin n) (Fin n) ℂ} (hA : Aᴴ * Formalism.REAL.Jm ε * A = Formalism.REAL.Jm ε)
    (hB : Bᴴ * Formalism.REAL.Jm ε * B = Formalism.REAL.Jm ε) : (A * B)ᴴ * Formalism.REAL.Jm ε * (A * B) = Formalism.REAL.Jm ε := by
  rw [Matrix.conjTranspose_mul]
  calc Bᴴ * Aᴴ * Formalism.REAL.Jm ε * (A * B) = Bᴴ * (Aᴴ * Formalism.REAL.Jm ε * A) * B := by simp only [Matrix.mul_assoc]
    _ = _ := by rw [hA, hB]

theorem inN_one {r : ℕ} (e : Fin r → Fin n → ℂ) (z : Fin n → ℂ) : InN ε e z 1 := by
  refine ⟨⟨fun a => ?_, ?_⟩, fun y _ => ?_⟩ <;> simp

theorem psi_norm {k r : ℕ} (z : Fin (2 * r + k + 1) → ℂ) (ρ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) :
    star (Formalism.QuantumDeterminants.psi k r z Formalism.QuantumDeterminants.cStd ρ) * Formalism.QuantumDeterminants.psi k r z Formalism.QuantumDeterminants.cStd ρ = 1 := by
  unfold Formalism.QuantumDeterminants.psi
  rw [show ∀ x : ℂ, star (Complex.exp x) = (starRingEnd ℂ) (Complex.exp x) from fun _ => rfl, ← Complex.exp_conj,
    ← Complex.exp_add]
  simp [Complex.conj_ofReal, Complex.conj_I]

end Gen

variable {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word)

theorem psiR_one' (v : InfinitePlace X.B.I.F) (w : D.what₂.Word) (gg : ℕ) :
    psiR (X.B.I.ε v) gg (PtRepPf.frU X w v).e (PtRepPf.frU X w v).fd (PtRepPf.frU X w v).z 1 = 1 :=
  Bridge.psiR_of ⟨fun a => Matrix.one_mulVec _, Matrix.one_mulVec _, fun y _ => by simp⟩ gg

theorem qrq_unit {n r k : ℕ} {ε : Fin n → Bool} {F : PtRepPf.Fr ε r k} {Qm : Matrix (Fin n) (Fin (2 * r + k + 1)) ℂ}
    {Qim : Matrix (Fin (2 * r + k + 1)) (Fin n) ℂ} {c : Fin r → ℂ} (hT : Bridge.TrHyp F Qm Qim c)
    {ρ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ} (hρ : ρᴴ * Formalism.QuantumDeterminants.Hpk k r * ρ = Formalism.QuantumDeterminants.Hpk k r) :
    (Qm * ρ * Qim)ᴴ * Formalism.REAL.Jm ε * (Qm * ρ * Qim) = Formalism.REAL.Jm ε := by
  have h2 : Qimᴴ * Qmᴴ = 1 := by rw [← Matrix.conjTranspose_mul, hT.h2, Matrix.conjTranspose_one]
  calc (Qm * ρ * Qim)ᴴ * Formalism.REAL.Jm ε * (Qm * ρ * Qim)
      = Qimᴴ * ((ρᴴ * (Qmᴴ * Formalism.REAL.Jm ε * Qm) * ρ) * Qim) := by
        simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    _ = Qimᴴ * (Qmᴴ * Formalism.REAL.Jm ε * Qm) * Qim := by rw [hT.hH, hρ, Matrix.mul_assoc]
    _ = (Qimᴴ * Qmᴴ) * Formalism.REAL.Jm ε * (Qm * Qim) := by simp only [Matrix.mul_assoc]
    _ = Formalism.REAL.Jm ε := by rw [h2, hT.h2, Matrix.one_mul, Matrix.mul_one]

theorem relTr_carrierOf (e : InfinitePlace D.host.E ≃ D.what₂.Tau) (he : PlaceTie X e)
    (hv : D.host.v = Formalism.FourierDecayAlt.S6.rd D.host.E / 2) {θ : ℝ} (C : Formalism.L2.SG.LocWSOf.Choice X θ)
    (CA : ℝ) (de de' : ℕ → ℝ) (l : ℕ) (grid : Fin (nfE D) → ℕ → Finset ℝ) (grid1 : Fin (nfE D) → Finset ℝ)
    (T : ∀ j : Fin (nfE D), Formalism.FourierDecayAlt.D.LevTower D.R.k D.R.rS (X.Vloc u (tauE X e j)) (X.Vloc u' (tauE X e j)))
    (hT : ∀ j, Formalism.QuantumDeterminants.Tz D.R.k D.R.rS (T j).base.z = ((D.mem u).A.T : ℝ) ∧
      Formalism.QuantumDeterminants.Tz D.R.k D.R.rS (T j).base.z' = ((D.mem u').A.T : ℝ))
    (fc : ∀ j : Fin (nfE D), Formalism.FourierDecayAlt.B.Mat D.R.k D.R.rS → (X.Vloc u' (tauE X e j) →L[ℂ] X.Vloc u (tauE X e j)))
    (χ : ℝ → ℝ) (sg : Fin (nfE D) → ℂ) (ν' : Fin (nfE D) → Fin (2 * D.R.rS + D.R.k + 1) → ℂ)
    (m₀ : Fin (nfE D) → Formalism.FourierDecayAlt.B.Mat D.R.k D.R.rS)
    (top : ∀ j : Fin (nfE D), (Formalism.FourierDecayAlt.B.Mat D.R.k D.R.rS → (X.Vloc u' (tauE X e j) →L[ℂ] X.Vloc u (tauE X e j))) →
      List Formalism.FourierDecayAlt.C.Letter → Formalism.FourierDecayAlt.C.LPt → Formalism.FourierDecayAlt.C.LPt → ℂ) (A₀ : ℝ)
    (Mo : ModelsFor (sOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀)))
    (sc : ℝ) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) :
    0 < sc → StRel X u u' →
    (CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).FromX →
    (CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).Base i0 i0' →
    (∀ j x, (CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).S.emb j
        (X.ιE x) = X.B.I.φ
          ((CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).τ j) x) →
    ∀ w, OkPt X u u' w → ∀ h h', IsDFrameX X u u' sc i0 i0' (gamW X u u' w) h h' → ∀ v : InfinitePlace X.B.I.F,
      Formalism.FourierDecayAlt.C6.IsRelevant
        ((CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).T
          ((CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).τ.symm v)).base
        (trG ((CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).Q v)
          ((CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).Qi v)
          ((h v)⁻¹ * (gamW X u u' w) v * h' v)) := by
  intro _ hSR hFX _ _ w hw h h' hD v
  obtain ⟨hHu, hH'u, -⟩ := hD
  obtain ⟨hQ, hz, hz', -⟩ := hFX v
  have hz2 : (T ((tauE X e).symm v)).base.z = Formalism.L2.SG.LocWSOf.Qics C (X.pl v) *ᵥ rv X.B.I v (X.zR u) := hz
  have hz2' : (T ((tauE X e).symm v)).base.z' = Formalism.L2.SG.LocWSOf.Qics C (X.pl v) *ᵥ rv X.B.I v (X.zR u') := hz'
  set Qm := Formalism.L2.SG.LocWSOf.Qcs C (X.pl v) with hQm
  set Qim := Formalism.L2.SG.LocWSOf.Qics C (X.pl v) with hQim
  set gg : ℕ := X.B.g with hggdef
  have hgg0 : 0 < gg := by
    rw [hggdef, X.g_eq]; exact Nat.mul_pos (Formalism.L2.SG.Pf.CarrierSz.g_pos D).1 (Formalism.L2.SG.Pf.CarrierSz.g_pos D).2
  set κ : ℂ := -Complex.I * (((gg : ℝ) / (2 * Real.pi) : ℝ) : ℂ) with hκ
  have hc : ∀ a : Fin D.R.rS, cTor ((D.host.g 0 * D.host.g 1 : ℕ) : ℝ) D.R.rS a = κ ^ (D.R.rS - a.val) := by
    intro a
    unfold cTor
    congr 1
    rw [hκ, hggdef, X.g_eq]
    push_cast
    field_simp
  have hTr : Bridge.TrHyp (PtRepPf.frU X u v) Qm Qim (fun a => cTor ((D.host.g 0 * D.host.g 1 : ℕ) : ℝ) D.R.rS a) :=
    ⟨hQ.1, hQ.2.1, hQ.2.2.1, fun a => (hQ.2.2.2 a a rfl).1, fun a => (hQ.2.2.2 a a rfl).2⟩
  have hTr' : Bridge.TrHyp (PtRepPf.frU X u' v) Qm Qim (fun a => cTor ((D.host.g 0 * D.host.g 1 : ℕ) : ℝ) D.R.rS a) :=
    ⟨hQ.1, hQ.2.1, hQ.2.2.1, fun a => (hQ.2.2.2 a a rfl).1, fun a => (hQ.2.2.2 a a rfl).2⟩
  have hfix : ∀ (w : D.what₂.Word) (s : X.B.I.Ginf), s ∈ HsetU X w →
      (∀ a, Formalism.MainNotions.S.uMat (s v) *ᵥ (PtRepPf.frU X w v).e a = (PtRepPf.frU X w v).e a) ∧
      (∀ a, Formalism.MainNotions.S.uMat (s v) *ᵥ (PtRepPf.frU X w v).fd a = (PtRepPf.frU X w v).fd a) ∧
      Formalism.MainNotions.S.uMat (s v) *ᵥ (PtRepPf.frU X w v).z = (PtRepPf.frU X w v).z := by
    intro w s hs
    refine ⟨fun a => hs v _ ?_, fun a => hs v _ ?_, hs v _ ?_⟩
    · exact Or.inl (Or.inl ⟨a, rfl⟩)
    · exact Or.inl (Or.inr ⟨a, rfl⟩)
    · exact Or.inr rfl
  obtain ⟨hHe, hHf, hHz⟩ := hfix u h hHu
  obtain ⟨hH'e, hH'f, hH'z⟩ := hfix u' h' hH'u
  set H := Formalism.MainNotions.S.uMat (h v)
  set Hi := Formalism.MainNotions.S.uMat (h v)⁻¹
  set H' := Formalism.MainNotions.S.uMat (h' v)
  set H'i := Formalism.MainNotions.S.uMat (h' v)⁻¹
  set G := Formalism.MainNotions.S.uMat ((gamW X u u' w) v)
  set Gi := Formalism.MainNotions.S.uMat ((gamW X u u' w) v)⁻¹
  set A := Formalism.MainNotions.S.uMat ((h v)⁻¹ * (gamW X u u' w) v * h' v)
  set Ai := Formalism.MainNotions.S.uMat ((h v)⁻¹ * (gamW X u u' w) v * h' v)⁻¹
  have hAA : A * Ai = 1 := uMat_mul_inv _
  have hAdef : A = Hi * G * H' := rfl
  have hAidef : Ai = H'i * Gi * H := by
    have e : ((h v)⁻¹ * (gamW X u u' w) v * h' v)⁻¹ = (h' v)⁻¹ * ((gamW X u u' w) v)⁻¹ * h v := by group
    show Formalism.MainNotions.S.uMat ((h v)⁻¹ * (gamW X u u' w) v * h' v)⁻¹ = _
    rw [e]
    rfl
  have hδinv : (Qim * A * Qm)⁻¹ = Qim * Ai * Qm := by
    apply Matrix.inv_eq_right_inv
    calc Qim * A * Qm * (Qim * Ai * Qm) = Qim * (A * ((Qm * Qim) * (Ai * Qm))) := by simp only [Matrix.mul_assoc]
      _ = 1 := by rw [hTr.h2, Matrix.one_mul, ← Matrix.mul_assoc A Ai Qm, hAA, Matrix.one_mul, hTr.h1]
  refine ⟨Bridge.delta_GV hTr (_root_.PI.UnitaryGroupMassFormula.LCG.ap_inUJ _), fun ρ0 hρ => ?_⟩
  obtain ⟨ρ, rfl⟩ : ∃ ρ : Matrix (Fin (2 * D.R.rS + D.R.k + 1)) (Fin (2 * D.R.rS + D.R.k + 1)) ℂ, ρ = ρ0 := ⟨ρ0, rfl⟩
  have hρ1 : ρ ∈ Formalism.QuantumDeterminants.Nset D.R.k D.R.rS := hρ.1
  have hρ2 : (Qim * A * Qm)⁻¹ * ρ * (Qim * A * Qm) ∈ Formalism.QuantumDeterminants.Nset D.R.k D.R.rS := hρ.2
  change Formalism.QuantumDeterminants.psi D.R.k D.R.rS (T ((tauE X e).symm v)).base.z Formalism.QuantumDeterminants.cStd ρ =
    Formalism.QuantumDeterminants.psi D.R.k D.R.rS (T ((tauE X e).symm v)).base.z' Formalism.QuantumDeterminants.cStd ((Qim * A * Qm)⁻¹ * ρ * (Qim * A * Qm))
  rw [hδinv] at hρ2 ⊢
  rw [hz2, hz2']

  have hρu := Formalism.FourierDecayAlt.P.Dx2.OrbJ.isUnit_of_N hρ1
  set ρi := ρ⁻¹
  have hρρ : ρ * ρi = 1 := Matrix.mul_nonsing_inv ρ hρu
  have hρρ' : ρi * ρ = 1 := Matrix.nonsing_inv_mul ρ hρu

  set M := H * (Qm * ρ * Qim) * Hi with hM
  set Mi := H * (Qm * ρi * Qim) * Hi with hMi
  have hHiH : Hi * H = 1 := _root_.Formalism.L2.SG.PoincareInHH.Cut.uMat_inv_mul (h v)
  have hHHi : H * Hi = 1 := uMat_mul_inv (h v)
  have hMMi : M * Mi = 1 := by
    calc M * Mi = H * (Qm * (ρ * ((Qim * ((Hi * H) * (Qm * (ρi * (Qim * Hi)))))))) := by
          simp only [hM, hMi, Matrix.mul_assoc]
      _ = 1 := by
        rw [hHiH, Matrix.one_mul, ← Matrix.mul_assoc Qim Qm, hTr.h1, Matrix.one_mul, ← Matrix.mul_assoc ρ ρi,
          hρρ, Matrix.one_mul, ← Matrix.mul_assoc Qm Qim, hTr.h2, Matrix.one_mul, hHHi]
  have hMiM : Mi * M = 1 := by
    calc Mi * M = H * (Qm * (ρi * ((Qim * ((Hi * H) * (Qm * (ρ * (Qim * Hi)))))))) := by
          simp only [hM, hMi, Matrix.mul_assoc]
      _ = 1 := by
        rw [hHiH, Matrix.one_mul, ← Matrix.mul_assoc Qim Qm, hTr.h1, Matrix.one_mul, ← Matrix.mul_assoc ρi ρ,
          hρρ', Matrix.one_mul, ← Matrix.mul_assoc Qm Qim, hTr.h2, Matrix.one_mul, hHHi]
  have hMJ : Mᴴ * Formalism.REAL.Jm (X.B.I.ε v) * M = Formalism.REAL.Jm (X.B.I.ε v) :=
    jUnit_mul (jUnit_mul (_root_.PI.UnitaryGroupMassFormula.LCG.ap_inUJ (h v)) (qrq_unit hTr hρ1.1)) (_root_.PI.UnitaryGroupMassFormula.LCG.ap_inUJ (h v)⁻¹)
  let sv : Formalism.REAL.UJ (X.B.I.ε v) := ⟨⟨M, Mi, hMMi, hMiM⟩, hMJ⟩
  let s : X.B.I.Ginf := Pi.mulSingle (M := fun v' => Formalism.REAL.UJ (X.B.I.ε v')) v sv
  have hsv : Formalism.MainNotions.S.uMat (s v) = M := by simp [s, sv, Formalism.MainNotions.S.uMat]
  have hso : ∀ v', v' ≠ v → s v' = 1 := fun v' hv' => by
    show Pi.mulSingle (M := fun v' => Formalism.REAL.UJ (X.B.I.ε v')) v sv v' = 1
    exact Pi.mulSingle_eq_of_ne (M := fun v' => Formalism.REAL.UJ (X.B.I.ε v')) hv' sv
  have huone : ∀ v', Formalism.MainNotions.S.uMat (1 : Formalism.REAL.UJ (X.B.I.ε v')) = 1 := fun v' => by simp [Formalism.MainNotions.S.uMat]

  have hkey : Gi * M * G = H' * (Qm * (Qim * Ai * Qm * ρ * (Qim * A * Qm)) * Qim) * H'i := by
    have e1 : Qm * (Qim * Ai * Qm * ρ * (Qim * A * Qm)) * Qim = Ai * (Qm * ρ * Qim) * A := by
      calc Qm * (Qim * Ai * Qm * ρ * (Qim * A * Qm)) * Qim
          = (Qm * Qim) * Ai * (Qm * ρ * Qim) * A * (Qm * Qim) := by simp only [Matrix.mul_assoc]
        _ = Ai * (Qm * ρ * Qim) * A := by rw [hTr.h2, Matrix.one_mul, Matrix.mul_one]
    rw [e1, hAdef, hAidef]
    have hH'H'i : H' * H'i = 1 := uMat_mul_inv (h' v)
    calc Gi * M * G = Gi * (H * (Qm * ρ * Qim) * Hi) * G := rfl
      _ = (H' * H'i) * (Gi * (H * ((Qm * ρ * Qim) * (Hi * (G * (H' * H'i)))))) := by
          rw [hH'H'i, Matrix.one_mul, Matrix.mul_one]; simp only [Matrix.mul_assoc]
      _ = H' * (H'i * Gi * H * (Qm * ρ * Qim) * (Hi * G * H')) * H'i := by simp only [Matrix.mul_assoc]
  have hs : s ∈ StInf X u u' (gamW X u u' w) := by
    refine ⟨fun v' => ?_, fun v' => ?_⟩
    · by_cases hv' : v' = v
      · subst hv'
        show InN (X.B.I.ε v') (PtRepPf.frU X u v').e (PtRepPf.frU X u v').z (Formalism.MainNotions.S.uMat (s v'))
        rw [hsv]
        exact Bridge.inN_conj (_root_.PI.UnitaryGroupMassFormula.LCG.ap_inUJ (h v')) hHHi hHiH hHe hHz (Bridge.inN_Q hTr hρ1)
      · show InN _ _ _ (Formalism.MainNotions.S.uMat (s v'))
        rw [hso v' hv', huone]
        exact inN_one _ _
    · by_cases hv' : v' = v
      · subst hv'
        show InN (X.B.I.ε v') (PtRepPf.frU X u' v').e (PtRepPf.frU X u' v').z
          (Formalism.MainNotions.S.uMat ((gamW X u u' w) v')⁻¹ * Formalism.MainNotions.S.uMat (s v') * Formalism.MainNotions.S.uMat ((gamW X u u' w) v'))
        rw [hsv, hkey]
        exact Bridge.inN_conj (_root_.PI.UnitaryGroupMassFormula.LCG.ap_inUJ (h' v')) (uMat_mul_inv (h' v')) (_root_.Formalism.L2.SG.PoincareInHH.Cut.uMat_inv_mul (h' v')) hH'e hH'z
          (Bridge.inN_Q hTr' hρ2)
      · show InN _ _ _ (Formalism.MainNotions.S.uMat ((gamW X u u' w) v')⁻¹ * Formalism.MainNotions.S.uMat (s v') *
          Formalism.MainNotions.S.uMat ((gamW X u u' w) v'))
        rw [hso v' hv', huone, Matrix.mul_one, _root_.Formalism.L2.SG.PoincareInHH.Cut.uMat_inv_mul]
        exact inN_one _ _
  have hR := hSR w hw s hs
  have hp1 : psiU X u s = Formalism.QuantumDeterminants.psi D.R.k D.R.rS (Qim *ᵥ rv X.B.I v (X.zR u)) Formalism.QuantumDeterminants.cStd ρ := by
    unfold psiU psiInf
    rw [Finset.prod_eq_single v (fun v' _ hv' => by rw [hso v' hv', huone]; exact psiR_one' X v' u gg)
      (fun h0 => absurd (Finset.mem_univ v) h0)]
    show psiR (X.B.I.ε v) gg (PtRepPf.frU X u v).e (PtRepPf.frU X u v).fd (PtRepPf.frU X u v).z
      (Formalism.MainNotions.S.uMat (s v)) = _
    rw [hsv, Bridge.psiR_conj (_root_.PI.UnitaryGroupMassFormula.LCG.ap_inUJ (h v)) hHiH hHe hHf hHz gg, Bridge.psiR_Q hTr gg hgg0 hc hκ ρ]
    rfl
  have hp2 : psiU X u' ((gamW X u u' w)⁻¹ * s * gamW X u u' w) =
      Formalism.QuantumDeterminants.psi D.R.k D.R.rS (Qim *ᵥ rv X.B.I v (X.zR u')) Formalism.QuantumDeterminants.cStd (Qim * Ai * Qm * ρ * (Qim * A * Qm)) := by
    unfold psiU psiInf
    rw [Finset.prod_eq_single v (fun v' _ hv' => by
        show psiR _ gg _ _ _ (Formalism.MainNotions.S.uMat ((gamW X u u' w) v')⁻¹ * Formalism.MainNotions.S.uMat (s v') *
          Formalism.MainNotions.S.uMat ((gamW X u u' w) v')) = 1
        rw [hso v' hv', huone, Matrix.mul_one, _root_.Formalism.L2.SG.PoincareInHH.Cut.uMat_inv_mul]; exact psiR_one' X v' u' gg)
      (fun h0 => absurd (Finset.mem_univ v) h0)]
    show psiR (X.B.I.ε v) gg (PtRepPf.frU X u' v).e (PtRepPf.frU X u' v).fd (PtRepPf.frU X u' v).z
      (Gi * Formalism.MainNotions.S.uMat (s v) * G) = _
    rw [hsv, hkey, Bridge.psiR_conj (_root_.PI.UnitaryGroupMassFormula.LCG.ap_inUJ (h' v)) (_root_.Formalism.L2.SG.PoincareInHH.Cut.uMat_inv_mul (h' v)) hH'e hH'f hH'z gg,
      Bridge.psiR_Q hTr' gg hgg0 hc hκ]
    rfl
  rw [hp1, hp2] at hR
  calc Formalism.QuantumDeterminants.psi D.R.k D.R.rS (Qim *ᵥ rv X.B.I v (X.zR u)) Formalism.QuantumDeterminants.cStd ρ
      = Formalism.QuantumDeterminants.psi D.R.k D.R.rS (Qim *ᵥ rv X.B.I v (X.zR u)) Formalism.QuantumDeterminants.cStd ρ *
          (star (Formalism.QuantumDeterminants.psi D.R.k D.R.rS (Qim *ᵥ rv X.B.I v (X.zR u')) Formalism.QuantumDeterminants.cStd
            (Qim * Ai * Qm * ρ * (Qim * A * Qm))) *
          Formalism.QuantumDeterminants.psi D.R.k D.R.rS (Qim *ᵥ rv X.B.I v (X.zR u')) Formalism.QuantumDeterminants.cStd
            (Qim * Ai * Qm * ρ * (Qim * A * Qm))) := by rw [psi_norm, mul_one]
    _ = _ := by rw [← mul_assoc, hR, one_mul]

end Formalism.L2.SG.Pf.Carrier
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeRelTr =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierXJointAt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierXJointAt", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierXJoint\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointPinJB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointQuotGeo\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.IsBuiltPlaceOfCompactTest\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateCommuteRaisingConstant\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BlockScaling\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeRelTr\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointQuotStRel\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointQuotStVFix\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierTopOf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.Choice\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.OoQuotOfNuQPin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.RealObj

namespace Formalism.L2.SG.Pf.CarrierXAll

open Formalism.L2.SG.Pf.Carrier

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {X : Formalism.L2.SG.HidaSetting.HidaSetting D} {u u' : D.what₂.Word}

theorem jointTensorAt_of_carrier (I : CarrierIn X u u') (Mo : ModelsFor (sOf I)) (sc : ℝ)
    (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) (νq : X.B.I.Ginf → Measure X.B.I.Ginf)
    (hN : NuQPin X u u' νq) (hG : JointQuot.StVGeo X u u') (hpin : JointPin.PinCov (CarrierOf I Mo))
    (hRT : JointPinJB.RelTr (CarrierOf I Mo) sc i0 i0') (hOV : JointPinJB.OrbVecAt (CarrierOf I Mo) sc i0 i0')
    (hsc : 0 < sc) (hFX : (CarrierOf I Mo).FromX) (hBase : (CarrierOf I Mo).Base i0 i0')
    (hEmb : ∀ j x, (CarrierOf I Mo).S.emb j (X.ιE x) = X.B.I.φ ((CarrierOf I Mo).τ j) x)
    (hBuilt : (CarrierOf I Mo).Built) :
    JointTensorAt X u u' (sOf I) I.T I.fc I.ν' I.m₀ I.τ I.eP I.eQ sc i0 i0' νq :=
  JointPin.jointTensor_of_pin (CarrierOf I Mo) sc i0 i0' νq hN (JointQuot.stRel_holds X u u')
    (JointQuot.locUni_of X u u' hG) (JointQuot.globProd_of X u u' hG) hpin
    (JointPinJB.jointBridge_of_open _ sc i0 i0' hRT hOV) hsc hFX hBase hEmb hBuilt

theorem jointTensorAt_carrierInOf (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word)
    (e : InfinitePlace D.host.E ≃ D.what₂.Tau) (he : Formalism.L2.SG.Pf.Carrier.PlaceTie X e)
    (hv : D.host.v = Formalism.FourierDecayAlt.S6.rd D.host.E / 2) {θ : ℝ} (C : Formalism.L2.SG.LocWSOf.Choice X θ)
    (CA : ℝ) (de de' : ℕ → ℝ) (l : ℕ) (grid : Fin (nfE D) → ℕ → Finset ℝ) (grid1 : Fin (nfE D) → Finset ℝ)
    (T : ∀ j : Fin (nfE D), Formalism.FourierDecayAlt.D.LevTower D.R.k D.R.rS (X.Vloc u (tauE X e j)) (X.Vloc u' (tauE X e j)))
    (hT : ∀ j, Formalism.QuantumDeterminants.Tz D.R.k D.R.rS (T j).base.z = ((D.mem u).A.T : ℝ) ∧
      Formalism.QuantumDeterminants.Tz D.R.k D.R.rS (T j).base.z' = ((D.mem u').A.T : ℝ))
    (fc : ∀ j : Fin (nfE D), Formalism.FourierDecayAlt.B.Mat D.R.k D.R.rS → (X.Vloc u' (tauE X e j) →L[ℂ] X.Vloc u (tauE X e j)))
    (χ : ℝ → ℝ) (sg : Fin (nfE D) → ℂ) (ν' : Fin (nfE D) → Fin (2 * D.R.rS + D.R.k + 1) → ℂ)
    (m₀ : Fin (nfE D) → Formalism.FourierDecayAlt.B.Mat D.R.k D.R.rS)
    (top : ∀ j : Fin (nfE D), (Formalism.FourierDecayAlt.B.Mat D.R.k D.R.rS → (X.Vloc u' (tauE X e j) →L[ℂ] X.Vloc u (tauE X e j))) →
      List Formalism.FourierDecayAlt.C.Letter → Formalism.FourierDecayAlt.C.LPt → Formalism.FourierDecayAlt.C.LPt → ℂ) (A₀ : ℝ)
    (Mo : ModelsFor (sOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀)))
    (sc : ℝ) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) (νq : X.B.I.Ginf → Measure X.B.I.Ginf)
    (hN : NuQPin X u u' νq) (hG : JointQuot.StVGeo X u u')
    (hpin : JointPin.PinCov (CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo))
    (hsc : 0 < sc)
    (hFX : (CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).FromX)
    (hBase : (CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).Base i0 i0')
    (hEmb : ∀ j x, (CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).S.emb j
      (X.ιE x) = X.B.I.φ ((CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).τ j) x)
    (hBuilt : (CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo).Built) :
    JointTensorAt X u u' (sOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀))
      (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀).T
      (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀).fc
      (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀).ν'
      (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀).m₀
      (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀).τ
      (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀).eP
      (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀).eQ sc i0 i0' νq := by
  have hMP : MeasPinAt X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀ Mo sc i0 i0' :=
    Formalism.L2.SG.Pf.Carrier.measPinAt_of X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀ Mo
      sc hsc i0 i0' hFX hBase hEmb (fun _ => (hBuilt.2 _).2.2.1)
  refine jointTensorAt_of_carrier _ Mo sc i0 i0' νq hN hG hpin ?_ ?_ hsc hFX hBase hEmb hBuilt
  · intro h1 h2 h3 h4 h5
    exact relTr_carrierOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀ Mo sc i0 i0' h1 h2 h3 h4 h5
  · intro h1 h2 h3 h4 h5
    exact orbVecAt_carrierOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀ Mo sc i0 i0'
      (fun v => (h5.2 _).2.2.1) hMP h1 h2 h3 h4


open scoped Matrix in
open Formalism.L2.SG.Pf.CarrierT Formalism.L2.SG.Pf.BaseOf Formalism.L2.SG.Pf.Built Formalism.L2.SG.LocWSOf in

theorem jointTensorAt_ITcMo (X : Formalism.L2.SG.HidaSetting.HidaSetting D) {θ : ℝ} (C : Choice X θ) (u u' : D.what₂.Word)
    (e : InfinitePlace D.host.E ≃ D.what₂.Tau) (he : Formalism.L2.SG.Pf.Carrier.PlaceTie X e)
    (hv : D.host.v = Formalism.FourierDecayAlt.S6.rd D.host.E / 2) (CA : ℝ) (de de' : ℕ → ℝ) (l : ℕ)
    (grid : Fin (nfE D) → ℕ → Finset ℝ) (grid1 : Fin (nfE D) → Finset ℝ)
    (fc : ∀ j : Fin (nfE D), Formalism.FourierDecayAlt.B.Mat D.R.k D.R.rS → (X.Vloc u' (tauE X e j) →L[ℂ] X.Vloc u (tauE X e j)))
    (c : Formalism.FourierDecayAlt.LE.Cut) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) (hi : ∀ v, i0 v = i0' v)
    (Θ : ∀ j : Fin (nfE D), Formalism.FourierDecayAlt.Top.TopLift D.R.k D.R.rS (X.Vloc u (tauE X e j)) (X.Vloc u' (tauE X e j)))
    (TP : ∀ j : Fin (nfE D), Formalism.FourierDecayAlt.Top.TypeProj (parE e u u' de de' j) (towersOf X C u u' e j).base.π
      (towersOf X C u u' e j).base.z (m0E X C u u' e j *ᵥ nuE X C u' e i0' j)) (A₀ : ℝ)
    (Mo : ModelsFor (sOf (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀)))
    (sc : ℝ) (νq : X.B.I.Ginf → Measure X.B.I.Ginf) (hN : NuQPin X u u' νq)
    (hpin : JointPin.PinCov (CarrierOf (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀) Mo))
    (hsc : 0 < sc) (hBuilt : (CarrierOf (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀) Mo).Built) :
    JointTensorAt X u u' (sOf (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀))
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).T
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).fc
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).ν'
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).m₀
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).τ
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).eP
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).eQ sc i0 i0' νq := by
  have hG : JointQuot.StVGeo X u u' :=
    JointQuot.stVGeo_of_sec X u u' (Formalism.L2.S.L6.UnitaryStandardVectors.stVSec_holds X u u')
  have hFX := BaseOf.fromX X C u u' e he hv CA de de' l grid grid1 fc c.χ
    (sgOf (Formalism.L2.SG.SpectralTiesReal.gOf D e) (plE D) ((D.mem u).A.T : ℝ) ((D.mem u').A.T : ℝ) de de' (l + 1))
    (nuE X C u' e i0') (m0E X C u u' e)
    (fun j => Formalism.FourierDecayAlt.Top.topOf (parE e u u' de de' j) (l + 1) (towersOf X C u u' e j) (nuE X C u' e i0' j)
      (m0E X C u u' e j) (Θ j) (TP j)) A₀ Mo
  have hQ : ∀ v, (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).Q v *
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).Qi v = 1 :=
    fun v => (isTransp_cs (Formalism.L2.SG.Pf.torTie X) C (X.pl v)).2.1
  have hBase := base_carrierOf (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀) Mo i0 i0' hQ hi
    (fun j => rfl) (fun j => rfl)
  have hEmb := emb_carrierInOf e he hv C CA de de' l grid grid1 (towersOf X C u u' e) (Tz_towersOf_base_eq_T X C u u' e) fc c.χ
    (sgOf (Formalism.L2.SG.SpectralTiesReal.gOf D e) (plE D) ((D.mem u).A.T : ℝ) ((D.mem u').A.T : ℝ) de de' (l + 1))
    (nuE X C u' e i0') (m0E X C u u' e)
    (fun j => Formalism.FourierDecayAlt.Top.topOf (parE e u u' de de' j) (l + 1) (towersOf X C u u' e j) (nuE X C u' e i0' j)
      (m0E X C u u' e j) (Θ j) (TP j)) A₀
  exact jointTensorAt_carrierInOf X u u' e he hv C CA de de' l grid grid1 (towersOf X C u u' e)
    (Tz_towersOf_base_eq_T X C u u' e) fc c.χ
    (sgOf (Formalism.L2.SG.SpectralTiesReal.gOf D e) (plE D) ((D.mem u).A.T : ℝ) ((D.mem u').A.T : ℝ) de de' (l + 1))
    (nuE X C u' e i0') (m0E X C u u' e)
    (fun j => Formalism.FourierDecayAlt.Top.topOf (parE e u u' de de' j) (l + 1) (towersOf X C u u' e j) (nuE X C u' e i0' j)
      (m0E X C u u' e j) (Θ j) (TP j)) A₀ Mo sc i0 i0' νq hN hG hpin hsc hFX hBase hEmb hBuilt

def modelsOf (I : CarrierIn X u u') : ModelsFor (sOf I) where


open scoped Matrix in
open Formalism.L2.SG.Pf.CarrierT Formalism.L2.SG.Pf.BaseOf Formalism.L2.SG.Pf.Built Formalism.L2.SG.LocWSOf in

theorem jointTensor_compact_test (X : Formalism.L2.SG.HidaSetting.HidaSetting D) {θ : ℝ} (C : Choice X θ) (u u' : D.what₂.Word)
    (e : InfinitePlace D.host.E ≃ D.what₂.Tau) (he : Formalism.L2.SG.Pf.Carrier.PlaceTie X e)
    (hv : D.host.v = Formalism.FourierDecayAlt.S6.rd D.host.E / 2) (CA : ℝ) (de de' : ℕ → ℝ) (l : ℕ)
    (grid : Fin (nfE D) → ℕ → Finset ℝ) (grid1 : Fin (nfE D) → Finset ℝ)
    (fc : ∀ j : Fin (nfE D), Formalism.FourierDecayAlt.B.Mat D.R.k D.R.rS → (X.Vloc u' (tauE X e j) →L[ℂ] X.Vloc u (tauE X e j)))
    (c : Formalism.FourierDecayAlt.LE.Cut) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) (hi : ∀ v, i0 v = i0' v)
    (Θ : ∀ j : Fin (nfE D), Formalism.FourierDecayAlt.Top.TopLift D.R.k D.R.rS (X.Vloc u (tauE X e j)) (X.Vloc u' (tauE X e j)))
    (TP : ∀ j : Fin (nfE D), Formalism.FourierDecayAlt.Top.TypeProj (parE e u u' de de' j) (towersOf X C u u' e j).base.π
      (towersOf X C u u' e j).base.z (m0E X C u u' e j *ᵥ nuE X C u' e i0' j)) (A₀ : ℝ)
    (sc : ℝ) (νq : X.B.I.Ginf → Measure X.B.I.Ginf) (hN : NuQPin X u u' νq)
    (hpin : JointPin.PinCov (CarrierOf (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀)
      (modelsOf (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀))))
    (hsc : 0 < sc) (hBuilt : (CarrierOf (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀)
      (modelsOf (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀))).Built) :
    JointTensorAt X u u' (sOf (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀))
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).T
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).fc
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).ν'
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).m₀
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).τ
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).eP
      (ITc X C u u' e he hv CA de de' l grid grid1 fc c i0' Θ TP A₀).eQ sc i0 i0' νq :=
  jointTensorAt_ITcMo X C u u' e he hv CA de de' l grid grid1 fc c i0 i0' hi Θ TP A₀ (modelsOf _) sc νq hN hpin hsc hBuilt

end Formalism.L2.SG.Pf.CarrierXAll
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierXJointAt =====
