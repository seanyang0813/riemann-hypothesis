module

public import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTB
public import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace
public import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTA
public import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTD
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullbackSchwartzLinearIndependentStatement
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BlockMatrixMul
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsBlockMatrixTwoByTwoFinEq
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SecondOnCommonRangeOfSecond
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinRationalPoints
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaSumInvariantWeylInvolution
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinHeisenbergSchwartzStatement

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTC, Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTE, Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFT

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTC =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTC", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTB\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BlockMatrixMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsBlockMatrixTwoByTwoFinEq\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open PositivityTheory.GramSchwartzFunctions.EC GlobalTheory.CompanionTheory.EisCovar

namespace PositivityTheory.Rg.Rsw.L.LPartFT

variable {n r t : ℕ}

theorem block_mul₂ {R : Type} [CommRing R] (hn : r + t = n) (a a' : Matrix (Fin r) (Fin r) R) (b b' : Matrix (Fin r) (Fin t) R)
    (c c' : Matrix (Fin t) (Fin r) R) (d d' : Matrix (Fin t) (Fin t) R) :
    bl hn a b c d * bl hn a' b' c' d' = bl hn (a * a' + b * c') (a * b' + b * d') (c * a' + d * c') (c * b' + d * d') := by
  simp only [PositivityTheory.Rg.Rsw.bl, Matrix.submatrix_mul_equiv, Matrix.fromBlocks_multiply]

theorem cT_bl {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) (a : Matrix (Fin r) (Fin r) K) (b : Matrix (Fin r) (Fin t) K)
    (c : Matrix (Fin t) (Fin r) K) (d : Matrix (Fin t) (Fin t) K) :
    cT σ (bl hn a b c d) = bl hn (cT σ a) (cT σ c) (cT σ b) (cT σ d) := by
  unfold PositivityTheory.GramSchwartzFunctions.EC.cT
  rw [block_map]
  simp only [PositivityTheory.Rg.Rsw.bl, Matrix.transpose_submatrix, Matrix.fromBlocks_transpose]

theorem first_block_hermitian_idempotent {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) :
    bl hn (1 : Matrix (Fin r) (Fin r) K) 0 0 0 * bl hn 1 0 0 0 = bl hn 1 0 0 0 ∧
      cT σ (bl hn (1 : Matrix (Fin r) (Fin r) K) 0 0 0) = bl hn 1 0 0 0 := by
  refine ⟨?_, ?_⟩
  · rw [block_mul₂]
    simp
  · simp only [cT_bl, cT_one, _root_.GlobalTheory.CompanionTheory.BruhatCell.cT_zero]

theorem second_block_hermitian_idempotent {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) :
    bl hn (0 : Matrix (Fin r) (Fin r) K) 0 0 1 * bl hn 0 0 0 1 = bl hn 0 0 0 1 ∧
      cT σ (bl hn (0 : Matrix (Fin r) (Fin r) K) 0 0 1) = bl hn 0 0 0 1 := by
  refine ⟨?_, ?_⟩
  · rw [block_mul₂]
    simp
  · simp only [cT_bl, cT_one, _root_.GlobalTheory.CompanionTheory.BruhatCell.cT_zero]

theorem Pm_map {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) : (Pm K hn).map σ = Pm K hn := by
  rw [Pm, ← Matrix.submatrix_map, Matrix.map_one _ (map_zero σ) (map_one σ)]

theorem cT_Pm {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) : cT σ (Pm K hn) = (Pm K hn)ᵀ := by
  rw [cT, Pm_map]

theorem cT_PmT {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) : cT σ (Pm K hn)ᵀ = Pm K hn := by
  rw [cT, Matrix.transpose_map, Pm_map, Matrix.transpose_transpose]

theorem repMat_zero {K : Type} [Field K] (σ : K →+* K) {p : ℕ} (a : Matrix (Fin n) (Fin n) K) :
    repMat σ (0 : Matrix (Fin p) (Fin p) K) a = wr K n p * mA σ a := by
  have h0 : (PositivityTheory.GramSchwartzFunctions.EC.extB (n := n) (0 : Matrix (Fin p) (Fin p) K)) = 0 := by
    ext i j
    simp [PositivityTheory.GramSchwartzFunctions.EC.extB]
  simp only [PositivityTheory.GramSchwartzFunctions.EC.repMat, h0, PositivityTheory.GramSchwartzFunctions.EC.nB, GlobalTheory.CompanionTheory.EisCovar.block_matrix_one, Matrix.mul_one]

