module

public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Inhabit
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InhabitFurther
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InhabitAlt
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagModelRootIndependent
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PJoinDivCycle
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PJoinIntNum
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PJoinPointIdeal
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PJoinVariety
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinCkOnFlagPair
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinJoinPointFlagModel
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinJoinPointModel
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InhabitBis
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FlagModelValueIndependent
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Statements
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.VerticalDivisorsCommute
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.IsVerticalDivOfIsVerticalDivisor
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PFlagIndependenceAlgebra
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PPairNumberExpansionIndependence
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinDivDiffExpansion
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinFlagPairIff
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinJoinPointNumbers
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinJoinPointVertDiv
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinPairNumJoinLeft
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinPlainPolyPairNum

@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GlobalTheory.CompanionTheory.ChernFlagPairRootPolynomial

open GroundTheory.Heights₂.Heights
open GroundTheory.Heights₂.Heights.NumbersDVR
open MvPolynomial

theorem rootPolyNum : RootPolynomialNumber.Statement := by
  intro O _ _ _ K _ _ ι _ P d N x c G hG hc q L Q hQ a
  have hH : (rename (Fin.castAdd q) G * rename (Fin.natAdd N) Q :
      MvPolynomial (Fin (N + q)) ℤ).IsHomogeneous d := by
    have h3 := (hG.rename_isHomogeneous (f := Fin.castAdd q)).mul
      (hQ.rename_isHomogeneous (f := Fin.natAdd N))
    rwa [show c + (d - c) = d by omega] at h3
  have hZ : ⇑(Finsupp.mapRange (fun n : ℕ => (n : ℤ)) Nat.cast_zero
      (ReciprocityTheory.ChartRestriction.G.Geo.divCycle P (C a))) = divCycle P (C a) := by
    funext W
    simp [FlagTypings.divCycle_eq]
  have hfin : (Function.support (divCycle P (C a))).Finite := by
    rw [← hZ]
    exact Finsupp.hasFiniteSupport _
  have hcast : Fin.append x L ∘ Fin.castAdd q = x := by
    funext i
    simp [Fin.append_left]
  have hnat : Fin.append x L ∘ Fin.natAdd N = L := by
    funext j
    simp [Fin.append_right]
  have key : ∀ W : Ideal (MRing ι O), IndefiniteRowSideFullHecke.NumbersDVR.Bundles.polyNum
      (fun V _ bs => intNum (IsLocalRing.ResidueField O) V bs) (specialIdeal W) d (Fin.append x L)
      (rename (Fin.castAdd q) G * rename (Fin.natAdd N) Q) =
      ∑ μ ∈ Q.support, Q.coeff μ * classNum x G (classList L μ) W := by
    intro W
    rw [BundleExamples.polyNum_eq_classNum (Fin.append x L) (Equiv.refl _) (Fin.append x L) rfl hH W]
    simp only [Equiv.coe_refl, rename_id_apply]
    rw [plainPolynomialPairNumber.classNum_mul_tail _ L _ hnat]
    refine Finset.sum_congr rfl fun μ _ => ?_
    rw [plainPairNumber.classNum_rename _ (Fin.castAdd_injective _ _), hcast]
  rw [BundleExamples.vEval_eq, hZ]
  simp only [key, cycEval_eq_sum hfin, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun μ _ => Finset.sum_congr rfl fun W _ => ?_
  ring

theorem main : ChernClassOnFlagPair.Statement :=
  ChernClassOnFlagPair.proof
    (JoinPointFlagModel.proof FlagPairCharacterisation.proof JoinPointModel.proof
      JoinPointVerticalDivisor.proof)
    (JoinPointNumbers.proof JoinPointIdeal.proof JoinDivCycle.proof JoinVariety.proof
      JoinIntNum.proof PairNumberJoinLeft.verticalComponentFibre)
    _root_.GlobalTheory.CompanionTheory.CommAlg.FlagModelValue.main _root_.GlobalTheory.CompanionTheory.Ar.RootIndep.main plainPolynomialPairNumber.proof rootPolyNum
    (PairNumberExpansionIndependence.proof _root_.GlobalTheory.CompanionTheory.CommAlg.VerticalDivisors.verticalDivisorsCommute) dividedDifferenceExpansion.proof

end GlobalTheory.CompanionTheory.ChernFlagPairRootPolynomial
