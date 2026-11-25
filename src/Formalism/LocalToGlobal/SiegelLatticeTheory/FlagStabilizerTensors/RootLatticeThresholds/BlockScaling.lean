module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointQuotMeas
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierInOf
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbScale
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbVec
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbVecAt
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeNC
public import Formalism.SharpRestriction.CuspSpanNormBounds.RootMeasBig
public import Formalism.SharpRestriction.CuspSpanNormBounds.BigCellDensity
public import Mathlib.Analysis.Complex.Isometry
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ShearMp
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselDecayBounds.BesselUnitNorm.BesselNormSteps.BesselLine.ConvGrp
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.HermitianMatrixIdentities
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.RootHaarLoc
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.LocWSOf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RootCoordinatesIndex
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopTermLem
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StepPinExistsOfPlace
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RealFrameCoordinates
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RootPatterns
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PiMeasureScaling
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RealConjugatorData
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting
import Formalism.HermitianCurvature.HermitianCurvatureProofs.DualCovolumeChangeOfVariables
import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierSizes
import Mathlib.Tactic.TypeStar
import Mathlib.CategoryTheory.Countable
import Mathlib.MeasureTheory.Measure.RegularityCompacts
import Formalism.FormalDegreeBessel.FinalG
import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.SigmaFiniteAmplitudes.RStabInv
import Mathlib.Order.Interval.Finset.Box

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbVecFin, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.TriangularProducts, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelThird, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelFourth, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelSecond, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelFifth, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelMeasure, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.QuotientSpan, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.StandardCoordinates, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BlockScaling

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbVecFin =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbVecFin", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierJointQuotMeas\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierInOf\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DualCovolumeChangeOfVariables\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbScale\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbVec\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbVecAt\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierSizes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeNC\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix MeasureTheory NumberField Formalism.BasicNotions

namespace Formalism.L2.SG.Pf.Carrier

open Formalism.L2.SG.RealObj Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj.InfCut Formalism.L2.SG.Pf.Carrier.JointQuot

attribute [local instance] Formalism.BasicNotions.Host.cmStar instCM

theorem bSt_pos {κ : ℝ} (hκ : 0 < κ) (p : Formalism.FourierDecayAlt.C.LPt) : 0 < Formalism.FourierDecayAlt.D.bSt κ p := by
  unfold Formalism.FourierDecayAlt.D.bSt
  refine List.prod_pos fun x hx => ?_
  obtain ⟨a, -, rfl⟩ := List.mem_map.mp hx
  exact Finset.prod_pos fun m _ => zpow_pos (div_pos (zpow_pos hκ _) Real.pi_pos) _

section AtCarrier

variable {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) (e : InfinitePlace D.host.E ≃ D.what₂.Tau)
  (he : PlaceTie X e) (hv : D.host.v = Formalism.FourierDecayAlt.S6.rd D.host.E / 2) {θ : ℝ} (C : Formalism.L2.SG.LocWSOf.Choice X θ)
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

local notation "PP" => CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo

def MeasPinAt (sc : ℝ) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k) : Prop :=
  ∀ (p : Formalism.FourierDecayAlt.TB.Pt D.host.E) (w : Formalism.MainNotions.S.Point D.host.E (D.R.rS + 1)),
    ptOfL (D := D) (D.R.rS + 1) p = some w → OkPt X u u' w →
    ∀ h h', IsDFrameX X u u' sc i0 i0' (gamW X u u' w) h h' → ∀ (v : InfinitePlace X.B.I.F)
      (μRv : Measure (Formalism.REAL.UJ (X.B.I.ε v))), IsHaarLoc (StV X u u' (gamW X u u' w) v) μRv →
      μRv.map (stCoordV X u' w (gamW X u u' w) v) = muStabV X w →
    ∀ hloc : Formalism.FourierDecayAlt.D.IsLocPt (Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1
      (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p)) ((PP).S.G.r + 1),
      (μRv.map (fun s => (h v)⁻¹ * s * h v)).map
          (fun s => Matrix.of.symm (trG ((PP).Q v) ((PP).Qi v) s)) =
        ENNReal.ofReal (Formalism.FourierDecayAlt.D.bSt (Formalism.FourierDecayAlt.D.kapG ((PP).S.g : ℝ) (Formalism.FourierDecayAlt.S6.rd D.host.E))
            (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p)) •
          Formalism.FourierDecayAlt.D.muR ((PP).T ((PP).τ.symm v)).base
            (trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v)) (hloc.2 ▸ Formalism.FourierDecayAlt.D.ptPerm _)

