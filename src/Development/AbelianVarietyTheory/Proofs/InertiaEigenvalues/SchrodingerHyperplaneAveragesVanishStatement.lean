module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RankWeightComponentEq
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LevelHyperspecialTrivialCharacterSplitsOffPlaces
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PostOnGaLMemGoodPart
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsInvariantForm
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.InfPartOneSubEInfSmul
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsSelfDualCoordLatticeOfSelfDualFrameStatement
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LevelCharactersRamificationLevelPlaces
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SplitIdempotentPrimeProjectionCorrespondence
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SplitPlaceAdjointMatrixIsCoordinateEquivariant
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ParahoricLevelLiftsExistStatement
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftBlockDiagReductionToFlagGroup, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MirabolicHyperplaneAverageSupportResidueGL, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchrodingerHyperplaneAveragesVanish, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchrodingerHyperplaneAveragesVanishStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftBlockDiagReductionToFlagGroup =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftBlockDiagReductionToFlagGroup", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RankWeightComponentEq\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LevelHyperspecialTrivialCharacterSplitsOffPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting (FinPl idem SplitProj IsIdemOf IsProjAt adjCo grpCo frCo)
open GlobalTheory.DownLift.GenSplit

noncomputable section
namespace GlobalTheory.LiftDiag

section Mat
variable {k : Type} [CommRing k] {n r t : ℕ}

theorem rowIx_inl (h : r + t = n) (j : Fin r) : ((rowIx h) (Sum.inl j)).val = j.val := by
  simp [rowIx]

theorem symm_lower (h : r + t = n) {a : Fin n} (ha : r ≤ a.val) : ∃ j, (rowIx h).symm a = Sum.inr j := by
  rcases hx : (rowIx h).symm a with j | j
  · exfalso
    have : a = rowIx h (Sum.inl j) := by rw [← hx, Equiv.apply_symm_apply]
    have h2 := rowIx_inl h j
    rw [← this] at h2
    omega
  · exact ⟨j, rfl⟩

theorem symm_castLE (h : r + t = n) (hr : r ≤ n) (a : Fin r) : (rowIx h).symm (Fin.castLE hr a) = Sum.inl a := by
  rw [Equiv.symm_apply_eq]
  ext
  rw [rowIx_inl]
  rfl

theorem lower_row (h : r + t = n) (A : Matrix (Fin r) (Fin r) k) {a : Fin n} (ha : r ≤ a.val) (b : Fin n) :
    ((Matrix.fromBlocks A 0 0 (1 : Matrix (Fin t) (Fin t) k)).submatrix (rowIx h).symm (rowIx h).symm) a b =
      (1 : Matrix (Fin n) (Fin n) k) a b := by
  obtain ⟨j, hj⟩ := symm_lower h ha
  rw [Matrix.submatrix_apply, hj]
  have e1 : (1 : Matrix (Fin n) (Fin n) k) a b =
      (1 : Matrix (Fin r ⊕ Fin t) (Fin r ⊕ Fin t) k) ((rowIx h).symm a) ((rowIx h).symm b) := by
    simp only [Matrix.one_apply, (rowIx h).symm.injective.eq_iff]
  rw [e1, hj]
  rcases (rowIx h).symm b with j' | j'
  · simp [Matrix.fromBlocks_apply₂₁]
  · simp [Matrix.fromBlocks_apply₂₂, Matrix.one_apply]

theorem mem_blockTri_diag (h : r + t = n) (A : Matrix (Fin r) (Fin r) k) {b : Fin n → ℕ}
    (hb : ∀ a : Fin n, a.val < r → b a = 0) (g : GL (Fin n) k)
    (hg : (g : Matrix (Fin n) (Fin n) k) =
      (Matrix.fromBlocks A 0 0 (1 : Matrix (Fin t) (Fin t) k)).submatrix (rowIx h).symm (rowIx h).symm) :
    g ∈ blockTri b := by
  intro i j hij
  have hi : r ≤ i.val := by
    by_contra hc
    rw [hb i (by omega)] at hij
    omega
  show (g : Matrix (Fin n) (Fin n) k) i j = 0
  rw [hg, lower_row h A hi, Matrix.one_apply_ne]
  rintro rfl
  exact lt_irrefl _ hij

