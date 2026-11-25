module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CmQuadraticFormEqAlternatingForm
public import Formalism.LocalToGlobal.GaloisLevelStructure.DefsAut
public import Mathlib.Data.Matrix.PEquiv
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AlgWeightHighestWeightExistsUniqueAntitone
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsPolyRep
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsPolynomialRepGLComplexAlgebraicWeightEvalPoint
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
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotBaseCondFalse
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PositionOfIntro
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.OverRowsAndMono
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FunKilled

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
open ReciprocityTheory.Aut Formalism.AUTREP
attribute [local instance] GlobalTheory.TypeRec.factG

noncomputable section

namespace GlobalTheory.LiftInfRef

open Matrix Formalism.L2.NG GlobalTheory.AlgWtHW NumberField

section Conj
variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ}

def w0 (n : ℕ) : GL (Fin n) ℂ :=
  ⟨(Fin.revPerm.toPEquiv).toMatrix, (Fin.revPerm.toPEquiv).toMatrix, by
    rw [PEquiv.toMatrix_toPEquiv_mul]; ext i j
    simp [PEquiv.toMatrix_apply, Matrix.one_apply], by
    rw [PEquiv.toMatrix_toPEquiv_mul]; ext i j
    simp [PEquiv.toMatrix_apply, Matrix.one_apply]⟩

theorem longestWeylElementGL_mul_self (n : ℕ) : w0 n * w0 n = 1 := by
  ext i j
  simp only [w0, Units.val_mul, Units.val_one]
  rw [PEquiv.toMatrix_toPEquiv_mul]
  simp [PEquiv.toMatrix_apply, Matrix.one_apply]

theorem longestWeylElementGL_conj_apply_rev (X : GL (Fin n) ℂ) (i j : Fin n) :
    (w0 n * X * w0 n).val i j = X.val (Fin.rev i) (Fin.rev j) := by
  simp only [w0, Units.val_mul]
  rw [PEquiv.toMatrix_toPEquiv_mul, PEquiv.mul_toMatrix_toPEquiv]
  simp

def tinv (B : GL (Fin n) ℂ) : GL (Fin n) ℂ :=
  ⟨(B⁻¹ : GL (Fin n) ℂ).valᵀ, B.valᵀ, by rw [← transpose_mul, Units.mul_inv, transpose_one],
    by rw [← transpose_mul, Units.inv_mul, transpose_one]⟩

theorem evPt_eq_tinv (τ : L →+* ℂ) (B : GL (Fin n) ℂ) :
    evPt τ B = evPt (ComplexEmbedding.conjugate τ) (tinv B) := by
  have hne := _root_.GlobalTheory.AlgWtHW.conjugate_ne_self τ
  funext p
  rcases p with ⟨σ, i, j⟩
  by_cases h1 : σ = τ
  · subst h1
    simp [NG.evPt, tinv, Ne.symm hne]
  · by_cases h2 : σ = ComplexEmbedding.conjugate τ
    · subst h2
      simp [NG.evPt, tinv, hne]
    · have h3 : σ ≠ ComplexEmbedding.conjugate (ComplexEmbedding.conjugate τ) := by rwa [GlobalTheory.CMLattice.conjugate_conjugate]
      simp [NG.evPt, h1, h2]

theorem inv_upper {B : GL (Fin n) ℂ} (hB : B.val.BlockTriangular id) : (B⁻¹).val.BlockTriangular id := by
  haveI : Invertible B.val := B.invertible
  rw [Matrix.coe_units_inv]
  exact Matrix.blockTriangular_inv_of_blockTriangular hB

theorem inv_diag {B : GL (Fin n) ℂ} (hB : B.val.BlockTriangular id) (k : Fin n) :
    (B⁻¹).val k k = (B.val k k)⁻¹ := by
  have hI := inv_upper hB
  have e : ((B⁻¹).val * B.val) k k = 1 := by rw [← Units.val_mul, inv_mul_cancel, Units.val_one, one_apply_eq]
  rw [Matrix.mul_apply, Finset.sum_eq_single k] at e
  · exact eq_inv_of_mul_eq_one_left e
  · intro l _ hl
    rcases lt_or_gt_of_ne hl with h | h
    · rw [hI h, zero_mul]
    · rw [hB h, mul_zero]
  · simp

