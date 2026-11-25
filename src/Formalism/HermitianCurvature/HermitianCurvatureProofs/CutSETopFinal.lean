module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpR
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRAsm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDRvStepB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDCCLower
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSPolyProp
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ZinvBound
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAlgebraFacts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellValues
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorEquivariance
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutoffIteratedFDerivBounded
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HsVecApply
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvMulVecOfFixedVector
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfFunctions
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.XFibreOfParts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSRhR
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFOpOKMulGPf
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDIdentSpec
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopR
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRGrpMBeta
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRGrpMConseq
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRGrpMContPf
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRGrpMStepAPf
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRGrpMTop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDRInvFinal
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDRStepA
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDRStepB
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatPolyOK
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase
import Formalism.HermitianCurvature.HermitianCurvatureProofs.WCellMemOmPlus
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorFrame
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HomogeneityNaturalDegree
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPIntegralOfPlaces
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsAdmissibleSplittingCharPairMulTwist
import Formalism.HermitianCurvature.HermitianCurvatureProofs.WeylCellConjTransposeMulApply
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellVanishingOfCommute

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpRGrp, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSNicePoly, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpRGrpFinal, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpX, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSRhvR, Formalism.HermitianCurvature.HermitianCurvatureProofs.SpectralCompositionZero, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopFinal

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpRGrp =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpRGrp", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpR\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRAsm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRGrpMBeta\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRGrpMConseq\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRGrpMContPf\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRGrpMStepAPf\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDCapRGrpMTop\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDRInvFinal\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDRStepA\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDRStepB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatJDRvStepB\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatPolyOK\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.WCellMemOmPlus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped Matrix

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5