theorem blockDiagonalPart_blockDiagOne_reindexed_eq_one (h : r + t = n) (A : Matrix (Fin r) (Fin r) k) {b : Fin n → ℕ}
    (hb : ∀ a : Fin n, a.val < r → b a = 0) (g : GL (Fin n) k)
    (hg : (g : Matrix (Fin n) (Fin n) k) =
      (Matrix.fromBlocks A 0 0 (1 : Matrix (Fin t) (Fin t) k)).submatrix (rowIx h).symm (rowIx h).symm)
    {c : ℕ} (hc : c ≠ 0) : dBlk b c g = 1 := by
  apply Units.ext
  rw [diag_block_det_val c (mem_blockTri_diag h A hb g hg), Units.val_one]
  have : (g : Matrix (Fin n) (Fin n) k).submatrix (Subtype.val : {a : Fin n // b a = c} → Fin n) (Subtype.val : {a : Fin n // b a = c} → Fin n) = 1 := by
    ext x y
    have hx : r ≤ x.1.val := by
      by_contra hh
      exact hc (x.2.symm.trans (hb _ (by omega)))
    rw [Matrix.submatrix_apply, hg, lower_row h A hx]
    simp only [Matrix.one_apply, Subtype.ext_iff]
  rw [this, Matrix.det_one]

theorem topLeftBlock_blockDiagOne_reindexed_eq (h : r + t = n) (hr : r ≤ n) (A : Matrix (Fin r) (Fin r) k) (g : GL (Fin n) k)
    (hg : (g : Matrix (Fin n) (Fin n) k) =
      (Matrix.fromBlocks A 0 0 (1 : Matrix (Fin t) (Fin t) k)).submatrix (rowIx h).symm (rowIx h).symm) :
    ((upperLeftBlock hr g : GL (Fin r) k) : Matrix (Fin r) (Fin r) k) = A := by
  have hb : ∀ a : Fin n, a.val < r → blk2 r a = 0 := fun a ha => by simp [blk2, ha]
  rw [upper_block_val_submatrix hr (mem_blockTri_diag h A hb g hg), hg]
  ext a b
  simp only [Matrix.submatrix_apply, symm_castLE h hr, Matrix.fromBlocks_apply₁₁]

theorem blockIndexSecond_eq_zero_of_lt (r : ℕ) (a : Fin n) (ha : a.val < r) : blk2 r a = 0 := by simp [blk2, ha]

theorem blkOf_low (r t : ℕ) (a : Fin n) (ha : a.val < r) : blkOf r t a = 0 := by simp [blkOf, ha]

end Mat

end GlobalTheory.LiftDiag

namespace GlobalTheory.LiftDiag

theorem lift_diag : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks), ∀ (i : Fin D.R.m) (t : T) (PP : Pl D.host.E) (hPP : PP ∈ R.Pg) (g : G), (∀ PP' : R.Pg, PP' ≠ ⟨PP, hPP⟩ → R.eG g PP' = 1) → ∀ κ : GA D (Vc D i), κ ∈ GfC (Vc D i) → finE (Vc D i) κ ∈ Formalism.L2.DIV.St (R.βV i) → ((redFn (R.βV i) PP (finE (Vc D i) κ) : GL (Fin (Vc D i).rank) (kP PP)) : Matrix (Fin (Vc D i).rank) (Fin (Vc D i).rank) (kP PP)) = (Matrix.fromBlocks ((R.eG g ⟨PP, hPP⟩ : GL (Fin D.R.r) (kP PP)) : Matrix (Fin D.R.r) (Fin D.R.r) (kP PP)) 0 0 (1 : Matrix (Fin D.R.t) (Fin D.R.t) (kP PP))).submatrix (rowIx (rank_V i)).symm (rowIx (rank_V i)).symm → (∀ PP', PP' ∈ R.Pg ∨ PP' ∈ R.Q t → PP' ≠ PP → redFn (R.βV i) PP' (finE (Vc D i) κ) = 1) → IsLevelLift (Vc D i) (R.βV i) (R.datVt i t) (R.eG g) κ ∧ levChi (Vc D i) (R.βV i) (flagL (R.datVt i t)) κ = 1 := by
  intro D G _ _ Pl0 T A Ks _ _ _ R i t PP hPP g hg κ hκ hSt hN hoth
  have memb : ∀ b : Fin (Vc D i).rank → ℕ, (∀ a : Fin (Vc D i).rank, a.val < D.R.r → b a = 0) →
      ∀ PP', PP' ∈ R.Pg ∨ PP' ∈ R.Q t → redFn (R.βV i) PP' (finE (Vc D i) κ) ∈ blockTri b := by
    intro b hb PP' hP'
    by_cases he : PP' = PP
    · subst he; exact mem_blockTri_diag (rank_V i) _ hb _ hN
    · rw [hoth PP' hP' he]; exact Subgroup.one_mem _
  have dB : ∀ b : Fin (Vc D i).rank → ℕ, (∀ a : Fin (Vc D i).rank, a.val < D.R.r → b a = 0) → ∀ c : ℕ, c ≠ 0 →
      ∀ PP', PP' ∈ R.Pg ∨ PP' ∈ R.Q t → dBlk b c (redFn (R.βV i) PP' (finE (Vc D i) κ)) = 1 := by
    intro b hb c hc PP' hP'
    by_cases he : PP' = PP
    · subst he; exact blockDiagonalPart_blockDiagOne_reindexed_eq_one (rank_V i) _ hb _ hN hc
    · rw [hoth PP' hP' he]; exact blockDiagonalExtendByOnePrimeField_one _ _
  refine ⟨⟨hκ, ?_, ?_⟩, ?_⟩
  · exact mem_parLev.2 ⟨GlobalTheory.LevSplit.finE_mem_UA _ κ, hSt,
      fun PP' hP' => memb _ (blkOf_low _ _) PP' (Or.inl hP'), fun PP' hP' => memb _ (blockIndexSecond_eq_zero_of_lt _) PP' (Or.inr hP')⟩
  · funext PP'
    obtain ⟨PP', hP'⟩ := PP'
    show upperLeftBlock _ (redFn (R.βV i) PP' (finE (Vc D i) κ)) = R.eG g ⟨PP', hP'⟩
    by_cases he : PP' = PP
    · subst he; apply Units.ext; exact topLeftBlock_blockDiagOne_reindexed_eq (rank_V i) _ _ _ hN
    · rw [hoth PP' (Or.inl hP') he]
      have h1 : upperLeftBlock (r_le_V i) (1 : GL (Fin (Vc D i).rank) (kP PP')) = 1 := blockDiagonalExtendByOnePrimeField_one _ _
      have h2 : R.eG g ⟨PP', hP'⟩ = 1 := hg ⟨PP', hP'⟩ (fun h => he (congrArg Subtype.val h))
      rw [h2]
      exact h1
  · have key : levFn (R.βV i) (flagL (R.datVt i t)) (finE (Vc D i) κ) = 1 := by
      unfold levFn
      rw [Finset.prod_eq_one, Finset.prod_eq_one, mul_one, mul_one]
      · exact (extendOne_of_mem _ (Subgroup.mem_top _)).trans rfl
      · intro PP' hP'
        exact (congrArg _ (dB _ (blockIndexSecond_eq_zero_of_lt _) 1 one_ne_zero PP' (Or.inr hP'))).trans (map_one _)
      · intro PP' hP'
        exact Finset.prod_eq_one fun c _ =>
          (congrArg _ (dB _ (blkOf_low _ _) (c + 1) (Nat.succ_ne_zero c) PP' (Or.inl hP'))).trans (map_one _)
    show ((levFn (R.βV i) (flagL (R.datVt i t)) (finE (Vc D i) κ) : ℂˣ) : ℂ) = 1
    rw [key, Units.val_one]

