module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSelfDualOrthAt
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualSplitComponentIsLatticeStabilizerEq
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroMemCompletedLatticeSource
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroTargetTensorRowProduct
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulMemLatO
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroSourceTensorColumnProductStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HomLatticeCompletionSelfAnnihilatorAtPlaces
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HomLatticeIndicatorOnSplitHalfEqHalfIndicatorStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IndicatorHomSelfDualComponentsSchwartzBruhat
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsThetaFunOSourceSliceStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsThetaFunOTargetSliceOrthogonalSumStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceBaseVacuumDatumExistsUniqueStatement
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.SmallPair
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DataAsCombinationsAtSplitPlacesProof
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroLeftMemCoreLattice
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroRightMemCoreLattice
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MemHomLatticeCompletionIffSupportedMaps
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlaceIdempotentActsOnSupportedAndOff
import Mathlib.Tactic.Basify
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.ENatToNat
import Mathlib.RingTheory.PiTensorProduct
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceMatrixOfIsNonarchimedeanLocalField
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceChangeBaseVacuumHeisenbergCombination

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeOrthogonalSumLineAtSplitPlace, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeOrthogonalSumLineAtSplitPlaceStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroMemCompletedLatticeSourceStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroTargetTensorRowProductStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroMapsCompletedHomLattice, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroMapsCompletedHomLatticeStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroSourceSlice, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroSourceSliceStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroTargetSlice, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroTargetSliceStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfSourceBoxLattice, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfSourceBoxLatticeStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfTargetBoxDualIndicator, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfTargetBoxDualIndicatorStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchroedingerIntertwinerSliceRestrictionPlaceMode, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchroedingerIntertwinerSliceRestrictionPlaceModeStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceCombinationExtendByZeroOrthSumLine, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroAtSplitPlacesProof

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeOrthogonalSumLineAtSplitPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeOrthogonalSumLineAtSplitPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsSelfDualOrthAt\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SelfDualSplitComponentIsLatticeStabilizerEq\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing GlobalTheory.FinPl
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section
namespace GlobalTheory.LineSplitAt
variable {D : D7} {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k)

theorem mulVec_sec {m n : ℕ} (M : Matrix (Fin m) (Fin n) (AE D)) (u : Fin n → k) :
    M *ᵥ (fun i => p.sec (u i)) = fun i => p.sec ((M.map p.pr *ᵥ u) i) := by
  funext i

  simp only [Matrix.mulVec, dotProduct, map_sum, Matrix.map_apply]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [mul_comm, FrameLat.sec_mul_right, mul_comm (u j)]

theorem mulVec_csec {m n : ℕ} (M : Matrix (Fin m) (Fin n) (AE D)) (z : Fin n → k) :
    M *ᵥ (fun i => cA D (p.sec (z i))) = fun i => cA D (p.sec ((M.map (fun a => p.pr (cA D a)) *ᵥ z) i)) := by
  funext i

  simp only [Matrix.mulVec, dotProduct, map_sum, Matrix.map_apply]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [FrameLat.sec_mul, p.sec_pr, mul_comm p.e, mul_assoc, FrameLat.e_mul_sec, map_mul, cA_cA]

theorem eq_sec_add_csec {n : ℕ} {y : Fin n → AE D} (hy : ∀ i, y i ∈ idAt D (· = p.v)) :
    y = (fun i => p.sec (p.pr (y i))) + (fun i => cA D (p.sec (p.pr (cA D (y i))))) := by
  funext i
  have h := (FrameLat.idem_iff p (y i)).1 (hy i)
  simp only [Pi.add_apply, p.sec_pr, map_mul, cA_cA]
  rw [← add_mul, h]

variable {p}