theorem mA_one {K : Type} [Field K] (σ : K →+* K) : mA σ (1 : Matrix (Fin n) (Fin n) K) = 1 := by
  simp only [PositivityTheory.GramSchwartzFunctions.EC.mA, cT_one, inv_one, GlobalTheory.CompanionTheory.EisCovar.block_matrix_one]

theorem mA_Pm {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) : mA σ (Pm K hn) = blk4 (Pm K hn) 0 0 (Pm K hn) := by
  simp only [PositivityTheory.GramSchwartzFunctions.EC.mA, cT_Pm, Matrix.inv_eq_left_inv (Pm_mul_alt (K := K) hn)]

theorem key3 {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) :
    blk4 (Pm K hn)ᵀ 0 0 (Pm K hn)ᵀ * repMat σ (0 : Matrix (Fin t) (Fin t) K) (Pm K hn) = wE (bl hn 0 0 0 1) := by
  have hc := eId_conj (K := K) hn
  have h1 : (Pm K hn)ᵀ * (1 - PositivityTheory.GramSchwartzFunctions.EC.eId K n t) * Pm K hn = 1 - bl hn 0 0 0 1 := by
    rw [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_one, T_mul_Pm, hc]
  have h2 : (Pm K hn)ᵀ * (-PositivityTheory.GramSchwartzFunctions.EC.eId K n t) * Pm K hn = -bl hn 0 0 0 1 := by
    rw [Matrix.mul_neg, Matrix.neg_mul, hc]
  rw [repMat_zero, mA_Pm, ← Matrix.mul_assoc]
  simp only [PositivityTheory.GramSchwartzFunctions.EC.wr, GlobalTheory.CompanionTheory.EisCovar.submatrix_fromBlocks_mul, Matrix.zero_mul, Matrix.mul_zero, add_zero, zero_add]
  rw [h1, h2, hc]
  rfl

theorem gQ_unit {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) :
    IsUnit (blk4 (Pm K hn)ᵀ 0 0 (Pm K hn)ᵀ).det ∧ IsUnitary σ (PositivityTheory.GramSchwartzFunctions.EC.Jm K n) (blk4 (Pm K hn)ᵀ 0 0 (Pm K hn)ᵀ) := by
  have hinv : blk4 (Pm K hn)ᵀ 0 0 (Pm K hn)ᵀ * blk4 (Pm K hn) 0 0 (Pm K hn) = 1 := by
    rw [GlobalTheory.CompanionTheory.EisCovar.submatrix_fromBlocks_mul]
    simp only [T_mul_Pm, Matrix.zero_mul, Matrix.mul_zero, add_zero, zero_add, GlobalTheory.CompanionTheory.EisCovar.block_matrix_one]
  refine ⟨Matrix.isUnit_det_of_right_inverse hinv, ?_⟩
  unfold PositivityTheory.GramSchwartzFunctions.EC.IsUnitary PositivityTheory.GramSchwartzFunctions.EC.Jm
  rw [cT_blk4, cT_PmT, _root_.GlobalTheory.CompanionTheory.BruhatCell.cT_zero]
  simp only [GlobalTheory.CompanionTheory.EisCovar.submatrix_fromBlocks_mul, Matrix.zero_mul, Matrix.mul_zero, add_zero, zero_add, Matrix.mul_one,
    Matrix.mul_neg, Matrix.neg_mul, Pm_mul_alt, neg_zero]

theorem wr_unit {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) :
    IsUnit (wr K n r).det ∧ IsUnitary σ (PositivityTheory.GramSchwartzFunctions.EC.Jm K n) (wr K n r) := by
  have h : PositivityTheory.GramSchwartzFunctions.EC.wr K n r = wE (bl hn (1 : Matrix (Fin r) (Fin r) K) 0 0 0) := by
    rw [← eId_eq hn]
    rfl
  rw [h]
  exact wE_unit σ _ (first_block_hermitian_idempotent σ hn).1 (first_block_hermitian_idempotent σ hn).2

theorem second_block_weyl_unitary {K : Type} [Field K] (σ : K →+* K) (hn : r + t = n) :
    IsUnit (wE (bl hn (0 : Matrix (Fin r) (Fin r) K) 0 0 1)).det ∧
      IsUnitary σ (PositivityTheory.GramSchwartzFunctions.EC.Jm K n) (wE (bl hn (0 : Matrix (Fin r) (Fin r) K) 0 0 1)) :=
  wE_unit σ _ (second_block_hermitian_idempotent σ hn).1 (second_block_hermitian_idempotent σ hn).2