end GlobalTheory.LiftDiag
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftBlockDiagReductionToFlagGroup =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MirabolicHyperplaneAverageSupportResidueGL =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MirabolicHyperplaneAverageSupportResidueGL", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RankWeightComponentEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting (FinPl idem SplitProj IsIdemOf IsProjAt adjCo grpCo frCo)
open GlobalTheory.DownLift.GenSplit

noncomputable section

namespace GlobalTheory.DownLift.GenSplit

section Reindex
variable {n K L : Type} [Fintype n] [CommRing K] [CommRing L]

theorem map_symm_mulVec_comp (ρ : K ≃+* L) (M : Matrix n n L) (x : n → L) :
    (M.map ρ.symm) *ᵥ (fun j => ρ.symm (x j)) = fun j => ρ.symm ((M *ᵥ x) j) := by
  funext j
  exact (RingHom.map_mulVec ρ.symm.toRingHom M x j).symm

theorem fix_hyperplane_map_iff (ρ : K ≃+* L) (M : Matrix n n L) (a : n → K) :
    (∀ x, (fun j => ρ (a j)) ⬝ᵥ x = 0 → M *ᵥ x = x) ↔ ∀ w, a ⬝ᵥ w = 0 → (M.map ρ.symm) *ᵥ w = w := by
  constructor
  · intro h w hw
    have hd : (fun j => ρ (a j)) ⬝ᵥ (fun j => ρ (w j)) = 0 := by
      have := (RingHom.map_dotProduct ρ.toRingHom a w).symm
      simp only [RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom, hw, map_zero] at this
      exact this
    have h1 := h _ hd
    have h2 := map_symm_mulVec_comp ρ M (fun j => ρ (w j))
    rw [h1] at h2
    simpa only [RingEquiv.symm_apply_apply] using h2
  · intro h x hx
    have hd : a ⬝ᵥ (fun j => ρ.symm (x j)) = 0 := by
      have := (RingHom.map_dotProduct ρ.symm.toRingHom (fun j => ρ (a j)) x).symm
      simp only [RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom, hx, map_zero] at this
      simpa only [Function.comp_def, RingEquiv.symm_apply_apply] using this
    have h1 := h _ hd
    rw [map_symm_mulVec_comp] at h1
    funext j
    have := congrArg ρ (congrFun h1 j)
    simpa only [RingEquiv.apply_symm_apply] using this

end Reindex