theorem mulVec_mem_of_parts {S T : HSp D} {L : Lat S} {L' : Lat T} (hL : IsSelfDualC S L)
    (M : Matrix (Fin T.rank) (Fin S.rank) (AE D))
    (hw : ∀ u, (fun i => p.sec (u i)) ∈ latV S L (· = p.v) → (fun i => p.sec ((M.map p.pr *ᵥ u) i)) ∈ latV T L' (· = p.v))
    (hc : ∀ z, (fun i => cA D (p.sec (z i))) ∈ latV S L (· = p.v) →
      (fun i => cA D (p.sec ((M.map (fun a => p.pr (cA D a)) *ᵥ z) i))) ∈ latV T L' (· = p.v))
    {y : Fin S.rank → AE D} (hy : y ∈ latV S L (· = p.v)) : M *ᵥ y ∈ latV T L' (· = p.v) := by
  have e := eq_sec_add_csec p (FrameLat.latV_supp hy)
  rw [e] at hy ⊢
  have h := (FrameLat.decomp hL _ _).1 hy
  rw [Matrix.mulVec_add, mulVec_sec, mulVec_csec]
  exact add_mem (hw _ h.1) (hc _ h.2)

theorem pair_eq (S : HSp D) (x z : Fin S.rank → k) :
    ∑ i, ∑ j, x i * p.pr (cA D (incA D (S.gram i j))) * z j =
      x ⬝ᵥ (S.gram.map (p.pr.comp ((cA D).comp (incA D))) *ᵥ z) := by
  simp only [dotProduct, Matrix.mulVec, Finset.mul_sum, Matrix.map_apply, RingHom.comp_apply, mul_assoc]

theorem conjT_map {m n : Type} (M : Matrix m n D.host.E) :
    Mᴴ.map (p.pr.comp ((cA D).comp (incA D))) = (M.map (p.pr.comp (incA D)))ᵀ := by
  ext i j
  simp only [Matrix.map_apply, Matrix.conjTranspose_apply, Matrix.transpose_apply, RingHom.comp_apply, FrameLat.cA_incA,
    star_star]

end GlobalTheory.LineSplitAt

namespace GlobalTheory.LineSplitAt



theorem orthAt_of_frames : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n' : Type) [Fintype n'] [DecidableEq n'] (S A L : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E), IsLineVec L ζ → ∀ (α : Frame p A n') (α₀ : Frame p S (n' ⊕ Fin 1)), IsSumFrame o ζ α α₀ → p.UnitAA → ∀ (LA : Lat A) (LS : Lat S) (ΛA : Submodule 𝒪[k] (n' → k)), IsSelfDualC A LA → IsSelfDualC S LS → α.IsLat LA ΛA → α₀.IsLat LS (lastKer ΛA) → ∃ LL : Lat L, OrthAt o LS LA LL p.v := by
  intro D k _ _ _ _ p n' _ _ S A L o ζ _ α α₀ hsum _ LA LS ΛA hLA hLS hα hα₀
  have hb : α₀.b = fromCols (o.jA.map p.pr * α.b) (replicateCol (Fin 1) fun i => p.pr (ratV (vecB o ζ) i)) := hsum
  have hPJ : o.pA.map p.pr * o.jA.map p.pr = 1 := by
    rw [← Matrix.map_mul, o.pA_jA, Matrix.map_one _ (map_zero _) (map_one _)]
  have hz : o.pA.map p.pr *ᵥ (⇑p.pr ∘ ratV (vecB o ζ)) = 0 := by
    have e1 : ratV (vecB o ζ) = o.jB *ᵥ ratV ζ := by
      funext i

      simp only [ratV, vecB, OrthDec.jB, rat, Matrix.mulVec, dotProduct, map_sum, map_mul, Matrix.map_apply]
    funext i
    rw [← RingHom.map_mulVec, e1, Matrix.mulVec_mulVec, o.pA_jB, Matrix.zero_mulVec]
    simp
  have hPz : o.pA.map p.pr * replicateCol (Fin 1) (fun i => p.pr (ratV (vecB o ζ) i)) = 0 := by
    ext i j
    have := congrFun hz i
    simpa [Matrix.mul_apply, Matrix.mulVec, dotProduct] using this

  have hwA : ∀ u : Fin A.rank → k, (fun i => p.sec (u i)) ∈ latV A LA (· = p.v) →
      (fun i => p.sec ((o.jA.map p.pr *ᵥ u) i)) ∈ latV S LS (· = p.v) := by
    intro u hu
    have hx : α.b' *ᵥ u ∈ ΛA := (hα _).2 (by rwa [Matrix.mulVec_mulVec, α.bb', Matrix.one_mulVec])
    have e : o.jA.map p.pr *ᵥ u = α₀.b *ᵥ Sum.elim (α.b' *ᵥ u) 0 := by
      rw [hb, Matrix.fromCols_mulVec, Sum.elim_comp_inl, Sum.elim_comp_inr, Matrix.mulVec_mulVec, Matrix.mul_assoc, α.bb',
        Matrix.mul_one, Matrix.mulVec_zero, add_zero]
    rw [e]
    exact (hα₀ _).1 (GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData.mem_lastKer.2 ⟨by simpa using hx, by simp⟩)
  have hwS : ∀ u : Fin S.rank → k, (fun i => p.sec (u i)) ∈ latV S LS (· = p.v) →
      (fun i => p.sec ((o.pA.map p.pr *ᵥ u) i)) ∈ latV A LA (· = p.v) := by
    intro u hu
    have hy : α₀.b' *ᵥ u ∈ lastKer ΛA := (hα₀ _).2 (by rwa [Matrix.mulVec_mulVec, α₀.bb', Matrix.one_mulVec])
    have e : o.pA.map p.pr *ᵥ u = α.b *ᵥ ((α₀.b' *ᵥ u) ∘ Sum.inl) := by
      conv_lhs => rw [← Matrix.one_mulVec u, ← α₀.bb', ← Matrix.mulVec_mulVec, hb, Matrix.fromCols_mulVec, Matrix.mulVec_add,
        Matrix.mulVec_mulVec, ← Matrix.mul_assoc, hPJ, Matrix.one_mul, Matrix.mulVec_mulVec _ (o.pA.map p.pr), hPz,
        Matrix.zero_mulVec, add_zero]
    rw [e]
    exact (hα _).1 (GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData.mem_lastKer.1 hy).1

  have hG2 : A.gram * o.qA = o.iAᴴ * S.gram := by
    rw [OrthDec.qA, ← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ (gram_isUnit_det A), Matrix.one_mul]
  have hG1 : S.gram * o.iA = o.qAᴴ * A.gram := by
    have := congrArg Matrix.conjTranspose hG2
    rw [conjTranspose_mul, conjTranspose_mul, conjTranspose_conjTranspose, gram_conjTranspose, gram_conjTranspose] at this
    exact this.symm
  have hcA : ∀ z : Fin A.rank → k, (fun i => cA D (p.sec (z i))) ∈ latV A LA (· = p.v) →
      (fun i => cA D (p.sec ((o.jA.map (fun a => p.pr (cA D a)) *ᵥ z) i))) ∈ latV S LS (· = p.v) := by
    intro z hz
    refine (FrameLat.csec_mem_iff hLS _).2 fun x hx => ?_
    have key : ∑ i, ∑ j, x i * p.pr (cA D (incA D (S.gram i j))) * (o.jA.map (fun a => p.pr (cA D a)) *ᵥ z) j =
        ∑ i, ∑ j, (o.pA.map p.pr *ᵥ x) i * p.pr (cA D (incA D (A.gram i j))) * z j := by
      rw [pair_eq, pair_eq]
      change x ⬝ᵥ (S.gram.map (p.pr.comp ((cA D).comp (incA D))) *ᵥ (o.iA.map (p.pr.comp ((cA D).comp (incA D))) *ᵥ z)) =
        (o.qA.map (p.pr.comp (incA D)) *ᵥ x) ⬝ᵥ (A.gram.map (p.pr.comp ((cA D).comp (incA D))) *ᵥ z)
      rw [Matrix.mulVec_mulVec, ← Matrix.map_mul, hG1, Matrix.map_mul, conjT_map, ← Matrix.mulVec_mulVec,
        Matrix.dotProduct_mulVec, Matrix.vecMul_transpose]
    rw [key]
    exact (FrameLat.csec_mem_iff hLA z).1 hz _ (hwS x hx)
  have hcS : ∀ z : Fin S.rank → k, (fun i => cA D (p.sec (z i))) ∈ latV S LS (· = p.v) →
      (fun i => cA D (p.sec ((o.pA.map (fun a => p.pr (cA D a)) *ᵥ z) i))) ∈ latV A LA (· = p.v) := by
    intro z hz
    refine (FrameLat.csec_mem_iff hLA _).2 fun x hx => ?_
    have key : ∑ i, ∑ j, x i * p.pr (cA D (incA D (A.gram i j))) * (o.pA.map (fun a => p.pr (cA D a)) *ᵥ z) j =
        ∑ i, ∑ j, (o.jA.map p.pr *ᵥ x) i * p.pr (cA D (incA D (S.gram i j))) * z j := by
      rw [pair_eq, pair_eq]
      change x ⬝ᵥ (A.gram.map (p.pr.comp ((cA D).comp (incA D))) *ᵥ (o.qA.map (p.pr.comp ((cA D).comp (incA D))) *ᵥ z)) =
        (o.iA.map (p.pr.comp (incA D)) *ᵥ x) ⬝ᵥ (S.gram.map (p.pr.comp ((cA D).comp (incA D))) *ᵥ z)
      rw [Matrix.mulVec_mulVec, ← Matrix.map_mul, hG2, Matrix.map_mul, conjT_map, ← Matrix.mulVec_mulVec,
        Matrix.dotProduct_mulVec, Matrix.vecMul_transpose]
    rw [key]
    exact (FrameLat.csec_mem_iff hLS z).1 hz _ (hwA x hx)
  have h1 : ∀ y ∈ latV A LA (· = p.v), o.jA *ᵥ y ∈ latV S LS (· = p.v) := fun y hy =>
    mulVec_mem_of_parts hLA o.jA hwA hcA hy
  have h2 : ∀ y ∈ latV S LS (· = p.v), o.pA *ᵥ y ∈ latV A LA (· = p.v) := fun y hy =>
    mulVec_mem_of_parts hLS o.pA hwS hcS hy
  have hsplit : ∀ g : Fin S.rank → AE D, o.jA *ᵥ (o.pA *ᵥ g) + o.jB *ᵥ (o.pB *ᵥ g) = g := fun g => by
    rw [Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, ← Matrix.add_mulVec, o.sum_eq_one, Matrix.one_mulVec]
  let fB := (mulVecLin o.qB).restrictScalars (𝓞 D.host.E)
  have h3 : ∀ x ∈ latV L (LS.map fB) (· = p.v), o.jB *ᵥ x ∈ latV S LS (· = p.v) := by
    intro x hx
    induction hx using AddSubgroup.closure_induction with
    | mem x hx =>
      obtain ⟨a, ha, ha', c, hc, w, hw, rfl⟩ := hx
      rw [Set.mem_singleton_iff] at hc
      subst hc
      obtain ⟨s, hs, rfl⟩ := hw
      have hg : (fun i => pairA D.host.F 0 a ⊗ₜ[D.host.F] (1 * s i)) ∈ latV S LS (· = p.v) :=
        AddSubgroup.subset_closure ⟨a, ha, ha', 1, rfl, s, hs, rfl⟩
      have e2 : o.pB *ᵥ (fun i => pairA D.host.F 0 a ⊗ₜ[D.host.F] (1 * s i)) =
          fun i => pairA D.host.F 0 a ⊗ₜ[D.host.F] (1 * (o.qB *ᵥ s) i) := by
        funext i
        simp only [Matrix.mulVec, dotProduct, one_mul, TensorProduct.tmul_sum]
        refine Finset.sum_congr rfl fun j _ => ?_
        change ((1 : AF D.host.F) ⊗ₜ[D.host.F] o.qB i j) * _ = _
        rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul]
      show o.jB *ᵥ (fun i => pairA D.host.F 0 a ⊗ₜ[D.host.F] (1 * (o.qB *ᵥ s) i)) ∈ _
      rw [← e2]
      have hm := hg
      rw [← hsplit (fun i => pairA D.host.F 0 a ⊗ₜ[D.host.F] (1 * s i))] at hm
      exact (add_mem_cancel_left (h1 _ (h2 _ hg))).1 hm
    | zero => rw [Matrix.mulVec_zero]; exact zero_mem _
    | add x y _ _ hx hy => rw [Matrix.mulVec_add]; exact add_mem hx hy
    | neg x _ hx => rw [Matrix.mulVec_neg]; exact neg_mem hx
  refine ⟨LS.map fB, fun y => ⟨fun hy => ⟨h2 y hy, GlobalTheory.OrthSumLat.rat_mulVec_mem_latV o.qB
    (fun x hx => Submodule.mem_map_of_mem hx) hy⟩, fun h => ?_⟩⟩
  rw [← hsplit y]
  exact add_mem (h1 _ h.1) (h3 _ h.2)

end GlobalTheory.LineSplitAt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeOrthogonalSumLineAtSplitPlace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeOrthogonalSumLineAtSplitPlaceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeOrthogonalSumLineAtSplitPlaceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeOrthogonalSumLineAtSplitPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing GlobalTheory.FinPl
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.lattice_orthogonal_sum_line_at_split_place : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n' : Type) [Fintype n'] [DecidableEq n'] (S A L : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E), IsLineVec L ζ → ∀ (α : Frame p A n') (α₀ : Frame p S (n' ⊕ Fin 1)), IsSumFrame o ζ α α₀ → p.UnitAA → ∀ (LA : Lat A) (LS : Lat S) (ΛA : Submodule 𝒪[k] (n' → k)), IsSelfDualC A LA → IsSelfDualC S LS → α.IsLat LA ΛA → α₀.IsLat LS (lastKer ΛA) → ∃ LL : Lat L, OrthAt o LS LA LL p.v := by
  first | exact @GlobalTheory.LineSplitAt.orthAt_of_frames
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeOrthogonalSumLineAtSplitPlaceStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroMemCompletedLatticeSourceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroMemCompletedLatticeSourceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroMemCompletedLatticeSource\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.extendByZero_mem_completed_lattice_source : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n : Type) [Fintype n] [DecidableEq n] (ψ : AddChar (AF D.host.F) ℂ) (S A L T : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E) (β : Frame p T n) (LA : Lat A) (LS : Lat S) (LT : Lat T) (ΛT : Submodule 𝒪[k] (n → k)), (∀ u : WO A T, MxAt (· = p.v) u → (u ∈ latO A T (LA : Set _) (LT : Set _) (· = p.v) ↔ ∀ u' ∈ latO A T (LA : Set _) (LT : Set _) (· = p.v), ψ (symplO A T u u') = 1)) → (∀ u : WO S T, MxAt (· = p.v) u → (u ∈ latO S T (LS : Set _) (LT : Set _) (· = p.v) ↔ ∀ u' ∈ latO S T (LS : Set _) (LT : Set _) (· = p.v), ψ (symplO S T u u') = 1)) → halfInd p.e (latO S T (LS : Set _) (LT : Set _) (· = p.v)) = o.boxS T (halfInd p.e (latO A T (LA : Set _) (LT : Set _) (· = p.v))) (GlobalTheory.FinPl.ExtZero.colFun β ζ (vecInd ΛT)) → ∀ u ∈ latO A T (LA : Set _) (LT : Set _) (· = p.v), (o.resS T).symm (u, 0) ∈ latO S T (LS : Set _) (LT : Set _) (· = p.v) := by
  first | exact @GlobalTheory.FinPl.ExtZero.extZero_mem_latO
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroMemCompletedLatticeSourceStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroTargetTensorRowProductStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroTargetTensorRowProductStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroTargetTensorRowProduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.extendByZero_target_tensor_row_product : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n n' : Type) [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n'] (S A L T : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E), IsLineVec L ζ → ∀ (α : Frame p A n') (α₀ : Frame p S (n' ⊕ Fin 1)) (β : Frame p T n), IsSumFrame o ζ α α₀ → ∀ (Ψ : Matrix n' n k → ℂ) (b : (n → k) → ℂ), extFun β α₀ (tensRow Ψ b) = o.boxT T (extFun β α Ψ) (GlobalTheory.FinPl.ExtZero.rowFun β ζ b) := by
  exact @GlobalTheory.FinPl.ExtZero.extFun_tensRow
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroTargetTensorRowProductStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroMapsCompletedHomLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroMapsCompletedHomLattice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulMemLatO\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroMemCompletedLatticeSource\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MemHomLatticeCompletionIffSupportedMaps\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlaceIdempotentActsOnSupportedAndOff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.FinPl.ExtZeroLat

variable {D : D7}

theorem mxAt_mul_left {P : Pl D → Prop} {a b c : ℕ} (y : Mx D a b) {x : Mx D b c} (hx : MxAt P x) : MxAt P (y ⬝ x) := by
  intro i j
  rw [Matrix.mul_apply]
  exact Ideal.sum_mem _ fun l _ => Ideal.mul_mem_left _ _ (hx l j)

theorem symplO_resT_symm_left {S A L T : HSp D} (o : OrthDec S A L) (a : WO T A) (t : WO T S) :
    symplO T S ((o.resT T).symm (a, 0)) t = symplO T A a (o.pA ⬝ t) := by
  rw [o.symplO_resT, AddEquiv.apply_symm_apply]
  have h0 : symplO T L 0 ((o.resT T) t).2 = 0 := by simp [symplO, hO]
  rw [h0, add_zero]; rfl

end GlobalTheory.FinPl.ExtZeroLat


open GlobalTheory.FinPl.ExtZeroLat in
theorem GlobalTheory.FinPl.ExtZero.extZero_mem_latO_target : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n : Type) [Fintype n] [DecidableEq n] (ψ : AddChar (AF D.host.F) ℂ) (S A L T : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E) (β : Frame p T n) (LA : Lat A) (LS : Lat S) (LT : Lat T) (ΛT : Submodule 𝒪[k] (n → k)), (∀ u : WO T A, MxAt (· = p.v) u → (u ∈ latO T A (LT : Set _) (LA : Set _) (· = p.v) ↔ ∀ u' ∈ latO T A (LT : Set _) (LA : Set _) (· = p.v), ψ (symplO T A u u') = 1)) → (∀ u : WO T S, MxAt (· = p.v) u → (u ∈ latO T S (LT : Set _) (LS : Set _) (· = p.v) ↔ ∀ u' ∈ latO T S (LT : Set _) (LS : Set _) (· = p.v), ψ (symplO T S u u') = 1)) → halfInd p.e (latO T S (LT : Set _) (LS : Set _) (· = p.v)) = o.boxT T (halfInd p.e (latO T A (LT : Set _) (LA : Set _) (· = p.v))) (GlobalTheory.FinPl.ExtZero.rowFun β ζ (dualInd ΛT)) → ∀ u ∈ latO T A (LT : Set _) (LA : Set _) (· = p.v), (o.resT T).symm (u, 0) ∈ latO T S (LT : Set _) (LS : Set _) (· = p.v) := by
  intro D k _ _ _ _ p n _ _ ψ S A L T o ζ β LA LS LT ΛT hA hS hfac u hu
  classical
  set ΛA := latO T A (LT : Set _) (LA : Set _) (· = p.v) with hΛA
  set ΛS := latO T S (LT : Set _) (LS : Set _) (· = p.v) with hΛS
  have he := p.split
  have hce := GlobalTheory.SplitScalar.isSplitIdem_conj he
  obtain ⟨ε, hε, hsum⟩ := p.above
  have hact := (GlobalTheory.FinPl.placeIdem_acts D p.v ε hε).1

  have hsplit : ∀ {m n : ℕ} (x : Mx D m n), MxAt (· = p.v) x → p.e • x + cA D p.e • x = x := by
    intro m n x hx
    rw [← add_smul, hsum]
    ext i j
    rw [Matrix.smul_apply, smul_eq_mul]
    exact (hact _).1 (hx i j)

  have hrow0 : GlobalTheory.FinPl.ExtZero.rowFun β ζ (dualInd ΛT) 0 = 1 := by
    have hz : GlobalTheory.FinPl.ExtZero.zrow β ζ (0 : WO T L) = 0 := by
      simp only [GlobalTheory.FinPl.ExtZero.zrow, Matrix.vecMul_zero, Pi.zero_apply, map_zero]
      have : ((fun _ => 0 : Fin T.rank → k) ᵥ* β.b) = 0 := Matrix.zero_vecMul _
      rw [this, smul_zero]
    have h0 : IsHalf p.e (0 : WO T L) := fun i j => by simp
    have hd : InDual ΛT (0 : n → k) := fun y _ => by
      rw [zero_dotProduct]; exact zero_mem _
    simp [GlobalTheory.FinPl.ExtZero.rowFun, hz, dualInd, h0, hd]

  have hext : ∀ a ∈ ΛA, IsHalf p.e a → (o.resT T).symm (a, 0) ∈ ΛS := by
    intro a ha hah
    have h1 := congrFun hfac ((o.resT T).symm (a, 0))
    rw [OrthDec.boxT, AddEquiv.apply_symm_apply, hrow0, mul_one] at h1
    have h2 : halfInd p.e ΛA a = 1 := by simp [halfInd, ha, hah]
    rw [h2] at h1
    unfold halfInd at h1
    by_contra hn
    rw [if_neg fun h => hn h.1] at h1
    exact zero_ne_one h1

  have hres : ∀ t ∈ ΛS, IsHalf p.e t → o.pA ⬝ t ∈ ΛA := by
    intro t ht hth
    have h1 := congrFun hfac t
    have h2 : halfInd p.e ΛS t = 1 := by simp [halfInd, ht, hth]
    rw [h2, OrthDec.boxT] at h1
    by_contra hn
    have : halfInd p.e ΛA ((o.resT T) t).1 = 0 := by
      unfold halfInd; rw [if_neg fun h => hn h.1]
    rw [this, zero_mul] at h1
    exact one_ne_zero h1
  have huM : MxAt (· = p.v) u := GlobalTheory.FinPl.LatMem.latO_mxAt hu
  have heu : p.e • u ∈ ΛA := GlobalTheory.LatticeStable.smul_mem_latO D T A _ _ _ _ (finPart_idem_mem he.1) u hu
  have hι : (o.resT T).symm (p.e • u, 0) ∈ ΛS := hext _ heu (smul_isHalf he.1 u)
  have hιM : MxAt (· = p.v) ((o.resT T).symm (u, 0)) := by
    rw [OrthDec.resT_symm_apply, Matrix.mul_zero, add_zero]
    exact mxAt_mul_left _ huM
  refine (hS _ hιM).2 fun u' hu' => ?_
  have hu'M : MxAt (· = p.v) u' := GlobalTheory.FinPl.LatMem.latO_mxAt hu'
  have heu' : p.e • u' ∈ ΛS := GlobalTheory.LatticeStable.smul_mem_latO D T S _ _ _ _ (finPart_idem_mem he.1) u' hu'
  have hceu' : cA D p.e • u' ∈ ΛS := GlobalTheory.LatticeStable.smul_mem_latO D T S _ _ _ _ (finPart_idem_mem hce.1) u' hu'
  rw [symplO_resT_symm_left, ← hsplit u' hu'M, Matrix.mul_add, symplO_add_right, AddChar.map_add_eq_mul]
  have part1 : ψ (symplO T A u (o.pA ⬝ (p.e • u'))) = 1 :=
    (hA u huM).1 hu _ (hres _ heu' (smul_isHalf he.1 u'))
  have part2 : ψ (symplO T A u (o.pA ⬝ (cA D p.e • u'))) = 1 := by
    rw [← hsplit u huM, symplO_add_left, AddChar.map_add_eq_mul]
    have hz : symplO T A (cA D p.e • u) (o.pA ⬝ (cA D p.e • u')) = 0 := by
      refine symplO_conjHalf he (smul_isHalf hce.1 u) ?_
      intro i j
      rw [Matrix.mul_apply, Finset.mul_sum]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [mul_left_comm, (smul_isHalf hce.1 u') l j]
    rw [hz, AddChar.map_zero_eq_one, mul_one, ← symplO_resT_symm_left]
    exact (hS _ (GlobalTheory.FinPl.LatMem.latO_mxAt hι)).1 hι _ hceu'
  rw [part1, part2, one_mul]

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroMapsCompletedHomLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroMapsCompletedHomLatticeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroMapsCompletedHomLatticeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroMapsCompletedHomLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.extension_by_zero_maps_completed_hom_lattice : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n : Type) [Fintype n] [DecidableEq n] (ψ : AddChar (AF D.host.F) ℂ) (S A L T : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E) (β : Frame p T n) (LA : Lat A) (LS : Lat S) (LT : Lat T) (ΛT : Submodule 𝒪[k] (n → k)), (∀ u : WO T A, MxAt (· = p.v) u → (u ∈ latO T A (LT : Set _) (LA : Set _) (· = p.v) ↔ ∀ u' ∈ latO T A (LT : Set _) (LA : Set _) (· = p.v), ψ (symplO T A u u') = 1)) → (∀ u : WO T S, MxAt (· = p.v) u → (u ∈ latO T S (LT : Set _) (LS : Set _) (· = p.v) ↔ ∀ u' ∈ latO T S (LT : Set _) (LS : Set _) (· = p.v), ψ (symplO T S u u') = 1)) → halfInd p.e (latO T S (LT : Set _) (LS : Set _) (· = p.v)) = o.boxT T (halfInd p.e (latO T A (LT : Set _) (LA : Set _) (· = p.v))) (GlobalTheory.FinPl.ExtZero.rowFun β ζ (dualInd ΛT)) → ∀ u ∈ latO T A (LT : Set _) (LA : Set _) (· = p.v), (o.resT T).symm (u, 0) ∈ latO T S (LT : Set _) (LS : Set _) (· = p.v) := by
  first | exact @GlobalTheory.FinPl.ExtZero.extZero_mem_latO_target
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroMapsCompletedHomLatticeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroSourceSlice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroSourceSlice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.FinPl.ExtZero

theorem comb_extS_slice :
    ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (S A L T : HSp D) (o : OrthDec S A L) (c : WO A T →₀ ℂ) (f : WO S T → ℂ) (y : WO L T) (w : WO A T), comb ψ A T c (fun w' => f ((o.resS T).symm (w', y))) w = comb ψ S T (extS o T c) f ((o.resS T).symm (w, y)) := by
  intro D ψ S A L T o c f y w
  classical
  have hinj : Function.Injective (fun a : WO A T => (o.resS T).symm (a, 0)) := fun a b h => by
    simpa using h
  unfold comb extS
  rw [Finsupp.mapDomain_support_of_injective hinj, Finset.sum_image (fun a _ b _ h => hinj h),
    Finset.sum_apply, Finset.sum_apply]
  refine Finset.sum_congr rfl fun u _ => ?_
  rw [Finsupp.mapDomain_apply_of_injective hinj, Pi.smul_apply, Pi.smul_apply, heisO_resS_symm]

end GlobalTheory.FinPl.ExtZero
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroSourceSlice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroSourceSliceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroSourceSliceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroSourceSlice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.heisenbergCombination_extendByZero_source_slice : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (S A L T : HSp D) (o : OrthDec S A L) (c : WO A T →₀ ℂ) (f : WO S T → ℂ) (y : WO L T) (w : WO A T), comb ψ A T c (fun w' => f ((o.resS T).symm (w', y))) w = comb ψ S T (extS o T c) f ((o.resS T).symm (w, y)) := by
  first | exact @GlobalTheory.FinPl.ExtZero.comb_extS_slice
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroSourceSliceStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroTargetSlice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroTargetSlice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.FinPl.ExtZero

theorem comb_extT_resT_symm : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (S A L T : HSp D) (o : OrthDec S A L) (c : WO T A →₀ ℂ) (f : WO T S → ℂ) (y : WO T L) (w : WO T A), comb ψ T A c (fun w' => f ((o.resT T).symm (w', y))) w = comb ψ T S (extT o T c) f ((o.resT T).symm (w, y)) := by
  intro D ψ S A L T o c f y w
  have h1 : ∀ (X Y : HSp D) (d : WO X Y →₀ ℂ) (g : WO X Y → ℂ) (x : WO X Y),
      comb ψ X Y d g x = d.sum fun u a => a * heisO ψ X Y u g x := by
    intro X Y d g x
    simp only [comb, Finsupp.sum, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
  rw [h1, h1, extT, Finsupp.sum_mapDomain_index (fun _ => zero_mul _) (fun _ _ _ => add_mul _ _ _)]
  exact Finsupp.sum_congr fun u _ => by rw [heisO_resT_symm]

end GlobalTheory.FinPl.ExtZero
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroTargetSlice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroTargetSliceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroTargetSliceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroTargetSlice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.heisenbergCombination_extendByZero_target_slice : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (S A L T : HSp D) (o : OrthDec S A L) (c : WO T A →₀ ℂ) (f : WO T S → ℂ) (y : WO T L) (w : WO T A), comb ψ T A c (fun w' => f ((o.resT T).symm (w', y))) w = comb ψ T S (extT o T c) f ((o.resT T).symm (w, y)) := by
  first | exact @GlobalTheory.FinPl.ExtZero.comb_extT_resT_symm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroTargetSliceStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfSourceBoxLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfSourceBoxLattice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.FinPl.ExtZero.SBBox

