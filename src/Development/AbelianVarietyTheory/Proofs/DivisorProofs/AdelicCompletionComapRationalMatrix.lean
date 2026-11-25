module

public import Development.AbelianVarietyTheory.Definitions.AdelicHermitianForms.IsHermForm
public import Formalism.LocalRingCardinality.DataHost
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.Divisors.CmHostImaginaryGeneratorNeZero
import Development.AbelianVarietyTheory.Definitions.Divisors.KernelNormConstantSpec
import Development.AbelianVarietyTheory.Definitions.Foundations.StrictInterlaceIffDescEnum
import Formalism.LocalRingCardinality.DataTheta
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsRationalUnitarySplitDenominator

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField Matrix MvPolynomial
open scoped TensorProduct nonZeroDivisors
open GlobalTheory.SignedHC GlobalTheory.ChiGrid Formalism.L2.DIV Formalism.L2.Ker GlobalTheory.FunObj

noncomputable section

namespace GlobalTheory.HatPullback

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E] {n : ℕ}

theorem fm_mulVec_mem_hat (M : Matrix (Fin n) (Fin n) E) {L L' : Set (Fin n → E)}
    (h : ∀ x ∈ L, M *ᵥ x ∈ L') {w : Fin n → GlobalTheory.AdLat.RA F E} (hw : w ∈ GlobalTheory.AdLat.hat F L) :
    GlobalTheory.UnRep.fm F M *ᵥ w ∈ GlobalTheory.AdLat.hat F L' := by
  induction hw using AddSubgroup.closure_induction with
  | mem z hz =>
    obtain ⟨a, ha, x, hx, rfl⟩ := hz
    rw [_root_.GlobalTheory.UnRep.LatForm.fm_mulVec_pure]
    exact AddSubgroup.subset_closure ⟨a, ha, M *ᵥ x, h x hx, rfl⟩
  | zero => rw [Matrix.mulVec_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [Matrix.mulVec_add]; exact add_mem hx hy
  | neg x _ hx => rw [Matrix.mulVec_neg]; exact neg_mem hx

theorem main : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (n : ℕ) (A : GL (Fin n) E)
    (Λ : Submodule (𝓞 E) (Fin n → E)) (w : Fin n → GlobalTheory.AdLat.RA F E),
    GlobalTheory.UnRep.fm F A.1 *ᵥ w ∈ GlobalTheory.AdLat.hat F (Λ : Set (Fin n → E)) ↔
      w ∈ GlobalTheory.AdLat.hat F ((Λ.comap ((Matrix.mulVecLin A.1).restrictScalars (𝓞 E)) : Submodule (𝓞 E) (Fin n → E)) : Set (Fin n → E)) := by
  intro F E _ _ _ _ _ n A Λ w
  have hmem : ∀ x : Fin n → E, x ∈ ((Λ.comap ((Matrix.mulVecLin A.1).restrictScalars (𝓞 E)) :
      Submodule (𝓞 E) (Fin n → E)) : Set (Fin n → E)) ↔ A.1 *ᵥ x ∈ Λ := fun x => by
    simp
  constructor
  · intro hw
    have h2 := fm_mulVec_mem_hat (F := F) (A⁻¹).1
      (L := (Λ : Set (Fin n → E)))
      (L' := ((Λ.comap ((Matrix.mulVecLin A.1).restrictScalars (𝓞 E)) :
        Submodule (𝓞 E) (Fin n → E)) : Set (Fin n → E)))
      (fun y hy => by
        rw [hmem, Matrix.mulVec_mulVec, A.mul_inv, Matrix.one_mulVec]
        exact hy) hw
    rwa [Matrix.mulVec_mulVec, ← _root_.GlobalTheory.UnRep.LatForm.fm_mul, A.inv_mul, _root_.GlobalTheory.UnRep.LatForm.fm_one, Matrix.one_mulVec] at h2
  · intro hw
    exact fm_mulVec_mem_hat (F := F) A.1 (fun x hx => (hmem x).1 hx) hw

end GlobalTheory.HatPullback