theorem mirC_hyperplane_reindex : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks), ∀ (i : Fin D.R.m) (PP : Pl D.host.E) (hPP : PP ∈ R.Pg) (v : FinPl D) (ρk : IsLocalRing.ResidueField (OI v) ≃+* kP PP) (a : Fin D.R.r → IsLocalRing.ResidueField (OI v)) (F : GL (Fin D.R.r) (IsLocalRing.ResidueField (OI v)) → ℂ), (∑ᶠ g ∈ {g : G | mirC R i ⟨PP, hPP⟩ (fun j => ρk (a j)) false 1 g ≠ 0}, F (Matrix.GeneralLinearGroup.map ρk.symm.toRingHom (R.eG g ⟨PP, hPP⟩))) = ∑ᶠ g ∈ {g : GL (Fin D.R.r) (IsLocalRing.ResidueField (OI v)) | ∀ w, a ⬝ᵥ w = 0 → (g : Matrix (Fin D.R.r) (Fin D.R.r) (IsLocalRing.ResidueField (OI v))).mulVec w = w}, F g := by
  classical
  intro D G _ _ Pl0 T A Ks _ _ _ R i PP hPP v ρk a F
  set P : R.Pg := ⟨PP, hPP⟩ with hP
  have key : ∀ g : G, ((∀ x, (fun j => ρk (a j)) ⬝ᵥ x = 0 →
      ((R.eG g P : GL (Fin D.R.r) (kP PP)) : Matrix (Fin D.R.r) (Fin D.R.r) (kP PP)) *ᵥ x = x) ↔
      ∀ w, a ⬝ᵥ w = 0 → ((Matrix.GeneralLinearGroup.map ρk.symm.toRingHom (R.eG g P) : GL (Fin D.R.r) _) :
        Matrix (Fin D.R.r) (Fin D.R.r) _) *ᵥ w = w) :=
    fun g => fix_hyperplane_map_iff ρk _ a
  have hset : {g : G | mirC R i P (fun j => ρk (a j)) false 1 g ≠ 0} =
      {g : G | (∀ PP', PP' ≠ P → R.eG g PP' = 1) ∧ ∀ w, a ⬝ᵥ w = 0 →
        ((Matrix.GeneralLinearGroup.map ρk.symm.toRingHom (R.eG g P) : GL (Fin D.R.r) _) :
          Matrix (Fin D.R.r) (Fin D.R.r) _) *ᵥ w = w} := by
    ext g
    rw [Set.mem_setOf_eq, Set.mem_setOf_eq, ← key g]
    simp only [mirC, Bool.false_eq_true, ↓reduceIte, zpow_one]
    split_ifs with hc
    · simp only [ne_eq, Units.ne_zero, not_false_eq_true, true_iff]
      exact hc
    · simp only [ne_eq, not_true_eq_false, false_iff]
      exact hc
  rw [hset]
  apply finsum_mem_eq_of_bijOn (fun g => Matrix.GeneralLinearGroup.map ρk.symm.toRingHom (R.eG g P))
  · refine ⟨?_, ?_, ?_⟩
    · rintro g ⟨_, hg⟩
      exact hg
    · rintro g₁ ⟨h1, _⟩ g₂ ⟨h2, _⟩ he
      apply R.eG.injective
      funext PP'
      by_cases hq : PP' = P
      · rw [hq]
        have he' : ((R.eG g₁ P : GL (Fin D.R.r) (kP PP)) : Matrix (Fin D.R.r) (Fin D.R.r) (kP PP)).map ρk.symm =
            ((R.eG g₂ P : GL (Fin D.R.r) (kP PP)) : Matrix (Fin D.R.r) (Fin D.R.r) (kP PP)).map ρk.symm :=
          congrArg Units.val he
        exact Units.ext (Matrix.map_injective ρk.symm.injective he')
      · rw [h1 PP' hq, h2 PP' hq]
    · intro g₀ hg₀
      have hcomp : Matrix.GeneralLinearGroup.map ρk.symm.toRingHom (Matrix.GeneralLinearGroup.map ρk.toRingHom g₀) = g₀ := by
        ext j k
        simp
      refine ⟨R.eG.symm (Pi.mulSingle P (Matrix.GeneralLinearGroup.map ρk.toRingHom g₀)), ⟨?_, ?_⟩, ?_⟩
      · intro PP' hq
        rw [MulEquiv.apply_symm_apply, Pi.mulSingle_eq_of_ne hq]
      · rw [MulEquiv.apply_symm_apply, Pi.mulSingle_eq_same, hcomp]
        exact hg₀
      · show Matrix.GeneralLinearGroup.map ρk.symm.toRingHom (R.eG (R.eG.symm _) P) = g₀
        rw [MulEquiv.apply_symm_apply, Pi.mulSingle_eq_same, hcomp]
  · intro g _
    rfl

end GlobalTheory.DownLift.GenSplit

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MirabolicHyperplaneAverageSupportResidueGL =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchrodingerHyperplaneAveragesVanish =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchrodingerHyperplaneAveragesVanish", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RankWeightComponentEq\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftBlockDiagReductionToFlagGroup\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MirabolicHyperplaneAverageSupportResidueGL\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PostOnGaLMemGoodPart\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsInvariantForm\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.InfPartOneSubEInfSmul\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsSelfDualCoordLatticeOfSelfDualFrameStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LevelCharactersRamificationLevelPlaces\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.ParahoricLevelLiftsExistStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SplitIdempotentPrimeProjectionCorrespondence\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SplitPlaceAdjointMatrixIsCoordinateEquivariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting (FinPl idem SplitProj IsIdemOf IsProjAt adjCo grpCo frCo)
open GlobalTheory.DownLift.GenSplit

noncomputable section

namespace GlobalTheory.DownLift.HypAvg

theorem residueEquiv : ∀ (D : D7) (v : FinPl D) (PP : Pl D.host.E) (red : OI v →+* kP PP), Function.Surjective red → (∀ a : OI v, red a = 0 ↔ Valued.v (a : Fv D.host.F v) < 1) → ∃ ρk : IsLocalRing.ResidueField (OI v) ≃+* kP PP, ∀ a : OI v, ρk (IsLocalRing.residue (OI v) a) = red a := by
  intro D v PP red hs hk
  have hker : RingHom.ker red = IsLocalRing.maximalIdeal (OI v) := by
    ext a
    rw [RingHom.mem_ker, hk]
    exact (Valuation.mem_maximalIdeal_iff (v := (Valued.v : Valuation (Fv D.host.F v) _))).symm
  exact ⟨(Ideal.quotEquivOfEq hker.symm).trans (RingHom.quotientKerEquivOfSurjective hs), fun a => rfl⟩

theorem exists_blockGL : ∀ (O : Type) [CommRing O] [IsLocalRing O] (r t n : ℕ) (hn : r + t = n) (M : Matrix (Fin r) (Fin r) O) (g₀ : GL (Fin r) (IsLocalRing.ResidueField O)), M.map (IsLocalRing.residue O) = (g₀ : Matrix (Fin r) (Fin r) (IsLocalRing.ResidueField O)) → ∃ h : GL (Fin n) O, (h : Matrix (Fin n) (Fin n) O) = (Matrix.fromBlocks M 0 0 (1 : Matrix (Fin t) (Fin t) O)).submatrix (rowIx hn).symm (rowIx hn).symm := by
  intro O _ _ r t n hn M g₀ hM
  have hd : IsLocalRing.residue O M.det = (g₀ : Matrix (Fin r) (Fin r) (IsLocalRing.ResidueField O)).det := by
    rw [← hM, RingHom.map_det]; rfl
  have hdet : IsUnit ((Matrix.fromBlocks M 0 0 (1 : Matrix (Fin t) (Fin t) O)).submatrix (rowIx hn).symm
      (rowIx hn).symm).det := by
    rw [Matrix.det_submatrix_equiv_self, Matrix.det_fromBlocks_zero₂₁, Matrix.det_one, mul_one,
      ← IsLocalRing.residue_ne_zero_iff_isUnit, hd, ← Matrix.GeneralLinearGroup.val_det_apply]
    exact Units.ne_zero _
  exact ⟨Matrix.nonsingInvUnit _ hdet, rfl⟩

theorem ell_heisO_omegaInv : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks), R.thP_ωP → ∀ (i : Fin D.R.m) (t : T) (ℓ : (WO (Vc D i) (Wc D i) → ℂ) →ₗ[ℂ] ℂ) (κ : GA D (Vc D i)) (c : ℂ), c ≠ 0 → (∀ φ', IsThetaFunO R.ψ (Vc D i) (Wc D i) φ' → ℓ (R.ωP i t (κ, 1) φ') = c * ℓ φ') → ∀ (u : WO (Vc D i) (Wc D i)) (f : WO (Vc D i) (Wc D i) → ℂ), IsThetaFunO R.ψ (Vc D i) (Wc D i) f → ℓ (heisO R.ψ (Vc D i) (Wc D i) u (R.ωP i t (κ⁻¹, 1) f)) = c⁻¹ * ℓ (heisO R.ψ (Vc D i) (Wc D i) (actO (Vc D i) (Wc D i) κ 1 u) f) := by
  intro D G _ _ Pl0 T A Ks _ _ _ R hω i t ℓ κ c hc hsc u f hf
  have hW := hω i t
  have e1 : actO (Vc D i) (Wc D i) κ⁻¹ 1 (actO (Vc D i) (Wc D i) κ 1 u) = u := by
    simpa using GlobalTheory.SplitHecke.actO_inv_actO (S := Vc D i) (T := Wc D i) κ 1 u
  have e2 := hW.om_heis κ⁻¹ 1 (actO (Vc D i) (Wc D i) κ 1 u) f hf
  rw [e1] at e2
  rw [← e2]
  have hth := hW.om_pres (κ⁻¹, 1) _ (GlobalTheory.ThetaClosed.isThetaFunO_heisO_all hW.std hf (actO (Vc D i) (Wc D i) κ 1 u))
  have e3 := hsc _ hth
  have e4 : R.ωP i t (κ, 1) (R.ωP i t (κ⁻¹, 1) (heisO R.ψ (Vc D i) (Wc D i) (actO (Vc D i) (Wc D i) κ 1 u) f)) =
      heisO R.ψ (Vc D i) (Wc D i) (actO (Vc D i) (Wc D i) κ 1 u) f := by
    rw [← Module.End.mul_apply, ← map_mul, Prod.mk_mul_mk, mul_inv_cancel, mul_one]
    show R.ωP i t 1 _ = _
    rw [map_one]; rfl
  rw [e4] at e3
  rw [e3, ← mul_assoc, inv_mul_cancel₀ hc, one_mul]

theorem actO_sigma : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks), R.toLevCh.Is A.μ0 → ∀ (i : Fin D.R.m) (v : FinPl D) (φ : SplitProj D v) (e : Formalism.L2.Theta.AE D), IsIdemOf φ e → ∀ (σ : Matrix (Fin D.R.r ⊕ Fin D.R.t) (Fin D.R.r) (Fv D.host.F v) → WO (Vc D i) (Wc D i)), (∀ X, IsHalf (cA D e) (σ X) ∧ coR R i φ (σ X) = X) → ∀ (κ : GA D (Vc D i)) (M : Matrix (Fin D.R.r ⊕ Fin D.R.t) (Fin D.R.r ⊕ Fin D.R.t) (Fv D.host.F v)), ((grpCo φ (Vc D i) (frCo φ (R.βV i)) κ : GL (Fin (Vc D i).rank) (Fv D.host.F v)) : Matrix (Fin (Vc D i).rank) (Fin (Vc D i).rank) (Fv D.host.F v)) = M.submatrix (rowIx (rank_V i)).symm (rowIx (rank_V i)).symm → ∀ X, actO (Vc D i) (Wc D i) κ 1 (σ X) = σ (M * X) := by
  intro D G _ _ Pl0 T A Ks _ _ _ R hL i v φ e he σ hσ κ M hM X
  have sdV := GlobalTheory.T.isSelfDualCoordLattice_of_selfDualFrame D _ _ _ _ (hL.βV i)
  have sdW := GlobalTheory.T.isSelfDualCoordLattice_of_selfDualFrame D _ _ _ _ (hL.βW i)
  obtain ⟨hco, hact⟩ := GlobalTheory.PlaceTensor.adjCo_isCoord D (Vc D i) (Wc D i) _ _ sdV sdW v φ e he (frCo φ (R.βV i))
    (frCo φ (R.βW i))
  have hhalf : IsHalf (cA D e) (actO (Vc D i) (Wc D i) κ 1 (σ X)) := GlobalTheory.SplitHecke.isHalf_actO κ 1 (hσ X).1
  apply hco.2.1.injOn hhalf (hσ (M * X)).1
  have h1 := hact κ⁻¹ 1 (σ X)
  simp only [inv_inv, inv_one] at h1
  have hg1 : grpCo φ (Wc D i) (frCo φ (R.βW i)) 1 = 1 := by
    unfold grpCo; simp
  have key : ∀ y, adjCo φ (Vc D i) (Wc D i) (frCo φ (R.βV i)) (frCo φ (R.βW i)) y =
      (coR R i φ y).submatrix (rowIx (rank_V i)).symm (finCongr (rank_weight_component_eq i)).symm := by
    intro y
    unfold coR co
    rw [Matrix.submatrix_submatrix]
    ext j k
    simp
  rw [h1, GlobalTheory.PlaceTensor.AdjCoord.grpCo_inv, inv_inv, hg1, Units.val_one, Matrix.mul_one, key (σ (M * X)),
    (hσ _).2, key (σ X), (hσ X).2, hM, Matrix.submatrix_mul_equiv]

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

theorem liftsV (R : RealDat D A Ks) (h : R.toLevCh.Is A.μ0) (i : Fin D.R.m) (t : T) :
    LiftsExist (Vc D i) (R.βV i) (R.datVt i t) := by
  obtain ⟨c, hc⟩ := h.βV i
  refine GlobalTheory.T.parahoricLevel_liftsExist _ _ _ _ _ hc (fun PP hP PP' hP' => ?_)
    (GlobalTheory.LevelRamif.ramif_at_levels D T R.toLevCh A.μ0 h t i).1
  obtain ⟨k, hk⟩ := (h.Pg PP).1 hP
  rcases hP' with hP' | hP'
  · obtain ⟨k', hk'⟩ := (h.Pg PP').1 hP'
    exact GlobalTheory.ProjectedLift.not_isConjPl R.C.P hk hk'
  · intro hc
    obtain ⟨q, hq, hm, hne⟩ := GlobalTheory.LevelRamif.exists_prime_mem (h.Q_pl t) hP'
    exact GlobalTheory.LevelRamif.not_two_primes PP' hq (D.host.g_prime k) (hne k) hm
      (GlobalTheory.LevelRamif.natCast_mem_conj hc (GlobalTheory.LevelRamif.typePrime_mem hk))

theorem termAt (R : RealDat D A Ks) (hL : R.toLevCh.Is A.μ0) (hω : R.thP_ωP) (i : Fin D.R.m) (t : T)
    (PP : Pl D.host.E) (hPP : PP ∈ R.Pg) {v : FinPl D} (φ : SplitProj D v) (e : Formalism.L2.Theta.AE D) (he : IsIdemOf φ e)
    (red : OI v →+* kP PP) (ρk : IsLocalRing.ResidueField (OI v) ≃+* kP PP)
    (hρ : ∀ a : OI v, ρk (IsLocalRing.residue (OI v) a) = red a) (hAct : ActAt R i t PP φ e red)
    {Sb : Finset (FinPl D)} (hv : v ∈ Sb)
    (σ : Matrix (Fin D.R.r ⊕ Fin D.R.t) (Fin D.R.r) (Fv D.host.F v) → WO (Vc D i) (Wc D i))
    (hσ : ∀ X, IsHalf (cA D e) (σ X) ∧ coR R i φ (σ X) = X)
    (ℓ : (WO (Vc D i) (Wc D i) → ℂ) →ₗ[ℂ] ℂ) (hℓ : InvForm R.ψ (Vc D i) (Wc D i) e ℓ)
    (f : WO (Vc D i) (Wc D i) → ℂ) (hf : IsThetaFunO R.ψ (Vc D i) (Wc D i) f) (a' : Fin D.R.r → kP PP)
    (lift : GL (Fin D.R.r) (IsLocalRing.ResidueField (OI v)) → Matrix (Fin D.R.r) (Fin D.R.r) (OI v))
    (hlift : ∀ g, (lift g).map (IsLocalRing.residue (OI v)) =
      (g : Matrix (Fin D.R.r) (Fin D.R.r) (IsLocalRing.ResidueField (OI v))))
    (g : G) (hg : mirC R i ⟨PP, hPP⟩ a' false 1 g ≠ 0) :
    ∃ κ : GA D (Vc D i), IsLevelLift (Vc D i) (R.βV i) (R.datVt i t) (R.eG g) κ ∧ SuppIn Sb (Vc D i) κ ∧
      ∀ X, mirC R i ⟨PP, hPP⟩ a' false 1 g * (levChi (Vc D i) (R.βV i) (flagL (R.datVt i t)) κ)⁻¹ *
          ℓ (heisO R.ψ (Vc D i) (Wc D i) (σ X) (R.ωP i t (κ⁻¹, 1) f)) =
        ℓ (heisO R.ψ (Vc D i) (Wc D i) (σ ((Matrix.fromBlocks
          (lift (Matrix.GeneralLinearGroup.map ρk.symm.toRingHom (R.eG g ⟨PP, hPP⟩))) 0 0
          (1 : Matrix (Fin D.R.t) (Fin D.R.t) (OI v))).map (algebraMap (OI v) (Fv D.host.F v)) * X)) f) := by
  classical
  have hc : (∀ PP' : R.Pg, PP' ≠ ⟨PP, hPP⟩ → R.eG g PP' = 1) ∧
      ∀ x, a' ⬝ᵥ x = 0 → ((R.eG g ⟨PP, hPP⟩ : GL (Fin D.R.r) (kP PP)) : Matrix (Fin D.R.r) (Fin D.R.r) (kP PP)).mulVec x = x := by
    by_contra hc
    exact hg (by unfold mirC; rw [if_neg (by simpa using hc)])
  have hm : mirC R i ⟨PP, hPP⟩ a' false 1 g =
      ((R.chi ((i : ℕ) + 1) PP (Matrix.GeneralLinearGroup.det (R.eG g ⟨PP, hPP⟩)) : ℂˣ) : ℂ) := by
    unfold mirC; rw [if_pos (by simpa using hc), zpow_one]
  set g₀ := Matrix.GeneralLinearGroup.map ρk.symm.toRingHom (R.eG g ⟨PP, hPP⟩) with hg₀
  obtain ⟨hh, hhv⟩ := exists_blockGL (OI v) D.R.r D.R.t _ (rank_V i) (lift g₀) g₀ (hlift g₀)
  obtain ⟨κ, hSupp, hGf, hSt, hgrp, hred, hoth, hsc⟩ := hAct hh
  have hlr : (lift g₀).map red = ((R.eG g ⟨PP, hPP⟩ : GL (Fin D.R.r) (kP PP)) : Matrix (Fin D.R.r) (Fin D.R.r) (kP PP)) := by
    ext j k
    have e1 := congrFun (congrFun (hlift g₀) j) k
    simp only [Matrix.map_apply] at e1 ⊢
    rw [← hρ, e1, hg₀]
    simp [Matrix.GeneralLinearGroup.map]
  have hredM : ((redFn (R.βV i) PP (finE (Vc D i) κ) : GL (Fin (Vc D i).rank) (kP PP)) :
      Matrix (Fin (Vc D i).rank) (Fin (Vc D i).rank) (kP PP)) =
      (Matrix.fromBlocks ((R.eG g ⟨PP, hPP⟩ : GL (Fin D.R.r) (kP PP)) : Matrix (Fin D.R.r) (Fin D.R.r) (kP PP)) 0 0
        (1 : Matrix (Fin D.R.t) (Fin D.R.t) (kP PP))).submatrix (rowIx (rank_V i)).symm (rowIx (rank_V i)).symm := by
    rw [hred]
    show (hh : Matrix (Fin (Vc D i).rank) (Fin (Vc D i).rank) (OI v)).map red = _
    rw [hhv, ← Matrix.submatrix_map, Matrix.fromBlocks_map, hlr, Matrix.map_zero _ (map_zero red),
      Matrix.map_zero _ (map_zero red), Matrix.map_one _ (map_zero red) (map_one red)]
  obtain ⟨hLift, hchi⟩ := _root_.GlobalTheory.LiftDiag.lift_diag D G Pl0 T A Ks R i t PP hPP g hc.1 κ hGf hSt hredM hoth
  refine ⟨κ, hLift, suppIn_of_suppAt he hv hSupp, fun X => ?_⟩
  have hdet : Matrix.GeneralLinearGroup.det (Matrix.GeneralLinearGroup.map red hh) =
      Matrix.GeneralLinearGroup.det (R.eG g ⟨PP, hPP⟩) := by
    apply Units.ext
    rw [Matrix.GeneralLinearGroup.val_det_apply, Matrix.GeneralLinearGroup.val_det_apply, ← hred, hredM,
      Matrix.det_submatrix_equiv_self, Matrix.det_fromBlocks_zero₂₁, Matrix.det_one, mul_one]
  set c : ℂ := ((R.chi ((i : ℕ) + 1) PP (Matrix.GeneralLinearGroup.det (R.eG g ⟨PP, hPP⟩)) : ℂˣ) : ℂ) with hcdef
  have hc0 : c ≠ 0 := Units.ne_zero _
  have key := ell_heisO_omegaInv D G Pl0 T A Ks R hω i t ℓ κ c hc0
    (fun φ' hφ' => by rw [hsc ℓ hℓ φ' hφ', hdet]) (σ X) f hf
  have hco := actO_sigma D G Pl0 T A Ks R hL i v φ e he σ hσ κ
    ((Matrix.fromBlocks (lift g₀) 0 0 (1 : Matrix (Fin D.R.t) (Fin D.R.t) (OI v))).map
      (algebraMap (OI v) (Fv D.host.F v))) (by
        rw [hgrp]
        show (hh : Matrix (Fin (Vc D i).rank) (Fin (Vc D i).rank) (OI v)).map (algebraMap (OI v) (Fv D.host.F v)) = _
        rw [hhv, Matrix.submatrix_map]) X
  rw [key, hco, hchi, hm, inv_one, mul_one, ← mul_assoc, mul_inv_cancel₀ hc0, one_mul]

theorem avg_schrodinger_hyperplane : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks), R.toLevCh.Is A.μ0 → R.thP_ωP → ∀ (i : Fin D.R.m) (t : T) (PP : Pl D.host.E), PP ∈ R.Pg → ∀ (v : FinPl D) (φ : SplitProj D v) (e : Formalism.L2.Theta.AE D), IsProjAt φ PP → IsIdemOf φ e → ∀ (red : OI v →+* kP PP), Function.Surjective red → (∀ a : OI v, red a = 0 ↔ Valued.v (a : Fv D.host.F v) < 1) → ActAt R i t PP φ e red → ∀ (Sb : Finset (FinPl D)), v ∈ Sb → ∀ (σ : Matrix (Fin D.R.r ⊕ Fin D.R.t) (Fin D.R.r) (Fv D.host.F v) → WO (Vc D i) (Wc D i)), (∀ X, IsHalf (cA D e) (σ X) ∧ coR R i φ (σ X) = X) → ∀ (ℓ : (WO (Vc D i) (Wc D i) → ℂ) →ₗ[ℂ] ℂ), InvForm R.ψ (Vc D i) (Wc D i) e ℓ → ∀ (f : WO (Vc D i) (Wc D i) → ℂ), IsThetaFunO R.ψ (Vc D i) (Wc D i) f → CleanIn R i t Sb f → ∀ a : Fin D.R.r → IsLocalRing.ResidueField (OI v), a ≠ 0 → ∀ (lift : GL (Fin D.R.r) (IsLocalRing.ResidueField (OI v)) → Matrix (Fin D.R.r) (Fin D.R.r) (OI v)), (∀ g, (lift g).map (IsLocalRing.residue (OI v)) = (g : Matrix (Fin D.R.r) (Fin D.R.r) (IsLocalRing.ResidueField (OI v)))) → ∀ X : Matrix (Fin D.R.r ⊕ Fin D.R.t) (Fin D.R.r) (Fv D.host.F v), ∑ᶠ g ∈ {g : GL (Fin D.R.r) (IsLocalRing.ResidueField (OI v)) | ∀ w, a ⬝ᵥ w = 0 → (g : Matrix (Fin D.R.r) (Fin D.R.r) (IsLocalRing.ResidueField (OI v))).mulVec w = w}, ℓ (heisO R.ψ (Vc D i) (Wc D i) (σ ((Matrix.fromBlocks (lift g) 0 0 (1 : Matrix (Fin D.R.t) (Fin D.R.t) (OI v))).map (algebraMap (OI v) (Fv D.host.F v)) * X)) f) = 0 := by
  intro D G _ _ Pl0 T A Ks _ _ _ R hL hω i t PP hPP v φ e hproj he red hsurj hker hAct Sb hv σ hσ ℓ hℓ f hf hclean a ha
    lift hlift X
  classical
  obtain ⟨ρk, hρ⟩ := residueEquiv D v PP red hsurj hker
  have ha' : (fun j => ρk (a j)) ≠ 0 := fun h => ha (funext fun j => ρk.injective (by simpa using congrFun h j))
  have hOver : Over PP v := ((GlobalTheory.SplitIdemDict.idem_dictionary D).2 v φ PP hproj).1
  choose κ₀ hκ₀ using fun g : G => liftsV R hL i t (R.eG g)
  have hG := fun (g : G) (hg : mirC R i ⟨PP, hPP⟩ (fun j => ρk (a j)) false 1 g ≠ 0) =>
    termAt R hL hω i t PP hPP φ e he red ρk hρ hAct hv σ hσ ℓ hℓ f hf (fun j => ρk (a j)) lift hlift g hg
  let κ : G → GA D (Vc D i) := fun g =>
    if hg : mirC R i ⟨PP, hPP⟩ (fun j => ρk (a j)) false 1 g ≠ 0 then (hG g hg).choose else κ₀ g
  have hκ : ∀ g (hg : mirC R i ⟨PP, hPP⟩ (fun j => ρk (a j)) false 1 g ≠ 0), κ g = (hG g hg).choose :=
    fun g hg => dif_pos hg
  have hLifts : IsLifts R i t κ := fun g => by
    by_cases hg : mirC R i ⟨PP, hPP⟩ (fun j => ρk (a j)) false 1 g ≠ 0
    · rw [hκ g hg]; exact (hG g hg).choose_spec.1
    · have : κ g = κ₀ g := dif_neg hg
      rw [this]; exact hκ₀ g
  have hSupp : ∀ g, mirC R i ⟨PP, hPP⟩ (fun j => ρk (a j)) false 1 g ≠ 0 → SuppIn Sb (Vc D i) (κ g) :=
    fun g hg => by rw [hκ g hg]; exact (hG g hg).choose_spec.2.1
  have h0 := hclean ⟨PP, hPP⟩ (fun j => ρk (a j)) ha' false 1 (Or.inl rfl) ⟨v, hv, hOver⟩ κ hLifts hSupp
  have h1 := congrArg (fun φ' => ℓ (heisO R.ψ (Vc D i) (Wc D i) (σ X) φ')) h0

  simp only [avgW, GlobalTheory.SplitScalar.heisO_sum, GlobalTheory.SplitScalar.heisO_smul, map_sum, map_smul, smul_eq_mul] at h1
  set Fn : GL (Fin D.R.r) (IsLocalRing.ResidueField (OI v)) → ℂ := fun g =>
    ℓ (heisO R.ψ (Vc D i) (Wc D i) (σ ((Matrix.fromBlocks (lift g) 0 0 (1 : Matrix (Fin D.R.t) (Fin D.R.t) (OI v))).map
      (algebraMap (OI v) (Fv D.host.F v)) * X)) f) with hFn
  rw [← _root_.GlobalTheory.DownLift.GenSplit.mirC_hyperplane_reindex D G Pl0 T A Ks R i PP hPP v ρk a Fn, finsum_mem_def, finsum_eq_sum_of_fintype]
  have hz : heisO R.ψ (Vc D i) (Wc D i) (σ X) (0 : WO (Vc D i) (Wc D i) → ℂ) = 0 := by
    funext w; simp [heisO]
  rw [hz, map_zero] at h1
  refine (Finset.sum_congr rfl fun g _ => ?_).trans h1
  by_cases hg : mirC R i ⟨PP, hPP⟩ (fun j => ρk (a j)) false 1 g ≠ 0
  · rw [Set.indicator_of_mem (show g ∈ {g : G | mirC R i ⟨PP, hPP⟩ (fun j => ρk (a j)) false 1 g ≠ 0} from hg), hκ g hg]
    exact ((hG g hg).choose_spec.2.2 X).symm
  · rw [Set.indicator_of_notMem (show g ∉ {g : G | mirC R i ⟨PP, hPP⟩ (fun j => ρk (a j)) false 1 g ≠ 0} from hg)]
    rw [not_not.1 hg, zero_mul, zero_mul]

end GlobalTheory.DownLift.HypAvg

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchrodingerHyperplaneAveragesVanish =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchrodingerHyperplaneAveragesVanishStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchrodingerHyperplaneAveragesVanishStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RankWeightComponentEq\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchrodingerHyperplaneAveragesVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
open GlobalTheory.DownLift.GenFinite
open GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting (FinPl idem SplitProj IsIdemOf IsProjAt adjCo grpCo frCo)
open GlobalTheory.DownLift.GenSplit

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SchrodingerHyperplaneAveragesVanishStatement =====
