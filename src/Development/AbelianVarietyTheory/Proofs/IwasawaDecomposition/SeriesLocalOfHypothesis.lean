module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq
public import Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsCompactOpenLatticeStabilizerAtPlaces
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeReductionEqOneOfLocalComponentOne
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsCompOfOne
public import Mathlib.Combinatorics.SimpleGraph.Basic
public import Formalism.LocalToGlobal.GaloisLevelStructure.DefsLevel
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsTrivOutsideLoc
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeDoubleCosetOperatorsStandardFacts
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsTypeGroupBlockLift
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLatticeCongruenceInLevelCharacterOne
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSplitPlaceWPlGw
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSplitReductionStandardFrameConj
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftFormLvlOp
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LocalizationFreeStageTrueGroupColumnChoiceStep
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PlacesUnder
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ProvisionalRowsFurtherCompatibilitiesAtState
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TrivOutsideListProd
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.EqOrIsConjPlaceOfOverSplitPlace
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DatumLevelHyperspecialOffFinitePlaces
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemSum
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFrameUnitaryDivisorSplit, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormalisedSubgroupColumnMatricesEntryZero, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormalisedSubgroupColumnMatricesEntryZeroStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetOneAddVecMulVecSingle, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SeriesLocalOfHypothesis

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFrameUnitaryDivisorSplit =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFrameUnitaryDivisorSplit", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsCompactOpenLatticeStabilizerAtPlaces\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeReductionEqOneOfLocalComponentOne\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.DatumLevelHyperspecialOffFinitePlaces\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsCompOfOne\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Formalism.L2 Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.RecTie GlobalTheory.Mem GlobalTheory.Mem.R3 GlobalTheory.HeightCounting GlobalTheory.CenFrame
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.FrameOff

noncomputable def evAt (D : D7) (v : HeightOneSpectrum (𝓞 D.host.F)) :
    Af D.host.F ⊗[D.host.F] D.host.E →+* Fv D.host.F v ⊗[D.host.F] D.host.E :=
  (Algebra.TensorProduct.map (evalV D.host.F v) (AlgHom.id D.host.F D.host.E)).toRingHom

theorem map_conj_eq_one {R S : Type} [CommRing R] [CommRing S] {m k : ℕ} (f : R →+* S) (b : Matrix (Fin m) (Fin k) R)
    (b' : Matrix (Fin k) (Fin m) R) (K : Matrix (Fin k) (Fin k) R) (hb : b * b' = 1) (hK : K.map f = 1) :
    (b * K * b').map f = 1 := by
  rw [Matrix.map_mul, Matrix.map_mul, hK, Matrix.mul_one, ← Matrix.map_mul, hb, Matrix.map_one _ (map_zero f) (map_one f)]



theorem evAt_swapCast_symm (D : D7) (hF : D.host.F = maximalRealSubfield D.host.E)
    (v : HeightOneSpectrum (𝓞 (maximalRealSubfield D.host.E))) (x : ReciprocityTheory.Aut.AL D.host.E) :
    evAt D v ((swapCast hF).symm x) =
      (Algebra.TensorProduct.comm (maximalRealSubfield D.host.E) D.host.E (v.adicCompletion (maximalRealSubfield D.host.E)))
        (ReciprocityTheory.Aut.compAt D.host.E v x) := by
  induction x using TensorProduct.induction_on with
  | zero => rw [RingEquiv.map_zero, RingHom.map_zero, RingHom.map_zero, _root_.map_zero]
  | tmul e a => rfl
  | add x y hx hy => rw [RingEquiv.map_add (e := _), RingHom.map_add (f := _), RingHom.map_add (f := _), _root_.map_add (f := _), hx, hy]

theorem map_evAt_eq_one (D : D7) (hF : D.host.F = maximalRealSubfield D.host.E) {n : ℕ}
    (A : Set (HeightOneSpectrum (𝓞 (maximalRealSubfield D.host.E)))) (v : HeightOneSpectrum (𝓞 (maximalRealSubfield D.host.E)))
    (κ : Formalism.AUTREP.GAf D.host.E n) (hA : ReciprocityTheory.Aut.TrivOutside A κ) (hv : v ∉ A) :
    ((κ.1 : Matrix (Fin n) (Fin n) (ReciprocityTheory.Aut.AL D.host.E)).map (swapCast hF).symm).map (evAt D v) = 1 := by
  have h1 := hA v hv
  ext i j
  have h2 := congrFun (congrFun h1 i) j
  rw [Matrix.map_apply] at h2
  rw [Matrix.map_apply, Matrix.map_apply, evAt_swapCast_symm, h2]
  by_cases h : i = j
  · subst h; simp
  · simp [h]

theorem stdFrame_stab_red : ∀ (D : D7) (V : HSp D) (n : ℕ) (hF : D.host.F = maximalRealSubfield D.host.E) (P : principalLevelFrame.RowPsi V n) (β : GL (Fin V.rank) (EAf D)) (Λ : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E)), R3.StdFrame hF P → IsBaseFrame V β Λ 1 → ∀ κ ∈ ReciprocityTheory.Aut.Umax D.host.E n, finE V (P.ψ κ) ∈ Formalism.L2.DIV.St β ∧ ∀ (A : Set (HeightOneSpectrum (𝓞 (maximalRealSubfield D.host.E)))) (v : HeightOneSpectrum (𝓞 (maximalRealSubfield D.host.E))) (PP : Formalism.L2.DIV.Pl D.host.E), ReciprocityTheory.Aut.TrivOutside A κ → NG.OverPl PP v → v ∉ A → redFn β PP (finE V (P.ψ κ)) = 1 := by
  intro D V n hF P β Λ hP hB κ hκ
  have hSt : finE V (P.ψ κ) ∈ Formalism.L2.DIV.St β :=
    (GlobalTheory.FinZeta.LevelOff.finE_mem_St_iff hB (P.into κ)).2 ((hP.2 κ).1 hκ)
  refine ⟨hSt, fun A v PP hA hPP hv => ?_⟩
  have hu : (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP) = v := HeightOneSpectrum.ext hPP
  refine GlobalTheory.ChainOnto.RedOne.redFn_eq_one D V β _ PP hSt ?_
  rw [GlobalTheory.FinPl.KOpen.proj_eq_one_iff, hu]
  obtain ⟨⟨b, b', hbb, -, hmat⟩, -⟩ := hP
  have hF1 : (finMat D.sp.cm.sig V.gram (P.ψ κ)).map (evAt D v) = 1 := by
    rw [hmat κ]
    exact map_conj_eq_one _ _ _ _ hbb (map_evAt_eq_one D hF A v κ hA hv)
  intro i j
  have h3 := congrFun (congrFun hF1 i) j
  change evAt D v (finPart D ((Formalism.L2.Theta.mt V (P.ψ κ) - 1) i j)) = 0
  rw [Matrix.sub_apply, RingHom.map_sub, RingHom.map_sub]
  change evAt D v (finMat D.sp.cm.sig V.gram (P.ψ κ) i j) - _ = 0
  rw [Matrix.map_apply] at h3
  rw [h3, sub_eq_zero]
  by_cases h : i = j
  · subst h; simp
  · simp [h]

end GlobalTheory.FrameOff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFrameUnitaryDivisorSplit =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormalisedSubgroupColumnMatricesEntryZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormalisedSubgroupColumnMatricesEntryZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsCompOfOne\npublic import Mathlib.Combinatorics.SimpleGraph.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Formalism.L2 Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.RecTie GlobalTheory.Mem GlobalTheory.Mem.R3 GlobalTheory.HeightCounting GlobalTheory.CenFrame
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.PosAgree

open Matrix

variable {k : Type} [CommRing k] {n : ℕ}

theorem vmv_mul_vmv (a α b β : Fin n → k) :
    vecMulVec a α * vecMulVec b β = (α ⬝ᵥ b) • vecMulVec a β := by
  ext i l
  simp only [Matrix.mul_apply, vecMulVec_apply, Matrix.smul_apply, smul_eq_mul, dotProduct, Finset.sum_mul]
  exact Finset.sum_congr rfl fun m _ => by ring