def RDSNicePoly : Prop :=
  ∀ (k r : ℕ) (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (D : B.RealPlaceData k r Wp Wq) (o κ : ℕ)
    (Θ : B.DiffOp k r Wp Wq), CutMP.PolyOp o κ Θ →
      ∀ F : B.Mat k r → (Wq →L[ℂ] Wp), NiceAll D F → NiceAll D (B.opApply Θ F) ∧ NiceAll D (B.opAdj Θ F)

section swap

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

end swap

theorem opProp1_of_poly (hN : RDSNicePoly) {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]
    (D : B.RealPlaceData k r Wp Wq) {o κ : ℕ} {Θ : B.DiffOp k r Wp Wq} (hP : CutMP.PolyOp o κ Θ)
    (hC : B.Commutes D (B.GPos D) Θ) : OpProp1 D Θ := by
  obtain ⟨hS, hG, -⟩ := CutMP.polynomial_decay_admissible k r Wp Wq o κ Θ hP
  refine ⟨hS _, hC, fun ε _ => ⟨κ, Nat.cast_nonneg _, fun T hT => ?_⟩, fun F hF => hN k r Wp Wq D o κ Θ hP F hF⟩
  obtain ⟨-, -, hb⟩ := hG κ le_rfl T hT
  obtain ⟨C₁, hC₁⟩ := hb (B.opOrder Θ + 5)
  exact ⟨C₁, fun u v hu hv hl g hg _ => hC₁ u v hu hv hl g hg⟩

section ffl

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [NormedAddCommGroup Wq]
  [NormedSpace ℂ Wq] {z z' : Fin (2 * r + k + 1) → ℂ} {π : Q.Mx k r → (Wp →L[ℂ] Wp)} {π' : Q.Mx k r → (Wq →L[ℂ] Wq)}

theorem ffl_mono {D₁ D₂ : Set (Q.Mx k r)} (h : ∀ g ∈ Q.Glev k r 0, g ∈ D₂ → g ∈ D₁) {J : Q.Mx k r → (Wq →L[ℂ] Wp)}
    (hJ : J ∈ Q.FFl k r z z' π π' 0 D₁) : J ∈ Q.FFl k r z z' π π' 0 D₂ := by
  obtain ⟨h1, h2, h3, h4⟩ := hJ
  refine ⟨fun g₀ hg₀ => h1 g₀ ⟨hg₀.1, h g₀ hg₀.1 hg₀.2⟩, fun g hg n hn => h2 g ⟨hg.1, h g hg.1 hg.2⟩ n hn,
    fun g hg n hn => h3 g ⟨hg.1, h g hg.1 hg.2⟩ n hn, fun g hg u hu u' hu' => h4 g ⟨hg.1, h g hg.1 hg.2⟩ u hu u' hu'⟩

end ffl

theorem rDSOpRGrp_of_nice (hN : RDSNicePoly) : RDSOpRGrp := by
  intro Wp Wq _ _ _ _ _ _ k r D Y σ
  obtain ⟨ε, hε⟩ := CutMP.jDRRadP_of_steps CutMP.residue_first_move_holds CutMP.residue_second_move_holds k r
  obtain ⟨Θ, hP, hO, hR⟩ := CutMP.ri_real (Wp := Wp) (Wq := Wq) D.z D.z' Y (σ * ε)
  have hComm : B.Commutes D (B.GPos D) Θ := by
    intro p hp F hF g hg
    rw [hO] at hF
    have hgG : g ∈ B.GV k r := hg.1
    have hsg : B.sgs p g ∈ B.GV k r := Formalism.FourierDecayAlt.P.B6.conj_product_mem_unitary_group D hp hgG
    rw [hR _ _ (Formalism.FourierDecayAlt.P.B5.ckOn_rho D hp hF) g hgG hgG]
    have e2 : B.rho D p (B.opApply Θ F) g =
        B.rho D p (fun x => (σ * ε) • CutMP.rhatOp k r D.z D.z' Y F x) g := by
      simp only [B.rho]
      rw [hR _ _ hF _ hsg hsg]
    rw [e2, CutMP.inverse_function_positive_holds k r Wp Wq D Y p hp F hF g hg]
    simp only [B.rho, ContinuousLinearMap.comp_smul, ContinuousLinearMap.smul_comp]
  refine ⟨Θ, opProp1_of_poly hN D hP hComm, ?_⟩
  intro J hJ x hx
  have hJ' : J ∈ Q.FFl k r D.z D.z' D.π D.π' 0 (Q.OmPlus k r D.z D.z') :=
    ffl_mono (D₁ := JF.Om k r D.z D.z') (D₂ := Q.OmPlus k r D.z D.z')
      (fun g hg hgO => ⟨by simpa [Q.Glev] using hg.1, hgO⟩) hJ
  have hDom := Formalism.FourierDecayAlt.P.JCx2.rma_isDom_omPlus (k := k) (r := r) D.z_mem D.z'_mem
  have hcell : Q.wCell k r (Fin.last r) x.1 * x.2 ∈ Q.OmPlus k r D.z D.z' :=
    Formalism.FourierDecayAlt.P5.Rad.wCell_mem_omPlus D.z_mem D.z'_mem hx.1 hx.2.1 hx.2.2
  have key := hε Wp Wq D.z D.z' D.π D.π' (Q.OmPlus k r D.z D.z') Y D.z_mem D.z'_mem hDom J hJ' x.1 hx.1 x.2
    hx.2.1 hcell
  rw [← key]
  have hW0 : Q.wCell k r (Fin.last r) x.1 * x.2 ∈ Q.Glev k r 0 :=
    Formalism.FourierDecayAlt.P.Qx3.glev_mul (Formalism.FourierDecayAlt.P.Qx3.wlist_glev hx.1 _)
      (Formalism.FourierDecayAlt.P.Qx3.glev_mono (Fin.zero_le _) hx.2.1)
  have hWG : Q.wCell k r (Fin.last r) x.1 * x.2 ∈ B.GV k r := by simpa [Q.Glev] using hW0.1
  have hCk : B.CkOn ((r + k : ℕ) : ℕ∞) (Q.Glev k r 0 ∩ JF.Om k r D.z D.z') J := by
    intro g₀ hg₀
    obtain ⟨U', F', hU', hg₀U, hc, he⟩ := hJ.1 g₀ hg₀
    refine ⟨U', F', hU', hg₀U, hc.of_le (by exact_mod_cast le_top), fun y hy hyG => he y hy ?_⟩
    simpa [Q.Glev] using hyG
  simp only [Q.resG]
  rw [hR _ J hCk _ ⟨hW0, hWG, hcell⟩ hWG, smul_smul, smul_smul, smul_smul]
  congr 1
  ring

theorem rDSOpRvGrp_of_nice (hN : RDSNicePoly) : RDSOpRvGrp := by
  intro Wp Wq _ _ _ _ _ _ k r D Y σ
  obtain ⟨ε, hε⟩ := CutMP.jDRRadM_of_parts CutMP.mirror_residue_beta_holds CutMP.mirror_residue_top_holds CutMP.GrpMA.mirror_residue_first_move
    CutMP.mirror_residue_second_move (CutMP.jDRvConseq_of CutMP.mirror_residue_continuity) k r
  obtain ⟨Θ, hP, hO, hR⟩ := CutMP.rim_real (Wp := Wp) (Wq := Wq) D.z D.z' Y (σ * ε)
  have hComm : B.Commutes D (B.GPos D) Θ := by
    intro p hp F hF g hg
    rw [hO] at hF
    have hgG : g ∈ B.GV k r := hg.1
    have hsg : B.sgs p g ∈ B.GV k r := Formalism.FourierDecayAlt.P.B6.conj_product_mem_unitary_group D hp hgG
    rw [hR _ _ (Formalism.FourierDecayAlt.P.B5.ckOn_rho D hp hF) g hgG hgG]
    have e2 : B.rho D p (B.opApply Θ F) g =
        B.rho D p (fun x => (σ * ε) • CutMP.rvhatOp k r D.z D.z' Y F x) g := by
      simp only [B.rho]
      rw [hR _ _ hF _ hsg hsg]
    rw [e2, CutMP.inverse_function_minus_holds k r Wp Wq D Y p hp F hF g hg]
    simp only [B.rho, ContinuousLinearMap.comp_smul, ContinuousLinearMap.smul_comp]
  refine ⟨Θ, opProp1_of_poly hN D hP hComm, ?_⟩
  intro J hJ x hx
  have hJ' : J ∈ Q.FFl k r D.z D.z' D.π D.π' 0 (Q.OmPlus k r D.z D.z') :=
    ffl_mono (D₁ := JF.Om k r D.z D.z') (D₂ := Q.OmPlus k r D.z D.z')
      (fun g hg hgO => ⟨by simpa [Q.Glev] using hg.1, hgO⟩) hJ
  have hDom := Formalism.FourierDecayAlt.P.JCx2.rma_isDom_omPlus (k := k) (r := r) D.z_mem D.z'_mem
  have hcell : Q.wCell k r (Fin.last r) x.1 * x.2 ∈ Q.OmPlus k r D.z D.z' :=
    Formalism.FourierDecayAlt.P5.Rad.wCell_mem_omPlus D.z_mem D.z'_mem hx.1 hx.2.1 hx.2.2
  have key := hε Wp Wq D.z D.z' D.π D.π' (Q.OmPlus k r D.z D.z') Y D.z_mem D.z'_mem hDom J hJ' x.1 hx.1 x.2
    hx.2.1 hcell
  rw [← key]
  have hW0 : Q.wCell k r (Fin.last r) x.1 * x.2 ∈ Q.Glev k r 0 :=
    Formalism.FourierDecayAlt.P.Qx3.glev_mul (Formalism.FourierDecayAlt.P.Qx3.wlist_glev hx.1 _)
      (Formalism.FourierDecayAlt.P.Qx3.glev_mono (Fin.zero_le _) hx.2.1)
  have hWG : Q.wCell k r (Fin.last r) x.1 * x.2 ∈ B.GV k r := by simpa [Q.Glev] using hW0.1
  have hCk : B.CkOn ((r + k : ℕ) : ℕ∞) (Q.Glev k r 0 ∩ JF.Om k r D.z D.z') J := by
    intro g₀ hg₀
    obtain ⟨U', F', hU', hg₀U, hc, he⟩ := hJ.1 g₀ hg₀
    refine ⟨U', F', hU', hg₀U, hc.of_le (by exact_mod_cast le_top), fun y hy hyG => he y hy ?_⟩
    simpa [Q.Glev] using hyG
  simp only [Q.resG]
  rw [hR _ J hCk _ ⟨hW0, hWG, hcell⟩ hWG, smul_smul, smul_smul, smul_smul]
  congr 1
  ring

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpRGrp =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSNicePoly =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSNicePoly", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpRGrp\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDCCLower\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDHatPolyOK\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSPolyProp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.P.BetaSesquilinearity

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

theorem spectral_nice_polynomial : RDSNicePoly := by
  intro k r Wp Wq _ _ _ _ _ _ D o κ Θ hΘ F hF
  obtain ⟨-, hGl, -⟩ := CutMP.polynomial_decay_admissible k r Wp Wq o κ Θ hΘ
  have hG : CutMP.GlobCoef Θ (κ : ℝ) := hGl κ le_rfl
  have hκ : (0 : ℝ) ≤ κ := Nat.cast_nonneg κ
  obtain ⟨ε, hε, hFck, hFcc, hFs⟩ := hF
  have hO : IsOpen {g : B.Mat k r | Gf k r D.z D.z' g < ε} := isOpen_lt (Gf_cont _ _) continuous_const
  have hz : ∀ g ∈ B.GV k r, g ∈ {g : B.Mat k r | Gf k r D.z D.z' g < ε} → F g = 0 := by
    intro g hg hgO
    by_contra hne
    exact absurd hgO (not_lt.2 (hFs g hg hne))
  refine ⟨⟨ε, hε, ?_, ?_, ?_⟩, ⟨ε, hε, ?_, ?_, ?_⟩⟩
  · exact (CutMP.class_lower_decay_holds k r Wp Wq Θ κ 0 hκ hG F hFck (fun m => hFcc _ m)).1
  · intro A' m'
    have h := (CutMP.class_lower_decay_holds k r Wp Wq Θ κ (A' + κ) hκ hG F hFck (fun m => hFcc _ m)).2 m'
    rwa [add_sub_cancel_right] at h
  · intro g hg hne
    by_contra hlt
    exact hne (rdsp_opApply_vanish Θ hO hz g hg (not_le.1 hlt))
  · exact (rdsp_opAdj_cc Θ κ hG F hFck 0 (fun m => hFcc _ m)).1
  · intro A' m'
    exact (rdsp_opAdj_cc Θ κ hG F hFck A' (fun m => hFcc _ m)).2 m'
  · intro g hg hne
    by_contra hlt
    exact hne (rdsp_opAdj_vanish Θ hO hz g hg (not_le.1 hlt))

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSNicePoly =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpRGrpFinal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpRGrpFinal", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpR\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSNicePoly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutSE

theorem spectral_right_group_action : RDSOpRGrp := rDSOpRGrp_of_nice spectral_nice_polynomial

theorem spectral_adjoint_right_group : RDSOpRvGrp := rDSOpRvGrp_of_nice spectral_nice_polynomial

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpRGrpFinal =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpX =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpX", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpR\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ZinvBound\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAlgebraFacts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellValues\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorEquivariance\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliVectorFrame\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutoffIteratedFDerivBounded\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.HomogeneityNaturalDegree\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HsVecApply\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvMulVecOfFixedVector\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftOfFunctions\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPIntegralOfPlaces\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.XFibreOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5

namespace OpX

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

open Formalism.FourierDecayAlt.P.BetaSesquilinearity Formalism.FourierDecayAlt.P.AdmissibleLieWords PI.UnitaryCorollaryDerivatives.CRH

section ubl

variable {k r : ℕ} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

theorem ckOn_of_contDiff {m : ℕ∞} {f : B.Mat k r → E} (hf : ContDiff ℝ ∞ f) : B.CkOn m (B.GV k r) f :=
  sCkOn_mono le_top fun _ _ => ⟨Set.univ, f, isOpen_univ, trivial, hf.contDiffOn, fun _ _ _ => rfl⟩

theorem ubl_add' {f₁ f₂ : B.Mat k r → E} {S : Set (B.Mat k r)} (hSG : S ⊆ B.GV k r) {n e γ : ℕ}
    (h₁ : UBL f₁ S n e γ) (h₂ : UBL f₂ S n e γ) : UBL (fun g => f₁ g + f₂ g) S n e γ := by
  obtain ⟨⟨C₁, hC₁, hb₁⟩, hl₁⟩ := h₁
  obtain ⟨⟨C₂, hC₂, hb₂⟩, hl₂⟩ := h₂
  refine ⟨⟨C₁ + C₂, add_nonneg hC₁ hC₂, fun w hw g hg => ?_⟩, fun g hg => ?_⟩
  · obtain ⟨a, ha, V, hV, hgV, haa⟩ := hl₁ g hg
    obtain ⟨b, hb, W, hW, hgW, hbb⟩ := hl₂ g hg
    have hlie := admissible_word_mem_lie hw
    have hG := hSG hg
    have e0 : Dw w (fun g => f₁ g + f₂ g) g = Dw w (fun g => a g + b g) g :=
      Dw_congr_loc hlie (hV.inter hW) (fun g' hG' hg' => by simp [haa g' hG' hg'.1, hbb g' hG' hg'.2]) g hG
        ⟨hgV, hgW⟩
    rw [e0, Dw_add hlie (ckOn_of_contDiff ha) (ckOn_of_contDiff hb) g hG,
      ← Dw_congr_loc hlie hV haa g hG hgV, ← Dw_congr_loc hlie hW hbb g hG hgW]
    have b1 := hb₁ w hw g hg
    have b2 := hb₂ w hw g hg
    calc ‖Dw w f₁ g + Dw w f₂ g‖ ≤ ‖Dw w f₁ g‖ + ‖Dw w f₂ g‖ := norm_add_le _ _
      _ ≤ C₁ * B.gN g ^ (e + γ * w.length) + C₂ * B.gN g ^ (e + γ * w.length) := add_le_add b1 b2
      _ = (C₁ + C₂) * B.gN g ^ (e + γ * w.length) := by ring
  · obtain ⟨a, ha, V, hV, hgV, haa⟩ := hl₁ g hg
    obtain ⟨b, hb, W, hW, hgW, hbb⟩ := hl₂ g hg
    exact ⟨fun g => a g + b g, ha.add hb, V ∩ W, hV.inter hW, ⟨hgV, hgW⟩, fun g' hG' hg' => by
      simp [haa g' hG' hg'.1, hbb g' hG' hg'.2]⟩

theorem ubl_smulC (c : ℂ) {f : B.Mat k r → E} {S : Set (B.Mat k r)} (hSG : S ⊆ B.GV k r) {n e γ : ℕ}
    (h : UBL f S n e γ) : UBL (fun g => c • f g) S n e γ := by
  have := ubl_clm ((c • ContinuousLinearMap.id ℂ E).restrictScalars ℝ) hSG h
  simpa using this

theorem ubl_sumRange {f : ℕ → B.Mat k r → E} {S : Set (B.Mat k r)} (hSG : S ⊆ B.GV k r) {n e γ : ℕ}
    (h : ∀ i, UBL (f i) S n e γ) : ∀ N : ℕ, UBL (fun g => ∑ i ∈ Finset.range N, f i g) S n e γ
  | 0 => by
    simpa using ubl_mono hSG (ubl_const (0 : E) hSG n γ) (Nat.zero_le e) le_rfl
  | N + 1 => by
    have := ubl_add' hSG (ubl_sumRange hSG h N) (h N)
    simpa [Finset.sum_range_succ] using this

end ubl

section radial

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp]
  [NormedAddCommGroup Wq] [NormedSpace ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

def OpAt (x : (Fin r → ℂ) × Mx k r) (T : Module.End ℂ (RadSp k r z z' π π'))
    (M : (Wq →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wp)) : Prop :=
  ∀ Φ : RadSp k r z z' π π', (T Φ : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 = M ((Φ : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2)

theorem opAt_aeval {x : (Fin r → ℂ) × Mx k r} {a : Pr (RadSp k r z z' π π')}
    {M : (Wq →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wp)} (h : OpAt x a.1 M) (p : Polynomial ℂ) :
    OpAt x (Polynomial.aeval a p).1 (Polynomial.aeval M p) := by
  induction p using Polynomial.induction_on with
  | C c =>
    intro Φ
    rw [Polynomial.aeval_C, Polynomial.aeval_C]
    show ((c • Φ : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 = _
    simp [Algebra.algebraMap_eq_smul_one]
  | add p q hp hq =>
    intro Φ
    rw [map_add (f := _), map_add (f := _)]
    show (((Polynomial.aeval a p).1 Φ + (Polynomial.aeval a q).1 Φ : RadSp k r z z' π π') :
      Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 = _
    simp only [Submodule.coe_add, Pi.add_apply, ContinuousLinearMap.add_apply]
    rw [hp Φ, hq Φ]
  | monomial n c hn =>
    intro Φ
    have e1 : Polynomial.C c * Polynomial.X ^ (n + 1) = Polynomial.C c * Polynomial.X ^ n * Polynomial.X := by
      rw [pow_succ, mul_assoc]
    have e2 : Polynomial.aeval a (Polynomial.C c * Polynomial.X ^ n * Polynomial.X) =
        Polynomial.aeval a (Polynomial.C c * Polynomial.X ^ n) * a := by
      simp only [map_mul, Polynomial.aeval_X]
    have e3 : Polynomial.aeval M (Polynomial.C c * Polynomial.X ^ n * Polynomial.X) =
        Polynomial.aeval M (Polynomial.C c * Polynomial.X ^ n) * M := by
      simp only [map_mul, Polynomial.aeval_X]
    rw [e1, e2, e3]
    show ((Polynomial.aeval a (Polynomial.C c * Polynomial.X ^ n)).1 (a.1 Φ) : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 = _
    rw [hn (a.1 Φ), h Φ]
    rfl

end radial

section equiv

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [NormedAddCommGroup Wq] [NormedSpace ℂ Wq]

theorem aeval_intertwine (φ : (Wq →L[ℂ] Wp) → (Wq →L[ℂ] Wp)) (hφa : ∀ A B, φ (A + B) = φ A + φ B)
    (hφs : ∀ (c : ℂ) A, φ (c • A) = c • φ A) {M N : (Wq →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wp)}
    (h : ∀ A, M (φ A) = φ (N A)) (p : Polynomial ℂ) :
    ∀ A, Polynomial.aeval M p (φ A) = φ (Polynomial.aeval N p A) := by
  induction p using Polynomial.induction_on with
  | C c =>
    intro A
    simp [Polynomial.aeval_C, Algebra.algebraMap_eq_smul_one, hφs]
  | add p q hp hq =>
    intro A
    simp only [map_add (f := _), ContinuousLinearMap.add_apply, hp, hq, hφa]
  | monomial n c hn =>
    intro A
    have e1 : Polynomial.C c * Polynomial.X ^ (n + 1) = Polynomial.C c * Polynomial.X ^ n * Polynomial.X := by
      rw [pow_succ, mul_assoc]
    have e3 : ∀ K : (Wq →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wp), Polynomial.aeval K (Polynomial.C c * Polynomial.X ^ n * Polynomial.X) =
        Polynomial.aeval K (Polynomial.C c * Polynomial.X ^ n) * K := fun K => by
      simp only [map_mul, Polynomial.aeval_X]
    rw [e1, e3 M, e3 N, ContinuousLinearMap.mul_apply, ContinuousLinearMap.mul_apply, h, hn]

end equiv

end OpX

section main

open OpX

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

open Formalism.FourierDecayAlt.P.BetaSesquilinearity Formalism.FourierDecayAlt.P.AdmissibleLieWords PI.UnitaryCorollaryDerivatives.CRH

theorem spectral_operator_X : RDSOpX := by
  intro Wp Wq _ _ _ _ _ _ P z z' π π' X μ L st l0 D hD hl1 hl2 hz hz' hπ hπ' hr Y hYi
  subst hz hz' hπ hπ'
  obtain ⟨B0, -, hxf⟩ := x_fibre_of_parts big_cell_values omega_polynomial_facts capelli_vector_frame
    capelli_vector_equivariance Wp Wq P D X
  obtain ⟨hfb, hfeq, hfrad⟩ := hxf Y
  obtain ⟨-, -, hpoly⟩ := actual_algebra_facts Wp Wq P D.z D.z' D.π D.π' X μ L st l0 hD
  obtain ⟨q, hq⟩ := hpoly Y hYi
  obtain ⟨-, -, hL, hQQ, -, -, -, hst⟩ := hD
  set s : ℂ := M.sgn P l0 with hs
  set xf : B.Mat P.k P.r → C6.EndH Wp Wq := TL.xFib D B0 (Y + ((P.k : ℂ) - 2) / 2) with hxfdef
  set cf : B.Mat P.k P.r → C6.EndH Wp Wq := fun g =>
    ((Gf P.k P.r D.z D.z' g : ℝ) : ℂ)⁻¹ • Polynomial.aeval (s • xf g) q with hcf
  let T0 : B.DTerm P.k P.r Wp Wq :=
    { coef := cf
      coefAdj := fun g => HilbertSchmidtVectorization.adjH (cf g)
      word := []
      word_lie := fun X hX => by simp at hX
      adj_id := fun g A B' => HilbertSchmidtVectorization.adjH_spec (cf g) A B' }

  let fib : Fin 1 → B.Mat P.k P.r → C6.EndH Wp Wq := fun _ => xf
  have hfib : ∀ j, C6.FibBound D (fib j) := fun _ => hfb
  have hP1 : U.IsPolyDeg 0 (fun _ : B.Mat P.k P.r => (1 : ℂ)) := ⟨MvPolynomial.C 1, by simp, fun g => by simp⟩
  have hsum : cf = fun g => ∑ i ∈ Finset.range (q.natDegree + 1), (q.coeff i * s ^ i) •
      (((fun _ : B.Mat P.k P.r => (1 : ℂ)) g * C6.monoM D 0 0 1 g) •
        C6.Epart fib (List.replicate i ((0 : Fin 1), ([] : List (B.Mat P.k P.r)))) g) := by
    funext g
    simp only [hcf]
    rw [Polynomial.aeval_eq_sum_range, Finset.smul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    have hm : C6.monoM D 0 0 1 g = (((Gf P.k P.r D.z D.z' g : ℝ) : ℂ))⁻¹ := by simp [C6.monoM]
    have he : C6.Epart fib (List.replicate i ((0 : Fin 1), ([] : List (B.Mat P.k P.r)))) g = xf g ^ i := by
      simp [C6.Epart, B.Rw, List.map_replicate, List.prod_replicate, fib]
    rw [hm, he, smul_pow, smul_smul, smul_smul, smul_smul, one_mul]
    congr 1
    ring
  have hU : ∀ ε : ℝ, 0 < ε → ∀ n : ℕ,
      UBL cf {g | g ∈ B.GV P.k P.r ∧ ε ≤ Gf P.k P.r D.z D.z' g} n 0 (3 * (P.r + 1)) := by
    intro ε hε n
    set S : Set (B.Mat P.k P.r) := {g | g ∈ B.GV P.k P.r ∧ ε ≤ Gf P.k P.r D.z D.z' g} with hSdef
    have hSG : S ⊆ B.GV P.k P.r := fun g hg => hg.1
    set c₀ : ℝ := min ε (ε ^ 2) with hc₀
    have hc₀p : 0 < c₀ := lt_min hε (by positivity)
    have hSD : ∀ g ∈ S, ∀ l, (l ∈ (∅ : Finset (Fin (P.r + 2))) ∨ l = Fin.last (P.r + 1)) →
        c₀ ≤ Complex.normSq (Dmin P.k P.r D.z D.z' g l) := by
      intro g hg l hl
      rcases hl with hl | rfl
      · simp at hl
      · have := Formalism.FourierDecayAlt.P.gram_function_last_minor P.k P.r D.z D.z' D.T_pos.le D.T'_pos.le g ε hg.2
        exact (min_le_left _ _).trans this
    have hSGf : ∀ g ∈ S, c₀ ≤ Complex.normSq ((Gf P.k P.r D.z D.z' g : ℝ) : ℂ) := by
      intro g hg
      rw [Complex.normSq_ofReal]
      have h1 := hg.2
      have : ε ^ 2 ≤ Gf P.k P.r D.z D.z' g * Gf P.k P.r D.z D.z' g := by nlinarith
      exact (min_le_right _ _).trans this
    rw [hsum]
    refine ubl_sumRange hSG (fun i => ubl_smulC _ hSG ?_) _
    have hes : ∀ e ∈ List.replicate i ((0 : Fin 1), ([] : List (B.Mat P.k P.r))), ∀ X ∈ e.2, B.inLie P.k P.r X := by
      intro e he X hX
      rw [List.mem_replicate] at he
      rw [he.2] at hX
      simp at hX
    have h := Formalism.FourierDecayAlt.P.AdmissibleLieWords.ubl_coefP D fib hfib ∅ (fun _ => (1 : ℂ)) (0 : Fin (P.r + 2) → ℕ)
      (0 : Fin (P.r + 2) → ℕ) 1 (List.replicate i ((0 : Fin 1), ([] : List (B.Mat P.k P.r)))) hP1
      (fun _ _ _ => ⟨rfl, rfl⟩) hes hε (fun g hg => hg) hc₀p hSD hSGf n
    exact ubl_mono hSG h (by simp) le_rfl
  have hUa : ∀ ε : ℝ, 0 < ε → ∀ n : ℕ,
      UBL (fun g => HilbertSchmidtVectorization.adjH (cf g)) {g | g ∈ B.GV P.k P.r ∧ ε ≤ Gf P.k P.r D.z D.z' g} n 0 (3 * (P.r + 1)) :=
    fun ε hε n => ubl_clm HilbertSchmidtVectorization.adjR
      (S := {g | g ∈ B.GV P.k P.r ∧ ε ≤ Gf P.k P.r D.z D.z' g})
      (fun g hg => hg.1) (hU ε hε n)
  have hck : ∀ f : B.Mat P.k P.r → C6.EndH Wp Wq,
      (∀ ε : ℝ, 0 < ε → ∀ n : ℕ, UBL f {g | g ∈ B.GV P.k P.r ∧ ε ≤ Gf P.k P.r D.z D.z' g} n 0 (3 * (P.r + 1))) →
      B.CkOn ⊤ (B.GPos D) f := by
    intro f hf g₀ hg₀
    obtain ⟨-, hl⟩ := hf _ hg₀.2 0
    obtain ⟨f', hf', V, hV, hgV, hff⟩ := hl g₀ ⟨hg₀.1, le_rfl⟩
    exact ⟨V, f', hV, hgV, hf'.contDiffOn, fun g hg hgG => hff g hgG hg⟩
  refine ⟨T0, ⟨rfl, hck cf hU, hck _ hUa, ?_, ?_⟩, ?_⟩
  ·
    intro p hp g hg A
    have hgd : g ∈ C6.domL D ∅ := ⟨hg.1, hg.2, fun l hl => by simp at hl⟩
    set φ : (Wq →L[ℂ] Wp) → (Wq →L[ℂ] Wp) := fun J =>
      (D.π (Matrix.of p.1.1)).comp (J.comp (D.π' (Matrix.of p.2.1)⁻¹)) with hφ
    have hφa : ∀ A B', φ (A + B') = φ A + φ B' := fun A B' => by
      simp only [hφ, ContinuousLinearMap.add_comp, ContinuousLinearMap.comp_add]
    have hφs : ∀ (c : ℂ) A, φ (c • A) = c • φ A := fun c A => by
      simp only [hφ, ContinuousLinearMap.smul_comp, ContinuousLinearMap.comp_smul]
    have hint : ∀ J, (s • xf g) (φ J) = φ ((s • xf (B.sgs p g)) J) := fun J => by
      rw [ContinuousLinearMap.smul_apply, ContinuousLinearMap.smul_apply, hφs]
      exact congrArg (s • ·) (hfeq p hp g hgd J)
    have h2 := aeval_intertwine φ hφa hφs hint q A
    show cf g (φ A) = φ (cf (B.sgs p g) A)
    simp only [hcf, ContinuousLinearMap.smul_apply]
    rw [h2, hφs, Formalism.FourierDecayAlt.P.JCx1.needs.gf_sgs D hp g]
  ·
    intro ε hε m
    obtain ⟨⟨C1, hC1, hb1⟩, -⟩ := hU ε hε m
    obtain ⟨⟨C2, hC2, hb2⟩, -⟩ := hUa ε hε m
    refine ⟨max C1 C2, ((3 * (P.r + 1) * m : ℕ) : ℝ), by positivity, fun u v hu hv hl g hg hgε => ?_⟩
    have hw : admitted m (wL u ++ wR v) := ⟨u, v, hu, hv, hl, rfl⟩
    have hS : g ∈ {g | g ∈ B.GV P.k P.r ∧ ε ≤ Gf P.k P.r D.z D.z' g} := ⟨hg, hgε⟩
    have hg1 := gN_ge_one hg
    have hpow : B.gN g ^ (0 + 3 * (P.r + 1) * (wL u ++ wR v).length) ≤ B.gN g ^ ((3 * (P.r + 1) * m : ℕ) : ℝ) := by
      rw [Real.rpow_natCast]
      apply pow_le_pow_right₀ hg1
      rw [len_LR]
      have := Nat.mul_le_mul_left (3 * (P.r + 1)) hl
      omega
    have hpos : 0 ≤ B.gN g ^ (0 + 3 * (P.r + 1) * (wL u ++ wR v).length) := by positivity
    constructor
    · show ‖B.dLR u v cf g‖ ≤ _
      rw [dLR_eq]
      calc _ ≤ C1 * B.gN g ^ (0 + 3 * (P.r + 1) * (wL u ++ wR v).length) := hb1 _ hw g hS
        _ ≤ max C1 C2 * B.gN g ^ ((3 * (P.r + 1) * m : ℕ) : ℝ) :=
          mul_le_mul (le_max_left _ _) hpow hpos (le_trans hC1 (le_max_left _ _))
    · show ‖B.dLR u v (fun g => HilbertSchmidtVectorization.adjH (cf g)) g‖ ≤ _
      rw [dLR_eq]
      calc _ ≤ C2 * B.gN g ^ (0 + 3 * (P.r + 1) * (wL u ++ wR v).length) := hb2 _ hw g hS
        _ ≤ max C1 C2 * B.gN g ^ ((3 * (P.r + 1) * m : ℕ) : ℝ) :=
          mul_le_mul (le_max_right _ _) hpow hpos (le_trans hC2 (le_max_right _ _))
  ·
    intro Ψ x hx
    set g : B.Mat P.k P.r := wCell P.k P.r (Fin.last P.r) x.1 * x.2 with hgdef
    have hcell := big_cell_values P.k P.r Wp Wq D
    have hGGpos : (0 : ℝ) < GGl P.k P.r D.z D.z' x.2 := hx.2.2
    have hGGi : Formalism.FourierDecayAlt.P.TLB.MulAt x L.GGi.1 ((GGl P.k P.r D.z D.z' x.2 : ℂ))⁻¹ := by
      rw [hL.2.2.2.2.2.2.2.2.2.2.2.1]; exact Formalism.FourierDecayAlt.P.TLB.act_fn X x hx 5
    have hDri : Formalism.FourierDecayAlt.P.TLB.MulAt x L.Dri.1 (∏ a, (x.1 a)⁻¹) :=
      Formalism.FourierDecayAlt.P.TLB.mulAt_ofFn L.ci _ fun l => Formalism.FourierDecayAlt.P.TLB.act_ci X L hL x l
    have hDrbi : Formalism.FourierDecayAlt.P.TLB.MulAt x L.Drbi.1 (∏ a, (star (x.1 a))⁻¹) :=
      Formalism.FourierDecayAlt.P.TLB.mulAt_ofFn L.cbi _ fun l => Formalism.FourierDecayAlt.P.TLB.act_cbi X L hL x l
    have hGi : Formalism.FourierDecayAlt.P.TLB.MulAt x (_root_.Formalism.FourierDecayAlt.TL.gI L).1 (((Gf P.k P.r D.z D.z' g : ℝ) : ℂ))⁻¹ := by
      rw [hgdef, (hcell x hx).2.2.2, Complex.ofReal_mul, ← Complex.mul_conj, mul_inv, mul_inv,
        ← Finset.prod_inv_distrib, map_prod, ← Finset.prod_inv_distrib]
      exact Formalism.FourierDecayAlt.P.TLB.mulAt_mul (Formalism.FourierDecayAlt.P.TLB.mulAt_mul hDri hDrbi) hGGi
    have hX : OpAt x (st.x Y).1 (s • xf g) := by
      intro Φ
      have e1 : st.x Y = L.GGi * st.QQ Y 1 1 := by rw [hst.tau Y, ← mul_assoc, L.GGi_GG, one_mul]
      rw [e1, hQQ Y]
      show (L.GGi.1 ((s • X.QQ Y 1 1).1 Φ) : Fn P.k P.r (Wq →L[ℂ] Wp)) x.1 x.2 = _
      rw [hGGi]
      have e3 : (s • X.QQ Y 1 1).1 Φ = s • X.t Y 1 1 Φ := by
        rw [Algebra.smul_def]
        rfl
      rw [e3, Submodule.coe_smul, Pi.smul_apply, Pi.smul_apply, hfrad Φ x hx, ContinuousLinearMap.smul_apply,
        smul_smul, smul_smul]
      have hne : ((GGl P.k P.r D.z D.z' x.2 : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hGGpos.ne'
      congr 1
      field_simp
    have hXi : OpAt x (st.xi Y).1 (Polynomial.aeval (s • xf g) q) := by
      rw [hq]; exact opAt_aeval hX q
    show (((_root_.Formalism.FourierDecayAlt.TL.gI L).1 ((st.xi Y).1 Ψ) : RadSp P.k P.r D.z D.z' D.π D.π') : Fn P.k P.r (Wq →L[ℂ] Wp)) x.1 x.2 =
      cf g ((Ψ : Fn P.k P.r (Wq →L[ℂ] Wp)) x.1 x.2)
    rw [hGi, hXi]
    rfl

end main

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpX =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSRhvR =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSRhvR", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpR\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSRhR\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.IsAdmissibleSplittingCharPairMulTwist\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.WeylCellConjTransposeMulApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5

namespace RhvRPf

open RhRPf

theorem pbOp_loc {r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] (l : Fin r)
    {f₁ f₂ : (Fin r → ℂ) → E} (h : ∀ c ∈ OmX r, f₁ c = f₂ c) {c : Fin r → ℂ} (hc : c ∈ OmX r) :
    pbOp l f₁ c = pbOp l f₂ c := by
  have hev : f₁ =ᶠ[nhds c] f₂ := by
    filter_upwards [(Formalism.FourierDecayAlt.P.Qx3.isOpen_OmX r).mem_nhds hc] with c' hc' using h c' hc'
  simp only [pbOp, wirtBar, if_pos hc, hev.fderiv_eq]

theorem vABs_loc {r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] (Y : ℂ) :
    ∀ (i : ℕ) (f₁ f₂ : (Fin r → ℂ) → E), (∀ c ∈ OmX r, f₁ c = f₂ c) →
      ∀ c ∈ OmX r, (vABs r Y i).1 f₁ c = (vABs r Y i).1 f₂ c ∧ (vABs r Y i).2 f₁ c = (vABs r Y i).2 f₂ c
  | 0, f₁, f₂, h, c, hc => ⟨h c hc, rfl⟩
  | i + 1, f₁, f₂, h, c, hc => by
    by_cases hi : i < r
    · simp only [vABs, dif_pos hi]
      have hsub : ∀ c' ∈ OmX r, (Y • f₁ - pbOp ⟨i, hi⟩ f₁) c' = (Y • f₂ - pbOp ⟨i, hi⟩ f₂) c' := by
        intro c' hc'
        simp only [Pi.sub_apply, Pi.smul_apply]
        rw [h c' hc', pbOp_loc _ h hc']
      have hcb : ∀ c' ∈ OmX r, cbOp ⟨i, hi⟩ f₁ c' = cbOp ⟨i, hi⟩ f₂ c' := by
        intro c' hc'
        simp only [cbOp]
        rw [h c' hc']
      have hcbi : ∀ c' ∈ OmX r, cbiOp ⟨i, hi⟩ f₁ c' = cbiOp ⟨i, hi⟩ f₂ c' := by
        intro c' hc'
        simp only [cbiOp]
        rw [h c' hc']
      refine ⟨?_, ?_⟩
      · simp only [Pi.sub_apply]
        rw [(vABs_loc Y i _ _ hsub c hc).1, (vABs_loc Y i _ _ hcb c hc).2]
      · exact (vABs_loc Y i _ _ hcbi c hc).1
    · simp only [vABs, dif_neg hi]
      exact vABs_loc Y i f₁ f₂ h c hc

def rowP {A : Type} [Ring A] [Algebra ℂ A] {r : ℕ} (L : R.LevelData A r) (Y : ℂ) (n : ℕ) :
    Matrix (Fin 2) (Fin 2) A :=
  ((List.ofFn fun l => (L.Tvl Y l)ᵀ).take n).prod

theorem partialProduct_succ {A : Type} [Ring A] [Algebra ℂ A] {r : ℕ} (L : R.LevelData A r) (Y : ℂ) (n : ℕ) (h : n < r) :
    rowP L Y (n + 1) = rowP L Y n * (L.Tvl Y ⟨n, h⟩)ᵀ := by
  unfold rowP
  rw [List.take_add_one, List.prod_append]
  have e : (List.ofFn fun l => (L.Tvl Y l)ᵀ)[n]? = some ((L.Tvl Y ⟨n, h⟩)ᵀ) := by simp [h]
  rw [e]
  simp

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq]
  {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem rowSide_chain (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hL : IsActualLevel X L) (Y : ℂ) :
    ∀ n, n ≤ r → ∀ (Ψ : RadSp k r z z' π π'), ∀ x ∈ DomR k r z z',
      (((rowP L Y n 0 0).1 Ψ : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 =
          crd (vABs r Y n).1 (Ψ : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 ∧
        (((rowP L Y n 0 1).1 Ψ : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 =
          crd (vABs r Y n).2 (Ψ : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2
  | 0, _, Ψ, x, _ => by
    have e : rowP L Y 0 = 1 := by simp [rowP]
    rw [e]
    refine ⟨rfl, ?_⟩
    simp [vABs, crd]
    rfl
  | n + 1, hn, Ψ, x, hx => by
    have h : n < r := by omega
    have ih := rowSide_chain X L hL Y n (by omega)
    have ev : vABs (E := Wq →L[ℂ] Wp) r Y (n + 1) =
        (fun f => (vABs r Y n).1 (Y • f - pbOp ⟨n, h⟩ f) - (vABs r Y n).2 (cbOp ⟨n, h⟩ f),
          fun f => (vABs r Y n).1 (cbiOp ⟨n, h⟩ f)) := by
      show (if h : n < r then _ else _) = _
      rw [dif_pos h]
    have e00 : rowP L Y (n + 1) 0 0 =
        rowP L Y n 0 0 * (algebraMap ℂ _ Y - L.pb ⟨n, h⟩) + rowP L Y n 0 1 * (-L.cb ⟨n, h⟩) := by
      rw [partialProduct_succ L Y n h]
      simp [Matrix.mul_apply, Fin.sum_univ_two, R.LevelData.Tvl]
    have e01 : rowP L Y (n + 1) 0 1 = rowP L Y n 0 0 * L.cbi ⟨n, h⟩ := by
      rw [partialProduct_succ L Y n h]
      simp [Matrix.mul_apply, Fin.sum_univ_two, R.LevelData.Tvl]
    have hpb : JCx2.rma_fst _ (L.pb ⟨n, h⟩) = X.op ⟨n, h⟩ 3 := by rw [hL.2.1]; rfl
    have hcb : JCx2.rma_fst _ (L.cb ⟨n, h⟩) = X.op ⟨n, h⟩ 4 := by rw [hL.2.2.2.2.1]; rfl
    have hcbi : (L.cbi ⟨n, h⟩).1 = X.op ⟨n, h⟩ 5 := by rw [hL.2.2.2.2.2.1]; rfl
    refine ⟨?_, ?_⟩
    · have h1 : (((rowP L Y (n + 1) 0 0).1 Ψ : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 =
          (((rowP L Y n 0 0).1 (Y • Ψ - X.op ⟨n, h⟩ 3 Ψ) : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 -
            (((rowP L Y n 0 1).1 (X.op ⟨n, h⟩ 4 Ψ) : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 := by
        change (JCx2.rma_fst _ (rowP L Y (n + 1) 0 0) Ψ : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 = _
        rw [e00]
        simp only [map_add, map_mul, map_sub, map_neg, AlgHom.commutes, LinearMap.add_apply,
          LinearMap.sub_apply, LinearMap.neg_apply, mul_apply_eq_comp, Module.algebraMap_end_apply,
          hpb, hcb, ← sub_eq_add_neg, Submodule.coe_sub, Pi.sub_apply]
        rfl
      rw [h1, (ih _ x hx).1, (ih _ x hx).2, ev]
      simp only [Submodule.coe_sub, Submodule.coe_smul, X.op_apply]
      rfl
    · have h1 : (((rowP L Y (n + 1) 0 1).1 Ψ : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 =
          (((rowP L Y n 0 0).1 (X.op ⟨n, h⟩ 5 Ψ) : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 := by
        rw [e01, fst_mul_apply, hcbi]
      rw [h1, (ih _ x hx).1, ev]
      simp only [X.op_apply]
      rfl

end RhvRPf

open RhRPf RhvRPf in
theorem spectral_adjoint_rho_action : RDSRhvR := by
  intro Wp Wq _ _ _ _ _ _ P z z' π π' X μ L st l0 hD hl1 hl2 hr Y hY
  obtain ⟨_, _, hL, hQQ, -⟩ := hD
  refine ⟨M.sgn P l0, ?_⟩
  intro J hJ Φ hΦ x hx
  have hT : (L.Tvprod Y)ᵀ = rowP L Y P.r := by
    rw [Formalism.FourierDecayAlt.P.MAx3.Q.Tvprod_transpose L Y, rowP, List.take_of_length_le (by simp)]
  have eA : L.Avr Y = rowP L Y P.r 0 0 := by rw [← hT]; rfl
  have eB : L.Bvr Y = rowP L Y P.r 0 1 := by rw [← hT]; rfl
  have hch := rowSide_chain X L hL Y P.r le_rfl
  have hA : ∀ y ∈ Glev P.k P.r (Fin.last P.r) ∩ Qx8.Dp P.k P.r z z',
      (((L.Avr Y).1 Φ : RadSp P.k P.r z z' π π') : Fn P.k P.r (Wq →L[ℂ] Wp)) x.1 y =
        crd (Q.cmp (vABs P.r Y P.r) 0) (resG P.k P.r (Fin.last P.r) J) x.1 y := by
    intro y hy
    have hxy : (x.1, y) ∈ DomR P.k P.r z z' := ⟨hx.1, hy.1, hy.2⟩
    rw [eA, (hch Φ (x.1, y) hxy).1]
    simp only [crd, Q.cmp, if_true]
    exact (vABs_loc Y P.r _ _ (fun c' hc' => hΦ (c', y) ⟨hc', hy.1, hy.2⟩) x.1 hx.1).1
  have hB : ∀ y ∈ Glev P.k P.r (Fin.last P.r) ∩ Qx8.Dp P.k P.r z z',
      (((L.Bvr Y).1 Φ : RadSp P.k P.r z z' π π') : Fn P.k P.r (Wq →L[ℂ] Wp)) x.1 y =
        crd (Q.cmp (vABs P.r Y P.r) 1) (resG P.k P.r (Fin.last P.r) J) x.1 y := by
    intro y hy
    have hxy : (x.1, y) ∈ DomR P.k P.r z z' := ⟨hx.1, hy.1, hy.2⟩
    rw [eB, (hch Φ (x.1, y) hxy).2]
    simp only [crd, Q.cmp, if_neg (show (1 : Fin 2) ≠ 0 by decide)]
    exact (vABs_loc Y P.r _ _ (fun c' hc' => hΦ (c', y) ⟨hc', hy.1, hy.2⟩) x.1 hx.1).2
  have e1 : (((RhvR L st Y).1 Φ : RadSp P.k P.r z z' π π') : Fn P.k P.r (Wq →L[ℂ] Wp)) x.1 x.2 =
      (((L.Dr).1 ((st.QQ Y 0 1).1 ((L.Avr Y).1 Φ) + (st.QQ Y 1 1).1 ((L.Bvr Y).1 Φ)) :
        RadSp P.k P.r z z' π π') : Fn P.k P.r (Wq →L[ℂ] Wp)) x.1 x.2 := rfl
  rw [e1, dr_apply X L hL, st_fst X st l0 hQQ, st_fst X st l0 hQQ]
  simp only [CutMP.dMul, CutMP.rhvGrp, Submodule.coe_add, Pi.add_apply, LinearMap.smul_apply,
    Submodule.coe_smul, Pi.smul_apply, QL, grp]
  rw [X.t_apply Y 0 1 _ x hx, X.t_apply Y 1 1 _ x hx,
    t_slice_congr X Y 0 1 _ _ x hx hA, t_slice_congr X Y 1 1 _ _ x hx hB]
  simp only [smul_add, smul_comm (CutMP.drF P.r x.1) (M.sgn P l0)]

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSRhvR =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SpectralCompositionZero =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SpectralCompositionZero", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpR\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFOpOKMulGPf\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellVanishingOfCommute\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped Matrix ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace Comp0

section loc

variable {k r : ℕ} {E E' : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [NormedAddCommGroup E']
  [NormedSpace ℂ E']

theorem dx_add_loc {UU : Set (B.Mat k r)} {x : Bool × B.Mat k r} (hx : B.inLie k r x.2) {f₁ f₂ : B.Mat k r → E}
    (h₁ : B.CkOn 1 UU f₁) (h₂ : B.CkOn 1 UU f₂) {g : B.Mat k r} (hgU : g ∈ UU) (hg : g ∈ B.GV k r) :
    BetaSesquilinearity.Dx x (fun g => f₁ g + f₂ g) g = BetaSesquilinearity.Dx x f₁ g + BetaSesquilinearity.Dx x f₂ g := by
  rw [BetaSesquilinearity.Dx_eq]
  exact ((BetaSesquilinearity.CkOn_diff hx h₁ hgU hg).add (BetaSesquilinearity.CkOn_diff hx h₂ hgU hg)).deriv

theorem dw_add_loc {O UU : Set (B.Mat k r)} (hO : IsOpen O) (hOU : ∀ g ∈ B.GV k r, g ∈ O → g ∈ UU)
    {w : List (Bool × B.Mat k r)} (hw : ∀ x ∈ w, B.inLie k r x.2) {f₁ f₂ : B.Mat k r → E}
    (h₁ : B.CkOn ⊤ UU f₁) (h₂ : B.CkOn ⊤ UU f₂) :
    ∀ g ∈ B.GV k r, g ∈ O → BetaSesquilinearity.Dw w (fun g => f₁ g + f₂ g) g = BetaSesquilinearity.Dw w f₁ g + BetaSesquilinearity.Dw w f₂ g := by
  induction w with
  | nil => intro g _ _; rfl
  | cons x w ih =>
    have hw' : ∀ y ∈ w, B.inLie k r y.2 := fun y hy => hw y (by simp [hy])
    have hx : B.inLie k r x.2 := hw x (by simp)
    intro g hg hgO
    show BetaSesquilinearity.Dx x (BetaSesquilinearity.Dw w _) g = BetaSesquilinearity.Dx x (BetaSesquilinearity.Dw w f₁) g + BetaSesquilinearity.Dx x (BetaSesquilinearity.Dw w f₂) g
    rw [BetaSesquilinearity.Dx_congr_loc hx hO (f₂ := fun h => BetaSesquilinearity.Dw w f₁ h + BetaSesquilinearity.Dw w f₂ h) (ih hw') g hg hgO]
    exact dx_add_loc hx (BetaSesquilinearity.CkOn_Dw hw' (BetaSesquilinearity.sCkOn_mono le_top h₁)) (BetaSesquilinearity.CkOn_Dw hw' (BetaSesquilinearity.sCkOn_mono le_top h₂))
      (hOU g hg hgO) hg

theorem dw_clm_loc {O UU : Set (B.Mat k r)} (hO : IsOpen O) (hOU : ∀ g ∈ B.GV k r, g ∈ O → g ∈ UU)
    (L : E →L[ℂ] E') : ∀ (w : List (Bool × B.Mat k r)), (∀ x ∈ w, B.inLie k r x.2) →
    ∀ {f : B.Mat k r → E}, B.CkOn ⊤ UU f →
      ∀ g ∈ B.GV k r, g ∈ O → BetaSesquilinearity.Dw w (fun h => L (f h)) g = L (BetaSesquilinearity.Dw w f g)
  | [], _, _, _, _, _, _ => rfl
  | x :: w, hw, f, hf, g, hg, hgO => by
    have hw' : ∀ y ∈ w, B.inLie k r y.2 := fun y hy => hw y (by simp [hy])
    have hx : B.inLie k r x.2 := hw x (by simp)
    show BetaSesquilinearity.Dx x (BetaSesquilinearity.Dw w (fun h => L (f h))) g = L (BetaSesquilinearity.Dx x (BetaSesquilinearity.Dw w f) g)
    rw [BetaSesquilinearity.Dx_congr_loc hx hO (f₂ := fun h => L (BetaSesquilinearity.Dw w f h))
      (fun h hh hhO => dw_clm_loc hO hOU L w hw' hf h hh hhO) g hg hgO]
    have hD : B.CkOn 1 UU (BetaSesquilinearity.Dw w f) := BetaSesquilinearity.CkOn_Dw hw' (BetaSesquilinearity.sCkOn_mono le_top hf)
    have h1 := BetaSesquilinearity.CkOn_diff hx hD (hOU g hg hgO) hg
    have h2 := (L.restrictScalars ℝ).hasFDerivAt.comp_hasDerivAt (0 : ℝ) h1
    rw [BetaSesquilinearity.Dx_eq]
    exact h2.deriv

theorem ckOn_top_dx {UU : Set (B.Mat k r)} {x : Bool × B.Mat k r} (hx : B.inLie k r x.2) {f : B.Mat k r → E}
    (hf : B.CkOn ⊤ UU f) : B.CkOn ⊤ UU (BetaSesquilinearity.Dx x f) :=
  BetaSesquilinearity.CkOn_Dx (m := ⊤) hx (by rw [top_add]; exact hf)

theorem leib_loc {O UU : Set (B.Mat k r)} (hO : IsOpen O) (hOU : ∀ g ∈ B.GV k r, g ∈ O → g ∈ UU)
    (g : B.Mat k r) (hg : g ∈ B.GV k r) (hgO : g ∈ O) (M : ℝ) (w : List (Bool × B.Mat k r)) :
    ∀ (a : B.Mat k r → (E →L[ℂ] E')) (Φ : B.Mat k r → E), (∀ x ∈ w, B.inLie k r x.2) →
      B.CkOn ⊤ UU a → B.CkOn ⊤ UU Φ →
      (∀ w₁ w₂ : List (Bool × B.Mat k r), w₁.Sublist w → w₂.Sublist w → w₁.length + w₂.length = w.length →
        ‖BetaSesquilinearity.Dw w₁ a g‖ * ‖BetaSesquilinearity.Dw w₂ Φ g‖ ≤ M) →
      ‖BetaSesquilinearity.Dw w (BetaSesquilinearity.ap a Φ) g‖ ≤ 2 ^ w.length * M := by
  induction w using List.reverseRecOn with
  | nil =>
    intro a Φ _ _ _ hM
    have := hM [] [] (List.Sublist.refl _) (List.Sublist.refl _) rfl
    simp only [BetaSesquilinearity.Dw, List.foldr_nil, List.length_nil, pow_zero, one_mul] at this ⊢
    exact ((a g).le_opNorm _).trans this
  | append_singleton w x ih =>
    intro a Φ hw ha hΦ hM
    have hw' : ∀ y ∈ w, B.inLie k r y.2 := fun y hy => hw y (by simp [hy])
    have hx : B.inLie k r x.2 := hw x (by simp)
    have hDa : B.CkOn ⊤ UU (BetaSesquilinearity.Dx x a) := ckOn_top_dx hx ha
    have hDΦ : B.CkOn ⊤ UU (BetaSesquilinearity.Dx x Φ) := ckOn_top_dx hx hΦ
    have hleib : ∀ h ∈ B.GV k r, h ∈ O →
        BetaSesquilinearity.Dx x (BetaSesquilinearity.ap a Φ) h = BetaSesquilinearity.ap (BetaSesquilinearity.Dx x a) Φ h + BetaSesquilinearity.ap a (BetaSesquilinearity.Dx x Φ) h := by
      intro h hh hhO
      have h1 := BetaSesquilinearity.CkOn_diff hx (BetaSesquilinearity.sCkOn_mono le_top ha) (hOU h hh hhO) hh
      have h2 := BetaSesquilinearity.CkOn_diff hx (BetaSesquilinearity.sCkOn_mono le_top hΦ) (hOU h hh hhO) hh
      have h3 := (ContinuousLinearMap.restrictScalarsL ℂ E E' ℝ ℝ).hasFDerivAt.comp_hasDerivAt (0 : ℝ) h1
      have h4 := h3.clm_apply h2
      rw [BetaSesquilinearity.Dx_eq]
      have h5 := h4.deriv
      simp only [Function.comp, BetaSesquilinearity.crv_zero] at h5
      exact h5
    have e1 : BetaSesquilinearity.Dw (w ++ [x]) (BetaSesquilinearity.ap a Φ) g =
        BetaSesquilinearity.Dw w (BetaSesquilinearity.ap (BetaSesquilinearity.Dx x a) Φ) g + BetaSesquilinearity.Dw w (BetaSesquilinearity.ap a (BetaSesquilinearity.Dx x Φ)) g := by
      rw [BetaSesquilinearity.Dw_append]
      show BetaSesquilinearity.Dw w (BetaSesquilinearity.Dx x (BetaSesquilinearity.ap a Φ)) g = _
      rw [BetaSesquilinearity.Dw_congr_loc hw' hO (f₂ := fun h => BetaSesquilinearity.ap (BetaSesquilinearity.Dx x a) Φ h + BetaSesquilinearity.ap a (BetaSesquilinearity.Dx x Φ) h) hleib g hg hgO]
      exact dw_add_loc hO hOU hw' (CutBP.ckOn_apply hDa hΦ) (CutBP.ckOn_apply ha hDΦ) g hg hgO
    have b1 := ih (BetaSesquilinearity.Dx x a) Φ hw' hDa hΦ (by
      intro w₁ w₂ h₁ h₂ hl
      have := hM (w₁ ++ [x]) w₂ (List.Sublist.append h₁ (List.Sublist.refl _))
        (h₂.trans (List.sublist_append_left _ _)) (by simp; omega)
      rwa [BetaSesquilinearity.Dw_append] at this)
    have b2 := ih a (BetaSesquilinearity.Dx x Φ) hw' ha hDΦ (by
      intro w₁ w₂ h₁ h₂ hl
      have := hM w₁ (w₂ ++ [x]) (h₁.trans (List.sublist_append_left _ _))
        (List.Sublist.append h₂ (List.Sublist.refl _)) (by simp; omega)
      rwa [BetaSesquilinearity.Dw_append] at this)
    rw [e1]
    calc ‖BetaSesquilinearity.Dw w (BetaSesquilinearity.ap (BetaSesquilinearity.Dx x a) Φ) g + BetaSesquilinearity.Dw w (BetaSesquilinearity.ap a (BetaSesquilinearity.Dx x Φ)) g‖
        ≤ 2 ^ w.length * M + 2 ^ w.length * M := (norm_add_le _ _).trans (add_le_add b1 b2)
      _ = 2 ^ (w ++ [x]).length * M := by simp [pow_succ]; ring

end loc

section ops

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem gpos_open (D : B.RealPlaceData k r Wp Wq) : IsOpen {g : B.Mat k r | 0 < Gf k r D.z D.z' g} :=
  isOpen_lt continuous_const (DifferentialOperatorClasses.gf_cont k r D.z D.z')

theorem dcomp_opOrder (T0 : B.DTerm k r Wp Wq) (Θ : B.DiffOp k r Wp Wq) :
    B.opOrder (dcomp T0 Θ) = B.opOrder Θ := by
  unfold B.opOrder dcomp
  rw [List.map_map]
  rfl

theorem opAdj_dcomp (T0 : B.DTerm k r Wp Wq) (Θ : B.DiffOp k r Wp Wq) (F : B.Mat k r → (Wq →L[ℂ] Wp)) :
    B.opAdj (dcomp T0 Θ) F = B.opAdj Θ (fun x => T0.coefAdj x (F x)) := by
  funext g
  unfold B.opAdj dcomp
  rw [List.map_map]
  rfl

theorem comp_bound_loc (D : B.RealPlaceData k r Wp Wq) {a b : B.Mat k r → ((Wq →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wp))}
    (ha : B.CkOn ⊤ (B.GPos D) a) (hb : B.CkOn ⊤ (B.GPos D) b) (m : ℕ) {ε : ℝ} (hε : 0 < ε) (Ca Cb da db : ℝ)
    (hCa : ∀ u v : List (B.Mat k r), (∀ X ∈ u, B.unitLie k r X) → (∀ X ∈ v, B.unitLie k r X) →
      u.length + v.length ≤ m → ∀ g ∈ B.GV k r, ε ≤ Gf k r D.z D.z' g → ‖B.dLR u v a g‖ ≤ Ca * B.gN g ^ da)
    (hCb : ∀ u v : List (B.Mat k r), (∀ X ∈ u, B.unitLie k r X) → (∀ X ∈ v, B.unitLie k r X) →
      u.length + v.length ≤ m → ∀ g ∈ B.GV k r, ε ≤ Gf k r D.z D.z' g → ‖B.dLR u v b g‖ ≤ Cb * B.gN g ^ db)
    (u v : List (B.Mat k r)) (hu : ∀ X ∈ u, B.unitLie k r X) (hv : ∀ X ∈ v, B.unitLie k r X)
    (hl : u.length + v.length ≤ m) (g : B.Mat k r) (hg : g ∈ B.GV k r) (hgε : ε ≤ Gf k r D.z D.z' g) :
    ‖B.dLR u v (fun x => (a x).comp (b x)) g‖ ≤
      2 ^ m * ‖CutBP.lcomp (Wp := Wp) (Wq := Wq)‖ * max Ca 0 * max Cb 0 * B.gN g ^ (da + db) := by
  set O : Set (B.Mat k r) := {g : B.Mat k r | 0 < Gf k r D.z D.z' g} with hOdef
  have hO : IsOpen O := gpos_open D
  have hOU : ∀ g ∈ B.GV k r, g ∈ O → g ∈ B.GPos D := fun g hg hgO => ⟨hg, hgO⟩
  have hgO : g ∈ O := lt_of_lt_of_le hε hgε
  have hp : 0 < B.gN g := BetaSesquilinearity.gN_pos hg
  have hlie := BetaSesquilinearity.lie_LR (BetaSesquilinearity.unit_lie hu) (BetaSesquilinearity.unit_lie hv)
  have ha' : B.CkOn ⊤ (B.GPos D) (fun x => CutBP.lcomp (Wp := Wp) (Wq := Wq) (a x)) := CutBP.ckOn_clm CutBP.lcomp ha
  have hap : (fun x => (a x).comp (b x)) = BetaSesquilinearity.ap (fun x => CutBP.lcomp (Wp := Wp) (Wq := Wq) (a x)) b := rfl
  rw [hap, BetaSesquilinearity.dLR_eq]
  have hM : ∀ w₁ w₂ : List (Bool × B.Mat k r), w₁.Sublist (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v) → w₂.Sublist (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v) →
      w₁.length + w₂.length = (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v).length →
      ‖BetaSesquilinearity.Dw w₁ (fun x => CutBP.lcomp (Wp := Wp) (Wq := Wq) (a x)) g‖ * ‖BetaSesquilinearity.Dw w₂ b g‖ ≤
        (‖CutBP.lcomp (Wp := Wp) (Wq := Wq)‖ * (max Ca 0 * B.gN g ^ da)) * (max Cb 0 * B.gN g ^ db) := by
    intro w₁ w₂ h₁ h₂ _
    obtain ⟨u₁, v₁, hu₁, hv₁, rfl⟩ := BetaSesquilinearity.sub_LR h₁
    obtain ⟨u₂, v₂, hu₂, hv₂, rfl⟩ := BetaSesquilinearity.sub_LR h₂
    have hl1 : u₁.length + v₁.length ≤ m := by
      have := hu₁.length_le; have := hv₁.length_le; omega
    have hl2 : u₂.length + v₂.length ≤ m := by
      have := hu₂.length_le; have := hv₂.length_le; omega
    have ea : BetaSesquilinearity.Dw (BetaSesquilinearity.wL u₁ ++ BetaSesquilinearity.wR v₁) (fun x => CutBP.lcomp (Wp := Wp) (Wq := Wq) (a x)) g =
        CutBP.lcomp (BetaSesquilinearity.Dw (BetaSesquilinearity.wL u₁ ++ BetaSesquilinearity.wR v₁) a g) :=
      dw_clm_loc hO hOU CutBP.lcomp _ (BetaSesquilinearity.lie_LR (fun X hX => (hu X (hu₁.subset hX)).1)
        (fun X hX => (hv X (hv₁.subset hX)).1)) ha g hg hgO
    have b1 : ‖BetaSesquilinearity.Dw (BetaSesquilinearity.wL u₁ ++ BetaSesquilinearity.wR v₁) (fun x => CutBP.lcomp (Wp := Wp) (Wq := Wq) (a x)) g‖ ≤
        ‖CutBP.lcomp (Wp := Wp) (Wq := Wq)‖ * (max Ca 0 * B.gN g ^ da) := by
      rw [ea]
      refine (ContinuousLinearMap.le_opNorm _ _).trans (mul_le_mul_of_nonneg_left ?_ (norm_nonneg _))
      rw [← BetaSesquilinearity.dLR_eq]
      exact (hCa u₁ v₁ (fun X hX => hu X (hu₁.subset hX)) (fun X hX => hv X (hv₁.subset hX)) hl1 g hg hgε).trans
        (mul_le_mul_of_nonneg_right (le_max_left _ _) (Real.rpow_nonneg hp.le _))
    have b2 : ‖BetaSesquilinearity.Dw (BetaSesquilinearity.wL u₂ ++ BetaSesquilinearity.wR v₂) b g‖ ≤ max Cb 0 * B.gN g ^ db := by
      rw [← BetaSesquilinearity.dLR_eq]
      exact (hCb u₂ v₂ (fun X hX => hu X (hu₂.subset hX)) (fun X hX => hv X (hv₂.subset hX)) hl2 g hg hgε).trans
        (mul_le_mul_of_nonneg_right (le_max_left _ _) (Real.rpow_nonneg hp.le _))
    exact mul_le_mul b1 b2 (norm_nonneg _) (by positivity)
  have hbd := leib_loc hO hOU g hg hgO _ (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v) _ b hlie ha' hb hM
  have hlen : (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v).length ≤ m := by rw [BetaSesquilinearity.len_LR]; exact hl
  have h2 : (2 : ℝ) ^ (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v).length ≤ 2 ^ m := pow_le_pow_right₀ (by norm_num) hlen
  rw [Real.rpow_add hp]
  calc ‖BetaSesquilinearity.Dw (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v) (BetaSesquilinearity.ap (fun x => CutBP.lcomp (Wp := Wp) (Wq := Wq) (a x)) b) g‖
      ≤ 2 ^ (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v).length *
        ((‖CutBP.lcomp (Wp := Wp) (Wq := Wq)‖ * (max Ca 0 * B.gN g ^ da)) * (max Cb 0 * B.gN g ^ db)) := hbd
    _ ≤ 2 ^ m * ((‖CutBP.lcomp (Wp := Wp) (Wq := Wq)‖ * (max Ca 0 * B.gN g ^ da)) * (max Cb 0 * B.gN g ^ db)) :=
        mul_le_mul_of_nonneg_right h2 (by positivity)
    _ = 2 ^ m * ‖CutBP.lcomp (Wp := Wp) (Wq := Wq)‖ * max Ca 0 * max Cb 0 * (B.gN g ^ da * B.gN g ^ db) := by ring

theorem niceAll_ap (D : B.RealPlaceData k r Wp Wq) {a : B.Mat k r → ((Wq →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wp))}
    (ha : B.CkOn ⊤ (B.GPos D) a)
    (hab : ∀ ε : ℝ, 0 < ε → ∀ m : ℕ, ∃ C d : ℝ, ∀ u v : List (B.Mat k r), (∀ X ∈ u, B.unitLie k r X) →
      (∀ X ∈ v, B.unitLie k r X) → u.length + v.length ≤ m → ∀ g ∈ B.GV k r, ε ≤ Gf k r D.z D.z' g →
        ‖B.dLR u v a g‖ ≤ C * B.gN g ^ d)
    {F : B.Mat k r → (Wq →L[ℂ] Wp)} (hF : NiceAll D F) : NiceAll D (fun g => a g (F g)) := by
  show NiceAll D (BetaSesquilinearity.ap a F)
  obtain ⟨ε, hε, hck, hcc, hsupp⟩ := hF
  set O : Set (B.Mat k r) := {g : B.Mat k r | Gf k r D.z D.z' g < ε} with hOdef
  have hO : IsOpen O := isOpen_lt (DifferentialOperatorClasses.gf_cont k r D.z D.z') continuous_const
  have hcov : ∀ g ∈ B.GV k r, g ∈ O ∨ g ∈ B.GPos D := by
    intro g hg
    by_cases h : Gf k r D.z D.z' g < ε
    · exact Or.inl h
    · exact Or.inr ⟨hg, lt_of_lt_of_le hε (not_lt.1 h)⟩
  have hz : ∀ g ∈ B.GV k r, g ∈ O → F g = 0 := by
    intro g hg hgO
    by_contra hne
    exact absurd (hsupp g hg hne) (not_le.2 hgO)
  have hP : BetaSesquilinearity.Pr O (B.GPos D) ⊤ a F := ⟨ha, hck, hz⟩
  refine ⟨ε, hε, hP.ck hO hcov, fun A' m' => ?_, ?_⟩
  · obtain ⟨C, d, hCd⟩ := hab ε hε m'
    obtain ⟨cF, hcF⟩ := hcc (A' + d) m'
    refine ⟨2 ^ m' * (max C 0 * max cF 0), BetaSesquilinearity.sCkOn_mono le_top (hP.ck hO hcov), fun u v hu hv hl g hg => ?_⟩
    have hlie := BetaSesquilinearity.lie_LR (BetaSesquilinearity.unit_lie hu) (BetaSesquilinearity.unit_lie hv)
    have hp : 0 < B.gN g := BetaSesquilinearity.gN_pos hg
    have hK : 0 ≤ max C 0 * max cF 0 := mul_nonneg (le_max_right _ _) (le_max_right _ _)
    rw [BetaSesquilinearity.dLR_eq]
    by_cases hgO : g ∈ O
    · rw [BetaSesquilinearity.Dw_vanish hO hlie (hP.mono (m := 0) le_top).apz g hg hgO]
      simp only [norm_zero, mul_zero]
      positivity
    · have hgε : ε ≤ Gf k r D.z D.z' g := not_lt.1 hgO
      have hb := BetaSesquilinearity.leib_bound hO hcov g hg (max C 0 * max cF 0 * B.gN g ^ (-A')) (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v) a F hlie
        (hP.mono le_top) (by
          intro w₁ w₂ hs₁ hs₂ hl₁₂
          obtain ⟨u₁, v₁, hu₁, hv₁, rfl⟩ := BetaSesquilinearity.sub_LR hs₁
          obtain ⟨u₂, v₂, hu₂, hv₂, rfl⟩ := BetaSesquilinearity.sub_LR hs₂
          have hl1 : u₁.length + v₁.length ≤ m' := by
            have := hu₁.length_le; have := hv₁.length_le; omega
          have hl2 : u₂.length + v₂.length ≤ m' := by
            have := hu₂.length_le; have := hv₂.length_le; omega
          have b1 : ‖BetaSesquilinearity.Dw (BetaSesquilinearity.wL u₁ ++ BetaSesquilinearity.wR v₁) a g‖ ≤ max C 0 * B.gN g ^ d := by
            rw [← BetaSesquilinearity.dLR_eq]
            exact (hCd u₁ v₁ (fun X hX => hu X (hu₁.subset hX)) (fun X hX => hv X (hv₁.subset hX)) hl1 g hg
              hgε).trans (mul_le_mul_of_nonneg_right (le_max_left _ _) (Real.rpow_nonneg hp.le _))
          have b2 : ‖BetaSesquilinearity.Dw (BetaSesquilinearity.wL u₂ ++ BetaSesquilinearity.wR v₂) F g‖ ≤ max cF 0 * B.gN g ^ (-(A' + d)) := by
            rw [← BetaSesquilinearity.dLR_eq]
            have h1 := hcF.2 u₂ v₂ (fun X hX => hu X (hu₂.subset hX)) (fun X hX => hv X (hv₂.subset hX)) hl2 g hg
            have e : B.gN g ^ (-(A' + d)) * B.gN g ^ (A' + d) = 1 := by
              rw [← Real.rpow_add hp]; simp
            calc ‖B.dLR u₂ v₂ F g‖ = B.gN g ^ (-(A' + d)) * (B.gN g ^ (A' + d) * ‖B.dLR u₂ v₂ F g‖) := by
                  rw [← mul_assoc, e, one_mul]
              _ ≤ B.gN g ^ (-(A' + d)) * max cF 0 :=
                  mul_le_mul_of_nonneg_left (h1.trans (le_max_left _ _)) (Real.rpow_nonneg hp.le _)
              _ = max cF 0 * B.gN g ^ (-(A' + d)) := mul_comm _ _
          calc ‖BetaSesquilinearity.Dw (BetaSesquilinearity.wL u₁ ++ BetaSesquilinearity.wR v₁) a g‖ * ‖BetaSesquilinearity.Dw (BetaSesquilinearity.wL u₂ ++ BetaSesquilinearity.wR v₂) F g‖
              ≤ (max C 0 * B.gN g ^ d) * (max cF 0 * B.gN g ^ (-(A' + d))) :=
                mul_le_mul b1 b2 (norm_nonneg _) (mul_nonneg (le_max_right _ _) (Real.rpow_nonneg hp.le _))
            _ = max C 0 * max cF 0 * (B.gN g ^ d * B.gN g ^ (-(A' + d))) := by ring
            _ = max C 0 * max cF 0 * B.gN g ^ (-A') := by
                rw [← Real.rpow_add hp]; congr 2; ring)
      have hlen : (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v).length ≤ m' := by rw [BetaSesquilinearity.len_LR]; exact hl
      have e3 : (2 : ℝ) ^ (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v).length ≤ 2 ^ m' := pow_le_pow_right₀ (by norm_num) hlen
      have e4 : B.gN g ^ A' * B.gN g ^ (-A') = 1 := by rw [← Real.rpow_add hp]; simp
      calc B.gN g ^ A' * ‖BetaSesquilinearity.Dw (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v) (BetaSesquilinearity.ap a F) g‖
          ≤ B.gN g ^ A' * (2 ^ (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v).length * (max C 0 * max cF 0 * B.gN g ^ (-A'))) :=
            mul_le_mul_of_nonneg_left hb (Real.rpow_nonneg hp.le _)
        _ = 2 ^ (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v).length * (max C 0 * max cF 0) * (B.gN g ^ A' * B.gN g ^ (-A')) := by ring
        _ = 2 ^ (BetaSesquilinearity.wL u ++ BetaSesquilinearity.wR v).length * (max C 0 * max cF 0) := by rw [e4, mul_one]
        _ ≤ 2 ^ m' * (max C 0 * max cF 0) := mul_le_mul_of_nonneg_right e3 hK
  · intro g hg hne
    apply hsupp g hg
    intro h0
    apply hne
    show a g (F g) = 0
    rw [h0, map_zero]

end ops

end Comp0

open Comp0 in
theorem spectral_composition_zero : RDSComp0 := by
  intro Wp Wq _ _ _ _ _ _ k r D T0 Θ hT0 hΘ
  obtain ⟨_, hc0, hca0, heq0, hb0⟩ := hT0
  obtain ⟨hS, hC, hP, hN⟩ := hΘ
  have hord : B.opOrder (dcomp T0 Θ) = B.opOrder Θ := dcomp_opOrder T0 Θ
  have hfun : ∀ F : B.Mat k r → (Wq →L[ℂ] Wp),
      B.opApply (dcomp T0 Θ) F = fun g => T0.coef g (B.opApply Θ F g) := fun F => funext (opApply_dcomp T0 Θ F)
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro T' hT'
    obtain ⟨T, hT, rfl⟩ := List.mem_map.1 hT'
    obtain ⟨h1, h2⟩ := hS T hT
    exact ⟨CutBP.ckOn_apply (CutBP.ckOn_clm CutBP.lcomp hc0) h1, CutBP.ckOn_apply (CutBP.ckOn_clm CutBP.lcomp h2) hca0⟩
  · intro p hp f hf g hg
    have hf' : B.CkOn (B.opOrder Θ : ℕ∞) (B.GV k r) f := by rwa [hord] at hf
    rw [hfun, hfun]
    show T0.coef g (B.opApply Θ (B.rho D p f) g) = B.rho D p (fun g => T0.coef g (B.opApply Θ f g)) g
    rw [hC p hp f hf' g hg]
    exact heq0 p hp g hg _
  · intro ε hε
    obtain ⟨dΘ, hdΘ, hPΘ⟩ := hP ε hε
    obtain ⟨C0, d0, hd0, hb⟩ := hb0 ε hε (B.opOrder Θ + 5)
    refine ⟨d0 + dΘ, add_nonneg hd0 hdΘ, ?_⟩
    rw [hord]
    intro T' hT'
    obtain ⟨T, hT, rfl⟩ := List.mem_map.1 hT'
    obtain ⟨CT, hCT⟩ := hPΘ T hT
    obtain ⟨hsT, hsaT⟩ := hS T hT
    refine ⟨2 ^ (B.opOrder Θ + 5) * ‖CutBP.lcomp (Wp := Wp) (Wq := Wq)‖ * max C0 0 * max CT 0,
      fun u v hu hv hl g hg hgε => ⟨?_, ?_⟩⟩
    · exact comp_bound_loc D hc0 hsT _ hε C0 CT d0 dΘ
        (fun u v hu hv hl g hg hgε => (hb u v hu hv hl g hg hgε).1)
        (fun u v hu hv hl g hg hgε => (hCT u v hu hv hl g hg hgε).1) u v hu hv hl g hg hgε
    · have h := comp_bound_loc D hsaT hca0 _ hε CT C0 dΘ d0
        (fun u v hu hv hl g hg hgε => (hCT u v hu hv hl g hg hgε).2)
        (fun u v hu hv hl g hg hgε => (hb u v hu hv hl g hg hgε).2) u v hu hv hl g hg hgε
      calc _ ≤ _ := h
        _ = _ := by rw [add_comm dΘ d0]; ring
  · intro F hF
    refine ⟨?_, ?_⟩
    · rw [hfun]
      exact niceAll_ap D hc0 (fun ε hε m => by
        obtain ⟨C, d, _, h⟩ := hb0 ε hε m
        exact ⟨C, d, fun u v hu hv hl g hg hgε => (h u v hu hv hl g hg hgε).1⟩) (hN F hF).1
    · rw [opAdj_dcomp]
      exact (hN _ (niceAll_ap D hca0 (fun ε hε m => by
        obtain ⟨C, d, _, h⟩ := hb0 ε hε m
        exact ⟨C, d, fun u v hu hv hl g hg hgε => (h u v hu hv hl g hg hgε).2⟩) hF)).2

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SpectralCompositionZero =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopFinal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopFinal", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDIdentSpec\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpRGrpFinal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpX\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSRhR\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSRhvR\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopR\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SpectralCompositionZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSERDSOpR\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutSE

theorem spectral_operator_R : RDSOpR := rDSOpR_of_parts spectral_right_group_action spectral_operator_X spectral_right_rho_action spectral_composition_zero

theorem spectral_operator_R_adjoint : RDSOpRv := rDSOpRv_of_parts spectral_adjoint_right_group spectral_operator_X spectral_adjoint_rho_action spectral_composition_zero

theorem actual_compact_theorem : Formalism.FourierDecayAlt.P5.ThmPActualCpt := thmPActualCpt_of_R spectral_operator_R spectral_operator_R_adjoint

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopFinal =====