variable {D : D7}

theorem half_add {m n : ℕ} {e : AE D} {u t : Mx D m n} (hu : IsHalf e u) (ht : IsHalf e t) : IsHalf e (u + t) := by
  intro i j
  rw [Matrix.add_apply, mul_add, hu, ht]

theorem half_sub {m n : ℕ} {e : AE D} {u t : Mx D m n} (hu : IsHalf e u) (ht : IsHalf e t) : IsHalf e (u - t) := by
  intro i j
  rw [Matrix.sub_apply, mul_sub, hu, ht]

theorem half_nsmul {m n : ℕ} {e : AE D} {u : Mx D m n} (hu : IsHalf e u) (N : ℕ) : IsHalf e (N • u) := by
  induction N with
  | zero => intro i j; rw [zero_smul, Matrix.zero_apply, mul_zero]
  | succ N ih => rw [succ_nsmul]; exact half_add ih hu

theorem half_mul {m n l : ℕ} {e : AE D} {u : Mx D m n} (hu : IsHalf e u) (x : Mx D n l) :
    IsHalf e (u * x : Mx D m l) := by
  intro i j
  simp only [Matrix.mul_apply, Finset.mul_sum]
  exact Finset.sum_congr rfl fun y _ => by rw [← mul_assoc, hu]

theorem half_of_res {S A L T : HSp D} (o : OrthDec S A L) {e : AE D} {t : WO S T}
    (h1 : IsHalf e (o.resS T t).1) (h2 : IsHalf e (o.resS T t).2) : IsHalf e t := by
  rw [← (o.resS T).symm_apply_apply t]
  exact half_add (half_mul h1 _) (half_mul h2 _)

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  {p : SplitPt D k} {T L : HSp D} {n : Type} [Fintype n] [DecidableEq n]

