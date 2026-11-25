module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SquareTriple
public import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsGLSubmatrix
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV

noncomputable section

namespace GlobalTheory.FunObj

theorem hasSignature_of_hasSig_conj {n r s : ℕ} {M : Matrix (Fin n) (Fin n) ℂ}
    (h : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.HasSig (M.map (starRingEnd ℂ)) r s) : Formalism.UG.HasSignature M r s := by
  obtain ⟨hn, A, hA⟩ := h
  let e : Fin n ≃ Fin r ⊕ Fin s := (finCongr hn.symm).trans finSumFinEquiv.symm
  let P : Matrix (Fin r ⊕ Fin s) (Fin r ⊕ Fin s) ℂ := A.submatrix e.symm id
  have h2 := congrArg (fun X => X.map (starRingEnd ℂ)) hA
  simp only [Matrix.map_mul, Matrix.transpose_map, Matrix.map_map, Matrix.fromBlocks_map] at h2
  have hc : (starRingEnd ℂ) ∘ (starRingEnd ℂ) = id := funext fun z => Complex.conj_conj z
  have hc' : (starRingEnd ℂ) ∘ (star : ℂ → ℂ) = id := funext fun z => Complex.conj_conj z
  simp only [hc, hc', Matrix.map_id] at h2
  have key : (A.map (starRingEnd ℂ))ᵀ * M * A = Formalism.UG.Jpq r s := by
    rw [Formalism.UG.Jpq, h2]
    congr 1
    · ext a b; simp [Matrix.one_apply]
    · ext a b; simp
    · ext a b; simp
    · ext a b; simp [Matrix.one_apply]
  have key2 : Formalism.UG.cT (starRingEnd ℂ) P * Matrix.reindex e e M * P = Formalism.UG.Jpq r s := by
    rw [← key, Formalism.UG.cT, Matrix.reindex_apply]
    have hm : (A.submatrix e.symm id).map (starRingEnd ℂ) = (A.map (starRingEnd ℂ)).submatrix e.symm id := rfl
    simp only [P, hm, Matrix.transpose_submatrix]
    rw [Matrix.submatrix_mul_equiv, Matrix.submatrix_mul_equiv, Matrix.submatrix_id_id]
  have hinv : (Formalism.UG.Jpq r s * (Formalism.UG.cT (starRingEnd ℂ) P * Matrix.reindex e e M)) * P = 1 := by
    rw [Matrix.mul_assoc, key2, Formalism.UG.Jpq, Matrix.fromBlocks_multiply]
    simp
  exact ⟨e, ⟨P, _, mul_eq_one_comm.mp hinv, hinv⟩, key2⟩

theorem squareTriple_sig_rank : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} (W : G.Weil) (t : T) (i j : Fin D.R.m)
    (hT : SquareTriple W t i j) (M : Vol G) (hM : M.Is t),
    ∃ p : ℕ, (∃ τ, Formalism.UG.HasSignature (gramAt D (G.V (.grid (i + 1) (j + 1))) τ) ((G.V (.grid (i + 1) (j + 1))).rank - p) p) ∧
      (GlobalTheory.Doubling.hsum (G.V (.grid i (j + 1))) (G.V (.grid (i + 1) j))).rank < 2 * ((G.V (.grid (i + 1) (j + 1))).rank - p) := by
  intro D T L sc G W t i j hT M hM
  obtain ⟨e, Bs, Γ, X, om, om', h, hTr, -⟩ := hT.of_forall hM
  refine ⟨Γ.p, ?_, ?_⟩
  · obtain ⟨w⟩ : Nonempty (InfinitePlace D.host.F) := inferInstance
    obtain ⟨τ, hτ, -⟩ := h.cart w
    refine ⟨τ, hasSignature_of_hasSig_conj ?_⟩
    have hs := hTr.geo.hV.sig w
    rw [h.JW, one_smul] at hs
    have hmap : (G.V (.grid (↑i + 1) (↑j + 1))).gram.map (Bs.emb w).1 = (gramAt D _ τ).map (starRingEnd ℂ) := by
      ext a b; simp [gramAt, hτ]
    rw [hmap] at hs
    exact hs
  · have hc := Fintype.card_congr e
    simp only [Fintype.card_sum, Fintype.card_fin] at hc
    have hb := hTr.geo.eBig
    have hl := hTr.geo.lt
    dsimp only [GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.spW, GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.spW₁, GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.spV, GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.spV₁] at hc hb hl
    show (G.V (.grid (↑i) (↑j + 1))).rank + (G.V (.grid (↑i + 1) ↑j)).rank < _
    omega

end GlobalTheory.FunObj

end
