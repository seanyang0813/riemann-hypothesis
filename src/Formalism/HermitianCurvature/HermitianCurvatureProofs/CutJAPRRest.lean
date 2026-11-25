module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPolyRadialCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdjointLeibnizExpansion
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTKLine
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSLMat
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAsmPS
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheSectionStab
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCoreCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftDerivativeCurves
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAdjointnessFromHermitian
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameEntries
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThtFacts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSIo
public import Formalism.HermitianCurvature.FrameExists2
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGenTransferKPt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLEig
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGaugeLinesLeft
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParametersUPrimeForULower
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPhaseCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LowerUnipotentRotationHolds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRDatumConst
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHPhaseSec
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLAtMost
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SectionEmbeddingMulVec
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTWNeAlgSt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTWNeAlg
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTKLineCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPPSCalc
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHPhaseInvOfCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LowerUnipotentHasRepresentation
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedF
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta
import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic
import Formalism.FormalDegreeBessel.FinalG
import Mathlib.Analysis.Calculus.Deriv.Prod
import Mathlib.Analysis.Calculus.Deriv.Star
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LieBracketMultiplication
import Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameExtension
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameCompletion
import Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTransfer

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAlgSS, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAsm, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPCoreAsm, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPLeftCov, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcComm, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcLin, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcSmooth, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRightCov, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPSecDeriv, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRFibStable, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRKapLine, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHRotRadSp, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHThtRot, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPhaseExtract, Formalism.HermitianCurvature.HermitianCurvatureProofs.ThtAdapted, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTWNe, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRRest

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAlgSS =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAlgSS", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPolyRadialCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR

theorem up_ne (P : M.Par) {l : ℕ} (hl : l ∈ Finset.Icc 1 (P.k - 1)) {π ρ : M.Ty P} (h : M.Up P l π ρ) :
    ρ ≠ π := by
  rintro rfl
  rw [Finset.mem_Icc] at hl
  have h1 := h ⟨l - 1, by omega⟩
  have h2 : l - 1 + 1 = l := by omega
  simp [h2] at h1

