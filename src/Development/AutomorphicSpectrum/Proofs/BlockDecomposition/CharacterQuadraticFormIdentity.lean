module

public import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousThetaKernelComponents
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.RealSizeNonneg
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IntegrableMajorantCoordinateCosetMeasure
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixOfMemAdelicSchwartz
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchwartzBruhatAdelicMatrixContinuousLeMajorant
public import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsNormTheta2TailLeOfLeOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResEtaOfIsWeilSch
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaLiftEisensteinLevelSubgroup
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
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg
import Mathlib.Algebra.GroupWithZero.Torsion
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Basify

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousThetaKernelComponentsStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableSchwartzRestrictionColumns, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableSchwartzRestrictionColumnsStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SchwartzExistsRealMajorant, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaFourierCoefficientWeylIntegral, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaFourierCoefficientWeylIntegralStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationFourierCoefficient, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationFourierCoefficientStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationThetaIntegral, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationThetaIntegralStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterQuadraticFormIdentity

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousThetaKernelComponentsStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousThetaKernelComponentsStatement", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousThetaKernelComponents\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw PositivityTheory.Rg.Rsw.L
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.continuous_theta_kernel_components : ∀ {D : D7} {t ρ : ℕ} {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) (V : HSp D) (b₀ : HermE D ρ) (b : hermA D t), Continuous (fun z : Mx D V.rank ρ × Mx D V.rank t => pch ψ b.1 (ip V z.2 z.2)) ∧ Continuous (fun z : Mx D V.rank ρ × Mx D V.rank t => yv V b₀ z) ∧ Continuous (fun q : Mx D ρ t × (Mx D V.rank ρ × Mx D V.rank t) => ψ (trA (Matrix.trace (pr b₀ q.1 (yv V b₀ q.2))))) ∧ Continuous (fun z : Mx D V.rank ρ × Mx D V.rank t => pch ψ b.1 (qv V b₀ z)) ∧ (∀ T, ‖pch ψ b.1 T‖ = 1) ∧ ∀ u, ‖ψ u‖ = 1 := by
  first | exact @GlobalTheory.CompanionTheory.RCellCont.continuity_characters_projection
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousThetaKernelComponentsStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableSchwartzRestrictionColumns =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableSchwartzRestrictionColumns", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.RealSizeNonneg\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IntegrableMajorantCoordinateCosetMeasure\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsSchwartzBruhatAdelicMatrixOfMemAdelicSchwartz\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SchwartzBruhatAdelicMatrixContinuousLeMajorant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw PositivityTheory.Rg.Rsw.L
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.CompanionTheory.ColSlice

variable {D : D7} {n r t a : ℕ}

def colIdx (hn : r + t = n) (j : Fin t) : Fin n := finCongr hn (finSumFinEquiv (Sum.inr j))

theorem colIdx_injective (hn : r + t = n) : Function.Injective (colIdx hn) := fun _ _ h =>
  Sum.inr_injective (finSumFinEquiv.injective ((finCongr hn).injective h))

def colPr (hn : r + t = n) (y : Mx D a n) : Mx D a t := y.submatrix id (colIdx hn)

theorem colPr_jn (hn : r + t = n) (x : Mx D a r) (v : Mx D a t) : colPr hn (jn hn x v) = v := by
  ext i j
  simp [colPr, colIdx, jn, Matrix.submatrix_apply]

theorem continuous_colPr (hn : r + t = n) : Continuous (colPr (D := D) (a := a) hn) :=
  continuous_id.matrix_submatrix _ _

theorem continuous_jn (hn : r + t = n) (x : Mx D a r) : Continuous (jn (D := D) hn x) :=
  continuous_matrix fun i j => by
    show Continuous fun v : Mx D a t => Matrix.fromCols x v i ((finSumFinEquiv.trans (finCongr hn)).symm j)
    rcases (finSumFinEquiv.trans (finCongr hn)).symm j with s | s
    · exact continuous_const
    · exact continuous_id.matrix_elem i s

theorem realSize_le (θ : InfFam D) (hn : r + t = n) (x : Mx D a r) (v : Mx D a t) :
    GlobalTheory.Unf.realSize θ v ≤ GlobalTheory.Unf.realSize θ (jn hn x v) := by
  unfold GlobalTheory.Unf.realSize
  refine Finset.sum_le_sum fun τ _ => Finset.sum_le_sum fun i _ => ?_
  have e : ∀ j, compAt θ τ v i j = compAt θ τ (jn hn x v) i (colIdx hn j) := fun j => by
    have := colPr_jn hn x v
    conv_lhs => rw [← this]
    rfl
  simp only [e]
  have h := Finset.sum_le_univ_sum_of_nonneg (f := fun j => ‖compAt θ τ (jn hn x v) i j‖)
    (s := Finset.univ.map ⟨colIdx hn, colIdx_injective hn⟩) fun _ => norm_nonneg _
  rw [Finset.sum_map] at h
  exact h