theorem mul_vmv_mul (A B : Matrix (Fin n) (Fin n) k) (w φ : Fin n → k) :
    A * vecMulVec w φ * B = vecMulVec (A *ᵥ w) (φ ᵥ* B) := by
  ext i l
  simp only [Matrix.mul_apply, vecMulVec_apply, mulVec, vecMul, dotProduct, Finset.sum_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun p _ => Finset.sum_congr rfl fun m _ => by ring

theorem vecMul_vmv (φ a α : Fin n → k) : φ ᵥ* vecMulVec a α = (φ ⬝ᵥ a) • α := by
  ext i
  simp only [vecMul, dotProduct, vecMulVec_apply, Pi.smul_apply, smul_eq_mul, Finset.sum_mul]
  exact Finset.sum_congr rfl fun m _ => by ring

def tU (v φ : Fin n → k) (h : φ ⬝ᵥ v = 0) : GL (Fin n) k :=
  ⟨1 + vecMulVec v φ, 1 - vecMulVec v φ,
    by simp only [add_mul, mul_sub, one_mul, mul_one, vmv_mul_vmv, h, zero_smul]; abel,
    by simp only [sub_mul, mul_add, one_mul, mul_one, vmv_mul_vmv, h, zero_smul]; abel⟩

theorem tU_val (v φ : Fin n → k) (h : φ ⬝ᵥ v = 0) : (tU v φ h).val = 1 + vecMulVec v φ := rfl

theorem tU_inv_val (v φ : Fin n → k) (h : φ ⬝ᵥ v = 0) : (tU v φ h)⁻¹.val = 1 - vecMulVec v φ := rfl

theorem conj_val (g : GL (Fin n) k) (v φ : Fin n → k) (h : φ ⬝ᵥ v = 0) :
    (g * tU v φ h * g⁻¹).val = 1 + vecMulVec (g.val *ᵥ v) (φ ᵥ* (g⁻¹).val) := by
  rw [Units.val_mul, Units.val_mul, tU_val, mul_add, add_mul, mul_one, ← Units.val_mul, mul_inv_cancel, Units.val_one,
    mul_vmv_mul]

theorem tU_mem_unip (v φ : Fin n → k) (h : φ ⬝ᵥ v = 0) (hl : ∀ i l : Fin n, l.val ≤ i.val → v i * φ l = 0) :
    tU v φ h ∈ unip k n := by
  refine ⟨fun i l (hli : l.val < i.val) => ?_, fun i => ?_⟩
  · rw [tU_val, Matrix.add_apply, vecMulVec_apply, hl i l hli.le, one_apply_ne (fun e => by rw [e] at hli; omega), add_zero]
  · rw [tU_val, Matrix.add_apply, vecMulVec_apply, hl i i le_rfl, one_apply_eq, add_zero]

theorem transvection_eq (i j : Fin n) (c : k) :
    transvection i j c = 1 + vecMulVec (Pi.single i c) (Pi.single j 1) := by
  unfold transvection
  congr 1
  ext p q
  simp only [single_apply, vecMulVec_apply, Pi.single_apply]
  split_ifs <;> simp_all

end GlobalTheory.PosAgree

namespace GlobalTheory.PosAgree

open Matrix

variable {k : Type} [CommRing k] {n : ℕ}

theorem sdot (p q : Fin n) (x : k) (h : q ≠ p) : Pi.single q 1 ⬝ᵥ Pi.single p x = 0 := by
  rw [single_dotProduct, Pi.single_apply, if_neg h, mul_zero]

theorem comm_a (p0 p1 pm : Fin n) (h01 : p0 ≠ p1) (h0m : p0 ≠ pm) (h1m : p1 ≠ pm) :
    (tU (Pi.single pm (1 : k)) (Pi.single p0 1) (sdot _ _ _ h0m))⁻¹ *
      (tU (Pi.single p0 1) (Pi.single p1 1) (sdot _ _ _ h01.symm) * tU (Pi.single pm 1) (Pi.single p0 1) (sdot _ _ _ h0m) *
        (tU (Pi.single p0 1) (Pi.single p1 1) (sdot _ _ _ h01.symm))⁻¹) =
      tU (Pi.single pm (-1)) (Pi.single p1 1) (sdot _ _ _ h1m) := by
  apply Units.ext
  simp only [Units.val_mul, tU_val, tU_inv_val, add_mul, mul_add, sub_mul, mul_sub, one_mul, mul_one, vmv_mul_vmv,
    Matrix.mul_smul, single_dotProduct, Pi.single_apply, h0m, h1m, h01.symm, if_false, if_true, mul_zero, zero_smul, add_zero, sub_zero, mul_one]
  ext p q
  simp only [Matrix.add_apply, Matrix.sub_apply, Matrix.smul_apply, vecMulVec_apply, Pi.single_apply, smul_eq_mul]
  split_ifs <;> simp_all

theorem comm_b (p0 p1 pm : Fin n) (h01 : p0 ≠ p1) (h0m : p0 ≠ pm) (h1m : p1 ≠ pm) (a b : k) :
    tU (Pi.single p0 a) (Pi.single pm 1) (sdot _ _ _ h0m.symm) * tU (Pi.single pm b) (Pi.single p1 1) (sdot _ _ _ h1m) *
      (tU (Pi.single p0 a) (Pi.single pm 1) (sdot _ _ _ h0m.symm))⁻¹ * (tU (Pi.single pm b) (Pi.single p1 1) (sdot _ _ _ h1m))⁻¹ =
      tU (Pi.single p0 (a * b)) (Pi.single p1 1) (sdot _ _ _ h01.symm) := by
  apply Units.ext
  simp only [Units.val_mul, tU_val, tU_inv_val, add_mul, mul_add, sub_mul, mul_sub, one_mul, mul_one, vmv_mul_vmv,
    Matrix.smul_mul, single_dotProduct, Pi.single_apply, h1m, h01.symm, h0m.symm, if_false, if_true, mul_zero, zero_smul, add_zero, zero_mul, mul_one]
  ext p q
  simp only [Matrix.add_apply, Matrix.sub_apply, Matrix.smul_apply, vecMulVec_apply, Pi.single_apply, smul_eq_mul]
  split_ifs <;> simp_all [mul_comm]

end GlobalTheory.PosAgree

namespace GlobalTheory.PosAgree

open Matrix

theorem entry_zero : ∀ (k : Type) [CommRing k], IsField k → ∀ n r : ℕ, 2 ≤ r → r < n → ∀ (H : Subgroup (GL (Fin n) k)) (b : GL (Fin n) k), (∀ u ∈ unip k n, ∀ h ∈ H, u * h * u⁻¹ ∈ H) → (∀ (h : GL (Fin n) k) (m : Fin n) (v : Fin n → k), r ≤ (m : ℕ) → v m = 0 → h.val = colMat v m → h ∈ H) → (∀ (h : GL (Fin n) k) (m : Fin n) (v : Fin n → k), r ≤ (m : ℕ) → v m = 0 → (b * h * b⁻¹).val = colMat v m → h ∈ H) → (∀ i j : Fin n, (i : ℕ) + 1 = j → (j : ℕ) < r → ∃ (c : k) (h : GL (Fin n) k), h.val = Matrix.transvection i j c ∧ h ∉ H) → ∀ a c : Fin n, r ≤ (a : ℕ) → (c : ℕ) < r → b.val a c = 0 := by
  intro k _ hk n r hr hrn H b hU h2 h3 h4 a c ha hc
  classical
  by_contra hne
  have ofVal : ∀ (g h : GL (Fin n) k), g ∈ H → g.val = h.val → h ∈ H := fun g h hg e => (Units.ext e) ▸ hg
  have H4 : ∀ i j : Fin n, i.val + 1 = j.val → j.val < r →
      (∀ x : k, ∃ hx, tU (Pi.single i x) (Pi.single j 1) hx ∈ H) → False := by
    intro i j hij hj hall
    obtain ⟨x, h, hh, hn⟩ := h4 i j hij hj
    obtain ⟨hx, hm⟩ := hall x
    exact hn (ofVal _ _ hm (by rw [tU_val, hh, transvection_eq]))
  let φ : Fin n → k := fun l => b.val a l
  have hrow : φ ᵥ* (b⁻¹).val = Pi.single a 1 := by
    have e : φ = Pi.single a 1 ᵥ* b.val := by
      ext l
      simp [φ, vecMul, single_dotProduct]
    rw [e, vecMul_vecMul, ← Units.val_mul, mul_inv_cancel, Units.val_one, vecMul_one]
  have H3 : ∀ w (hw : φ ⬝ᵥ w = 0), tU w φ hw ∈ H := fun w hw =>
    h3 _ a (b.val *ᵥ w) ha hw (by rw [conj_val, hrow]; rfl)
  let S := Finset.univ.filter (fun l : Fin n => φ l ≠ 0)
  have hcS : c ∈ S := by simp [S, φ, hne]
  set j := S.min' ⟨c, hcS⟩ with hjdef
  have hjc : j ≤ c := Finset.min'_le S c hcS
  have hφj : φ j ≠ 0 := (Finset.mem_filter.mp (Finset.min'_mem S ⟨c, hcS⟩)).2
  have hlow : ∀ l, l < j → φ l = 0 := fun l hl => by
    by_contra h'
    exact absurd (Finset.min'_le S l (by simp [S, h'])) (not_le.mpr hl)
  obtain ⟨t, ht⟩ := hk.mul_inv_cancel hφj
  have hjr : j.val < r := lt_of_le_of_lt (show j.val ≤ c.val from hjc) hc
  let ψ : Fin n → k := fun l => if j < l then φ l * t else 0
  have hψ : ψ ⬝ᵥ Pi.single j 1 = 0 := by simp [ψ, dotProduct_single]
  have hu : tU (Pi.single j 1) ψ hψ ∈ unip k n := tU_mem_unip _ _ _ (fun i l hli => by
    simp only [Pi.single_apply, ψ]
    split_ifs with h1 h2 <;> first | (simp; done) | (have := Fin.lt_def.mp h2; rw [h1] at hli; omega))
  have hvec : φ ᵥ* ((tU (Pi.single j 1) ψ hψ)⁻¹).val = Pi.single j (φ j) := by
    rw [tU_inv_val, vecMul_sub, vecMul_one, vecMul_vmv, dotProduct_single, mul_one]
    ext l
    simp only [Pi.sub_apply, Pi.smul_apply, smul_eq_mul, ψ, Pi.single_apply]
    rcases lt_trichotomy l j with hl | hl | hl
    · rw [if_neg (not_lt.mpr hl.le), if_neg hl.ne, hlow l hl]; ring
    · rw [hl]; simp
    · rw [if_pos hl, if_neg hl.ne']; linear_combination (-(φ l)) * ht
  have KEY : ∀ (v : Fin n → k) (hv : Pi.single j 1 ⬝ᵥ v = 0), tU v (Pi.single j 1) hv ∈ H := by
    intro v hv
    have hw : φ ⬝ᵥ (t • (((tU (Pi.single j 1) ψ hψ)⁻¹).val *ᵥ v)) = 0 := by
      rw [dotProduct_smul, dotProduct_mulVec, hvec, single_dotProduct]
      rw [single_dotProduct, one_mul] at hv
      rw [hv, mul_zero, smul_zero]
    refine ofVal _ _ (hU _ hu _ (H3 _ hw)) ?_
    rw [conj_val, hvec, mulVec_smul, mulVec_mulVec, ← Units.val_mul, mul_inv_cancel, Units.val_one, one_mulVec, tU_val]
    congr 1
    ext p q
    simp only [vecMulVec_apply, Pi.smul_apply, smul_eq_mul, Pi.single_apply]
    split_ifs
    · linear_combination (v p) * ht
    · simp
  rcases Nat.eq_zero_or_pos j.val with hj0 | hjpos
  · have hn3 : 3 ≤ n := by omega
    let m0 : Fin n := ⟨n - 1, by omega⟩
    let i1 : Fin n := ⟨1, by omega⟩
    have hm0j : j ≠ m0 := fun e => by
      have := congrArg Fin.val e
      simp [m0] at this
      omega
    have hi1j : j ≠ i1 := fun e => by
      have := congrArg Fin.val e
      simp [i1] at this
      omega
    have hm0i1 : i1 ≠ m0 := fun e => by
      have := congrArg Fin.val e
      simp [m0, i1] at this
      omega
    have hX := KEY (Pi.single m0 1) (sdot _ _ _ hm0j)
    have hu1 : tU (Pi.single j 1) (Pi.single i1 1) (sdot _ _ _ hi1j.symm) ∈ unip k n :=
      tU_mem_unip _ _ _ (fun p q hpq => by
        simp only [Pi.single_apply]
        split_ifs with h1 h2 <;> first | (simp; done) | (subst h1 h2; simp [i1] at hpq; omega))
    have hQ : tU (Pi.single m0 (-1)) (Pi.single i1 1) (sdot _ _ _ hm0i1) ∈ H := by
      have := H.mul_mem (H.inv_mem hX) (hU _ hu1 _ hX)
      exact (congrArg (· ∈ H) (comm_a (k := k) j i1 m0 hi1j hm0j hm0i1)).mp this
    refine H4 j i1 (by simp [i1, hj0]) (by simp [i1]; omega) (fun x => ⟨sdot _ _ _ hi1j.symm, ?_⟩)
    have hP : tU (Pi.single j (-x)) (Pi.single m0 1) (sdot _ _ _ hm0j.symm) ∈ unip k n :=
      tU_mem_unip _ _ _ (fun p q hpq => by
        simp only [Pi.single_apply]
        split_ifs with h1 h2 <;> first | (simp; done) | (subst h1 h2; simp [m0] at hpq; omega))
    have hZ := H.mul_mem (hU _ hP _ hQ) (H.inv_mem hQ)
    exact ofVal _ _ hZ ((congrArg Units.val (comm_b j i1 m0 hi1j hm0j hm0i1 (-x) (-1))).trans
      (by rw [tU_val, tU_val, neg_mul_neg, mul_one]))
  · let i : Fin n := ⟨j.val - 1, by omega⟩
    have hij : j ≠ i := fun e => by
      have := congrArg Fin.val e
      simp [i] at this
      omega
    exact H4 i j (by simp [i]; omega) hjr (fun x => ⟨sdot _ _ _ hij, KEY _ _⟩)

end GlobalTheory.PosAgree
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormalisedSubgroupColumnMatricesEntryZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormalisedSubgroupColumnMatricesEntryZeroStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormalisedSubgroupColumnMatricesEntryZeroStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsCompOfOne\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormalisedSubgroupColumnMatricesEntryZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Formalism.L2 Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.RecTie GlobalTheory.Mem GlobalTheory.Mem.R3 GlobalTheory.HeightCounting GlobalTheory.CenFrame
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.normalised_subgroup_column_matrices_entry_zero : ∀ (k : Type) [CommRing k], IsField k → ∀ n r : ℕ, 2 ≤ r → r < n → ∀ (H : Subgroup (GL (Fin n) k)) (b : GL (Fin n) k), (∀ u ∈ unip k n, ∀ h ∈ H, u * h * u⁻¹ ∈ H) → (∀ (h : GL (Fin n) k) (m : Fin n) (v : Fin n → k), r ≤ (m : ℕ) → v m = 0 → h.val = colMat v m → h ∈ H) → (∀ (h : GL (Fin n) k) (m : Fin n) (v : Fin n → k), r ≤ (m : ℕ) → v m = 0 → (b * h * b⁻¹).val = colMat v m → h ∈ H) → (∀ i j : Fin n, (i : ℕ) + 1 = j → (j : ℕ) < r → ∃ (c : k) (h : GL (Fin n) k), h.val = Matrix.transvection i j c ∧ h ∉ H) → ∀ a c : Fin n, r ≤ (a : ℕ) → (c : ℕ) < r → b.val a c = 0 := by
  first | exact @GlobalTheory.PosAgree.entry_zero
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormalisedSubgroupColumnMatricesEntryZeroStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetOneAddVecMulVecSingle =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetOneAddVecMulVecSingle", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsCompOfOne\npublic import Formalism.LocalToGlobal.GaloisLevelStructure.DefsLevel\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsTrivOutsideLoc\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeDoubleCosetOperatorsStandardFacts\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NormalisedSubgroupColumnMatricesEntryZeroStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Formalism.L2 Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.RecTie GlobalTheory.Mem GlobalTheory.Mem.R3 GlobalTheory.HeightCounting GlobalTheory.CenFrame
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.ParaForce

variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ}

abbrev incl (s : ReciprocityTheory.Aut.SplitPlace L) : Os s →+* s.v.adicCompletion (maximalRealSubfield L) :=
  (s.v.adicCompletionIntegers (maximalRealSubfield L)).subtype

theorem isCompOf_iff (s : ReciprocityTheory.Aut.SplitPlace L) (κ : Formalism.AUTREP.GAf L n) (y : GL (Fin n) (Os s)) :
    IsCompOf s κ y ↔ s.loc n κ = Matrix.GeneralLinearGroup.map (incl s) y := by
  constructor
  · intro h
    ext a c
    rw [← h a c]
    rfl
  · intro h a c
    rw [h]
    rfl

theorem isCompOf_mul {s : ReciprocityTheory.Aut.SplitPlace L} {κ κ' : Formalism.AUTREP.GAf L n} {y y' : GL (Fin n) (Os s)}
    (h : IsCompOf s κ y) (h' : IsCompOf s κ' y') : IsCompOf s (κ * κ') (y * y') := by
  rw [isCompOf_iff] at *
  rw [map_mul, map_mul, h, h']

theorem isCompOf_inv {s : ReciprocityTheory.Aut.SplitPlace L} {κ : Formalism.AUTREP.GAf L n} {y : GL (Fin n) (Os s)}
    (h : IsCompOf s κ y) : IsCompOf s κ⁻¹ y⁻¹ := by
  rw [isCompOf_iff] at *
  rw [map_inv, map_inv, h]

theorem exists_lift (s : ReciprocityTheory.Aut.SplitPlace L) (y : GL (Fin n) (Os s)) :
    ∃ κ : Formalism.AUTREP.GAf L n, ReciprocityTheory.Aut.TrivOutside {s.v} κ ∧ IsCompOf s κ y := by
  obtain ⟨x, hx, e⟩ := GlobalTheory.SplitSec.exists_trivOutside_loc L n s (Matrix.GeneralLinearGroup.map (incl s) y)
  exact ⟨x, hx, (isCompOf_iff s x y).2 e⟩

theorem isUnit_of_not_lt (s : ReciprocityTheory.Aut.SplitPlace L) (x : Os s)
    (hx : ¬ Valued.v (x : s.v.adicCompletion (maximalRealSubfield L)) < 1) : IsUnit x := by
  have h1 : Valued.v (x : s.v.adicCompletion (maximalRealSubfield L)) ≤ 1 := x.2
  have heq : Valued.v (x : s.v.adicCompletion (maximalRealSubfield L)) = 1 := le_antisymm h1 (not_lt.1 hx)
  have hx0 : (x : s.v.adicCompletion (maximalRealSubfield L)) ≠ 0 := by
    intro h
    rw [h, map_zero] at heq
    exact zero_ne_one heq
  have hinv : (x : s.v.adicCompletion (maximalRealSubfield L))⁻¹ ∈ s.v.adicCompletionIntegers (maximalRealSubfield L) := by
    change Valued.v ((x : s.v.adicCompletion (maximalRealSubfield L))⁻¹) ≤ 1
    rw [map_inv₀, heq, inv_one]
  refine ⟨⟨x, ⟨_, hinv⟩, ?_, ?_⟩, rfl⟩ <;> apply Subtype.ext <;> simp [hx0]

theorem exists_gl_lift (s : ReciprocityTheory.Aut.SplitPlace L) {k : Type} [CommRing k] (φ : Os s →+* k) (hk : IsField k)
    (hφ : IsResidue s φ) (h : GL (Fin n) k) :
    ∃ y : GL (Fin n) (Os s), Matrix.GeneralLinearGroup.map φ y = h := by
  haveI : Nontrivial k := ⟨hk.exists_pair_ne⟩
  choose g hg using hφ.surj
  let M : Matrix (Fin n) (Fin n) (Os s) := fun a c => g (h.val a c)
  have hM : M.map φ = h.val := by
    ext a c
    exact hg _
  have hdet : IsUnit M.det := by
    apply isUnit_of_not_lt
    intro hlt
    have h0 : φ M.det = 0 := (hφ.ker _).2 hlt
    rw [RingHom.map_det, RingHom.mapMatrix_apply, hM] at h0
    exact (Matrix.isUnits_det_units h).ne_zero h0
  refine ⟨Matrix.nonsingInvUnit M hdet, ?_⟩
  ext a c
  simp [Matrix.GeneralLinearGroup.map, ← hM]
  rfl

end GlobalTheory.ParaForce

namespace GlobalTheory.ParaForce

theorem det_one_add_vecMulVec_single {ι R : Type} [Fintype ι] [DecidableEq ι] [CommRing R] (w : ι → R) (m : ι)
    (hw : w m = 0) : (1 + Matrix.vecMulVec w (Pi.single m 1)).det = 1 := by
  rw [Matrix.vecMulVec_eq Unit, Matrix.det_one_add_replicateCol_mul_replicateRow]
  simp [hw]

theorem det_upperUnitri {R : Type} [CommRing R] {n : ℕ} (M : Matrix (Fin n) (Fin n) R)
    (hlow : ∀ a c : Fin n, c < a → M a c = 0) (hdiag : ∀ a, M a a = 1) : M.det = 1 := by
  rw [Matrix.det_of_upperTriangular (fun a c h => hlow a c h)]
  simp [hdiag]

section
variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ}

theorem map_incl_apply (s : ReciprocityTheory.Aut.SplitPlace L) (y : GL (Fin n) (Os s)) (a c : Fin n) :
    (Matrix.GeneralLinearGroup.map (incl s) y).val a c = ((y.val a c : Os s) : s.v.adicCompletion (maximalRealSubfield L)) := rfl

theorem uniRT_of (s : ReciprocityTheory.Aut.SplitPlace L) (r : ℕ) (y : GL (Fin n) (Os s))
    (hlow : ∀ a c : Fin n, (c : ℕ) < r → (c : ℕ) < a → y.val a c = 0) (hdiag : ∀ a : Fin n, (a : ℕ) < r → y.val a a = 1) :
    NG.UniRT s r (Matrix.GeneralLinearGroup.map (incl s) y) := by
  refine ⟨⟨⟨y, rfl⟩, fun a c ha hc => ?_⟩, fun a c ha hc => ⟨fun hca => ?_, fun hac => ?_⟩⟩
  · rw [map_incl_apply, hlow a c hc (by omega)]
    simp
  · rw [map_incl_apply, hlow a c hc hca]
    simp
  · subst hac
    rw [map_incl_apply, hdiag a ha]
    simp

theorem detDD_map (s : ReciprocityTheory.Aut.SplitPlace L) (r : ℕ) (y : GL (Fin n) (Os s)) :
    NG.detDD s r (Matrix.GeneralLinearGroup.map (incl s) y) =
      incl s (Matrix.of fun a b : {x : Fin n // r ≤ x.val} => y.val a.1 b.1).det := by
  rw [RingHom.map_det]
  rfl

end
end GlobalTheory.ParaForce

namespace GlobalTheory.ParaForce

theorem transvection_apply' {R : Type} [CommRing R] {n : ℕ} (i j a c : Fin n) (x : R) :
    Matrix.transvection i j x a c = (1 : Matrix (Fin n) (Fin n) R) a c + if a = i ∧ c = j then x else 0 := by
  simp only [Matrix.transvection, Matrix.add_apply, Matrix.single_apply]
  by_cases h1 : a = i <;> by_cases h2 : c = j
  · subst h1 h2; simp
  · subst h1; simp [h2, Ne.symm h2]
  · subst h2; simp [h1, Ne.symm h1]
  · simp [h1, h2, Ne.symm h1, Ne.symm h2]

theorem map_transvection_entry {R k : Type} [CommRing R] [CommRing k] (φ : R →+* k) {n : ℕ} (i j a c : Fin n) (x : R) :
    φ ((1 : Matrix (Fin n) (Fin n) R) a c + if a = i ∧ c = j then x else 0) = Matrix.transvection i j (φ x) a c := by
  rw [transvection_apply', map_add (f := _)]
  by_cases h1 : a = c
  · subst h1; simp [apply_ite φ]
  · simp [h1, apply_ite φ]

end GlobalTheory.ParaForce

namespace GlobalTheory.ParaForce

theorem para_of_colMat_fixed : ∀ (L : Type) [Field L] [NumberField L] [IsCMField L] (n r : ℕ) (s : ReciprocityTheory.Aut.SplitPlace L) (k : Type) [CommRing k] (φ : Os s →+* k), IsField k → IsResidue s φ → 2 ≤ r → r < n → ∀ (W : Type) [AddCommGroup W] [Module ℂ W] (f : Formalism.AUTREP.GAf L n → W), f ≠ 0 → ∀ (J : Subgroup (Formalism.AUTREP.GAf L n)) (χ : J →* ℂˣ) (ψ₀ : AddChar (s.v.adicCompletion (maximalRealSubfield L)) ℂ) (ξ : (s.v.adicCompletion (maximalRealSubfield L))ˣ →* ℂˣ), NG.IsPsi0 s ψ₀ → NG.LevelUni J χ s r ψ₀ ξ → (∀ (κ : J) (x : Formalism.AUTREP.GAf L n), f (x * κ) = ((χ κ : ℂˣ) : ℂ) • f x) → ∀ b : GL (Fin n) k, (∀ (κ : Formalism.AUTREP.GAf L n) (y : GL (Fin n) (Os s)), ReciprocityTheory.Aut.TrivOutside {s.v} κ → IsCompOf s κ y → ∀ (m : Fin n) (v : Fin n → k), r ≤ (m : ℕ) → v m = 0 → (b * Matrix.GeneralLinearGroup.map φ y * b⁻¹).val = colMat v m → ∀ x, f (x * κ) = f x) → ∀ a c : Fin n, r ≤ (a : ℕ) → (c : ℕ) < r → b.val a c = 0 := by
  intro L _ _ _ n r s k _ φ hk hφ hr hrn W _ _ f hf J χ ψ₀ ξ hψ hJ hfJ b hb
  haveI : Nontrivial k := ⟨hk.exists_pair_ne⟩
  have hker : ∀ (κ : Formalism.AUTREP.GAf L n) (y : GL (Fin n) (Os s)), ReciprocityTheory.Aut.TrivOutside {s.v} κ → IsCompOf s κ y →
      Matrix.GeneralLinearGroup.map φ y = 1 → ∀ x, f (x * κ) = f x := by
    intro κ y hκ hy h1 x
    refine hb κ y hκ hy ⟨n - 1, by omega⟩ 0 (by simp only; omega) rfl ?_ x
    rw [h1, mul_one, mul_inv_cancel]
    ext a c
    simp [colMat]
  have htr : ∀ (κ : Formalism.AUTREP.GAf L n) (y : GL (Fin n) (Os s)) (κ' : Formalism.AUTREP.GAf L n) (y' : GL (Fin n) (Os s)),
      ReciprocityTheory.Aut.TrivOutside {s.v} κ → IsCompOf s κ y → ReciprocityTheory.Aut.TrivOutside {s.v} κ' → IsCompOf s κ' y' →
      Matrix.GeneralLinearGroup.map φ y = Matrix.GeneralLinearGroup.map φ y' → (∀ x, f (x * κ) = f x) →
      ∀ x, f (x * κ') = f x := by
    intro κ y κ' y' hκ hy hκ' hy' e hfix x
    have hd := hker (κ⁻¹ * κ') (y⁻¹ * y') (GlobalTheory.HeckeStdFacts.triv_mul (GlobalTheory.HeckeStdFacts.triv_inv hκ) hκ')
      (isCompOf_mul (isCompOf_inv hy) hy') (by rw [map_mul, map_inv, e, inv_mul_cancel])
    calc f (x * κ') = f ((x * κ) * (κ⁻¹ * κ')) := by rw [mul_assoc, mul_inv_cancel_left]
      _ = f (x * κ) := hd _
      _ = f x := hfix x
  have lift : ∀ h : GL (Fin n) k, ∃ κ : Formalism.AUTREP.GAf L n, ∃ y : GL (Fin n) (Os s),
      ReciprocityTheory.Aut.TrivOutside {s.v} κ ∧ IsCompOf s κ y ∧ Matrix.GeneralLinearGroup.map φ y = h := by
    intro h
    obtain ⟨y, hy⟩ := exists_gl_lift s φ hk hφ h
    obtain ⟨κ, hκ, hc⟩ := exists_lift s y
    exact ⟨κ, y, hκ, hc, hy⟩
  let H : Subgroup (GL (Fin n) k) :=
    { carrier := {h | ∀ (κ : Formalism.AUTREP.GAf L n) (y : GL (Fin n) (Os s)), ReciprocityTheory.Aut.TrivOutside {s.v} κ →
          IsCompOf s κ y → Matrix.GeneralLinearGroup.map φ y = h → ∀ x, f (x * κ) = f x}
      mul_mem' := by
        intro h1 h2 H1 H2 κ y hκ hy e
        obtain ⟨κ1, y1, hκ1, hy1, e1⟩ := lift h1
        obtain ⟨κ2, y2, hκ2, hy2, e2⟩ := lift h2
        refine htr (κ1 * κ2) (y1 * y2) κ y (GlobalTheory.HeckeStdFacts.triv_mul hκ1 hκ2) (isCompOf_mul hy1 hy2) hκ hy
          (by rw [map_mul, e1, e2, e]) ?_
        intro x
        rw [← mul_assoc, H2 κ2 y2 hκ2 hy2 e2, H1 κ1 y1 hκ1 hy1 e1]
      one_mem' := fun κ y hκ hy e => hker κ y hκ hy e
      inv_mem' := by
        intro h H1 κ y hκ hy e
        obtain ⟨κ1, y1, hκ1, hy1, e1⟩ := lift h
        refine htr κ1⁻¹ y1⁻¹ κ y (GlobalTheory.HeckeStdFacts.triv_inv hκ1) (isCompOf_inv hy1) hκ hy
          (by rw [map_inv, e1, e]) ?_
        intro x
        have := H1 κ1 y1 hκ1 hy1 e1 (x * κ1⁻¹)
        rw [inv_mul_cancel_right] at this
        exact this.symm }
  have hmem : ∀ (κ : Formalism.AUTREP.GAf L n) (y : GL (Fin n) (Os s)), ReciprocityTheory.Aut.TrivOutside {s.v} κ → IsCompOf s κ y →
      (∀ x, f (x * κ) = f x) → Matrix.GeneralLinearGroup.map φ y ∈ H :=
    fun κ y hκ hy hfix κ' y' hκ' hy' e => htr κ y κ' y' hκ hy hκ' hy' e.symm hfix
  have hJact : ∀ (κ : Formalism.AUTREP.GAf L n) (y : GL (Fin n) (Os s)), ReciprocityTheory.Aut.TrivOutside {s.v} κ → IsCompOf s κ y →
      NG.UniRT s r (Matrix.GeneralLinearGroup.map (incl s) y) → ∃ hJκ : κ ∈ J,
        ∀ u : (s.v.adicCompletion (maximalRealSubfield L))ˣ,
        (u : s.v.adicCompletion (maximalRealSubfield L)) = NG.detDD s r (Matrix.GeneralLinearGroup.map (incl s) y) →
        ((χ ⟨κ, hJκ⟩ : ℂˣ) : ℂ) = ψ₀ (NG.supDiag s r (Matrix.GeneralLinearGroup.map (incl s) y)) * ξ u := by
    intro κ y hκ hy hU
    rw [isCompOf_iff] at hy
    have hJκ : κ ∈ J := (hJ.mem κ hκ).2 (by rw [hy]; exact hU)
    refine ⟨hJκ, fun u hu => ?_⟩
    rw [← hy] at hu ⊢
    exact hJ.chr κ hJκ hκ u hu
  have hnorm : ∀ u ∈ unip k n, ∀ h ∈ H, u * h * u⁻¹ ∈ H := by
    intro u hu h hh
    have hu1 : u.val.BlockTriangular fun a => (a : ℕ) := hu.1
    have hu2 : ∀ a, u.val a a = 1 := hu.2
    choose g hg using hφ.surj
    let M : Matrix (Fin n) (Fin n) (Os s) := fun a c => if a < c then g (u.val a c) else if a = c then 1 else 0
    have hlow : ∀ a c : Fin n, c < a → M a c = 0 := by
      intro a c hca
      simp [M, not_lt.2 hca.le, hca.ne']
    have hdiag : ∀ a, M a a = 1 := by
      intro a
      simp [M]
    have hdet : M.det = 1 := det_upperUnitri M hlow hdiag
    let yu : GL (Fin n) (Os s) := Matrix.nonsingInvUnit M (by rw [hdet]; exact isUnit_one)
    have hyu : Matrix.GeneralLinearGroup.map φ yu = u := by
      ext a c
      show φ (M a c) = u.val a c
      rcases lt_trichotomy a c with hac | hac | hac
      · simp [M, hac, hg]
      · subst hac
        simp [M, hu2 a]
      · rw [hlow a c hac, map_zero, hu1 (show (c : ℕ) < a from hac)]
    obtain ⟨κu, hκu, hcu⟩ := exists_lift s yu
    have hUu : NG.UniRT s r (Matrix.GeneralLinearGroup.map (incl s) yu) :=
      uniRT_of s r yu (fun a c _ hca => hlow a c hca) (fun a _ => hdiag a)
    obtain ⟨hJu, -⟩ := hJact κu yu hκu hcu hUu
    obtain ⟨κh, yh, hκh, hch, eh⟩ := lift h
    rw [← hyu, ← eh, ← map_inv, ← map_mul, ← map_mul]
    refine hmem (κu * κh * κu⁻¹) (yu * yh * yu⁻¹)
      (GlobalTheory.HeckeStdFacts.triv_mul (GlobalTheory.HeckeStdFacts.triv_mul hκu hκh) (GlobalTheory.HeckeStdFacts.triv_inv hκu))
      (isCompOf_mul (isCompOf_mul hcu hch) (isCompOf_inv hcu)) ?_
    intro x
    have h1 : f (x * κu * κh * κu⁻¹) = (((χ ⟨κu, hJu⟩)⁻¹ : ℂˣ) : ℂ) • f (x * κu * κh) := by
      rw [← map_inv]
      exact hfJ ⟨κu, hJu⟩⁻¹ (x * κu * κh)
    have h2 : f (x * κu) = ((χ ⟨κu, hJu⟩ : ℂˣ) : ℂ) • f x := hfJ ⟨κu, hJu⟩ x
    have h3 : f (x * κu * κh) = f (x * κu) := hh κh yh hκh hch eh (x * κu)
    rw [show x * (κu * κh * κu⁻¹) = x * κu * κh * κu⁻¹ by simp only [mul_assoc], h1, h3, h2, smul_smul,
      Units.inv_mul, one_smul]
  have hcol : ∀ (h : GL (Fin n) k) (m : Fin n) (v : Fin n → k), r ≤ (m : ℕ) → v m = 0 → h.val = colMat v m → h ∈ H := by
    intro h m v hm hv e
    choose g hg using hφ.surj
    let w : Fin n → Os s := fun a => if a = m then 0 else g (v a)
    have hwm : w m = 0 := by simp [w]
    let M : Matrix (Fin n) (Fin n) (Os s) := 1 + Matrix.vecMulVec w (Pi.single m 1)
    have hMe : ∀ a c, M a c = (1 : Matrix (Fin n) (Fin n) (Os s)) a c + if c = m then w a else 0 := by
      intro a c
      simp [M, Matrix.vecMulVec_apply, Pi.single_apply]
    let y : GL (Fin n) (Os s) := Matrix.nonsingInvUnit M (by rw [det_one_add_vecMulVec_single w m hwm]; exact isUnit_one)
    have hy : Matrix.GeneralLinearGroup.map φ y = h := by
      ext a c
      show φ (M a c) = h.val a c
      rw [hMe, e]
      simp only [colMat, Matrix.add_apply, Matrix.vecMulVec_apply, Pi.single_apply]
      by_cases hc : c = m <;> by_cases ha : a = m <;> simp [hc, ha, w, hg, hv, Matrix.one_apply]
    obtain ⟨κ, hκ, hcκ⟩ := exists_lift s y
    have hU : NG.UniRT s r (Matrix.GeneralLinearGroup.map (incl s) y) := by
      refine uniRT_of s r y (fun a c hc hca => ?_) (fun a ha => ?_)
      · have h1 : c ≠ m := fun h => by subst h; omega
        have h2 : a ≠ c := fun h => by subst h; omega
        show M a c = 0
        rw [hMe]
        simp [h1, h2]
      · have h1 : a ≠ m := fun h => by subst h; omega
        show M a a = 1
        rw [hMe]
        simp [h1]
    obtain ⟨hJκ, hχ⟩ := hJact κ y hκ hcκ hU
    have hsup : NG.supDiag s r (Matrix.GeneralLinearGroup.map (incl s) y) = 0 := by
      unfold NG.supDiag
      refine Finset.sum_eq_zero fun a _ => Finset.sum_eq_zero fun c _ => ?_
      split_ifs with hac
      · have h1 : c ≠ m := fun h => by subst h; omega
        have h2 : a ≠ c := fun h => by subst h; omega
        rw [map_incl_apply]
        show ((M a c : Os s) : s.v.adicCompletion (maximalRealSubfield L)) = 0
        rw [hMe]
        simp [h1, h2]
      · rfl
    have hdd : NG.detDD s r (Matrix.GeneralLinearGroup.map (incl s) y) = 1 := by
      rw [detDD_map]
      have hb' : (Matrix.of fun a b : {x : Fin n // r ≤ x.val} => y.val a.1 b.1) =
          1 + Matrix.vecMulVec (fun a : {x : Fin n // r ≤ x.val} => w a.1) (Pi.single ⟨m, hm⟩ 1) := by
        refine Matrix.ext fun a c => ?_
        show M a.1 c.1 = _
        rw [hMe]
        simp [Matrix.one_apply, Matrix.vecMulVec_apply, Pi.single_apply, Subtype.ext_iff]
      rw [hb', det_one_add_vecMulVec_single (fun a : {x : Fin n // r ≤ x.val} => w a.1) ⟨m, hm⟩ hwm, map_one]
    rw [← hy]
    refine hmem κ y hκ hcκ fun x => ?_
    rw [hfJ ⟨κ, hJκ⟩ x, hχ 1 (by rw [hdd]; rfl), hsup, AddChar.map_zero_eq_one, map_one, Units.val_one, one_mul, one_smul]
  have hroot : ∀ i j : Fin n, (i : ℕ) + 1 = j → (j : ℕ) < r →
      ∃ (c : k) (h : GL (Fin n) k), h.val = Matrix.transvection i j c ∧ h ∉ H := by
    intro i j hij hjr
    obtain ⟨x0, hx0, hψx⟩ := hψ.2
    let x' : Os s := ⟨x0, hx0⟩
    have hne : i ≠ j := fun h => by subst h; omega
    let y : GL (Fin n) (Os s) :=
      Matrix.nonsingInvUnit (Matrix.transvection i j x') (by rw [Matrix.det_transvection_of_ne _ _ hne]; exact isUnit_one)
    have hent : ∀ a c, y.val a c = (1 : Matrix (Fin n) (Fin n) (Os s)) a c + if a = i ∧ c = j then x' else 0 := by
      intro a c
      exact transvection_apply' i j a c x'
    refine ⟨φ x', Matrix.GeneralLinearGroup.map φ y, ?_, ?_⟩
    · refine Matrix.ext fun a c => ?_
      show φ (y.val a c) = _
      rw [hent]
      exact map_transvection_entry φ i j a c x'
    · intro hmemH
      obtain ⟨κ, hκ, hcκ⟩ := exists_lift s y
      have hU : NG.UniRT s r (Matrix.GeneralLinearGroup.map (incl s) y) := by
        refine uniRT_of s r y (fun a c hc hca => ?_) (fun a ha => ?_)
        · have h2 : a ≠ c := fun h => by subst h; omega
          have h3 : ¬ (a = i ∧ c = j) := fun h => by obtain ⟨rfl, rfl⟩ := h; omega
          rw [hent]
          simp [h2, h3]
        · have h3 : ¬ (a = i ∧ a = j) := fun h => hne (h.1.symm.trans h.2)
          rw [hent]
          simp [h3]
      obtain ⟨hJκ, hχ⟩ := hJact κ y hκ hcκ hU
      have hterm : ∀ a c : Fin n, (if (a : ℕ) + 1 = c ∧ (c : ℕ) < r then
          (Matrix.GeneralLinearGroup.map (incl s) y).val a c else 0) = if a = i ∧ c = j then x0 else 0 := by
        intro a c
        rw [map_incl_apply, hent]
        by_cases h1 : a = i ∧ c = j
        · obtain ⟨rfl, rfl⟩ := h1
          simp [hij, hjr, hne, x']
        · rw [if_neg h1]
          split_ifs with h4
          · have h2 : a ≠ c := fun h => by subst h; omega
            simp [h2]
          · rfl
      have hsup : NG.supDiag s r (Matrix.GeneralLinearGroup.map (incl s) y) = x0 := by
        unfold NG.supDiag
        simp only [hterm]
        rw [Finset.sum_eq_single i (fun a _ ha => by simp [ha]) (by simp)]
        simp
      have hdd : NG.detDD s r (Matrix.GeneralLinearGroup.map (incl s) y) = 1 := by
        rw [detDD_map]
        have hb' : (Matrix.of fun a b : {x : Fin n // r ≤ x.val} => y.val a.1 b.1) = 1 := by
          refine Matrix.ext fun a c => ?_
          have h3 : ¬ (a.1 = i ∧ c.1 = j) := fun h => by have := a.2; rw [h.1] at this; omega
          show y.val a.1 c.1 = _
          rw [hent]
          simp [Matrix.one_apply, h3, Subtype.ext_iff]
        rw [hb', Matrix.det_one, map_one]
      have key : ∀ z, f z = ψ₀ x0 • f z := by
        intro z
        have h1 := hmemH κ y hκ hcκ rfl z
        have h2 := hfJ ⟨κ, hJκ⟩ z
        rw [hχ 1 (by rw [hdd]; rfl), hsup, map_one, Units.val_one, mul_one] at h2
        rw [← h2]
        exact h1.symm
      obtain ⟨z, hz⟩ : ∃ z, f z ≠ 0 := by
        by_contra hcon
        push_neg at hcon
        exact hf (funext hcon)
      have h0 : (ψ₀ x0 - 1) • f z = 0 := by rw [sub_smul, one_smul, ← key, sub_self]
      rcases smul_eq_zero.1 h0 with h | h
      · exact hψx (sub_eq_zero.1 h)
      · exact hz h
  exact GlobalTheory.T.normalised_subgroup_column_matrices_entry_zero k hk n r hr hrn H b hnorm hcol
    (fun h m v hm hv e κ y hκ hy ey x => hb κ y hκ hy m v hm hv (by rw [ey]; exact e) x) hroot

end GlobalTheory.ParaForce
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetOneAddVecMulVecSingle =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SeriesLocalOfHypothesis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SeriesLocalOfHypothesis", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsCompOfOne\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsTypeGroupBlockLift\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFrameUnitaryDivisorSplit\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DetOneAddVecMulVecSingle\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLatticeCongruenceInLevelCharacterOne\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSplitPlaceWPlGw\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSplitReductionStandardFrameConj\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeDoubleCosetOperatorsStandardFacts\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftFormLvlOp\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LocalizationFreeStageTrueGroupColumnChoiceStep\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PlacesUnder\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ProvisionalRowsFurtherCompatibilitiesAtState\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TrivOutsideListProd\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.EqOrIsConjPlaceOfOverSplitPlace\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Formalism.L2 Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.RecTie GlobalTheory.Mem GlobalTheory.Mem.R3 GlobalTheory.HeightCounting
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.CenFrame

section Mat

variable {k : Type} [CommRing k] {n n' r t : ℕ}

theorem blkOf_eq (h : n = r + t) (ht : 0 < t) : blkOf (n := n) r t = blk2 r := by
  funext a
  unfold blkOf blk2
  split_ifs with ha
  · rfl
  · have := a.2
    rw [Nat.div_eq_of_lt (by omega)]

theorem mem_twoBlockTriangular_of_blockTriangular {x : GL (Fin n) k} (h : ∀ a c : Fin n, r ≤ (a : ℕ) → (c : ℕ) < r → x.val a c = 0) : x ∈ blockTri (blk2 r) := by
  refine mem_blockTri.2 fun a c hac => ?_
  unfold blk2 at hac
  by_cases ha : (a : ℕ) < r <;> by_cases hc : (c : ℕ) < r <;> simp [ha, hc] at hac
  exact h a c (by omega) hc

theorem colMat_blocks (hn : n' = n) (h : n = r + t) (ht : 0 < t) (hr : r ≤ n') (x : GL (Fin n') k) (m : Fin n) (v : Fin n → k)
    (hm : r ≤ (m : ℕ)) (hv : v m = 0) (hx : ∀ a c, x.val (Fin.cast hn.symm a) (Fin.cast hn.symm c) = colMat v m a c) :
    x ∈ blockTri (blkOf r t) ∧ dBlk (blkOf r t) 1 x = 1 ∧ upperLeftBlock hr x = 1 := by
  subst hn
  have hx' : ∀ a c, x.val a c = (if a = c then 1 else 0) + v a * (if c = m then 1 else 0) := fun a c => by
    have := hx a c
    simpa [colMat, Matrix.one_apply, Matrix.vecMulVec_apply, Pi.single_apply] using this
  have hb : x ∈ blockTri (blk2 r) := mem_twoBlockTriangular_of_blockTriangular fun a c ha hc => by
    rw [hx', if_neg (by rintro rfl; omega), if_neg (by rintro rfl; omega)]; simp
  rw [blkOf_eq h ht]
  refine ⟨hb, Units.ext ?_, Units.ext ?_⟩
  · rw [diag_block_det_val 1 hb]
    have hm1 : blk2 r m = 1 := by unfold blk2; rw [if_neg (by omega)]
    have e : (x : Matrix (Fin n') (Fin n') k).submatrix (Subtype.val : {a : Fin n' // blk2 r a = 1} → Fin n') Subtype.val =
        1 + Matrix.replicateCol Unit (fun a : {a : Fin n' // blk2 r a = 1} => v a.1) *
          Matrix.replicateRow Unit (Pi.single (⟨m, hm1⟩ : {a : Fin n' // blk2 r a = 1}) (1 : k)) := by
      ext a c
      simp [hx', Matrix.one_apply, Matrix.mul_apply, Pi.single_apply, Subtype.ext_iff]
    rw [e, Matrix.det_one_add_replicateCol_mul_replicateRow]
    simp [hv]
  · rw [upper_block_val_submatrix hr hb]
    ext a c
    have hc : Fin.castLE hr c ≠ m := by
      rintro rfl
      have := c.2
      simp at hm
      omega
    simp [hx', hc, Matrix.one_apply]

theorem conj_blocks (hn : n' = n) (h : n = r + t) (ht : 0 < t) (hr : r ≤ n) (hr' : r ≤ n') (b : GL (Fin n) k)
    (hb : ∀ a c : Fin n, r ≤ (a : ℕ) → (c : ℕ) < r → b.val a c = 0) (g : GL (Fin r) k) (e : GL (Fin n) k)
    (he : ∀ a c : Fin n, e.val a c = if hac : (a : ℕ) < r ∧ (c : ℕ) < r then g.val ⟨a, hac.1⟩ ⟨c, hac.2⟩ else if a = c then 1 else 0)
    (x : GL (Fin n') k) (hx : ∀ a c, x.val (Fin.cast hn.symm a) (Fin.cast hn.symm c) = (b * e * b⁻¹).val a c) :
    x ∈ blockTri (blkOf r t) ∧ dBlk (blkOf r t) 1 x = 1 ∧ upperLeftBlock hr' x = upperLeftBlock hr b * g * (upperLeftBlock hr b)⁻¹ := by
  subst hn
  obtain rfl : x = b * e * b⁻¹ := Units.ext (Matrix.ext fun a c => hx a c)
  have hb' : b ∈ blockTri (blk2 r) := mem_twoBlockTriangular_of_blockTriangular hb
  have he' : e ∈ blockTri (blk2 r) := mem_twoBlockTriangular_of_blockTriangular fun a c ha hc => by
    rw [he, dite_eq_right (by omega), if_neg (by rintro rfl; omega)]
  have hd : dBlk (blk2 r) 1 e = 1 := by
    refine Units.ext ?_
    rw [diag_block_det_val 1 he']
    have e1 : (e : Matrix (Fin n') (Fin n') k).submatrix (Subtype.val : {a : Fin n' // blk2 r a = 1} → Fin n') (Subtype.val : {a : Fin n' // blk2 r a = 1} → Fin n') = 1 := by
      ext a c
      have ha : ¬ ((a.1 : ℕ) < r) := fun h' => by
        have := a.2
        unfold blk2 at this
        rw [if_pos h'] at this
        omega
      rw [Matrix.submatrix_apply, he, dite_eq_right (fun h' => ha h'.1)]
      simp [Matrix.one_apply, Subtype.ext_iff]
    rw [e1]
    simp
  have hg : upperLeftBlock hr e = g := by
    refine Units.ext ?_
    rw [upper_block_val_submatrix hr he']
    ext a c
    rw [Matrix.submatrix_apply, he, dite_eq_left ⟨a.2, c.2⟩]
    rfl
  rw [blkOf_eq h ht]
  refine ⟨mul_mem (mul_mem hb' he') (inv_mem hb'), ?_, ?_⟩
  · rw [diag_block_det_mul (mul_mem hb' he') (inv_mem hb'), diag_block_det_mul hb' he', hd, mul_one, ← diag_block_det_mul hb' (inv_mem hb'), mul_inv_cancel]
    exact blockDiagonalExtendByOnePrimeField_one _ _
  · rw [← hg]
    exact (extendMatrixByIdentityAlongIndices_mul _ (mul_mem hb' he') (inv_mem hb')).trans
      (congrArg₂ (· * ·) (extendMatrixByIdentityAlongIndices_mul _ hb' he') (extendOne_inv _ hb'))

end Mat

section Loc

variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ}

theorem exists_isCompOf (s : ReciprocityTheory.Aut.SplitPlace L) {κ : Formalism.AUTREP.GAf L n} (h : κ ∈ ReciprocityTheory.Aut.Umax L n) :
    ∃ y, IsCompOf s κ y := by
  have h1 : s.loc n κ ∈ Formalism.UG.GLint (Fin n) (s.v.adicCompletionIntegers (maximalRealSubfield L)).toSubring := by
    rw [GlobalTheory.HeckeStdFacts.mem_GLint_iff, ← map_inv]
    exact ⟨fun i j => GlobalTheory.HeckeStdFacts.proj_mem s (h i j), fun i j => GlobalTheory.HeckeStdFacts.proj_mem s (inv_mem h i j)⟩
  obtain ⟨y, hy⟩ := h1
  exact ⟨y, fun a c => congrArg (fun g : GL (Fin n) _ => g.val a c) hy⟩

theorem mem_Umax_of_isCompOf (s : ReciprocityTheory.Aut.SplitPlace L) {κ : Formalism.AUTREP.GAf L n} (ht : ReciprocityTheory.Aut.TrivOutside {s.v} κ)
    {y : GL (Fin n) (Os s)} (h : IsCompOf s κ y) : κ ∈ ReciprocityTheory.Aut.Umax L n :=
  (GlobalTheory.HeckeStdFacts.loc_mem_GLint_iff s ht).1 ⟨y, Units.ext (Matrix.ext fun a c => h a c)⟩

theorem red_of_isLiftAt (s : ReciprocityTheory.Aut.SplitPlace L) {k : Type} [CommRing k] {φ : Os s →+* k} (hφ : IsResidue s φ) {r p : ℕ}
    (hp : p.Prime) (iso : ZMod p →+* k) (g : GL (Fin r) (ZMod p)) {κ : Formalism.AUTREP.GAf L n} {y : GL (Fin n) (Os s)}
    (hy : IsCompOf s κ y) (hl : GlobalTheory.PendOf.IsLiftAt s r p g (s.loc n κ)) (a c : Fin n) :
    (Matrix.GeneralLinearGroup.map φ y).val a c =
      if hac : (a : ℕ) < r ∧ (c : ℕ) < r then (Formalism.UG.bc iso g).val ⟨a, hac.1⟩ ⟨c, hac.2⟩ else if a = c then 1 else 0 := by
  haveI : NeZero p := ⟨hp.ne_zero⟩
  have h := hl a c
  show φ (y.val a c) = _
  by_cases hac : (a : ℕ) < r ∧ (c : ℕ) < r
  · rw [dite_eq_left hac] at h ⊢
    rw [← hy a c] at h
    have h2 : φ (y.val a c - ((g.val ⟨a, hac.1⟩ ⟨c, hac.2⟩).val : Os s)) = 0 := (hφ.ker _).2 (by
      have e : ((y.val a c - ((g.val ⟨a, hac.1⟩ ⟨c, hac.2⟩).val : Os s) : Os s) : s.v.adicCompletion (maximalRealSubfield L)) =
          (y.val a c : s.v.adicCompletion (maximalRealSubfield L)) - ((g.val ⟨a, hac.1⟩ ⟨c, hac.2⟩).val : ℕ) :=
        (map_sub (s.v.adicCompletionIntegers (maximalRealSubfield L)).subtype _ _).trans
          (congrArg _ (map_natCast (s.v.adicCompletionIntegers (maximalRealSubfield L)).subtype _))
      rw [e]; exact h)
    rw [map_sub, sub_eq_zero, map_natCast] at h2
    rw [h2]
    show _ = iso (g.val ⟨a, hac.1⟩ ⟨c, hac.2⟩)
    rw [← map_natCast iso, ZMod.natCast_zmod_val]
  · rw [dite_eq_right hac] at h ⊢
    rw [← hy a c] at h
    by_cases e : a = c
    · rw [if_pos e] at h ⊢
      rw [show y.val a c = 1 from Subtype.ext h, map_one]
    · rw [if_neg e] at h ⊢
      rw [show y.val a c = 0 from Subtype.ext h, map_zero]

end Loc

section Lev

variable {D : D7}

theorem lev_of_red (V : HSp D) (β : GL (Fin V.rank) (EAf D)) (Ld : Formalism.L2.DIV.LevDat D.host.E ℂ V.rank) (hs : Ld.s = 1) (κ : GA D V)
    (hSt : finE V κ ∈ Formalism.L2.DIV.St β) (hQ : ∀ PP ∈ Ld.Q, redFn β PP (finE V κ) = 1)
    (hP : ∀ PP ∈ Ld.Pg, redFn β PP (finE V κ) ∈ blockTri (blkOf Ld.r Ld.t) ∧ dBlk (blkOf Ld.r Ld.t) 1 (redFn β PP (finE V κ)) = 1) :
    finE V κ ∈ parLev D.sp.cm V.gram β Ld ∧
      levChi V β Ld κ = ((ext1 Ld.P.H Ld.P.chi (rTup β Ld (finE V κ)) : ℂˣ) : ℂ) := by
  refine ⟨mem_parLev.2 ⟨GlobalTheory.LevFinCong.finE_mem_UA V κ, hSt, fun PP h => (hP PP h).1, fun PP h => ?_⟩, ?_⟩
  · rw [hQ PP h]; exact one_mem _
  · unfold levChi levFn
    rw [Finset.prod_eq_one, Finset.prod_eq_one, mul_one, mul_one]
    · intro PP h
      rw [hQ PP h, dBlk, blockDiagonalExtendByOnePrimeField_one, map_one]
    · intro PP h
      rw [hs, Finset.prod_range_one, zero_add, (hP PP h).2, map_one]

theorem exists_overPl (PP : Formalism.L2.DIV.Pl D.host.E) : ∃ v, NG.OverPl PP v := ⟨PP.under _, rfl⟩

theorem nat_mem_of_overPl {P P' : Formalism.L2.DIV.Pl D.host.E} {v} (h : NG.OverPl P v) (h' : NG.OverPl P' v) {p : ℕ}
    (hp : (p : 𝓞 D.host.E) ∈ P.asIdeal) : (p : 𝓞 D.host.E) ∈ P'.asIdeal := by
  have h1 : (p : 𝓞 (maximalRealSubfield D.host.E)) ∈ v.asIdeal := by
    rw [← h, Ideal.mem_comap, map_natCast]; exact hp
  rw [← h', Ideal.mem_comap, map_natCast] at h1
  exact h1

theorem twist_off {T : Type} {Lc : Formalism.IndefR.Links.LevCh D T} {μ0 : T} (hL : Lc.Is μ0) (t : T) {PP} (hPP : PP ∈ Lc.Q t) {v}
    (hv : NG.OverPl PP v) : v ∉ GlobalTheory.PendOf.gPl D := by
  rintro ⟨kv, hkv⟩
  obtain ⟨⟨q, hq1, hq2, -, hq4⟩, -⟩ := hL.Q_pl t PP hPP
  exact GlobalTheory.MtIn.Under.not_both (D.host.g_prime kv.1) hq1 (hq4 kv.1)
    (nat_mem_of_overPl hkv hv (D.naut.plGw_over kv.1 kv.2)) (GlobalTheory.MtIn.Under.q_mem hq2)

theorem fixed_eq (s : ReciprocityTheory.Aut.SplitPlace D.host.E) (kv kv' : Σ k : Fin 2, D.nd.PlG k) (hs : s.w = D.naut.plGw kv.1 kv.2)
    (h : NG.OverPl (D.naut.plGw kv'.1 kv'.2) s.v) : s.w = D.naut.plGw kv'.1 kv'.2 := by
  rcases GlobalTheory.SplitPlaceOver.eq_or_isConjPl D s _ h with e | e
  · exact e
  · obtain ⟨k, v⟩ := kv
    obtain ⟨k', v'⟩ := kv'
    by_cases hk : k' = k
    · subst hk
      rw [hs] at e
      exact absurd e (D.naut.plGw_nconj _ _ _)
    · have hne : D.host.g k' ≠ D.host.g k := by
        have := D.host.g_ne
        fin_cases k <;> fin_cases k' <;> first | exact absurd rfl hk | exact this | exact this.symm
      refine (GlobalTheory.MtIn.Under.not_both (D.host.g_prime k) (D.host.g_prime k') hne ?_
        (nat_mem_of_overPl h s.w_under (D.naut.plGw_over k' v'))).elim
      rw [hs]
      exact D.naut.plGw_over k v

end Lev

section Core

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m} {Ks : Type}
  [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat D A Ks}

theorem rank_V (i : Fin D.R.m) : (Vc D i).rank = D.R.nV := D.sp.V_rank _ (Nat.le_add_left _ _) i.2

theorem t_pos (D : D7) : 0 < D.R.t := by have := D.R.rank_add_five_le; omega

theorem r_lt_nV (D : D7) : D.R.r < D.R.nV := by have := t_pos D; unfold Ranks.nV; omega



theorem local_red (hL : R.toLevCh.Is A.μ0) (hPg : ∀ PP ∈ R.Pg, ∃ kv : (Σ k : Fin 2, D.nd.PlG k), PP = D.naut.plGw kv.1 kv.2)
    (i : Fin D.R.m) (t : T) (Pl : LevelP R.Pg D.R.r ℂ) {hF : D.host.F = maximalRealSubfield D.host.E}
    (P : principalLevelFrame.RowPsi (Vc D i) D.R.nV) (hP : R3.StdFrame hF P) {W : Type} [AddCommGroup W] [Module ℂ W]
    (f : Formalism.AUTREP.GAf D.host.E D.R.nV → W) (hf : f ≠ 0) (J : Subgroup (Formalism.AUTREP.GAf D.host.E D.R.nV)) (χ : J →* ℂˣ)
    (hJ : ∀ (κ : J) x, f (x * κ) = ((χ κ : ℂˣ) : ℂ) • f x)
    (hlev : ∀ κ, P.ψ κ ∈ levS (Vc D i) (R.βV i) (datVP R i t Pl) → ∀ x, f (x * κ) = levChi (Vc D i) (R.βV i) (datVP R i t Pl) (P.ψ κ) • f x)
    (kv : Σ k : Fin 2, D.nd.PlG k) (s : ReciprocityTheory.Aut.SplitPlace D.host.E) (hs : s.w = D.naut.plGw kv.1 kv.2)
    (ψ₀ : AddChar (s.v.adicCompletion (maximalRealSubfield D.host.E)) ℂ) (ξ : (s.v.adicCompletion (maximalRealSubfield D.host.E))ˣ →* ℂˣ)
    (h0 : NG.IsPsi0 s ψ₀) (hu : NG.LevelUni J χ s D.R.r ψ₀ ξ) (PP : Formalism.L2.DIV.Pl D.host.E) (hPP : s.w = PP)
    (iso : ZMod (D.host.g kv.1) →+* kP PP) :
    ∃ u : GL (Fin D.R.r) (kP PP), ∀ κ ∈ ReciprocityTheory.Aut.Umax D.host.E D.R.nV, ∀ g : GL (Fin D.R.r) (ZMod (D.host.g kv.1)),
      GlobalTheory.PendOf.IsLiftAt s D.R.r (D.host.g kv.1) g (s.loc D.R.nV κ) →
      redFn (R.βV i) PP (finE (Vc D i) (P.ψ κ)) ∈ blockTri (blkOf D.R.r D.R.t) ∧
        dBlk (blkOf D.R.r D.R.t) 1 (redFn (R.βV i) PP (finE (Vc D i) (P.ψ κ))) = 1 ∧
        upperLeftBlock (r_le_V i) (redFn (R.βV i) PP (finE (Vc D i) (P.ψ κ))) = u * Formalism.UG.bc iso g * u⁻¹ := by
  subst hPP
  obtain ⟨c, hβ⟩ := hL.βV i
  rw [one_pow] at hβ
  obtain ⟨φ, b, hφ, hb⟩ := GlobalTheory.FrameRedSplit.frameRed_exists D (Vc D i) D.R.nV (rank_V i) hF P (R.βV i) _ hP hβ s
  have hpar : ∀ a c : Fin D.R.nV, D.R.r ≤ (a : ℕ) → (c : ℕ) < D.R.r → b.val a c = 0 := by
    refine GlobalTheory.ParaForce.para_of_colMat_fixed D.host.E D.R.nV D.R.r s (kP s.w) φ (Field.toIsField _) hφ (_root_.Formalism.L2.Geo.two_le_r D) (r_lt_nV D) W f hf J χ ψ₀ ξ h0 hu hJ b ?_
    intro κ y ht hy m v hm hv he x
    have hU := mem_Umax_of_isCompOf s ht hy
    obtain ⟨hSt, hoff⟩ := GlobalTheory.FrameOff.stdFrame_stab_red D (Vc D i) D.R.nV hF P (R.βV i) _ hP hβ κ hU
    have hall : ∀ PP ∈ R.Pg, redFn (R.βV i) PP (finE (Vc D i) (P.ψ κ)) ∈ blockTri (blkOf D.R.r D.R.t) ∧
        dBlk (blkOf D.R.r D.R.t) 1 (redFn (R.βV i) PP (finE (Vc D i) (P.ψ κ))) = 1 ∧
        upperLeftBlock (r_le_V i) (redFn (R.βV i) PP (finE (Vc D i) (P.ψ κ))) = 1 := by
      intro PP hPP
      by_cases e : s.w = PP
      · subst e
        exact colMat_blocks (rank_V i) rfl (t_pos D) (r_le_V i) _ m v hm hv fun a c => (hb κ hU y hy a c).trans (by rw [he])
      · obtain ⟨v', hv'⟩ := exists_overPl PP
        have hne : v' ∉ ({s.v} : Set _) := by
          rintro rfl
          obtain ⟨kv', rfl⟩ := hPg PP hPP
          exact e (fixed_eq s kv kv' hs hv')
        rw [hoff _ v' PP ht hv' hne]
        exact ⟨one_mem _, blockDiagonalExtendByOnePrimeField_one _ _, blockDiagonalExtendByOnePrimeField_one _ _⟩
    have hQ : ∀ PP ∈ R.Q t, redFn (R.βV i) PP (finE (Vc D i) (P.ψ κ)) = 1 := by
      intro PP hPP
      obtain ⟨v', hv'⟩ := exists_overPl PP
      refine hoff _ v' PP ht hv' ?_
      rintro rfl
      exact twist_off hL t hPP hv' ⟨kv, hs ▸ s.w_under⟩
    obtain ⟨h1, h2⟩ := lev_of_red (Vc D i) (R.βV i) (datVP R i t Pl) rfl (P.ψ κ) hSt hQ fun PP h => ⟨(hall PP h).1, (hall PP h).2.1⟩
    have h3 : rTup (R.βV i) (datVP R i t Pl) (finE (Vc D i) (P.ψ κ)) = 1 := funext fun PP => (hall PP.1 PP.2).2.2
    rw [h3, blockDiagonalExtendByOnePrimeField_one] at h2
    have h4 : P.ψ κ ∈ levS (Vc D i) (R.βV i) (datVP R i t Pl) := ⟨P.into κ, h1, by rw [h3]; exact one_mem _⟩
    rw [hlev κ h4 x, h2]
    simp
  refine ⟨upperLeftBlock (r_lt_nV D).le b, fun κ hU g hg => ?_⟩
  obtain ⟨y, hy⟩ := exists_isCompOf s hU
  exact conj_blocks (rank_V i) rfl (t_pos D) (r_lt_nV D).le (r_le_V i) b hpar _ _
    (red_of_isLiftAt s hφ (D.host.g_prime kv.1) iso g hy hg) _ (hb κ hU y hy)

theorem coeff_conj {H : Type} [Group H] (z : Subalgebra.center ℂ (MonoidAlgebra ℂ H)) (u g : H) :
    (z : MonoidAlgebra ℂ H).coeff (u⁻¹ * g * u) = (z : MonoidAlgebra ℂ H).coeff g := by
  have hc := (Subalgebra.mem_center_iff.1 z.2) (MonoidAlgebra.single u 1)
  have := congrArg (fun z => z.coeff (g * u)) hc
  simp only [MonoidAlgebra.single_mul_apply, MonoidAlgebra.mul_single_apply, one_mul, mul_one, mul_inv_cancel_right] at this
  rw [mul_assoc]
  exact this

end Core

section Main

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type} {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m} {Ks : Type}
  [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat3 D A3 Ks} {F : Face3 D A3} {X0 : BaseLevelRowSide D}



theorem cen_used (Y : R3.Read (A3 := A3) R.toRealDat F.lv2 X0) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (hB : R.toRealDat.BaseW F.lv2)
    (hK : Keep (A3 := A3) R.toRealDat F.lv2 cG) (hO : A3.A.fam.Ok 1) (hC : CenRead Y cG) (M : MtFam D) (ad : MtAd Y M)
    (μ : D.what₂.Tup) (hμ : Used0 D μ) (i : Fin D.R.m) (h1 : 1 ≤ (i : ℕ) + 1) (h2 : (i : ℕ) + 1 ≤ D.R.m)
    (hu : ∀ (k : Fin 2) (v : D.nd.PlG k) (s : ReciprocityTheory.Aut.SplitPlace D.host.E), s.w = D.naut.plGw k v →
      ∃ ψ₀ ξ, NG.IsPsi0 s ψ₀ ∧ NG.LevelUni (M μ ((i : ℕ) + 1) h1 h2).J (M μ ((i : ℕ) + 1) h1 h2).χ s D.R.r ψ₀ ξ) :
    ∃ L : G0g D.nd → Formalism.AUTREP.GAf D.host.E D.R.nV, GlobalTheory.PendOf.IsTypeGroupBlockLift D D.R.nV L ∧
      ∀ (z : ↥(Subalgebra.center ℂ (MonoidAlgebra ℂ (G0g D.nd)))) (x : D.what₂.Mt μ ((i : ℕ) + 1)),
        (M μ ((i : ℕ) + 1) h1 h2).real (D.ntypes.cenMt μ ((i : ℕ) + 1) z x) =
          GlobalTheory.PendOf.actSum D L (z : MonoidAlgebra ℂ (G0g D.nd)) ((M μ ((i : ℕ) + 1) h1 h2).real x) := by
  obtain ⟨t, rfl⟩ : ∃ t, Y.tup t = μ := ⟨_, Y.tupTie μ hμ⟩
  obtain ⟨Lf, hLf, hU⟩ := GlobalTheory.LiftStandardGroup.main D D.R.nV (r_lt_nV D).le
  refine ⟨Lf, hLf, fun z x => ?_⟩
  have hread := ad.read _ hμ i
  by_cases hx : (M (Y.tup t) ((i : ℕ) + 1) h1 h2).real x = 0
  · have hx0 : x = 0 := (M (Y.tup t) ((i : ℕ) + 1) h1 h2).real_inj (hx.trans (map_zero _).symm)
    rw [hx0, map_zero, map_zero]
    simp [GlobalTheory.PendOf.actSum, Finsupp.sum]
  obtain ⟨plg, iso, hpl, -, -, hiso⟩ := hK.grp
  have hPg : ∀ PP ∈ R.Pg, ∃ kv : (Σ k : Fin 2, D.nd.PlG k), PP = D.naut.plGw kv.1 kv.2 := fun PP h =>
    ⟨plg.symm ⟨PP, h⟩, by rw [← hpl, Equiv.apply_symm_apply]⟩
  have hty : (M (Y.tup t) ((i : ℕ) + 1) h1 h2).real x ∈ NG.TypeSp _ _ _ :=
    (M (Y.tup t) ((i : ℕ) + 1) h1 h2).real_range ▸ LinearMap.mem_range_self _ x
  have hloc : ∀ kv : (Σ k : Fin 2, D.nd.PlG k), ∃ u : GL (Fin D.R.r) (kP (plg kv).1), ∀ g : G0g D.nd,
      redFn (R.βV i) (plg kv).1 (finE (Vc D i) ((ad.PV i).ψ (Lf g))) ∈ blockTri (blkOf D.R.r D.R.t) ∧
        dBlk (blkOf D.R.r D.R.t) 1 (redFn (R.βV i) (plg kv).1 (finE (Vc D i) ((ad.PV i).ψ (Lf g)))) = 1 ∧
        upperLeftBlock (r_le_V i) (redFn (R.βV i) (plg kv).1 (finE (Vc D i) ((ad.PV i).ψ (Lf g)))) =
          u * Formalism.UG.bc (iso kv : ZMod (D.host.g kv.1) →+* kP (plg kv).1) (g kv) * u⁻¹ := by
    intro kv
    obtain ⟨s, hs⟩ := GlobalTheory.FixedPlaceOverType.exists_splitPlace_w_plGw D kv.1 kv.2
    obtain ⟨ψ₀, ξ, h0, hl⟩ := hu kv.1 kv.2 s hs
    obtain ⟨u, hu'⟩ := local_red (R := R.toRealDat) hB.lev hPg i (Y.tupT (Y.tup t)) (R.toRealDat.levR F.lv2 false) (ad.PV i) (ad.std i) _ hx _ _
      (fun κ y => congrFun (hty.2 κ) y)
      (fun κ hκ y => (ad.eW _ hμ i).injective (by
        rw [map_smul, hread, hread, map_mul]
        exact (Y.IL.jMt _ hμ i x).2.2 _ hκ _))
      kv s hs ψ₀ ξ h0 hl (plg kv).1 (hs.trans (hpl kv).symm) (iso kv)
    exact ⟨u, fun g => hu' _ (hU g) _ ((hLf g).2 kv s hs)⟩
  choose u hu' using hloc
  obtain ⟨c, hβ⟩ := hB.lev.βV i
  rw [one_pow] at hβ
  obtain ⟨û, hû⟩ : ∃ û : G, ∀ kv, R.eG û (plg kv) = u kv := by
    let u' : G0 R.Pg D.R.r := (Equiv.piCongrLeft (fun PP : R.Pg => GL (Fin D.R.r) (kP PP.1)) plg) u
    exact ⟨R.eG.symm u', fun kv => by rw [MulEquiv.apply_symm_apply]; exact Equiv.piCongrLeft_apply_apply _ _ _ _⟩
  have key : ∀ g : G0g D.nd,
      IsLevelLift (Vc D i) (R.βV i) (R.datVt i t) (R.eG (û * (R.eG.trans cG).symm g * û⁻¹)) ((ad.PV i).ψ (Lf g)) ∧
        levChi (Vc D i) (R.βV i) (flagL (R.datVt i t)) ((ad.PV i).ψ (Lf g)) = 1 := by
    intro g
    obtain ⟨hSt, hoff⟩ := GlobalTheory.FrameOff.stdFrame_stab_red D (Vc D i) D.R.nV Y.hF (ad.PV i) (R.βV i) _ (ad.std i) hβ _ (hU g)
    have hQ : ∀ PP ∈ R.Q t, redFn (R.βV i) PP (finE (Vc D i) ((ad.PV i).ψ (Lf g))) = 1 := by
      intro PP hPP
      obtain ⟨v', hv'⟩ := exists_overPl PP
      exact hoff _ v' PP (hLf g).1 hv' (twist_off hB.lev t hPP hv')
    have hP : ∀ PP ∈ R.Pg, redFn (R.βV i) PP (finE (Vc D i) ((ad.PV i).ψ (Lf g))) ∈ blockTri (blkOf D.R.r D.R.t) ∧
        dBlk (blkOf D.R.r D.R.t) 1 (redFn (R.βV i) PP (finE (Vc D i) ((ad.PV i).ψ (Lf g)))) = 1 := by
      intro PP hPP
      obtain ⟨kv, e⟩ := plg.surjective ⟨PP, hPP⟩
      obtain rfl : (plg kv).1 = PP := congrArg Subtype.val e
      exact ⟨(hu' kv g).1, (hu' kv g).2.1⟩
    refine ⟨⟨(ad.PV i).into _, (lev_of_red (Vc D i) (R.βV i) (R.datVt i t) rfl _ hSt hQ hP).1, funext fun PP => ?_⟩, ?_⟩
    · obtain ⟨kv, rfl⟩ := plg.surjective PP
      refine (hu' kv g).2.2.trans ?_
      rw [map_mul, map_mul, map_inv, Pi.mul_apply, Pi.mul_apply, Pi.inv_apply, hû, hiso, MulEquiv.apply_symm_apply]
    · rw [(lev_of_red (Vc D i) (R.βV i) (flagL (R.datVt i t)) rfl _ hSt hQ hP).2,
        extendOne_of_mem (P := (flagL (R.datVt i t)).P.H) _ (Subgroup.mem_top _)]
      rfl
  let e : G ≃ G0g D.nd := (MulAut.conj û⁻¹).toEquiv.trans (R.eG.trans cG).toEquiv
  have he : ∀ g, û * (R.eG.trans cG).symm (e g) * û⁻¹ = g := fun g => by
    show û * (R.eG.trans cG).symm ((R.eG.trans cG) (û⁻¹ * g * û⁻¹⁻¹)) * û⁻¹ = g
    rw [MulEquiv.symm_apply_apply]; group
  have hact := GlobalTheory.CenTranslate.main D G Pl0 I0 T A3 Ks R.toRealDat F.lv2 X0 Y cG hB hO hC i t hμ (fun g => (ad.PV i).ψ (Lf (e g)))
    (fun g => by have := (key (e g)).1; rwa [he] at this) z x
  funext y
  refine (ad.eW _ hμ i).injective ?_
  letI : Fintype (G0g D.nd) := Fintype.ofEquiv G e

  rw [hread, hact, GlobalTheory.PendOf.actSum, Finsupp.sum_fintype _ _ (by intro _; exact zero_smul _ _), Finset.sum_apply, map_sum, ← e.sum_comp]
  refine Finset.sum_congr rfl fun g _ => ?_
  have hz : (z : MonoidAlgebra ℂ (G0g D.nd)).coeff (e g) = (z : MonoidAlgebra ℂ (G0g D.nd)).coeff ((R.eG.trans cG) g) := by
    show (z : MonoidAlgebra ℂ (G0g D.nd)).coeff ((R.eG.trans cG) (û⁻¹ * g * û⁻¹⁻¹)) = _
    rw [inv_inv, map_mul (R.eG.trans cG), map_mul (R.eG.trans cG), map_inv (R.eG.trans cG), coeff_conj]
  rw [(key (e g)).2, inv_one, mul_one, Pi.smul_apply, map_smul, hz, ← map_mul (ad.PV i).ψ, ← hread]
  rfl

theorem cen_twisted (Y : R3.Read (A3 := A3) R.toRealDat F.lv2 X0) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (hB : R.toRealDat.BaseW F.lv2)
    (hK : Keep (A3 := A3) R.toRealDat F.lv2 cG) (hO : A3.A.fam.Ok 1) (hC : CenRead Y cG) (M : MtFam D) (ad : MtAd Y M)
    {tup : D.what₂.Tup → Fin D.R.m → Formalism.L2.Host.HChar D.host.E} {Q} (mt : MtInput D M tup Q) (w : D.what₂.places.Pl)
    (hw : D.what₂.muAt w ≠ D.what₂.mu0) (μ : D.what₂.Tup) (hμ : μ = D.what₂.muTw w) (j : ℕ) (h1 : 1 ≤ j) (h2 : j ≤ D.R.m) :
    ∃ L : G0g D.nd → Formalism.AUTREP.GAf D.host.E D.R.nV, GlobalTheory.PendOf.IsTypeGroupBlockLift D D.R.nV L ∧
      ∀ (z : ↥(Subalgebra.center ℂ (MonoidAlgebra ℂ (G0g D.nd)))) (x : D.what₂.Mt μ j),
        (M μ j h1 h2).real (D.ntypes.cenMt μ j z x) =
          GlobalTheory.PendOf.actSum D L (z : MonoidAlgebra ℂ (G0g D.nd)) ((M μ j h1 h2).real x) := by
  subst hμ
  obtain ⟨i, rfl⟩ : ∃ i : Fin D.R.m, j = (i : ℕ) + 1 := ⟨⟨j - 1, by omega⟩, by simp; omega⟩
  refine cen_used Y cG hB hK hO hC M ad _ (Or.inr ⟨w, ((D.what₂.muAt_or _).resolve_left hw).symm⟩) i h1 h2 fun k v s hs => ?_
  obtain ⟨ψ₀, ξ, h0, -, hl⟩ := mt.uni w i k v s hs
  exact ⟨ψ₀, ξ, h0, hl⟩

end Main

end GlobalTheory.CenFrame

namespace GlobalTheory.SerThird

open Formalism.MainNotions.N Formalism.L2.Host Formalism.IndefR.NX ReciprocityTheory.Aut Formalism.AUTREP GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting.Up GlobalTheory.CenFrame
attribute [local instance] GlobalTheory.TypeRec.factG

theorem cen_heq {K : Type} [Field K] [NumberField K] [StarRing K] {G : Type} [Group G] {O : Type} [CommRing O] {φ : O →+* ℂ}
    {σ : K →+* ℂ} {τ : Type} (mL : τ → Mat1 K G) (s : τ → Sp1 O φ G) (tL : ∀ μ, Tie1 σ (mL μ) (s μ)) {μ μ' : τ} (hμ : μ = μ')
    {m' : Mat1 K G} (h : mL μ' = m') (e : (Fin m'.n → K) → Fin (mL μ).n → K) (he : ∀ x, HEq (e x) x)
    (z : Subalgebra.center ℂ (MonoidAlgebra ℂ G)) (a : MonoidAlgebra K G)
    (ha : ∀ g, σ (a.coeff g) = (z : MonoidAlgebra ℂ G).coeff g) (x : Fin m'.n → K) :
    (s μ).act z ((tL μ).j (e x)) = (tL μ).j (e ((m'.op a).mulVec x)) := by
  subst hμ; subst h
  rw [eq_of_heq (he _), eq_of_heq (he _)]
  exact (tL μ).cen z a ha x


open Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR.Cx GlobalTheory.Mem.R3.Tr in

theorem cenRead_state {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {P : Pre2 K w} (x : St P) :
    CenRead x.r.Y x.m.z.cG := by
  intro i t z a ha v
  have hc := x.fits.cen _ (GlobalTheory.Mem.R3.Rw.Ties.stdIso_dat x.m.z)
  let z' : Subalgebra.center ℂ (MonoidAlgebra ℂ (Gc B w.px)) := Bare.cenPull (x.m.z.R.eG.trans x.m.z.cG) z
  have hz := Bare.coeff_cenPull (x.m.z.R.eG.trans x.m.z.cG) z
  have ha' : ∀ g, (w.st x.o.Z).toD7.what₂.embLL (a.coeff g) = (z' : MonoidAlgebra ℂ (Gc B w.px)).coeff g :=
    fun g => (ha g).trans (hz g).symm
  have h1 := hc.mt (x.r.Y.tup t) ((i : ℕ) + 1) (z) z' (hz)
    ((P.q.p.tL (x.r.Y.tup t) ((i : ℕ) + 1)).j (x.r.Y.eMt i t v))
  have h2 := cen_heq (fun a => P.q.p.mL a ((i : ℕ) + 1)) (fun a => P.q.p.sL a ((i : ℕ) + 1)) (fun a => P.q.p.tL a ((i : ℕ) + 1))
    (congrFun x.r.tup t) (x.m.t.hL i t) (fun y => x.r.Y.eMt i t ((y))) (x.r.eMt i t) z' (a) (ha') (v)
  exact h1.trans h2





theorem labTie_withLoc {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {P : Pre2 K w}
    (x : St P) (Lc : LocAll (lay0 (Dof x))) :
    GlobalTheory.SerSys.LabTie (withLoc Lc) fun k => GlobalTheory.Mem.TypePl.labDat ((withLoc Lc).host.g k) :=
  fun k => ⟨(x.fits.grp.teich k).symm, x.fits.grp.ser k⟩



end GlobalTheory.SerThird

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SeriesLocalOfHypothesis =====