theorem zcol_add (β : Frame p T n) (ζ : Fin L.rank → D.host.E) (y y' : WO L T) :
    zcol β ζ (y + y') = zcol β ζ y + zcol β ζ y' := by
  unfold zcol
  rw [← Matrix.mulVec_add]
  congr 1
  funext i
  rw [Matrix.add_mulVec, Pi.add_apply, map_add (f := _)]; rfl

theorem zcol_zero (β : Frame p T n) (ζ : Fin L.rank → D.host.E) : zcol β ζ 0 = 0 := by
  have := zcol_add β ζ 0 0
  rw [add_zero] at this
  exact left_eq_add.1 this

theorem zcol_nsmul (β : Frame p T n) (ζ : Fin L.rank → D.host.E) (y : WO L T) (N : ℕ) :
    zcol β ζ (N • y) = N • zcol β ζ y := by
  induction N with
  | zero => rw [zero_smul, zero_smul, zcol_zero]
  | succ N ih => rw [succ_nsmul, succ_nsmul, zcol_add, ih]

theorem colFun_ne_zero (β : Frame p T n) (ζ : Fin L.rank → D.host.E) (Λ : Submodule 𝒪[k] (n → k)) (y : WO L T) :
    colFun β ζ (vecInd Λ) y ≠ 0 ↔ IsHalf p.e y ∧ zcol β ζ y ∈ Λ := by
  unfold colFun vecInd
  by_cases h : IsHalf p.e y <;> by_cases h' : zcol β ζ y ∈ Λ <;> simp [h, h']

theorem colFun_add (β : Frame p T n) (ζ : Fin L.rank → D.host.E) (Λ : Submodule 𝒪[k] (n → k)) (y u : WO L T)
    (hu : IsHalf p.e u) (hu' : zcol β ζ u ∈ Λ) :
    colFun β ζ (vecInd Λ) (y + u) = colFun β ζ (vecInd Λ) y := by
  have h1 : IsHalf p.e (y + u) ↔ IsHalf p.e y :=
    ⟨fun h => by simpa using half_sub h hu, fun h => half_add h hu⟩
  have h2 : zcol β ζ (y + u) ∈ Λ ↔ zcol β ζ y ∈ Λ := by
    rw [zcol_add]; exact Λ.add_mem_iff_left hu'
  unfold colFun vecInd
  rw [propext h1, propext h2]

theorem halfInd_ne_zero {m l : ℕ} (e : AE D) (Λ : AddSubgroup (Mx D m l)) (t : Mx D m l) :
    halfInd e Λ t ≠ 0 ↔ t ∈ Λ ∧ IsHalf e t := by
  unfold halfInd
  by_cases h : t ∈ Λ ∧ IsHalf e t <;> simp [h]

theorem isSBHalf_boxS_gen {S A : HSp D} (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E) (β : Frame p T n)
    (ΛA : AddSubgroup (WO A T)) (ΛS : AddSubgroup (WO S T)) (ΛT : Submodule 𝒪[k] (n → k))
    (hf : halfInd p.e ΛS = o.boxS T (halfInd p.e ΛA) (colFun β ζ (vecInd ΛT)))
    (Φ : WO A T → ℂ) (hΦ : IsSBHalf p.e ΛA Φ) :
    IsSBHalf p.e ΛS (o.boxS T Φ (colFun β ζ (vecInd ΛT))) := by
  have key : ∀ u : WO S T, (u ∈ ΛS ∧ IsHalf p.e u) ↔
      (((o.resS T u).1 ∈ ΛA ∧ IsHalf p.e (o.resS T u).1) ∧
        (IsHalf p.e (o.resS T u).2 ∧ zcol β ζ (o.resS T u).2 ∈ ΛT)) := by
    intro u
    rw [← halfInd_ne_zero, ← halfInd_ne_zero, ← colFun_ne_zero, hf, ← mul_ne_zero_iff]
    rfl
  obtain ⟨hs, N, hN, hinv, hsup⟩ := hΦ
  have hne : ∀ t, o.boxS T Φ (colFun β ζ (vecInd ΛT)) t ≠ 0 →
      Φ (o.resS T t).1 ≠ 0 ∧ IsHalf p.e (o.resS T t).2 ∧ zcol β ζ (o.resS T t).2 ∈ ΛT := by
    intro t ht
    obtain ⟨h1, h2⟩ := mul_ne_zero_iff.1 ht
    exact ⟨h1, (colFun_ne_zero β ζ ΛT _).1 h2⟩
  refine ⟨fun t ht => half_of_res o (hs _ (hne t ht).1) (hne t ht).2.1, N, hN, fun u hu hu' t => ?_, fun t ht => ?_⟩
  · obtain ⟨⟨h1, h2⟩, h3, h4⟩ := (key u).1 ⟨hu, hu'⟩
    unfold OrthDec.boxS
    rw [map_add (f := _), map_nsmul, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, hinv _ h1 h2,
      colFun_add β ζ ΛT _ _ (half_nsmul h3 N) (by rw [zcol_nsmul]; exact nsmul_mem h4 N)]
  · obtain ⟨h1, h2, h3⟩ := hne t ht
    refine ((key (N • t)).2 ?_).1
    rw [map_nsmul, Prod.smul_fst, Prod.smul_snd]
    exact ⟨⟨hsup _ h1, half_nsmul (hs _ h1) N⟩, half_nsmul h2 N, by rw [zcol_nsmul]; exact nsmul_mem h3 N⟩

theorem isSBHalf_boxS : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n : Type) [Fintype n] [DecidableEq n] (S A L T : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E) (β : Frame p T n) (LA : Lat A) (LS : Lat S) (LT : Lat T) (ΛT : Submodule 𝒪[k] (n → k)), halfInd p.e (latO S T (LS : Set _) (LT : Set _) (· = p.v)) = o.boxS T (halfInd p.e (latO A T (LA : Set _) (LT : Set _) (· = p.v))) (GlobalTheory.FinPl.ExtZero.colFun β ζ (vecInd ΛT)) → ∀ Φ, IsSBHalf p.e (latO A T (LA : Set _) (LT : Set _) (· = p.v)) Φ → IsSBHalf p.e (latO S T (LS : Set _) (LT : Set _) (· = p.v)) (o.boxS T Φ (GlobalTheory.FinPl.ExtZero.colFun β ζ (vecInd ΛT))) :=
  fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ o ζ β _ _ _ ΛT hf Φ hΦ => isSBHalf_boxS_gen o ζ β _ _ ΛT hf Φ hΦ

end GlobalTheory.FinPl.ExtZero.SBBox

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfSourceBoxLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfSourceBoxLatticeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfSourceBoxLatticeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfSourceBoxLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.isSchwartzBruhatHalf_source_box_lattice : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n : Type) [Fintype n] [DecidableEq n] (S A L T : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E) (β : Frame p T n) (LA : Lat A) (LS : Lat S) (LT : Lat T) (ΛT : Submodule 𝒪[k] (n → k)), halfInd p.e (latO S T (LS : Set _) (LT : Set _) (· = p.v)) = o.boxS T (halfInd p.e (latO A T (LA : Set _) (LT : Set _) (· = p.v))) (GlobalTheory.FinPl.ExtZero.colFun β ζ (vecInd ΛT)) → ∀ Φ, IsSBHalf p.e (latO A T (LA : Set _) (LT : Set _) (· = p.v)) Φ → IsSBHalf p.e (latO S T (LS : Set _) (LT : Set _) (· = p.v)) (o.boxS T Φ (GlobalTheory.FinPl.ExtZero.colFun β ζ (vecInd ΛT))) := by
  first | exact @GlobalTheory.FinPl.ExtZero.SBBox.isSBHalf_boxS
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfSourceBoxLatticeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfTargetBoxDualIndicator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfTargetBoxDualIndicator", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroSourceTensorColumnProduct\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.FinPl.ExtZero

namespace RowSB

variable {D : D7} {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  {p : SplitPt D k} {n : Type} [Fintype n] [DecidableEq n]

theorem isHalf_nsmul_of {e : AE D} {a b : ℕ} {x : Mx D a b} (hx : IsHalf e x) (m : ℕ) : IsHalf e (m • x) := by
  intro i j
  rw [show (m • x) i j = m • x i j from rfl, nsmul_eq_mul, mul_left_comm, hx i j]

theorem isHalf_of_add {e : AE D} {a b : ℕ} {x y : Mx D a b} (hxy : IsHalf e (x + y)) (hy : IsHalf e y) :
    IsHalf e x := by
  intro i j
  have h := hxy i j
  rw [Matrix.add_apply, mul_add, hy i j] at h
  exact add_right_cancel h

theorem isHalf_resT_symm_pair {S A L : HSp D} (o : OrthDec S A L) (T : HSp D) {e : AE D} {a : WO T A} {b : WO T L}
    (ha : IsHalf e a) (hb : IsHalf e b) : IsHalf e ((o.resT T).symm (a, b)) := by
  intro i j
  rw [OrthDec.resT_symm_apply]
  simp only [Matrix.add_apply, Matrix.mul_apply, mul_add, Finset.mul_sum]
  congr 1
  · exact Finset.sum_congr rfl fun x _ => by rw [mul_left_comm, ha]
  · exact Finset.sum_congr rfl fun x _ => by rw [mul_left_comm, hb]

theorem zrow_add' {T L : HSp D} (β : Frame p T n) (ζ : Fin L.rank → D.host.E) (x y : WO T L) :
    zrow β ζ (x + y) = zrow β ζ x + zrow β ζ y := by
  simp only [zrow, Matrix.vecMul_add, Pi.add_apply, map_add (f := _)]
  rw [← smul_add, ← Matrix.add_vecMul]
  rfl

def zrowHom {T L : HSp D} (β : Frame p T n) (ζ : Fin L.rank → D.host.E) : WO T L →+ (n → k) :=
  AddMonoidHom.mk' (zrow β ζ) (zrow_add' β ζ)

theorem zrow_nsmul' {T L : HSp D} (β : Frame p T n) (ζ : Fin L.rank → D.host.E) (m : ℕ) (x : WO T L) :
    zrow β ζ (m • x) = m • zrow β ζ x :=
  map_nsmul (zrowHom β ζ) m x