end PositivityTheory.Rg.Rsw.L.LPartFT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTC =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTE =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTE", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTA\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTB\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SecondOnCommonRangeOfSecond\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BlockMatrixMul\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinRationalPoints\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaSumInvariantWeylInvolution\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open PositivityTheory.GramSchwartzFunctions.EC GlobalTheory.CompanionTheory.EisCovar GlobalTheory.CompanionTheory.ThetaPoisson

namespace PositivityTheory.Rg.Rsw.L.LPartFT

variable {D : D7} {n r t : ℕ}

theorem mem_gf_of {γ : G D n} (g : Matrix (Fin (n + n)) (Fin (n + n)) D.host.E) (hu : IsUnit g.det)
    (hU : IsUnitary (D.sp.cm.sig : D.host.E →+* D.host.E) (PositivityTheory.GramSchwartzFunctions.EC.Jm D.host.E n) g)
    (h : mat γ = g.map (incA D)) : γ ∈ GF D n := by
  obtain ⟨γ₀, h0, e⟩ := (GlobalTheory.CompanionTheory.RatPtsUnn.ratPtsUnn D n).2.1 g hu hU
  rwa [mat_injective' (e.trans h.symm)] at h0

theorem one_sub_bl' {R : Type} [CommRing R] (hn : r + t = n) :
    1 - bl hn (1 : Matrix (Fin r) (Fin r) R) 0 0 0 = bl hn 0 0 0 1 := by
  rw [← blockRowSubstitution_one hn, sub_eq_iff_eq_add, bl_add]; simp

theorem mat_w (hn : r + t = n) (M : Maps D hn) : mat M.w = (wr D.host.E n r).map (incA D) := by
  have hm : (-1 : Matrix (Fin r) (Fin r) D.host.E).map (incA D) = -1 := by
    ext i j; by_cases h : i = j <;> simp [h]
  rw [M.w_mat, wr, eId_eq hn, block_matrix_map, one_sub_bl', block_neg]
  simp [block_map, hm]

theorem mat_emb (hn : r + t = n) (M : Maps D hn) (w : G D t) (hw : IsW w) :
    mat (M.emb w) = (wE (bl hn (0 : Matrix (Fin r) (Fin r) D.host.E) 0 0 1)).map (incA D) := by
  have hm : (-1 : Matrix (Fin t) (Fin t) D.host.E).map (incA D) = -1 := by
    ext i j; by_cases h : i = j <;> simp [h]
  rw [M.emb_mat w 0 1 (-1) 0 hw, wE, one_sub_bl, block_neg, block_matrix_map]
  simp [block_map, hm]

theorem mat_emb' (hn : r + t = n) (M : Maps D hn) (w : G D t) (hw : IsW w) :
    mat (M.emb w) = blk4 (bl hn 1 0 0 0) (bl hn 0 0 0 1) (bl hn 0 0 0 (-1)) (bl hn 1 0 0 0) :=
  M.emb_mat w 0 1 (-1) 0 hw

theorem adj_Pm (hn : r + t = n) : adj ((Pm D.host.E hn).map (incA D)) = (Pm D.host.E hn)ᵀ.map (incA D) := by
  have h1 : (Pm D.host.E hn).map (incA D) = (1 : Mx D n n).submatrix (πe hn) id := by
    rw [Pm, ← Matrix.submatrix_map, Matrix.map_one _ (map_zero _) (map_one _)]
  rw [adj, Matrix.transpose_map, h1, ← Matrix.submatrix_map, Matrix.map_one _ (map_zero _) (map_one _)]

def uP (D : D7) (hn : r + t = n) : GL (Fin n) D.host.E := ⟨(Pm D.host.E hn)ᵀ, Pm D.host.E hn, T_mul_Pm hn, Pm_mul_alt hn⟩

theorem mat_gQ {γ : G D n} (hn : r + t = n) (h : mat γ = (blk4 (Pm D.host.E hn)ᵀ 0 0 (Pm D.host.E hn)ᵀ).map (incA D)) :
    mat γ = blk4 ((uP D hn).1.map (incA D)) 0 0 (adj (((uP D hn)⁻¹).1.map (incA D))) := by
  rw [h, block_matrix_map]
  show blk4 _ _ _ _ = blk4 _ _ _ (adj ((Pm D.host.E hn).map (incA D)))
  rw [adj_Pm]
  simp [uP]

def xz {m : ℕ} (X : Mx D m n) : Mx D m (n + n) :=
  Matrix.of fun i k => Sum.elim (X i) (fun _ => (0 : AE D)) (finSumFinEquiv.symm k)

theorem xPart_xz {m : ℕ} (X : Mx D m n) : xPart (xz X) = X := by
  ext i j
  show Sum.elim (X i) (fun _ => (0 : AE D)) (finSumFinEquiv.symm (finSumFinEquiv (Sum.inl j))) = _
  rw [Equiv.symm_apply_apply]; rfl

theorem yPart_xz {m : ℕ} (X : Mx D m n) : yPart (xz X) = 0 := by
  ext i j
  show Sum.elim (X i) (fun _ => (0 : AE D)) (finSumFinEquiv.symm (finSumFinEquiv (Sum.inr j))) = _
  rw [Equiv.symm_apply_apply]; rfl

theorem psi_ip_symm (ψ : AddChar (AF D.host.F) ℂ) (V : HSp D) (x y : Mx D V.rank t) :
    ψ (trA (Matrix.trace (ip V x y))) = ψ (trA (Matrix.trace (ip V y x))) := by
  have hs := pairing_symm (n := t) (isHermND_gram V) ψ x y
  have e : ∀ a b : Mx D V.rank t, GlobalTheory.IndefiniteRowSideFullHecke.GramMatrixBlocks.pairing V.gram ψ a b = ψ (trA (Matrix.trace (ip V a b))) :=
    fun a b => by
      simp only [GlobalTheory.IndefiniteRowSideFullHecke.GramMatrixBlocks.pairing, GlobalTheory.SiegelWeilLitCompare.gramQ_eq]
      rfl
  rw [← e, ← e, hs]

end PositivityTheory.Rg.Rsw.L.LPartFT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTE =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFT =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFT", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTA\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BlockMatrixMul\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinHeisenbergSchwartzStatement\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EisensteinRationalPoints\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullbackSchwartzLinearIndependentStatement\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTC\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTD\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTE\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFTB\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS

attribute [local instance] Formalism.BasicNotions.Host.cmStar

open PositivityTheory.GramSchwartzFunctions.EC GlobalTheory.CompanionTheory.EisCovar

namespace PositivityTheory.Rg.Rsw.L.LPartFT

variable {D : D7} {n r t : ℕ}

def h0 (D : D7) (p : ℕ) : HermE D p := ⟨0, by simp⟩

theorem j_zero (ψ : AddChar (AF D.host.F) ℂ) (V : HSp D) {p : ℕ} (y : Mx D V.rank p) :
    ψ (halfTr (Matrix.trace (HMul.hMul ((h0 D p).1.map (incA D)) (GlobalTheory.StdUnn.inner V y y) : Mx D p p))) = 1 := by
  simp [h0, halfTr]

theorem clause1 {V : HSp D} {ψ χ θ μ ω} (hS : SetW D n V ψ χ θ μ ω) (hn : r + t = n) (M : Maps D hn)
    (μr : Measure (Mx D V.rank r)) (hμr : ∃ 𝓕, IsCovolOne (ratMx D V.rank r) μr 𝓕) (Φ : schwartzA θ V.rank n) :
    (ω M.w Φ).1 0 = ∫ x, Φ.1 (jn hn x 0) ∂μr := by
  have hmat : mat M.w = (repMat (D.sp.cm.sig : D.host.E →+* D.host.E) (h0 D r).1 1).map (incA D) := by
    rw [h0, repMat_zero, mA_one, Matrix.mul_one, mat_w]
  have hγ : M.w ∈ GF D n := mem_gf_of _ (wr_unit (D.sp.cm.sig : D.host.E →+* D.host.E) hn).1 (wr_unit (D.sp.cm.sig : D.host.E →+* D.host.E) hn).2 (mat_w hn M)
  rw [partial_fourier_second_term hS Φ r (by omega) μr hμr (c₁ D hn) 1 (compl_c₁ hn) (h0 D r) M.w hγ hmat]
  unfold J pull
  refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
  beta_reduce
  rw [j_zero, mul_one]
  exact congrArg Φ.1 (mul_c₁ hn y)

theorem clause2 {θ : InfFam D} (hθ : IsInfFam θ) {V : HSp D} (hn : r + t = n) (Φ : schwartzA θ V.rank n) :
    (fun x => Φ.1 (jn hn x 0)) ∈ schwartzA θ V.rank r := by
  have := GlobalTheory.T.pullback_schwartz_linear_independent D θ hθ V.rank r n (c₁ D hn) (linInd_c₁ hn) Φ.1 Φ.2
  convert this using 1
  funext x
  exact congrArg Φ.1 (mul_c₁ hn x).symm

theorem clause3 {V : HSp D} {ψ χ θ μ ω} (hS : SetW D n V ψ χ θ μ ω) (hn : r + t = n) (M : Maps D hn)
    (μt : Measure (Mx D V.rank t)) (hμt : ∃ 𝓕, IsCovolOne (ratMx D V.rank t) μt 𝓕) (Φ : schwartzA θ V.rank n)
    (w : G D t) (hw : IsW w) (x : Mx D V.rank r) (v₀ : Mx D V.rank t) :
    (ω (M.emb w) Φ).1 (jn hn x v₀) = ∫ v, Φ.1 (jn hn x v) * ψ (trA (Matrix.trace (ip V v₀ v))) ∂μt := by
  have hγ : M.emb w ∈ GF D n := mem_gf_of _ (second_block_weyl_unitary (D.sp.cm.sig : D.host.E →+* D.host.E) hn).1 (second_block_weyl_unitary (D.sp.cm.sig : D.host.E →+* D.host.E) hn).2 (mat_emb hn M w hw)
  obtain ⟨γQ, hQ, hmQ⟩ := (GlobalTheory.CompanionTheory.RatPtsUnn.ratPtsUnn D n).2.1 _ (gQ_unit (D.sp.cm.sig : D.host.E →+* D.host.E) hn).1 (gQ_unit (D.sp.cm.sig : D.host.E →+* D.host.E) hn).2
  have hγ' : γQ⁻¹ * M.emb w ∈ GF D n := (GF D n).mul_mem ((GF D n).inv_mem hQ) hγ
  have hmat' : mat (γQ⁻¹ * M.emb w) =
      (repMat (D.sp.cm.sig : D.host.E →+* D.host.E) (h0 D t).1 (Pm D.host.E hn)).map (incA D) := by
    have h1 : mat γQ * (repMat (D.sp.cm.sig : D.host.E →+* D.host.E) (h0 D t).1 (Pm D.host.E hn)).map (incA D) =
        mat (M.emb w) := by
      rw [hmQ, ← Matrix.map_mul, h0, key3, mat_emb hn M w hw]
    rw [mat_mul', ← h1, ← Matrix.mul_assoc, mat_inv_mul', Matrix.one_mul]
  have hψ := hS.1
  have hθ := hS.2.2.1
  have hΨm := GlobalTheory.T.eisenstein_heisenberg_schwartz D ψ hψ θ hθ V n (HMul.hMul (xz (jn hn x v₀)) (mat (M.emb w))) Φ.1 Φ.2
  let Ψ : schwartzA θ V.rank n := ⟨Heisenberg₂ ψ V (HMul.hMul (xz (jn hn x v₀)) (mat (M.emb w))) Φ.1, hΨm⟩
  have hc := covar_w hS (M.emb w) hγ (HMul.hMul (xz (jn hn x v₀)) (mat (M.emb w))) Φ Ψ rfl
  have hv : HMul.hMul (HMul.hMul (xz (jn hn x v₀)) (mat (M.emb w))) (mat (M.emb w)⁻¹) = xz (jn hn x v₀) := by
    rw [Matrix.mul_assoc, mat_mul_inv', Matrix.mul_one]
  rw [hv] at hc
  have step1 : (ω (M.emb w) Φ).1 (jn hn x v₀) = (ω (M.emb w) Ψ).1 0 := by
    rw [hc]
    simp [PositivityTheory.GramSchwartzFunctions.EC.Heisenberg₂, xPart_xz, yPart_xz,
      GlobalTheory.StdUnn.inner, halfTr]
  have step2 : (ω (M.emb w) Ψ).1 0 = (ω (γQ⁻¹ * M.emb w) Ψ).1 0 := by
    conv_lhs => rw [show M.emb w = γQ * (γQ⁻¹ * M.emb w) by group]
    rw [map_mul, mul_apply_eq_comp]
    obtain ⟨-, hχ, -, -, hω⟩ := hS
    let u := uP D hn
    let a : GL (Fin n) (AE D) := Matrix.GeneralLinearGroup.map (incA D) u
    have hdet : Matrix.GeneralLinearGroup.det a =
        Units.map (incA D).toMonoidHom (Matrix.GeneralLinearGroup.det u) := by
      apply Units.ext
      simp [a, Matrix.GeneralLinearGroup.map]
      exact (RingHom.map_det _ _).symm
    have habs : absA D (Matrix.GeneralLinearGroup.det a) = 1 := by
      rw [hdet]
      exact absE_inclR _
    have hchar : χ (Matrix.GeneralLinearGroup.det a) = 1 := by
      rw [hdet]
      exact hχ.2 _
    have hinv : (a⁻¹).1 = (u⁻¹).1.map (incA D) := by
      show ((Matrix.GeneralLinearGroup.map (incA D) u)⁻¹).1 = _
      rw [← map_inv]
      rfl
    have hmatQ : mat γQ = blk4 a.1 0 0 (adj (a⁻¹).1) := by
      rw [hinv]
      exact mat_gQ hn hmQ
    rw [hω.levi γQ a hmatQ _, habs, hchar]
    simp [npow]
  rw [step1, step2, partial_fourier_second_term hS Ψ t (by omega) μt hμt (c₃ D hn) (Pm D.host.E hn) (compl_c₃ hn) (h0 D t) _ hγ' hmat']
  have hx : xPart (HMul.hMul (xz (jn hn x v₀)) (mat (M.emb w))) = jn hn x 0 := by
    rw [mat_emb' hn M w hw, x_part_mul_block, xPart_xz, yPart_xz, jn_mul_bl]; simp
  have hy : yPart (HMul.hMul (xz (jn hn x v₀)) (mat (M.emb w))) = jn hn 0 v₀ := by
    rw [mat_emb' hn M w hw, y_part_mul_block, xPart_xz, yPart_xz, jn_mul_bl]; simp
  have hip1 : ∀ {a b : ℕ} (z : Mx D V.rank b), ip V (0 : Mx D V.rank a) z = 0 := fun z => by simp [ip, mm, adj]
  have hip2 : ∀ {a b : ℕ} (z : Mx D V.rank a), ip V z (0 : Mx D V.rank b) = 0 := fun z => by simp [ip, mm]
  have htrace (a a' : Mx D V.rank r) (b b' : Mx D V.rank t) :
      Matrix.trace (GlobalTheory.StdUnn.inner V (jn hn a b) (jn hn a' b')) =
        Matrix.trace (ip V a a') + Matrix.trace (ip V b b') := by
    simp only [Matrix.trace, Matrix.diag, GlobalTheory.StdUnn.inner, ip, mm]
    rw [← (ee hn).sum_comp, Fintype.sum_sum_type]
    simp only [Matrix.mul_apply, adj, Matrix.transpose_apply, Matrix.map_apply, jn_ee,
      Matrix.fromCols_apply_inl, Matrix.fromCols_apply_inr]
  unfold J pull
  refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
  beta_reduce
  rw [j_zero, mul_one]
  show PositivityTheory.GramSchwartzFunctions.EC.Heisenberg₂ ψ V _ Φ.1 _ = _
  rw [show (HMul.hMul y ((c₃ D hn).map (incA D)) : Mx D V.rank n) = jn hn 0 y from mul_c₃ hn y]
  simp only [PositivityTheory.GramSchwartzFunctions.EC.Heisenberg₂]
  rw [hx, hy, jn_add, htrace, htrace, hip1, hip1, hip2]
  simp only [Matrix.trace_zero, zero_add, add_zero, halfTr, map_zero, mul_zero]
  rw [psi_ip_symm, mul_comm]

end PositivityTheory.Rg.Rsw.L.LPartFT

namespace PositivityTheory.Rg.Rsw.L

theorem partFT : PartFT := by
  intro D n r t hn M V ψ hψ χ hχ hη θ hθ μ hμ ω hω μr μt hμr hμt Φ
  have hS : LPartFT.SetW D n V ψ χ θ μ ω := ⟨hψ, hχ, hθ, hμ, hω⟩
  exact ⟨LPartFT.clause1 hS hn M μr hμr Φ, LPartFT.clause2 hθ hn Φ,
    fun w hw x v₀ => LPartFT.clause3 hS hn M μt hμt Φ w hw x v₀⟩

end PositivityTheory.Rg.Rsw.L
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.ThetaIdempotents.ThetaCoefficients.LPartFT =====