theorem hwAt_of_conj {a : AlgWt L n} {τ : L →+* ℂ} {lam' : Fin n → ℤ}
    (h : a.HWAt (ComplexEmbedding.conjugate τ) lam') : a.HWAt τ (fun i => -lam' (Fin.rev i)) := by
  obtain ⟨ι, hι1, hι2, b, P, hP, v, hv0, hv⟩ := h
  have hR := _root_.GlobalTheory.AlgWtHW.isPolyRep_evPt L n a ι b P hP (ComplexEmbedding.conjugate τ)
  refine ⟨ι, hι1, hι2, b, P, hP, evM P (evPt (ComplexEmbedding.conjugate τ) (w0 n)) *ᵥ v, ?_, fun B hB => ?_⟩
  · intro h0
    apply hv0
    have := congrArg (fun x => evM P (evPt (ComplexEmbedding.conjugate τ) (w0 n)) *ᵥ x) h0
    simp only [mulVec_mulVec, mulVec_zero] at this
    rwa [← hR.mul, longestWeylElementGL_mul_self, hR.one, one_mulVec] at this
  · set C : GL (Fin n) ℂ := w0 n * tinv B * w0 n with hCdef
    have hBC : tinv B = w0 n * C * w0 n := by
      rw [hCdef, ← mul_assoc, ← mul_assoc, longestWeylElementGL_mul_self, one_mul, mul_assoc, longestWeylElementGL_mul_self, mul_one]
    have hCa : ∀ i j, C.val i j = (B⁻¹).val (Fin.rev j) (Fin.rev i) := by
      intro i j; rw [hCdef, longestWeylElementGL_conj_apply_rev]; rfl
    have hC : C.val.BlockTriangular id := by
      intro i j hij
      rw [hCa]
      exact inv_upper hB (show Fin.rev i < Fin.rev j from Fin.rev_lt_rev.2 hij)
    have hCd : ∀ i, C.val i i = (B.val (Fin.rev i) (Fin.rev i))⁻¹ := fun i => by rw [hCa, inv_diag hB]
    have e1 : (Matrix.of fun i j => MvPolynomial.eval (evPt τ B) (P i j)) =
        evM P (evPt (ComplexEmbedding.conjugate τ) (tinv B)) := by
      rw [evPt_eq_tinv τ B]; rfl
    have hww : evM P (NG.evPt (ComplexEmbedding.conjugate τ) (w0 n)) *ᵥ
        (evM P (NG.evPt (ComplexEmbedding.conjugate τ) (w0 n)) *ᵥ v) = v := by
      rw [mulVec_mulVec, ← hR.mul, longestWeylElementGL_mul_self, hR.one, one_mulVec]
    have hvC : evM P (NG.evPt (ComplexEmbedding.conjugate τ) C) *ᵥ v = (∏ i, (C.val i i) ^ (lam' i)) • v := hv C hC
    rw [e1, hBC, hR.mul, hR.mul, ← mulVec_mulVec, ← mulVec_mulVec, hww, hvC, mulVec_smul]
    congr 1
    rw [Finset.prod_congr rfl fun i _ => by rw [hCd i, _root_.inv_zpow']]
    exact Fintype.prod_equiv Fin.revPerm _ _ (fun i => by simp [Fin.rev_rev])

end Conj

end GlobalTheory.LiftInfRef

namespace GlobalTheory.LiftInfRef

open Matrix Formalism.L2.NG GlobalTheory.AlgWtHW NumberField

section Conj2
variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ}

theorem infOf_conj {a : AlgWt L n} {τ : L →+* ℂ} {lam lam' : Fin n → ℤ} (h : a.HWAt τ lam)
    (h' : a.HWAt (ComplexEmbedding.conjugate τ) lam') : infOf lam' = (infOf lam).map Neg.neg := by
  have e := (_root_.GlobalTheory.AlgWtHW.hw_exists_unique_antitone L n a τ).1.unique h (hwAt_of_conj h')
  have hl : lam' = fun i => -lam (Fin.rev i) := by funext i; rw [e]; simp
  subst hl
  unfold infOf
  rw [Multiset.map_map]
  conv_rhs => rw [← Multiset.map_univ_val_equiv Fin.revPerm, Multiset.map_map]
  refine Multiset.map_congr rfl fun i _ => ?_
  simp only [Function.comp_apply, Fin.revPerm_apply, Fin.val_rev]
  have hi := i.isLt
  rw [Nat.cast_sub (by omega)]
  push_cast
  ring

end Conj2

theorem sum_singletons {α : Type} (l : List α) (f : α → ℂ) : (l.map fun k => ({f k} : Multiset ℂ)).sum = ((l.map f : List ℂ) : Multiset ℂ) := by
  induction l with
  | nil => simp
  | cons a l ih => simp [ih, Multiset.singleton_add]

theorem bindCast (t : ℕ) : ((List.range t >>= fun a => pure (a : ℂ)) : List ℂ) = (List.range t).map (fun a : ℕ => (a : ℂ)) := by
  simp [List.map_eq_flatMap]

theorem range_rev (t : ℕ) (f : ℕ → ℂ) : (Multiset.range t).map (fun c => f (t - 1 - c)) = (Multiset.range t).map f := by
  have h := congrArg (fun l : List ℕ => ((l.map f : List ℂ) : Multiset ℂ)) (List.reverse_range' (s := 0) (n := t))
  simp only [List.map_reverse, Multiset.coe_reverse, List.map_map] at h
  rw [← List.range_eq_range'] at h
  simpa [Multiset.range, Function.comp_def] using h.symm

end GlobalTheory.LiftInfRef

namespace GlobalTheory.LiftInfRef

open GlobalTheory.LiftRef

theorem lg_of_forall {K : Ctx} {p : ∀ B : Base, Fr B.toPre → TwDat B → Prop} (h : ∀ B f T, p B f T) : large₂ K p :=
  ⟨fun _ _ _ => ∅, fun _ _ _ _ => ∅, fun _ _ _ _ _ => ∅, fun _ _ _ _ _ => ∅, by simp, by simp, fun B f T _ _ _ _ => h B f T⟩

theorem evLgG_of_forall {p : Ctx → ∀ B : Base, Fr B.toPre → TwDat B → Prop} (h : ∀ K B f T, p K B f T) : EvLgG p :=
  evLgG_of_evLg ⟨1, one_pos, fun _ _ _ _ _ _ => ⟨⟨0, fun _ => 0, fun _ => 0, fun _ => 0⟩, fun _ _ _ _ => ⟨0, fun _ _ => ⟨0,
    fun _ _ => ⟨0, fun K _ _ _ _ _ => lg_of_forall (h K)⟩⟩⟩⟩⟩

end GlobalTheory.LiftInfRef

namespace GlobalTheory.LiftInfRef

end GlobalTheory.LiftInfRef

end