theorem maj_jn_le (θ : InfFam D) (hn : r + t = n) (K : Set (Mx D a n)) (N : ℕ) (x : Mx D a r) (v : Mx D a t) :
    GlobalTheory.Unf.maj θ K N (jn hn x v) ≤ GlobalTheory.Unf.maj θ (colPr hn '' K) N v := by
  by_cases hb : GlobalTheory.Unf.InBox K (jn hn x v)
  · have hb' : GlobalTheory.Unf.InBox (colPr hn '' K) v := by
      obtain ⟨k, hk, h0⟩ := hb
      refine ⟨colPr hn k, ⟨k, hk, rfl⟩, ?_⟩
      ext i j
      have := congrFun (congrFun h0 i) (colIdx hn j)
      have e : v i j = jn hn x v i (colIdx hn j) := by
        conv_lhs => rw [← colPr_jn hn x v]
        rfl
      show finPart D (v i j - k i (colIdx hn j)) = 0
      rw [e]
      exact this
    unfold GlobalTheory.Unf.maj
    rw [if_pos hb, if_pos hb']
    have h1 := GlobalTheory.Unf.realSize_nonneg θ v
    have h2 := realSize_le θ hn x v
    gcongr
  · have h0 : GlobalTheory.Unf.maj θ K N (jn hn x v) = 0 := by unfold GlobalTheory.Unf.maj; rw [if_neg hb]
    rw [h0]
    exact GlobalTheory.Unf.maj_nonneg θ _ N v

theorem integrable_slice : ∀ {D : D7} {n r t : ℕ} {θ : InfFam D} (hθ : IsInfFam θ) {a : ℕ} (hn : r + t = n)
    (μt : Measure (Mx D a t)) [μt.IsAddHaarMeasure] (Φ : schwartzA θ a n) (x : Mx D a r),
    Integrable (fun v => Φ.1 (jn hn x v)) μt := by
  intro D n r t θ hθ a hn μt _ Φ x
  obtain ⟨i1, i2, i3, i4, -⟩ := lattice_Mx D a t
  haveI : BorelSpace (Mx D a t) := ⟨rfl⟩
  obtain ⟨hc, K, hK, hC⟩ := GlobalTheory.SchwartzMaj.continuous_and_le_maj D θ hθ a n Φ.1
    (GlobalTheory.SchwartzPure.isSchwartzBruhat_of_mem_schwartzA D θ hθ a n Φ.1 Φ.2)
  obtain ⟨N, hN⟩ := GlobalTheory.Unf.MajInt.maj_integrable D θ hθ a t (fun _ _ => True) 0 μt inferInstance
    (.of_forall fun _ _ _ h => (h trivial).elim) (fun s _ => map_add_right_eq_self μt s)
  obtain ⟨C, hC⟩ := hC N
  have hK' : IsCompact (colPr hn '' K) := hK.image (continuous_colPr hn)
  have hC0 : ∀ v, ‖Φ.1 (jn hn x v)‖ ≤ |C| * GlobalTheory.Unf.maj θ (colPr hn '' K) N v := fun v =>
    (hC _).trans ((mul_le_mul_of_nonneg_right (le_abs_self C) (GlobalTheory.Unf.maj_nonneg θ K N _)).trans
      (mul_le_mul_of_nonneg_left (maj_jn_le θ hn K N x v) (abs_nonneg C)))
  exact ((hN _ hK').const_mul |C|).mono' (hc.comp (continuous_jn hn x)).aestronglyMeasurable (.of_forall hC0)

end GlobalTheory.CompanionTheory.ColSlice
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableSchwartzRestrictionColumns =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableSchwartzRestrictionColumnsStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableSchwartzRestrictionColumnsStatement", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableSchwartzRestrictionColumns\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw PositivityTheory.Rg.Rsw.L
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableSchwartzRestrictionColumnsStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SchwartzExistsRealMajorant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SchwartzExistsRealMajorant", "h": "module\n\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsNormTheta2TailLeOfLeOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped SchwartzMap

namespace GlobalTheory.CompanionTheory.SchwartzMaj

theorem exists_nonneg_schwartz_majorant (E : Type) [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] (f : SchwartzMap E ℂ) :
    ∃ F : SchwartzMap E ℂ, ∀ x, (F x).im = 0 ∧ ‖f x‖ ≤ (F x).re := by
  obtain ⟨Φ, r, hΦ, hr⟩ := GlobalTheory.CompanionTheory.EisRk1.exists_schwartz_majorant f
  refine ⟨Φ, fun x => ?_⟩
  rw [hΦ x]
  exact ⟨Complex.ofReal_im _, by rw [Complex.ofReal_re]; exact hr x⟩

end GlobalTheory.CompanionTheory.SchwartzMaj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SchwartzExistsRealMajorant =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaFourierCoefficientWeylIntegral =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaFourierCoefficientWeylIntegral", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\nimport Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg\nimport Mathlib.Algebra.GroupWithZero.Torsion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw PositivityTheory.Rg.Rsw.L
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.CompanionTheory.RCellInv

variable {D : D7} {t ρ : ℕ}

theorem block_matrix_mul {n : ℕ} (a b c d a' b' c' d' : Mx D n n) :
    (blk4 a b c d * blk4 a' b' c' d' : Mx D (n + n) (n + n)) =
      blk4 (a * a' + b * c') (a * b' + b * d') (c * a' + d * c') (c * b' + d * d') := by
  simp only [blk4]
  rw [Matrix.submatrix_mul_equiv, Matrix.fromBlocks_multiply]

theorem mat_mul_mat {n : ℕ} (g h : G D n) : mat (g * h) = mat g * mat h := by
  simp only [mat, map_mul, Units.val_mul]

theorem adj_gram (b₀ : HermE D ρ) : adj (b₀.1.map (incA D)) = b₀.1.map (incA D) := by
  ext i j
  have h := congrFun (congrFun b₀.2 i) j
  simp only [adj, Matrix.transpose_apply, Matrix.map_apply] at h ⊢
  rw [GlobalTheory.DualPairCheck.cA_incA]
  exact congrArg (incA D) h

theorem adj_pr (b₀ : HermE D ρ) (x y : Mx D ρ t) : adj (pr b₀ x y) = pr b₀ y x := by
  have adj_mul_local {l m n : ℕ} (a : Mx D l m) (b : Mx D m n) :
      adj (a * b) = adj b * adj a := by
    unfold adj
    rw [Matrix.map_mul, Matrix.transpose_mul]
  simp only [pr, adj_mul_local, adj_adj, adj_gram, Matrix.mul_assoc]

theorem pr_neg_left (b₀ : HermE D ρ) (x y : Mx D ρ t) : pr b₀ (-x) y = -pr b₀ x y := by
  simp only [pr, adj_neg, Matrix.neg_mul]

theorem trA_trace_pr_swap (b₀ : HermE D ρ) (x y : Mx D ρ t) :
    trA (Matrix.trace (pr b₀ y x)) = trA (Matrix.trace (pr b₀ x y)) := by
  rw [← adj_pr b₀ x y, _root_.GlobalTheory.MixModel.trace_adj]
  exact GlobalTheory.DualPairCheck.trace_cA _

theorem conj_char {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) (u : AF D.host.F) :
    conj (ψ u) = ψ (-u) := by
  rw [AddChar.map_neg_eq_inv, Complex.inv_eq_conj (hψ.2.1 u)]

theorem det_neg_one (t : ℕ) :
    Matrix.GeneralLinearGroup.det (-1 : GL (Fin t) (AE D)) =
      Units.map (incA D).toMonoidHom ((-1 : (D.host.E)ˣ) ^ t) := by
  ext
  simp [Matrix.GeneralLinearGroup.val_det_apply, Matrix.det_neg]

theorem absA_det_neg_one (t : ℕ) : absA D (Matrix.GeneralLinearGroup.det (-1 : GL (Fin t) (AE D))) = 1 := by
  have h : absA D (Matrix.GeneralLinearGroup.det (-1 : GL (Fin t) (AE D))) ^ 2 = 1 := by
    rw [← map_pow, ← map_pow, neg_one_sq, map_one, map_one]
  exact (pow_eq_one_iff.1 h).resolve_right two_ne_zero

theorem weyl_sq {ψ : AddChar (AF D.host.F) ℂ} {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) {θ : InfFam D}
    {b₀ : HermE D ρ} {μ : Measure (Mx D ρ t)} {Ω : G D t → Mx D ρ t → ℂ} (hΩ : IsTh ψ χ θ b₀ μ Ω)
    {w : G D t} (hw : IsW w) (h : G D t) (y : Mx D ρ t) : Ω (w * (w * h)) y = Ω h (-y) := by
  have hm : mat (w * w) = blk4 (-1 : GL (Fin t) (AE D)).1 0 0 (adj ((-1 : GL (Fin t) (AE D))⁻¹).1) := by
    have hi : ((-1 : GL (Fin t) (AE D))⁻¹) = -1 := by
      rw [inv_eq_iff_mul_eq_one]
      simp
    have ha : adj (-1 : Mx D t t) = -1 := by
      rw [adj_neg, adj_one]
    rw [hi, mat_mul_mat, show mat w = _ from hw, block_matrix_mul]
    simp [ha]
  have hl := hΩ.levi (w * w) (-1) hm h y
  have hc : (χ (Matrix.GeneralLinearGroup.det (-1 : GL (Fin t) (AE D))) : ℂ) = 1 := by
    rw [det_neg_one]
    have := hχ.2 ((-1 : (D.host.E)ˣ) ^ t)
    rw [this]
    simp
  rw [← mul_assoc, hl, hc, absA_det_neg_one]
  simp [npow]

end GlobalTheory.CompanionTheory.RCellInv


open GlobalTheory.CompanionTheory.RCellInv in
theorem GlobalTheory.CompanionTheory.RCellInv.fourier_inv : ∀ {D : D7} {t ρ : ℕ} {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) {θ : InfFam D} {b₀ : HermE D ρ} {μ : Measure (Mx D ρ t)} {Ω : G D t → Mx D ρ t → ℂ} (hΩ : IsTh ψ χ θ b₀ μ Ω) {nb : hermA D t → G D t} (hnb : IsNMap nb) {w : G D t} (hw : IsW w) (b : hermA D t) (y₀ : Mx D ρ t), ∫ y, ψ (trA (Matrix.trace (pr b₀ y y₀))) * conj (Ω (w * nb b) y) ∂μ = conj (ψ (halfTr (Matrix.trace (mm b.1 (pr b₀ y₀ y₀)))) * Ω 1 y₀) := by
  intro D t ρ ψ hψ χ hχ θ b₀ μ Ω hΩ nb hnb w hw b y₀
  have hint : ∀ y, ψ (trA (Matrix.trace (pr b₀ y y₀))) * conj (Ω (w * nb b) y) =
      conj (Ω (w * nb b) y * ψ (trA (Matrix.trace (pr b₀ (-y₀) y)))) := by
    intro y
    have hneg : -trA (Matrix.trace (pr b₀ (-y₀) y)) = trA (Matrix.trace (pr b₀ y y₀)) := by
      rw [pr_neg_left, Matrix.trace_neg, trA_trace_pr_swap b₀ y₀ y]
      simp only [trA, map_neg, neg_neg]
    rw [map_mul, conj_char hψ, hneg, mul_comm]
  have hu := hΩ.unip (nb b) b.1 (hnb b) 1 y₀
  rw [mul_one] at hu
  simp only [hint]
  rw [integral_conj, ← hΩ.weyl w hw (w * nb b) (-y₀), weyl_sq hχ hΩ hw, neg_neg, hu]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaFourierCoefficientWeylIntegral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaFourierCoefficientWeylIntegralStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaFourierCoefficientWeylIntegralStatement", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaFourierCoefficientWeylIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw PositivityTheory.Rg.Rsw.L
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.theta_fourier_coefficient_weyl_integral : ∀ {D : D7} {t ρ : ℕ} {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) {θ : InfFam D} {b₀ : HermE D ρ} {μ : Measure (Mx D ρ t)} {Ω : G D t → Mx D ρ t → ℂ} (hΩ : IsTh ψ χ θ b₀ μ Ω) {nb : hermA D t → G D t} (hnb : IsNMap nb) {w : G D t} (hw : IsW w) (b : hermA D t) (y₀ : Mx D ρ t), ∫ y, ψ (trA (Matrix.trace (pr b₀ y y₀))) * conj (Ω (w * nb b) y) ∂μ = conj (ψ (halfTr (Matrix.trace (mm b.1 (pr b₀ y₀ y₀)))) * Ω 1 y₀) := by
  first | exact @GlobalTheory.CompanionTheory.RCellInv.fourier_inv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaFourierCoefficientWeylIntegralStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationFourierCoefficient =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationFourierCoefficient", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw PositivityTheory.Rg.Rsw.L

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.CompanionTheory.CellVal

section Blocks

variable {R : Type} [CommRing R] {n r t : ℕ} (hn : r + t = n)

theorem block_mul₂ (a a' : Matrix (Fin r) (Fin r) R) (b b' : Matrix (Fin r) (Fin t) R)
    (c c' : Matrix (Fin t) (Fin r) R) (d d' : Matrix (Fin t) (Fin t) R) :
    bl hn a b c d * bl hn a' b' c' d' =
      bl hn (a * a' + b * c') (a * b' + b * d') (c * a' + d * c') (c * b' + d * d') := by
  simp only [bl]
  rw [Matrix.submatrix_mul_equiv, Matrix.fromBlocks_multiply]

theorem blockRowSubstitution_one : bl hn (1 : Matrix (Fin r) (Fin r) R) 0 0 1 = 1 := by
  simp only [bl]
  rw [Matrix.fromBlocks_one, Matrix.submatrix_one_equiv]

theorem blockMatrix_zero : bl hn (0 : Matrix (Fin r) (Fin r) R) 0 0 0 = 0 := by
  simp only [bl, Matrix.fromBlocks_zero]
  rfl

theorem det_bl_unip (y : Matrix (Fin r) (Fin t) R) : (bl hn 1 y 0 1).det = 1 := by
  simp only [bl]
  rw [Matrix.det_submatrix_equiv_self, Matrix.det_fromBlocks_zero₂₁]
  simp

theorem trace_bl_last (b : Matrix (Fin t) (Fin t) R) (Z : Matrix (Fin n) (Fin n) R) :
    Matrix.trace (bl hn 0 0 0 b * Z) =
      Matrix.trace (b * Z.submatrix (finSumFinEquiv.trans (finCongr hn) ∘ Sum.inr)
        (finSumFinEquiv.trans (finCongr hn) ∘ Sum.inr)) := by
  set e := finSumFinEquiv.trans (finCongr hn) with he
  have h1 : Z = (Matrix.fromBlocks (Z.submatrix (e ∘ Sum.inl) (e ∘ Sum.inl)) (Z.submatrix (e ∘ Sum.inl) (e ∘ Sum.inr))
      (Z.submatrix (e ∘ Sum.inr) (e ∘ Sum.inl)) (Z.submatrix (e ∘ Sum.inr) (e ∘ Sum.inr))).submatrix e.symm e.symm := by
    ext i j
    obtain ⟨i, rfl⟩ := e.surjective i
    obtain ⟨j, rfl⟩ := e.surjective j
    rcases i with i | i <;> rcases j with j | j <;> simp
  conv_lhs => rw [h1]
  simp only [bl, ← he]
  rw [Matrix.submatrix_mul_equiv, Matrix.fromBlocks_multiply]
  simp only [Matrix.trace, Matrix.diag, Matrix.submatrix_apply]
  rw [Equiv.sum_comp e.symm (fun s => Matrix.fromBlocks _ _ _ _ s s), Fintype.sum_sum_type]
  simp

end Blocks

section Frames

variable {D : D7} {a n r t : ℕ} (hn : r + t = n)

theorem jn_mul_unip (x : Mx D a r) (y : Mx D r t) :
    (HMul.hMul (jn hn x 0) (bl hn 1 y 0 1) : Mx D a n) = jn hn x (mm x y) := by
  simp only [jn, bl]
  rw [Matrix.submatrix_mul_equiv, Matrix.fromCols_mul_fromBlocks]
  simp [mm]

theorem trace_inner_jn (V : HSp D) (b : Mx D t t) (x : Mx D V.rank r) (v : Mx D V.rank t) :
    Matrix.trace (HMul.hMul (bl hn 0 0 0 b) (GlobalTheory.StdUnn.inner V (jn hn x v) (jn hn x v)) : Mx D n n) =
      Matrix.trace (mm b (ip V v v)) := by
  rw [trace_bl_last]
  congr 1
  have h : (GlobalTheory.StdUnn.inner V (jn hn x v) (jn hn x v)).submatrix (finSumFinEquiv.trans (finCongr hn) ∘ Sum.inr)
      (finSumFinEquiv.trans (finCongr hn) ∘ Sum.inr) = ip V v v := by
    ext i j
    simp [GlobalTheory.StdUnn.inner, ip, mm, jn, adj, Matrix.mul_apply]
  rw [h]

def unipGL (y : Mx D r t) : GL (Fin n) (AE D) where
  val := bl hn 1 y 0 1
  inv := bl hn 1 (-y) 0 1
  val_inv := by rw [block_mul₂]; simpa using blockRowSubstitution_one hn
  inv_val := by rw [block_mul₂]; simpa using blockRowSubstitution_one hn

theorem det_unipGL (y : Mx D r t) :
    Matrix.GeneralLinearGroup.det (unipGL hn y : GL (Fin n) (AE D)) = (1 : (AE D)ˣ) :=
  Units.ext (det_bl_unip hn y)

theorem adj_bl_unip_neg (y : Mx D r t) :
    adj (bl hn (1 : Mx D r r) (-y) 0 (1 : Mx D t t)) = bl hn (1 : Mx D r r) 0 (-adj y) (1 : Mx D t t) := by
  ext i j
  obtain ⟨i, rfl⟩ := (finSumFinEquiv.trans (finCongr hn)).surjective i
  obtain ⟨j, rfl⟩ := (finSumFinEquiv.trans (finCongr hn)).surjective j
  rcases i with i | i <;> rcases j with j | j <;>
    simp [adj, bl, Matrix.one_apply, apply_ite (cA D)]
  all_goals by_cases h : i = j <;> simp [h, eq_comm]

end Frames

theorem weil_translate_frame {D : D7} {n r t : ℕ} (hP : PartFT) {hn : r + t = n} (M : Maps D hn) (V : HSp D)
    {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ)
    (hη : ResEta D χ V.rank) {θ : InfFam D} (hθ : IsInfFam θ) {μ : Measure (Mx D V.rank n)}
    (hμ : ∃ 𝓕, IsCovolOne (ratMx D V.rank n) μ 𝓕) {ω : G D n →* Module.End ℂ (schwartzA θ V.rank n)}
    (hω : IsWeilSch ψ χ θ V μ ω) {μr : Measure (Mx D V.rank r)} (hμr : ∃ 𝓕, IsCovolOne (ratMx D V.rank r) μr 𝓕)
    {μt : Measure (Mx D V.rank t)} (hμt : ∃ 𝓕, IsCovolOne (ratMx D V.rank t) μt 𝓕) (Φ : schwartzA θ V.rank n)
    {nb : hermA D t → G D t} (hnb : IsNMap nb) {w : G D t} (hw : IsW w) (b : hermA D t) (y : Mx D r t)
    (x : Mx D V.rank r) :
    (ω (M.sh y * M.emb (w * nb b) * 1) Φ).1 (jn hn x 0) =
      ∫ v, pch ψ b.1 (ip V v v) * Φ.1 (jn hn x v) * ψ (trA (Matrix.trace (ip V (mm x y) v))) ∂μt := by
  have e1 : ω (M.sh y * M.emb (w * nb b) * 1) Φ = ω (M.sh y) (ω (M.emb w) (ω (M.emb (nb b)) Φ)) := by
    simp only [mul_one, map_mul, Module.End.mul_apply]
  have hdet := det_unipGL hn y
  have hsh : mat (M.sh y) = blk4 (unipGL hn y).1 0 0 (adj ((unipGL hn y)⁻¹).1) := by
    rw [M.sh_mat]
    have : ((unipGL hn y)⁻¹).1 = bl hn 1 (-y) 0 1 := rfl
    rw [this, adj_bl_unip_neg]
    rfl
  have hemb : mat (M.emb (nb b)) = blk4 1 (bl hn 0 0 0 b.1) 0 1 := by
    rw [M.emb_mat (nb b) 1 b.1 0 1 (hnb b), blockRowSubstitution_one, blockMatrix_zero]
  rw [e1, hω.levi (M.sh y) (unipGL hn y) hsh, hdet]
  have hpow : npow (absA D 1) ((V.rank : ℂ) / 2) = 1 := by simp [npow]
  rw [map_one, hpow]
  simp only [Circle.coe_one, one_mul]
  have hj : (HMul.hMul (jn hn x 0) (unipGL hn y).1 : Mx D V.rank n) = jn hn x (mm x y) := jn_mul_unip hn x y
  rw [hj, (hP D n r t hn M V ψ hψ χ hχ hη θ hθ μ hμ ω hω μr μt hμr hμt (ω (M.emb (nb b)) Φ)).2.2 w hw x (mm x y)]
  refine integral_congr_ae (Filter.Eventually.of_forall fun v => ?_)
  simp only
  rw [hω.unip (M.emb (nb b)) _ hemb, trace_inner_jn]
  rfl

end GlobalTheory.CompanionTheory.CellVal

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationFourierCoefficient =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationFourierCoefficientStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationFourierCoefficientStatement", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationFourierCoefficient\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw PositivityTheory.Rg.Rsw.L
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.weil_representation_fourier_coefficient : ∀ {D : D7} {n r t : ℕ} (hP : PartFT) {hn : r + t = n} (M : Maps D hn) (V : HSp D) {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) (hη : ResEta D χ V.rank) {θ : InfFam D} (hθ : IsInfFam θ) {μ : Measure (Mx D V.rank n)} (hμ : ∃ 𝓕, IsCovolOne (ratMx D V.rank n) μ 𝓕) {ω : G D n →* Module.End ℂ (schwartzA θ V.rank n)} (hω : IsWeilSch ψ χ θ V μ ω) {μr : Measure (Mx D V.rank r)} (hμr : ∃ 𝓕, IsCovolOne (ratMx D V.rank r) μr 𝓕) {μt : Measure (Mx D V.rank t)} (hμt : ∃ 𝓕, IsCovolOne (ratMx D V.rank t) μt 𝓕) (Φ : schwartzA θ V.rank n) {nb : hermA D t → G D t} (hnb : IsNMap nb) {w : G D t} (hw : IsW w) (b : hermA D t) (y : Mx D r t) (x : Mx D V.rank r), (ω (M.sh y * M.emb (w * nb b) * 1) Φ).1 (jn hn x 0) = ∫ v, pch ψ b.1 (ip V v v) * Φ.1 (jn hn x v) * ψ (trA (Matrix.trace (ip V (mm x y) v))) ∂μt := by
  first | exact @GlobalTheory.CompanionTheory.CellVal.weil_translate_frame
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationFourierCoefficientStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationThetaIntegral =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationThetaIntegral", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw PositivityTheory.Rg.Rsw.L
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.CompanionTheory.WzFib

theorem inner_jn {D : D7} {n r t : ℕ} (hn : r + t = n) (V : HSp D) (x : Mx D V.rank r) :
    GlobalTheory.StdUnn.inner V (jn hn x (0 : Mx D V.rank t)) (jn hn x (0 : Mx D V.rank t)) =
      bl hn (GlobalTheory.StdUnn.inner V x x) 0 0 0 := by
  set e : Fin n ≃ Fin r ⊕ Fin t := (finSumFinEquiv.trans (finCongr hn)).symm with he
  have hX : jn hn x (0 : Mx D V.rank t) = (Matrix.fromCols x (0 : Mx D V.rank t)).submatrix id e := rfl
  have hadj : adj (jn hn x (0 : Mx D V.rank t)) =
      (Matrix.fromRows (adj x) (0 : Matrix (Fin t) (Fin V.rank) (AE D))).submatrix e id := by
    ext i k
    rw [hX]
    simp only [adj, Matrix.transpose_apply, Matrix.map_apply, Matrix.submatrix_apply, id]
    rcases e i with a | b
    · simp
    · simp
  have hG : (HMul.hMul (gA V) (jn hn x (0 : Mx D V.rank t)) : Mx D V.rank n) =
      (Matrix.fromCols (HMul.hMul (gA V) x : Mx D V.rank r) (0 : Mx D V.rank t)).submatrix id e := by
    ext i j
    rw [hX]
    simp only [Matrix.mul_apply, Matrix.submatrix_apply, id]
    rcases e j with a | b
    · simp [Matrix.mul_apply]
    · simp
  unfold GlobalTheory.StdUnn.inner
  rw [hG, hadj, ← Matrix.submatrix_mul _ _ e id e Function.bijective_id, Matrix.fromRows_mul_fromCols]
  simp [bl, he]

theorem trace_bl {R : Type} [CommRing R] {n r t : ℕ} (hn : r + t = n) (a : Matrix (Fin r) (Fin r) R)
    (b : Matrix (Fin r) (Fin t) R) (c : Matrix (Fin t) (Fin r) R) (d : Matrix (Fin t) (Fin t) R) :
    Matrix.trace (bl hn a b c d) = Matrix.trace a + Matrix.trace d := by
  unfold bl
  simp only [Matrix.trace, Matrix.diag, Matrix.submatrix_apply]
  rw [Equiv.sum_comp (finSumFinEquiv.trans (finCongr hn)).symm (fun i => Matrix.fromBlocks a b c d i i),
    Fintype.sum_sum_type]
  simp

theorem trace_nzx {D : D7} {n r t : ℕ} (hn : r + t = n) (V : HSp D) (z : Mx D r r) (x : Mx D V.rank r) :
    Matrix.trace (HMul.hMul (bl hn z 0 (adj (0 : Mx D r t)) 0 : Mx D n n)
        (GlobalTheory.StdUnn.inner V (jn hn x (0 : Mx D V.rank t)) (jn hn x (0 : Mx D V.rank t))) : Mx D n n) =
      Matrix.trace (HMul.hMul z (GlobalTheory.StdUnn.inner V x x) : Mx D r r) := by
  have h0 : adj (0 : Mx D r t) = 0 := by
    ext i j
    simp [adj]
  rw [inner_jn, h0]
  have hm : (HMul.hMul (bl hn z 0 0 0 : Mx D n n) (bl hn (GlobalTheory.StdUnn.inner V x x) 0 0 0) : Mx D n n) =
      bl hn (HMul.hMul z (GlobalTheory.StdUnn.inner V x x) : Mx D r r) 0 0 0 := by
    unfold bl
    rw [Matrix.submatrix_mul_equiv, Matrix.fromBlocks_multiply]
    simp
  rw [hm, trace_bl]
  simp

theorem conj_char {F : Type} [Field F] [NumberField F] {ψ : AddChar (AF F) ℂ} (hψ : IsCharAF F ψ) (u : AF F) :
    conj (ψ u) = ψ (-u) := by
  rw [AddChar.map_neg_eq_inv, Complex.inv_eq_conj (hψ.2.1 u)]

theorem wz_eq_fib : ∀ {D : D7} {n r t : ℕ} (hP : PartFT) {hn : r + t = n} (M : Maps D hn) (m : Meas D r t) (V : HSp D) {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) (hη : ResEta D χ V.rank) {θ : InfFam D} (hθ : IsInfFam θ) {μ : Measure (Mx D V.rank n)} (hμ : ∃ 𝓕, IsCovolOne (ratMx D V.rank n) μ 𝓕) {ω : G D n →* Module.End ℂ (schwartzA θ V.rank n)} (hω : IsWeilSch ψ χ θ V μ ω) {μr : Measure (Mx D V.rank r)} (hμr : ∃ 𝓕, IsCovolOne (ratMx D V.rank r) μr 𝓕) {μt : Measure (Mx D V.rank t)} (hμt : ∃ 𝓕, IsCovolOne (ratMx D V.rank t) μt 𝓕) (b₀ : HermE D r) {fib : Measure (Mx D V.rank r)} (hfib : IsFib ψ θ V b₀ μr m.lz fib) (Φ : schwartzA θ V.rank n) (g : G D n), Wz M m ψ b₀ (fun g => (ω g Φ).1 0) g = ∫ x, (ω g Φ).1 (jn hn x 0) ∂fib := by
  intro D n r t hP hn M m V ψ hψ χ hχ hη θ hθ μ hμ ω hω μr hμr μt hμt b₀ fib hfib Φ g
  have hPF := hP D n r t hn M V ψ hψ χ hχ hη θ hθ μ hμ ω hω μr μt hμr hμt
  rw [← (hfib.int _ (hPF (ω g Φ)).2.1).2]
  unfold Wz W
  refine integral_congr_ae (Eventually.of_forall fun z => ?_)
  show (ω (M.w * M.nzx z 0 * g) Φ).1 0 * conj (chz ψ b₀ z) = Jt ψ V μr _ z * ψ (-halfTr _)
  have e1 : ω (M.w * M.nzx z 0 * g) Φ = ω M.w (ω (M.nzx z 0) (ω g Φ)) := by
    simp only [map_mul, Module.End.mul_apply]
  rw [e1, (hPF (ω (M.nzx z 0) (ω g Φ))).1]
  unfold chz
  rw [conj_char hψ]
  congr 1
  unfold Jt
  refine integral_congr_ae (Eventually.of_forall fun x => ?_)
  show (ω (M.nzx z 0) (ω g Φ)).1 (jn hn x 0) = (ω g Φ).1 (jn hn x 0) * ψ (halfTr _)
  rw [hω.unip _ _ (M.nzx_mat z 0), trace_nzx, mul_comm]

end GlobalTheory.CompanionTheory.WzFib

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationThetaIntegral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationThetaIntegralStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationThetaIntegralStatement", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationThetaIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw PositivityTheory.Rg.Rsw.L
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.weil_representation_theta_integral : ∀ {D : D7} {n r t : ℕ} (hP : PartFT) {hn : r + t = n} (M : Maps D hn) (m : Meas D r t) (V : HSp D) {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) (hη : ResEta D χ V.rank) {θ : InfFam D} (hθ : IsInfFam θ) {μ : Measure (Mx D V.rank n)} (hμ : ∃ 𝓕, IsCovolOne (ratMx D V.rank n) μ 𝓕) {ω : G D n →* Module.End ℂ (schwartzA θ V.rank n)} (hω : IsWeilSch ψ χ θ V μ ω) {μr : Measure (Mx D V.rank r)} (hμr : ∃ 𝓕, IsCovolOne (ratMx D V.rank r) μr 𝓕) {μt : Measure (Mx D V.rank t)} (hμt : ∃ 𝓕, IsCovolOne (ratMx D V.rank t) μt 𝓕) (b₀ : HermE D r) {fib : Measure (Mx D V.rank r)} (hfib : IsFib ψ θ V b₀ μr m.lz fib) (Φ : schwartzA θ V.rank n) (g : G D n), Wz M m ψ b₀ (fun g => (ω g Φ).1 0) g = ∫ x, (ω g Φ).1 (jn hn x 0) ∂fib := by
  first | exact @GlobalTheory.CompanionTheory.WzFib.wz_eq_fib
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationThetaIntegralStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterQuadraticFormIdentity =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterQuadraticFormIdentity", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.RegularisedSiegelWeil.SingularNullSets.WeakApproximationFinitePlace\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResEtaOfIsWeilSch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaLiftEisensteinLevelSubgroup\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousThetaKernelComponentsStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IntegrableSchwartzRestrictionColumnsStatement\npublic import Mathlib.Analysis.Distribution.SchwartzSpace.Basic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SchwartzExistsRealMajorant\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ThetaFourierCoefficientWeylIntegralStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationFourierCoefficientStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeilRepresentationThetaIntegralStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Matrix NNReal ENNReal ComplexConjugate TensorProduct Topology
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.Pj Formalism.IndefR.Datum MeasureTheory Filter
open GlobalTheory.AutomorphicL2Unitary GlobalTheory.AdelicU GlobalTheory.Doubling GlobalTheory.Cont GlobalTheory.MixModel
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
open GlobalTheory.StdUnn PositivityTheory.GramSchwartzFunctions PositivityTheory.GramSchwartzFunctions.BC PositivityTheory.PfSWUS PositivityTheory.Rg.Rsw PositivityTheory.Rg.Rsw.L

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.CompanionTheory.RCellP

variable {D : D7} {n r t : ℕ}

theorem maj_mem {θ : InfFam D} {a b : ℕ} {φ : Mx D a b → ℂ} (hφ : φ ∈ schwartzA θ a b) :
    ∃ F ∈ schwartzA θ a b, ∀ x, (F x).im = 0 ∧ ‖φ x‖ ≤ (F x).re := by
  induction hφ using Submodule.span_induction with
  | mem φ h =>
    obtain ⟨f, g, hg, rfl⟩ := h
    obtain ⟨F₀, hF₀⟩ := _root_.GlobalTheory.CompanionTheory.SchwartzMaj.exists_nonneg_schwartz_majorant _ f
    refine ⟨fun x => F₀ (fun τ i j => compAt θ τ x i j) * (fun u => ((‖g u‖ : ℝ) : ℂ)) (fun i j => finPart D (x i j)),
      Submodule.subset_span ⟨F₀, fun u => ((‖g u‖ : ℝ) : ℂ), ⟨?_, ?_⟩, rfl⟩, fun x => ?_⟩
    · exact hg.1.comp fun z => ((‖z‖ : ℝ) : ℂ)
    · exact hg.2.comp_left (g := fun z => ((‖z‖ : ℝ) : ℂ)) (by simp)
    · have h := hF₀ (fun τ i j => compAt θ τ x i j)
      constructor
      · simp [Complex.mul_im, h.1]
      · simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero, norm_mul]
        exact mul_le_mul_of_nonneg_right h.2 (norm_nonneg _)
  | zero => exact ⟨0, Submodule.zero_mem _, fun x => by simp⟩
  | add φ₁ φ₂ _ _ h₁ h₂ =>
    obtain ⟨F₁, m₁, e₁⟩ := h₁
    obtain ⟨F₂, m₂, e₂⟩ := h₂
    refine ⟨F₁ + F₂, Submodule.add_mem _ m₁ m₂, fun x => ⟨?_, ?_⟩⟩
    · simp [(e₁ x).1, (e₂ x).1]
    · simpa using (norm_add_le _ _).trans (add_le_add (e₁ x).2 (e₂ x).2)
  | smul c φ _ h =>
    obtain ⟨F, m, e⟩ := h
    refine ⟨((‖c‖ : ℝ) : ℂ) • F, Submodule.smul_mem _ _ m, fun x => ⟨?_, ?_⟩⟩
    · simp [(e x).1]
    · simpa [norm_smul] using mul_le_mul_of_nonneg_left (e x).2 (norm_nonneg c)

theorem exists_real_schwartz_majorant {θ : InfFam D} {a b : ℕ} (Φ : schwartzA θ a b) :
    ∃ F : schwartzA θ a b, ∀ x, (F.1 x).im = 0 ∧ ‖Φ.1 x‖ ≤ (F.1 x).re :=
  let ⟨F, m, e⟩ := maj_mem Φ.2
  ⟨⟨F, m⟩, e⟩

theorem c_jn_cont (hn : r + t = n) {a : ℕ} : Continuous (fun z : Mx D a r × Mx D a t => jn hn z.1 z.2) := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  show Continuous fun z : Mx D a r × Mx D a t => Matrix.fromCols z.1 z.2 i ((finSumFinEquiv.trans (finCongr hn)).symm j)
  generalize (finSumFinEquiv.trans (finCongr hn)).symm j = c
  rcases c with c | c
  · exact continuous_fst.matrix_elem i c
  · exact continuous_snd.matrix_elem i c

theorem inner_product_mul_eq_pairing (V : HSp D) (b₀ : HermE D r) (hb : b₀.1.det ≠ 0) (x : Mx D V.rank r) (v : Mx D V.rank t) (y : Mx D r t) :
    ip V (mm x y) v = pr b₀ y (yv V b₀ (x, v)) := by
  have h1 : (b₀.1.map (incA D) : Mx D r r) * rat b₀.1⁻¹ = 1 := by
    show b₀.1.map (incA D) * b₀.1⁻¹.map (incA D) = 1
    rw [← Matrix.map_mul, Matrix.mul_nonsing_inv _ (Ne.isUnit hb)]
    exact Matrix.map_one _ (map_zero _) (map_one _)
  simp only [ip, pr, yv, mm, adj_mul]
  rw [← Matrix.mul_assoc (b₀.1.map (incA D)), h1, Matrix.one_mul, Matrix.mul_assoc]

theorem character_quadratic_form_identity (V : HSp D) {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsCharAF D.host.F ψ) (b₀ : HermE D r) (b : hermA D t)
    (z : Mx D V.rank r × Mx D V.rank t) :
    pch ψ b.1 (ip V z.2 z.2) * conj (ψ (halfTr (Matrix.trace (mm b.1 (pr b₀ (yv V b₀ z) (yv V b₀ z)))))) = pch ψ b.1 (qv V b₀ z) := by
  rw [_root_.GlobalTheory.CompanionTheory.RCellInv.conj_char hψ]
  simp only [pch, qv, mm]
  rw [← AddChar.map_add_eq_mul, Matrix.mul_sub, Matrix.trace_sub]
  congr 1
  simp only [halfTr, trA, map_sub]
  ring

theorem fub {X Y : Type} [MeasurableSpace X] [MeasurableSpace Y] {μ : Measure Y} {ν : Measure X} [SFinite μ] [SFinite ν]
    {P : X → ℂ} {e : Y → X → ℂ} {O : Y → ℂ} (hP : Integrable P ν) (hO : Integrable O μ)
    (he : AEStronglyMeasurable (fun q : Y × X => e q.1 q.2) (μ.prod ν)) (hn : ∀ y z, ‖e y z‖ = 1)
    (hem : ∀ y, AEStronglyMeasurable (e y) ν) :
    (∀ y, Integrable (fun z => P z * e y z) ν) ∧
    ∫ y, (∫ z, P z * e y z ∂ν) * O y ∂μ = ∫ z, P z * ∫ y, e y z * O y ∂μ ∂ν := by
  have hIPe : ∀ y, Integrable (fun z => P z * e y z) ν := fun y =>
    hP.mono (hP.aestronglyMeasurable.mul (hem y)) (ae_of_all _ fun z => by simp [hn])
  refine ⟨hIPe, ?_⟩
  have hbase := Integrable.mul_prod hO hP
  have hIF : Integrable (Function.uncurry fun (y : Y) z => P z * e y z * O y) (μ.prod ν) := by
    refine hbase.mono ?_ (ae_of_all _ fun q => ?_)
    · exact (hP.aestronglyMeasurable.comp_snd.mul he).mul hO.aestronglyMeasurable.comp_fst
    · simp [Function.uncurry, hn, mul_comm]
  calc ∫ y, (∫ z, P z * e y z ∂ν) * O y ∂μ = ∫ y, ∫ z, P z * e y z * O y ∂ν ∂μ := by
        refine integral_congr_ae (ae_of_all _ fun y => ?_)
        beta_reduce
        rw [integral_mul_const]
    _ = ∫ z, ∫ y, P z * e y z * O y ∂μ ∂ν := integral_integral_swap hIF
    _ = _ := by
        refine integral_congr_ae (ae_of_all _ fun z => ?_)
        beta_reduce
        simp only [mul_assoc]
        rw [integral_const_mul]

theorem integrable_fib (hP : PartFT) {hn : r + t = n} (M : Maps D hn) (m : Meas D r t) (V : HSp D) {ψ : AddChar (AF D.host.F) ℂ}
    (hψ : IsCharAF D.host.F ψ) {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) (hη : ResEta D χ V.rank) {θ : InfFam D}
    (hθ : IsInfFam θ) {μ : Measure (Mx D V.rank n)} (hμ : ∃ 𝓕, IsCovolOne (ratMx D V.rank n) μ 𝓕)
    {ω : G D n →* Module.End ℂ (schwartzA θ V.rank n)} (hω : IsWeilSch ψ χ θ V μ ω)
    {μr : Measure (Mx D V.rank r)} (hμr : ∃ 𝓕, IsCovolOne (ratMx D V.rank r) μr 𝓕)
    {μt : Measure (Mx D V.rank t)} (hμt : ∃ 𝓕, IsCovolOne (ratMx D V.rank t) μt 𝓕)
    (b₀ : HermE D r) {fib : Measure (Mx D V.rank r)} (hfib : IsFib ψ θ V b₀ μr m.lz fib)
    (Φ : schwartzA θ V.rank n) {w : G D t} (hw : IsW w) :
    Integrable (fun z => Φ.1 (jn hn z.1 z.2)) (fib.prod μt) := by
  obtain ⟨i1, i2, i3, i4, -⟩ := lattice_Mx D V.rank r
  obtain ⟨j1, j2, j3, j4, -⟩ := lattice_Mx D V.rank t
  haveI : BorelSpace (Mx D V.rank r) := ⟨rfl⟩
  haveI : BorelSpace (Mx D V.rank t) := ⟨rfl⟩
  haveI := hfib.fin
  haveI := hμt.choose_spec.1
  obtain ⟨F, hF⟩ := exists_real_schwartz_majorant Φ
  have hPa := hP D n r t hn M V ψ hψ χ hχ hη θ hθ μ hμ ω hω μr μt hμr hμt
  have hm : ∀ x, ∫ v, F.1 (jn hn x v) ∂μt = (ω (M.emb w) F).1 (jn hn x 0) := by
    intro x
    rw [(hPa F).2.2 w hw x 0]
    refine integral_congr_ae (ae_of_all _ fun v => ?_)
    have : ip V (0 : Mx D V.rank t) v = 0 := by
      simp [ip, mm, adj]
    simp [this]
  have hφ := (hPa (ω (M.emb w) F)).2.1
  have hint := (hfib.int _ hφ).1
  have hcF : Continuous fun z : Mx D V.rank r × Mx D V.rank t => F.1 (jn hn z.1 z.2) :=
    (GlobalTheory.RegSch.CentreWeilComm.continuous_of_mem hθ F).comp (c_jn_cont hn)
  have hcΦ : Continuous fun z : Mx D V.rank r × Mx D V.rank t => Φ.1 (jn hn z.1 z.2) :=
    (GlobalTheory.RegSch.CentreWeilComm.continuous_of_mem hθ Φ).comp (c_jn_cont hn)
  have hIF : Integrable (fun z : Mx D V.rank r × Mx D V.rank t => F.1 (jn hn z.1 z.2)) (fib.prod μt) := by
    refine (integrable_prod_iff hcF.aestronglyMeasurable).2 ⟨ae_of_all _ fun x => _root_.GlobalTheory.CompanionTheory.ColSlice.integrable_slice hθ hn μt F x, ?_⟩
    refine (hint.re).congr (ae_of_all _ fun x => ?_)
    have e1 : ∀ v, ‖F.1 (jn hn x v)‖ = (F.1 (jn hn x v)).re := by
      intro v
      have h := hF (jn hn x v)
      have h0 : 0 ≤ (F.1 (jn hn x v)).re := (norm_nonneg _).trans h.2
      rw [← Complex.re_add_im (F.1 (jn hn x v)), h.1]
      simp [abs_of_nonneg h0]
    simp only [e1]
    show (RCLike.re ((ω (M.emb w) F).1 (jn hn x 0))) = _
    rw [← hm x]
    exact (integral_re (_root_.GlobalTheory.CompanionTheory.ColSlice.integrable_slice hθ hn μt F x)).symm
  exact hIF.mono hcΦ.aestronglyMeasurable (ae_of_all _ fun z =>
    (hF _).2.trans ((le_abs_self _).trans (Complex.abs_re_le_norm _)))

theorem core (hP : PartFT) {hn : r + t = n} (M : Maps D hn) (m : Meas D r t) (V : HSp D) {ψ : AddChar (AF D.host.F) ℂ}
    (hψ : IsCharAF D.host.F ψ) {χ : (AE D)ˣ →* Circle} (hχ : IsHeckeChar D χ) (hη : ResEta D χ V.rank) {θ : InfFam D}
    (hθ : IsInfFam θ) {μ : Measure (Mx D V.rank n)} (hμ : ∃ 𝓕, IsCovolOne (ratMx D V.rank n) μ 𝓕)
    {ω : G D n →* Module.End ℂ (schwartzA θ V.rank n)} (hω : IsWeilSch ψ χ θ V μ ω)
    {μr : Measure (Mx D V.rank r)} (hμr : ∃ 𝓕, IsCovolOne (ratMx D V.rank r) μr 𝓕)
    {μt : Measure (Mx D V.rank t)} (hμt : ∃ 𝓕, IsCovolOne (ratMx D V.rank t) μt 𝓕)
    (b₀ : HermE D r) (hb : b₀.1.det ≠ 0) {fib : Measure (Mx D V.rank r)} (hfib : IsFib ψ θ V b₀ μr m.lz fib)
    {Ω : G D t → Mx D r t → ℂ} (hΩ : IsTh ψ χ θ b₀ m.μ Ω)
    (Φ : schwartzA θ V.rank n) {nb : hermA D t → G D t} (hnb : IsNMap nb) {w : G D t} (hw : IsW w) (b : hermA D t)
    (hI : Integrable (fun z => Φ.1 (jn hn z.1 z.2)) (fib.prod μt)) :
    Rsec M m ψ b₀ (fun g => (ω g Φ).1 0) 1 Ω (w * nb b) =
        ∫ z, Φ.1 (jn hn z.1 z.2) * conj (Ω 1 (yv V b₀ z)) * pch ψ b.1 (qv V b₀ z) ∂(fib.prod μt) := by
  obtain ⟨i1, i2, i3, i4, -⟩ := lattice_Mx D V.rank r
  obtain ⟨j1, j2, j3, j4, -⟩ := lattice_Mx D V.rank t
  obtain ⟨k1, k2, k3, k4, -⟩ := lattice_Mx D r t
  haveI : BorelSpace (Mx D V.rank r) := ⟨rfl⟩
  haveI : BorelSpace (Mx D V.rank t) := ⟨rfl⟩
  haveI : BorelSpace (Mx D r t) := ⟨rfl⟩
  haveI := hfib.fin
  haveI := hμt.choose_spec.1
  haveI := m.hμ.1
  obtain ⟨hc1, hc2, hc3, hc4, hn1, hn2⟩ := GlobalTheory.T.continuous_theta_kernel_components (t := t) hψ V b₀ b
  have hcΦ : Continuous fun z : Mx D V.rank r × Mx D V.rank t => Φ.1 (jn hn z.1 z.2) :=
    (GlobalTheory.RegSch.CentreWeilComm.continuous_of_mem hθ Φ).comp (c_jn_cont hn)
  have hcP : Continuous fun z : Mx D V.rank r × Mx D V.rank t => pch ψ b.1 (ip V z.2 z.2) * Φ.1 (jn hn z.1 z.2) := hc1.mul hcΦ
  have hIP : Integrable (fun z : Mx D V.rank r × Mx D V.rank t => pch ψ b.1 (ip V z.2 z.2) * Φ.1 (jn hn z.1 z.2)) (fib.prod μt) :=
    hI.mono hcP.aestronglyMeasurable (ae_of_all _ fun z => by simp [hn1])
  have hcΩ : Continuous (Ω (w * nb b)) := hΩ.cont.comp (continuous_const.prodMk continuous_id)
  have hIΩ : Integrable (fun y => conj (Ω (w * nb b) y)) m.μ :=
    (GlobalTheory.RegSch.CentreWeilComm.integrable_of_mem hθ m.μ ⟨_, hΩ.mem (w * nb b)⟩).mono
      (Complex.continuous_conj.comp hcΩ).aestronglyMeasurable (ae_of_all _ fun y => by simp)
  obtain ⟨hIPe, hsw⟩ := fub (μ := m.μ) (ν := fib.prod μt) (e := fun y z => ψ (trA (Matrix.trace (pr b₀ y (yv V b₀ z))))) hIP hIΩ
    hc3.aestronglyMeasurable (fun y z => hn2 _)
    (fun y => (hc3.comp (Continuous.prodMk_right y)).aestronglyMeasurable)
  have hW : ∀ y, Wz M m ψ b₀ (fun g => (ω g Φ).1 0) (M.sh y * M.emb (w * nb b) * 1) =
      ∫ z, pch ψ b.1 (ip V z.2 z.2) * Φ.1 (jn hn z.1 z.2) * ψ (trA (Matrix.trace (pr b₀ y (yv V b₀ z)))) ∂(fib.prod μt) := by
    intro y
    rw [GlobalTheory.T.weil_representation_theta_integral hP M m V hψ hχ hη hθ hμ hω hμr hμt b₀ hfib Φ, integral_prod _ (hIPe y)]
    refine integral_congr_ae (ae_of_all _ fun x => ?_)
    beta_reduce
    rw [GlobalTheory.T.weil_representation_fourier_coefficient hP M V hψ hχ hη hθ hμ hω hμr hμt Φ hnb hw b y x]
    refine integral_congr_ae (ae_of_all _ fun v => ?_)
    beta_reduce
    rw [inner_product_mul_eq_pairing V b₀ hb x v y]
  unfold Rsec
  simp only [hW]
  rw [hsw]
  refine integral_congr_ae (ae_of_all _ fun z => ?_)
  beta_reduce
  rw [GlobalTheory.T.theta_fourier_coefficient_weyl_integral hψ hχ hΩ hnb hw b (yv V b₀ z), map_mul, ← character_quadratic_form_identity V hψ b₀ b z]
  ring

theorem rcell : WMaj → PartFT → RCell := by
  intro _ hP D n t B W d hn ψ χ θ μB μW ωB ωW hS M m b₀ hb μr μt hμr hμt fib hfib Ω hΩ Φ nb hnb w hw
  obtain ⟨𝓕, h𝓕⟩ := hS.hμB
  have hn0 : 0 < n := by
    have := hS.pos
    have := hS.lt
    omega
  have hη : ResEta D χ B.rank := GlobalTheory.RegSch.JointCont.resEta_of_isWeilSch hn0 hS.hψ hS.hθ h𝓕 hS.hB
  have hI := integrable_fib hP M m B hS.hψ hS.hχ hη hS.hθ ⟨𝓕, h𝓕⟩ hS.hB hμr hμt b₀ hfib Φ hw
  exact ⟨hI, fun b => core hP M m B hS.hψ hS.hχ hη hS.hθ ⟨𝓕, h𝓕⟩ hS.hB hμr hμt b₀ hb hfib hΩ Φ hnb hw b hI⟩

end GlobalTheory.CompanionTheory.RCellP

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CharacterQuadraticFormIdentity =====