theorem up_idx (P : M.Par) {j l : ℕ} (hl : l ∈ Finset.Icc 1 (P.k - 1)) {π ρ : M.Ty P} (h : M.Up P l π ρ)
    (h' : M.Up P j π ρ) : j = l := by
  rw [Finset.mem_Icc] at hl
  have h1 := h ⟨l - 1, by omega⟩
  have h3 := h' ⟨l - 1, by omega⟩
  have h2 : l - 1 + 1 = l := by omega
  by_contra hne
  have hne' : ¬ l = j := fun e => hne e.symm
  simp only [h2, if_true, hne', if_false] at h1 h3
  omega

theorem up_det (P : M.Par) {j : ℕ} {σ σ' ρ : M.Ty P} (h : M.Up P j σ σ') (h' : M.Up P j σ ρ) : σ' = ρ := by
  funext i
  apply Fin.ext
  rw [h i, h' i]

theorem algebraic_shift_holds : AlgSS := by
  intro P 𝒜 _ _ _ d hR l hl π ρ hUp Y
  obtain ⟨-, hκ, -, hSS, -, -⟩ := hR
  have hne := up_ne P hl hUp
  have hmul : ∀ f : M.Ty P → ℂ, d.κ f * d.κ (Pi.single π 1) = f π • d.κ (Pi.single π 1) := by
    intro f
    rw [← map_mul, ← map_smul]
    congr 1
    funext σ
    by_cases h : σ = π
    · subst h; simp
    · simp [Pi.single_eq_of_ne h]
  have h0 : d.κ (Pi.single ρ 1) * d.κ (Pi.single π 1) = 0 := by
    rw [hmul, Pi.single_eq_of_ne hne.symm, zero_smul]
  have cGG : Commute (d.κ (Pi.single ρ 1)) d.L.GG := hκ _ _ (by simp [R.LevelData.fns])
  have cl0 : Commute (d.κ (Pi.single π 1)) (d.L.l0 Y) := by
    unfold R.LevelData.l0
    refine Commute.sub_right (Commute.neg_right (hκ _ _ (by simp))) (Commute.mul_right
      (Algebra.commute_algebraMap_right _ _) (Commute.mul_right (hκ _ _ (by simp [R.LevelData.fns]))
        (hκ _ _ (by simp [R.LevelData.fns]))))
  have t1 : d.κ (Pi.single ρ 1) * (d.L.GG * d.x Y * d.L.l0 Y) * d.κ (Pi.single π 1) = 0 := by
    have e : d.κ (Pi.single ρ 1) * (d.L.GG * d.x Y * d.L.l0 Y) * d.κ (Pi.single π 1) =
        d.L.GG * (d.κ (Pi.single ρ 1) * (d.x Y * d.κ (Pi.single π 1))) * d.L.l0 Y := by
      calc d.κ (Pi.single ρ 1) * (d.L.GG * d.x Y * d.L.l0 Y) * d.κ (Pi.single π 1)
          = (d.κ (Pi.single ρ 1) * d.L.GG) * d.x Y * (d.L.l0 Y * d.κ (Pi.single π 1)) := by
            simp only [mul_assoc]
        _ = (d.L.GG * d.κ (Pi.single ρ 1)) * d.x Y * (d.κ (Pi.single π 1) * d.L.l0 Y) := by
            rw [cGG.eq, cl0.eq]
        _ = _ := by simp only [mul_assoc]
    rw [e, Q.NFData.x, hmul, mul_smul_comm, h0, smul_zero, mul_zero, zero_mul]
  have t2 : ∀ j ∈ Finset.Icc 1 (P.k - 1),
      d.κ (Pi.single ρ 1) * (d.SS j * d.κ fun σ => M.xEx P {j} σ Y) * d.κ (Pi.single π 1) =
        if j = l then M.xEx P {j} π Y • (d.SS j * d.κ (Pi.single π 1)) else 0 := by
    intro j _
    have hs := hSS j (fun σ => if M.Up P j σ ρ then 1 else 0) (Pi.single ρ 1) (by
      intro σ σ' h
      by_cases hσ : σ' = ρ
      · subst hσ; simp [h]
      · rw [Pi.single_eq_of_ne hσ, if_neg]
        intro h'
        exact hσ (up_det P h h'))
    calc d.κ (Pi.single ρ 1) * (d.SS j * d.κ fun σ => M.xEx P {j} σ Y) * d.κ (Pi.single π 1)
        = (d.κ (Pi.single ρ 1) * d.SS j) * ((d.κ fun σ => M.xEx P {j} σ Y) * d.κ (Pi.single π 1)) := by
          simp only [mul_assoc]
      _ = M.xEx P {j} π Y • (d.SS j * ((d.κ fun σ => if M.Up P j σ ρ then 1 else 0) * d.κ (Pi.single π 1))) := by
          rw [hs, hmul, mul_smul_comm, mul_assoc]
      _ = M.xEx P {j} π Y • (d.SS j * ((if M.Up P j π ρ then (1 : ℂ) else 0) • d.κ (Pi.single π 1))) := by
          rw [hmul]
      _ = _ := by
          by_cases hjl : j = l
          · subst hjl; simp [hUp]
          · have hn : ¬ M.Up P j π ρ := fun h => hjl (up_idx P hl hUp h)
            simp [hn, hjl]
  have hQ : d.QQ Y 1 0 = d.L.GG * d.x Y * d.L.l0 Y + d.weightedSumBis Y := rfl
  rw [hQ, mul_add, add_mul, t1, zero_add, Q.NFData.weightedSumBis, Finset.mul_sum, Finset.sum_mul,
    Finset.sum_congr rfl t2, Finset.sum_ite_eq', if_pos hl]

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAlgSS =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAsm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAsm", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPolyRadialCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdjointLeibnizExpansion\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTKLine\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSLMat\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAsmPS\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheSectionStab\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR

noncomputable section

open Asm in
theorem polynomial_radial_base_holds : PolynomialRadialAtSectionOfPhaseInvariance := by
  intro hD hK hF hA hC hP hE hW Wp Wq _ _ _ _ _ _ P Bs hsec hk X d hAct l hl S hS Pr hPr Bw Bw' hBw hBw' π ρ hUp
  have hAct' := hAct
  obtain ⟨hpl, hL, hSt, hRel, hQQ⟩ := hAct'
  have hTz : Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' = P.TT := Gauge.GC.tz_TT P Bs hpl
  have hTT : 0 < P.TT := by rw [← hTz]; exact mul_pos Bs.T_pos Bs.T'_pos
  have hcs := Formalism.FourierDecayAlt.P.TheSecStab.theSection_csec (k := P.k) (r := P.r) (by omega) Bs.z_mem Bs.z'_mem
    Bs.T_pos Bs.T'_pos
  rw [← hsec] at hcs
  have hAnn : ∀ ζ ∈ Gauge.GC.Ann P, Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq ζ :=
    fun ζ hζ => by rw [hTz]; exact hζ
  set ζ₁ : ℂ := ((P.TT + 1 : ℝ) : ℂ) with hζ₁def
  have hζ₁ : ζ₁ ∈ Gauge.GC.Ann P := by
    show P.TT < Complex.normSq ζ₁
    rw [hζ₁def, Complex.normSq_ofReal]; nlinarith
  have hDc : ∀ ζ ∈ Gauge.GC.Ann P,
      SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ = SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ₁ ∧
      SSn.nu0' P.k P.r Bs.z Bs.z' Bs.μsec ζ = SSn.nu0' P.k P.r Bs.z Bs.z' Bs.μsec ζ₁ ∧
      SSn.io0 P.k P.r Bs.z Bs.z' Bs.μsec ζ = SSn.io0 P.k P.r Bs.z Bs.z' Bs.μsec ζ₁ := by
    intro ζ hζ
    rw [hsec]
    exact hD P.k P.r Bs.z Bs.z' (by omega) Bs.z_mem Bs.z'_mem Bs.T_pos Bs.T'_pos ζ ζ₁ (hAnn ζ hζ) (hAnn ζ₁ hζ₁)
  have hFc : ∀ ζ ∈ Gauge.GC.Ann P,
      NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ = NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ₁ := by
    intro ζ hζ
    unfold NF.Fib
    rw [hcs.2 ζ ζ₁ (hAnn ζ hζ) (hAnn ζ₁ hζ₁)]
  obtain ⟨Qr, hKP, hKL⟩ := hK Wp Wq P Bs hsec hk X d hAct Pr hPr
  have hGT : Gauge.GC.GTHyp P Bs X d := ⟨hpl, hk, hcs, hL, hSt, hRel, hQQ⟩
  have hLine := Gauge.GC.gauge_kappa_line_holds Wp Wq P Bs X d hGT Qr hKP ζ₁ hζ₁
  obtain ⟨Eπ, hEπF, hEπQ, hEπn, hEπsp⟩ := hLine π
  obtain ⟨Eρ, hEρF, hEρQ, hEρn, hEρsp⟩ := hLine ρ
  have hQQr : ∀ σ, (Qr σ).comp (Qr σ) = Qr σ := fun σ => by rw [hKP.1 σ σ, if_pos rfl]

  have hval : ∀ (Ψ : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') (c : Fin P.r → ℂ), c ∈ OmX P.r →
      ∀ ζ ∈ Gauge.GC.Ann P, (Ψ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c (NF.muZ P.k P.r Bs.μsec ζ) ∈
        NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ := by
    intro Ψ c hc ζ hζ p hp
    have hq : ((c, ζ) : (Fin P.r → ℂ) × ℂ) ∈ NF.QR P.k P.r Bs.z Bs.z' := ⟨hc, hAnn ζ hζ⟩
    have hdom := Formalism.FourierDecayAlt.P.NFRadRedA.mem_domR Bs.z_mem Bs.z'_mem Bs.sec hq
    have h1 := Ψ.2.2.2 (c, NF.muZ P.k P.r Bs.μsec ζ) hdom p.1 hp.1 p.2 hp.2.1
    simp only at h1
    rw [hp.2.2] at h1
    exact h1.symm
  have hEπne : Eπ ≠ 0 := by
    intro h0
    rw [h0] at hEπn
    have : B.hsVec (0 : Wq →L[ℂ] Wp) = 0 := (Formalism.FourierDecayAlt.P.JFxI.hsVecL (Wp := Wp) (Wq := Wq)).map_zero
    rw [this, inner_zero_left] at hEπn
    exact zero_ne_one hEπn
  have hEπFa : ∀ ζ ∈ Gauge.GC.Ann P, Eπ ∈ NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ :=
    fun ζ hζ => (hFc ζ hζ).symm ▸ hEπF
  have hPπ : ∀ ζ ∈ Gauge.GC.Ann P, (Pr π (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp Eπ = Eπ :=
    fun ζ hζ => by rw [hKL ζ hζ Eπ (hEπFa ζ hζ) π, hEπQ]

  have hRB : NF.RadBase P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' := Gauge.GC.radBase_of P Bs hpl
  have hsecπ : ((NF.QR P.k P.r Bs.z Bs.z').indicator fun _ : (Fin P.r → ℂ) × ℂ => Eπ) ∈
      NF.RadSec P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' := by
    refine ⟨(contDiffOn_const (c := Eπ)).congr fun q hq => by simp [Set.indicator_of_mem hq], fun q hq => ?_,
      fun q hq => by simp [Set.indicator_of_notMem hq]⟩
    rw [Set.indicator_of_mem hq]
    exact hEπFa q.2 (by show P.TT < _; rw [← hTz]; exact hq.2)
  obtain ⟨Φ0, hΦ0, hΦr⟩ :=
    Formalism.FourierDecayAlt.P.radical_reduction_surjective Wp Wq P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' hRB _ hsecπ
  let Φ : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π' := ⟨Φ0, hΦ0⟩
  have hΦ : ∀ c ∈ OmX P.r, ∀ ζ ∈ Gauge.GC.Ann P,
      (Φ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c (NF.muZ P.k P.r Bs.μsec ζ) = Eπ := by
    intro c hc ζ hζ
    have hq : ((c, ζ) : (Fin P.r → ℂ) × ℂ) ∈ NF.QR P.k P.r Bs.z Bs.z' := ⟨hc, hAnn ζ hζ⟩
    have h := congrFun hΦr (c, ζ)
    simp only [NF.radR, Set.indicator_of_mem hq] at h
    exact h
  have hsum : ∀ σ : M.Ty P, (∑ τ, (Pi.single σ (1 : ℂ) : M.Ty P → ℂ) τ • Qr τ) = Qr σ := by
    intro σ
    rw [Finset.sum_eq_single σ (fun τ _ hτ => by simp [hτ]) (fun h => absurd (Finset.mem_univ σ) h)]
    simp
  have hKπ : (d.κ (Pi.single π 1)).1 Φ = Φ := by
    apply Subtype.ext
    refine _root_.Formalism.FourierDecayAlt.P.NFRadRedA.radRedInj Wp Wq P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' hRB _
      ((d.κ (Pi.single π 1)).1 Φ).2 _ Φ.2 (funext fun q => ?_)
    by_cases hq : q ∈ NF.QR P.k P.r Bs.z Bs.z'
    · simp only [NF.radR, Set.indicator_of_mem hq]
      have hqA : q.2 ∈ Gauge.GC.Ann P := by show P.TT < _; rw [← hTz]; exact hq.2
      have h1 := hKP.2.2.2 (Pi.single π 1) Φ ⟨(q.1, q.2), hq.1, hqA⟩
      simp only at h1
      rw [h1, hsum, hΦ q.1 hq.1 q.2 hqA, hEπQ]
    · simp only [NF.radR, Set.indicator_of_notMem hq]

  obtain ⟨Y, hY⟩ : ∃ Y : ℂ, M.xEx P {l} π Y ≠ 0 := by
    refine ⟨((1 + ∑ i ∈ Finset.Icc 1 (P.k - 1), |M.rho P π i| : ℝ) : ℂ), ?_⟩
    unfold M.xEx
    rw [Finset.prod_ne_zero_iff]
    intro i hi h0
    have h2 := congrArg Complex.re h0
    simp only [Complex.add_re, Complex.ofReal_re, Complex.zero_re] at h2
    have hle : |M.rho P π i| ≤ ∑ j ∈ Finset.Icc 1 (P.k - 1), |M.rho P π j| :=
      Finset.single_le_sum (f := fun j => |M.rho P π j|) (fun j _ => abs_nonneg _) (Finset.mem_sdiff.1 hi).1
    linarith [neg_abs_le (M.rho P π i)]

  have hAlg := hA P (Q.Pr (Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π')) d hRel l hl π ρ hUp Y
  have hAlg1 : (d.κ (Pi.single ρ 1)).1 (X.t Y 1 0 Φ) = M.xEx P {l} π Y • (d.SS l).1 Φ := by
    have h := congrArg (fun x : Q.Pr (Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') => x.1 Φ) hAlg
    rw [← hQQ Y] at h
    change ((d.κ (Pi.single ρ 1)).1 * (X.t Y 1 0) * (d.κ (Pi.single π 1)).1) Φ =
      (algebraMap ℂ (Module.End ℂ (Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π')) (M.xEx P {l} π Y) *
        ((d.SS l).1 * (d.κ (Pi.single π 1)).1)) Φ at h
    simp only [Module.End.mul_apply, Module.algebraMap_end_apply] at h
    rw [hKπ] at h
    exact h
  let c0 : Fin P.r → ℂ := fun _ => 1
  have hc0 : c0 ∈ OmX P.r := fun _ => one_ne_zero
  have hPt : ∀ ζ ∈ Gauge.GC.Ann P, M.xEx P {l} π Y • S ζ Eπ =
      (Q.tL P.k P.r Bs.z Bs.z' (Fin.last P.r) Y 1 0 ((Φ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c0)
        (NF.muZ P.k P.r Bs.μsec ζ)).comp (Qr ρ) := by
    intro ζ hζ
    have hq : ((c0, ζ) : (Fin P.r → ℂ) × ℂ) ∈ NF.QR P.k P.r Bs.z Bs.z' := ⟨hc0, hAnn ζ hζ⟩
    have hdom := Formalism.FourierDecayAlt.P.NFRadRedA.mem_domR Bs.z_mem Bs.z'_mem Bs.sec hq
    have e1 := congrArg (fun Ψ : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π' =>
      (Ψ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c0 (NF.muZ P.k P.r Bs.μsec ζ)) hAlg1
    have h1 := hKP.2.2.2 (Pi.single ρ 1) (X.t Y 1 0 Φ) ⟨(c0, ζ), hc0, hζ⟩
    simp only at h1 e1
    rw [h1, hsum, X.t_apply Y 1 0 Φ (c0, NF.muZ P.k P.r Bs.μsec ζ) hdom, Submodule.coe_smul] at e1
    simp only [Pi.smul_apply] at e1
    rw [hS Φ c0 hc0 ζ hζ, hΦ c0 hc0 ζ hζ] at e1
    exact e1.symm

  have hSF : ∀ ζ ∈ Gauge.GC.Ann P, S ζ Eπ ∈ NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ := by
    intro ζ hζ
    have h := hval ((d.SS l).1 Φ) c0 hc0 ζ hζ
    rw [hS Φ c0 hc0 ζ hζ, hΦ c0 hc0 ζ hζ] at h
    exact h
  have hW1 : ∀ ζ ∈ Gauge.GC.Ann P, (Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp (S ζ Eπ) =
      (M.xEx P {l} π Y)⁻¹ • (Q.tL P.k P.r Bs.z Bs.z' (Fin.last P.r) Y 1 0 ((Φ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c0)
        (NF.muZ P.k P.r Bs.μsec ζ)).comp (Qr ρ) := by
    intro ζ hζ
    rw [hKL ζ hζ _ (hSF ζ hζ) ρ]
    have h := hPt ζ hζ
    have h2 : S ζ Eπ = (M.xEx P {l} π Y)⁻¹ • (Q.tL P.k P.r Bs.z Bs.z' (Fin.last P.r) Y 1 0
        ((Φ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c0) (NF.muZ P.k P.r Bs.μsec ζ)).comp (Qr ρ) := by
      rw [← h, smul_smul, inv_mul_cancel₀ hY, one_smul]
    rw [h2, ContinuousLinearMap.smul_comp, ContinuousLinearMap.comp_assoc, hQQr]

  have hWline : ∀ ζ ∈ Gauge.GC.Ann P, (Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp (S ζ Eπ) =
      inner ℂ (B.hsVec Eρ) (B.hsVec ((Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp (S ζ Eπ))) • Eρ := by
    intro ζ hζ
    have hWF := (hF Wp Wq P Bs hpl hk Pr hPr Bw Bw' hBw hBw' ζ hζ _ (hSF ζ hζ) ρ).1
    refine hEρsp _ (hFc ζ hζ ▸ hWF) ?_
    rw [hKL ζ hζ _ (hSF ζ hζ) ρ, ContinuousLinearMap.comp_assoc, hQQr]

  let F : ℂ → ℂ := fun ζ =>
    inner ℂ (B.hsVec Eρ) (B.hsVec ((Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp (S ζ Eπ)))
  have hCP := hC Wp Wq P Bs hpl hk hsec Φ Eπ hΦ c0 hc0 Y
  let Lf : (Wq →L[ℂ] Wp) →ₗ[ℂ] ℂ := (M.xEx P {l} π Y)⁻¹ •
    ((innerₛₗ ℂ (B.hsVec Eρ)).comp ((Formalism.FourierDecayAlt.P.JFxI.hsVecL (Wp := Wp) (Wq := Wq)).comp
      ((ContinuousLinearMap.compL ℂ Wq Wq Wp).flip (Qr ρ)).toLinearMap))
  have hFPS : PS P.TT F := by
    refine PS.congr (PSV.apply hCP Lf) fun ζ hζ => ?_
    show inner ℂ (B.hsVec Eρ) (B.hsVec ((Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp (S ζ Eπ))) = _
    rw [hW1 ζ hζ]
    simp only [Lf, LinearMap.smul_apply, LinearMap.comp_apply, ContinuousLinearMap.coe_coe,
      ContinuousLinearMap.flip_apply, ContinuousLinearMap.compL_apply, smul_eq_mul]
    change inner ℂ (B.hsVec Eρ) (Formalism.FourierDecayAlt.P.JFxI.hsVecL (Wp := Wp) (Wq := Wq) ((M.xEx P {l} π Y)⁻¹ • _)) = _
    rw [map_smul, inner_smul_right]
    rfl

  obtain ⟨T1, hT1def⟩ : ∃ T : Wq →L[ℂ] Wp, T = (Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ₁)).comp
      (tht P.k P.r Bs.z Bs.z' Bs.π Bs.π' Bw Bw' (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ₁)
        (SSn.nu0' P.k P.r Bs.z Bs.z' Bs.μsec ζ₁) (SSn.io0 P.k P.r Bs.z Bs.z' Bs.μsec ζ₁) Eπ) := ⟨_, rfl⟩
  have hT1ne : T1 ≠ 0 := by
    rw [hT1def]
    exact hW Wp Wq P Bs hpl hk Pr hPr Bw Bw' hBw hBw' l hl π ρ hUp ζ₁ hζ₁ Eπ hEπF (hPπ ζ₁ hζ₁) hEπne
  have hThtF := (hF Wp Wq P Bs hpl hk Pr hPr Bw Bw' hBw hBw' ζ₁ hζ₁ Eπ hEπF ρ).2
  have hT1F := (hF Wp Wq P Bs hpl hk Pr hPr Bw Bw' hBw hBw' ζ₁ hζ₁ _ hThtF ρ).1
  have hT1line : T1 = inner ℂ (B.hsVec Eρ) (B.hsVec T1) • Eρ := by
    rw [hT1def]
    refine hEρsp _ hT1F ?_
    rw [hKL ζ₁ hζ₁ _ hThtF ρ, ContinuousLinearMap.comp_assoc, hQQr]
  obtain ⟨t0, ht0def⟩ : ∃ t : ℂ, t = inner ℂ (B.hsVec Eρ) (B.hsVec T1) := ⟨_, rfl⟩
  rw [← ht0def] at hT1line
  have ht0 : t0 ≠ 0 := by
    intro h0; apply hT1ne; rw [hT1line, h0, zero_smul]

  have hrotA : ∀ θ : ℝ, ∀ ζ ∈ Gauge.GC.Ann P, rot θ ζ ∈ Gauge.GC.Ann P := by
    intro θ ζ hζ
    show P.TT < Complex.normSq (rot θ ζ)
    have h1 : Complex.normSq (Complex.exp ((θ : ℂ) * Complex.I)) = 1 := by
      rw [Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I]; norm_num
    rw [rot, Complex.normSq_mul, h1, one_mul]; exact hζ
  have hFinv : ∀ θ : ℝ, ∀ ζ : ℂ, P.TT < Complex.normSq ζ → F (rot θ ζ) = F ζ := by
    intro θ ζ hζ
    obtain ⟨c, hc⟩ := hP Wp Wq P Bs hsec hk X d hAct l hl S hS Pr hPr Bw Bw' hBw hBw' π ρ hUp θ
    have hc1 : c = 1 := by
      have h := (hc ζ₁ hζ₁ Eπ hEπF (hPπ ζ₁ hζ₁)).2
      obtain ⟨e1, e2, e3⟩ := hDc (rot θ ζ₁) (hrotA θ ζ₁ hζ₁)
      rw [e1, e2, e3, ← hT1def] at h
      have h' : (1 - c) • T1 = 0 := by rw [sub_smul, one_smul, ← h, sub_self]
      rcases smul_eq_zero.1 h' with h'' | h''
      · exact (sub_eq_zero.1 h'').symm
      · exact absurd h'' hT1ne
    have h := (hc ζ hζ Eπ (hEπFa ζ hζ) (hPπ ζ hζ)).1
    rw [hc1, one_smul] at h
    show inner ℂ (B.hsVec Eρ) (B.hsVec ((Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec (rot θ ζ))).comp
      (S (rot θ ζ) Eπ))) = inner ℂ (B.hsVec Eρ) (B.hsVec ((Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp
      (S ζ Eπ)))
    rw [h]
  obtain ⟨m, q, hq⟩ := hE P.TT F hTT hFPS hFinv
  refine ⟨m, Polynomial.C t0⁻¹ * q, fun ζ hζ Xf hXf hXπ => ?_⟩
  have hXF1 : Xf ∈ NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ₁ := hFc ζ hζ ▸ hXf
  have hXQ : Xf.comp (Qr π) = Xf := by rw [← hKL ζ hζ Xf hXf π, hXπ]
  obtain ⟨x, hXe⟩ : ∃ x : ℂ, Xf = x • Eπ := ⟨_, hEπsp Xf hXF1 hXQ⟩
  subst hXe
  have hW' : (Pr ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)).comp (S ζ Eπ) = F ζ • Eρ := hWline ζ hζ
  obtain ⟨e1, e2, e3⟩ := hDc ζ hζ
  rw [map_smul, map_smul, ContinuousLinearMap.comp_smul, ContinuousLinearMap.comp_smul, hW', e1, e2, e3,
    ← hT1def, hT1line]
  simp only [smul_smul, Polynomial.eval_mul, Polynomial.eval_C]
  congr 1
  have hq' := hq ζ hζ
  simp only [gg, sig] at hq'
  have hinv : t0⁻¹ * t0 = 1 := inv_mul_cancel₀ ht0
  rw [mul_left_comm, hq']
  linear_combination (-(q.eval ((Real.sqrt (Complex.normSq ζ - P.TT) : ℝ) : ℂ) * x)) * hinv

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAsm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPCoreAsm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPCoreAsm", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCoreCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSLMat\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q NumberField
open scoped ComplexConjugate Matrix

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP

noncomputable section

theorem glc_single (k r : ℕ) (a b : Fin (k + 1)) : GLc k r (Matrix.single (wI k r a) (wI k r b) 1) := by
  have hm : mdim k r (Fin.last r) = k + 1 := by simp [mdim]
  have h := Formalism.FourierDecayAlt.P.Qx2.hpart_lev (k := k) (r := r) (Fin.last r) (Fin.cast hm.symm a) (Fin.cast hm.symm b)
  have ea : posL k r (Fin.last r) (Fin.cast hm.symm a) = wI k r a := by
    ext; simp [posL, wI, Fin.val_last]; omega
  have eb : posL k r (Fin.last r) (Fin.cast hm.symm b) = wI k r b := by
    ext; simp [posL, wI, Fin.val_last]; omega
  rw [ea, eb] at h
  exact h

theorem radSp_smoothLev {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [NormedAddCommGroup Wq]
    [NormedSpace ℂ Wq] {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Q.Mx k r → (Wp →L[ℂ] Wp)}
    {π' : Q.Mx k r → (Wq →L[ℂ] Wq)} (Φ : Q.RadSp k r z z' π π') {c : Fin r → ℂ} (hc : c ∈ OmX r) :
    Q.SmoothLev k r (Fin.last r) (Dp k r z z') ((Φ : Q.Fn k r (Wq →L[ℂ] Wp)) c) := by
  intro g₀ hg₀
  obtain ⟨U, F, hU, hxU, hF, hΦ⟩ := Φ.2.2.1 (c, g₀) ⟨hc, hg₀.1, hg₀.2⟩
  refine ⟨{g | (c, g) ∈ U}, fun g => F (c, g), hU.preimage (continuous_const.prodMk continuous_id), hxU, ?_, ?_⟩
  · exact hF.comp (contDiffOn_const.prodMk contDiffOn_id) (fun g hg => hg)
  · intro g hg hgl
    exact hΦ (c, g) hg hgl

theorem psv_congr {TT : ℝ} {V : Type*} [AddCommGroup V] [Module ℂ V] {f g : ℂ → V} (hf : PSV TT f)
    (h : ∀ ζ : ℂ, TT < Complex.normSq ζ → g ζ = f ζ) : PSV TT g := by
  obtain ⟨n, a, v, ha, hfe⟩ := hf
  exact ⟨n, a, v, ha, fun ζ hζ => by rw [h ζ hζ]; exact hfe ζ hζ⟩

theorem psv_sum {TT : ℝ} {V : Type*} [AddCommGroup V] [Module ℂ V]
    (hadd : ∀ f g : ℂ → V, PSV TT f → PSV TT g → PSV TT (fun ζ => f ζ + g ζ)) (h0 : PSV TT (fun _ => (0 : V)))
    {ι : Type*} (s : Finset ι) (F : ι → ℂ → V) (hF : ∀ i ∈ s, PSV TT (F i)) :
    PSV TT (fun ζ => ∑ i ∈ s, F i ζ) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using h0
  | @insert a s ha ih =>
    have := hadd _ _ (hF a (Finset.mem_insert_self a s)) (ih fun i hi => hF i (Finset.mem_insert_of_mem hi))
    refine psv_congr this fun ζ _ => ?_
    simp [Finset.sum_insert ha]

theorem radial_polynomial_of_truncation : CorePolyOfCut := by
  intro hT hW hC Wp Wq _ _ _ _ _ _ P Bs hpl hk hsec Φ X₀ hX c hc Y
  have hTz : Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' = P.TT := Gauge.GC.tz_TT P Bs hpl
  obtain ⟨n, κ, w, hκ, hw, hid⟩ := hT P.k P.r Bs.z Bs.z' Bs.k_pos Bs.z_mem Bs.z'_mem Bs.T_pos Bs.T'_pos Y
  rw [hTz] at hκ
  have hsm := radSp_smoothLev Φ hc
  have hwords : ∀ i, PSV P.TT (fun ζ =>
      wordR (w i) ((Φ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c) (NF.muZ P.k P.r Bs.μsec ζ)) := by
    intro i
    refine hW Wp Wq P Bs hpl hk hsec Φ X₀ hX c hc (w i) (fun Z hZ => ?_)
    obtain ⟨a, b, rfl⟩ := hw i Z hZ
    exact glc_single P.k P.r a b
  have hTT : 0 < P.TT := by rw [← hTz]; exact mul_pos Bs.T_pos Bs.T'_pos
  obtain ⟨-, -, -, -, -, -, -, hV⟩ := hC P.TT hTT
  obtain ⟨hadd, hsmul, -, -, hconst⟩ := hV (Wq →L[ℂ] Wp) (Wq →L[ℂ] Wp)
  have hsum := psv_sum hadd (hconst 0) Finset.univ
    (fun i ζ => κ i ζ • wordR (w i) ((Φ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c) (NF.muZ P.k P.r Bs.μsec ζ))
    (fun i _ => hsmul _ _ (hκ i) (hwords i))
  refine psv_congr hsum fun ζ hζ => ?_
  have hζ' : Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq ζ := by rw [hTz]; exact hζ
  have := hid (Wq →L[ℂ] Wp) ((Φ : Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c) hsm ζ hζ'
  simp only [mu0] at this
  rw [hsec]
  exact this

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPCoreAsm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPLeftCov =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPLeftCov", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCoreCut\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftDerivativeCurves\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q
open scoped Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP

noncomputable section

theorem rdV_leftCov {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp]
    [NormedAddCommGroup Wq] [NormedSpace ℂ Wq] [FiniteDimensional ℂ Wp]
    {π : Q.Mx k r → (Wp →L[ℂ] Wp)} (hπ : IsCRepOn (UWset k r z) π) (hc : ContinuousOn π (UWset k r z))
    {D : Set (Q.Mx k r)} {F : Q.Mx k r → (Wq →L[ℂ] Wp)}
    (hF : ∀ h ∈ UWset k r z, ∀ g ∈ Q.Glev k r (Fin.last r) ∩ D, F (h * g) = (π h).comp (F g))
    {μ : Q.Mx k r} (hμ : μ ∈ Q.Glev k r (Fin.last r) ∩ D) {X : Q.Mx k r} (hX : P.QrD.InLieW k r z X) :
    RdV (μ⁻¹ * X * μ) F μ = (P.QrD.dOp π X).comp (F μ) := by
  have hU : μᴴ * Hpk k r * μ = Hpk k r := hμ.1.1
  have hdet : IsUnit μ.det := by
    apply Matrix.isUnit_det_of_left_inverse (B := Hpk k r * μᴴ * Hpk k r)
    rw [Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_assoc μᴴ, hU, Formalism.QuantumDeterminants.GBasic.Hpk_sq]
  have hμu : IsUnit μ := (Matrix.isUnit_iff_isUnit_det μ).mpr hdet
  have key : ∀ t : ℝ, F (μ * NormedSpace.exp ((t : ℂ) • (μ⁻¹ * X * μ))) =
      (π (NormedSpace.exp ((t : ℂ) • X))).comp (F μ) := by
    intro t
    rw [show (t : ℂ) • (μ⁻¹ * X * μ) = μ⁻¹ * ((t : ℂ) • X) * μ by rw [Matrix.mul_smul, Matrix.smul_mul],
      Matrix.exp_conj' μ _ hμu, ← Matrix.mul_assoc, ← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hdet, Matrix.one_mul]
    exact hF _ (Formalism.FourierDecayAlt.P.QrD.exp_uw hX t) μ hμ
  unfold Formalism.REAL.RdV
  simp only [key]
  let L : (Wp →L[ℂ] Wp) →L[ℝ] (Wq →L[ℂ] Wp) :=
    ((ContinuousLinearMap.compL ℂ Wq Wp Wp).flip (F μ)).restrictScalars ℝ
  have hL : ∀ A, L A = A.comp (F μ) := fun A => rfl
  have hd : HasDerivAt (fun t : ℝ => L (π (NormedSpace.exp ((t : ℂ) • X)))) (L (P.QrD.dOp π X)) 0 :=
    L.hasFDerivAt.comp_hasDerivAt 0 (Formalism.FourierDecayAlt.P.QrD.dOp_hasDeriv hπ hc hX)
  simp only [hL] at hd
  exact hd.deriv

theorem left_covariance_holds : LeftCov := by
  intro k r z Wp Wq _ _ _ _ _ _ π hπ hc _ D F _ _ _ hF μ hμ B hB
  refine ⟨⟨?_, ?_⟩, ?_⟩
  · rw [P.LeftDerivativeCurves.hpart1_conj hμ.1.1]
    exact P.LeftDerivativeCurves.lie_conj hμ.1 hB.1.1
  · rw [P.LeftDerivativeCurves.hpart2_conj hμ.1.1]
    exact P.LeftDerivativeCurves.lie_conj hμ.1 hB.2.1
  · unfold Rc P.QrD.ecOp
    rw [P.LeftDerivativeCurves.hpart1_conj hμ.1.1, P.LeftDerivativeCurves.hpart2_conj hμ.1.1, rdV_leftCov hπ hc hF hμ hB.1,
      rdV_leftCov hπ hc hF hμ hB.2]
    ext v
    simp

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPLeftCov =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcComm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcComm", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCoreCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAdjointnessFromHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem radial_coefficient_commutation : RcComm := by
  intro k r E _ _ D f _ hf Z₁ Z₂ h₁ h₂ g hg
  exact Qx5.RZ_comm hf hg h₁ h₂

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcComm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcLin =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcLin", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCoreCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAdjointnessFromHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {k r : ℕ} {i : Fin (r + 1)}

theorem lie_rsmul {X : Q.Mx k r} (hX : Q.inLieLev k r i X) (x : ℝ) : Q.inLieLev k r i (x • X) := by
  unfold Formalism.FourierDecayAlt.Q.inLieLev at hX ⊢
  obtain ⟨h1, h2⟩ := hX
  have hs : ∀ v : Fin (2 * r + k + 1) → ℂ, (x • X) *ᵥ v = x • (X *ᵥ v) := fun v => by
    ext j
    simp [Matrix.mulVec, dotProduct, Finset.smul_sum, mul_assoc]
  refine ⟨?_, fun a ha => ⟨?_, ?_⟩⟩
  · rw [Matrix.conjTranspose_smul, star_trivial, Matrix.smul_mul, Matrix.mul_smul, ← smul_add, h1, smul_zero]
  · rw [hs, (h2 a ha).1, smul_zero]
  · rw [hs, (h2 a ha).2, smul_zero]

private theorem inLieLev_add {X Y : Q.Mx k r} (hX : Q.inLieLev k r i X) (hY : Q.inLieLev k r i Y) :
    Q.inLieLev k r i (X + Y) := by
  unfold Formalism.FourierDecayAlt.Q.inLieLev at hX hY ⊢
  refine ⟨?_, fun a ha => ⟨?_, ?_⟩⟩
  · rw [Matrix.conjTranspose_add, Matrix.add_mul, Matrix.mul_add,
      show Xᴴ * Hpk k r + Yᴴ * Hpk k r + (Hpk k r * X + Hpk k r * Y) =
        (Xᴴ * Hpk k r + Hpk k r * X) + (Yᴴ * Hpk k r + Hpk k r * Y) by abel, hX.1, hY.1, add_zero]
  · rw [Matrix.add_mulVec, (hX.2 a ha).1, (hY.2 a ha).1, add_zero]
  · rw [Matrix.add_mulVec, (hX.2 a ha).2, (hY.2 a ha).2, add_zero]

theorem glc_lin {Z Z' : Q.Mx k r} (hZ : GLc k r Z) (hZ' : GLc k r Z') (a : ℂ) : GLc k r (a • Z + Z') := by
  unfold GLc at *
  obtain ⟨h1, h2⟩ := hZ
  obtain ⟨h1', h2'⟩ := hZ'
  have hI : (1 / (2 * Complex.I) : ℂ) = -Complex.I / 2 := by
    field_simp
    ring_nf
    simp only [Complex.I_sq]
    ring
  have hsa : star a = (a.re : ℂ) - (a.im : ℂ) * Complex.I := by
    apply Complex.ext <;> simp
  have ha : a = (a.re : ℂ) + (a.im : ℂ) * Complex.I := (Complex.re_add_im a).symm
  have e1 : hpart1 (Hpk k r) (a • Z + Z') =
      a.re • hpart1 (Hpk k r) Z + (-a.im) • hpart2 (Hpk k r) Z + hpart1 (Hpk k r) Z' := by
    unfold Formalism.QuantumDeterminants.hpart1 Formalism.QuantumDeterminants.hpart2
    rw [Matrix.conjTranspose_add, Matrix.conjTranspose_smul, hsa, hI,
      show a • Z = ((a.re : ℂ) + (a.im : ℂ) * Complex.I) • Z by rw [← ha]]
    ext i j
    simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_smul, Matrix.smul_mul, Matrix.add_apply,
      Matrix.sub_apply, Matrix.smul_apply, smul_eq_mul, Complex.real_smul]
    push_cast
    first | ring
  have e2 : hpart2 (Hpk k r) (a • Z + Z') =
      a.im • hpart1 (Hpk k r) Z + a.re • hpart2 (Hpk k r) Z + hpart2 (Hpk k r) Z' := by
    unfold Formalism.QuantumDeterminants.hpart1 Formalism.QuantumDeterminants.hpart2
    rw [Matrix.conjTranspose_add, Matrix.conjTranspose_smul, hsa, hI,
      show a • Z = ((a.re : ℂ) + (a.im : ℂ) * Complex.I) • Z by rw [← ha]]
    ext i j
    simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_smul, Matrix.smul_mul, Matrix.add_apply,
      Matrix.sub_apply, Matrix.smul_apply, smul_eq_mul, Complex.real_smul]
    linear_combination (-(a.im : ℂ) * Z i j / 2 + (a.im : ℂ) * ((Hpk k r)⁻¹ * Zᴴ * Hpk k r) i j / 2) * Complex.I_sq
  rw [e1, e2]
  exact ⟨inLieLev_add (inLieLev_add (lie_rsmul h1 _) (lie_rsmul h2 _)) h1',
    inLieLev_add (inLieLev_add (lie_rsmul h1 _) (lie_rsmul h2 _)) h2'⟩

private theorem hermitian_halves_smul_add (Z Z' : Q.Mx k r) (a : ℂ) :
    hpart1 (Hpk k r) (a • Z + Z') =
      a.re • hpart1 (Hpk k r) Z + (-a.im) • hpart2 (Hpk k r) Z + hpart1 (Hpk k r) Z' ∧
    hpart2 (Hpk k r) (a • Z + Z') =
      a.im • hpart1 (Hpk k r) Z + a.re • hpart2 (Hpk k r) Z + hpart2 (Hpk k r) Z' := by
  have hI : (1 / (2 * Complex.I) : ℂ) = -Complex.I / 2 := by
    field_simp
    ring_nf
    simp only [Complex.I_sq]
    ring
  have hsa : star a = (a.re : ℂ) - (a.im : ℂ) * Complex.I := by
    apply Complex.ext <;> simp
  have ha : a = (a.re : ℂ) + (a.im : ℂ) * Complex.I := (Complex.re_add_im a).symm
  constructor
  · unfold Formalism.QuantumDeterminants.hpart1 Formalism.QuantumDeterminants.hpart2
    rw [Matrix.conjTranspose_add, Matrix.conjTranspose_smul, hsa, hI,
      show a • Z = ((a.re : ℂ) + (a.im : ℂ) * Complex.I) • Z by rw [← ha]]
    ext i j
    simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_smul, Matrix.smul_mul, Matrix.add_apply,
      Matrix.sub_apply, Matrix.smul_apply, smul_eq_mul, Complex.real_smul]
    push_cast
    ring
  · unfold Formalism.QuantumDeterminants.hpart1 Formalism.QuantumDeterminants.hpart2
    rw [Matrix.conjTranspose_add, Matrix.conjTranspose_smul, hsa, hI,
      show a • Z = ((a.re : ℂ) + (a.im : ℂ) * Complex.I) • Z by rw [← ha]]
    ext i j
    simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_smul, Matrix.smul_mul, Matrix.add_apply,
      Matrix.sub_apply, Matrix.smul_apply, smul_eq_mul, Complex.real_smul]
    linear_combination (-(a.im : ℂ) * Z i j / 2 + (a.im : ℂ) * ((Hpk k r)⁻¹ * Zᴴ * Hpk k r) i j / 2) * Complex.I_sq

private theorem rdV_real_smul {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] (f : Q.Mx k r → E)
    (X g : Q.Mx k r) (s : ℝ) : RdV (s • X) f g = (s : ℂ) • RdV X f g := by
  have hx : ∀ t : ℝ, (t : ℂ) • (s • X) = ((s * t : ℝ) : ℂ) • X := fun t => by
    ext i j
    simp only [Matrix.smul_apply, smul_eq_mul, Complex.real_smul, Complex.ofReal_mul]
    ring
  unfold Formalism.REAL.RdV
  simp only [hx]
  have key := deriv_comp_mul_left s (fun u : ℝ => f (g * NormedSpace.exp ((u : ℂ) • X))) 0
  simp only [mul_zero] at key
  rw [key, Complex.coe_smul]

private theorem gLc_zero : GLc k r (0 : Q.Mx k r) := by
  unfold GLc Formalism.QuantumDeterminants.hpart1 Formalism.QuantumDeterminants.hpart2 Formalism.FourierDecayAlt.Q.inLieLev
  simp

private theorem rc_zero_left {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] (f : Q.Mx k r → E) (g : Q.Mx k r) :
    Rc (0 : Q.Mx k r) f g = 0 := by
  unfold Rc Formalism.REAL.RdV Formalism.QuantumDeterminants.hpart1 Formalism.QuantumDeterminants.hpart2
  simp

private theorem rc_smul_add_of_smoothLev_of_gLc {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {D : Set (Q.Mx k r)}
    {f : Q.Mx k r → E} (hf : Q.SmoothLev k r (Fin.last r) D f) {g : Q.Mx k r}
    (hg : g ∈ Q.Glev k r (Fin.last r) ∩ D) {Z Z' : Q.Mx k r} (hZ : GLc k r Z) (hZ' : GLc k r Z') (a : ℂ) :
    Rc (a • Z + Z') f g = a • Rc Z f g + Rc Z' f g := by
  obtain ⟨e1, e2⟩ := hermitian_halves_smul_add Z Z' a
  have hz := hZ
  have hz' := hZ'
  unfold GLc at hz hz'
  obtain ⟨h1, h2⟩ := hz
  obtain ⟨h1', h2'⟩ := hz'
  unfold Rc
  rw [e1, e2,
    Formalism.FourierDecayAlt.P.Qx5.rd_addX hf hg (inLieLev_add (lie_rsmul h1 _) (lie_rsmul h2 _)) h1',
    Formalism.FourierDecayAlt.P.Qx5.rd_addX hf hg (lie_rsmul h1 _) (lie_rsmul h2 _),
    Formalism.FourierDecayAlt.P.Qx5.rd_addX hf hg (inLieLev_add (lie_rsmul h1 _) (lie_rsmul h2 _)) h2',
    Formalism.FourierDecayAlt.P.Qx5.rd_addX hf hg (lie_rsmul h1 _) (lie_rsmul h2 _)]
  simp only [rdV_real_smul, Complex.ofReal_neg]
  have haI : a * Complex.I = (a.re : ℂ) * Complex.I - a.im := by
    apply Complex.ext <;> simp
  rw [smul_add a, smul_smul a Complex.I, haI,
    show a • RdV (hpart1 (Hpk k r) Z) f g = ((a.re : ℂ) + (a.im : ℂ) * Complex.I) • RdV (hpart1 (Hpk k r) Z) f g by
      rw [Complex.re_add_im]]
  module

theorem rc_linear {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {D : Set (Q.Mx k r)} {f : Q.Mx k r → E}
    (hf : Q.SmoothLev k r (Fin.last r) D f) {g : Q.Mx k r} (hg : g ∈ Q.Glev k r (Fin.last r) ∩ D) :
    ∃ L : Q.Mx k r →ₗ[ℂ] E, ∀ Z, GLc k r Z → Rc Z f g = L Z := by
  let S : Submodule ℂ (Q.Mx k r) :=
    { carrier := {Z | GLc k r Z}
      add_mem' := fun {Z Z'} hZ hZ' => by simpa using glc_lin hZ hZ' 1
      zero_mem' := gLc_zero
      smul_mem' := fun c Z hZ => by simpa using glc_lin hZ gLc_zero c }
  let f0 : S →ₗ[ℂ] E :=
    { toFun := fun Z => Rc (Z : Q.Mx k r) f g
      map_add' := fun Z Z' => by simpa using rc_smul_add_of_smoothLev_of_gLc hf hg Z.2 Z'.2 1
      map_smul' := fun c Z => by simpa [rc_zero_left] using rc_smul_add_of_smoothLev_of_gLc hf hg Z.2 gLc_zero c }
  obtain ⟨L, hL⟩ := LinearMap.exists_extend f0
  exact ⟨L, fun Z hZ => (LinearMap.congr_fun hL ⟨Z, hZ⟩).symm⟩

theorem radial_coefficient_linearity : RcLin := by
  unfold RcLin
  intro k r E _ _ D f _ hf g hg a Z Z' hZ hZ'
  obtain ⟨L, hL⟩ := rc_linear hf hg
  rw [hL _ (glc_lin hZ hZ' a), hL Z hZ, hL Z' hZ', map_add (f := _), map_smul]

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcLin =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcSmooth =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcSmooth", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCoreCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAdjointnessFromHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem radial_coefficient_smoothness : RcSmooth := by
  intro k r E _ _ D f f' _ hf hf' Z hZ
  refine ⟨?_, ?_, ?_⟩
  · exact Qx2.smooth_add (Qx2.rd_smooth hf hZ.1) (Qx2.smooth_smul (Qx2.rd_smooth hf hZ.2) Complex.I)
  · intro a g hg
    have e : (fun x => a • f x + f' x) = fun x => f' x + a • f x := by
      funext x
      exact add_comm _ _
    show RdV _ (fun x => a • f x + f' x) g + Complex.I • RdV _ (fun x => a • f x + f' x) g =
      a • (RdV _ f g + Complex.I • RdV _ f g) + (RdV _ f' g + Complex.I • RdV _ f' g)
    rw [e, Qx2.rd_lin hf' hf a hg hZ.1, Qx2.rd_lin hf' hf a hg hZ.2, smul_add, smul_add, smul_comm Complex.I a]
    abel
  · intro E' _ _ L g hg
    show RdV _ (fun x => L (f x)) g + Complex.I • RdV _ (fun x => L (f x)) g = L (RdV _ f g + Complex.I • RdV _ f g)
    have e1 : RdV (hpart1 (Hpk k r) Z) (fun y => L (f y)) g = L (RdV _ f g) := Qx5.ntw_rd L hZ.1 f hf g hg
    have e2 : RdV (hpart2 (Hpk k r) Z) (fun y => L (f y)) g = L (RdV _ f g) := Qx5.ntw_rd L hZ.2 f hf g hg
    rw [e1, e2, map_add (f := _), map_smul]

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcSmooth =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRightCov =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRightCov", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCoreCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q
open scoped Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP

noncomputable section

theorem rdV_rightCov {k r : ℕ} {z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp]
    [NormedAddCommGroup Wq] [NormedSpace ℂ Wq] [FiniteDimensional ℂ Wq]
    {π' : Q.Mx k r → (Wq →L[ℂ] Wq)} (hπ : IsCRepOn (UWset k r z') π') (hc : ContinuousOn π' (UWset k r z'))
    {D : Set (Q.Mx k r)} {F : Q.Mx k r → (Wq →L[ℂ] Wp)}
    (hF : ∀ h ∈ UWset k r z', ∀ g ∈ Q.Glev k r (Fin.last r) ∩ D, F (g * h) = (F g).comp (π' h))
    {g : Q.Mx k r} (hg : g ∈ Q.Glev k r (Fin.last r) ∩ D) {X : Q.Mx k r} (hX : P.QrD.InLieW k r z' X) :
    RdV X F g = (F g).comp (P.QrD.dOp π' X) := by
  have key : ∀ t : ℝ, F (g * NormedSpace.exp ((t : ℂ) • X)) = (F g).comp (π' (NormedSpace.exp ((t : ℂ) • X))) :=
    fun t => hF _ (Formalism.FourierDecayAlt.P.QrD.exp_uw hX t) g hg
  unfold Formalism.REAL.RdV
  simp only [key]
  let L : (Wq →L[ℂ] Wq) →L[ℝ] (Wq →L[ℂ] Wp) :=
    (ContinuousLinearMap.compL ℂ Wq Wq Wp (F g)).restrictScalars ℝ
  have hL : ∀ A, L A = (F g).comp A := fun A => rfl
  have hd : HasDerivAt (fun t : ℝ => L (π' (NormedSpace.exp ((t : ℂ) • X)))) (L (P.QrD.dOp π' X)) 0 :=
    L.hasFDerivAt.comp_hasDerivAt 0 (Formalism.FourierDecayAlt.P.QrD.dOp_hasDeriv hπ hc hX)
  simp only [hL] at hd
  exact hd.deriv

theorem right_covariance_holds : RightCov := by
  intro k r z' Wp Wq _ _ _ _ _ _ π' hπ hc _ D F _ _ _ hF g hg A hA
  refine ⟨⟨hA.1.1, hA.2.1⟩, ?_⟩
  unfold Rc P.QrD.ecOp
  rw [rdV_rightCov hπ hc hF hg hA.1, rdV_rightCov hπ hc hF hg hA.2]
  ext v
  simp

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRightCov =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPSecDeriv =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPSecDeriv", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCoreCut\nimport Formalism.FormalDegreeBessel.FinalG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAdjointnessFromHermitian\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameEntries\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.Deriv.Prod\nimport Mathlib.Analysis.Calculus.Deriv.Star\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q
open Matrix Filter Topology
open scoped ComplexConjugate ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace SD

theorem hasDeriv_form {n : ℕ} (H : Matrix (Fin n) (Fin n) ℂ) {γ : ℝ → Matrix (Fin n) (Fin n) ℂ}
    {g γ' : Matrix (Fin n) (Fin n) ℂ} (h0 : γ 0 = g) (h : ∀ a b, HasDerivAt (fun t => γ t a b) (γ' a b) 0)
    (i j : Fin n) :
    HasDerivAt (fun t => ((γ t)ᴴ * H * γ t) i j) ((γ'ᴴ * H * g + gᴴ * H * γ') i j) 0 := by
  have hγ : ∀ a b, γ 0 a b = g a b := fun a b => by rw [h0]
  have key : ∀ a b, HasDerivAt (fun t => star (γ t a i) * H a b * γ t b j)
      (star (γ' a i) * H a b * g b j + star (g a i) * H a b * γ' b j) 0 := by
    intro a b
    have h1 : HasDerivAt (fun t => star (γ t a i) * H a b * γ t b j)
        (star (γ' a i) * H a b * γ 0 b j + star (γ 0 a i) * H a b * γ' b j) 0 :=
      (((h a i).star).mul_const (H a b)).mul (h b j)
    rw [hγ a i, hγ b j] at h1
    exact h1
  have hs := HasDerivAt.sum (u := Finset.univ) fun b _ =>
    HasDerivAt.sum (u := Finset.univ) fun a _ => key a b
  simp only [Finset.sum_fn] at hs
  have e1 : (fun t => ((γ t)ᴴ * H * γ t) i j) =
      fun t => ∑ b, ∑ a, star (γ t a i) * H a b * γ t b j := by
    funext t
    simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Finset.sum_mul]
  have e2 : (γ'ᴴ * H * g + gᴴ * H * γ') i j =
      ∑ b, ∑ a, (star (γ' a i) * H a b * g b j + star (g a i) * H a b * γ' b j) := by
    simp only [Matrix.add_apply, Matrix.mul_apply, Matrix.conjTranspose_apply, Finset.sum_mul,
      Finset.sum_add_distrib]
  rw [e1, e2]
  exact hs

variable {k r : ℕ}

theorem lie_of_curve {μ : ℂ → Q.Mx k r} {ζ : ℂ} {D : ℂ →L[ℝ] Q.Mx k r} (hD : HasFDerivAt μ D ζ)
    (hG : ∀ᶠ w in 𝓝 ζ, μ w ∈ Q.Glev k r (Fin.last r)) (v : ℂ) :
    Q.inLieLev k r (Fin.last r) ((μ ζ)⁻¹ * D v) := by
  have hℓ : HasDerivAt (fun t : ℝ => ζ + t • v) v 0 := by
    simpa using ((hasDerivAt_id (0 : ℝ)).smul_const v).const_add ζ
  have hγ : HasDerivAt (fun t : ℝ => μ (ζ + t • v)) (D v) 0 := by
    have hD' : HasFDerivAt μ D (ζ + (0 : ℝ) • v) := by simpa using hD
    exact hD'.comp_hasDerivAt (0 : ℝ) hℓ
  have hent : ∀ a b, HasDerivAt (fun t : ℝ => μ (ζ + t • v) a b) (D v a b) 0 := by
    intro a b
    exact hasDerivAt_pi.1 (hasDerivAt_pi.1 hγ a) b
  have hev : ∀ᶠ t in 𝓝 (0 : ℝ), μ (ζ + t • v) ∈ Q.Glev k r (Fin.last r) := by
    have ht : Tendsto (fun t : ℝ => ζ + t • v) (𝓝 0) (𝓝 ζ) := by
      simpa using hℓ.continuousAt.tendsto
    exact ht.eventually hG
  have hU : (μ ζ)ᴴ * Hpk k r * μ ζ = Hpk k r := hG.self_of_nhds.1
  have hder : (D v)ᴴ * Hpk k r * μ ζ + (μ ζ)ᴴ * Hpk k r * D v = 0 := by
    ext i j
    have h1 := hasDeriv_form (Hpk k r) (γ := fun t : ℝ => μ (ζ + t • v)) (g := μ ζ) (γ' := D v)
      (by simp) hent i j
    have h2 : HasDerivAt (fun t : ℝ => ((μ (ζ + t • v))ᴴ * Hpk k r * μ (ζ + t • v)) i j) 0 0 :=
      (hasDerivAt_const (0 : ℝ) (Hpk k r i j)).congr_of_eventuallyEq (hev.mono fun t ht => by
        show ((μ (ζ + t • v))ᴴ * Hpk k r * μ (ζ + t • v)) i j = Hpk k r i j
        rw [show (μ (ζ + t • v))ᴴ * Hpk k r * μ (ζ + t • v) = Hpk k r from ht.1])
    exact h1.unique h2
  have hH : (Hpk k r).det ≠ 0 := by
    have h1 := congrArg Matrix.det (Formalism.QuantumDeterminants.hpkFacts k r).2.1
    rw [Matrix.det_mul, Matrix.det_one] at h1
    intro h0
    rw [h0, zero_mul] at h1
    exact zero_ne_one h1
  have hdet : IsUnit (μ ζ).det := by
    have h2 := congrArg Matrix.det hU
    rw [Matrix.det_mul, Matrix.det_mul] at h2
    refine isUnit_iff_ne_zero.2 fun h0 => hH ?_
    rw [h0, mul_zero] at h2
    exact h2.symm
  have hgi : μ ζ * (μ ζ)⁻¹ = 1 := Matrix.mul_nonsing_inv _ hdet
  have e1 : ((μ ζ)⁻¹)ᴴ * Hpk k r = Hpk k r * μ ζ := by
    calc ((μ ζ)⁻¹)ᴴ * Hpk k r = ((μ ζ)⁻¹)ᴴ * ((μ ζ)ᴴ * Hpk k r * μ ζ) := by rw [hU]
      _ = (μ ζ * (μ ζ)⁻¹)ᴴ * Hpk k r * μ ζ := by
          rw [Matrix.conjTranspose_mul]; simp only [Matrix.mul_assoc]
      _ = Hpk k r * μ ζ := by rw [hgi, Matrix.conjTranspose_one, Matrix.one_mul]
  have e2 : Hpk k r * (μ ζ)⁻¹ = (μ ζ)ᴴ * Hpk k r := by
    calc Hpk k r * (μ ζ)⁻¹ = (μ ζ)ᴴ * Hpk k r * μ ζ * (μ ζ)⁻¹ := by rw [hU]
      _ = (μ ζ)ᴴ * Hpk k r := by rw [Matrix.mul_assoc, hgi, Matrix.mul_one]
  have hvec : ∀ w : Fin (2 * r + k + 1) → ℂ, (∀ᶠ t in 𝓝 (0 : ℝ), μ (ζ + t • v) *ᵥ w = w) →
      D v *ᵥ w = 0 := by
    intro w hw
    funext q
    have hd : HasDerivAt (fun t : ℝ => (μ (ζ + t • v) *ᵥ w) q) ((D v *ᵥ w) q) 0 := by
      simp only [Matrix.mulVec, dotProduct]
      first
      | exact HasDerivAt.fun_sum fun p _ => (hent q p).mul_const (w p)
    have hc : HasDerivAt (fun t : ℝ => (μ (ζ + t • v) *ᵥ w) q) 0 0 :=
      (hasDerivAt_const (0 : ℝ) (w q)).congr_of_eventuallyEq (hw.mono fun t ht => by
        show (μ (ζ + t • v) *ᵥ w) q = w q
        rw [ht])
    exact hd.unique hc
  unfold Q.inLieLev
  refine ⟨?_, fun a ha => ⟨?_, ?_⟩⟩
  · rw [Matrix.conjTranspose_mul, Matrix.mul_assoc, e1, ← Matrix.mul_assoc (Hpk k r), e2,
      ← Matrix.mul_assoc]
    exact hder
  · rw [← Matrix.mulVec_mulVec, hvec _ (hev.mono fun t ht => (ht.2 a ha).1), Matrix.mulVec_zero]
  · rw [← Matrix.mulVec_mulVec, hvec _ (hev.mono fun t ht => (ht.2 a ha).2), Matrix.mulVec_zero]

end SD

theorem section_derivative_holds : SecDeriv := by
  intro k r z z' hk hz hz' hT hT' ζ hζ
  have hsec := TheSec.theSection_isSection k r z z' hk hz hz' hT hT'
  have hA : IsOpen {w : ℂ | Tz k r z * Tz k r z' < Complex.normSq w} :=
    isOpen_lt continuous_const Complex.continuous_normSq
  have hcd : ContDiffOn ℝ ∞ (mu0 k r z z') {w : ℂ | Tz k r z * Tz k r z' < Complex.normSq w} :=
    NFRadRedA.muZ_contDiffOn hsec
  have hdiff : DifferentiableAt ℝ (mu0 k r z z') ζ :=
    (hcd.differentiableOn (by simp)).differentiableAt (hA.mem_nhds hζ)
  obtain ⟨D, hD⟩ : ∃ D : ℂ →L[ℝ] Q.Mx k r, HasFDerivAt (mu0 k r z z') D ζ := ⟨_, hdiff.hasFDerivAt⟩
  have hG : ∀ᶠ w in 𝓝 ζ, mu0 k r z z' w ∈ Q.Glev k r (Fin.last r) := by
    filter_upwards [hA.mem_nhds hζ] with w hw
    exact NFRadRedA.uwb_glev (NFRadRedA.muZ_uwb hsec hw)
  have hg : mu0 k r z z' ζ ∈ Q.Glev k r (Fin.last r) := hG.self_of_nhds
  have hX := SD.lie_of_curve hD hG
  have hrow : ∀ i, HasFDerivAt (fun w => mu0 k r z z' w i) ((ContinuousLinearMap.proj i).comp D) ζ :=
    hasFDerivAt_pi'.1 hD
  have hent : ∀ i j v, fderiv ℝ (fun w => mu0 k r z z' w i j) ζ v = D v i j := by
    intro i j v
    have h := (hasFDerivAt_pi'.1 (hrow i)) j
    rw [h.fderiv]
    rfl
  have hs1 : D ((1 / 2 : ℝ) • (1 : ℂ)) = (1 / 2 : ℝ) • D 1 := map_smul D _ _
  have hs2 : D ((-(1 / 2) : ℝ) • Complex.I) = (-(1 / 2) : ℝ) • D Complex.I := map_smul D _ _
  have hs3 : D ((1 / 2 : ℝ) • Complex.I) = (1 / 2 : ℝ) • D Complex.I := map_smul D _ _
  have e1 : etaZ k r z z' ζ = (mu0 k r z z' ζ)⁻¹ * D ((1 / 2 : ℝ) • (1 : ℂ)) +
      Complex.I • ((mu0 k r z z' ζ)⁻¹ * D ((-(1 / 2) : ℝ) • Complex.I)) := by
    unfold etaZ
    rw [← Matrix.mul_smul, ← Matrix.mul_add, hs1, hs2]
    congr 1
    ext i j
    simp only [Matrix.of_apply, NF.dZ, hent, Matrix.add_apply, Matrix.smul_apply, Complex.real_smul, smul_eq_mul]
    push_cast
    ring
  have e2 : etaZb k r z z' ζ = (mu0 k r z z' ζ)⁻¹ * D ((1 / 2 : ℝ) • (1 : ℂ)) +
      Complex.I • ((mu0 k r z z' ζ)⁻¹ * D ((1 / 2 : ℝ) • Complex.I)) := by
    unfold etaZb
    rw [← Matrix.mul_smul, ← Matrix.mul_add, hs1, hs3]
    congr 1
    ext i j
    simp only [Matrix.of_apply, NF.dZb, hent, Matrix.add_apply, Matrix.smul_apply, Complex.real_smul, smul_eq_mul]
    push_cast
    ring
  obtain ⟨p1, p2⟩ := Qx5.hpart_unique (hX ((1 / 2 : ℝ) • (1 : ℂ))) (hX ((-(1 / 2) : ℝ) • Complex.I))
  obtain ⟨q1, q2⟩ := Qx5.hpart_unique (hX ((1 / 2 : ℝ) • (1 : ℂ))) (hX ((1 / 2 : ℝ) • Complex.I))
  rw [← e1] at p1 p2
  rw [← e2] at q1 q2
  have hmem : mu0 k r z z' ζ ∈ Q.Glev k r (Fin.last r) ∩ Dp k r z z' := by
    refine ⟨hg, ?_⟩
    show 0 < Complex.normSq (Q.zetaL k r z z' (Fin.last r) (NF.muZ k r (TheSec.theSection k r z z') ζ)) -
      Tz k r z * Tz k r z'
    rw [NFRadRedA.zeta_muZ hz hz' hsec hζ]
    linarith
  refine ⟨⟨by rw [p1]; exact hX _, by rw [p2]; exact hX _⟩, ⟨by rw [q1]; exact hX _, by rw [q2]; exact hX _⟩, hmem, ?_⟩
  intro E _ _ F hF
  obtain ⟨U, F', hU, hgU, hFc, he⟩ := hF _ hmem
  have hd : DifferentiableAt ℝ F' (mu0 k r z z' ζ) :=
    (hFc.differentiableOn (by simp)).differentiableAt (hU.mem_nhds hgU)
  have hR : ∀ v, RdV ((mu0 k r z z' ζ)⁻¹ * D v) F (mu0 k r z z' ζ) = fderiv ℝ F' (mu0 k r z z' ζ) (D v) := by
    intro v
    have h := (Qx2.hasDeriv_ext hU hgU hg (hX v) hd he).deriv
    rw [← Matrix.mul_assoc, FrameEntries.mul_inv_uh hg.1, Matrix.one_mul] at h
    exact h
  have hC : HasFDerivAt (fun w => F (mu0 k r z z' w)) ((fderiv ℝ F' (mu0 k r z z' ζ)).comp D) ζ := by
    refine (hd.hasFDerivAt.comp ζ hD).congr_of_eventuallyEq ?_
    filter_upwards [hG, hD.continuousAt.preimage_mem_nhds (hU.mem_nhds hgU)] with w h1 h2
    exact he _ h2 h1
  constructor
  · unfold Rc dZV
    rw [p1, p2, hR, hR, hC.fderiv, hs1, hs2]
    simp only [ContinuousLinearMap.comp_apply, map_smul]
    rw [← Complex.coe_smul, ← Complex.coe_smul]
    push_cast
    module
  · unfold Rc dZbV
    rw [q1, q2, hR, hR, hC.fderiv, hs1, hs3]
    simp only [ContinuousLinearMap.comp_apply, map_smul]
    rw [← Complex.coe_smul, ← Complex.coe_smul]
    push_cast
    module

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.CP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPSecDeriv =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRFibStable =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRFibStable", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPolyRadialCut\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThtFacts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJATCDtrSIo\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LieBracketMultiplication\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.FrameExists2\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR

noncomputable section

namespace FS

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {μsec : ℂ → Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ} {ζ : ℂ}

theorem stabilizer_fixes_first_vector (hz : inWb k r z) (hT : 0 < Tz k r z) {p : Q.Mx k r × Q.Mx k r}
    (hp : p ∈ NF.Stab k r z z' μsec ζ) :
    p.1 *ᵥ SSn.nu0 k r z z' μsec ζ = SSn.nu0 k r z z' μsec ζ := by
  obtain ⟨ha, hb, hab⟩ := hp
  have e : p.1 *ᵥ (NF.muZ k r μsec ζ *ᵥ z') = NF.muZ k r μsec ζ *ᵥ z' := by
    conv_rhs => rw [← hab, ← Matrix.mulVec_mulVec, hb.2.2, ← Matrix.mulVec_mulVec]
  unfold SSn.nu0 SSn.unitH
  rw [Matrix.mulVec_smul, ← TF.prWv_uw hz hT ha, e]

theorem nu0'_fix (hz' : inWb k r z') (hT' : 0 < Tz k r z') {p : Q.Mx k r × Q.Mx k r}
    (hp : p ∈ NF.Stab k r z z' μsec ζ) :
    p.2⁻¹ *ᵥ SSn.nu0' k r z z' μsec ζ = SSn.nu0' k r z z' μsec ζ := by
  obtain ⟨ha, hb, hab⟩ := hp
  have hai := P.LieBracketMultiplication.uw_inv ha
  have hbi := P.LieBracketMultiplication.uw_inv hb
  have h1 : (NF.muZ k r μsec ζ)⁻¹ = p.2⁻¹ * ((NF.muZ k r μsec ζ)⁻¹ * p.1⁻¹) := by
    conv_lhs => rw [← hab, Matrix.mul_inv_rev, Matrix.mul_inv_rev]
  have e : p.2⁻¹ *ᵥ ((NF.muZ k r μsec ζ)⁻¹ *ᵥ z) = (NF.muZ k r μsec ζ)⁻¹ *ᵥ z := by
    conv_rhs => rw [h1, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hai.2.2]
  unfold SSn.nu0' SSn.unitH
  rw [Matrix.mulVec_smul, ← TF.prWv_uw hz' hT' hbi, e]

theorem nu0'_fix' (hz' : inWb k r z') (hT' : 0 < Tz k r z') {p : Q.Mx k r × Q.Mx k r}
    (hp : p ∈ NF.Stab k r z z' μsec ζ) :
    p.2 *ᵥ SSn.nu0' k r z z' μsec ζ = SSn.nu0' k r z z' μsec ζ := by
  conv_lhs => rw [← nu0'_fix hz' hT' hp, Matrix.mulVec_mulVec,
    Matrix.mul_nonsing_inv _ (WeylGroupFacts.isUnit_of_uh hp.2.1.1), Matrix.one_mulVec]

theorem stabilizer_fixes_section_embedding (hz' : inWb k r z') (hT' : 0 < Tz k r z') {p : Q.Mx k r × Q.Mx k r}
    (hp : p ∈ NF.Stab k r z z' μsec ζ) :
    p.1 * SSn.io0 k r z z' μsec ζ * p.2 = SSn.io0 k r z z' μsec ζ := by
  have hν := nu0'_fix' hz' hT' hp
  obtain ⟨ha, hb, hab⟩ := hp
  have key : ∀ v : Fin (2 * r + k + 1) → ℂ,
      (p.1 * SSn.io0 k r z z' μsec ζ * p.2) *ᵥ v = SSn.io0 k r z z' μsec ζ *ᵥ v := by
    intro v
    have hh : herm (Hpk k r) (p.2 *ᵥ SSn.prWv k r z' v) (SSn.nu0' k r z z' μsec ζ) =
        herm (Hpk k r) (SSn.prWv k r z' v) (SSn.nu0' k r z z' μsec ζ) := by
      calc herm (Hpk k r) (p.2 *ᵥ SSn.prWv k r z' v) (SSn.nu0' k r z z' μsec ζ)
          = herm (Hpk k r) (p.2 *ᵥ SSn.prWv k r z' v) (p.2 *ᵥ SSn.nu0' k r z z' μsec ζ) := by rw [hν]
        _ = _ := P.Qx2.herm_uh hb.1 _ _
    have hk : SSn.prWv k r z' (p.2 *ᵥ v) -
          herm (Hpk k r) (SSn.prWv k r z' (p.2 *ᵥ v)) (SSn.nu0' k r z z' μsec ζ) • SSn.nu0' k r z z' μsec ζ =
        p.2 *ᵥ (SSn.prWv k r z' v -
          herm (Hpk k r) (SSn.prWv k r z' v) (SSn.nu0' k r z z' μsec ζ) • SSn.nu0' k r z z' μsec ζ) := by
      rw [TF.prWv_uw hz' hT' hb, Matrix.mulVec_sub, Matrix.mulVec_smul, hν, hh]
    rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, MC.DT.ioMulVec, MC.DT.ioMulVec, hk, Matrix.mulVec_mulVec,
      Matrix.mulVec_mulVec, hab]
  exact Matrix.ext_of_mulVec_single fun i => key _

end FS

theorem fibre_stability_holds : FibStable := by
  intro Wp Wq _ _ _ _ _ _ P Bs hPl hk Pr hPr Bw Bw' hBw hBw' ζ hζ Xf hX ρ
  obtain ⟨hOK, hz, hz', hTe, hTe', hty, hty'⟩ := hPl
  have hT : 0 < Tz P.k P.r Bs.z := Bs.T_pos
  have hT' : 0 < Tz P.k P.r Bs.z' := Bs.T'_pos
  have hR : Qr.IsRepW P.k P.r Bs.z Bs.π := ⟨hty.2.1, hty.2.2.1⟩
  have hR' : Qr.IsRepW P.k P.r Bs.z' Bs.π' := ⟨hty'.2.1, hty'.2.2.1⟩
  refine ⟨fun p hp => ?_, fun p hp => ?_⟩
  · have hx := hX p hp
    have e1 := hPr.2.1 p.1 hp.1 ρ (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)
    rw [FS.stabilizer_fixes_first_vector hz hT hp] at e1
    conv_rhs => rw [e1, ← hx]
    ext x
    simp only [ContinuousLinearMap.comp_apply, TF.rep_inv_cancel hR hp.1]
  · have hbi := Formalism.FourierDecayAlt.P.LieBracketMultiplication.uw_inv hp.2.1
    have hbb : (p.2⁻¹)⁻¹ = p.2 := Matrix.nonsing_inv_nonsing_inv _ (WeylGroupFacts.isUnit_of_uh hp.2.1.1)
    have e := TF.tht_eqv hz hT hR hz' hT' hR' hBw hBw' hp.1 hbi (SSn.nu0 P.k P.r Bs.z Bs.z' Bs.μsec ζ)
      (SSn.nu0' P.k P.r Bs.z Bs.z' Bs.μsec ζ) (SSn.io0 P.k P.r Bs.z Bs.z' Bs.μsec ζ) Xf
    rw [hbb, FS.stabilizer_fixes_first_vector hz hT hp, FS.nu0'_fix hz' hT' hp, FS.stabilizer_fixes_section_embedding hz' hT' hp, hX p hp] at e
    exact e.symm

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRFibStable =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRKapLine =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRKapLine", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPolyRadialCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGenTransferKPt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLEig\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGaugeLinesLeft\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParametersUPrimeForULower\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheSectionStab\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.HermitianCurvature.FrameExists2\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR

noncomputable section

theorem kappa_line_holds : KapLine := by
  intro Wp Wq _ _ _ _ _ _ P Bs hμs hk X d hA Pr hPr
  obtain ⟨hpl, hL, hS, hRel, hQQ⟩ := id hA
  have hcs := Formalism.FourierDecayAlt.P.TheSecStab.theSection_csec (k := P.k) (r := P.r) (by omega) Bs.z_mem Bs.z'_mem
    Bs.T_pos Bs.T'_pos
  rw [← hμs] at hcs
  have hH : Gauge.GC.GTHyp P Bs X d := ⟨hpl, hk, hcs, hL, hS, hRel, hQQ⟩
  obtain ⟨Qs, hK⟩ := Gauge.GC.gauge_kappa_pointwise_holds Wp Wq P Bs X d hH
  refine ⟨Qs, hK, ?_⟩
  intro ζ hζ Xf hXf ρ
  have hζT : P.TT < Complex.normSq ζ := hζ
  obtain ⟨hOK, hz, hz', hTz, hTz', -, -⟩ := id hpl
  have hζ' : Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq ζ := by
    rw [hTz, hTz']; exact hζT
  have hT := Bs.T_pos
  have hT' := Bs.T'_pos
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
  have hgl' := (Formalism.FourierDecayAlt.P.frame_general_linear Wq P.k P.r (P.k - 1) Bs.z' Bs.π'
    (fun a => μ⁻¹ *ᵥ Fr a) ⟨Bs.π'_rep, Bs.π'_cont⟩
    (Formalism.FourierDecayAlt.P.Qx8.frame_sub hFr' (by simp))).2
  have hπrep : Qr.IsRepW P.k P.r Bs.z Bs.π := ⟨Bs.π_rep, Bs.π_cont⟩
  have hpos : 0 < PRho.nrmW P.k P.r Bs.z ν := by
    unfold PRho.nrmW
    rw [hνfix, hνν]; simp

  set c0 : Fin P.r → ℂ := fun _ => 1 with hc0def
  have hq : ((c0, ζ) : (Fin P.r → ℂ) × ℂ) ∈ NF.QR P.k P.r Bs.z Bs.z' := ⟨fun _ => one_ne_zero, hζ'⟩
  set φ : (Fin P.r → ℂ) × ℂ → (Wq →L[ℂ] Wp) := (NF.QR P.k P.r Bs.z Bs.z').indicator (fun _ => Xf) with hφdef
  have hφ : φ ∈ NF.RadSec P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' := by
    refine ⟨?_, ?_, ?_⟩
    · exact contDiffOn_const.congr (fun q hq' => Set.indicator_of_mem hq' _)
    · intro q hq'
      rw [hφdef, Set.indicator_of_mem hq']
      have hst := hcs.2 q.2 ζ hq'.2 hζ'
      intro p hp
      exact hXf p (hst ▸ hp)
    · intro q hq'
      exact Set.indicator_of_notMem hq' _
  have hbase : NF.RadBase P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' :=
    ⟨by omega, hz, hz', hT, hT', hcs.1, Bs.π_rep, Bs.π'_rep, Bs.π_cont, Bs.π'_cont⟩
  obtain ⟨Φ, hΦ, hΦr⟩ := Formalism.FourierDecayAlt.P.radical_reduction_surjective Wp Wq P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' hbase φ hφ
  have hval : Φ c0 μ = Xf := by
    have h1 := congrFun hΦr (c0, ζ)
    simp only [NF.radR, Set.indicator_of_mem hq, hφdef] at h1
    exact h1
  have hx : (c0, μ) ∈ Q.DomR P.k P.r Bs.z Bs.z' := Formalism.FourierDecayAlt.P.NFRadRedA.mem_domR hz hz' hcs.1 hq
  set Φ' : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π' := ⟨Φ, hΦ⟩ with hΦ'def
  let qq : MA.Qp P.r P.TT := ⟨(c0, ζ), ⟨fun _ => one_ne_zero, hζT⟩⟩

  have hfib : ∀ σ, Xf.comp (Qs σ) ∈ NF.Fib P.k P.r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ := by
    intro σ
    have h1 := hK.2.2.2 (fun τ => if τ = σ then 1 else 0) Φ' qq
    have h2 : (∑ τ, (if τ = σ then (1 : ℂ) else 0) • Qs τ) = Qs σ := by
      simp [ite_smul]
    rw [h2] at h1
    change (((d.κ fun τ => if τ = σ then 1 else 0).1 Φ' : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') :
      Q.Fn P.k P.r (Wq →L[ℂ] Wp)) c0 μ = (Φ c0 μ).comp (Qs σ) at h1
    rw [hval] at h1
    rw [← h1]
    intro p hp
    have h := ((d.κ fun τ => if τ = σ then 1 else 0).1 Φ').2.2.2 _ hx p.1 hp.1 p.2 hp.2.1
    simp only at h
    rw [hp.2.2] at h
    exact h.symm

  have hfix : ∀ σ, (Pr σ ν).comp (Xf.comp (Qs σ)) = Xf.comp (Qs σ) := by
    intro σ
    have hE : (Xf.comp (Qs σ)).comp (Qs σ) = Xf.comp (Qs σ) := by
      rw [ContinuousLinearMap.comp_assoc, hK.1 σ σ, if_pos rfl]
    have hEeig := (Gauge.GC.lie_eigenvalue_holds Wp Wq P Bs X d hH Qs hK ζ hζT _ hFr' σ _ (hfib σ)).1 hE
    ext v
    rw [ContinuousLinearMap.comp_apply]
    refine ((hPr.2.2 ν hpos).2.2.2 σ _).2 ?_
    intro Fr2 hFr2 w
    rw [hνfix] at hFr2
    rw [Topx1.typ_frame_change P.k P.r (by omega) Bs.z ν Bs.π Fr2 Fr hz hT hνW hνz hνν hπrep hFr2 hFr w
      ((Xf.comp (Qs σ)) v), hpass _ (hfib σ) w v, hgl']
    have hw : w = (w - ((P.k : ℂ) - 2) / 2) + ((P.k : ℂ) - 2) / 2 := by ring
    conv_lhs => rw [hw]
    exact hEeig _ v
  have hs : Xf = ∑ σ, Xf.comp (Qs σ) := by
    rw [← ContinuousLinearMap.comp_finsetSum, hK.2.1]
    rfl
  have hPP := (hPr.2.2 ν hpos).2.2.1
  conv_lhs => rw [hs]
  rw [ContinuousLinearMap.comp_finsetSum, Finset.sum_eq_single ρ]
  · exact hfix ρ
  · intro σ _ hσ
    rw [← hfix σ, ← ContinuousLinearMap.comp_assoc, hPP ρ σ, if_neg (Ne.symm hσ), ContinuousLinearMap.zero_comp]
  · intro h
    exact absurd (Finset.mem_univ ρ) h

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRKapLine =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHRotRadSp =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHRotRadSp", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPhaseCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LowerUnipotentRotationHolds\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q NumberField
open scoped ComplexConjugate Matrix ContDiff

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.PH

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

open Formalism.FourierDecayAlt.B2 Formalism.FourierDecayAlt.P.TwoByOneBlock

variable {k r : ℕ}

theorem star_exp_mul (θ : ℝ) :
    star (Complex.exp ((θ : ℂ) * Complex.I)) * Complex.exp ((θ : ℂ) * Complex.I) = 1 := by
  rw [Complex.star_def, ← Complex.normSq_eq_conj_mul_self, Complex.normSq_eq_norm_sq, Complex.norm_exp_ofReal_mul_I]
  norm_num

theorem cW_mem_UWb (θ : ℝ) : cW k r θ ∈ UWb k r := by
  refine emb_mem_UWb ?_
  show (Complex.exp ((θ : ℂ) * Complex.I) • (1 : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ))ᴴ * Hb k *
    (Complex.exp ((θ : ℂ) * Complex.I) • (1 : Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ)) = Hb k
  rw [Matrix.conjTranspose_smul, Matrix.conjTranspose_one, smul_mul_assoc, one_mul, mul_smul_comm, mul_one, smul_smul,
    mul_comm, star_exp_mul, one_smul]

theorem cW_comm (θ : ℝ) {h : Q.Mx k r} (hh : h ∈ UWb k r) : cW k r θ * h = h * cW k r θ := by
  obtain ⟨μ, _, rfl⟩ := (UWb_iff h).1 hh
  unfold cW
  rw [← emb_mul, ← emb_mul, smul_mul_assoc, one_mul, mul_smul_comm, mul_one]

theorem cW_Glev (θ : ℝ) {g : Q.Mx k r} (hg : g ∈ Q.Glev k r (Fin.last r)) : cW k r θ * g ∈ Q.Glev k r (Fin.last r) := by
  obtain ⟨hc, hfix⟩ := cW_mem_UWb (k := k) (r := r) θ
  refine ⟨UH_mul hc hg.1, fun a ha => ⟨?_, ?_⟩⟩
  · rw [← Matrix.mulVec_mulVec, (hg.2 a ha).1, (hfix a).1]
  · rw [← Matrix.mulVec_mulVec, (hg.2 a ha).2, (hfix a).2]

theorem herm_cW (θ : ℝ) {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (v : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) (cW k r θ *ᵥ v) z = Complex.exp ((θ : ℂ) * Complex.I) * herm (Hpk k r) v z := by
  have h1 : cW k r θ *ᵥ (Complex.exp (-((θ : ℂ) * Complex.I)) • z) = z := by
    rw [Matrix.mulVec_smul, cW_mulVec _ hz, smul_smul, ← Complex.exp_add, neg_add_cancel, Complex.exp_zero, one_smul]
  have h2 : star (Complex.exp (-((θ : ℂ) * Complex.I))) = Complex.exp ((θ : ℂ) * Complex.I) := by
    rw [Complex.star_def, ← Complex.exp_conj]
    congr 1
    simp
  calc herm (Hpk k r) (cW k r θ *ᵥ v) z
      = herm (Hpk k r) (cW k r θ *ᵥ v) (cW k r θ *ᵥ (Complex.exp (-((θ : ℂ) * Complex.I)) • z)) := by rw [h1]
    _ = _ := by rw [herm_UH (cW_mem_UWb θ).1, herm_smul_right, h2]

theorem GGl_cW (θ : ℝ) {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (z' : Fin (2 * r + k + 1) → ℂ) (g : Q.Mx k r) :
    Q.GGl k r z z' (cW k r θ * g) = Q.GGl k r z z' g := by
  unfold Q.GGl Q.zetaL
  rw [_root_.Formalism.FourierDecayAlt.P.Dx2.DF.fvec_lastI, _root_.Formalism.FourierDecayAlt.P.Dx2.DF.fvec_lastI, ← Matrix.mulVec_mulVec, herm_cW θ hz, map_mul, Complex.normSq_eq_norm_sq,
    Complex.norm_exp_ofReal_mul_I]
  norm_num

theorem domR_cW (θ : ℝ) {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (z' : Fin (2 * r + k + 1) → ℂ)
    {x : (Fin r → ℂ) × Q.Mx k r} (hx : x ∈ Q.DomR k r z z') : (x.1, cW k r θ * x.2) ∈ Q.DomR k r z z' :=
  ⟨hx.1, cW_Glev θ hx.2.1, by
    show 0 < Q.GGl k r z z' (cW k r θ * x.2)
    rw [GGl_cW θ hz]
    exact hx.2.2⟩

theorem domR_of_cW (θ : ℝ) {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (z' : Fin (2 * r + k + 1) → ℂ)
    {x : (Fin r → ℂ) × Q.Mx k r} (hx : (x.1, cW k r θ * x.2) ∈ Q.DomR k r z z') : x ∈ Q.DomR k r z z' := by
  have h := domR_cW (-θ) hz z' hx
  have e : cW k r (-θ) * (cW k r θ * x.2) = x.2 := by
    rw [← Matrix.mul_assoc, cW_mul, neg_add_cancel, cW_zero, one_mul]
  change (x.1, cW k r (-θ) * (cW k r θ * x.2)) ∈ Q.DomR k r z z' at h
  rwa [e] at h

theorem rotation_radial_space_holds : RotRadSp := by
  intro Wp Wq _ _ _ _ k r z z' π π' hz hz' θ Φ hΦ
  obtain ⟨h0, hs, he⟩ := hΦ
  refine ⟨fun x hx => h0 (x.1, cW k r θ * x.2) (fun h => hx (domR_of_cW θ hz z' h)), fun x₀ hx₀ => ?_,
    fun x hx h hh h' hh' => ?_⟩
  · obtain ⟨U, F, hU, hxU, hF, hΦF⟩ := hs (x₀.1, cW k r θ * x₀.2) (domR_cW θ hz z' hx₀)
    have hL : ContDiff ℝ ∞ (fun x : (Fin r → ℂ) × Q.Mx k r => (x.1, cW k r θ * x.2)) :=
      contDiff_fst.prodMk (((LinearMap.mulLeft ℝ (cW k r θ)).toContinuousLinearMap.contDiff).comp contDiff_snd)
    exact ⟨(fun x : (Fin r → ℂ) × Q.Mx k r => (x.1, cW k r θ * x.2)) ⁻¹' U,
      F ∘ (fun x : (Fin r → ℂ) × Q.Mx k r => (x.1, cW k r θ * x.2)), hU.preimage hL.continuous, hxU,
      hF.comp hL.contDiffOn (fun x hx => hx), fun x hx hg => hΦF (x.1, cW k r θ * x.2) hx (cW_Glev θ hg)⟩
  · show Φ x.1 (cW k r θ * (h * x.2 * h')) = _
    rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, cW_comm θ ⟨hh.1, hh.2.1⟩, Matrix.mul_assoc h]
    exact he (x.1, cW k r θ * x.2) (domR_cW θ hz z' hx) h hh h' hh'

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.PH
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHRotRadSp =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHThtRot =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHThtRot", "h": "module\n\npublic import Formalism.HermitianCurvature.FrameExists2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRDatumConst\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPhaseCut\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHPhaseSec\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThtFacts\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LieBracketMultiplication\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q NumberField
open scoped ComplexConjugate Matrix

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.PH

noncomputable section

namespace TR

open Formalism.FourierDecayAlt.B2 Formalism.FourierDecayAlt.P.SettingConstruction Formalism.FourierDecayAlt.P.TwoByOneBlock Formalism.FourierDecayAlt.P.TheSec Formalism.FourierDecayAlt.P.TheSecStab

section block

variable {k : ℕ}

theorem img_perp_a {a b : Fin (k + 1) → ℂ} {T T' : ℝ} (hT : 0 < T) (hT' : 0 < T') (ha : herm (Hb k) a a = -(T : ℂ))
    (hb : herm (Hb k) b b = -(T' : ℂ)) {x : Fin (k + 1) → ℂ} (hxb : herm (Hb k) x b = 0) :
    herm (Hb k) (gA k a T *ᵥ (gB k b T' *ᵥ x)) a = 0 := by
  have hne : ((Real.sqrt T' : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (Real.sqrt_pos.2 hT').ne'
  have hne' : star ((Real.sqrt T' : ℝ) : ℂ) ≠ 0 := by
    rw [show star ((Real.sqrt T' : ℝ) : ℂ) = _ from Complex.conj_ofReal _]; exact hne
  have h1 : herm (Hb k) (gB k b T' *ᵥ x) (Pi.single (Fin.last k) 1) = 0 := by
    rw [← form_of_unitary (Hb k) (gB_spec k hT' hb).1, (gB_spec k hT' hb).2, herm_smul_right] at hxb
    exact (mul_eq_zero.1 hxb).resolve_left hne'
  have h2 := form_of_unitary (Hb k) (gA_spec k hT ha).1 (gB k b T' *ᵥ x)
    (((Real.sqrt T : ℝ) : ℂ) • Pi.single (Fin.last k) 1)
  rw [(gA_spec k hT ha).2] at h2
  rw [h2, herm_smul_right, h1, mul_zero]

theorem img_perp_0 {a b : Fin (k + 1) → ℂ} {T T' : ℝ} (hT : 0 < T) (hT' : 0 < T') (ha : herm (Hb k) a a = -(T : ℂ))
    (hb : herm (Hb k) b b = -(T' : ℂ)) {x : Fin (k + 1) → ℂ}
    (hx0 : herm (Hb k) x ((gB k b T')⁻¹ *ᵥ Pi.single 0 1) = 0) :
    herm (Hb k) (gA k a T *ᵥ (gB k b T' *ᵥ x)) (gA k a T *ᵥ Pi.single 0 1) = 0 := by
  rw [form_of_unitary (Hb k) (gA_spec k hT ha).1, ← DC.gB_adj hT' hb]
  exact hx0

end block

section big

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ}

theorem stabilizer_fixes_section_embedding (hk : 1 ≤ k) (hz : inWb k r z) (hz' : inWb k r z') (hT : 0 < Tz k r z) (hT' : 0 < Tz k r z') {ζ : ℂ}
    (hζ : Tz k r z * Tz k r z' < Complex.normSq ζ) {h : Q.Mx k r}
    (hfix : ∀ v, inWb k r v → herm (Hpk k r) v z = 0 → herm (Hpk k r) v (DC.EE k r z) = 0 → h *ᵥ v = v) :
    h * SSn.io0 k r z z' (theSection k r z z') ζ = SSn.io0 k r z z' (theSection k r z z') ζ := by
  have ha := SettingConstruction.herm_self k r z hz
  have hb := SettingConstruction.herm_self k r z' hz'
  rw [DC.section_embedding_eq_matrix hk hz hz' hT hT' hζ]
  ext i j
  obtain ⟨h1, h2, h3⟩ := DC.uu_facts (r := r) hk hz' hT' j
  have g2 : herm (Hb k) (wbPart k r (DC.uu k r z' j)) (wbPart k r z') = 0 := by
    rw [← DC.herm_of h1 hz']; exact h2
  have g3 : herm (Hb k) (wbPart k r (DC.uu k r z' j)) ((gB k (wbPart k r z') (Tz k r z'))⁻¹ *ᵥ Pi.single 0 1) = 0 := by
    rw [DC.EE', DC.herm_of h1 (inWb_jV _), wbPart_jV] at h3; exact h3
  have e := hfix (jV k r (gA k (wbPart k r z) (Tz k r z) *ᵥ (gB k (wbPart k r z') (Tz k r z') *ᵥ wbPart k r (DC.uu k r z' j))))
    (inWb_jV _)
    (by rw [DC.herm_of (inWb_jV _) hz, wbPart_jV]; exact img_perp_a hT hT' ha hb g2)
    (by rw [DC.EE, herm_jV]; exact img_perp_0 hT hT' ha hb g3)
  rw [Matrix.mul_apply]
  exact congrFun e i

end big

section gen

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] {z z' : Fin (2 * r + k + 1) → ℂ}
  {π : B.Mat k r → (Wp →L[ℂ] Wp)} {π' : B.Mat k r → (Wq →L[ℂ] Wq)}

theorem tht_iota_smul (F F' : Fin k → Fin (2 * r + k + 1) → ℂ) (a a' : Fin (2 * r + k + 1) → ℂ) (u : ℂ) {ι ι' : B.Mat k r}
    (h : ∀ q, ι' *ᵥ F' q = u • (ι *ᵥ F' q)) : tht k r z z' π π' F F' a a' ι' = u • tht k r z z' π π' F F' a a' ι := by
  unfold tht
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun p _ => ?_
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun q _ => ?_
  rw [h q, P.Qx8.herm_smul_left', smul_smul]

variable [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem tht_rot (hz : inWb k r z) (hT : 0 < Tz k r z) (hR : Qr.IsRepW k r z π)
    (hz' : inWb k r z') (hT' : 0 < Tz k r z') (hR' : Qr.IsRepW k r z' π')
    {F F' : Fin k → Fin (2 * r + k + 1) → ℂ} (hF : Q.IsFrameOf k r [z] F) (hF' : Q.IsFrameOf k r [z'] F')
    {h h' : B.Mat k r} (hh : h ∈ UWset k r z) (hh' : h' ∈ UWset k r z') (u : ℂ) (hu : conj u * u = 1)
    {a a' : Fin (2 * r + k + 1) → ℂ} {ι : B.Mat k r} (ha : h *ᵥ a = u • a) (ha' : h' *ᵥ a' = u • a') (hι : h * ι = ι)
    (hsc : ∀ q, h' *ᵥ F' q = u • F' q) (X : Wq →L[ℂ] Wp) :
    (π h).comp ((tht k r z z' π π' F F' a a' ι X).comp (π' h')) =
      conj u • tht k r z z' π π' F F' a a' ι ((π h).comp (X.comp (π' h'))) := by
  have uh' : IsUnit h'.det := WeylGroupFacts.isUnit_of_uh hh'.1
  have hinv : (h'⁻¹)⁻¹ = h' := Matrix.nonsing_inv_nonsing_inv _ uh'
  have e2 : h'⁻¹ *ᵥ a' = conj u • a' := by
    have e := congrArg (fun v => conj u • (h'⁻¹ *ᵥ v)) ha'
    simp only [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ uh', Matrix.one_mulVec, Matrix.mulVec_smul, smul_smul, hu,
      one_smul] at e
    exact e.symm
  have e3 : ∀ q, (h * ι * h') *ᵥ F' q = u • (ι *ᵥ F' q) := by
    intro q
    rw [hι, ← Matrix.mulVec_mulVec, hsc q, Matrix.mulVec_smul]
  have key := TF.tht_eqv hz hT hR hz' hT' hR' hF hF' hh (P.LieBracketMultiplication.uw_inv hh') a a' ι X
  rw [hinv, ha, e2, TF.tht_phase hz hT hR hz' hT' hR' hF hF', tht_iota_smul F F' a a' u e3, smul_smul] at key
  rw [← key, FunLike.coe_smul, Pi.smul_apply]
  congr 1
  linear_combination (conj u) * hu

end gen

end TR

open Formalism.FourierDecayAlt.P.TheSec in
theorem theta_rotation_holds : ThtRot := by
  intro Wp Wq _ _ _ _ _ _ P Bs hPl hk hsec Bw Bw' hBw hBw' θ h h' hh hh' ζ hζ hν hfix hsc Xf
  obtain ⟨hOK, hz, hz', hTe, hTe', hty, hty'⟩ := hPl
  have hT : 0 < Tz P.k P.r Bs.z := hTe ▸ hOK.T_pos
  have hT' : 0 < Tz P.k P.r Bs.z' := hTe' ▸ hOK.T'_pos
  have hR : Qr.IsRepW P.k P.r Bs.z Bs.π := ⟨hty.2.1, hty.2.2.1⟩
  have hR' : Qr.IsRepW P.k P.r Bs.z' Bs.π' := ⟨hty'.2.1, hty'.2.2.1⟩
  have hk1 : 1 ≤ P.k := by omega
  have hζ' : Tz P.k P.r Bs.z * Tz P.k P.r Bs.z' < Complex.normSq ζ := by rw [hTe, hTe']; exact hζ
  have hu : conj (PS.eM θ) * PS.eM θ = 1 := by
    rw [← Complex.star_def, PS.star_eM]; exact PS.expPlus_mul_expMinus θ
  have hcu : conj (PS.eM θ) = Complex.exp ((θ : ℂ) * Complex.I) := by
    rw [← Complex.star_def, PS.star_eM]; rfl
  rw [hsec] at hν hfix ⊢
  obtain ⟨hE, hEz, _⟩ := DC.EE'_facts (r := P.r) hk1 hz' hT'
  have hν' : h' *ᵥ SSn.nu0' P.k P.r Bs.z Bs.z' (theSection P.k P.r Bs.z Bs.z') ζ =
      PS.eM θ • SSn.nu0' P.k P.r Bs.z Bs.z' (theSection P.k P.r Bs.z Bs.z') ζ := by
    rw [DC.nu0'_eq hk1 hz hz' hT hT' hζ', Matrix.mulVec_neg, smul_neg]
    exact congrArg Neg.neg (hsc _ hE hEz)
  have hι : h * SSn.io0 P.k P.r Bs.z Bs.z' (theSection P.k P.r Bs.z Bs.z') ζ =
      SSn.io0 P.k P.r Bs.z Bs.z' (theSection P.k P.r Bs.z Bs.z') ζ := by
    refine TR.stabilizer_fixes_section_embedding hk1 hz hz' hT hT' hζ' ?_
    rw [DC.section_first_vector_eq hk1 hz hz' hT hT' hζ'] at hfix
    exact hfix
  rw [← hcu]
  exact TR.tht_rot hz hT hR hz' hT' hR' hBw hBw' hh hh' (PS.eM θ) hu hν hν' hι
    (fun q => hsc _ (TF.frame_inW hBw' q).1 (TF.frame_inW hBw' q).2) Xf

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.PH
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHThtRot =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPhaseExtract =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPhaseExtract", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPolyRadialCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexConjugate

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR

theorem evenPart_poly (c : ℂ) (p : MvPolynomial (Fin 3) ℂ) :
    ∃ q : Polynomial ℂ, ∀ t s : ℂ, t ^ 2 = s ^ 2 + c →
      MvPolynomial.eval ![t, t, s] p + MvPolynomial.eval ![-t, -t, s] p = q.eval s := by
  induction p using MvPolynomial.induction_on' with
  | monomial u a =>
    rcases Nat.even_or_odd' (u 0 + u 1) with ⟨j, hj | hj⟩
    · refine ⟨Polynomial.C (2 * a) * (Polynomial.X ^ 2 + Polynomial.C c) ^ j * Polynomial.X ^ (u 2), fun t s h => ?_⟩
      simp only [MvPolynomial.eval_monomial, Finsupp.prod_fintype _ _ (fun _ => pow_zero _), Fin.prod_univ_three,
        Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons,
        Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_add, Polynomial.eval_C, Polynomial.eval_X]
      rw [← pow_add, ← pow_add, hj, pow_mul, pow_mul, neg_sq, h]
      ring
    · refine ⟨0, fun t s h => ?_⟩
      simp only [MvPolynomial.eval_monomial, Finsupp.prod_fintype _ _ (fun _ => pow_zero _), Fin.prod_univ_three,
        Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons,
        Polynomial.eval_zero]
      rw [← pow_add, ← pow_add, hj, Odd.neg_pow ⟨j, rfl⟩]
      ring
  | add p₁ p₂ h₁ h₂ =>
    obtain ⟨q₁, hq₁⟩ := h₁
    obtain ⟨q₂, hq₂⟩ := h₂
    refine ⟨q₁ + q₂, fun t s h => ?_⟩
    rw [map_add (f := _), map_add (f := _), Polynomial.eval_add, ← hq₁ t s h, ← hq₂ t s h]
    ring

theorem phase_extraction_holds : PhaseExtract := by
  intro TT f _ hPS hrot
  obtain ⟨m, p, hp⟩ := hPS
  obtain ⟨q, hq⟩ := evenPart_poly (TT : ℂ) p
  refine ⟨m, Polynomial.C (1 / 2) * q, fun ζ hζ => ?_⟩
  have hn : Complex.normSq ((‖ζ‖ : ℝ) : ℂ) = Complex.normSq ζ := by
    rw [Complex.normSq_ofReal, Complex.normSq_eq_norm_sq]; ring
  have hn' : Complex.normSq (-((‖ζ‖ : ℝ) : ℂ)) = Complex.normSq ζ := by
    rw [Complex.normSq_neg, hn]
  have h1 : f ζ = f ((‖ζ‖ : ℝ) : ℂ) := by
    have := hrot (Complex.arg ζ) ((‖ζ‖ : ℝ) : ℂ) (by rw [hn]; exact hζ)
    rw [← this]
    congr 1
    unfold rot
    rw [mul_comm, Complex.norm_mul_exp_arg_mul_I]
  have h2 : f ζ = f (-((‖ζ‖ : ℝ) : ℂ)) := by
    have := hrot Real.pi ((‖ζ‖ : ℝ) : ℂ) (by rw [hn]; exact hζ)
    rw [h1, ← this]
    congr 1
    unfold rot
    rw [Complex.exp_pi_mul_I]; ring
  have e1 := hp ((‖ζ‖ : ℝ) : ℂ) (by rw [hn]; exact hζ)
  have e2 := hp (-((‖ζ‖ : ℝ) : ℂ)) (by rw [hn']; exact hζ)
  have g1 : gg TT ((‖ζ‖ : ℝ) : ℂ) = gg TT ζ := by unfold gg; rw [hn]
  have g2 : gg TT (-((‖ζ‖ : ℝ) : ℂ)) = gg TT ζ := by unfold gg; rw [hn']
  have s1 : sig TT ((‖ζ‖ : ℝ) : ℂ) = sig TT ζ := by unfold sig; rw [hn]
  have s2 : sig TT (-((‖ζ‖ : ℝ) : ℂ)) = sig TT ζ := by unfold sig; rw [hn']
  rw [g1, s1, ← h1, Complex.conj_ofReal] at e1
  rw [g2, s2, ← h2, map_neg, Complex.conj_ofReal] at e2
  have hcurve : (((‖ζ‖ : ℝ) : ℂ)) ^ 2 = sig TT ζ ^ 2 + (TT : ℂ) := by
    unfold sig
    rw [← Complex.ofReal_pow, ← Complex.ofReal_pow, Real.sq_sqrt (by linarith), ← Complex.ofReal_add,
      Complex.normSq_eq_norm_sq]
    congr 1; ring
  have := hq _ _ hcurve
  rw [← e1, ← e2] at this
  rw [Polynomial.eval_mul, Polynomial.eval_C, ← this]
  ring

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPhaseExtract =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ThtAdapted =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ThtAdapted", "h": "module\n\npublic import Formalism.HermitianCurvature.FrameExists2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLAtMost\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThtFacts\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameEntries\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameExtension\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SectionEmbeddingMulVec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.TW

noncomputable section

open Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr Formalism.FourierDecayAlt.P

variable {n r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem nu0'_facts (Bs : B.RealPlaceData (n + 1) r Wp Wq) {ζ : ℂ}
    (hζ : Tz (n + 1) r Bs.z * Tz (n + 1) r Bs.z' < Complex.normSq ζ) {m : ℕ}
    {Fr' : Fin m → Fin (2 * r + (n + 1) + 1) → ℂ}
    (hFr' : IsFrameOf (n + 1) r [(NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Bs.z, Bs.z'] Fr') :
    inWb (n + 1) r (SSn.nu0' (n + 1) r Bs.z Bs.z' Bs.μsec ζ) ∧
      herm (Hpk (n + 1) r) (SSn.nu0' (n + 1) r Bs.z Bs.z' Bs.μsec ζ) Bs.z' = 0 ∧
      IsFrameOf (n + 1) r [Bs.z', SSn.nu0' (n + 1) r Bs.z Bs.z' Bs.μsec ζ] Fr' := by
  have hz := Bs.z_mem
  have hz' := Bs.z'_mem
  obtain ⟨-, -, hfix, -⟩ := DU.base hz hz' Bs.T_pos Bs.T'_pos Bs.sec hζ
  have hm := NFRadRedA.muZ_uwb Bs.sec hζ
  have hG := NFRadRedA.uwb_glev hm
  have hGi := FrameEntries.glev_inv hG
  have hy : inWb (n + 1) r ((NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Bs.z) := Qx8.inWb_mulVec hGi hz
  have hW : inWb (n + 1) r (SSn.nu0' (n + 1) r Bs.z Bs.z' Bs.μsec ζ) := by
    show inWb (n + 1) r (SSn.unitH (n + 1) r (SSn.prWv (n + 1) r Bs.z' ((NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Bs.z)))
    unfold SSn.unitH
    exact Qx8.inWb_smul (DU.prWv_inWb hz' hy) _
  refine ⟨hW, ?_, hFr'.1, hFr'.2.1, fun a w hw => ?_⟩
  · rw [← hfix]; exact DU.prWv_perp Bs.T'_pos hW
  · simp only [List.mem_cons, List.not_mem_nil, or_false] at hw
    rcases hw with rfl | rfl
    · exact hFr'.2.2 a _ (by simp)
    · show herm (Hpk (n + 1) r) (Fr' a)
        (SSn.unitH (n + 1) r (SSn.prWv (n + 1) r Bs.z' ((NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Bs.z))) = 0
      have h0 : herm (Hpk (n + 1) r) (Fr' a)
          (SSn.prWv (n + 1) r Bs.z' ((NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Bs.z)) = 0 := by
        rw [DU.prWv_of hy, DU.hadd_r, DU.hsmul_r, hFr'.2.2 a ((NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Bs.z) (by simp),
          hFr'.2.2 a Bs.z' (by simp), mul_zero, add_zero]
      unfold SSn.unitH
      rw [DU.hsmul_r, h0, mul_zero]

theorem tht_adapted (Bs : B.RealPlaceData (n + 1) r Wp Wq) {ζ : ℂ}
    (hζ : Tz (n + 1) r Bs.z * Tz (n + 1) r Bs.z' < Complex.normSq ζ)
    {Bw Bw' : Fin (n + 1) → Fin (2 * r + (n + 1) + 1) → ℂ} (hBw : IsFrameOf (n + 1) r [Bs.z] Bw)
    (hBw' : IsFrameOf (n + 1) r [Bs.z'] Bw') {Fr : Fin n → Fin (2 * r + (n + 1) + 1) → ℂ}
    (hB₁ : IsFrameOf (n + 1) r [Bs.z]
      (Fin.snoc (α := fun _ => Fin (2 * r + (n + 1) + 1) → ℂ) Fr (SSn.nu0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ)))
    (hFr' : IsFrameOf (n + 1) r [(NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Bs.z, Bs.z']
      (fun a => (NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Fr a)) (X : Wq →L[ℂ] Wp) (v : Wq) :
    tht (n + 1) r Bs.z Bs.z' Bs.π Bs.π' Bw Bw' (SSn.nu0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ)
        (SSn.nu0' (n + 1) r Bs.z Bs.z' Bs.μsec ζ) (SSn.io0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ) X v =
      ∑ c : Fin n, etaK (EB Bs.π (Fin.snoc (α := fun _ => Fin (2 * r + (n + 1) + 1) → ℂ) Fr
          (SSn.nu0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ))) c
        (X (yK (EB Bs.π' (Fin.snoc (α := fun _ => Fin (2 * r + (n + 1) + 1) → ℂ)
          (fun a => (NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Fr a) (SSn.nu0' (n + 1) r Bs.z Bs.z' Bs.μsec ζ))) c v)) := by
  have hz := Bs.z_mem
  have hz' := Bs.z'_mem
  have hT := Bs.T_pos
  have hT' := Bs.T'_pos
  have hR : IsRepW (n + 1) r Bs.z Bs.π := ⟨Bs.π_rep, Bs.π_cont⟩
  have hR' : IsRepW (n + 1) r Bs.z' Bs.π' := ⟨Bs.π'_rep, Bs.π'_cont⟩
  obtain ⟨hνfix, hνν, hν'fix, hν'ν'⟩ := DU.base hz hz' hT hT' Bs.sec hζ
  obtain ⟨hν'W, hν'z, hFr2⟩ := nu0'_facts Bs hζ hFr'
  have hm := NFRadRedA.muZ_uwb Bs.sec hζ
  have hG := NFRadRedA.uwb_glev hm
  have hU : NF.muZ (n + 1) r Bs.μsec ζ ∈ UH (Hpk (n + 1) r) := hG.1
  have hmm : NF.muZ (n + 1) r Bs.μsec ζ * (NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ = 1 := Gauge.GC.KLAM.mul_inv_uh hU
  set μ := NF.muZ (n + 1) r Bs.μsec ζ with hμ
  set ν := SSn.nu0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ with hν
  set ν' := SSn.nu0' (n + 1) r Bs.z Bs.z' Bs.μsec ζ with hν'
  have hB₁' := FrameExtension.frame_snoc hFr2 hν'W hν'z hν'ν'
  set B₁ : Fin (n + 1) → Fin (2 * r + (n + 1) + 1) → ℂ :=
    Fin.snoc (α := fun _ => Fin (2 * r + (n + 1) + 1) → ℂ) Fr ν with hB₁def
  set B₁' : Fin (n + 1) → Fin (2 * r + (n + 1) + 1) → ℂ :=
    Fin.snoc (α := fun _ => Fin (2 * r + (n + 1) + 1) → ℂ) (fun a => μ⁻¹ *ᵥ Fr a) ν' with hB₁'def
  have hBc : ∀ c : Fin n, B₁ c.castSucc = Fr c := fun c => by rw [hB₁def, Fin.snoc_castSucc]
  have hBl : B₁ (Fin.last n) = ν := by rw [hB₁def, Fin.snoc_last]
  have hBc' : ∀ c : Fin n, B₁' c.castSucc = μ⁻¹ *ᵥ Fr c := fun c => by rw [hB₁'def, Fin.snoc_castSucc]
  have hBl' : B₁' (Fin.last n) = ν' := by rw [hB₁'def, Fin.snoc_last]
  rw [TF.tht_indep hz hT hR hz' hT' hR' hBw hB₁ hBw' hB₁' ν ν' _, TF.tht_form hz hT hR hB₁, hνfix, hν'fix]
  simp only [ContinuousLinearMap.sum_apply, TF.sandw_apply, ContinuousLinearMap.comp_apply]
  rw [Fin.sum_univ_castSucc]
  have hlast : SSn.io0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ *ᵥ B₁' (Fin.last n) = 0 := by
    rw [section_embedding_mul_vec, hBl', ← hν', hν'fix, hν'ν', one_smul, sub_self, Matrix.mulVec_zero]
  have hpr0 : SSn.prWv (n + 1) r Bs.z (0 : Fin (2 * r + (n + 1) + 1) → ℂ) = 0 := by
    have := TF.prWv_smul (k := n + 1) (r := r) Bs.z 0 0
    simpa using this
  rw [hlast, hpr0, TF.ebM_zero_left, TF.ecOp_zero, ContinuousLinearMap.zero_apply, add_zero]
  refine Finset.sum_congr rfl fun c _ => ?_
  have hc : SSn.io0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ *ᵥ B₁' c.castSucc = Fr c := by
    rw [section_embedding_mul_vec, hBc', ← hν', DU.prWv_fix (hFr2.1 c) (hFr2.2.2 c Bs.z' (by simp)), hFr2.2.2 c ν' (by simp),
      zero_smul, sub_zero, Matrix.mulVec_mulVec, hmm, Matrix.one_mulVec]
  have hFc : SSn.prWv (n + 1) r Bs.z (Fr c) = Fr c := by
    rw [← hBc c]
    exact DU.prWv_fix (hB₁.1 _) (hB₁.2.2 _ Bs.z (by simp))
  rw [hc, hFc]
  have e1 : ebM (n + 1) r (Fr c) ν = unitB (Hpk (n + 1) r) B₁ c.castSucc (Fin.last n) := by
    rw [← TF.ebM_frame, hBc, hBl]
  have e2 : ebM (n + 1) r ν' (B₁' c.castSucc) = unitB (Hpk (n + 1) r) B₁' (Fin.last n) c.castSucc := by
    rw [← TF.ebM_frame, hBl']
  rw [e1, e2]
  rfl

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR.TW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ThtAdapted =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTWNe =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTWNe", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTWNeAlgSt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPolyRadialCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreKLAtMost\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAGaugeLinesLeft\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTWNeAlg\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepDatumUnit\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameCompletion\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameExtension\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NFRadRedA\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParametersUPrimeForULower\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SectionEmbeddingMulVec\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ThtAdapted\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.FrameExists2\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTKLineCut\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR

noncomputable section

open Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr Formalism.FourierDecayAlt.P

theorem core (hAlg : TW.TWNeAlg) {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]
    (n r : ℕ) (T T' : ℝ) (u u' : ℕ → ℝ) (Bs : B.RealPlaceData (n + 1) r Wp Wq)
    (hpl : IsPlace ⟨n + 1, r, T, T', u, u'⟩ Bs.z Bs.z' Bs.π Bs.π') (hk : 2 ≤ n + 1)
    (Pr : M.Ty ⟨n + 1, r, T, T', u, u'⟩ → (Fin (2 * r + (n + 1) + 1) → ℂ) → (Wp →L[ℂ] Wp))
    (hPr : PRho.PRhoSpec ⟨n + 1, r, T, T', u, u'⟩ Bs.z Bs.π Pr)
    (Bw Bw' : Fin (n + 1) → Fin (2 * r + (n + 1) + 1) → ℂ) (hBw : IsFrameOf (n + 1) r [Bs.z] Bw)
    (hBw' : IsFrameOf (n + 1) r [Bs.z'] Bw') (l : ℕ) (hl : l ∈ Finset.Icc 1 n)
    (π ρ : M.Ty ⟨n + 1, r, T, T', u, u'⟩) (hUp : M.Up ⟨n + 1, r, T, T', u, u'⟩ l π ρ) (ζ : ℂ)
    (hζT : T * T' < Complex.normSq ζ) (Xf : Wq →L[ℂ] Wp)
    (hXf : Xf ∈ NF.Fib (n + 1) r Bs.z Bs.z' Bs.μsec Bs.π Bs.π' ζ)
    (hfix : (Pr π (SSn.nu0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ)).comp Xf = Xf) (hX0 : Xf ≠ 0) :
    (Pr ρ (SSn.nu0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ)).comp (tht (n + 1) r Bs.z Bs.z' Bs.π Bs.π' Bw Bw'
      (SSn.nu0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ) (SSn.nu0' (n + 1) r Bs.z Bs.z' Bs.μsec ζ)
      (SSn.io0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ) Xf) ≠ 0 := by
  have hOK : (⟨n + 1, r, T, T', u, u'⟩ : M.Par).OK := hpl.1
  have hz : inWb (n + 1) r Bs.z := Bs.z_mem
  have hz' : inWb (n + 1) r Bs.z' := Bs.z'_mem
  have hTz : Tz (n + 1) r Bs.z = T := hpl.2.2.2.1
  have hTz' : Tz (n + 1) r Bs.z' = T' := hpl.2.2.2.2.1
  have hπ : IsType (n + 1) r Bs.z Bs.π u := hpl.2.2.2.2.2.1
  have hπ' : IsType (n + 1) r Bs.z' Bs.π' u' := hpl.2.2.2.2.2.2
  have hζ' : Tz (n + 1) r Bs.z * Tz (n + 1) r Bs.z' < Complex.normSq ζ := by
    rw [hTz, hTz']; exact hζT
  have hT : 0 < Tz (n + 1) r Bs.z := Bs.T_pos
  have hT' : 0 < Tz (n + 1) r Bs.z' := Bs.T'_pos
  have hR : IsRepW (n + 1) r Bs.z Bs.π := ⟨Bs.π_rep, Bs.π_cont⟩
  have hR' : IsRepW (n + 1) r Bs.z' Bs.π' := ⟨Bs.π'_rep, Bs.π'_cont⟩
  obtain ⟨hνfix, hνν, hν'fix, hν'ν'⟩ := DU.base hz hz' hT hT' Bs.sec hζ'
  have hm := NFRadRedA.muZ_uwb Bs.sec hζ'
  have hG := NFRadRedA.uwb_glev hm
  have hU : NF.muZ (n + 1) r Bs.μsec ζ ∈ UH (Hpk (n + 1) r) := hG.1
  have hmm : NF.muZ (n + 1) r Bs.μsec ζ * (NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ = 1 := Gauge.GC.KLAM.mul_inv_uh hU
  have hy : inWb (n + 1) r (NF.muZ (n + 1) r Bs.μsec ζ *ᵥ Bs.z') := Qx8.inWb_mulVec hG hz'
  have hνW : inWb (n + 1) r (SSn.nu0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ) := by
    show inWb (n + 1) r (SSn.unitH (n + 1) r (SSn.prWv (n + 1) r Bs.z (NF.muZ (n + 1) r Bs.μsec ζ *ᵥ Bs.z')))
    unfold SSn.unitH
    exact Qx8.inWb_smul (DU.prWv_inWb hz hy) _
  have hνz : herm (Hpk (n + 1) r) (SSn.nu0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ) Bs.z = 0 := by
    rw [← hνfix]; exact DU.prWv_perp hT hνW
  obtain ⟨Fr, hFr⟩ := exists_frame_two n r Bs.z _ hz hT hνW hνz hνν
  have hFr' : IsFrameOf (n + 1) r [(NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Bs.z, Bs.z']
      (fun a => (NF.muZ (n + 1) r Bs.μsec ζ)⁻¹ *ᵥ Fr a) :=
    (PRho.GL.gauge_left_line_holds Wp Wq ⟨n + 1, r, T, T', u, u'⟩ Bs hpl hk ζ hζT Fr hFr).1
  obtain ⟨hν'W, hν'z, hFr2⟩ := TW.nu0'_facts Bs hζ' hFr'
  have hB₁ := FrameExtension.frame_snoc hFr hνW hνz hνν
  set μ := NF.muZ (n + 1) r Bs.μsec ζ with hμ
  set ν := SSn.nu0 (n + 1) r Bs.z Bs.z' Bs.μsec ζ with hν
  set ν' := SSn.nu0' (n + 1) r Bs.z Bs.z' Bs.μsec ζ with hν'

  have hIcc : ∀ j : Fin (n + 1), (j : ℕ) + 1 ∈ Finset.Icc 1 (n + 1) := fun j =>
    Finset.mem_Icc.2 ⟨by omega, by omega⟩
  choose L hL using fun j : Fin (n + 1) => hOK.int_u ((j : ℕ) + 1) (hIcc j)
  choose L' hL' using fun j : Fin (n + 1) => hOK.int_u' ((j : ℕ) + 1) (hIcc j)
  have hL2 : ∀ j : Fin (n + 1), u ((j : ℕ) + 1) - u 1 = (L j : ℝ) := hL
  have hL2' : ∀ j : Fin (n + 1), u' ((j : ℕ) + 1) - u 1 = (L' j : ℝ) := hL'
  have hgap : ∀ j : Fin n, max (u ((j : ℕ) + 1 + 1)) (u' ((j : ℕ) + 1 + 1)) + 1 / 2 ≤
      min (u ((j : ℕ) + 1)) (u' ((j : ℕ) + 1)) - 1 / 2 := fun j =>
    hOK.gap ((j : ℕ) + 1) (Finset.mem_Icc.2 ⟨by omega, by show (j : ℕ) + 1 ≤ n + 1 - 1; omega⟩)
  have hanti : StrictAnti L := Fin.strictAnti_iff_succ_lt.2 fun j => by
    have h1 := hL2 j.castSucc
    have h2 := hL2 j.succ
    simp only [Fin.val_castSucc, Fin.val_succ] at h1 h2
    have h3 := hgap j
    have h5 := le_max_left (u ((j : ℕ) + 1 + 1)) (u' ((j : ℕ) + 1 + 1))
    have h6 := min_le_left (u ((j : ℕ) + 1)) (u' ((j : ℕ) + 1))
    have : (L j.succ : ℝ) < (L j.castSucc : ℝ) := by linarith
    exact_mod_cast this
  have hanti' : StrictAnti L' := Fin.strictAnti_iff_succ_lt.2 fun j => by
    have h1 := hL2' j.castSucc
    have h2 := hL2' j.succ
    simp only [Fin.val_castSucc, Fin.val_succ] at h1 h2
    have h3 := hgap j
    have h5 := le_max_right (u ((j : ℕ) + 1 + 1)) (u' ((j : ℕ) + 1 + 1))
    have h6 := min_le_right (u ((j : ℕ) + 1)) (u' ((j : ℕ) + 1))
    have : (L' j.succ : ℝ) < (L' j.castSucc : ℝ) := by linarith
    exact_mod_cast this
  set β : ℂ := (u 1 : ℂ) - ((n + 1 : ℕ) : ℂ) / 2 + 1 / 2 with hβ
  have hrel : ∀ j : Fin (n + 1), (u ((j : ℕ) + 1) : ℂ) - ((n + 1 : ℕ) : ℂ) / 2 + 1 / 2 = β + (L j : ℂ) := fun j => by
    have h : (u ((j : ℕ) + 1) : ℂ) - (u 1 : ℂ) = (L j : ℂ) := by
      exact_mod_cast congrArg (fun x : ℝ => (x : ℂ)) (hL2 j)
    rw [hβ, ← h]
    ring
  have hrel' : ∀ j : Fin (n + 1), (u' ((j : ℕ) + 1) : ℂ) - ((n + 1 : ℕ) : ℂ) / 2 + 1 / 2 = β + (L' j : ℂ) := fun j => by
    have h : (u' ((j : ℕ) + 1) : ℂ) - (u 1 : ℂ) = (L' j : ℂ) := by
      exact_mod_cast congrArg (fun x : ℝ => (x : ℂ)) (hL2' j)
    rw [hβ, ← h]
    ring

  have hmem : ∀ j : Fin n, (j : ℕ) + 1 ∈ Finset.Icc 1 ((⟨n + 1, r, T, T', u, u'⟩ : M.Par).k - 1) := fun j =>
    Finset.mem_Icc.2 ⟨by omega, by show (j : ℕ) + 1 ≤ n + 1 - 1; omega⟩
  choose N hN using fun j : Fin n => Qx8.rho_int hOK π ((j : ℕ) + 1) (hmem j)
  have hl' := Finset.mem_Icc.1 hl
  have hln : l - 1 < n := by omega
  set i₀ : Fin n := ⟨l - 1, hln⟩ with hi₀
  set Mπ : Fin n → ℤ := fun j => N j + 1 with hMπ
  have hlabπ : ∀ j : Fin n, (Mπ j : ℝ) = M.rho ⟨n + 1, r, T, T', u, u'⟩ π ((j : ℕ) + 1) - u 1 + 1 / 2 := fun j => by
    have := hN j
    change M.rho ⟨n + 1, r, T, T', u, u'⟩ π ((j : ℕ) + 1) - u 1 - 1 / 2 = (N j : ℝ) at this
    rw [hMπ]
    push_cast
    linarith
  have hlabρ : ∀ j : Fin n, ((Function.update Mπ i₀ (Mπ i₀ + 1) j : ℤ) : ℝ) =
      M.rho ⟨n + 1, r, T, T', u, u'⟩ ρ ((j : ℕ) + 1) - u 1 + 1 / 2 := fun j => by
    rw [rho_raise _ l π ρ hUp _ (hmem j)]
    by_cases hj : j = i₀
    · subst hj
      have e : ((i₀ : Fin n) : ℕ) + 1 = l := by rw [hi₀]; show l - 1 + 1 = l; omega
      rw [Function.update_self, if_pos e]
      push_cast
      rw [hlabπ i₀]
      ring
    · have e : ¬ ((j : ℕ) + 1 = l) := fun h => hj (Fin.ext (by rw [hi₀]; show (j : ℕ) = l - 1; omega))
      rw [Function.update_of_ne hj, if_neg e, hlabπ j]
      ring
  obtain ⟨hbπ, hbπ', hcpπ⟩ := TW.labels2 hOK π L L' hL2 hL2' Mπ hlabπ
  obtain ⟨hbρ, hbρ', hcpρ⟩ := TW.labels2 hOK ρ L L' hL2 hL2' _ hlabρ

  have hH := TW.hyp_snoc hz hT hπ hanti hrel hνW hνz hνν hFr
  have hH' := TW.hyp_snoc hz' hT' hπ' hanti' hrel' hν'W hν'z hν'ν' hFr2
  have hsub : subA (EB Bs.π (Fin.snoc (α := fun _ => Fin (2 * r + (n + 1) + 1) → ℂ) Fr ν)) = EB Bs.π Fr :=
    FrameExtension.subA_EB Bs.π Fr ν
  have hsub' : subA (EB Bs.π' (Fin.snoc (α := fun _ => Fin (2 * r + (n + 1) + 1) → ℂ) (fun a => μ⁻¹ *ᵥ Fr a) ν')) =
      EB Bs.π' (fun a => μ⁻¹ *ᵥ Fr a) := FrameExtension.subA_EB Bs.π' _ ν'
  have hq := (frame_general_linear Wp (n + 1) r n Bs.z Bs.π Fr hR (FrameExtension.frame_weaken hFr)).2
  have hback : (fun a => μ *ᵥ (μ⁻¹ *ᵥ Fr a)) = Fr := by
    funext a
    rw [Matrix.mulVec_mulVec, hmm, Matrix.one_mulVec]
  have hXF : Xf ∈ Gauge.GC.FibAt (n + 1) r Bs.z Bs.z' Bs.π Bs.π' μ :=
    fun h hh h' hh' he => hXf (h, h') ⟨hh, hh', he⟩
  have hpos : 0 < PRho.nrmW (n + 1) r Bs.z ν := by
    unfold PRho.nrmW
    rw [hνfix, hνν]; simp
  have hrange : ∀ (σ : M.Ty ⟨n + 1, r, T, T', u, u'⟩) (x : Wp), Pr σ ν x = x ↔
      ∀ Fr2 : Fin n → Fin (2 * r + (n + 1) + 1) → ℂ, IsFrameOf (n + 1) r [Bs.z, SSn.prWv (n + 1) r Bs.z ν] Fr2 →
        ∀ w : ℂ, capRep (n + 1) r Bs.π Fr2 w x =
          M.xC ⟨n + 1, r, T, T', u, u'⟩ σ (w - (((n + 1 : ℕ) : ℂ) - 2) / 2) • x := (hPr.2.2 ν hpos).2.2.2
  have hJi : ∀ (a b : Fin n) (v : Wq), (Xf : Wq →ₗ[ℂ] Wp)
      (subA (EB Bs.π' (Fin.snoc (α := fun _ => Fin (2 * r + (n + 1) + 1) → ℂ) (fun a => μ⁻¹ *ᵥ Fr a) ν')) a b v) =
      subA (EB Bs.π (Fin.snoc (α := fun _ => Fin (2 * r + (n + 1) + 1) → ℂ) Fr ν)) a b ((Xf : Wq →ₗ[ℂ] Wp) v) := by
    intro a b v
    rw [hsub, hsub']
    have h := TW.eb_intertwine hFr' hR hR' hU (by rw [hback]; exact FrameExtension.frame_weaken hFr) Xf
      (fun h' hh' hy' w => Gauge.GC.KLAM.fib_intertwine Bs.π_rep hG hXF hh' hy' w) a b v
    rw [hback] at h
    exact h
  have hJr : ∀ v : Wq, (Xf : Wq →ₗ[ℂ] Wp) v ∈
      CapSp (subA (EB Bs.π (Fin.snoc (α := fun _ => Fin (2 * r + (n + 1) + 1) → ℂ) Fr ν))) (shf β Mπ) := by
    intro v
    rw [hsub, mem_CapSp]
    intro w
    have h1 : Pr π ν (Xf v) = Xf v := by
      have := congrArg (fun A : Wq →L[ℂ] Wp => A v) hfix
      exact this
    have h2 := (hrange π (Xf v)).1 h1 Fr (by rw [hνfix]; exact hFr) w
    have h3 := hcpπ (w - (((n + 1 : ℕ) : ℂ) - 2) / 2)
    rw [sub_add_cancel] at h3
    show qdet (EB Bs.π Fr) w (Xf v) = _
    rw [← hq w (Xf v), h3]
    exact h2
  have hJ0 : (Xf : Wq →ₗ[ℂ] Wp) ≠ 0 := fun h => hX0 (by
    ext v
    exact LinearMap.congr_fun h v)
  obtain ⟨v', hne, hmemW⟩ := hAlg Wp Wq n _ _ β β L L' Mπ Mπ i₀ hH hH' hbπ hbπ' hbρ hbρ' rfl
    (Xf : Wq →ₗ[ℂ] Wp) hJ0 hJi hJr
  intro h0
  apply hne
  have h1 := congrArg (fun A : Wq →L[ℂ] Wp => A v') h0
  simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.zero_apply] at h1
  rw [TW.tht_adapted Bs hζ' hBw hBw' hB₁ hFr' Xf v'] at h1
  rw [← h1]
  symm
  refine (hrange ρ _).2 ?_
  intro Fr2 hFr2 w
  rw [hνfix] at hFr2
  rw [hsub, mem_CapSp] at hmemW
  have h3 := hcpρ (w - (((n + 1 : ℕ) : ℂ) - 2) / 2)
  rw [sub_add_cancel] at h3
  rw [Topx1.typ_frame_change (n + 1) r (by omega) Bs.z ν Bs.π Fr2 Fr hz hT hνW hνz hνν hR hFr2 hFr w _, hq w _]
  refine (hmemW w).trans ?_
  rw [h3]
  rfl

theorem tWNe_of_alg (hAlg : TW.TWNeAlg) : TWNe := by
  intro Wp Wq _ _ _ _ _ _ P
  obtain ⟨k, r, T, T', u, u'⟩ := P
  rcases k with _ | n
  · intro Bs hpl hk
    exact absurd hk (by show ¬ (2 ≤ 0); omega)
  intro Bs hpl hk Pr hPr Bw Bw' hBw hBw' l hl π ρ hUp ζ hζ Xf hXf hfix hX0
  exact core hAlg n r T T' u u' Bs hpl hk Pr hPr Bw Bw' hBw hBw' l hl π ρ hUp ζ hζ Xf hXf hfix hX0

theorem word_nonvanishing_holds : TWNe := tWNe_of_alg TW.word_nonvanishing_algebraic

end

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTWNe =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRRest =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRRest", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCoreCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAlgSS\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPCoreAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPLeftCov\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPPSCalc\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcComm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcLin\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRcSmooth\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPRightCov\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRCPSecDeriv\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRFibStable\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRKapLine\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHPhaseInvOfCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHPhaseSec\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHRotRadSp\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPHThtRot\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRPhaseExtract\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTWNe\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRTransfer\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJASSnRepThtFacts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LowerUnipotentHasRepresentation\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LowerUnipotentRotationHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRDatumConst\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR

theorem phase_invariance_holds : PhaseInv :=
  PH.phase_invariance_of_truncation PH.phase_section_holds PH.lower_unipotent_rotation_holds PH.rotation_radial_space_holds PH.theta_rotation_holds kappa_line_holds algebraic_shift_holds
    datum_constancy_holds fibre_stability_holds

theorem corePoly_of (hD : CP.Decomp) (hW : CP.WordPSVOfCut) : CorePoly :=
  CP.radial_polynomial_of_truncation CP.lower_unipotent_matrix_words
    (hW CP.radial_coefficient_linearity CP.radial_coefficient_smoothness CP.radial_coefficient_commutation CP.left_covariance_holds CP.right_covariance_holds CP.section_derivative_holds hD
      CP.polynomial_shift_calculation)
    CP.polynomial_shift_calculation

theorem polyRadialS_of (hD : CP.Decomp) (hW : CP.WordPSVOfCut) : PolyRadialS :=
  polynomialRadial_of_base polynomial_radial_base_holds SSn.Rep.theta_facts_hold transfer_holds datum_constancy_holds kappa_line_holds
    fibre_stability_holds algebraic_shift_holds (corePoly_of hD hW) phase_invariance_holds phase_extraction_holds word_nonvanishing_holds

end Formalism.FourierDecayAlt.P.CutMP.JA.SSn.Rep.Core.TC.PR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJAPRRest =====
