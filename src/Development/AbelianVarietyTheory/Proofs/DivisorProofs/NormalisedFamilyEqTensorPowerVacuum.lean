module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph
public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.FourthTensorThetaEqKernel
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.IsSemiChar
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.LocalComponentGL
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.MatrixFormFourfoldBlock
public import Formalism.LocalToGlobal.KernelLattices.LateralTheory
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated2
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.VacuumEntireAndNormalizedJetsAlgebraic
public import Formalism.LocalToGlobal.InertKernelTheory.StatementAlg
public import Formalism.SharpRestriction.GlobalSchurBounds.StandardLatticesGL3
public import Mathlib.NumberTheory.NumberField.ClassNumber
public import Formalism.LocalToGlobal.Columns.FiniteSumNonzeroLargeDepth
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.StandardRankOneLatticeOfLocal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CosetRefinement
public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ExistsPowPrincipalFractionalIdeal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsVacuumMovedThetaVacuum
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.QuasiPeriodConstUniqueOf
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Formalism.LocalRingCardinality.SpanPowerMembership.HasStrictFDerivAtExpZero
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Formalism.LocalToGlobal.GlobalTheory.GL3.PStdOK
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.Th0CharMulOpUTh0HalfPeriodEq
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.LocalToGlobal.KernelLattices.XiIndCClass

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseLatticeEqComapBlockwiseLattice, Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumCoordinateEquivIsometry, Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumLatticeEqComapStandardLattice, Development.AbelianVarietyTheory.Proofs.DivisorProofs.KappaProductPowAlgebraicModulusOneAll, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeIntertwinerComapLinearIsometry, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeIntertwinerProdOrthogonalBlocks, Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrthonormalBasisBlockVacuumLatticeBasisFamily, Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumLatticeBasisCoordinateEqCoordinateEqu, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackBasisThetaEqF0Form, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaVacuumEqKappaPowMulBlockKernels, Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseThetaVectorIsVacuumEvenRanks, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormOneCharacterModulusOneAllEmbeddings, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelDetIdealSelfDualNormOne, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedFamilyEqTensorPowerVacuum

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseLatticeEqComapBlockwiseLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseLatticeEqComapBlockwiseLattice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open Classical

namespace GlobalTheory.BaseVacuum