theorem inDual_add' {Λ : Submodule 𝒪[k] (n → k)} {η ξ : n → k} (h : InDual Λ η) (h' : InDual Λ ξ) :
    InDual Λ (η + ξ) := fun y hy => by
  rw [add_dotProduct]; exact add_mem (h y hy) (h' y hy)

theorem inDual_sub' {Λ : Submodule 𝒪[k] (n → k)} {η ξ : n → k} (h : InDual Λ η) (h' : InDual Λ ξ) :
    InDual Λ (η - ξ) := fun y hy => by
  rw [sub_dotProduct]; exact sub_mem (h y hy) (h' y hy)

theorem inDual_nsmul' {Λ : Submodule 𝒪[k] (n → k)} {η : n → k} (h : InDual Λ η) (m : ℕ) :
    InDual Λ (m • η) := fun y hy => by
  rw [smul_dotProduct]; exact nsmul_mem (h y hy) m

theorem rowFun_dualInd_ne_zero {T L : HSp D} (β : Frame p T n) (ζ : Fin L.rank → D.host.E)
    (ΛT : Submodule 𝒪[k] (n → k)) {y : WO T L} (h : rowFun β ζ (dualInd ΛT) y ≠ 0) :
    IsHalf p.e y ∧ InDual ΛT (zrow β ζ y) := by
  unfold rowFun dualInd at h
  by_cases hy : IsHalf p.e y
  · rw [if_pos hy] at h
    by_cases hd : InDual ΛT (zrow β ζ y)
    · exact ⟨hy, hd⟩
    · rw [if_neg hd] at h; exact absurd rfl h
  · rw [if_neg hy] at h; exact absurd rfl h

theorem rowFun_dualInd_eq_one {T L : HSp D} (β : Frame p T n) (ζ : Fin L.rank → D.host.E)
    (ΛT : Submodule 𝒪[k] (n → k)) {y : WO T L} (hy : IsHalf p.e y) (hd : InDual ΛT (zrow β ζ y)) :
    rowFun β ζ (dualInd ΛT) y = 1 := by
  unfold rowFun dualInd
  rw [if_pos hy, if_pos hd]

theorem rowFun_dualInd_add_nsmul {T L : HSp D} (β : Frame p T n) (ζ : Fin L.rank → D.host.E)
    (ΛT : Submodule 𝒪[k] (n → k)) {y : WO T L} (hy : IsHalf p.e y) (hd : InDual ΛT (zrow β ζ y)) (m : ℕ)
    (x : WO T L) : rowFun β ζ (dualInd ΛT) (x + m • y) = rowFun β ζ (dualInd ΛT) x := by
  have hz : zrow β ζ (x + m • y) = zrow β ζ x + m • zrow β ζ y := by
    rw [zrow_add', zrow_nsmul']
  have hm := inDual_nsmul' hd m
  unfold rowFun dualInd
  by_cases hx : IsHalf p.e x
  · rw [if_pos (GlobalTheory.FinPl.ExtZero.isHalf_add_of hx (isHalf_nsmul_of hy m)), if_pos hx, hz]
    have hiff : InDual ΛT (zrow β ζ x + m • zrow β ζ y) ↔ InDual ΛT (zrow β ζ x) :=
      ⟨fun h => by simpa using inDual_sub' h hm, fun h => inDual_add' h hm⟩
    by_cases hd' : InDual ΛT (zrow β ζ x)
    · rw [if_pos hd', if_pos (hiff.2 hd')]
    · rw [if_neg hd', if_neg (fun h => hd' (hiff.1 h))]
  · rw [if_neg hx, if_neg (fun h => hx (isHalf_of_add h (isHalf_nsmul_of hy m)))]

theorem halfInd_eq_one_iff' {e : AE D} {a b : ℕ} (Λ : AddSubgroup (Mx D a b)) (t : Mx D a b) :
    halfInd e Λ t = 1 ↔ t ∈ Λ ∧ IsHalf e t := by
  unfold halfInd
  split_ifs with h <;> simp [h]

theorem halfInd_ne_zero_iff' {e : AE D} {a b : ℕ} (Λ : AddSubgroup (Mx D a b)) (t : Mx D a b) :
    halfInd e Λ t ≠ 0 ↔ t ∈ Λ ∧ IsHalf e t := by
  unfold halfInd
  split_ifs with h <;> simp [h]

end RowSB

open RowSB