theorem orbVecAt_carrierOf (sc : ℝ) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k)
    (hbase : ∀ v, Formalism.FourierDecayAlt.D.IsBaseFrame ((PP).T ((PP).τ.symm v)).base ((PP).ν' ((PP).τ.symm v))
      ((PP).m₀ ((PP).τ.symm v)))
    (hMP : MeasPinAt X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀ Mo sc i0 i0') :
    0 < sc → (PP).FromX → (PP).Base i0 i0' → (∀ j x, (PP).S.emb j (X.ιE x) = X.B.I.φ ((PP).τ j) x) →
    ∀ (p : Formalism.FourierDecayAlt.TB.Pt D.host.E) (w : Formalism.MainNotions.S.Point D.host.E (D.R.rS + 1)),
      ptOfL (D := D) (D.R.rS + 1) p = some w → OkPt X u u' w →
      ∀ h h', IsDFrameX X u u' sc i0 i0' (gamW X u u' w) h h' → ∀ (v : InfinitePlace X.B.I.F)
        (μRv : Measure (Formalism.REAL.UJ (X.B.I.ε v))), IsHaarLoc (StV X u u' (gamW X u u' w) v) μRv →
        μRv.map (stCoordV X u' w (gamW X u u' w) v) = muStabV X w →
      ∀ F : Formalism.FourierDecayAlt.B.Mat (PP).S.G.k (PP).S.G.r →
          ((PP).Wq ((PP).S.pl ((PP).τ.symm v)) →L[ℂ] (PP).Wp ((PP).S.pl ((PP).τ.symm v))),
        Formalism.FourierDecayAlt.D.orbJ ((PP).T ((PP).τ.symm v)).base
                  (trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v))
                  ((μRv.map (fun s => (h v)⁻¹ * s * h v)).map
                    (fun s => Matrix.of.symm (trG ((PP).Q v) ((PP).Qi v) s))) F =
          (((Formalism.FourierDecayAlt.D.bSt (Formalism.FourierDecayAlt.D.kapG ((PP).S.g : ℝ) (Formalism.FourierDecayAlt.S6.rd D.host.E))
              (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p))⁻¹ : ℝ) : ℂ) •
            Formalism.FourierDecayAlt.D.vecV ((PP).T ((PP).τ.symm v)).base ((PP).ν' ((PP).τ.symm v)) ((PP).m₀ ((PP).τ.symm v)) F
              (Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1 (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p)) := by
  intro hsc hFX hB hemb p w hp hw h h' hD v μRv hH hpin F
  have hData :
      Formalism.QuantumDeterminants.Zhat D.R.k D.R.rS ((PP).T ((PP).τ.symm v)).base.z ((PP).T ((PP).τ.symm v)).base.z'
                (trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v)) =
                Formalism.FourierDecayAlt.D.ptMatN (Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1
                  (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p)) (D.R.rS + 1) ∧
        0 < Formalism.FourierDecayAlt.D.ptG (Formalism.QuantumDeterminants.Tz D.R.k D.R.rS ((PP).T ((PP).τ.symm v)).base.z *
          Formalism.QuantumDeterminants.Tz D.R.k D.R.rS ((PP).T ((PP).τ.symm v)).base.z') D.R.rS
          (Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1 (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p)) ∧
        Formalism.FourierDecayAlt.D.IsLocPt (Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1
          (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p)) (D.R.rS + 1) ∧
        trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v) ∈ Formalism.FourierDecayAlt.B.GV D.R.k D.R.rS := by
    set j := (tauE X e).symm v with hj
    obtain ⟨hQ, hz, hz', -⟩ := hFX v
    have hz2 : (T j).base.z = Formalism.L2.SG.LocWSOf.Qics C (X.pl v) *ᵥ rv X.B.I v (X.zR u) := hz
    have hz2' : (T j).base.z' = Formalism.L2.SG.LocWSOf.Qics C (X.pl v) *ᵥ rv X.B.I v (X.zR u') := hz'
    set Qm := Formalism.L2.SG.LocWSOf.Qcs C (X.pl v) with hQm
    set Qim := Formalism.L2.SG.LocWSOf.Qics C (X.pl v) with hQim
    set gg : ℕ := D.host.g 0 * D.host.g 1
    have hgg0 : (0 : ℝ) < gg := by
      exact_mod_cast Nat.mul_pos (Formalism.L2.SG.Pf.CarrierSz.g_pos D).1 (Formalism.L2.SG.Pf.CarrierSz.g_pos D).2
    set κ : ℂ := -Complex.I * (((gg : ℝ) / (2 * Real.pi) : ℝ) : ℂ) with hκ
    have hc : ∀ a : Fin D.R.rS, cTor (gg : ℝ) D.R.rS a = κ ^ (D.R.rS - a.val) := by
      intro a; unfold cTor; congr 1; rw [hκ]; push_cast; field_simp
    have hκstar : star κ = -κ := by
      rw [hκ, star_mul', star_neg, Complex.star_def, Complex.conj_I, Complex.conj_ofReal]; ring
    have hκ0 : κ ≠ 0 := by
      rw [hκ]; refine mul_ne_zero (neg_ne_zero.mpr Complex.I_ne_zero) ?_
      exact_mod_cast (div_pos hgg0 (by positivity)).ne'
    have hTr : Bridge.TrHyp (PtRepPf.frU X u v) Qm Qim (fun a => cTor (gg : ℝ) D.R.rS a) :=
      ⟨hQ.1, hQ.2.1, hQ.2.2.1, fun a => (hQ.2.2.2 a a rfl).1, fun a => (hQ.2.2.2 a a rfl).2⟩
    have hTr' : Bridge.TrHyp (PtRepPf.frU X u' v) Qm Qim (fun a => cTor (gg : ℝ) D.R.rS a) :=
      ⟨hQ.1, hQ.2.1, hQ.2.2.1, fun a => (hQ.2.2.2 a a rfl).1, fun a => (hQ.2.2.2 a a rfl).2⟩
    have hfix : ∀ (w : D.what₂.Word) (s : X.B.I.Ginf), s ∈ HsetU X w →
        (∀ a, Formalism.MainNotions.S.uMat (s v) *ᵥ (PtRepPf.frU X w v).e a = (PtRepPf.frU X w v).e a) ∧
        Formalism.MainNotions.S.uMat (s v) *ᵥ (PtRepPf.frU X w v).z = (PtRepPf.frU X w v).z := by
      intro w s hs
      exact ⟨fun a => hs v _ (Or.inl (Or.inl ⟨a, rfl⟩)), hs v _ (Or.inr rfl)⟩
    obtain ⟨hHe, hHz⟩ := hfix u h hD.1
    obtain ⟨hH'e, hH'z⟩ := hfix u' h' hD.2.1
    set γ := gamW X u u' w
    have hrep : IsPtRep X u u' w γ := by
      show IsPtRep X u u' w (gamW X u u' w)
      unfold gamW; rw [dite_eq_left hw.1]; exact hw.1.choose_spec
    set σ : D.host.E →+* ℂ := (X.B.I.φ v).comp X.ιE.symm.toRingHom

    have hpt := hp
    unfold ptOfL Formalism.L2.SG.DataInst.ptOfList at hpt
    split_ifs at hpt with hPtL
    have hw1 : w.1 = (Formalism.L2.SG.DataInst.signPt D.R.rS p).map Prod.swap := by
      rw [← Option.some_inj.mp hpt]; rfl
    have hfst : (Formalism.L2.SG.DataInst.signPt D.R.rS p).map Prod.fst = p.map Prod.fst :=
      Formalism.L2.SG.DataInst.sign_list_fst D.R.rS 1 p
    have hblk : ∀ b ∈ p, 1 ≤ b.1 := by
      intro b hb
      have : b.1 ∈ (Formalism.L2.SG.DataInst.signPt D.R.rS p).map Prod.fst := by
        rw [hfst]; exact List.mem_map_of_mem hb
      obtain ⟨b', hb', hbb⟩ := List.mem_map.mp this
      rw [← hbb]; exact (hPtL.2 b' hb').1
    have hsum : 0 + (p.map Prod.fst).sum ≤ D.R.rS + 1 := by rw [← hfst, hPtL.1]; omega
    have hlt := Bridge.lptOf_toStd σ D.R.rS (gg : ℝ) p 0 hblk hsum
    have hloceq : Formalism.FourierDecayAlt.C.loc ((PP).S.emb j) p = Formalism.FourierDecayAlt.C.loc σ p := by
      unfold Formalism.FourierDecayAlt.C.loc
      refine List.map_congr_left fun b _ => ?_
      congr 1
      have := hemb j (X.ιE.symm b.2)
      rw [RingEquiv.apply_symm_apply] at this
      rw [this]
      show X.B.I.φ ((tauE X e) j) (X.ιE.symm b.2) = X.B.I.φ v (X.ιE.symm b.2)
      rw [hj, Equiv.apply_symm_apply]
    have hstd : Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1 (Formalism.FourierDecayAlt.C.loc ((PP).S.emb j) p) =
        Bridge.lptOf σ κ D.R.rS 0 w.1 := by
      rw [hloceq, hw1]
      exact hlt.symm

    have hA := Formalism.L2.SG.Pf.CarrierTop.zhatO_eq_mul (ZX X u u' 1 γ v)
    rw [hrep v] at hA
    have hM : Formalism.FourierDecayAlt.D.ptMatN (Bridge.lptOf σ κ D.R.rS 0 w.1) (D.R.rS + 1) =
        Matrix.diagonal (fun a : Fin (D.R.rS + 1) => Bridge.Af κ D.R.rS a * 1) * ZX X u u' 1 γ v *
          Matrix.diagonal (fun b : Fin (D.R.rS + 1) => Formalism.L2.SG.Pf.CarrierTop.sgnV D.R.rS b * Bridge.Bf κ D.R.rS b) := by
      rw [Bridge.ptMatN_lptOf σ κ D.R.rS hκstar w]
      show Matrix.diagonal _ * ptC X v w * Matrix.diagonal _ = _
      rw [hA]
      ext a b
      simp only [Matrix.diagonal_mul, Matrix.mul_diagonal]
      ring

    have h1 := Bridge.zhat_cs hTr hTr' (sc := sc) hsc.ne' (Formalism.MainNotions.S.uMat ((h v)⁻¹ * γ v * h' v))
    have h2 : RealObj.Zhat (X.B.I.ε v) (frm X u sc v) (frm X u' sc v) (Formalism.MainNotions.S.uMat ((h v)⁻¹ * γ v * h' v)) =
        ZX X u u' sc γ v :=
      zhat_conj_frames (uMat_unitary (h v)) (uMat_mul_inv (h v))
        (Bridge.fix_famSc (PtRepPf.frU X u v).e (PtRepPf.frU X u v).z hHe hHz sc)
        (Bridge.fix_famSc (PtRepPf.frU X u' v).e (PtRepPf.frU X u' v).z hH'e hH'z sc)
    have hZ : Formalism.QuantumDeterminants.Zhat D.R.k D.R.rS (T j).base.z (T j).base.z'
        (trG Qm Qim ((h v)⁻¹ * γ v * h' v)) = Formalism.FourierDecayAlt.D.ptMatN (Bridge.lptOf σ κ D.R.rS 0 w.1) (D.R.rS + 1) := by
      rw [hz2, hz2']
      have h1' : Formalism.QuantumDeterminants.Zhat D.R.k D.R.rS (Qim *ᵥ rv X.B.I v (X.zR u)) (Qim *ᵥ rv X.B.I v (X.zR u'))
          (trG Qm Qim ((h v)⁻¹ * γ v * h' v)) =
          Matrix.diagonal (fun a => star (Bridge.lam (fun a => cTor (gg : ℝ) D.R.rS a) sc a)) *
            RealObj.Zhat (X.B.I.ε v) (frm X u sc v) (frm X u' sc v) (Formalism.MainNotions.S.uMat ((h v)⁻¹ * γ v * h' v)) *
            Matrix.diagonal (Bridge.lam (fun a => cTor (gg : ℝ) D.R.rS a) sc) := h1
      rw [h1', h2, Formalism.L2.SG.Pf.CarrierTop.zx_sc, hM]
      ext a b
      simp only [Matrix.diagonal_mul, Matrix.mul_diagonal]
      have ha := (Bridge.cS_lam hc hsc.ne' a).2
      have hb := (Bridge.cS_lam hc hsc.ne' b).1
      calc star (Bridge.lam _ sc a) * (Formalism.L2.SG.Pf.CarrierTop.cS D.R.rS sc a * ZX X u u' 1 γ v a b *
            Formalism.L2.SG.Pf.CarrierTop.cS D.R.rS sc b) * Bridge.lam _ sc b
          = (star (Bridge.lam (fun a => cTor (gg : ℝ) D.R.rS a) sc a) * Formalism.L2.SG.Pf.CarrierTop.cS D.R.rS sc a) *
              ZX X u u' 1 γ v a b *
              (Formalism.L2.SG.Pf.CarrierTop.cS D.R.rS sc b * Bridge.lam (fun a => cTor (gg : ℝ) D.R.rS a) sc b) := by ring
        _ = _ := by
          rw [ha, hb]
          simp only [Bridge.Af, Bridge.Bf, Formalism.L2.SG.Pf.CarrierTop.sgnV]
          have : ((-1 : ℂ) ^ (D.R.rS - b.val)) * ((-1 : ℂ) ^ (D.R.rS - b.val)) = 1 := by
            rw [← pow_add, ← two_mul, pow_mul]; norm_num
          linear_combination (star (κ ^ (D.R.rS - a.val)) * ZX X u u' 1 γ v a b * κ ^ (D.R.rS - b.val)) * this.symm

    have hG1 : 0 < ‖RealObj.Dl (ZX X u u' 1 γ v) (D.R.rS + 1)‖ ^ 2 -
        Tw (D := D) u * Tw (D := D) u' * ‖RealObj.Dl (ZX X u u' 1 γ v) D.R.rS‖ ^ 2 := by
      have hGX := hw.2 v
      change 0 < Gv (Tw (D := D) u) (Tw (D := D) u') (ZX X u u' D.host.rdE γ v) at hGX
      unfold Gv at hGX
      have hcl : Formalism.L2.SG.Pf.CarrierTop.cS D.R.rS D.host.rdE (Fin.last D.R.rS) = 1 := by
        simp [Formalism.L2.SG.Pf.CarrierTop.cS]
      have hGd := Bridge.G_diag D.R.rS (ZX X u u' 1 γ v) (Formalism.L2.SG.Pf.CarrierTop.cS D.R.rS D.host.rdE)
        (Formalism.L2.SG.Pf.CarrierTop.cS D.R.rS D.host.rdE) (Tw (D := D) u * Tw (D := D) u') (by rw [hcl]; simp)
      rw [Formalism.L2.SG.Pf.CarrierTop.zx_sc, hGd] at hGX
      by_contra hle
      push Not at hle
      have : (‖∏ i : Fin D.R.rS, Formalism.L2.SG.Pf.CarrierTop.cS D.R.rS D.host.rdE (Fin.castLE (Nat.le_succ D.R.rS) i)‖ *
          ‖∏ i : Fin D.R.rS, Formalism.L2.SG.Pf.CarrierTop.cS D.R.rS D.host.rdE (Fin.castLE (Nat.le_succ D.R.rS) i)‖) ^ 2 *
          (‖RealObj.Dl (ZX X u u' 1 γ v) (D.R.rS + 1)‖ ^ 2 -
            Tw (D := D) u * Tw (D := D) u' * ‖RealObj.Dl (ZX X u u' 1 γ v) D.R.rS‖ ^ 2) ≤ 0 :=
        mul_nonpos_of_nonneg_of_nonpos (sq_nonneg _) hle
      linarith
    have hG : 0 < Formalism.FourierDecayAlt.D.ptG (Formalism.QuantumDeterminants.Tz D.R.k D.R.rS (T j).base.z * Formalism.QuantumDeterminants.Tz D.R.k D.R.rS (T j).base.z')
        D.R.rS (Bridge.lptOf σ κ D.R.rS 0 w.1) := by
      rw [(hT j).1, (hT j).2]
      have hdet1 : (Formalism.FourierDecayAlt.D.ptMatN (Bridge.lptOf σ κ D.R.rS 0 w.1) (D.R.rS + 1)).det =
          RealObj.Dl (Formalism.FourierDecayAlt.D.ptMatN (Bridge.lptOf σ κ D.R.rS 0 w.1) (D.R.rS + 1)) (D.R.rS + 1) :=
        (Bridge.dl_top' _).symm
      have hdet2 : (Formalism.FourierDecayAlt.D.ptMatN (Bridge.lptOf σ κ D.R.rS 0 w.1) D.R.rS).det =
          RealObj.Dl (Formalism.FourierDecayAlt.D.ptMatN (Bridge.lptOf σ κ D.R.rS 0 w.1) (D.R.rS + 1)) D.R.rS := by
        unfold RealObj.Dl; rw [dite_eq_left (Nat.le_succ _)]; rfl
      unfold Formalism.FourierDecayAlt.D.ptG
      have hGd := Bridge.G_diag D.R.rS (ZX X u u' 1 γ v) (fun a : Fin (D.R.rS + 1) => Bridge.Af κ D.R.rS a * 1)
        (fun b : Fin (D.R.rS + 1) => Formalism.L2.SG.Pf.CarrierTop.sgnV D.R.rS b * Bridge.Bf κ D.R.rS b)
        (((D.mem u).A.T : ℝ) * ((D.mem u').A.T : ℝ))
        (by simp [Bridge.Af, Bridge.Bf, Formalism.L2.SG.Pf.CarrierTop.sgnV])
      rw [hdet1, hdet2, Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq, hM, hGd]
      have hne1 : (∏ i : Fin D.R.rS, Bridge.Af κ D.R.rS (Fin.castLE (Nat.le_succ D.R.rS) i) * 1) ≠ 0 :=
        Finset.prod_ne_zero_iff.mpr fun i _ => by
          simp [Bridge.Af, hκ0]
      have hne2 : (∏ i : Fin D.R.rS, Formalism.L2.SG.Pf.CarrierTop.sgnV D.R.rS (Fin.castLE (Nat.le_succ D.R.rS) i) *
          Bridge.Bf κ D.R.rS (Fin.castLE (Nat.le_succ D.R.rS) i)) ≠ 0 :=
        Finset.prod_ne_zero_iff.mpr fun i _ => by
          simp [Bridge.Bf, Formalism.L2.SG.Pf.CarrierTop.sgnV, hκ0]
      have hpos : 0 < (‖∏ i : Fin D.R.rS, Bridge.Af κ D.R.rS (Fin.castLE (Nat.le_succ D.R.rS) i) * 1‖ *
          ‖∏ i : Fin D.R.rS, Formalism.L2.SG.Pf.CarrierTop.sgnV D.R.rS (Fin.castLE (Nat.le_succ D.R.rS) i) *
            Bridge.Bf κ D.R.rS (Fin.castLE (Nat.le_succ D.R.rS) i)‖) ^ 2 :=
        pow_pos (mul_pos (norm_pos_iff.mpr hne1) (norm_pos_iff.mpr hne2)) 2
      unfold Tw at hG1
      exact mul_pos hpos hG1
    have hGV := Bridge.delta_GV hTr (uMat_unitary ((h v)⁻¹ * γ v * h' v))
    have hZ' : Formalism.QuantumDeterminants.Zhat D.R.k D.R.rS (T j).base.z (T j).base.z' (trG Qm Qim ((h v)⁻¹ * γ v * h' v)) =
        Formalism.FourierDecayAlt.D.ptMatN (Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1 (Formalism.FourierDecayAlt.C.loc ((PP).S.emb j) p)) (D.R.rS + 1) := by
      rw [hstd]; exact hZ
    have hGpos : 0 < Formalism.FourierDecayAlt.D.ptG (Formalism.QuantumDeterminants.Tz D.R.k D.R.rS (T j).base.z * Formalism.QuantumDeterminants.Tz D.R.k D.R.rS (T j).base.z')
        D.R.rS (Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1 (Formalism.FourierDecayAlt.C.loc ((PP).S.emb j) p)) := by
      rw [hstd]; exact hG
    refine ⟨hZ', hGpos, ?_, hGV⟩
    rw [show (Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1 (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p)) =
      Bridge.lptOf σ κ D.R.rS 0 w.1 from hstd]
    exact Bridge.isLocPt_lptOf σ κ D.R.rS hκ0 w
  obtain ⟨hZ, hG, hloc, hGV⟩ := hData
  have hloc' : Formalism.FourierDecayAlt.D.IsLocPt (Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1
      (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p)) ((PP).S.G.r + 1) := hloc
  rw [hMP p w hp hw h h' hD v μRv hH hpin hloc']
  have hrel := Formalism.FourierDecayAlt.P.relevant_points_holds D.R.k D.R.rS _ _ ((PP).T ((PP).τ.symm v)).base _ _ hloc hGV hZ
  have hmono := Formalism.FourierDecayAlt.P.Dx2.VV.ptMatN_monoP' _ (D.R.rS + 1) hloc.2 hloc.1
  have hHaar := Formalism.FourierDecayAlt.P.radial_measure_is_haar D.R.k D.R.rS _ _ ((PP).T ((PP).τ.symm v)).base _ _ _ hGV hmono.2
    (hZ.trans hmono.1)
  have hb : 0 < Formalism.FourierDecayAlt.D.bSt (Formalism.FourierDecayAlt.D.kapG ((PP).S.g : ℝ) (Formalism.FourierDecayAlt.S6.rd D.host.E))
      (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p) := by
    refine bSt_pos ?_ _
    unfold Formalism.FourierDecayAlt.D.kapG
    have hg : (0 : ℝ) < ((PP).S.g : ℝ) := by
      show (0 : ℝ) < ((D.host.g 0 * D.host.g 1 : ℕ) : ℝ)
      exact_mod_cast Nat.mul_pos (Formalism.L2.SG.Pf.CarrierSz.g_pos D).1 (Formalism.L2.SG.Pf.CarrierSz.g_pos D).2
    exact div_pos (by positivity) (mul_pos hg (Formalism.FourierDecayAlt.P.Jx3.rd_pos D.host.E))
  have hHaar' : Formalism.FourierDecayAlt.B.IsHaarOn (Formalism.FourierDecayAlt.C6.Rset
      (trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v)))
      (Formalism.FourierDecayAlt.D.muR ((PP).T ((PP).τ.symm v)).base
        (trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v)) (hloc'.2 ▸ Formalism.FourierDecayAlt.D.ptPerm _)) := hHaar
  refine (Bridge.orbJ_smul _ _ _ F hrel hHaar' hb).trans ?_
  have hDF := dFrameBridge_carrierOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀ Mo sc
    hsc.ne' i0 i0' hFX hB (gamW X u u' w) h h' hD v
  have hVec := Formalism.FourierDecayAlt.P.isotropic_vectors_linear_indep D.R.k D.R.rS _ _
    ((PP).T ((PP).τ.symm v)).base ((PP).ν' ((PP).τ.symm v)) ((PP).m₀ ((PP).τ.symm v)) F _ hloc'
    (trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v)) (hbase v) hG hGV hZ hDF
  exact congrArg (fun z => (_ : ℂ) • z) hVec.symm

end AtCarrier

end Formalism.L2.SG.Pf.Carrier
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbVecFin =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.TriangularProducts =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.TriangularProducts", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.RootMeasBig\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace Formalism.L2.SG.TriangularProducts

def bi : List ℕ → ℕ → ℕ
  | [], _ => 0
  | s :: S, p => if p < s then 0 else 1 + bi S (p - s)

theorem blockIdx_eq_bi : ∀ (L : List (ℂ × ℕ)) (p : ℕ), Formalism.MainNotions.S.blockIdx L p = bi (L.map Prod.snd) p
  | [], _ => rfl
  | (t, s) :: L, p => by
    simp only [Formalism.MainNotions.S.blockIdx, bi, List.map_cons]
    split_ifs
    · rfl
    · rw [blockIdx_eq_bi L (p - s)]

def PS (S : List ℕ) : Finset (ℕ × ℕ) :=
  ((range S.sum) ×ˢ (range S.sum)).filter (fun q => q.1 < q.2 ∧ bi S q.1 = bi S q.2)

theorem prod_tri {M : Type*} [CommMonoid M] (s : ℕ) (f : ℕ × ℕ → M) :
    ∏ q ∈ ((range s) ×ˢ (range s)).filter (fun q => q.1 < q.2), f q = ∏ b ∈ range s, ∏ a ∈ range b, f (a, b) := by
  rw [Finset.prod_filter, Finset.prod_product_right]
  refine Finset.prod_congr rfl fun b hb => ?_
  rw [← Finset.prod_filter]
  congr 1
  ext a
  simp only [Finset.mem_filter, Finset.mem_range] at hb ⊢
  omega

theorem prod_block {M : Type*} [CommMonoid M] (F : ℕ → M) (s : ℕ) :
    ∏ q ∈ ((range s) ×ˢ (range s)).filter (fun q => q.1 < q.2), F (q.2 - q.1) = ∏ m ∈ Ico 1 s, F m ^ (s - m) := by
  rw [prod_tri]
  induction s with
  | zero => simp
  | succ s ih =>
    rw [Finset.prod_range_succ, ih]
    have hG : ∏ a ∈ range s, F (s - a) = ∏ m ∈ Ico 1 (s + 1), F m := by
      rw [Finset.prod_Ico_eq_prod_range, Nat.add_sub_cancel]
      rw [← Finset.prod_range_reflect (fun j => F (1 + j)) s]
      refine Finset.prod_congr rfl fun a ha => ?_
      simp only [Finset.mem_range] at ha
      congr 1
      omega
    rw [hG]
    rcases Nat.eq_zero_or_pos s with h0 | hpos
    · subst h0; simp
    · have e1 : ∏ m ∈ Ico 1 (s + 1), F m ^ (s + 1 - m) = (∏ m ∈ Ico 1 (s + 1), F m ^ (s - m)) * ∏ m ∈ Ico 1 (s + 1), F m := by
        rw [← Finset.prod_mul_distrib]
        refine Finset.prod_congr rfl fun m hm => ?_
        simp only [Finset.mem_Ico] at hm
        rw [← pow_succ]
        congr 1
        omega
      have e2 : ∏ m ∈ Ico 1 (s + 1), F m ^ (s - m) = ∏ m ∈ Ico 1 s, F m ^ (s - m) := by
        rw [Finset.prod_Ico_succ_top (by omega), Nat.sub_self, pow_zero, mul_one]
      rw [e1, e2]

theorem prod_PS {M : Type*} [CommMonoid M] (F : ℕ → M) :
    ∀ S : List ℕ, ∏ q ∈ PS S, F (q.2 - q.1) = (S.map fun s => ∏ m ∈ Ico 1 s, F m ^ (s - m)).prod
  | [] => by simp [PS]
  | s :: S => by
    have hsplit : PS (s :: S) = (((range s) ×ˢ (range s)).filter (fun q => q.1 < q.2)).disjUnion
        ((PS S).image fun q => (q.1 + s, q.2 + s)) (by
          rw [Finset.disjoint_left]
          rintro ⟨a, b⟩ h1 h2
          simp only [Finset.mem_filter, Finset.mem_product, Finset.mem_range] at h1
          simp only [Finset.mem_image, Prod.mk.injEq, Prod.exists] at h2
          obtain ⟨a', b', -, h3, -⟩ := h2
          omega) := by
      ext ⟨a, b⟩
      unfold PS
      rw [Finset.mem_disjUnion, Finset.mem_filter, Finset.mem_filter, Finset.mem_image]
      simp only [Finset.mem_filter, Finset.mem_product, Finset.mem_range, Prod.mk.injEq, List.sum_cons, bi,
        Prod.exists]
      constructor
      · rintro ⟨⟨ha, hb⟩, hab, hbi⟩
        by_cases has : a < s
        · by_cases hbs : b < s
          · exact Or.inl ⟨⟨has, hbs⟩, hab⟩
          · rw [ite_eq_left has, ite_eq_right hbs] at hbi; omega
        · have hbs : ¬ b < s := by omega
          rw [ite_eq_right has, ite_eq_right hbs] at hbi
          exact Or.inr ⟨a - s, b - s, ⟨⟨by omega, by omega⟩, by omega, by omega⟩, by omega, by omega⟩
      · rintro (⟨⟨ha, hb⟩, hab⟩ | ⟨a', b', ⟨⟨ha', hb'⟩, hab', hbi'⟩, rfl, rfl⟩)
        · refine ⟨⟨by omega, by omega⟩, hab, ?_⟩
          rw [ite_eq_left ha, ite_eq_left hb]
        · refine ⟨⟨by omega, by omega⟩, by omega, ?_⟩
          rw [ite_eq_right (by omega), ite_eq_right (by omega), Nat.add_sub_cancel,
            Nat.add_sub_cancel, hbi']
    rw [hsplit, Finset.prod_disjUnion, prod_block, Finset.prod_image (fun x _ y _ h => by
      simp only [Prod.mk.injEq] at h; exact Prod.ext (by omega) (by omega)), List.map_cons, List.prod_cons]
    congr 1
    rw [← prod_PS F S]
    refine Finset.prod_congr rfl fun q _ => ?_
    congr 1
    omega

theorem prod_rootPat {M : Type*} [CommMonoid M] {r : ℕ} (γ : Formalism.MainNotions.S.Point ℂ (r + 1)) (F : ℕ → M) :
    ∏ q ∈ Formalism.MainNotions.S.rootPat γ, F (q.2.val - q.1.val) =
      (γ.1.map fun b => ∏ m ∈ Ico 1 b.2, F m ^ (b.2 - m)).prod := by
  have hsum : (γ.1.map Prod.snd).sum = r + 1 := γ.2.2
  have himg : (Formalism.MainNotions.S.rootPat γ).image (fun q : Fin (r + 1) × Fin (r + 1) => (q.1.val, q.2.val)) =
      PS (γ.1.map Prod.snd) := by
    ext ⟨a, b⟩
    unfold PS
    rw [Finset.mem_image, Finset.mem_filter]
    simp only [Finset.mem_product, Finset.mem_range, hsum, Formalism.MainNotions.S.rootPat, Finset.mem_filter, Finset.mem_univ,
      true_and, Prod.mk.injEq, Prod.exists]
    constructor
    · rintro ⟨a', b', ⟨hab, hbi⟩, rfl, rfl⟩
      refine ⟨⟨a'.isLt, b'.isLt⟩, hab, ?_⟩
      rw [← blockIdx_eq_bi, ← blockIdx_eq_bi]
      exact hbi
    · rintro ⟨⟨ha, hb⟩, hab, hbi⟩
      refine ⟨⟨a, ha⟩, ⟨b, hb⟩, ⟨hab, ?_⟩, rfl, rfl⟩
      rw [blockIdx_eq_bi, blockIdx_eq_bi]
      exact hbi
  have h1 := prod_PS F (γ.1.map Prod.snd)
  rw [← himg, Finset.prod_image (fun x _ y _ h => by
    simp only [Prod.mk.injEq] at h; exact Prod.ext (Fin.ext h.1) (Fin.ext h.2))] at h1
  rw [List.map_map] at h1
  exact h1

end Formalism.L2.SG.TriangularProducts

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.TriangularProducts =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelThird =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelThird", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BigCellDensity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Formalism.QuantumDeterminants
open scoped ENNReal

namespace Formalism.L2.SG.monomialWeightModel

open Formalism.MainNotions.BigCellDensity Formalism.FourierDecayAlt.P.Dx2.Rad

variable {r : ℕ} (pN : Formalism.MainNotions.S.Point ℂ (r + 1))

local notation "W" => wPt pN

def sw (q : Formalism.FourierDecayAlt.C2.Lstidx W) : Formalism.FourierDecayAlt.C2.Lstidx W :=
  ⟨(W q.1.2, W q.1.1), by
    exact ⟨by simpa only [_root_.Formalism.MainNotions.BigCellDensity.wPt_symm] using q.2.2,
      by simpa only [_root_.Formalism.MainNotions.BigCellDensity.wPt_symm, wPt_invol] using q.2.1⟩⟩

variable (d : Fin (r + 1) → ℂ)

def Rm (x' : Formalism.FourierDecayAlt.C2.Lstidx W → ℂ) : Formalism.FourierDecayAlt.C2.Lstidx W → ℂ :=
  fun q => d (W q.1.1) / d (W q.1.2) * star (x' (sw pN q))

private theorem low_apply' (v : Formalism.FourierDecayAlt.C2.Lstidx W → ℂ) (i j : Fin (r + 1)) :
    low W v i j = (if i = j then 1 else 0) +
      (if h : j < i ∧ (W).symm i < (W).symm j then v ⟨(i, j), h⟩ else 0) := by
  simp only [Formalism.FourierDecayAlt.P.Dx2.Rad.low, Formalism.FourierDecayAlt.C2.lowOf, Matrix.add_apply, Matrix.one_apply, Matrix.of_apply]
  congr 1
  split_ifs with h
  · rw [Finset.sum_eq_single ⟨(i, j), h⟩]
    · simp
    · intro q _ hq
      rw [ite_eq_right]
      intro hq'
      exact hq (Subtype.ext hq')
    · intro hh
      exact absurd (Finset.mem_univ _) hh
  · refine Finset.sum_eq_zero fun q _ => ?_
    rw [ite_eq_right]
    intro hq'
    apply h
    have hq2 := q.2
    rw [hq'] at hq2
    exact hq2

theorem low_R_mono (hd : ∀ a, d a ≠ 0) (x' : Formalism.FourierDecayAlt.C2.Lstidx W → ℂ) :
    low W (Rm pN d x') * Formalism.FourierDecayAlt.C2.monoP W d = Formalism.FourierDecayAlt.C2.monoP W d * (low W x')ᴴ := by
  ext i b
  rw [Matrix.mul_apply, Matrix.mul_apply,
    Finset.sum_eq_single ((wPt pN) b) (fun c _ hc => by simp [Formalism.FourierDecayAlt.C2.monoP, hc]) (by simp),
    Finset.sum_eq_single ((wPt pN) i) (fun a _ ha => by
      have hia : i ≠ (wPt pN) a := fun hi => ha (by rw [hi, wPt_invol])
      simp [Formalism.FourierDecayAlt.C2.monoP, hia]) (by simp)]
  simp only [Formalism.FourierDecayAlt.C2.monoP, Matrix.of_apply, Matrix.conjTranspose_apply,
    wPt_invol, ite_true]
  rw [low_apply', low_apply']
  by_cases h1 : i = (wPt pN) b
  · subst h1
    simp [wPt_invol, _root_.Formalism.MainNotions.BigCellDensity.wPt_symm]
  · have h1' : b ≠ (wPt pN) i := fun h => h1 (by rw [h, wPt_invol])
    rw [ite_eq_right h1, ite_eq_right h1', zero_add, zero_add]
    have key : ((wPt pN) b < i ∧ (wPt pN).symm i < (wPt pN).symm ((wPt pN) b)) ↔
        ((wPt pN) i < b ∧ (wPt pN).symm b < (wPt pN).symm ((wPt pN) i)) := by
      rw [Equiv.symm_apply_apply, Equiv.symm_apply_apply, _root_.Formalism.MainNotions.BigCellDensity.wPt_symm, _root_.Formalism.MainNotions.BigCellDensity.wPt_symm]
      exact And.comm
    by_cases h2 : (wPt pN) b < i ∧ (wPt pN).symm i < (wPt pN).symm ((wPt pN) b)
    · have h3 := key.1 h2
      have hsw : sw pN ⟨(i, (wPt pN) b), h2⟩ = ⟨(b, (wPt pN) i), h3⟩ :=
        Subtype.ext (Prod.ext (wPt_invol pN b) rfl)
      rw [dite_eq_left h2, dite_eq_left h3]
      simp only [Rm]
      rw [hsw, wPt_invol]
      field_simp [hd b]
    · have h3 : ¬ ((wPt pN) i < b ∧ (wPt pN).symm b < (wPt pN).symm ((wPt pN) i)) := fun h => h2 (key.2 h)
      rw [dite_eq_right h2, dite_eq_right h3]
      simp

theorem mono_mul_inv (hd : ∀ a, d a ≠ 0) :
    Formalism.FourierDecayAlt.C2.monoP W d * Formalism.FourierDecayAlt.C2.monoP (wPt pN).symm (fun j => (d ((wPt pN).symm j))⁻¹) = 1 := by
  ext i b
  simp only [Formalism.FourierDecayAlt.C2.monoP, Matrix.mul_apply, Matrix.of_apply, Matrix.one_apply]
  rw [Finset.sum_eq_single ((wPt pN).symm b)]
  · simp only [Equiv.apply_symm_apply, ite_true]
    split_ifs with h
    · exact mul_inv_cancel₀ (hd _)
    · exact zero_mul _
  · intro a _ ha
    simp [ha]
  · intro h
    exact absurd (Finset.mem_univ _) h

end Formalism.L2.SG.monomialWeightModel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelThird =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelFourth =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelFourth", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelThird\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Complex.Isometry\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Formalism.QuantumDeterminants
open scoped ENNReal

namespace Formalism.L2.SG.unitMultiplierModel

open Formalism.MainNotions.BigCellDensity Formalism.FourierDecayAlt.P.Dx2.Rad Formalism.L2.SG.monomialWeightModel

variable {r : ℕ} (pN : Formalism.MainNotions.S.Point ℂ (r + 1))

local notation "W" => wPt pN

theorem mul_unit_mp (c : ℂ) (h : ‖c‖ = 1) : MeasurePreserving (fun z : ℂ => c * z) volume volume := by
  have hc : c ∈ Submonoid.unitSphere ℂ := by simp [Submonoid.unitSphere, h]
  have key := (rotation (⟨c, hc⟩ : Circle)).measurePreserving
  have e : (fun z : ℂ => c * z) = rotation (⟨c, hc⟩ : Circle) := by
    funext z; rfl
  rw [e]
  exact key

variable (d : Fin (r + 1) → ℂ)

theorem Rm_mp (hd : ∀ a, d a ≠ 0) (hdm : ∀ q : Formalism.FourierDecayAlt.C2.Lstidx W, ‖d (W q.1.1)‖ = ‖d (W q.1.2)‖) :
    MeasurePreserving (Rm pN d) volume volume := by
  have hsw : Function.Involutive (sw pN) := by
    intro q
    exact Subtype.ext (Prod.ext (wPt_invol pN q.1.1) (wPt_invol pN q.1.2))
  let e : Formalism.FourierDecayAlt.C2.Lstidx W ≃ Formalism.FourierDecayAlt.C2.Lstidx W :=
    ⟨sw pN, sw pN, hsw, hsw⟩
  have hG := volume_measurePreserving_piCongrLeft (fun _ : Formalism.FourierDecayAlt.C2.Lstidx W => ℂ) e.symm
  have h : ∀ q : Formalism.FourierDecayAlt.C2.Lstidx W,
      MeasurePreserving (fun z : ℂ => d (W q.1.1) / d (W q.1.2) * star z) volume volume := by
    intro q
    have hu : ‖d (W q.1.1) / d (W q.1.2)‖ = 1 := by
      rw [norm_div, hdm q, div_self]
      exact norm_ne_zero_iff.mpr (hd _)
    exact (mul_unit_mp _ hu).comp Complex.conjLIE.measurePreserving
  have hF := volume_preserving_pi h
  have heq : Rm pN d = (fun (a : Formalism.FourierDecayAlt.C2.Lstidx W → ℂ) (i : Formalism.FourierDecayAlt.C2.Lstidx W) =>
      d (W i.1.1) / d (W i.1.2) * star (a i)) ∘
      (MeasurableEquiv.piCongrLeft (fun _ : Formalism.FourierDecayAlt.C2.Lstidx W => ℂ) e.symm) := by
    funext x q
    have hq := MeasurableEquiv.piCongrLeft_apply_apply (β := fun _ => ℂ) e.symm x (e q)
    rw [Equiv.symm_apply_apply] at hq
    change _ = x (sw pN q) at hq
    simp only [Rm, Function.comp_apply, hq]
  rw [heq]
  exact hF.comp hG

end Formalism.L2.SG.unitMultiplierModel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelFourth =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelSecond =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelSecond", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ShearMp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Measure.RegularityCompacts\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix

namespace Formalism.L2.SG.lowerTriangularModel

open Formalism.FourierDecayAlt.P.Dx2.Rad (low low_apply low_coord)

variable {m : ℕ} (w : Equiv.Perm (Fin m))

def ht (q : Formalism.FourierDecayAlt.C2.Lstidx w) : ℕ := q.1.1.val - q.1.2.val

theorem low_upper (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) (i j : Fin m) (h : i < j) :
    low w y i j = 0 := by
  rw [low_apply, Matrix.one_apply_ne (ne_of_lt h), zero_add, dite_eq_right]
  rintro ⟨h1, -⟩
  exact absurd (lt_trans h1 h) (lt_irrefl _)

theorem low_diag (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) (i : Fin m) : low w y i i = 1 := by
  rw [low_apply, Matrix.one_apply_eq, dite_eq_right (fun h => lt_irrefl _ h.1), add_zero]

theorem low_bt (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) :
    (low w y).BlockTriangular OrderDual.toDual := by
  intro i j hij
  exact low_upper w y i j hij

theorem low_det (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) : (low w y).det = 1 := by
  rw [Matrix.det_of_isLowerTriangular _ (low_bt w y)]
  exact Finset.prod_eq_one fun i _ => low_diag w y i

abbrev M (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) : Matrix (Fin m) (Fin m) ℂ := (low w y)⁻¹

theorem isUnit_low (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) : IsUnit (low w y).det := by
  rw [low_det]
  exact isUnit_one

theorem M_upper (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) (i j : Fin m) (h : i < j) : M w y i j = 0 := by
  haveI := Matrix.invertibleOfIsUnitDet (low w y) (isUnit_low w y)
  exact Matrix.blockTriangular_inv_of_blockTriangular (low_bt w y) h

theorem mul_M (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) : low w y * M w y = 1 :=
  Matrix.mul_nonsing_inv _ (isUnit_low w y)

theorem sum_split (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) (i j : Fin m) :
    ∑ c, low w y i c * M w y c j =
      ∑ c ∈ Finset.univ.filter (fun c => j ≤ c ∧ c ≤ i), low w y i c * M w y c j := by
  rw [Finset.sum_filter]
  refine Finset.sum_congr rfl fun c _ => ?_
  split_ifs with h
  · rfl
  · rcases not_and_or.1 h with h1 | h1
    · rw [M_upper w y c j (not_le.1 h1), mul_zero]
    · rw [low_upper w y i c (not_le.1 h1), zero_mul]

theorem M_diag (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) (i : Fin m) : M w y i i = 1 := by
  have h := congrFun (congrFun (mul_M w y) i) i
  rw [Matrix.mul_apply, sum_split, Matrix.one_apply_eq] at h
  have e : Finset.univ.filter (fun c => i ≤ c ∧ c ≤ i) = {i} := by
    ext c; simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_singleton]
    exact ⟨fun h => le_antisymm h.2 h.1, fun h => ⟨h.ge, h.le⟩⟩
  rw [e, Finset.sum_singleton, low_diag, one_mul] at h
  exact h

theorem M_rec (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) (i j : Fin m) (hji : j < i) :
    M w y i j + low w y i j =
      -∑ c ∈ Finset.univ.filter (fun c => j < c ∧ c < i), low w y i c * M w y c j := by
  have h := congrFun (congrFun (mul_M w y) i) j
  rw [Matrix.mul_apply, sum_split, Matrix.one_apply_ne (ne_of_gt hji)] at h
  have e : Finset.univ.filter (fun c => j ≤ c ∧ c ≤ i) =
      insert i (insert j (Finset.univ.filter (fun c => j < c ∧ c < i))) := by
    ext c
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_insert]
    constructor
    · rintro ⟨h1, h2⟩
      rcases h2.lt_or_eq with h2 | h2
      · rcases h1.lt_or_eq with h1 | h1
        · exact Or.inr (Or.inr ⟨h1, h2⟩)
        · exact Or.inr (Or.inl h1.symm)
      · exact Or.inl h2
    · rintro (h | h | h)
      · exact ⟨h ▸ hji.le, h ▸ le_rfl⟩
      · exact ⟨h ▸ le_rfl, h ▸ hji.le⟩
      · exact ⟨h.1.le, h.2.le⟩
  have hi : i ∉ insert j (Finset.univ.filter (fun c => j < c ∧ c < i)) := by
    simp only [Finset.mem_insert, Finset.mem_filter, Finset.mem_univ, true_and, not_or]
    exact ⟨ne_of_gt hji, fun h => lt_irrefl _ h.2⟩
  have hj : j ∉ Finset.univ.filter (fun c => j < c ∧ c < i) := by
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    exact fun h => lt_irrefl _ h.1
  rw [e, Finset.sum_insert hi, Finset.sum_insert hj, low_diag, one_mul, M_diag, mul_one] at h
  linear_combination h

theorem M_dep (n : ℕ) : ∀ (y y' : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ), (∀ q, ht w q ≤ n → y q = y' q) →
    ∀ i j : Fin m, i.val - j.val ≤ n → M w y i j = M w y' i j := by
  induction n using Nat.strong_induction_on with
  | _ n ih =>
  intro y y' hy i j hij
  rcases lt_trichotomy i j with h | h | h
  · rw [M_upper w y i j h, M_upper w y' i j h]
  · subst h; rw [M_diag, M_diag]
  · have hL : ∀ a b : Fin m, a.val - b.val ≤ n → low w y a b = low w y' a b := by
      intro a b hab
      rw [low_apply, low_apply]
      congr 1
      split_ifs with hq
      · exact hy _ hab
      · rfl
    have e1 := M_rec w y i j h
    have e2 := M_rec w y' i j h
    have hsum : ∑ c ∈ Finset.univ.filter (fun c => j < c ∧ c < i), low w y i c * M w y c j =
        ∑ c ∈ Finset.univ.filter (fun c => j < c ∧ c < i), low w y' i c * M w y' c j := by
      refine Finset.sum_congr rfl fun c hc => ?_
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hc
      have hc1 := Fin.lt_def.1 hc.1
      have hc2 := Fin.lt_def.1 hc.2
      rw [hL i c (by omega)]
      congr 1
      exact ih (c.val - j.val) (by omega) y y' (fun q hq => hy q (by omega)) c j le_rfl
    have := hL i j hij
    linear_combination e1 - e2 - this - hsum

def linv (y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ := fun q => M w y q.1.1 q.1.2

theorem low_cont : Continuous (low w) := by
  have e : low w = fun y => Matrix.of fun i j =>
      (1 : Matrix (Fin m) (Fin m) ℂ) i j + if h : j < i ∧ w.symm i < w.symm j then y ⟨(i, j), h⟩ else 0 := by
    funext y; ext i j; exact low_apply w y i j
  rw [e]
  refine continuous_pi fun i => continuous_pi fun j => ?_
  simp only [Matrix.of_apply]
  split_ifs
  · exact continuous_const.add (continuous_apply _)
  · exact continuous_const

theorem M_cont : Continuous (fun y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ => M w y) := by
  have e : (fun y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ => M w y) = fun y => (low w y).adjugate := by
    funext y
    show (low w y)⁻¹ = _
    rw [Matrix.inv_def, low_det, Ring.inverse_one, one_smul]
  rw [e]
  exact (low_cont w).matrix_adjugate

theorem linv_mp : MeasurePreserving (linv w) volume volume := by
  set τ : ∀ q : Formalism.FourierDecayAlt.C2.Lstidx w, (Formalism.FourierDecayAlt.C2.Lstidx w → ℂ) → ℂ := fun q y => -(M w y q.1.1 q.1.2 + y q) with hτ
  have hmeas : ∀ q, Measurable (τ q) := fun q => by
    refine Measurable.neg (Measurable.add ?_ (measurable_pi_apply q))
    exact ((continuous_apply q.1.2).comp ((continuous_apply q.1.1).comp (M_cont w))).measurable
  have hdep : ∀ q (x x' : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ), (∀ q', ht w q' < ht w q → x q' = x' q') → τ q x = τ q x' := by
    intro q x x' hx
    have hq := q.2.1
    have hq' := Fin.lt_def.1 hq
    simp only [hτ]
    congr 1
    have e1 := M_rec w x q.1.1 q.1.2 hq
    have e2 := M_rec w x' q.1.1 q.1.2 hq
    have hLq : ∀ y : Formalism.FourierDecayAlt.C2.Lstidx w → ℂ, low w y q.1.1 q.1.2 = y q :=
      fun y => low_coord w y q
    rw [hLq] at e1 e2
    rw [e1, e2]
    congr 1
    refine Finset.sum_congr rfl fun c hc => ?_
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hc
    have hc1 := Fin.lt_def.1 hc.1
    have hc2 := Fin.lt_def.1 hc.2
    have hL : low w x q.1.1 c = low w x' q.1.1 c := by
      rw [low_apply, low_apply]
      congr 1
      split_ifs with h
      · exact hx _ (by simp only [ht]; omega)
      · rfl
    rw [hL]
    congr 1
    exact M_dep w (c.val - q.1.2.val) x x' (fun q' hq'' => hx q' (by simp only [ht] at hq'' ⊢; omega)) c q.1.2 le_rfl
  have hS := Formalism.L2.SG.NGCut.SplitEmbedding.shear_mp _ (Formalism.FourierDecayAlt.C2.Lstidx w) rfl (fun _ => ℂ) (fun _ => volume) (ht w) τ hmeas hdep
  have hN := Measure.measurePreserving_neg (volume : Measure (Formalism.FourierDecayAlt.C2.Lstidx w → ℂ))
  have e : linv w = Neg.neg ∘ (fun g p => g p + τ p g) := by
    funext y q
    simp only [Function.comp_apply, Pi.neg_apply, hτ, linv]
    ring
  rw [e]
  exact hN.comp hS

end Formalism.L2.SG.lowerTriangularModel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelSecond =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelFifth =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelFifth", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BigCellDensity\nimport Formalism.FormalDegreeBessel.FinalG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselDecayBounds.BesselUnitNorm.BesselNormSteps.BesselLine.ConvGrp\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.HermitianMatrixIdentities\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelFourth\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelSecond\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.RootHaarLoc\nimport Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.SigmaFiniteAmplitudes.RStabInv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Formalism.QuantumDeterminants
open scoped ENNReal

namespace Formalism.L2.SG.flagStabilizerModel

open Formalism.MainNotions.BigCellDensity Formalism.FourierDecayAlt.P.Dx2.Rad Formalism.L2.SG.monomialWeightModel Formalism.L2.SG.unitMultiplierModel

variable {r : ℕ} (pN : Formalism.MainNotions.S.Point ℂ (r + 1))

local notation "W" => wPt pN

theorem mp_model {k0 : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] (Ds : Formalism.FourierDecayAlt.B.RealPlaceData (k0 + 1) r Wp Wq) {δ : Formalism.FourierDecayAlt.B.Mat (k0 + 1) r}
    (hδ : δ ∈ Formalism.FourierDecayAlt.B.GV (k0 + 1) r) {d : Fin (r + 1) → ℂ} (hd : ∀ a, d a ≠ 0)
    (hdm : ∀ q : Formalism.FourierDecayAlt.C2.Lstidx (wPt pN),
      ‖d (wPt pN q.1.1)‖ = ‖d (wPt pN q.1.2)‖)
    (hZ : Zhat (k0 + 1) r Ds.z Ds.z' δ = Formalism.FourierDecayAlt.C2.monoP (wPt pN) d)
    (μ : Measure (Mt (k0 + 1) r))
    (hconc : μ {x | Matrix.of x ∉ Formalism.FourierDecayAlt.C6.Rset δ} = 0) (c : ℝ≥0∞)
    (hmap : μ.map (fun x => Formalism.MainNotions.S.rootCoords (k0 + 1) r Ds.z' pN (Matrix.of.symm (δ⁻¹ * Matrix.of x * δ))) =
      c • volume) :
    μ = c • Formalism.FourierDecayAlt.D.muR Ds δ (wPt pN) := by
  have hzS : Formalism.FourierDecayAlt.C2.StdZ (k0 + 1) r Ds.z := ⟨Ds.z_mem, Ds.T_pos⟩
  have hz'S : Formalism.FourierDecayAlt.C2.StdZ (k0 + 1) r Ds.z' := ⟨Ds.z'_mem, Ds.T'_pos⟩
  have hG := good_of Ds hδ hd hZ
  have hu : IsUnit δ.det := ((uHGroup _ (Hpk (k0 + 1) r) Formalism.L2.SG.HermitianMatrixIdentities.hpk_isUnit).2.2 δ hδ).1
  have hδi : δ⁻¹ ∈ Formalism.FourierDecayAlt.B.GV (k0 + 1) r := ((uHGroup _ (Hpk (k0 + 1) r) Formalism.L2.SG.HermitianMatrixIdentities.hpk_isUnit).2.2 δ hδ).2
  obtain ⟨Ds', hD1, hD2⟩ := Formalism.MainNotions.S.Pv.AmpDDPf.bsetting_of (k0 + 1) r (by omega) Ds.z' Ds.z hz'S hzS
  set d' : Fin (r + 1) → ℂ := fun a => star (d (W a)) with hd'def
  have hd' : ∀ a, d' a ≠ 0 := fun a => star_ne_zero.2 (hd _)
  have hZ' : Zhat (k0 + 1) r Ds'.z Ds'.z' δ⁻¹ = Formalism.FourierDecayAlt.C2.monoP W d' := by
    ext i a
    rw [hD1, hD2, Formalism.L2.SG.Pf.RootHaarLoc.zhat_inv Ds.z Ds.z' hδ hu i a, hZ]
    simp only [Formalism.FourierDecayAlt.C2.monoP, Matrix.of_apply, hd'def]
    by_cases hai : a = W i
    · have hia : i = W a := by rw [hai, wPt_invol]
      rw [if_pos hai, if_pos hia]
      all_goals (try (rw [hai, wPt_invol]))
    · have hia : ¬ i = W a := fun h => hai (by rw [h, wPt_invol])
      rw [if_neg hai, if_neg hia, star_zero]
  have hG' := good_of Ds' hδi hd' hZ'

  set φ : Mt (k0 + 1) r → Formalism.FourierDecayAlt.C2.Lstidx W → ℂ := phi0 Ds W with hφ
  set φ' : Mt (k0 + 1) r → Formalism.FourierDecayAlt.C2.Lstidx W → ℂ :=
    fun x => phi0 Ds' W (Matrix.of.symm (δ⁻¹ * Matrix.of x * δ)) with hφ'
  have hφc : Continuous φ := continuous_radial_phi Ds
  have hφ'c : Continuous φ' := by
    refine (continuous_radial_phi Ds').comp ?_
    exact (continuous_const.matrix_mul continuous_id).matrix_mul continuous_const

  have hRinv : ∀ x : Mt (k0 + 1) r, Matrix.of x ∈ Formalism.FourierDecayAlt.C6.Rset δ →
      δ⁻¹ * Matrix.of x * δ ∈ Formalism.FourierDecayAlt.C6.Rset δ⁻¹ := by
    intro x hx
    refine ⟨hx.2, ?_⟩
    rw [Matrix.nonsing_inv_nonsing_inv _ hu]
    have : δ * (δ⁻¹ * Matrix.of x * δ) * δ⁻¹ = Matrix.of x := by
      simp only [← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hu, Matrix.one_mul]
      rw [Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hu, Matrix.mul_one]
    rw [this]
    exact hx.1

  have hroot : ∀ x : Mt (k0 + 1) r, Matrix.of x ∈ Formalism.FourierDecayAlt.C6.Rset δ →
      Formalism.MainNotions.S.rootCoords (k0 + 1) r Ds.z' pN (Matrix.of.symm (δ⁻¹ * Matrix.of x * δ)) = Tmap pN (φ' x) := by
    intro x hx
    have hm := hRinv x hx
    have e2 := u_eq_low Ds' hδi hd' hG' hm
    have hρ := rhoF_unique Ds' hδi hd' hG' (φ' x) hm (by
      rw [← Matrix.conjTranspose_conjTranspose (Formalism.FourierDecayAlt.C2.uMap _ _ _ _), e2])
    have h1 := Formalism.L2.SG.Pf.RootHaarLoc.rootCoords_psiG Ds'.z Ds' rfl pN hδi hd' hZ' (Tmap pN (φ' x))
    rw [Tinv_Tmap, ← hρ, hD1] at h1
    exact h1

  have hkey : ∀ x : Mt (k0 + 1) r, Matrix.of x ∈ Formalism.FourierDecayAlt.C6.Rset δ →
      φ x = Formalism.L2.SG.lowerTriangularModel.linv W (Rm pN d (φ' x)) := by
    intro x hx
    have hm := hRinv x hx
    have e1 := u_eq_low Ds hδ hd hG hx
    have e2 := u_eq_low Ds' hδi hd' hG' hm
    have zh := Formalism.L2.SG.HermitianMatrixIdentities.zhat_uMap hzS hz'S hδ hx.1 hx.2
    have hinv : Formalism.FourierDecayAlt.C2.uMap (k0 + 1) r Ds.z (Matrix.of x)⁻¹ = (Formalism.FourierDecayAlt.C2.uMap (k0 + 1) r Ds.z (Matrix.of x))⁻¹ := by
      have hxu : IsUnit (Matrix.of x).det := ((uHGroup _ (Hpk (k0 + 1) r) Formalism.L2.SG.HermitianMatrixIdentities.hpk_isUnit).2.2 _ hx.1.1).1
      have hm1 := uMap_mul Ds hx.1 (PI.WBL.Cv.n_inv hx.1)
      rw [Matrix.mul_nonsing_inv _ hxu, uMap_one _ hzS] at hm1
      exact (Matrix.inv_eq_right_inv hm1.symm).symm
    have e1' : (Formalism.FourierDecayAlt.C2.uMap (k0 + 1) r Ds.z (Matrix.of x))ᴴ = low W (φ x) := e1
    have e2' : (Formalism.FourierDecayAlt.C2.uMap (k0 + 1) r Ds'.z (δ⁻¹ * Matrix.of x * δ))ᴴ = low W (φ' x) := e2
    have hU : Formalism.FourierDecayAlt.C2.uMap (k0 + 1) r Ds.z (Matrix.of x) = (low W (φ x))ᴴ := by
      rw [← e1', Matrix.conjTranspose_conjTranspose]
    have hU' : Formalism.FourierDecayAlt.C2.uMap (k0 + 1) r Ds.z' (δ⁻¹ * Matrix.of x * δ) = (low W (φ' x))ᴴ := by
      rw [← hD1, ← e2', Matrix.conjTranspose_conjTranspose]
    rw [hU', hinv, hU, hZ, Matrix.conjTranspose_nonsing_inv, Matrix.conjTranspose_conjTranspose] at zh

    have h1 : low W (Rm pN d (φ' x)) * Formalism.FourierDecayAlt.C2.monoP W d = (low W (φ x))⁻¹ * Formalism.FourierDecayAlt.C2.monoP W d := by
      rw [low_R_mono pN d hd, zh]
    have h2 : low W (Rm pN d (φ' x)) = (low W (φ x))⁻¹ := by
      have := congrArg (· * Formalism.FourierDecayAlt.C2.monoP (wPt pN).symm (fun j => (d ((wPt pN).symm j))⁻¹)) h1
      simp only [Matrix.mul_assoc, mono_mul_inv pN d hd, Matrix.mul_one] at this
      exact this
    have hlu : IsUnit (low W (φ x)).det := Formalism.L2.SG.lowerTriangularModel.isUnit_low W _
    have h3 : low W (φ x) = (low W (Rm pN d (φ' x)))⁻¹ := by
      rw [h2, Matrix.nonsing_inv_nonsing_inv _ hlu]
    funext q
    rw [← low_coord W (φ x) q, h3]
    rfl

  have hae : ∀ᵐ x ∂μ, Matrix.of x ∈ Formalism.FourierDecayAlt.C6.Rset δ := ae_iff.2 hconc
  have hB : μ.map φ' = c • volume := by
    have hA : μ.map (Tmap pN ∘ φ') = c • volume := by
      rw [← hmap]
      refine Measure.map_congr ?_
      filter_upwards [hae] with x hx
      exact (hroot x hx).symm
    have hTm : Measurable (Tmap pN) := (Tmap_mp pN).measurable
    have e : φ' = Tinv pN ∘ (Tmap pN ∘ φ') := by
      funext x; simp [Tinv_Tmap]
    have hTi := Tinv_mp pN
    rw [e, ← Measure.map_map hTi.measurable (hTm.comp hφ'c.measurable), hA,
      Measure.map_smul c hTi.aemeasurable, hTi.map_eq]
  have hC : μ.map φ = c • volume := by
    have hlinv := Formalism.L2.SG.lowerTriangularModel.linv_mp W
    have hR := Rm_mp pN d hd hdm
    rw [Measure.map_congr (g := Formalism.L2.SG.lowerTriangularModel.linv W ∘ Rm pN d ∘ φ') (by
      filter_upwards [hae] with x hx
      exact hkey x hx)]
    rw [← Measure.map_map hlinv.measurable (hR.measurable.comp hφ'c.measurable),
      ← Measure.map_map hR.measurable hφ'c.measurable, hB, Measure.map_smul c hR.aemeasurable, hR.map_eq,
      Measure.map_smul c hlinv.aemeasurable, hlinv.map_eq]
  have hrho := rhoF_meas Ds hδ hd hG
  have hD : μ = μ.map ((fun y => Matrix.of.symm (rhoF Ds δ W y)) ∘ φ) := by
    conv_lhs => rw [← Measure.map_id (μ := μ)]
    refine Measure.map_congr ?_
    filter_upwards [hae] with x hx
    have hρ := rhoF_unique Ds hδ hd hG (φ x) hx (by
      rw [← Matrix.conjTranspose_conjTranspose (Formalism.FourierDecayAlt.C2.uMap _ _ _ _), u_eq_low Ds hδ hd hG hx]
      rfl)
    show x = Matrix.of.symm (rhoF Ds δ W (φ x))
    rw [← hρ]
    rfl
  rw [hD, ← Measure.map_map hrho hφc.measurable, hC, Measure.map_smul c hrho.aemeasurable]
  rfl

end Formalism.L2.SG.flagStabilizerModel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelFifth =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelMeasure =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelMeasure", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BigCellDensity\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelFifth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Formalism.QuantumDeterminants
open scoped ENNReal

namespace Formalism.L2.SG.ModelMeasure

open Formalism.MainNotions.BigCellDensity

theorem mp_modelK {r k : ℕ} (pN : Formalism.MainNotions.S.Point ℂ (r + 1)) {Wp Wq : Type} [NormedAddCommGroup Wp]
    [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] (Ds : Formalism.FourierDecayAlt.B.RealPlaceData k r Wp Wq)
    {δ : Formalism.FourierDecayAlt.B.Mat k r} (hδ : δ ∈ Formalism.FourierDecayAlt.B.GV k r) {d : Fin (r + 1) → ℂ} (hd : ∀ a, d a ≠ 0)
    (hdm : ∀ q : Formalism.FourierDecayAlt.C2.Lstidx (wPt pN), ‖d (wPt pN q.1.1)‖ = ‖d (wPt pN q.1.2)‖)
    (hZ : Zhat k r Ds.z Ds.z' δ = Formalism.FourierDecayAlt.C2.monoP (wPt pN) d) (μ : Measure (Mt k r))
    (hconc : μ {x | Matrix.of x ∉ Formalism.FourierDecayAlt.C6.Rset δ} = 0) (c : ℝ≥0∞)
    (hmap : μ.map (fun x => Formalism.MainNotions.S.rootCoords k r Ds.z' pN (Matrix.of.symm (δ⁻¹ * Matrix.of x * δ))) = c • volume) :
    μ = c • Formalism.FourierDecayAlt.D.muR Ds δ (wPt pN) := by
  obtain ⟨k0, rfl⟩ : ∃ k0, k = k0 + 1 :=
    Nat.exists_eq_succ_of_ne_zero (Nat.ne_zero_of_lt Ds.k_pos)
  exact Formalism.L2.SG.flagStabilizerModel.mp_model pN Ds hδ hd hdm hZ μ hconc c hmap

end Formalism.L2.SG.ModelMeasure

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelMeasure =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.QuotientSpan =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.QuotientSpan", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.LocWSOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RootCoordinatesIndex\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.HermitianMatrixIdentities\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopTermLem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open MeasureTheory NumberField Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.LocWSOf

namespace Formalism.L2.SG.QuotientSpan

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {X : HidaSetting D} (v : InfinitePlace X.B.I.F) {lam : ℂ} (hl : lam ≠ 0)
  {Q : Matrix (Fin X.B.I.n) (Fin (2 * D.R.rS + D.R.k + 1)) ℂ} {Qi : Matrix (Fin (2 * D.R.rS + D.R.k + 1)) (Fin X.B.I.n) ℂ}
  (hT : IsTranspC X v lam D.R.k D.R.rS Q Qi)

abbrev eV (a : Fin D.R.rS) : Fin X.B.I.n → ℂ := rv X.B.I v (X.eR a)

include hT in
theorem Q_e (a : Fin D.R.rS) :
    Q *ᵥ Pi.single (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a) 1 = lam ^ (D.R.rS - a.val) • eV v a :=
  (hT.2.2.2 a a rfl).1

include hT hl in
theorem Qi_e (a : Fin D.R.rS) :
    Qi *ᵥ eV v a = (lam ^ (D.R.rS - a.val))⁻¹ • Pi.single (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a) 1 := by
  have h := congrArg (fun x => Qi *ᵥ x) (Q_e v hT a)
  simp only [Matrix.mulVec_mulVec, hT.1, Matrix.one_mulVec, Matrix.mulVec_smul] at h
  rw [h, smul_smul, inv_mul_cancel₀ (pow_ne_zero _ hl), one_smul]

include hT hl in
theorem Qi_spanLt (a : ℕ) (x : Fin X.B.I.n → ℂ) (hx : x ∈ spanLt (eV (X := X) v) a) (i : Fin (2 * D.R.rS + D.R.k + 1))
    (hi : a ≤ i.val) : (Qi *ᵥ x) i = 0 := by
  induction hx using Submodule.span_induction with
  | mem x hx' =>
    obtain ⟨b, hb, rfl⟩ := hx'
    rw [Qi_e v hl hT, Pi.smul_apply, Pi.single_apply, if_neg, smul_zero]
    intro h
    have := congrArg Fin.val h
    simp only [Formalism.QuantumDeterminants.eI] at this
    simp only [Set.mem_setOf_eq] at hb
    omega
  | zero => simp
  | add x y _ _ hx hy => rw [Matrix.mulVec_add, Pi.add_apply, hx, hy, add_zero]
  | smul c x _ hx => rw [Matrix.mulVec_smul, Pi.smul_apply, hx, smul_zero]

include hT in
theorem Q_spanLt (a : ℕ) (ha : a ≤ D.R.rS) (w : Fin (2 * D.R.rS + D.R.k + 1) → ℂ)
    (hw : ∀ i : Fin (2 * D.R.rS + D.R.k + 1), a ≤ i.val → w i = 0) : Q *ᵥ w ∈ spanLt (eV (X := X) v) a := by
  have hw' : w = ∑ i, w i • Pi.single i (1 : ℂ) := by
    ext j
    simp [Finset.sum_apply, Pi.single_apply]
  rw [hw', Matrix.mulVec_sum]
  refine Submodule.sum_mem _ fun i _ => ?_
  by_cases hi : a ≤ i.val
  · rw [hw i hi, zero_smul, Matrix.mulVec_zero]
    exact Submodule.zero_mem _
  · have hir : i.val < D.R.rS := by omega
    have e : i = Formalism.QuantumDeterminants.eI D.R.k D.R.rS ⟨i.val, hir⟩ := Fin.ext rfl
    rw [Matrix.mulVec_smul, e, Q_e v hT]
    refine Submodule.smul_mem _ _ (Submodule.smul_mem _ _ (Submodule.subset_span ⟨⟨i.val, hir⟩, ?_, rfl⟩))
    simp only [Set.mem_setOf_eq]
    omega

include hT hl in
theorem hJ_e (a : Fin D.R.rS) (y : Fin X.B.I.n → ℂ) :
    hJ (X.B.I.ε v) (eV v a) y = star ((lam ^ (D.R.rS - a.val))⁻¹) * (Qi *ᵥ y) (Formalism.QuantumDeterminants.esI D.R.k D.R.rS a) := by
  obtain ⟨_, hQQi, hH, _⟩ := hT
  have he : eV v a = (lam ^ (D.R.rS - a.val))⁻¹ • (Q *ᵥ Pi.single (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a) 1) := by
    rw [Q_e v ⟨‹_›, hQQi, hH, ‹_›⟩, smul_smul, inv_mul_cancel₀ (pow_ne_zero _ hl), one_smul]
  have hy : y = Q *ᵥ (Qi *ᵥ y) := by rw [Matrix.mulVec_mulVec, hQQi, Matrix.one_mulVec]
  conv_lhs => rw [he, hy]
  unfold hJ
  rw [star_smul, smul_dotProduct, ← Formalism.L2.SG.Pf.LTL.star_dot_conjT, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hH,
    Pi.star_single, star_one, single_dotProduct, one_mul, Formalism.L2.SG.RootCoordinatesIndex.hpk_eI, smul_eq_mul]


include hT hl in
theorem inN_iff (z : Fin X.B.I.n → ℂ) (hz : Formalism.QuantumDeterminants.inWb D.R.k D.R.rS (Qi *ᵥ z))
    (g : Matrix (Fin X.B.I.n) (Fin X.B.I.n) ℂ) (hg : gᴴ * Formalism.REAL.Jm (X.B.I.ε v) * g = Formalism.REAL.Jm (X.B.I.ε v)) :
    InN (X.B.I.ε v) (eV v) z g ↔ Qi * g * Q ∈ Formalism.QuantumDeterminants.Nset D.R.k D.R.rS := by
  have hQiQ := hT.1
  have hQQi := hT.2.1
  have hH := hT.2.2.1
  have hstar_ne : ∀ a : Fin D.R.rS, star ((lam ^ (D.R.rS - a.val))⁻¹) ≠ 0 := fun a =>
    star_ne_zero.2 (inv_ne_zero (pow_ne_zero _ (hl)))
  have hcol : ∀ (M : Matrix (Fin (2 * D.R.rS + D.R.k + 1)) (Fin (2 * D.R.rS + D.R.k + 1)) ℂ) i j,
      M i j = (M *ᵥ Pi.single j 1) i := fun M i j => by rw [Matrix.mulVec_single_one]; rfl
  constructor
  · rintro ⟨⟨hIe, hIz⟩, hperp⟩
    refine ⟨?_, fun a i hai => ?_, fun i j hj1 hj2 hi => ?_⟩
    ·
      show (Qi * g * Q)ᴴ * Formalism.QuantumDeterminants.Hpk D.R.k D.R.rS * (Qi * g * Q) = Formalism.QuantumDeterminants.Hpk D.R.k D.R.rS
      have hQiQ' : (Qi)ᴴ * (Q)ᴴ = 1 := by rw [← Matrix.conjTranspose_mul, hQQi, Matrix.conjTranspose_one]
      rw [← hH]
      calc (Qi * g * Q)ᴴ * ((Q)ᴴ * Formalism.REAL.Jm (X.B.I.ε v) * Q) * (Qi * g * Q)
          = (Q)ᴴ * (gᴴ * ((Qi)ᴴ * (Q)ᴴ) * Formalism.REAL.Jm (X.B.I.ε v) * ((Q * Qi) * g)) *
              Q := by simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
        _ = _ := by rw [hQiQ', hQQi, Matrix.mul_one, Matrix.one_mul, hg]
    ·
      rw [hcol (Qi * g * Q) i (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a)]
      have h1 : (Qi * g * Q) *ᵥ Pi.single (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a) 1 =
          Pi.single (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a) 1 +
            lam ^ (D.R.rS - a.val) • (Qi *ᵥ ((g - 1) *ᵥ eV v a)) := by
        rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, Q_e v hT, Matrix.mulVec_smul, Matrix.mulVec_smul,
          Matrix.sub_mulVec, Matrix.one_mulVec, Matrix.mulVec_sub, Qi_e v hl hT, smul_sub, smul_smul,
          mul_inv_cancel₀ (pow_ne_zero _ (hl)), one_smul]
        abel
      rw [h1, Pi.add_apply, Pi.smul_apply, Qi_spanLt v hl hT a.val _ (hIe a) i hai, smul_zero, add_zero, Pi.single_apply]
    ·
      rw [hcol (Qi * g * Q) i j]
      have horth : ∀ b : Fin D.R.rS, hJ (X.B.I.ε v) (eV v b) (Q *ᵥ Pi.single j 1) = 0 := by
        intro b
        rw [hJ_e v hl hT, Matrix.mulVec_mulVec, hQiQ, Matrix.one_mulVec, Pi.single_apply, if_neg, mul_zero]
        intro h
        have := congrArg Fin.val h
        simp only [Formalism.QuantumDeterminants.esI] at this
        have := b.isLt
        omega
      have h1 : (Qi * g * Q) *ᵥ Pi.single j 1 =
          Pi.single j 1 + Qi *ᵥ ((g - 1) *ᵥ (Q *ᵥ Pi.single j 1)) := by
        rw [Matrix.sub_mulVec, Matrix.one_mulVec, Matrix.mulVec_sub]
        simp only [Matrix.mulVec_mulVec, hQiQ, Matrix.one_mulVec, Matrix.mul_assoc]
        abel
      rw [h1, Pi.add_apply, Qi_spanLt v hl hT D.R.rS _ (hperp _ horth) i hi, add_zero, Pi.single_apply]
  · rintro ⟨_, hce, hcw⟩
    have hg' : g = Q * (Qi * g * Q) * Qi := by
      simp only [← Matrix.mul_assoc]
      rw [hQQi, Matrix.one_mul, Matrix.mul_assoc, hQQi, Matrix.mul_one]
    set m := Qi * g * Q with hm
    have key : ∀ x, (g - 1) *ᵥ x = Q *ᵥ ((m - 1) *ᵥ (Qi *ᵥ x)) := by
      intro x
      conv_lhs => rw [hg']
      rw [Matrix.sub_mulVec, Matrix.sub_mulVec, Matrix.one_mulVec, Matrix.one_mulVec, Matrix.mulVec_sub,
        Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hQQi, Matrix.one_mulVec]

    have hmW : ∀ x : Fin (2 * D.R.rS + D.R.k + 1) → ℂ, (∀ a, x (Formalism.QuantumDeterminants.esI D.R.k D.R.rS a) = 0) →
        ∀ i : Fin (2 * D.R.rS + D.R.k + 1), D.R.rS ≤ i.val → ((m - 1) *ᵥ x) i = 0 := by
      intro x hx i hi
      simp only [Matrix.mulVec, dotProduct]
      refine Finset.sum_eq_zero fun j _ => ?_
      by_cases hj1 : j.val < D.R.rS
      · have e : j = Formalism.QuantumDeterminants.eI D.R.k D.R.rS ⟨j.val, hj1⟩ := Fin.ext rfl
        have := hce ⟨j.val, hj1⟩ i (by simp only; omega)
        rw [Matrix.sub_apply, e, this, Matrix.one_apply, sub_self, zero_mul]
      · by_cases hj2 : j.val ≤ D.R.rS + D.R.k
        · rw [Matrix.sub_apply, hcw i j (by omega) hj2 hi, Matrix.one_apply, sub_self, zero_mul]
        · have hjr : 2 * D.R.rS + D.R.k - j.val < D.R.rS := by have := j.isLt; omega
          have e : j = Formalism.QuantumDeterminants.esI D.R.k D.R.rS ⟨2 * D.R.rS + D.R.k - j.val, hjr⟩ := by
            ext; simp only [Formalism.QuantumDeterminants.esI]; have := j.isLt; omega
          rw [e, hx, mul_zero]
    refine ⟨⟨fun a => ?_, ?_⟩, fun y hy => ?_⟩
    · rw [key, Qi_e v hl hT, Matrix.mulVec_smul, Matrix.mulVec_smul]
      refine Submodule.smul_mem _ _ (Q_spanLt v hT a.val a.isLt.le _ fun i hi => ?_)
      rw [Matrix.sub_mulVec, Matrix.one_mulVec, Pi.sub_apply, ← hcol m i (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a), hce a i hi,
        Pi.single_apply, sub_self]
    · rw [key]
      refine Q_spanLt v hT D.R.rS le_rfl _ (hmW _ (fun a => hz _ (Or.inr ?_)))
      simp only [Formalism.QuantumDeterminants.esI]
      have := a.isLt
      omega
    · rw [key]
      refine Q_spanLt v hT D.R.rS le_rfl _ (hmW _ fun a => ?_)
      have h1 := hy a
      rw [hJ_e v hl hT] at h1
      exact (mul_eq_zero.1 h1).resolve_left (hstar_ne a)

theorem inN_conj {n r' : ℕ} {ε : Fin n → Bool} {e : Fin r' → Fin n → ℂ} {z : Fin n → ℂ}
    {g hh : Matrix (Fin n) (Fin n) ℂ} (hhU : hhᴴ * Formalism.REAL.Jm ε * hh = Formalism.REAL.Jm ε) (hu : IsUnit hh.det)
    (he : ∀ a, hh *ᵥ e a = e a) (hz : hh *ᵥ z = z) (hg : InN ε e z g) : InN ε e z (hh⁻¹ * g * hh) := by
  have hie : ∀ a, hh⁻¹ *ᵥ e a = e a := fun a => by
    conv_lhs => rw [← he a]
    rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hu, Matrix.one_mulVec]
  have hiz : hh⁻¹ *ᵥ z = z := by
    conv_lhs => rw [← hz]
    rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hu, Matrix.one_mulVec]
  have hspan : ∀ k (x : Fin n → ℂ), x ∈ spanLt e k → hh⁻¹ *ᵥ x ∈ spanLt e k := by
    intro k x hx
    induction hx using Submodule.span_induction with
    | mem x hx' =>
      obtain ⟨b, hb, rfl⟩ := hx'
      rw [hie]
      exact Submodule.subset_span ⟨b, hb, rfl⟩
    | zero => rw [Matrix.mulVec_zero]; exact Submodule.zero_mem _
    | add x y _ _ hx hy => rw [Matrix.mulVec_add]; exact Submodule.add_mem _ hx hy
    | smul c x _ hx => rw [Matrix.mulVec_smul]; exact Submodule.smul_mem _ _ hx
  have key : ∀ x, (hh⁻¹ * g * hh - 1) *ᵥ x = hh⁻¹ *ᵥ ((g - 1) *ᵥ (hh *ᵥ x)) := by
    intro x
    rw [Matrix.sub_mulVec, Matrix.sub_mulVec, Matrix.one_mulVec, Matrix.one_mulVec, Matrix.mulVec_sub,
      Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hu, Matrix.one_mulVec]
  have horth : ∀ y, (∀ a, hJ ε (e a) y = 0) → ∀ a, hJ ε (e a) (hh *ᵥ y) = 0 := by
    intro y hy a
    have e1 : hJ ε (e a) (hh *ᵥ y) = hJ ε (hh *ᵥ e a) (hh *ᵥ y) := by rw [he]
    rw [e1]
    unfold hJ
    rw [← Formalism.L2.SG.HermitianMatrixIdentities.star_dot_conjT' hh, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hhU]
    exact hy a
  obtain ⟨⟨hIe, hIz⟩, hperp⟩ := hg
  refine ⟨⟨fun a => ?_, ?_⟩, fun y hy => ?_⟩
  · rw [key, he]; exact hspan _ _ (hIe a)
  · rw [key, hz]; exact hspan _ _ hIz
  · rw [key]; exact hspan _ _ (hperp _ (horth y hy))

end Formalism.L2.SG.QuotientSpan

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.QuotientSpan =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.StandardCoordinates =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.StandardCoordinates", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StepPinExistsOfPlace\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.LocWSOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RealFrameCoordinates\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.HermitianMatrixIdentities\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LoopTermLem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical
open MeasureTheory NumberField Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.LocWSOf

namespace Formalism.L2.SG.StandardCoordinates

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {X : HidaSetting D} (v : InfinitePlace X.B.I.F) {lam : ℂ} (hl : lam ≠ 0)
  {Q : Matrix (Fin X.B.I.n) (Fin (2 * D.R.rS + D.R.k + 1)) ℂ} {Qi : Matrix (Fin (2 * D.R.rS + D.R.k + 1)) (Fin X.B.I.n) ℂ}
  (hT : IsTranspC X v lam D.R.k D.R.rS Q Qi) (u' : D.what₂.Word)


include hT in
theorem fam_eq (hl : lam ≠ 0) (b : Fin (D.R.rS + 1)) :
    Formalism.L2.SG.RealObj.frm X u' 1 v b =
      (lam ^ (D.R.rS - b.val))⁻¹ • (Q *ᵥ Formalism.QuantumDeterminants.fvec D.R.k D.R.rS (Qi *ᵥ rv X.B.I v (X.zR u')) b) := by
  unfold Formalism.L2.SG.RealObj.frm Formalism.L2.SG.RealObj.famSc Formalism.L2.SG.RealObj.fam
  simp only [Complex.ofReal_one, one_pow, inv_one, one_smul]
  refine Fin.lastCases ?_ (fun c => ?_) b
  · rw [Fin.snoc_last]
    unfold Formalism.QuantumDeterminants.fvec
    rw [dite_eq_right (by simp), Matrix.mulVec_mulVec, hT.2.1, Matrix.one_mulVec, Fin.val_last, Nat.sub_self, pow_zero,
      inv_one, one_smul]
  · rw [Fin.snoc_castSucc]
    have h1 := (hT.2.2.2 c c rfl).1
    unfold Formalism.QuantumDeterminants.fvec Formalism.QuantumDeterminants.bvec
    simp only [Fin.coe_castSucc, Fin.is_lt, dif_pos, Fin.eta]
    rw [h1, smul_smul, inv_mul_cancel₀ (pow_ne_zero _ hl), one_smul]


include hT hl in
theorem stCoordV_gen (w : Point D.host.E (D.R.rS + 1)) (γ : X.B.I.Ginf) (y : Formalism.REAL.UJ (X.B.I.ε v))
    (p : Formalism.L2.SG.RealObj.FreeE w) :
    Formalism.L2.SG.NGPin.stCoordV X u' w γ v y p =
      ((D.host.rdE : ℂ) * lam) ^ (D.R.rS - p.1.1.1) / ((D.host.rdE : ℂ) * lam) ^ (D.R.rS - p.1.2.1) *
      ((Qi * uMat ((γ v)⁻¹ * y * γ v) * Q) *ᵥ Formalism.QuantumDeterminants.fvec D.R.k D.R.rS (Qi *ᵥ rv X.B.I v (X.zR u')) p.1.2)
        (Formalism.QuantumDeterminants.eI D.R.k D.R.rS ⟨p.1.1.1, by have := p.2.1; have := p.1.2.isLt; omega⟩) := by
  have hQQi := hT.2.1
  have hH := hT.2.2.1
  have ha : p.1.1.1 < D.R.rS := by have := p.2.1; have := p.1.2.isLt; omega
  have hrd : (D.host.rdE : ℂ) ≠ 0 := by
    have := Formalism.L2.SG.RealFrameCoordinates.frS_mul_rd D
    intro h; rw [h, mul_zero] at this; exact zero_ne_one this
  set z' := Qi *ᵥ rv X.B.I v (X.zR u') with hz'
  set f := Formalism.QuantumDeterminants.fvec D.R.k D.R.rS z' p.1.2 with hf
  have hfrm : Formalism.L2.SG.RealObj.frm X u' D.host.rdE v p.1.2 =
      ((D.host.rdE : ℂ) ^ (D.R.rS - p.1.2.val))⁻¹ • ((lam ^ (D.R.rS - p.1.2.val))⁻¹ • (Q *ᵥ f)) := by
    rw [← fam_eq v hT u' hl p.1.2]
    unfold Formalism.L2.SG.RealObj.frm Formalism.L2.SG.RealObj.famSc
    simp only [Complex.ofReal_one, one_pow, inv_one, one_smul]
  have hfR : rv X.B.I v (X.fR ⟨p.1.1.1, ha⟩) =
      star (lam ^ (D.R.rS - p.1.1.1)) • (Q *ᵥ Pi.single (Formalism.QuantumDeterminants.esI D.R.k D.R.rS ⟨p.1.1.1, ha⟩) 1) := by
    rw [(hT.2.2.2 ⟨p.1.1.1, ha⟩ ⟨p.1.1.1, ha⟩ rfl).2, smul_smul, mul_inv_cancel₀, one_smul]
    exact star_ne_zero.2 (pow_ne_zero _ hl)
  have hM : uMat ((γ v)⁻¹ * y * γ v) *ᵥ (Q *ᵥ f) = Q *ᵥ ((Qi * uMat ((γ v)⁻¹ * y * γ v) * Q) *ᵥ f) := by
    rw [Matrix.mulVec_mulVec, Matrix.mulVec_mulVec]
    congr 1
    rw [← Matrix.mul_assoc Q, ← Matrix.mul_assoc Q, hQQi, Matrix.one_mul]
  have hQ : ∀ x v' : Fin (2 * D.R.rS + D.R.k + 1) → ℂ,
      star (Q *ᵥ x) ⬝ᵥ (Formalism.REAL.Jm (X.B.I.ε v) *ᵥ (Q *ᵥ v')) = star x ⬝ᵥ (Formalism.QuantumDeterminants.Hpk D.R.k D.R.rS *ᵥ v') := by
    intro x v'
    rw [← Formalism.L2.SG.Pf.LTL.star_dot_conjT, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hH]
  unfold Formalism.L2.SG.NGPin.stCoordV
  rw [hfrm, hfR, Matrix.mulVec_smul, Matrix.mulVec_smul, hM]
  unfold hJ
  rw [Matrix.mulVec_smul, Matrix.mulVec_smul, dotProduct_smul, dotProduct_smul, star_smul, smul_dotProduct, hQ,
    Pi.star_single, star_one, single_dotProduct, one_mul, Formalism.L2.SG.RealFrameCoordinates.hpk_esI]
  simp only [smul_eq_mul, star_star]
  have h1 : (lam ^ (D.R.rS - p.1.2.val)) ≠ 0 := pow_ne_zero _ hl
  have h2 : ((D.host.rdE : ℂ) ^ (D.R.rS - p.1.2.val)) ≠ 0 := pow_ne_zero _ hrd
  rw [mul_pow, mul_pow]
  field_simp


include hT hl in
theorem coord_conj (M H : Matrix (Fin X.B.I.n) (Fin X.B.I.n) ℂ)
    (hHU : Hᴴ * Formalism.REAL.Jm (X.B.I.ε v) * H = Formalism.REAL.Jm (X.B.I.ε v)) (hHu : IsUnit H.det)
    (he : ∀ b, H *ᵥ rv X.B.I v (X.eR b) = rv X.B.I v (X.eR b)) (hz : H *ᵥ rv X.B.I v (X.zR u') = rv X.B.I v (X.zR u'))
    (hfa : ∀ a, H *ᵥ rv X.B.I v (X.fR a) = rv X.B.I v (X.fR a)) (a : Fin D.R.rS) (b : Fin (D.R.rS + 1)) :
    ((Qi * (H⁻¹ * M * H) * Q) *ᵥ Formalism.QuantumDeterminants.fvec D.R.k D.R.rS (Qi *ᵥ rv X.B.I v (X.zR u')) b) (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a) =
      ((Qi * M * Q) *ᵥ Formalism.QuantumDeterminants.fvec D.R.k D.R.rS (Qi *ᵥ rv X.B.I v (X.zR u')) b) (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a) := by
  have hQQi := hT.2.1
  have hH := hT.2.2.1
  set f := Formalism.QuantumDeterminants.fvec D.R.k D.R.rS (Qi *ᵥ rv X.B.I v (X.zR u')) b with hf

  have hHf : H *ᵥ (Q *ᵥ f) = Q *ᵥ f := by
    have := fam_eq v hT u' hl b
    have e : Q *ᵥ f = lam ^ (D.R.rS - b.val) • Formalism.L2.SG.RealObj.frm X u' 1 v b := by
      rw [this, smul_smul, mul_inv_cancel₀ (pow_ne_zero _ hl), one_smul]
    rw [e, Matrix.mulVec_smul]
    congr 1
    unfold Formalism.L2.SG.RealObj.frm Formalism.L2.SG.RealObj.famSc Formalism.L2.SG.RealObj.fam
    simp only [Complex.ofReal_one, one_pow, inv_one, one_smul]
    refine Fin.lastCases ?_ (fun c => ?_) b
    · rw [Fin.snoc_last]; exact hz
    · rw [Fin.snoc_castSucc]; exact he c

  have hread : ∀ x : Fin X.B.I.n → ℂ, (Qi *ᵥ x) (Formalism.QuantumDeterminants.eI D.R.k D.R.rS a) =
      (lam ^ (D.R.rS - a.val))⁻¹ * hJ (X.B.I.ε v) (rv X.B.I v (X.fR a)) x := by
    intro x
    have hfR : rv X.B.I v (X.fR a) = star (lam ^ (D.R.rS - a.val)) • (Q *ᵥ Pi.single (Formalism.QuantumDeterminants.esI D.R.k D.R.rS a) 1) := by
      rw [(hT.2.2.2 a a rfl).2, smul_smul, mul_inv_cancel₀, one_smul]
      exact star_ne_zero.2 (pow_ne_zero _ hl)
    have hx : x = Q *ᵥ (Qi *ᵥ x) := by rw [Matrix.mulVec_mulVec, hQQi, Matrix.one_mulVec]
    rw [hfR]
    conv_rhs => rw [hx]
    unfold hJ
    rw [star_smul, smul_dotProduct, ← Formalism.L2.SG.Pf.LTL.star_dot_conjT, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hH,
      Pi.star_single, star_one, single_dotProduct, one_mul, Formalism.L2.SG.RealFrameCoordinates.hpk_esI, smul_eq_mul, star_star,
      ← mul_assoc, inv_mul_cancel₀ (pow_ne_zero _ hl), one_mul]
  have hisom : ∀ x y : Fin X.B.I.n → ℂ, hJ (X.B.I.ε v) (H *ᵥ x) (H *ᵥ y) = hJ (X.B.I.ε v) x y := by
    intro x y
    unfold hJ
    rw [← Formalism.L2.SG.HermitianMatrixIdentities.star_dot_conjT' H x (Formalism.REAL.Jm (X.B.I.ε v) *ᵥ (H *ᵥ y)), Matrix.mulVec_mulVec,
      Matrix.mulVec_mulVec, hHU]
  have hinvJ : ∀ x : Fin X.B.I.n → ℂ, hJ (X.B.I.ε v) (rv X.B.I v (X.fR a)) (H⁻¹ *ᵥ x) =
      hJ (X.B.I.ε v) (rv X.B.I v (X.fR a)) x := by
    intro x
    have hx : H *ᵥ (H⁻¹ *ᵥ x) = x := by rw [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hHu, Matrix.one_mulVec]
    rw [← hisom, hfa a, hx]
  have e1 : (Qi * (H⁻¹ * M * H) * Q) *ᵥ f = Qi *ᵥ (H⁻¹ *ᵥ (M *ᵥ (Q *ᵥ f))) := by
    simp only [← Matrix.mulVec_mulVec, hHf]
  have e2 : (Qi * M * Q) *ᵥ f = Qi *ᵥ (M *ᵥ (Q *ᵥ f)) := by
    simp only [← Matrix.mulVec_mulVec]
  rw [e1, e2, hread, hread, hinvJ]

end Formalism.L2.SG.StandardCoordinates

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.StandardCoordinates =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BlockScaling =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BlockScaling", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbVecFin\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.TriangularProducts\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.StepPinExistsOfPlace\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BigCellDensity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RootPatterns\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BridgeOrbVecAt\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CarrierSizes\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.ModelMeasure\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.PiMeasureScaling\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.QuotientSpan\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.StandardCoordinates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.Interval.Finset.Box\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RealConjugatorData\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix MeasureTheory NumberField Formalism.BasicNotions
open scoped ENNReal

namespace Formalism.L2.SG.BlockScaling

theorem rdE_eq_rd' (D : D7) : D.host.rdE = Formalism.FourierDecayAlt.S6.rd D.host.E := by
  unfold Formalism.BasicNotions.Host.rdE Formalism.FourierDecayAlt.S6.rd
  rw [Int.cast_abs, one_div]

theorem scal_of_bD : ∀ (l : List (ℕ × ℂ)) (a b : ℕ), Formalism.MainNotions.BigCellDensity.bD l a = Formalism.MainNotions.BigCellDensity.bD l b →
    Formalism.FourierDecayAlt.D.ptScal l a = Formalism.FourierDecayAlt.D.ptScal l b
  | [], _, _, _ => rfl
  | (s, t) :: l, a, b, h => by
    simp only [Formalism.MainNotions.BigCellDensity.bD] at h
    simp only [Formalism.FourierDecayAlt.D.ptScal]
    split_ifs at h ⊢ with ha hb hb <;> first | rfl | omega | exact scal_of_bD l _ _ (by omega)

theorem scal_partner : ∀ (l : List (ℕ × ℂ)) (a : ℕ), Formalism.FourierDecayAlt.D.ptScal l (Formalism.FourierDecayAlt.D.ptPartner l a) = Formalism.FourierDecayAlt.D.ptScal l a
  | [], _ => rfl
  | (s, t) :: l, a => by
    by_cases ha : a < s
    · have hp : Formalism.FourierDecayAlt.D.ptPartner ((s, t) :: l) a = s - 1 - a := by simp [Formalism.FourierDecayAlt.D.ptPartner, ha]
      rw [hp]
      simp [Formalism.FourierDecayAlt.D.ptScal, ha, show s - 1 - a < s by omega]
    · have hp : Formalism.FourierDecayAlt.D.ptPartner ((s, t) :: l) a = s + Formalism.FourierDecayAlt.D.ptPartner l (a - s) := by
        simp [Formalism.FourierDecayAlt.D.ptPartner, ha]
      rw [hp]
      simp only [Formalism.FourierDecayAlt.D.ptScal, if_neg ha, if_neg (show ¬ (s + Formalism.FourierDecayAlt.D.ptPartner l (a - s) < s) by omega),
        Nat.add_sub_cancel_left]
      exact scal_partner l _

theorem dPt_free {r : ℕ} (γ : Formalism.MainNotions.S.Point ℂ (r + 1)) (q : Formalism.FourierDecayAlt.C2.Lstidx (Formalism.MainNotions.BigCellDensity.wPt γ)) :
    Formalism.MainNotions.BigCellDensity.dPt γ (Formalism.MainNotions.BigCellDensity.wPt γ q.1.1) = Formalism.MainNotions.BigCellDensity.dPt γ (Formalism.MainNotions.BigCellDensity.wPt γ q.1.2) := by
  have hb := (Formalism.MainNotions.BigCellDensity.root_iff γ q.1.2 q.1.1 q.2.1).2 q.2.2
  rw [Formalism.MainNotions.BigCellDensity.blockIdx_bD, Formalism.MainNotions.BigCellDensity.blockIdx_bD] at hb
  unfold Formalism.MainNotions.BigCellDensity.dPt
  rw [Formalism.MainNotions.BigCellDensity.wPt_val, Formalism.MainNotions.BigCellDensity.wPt_val, scal_partner, scal_partner]
  exact scal_of_bD _ _ _ hb.symm

theorem ico_int (s : ℕ) (f : ℤ → ℝ) :
    ∏ m ∈ Finset.Ico (1 : ℤ) (s : ℤ), f m ^ ((s : ℤ) - m) = ∏ m ∈ Finset.Ico 1 s, f (m : ℤ) ^ (s - m) := by
  refine Finset.prod_nbij' (fun m : ℤ => m.toNat) (fun m : ℕ => (m : ℤ)) ?_ ?_ ?_ ?_ ?_
  · intro m hm
    simp only [Finset.mem_Ico] at hm ⊢
    omega
  · intro m hm
    simp only [Finset.mem_Ico] at hm ⊢
    omega
  · intro m hm
    simp only [Finset.mem_Ico] at hm
    omega
  · intro m _
    simp
  · intro m hm
    simp only [Finset.mem_Ico] at hm
    have h1 : ((m.toNat : ℕ) : ℤ) = m := Int.toNat_of_nonneg (by omega)
    rw [h1, show (s : ℤ) - m = ((s - m.toNat : ℕ) : ℤ) by omega, zpow_natCast]

theorem toStd_fst (r : ℕ) (g : ℝ) : ∀ (o : ℕ) (L : Formalism.FourierDecayAlt.C.LPt),
    (Formalism.FourierDecayAlt.D.toStd r g o L).map Prod.fst = L.map Prod.fst
  | _, [] => rfl
  | o, (s, t) :: L => by
    simp only [Formalism.FourierDecayAlt.D.toStd, List.map_cons]
    rw [toStd_fst r g (o + s) L]

theorem blkOf_eq_bi {K : Type*} : ∀ (L : List (K × ℕ)) (i : ℕ),
    Formalism.L2.SG.RealObj.blkOf L i = Formalism.L2.SG.TriangularProducts.bi (L.map Prod.snd) i
  | [], _ => rfl
  | (t, s) :: L, i => by
    simp only [Formalism.L2.SG.RealObj.blkOf, Formalism.L2.SG.TriangularProducts.bi, List.map_cons]
    split_ifs
    · rfl
    · rw [blkOf_eq_bi L (i - s), add_comm]

theorem conj_trG {n N : ℕ} {ε : Fin n → Bool} {Q : Matrix (Fin n) (Fin N) ℂ} {Qi : Matrix (Fin N) (Fin n) ℂ}
    (hQiQ : Qi * Q = 1) (hQQi : Q * Qi = 1) (γ hh hh' y : Formalism.REAL.UJ ε) :
    (Formalism.L2.SG.RealObj.trG Q Qi (hh⁻¹ * γ * hh'))⁻¹ * Formalism.L2.SG.RealObj.trG Q Qi (hh⁻¹ * y * hh) *
              Formalism.L2.SG.RealObj.trG Q Qi (hh⁻¹ * γ * hh') = Qi * Formalism.MainNotions.S.uMat (hh'⁻¹ * (γ⁻¹ * y * γ) * hh') * Q := by
  have hinv : (Formalism.L2.SG.RealObj.trG Q Qi (hh⁻¹ * γ * hh'))⁻¹ = Formalism.L2.SG.RealObj.trG Q Qi ((hh⁻¹ * γ * hh')⁻¹) := by
    refine Matrix.inv_eq_right_inv ?_
    unfold Formalism.L2.SG.RealObj.trG
    calc Qi * Formalism.MainNotions.S.uMat (hh⁻¹ * γ * hh') * Q * (Qi * Formalism.MainNotions.S.uMat (hh⁻¹ * γ * hh')⁻¹ * Q)
        = Qi * (Formalism.MainNotions.S.uMat (hh⁻¹ * γ * hh') * (Q * Qi) * Formalism.MainNotions.S.uMat (hh⁻¹ * γ * hh')⁻¹) * Q := by
          simp only [Matrix.mul_assoc]
      _ = 1 := by
        rw [hQQi, Matrix.mul_one, show Formalism.MainNotions.S.uMat (hh⁻¹ * γ * hh') * Formalism.MainNotions.S.uMat (hh⁻¹ * γ * hh')⁻¹ =
          Formalism.MainNotions.S.uMat ((hh⁻¹ * γ * hh') * (hh⁻¹ * γ * hh')⁻¹) from rfl, mul_inv_cancel]
        show Qi * 1 * Q = 1
        rw [Matrix.mul_one, hQiQ]
  rw [hinv]
  unfold Formalism.L2.SG.RealObj.trG
  have e : hh'⁻¹ * (γ⁻¹ * y * γ) * hh' = (hh⁻¹ * γ * hh')⁻¹ * (hh⁻¹ * y * hh) * (hh⁻¹ * γ * hh') := by
    group
  rw [e]
  calc Qi * Formalism.MainNotions.S.uMat (hh⁻¹ * γ * hh')⁻¹ * Q * (Qi * Formalism.MainNotions.S.uMat (hh⁻¹ * y * hh) * Q) *
        (Qi * Formalism.MainNotions.S.uMat (hh⁻¹ * γ * hh') * Q)
      = Qi * (Formalism.MainNotions.S.uMat (hh⁻¹ * γ * hh')⁻¹ * (Q * Qi) * Formalism.MainNotions.S.uMat (hh⁻¹ * y * hh) * (Q * Qi) *
          Formalism.MainNotions.S.uMat (hh⁻¹ * γ * hh')) * Q := by simp only [Matrix.mul_assoc]
    _ = _ := by
      rw [hQQi, Matrix.mul_one, Matrix.mul_one]
      rfl


open Formalism.L2.SG.HidaSetting Formalism.L2.SG.LocWSOf in
theorem rset_of_stV {D : D7} {X : HidaSetting D} (v : InfinitePlace X.B.I.F) {lam : ℂ} (hl : lam ≠ 0)
    {Q : Matrix (Fin X.B.I.n) (Fin (2 * D.R.rS + D.R.k + 1)) ℂ} {Qi : Matrix (Fin (2 * D.R.rS + D.R.k + 1)) (Fin X.B.I.n) ℂ}
    (hT : IsTranspC X v lam D.R.k D.R.rS Q Qi) (u u' : D.what₂.Word) (γ : X.B.I.Ginf) (hh hh' : Formalism.REAL.UJ (X.B.I.ε v))
    (he : ∀ a, Formalism.MainNotions.S.uMat hh *ᵥ rv X.B.I v (X.eR a) = rv X.B.I v (X.eR a))
    (hz : Formalism.MainNotions.S.uMat hh *ᵥ rv X.B.I v (X.zR u) = rv X.B.I v (X.zR u))
    (he' : ∀ a, Formalism.MainNotions.S.uMat hh' *ᵥ rv X.B.I v (X.eR a) = rv X.B.I v (X.eR a))
    (hz' : Formalism.MainNotions.S.uMat hh' *ᵥ rv X.B.I v (X.zR u') = rv X.B.I v (X.zR u'))
    (hzW : Formalism.QuantumDeterminants.inWb D.R.k D.R.rS (Qi *ᵥ rv X.B.I v (X.zR u)))
    (hzW' : Formalism.QuantumDeterminants.inWb D.R.k D.R.rS (Qi *ᵥ rv X.B.I v (X.zR u')))
    (y : Formalism.REAL.UJ (X.B.I.ε v)) (hy : y ∈ Formalism.L2.SG.NGPin.StV X u u' γ v) :
    Formalism.L2.SG.RealObj.trG Q Qi (hh⁻¹ * y * hh) ∈
      Formalism.FourierDecayAlt.C6.Rset (Formalism.L2.SG.RealObj.trG Q Qi (hh⁻¹ * γ v * hh')) := by
  have hQiQ := hT.1
  have hQQi := hT.2.1
  have hcoe : ∀ a b c : Formalism.REAL.UJ (X.B.I.ε v), Formalism.MainNotions.S.uMat (a⁻¹ * b * c) = (Formalism.MainNotions.S.uMat a)⁻¹ * Formalism.MainNotions.S.uMat b *
      Formalism.MainNotions.S.uMat c := fun a b c => by
    rw [show Formalism.MainNotions.S.uMat (a⁻¹ * b * c) = Formalism.MainNotions.S.uMat a⁻¹ * Formalism.MainNotions.S.uMat b * Formalism.MainNotions.S.uMat c from rfl,
      Formalism.L2.SG.RealConjugatorData.uMat_inv']
  have hu : ∀ a : Formalism.REAL.UJ (X.B.I.ε v), IsUnit (Formalism.MainNotions.S.uMat a).det := fun a => by
    have := Formalism.L2.SG.RealConjugatorData.uMat_mul_inv a
    exact Matrix.isUnit_det_of_right_inverse this
  refine ⟨?_, ?_⟩
  ·
    have h1 := Formalism.L2.SG.QuotientSpan.inN_conj (hh := Formalism.MainNotions.S.uMat hh) hh.2 (hu hh) he hz hy.1
    rw [← hcoe] at h1
    exact (Formalism.L2.SG.QuotientSpan.inN_iff v hl hT _ hzW _ (hh⁻¹ * y * hh).2).1 h1
  ·
    have hinv : (Formalism.L2.SG.RealObj.trG Q Qi (hh⁻¹ * γ v * hh'))⁻¹ = Formalism.L2.SG.RealObj.trG Q Qi ((hh⁻¹ * γ v * hh')⁻¹) := by
      refine Matrix.inv_eq_right_inv ?_
      unfold Formalism.L2.SG.RealObj.trG
      calc Qi * Formalism.MainNotions.S.uMat (hh⁻¹ * γ v * hh') * Q * (Qi * Formalism.MainNotions.S.uMat (hh⁻¹ * γ v * hh')⁻¹ * Q)
          = Qi * (Formalism.MainNotions.S.uMat (hh⁻¹ * γ v * hh') * (Q * Qi) * Formalism.MainNotions.S.uMat (hh⁻¹ * γ v * hh')⁻¹) * Q := by
            simp only [Matrix.mul_assoc]
        _ = 1 := by
          rw [hQQi, Matrix.mul_one, show Formalism.MainNotions.S.uMat (hh⁻¹ * γ v * hh') * Formalism.MainNotions.S.uMat (hh⁻¹ * γ v * hh')⁻¹ =
            Formalism.MainNotions.S.uMat ((hh⁻¹ * γ v * hh') * (hh⁻¹ * γ v * hh')⁻¹) from rfl, mul_inv_cancel]
          show Qi * 1 * Q = 1
          rw [Matrix.mul_one, hQiQ]
    have hconj : (Formalism.L2.SG.RealObj.trG Q Qi (hh⁻¹ * γ v * hh'))⁻¹ * Formalism.L2.SG.RealObj.trG Q Qi (hh⁻¹ * y * hh) *
        Formalism.L2.SG.RealObj.trG Q Qi (hh⁻¹ * γ v * hh') = Qi * Formalism.MainNotions.S.uMat (hh'⁻¹ * ((γ v)⁻¹ * y * γ v) * hh') * Q := by
      rw [hinv]
      unfold Formalism.L2.SG.RealObj.trG
      have e : hh'⁻¹ * ((γ v)⁻¹ * y * γ v) * hh' = (hh⁻¹ * γ v * hh')⁻¹ * (hh⁻¹ * y * hh) * (hh⁻¹ * γ v * hh') := by
        group
      rw [e]
      calc Qi * Formalism.MainNotions.S.uMat (hh⁻¹ * γ v * hh')⁻¹ * Q * (Qi * Formalism.MainNotions.S.uMat (hh⁻¹ * y * hh) * Q) *
            (Qi * Formalism.MainNotions.S.uMat (hh⁻¹ * γ v * hh') * Q)
          = Qi * (Formalism.MainNotions.S.uMat (hh⁻¹ * γ v * hh')⁻¹ * (Q * Qi) * Formalism.MainNotions.S.uMat (hh⁻¹ * y * hh) * (Q * Qi) *
              Formalism.MainNotions.S.uMat (hh⁻¹ * γ v * hh')) * Q := by simp only [Matrix.mul_assoc]
        _ = _ := by
          rw [hQQi, Matrix.mul_one, Matrix.mul_one]
          rfl
    rw [hconj]
    have h1 := Formalism.L2.SG.QuotientSpan.inN_conj (hh := Formalism.MainNotions.S.uMat hh') hh'.2 (hu hh') he' hz' hy.2
    rw [← hcoe] at h1
    exact (Formalism.L2.SG.QuotientSpan.inN_iff v hl hT _ hzW' _ (hh'⁻¹ * ((γ v)⁻¹ * y * γ v) * hh').2).1 h1

end Formalism.L2.SG.BlockScaling

namespace Formalism.L2.SG.Pf.Carrier

open Formalism.L2.SG.RealObj Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj.InfCut Formalism.L2.SG.Pf.Carrier.JointQuot

attribute [local instance] Formalism.BasicNotions.Host.cmStar instCM

section ZsMq

variable {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) (e : InfinitePlace D.host.E ≃ D.what₂.Tau)
  (he : PlaceTie X e) (hv : D.host.v = Formalism.FourierDecayAlt.S6.rd D.host.E / 2) {θ : ℝ} (C : Formalism.L2.SG.LocWSOf.Choice X θ)
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

local notation "PP" => CarrierOf (carrierInOf X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀) Mo

theorem measPinAt_of (sc : ℝ) (hsc : 0 < sc) (i0 i0' : ∀ _ : InfinitePlace X.B.I.F, Fin D.R.k)
    (hFX : (PP).FromX) (hB : (PP).Base i0 i0')
    (hemb : ∀ j x, (PP).S.emb j (X.ιE x) = X.B.I.φ ((PP).τ j) x)
    (hbase : ∀ v, Formalism.FourierDecayAlt.D.IsBaseFrame ((PP).T ((PP).τ.symm v)).base ((PP).ν' ((PP).τ.symm v))
      ((PP).m₀ ((PP).τ.symm v))) :
    MeasPinAt X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀ Mo sc i0 i0' := by
  intro p w hp hw h h' hD v μRv hHaar hpin hloc
  obtain ⟨hZp, -, -, hδG⟩ := orbVec_data X u u' e he hv C CA de de' l grid grid1 T hT fc χ sg ν' m₀ top A₀ Mo sc hsc
    i0 i0' hFX hB hemb hbase p w hp hw h h' hD v
  obtain ⟨hQ, hz, hz', -⟩ := hFX v
  set p' := Formalism.FourierDecayAlt.D.toStd (PP).S.G.r (PP).S.g 1 (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p) with hp'

  obtain ⟨pN, hpN⟩ : ∃ pN : Formalism.MainNotions.S.Point ℂ (D.R.rS + 1), pN.1 = p'.map Prod.swap := ⟨⟨p'.map Prod.swap,
      fun x hx => by
        obtain ⟨b, hb, rfl⟩ := List.mem_map.1 hx
        exact ⟨(hloc.1 b hb).2, (hloc.1 b hb).1⟩, by
      have h2 := hloc.2
      simp only [Formalism.FourierDecayAlt.D.ptSize] at h2
      rw [List.map_map]
      exact h2⟩, rfl⟩
  have hswap : pN.1.map Prod.swap = p' := by
    rw [hpN, List.map_map]
    exact List.map_id'' (fun x => Prod.swap_swap x) p'
  have hZ : Formalism.QuantumDeterminants.Zhat D.R.k D.R.rS ((PP).T ((PP).τ.symm v)).base.z ((PP).T ((PP).τ.symm v)).base.z'
      (trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v)) =
      Formalism.FourierDecayAlt.C2.monoP (Formalism.MainNotions.BigCellDensity.wPt pN) (Formalism.MainNotions.BigCellDensity.dPt pN) := by
    rw [hZp, ← Formalism.MainNotions.BigCellDensity.ptMatN_mono pN, hswap]
  have hw' : (hloc.2 ▸ Formalism.FourierDecayAlt.D.ptPerm p' : Equiv.Perm (Fin (D.R.rS + 1))) = Formalism.MainNotions.BigCellDensity.wPt pN := by
    refine Equiv.ext fun x => Fin.ext ?_
    calc ((hloc.2 ▸ Formalism.FourierDecayAlt.D.ptPerm p' : Equiv.Perm (Fin (D.R.rS + 1))) x).val
        = (Formalism.FourierDecayAlt.D.ptPerm p' ⟨x.val, by rw [hloc.2]; exact x.isLt⟩).val := Formalism.MainNotions.BigCellDensity.cast_perm_val _ _ _
      _ = Formalism.FourierDecayAlt.D.ptPartner p' x.val := (_root_.Formalism.FourierDecayAlt.P.Dx1.d_ptPermSpec p' (D.R.rS + 1) hloc).1 _
      _ = Formalism.FourierDecayAlt.D.ptPartner (pN.1.map Prod.swap) x.val := by rw [hswap]
      _ = (Formalism.MainNotions.BigCellDensity.wPt pN x).val := (Formalism.MainNotions.BigCellDensity.wPt_val pN x).symm
  have hdm : ∀ q : Formalism.FourierDecayAlt.C2.Lstidx (Formalism.MainNotions.BigCellDensity.wPt pN),
      ‖Formalism.MainNotions.BigCellDensity.dPt pN (Formalism.MainNotions.BigCellDensity.wPt pN q.1.1)‖ = ‖Formalism.MainNotions.BigCellDensity.dPt pN (Formalism.MainNotions.BigCellDensity.wPt pN q.1.2)‖ :=
    fun q => by rw [Formalism.L2.SG.BlockScaling.dPt_free pN q]

  have hT' : Formalism.L2.SG.LocWSOf.IsTranspC X v (-(Complex.I * (((PP).S.g : ℝ) : ℂ)) / (2 * (Real.pi : ℂ))) D.R.k D.R.rS
      ((PP).Q v) ((PP).Qi v) := hQ
  have hg0 : (0 : ℝ) < ((PP).S.g : ℝ) := by
    show (0 : ℝ) < ((D.host.g 0 * D.host.g 1 : ℕ) : ℝ)
    push_cast
    exact mul_pos (by exact_mod_cast (Formalism.L2.SG.Pf.CarrierSz.g_pos D).1) (by exact_mod_cast (Formalism.L2.SG.Pf.CarrierSz.g_pos D).2)
  set lam : ℂ := -(Complex.I * (((PP).S.g : ℝ) : ℂ)) / (2 * (Real.pi : ℂ)) with hlam
  have hl : lam ≠ 0 := by
    refine div_ne_zero (neg_ne_zero.2 (mul_ne_zero Complex.I_ne_zero ?_)) ?_
    · exact_mod_cast hg0.ne'
    · exact mul_ne_zero two_ne_zero (by exact_mod_cast Real.pi_ne_zero)
  have hzW : Formalism.QuantumDeterminants.inWb D.R.k D.R.rS ((PP).Qi v *ᵥ rv X.B.I v (X.zR u)) := by
    have h1 := ((PP).T ((PP).τ.symm v)).base.z_mem
    exact hz ▸ h1
  have hzW' : Formalism.QuantumDeterminants.inWb D.R.k D.R.rS ((PP).Qi v *ᵥ rv X.B.I v (X.zR u')) := by
    have h1 := ((PP).T ((PP).τ.symm v)).base.z'_mem
    exact hz' ▸ h1
  have hΦ1 : Measurable (fun s : Formalism.REAL.UJ (X.B.I.ε v) => (h v)⁻¹ * s * h v) :=
    ((continuous_const.mul continuous_id).mul continuous_const).measurable
  have hΦ2 : Measurable (fun s : Formalism.REAL.UJ (X.B.I.ε v) => Matrix.of.symm (trG ((PP).Q v) ((PP).Qi v) s)) := by
    refine Continuous.measurable ?_
    unfold trG
    exact (continuous_const.matrix_mul (Units.continuous_val.comp continuous_subtype_val)).matrix_mul continuous_const
  have hconc : ((μRv.map (fun s => (h v)⁻¹ * s * h v)).map
      (fun s => Matrix.of.symm (trG ((PP).Q v) ((PP).Qi v) s))) {x | Matrix.of x ∉ Formalism.FourierDecayAlt.C6.Rset
        (trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v))} = 0 := by
    have hS : IsClosed {x : Formalism.QuantumDeterminants.Mt D.R.k D.R.rS | Matrix.of x ∈ Formalism.FourierDecayAlt.C6.Rset
        (trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v))} :=
      (Formalism.FourierDecayAlt.P.Dx2.OrbJ.closedR (_root_.PI.StabPairsW.isUnit_det_of_mem_GV hδG)).closed
    rw [Measure.map_map hΦ2 hΦ1]
    refine (Measure.map_apply (hΦ2.comp hΦ1) ?_).trans ?_
    · exact hS.measurableSet.compl
    refine measure_mono_null ?_ hHaar.2.2.1
    intro y hy hyS
    refine hy ?_
    exact Formalism.L2.SG.BlockScaling.rset_of_stV v hl hT' u u' (gamW X u u' w) (h v) (h' v)
      (fun a => hD.1 v _ (Or.inl (Or.inl ⟨a, rfl⟩))) (hD.1 v _ (Or.inr rfl))
      (fun a => hD.2.1 v _ (Or.inl (Or.inl ⟨a, rfl⟩))) (hD.2.1 v _ (Or.inr rfl)) hzW hzW' y hyS

  have hw1 : w.1 = (Formalism.L2.SG.DataInst.signPt D.R.rS p).map Prod.swap := by
    have hpt := hp
    unfold ptOfL Formalism.L2.SG.DataInst.ptOfList at hpt
    split_ifs at hpt with hPtL
    rw [← Option.some_inj.mp hpt]; rfl
  have hsz : ∀ i : ℕ, Formalism.MainNotions.S.blockIdx pN.1 i = Formalism.L2.SG.RealObj.blkOf w.1 i := by
    intro i
    rw [Formalism.L2.SG.TriangularProducts.blockIdx_eq_bi, Formalism.L2.SG.BlockScaling.blkOf_eq_bi, hpN, hw1, List.map_map, List.map_map]
    congr 1
    have e1 : (Prod.snd ∘ Prod.swap : ℕ × ℂ → ℕ) = Prod.fst := rfl
    have e2 : (Prod.snd ∘ Prod.swap : ℕ × D.host.E → ℕ) = Prod.fst := rfl
    rw [e1, e2, show Formalism.L2.SG.DataInst.signPt D.R.rS p = Formalism.L2.SG.DataInst.signAux D.R.rS 1 p from rfl,
      Formalism.L2.SG.DataInst.sign_list_fst, hp', Formalism.L2.SG.BlockScaling.toStd_fst]
    simp [Formalism.FourierDecayAlt.C.loc]
  let idxE : ↥(Formalism.MainNotions.S.rootPat pN) ≃ Formalism.L2.SG.RealObj.FreeE w :=
    { toFun := fun q => ⟨q.1, by
        have hq := q.2
        simp only [Formalism.MainNotions.S.rootPat, Finset.mem_filter, Finset.mem_univ, true_and] at hq
        exact ⟨hq.1, by rw [← hsz, ← hsz]; exact hq.2⟩⟩
      invFun := fun q => ⟨q.1, by
        simp only [Formalism.MainNotions.S.rootPat, Finset.mem_filter, Finset.mem_univ, true_and]
        exact ⟨q.2.1, by rw [hsz, hsz]; exact q.2.2⟩⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }
  have hmap : ((μRv.map (fun s => (h v)⁻¹ * s * h v)).map
      (fun s => Matrix.of.symm (trG ((PP).Q v) ((PP).Qi v) s))).map (fun x => Formalism.MainNotions.S.rootCoords D.R.k D.R.rS
        ((PP).T ((PP).τ.symm v)).base.z' pN (Matrix.of.symm
          ((trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v))⁻¹ * Matrix.of x *
            trG ((PP).Q v) ((PP).Qi v) ((h v)⁻¹ * (gamW X u u' w) v * h' v)))) =
      ENNReal.ofReal (Formalism.FourierDecayAlt.D.bSt (Formalism.FourierDecayAlt.D.kapG ((PP).S.g : ℝ) (Formalism.FourierDecayAlt.S6.rd D.host.E))
        (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p)) • volume := by
    have hrd : (D.host.rdE : ℂ) ≠ 0 := by
      have := Formalism.L2.SG.RealFrameCoordinates.frS_mul_rd D
      intro h0; rw [h0, mul_zero] at this; exact zero_ne_one this
    set c : ℂ := (D.host.rdE : ℂ) * lam with hc
    have hc0 : c ≠ 0 := mul_ne_zero hrd hl
    set sP : Fin (D.R.rS + 1) × Fin (D.R.rS + 1) → ℂ := fun q => c ^ (D.R.rS - q.2.val) / c ^ (D.R.rS - q.1.val) with hsP
    have hsP0 : ∀ q, sP q ≠ 0 := fun q => div_ne_zero (pow_ne_zero _ hc0) (pow_ne_zero _ hc0)
    have hstm : Measurable (stCoordV X u' w (gamW X u u' w) v) := by
      refine Continuous.measurable ?_
      unfold stCoordV Formalism.L2.SG.HidaSetting.hJ
      fun_prop
    have hGm : Measurable (fun (y' : Formalism.L2.SG.RealObj.FreeE w → ℂ) (q : ↥(Formalism.MainNotions.S.rootPat pN)) => sP q.1 * y' (idxE q)) :=
      Measurable.of_eval fun q => measurable_const.mul (measurable_pi_apply _)
    rw [Measure.map_map hΦ2 hΦ1]
    refine (Measure.map_map ?_ (hΦ2.comp hΦ1)).trans ?_
    · refine Continuous.measurable ((Formalism.L2.SG.RootPatterns.rootCoords_cont _ _ _ _).comp ?_)
      exact (continuous_const.matrix_mul continuous_id).matrix_mul continuous_const
    refine (congrArg (fun f => Measure.map f μRv) (?_ : _ = (fun (y' : Formalism.L2.SG.RealObj.FreeE w → ℂ)
      (q : ↥(Formalism.MainNotions.S.rootPat pN)) => sP q.1 * y' (idxE q)) ∘ stCoordV X u' w (gamW X u u' w) v)).trans ?_
    · funext y q
      have hq := q.2
      simp only [Formalism.MainNotions.S.rootPat, Finset.mem_filter, Finset.mem_univ, true_and] at hq
      have ha : q.1.1.val < D.R.rS := by have := Fin.lt_def.1 hq.1; have := q.1.2.isLt; omega
      simp only [Function.comp_apply, Formalism.MainNotions.S.rootCoords, Equiv.apply_symm_apply]
      unfold Formalism.MainNotions.S.flagMat
      rw [dite_eq_left ha]
      erw [Formalism.L2.SG.BlockScaling.conj_trG hT'.1 hT'.2.1]
      have hcoe : Formalism.MainNotions.S.uMat ((h' v)⁻¹ * ((gamW X u u' w v)⁻¹ * y * gamW X u u' w v) * h' v) =
          (Formalism.MainNotions.S.uMat (h' v))⁻¹ * Formalism.MainNotions.S.uMat ((gamW X u u' w v)⁻¹ * y * gamW X u u' w v) * Formalism.MainNotions.S.uMat (h' v) := by
        rw [show Formalism.MainNotions.S.uMat ((h' v)⁻¹ * ((gamW X u u' w v)⁻¹ * y * gamW X u u' w v) * h' v) =
          Formalism.MainNotions.S.uMat (h' v)⁻¹ * Formalism.MainNotions.S.uMat ((gamW X u u' w v)⁻¹ * y * gamW X u u' w v) * Formalism.MainNotions.S.uMat (h' v) from rfl,
          Formalism.L2.SG.RealConjugatorData.uMat_inv']
      have hz'' : ((PP).T ((PP).τ.symm v)).base.z' = (PP).Qi v *ᵥ rv X.B.I v (X.zR u') := hz'
      rw [hcoe, hz'']
      have hHu : IsUnit (Formalism.MainNotions.S.uMat (h' v)).det :=
        Matrix.isUnit_det_of_right_inverse (Formalism.L2.SG.RealConjugatorData.uMat_mul_inv (h' v))
      erw [Formalism.L2.SG.StandardCoordinates.coord_conj v hl hT' u' _ _ (h' v).2 hHu
        (fun a => hD.2.1 v _ (Or.inl (Or.inl ⟨a, rfl⟩))) (hD.2.1 v _ (Or.inr rfl))
        (fun a => hD.2.1 v _ (Or.inl (Or.inr ⟨a, rfl⟩))) ⟨q.1.1.val, ha⟩ q.1.2]
      have hgen : stCoordV X u' w (gamW X u u' w) v y (idxE q) =
          c ^ (D.R.rS - q.1.1.val) / c ^ (D.R.rS - q.1.2.val) *
          (((PP).Qi v * Formalism.MainNotions.S.uMat ((gamW X u u' w v)⁻¹ * y * gamW X u u' w v) * (PP).Q v) *ᵥ
            Formalism.QuantumDeterminants.fvec D.R.k D.R.rS ((PP).Qi v *ᵥ rv X.B.I v (X.zR u')) q.1.2)
            (Formalism.QuantumDeterminants.eI D.R.k D.R.rS ⟨q.1.1.val, ha⟩) := by
        have h1 := Formalism.L2.SG.StandardCoordinates.stCoordV_gen v hl hT' u' w (gamW X u u' w) y (idxE q)
        rw [← hc] at h1
        exact h1
      rw [hgen]
      simp only [hsP]
      field_simp
      rfl
    rw [← Measure.map_map hGm hstm, hpin]
    unfold muStabV
    rw [Formalism.L2.SG.PiMeasureScaling.pi_reindex_scale idxE _ ENNReal.ofReal_ne_top (fun q => sP q.1) (fun q => hsP0 _)]
    congr 1
    have hpos_rd : 0 < D.host.rdE := by
      unfold Formalism.BasicNotions.Host.rdE
      exact Real.rpow_pos_of_pos (abs_pos.2 (Int.cast_ne_zero.2 (NumberField.discr_ne_zero D.host.E))) _
    have hk : D.host.ka = 2 * Real.pi / D.host.rdE := by
      simp only [Formalism.BasicNotions.Host.ka, Formalism.BasicNotions.Host.v]
      have hπ := Real.pi_ne_zero
      have := hpos_rd.ne'
      first | (field_simp; done)
    have hgX : (X.B.g : ℝ) = ((PP).S.g : ℝ) := by
      show (X.B.g : ℝ) = ((D.host.g 0 * D.host.g 1 : ℕ) : ℝ)
      rw [X.g_eq]
    set y : ℝ := D.host.rdE * ((PP).S.g : ℝ) / (2 * Real.pi) with hy
    have hy0 : 0 < y := by have := Real.pi_pos; positivity
    have hcy : c = ((y : ℝ) : ℂ) * (-Complex.I) := by
      rw [hc, hlam, hy]; push_cast; ring
    have hnc : Complex.normSq c = y ^ 2 := by
      rw [hcy, Complex.normSq_mul, Complex.normSq_ofReal, Complex.normSq_neg, Complex.normSq_I]; ring
    have hkap : Formalism.FourierDecayAlt.D.kapG ((PP).S.g : ℝ) (Formalism.FourierDecayAlt.S6.rd D.host.E) = y⁻¹ := by
      rw [← Formalism.L2.SG.BlockScaling.rdE_eq_rd', hy]
      unfold Formalism.FourierDecayAlt.D.kapG
      have := Real.pi_pos
      first | (field_simp; done)
    set F : ℕ → ℝ := fun m => Formalism.FourierDecayAlt.D.kapG ((PP).S.g : ℝ) (Formalism.FourierDecayAlt.S6.rd D.host.E) ^ (1 - 2 * (m : ℤ)) / Real.pi
      with hF
    have hF0 : ∀ m, 0 ≤ F m := fun m => div_nonneg (zpow_nonneg (by rw [hkap]; positivity) _) Real.pi_pos.le
    have hterm : ∀ q ∈ Formalism.MainNotions.S.rootPat pN, ENNReal.ofReal (D.host.ka / X.B.g / Real.pi) *
        ENNReal.ofReal (Complex.normSq (sP q))⁻¹ = ENNReal.ofReal (F (q.2.val - q.1.val)) := by
      intro q hq
      simp only [Formalism.MainNotions.S.rootPat, Finset.mem_filter, Finset.mem_univ, true_and] at hq
      have hab := Fin.lt_def.1 hq.1
      have hπ := Real.pi_pos
      rw [← ENNReal.ofReal_mul (by rw [hk, hgX]; positivity)]
      congr 1
      simp only [hsP, map_div₀, map_pow, hnc, hF, hkap, hk, hgX]
      have e : D.R.rS - q.1.val = (q.2.val - q.1.val) + (D.R.rS - q.2.val) := by have := q.2.isLt; omega
      rw [e, pow_add, _root_.inv_zpow', neg_sub, zpow_sub₀ hy0.ne', zpow_one, show (2 * ((q.2.val - q.1.val : ℕ) : ℤ)) =
        ((2 * (q.2.val - q.1.val) : ℕ) : ℤ) by push_cast; ring, zpow_natCast, pow_mul, hy]
      have h1 : (D.host.rdE * ((PP).S.g : ℝ) / (2 * Real.pi)) ≠ 0 := hy0.ne'
      first | (field_simp; done)
    rw [Finset.prod_coe_sort (Formalism.MainNotions.S.rootPat pN) (fun q => ENNReal.ofReal (D.host.ka / X.B.g / Real.pi) *
      ENNReal.ofReal (Complex.normSq (sP q))⁻¹), Finset.prod_congr rfl hterm,
      ← ENNReal.ofReal_prod_of_nonneg (fun q _ => hF0 _), Formalism.L2.SG.TriangularProducts.prod_rootPat pN F]
    congr 1
    unfold Formalism.FourierDecayAlt.D.bSt
    rw [hpN, List.map_map]
    have hfst : p'.map Prod.fst = (Formalism.FourierDecayAlt.C.loc ((PP).S.emb ((PP).τ.symm v)) p).map Prod.fst := by
      rw [hp', Formalism.L2.SG.BlockScaling.toStd_fst]
    have e1 : ((fun b : ℂ × ℕ => ∏ m ∈ Finset.Ico 1 b.2, F m ^ (b.2 - m)) ∘ Prod.swap) =
        (fun s => ∏ m ∈ Finset.Ico 1 s, F m ^ (s - m)) ∘ Prod.fst := rfl
    rw [e1, ← List.map_map, hfst, List.map_map]
    congr 1
    refine List.map_congr_left fun a _ => ?_
    simp only [Function.comp_apply, hF]
    exact (Formalism.L2.SG.BlockScaling.ico_int a.1
      (fun z : ℤ => Formalism.FourierDecayAlt.D.kapG ((PP).S.g : ℝ) (Formalism.FourierDecayAlt.S6.rd D.host.E) ^ (1 - 2 * z) / Real.pi)).symm
  have := Formalism.L2.SG.ModelMeasure.mp_modelK pN ((PP).T ((PP).τ.symm v)).base hδG (Formalism.MainNotions.BigCellDensity.dPt_ne pN) hdm hZ _
    hconc _ hmap
  rw [this, ← hw']
  rfl

end ZsMq

end Formalism.L2.SG.Pf.Carrier

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.BlockScaling =====