theorem baseLattice_eq_comap_blockwise_lattice : ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ) (n n' : ℕ),
    TaylorLogMetric.La D (TaylorLogMetric.tor0 D cc δ) (StandardLatticesGL3.stdL D (n * 2)) (StandardLatticesGL3.stdL D (n' * 2)) =
      (blkLat (ι := Fin n' × Fin n) (imgLat (B.gC : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ))
        (pow4 B.lamM))).comap (phi B n n' : TaylorLogMetric.VC D (n * 2) (n' * 2) →ₗ[ℂ] (Ix D n n' → ℂ)).toAddMonoidHom := by
  intro D cc δ B n n'
  have h0 : TaylorLogMetric.La D (TaylorLogMetric.tor0 D cc δ) (StandardLatticesGL3.stdL D (n * 2)) (StandardLatticesGL3.stdL D (n' * 2)) = powLat B.lamM (n * 2) (n' * 2) :=
    Lat0 D cc δ
  rw [h0]

  have himg : ∀ x : Fin 4 × D.what₂.Tau → ℂ,
      B.gC x ∈ imgLat (B.gC : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)) (pow4 B.lamM) ↔
        x ∈ pow4 B.lamM := by
    intro x
    constructor
    · rintro ⟨y, hy, hxy⟩
      have : y = x := B.gC.injective hxy
      exact this ▸ hy
    · intro hx
      exact ⟨x, hx, rfl⟩
  ext z
  simp only [AddSubgroup.mem_comap]
  show (∀ i j, (fun τ => z τ i j) ∈ B.lamM) ↔ ∀ k, (fun w => phi B n n' z (k, w)) ∈ _
  have e : ∀ k, (fun w => phi B n n' z (k, w)) = B.gC (blk D k z) := fun k => rfl
  simp only [e, himg]
  constructor
  · intro h k a
    exact h (posE n n' (k, a)).1 (posE n n' (k, a)).2
  · intro h i j
    have := h ((posE n n').symm (i, j)).1 ((posE n n').symm (i, j)).2
    have e2 : slice ((posE n n').symm (i, j)).2 (blk D ((posE n n').symm (i, j)).1 z) = fun τ => z τ i j := by
      funext τ
      show z τ (posE n n' (((posE n n').symm (i, j)).1, ((posE n n').symm (i, j)).2)).1
        (posE n n' (((posE n n').symm (i, j)).1, ((posE n n').symm (i, j)).2)).2 = z τ i j
      simp only [Prod.mk.eta, Equiv.apply_symm_apply]
    rw [← e2]; exact this

end GlobalTheory.BaseVacuum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseLatticeEqComapBlockwiseLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumCoordinateEquivIsometry =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumCoordinateEquivIsometry", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.QuasiPeriodConstUniqueOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open Classical

open scoped BigOperators ComplexConjugate

namespace GlobalTheory.BaseVacuum

theorem gC_sum_conj {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Base D cc δ) (x y : Fin 4 × D.what₂.Tau → ℂ) :
    ∑ w, B.gC x w * conj (B.gC y w) = ∑ w, x w * conj (y w) := by
  have hA : ((Formalism.L2.Th1.F.area B.L : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (Formalism.L2.Th1.F.areaPos_thm B.L).ne'
  have h := B.isomOK x y
  rw [blockFourfold_hOne_eq_hOne] at h
  have e : Formalism.L2.Th1.H.stdH B.L (Fin 4 × D.what₂.Tau) = matH (hOne B.L (Fin 4 × D.what₂.Tau)) := rfl
  rw [e] at h
  have h' := h
  simp only [LinearEquiv.coe_coe] at h'
  rw [matH_hOne, matH_hOne] at h'
  exact (div_left_inj' hA).1 h'

theorem phi_isom : ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ) (n n' : ℕ)
    (z z' : TaylorLogMetric.VC D (n * 2) (n' * 2)),
    TaylorLogMetric.Hf D (TaylorLogMetric.tor0 D cc δ) z z' = stdH B.L (Ix D n n') (phi B n n' z) (phi B n n' z') := by
  intro D cc δ B n n' z z'
  have eR : Formalism.L2.Th1.H.stdH B.L (Ix D n n') (phi B n n' z) (phi B n n' z')
      = (∑ p, phi B n n' z p * conj (phi B n n' z' p)) / ((Formalism.L2.Th1.F.area B.L : ℝ) : ℂ) := by
    show matH (hOne B.L (Ix D n n')) _ _ = _
    exact matH_hOne _ _ _
  rw [eR]
  have eL : TaylorLogMetric.Hf D (TaylorLogMetric.tor0 D cc δ) z z'
      = (∑ τ, ∑ i, ∑ j, z τ i j * conj (z' τ i j)) / ((TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ) : ℝ) : ℂ) := rfl
  rw [eL, show TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ) = Formalism.L2.Th1.F.area B.L from B.areaOK]
  congr 1
  symm
  calc (∑ p, phi B n n' z p * conj (phi B n n' z' p))
      = ∑ k : Fin n' × Fin n, ∑ w, B.gC (blk D k z) w * conj (B.gC (blk D k z') w) := by
        rw [Fintype.sum_prod_type]; rfl
    _ = ∑ k : Fin n' × Fin n, ∑ w, blk D k z w * conj (blk D k z' w) :=
        Finset.sum_congr rfl (fun k _ => gC_sum_conj B (blk D k z) (blk D k z'))
    _ = ∑ p : Ix D n n', blk D p.1 z p.2 * conj (blk D p.1 z' p.2) := (Fintype.sum_prod_type' _).symm
    _ = ∑ τ, ∑ i, ∑ j, z τ i j * conj (z' τ i j) := ?_
  let e : Ix D n n' ≃ D.what₂.Tau × (Fin (n' * 2) × Fin (n * 2)) :=
    ((Equiv.prodAssoc _ _ _).symm.trans ((posE n n').prodCongr (Equiv.refl _))).trans (Equiv.prodComm _ _)
  rw [Fintype.sum_equiv e (fun p => blk D p.1 z p.2 * conj (blk D p.1 z' p.2))
    (fun q => z q.1 q.2.1 q.2.2 * conj (z' q.1 q.2.1 q.2.2)) (fun p => rfl)]
  simp only [Fintype.sum_prod_type]

end GlobalTheory.BaseVacuum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumCoordinateEquivIsometry =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumLatticeEqComapStandardLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumLatticeEqComapStandardLattice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open Classical

namespace GlobalTheory.BaseVacuum

theorem gC_xv {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Base D cc δ) (w : Fin 4 × D.what₂.Tau) :
    B.gC (fun w' => TaylorLogMetric.embT D w'.2 (xv B w w'.1)) = Pi.single w 1 := by
  rw [B.gC_spec]
  funext w'
  simp only [xv, LinearEquiv.apply_symm_apply]
  by_cases h : w' = w
  · subst h; simp
  · simp [h]

theorem blk_embV_putB (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) {n n' : ℕ} (k k' : Fin n' × Fin n)
    (x : Fin 4 → D.host.E) :
    blk D k' (TaylorLogMetric.embV D (TaylorLogMetric.tor0 D cc δ) (putB D k x) : TaylorLogMetric.VC D (n * 2) (n' * 2)) =
      if k' = k then (fun w => TaylorLogMetric.embT D w.2 (x w.1)) else (0 : Fin 4 × D.what₂.Tau → ℂ) := by
  funext w
  simp only [blk, TaylorLogMetric.embV, TaylorLogMetric.tor0, putB, Prod.mk.eta, Equiv.symm_apply_apply]
  by_cases h : k' = k
  · simp [h]
  · simp [h]

theorem phi_embV_bas {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Base D cc δ) (n n' : ℕ)
    (j : Fin (TaylorLogMetric.fF D * (n * 2) * (n' * 2))) :
    phi B n n' (TaylorLogMetric.embV D (TaylorLogMetric.tor0 D cc δ) (bas B n n' j)) = Pi.single (ixE D n n' j) 1 := by
  funext p
  rw [phi_apply, bas, blk_embV_putB]
  by_cases h : p.1 = (ixE D n n' j).1
  · rw [if_pos h, gC_xv]
    by_cases h2 : p.2 = (ixE D n n' j).2
    · have : p = ixE D n n' j := Prod.ext h h2
      subst this; simp
    · have : p ≠ ixE D n n' j := fun e => h2 (by rw [e])
      simp [h2, this]
  · rw [if_neg h, B.gC.map_zero]
    have : p ≠ ixE D n n' j := fun e => h (by rw [e])
    simp [this]

theorem laB_eq_comap : ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ) (n n' : ℕ),
    StandardLatticesGL3.LaB D (TaylorLogMetric.tor0 D cc δ) (bas B n n') =
      (stdLat B.L (Ix D n n')).comap (phi B n n' : TaylorLogMetric.VC D (n * 2) (n' * 2) →ₗ[ℂ] (Ix D n n' → ℂ)).toAddMonoidHom := by
  intro D cc δ B n n'
  apply le_antisymm
  · unfold StandardLatticesGL3.LaB
    rw [AddSubgroup.closure_le]
    rintro z ⟨w, hw, j, rfl⟩
    show phi B n n' (w • TaylorLogMetric.embV D (TaylorLogMetric.tor0 D cc δ) (bas B n n' j)) ∈ stdLat B.L (Ix D n n')
    rw [map_smul, phi_embV_bas]
    have hw' : w ∈ B.L.lattice.toAddSubgroup := by rw [B.lat]; exact hw
    simp only [stdLat, AddSubgroup.mem_pi, Set.mem_univ, true_implies]
    intro p
    by_cases h : p = ixE D n n' j
    · subst h; simpa using hw'
    · simp [h]
  · intro x hx
    have hx' : phi B n n' x ∈ stdLat B.L (Ix D n n') := hx
    simp only [stdLat, AddSubgroup.mem_pi, Set.mem_univ, true_implies] at hx'
    have hsum : phi B n n' x = ∑ p, phi B n n' x p • (Pi.single p 1 : Ix D n n' → ℂ) := by
      funext q
      simp [Finset.sum_apply, Pi.single_apply]
    have hsing : ∀ p, (phi B n n').symm (Pi.single p 1) =
        TaylorLogMetric.embV D (TaylorLogMetric.tor0 D cc δ) (bas B n n' ((ixE D n n').symm p)) := by
      intro p
      rw [LinearEquiv.symm_apply_eq, phi_embV_bas, Equiv.apply_symm_apply]
    have hxe : x = ∑ p, phi B n n' x p • TaylorLogMetric.embV D (TaylorLogMetric.tor0 D cc δ) (bas B n n' ((ixE D n n').symm p)) := by
      conv_lhs => rw [← (phi B n n').symm_apply_apply x, hsum]

      rw [map_sum]
      refine Finset.sum_congr rfl fun p _ => ?_
      rw [map_smul, hsing]
    rw [hxe]
    refine AddSubgroup.sum_mem _ fun p _ => AddSubgroup.subset_closure ?_
    refine ⟨phi B n n' x p, ?_, (ixE D n n').symm p, rfl⟩
    have := hx' p
    rw [B.lat] at this
    exact this

end GlobalTheory.BaseVacuum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumLatticeEqComapStandardLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KappaProductPowAlgebraicModulusOneAll =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.KappaProductPowAlgebraicModulusOneAll", "h": "module\n\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.FourthTensorThetaEqKernel\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open Classical

noncomputable section

namespace GlobalTheory.KappaPowMod

theorem algebraicModulusOneAll_one : StandardLatticesGL3.Mod1All 1 := by
  refine ⟨one_mem _, fun σ => ?_⟩
  have e : (⟨1, one_mem _⟩ : TaylorLogMetric.Qbar) = 1 := rfl
  rw [e, map_one, norm_one]

theorem algebraicModulusOneAll_mul {a b : ℂ} (ha : StandardLatticesGL3.Mod1All a) (hb : StandardLatticesGL3.Mod1All b) : StandardLatticesGL3.Mod1All (a * b) := by
  obtain ⟨h1, h1'⟩ := ha
  obtain ⟨h2, h2'⟩ := hb
  refine ⟨mul_mem h1 h2, fun σ => ?_⟩
  have e : (⟨a * b, mul_mem h1 h2⟩ : TaylorLogMetric.Qbar) = ⟨a, h1⟩ * ⟨b, h2⟩ := rfl
  rw [e, map_mul, norm_mul, h1' σ, h2' σ, one_mul]

theorem algebraicModulusOneAll_inv {a : ℂ} (ha : StandardLatticesGL3.Mod1All a) : StandardLatticesGL3.Mod1All a⁻¹ := by
  obtain ⟨h1, h1'⟩ := ha
  refine ⟨inv_mem h1, fun σ => ?_⟩
  have e : (⟨a⁻¹, inv_mem h1⟩ : TaylorLogMetric.Qbar) = (⟨a, h1⟩ : TaylorLogMetric.Qbar)⁻¹ := rfl
  rw [e, map_inv₀, norm_inv, h1' σ, inv_one]

theorem algebraicModulusOneAll_pow {a : ℂ} (ha : StandardLatticesGL3.Mod1All a) (n : ℕ) : StandardLatticesGL3.Mod1All (a ^ n) := by
  induction n with
  | zero => simpa using algebraicModulusOneAll_one
  | succ n ih => rw [pow_succ]; exact algebraicModulusOneAll_mul ih ha

theorem algebraicModulusOneAll_zpow {a : ℂ} (ha : StandardLatticesGL3.Mod1All a) (n : ℤ) : StandardLatticesGL3.Mod1All (a ^ n) := by
  cases n with
  | ofNat n => simpa using algebraicModulusOneAll_pow ha n
  | negSucc n => rw [zpow_negSucc]; exact algebraicModulusOneAll_inv (algebraicModulusOneAll_pow ha _)

def phiQ (D : D7) : D.host.E →+* TaylorLogMetric.Qbar :=
  D.host.φ₀.codRestrict TaylorLogMetric.Qbar fun x => Formalism.L2.KerInert.AlgP.phi_mem_Qbar x

theorem splitPrime_rootChoice_algebraicModulusOneAll {D : D7} {γ₀ : IsoK D} (k : KapChoice γ₀) (p : ℕ) (hp : p.Prime) (hs : SplitK D p) :
    StandardLatticesGL3.Mod1All (k.rt p) := by
  set h := 2 * classNumber D.host.K with hh
  have h0 : h ≠ 0 := mul_ne_zero two_ne_zero (classNumber_ne D)
  set x : D.host.E := (((k.pi p : 𝓞 D.host.K) : D.host.K) : D.host.E) with hx
  set_option synthInstance.maxHeartbeats 200000 in
  have hx0 : x ≠ 0 := by
    have h1 : ((k.pi p : 𝓞 D.host.K) : D.host.K) ≠ 0 := by simpa using k.pi_ne_zero p hp hs
    simpa [hx] using h1
  have hpow := k.rt_pow p hp hs
  have hmem : k.rt p ∈ TaylorLogMetric.Qbar := by
    have hq : k.rt p ^ h ∈ TaylorLogMetric.Qbar := by
      rw [hpow]
      exact div_mem (Formalism.L2.KerInert.AlgP.phi_mem_Qbar _) (Formalism.L2.KerInert.AlgP.phi_mem_Qbar _)
    exact mem_algebraicClosure_iff.2 (IsAlgebraic.of_pow (n := h) (Nat.pos_of_ne_zero h0)
      (mem_algebraicClosure_iff.1 hq))
  refine ⟨hmem, fun σ => ?_⟩
  let ψ : D.host.E →+* ℂ := σ.comp (phiQ D)
  have hc : ψ (D.host.conj x) = starRingEnd ℂ (ψ x) := Formalism.HC.HostAx.conjE_apply _ _ _
  have hψ0 : ψ x ≠ 0 := (map_ne_zero ψ).2 hx0
  have e : (⟨k.rt p, hmem⟩ : TaylorLogMetric.Qbar) ^ h = phiQ D x / phiQ D (D.host.conj x) := by
    apply Subtype.ext
    simp only [IntermediateField.coe_pow, IntermediateField.coe_div]
    exact hpow
  have hn : ‖σ ⟨k.rt p, hmem⟩‖ ^ h = 1 := by
    rw [← norm_pow, ← map_pow, e, map_div₀]
    change ‖ψ x / ψ (D.host.conj x)‖ = 1
    rw [hc, norm_div, Complex.norm_conj, div_self (norm_ne_zero_iff.2 hψ0)]
  exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) h0).1 hn

theorem kappa_pow_mod1All : ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ) (m : ℕ),
    StandardLatticesGL3.Mod1All (B.kappa ^ m) := by
  intro D cc δ B m
  refine algebraicModulusOneAll_pow ?_ m
  show StandardLatticesGL3.Mod1All (∏ᶠ p : {p : ℕ // p.Prime ∧ SplitK D p}, B.kc.rt p ^ (-(B.kc.yP p)))
  exact finprod_induction StandardLatticesGL3.Mod1All algebraicModulusOneAll_one (fun _ _ => algebraicModulusOneAll_mul)
    fun p => algebraicModulusOneAll_zpow (splitPrime_rootChoice_algebraicModulusOneAll B.kc p p.2.1 p.2.2) _

end GlobalTheory.KappaPowMod
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KappaProductPowAlgebraicModulusOneAll =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeIntertwinerComapLinearIsometry =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeIntertwinerComapLinearIsometry", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.IsSemiChar\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.LocalComponentGL\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.MatrixFormFourfoldBlock\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\nimport Formalism.LocalRingCardinality.SpanPowerMembership.HasStrictFDerivAtExpZero\nimport Formalism.LocalToGlobal.KernelLattices.LateralTheory\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open Classical

namespace GlobalTheory

theorem inter_comap_isom : ∀ (V W : Type) [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W] (H : Sesq V) (H' : Sesq W) (Φ : V ≃ₗ[ℂ] W), (∀ x y, H x y = H' (Φ x) (Φ y)) → IsHerm H' → ∀ (Λ₁ Λ₂ : AddSubgroup W) (α : W → ℂ) (F : W → ℂ), IsSemiChar H' Λ₂ α → F ∈ fixedBy H' α Λ₁ → relIdx Λ₁ Λ₂ ≠ 0 → ∀ z, inter H (fun v => α (Φ v)) (Λ₁.comap (Φ : V →ₗ[ℂ] W).toAddMonoidHom) (Λ₂.comap (Φ : V →ₗ[ℂ] W).toAddMonoidHom) (fun v => F (Φ v)) z = inter H' α Λ₁ Λ₂ F (Φ z) := by
  intro V W _ _ _ _ H H' Φ hΦ hH' Λ₁ Λ₂ α F hα hF hn z
  set f : V →+ W := (Φ : V →ₗ[ℂ] W).toAddMonoidHom with hf
  have hfs : Function.Surjective f := Φ.surjective
  have hfx : ∀ v, f v = Φ v := fun v => rfl
  have hH : IsHerm H := by
    intro x y; rw [hΦ, hΦ, hH']
  have hα' : IsSemiChar H (Λ₂.comap f) (fun v => α (Φ v)) := by
    refine ⟨fun x hx => hα.1 (Φ x) hx, fun x hx y hy => ?_⟩
    have := hα.2 (Φ x) hx (Φ y) hy
    simp only [map_add (f := _), altE] at this ⊢
    rw [this, hΦ]
  have hopU : ∀ x (G : W → ℂ) v, opU H x (fun w => G (Φ w)) v = opU H' (Φ x) G (Φ v) := by
    intro x G v
    simp only [opU, map_add (f := _), hΦ]
  have hF' : (fun v => F (Φ v)) ∈ fixedBy H (fun v => α (Φ v)) (Λ₁.comap f) := by
    intro x hx v
    rw [hopU]
    exact hF (Φ x) hx (Φ v)
  have hidx : relIdx (Λ₁.comap f) (Λ₂.comap f) = relIdx Λ₁ Λ₂ := by
    unfold relIdx
    rw [AddSubgroup.relIndex_comap, AddSubgroup.map_comap_eq_self_of_surjective hfs]
  obtain ⟨S, hS⟩ := (cosetRepsExist W Λ₁ Λ₂ hn).1
  have hS' : IsReps (Λ₁.comap f) (Λ₂.comap f) (S.image Φ.symm) := by
    refine ⟨?_, ?_, ?_⟩
    · intro w hw
      obtain ⟨x, hx, rfl⟩ := Finset.mem_image.1 hw
      show f (Φ.symm x) ∈ Λ₂
      rw [hfx, LinearEquiv.apply_symm_apply]; exact hS.1 x hx
    · intro w hw w' hw' hd
      obtain ⟨x, hx, rfl⟩ := Finset.mem_image.1 hw
      obtain ⟨x', hx', rfl⟩ := Finset.mem_image.1 hw'
      have hd' : x - x' ∈ Λ₁ := by
        have : f (Φ.symm x - Φ.symm x') ∈ Λ₁ := hd
        rwa [hfx, map_sub, LinearEquiv.apply_symm_apply, LinearEquiv.apply_symm_apply] at this
      rw [hS.2.1 x hx x' hx' hd']
    · intro y hy
      obtain ⟨x, hx, hd⟩ := hS.2.2 (Φ y) hy
      refine ⟨Φ.symm x, Finset.mem_image.2 ⟨x, hx, rfl⟩, ?_⟩
      show f (y - Φ.symm x) ∈ Λ₁
      rw [hfx, map_sub, LinearEquiv.apply_symm_apply]; exact hd
  rw [InterReps_of semicharacterHom V H hH _ _ _ hα' _ hF' _ hS' z,
    InterReps_of semicharacterHom W H' hH' _ _ _ hα _ hF _ hS (Φ z), hidx]
  congr 1
  unfold sumU
  rw [Finset.sum_image (fun a _ b _ hab => Φ.symm.injective hab)]
  refine Finset.sum_congr rfl fun x _ => ?_
  rw [hopU, LinearEquiv.apply_symm_apply]
  simp only [LinearEquiv.apply_symm_apply]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeIntertwinerComapLinearIsometry =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeIntertwinerProdOrthogonalBlocks =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeIntertwinerProdOrthogonalBlocks", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.LocalComponentGL\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open Classical
open scoped BigOperators

namespace GlobalTheory.BaseVacuum.ProductTheta

variable (L : PeriodPair) {ι m : Type} [Fintype ι] [DecidableEq ι] [Fintype m] [DecidableEq m]

theorem stdH_prod (x y : ι × m → ℂ) :
    stdH L (ι × m) x y = ∑ k, stdH L m (fun v => x (k, v)) (fun v => y (k, v)) := by
  rw [(stdHBasic L (ι × m)).1, Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [(stdHBasic L m).1]

theorem alphaQ_prod (c : ℝ) (y : ι × m → ℂ) :
    alphaQ c (stdH L (ι × m)) y = ∏ k, alphaQ c (stdH L m) (fun v => y (k, v)) := by
  unfold alphaQ qOf
  rw [← Complex.exp_sum]
  congr 1
  rw [stdH_prod, Complex.re_sum, Finset.mul_sum, Complex.ofReal_sum, Finset.mul_sum]

theorem altE_prod (x y : ι × m → ℂ) :
    altE (stdH L (ι × m)) x y = ∑ k, altE (stdH L m) (fun v => x (k, v)) (fun v => y (k, v)) := by
  unfold altE
  rw [stdH_prod, Complex.im_sum]

theorem mem_stdLat_prod (x : ι × m → ℂ) :
    x ∈ stdLat L (ι × m) ↔ ∀ k, (fun v => x (k, v)) ∈ stdLat L m := by
  simp only [stdLat, AddSubgroup.mem_pi, Set.mem_univ, true_implies, Prod.forall]

theorem heisenbergOperator_gaussianVacuum_prod_blocks (ω₀ : ℂ) (x z : ι × m → ℂ) :
    opU (stdH L (ι × m)) x (F0 L ω₀ (ι × m)) z
      = ∏ k, opU (stdH L m) (fun v => x (k, v)) (F0 L ω₀ m) (fun v => z (k, v)) := by
  unfold F0
  rw [opUStd L (ι × m), Fintype.prod_prod_type]
  refine Finset.prod_congr rfl fun k _ => ?_
  rw [opUStd L m]

theorem gaussianVacuum_prod_blocks (ω₀ : ℂ) (z : ι × m → ℂ) : F0 L ω₀ (ι × m) z = ∏ k, F0 L ω₀ m (fun v => z (k, v)) := by
  unfold F0 prodFn
  rw [Fintype.prod_prod_type]

theorem semiChar_prod (c : ℝ) (Λ : AddSubgroup (m → ℂ)) (h : IsSemiChar (stdH L m) Λ (alphaQ c (stdH L m))) :
    IsSemiChar (stdH L (ι × m)) (blkLat (ι := ι) Λ) (alphaQ c (stdH L (ι × m))) := by
  refine ⟨fun x hx => ?_, fun x hx y hy => ?_⟩
  · rw [alphaQ_prod]
    exact Finset.prod_induction _ (fun a : ℂ => a = 1 ∨ a = -1)
      (fun a b ha hb => by rcases ha with rfl | rfl <;> rcases hb with rfl | rfl <;> simp)
      (Or.inl rfl) (fun k _ => h.1 _ (hx k))
  · rw [alphaQ_prod, alphaQ_prod, alphaQ_prod, altE_prod, Complex.ofReal_sum, Finset.mul_sum, Complex.exp_sum,
      ← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun k _ => ?_
    exact h.2 _ (hx k) _ (hy k)

theorem fixed_prod (ω₀ : ℂ) (c' : ℝ)
    (hF : F0 L ω₀ m ∈ fixedBy (stdH L m) (alphaQ c' (stdH L m)) (stdLat L m)) :
    F0 L ω₀ (ι × m) ∈ fixedBy (stdH L (ι × m)) (alphaQ c' (stdH L (ι × m))) (stdLat L (ι × m)) := by
  change ∀ x ∈ stdLat L (ι × m), ∀ z, _ = _
  intro x hx z
  rw [alphaQ_prod, heisenbergOperator_gaussianVacuum_prod_blocks, ← Finset.prod_mul_distrib, gaussianVacuum_prod_blocks]
  have hx' := (mem_stdLat_prod L x).1 hx
  exact Finset.prod_congr rfl fun k _ => hF _ (hx' k) _

def prodReps (S : Finset (m → ℂ)) : Finset (ι × m → ℂ) :=
  (Fintype.piFinset fun _ : ι => S).map (Equiv.curry ι m ℂ).symm.toEmbedding

theorem card_prodReps (S : Finset (m → ℂ)) : (prodReps (ι := ι) S).card = S.card ^ Fintype.card ι := by
  rw [prodReps, Finset.card_map, Fintype.card_piFinset, Finset.prod_const, Finset.card_univ]

theorem prodReps_isReps {Λ : AddSubgroup (m → ℂ)} {S : Finset (m → ℂ)} (hS : IsReps (stdLat L m) Λ S) :
    IsReps (stdLat L (ι × m)) (blkLat (ι := ι) Λ) (prodReps S) := by
  refine ⟨?_, ?_, ?_⟩
  · intro y hy
    obtain ⟨f, hf, rfl⟩ := Finset.mem_map.1 hy
    rw [Fintype.mem_piFinset] at hf
    intro k
    exact hS.1 _ (hf k)
  · intro x hx y hy hd
    obtain ⟨f, hf, rfl⟩ := Finset.mem_map.1 hx
    obtain ⟨g, hg, rfl⟩ := Finset.mem_map.1 hy
    rw [Fintype.mem_piFinset] at hf hg
    have hd' := (mem_stdLat_prod L _).1 hd
    have : f = g := funext fun k => hS.2.1 _ (hf k) _ (hg k) (hd' k)
    rw [this]
  · intro y hy
    have : ∀ k, ∃ x ∈ S, (fun v => y (k, v)) - x ∈ stdLat L m := fun k => hS.2.2 _ (hy k)
    choose f hf hfy using this
    refine ⟨(Equiv.curry ι m ℂ).symm f, Finset.mem_map_of_mem _ (Fintype.mem_piFinset.2 hf), ?_⟩
    rw [mem_stdLat_prod]
    intro k
    exact hfy k

theorem relIdx_eq_card {V : Type} [AddCommGroup V] [Module ℂ V] {Λ₁ Λ₂ : AddSubgroup V} {S : Finset V}
    (hS : IsReps Λ₁ Λ₂ S) : relIdx Λ₁ Λ₂ = S.card := by
  have h1 := Nat.card_eq_of_bijective _ (repClass_bijective hS)
  rw [Nat.card_eq_fintype_card, Fintype.card_coe] at h1
  rw [h1]
  rfl

theorem sumU_prod (c : ℝ) (ω₀ : ℂ) (S : Finset (m → ℂ)) (z : ι × m → ℂ) :
    sumU (stdH L (ι × m)) (alphaQ c (stdH L (ι × m))) (prodReps S) (F0 L ω₀ (ι × m)) z
      = ∏ k, sumU (stdH L m) (alphaQ c (stdH L m)) S (F0 L ω₀ m) (fun v => z (k, v)) := by
  unfold sumU prodReps
  rw [Finset.sum_map, Finset.prod_univ_sum]
  refine Finset.sum_congr rfl fun f _ => ?_
  rw [alphaQ_prod, heisenbergOperator_gaussianVacuum_prod_blocks, ← Finset.prod_mul_distrib]
  rfl

theorem sqrt_pow' (r : ℝ) (hr : 0 ≤ r) (n : ℕ) : Real.sqrt (r ^ n) = Real.sqrt r ^ n := by
  rw [← Real.sqrt_sq (pow_nonneg (Real.sqrt_nonneg r) n), pow_right_comm, Real.sq_sqrt hr]

end GlobalTheory.BaseVacuum.ProductTheta

namespace GlobalTheory.BaseVacuum


open ProductTheta in
theorem prod_blk_inter : ∀ (L : PeriodPair) (ω₀ : ℂ) (c : ℝ) (ι m : Type) [Fintype ι] [DecidableEq ι] [Fintype m] [DecidableEq m] (Λ : AddSubgroup (m → ℂ)), IsSemiChar (stdH L m) Λ (alphaQ c (stdH L m)) → F0 L ω₀ m ∈ fixedBy (stdH L m) (alphaQ c (stdH L m)) (stdLat L m) → relIdx (stdLat L m) Λ ≠ 0 → IsSemiChar (stdH L (ι × m)) (blkLat Λ) (alphaQ c (stdH L (ι × m))) ∧ F0 L ω₀ (ι × m) ∈ fixedBy (stdH L (ι × m)) (alphaQ c (stdH L (ι × m))) (stdLat L (ι × m)) ∧ relIdx (stdLat L (ι × m)) (blkLat Λ) ≠ 0 ∧ ∀ w, inter (stdH L (ι × m)) (alphaQ c (stdH L (ι × m))) (stdLat L (ι × m)) (blkLat Λ) (F0 L ω₀ (ι × m)) w = ∏ k, inter (stdH L m) (alphaQ c (stdH L m)) (stdLat L m) Λ (F0 L ω₀ m) (fun v => w (k, v)) := by
  intro L ω₀ c ι m _ _ _ _ Λ hα hF hn
  have hα' := semiChar_prod L (ι := ι) c Λ hα
  have hF' := fixed_prod L (ι := ι) ω₀ c hF
  obtain ⟨⟨S, hS⟩, hcard⟩ := repsExist _ (stdLat L m) Λ hn
  have hS' := prodReps_isReps L (ι := ι) hS
  have hr : relIdx (stdLat L (ι × m)) (blkLat (ι := ι) Λ) = relIdx (stdLat L m) Λ ^ Fintype.card ι := by
    rw [relIdx_eq_card hS', card_prodReps, hcard S hS]
  refine ⟨hα', hF', by rw [hr]; exact pow_ne_zero _ hn, fun w => ?_⟩
  rw [interReps _ _ (stdHBasic L _).2.1 _ _ _ hα' _ hF' _ hS' w, sumU_prod]
  rw [Finset.prod_congr rfl fun k _ => interReps _ _ (stdHBasic L m).2.1 _ _ _ hα _ hF _ hS (fun v => w (k, v))]
  rw [hr, Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, Nat.cast_pow,
    sqrt_pow' _ (Nat.cast_nonneg _), Complex.ofReal_pow, inv_pow]

end GlobalTheory.BaseVacuum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeIntertwinerProdOrthogonalBlocks =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrthonormalBasisBlockVacuumLatticeBasisFamily =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrthonormalBasisBlockVacuumLatticeBasisFamily", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open Classical

noncomputable section

namespace GlobalTheory.BaseVacuum

theorem sum_posE {M : Type} [AddCommMonoid M] (n n' : ℕ) (f : Fin (n' * 2) → Fin (n * 2) → M) :
    ∑ i, ∑ j, f i j = ∑ p : (Fin n' × Fin n) × Fin 4, f (posE n n' p).1 (posE n n' p).2 := by
  rw [← Fintype.sum_prod_type']
  exact ((posE n n').sum_comp (fun x => f x.1 x.2)).symm

theorem putB_posE (D : D7) {n n' : ℕ} (k : Fin n' × Fin n) (x : Fin 4 → D.host.E)
    (p : (Fin n' × Fin n) × Fin 4) :
    putB D k x (posE n n' p).1 (posE n n' p).2 = if p.1 = k then x p.2 else 0 := by
  simp [putB]

theorem hYY_putB (D : D7) {n n' : ℕ} (k k' : Fin n' × Fin n) (x y : Fin 4 → D.host.E) :
    TaylorLogMetric.hYY D (putB D k x) (putB D k' y) =
      if k = k' then Algebra.trace D.host.K D.host.E (∑ a, x a * D.host.conj (y a)) else 0 := by
  unfold TaylorLogMetric.hYY
  rw [sum_posE]
  simp only [putB_posE]
  rw [Fintype.sum_prod_type]
  split_ifs with h
  · subst h
    rw [Fintype.sum_eq_single k]
    · simp
    · intro k'' hk
      simp [hk]
  · rw [Finset.sum_eq_zero, map_zero]
    intro k'' _
    apply Finset.sum_eq_zero
    intro a _
    by_cases h1 : k'' = k
    · subst h1
      simp [h]
    · simp [h1]

end GlobalTheory.BaseVacuum

namespace GlobalTheory.BaseVacuum

variable {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}

theorem gamma_g_xv (B : Base D cc δ) (w : Fin 4 × D.what₂.Tau) : B.γ₀.g (xv B w) = Pi.single w 1 := by
  simp [xv]

theorem trace_xv (B : Base D cc δ) (w w' : Fin 4 × D.what₂.Tau) :
    Algebra.trace D.host.K D.host.E (∑ a, xv B w a * D.host.conj (xv B w' a)) = if w = w' then 1 else 0 := by
  apply (algebraMap D.host.K D.host.E).injective
  have h := B.γ₀.isom (xv B w) (xv B w')
  rw [gamma_g_xv, gamma_g_xv] at h

  rw [map_sum, ← h]
  simp only [Pi.single_apply]
  by_cases hw : w = w'
  · subst hw
    simp
  · rw [if_neg hw, map_zero]
    apply Finset.sum_eq_zero
    intro u _
    by_cases hu : u = w
    · subst hu
      simp [hw]
    · simp [hu]

theorem orthonormal_bas (B : Base D cc δ) (n n' : ℕ) : TaylorLogMetric.Orthonormal D (bas B n n') := by
  intro i j
  unfold bas
  rw [hYY_putB]
  by_cases hk : (ixE D n n' i).1 = (ixE D n n' j).1
  · rw [if_pos hk, trace_xv]
    congr 1
    apply propext
    constructor
    · intro h
      exact (ixE D n n').injective (Prod.ext hk h)
    · intro h
      rw [h]
  · rw [if_neg hk, if_neg]
    intro h
    exact hk (by rw [h])



theorem sum_g_smul_xv (B : Base D cc δ) (y : Fin 4 → D.host.E) :
    ∑ w, B.γ₀.g y w • xv B w = y := by
  have h1 : ∑ w, B.γ₀.g y w • (Pi.single w (1 : D.host.K) : Fin 4 × D.what₂.Tau → D.host.K) = B.γ₀.g y := by
    ext u
    simp [Finset.sum_apply, Pi.single_apply]
  calc ∑ w, B.γ₀.g y w • xv B w = B.γ₀.g.symm (∑ w, B.γ₀.g y w • Pi.single w (1 : D.host.K)) := by

        simp only [map_sum, map_smul, xv]
    _ = y := by rw [h1, LinearEquiv.symm_apply_apply]

theorem matrix_eq_sum_putB (B : Base D cc δ) (n n' : ℕ) (M : Matrix (Fin (n' * 2)) (Fin (n * 2)) D.host.E) :
    M = ∑ k : Fin n' × Fin n, ∑ w : Fin 4 × D.what₂.Tau,
      B.γ₀.g (fun a => M (posE n n' (k, a)).1 (posE n n' (k, a)).2) w • putB D k (xv B w) := by
  ext i j
  obtain ⟨p, hp⟩ := (posE n n').surjective (i, j)
  have hi : i = (posE n n' p).1 := by rw [hp]
  have hj : j = (posE n n' p).2 := by rw [hp]
  subst hi hj
  simp only [Matrix.sum_apply, Matrix.smul_apply, putB_posE, smul_ite, smul_zero]
  rw [Fintype.sum_eq_single p.1]
  · simp only [if_true]
    have := congrFun (sum_g_smul_xv B (fun a => M (posE n n' (p.1, a)).1 (posE n n' (p.1, a)).2)) p.2
    rw [Finset.sum_apply] at this
    simp only [Pi.smul_apply] at this
    rw [this]
  · intro k hk
    apply Finset.sum_eq_zero
    intro w _
    rw [if_neg (Ne.symm hk)]

theorem onB_bas : ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ) (n n' : ℕ),
    StandardLatticesGL3.OnB D (bas B n n') := by
  intro D cc δ B n n'
  refine ⟨orthonormal_bas B n n', ?_⟩
  refine eq_top_iff.2 fun M _ => ?_
  rw [matrix_eq_sum_putB B n n' M]
  refine Submodule.sum_mem _ fun k _ => Submodule.sum_mem _ fun w _ => Submodule.smul_mem _ _ ?_
  refine Submodule.subset_span ⟨(ixE D n n').symm (k, w), ?_⟩
  simp [bas]

end GlobalTheory.BaseVacuum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrthonormalBasisBlockVacuumLatticeBasisFamily =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumLatticeBasisCoordinateEqCoordinateEqu =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumLatticeBasisCoordinateEqCoordinateEqu", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.QuasiPeriodConstUniqueOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open Classical

noncomputable section
namespace GlobalTheory.BaseVacuum
open scoped BigOperators

theorem sum_putB_embT (D : D7) {n n' : ℕ} (k : Fin n' × Fin n) (x : Fin 4 → D.host.E) (τ : D.what₂.Tau)
    (z : TaylorLogMetric.VC D (n * 2) (n' * 2)) :
    (∑ a, ∑ c, z τ a c * (starRingEnd ℂ) (TaylorLogMetric.embT D τ (putB D k x a c)))
      = ∑ b : Fin 4, blk D k z (b, τ) * (starRingEnd ℂ) (emb4 D x (b, τ)) := by
  rw [← Fintype.sum_prod_type' (f := fun a c => z τ a c * (starRingEnd ℂ) (TaylorLogMetric.embT D τ (putB D k x a c)))]
  rw [← (posE n n').sum_comp]
  rw [Fintype.sum_prod_type, Finset.sum_eq_single k]
  · refine Finset.sum_congr rfl fun b _ => ?_
    simp [putB, blk, emb4]
  · intro k' _ hk'
    refine Finset.sum_eq_zero fun b _ => ?_
    simp [putB, hk']
  · simp

theorem blockVacuum_coordinate_eq_coordinateEquiv_numbering (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ) (n n' : ℕ)
    (j : Fin (TaylorLogMetric.fF D * (n * 2) * (n' * 2))) (z : TaylorLogMetric.VC D (n * 2) (n' * 2)) :
    StandardLatticesGL3.coordB D (TaylorLogMetric.tor0 D cc δ) (bas B n n') j z = phi B n n' z (ixE D n n' j) := by
  set k := (ixE D n n' j).1
  set w := (ixE D n n' j).2
  have h1 : StandardLatticesGL3.coordB D (TaylorLogMetric.tor0 D cc δ) (bas B n n') j z
      = ∑ w', blk D k z w' * (starRingEnd ℂ) (emb4 D (xv B w) w') := by
    unfold StandardLatticesGL3.coordB
    rw [Fintype.sum_prod_type_right (f := fun w' : Fin 4 × D.what₂.Tau => blk D k z w' * (starRingEnd ℂ) (emb4 D (xv B w) w'))]
    refine Finset.sum_congr rfl fun τ _ => ?_
    exact sum_putB_embT D k (xv B w) τ z
  have hg : B.gC (emb4 D (xv B w)) = Pi.single w 1 := by
    rw [show B.gC (emb4 D (xv B w)) = _ from B.gC_spec (xv B w)]
    funext w'
    simp only [xv, LinearEquiv.apply_symm_apply]
    by_cases h : w' = w
    · subst h; simp
    · simp [h]
  have hA : ((Formalism.L2.Th1.F.area B.L : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (Formalism.L2.Th1.F.areaPos_thm B.L).ne'
  have hI := B.isomOK (blk D k z) (emb4 D (xv B w))
  rw [blockFourfold_hOne_eq_hOne] at hI
  change (matH (hOne B.L (Fin 4 × D.what₂.Tau))) (B.gC (blk D k z)) (B.gC (emb4 D (xv B w))) = _ at hI
  rw [matH_hOne, matH_hOne, div_left_inj' hA, hg] at hI
  rw [h1, ← hI, phi_apply]
  simp [Pi.single_apply]
  rfl

theorem coordB_bas_eq_phi : ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ) (n n' : ℕ) (j : Fin (TaylorLogMetric.fF D * (n * 2) * (n' * 2))) (z : TaylorLogMetric.VC D (n * 2) (n' * 2)), StandardLatticesGL3.coordB D (TaylorLogMetric.tor0 D cc δ) (bas B n n') j z = phi B n n' z (ixE D n n' j) :=
  blockVacuum_coordinate_eq_coordinateEquiv_numbering

end GlobalTheory.BaseVacuum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumLatticeBasisCoordinateEqCoordinateEqu =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackBasisThetaEqF0Form =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackBasisThetaEqF0Form", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumLatticeBasisCoordinateEqCoordinateEqu\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.VacuumEntireAndNormalizedJetsAlgebraic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open Classical

namespace GlobalTheory.BaseVacuum

theorem pullback_basis_theta_eq_F0 : ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ) (n n' : ℕ) (z : TaylorLogMetric.VC D (n * 2) (n' * 2)), StandardLatticesGL3.pullB D (TaylorLogMetric.tor0 D cc δ) (bas B n n') (GL3Theta.th0 (TaylorLogMetric.lamOf D cc δ) (B.ω₀ / 2)) z = F0 B.L B.ω₀ (Ix D n n') (phi B n n' z) := by
  intro D cc δ B n n' z
  have hth : GL3Theta.th0 (TaylorLogMetric.lamOf D cc δ) (B.ω₀ / 2) = Formalism.L2.Th1.F.th0 B.L (B.ω₀ / 2) := by
    exact (GlobalTheory.Mem.Col2.JetAlgebraic.thetaZero_periodLattice_eq B _).symm
  simp only [StandardLatticesGL3.pullB, F0, prodFn, hth, _root_.GlobalTheory.BaseVacuum.coordB_bas_eq_phi]
  exact Fintype.prod_equiv (ixE D n n') _ _ (fun _ => rfl)

end GlobalTheory.BaseVacuum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackBasisThetaEqF0Form =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaVacuumEqKappaPowMulBlockKernels =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaVacuumEqKappaPowMulBlockKernels", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\npublic import Formalism.LocalToGlobal.InertKernelTheory.StatementAlg\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open Classical

namespace GlobalTheory.BaseVacuum

theorem thZero_eq_kappa_pow_mul_prod_kerB : ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ), B.StdOK →
    ∀ (n n' : ℕ) (z : TaylorLogMetric.VC D (n * 2) (n' * 2)),
      B.thZero (n * 2) (n' * 2) z = B.kappa ^ (n' * n) * ∏ k : Fin n' × Fin n, Formalism.L2.KerInert.kerB B (blk D k z) := by
  intro D cc δ B hS n n' z
  have h4 : tens4 B.thMM = B.kappa • Formalism.L2.KerInert.kerB B := (B.thMM_spec hS).2
  have hk : ∀ k : Fin n' × Fin n,
      B.kappa * Formalism.L2.KerInert.kerB B (blk D k z) =
        ∏ a : Fin 4, B.thMM (fun τ => z τ (posE n n' (k, a)).1 (posE n n' (k, a)).2) := by
    intro k
    have := congrFun h4 (blk D k z)
    rw [Pi.smul_apply, smul_eq_mul] at this
    rw [← this]
    rfl
  have hcard : B.kappa ^ (n' * n) = ∏ _k : Fin n' × Fin n, B.kappa := by
    simp [Finset.prod_const, Finset.card_univ, Fintype.card_prod, Fintype.card_fin]
  rw [hcard, ← Finset.prod_mul_distrib]
  simp_rw [hk]
  rw [← Fintype.prod_prod_type' (f := fun k a => B.thMM (fun τ => z τ (posE n n' (k, a)).1 (posE n n' (k, a)).2))]
  rw [Fintype.prod_equiv (posE n n')
    (fun p => B.thMM (fun τ => z τ (posE n n' p).1 (posE n n' p).2))
    (fun q => B.thMM (fun τ => z τ q.1 q.2)) (fun _ => rfl)]
  show tensPow B.thMM (n * 2) (n' * 2) z = _
  unfold tensPow
  rw [← Fintype.prod_prod_type' (f := fun i j => B.thMM (fun τ => z τ i j))]

end GlobalTheory.BaseVacuum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaVacuumEqKappaPowMulBlockKernels =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseThetaVectorIsVacuumEvenRanks =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseThetaVectorIsVacuumEvenRanks", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.LateralTheory\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlkLat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseLatticeEqComapBlockwiseLattice\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumCoordinateEquivIsometry\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockVacuumLatticeEqComapStandardLattice\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KappaProductPowAlgebraicModulusOneAll\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.IsSemiChar\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeIntertwinerComapLinearIsometry\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LatticeIntertwinerProdOrthogonalBlocks\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrthonormalBasisBlockVacuumLatticeBasisFamily\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PullbackBasisThetaEqF0Form\npublic import Formalism.LocalToGlobal.InertKernelTheory.StatementAlg\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaVacuumEqKappaPowMulBlockKernels\nimport Formalism.LocalToGlobal.GlobalTheory.GL3.PStdOK\nimport Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.MatrixFormFourfoldBlock\nimport Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.Th0CharMulOpUTh0HalfPeriodEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker Formalism.L2.Th1.H GlobalTheory.BaseVacuum
open scoped BigOperators
open Classical

namespace GlobalTheory.BaseVacuum

theorem inter_congr_al {V : Type} [AddCommGroup V] [Module ℂ V] (H : Sesq V) (α α' : V → ℂ) (Λ₁ Λ₂ : AddSubgroup V)
    (F : V → ℂ) (h : ∀ x ∈ Λ₂, α x = α' x) : inter H α Λ₁ Λ₂ F = inter H α' Λ₁ Λ₂ F := by
  funext z
  unfold inter
  congr 1
  exact finsum_congr fun c => by rw [h _ (Quotient.out c : Λ₂).2]

theorem thetaVectorUpToUnits_thZero_of_even : ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ), TaylorLogMetric.adm1 D → GL3Theta.InducedCMType D →
    TaylorLogMetric.IsCurveIdeal D cc → TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ → B.kc.YFinite → ∀ N N' : ℕ, Even N → Even N' →
    StandardLatticesGL3.ThetaVectorUpToUnits D (TaylorLogMetric.tor0 D cc δ) (B.ω₀ / 2) (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N') (B.thZero N N') := by
  intro D cc δ B _ _ hcc hδ _ N N' hN hN'
  obtain ⟨n, hn⟩ := hN
  obtain ⟨n', hn'⟩ := hN'
  obtain rfl : N = n * 2 := by omega
  obtain rfl : N' = n' * 2 := by omega
  have hS : B.StdOK := GlobalTheory.FourthRootStd.stdOK B hcc hδ
  refine ⟨bas B n n', B.kappa ^ (n' * n), _root_.GlobalTheory.BaseVacuum.onB_bas D cc δ B n n', _root_.GlobalTheory.KappaPowMod.kappa_pow_mod1All D cc δ B _, ?_⟩
  funext z
  obtain ⟨hsc', hF0', hidx', hprod⟩ := _root_.GlobalTheory.BaseVacuum.prod_blk_inter B.L B.ω₀ B.cq (Fin n' × Fin n) (Fin 4 × D.what₂.Tau)
    (imgLat (B.gC : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)) (pow4 B.lamM)) hS.betaSemi
    (product_theta_mem B.L B.ω₀ _ hS.per hS.half _ hS.betaStd).1.2 hS.idx₁
  have hH : IsHerm (stdH B.L (Ix D n n')) := (standardFormBasic B.L _).2.1
  have hnat := _root_.GlobalTheory.inter_comap_isom _ _ (formV (TaylorLogMetric.area (TaylorLogMetric.tor0 D cc δ).abelian₂) D.what₂.Tau (n * 2) (n' * 2))
    (stdH B.L (Ix D n n')) (phi B n n') (fun x y => _root_.GlobalTheory.BaseVacuum.phi_isom D cc δ B n n' x y) hH _ _ _ _ hsc' hF0' hidx' z
  rw [_root_.GlobalTheory.BaseVacuum.thZero_eq_kappa_pow_mul_prod_kerB D cc δ B hS n n' z]
  congr 1
  rw [Iop_eq, _root_.GlobalTheory.BaseVacuum.laB_eq_comap, _root_.GlobalTheory.BaseVacuum.baseLattice_eq_comap_blockwise_lattice, show StandardLatticesGL3.pullB D (TaylorLogMetric.tor0 D cc δ) (bas B n n') (GL3Theta.th0 (TaylorLogMetric.tor0 D cc δ).abelian₂ (B.ω₀ / 2))
      = fun v => F0 B.L B.ω₀ (Ix D n n') (phi B n n' v) from funext (_root_.GlobalTheory.BaseVacuum.pullback_basis_theta_eq_F0 D cc δ B n n')]
  rw [inter_congr_al _ _ (fun v => alphaQ B.cq (stdH B.L (Ix D n n')) (phi B n n' v)) _ _ _ ?_, hnat, hprod]
  · rfl
  · intro x hx
    have hx' : x ∈ TaylorLogMetric.La D (TaylorLogMetric.tor0 D cc δ) (StandardLatticesGL3.stdL D (n * 2)) (StandardLatticesGL3.stdL D (n' * 2)) := by
      rw [_root_.GlobalTheory.BaseVacuum.baseLattice_eq_comap_blockwise_lattice D cc δ B n n']; exact hx
    obtain ⟨m, hm⟩ := B.qInt0 hS (n * 2) (n' * 2) x hx'
    rw [al_eq D _ x m hm]
    unfold alphaQ qOf
    rw [← _root_.GlobalTheory.BaseVacuum.phi_isom D cc δ B n n' x x]
    rfl

end GlobalTheory.BaseVacuum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseThetaVectorIsVacuumEvenRanks =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormOneCharacterModulusOneAllEmbeddings =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormOneCharacterModulusOneAllEmbeddings", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.StandardLatticesGL3\npublic import Mathlib.NumberTheory.NumberField.ClassNumber\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.KernelLattices.XiIndCClass\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker

noncomputable section

namespace GlobalTheory.CharModOne

open scoped nonZeroDivisors

section General

variable {E : Type} [Field E] [NumberField E]

def intMap (σ : E ≃ₐ[ℚ] E) (r : 𝓞 E) : 𝓞 E :=
  ⟨σ r, (RingOfIntegers.isIntegral_coe r).map (σ.toAlgHom.restrictScalars ℤ)⟩

def cj (σ : E ≃ₐ[ℚ] E) (M : Submodule (𝓞 E) E) : Submodule (𝓞 E) E where
  carrier := {x | σ x ∈ M}
  add_mem' {x y} hx hy := by
    show σ (x + y) ∈ M
    rw [map_add (f := _)]; exact M.add_mem hx hy
  zero_mem' := by
    show σ 0 ∈ M
    rw [map_zero]; exact M.zero_mem
  smul_mem' r x hx := by
    show σ (r • x) ∈ M
    rw [Algebra.smul_def, map_mul]
    have : σ (algebraMap (𝓞 E) E r) * σ x = intMap σ r • σ x := by
      rw [Algebra.smul_def]; rfl
    rw [this]; exact M.smul_mem _ hx

theorem mem_cj (σ : E ≃ₐ[ℚ] E) (M : Submodule (𝓞 E) E) (x : E) : x ∈ cj σ M ↔ σ x ∈ M := Iff.rfl

theorem cj_mono (σ : E ≃ₐ[ℚ] E) {M N : Submodule (𝓞 E) E} (h : M ≤ N) : cj σ M ≤ cj σ N :=
  fun _ hx => h hx

theorem cj_cj (σ : E ≃ₐ[ℚ] E) (hσ : ∀ x, σ (σ x) = x) (M : Submodule (𝓞 E) E) : cj σ (cj σ M) = M := by
  ext x; rw [mem_cj, mem_cj, hσ]

theorem cj_mul_le (σ : E ≃ₐ[ℚ] E) (M N : Submodule (𝓞 E) E) : cj σ M * cj σ N ≤ cj σ (M * N) := by
  refine Submodule.mul_le.2 fun x hx y hy => ?_
  rw [mem_cj, map_mul]
  exact Submodule.mul_mem_mul hx hy

theorem cj_mul (σ : E ≃ₐ[ℚ] E) (hσ : ∀ x, σ (σ x) = x) (M N : Submodule (𝓞 E) E) :
    cj σ (M * N) = cj σ M * cj σ N := by
  refine le_antisymm ?_ (cj_mul_le σ M N)
  have h := cj_mono σ (cj_mul_le σ (cj σ M) (cj σ N))
  rwa [cj_cj σ hσ, cj_cj σ hσ, cj_cj σ hσ] at h

theorem one_le_cj_one (σ : E ≃ₐ[ℚ] E) : (1 : Submodule (𝓞 E) E) ≤ cj σ 1 := by
  intro x hx
  obtain ⟨y, rfl⟩ := Submodule.mem_one.1 hx
  exact Submodule.mem_one.2 ⟨intMap σ y, rfl⟩

theorem cj_one (σ : E ≃ₐ[ℚ] E) (hσ : ∀ x, σ (σ x) = x) : cj σ (1 : Submodule (𝓞 E) E) = 1 := by
  refine le_antisymm ?_ (one_le_cj_one σ)
  have h := cj_mono σ (one_le_cj_one σ)
  rwa [cj_cj σ hσ] at h

theorem cj_pow (σ : E ≃ₐ[ℚ] E) (hσ : ∀ x, σ (σ x) = x) (M : Submodule (𝓞 E) E) (n : ℕ) :
    cj σ (M ^ n) = cj σ M ^ n := by
  induction n with
  | zero => simp [cj_one σ hσ]
  | succ n ih => rw [pow_succ, pow_succ, cj_mul σ hσ, ih]

theorem span_le_cj_span (σ : E ≃ₐ[ℚ] E) (hσ : ∀ x, σ (σ x) = x) (a : E) :
    Submodule.span (𝓞 E) {σ a} ≤ cj σ (Submodule.span (𝓞 E) {a}) := by
  rw [Submodule.span_le, Set.singleton_subset_iff]
  exact (mem_cj σ _ _).2 (by rw [hσ]; exact Submodule.mem_span_singleton_self a)

theorem cj_span (σ : E ≃ₐ[ℚ] E) (hσ : ∀ x, σ (σ x) = x) (a : E) :
    cj σ (Submodule.span (𝓞 E) {a}) = Submodule.span (𝓞 E) {σ a} := by
  refine le_antisymm ?_ (span_le_cj_span σ hσ a)
  have h := cj_mono σ (span_le_cj_span σ hσ (σ a))
  rwa [cj_cj σ hσ, hσ] at h

theorem span_mul_span_singleton (a b : E) :
    Submodule.span (𝓞 E) {a} * Submodule.span (𝓞 E) {b} = Submodule.span (𝓞 E) {a * b} := by
  rw [Submodule.span_mul_span, Set.singleton_mul_singleton]

theorem exists_pow_card_eq_span (𝔞 𝔟 : Submodule (𝓞 E) E) (h : 𝔞 * 𝔟 = 1) :
    ∃ a : E, 𝔞 ^ Fintype.card (ClassGroup (𝓞 E)) = Submodule.span (𝓞 E) {a} := by
  have hfa : IsFractional (𝓞 E)⁰ 𝔞 :=
    FractionalIdeal.isFractional_of_fg (Submodule.fg_of_isUnit (Units.mkOfMulEqOne 𝔞 𝔟 h).isUnit)
  have hfb : IsFractional (𝓞 E)⁰ 𝔟 :=
    FractionalIdeal.isFractional_of_fg (Submodule.fg_of_isUnit (Units.mkOfMulEqOne 𝔟 𝔞 (by rw [mul_comm]; exact h)).isUnit)
  let I : FractionalIdeal (𝓞 E)⁰ E := ⟨𝔞, hfa⟩
  let J : FractionalIdeal (𝓞 E)⁰ E := ⟨𝔟, hfb⟩
  have hIJ : I * J = 1 := by
    apply FractionalIdeal.coeToSubmodule_injective
    show ((I * J : FractionalIdeal (𝓞 E)⁰ E) : Submodule (𝓞 E) E) = ((1 : FractionalIdeal (𝓞 E)⁰ E) : Submodule (𝓞 E) E)
    rw [FractionalIdeal.coe_mul, FractionalIdeal.coe_one]
    exact h
  let U : (FractionalIdeal (𝓞 E)⁰ E)ˣ := Units.mkOfMulEqOne I J hIJ
  have h1 := pow_card_eq_one (x := ClassGroup.mk E U)
  rw [← map_pow, ClassGroup.mk_eq_one_iff] at h1
  obtain ⟨a, ha⟩ := h1.principal
  refine ⟨a, ?_⟩
  rw [← ha, Units.val_pow_eq_pow_val, FractionalIdeal.coe_pow]
  rfl

end General

end GlobalTheory.CharModOne

namespace GlobalTheory.CharModOne

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem star_eq_conj (D : D7) (x : D.host.E) : star x = D.host.conj x := by
  apply D.host.φ₀.injective
  letI := D.host.isCMField_hostE
  show D.host.φ₀ (IsCMField.complexConj D.host.E x) = _
  rw [NumberField.IsCMField.complexEmbedding_complexConj, Formalism.HC.HostAx.conjE_apply]

theorem emb_conj (D : D7) (ρ : D.host.E →+* ℂ) (x : D.host.E) :
    ρ (D.host.conj x) = starRingEnd ℂ (ρ x) :=
  D.host.conjE_apply ρ x

theorem conj_conj (D : D7) (x : D.host.E) : D.host.conj (D.host.conj x) = x := by
  apply D.host.φ₀.injective
  rw [emb_conj, emb_conj, Complex.conj_conj]

theorem mod1All_of_isChi : ∀ (D : D7) (χ : TaylorLogMetric.IdE D → ℂ), TaylorLogMetric.IsChi D χ → ∀ 𝔞 : TaylorLogMetric.IdE D, TaylorLogMetric.N1 D 𝔞 →
    StandardLatticesGL3.Mod1All (χ 𝔞) := by
  intro D χ hχ 𝔞 h𝔞
  set σ := D.host.conj with hσdef
  have hinv : ∀ x, σ (σ x) = x := conj_conj D
  obtain ⟨𝔟, h𝔟, hab⟩ := h𝔞
  have hb : 𝔟 = cj σ 𝔞 := Submodule.ext h𝔟
  have hN1 : ∀ n : ℕ, TaylorLogMetric.N1 D (𝔞 ^ n) := fun n =>
    ⟨𝔟 ^ n, fun x => by rw [hb, ← cj_pow σ hinv]; exact mem_cj σ _ x, by rw [← mul_pow, hab, one_pow]⟩
  have hχpow : ∀ n : ℕ, χ (𝔞 ^ (n + 1)) = χ 𝔞 ^ (n + 1) := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      rw [pow_succ 𝔞 (n + 1), hχ.1 _ _ (hN1 _) ⟨𝔟, h𝔟, hab⟩, ih]; ring
  obtain ⟨a, ha⟩ := exists_pow_card_eq_span 𝔞 𝔟 hab
  set h := Fintype.card (ClassGroup (𝓞 D.host.E)) with hhdef
  have hpos : 0 < h := Fintype.card_pos
  have hb' : 𝔟 ^ h = Submodule.span (𝓞 D.host.E) {σ a} := by rw [hb, ← cj_pow σ hinv, ha, cj_span σ hinv]
  have h1 : Submodule.span (𝓞 D.host.E) {a} * Submodule.span (𝓞 D.host.E) {σ a} = 1 := by
    rw [← ha, ← hb', ← mul_pow, hab, one_pow]
  have ha0 : a ≠ 0 := by
    rintro rfl
    rw [Submodule.span_singleton_eq_bot.2 rfl, Submodule.bot_mul] at h1
    have : (1 : D.host.E) ∈ (1 : Submodule (𝓞 D.host.E) D.host.E) := Submodule.mem_one.2 ⟨1, map_one _⟩
    rw [← h1, Submodule.mem_bot] at this
    exact one_ne_zero this
  have hσa0 : σ a ≠ 0 := (map_ne_zero σ).2 ha0
  set z : D.host.E := a / σ a with hzdef
  have hσz : σ z = σ a / a := by rw [hzdef, map_div₀, hinv]
  have hz1 : z * σ z = 1 := by rw [hσz, hzdef]; field_simp
  have hz : z ∈ unitary D.host.E := by
    rw [Unitary.mem_iff, star_eq_conj]
    exact ⟨by rw [mul_comm]; exact hz1, hz1⟩
  have hspan : Submodule.span (𝓞 D.host.E) {z} = 𝔞 ^ (2 * h) := by
    have e1 : z * σ a = a := by rw [hzdef]; field_simp
    calc Submodule.span (𝓞 D.host.E) {z}
        = Submodule.span (𝓞 D.host.E) {z} * (Submodule.span (𝓞 D.host.E) {σ a} * Submodule.span (𝓞 D.host.E) {a}) := by
          rw [mul_comm (Submodule.span (𝓞 D.host.E) {σ a}), h1, mul_one]
      _ = Submodule.span (𝓞 D.host.E) {a} * Submodule.span (𝓞 D.host.E) {a} := by
          rw [← mul_assoc, span_mul_span_singleton, e1]
      _ = 𝔞 ^ (2 * h) := by rw [← ha, two_mul, pow_add]
  have key : χ 𝔞 ^ (2 * h) = ∏ τ : D.what₂.Tau, (TaylorLogMetric.embT D τ z)⁻¹ := by
    have e := hχ.2 ⟨z, hz⟩
    simp only at e
    rw [hspan] at e
    obtain ⟨k, hk⟩ : ∃ k, 2 * h = k + 1 := ⟨2 * h - 1, by omega⟩
    rw [← e, hk, hχpow]

  have hemb : ∀ τ : D.what₂.Tau, TaylorLogMetric.embT D τ z ∈ TaylorLogMetric.Qbar := fun τ =>
    mem_algebraicClosure_iff.2 ((Algebra.IsAlgebraic.isAlgebraic (R := ℚ) z).algHom (TaylorLogMetric.embT D τ).toRatAlgHom)
  have hc : (∏ τ : D.what₂.Tau, (TaylorLogMetric.embT D τ z)⁻¹) ∈ TaylorLogMetric.Qbar :=
    prod_mem fun τ _ => inv_mem (hemb τ)
  have hx : χ 𝔞 ∈ TaylorLogMetric.Qbar := by
    rw [mem_algebraicClosure_iff]
    refine IsAlgebraic.of_pow (n := 2 * h) (by omega) ?_
    rw [key]
    exact mem_algebraicClosure_iff.1 hc
  refine ⟨hx, fun ρ => ?_⟩
  have hw : (⟨χ 𝔞, hx⟩ : TaylorLogMetric.Qbar) ^ (2 * h) = ∏ τ : D.what₂.Tau, (⟨TaylorLogMetric.embT D τ z, hemb τ⟩ : TaylorLogMetric.Qbar)⁻¹ := by
    apply Subtype.ext
    push_cast
    exact key
  have hone : ∀ τ : D.what₂.Tau, ‖ρ ⟨TaylorLogMetric.embT D τ z, hemb τ⟩‖ = 1 := by
    intro τ
    let ρ' : D.host.E →+* ℂ := ρ.comp ((TaylorLogMetric.embT D τ).codRestrict TaylorLogMetric.Qbar fun x =>
      mem_algebraicClosure_iff.2 ((Algebra.IsAlgebraic.isAlgebraic (R := ℚ) x).algHom (TaylorLogMetric.embT D τ).toRatAlgHom))
    have hρ' : ρ' z = ρ ⟨TaylorLogMetric.embT D τ z, hemb τ⟩ := rfl
    have h2 : ρ' z * starRingEnd ℂ (ρ' z) = 1 := by rw [← emb_conj, ← map_mul, hz1, map_one]
    have h3 : ‖ρ' z‖ ^ 2 = 1 := by
      calc ‖ρ' z‖ ^ 2 = ‖ρ' z * starRingEnd ℂ (ρ' z)‖ := by rw [norm_mul, Complex.norm_conj, sq]
        _ = 1 := by rw [h2, norm_one]
    rw [← hρ']
    exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) two_ne_zero).1 h3
  have h4 : ‖ρ ⟨χ 𝔞, hx⟩‖ ^ (2 * h) = 1 := by
    rw [← norm_pow, ← map_pow, hw, map_prod, norm_prod]
    simp [map_inv₀, norm_inv, hone]
  exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) (by omega)).1 h4

end GlobalTheory.CharModOne
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormOneCharacterModulusOneAllEmbeddings =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelDetIdealSelfDualNormOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelDetIdealSelfDualNormOne", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.FiniteSumNonzeroLargeDepth\npublic import Formalism.SharpRestriction.GlobalSchurBounds.StandardLatticesGL3\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.StandardRankOneLatticeOfLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker

namespace GlobalTheory.SelfDualDetNorm

theorem star_eq_conj (D : D7) (x : D.host.E) :
    (letI := D.host.cmStar; star x) = D.host.conj x := by
  apply _root_.GlobalTheory.CharModOne.star_eq_conj <;> assumption

theorem isSdLat_of_isSDLat {E : Type} [Field E] [NumberField E] [StarRing E] {n : ℕ}
    (L : Submodule (𝓞 E) (Fin n → E)) (hL : IsSDLat E n L) : Formalism.L2.Col.IsSdLat (E := E) L := by
  obtain ⟨hfg, hsp, hd⟩ := hL
  refine ⟨Submodule.IsLattice.of_fg E hfg, ?_⟩
  ext y
  rw [hd y]
  simp only [Formalism.HermitianLatticesTheory.dual, Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap,
    LinearMap.restrictScalars_apply, Submodule.mem_one]
  rfl

theorem detId_normOne : ∀ (D : D7) (N : ℕ) (L : Submodule (𝓞 D.host.E) (Fin N → D.host.E)),
    StandardLatticesGL3.SD D L → TaylorLogMetric.N1 D (TaylorLogMetric.detId D (StandardLatticesGL3.stdL D N) L) := by
  intro D N L hL
  letI := D.host.cmStar
  obtain ⟨J, hJ, hIJ⟩ := GlobalTheory.CharValCompare.normOne_detI (isSdLat_of_isSDLat L hL)
  refine ⟨J, fun x => by rw [hJ, star_eq_conj]; exact Iff.rfl, ?_⟩
  exact hIJ

end GlobalTheory.SelfDualDetNorm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelDetIdealSelfDualNormOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedFamilyEqTensorPowerVacuum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedFamilyEqTensorPowerVacuum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CosetRefinement\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ExistsPowPrincipalFractionalIdeal\npublic import Formalism.LocalToGlobal.KernelLattices.LateralTheory\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseThetaVectorIsVacuumEvenRanks\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsVacuumMovedThetaVacuum\npublic import Formalism.SharpRestriction.GlobalSchurBounds.StandardLatticesGL3\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormOneCharacterModulusOneAllEmbeddings\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelDetIdealSelfDualNormOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Ker

noncomputable section

namespace GlobalTheory.FamilyTieProof

theorem std : ∀ (D : D7) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (B : Base D cc δ), TaylorLogMetric.adm1 D → GL3Theta.InducedCMType D → TaylorLogMetric.IsCurveIdeal D cc → TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ → B.kc.YFinite → ∀ N N' : ℕ, Even N → Even N' → StandardLatticesGL3.ThetaVectorUpToUnits D (TaylorLogMetric.tor0 D cc δ) (B.ω₀ / 2) (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N') (B.thZero N N') := _root_.GlobalTheory.BaseVacuum.thetaVectorUpToUnits_thZero_of_even

theorem genusOneVacuum_const_mul_modulusOne {D : D7} {T : TaylorLogMetric.Tor D} {t0 : ℂ} {N N' : ℕ} {L : Submodule (𝓞 D.host.E) (Fin N → D.host.E)}
    {L' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)} {G : TaylorLogMetric.VC D N N' → ℂ} {c : ℂ} (hc : StandardLatticesGL3.Mod1All c)
    (hG : StandardLatticesGL3.ThetaVectorUpToUnits D T t0 L L' G) : StandardLatticesGL3.ThetaVectorUpToUnits D T t0 L L' (fun z => c * G z) := by
  obtain ⟨b, κ, hb, hκ, rfl⟩ := hG
  exact ⟨b, c * κ, hb, _root_.GlobalTheory.KappaPowMod.algebraicModulusOneAll_mul hc hκ, funext fun z => by simp only [mul_assoc]⟩

theorem genusOneVacuum_indep_twoTorsionPoint {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (hc : StandardLatticesGL3.Crv D cc δ) {t t' : ℂ}
    (ht : GL3Theta.IsTwoTorsionPointUnkilled D (TaylorLogMetric.lamOf D cc δ) t) (ht' : GL3Theta.IsTwoTorsionPointUnkilled D (TaylorLogMetric.lamOf D cc δ) t') {N N' : ℕ}
    {L : Submodule (𝓞 D.host.E) (Fin N → D.host.E)} {L' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)}
    {G : TaylorLogMetric.VC D N N' → ℂ} (h : StandardLatticesGL3.ThetaVectorUpToUnits D (TaylorLogMetric.tor0 D cc δ) t L L' G) :
    StandardLatticesGL3.ThetaVectorUpToUnits D (TaylorLogMetric.tor0 D cc δ) t' L L' G := by
  have e : GL3Theta.th0 (TaylorLogMetric.lamOf D cc δ) t = GL3Theta.th0 (TaylorLogMetric.lamOf D cc δ) t' := by
    have := GlobalTheory.ThetaConj.evenTheta_add_lattice_mem (GlobalTheory.ThetaConj.isLat_lamOf hc) t' (GlobalTheory.Glob.isThetaZero_unique_lattice hc ht ht')
    rwa [add_sub_cancel] at this
  unfold StandardLatticesGL3.ThetaVectorUpToUnits at h ⊢
  exact e ▸ h

theorem chiFac_mod1All (D : D7) (χ : TaylorLogMetric.IdE D → ℂ) (hχ : TaylorLogMetric.IsChi D χ) (N N' : ℕ)
    (L : Submodule (𝓞 D.host.E) (Fin N → D.host.E)) (L' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E))
    (hA : TaylorLogMetric.admitted D N N' L L') : StandardLatticesGL3.Mod1All (Base.chiFac (D := D) χ N N' L L') :=
  _root_.GlobalTheory.KappaPowMod.algebraicModulusOneAll_mul (_root_.GlobalTheory.KappaPowMod.algebraicModulusOneAll_zpow (_root_.GlobalTheory.CharModOne.mod1All_of_isChi D χ hχ _ (_root_.GlobalTheory.SelfDualDetNorm.detId_normOne D N L hA.2.2.1)) _)
    (_root_.GlobalTheory.KappaPowMod.algebraicModulusOneAll_zpow (_root_.GlobalTheory.CharModOne.mod1All_of_isChi D χ hχ _ (_root_.GlobalTheory.SelfDualDetNorm.detId_normOne D N' L' hA.2.2.2)) _)

theorem familyTie : GlobalTheory.ColNorms.FamilyTie := by
  intro D cc δ B χ ha hp hcc hδ hχ hY t0 ht N N' L L' hA
  have hc : StandardLatticesGL3.Crv D cc δ := ⟨hcc, hδ⟩
  have h0 := genusOneVacuum_indep_twoTorsionPoint hc B.t0 ht (std D cc δ B ha hp hcc hδ hY N N' hA.1 hA.2.1)
  exact genusOneVacuum_const_mul_modulusOne (chiFac_mod1All D χ hχ N N' L L' hA)
    (GlobalTheory.MovedVacuum.isVacuum_movedThetaVacuum D cc δ B t0 hc ht N N' L L' hA.2.2.1 hA.2.2.2 h0)

end GlobalTheory.FamilyTieProof
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormalisedFamilyEqTensorPowerVacuum =====