theorem isSBHalf_boxT_rowFun_dualInd : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n : Type) [Fintype n] [DecidableEq n] (S A L T : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E) (β : Frame p T n) (LA : Lat A) (LS : Lat S) (LT : Lat T) (ΛT : Submodule 𝒪[k] (n → k)), halfInd p.e (latO T S (LT : Set _) (LS : Set _) (· = p.v)) = o.boxT T (halfInd p.e (latO T A (LT : Set _) (LA : Set _) (· = p.v))) (GlobalTheory.FinPl.ExtZero.rowFun β ζ (dualInd ΛT)) → ∀ Φ, IsSBHalf p.e (latO T A (LT : Set _) (LA : Set _) (· = p.v)) Φ → IsSBHalf p.e (latO T S (LT : Set _) (LS : Set _) (· = p.v)) (o.boxT T Φ (GlobalTheory.FinPl.ExtZero.rowFun β ζ (dualInd ΛT))) := by
  intro D k _ _ _ _ p n _ _ S A L T o ζ β LA LS LT ΛT H Φ hΦ
  obtain ⟨hsupp, m, hm, hinv, hlat⟩ := hΦ
  have hH : ∀ w, halfInd p.e (latO T S (LT : Set _) (LS : Set _) (· = p.v)) w =
      halfInd p.e (latO T A (LT : Set _) (LA : Set _) (· = p.v)) (o.resT T w).1 *
        rowFun β ζ (dualInd ΛT) (o.resT T w).2 := fun w => congrFun H w
  have hbox : ∀ w, o.boxT T Φ (rowFun β ζ (dualInd ΛT)) w =
      Φ (o.resT T w).1 * rowFun β ζ (dualInd ΛT) (o.resT T w).2 := fun w => rfl
  refine ⟨fun t ht => ?_, m, hm, fun u hu hhu t => ?_, fun t ht => ?_⟩
  · rw [hbox] at ht
    have h1 := hsupp _ (left_ne_zero_of_mul ht)
    have h2 := (rowFun_dualInd_ne_zero β ζ ΛT (right_ne_zero_of_mul ht)).1
    have := isHalf_resT_symm_pair o T h1 h2
    rwa [Prod.mk.eta, AddEquiv.symm_apply_apply] at this
  · have hu1 : halfInd p.e (latO T S (LT : Set _) (LS : Set _) (· = p.v)) u = 1 :=
      (halfInd_eq_one_iff' _ _).2 ⟨hu, hhu⟩
    rw [hH] at hu1
    have hA := (halfInd_ne_zero_iff' _ _).1 (left_ne_zero_of_mul_eq_one hu1)
    have hR := rowFun_dualInd_ne_zero β ζ ΛT (right_ne_zero_of_mul_eq_one hu1)
    rw [hbox, hbox, map_add (f := _), map_nsmul, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd,
      hinv _ hA.1 hA.2, rowFun_dualInd_add_nsmul β ζ ΛT hR.1 hR.2]
  · rw [hbox] at ht
    have hΦt := left_ne_zero_of_mul ht
    have h1 := hsupp _ hΦt
    have hR := rowFun_dualInd_ne_zero β ζ ΛT (right_ne_zero_of_mul ht)
    have hmt : halfInd p.e (latO T S (LT : Set _) (LS : Set _) (· = p.v)) (m • t) = 1 := by
      rw [hH, map_nsmul, Prod.smul_fst, Prod.smul_snd,
        (halfInd_eq_one_iff' _ _).2 ⟨hlat _ hΦt, isHalf_nsmul_of h1 m⟩,
        rowFun_dualInd_eq_one β ζ ΛT (isHalf_nsmul_of hR.1 m) (by rw [zrow_nsmul']; exact inDual_nsmul' hR.2 m),
        one_mul]
    exact ((halfInd_eq_one_iff' _ _).1 hmt).1

end GlobalTheory.FinPl.ExtZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfTargetBoxDualIndicator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfTargetBoxDualIndicatorStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfTargetBoxDualIndicatorStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfTargetBoxDualIndicator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.isSchwartzBruhatHalf_target_box_dualIndicator : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n : Type) [Fintype n] [DecidableEq n] (S A L T : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E) (β : Frame p T n) (LA : Lat A) (LS : Lat S) (LT : Lat T) (ΛT : Submodule 𝒪[k] (n → k)), halfInd p.e (latO T S (LT : Set _) (LS : Set _) (· = p.v)) = o.boxT T (halfInd p.e (latO T A (LT : Set _) (LA : Set _) (· = p.v))) (GlobalTheory.FinPl.ExtZero.rowFun β ζ (dualInd ΛT)) → ∀ Φ, IsSBHalf p.e (latO T A (LT : Set _) (LA : Set _) (· = p.v)) Φ → IsSBHalf p.e (latO T S (LT : Set _) (LS : Set _) (· = p.v)) (o.boxT T Φ (GlobalTheory.FinPl.ExtZero.rowFun β ζ (dualInd ΛT))) := by
  first | exact @GlobalTheory.FinPl.ExtZero.isSBHalf_boxT_rowFun_dualInd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfTargetBoxDualIndicatorStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchroedingerIntertwinerSliceRestrictionPlaceMode =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchroedingerIntertwinerSliceRestrictionPlaceMode", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.FinPl.ExtZero

theorem restrModel_isPlaceModel : ∀ (D : D7) {m n m' n' m'' n'' : ℕ} (ψ : AddChar (AF D.host.F) ℂ) (BS : Mx D m n → Mx D m n → AF D.host.F) (hsS : Mx D m n → (Mx D m n → ℂ) → (Mx D m n → ℂ)) (BA : Mx D m' n' → Mx D m' n' → AF D.host.F) (hsA : Mx D m' n' → (Mx D m' n' → ℂ) → (Mx D m' n' → ℂ)) (r : Mx D m n ≃+ Mx D m' n' × Mx D m'' n'') (e : AE D) (ΛS : AddSubgroup (Mx D m n)) (ΛA : AddSubgroup (Mx D m' n')) (h : Mx D m'' n'' → ℂ) (f₀ : Mx D m n → ℂ) (T' : (Mx D m n → ℂ) →ₗ[ℂ] (Mx D m n → ℂ)), IsPlaceModel ψ BS hsS e ΛS 1 f₀ T' → (∀ a F w y, hsS (r.symm (a, 0)) F (r.symm (w, y)) = hsA a (fun w' => F (r.symm (w', y))) w) → (∀ t a, BS t (r.symm (a, 0)) = BA (r t).1 a) → (∀ a, IsHalf e a → IsHalf e (r.symm (a, 0))) → (∀ a, IsHalf (cA D e) a → IsHalf (cA D e) (r.symm (a, 0))) → (∀ Φ, IsSBHalf e ΛA Φ → IsSBHalf e ΛS (fun t => Φ (r t).1 * h (r t).2)) → halfInd e ΛS = (fun t => halfInd e ΛA (r t).1 * h (r t).2) → ∀ y, IsPlaceModel ψ BA hsA e ΛA 1 (fun w => f₀ (r.symm (w, y))) (GlobalTheory.FinPl.ExtZero.restrModel r h T' y) := by
  intro D m n m' n' m'' n'' ψ BS hsS BA hsA r e ΛS ΛA h f₀ T' hT hcomp hB hhalf hhalfc hSB hInd y
  refine ⟨?_, ?_, ?_⟩
  · intro Φ hΦ x hx
    funext w
    rw [restrModel_apply]
    have hfun : (fun t => (fun t => Φ (t + x)) (r t).1 * h (r t).2) =
        fun t => (fun t => Φ (r t).1 * h (r t).2) (t + r.symm (x, 0)) := by
      funext t
      simp only [map_add (f := _), AddEquiv.apply_symm_apply, Prod.fst_add, Prod.snd_add, add_zero]
    rw [hfun, hT.trans _ (hSB Φ hΦ) _ (hhalf x hx), hcomp]
    rfl
  · intro Φ hΦ y' hy'
    funext w
    rw [restrModel_apply]
    have hfun : (fun t => (fun t => ψ (BA t y') * Φ t) (r t).1 * h (r t).2) =
        fun t => ψ (BS t (r.symm (y', 0))) * (fun t => Φ (r t).1 * h (r t).2) t := by
      funext t
      simp only [hB, mul_assoc]
    rw [hfun, hT.modul _ (hSB Φ hΦ) _ (hhalfc y' hy'), hcomp]
    rfl
  · funext w
    rw [restrModel_apply]
    have hfun : (fun t => ((1 : ℂ) • halfInd e ΛA) (r t).1 * h (r t).2) = (1 : ℂ) • halfInd e ΛS := by
      rw [hInd]; funext t; simp
    rw [hfun, hT.vac]

end GlobalTheory.FinPl.ExtZero
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchroedingerIntertwinerSliceRestrictionPlaceMode =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchroedingerIntertwinerSliceRestrictionPlaceModeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchroedingerIntertwinerSliceRestrictionPlaceModeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchroedingerIntertwinerSliceRestrictionPlaceMode\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.schroedinger_intertwiner_slice_restriction_placeModel : ∀ (D : D7) {m n m' n' m'' n'' : ℕ} (ψ : AddChar (AF D.host.F) ℂ) (BS : Mx D m n → Mx D m n → AF D.host.F) (hsS : Mx D m n → (Mx D m n → ℂ) → (Mx D m n → ℂ)) (BA : Mx D m' n' → Mx D m' n' → AF D.host.F) (hsA : Mx D m' n' → (Mx D m' n' → ℂ) → (Mx D m' n' → ℂ)) (r : Mx D m n ≃+ Mx D m' n' × Mx D m'' n'') (e : AE D) (ΛS : AddSubgroup (Mx D m n)) (ΛA : AddSubgroup (Mx D m' n')) (h : Mx D m'' n'' → ℂ) (f₀ : Mx D m n → ℂ) (T' : (Mx D m n → ℂ) →ₗ[ℂ] (Mx D m n → ℂ)), IsPlaceModel ψ BS hsS e ΛS 1 f₀ T' → (∀ a F w y, hsS (r.symm (a, 0)) F (r.symm (w, y)) = hsA a (fun w' => F (r.symm (w', y))) w) → (∀ t a, BS t (r.symm (a, 0)) = BA (r t).1 a) → (∀ a, IsHalf e a → IsHalf e (r.symm (a, 0))) → (∀ a, IsHalf (cA D e) a → IsHalf (cA D e) (r.symm (a, 0))) → (∀ Φ, IsSBHalf e ΛA Φ → IsSBHalf e ΛS (fun t => Φ (r t).1 * h (r t).2)) → halfInd e ΛS = (fun t => halfInd e ΛA (r t).1 * h (r t).2) → ∀ y, IsPlaceModel ψ BA hsA e ΛA 1 (fun w => f₀ (r.symm (w, y))) (GlobalTheory.FinPl.ExtZero.restrModel r h T' y) := by
  first | exact @GlobalTheory.FinPl.ExtZero.restrModel_isPlaceModel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchroedingerIntertwinerSliceRestrictionPlaceModeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceCombinationExtendByZeroOrthSumLine =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceCombinationExtendByZeroOrthSumLine", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroMemCompletedLatticeSourceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroSourceTensorColumnProductStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroTargetTensorRowProductStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroMapsCompletedHomLatticeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroSourceSliceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombinationExtendByZeroTargetSliceStatement\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HomLatticeCompletionSelfAnnihilatorAtPlaces\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HomLatticeIndicatorOnSplitHalfEqHalfIndicatorStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IndicatorHomSelfDualComponentsSchwartzBruhat\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfSourceBoxLatticeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatHalfTargetBoxDualIndicatorStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsThetaFunOSourceSliceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsThetaFunOTargetSliceOrthogonalSumStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchroedingerIntertwinerSliceRestrictionPlaceModeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceBaseVacuumDatumExistsUniqueStatement\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.T2SpaceMatrixOfIsNonarchimedeanLocalField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.FinPl GlobalTheory.MixPer GlobalTheory.MixModel GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing Matrix
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer InDual)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.FinPl.ExtZero

theorem ext_zero : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (p : SplitPt D k) (n n' : Type) [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n'] (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → p.UnitAA → ∀ (S A L T : HSp D) (o : OrthDec S A L) (ζ : Fin L.rank → D.host.E), IsLineVec L ζ → ∀ (α : Frame p A n') (α₀ : Frame p S (n' ⊕ Fin 1)) (β : Frame p T n), IsSumFrame o ζ α α₀ → ∀ (LA : Lat A) (LS : Lat S) (LT : Lat T) (ΛA : Submodule 𝒪[k] (n' → k)) (ΛT : Submodule 𝒪[k] (n → k)), IsSelfDualC A LA → IsSelfDualC S LS → IsSelfDualC T LT → α.IsLat LA ΛA → α₀.IsLat LS (lastKer ΛA) → β.IsLat LT ΛT → (∀ (Ψ : Matrix n n' k → ℂ) (c : WO A T →₀ ℂ), CombAt (· = p.v) c → (∀ f₀, Vac ψ A T LA LT (· = p.v) f₀ → Over ψ α β LA LT f₀ Ψ (comb ψ A T c f₀)) → ∀ f₀, Vac ψ S T LS LT (· = p.v) f₀ → Over ψ α₀ β LS LT f₀ (tensCol Ψ (vecInd ΛT)) (comb ψ S T (extS o T c) f₀)) ∧ ∀ (Ψ : Matrix n' n k → ℂ) (c : WO T A →₀ ℂ), CombAt (· = p.v) c → (∀ f₀, Vac ψ T A LT LA (· = p.v) f₀ → Over ψ β α LT LA f₀ Ψ (comb ψ T A c f₀)) → ∀ f₀, Vac ψ T S LT LS (· = p.v) f₀ → Over ψ β α₀ LT LS f₀ (tensRow Ψ (dualInd ΛT)) (comb ψ T S (extT o T c) f₀) := by
  intro D k _ _ _ _ p n n' _ _ _ _ ψ hψ hU S A L T o ζ hζ α α₀ β hsum LA LS LT ΛA ΛT hA hS hT hαA hα₀ hβ
  have : ΛT.IsFullLattice k := GlobalTheory.FinPl.isLattice_of_isLat_selfDual β LT hT ΛT hβ
  have sdA := _root_.GlobalTheory.SelfDualAt.latO_ann_at D ψ hψ A T LA LT hA hT (· = p.v)
  have sdS := _root_.GlobalTheory.SelfDualAt.latO_ann_at D ψ hψ S T LS LT hS hT (· = p.v)
  have sdA' := _root_.GlobalTheory.SelfDualAt.latO_ann_at D ψ hψ T A LT LA hT hA (· = p.v)
  have sdS' := _root_.GlobalTheory.SelfDualAt.latO_ann_at D ψ hψ T S LT LS hT hS (· = p.v)
  have facS : halfInd p.e (latO S T (LS : Set _) (LT : Set _) (· = p.v)) =
      o.boxS T (halfInd p.e (latO A T (LA : Set _) (LT : Set _) (· = p.v))) (colFun β ζ (vecInd ΛT)) := by
    rw [← GlobalTheory.T.homLatticeIndicator_on_split_half_eq_half_indicator D k p n (n' ⊕ Fin 1) S T α₀ β LS LT hS hT hU _ _ hα₀ hβ,
      ← GlobalTheory.T.homLatticeIndicator_on_split_half_eq_half_indicator D k p n n' A T α β LA LT hA hT hU _ _ hαA hβ, latInd_lastKer,
      GlobalTheory.T.extendByZero_source_tensor_column_product D k p n n' S A L T o ζ α α₀ β hsum]
  have facT : halfInd p.e (latO T S (LT : Set _) (LS : Set _) (· = p.v)) =
      o.boxT T (halfInd p.e (latO T A (LT : Set _) (LA : Set _) (· = p.v))) (rowFun β ζ (dualInd ΛT)) := by
    rw [← GlobalTheory.T.homLatticeIndicator_on_split_half_eq_half_indicator D k p (n' ⊕ Fin 1) n T S β α₀ LT LS hT hS hU _ _ hβ hα₀,
      ← GlobalTheory.T.homLatticeIndicator_on_split_half_eq_half_indicator D k p n' n T A β α LT LA hT hA hU _ _ hβ hαA, latInd_lastKer_row,
      GlobalTheory.T.extendByZero_target_tensor_row_product D k p n n' S A L T o ζ hζ α α₀ β hsum]
  have latS := GlobalTheory.T.extendByZero_mem_completed_lattice_source D k p n ψ S A L T o ζ β LA LS LT ΛT sdA sdS facS
  have latT := GlobalTheory.T.extension_by_zero_maps_completed_hom_lattice D k p n ψ S A L T o ζ β LA LS LT ΛT sdA' sdS' facT
  have vacS : ∀ f₀, Vac ψ S T LS LT (· = p.v) f₀ → ∀ y,
      Vac ψ A T LA LT (· = p.v) (fun w => f₀ ((o.resS T).symm (w, y))) := by
    intro f₀ hf y
    refine ⟨GlobalTheory.T.isThetaFunO_source_slice D ψ S A L T o f₀ y hf.1, fun u hu => ?_, fun e' he' u hu hh => ?_⟩
    · funext w
      rw [← heisO_resS_symm ψ o (2 • u) f₀ w y]
      have h2 : (o.resS T).symm (2 • u, 0) = 2 • (o.resS T).symm (u, 0) := by
        rw [← map_nsmul]; simp
      rw [h2, hf.2.1 _ (latS u hu)]
    · funext w
      rw [← heisO_resS_symm ψ o u f₀ w y, hf.2.2 e' he' _ (latS u hu) (half_resS_symm o hh)]
  have vacT : ∀ f₀, Vac ψ T S LT LS (· = p.v) f₀ → ∀ y,
      Vac ψ T A LT LA (· = p.v) (fun w => f₀ ((o.resT T).symm (w, y))) := by
    intro f₀ hf y
    refine ⟨GlobalTheory.T.isThetaFunO_target_slice_orthogonal_sum D ψ S A L T o f₀ y hf.1, fun u hu => ?_, fun e' he' u hu hh => ?_⟩
    · funext w
      rw [← heisO_resT_symm ψ o (2 • u) f₀ w y]
      have h2 : (o.resT T).symm (2 • u, 0) = 2 • (o.resT T).symm (u, 0) := by
        rw [← map_nsmul]; simp
      rw [h2, hf.2.1 _ (latT u hu)]
    · funext w
      rw [← heisO_resT_symm ψ o u f₀ w y, hf.2.2 e' he' _ (latT u hu) (half_resT_symm o hh)]
  refine ⟨fun Ψ c _ hyp f₀ hf₀ => ?_, fun Ψ c _ hyp f₀ hf₀ => ?_⟩
  · have hΨ : Ψ ∈ SB (Matrix n n' k) := (hyp _ (vacS f₀ hf₀ 0)).2.2.2.1
    have hΨ' : tensCol Ψ (vecInd ΛT) ∈ SB (Matrix n (n' ⊕ Fin 1) k) :=
      GlobalTheory.FinPl.Comm.tensCol_mem hΨ (GlobalTheory.FinPl.Comm.vecInd_mem ΛT)
    obtain ⟨f, hf, -⟩ := (GlobalTheory.T.splitPlace_baseVacuum_datum_exists_unique D k p n (n' ⊕ Fin 1) ψ hψ S T α₀ β LS LT hS hT f₀ hf₀).1 _ hΨ'
    refine ⟨hS, hT, hf₀, hΨ', hf.2.2.2.2.1, fun T' hT' => ?_⟩
    funext t
    obtain ⟨⟨w, y⟩, rfl⟩ : ∃ q, (o.resS T).symm q = t := ⟨_, (o.resS T).symm_apply_apply t⟩
    have hmod := GlobalTheory.T.schroedinger_intertwiner_slice_restriction_placeModel D ψ (symplO S T) (heisO ψ S T) (symplO A T) (heisO ψ A T) (o.resS T) p.e _ _
      (colFun β ζ (vecInd ΛT)) f₀ T' hT' (fun a F w y => heisO_resS_symm ψ o a F w y)
      (fun t a => symplO_resS_symm o t a) (fun a ha => half_resS_symm o ha) (fun a ha => half_resS_symm o ha)
      (GlobalTheory.T.isSchwartzBruhatHalf_source_box_lattice D k p n S A L T o ζ β LA LS LT ΛT facS) facS y
    have key := congrFun ((hyp _ (vacS f₀ hf₀ y)).2.2.2.2.2 _ hmod) w
    rw [GlobalTheory.T.heisenbergCombination_extendByZero_source_slice] at key
    rw [key, restrModel_apply, GlobalTheory.T.extendByZero_source_tensor_column_product D k p n n' S A L T o ζ α α₀ β hsum]
    rfl
  · have hΨ : Ψ ∈ SB (Matrix n' n k) := (hyp _ (vacT f₀ hf₀ 0)).2.2.2.1
    have hΨ' : tensRow Ψ (dualInd ΛT) ∈ SB (Matrix (n' ⊕ Fin 1) n k) :=
      GlobalTheory.FinPl.Comm.tensRow_mem hΨ (GlobalTheory.FinPl.Comm.dualInd_mem ΛT)
    obtain ⟨f, hf, -⟩ := (GlobalTheory.T.splitPlace_baseVacuum_datum_exists_unique D k p (n' ⊕ Fin 1) n ψ hψ T S β α₀ LT LS hT hS f₀ hf₀).1 _ hΨ'
    refine ⟨hT, hS, hf₀, hΨ', hf.2.2.2.2.1, fun T' hT' => ?_⟩
    funext t
    obtain ⟨⟨w, y⟩, rfl⟩ : ∃ q, (o.resT T).symm q = t := ⟨_, (o.resT T).symm_apply_apply t⟩
    have hmod := GlobalTheory.T.schroedinger_intertwiner_slice_restriction_placeModel D ψ (symplO T S) (heisO ψ T S) (symplO T A) (heisO ψ T A) (o.resT T) p.e _ _
      (rowFun β ζ (dualInd ΛT)) f₀ T' hT' (fun a F w y => heisO_resT_symm ψ o a F w y)
      (fun t a => symplO_resT_symm o t a) (fun a ha => half_resT_symm o ha) (fun a ha => half_resT_symm o ha)
      (GlobalTheory.T.isSchwartzBruhatHalf_target_box_dualIndicator D k p n S A L T o ζ β LA LS LT ΛT facT) facT y
    have key := congrFun ((hyp _ (vacT f₀ hf₀ y)).2.2.2.2.2 _ hmod) w
    rw [GlobalTheory.T.heisenbergCombination_extendByZero_target_slice] at key
    rw [key, restrModel_apply, GlobalTheory.T.extendByZero_target_tensor_row_product D k p n n' S A L T o ζ hζ α α₀ β hsum]
    rfl

end GlobalTheory.FinPl.ExtZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceCombinationExtendByZeroOrthSumLine =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroAtSplitPlacesProof =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroAtSplitPlacesProof", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.SmallPair\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.DataAsCombinationsAtSplitPlacesProof\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroLeftMemCoreLattice\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtendByZeroRightMemCoreLattice\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsThetaFunOSourceSliceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsThetaFunOTargetSliceOrthogonalSumStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatIndLastKerRow\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LatticeOrthogonalSumLineAtSplitPlaceStatement\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.CombAtSingleZero\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceCombinationExtendByZeroOrthSumLine\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceChangeBaseVacuumHeisenbergCombination\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.SeeSaw ValuativeRel IsLocalRing GlobalTheory.FinPl
open GlobalTheory.IndefiniteRowSideFullHecke.AppendedVectorData (lastKer)
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.FinPl.ExtZero

namespace GlobalTheory.FinPl.ExtAllPf

variable {D : D7}

theorem vac_zero' {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {LS : Lat S} {LT : Lat T} (P : Pl D → Prop) :
    Vac ψ S T LS LT P 0 := by
  have h : ∀ u, heisO ψ S T u 0 = 0 := fun u => by funext w; simp [heisO]
  exact ⟨⟨fun _ _ => by simp, ⟨⊤, isOpen_univ, fun u _ _ => h u⟩, continuous_const, fun _ _ _ _ _ => contDiff_const⟩,
    fun u _ => h _, fun _ _ u _ _ => h u⟩

theorem vac_at' {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {LS : Lat S} {LT : Lat T} {P : Pl D → Prop} {v : Pl D}
    {f : WO S T → ℂ} (hv : P v) (h : Vac ψ S T LS LT P f) : Vac ψ S T LS LT (· = v) f := by
  have hle : latO S T (LS : Set _) (LT : Set _) (· = v) ≤ latO S T (LS : Set _) (LT : Set _) P := by
    apply AddSubgroup.closure_mono
    rintro w ⟨α, hα, hz, rest⟩
    exact ⟨α, hα, fun v' hv' => hz v' (fun e => hv' (by subst e; exact hv)), rest⟩
  exact ⟨h.1, fun u hu => h.2.1 u (hle hu), fun e he u hu hh => h.2.2 e he u (hle hu) hh⟩

theorem idAt_mono' {P Q : Pl D → Prop} (h : ∀ v, P v → Q v) : idAt D P ≤ idAt D Q := by
  intro a ha
  simp only [idAt, Ideal.mem_inf, Ideal.mem_iInf] at ha ⊢
  exact ⟨ha.1, fun w => ha.2 ⟨w.1, fun hp => w.2 (h _ hp)⟩⟩

theorem combAt_extS {P : Pl D → Prop} {S A L : HSp D} (o : OrthDec S A L) (T : HSp D) {c : WO A T →₀ ℂ}
    (hc : CombAt P c) : CombAt P (extS o T c) := by
  classical
  intro u hu
  obtain ⟨x, hx, rfl⟩ := Finset.mem_image.1 (Finsupp.mapDomain_support hu)
  intro i j
  rw [OrthDec.resS_symm_apply, Matrix.zero_mul, add_zero, Matrix.mul_apply]
  exact Ideal.sum_mem _ fun k _ => Ideal.mul_mem_right _ _ (hc x hx i k)

theorem combAt_extT {P : Pl D → Prop} {T A L : HSp D} (o : OrthDec T A L) (S : HSp D) {c : WO S A →₀ ℂ}
    (hc : CombAt P c) : CombAt P (extT o S c) := by
  classical
  intro u hu
  obtain ⟨x, hx, rfl⟩ := Finset.mem_image.1 (Finsupp.mapDomain_support hu)
  intro i j
  rw [OrthDec.resT_symm_apply, Matrix.mul_zero, add_zero, Matrix.mul_apply]
  exact Ideal.sum_mem _ fun k _ => Ideal.mul_mem_left _ _ (hc x hx k j)

theorem comb_extS_slice (ψ : AddChar (AF D.host.F) ℂ) {S A L T : HSp D} (o : OrthDec S A L) (c : WO A T →₀ ℂ)
    (F : WO S T → ℂ) (w : WO A T) (y : WO L T) :
    comb ψ S T (extS o T c) F ((o.resS T).symm (w, y)) = comb ψ A T c (fun w' => F ((o.resS T).symm (w', y))) w := by
  rw [_root_.GlobalTheory.HeisComb.comb_eq_sum, _root_.GlobalTheory.HeisComb.comb_eq_sum, extS, Finsupp.sum_mapDomain_index (h := fun u a => a • heisO ψ S T u F) (fun _ => zero_smul _ _) (fun _ _ _ => add_smul _ _ _)]
  simp only [Finsupp.sum, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
  refine Finset.sum_congr rfl fun u _ => ?_
  rw [heisO_resS_symm]

theorem comb_extT_slice (ψ : AddChar (AF D.host.F) ℂ) {S A L T : HSp D} (o : OrthDec S A L) (c : WO T A →₀ ℂ)
    (F : WO T S → ℂ) (w : WO T A) (y : WO T L) :
    comb ψ T S (extT o T c) F ((o.resT T).symm (w, y)) = comb ψ T A c (fun w' => F ((o.resT T).symm (w', y))) w := by
  rw [_root_.GlobalTheory.HeisComb.comb_eq_sum, _root_.GlobalTheory.HeisComb.comb_eq_sum, extT, Finsupp.sum_mapDomain_index (h := fun u a => a • heisO ψ T S u F) (fun _ => zero_smul _ _) (fun _ _ _ => add_smul _ _ _)]
  simp only [Finsupp.sum, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
  refine Finset.sum_congr rfl fun u _ => ?_
  rw [heisO_resT_symm]

section Lists

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {ι : Type}
  {p : ι → SplitPt D k} {n n' : Type} [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n']
  {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D}

theorem overAll_sb {α : ∀ i, Frame (p i) S n'} {β : ∀ i, Frame (p i) T n} {LS : Lat S} {LT : Lat T}
    {Ψ : ι → Matrix n n' k → ℂ} : ∀ (l : List ι) (f f' : WO S T → ℂ), OverAll ψ α β LS LT Ψ l f f' →
      ∀ i ∈ l, Ψ i ∈ SB (Matrix n n' k) := by
  intro l
  induction l with
  | nil => intro f f' _ i hi; simp at hi
  | cons j l ih =>
    intro f f' h i hi
    obtain ⟨g, hg, hO⟩ := h
    rcases List.mem_cons.1 hi with rfl | hi
    · exact hO.2.2.2.1
    · exact ih f g hg i hi

def chainOp (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (e : ι → WO S T →₀ ℂ) (l : List ι) (f : WO S T → ℂ) :
    WO S T → ℂ :=
  l.foldr (fun i g => comb ψ S T (e i) g) f

theorem chainOp_vac {LS : Lat S} {LT : Lat T} (e : ι → WO S T →₀ ℂ)
    (hpres : ∀ i j, i ≠ j → ∀ g, Vac ψ S T LS LT (· = (p j).v) g → Vac ψ S T LS LT (· = (p j).v) (comb ψ S T (e i) g)) :
    ∀ (l : List ι) (f : WO S T → ℂ), (∀ i, Vac ψ S T LS LT (· = (p i).v) f) →
      ∀ j, j ∉ l → Vac ψ S T LS LT (· = (p j).v) (chainOp ψ S T e l f) := by
  intro l
  induction l with
  | nil => intro f hf j _; exact hf j
  | cons i l ih =>
    intro f hf j hj
    have hij : i ≠ j := fun h => hj (h ▸ List.mem_cons_self)
    exact hpres i j hij _ (ih f hf j fun h => hj (List.mem_cons_of_mem _ h))

theorem overAll_chain (α : ∀ i, Frame (p i) S n') (β : ∀ i, Frame (p i) T n) (LS : Lat S) (LT : Lat T)
    (Φ : ι → Matrix n n' k → ℂ) (e : ι → WO S T →₀ ℂ)
    (hE : ∀ i f₀, Vac ψ S T LS LT (· = (p i).v) f₀ → Over ψ (α i) (β i) LS LT f₀ (Φ i) (comb ψ S T (e i) f₀))
    (hpres : ∀ i j, i ≠ j → ∀ g, Vac ψ S T LS LT (· = (p j).v) g → Vac ψ S T LS LT (· = (p j).v) (comb ψ S T (e i) g)) :
    ∀ (l : List ι), l.Nodup → ∀ f, (∀ i, Vac ψ S T LS LT (· = (p i).v) f) →
      OverAll ψ α β LS LT Φ l f (chainOp ψ S T e l f) := by
  intro l
  induction l with
  | nil => intro _ f _; rfl
  | cons i l ih =>
    intro hl f hf
    obtain ⟨hi, hl'⟩ := List.nodup_cons.1 hl
    exact ⟨chainOp ψ S T e l f, ih hl' f hf, hE i _ (chainOp_vac e hpres l f hf i hi)⟩


theorem pres_of_allComb (hAC : AllComb D) {I : List ι} {P : Pl D → Prop} (hP : Places p I P)
    (hψ : IsStdChar D ψ (-1)) (α : ∀ i, Frame (p i) S n') (β : ∀ i, Frame (p i) T n) {LS : Lat S} {LT : Lat T}
    (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT) (e : ι → WO S T →₀ ℂ) (he : ∀ i, CombAt (· = (p i).v) (e i)) :
    ∀ i j, i ≠ j → ∀ g, Vac ψ S T LS LT (· = (p j).v) g → Vac ψ S T LS LT (· = (p j).v) (comb ψ S T (e i) g) := by
  intro i j hij g hg
  have hPl : Places (fun _ : Unit => p j) [()] (· = (p j).v) :=
    ⟨List.nodup_singleton _, fun _ => List.mem_singleton.2 rfl, fun a b _ => Subsingleton.elim a b,
      fun x => ⟨fun h => ⟨(), h⟩, fun ⟨_, h⟩ => h⟩, fun _ => hP.unit j⟩
  have hc : CombAt (fun x => ¬ (x = (p j).v)) (e i) := by
    intro u hu a b
    have h1 := he i u hu a b
    exact idAt_mono' (P := (· = (p i).v)) (Q := fun x => ¬ (x = (p j).v))
      (fun v hv hvj => hij (hP.inj (show (p i).v = (p j).v from hv.symm.trans hvj))) h1
  exact ((hAC k Unit (fun _ => p j) [()] (· = (p j).v) hPl n n' ψ hψ S T (fun _ => α j) (fun _ => β j) LS LT hS hT
    (fun _ => 0)).2.2 (e i) hc g hg).1

end Lists

theorem chainOp_sliceS (ψ : AddChar (AF D.host.F) ℂ) {ι : Type} {S A L T : HSp D} (o : OrthDec S A L)
    (d : ι → WO A T →₀ ℂ) (y : WO L T) : ∀ (l : List ι) (h : WO S T → ℂ) (w : WO A T),
    chainOp ψ S T (fun i => extS o T (d i)) l h ((o.resS T).symm (w, y)) =
      chainOp ψ A T d l (fun w' => h ((o.resS T).symm (w', y))) w := by
  intro l
  induction l with
  | nil => intro h w; rfl
  | cons i l ih =>
    intro h w
    simp only [chainOp, List.foldr_cons] at ih ⊢
    rw [comb_extS_slice]
    exact congrArg (fun F => comb ψ A T (d i) F w) (funext fun w' => ih h w')

theorem chainOp_sliceT (ψ : AddChar (AF D.host.F) ℂ) {ι : Type} {S A L T : HSp D} (o : OrthDec S A L)
    (d : ι → WO T A →₀ ℂ) (y : WO T L) : ∀ (l : List ι) (h : WO T S → ℂ) (w : WO T A),
    chainOp ψ T S (fun i => extT o T (d i)) l h ((o.resT T).symm (w, y)) =
      chainOp ψ T A d l (fun w' => h ((o.resT T).symm (w', y))) w := by
  intro l
  induction l with
  | nil => intro h w; rfl
  | cons i l ih =>
    intro h w
    simp only [chainOp, List.foldr_cons] at ih ⊢
    rw [comb_extT_slice]
    exact congrArg (fun F => comb ψ T A (d i) F w) (funext fun w' => ih h w')

theorem vac_sliceS {ψ : AddChar (AF D.host.F) ℂ} {S A L T : HSp D} (o : OrthDec S A L) {P : Pl D → Prop}
    {LA : Lat A} {LS : Lat S} {LT : Lat T} (hA : IsSelfDualC A LA) (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT)
    (hO : ∀ v, P v → ∃ LL, OrthAt o LS LA LL v) {f : WO S T → ℂ} (hf : Vac ψ S T LS LT P f) (y : WO L T) :
    Vac ψ A T LA LT P (fun w => f ((o.resS T).symm (w, y))) := by
  have latS := GlobalTheory.ContrComb.extL_mem_latO D S A L T o P LA LT LS hA hT hS hO
  refine ⟨GlobalTheory.T.isThetaFunO_source_slice D ψ S A L T o f y hf.1, fun u hu => ?_, fun e' he' u hu hh => ?_⟩
  · funext w
    rw [← heisO_resS_symm ψ o (2 • u) f w y]
    have h2 : (o.resS T).symm (2 • u, 0) = 2 • (o.resS T).symm (u, 0) := by
      rw [← map_nsmul]; simp
    rw [h2, hf.2.1 _ (latS u hu)]
  · funext w
    rw [← heisO_resS_symm ψ o u f w y, hf.2.2 e' he' _ (latS u hu) (half_resS_symm o hh)]

theorem vac_sliceT {ψ : AddChar (AF D.host.F) ℂ} {S A L T : HSp D} (o : OrthDec S A L) {P : Pl D → Prop}
    {LA : Lat A} {LS : Lat S} {LT : Lat T} (hA : IsSelfDualC A LA) (hS : IsSelfDualC S LS) (hT : IsSelfDualC T LT)
    (hO : ∀ v, P v → ∃ LL, OrthAt o LS LA LL v) {f : WO T S → ℂ} (hf : Vac ψ T S LT LS P f) (y : WO T L) :
    Vac ψ T A LT LA P (fun w => f ((o.resT T).symm (w, y))) := by
  have latT := GlobalTheory.ContrComb.LatT.latO_extR D S A L T o P LA LT LS hA hT hS hO
  refine ⟨GlobalTheory.T.isThetaFunO_target_slice_orthogonal_sum D ψ S A L T o f y hf.1, fun u hu => ?_, fun e' he' u hu hh => ?_⟩
  · funext w
    rw [← heisO_resT_symm ψ o (2 • u) f w y]
    have h2 : (o.resT T).symm (2 • u, 0) = 2 • (o.resT T).symm (u, 0) := by
      rw [← map_nsmul]; simp
    rw [h2, hf.2.1 _ (latT u hu)]
  · funext w
    rw [← heisO_resT_symm ψ o u f w y, hf.2.2 e' he' _ (latT u hu) (half_resT_symm o hh)]

end GlobalTheory.FinPl.ExtAllPf

namespace GlobalTheory.FinPl.ExtAllPf



theorem ext_all : ∀ D : D7, GlobalTheory.FinPl.ExtAll D := by
  intro D k _ _ _ _ ι p I P hP n n' _ _ _ _ ψ hψ S A L T o ζ hζ α α₀ β hsum LA LS LT ΛA ΛT hA hS hT hlat
  have hAC := _root_.GlobalTheory.FinPl.allComb D
  have hO : ∀ x, P x → ∃ LL, OrthAt o LS LA LL x := by
    intro x hx
    obtain ⟨i, rfl⟩ := (hP.mem x).1 hx
    exact GlobalTheory.T.lattice_orthogonal_sum_line_at_split_place D k (p i) n' S A L o ζ hζ (α i) (α₀ i) (hsum i) (hP.unit i) LA LS (ΛA i) hA hS (hlat i).1
      (hlat i).2.1
  have hv : ∀ {U V : HSp D} {LU : Lat U} {LV : Lat V} {f : WO U V → ℂ}, Vac ψ U V LU LV P f →
      ∀ i, Vac ψ U V LU LV (· = (p i).v) f := fun hf i => vac_at' ((hP.mem _).2 ⟨i, rfl⟩) hf
  refine ⟨hO, fun Ψ c hc => ?_, fun Ψ c hc => ?_⟩
  · have hSB : ∀ i, Ψ i ∈ SB (Matrix n n' k) := fun i => overAll_sb I 0 _ (hc.2 0 (vac_zero' P)) i (hP.all i)
    choose d hd using fun i => (_root_.GlobalTheory.FinPl.Rebase.rebase D k (p i) n n' ψ hψ (hP.unit i) A T (α i) (β i) LA LA LT LT hA hT hA
      hT).2 (Ψ i) (hSB i)
    have hext : ∀ i f₀, Vac ψ S T LS LT (· = (p i).v) f₀ → Over ψ (α₀ i) (β i) LS LT f₀ (tensCol (Ψ i) (vecInd (ΛT i)))
        (comb ψ S T (extS o T (d i)) f₀) := fun i => (_root_.GlobalTheory.FinPl.ExtZero.ext_zero D k (p i) n n' ψ hψ (hP.unit i) S A L T o ζ hζ (α i)
      (α₀ i) (β i) (hsum i) LA LS LT (ΛA i) (ΛT i) hA hS hT (hlat i).1 (hlat i).2.1 (hlat i).2.2).1 (Ψ i) (d i) (hd i).1
      (hd i).2
    have presA := pres_of_allComb hAC hP hψ α β hA hT d (fun i => (hd i).1)
    have presS := pres_of_allComb hAC hP hψ α₀ β hS hT (fun i => extS o T (d i)) (fun i => combAt_extS o T (hd i).1)
    refine ⟨combAt_extS o T hc.1, fun f hf => ?_⟩
    have key : comb ψ S T (extS o T c) f = chainOp ψ S T (fun i => extS o T (d i)) I f := by
      funext t
      obtain ⟨⟨w, y⟩, rfl⟩ : ∃ q, (o.resS T).symm q = t := ⟨_, (o.resS T).symm_apply_apply t⟩
      rw [comb_extS_slice, chainOp_sliceS]
      have hfy := vac_sliceS o hA hS hT hO hf y
      have := (hAC k ι p I P hP n n' ψ hψ A T α β LA LT hA hT Ψ).2.1 _ _ _ (hc.2 _ hfy)
        (overAll_chain α β LA LT Ψ d (fun i => (hd i).2) presA I hP.nodup _ (hv hfy))
      exact congrFun this w
    rw [key]
    exact overAll_chain α₀ β LS LT _ _ hext presS I hP.nodup f (hv hf)
  · have hSB : ∀ i, Ψ i ∈ SB (Matrix n' n k) := fun i => overAll_sb I 0 _ (hc.2 0 (vac_zero' P)) i (hP.all i)
    choose d hd using fun i => (_root_.GlobalTheory.FinPl.Rebase.rebase D k (p i) n' n ψ hψ (hP.unit i) T A (β i) (α i) LT LT LA LA hT hA hT
      hA).2 (Ψ i) (hSB i)
    have hext : ∀ i f₀, Vac ψ T S LT LS (· = (p i).v) f₀ → Over ψ (β i) (α₀ i) LT LS f₀ (tensRow (Ψ i) (dualInd (ΛT i)))
        (comb ψ T S (extT o T (d i)) f₀) := fun i => (_root_.GlobalTheory.FinPl.ExtZero.ext_zero D k (p i) n n' ψ hψ (hP.unit i) S A L T o ζ hζ (α i)
      (α₀ i) (β i) (hsum i) LA LS LT (ΛA i) (ΛT i) hA hS hT (hlat i).1 (hlat i).2.1 (hlat i).2.2).2 (Ψ i) (d i) (hd i).1
      (hd i).2
    have presA := pres_of_allComb hAC hP hψ β α hT hA d (fun i => (hd i).1)
    have presS := pres_of_allComb hAC hP hψ β α₀ hT hS (fun i => extT o T (d i)) (fun i => combAt_extT o T (hd i).1)
    refine ⟨combAt_extT o T hc.1, fun f hf => ?_⟩
    have key : comb ψ T S (extT o T c) f = chainOp ψ T S (fun i => extT o T (d i)) I f := by
      funext t
      obtain ⟨⟨w, y⟩, rfl⟩ : ∃ q, (o.resT T).symm q = t := ⟨_, (o.resT T).symm_apply_apply t⟩
      rw [comb_extT_slice, chainOp_sliceT]
      have hfy := vac_sliceT o hA hS hT hO hf y
      have := (hAC k ι p I P hP n' n ψ hψ T A β α LT LA hT hA Ψ).2.1 _ _ _ (hc.2 _ hfy)
        (overAll_chain β α LT LA Ψ d (fun i => (hd i).2) presA I hP.nodup _ (hv hfy))
      exact congrFun this w
    rw [key]
    exact overAll_chain β α₀ LT LS _ _ hext presS I hP.nodup f (hv hf)

end GlobalTheory.FinPl.ExtAllPf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExtensionByZeroAtSplitPlacesProof =====
