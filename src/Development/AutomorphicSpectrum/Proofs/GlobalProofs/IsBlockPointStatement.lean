module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Topology.Instances.Matrix
public import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
public import Mathlib.MeasureTheory.Function.L1Space.Integrable
public import Mathlib.MeasureTheory.Function.LocallyIntegrable
public import Mathlib.MeasureTheory.Group.Integral
public import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
public import Mathlib.MeasureTheory.Measure.Haar.Basic
public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Mathlib.LinearAlgebra.Matrix.Hermitian
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIsLatticeFrameIsMajorantFrame
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsSquareIntegrableIffMemL2
public import Mathlib.Analysis.Complex.Order
public import Mathlib.LinearAlgebra.Matrix.PosDef
public import Mathlib.LinearAlgebra.Matrix.ConjTranspose
public import Mathlib.Analysis.Matrix.PosDef
public import Mathlib.Algebra.Star.UnitaryStarAlgAut
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExpoConjOfIsCsd
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockEmbeddingArchimedeanComponents
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemUnipOfArchFrame
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Development.AbelianVarietyTheory.Definitions.Divisors.LocallyCompactUnipFlag
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsSmoothModerateOfIsAutFunSm
import Std.Tactic.BVDecide.Normalize.BitVec
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsSplitChartSplitChart
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantPosDefHermitian, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaximalCompactOfSkewHermitianTwist, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianPosDefSimultaneousNormalForm, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMajorantFrameCompactSubgroupLe, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMajorantFrameCompactSubgroupLeStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTransposeMulMulSelfOfUnitaryConj, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviElementIsotropicOrthogonalComplex, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFlagComplementPosDefFactorization, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFlagUnipotentMatrixExistsSparse, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosDefExistsConjTransposeMulMulEqOne, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RadicalEltMovingDualToMajorant, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplexWittBasisNormalForm, Development.AutomorphicSpectrum.Proofs.GlobalProofs.StabOfFrame, Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsConjMemMajCptFrame, Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsBlockPoint, Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsBlockPointStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantPosDefHermitian =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantPosDefHermitian", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Topology.Instances.Matrix\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic\npublic import Mathlib.MeasureTheory.Function.L1Space.Integrable\npublic import Mathlib.MeasureTheory.Function.LocallyIntegrable\npublic import Mathlib.MeasureTheory.Group.Integral\npublic import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap\npublic import Mathlib.MeasureTheory.Measure.Haar.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

noncomputable section
namespace GlobalTheory.CompactAvg
open MeasureTheory

theorem exists_invariant_posDef_hermitian {n : ℕ} (H : Subgroup (GL (Fin n) ℂ))
    (hH : IsCompact (H : Set (GL (Fin n) ℂ))) :
    ∃ P : Matrix (Fin n) (Fin n) ℂ, P.IsHermitian ∧ (∀ x : Fin n → ℂ, x ≠ 0 → 0 < (star x ⬝ᵥ P *ᵥ x).re) ∧
      ∀ g ∈ H, (g : Matrix (Fin n) (Fin n) ℂ)ᴴ * P * g = P := by
  classical
  haveI : CompactSpace H := isCompact_iff_compactSpace.1 hH
  letI : MeasurableSpace H := borel H
  haveI : BorelSpace H := ⟨rfl⟩
  let μ : Measure H := Measure.haarMeasure ⊤
  haveI : μ.IsHaarMeasure := Measure.isHaarMeasure_haarMeasure _
  let m : H → Matrix (Fin n) (Fin n) ℂ := fun g => (((g⁻¹ : H) : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ)
  have hm : Continuous m := Units.continuous_val.comp (continuous_subtype_val.comp continuous_inv)

  let f : H → (Fin n → Fin n → ℂ) := fun g => ((m g)ᴴ * m g : Matrix (Fin n) (Fin n) ℂ)
  have hf : Continuous f := hm.matrix_conjTranspose.matrix_mul hm
  have hfi : Integrable f μ := hf.integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
  let P₀ : Matrix (Fin n) (Fin n) ℂ := Matrix.of (∫ g, f g ∂μ)

  have hinv : ∀ h ∈ H, (h : Matrix (Fin n) (Fin n) ℂ)ᴴ * P₀ * h = P₀ := by
    intro h hh
    let M : Matrix (Fin n) (Fin n) ℂ := h
    let Lₗ : (Fin n → Fin n → ℂ) →ₗ[ℂ] (Fin n → Fin n → ℂ) :=
      { toFun := fun A => (Mᴴ * Matrix.of A * M : Matrix (Fin n) (Fin n) ℂ)
        map_add' := fun A B => by
          show Mᴴ * Matrix.of (A + B) * M = Mᴴ * Matrix.of A * M + Mᴴ * Matrix.of B * M
          rw [show Matrix.of (A + B) = Matrix.of A + Matrix.of B from rfl, Matrix.mul_add, Matrix.add_mul]
        map_smul' := fun c A => by
          show Mᴴ * Matrix.of (c • A) * M = c • (Mᴴ * Matrix.of A * M)
          rw [show Matrix.of (c • A) = c • Matrix.of A from rfl, Matrix.mul_smul, Matrix.smul_mul] }
    let L := LinearMap.toContinuousLinearMap Lₗ
    have e1 : L (∫ g, f g ∂μ) = ∫ g, L (f g) ∂μ := (ContinuousLinearMap.integral_comp_comm L hfi).symm
    have e2 : ∀ g : H, L (f g) = f ((⟨h, hh⟩ : H)⁻¹ * g) := by
      intro g
      have hq : m ((⟨h, hh⟩ : H)⁻¹ * g) = m g * M := by
        show (((((⟨h, hh⟩ : H)⁻¹ * g)⁻¹ : H) : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) = m g * M
        rw [_root_.mul_inv_rev, inv_inv]
        rfl
      show Mᴴ * ((m g)ᴴ * m g) * M = (m _)ᴴ * m _
      rw [hq, Matrix.conjTranspose_mul]
      simp only [Matrix.mul_assoc]
    have e3 : ∫ g, f ((⟨h, hh⟩ : H)⁻¹ * g) ∂μ = ∫ g, f g ∂μ := integral_mul_left_eq_self f _
    show L (∫ g, f g ∂μ) = ∫ g, f g ∂μ
    rw [e1]; simp_rw [e2]; exact e3

  have hpos : ∀ x : Fin n → ℂ, x ≠ 0 → 0 < (star x ⬝ᵥ P₀ *ᵥ x).re := by
    intro x hx
    let ℓₗ : (Fin n → Fin n → ℂ) →ₗ[ℂ] ℂ :=
      { toFun := fun A => star x ⬝ᵥ Matrix.of A *ᵥ x
        map_add' := fun A B => by
          show star x ⬝ᵥ Matrix.of (A + B) *ᵥ x = star x ⬝ᵥ Matrix.of A *ᵥ x + star x ⬝ᵥ Matrix.of B *ᵥ x
          rw [show Matrix.of (A + B) = Matrix.of A + Matrix.of B from rfl, Matrix.add_mulVec, dotProduct_add]
        map_smul' := fun c A => by
          show star x ⬝ᵥ Matrix.of (c • A) *ᵥ x = c • (star x ⬝ᵥ Matrix.of A *ᵥ x)
          rw [show Matrix.of (c • A) = c • Matrix.of A from rfl, Matrix.smul_mulVec, dotProduct_smul] }
    let ℓ := LinearMap.toContinuousLinearMap ℓₗ
    have e1 : ℓ (∫ g, f g ∂μ) = ∫ g, ℓ (f g) ∂μ := (ContinuousLinearMap.integral_comp_comm ℓ hfi).symm
    have hℓi : Integrable (fun g => ℓ (f g)) μ := ℓ.integrable_comp hfi
    have e2 : (star x ⬝ᵥ P₀ *ᵥ x).re = ∫ g, RCLike.re (ℓ (f g)) ∂μ := by
      rw [integral_re hℓi, ← e1]; rfl
    have e3 : ∀ g : H, RCLike.re (ℓ (f g)) = ∑ i, ‖(m g *ᵥ x) i‖ ^ 2 := by
      intro g
      show (star x ⬝ᵥ ((m g)ᴴ * m g) *ᵥ x).re = _
      rw [← Matrix.mulVec_mulVec, Matrix.dotProduct_mulVec, ← Matrix.star_mulVec]
      simp only [dotProduct, Pi.star_apply, Complex.re_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [Complex.sq_norm, Complex.normSq_apply]
      simp [Complex.mul_re]
    have hnz : ∀ g : H, m g *ᵥ x ≠ 0 := by
      intro g h0
      have : (((g : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) * m g) *ᵥ x = x := by
        simp [m]
      rw [← Matrix.mulVec_mulVec, h0, Matrix.mulVec_zero] at this
      exact hx this.symm
    have e4 : ∀ g : H, 0 < ∑ i, ‖(m g *ᵥ x) i‖ ^ 2 := by
      intro g
      obtain ⟨i, hi⟩ := Function.ne_iff.1 (hnz g)
      have hi' : 0 < ‖(m g *ᵥ x) i‖ ^ 2 := by
        have : 0 < ‖(m g *ᵥ x) i‖ := norm_pos_iff.2 hi
        positivity
      exact lt_of_lt_of_le hi' (Finset.single_le_sum (f := fun i => ‖(m g *ᵥ x) i‖ ^ 2)
        (fun j _ => by positivity) (Finset.mem_univ i))
    rw [e2]
    simp_rw [e3]
    have hgi : Integrable (fun g : H => ∑ i, ‖(m g *ᵥ x) i‖ ^ 2) μ :=
      (continuous_finsetSum _ fun i _ =>
        ((continuous_apply i).comp (hm.matrix_mulVec continuous_const)).norm.pow 2).integrable_of_hasCompactSupport
        (HasCompactSupport.of_compactSpace _)
    rw [integral_pos_iff_support_of_nonneg (fun g => (e4 g).le) hgi]
    have hs : Function.support (fun g : H => ∑ i, ‖(m g *ᵥ x) i‖ ^ 2) = Set.univ :=
      Set.eq_univ_of_forall fun g => (e4 g).ne'
    rw [hs]
    exact isOpen_univ.measure_pos μ Set.univ_nonempty
  refine ⟨P₀ + P₀ᴴ, ?_, ?_, ?_⟩
  · simp [Matrix.IsHermitian, add_comm]
  · intro x hx
    have hc : star x ⬝ᵥ P₀ᴴ *ᵥ x = star (star x ⬝ᵥ P₀ *ᵥ x) := by
      rw [Matrix.dotProduct_mulVec, ← Matrix.star_mulVec, star_dotProduct]
    rw [Matrix.add_mulVec, dotProduct_add, Complex.add_re, hc]
    have := hpos x hx
    simp only [Complex.star_def, Complex.conj_re]
    linarith
  · intro g hg
    have h1 := hinv g hg
    have h2 : (g : Matrix (Fin n) (Fin n) ℂ)ᴴ * P₀ᴴ * g = P₀ᴴ := by
      conv_rhs => rw [← h1]
      simp [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    rw [Matrix.mul_add, Matrix.add_mul, h1, h2]

end GlobalTheory.CompactAvg
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantPosDefHermitian =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaximalCompactOfSkewHermitianTwist =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaximalCompactOfSkewHermitianTwist", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.LinearAlgebra.Matrix.Hermitian\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIsLatticeFrameIsMajorantFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Development.AbelianVarietyTheory.Definitions.Divisors.LocallyCompactUnipFlag\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsSmoothModerateOfIsAutFunSm\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.ThK.SqIntMaxCpt

open NumberField MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.AdelicU GlobalTheory.SiegelSet GlobalTheory.UAut GlobalTheory.ThK.SquareIntegrability
open scoped Matrix TensorProduct

theorem exists_congr_one {n : ℕ} {P : Matrix (Fin n) (Fin n) ℂ} (hP : P.IsHermitian)
    (hpos : ∀ x : Fin n → ℂ, x ≠ 0 → 0 < (star x ⬝ᵥ P *ᵥ x).re) : ∃ Q : GL (Fin n) ℂ, Q.1ᴴ * P * Q.1 = 1 := by
  have hd : P.det ≠ 0 := fun h => by
    obtain ⟨x, hx, e⟩ := Matrix.exists_mulVec_eq_zero_iff.2 h
    simpa [e] using hpos x hx
  obtain ⟨ε, Q, hQ⟩ := Frames.exists_congr_diagonal_sign hP hd
  refine ⟨Q, hQ.trans ?_⟩
  rw [← Matrix.diagonal_one]
  congr 1
  funext i
  have hx : Q.1 *ᵥ (Pi.single i 1 : Fin n → ℂ) ≠ 0 := fun h => by
    have := congrArg ((Q⁻¹).1 *ᵥ ·) h
    simp only [Matrix.mulVec_mulVec, Units.inv_mul, Matrix.one_mulVec, Matrix.mulVec_zero] at this
    simpa using congrFun this i
  have := hpos _ hx
  rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hQ] at this
  cases h : ε i
  · simp [h, dotProduct, Pi.single_apply] at this
    linarith
  · simp

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

end GlobalTheory.ThK.SqIntMaxCpt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaximalCompactOfSkewHermitianTwist =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianPosDefSimultaneousNormalForm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianPosDefSimultaneousNormalForm", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.LinearAlgebra.Matrix.Hermitian\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaximalCompactOfSkewHermitianTwist\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Matrix.Spectrum\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

namespace GlobalTheory.SimNormal

theorem diagonal_comm_of_comm {n : ℕ} {d f : Fin n → ℂ} {g : Matrix (Fin n) (Fin n) ℂ}
    (h : diagonal d * g = g * diagonal d) (hf : ∀ i j, d i = d j → f i = f j) :
    diagonal f * g = g * diagonal f := by
  ext i j
  have e := congrFun (congrFun h i) j
  simp only [diagonal_mul, mul_diagonal] at e ⊢
  by_cases hg : g i j = 0
  · simp [hg]
  · have : d i = d j := mul_right_cancel₀ hg (e.trans (mul_comm _ _))
    rw [hf i j this, mul_comm]

theorem simultaneous_normal_form : ∀ {n : ℕ} {J P : Matrix (Fin n) (Fin n) ℂ}, J.IsHermitian → J.det ≠ 0 → P.IsHermitian →
    (∀ x : Fin n → ℂ, x ≠ 0 → 0 < (star x ⬝ᵥ P *ᵥ x).re) →
    ∃ (ε : Fin n → Bool) (Q : GL (Fin n) ℂ), Q.1ᴴ * J * Q.1 = Matrix.diagonal (fun i => if ε i then 1 else -1) ∧
      ∀ g : Matrix (Fin n) (Fin n) ℂ, gᴴ * P * g = P → gᴴ * J * g = J →
        ((Q⁻¹).1 * g * Q.1)ᴴ * ((Q⁻¹).1 * g * Q.1) = 1 := by
  intro n J P hJ hJd hP hpos
  obtain ⟨Q₀, hQ₀⟩ := GlobalTheory.ThK.SqIntMaxCpt.exists_congr_one hP hpos
  set M := Q₀.1ᴴ * J * Q₀.1 with hMdef
  have hM : M.IsHermitian := isHermitian_conjTranspose_mul_mul _ hJ
  set U : Matrix (Fin n) (Fin n) ℂ := hM.eigenvectorUnitary.1 with hU
  have h1 : Uᴴ * U = 1 := Matrix.mem_unitaryGroup_iff'.1 hM.eigenvectorUnitary.2
  have h1' : U * Uᴴ = 1 := Matrix.mem_unitaryGroup_iff.1 hM.eigenvectorUnitary.2
  set d : Fin n → ℝ := hM.eigenvalues with hd
  set D : Matrix (Fin n) (Fin n) ℂ := diagonal fun i => (d i : ℂ) with hD
  have h3 : Uᴴ * M * U = D := by
    have := hM.conjStarAlgAut_star_eigenvectorUnitary
    simpa [Unitary.conjStarAlgAut_apply, Matrix.star_eq_conjTranspose, Function.comp_def] using this
  have hdne : ∀ i, d i ≠ 0 := by
    have hUd : Uᴴ.det * U.det = 1 := by rw [← det_mul, h1, det_one]
    have hQd : Q₀.1.det ≠ 0 := ((Matrix.isUnit_iff_isUnit_det _).1 Q₀.isUnit).ne_zero
    have hDd : D.det ≠ 0 := by
      rw [← h3, hMdef, det_mul, det_mul, det_mul, det_mul]
      have hU1 : Uᴴ.det ≠ 0 := left_ne_zero_of_mul_eq_one hUd
      have hU2 : U.det ≠ 0 := right_ne_zero_of_mul_eq_one hUd
      have hQ2 : Q₀.1ᴴ.det ≠ 0 := by rw [det_conjTranspose]; simpa using hQd
      simp only [ne_eq, mul_eq_zero, not_or]; tauto
    intro i hi
    apply hDd
    rw [hD, det_diagonal]
    exact Finset.prod_eq_zero (Finset.mem_univ i) (by simp [hi])
  have hMU : U * D * Uᴴ = M := by
    rw [← h3]; simp only [← Matrix.mul_assoc, h1', Matrix.one_mul]; rw [Matrix.mul_assoc, h1', Matrix.mul_one]
  set s : Fin n → ℝ := fun i => (Real.sqrt |d i|)⁻¹ with hs
  have hsq : ∀ i, 0 < Real.sqrt |d i| := fun i => Real.sqrt_pos.2 (abs_pos.2 (hdne i))
  let S : GL (Fin n) ℂ := ⟨diagonal fun i => (s i : ℂ), diagonal fun i => (Real.sqrt |d i| : ℂ), by
      rw [diagonal_mul_diagonal, ← diagonal_one]; congr 1; funext i
      simp only [hs, Complex.ofReal_inv]; exact inv_mul_cancel₀ (by exact_mod_cast (hsq i).ne'), by
      rw [diagonal_mul_diagonal, ← diagonal_one]; congr 1; funext i
      simp only [hs, Complex.ofReal_inv]; exact mul_inv_cancel₀ (by exact_mod_cast (hsq i).ne')⟩
  let Ug : GL (Fin n) ℂ := ⟨U, Uᴴ, h1', h1⟩
  refine ⟨fun i => decide (0 < d i), Q₀ * Ug * S, ?_, fun g hgP hgJ => ?_⟩
  · have hSh : (S.1)ᴴ = S.1 := by
      show (diagonal fun i => (s i : ℂ))ᴴ = _
      rw [diagonal_conjTranspose]; congr 1; funext i; simp
    have : (Q₀ * Ug * S).1ᴴ * J * (Q₀ * Ug * S).1 = S.1 * (Uᴴ * M * U) * S.1 := by
      simp only [Units.val_mul, conjTranspose_mul, hSh, Matrix.mul_assoc, hMdef]; rfl
    rw [this, h3]
    show diagonal _ * diagonal _ * diagonal _ = _
    rw [diagonal_mul_diagonal, diagonal_mul_diagonal]
    congr 1; funext i
    have hsi : s i * s i = |d i|⁻¹ := by
      simp only [hs]; rw [← mul_inv, Real.mul_self_sqrt (abs_nonneg _)]
    have : (s i : ℂ) * d i * s i = ((d i * (s i * s i) : ℝ) : ℂ) := by push_cast; ring
    rw [this, hsi]
    rcases lt_or_gt_of_ne (hdne i) with h | h
    · simp [not_lt.2 h.le, abs_of_neg h, (hdne i)]
    · simp [h, abs_of_pos h, (hdne i)]
  · have hi : (Q₀⁻¹).1ᴴ * Q₀.1ᴴ = 1 := by
      rw [← Matrix.conjTranspose_mul, Units.mul_inv, Matrix.conjTranspose_one]
    have hPi : (Q₀⁻¹).1ᴴ * (Q₀⁻¹).1 = P := by
      have := congrArg (fun A => (Q₀⁻¹).1ᴴ * A * (Q₀⁻¹).1) hQ₀
      simpa only [← Matrix.mul_assoc, hi, Matrix.one_mul, Matrix.mul_one, Units.mul_inv_cancel_right] using this.symm
    have hJi : (Q₀⁻¹).1ᴴ * M * (Q₀⁻¹).1 = J := by
      rw [hMdef]
      simp only [← Matrix.mul_assoc, hi, Matrix.one_mul, Units.mul_inv_cancel_right]
    set g' := Uᴴ * (Q₀⁻¹).1 * g * Q₀.1 * U with hg'
    have hg'1 : g'ᴴ * g' = 1 := by
      calc g'ᴴ * g' = Uᴴ * Q₀.1ᴴ * (gᴴ * ((Q₀⁻¹).1ᴴ * (U * Uᴴ) * (Q₀⁻¹).1) * g) * Q₀.1 * U := by
            simp only [hg', conjTranspose_mul, conjTranspose_conjTranspose, Matrix.mul_assoc]
        _ = Uᴴ * (Q₀.1ᴴ * P * Q₀.1) * U := by
            rw [h1', Matrix.mul_one, hPi, hgP]; simp only [Matrix.mul_assoc]
        _ = 1 := by rw [hQ₀, Matrix.mul_one, h1]
    have hg'D : g'ᴴ * D * g' = D := by
      calc g'ᴴ * D * g' = Uᴴ * Q₀.1ᴴ * (gᴴ * ((Q₀⁻¹).1ᴴ * (U * D * Uᴴ) * (Q₀⁻¹).1) * g) * Q₀.1 * U := by
            simp only [hg', conjTranspose_mul, conjTranspose_conjTranspose, Matrix.mul_assoc]
        _ = Uᴴ * (Q₀.1ᴴ * J * Q₀.1) * U := by
            rw [hMU, hJi, hgJ]; simp only [Matrix.mul_assoc]
        _ = D := by rw [← hMdef, h3]
    have hg'2 : g' * g'ᴴ = 1 := mul_eq_one_comm.1 hg'1
    have hcomm : D * g' = g' * D := by
      calc D * g' = g' * g'ᴴ * D * g' := by rw [hg'2, Matrix.one_mul]
        _ = g' * (g'ᴴ * D * g') := by simp only [Matrix.mul_assoc]
        _ = g' * D := by rw [hg'D]
    have hQinv : ((Q₀ * Ug * S)⁻¹).1 * g * (Q₀ * Ug * S).1 = (S⁻¹).1 * g' * S.1 := by
      simp only [_root_.mul_inv_rev, Units.val_mul, hg', Matrix.mul_assoc]; rfl
    have hSc : (S⁻¹).1 * g' = g' * (S⁻¹).1 :=
      diagonal_comm_of_comm (f := fun i => (Real.sqrt |d i| : ℂ)) hcomm fun i j h => by
        have : d i = d j := by exact_mod_cast h
        simp [this]
    have hfin : (S⁻¹).1 * g' * S.1 = g' := by
      rw [hSc, Matrix.mul_assoc, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.mul_one]
    rw [hQinv, hfin]
    exact hg'1

end GlobalTheory.SimNormal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianPosDefSimultaneousNormalForm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMajorantFrameCompactSubgroupLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMajorantFrameCompactSubgroupLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsSquareIntegrableIffMemL2\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Topology.Instances.Matrix\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantPosDefHermitian\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Mathlib.LinearAlgebra.Matrix.Hermitian\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianPosDefSimultaneousNormalForm\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsIsLatticeFrameIsMajorantFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsSplitChartSplitChart\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
  GlobalTheory.UAut GlobalTheory.SiegelSet GlobalTheory.ThK.SquareIntegrability GlobalTheory.LFun.SplitTie
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open scoped TensorProduct
open Matrix
noncomputable section

namespace GlobalTheory.CptMajorant

theorem exists_frame_le_majCpt : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J →
    ∀ K : Subgroup (GAd σ J), K ≤ infPts σ J → IsCompact (K : Set (GAd σ J)) →
    ∃ c : (∀ w : InfinitePlace F, GL (Fin n) (w.Completion ⊗[F] E)),
      (∀ w, ∃ ε : Fin n → Bool, Formalism.UG.cT (sigR _ σ) (c w).1 * JR w.Completion J * (c w).1 =
        Matrix.diagonal fun i => if ε i then 1 else -1) ∧ K ≤ majCpt σ J c := by
  intro F E _ _ _ _ _ σ h n J hJ K hKinf hK
  have key : ∀ w : InfinitePlace F, ∃ c : GL (Fin n) (w.Completion ⊗[F] E),
      (∃ ε : Fin n → Bool, Formalism.UG.cT (sigR _ σ) c.1 * JR w.Completion J * c.1 =
        Matrix.diagonal fun i => if ε i then 1 else -1) ∧ ∀ k ∈ K, projArch σ J w k ∈ stabArch σ J w c := by
    intro w
    obtain ⟨τ⟩ : Nonempty (EmbOver E w) := inferInstance
    let e := RingEquiv.ofBijective _ (infEmb_bijective h τ)
    have : IsTopologicalRing (w.Completion ⊗[F] E) := GlobalTheory.Doubling.isTopologicalRing_tens
    let φ : GAd σ J →* GL (Fin n) ℂ :=
      (Units.map (infEmb τ).mapMatrix.toMonoidHom).comp ((matHom _ σ J).comp (projArch σ J w))
    have hφv : ∀ x, (φ x).1 = (matHom _ σ J (projArch σ J w x)).1.map (infEmb τ) := fun x => rfl
    have hcv : Continuous fun x : GAd σ J => (φ x).1 := by
      simp only [hφv]
      exact (Units.continuous_val.comp ((isEmbedding_matHom _ σ J).continuous.comp
        (continuous_projArch σ J w))).matrix_map (GlobalTheory.Orb.continuous_infEmb τ)
    have hφ : Continuous φ := Units.continuous_iff.2 ⟨hcv, by
      simp only [← map_inv]; exact hcv.comp continuous_inv⟩
    obtain ⟨P, hPh, hPpos, hPinv⟩ := _root_.GlobalTheory.CompactAvg.exists_invariant_posDef_hermitian (K.map φ) (by rw [Subgroup.coe_map]; exact hK.image hφ)
    have hG : (J.map τ.1).IsHermitian := by
      ext i j
      exact (h.2.2.2 τ.1 _).symm.trans (congrArg _ (hJ.1 i j))
    have hd : (J.map τ.1).det ≠ 0 := by
      rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]; exact (map_ne_zero _).2 hJ.2
    obtain ⟨ε, Q, hQ, hQu⟩ := _root_.GlobalTheory.SimNormal.simultaneous_normal_form hG hd hPh hPpos
    have h1 : (Formalism.UG.bc e.symm.toRingHom Q).1.map (infEmb τ) = Q.1 := Matrix.ext fun i j => e.apply_symm_apply _
    have h1' : ((Formalism.UG.bc e.symm.toRingHom Q)⁻¹).1.map (infEmb τ) = (Q⁻¹).1 :=
      Matrix.ext fun i j => e.apply_symm_apply _
    have h2 : (JR w.Completion J).map (infEmb τ) = J.map τ.1 := by ext r s; simp [JR, inclR]
    refine ⟨Formalism.UG.bc e.symm.toRingHom Q, ⟨ε, Matrix.map_injective e.injective ?_⟩, fun k hk => ?_⟩
    · change Matrix.map _ (infEmb τ) = Matrix.map _ (infEmb τ)
      rw [Matrix.map_mul, Matrix.map_mul, Frames.map_cT_sigR h, h1, h2, hQ, Matrix.diagonal_map (map_zero _)]
      congr 1
      funext i
      split_ifs <;> simp
    · rw [mem_stabArch]
      change Formalism.UG.cT _ _ * 1 * _ = 1
      refine Matrix.map_injective e.injective ?_
      change Matrix.map _ (infEmb τ) = Matrix.map _ (infEmb τ)
      have hu := hQu (φ k).1 (hPinv _ ⟨k, hk, rfl⟩) (by
        have : Formalism.UG.cT (sigR _ σ) (matHom _ σ J (projArch σ J w k)).1 * JR w.Completion J *
          (matHom _ σ J (projArch σ J w k)).1 = JR w.Completion J := (projArch σ J w k).2
        have := congrArg (fun A => A.map (infEmb τ)) this
        simpa only [Matrix.map_mul, Frames.map_cT_sigR h, h2, hφv] using this)
      simpa only [Matrix.mul_one, Matrix.map_mul, Frames.map_cT_sigR h, Units.val_mul, h1, h1', hφv,
        Matrix.map_one _ (map_zero _) (map_one _)] using hu
  choose c hc hKc using key
  exact ⟨c, hc, fun k hk => mem_majCpt.2 ⟨hKinf hk, fun w => hKc w k hk⟩⟩

end GlobalTheory.CptMajorant
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMajorantFrameCompactSubgroupLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMajorantFrameCompactSubgroupLeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMajorantFrameCompactSubgroupLeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsSquareIntegrableIffMemL2\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMajorantFrameCompactSubgroupLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsSplitChartSplitChart\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
  GlobalTheory.UAut GlobalTheory.SiegelSet GlobalTheory.ThK.SquareIntegrability GlobalTheory.LFun.SplitTie
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open scoped TensorProduct

theorem _root_.GlobalTheory.T.exists_majorantFrame_compact_subgroup_le : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J →
    ∀ K : Subgroup (GAd σ J), K ≤ infPts σ J → IsCompact (K : Set (GAd σ J)) →
    ∃ c : (∀ w : InfinitePlace F, GL (Fin n) (w.Completion ⊗[F] E)),
      (∀ w, ∃ ε : Fin n → Bool, Formalism.UG.cT (sigR _ σ) (c w).1 * JR w.Completion J * (c w).1 =
        Matrix.diagonal fun i => if ε i then 1 else -1) ∧ K ≤ majCpt σ J c := by
  first | exact @GlobalTheory.CptMajorant.exists_frame_le_majCpt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMajorantFrameCompactSubgroupLeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTransposeMulMulSelfOfUnitaryConj =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTransposeMulMulSelfOfUnitaryConj", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexOrder
open Matrix

namespace GlobalTheory


open scoped ComplexOrder in
open Matrix in
theorem _root_.GlobalTheory.conjTranspose_mul_mul_self_of_unitary_conj :
    ∀ (n d : ℕ) (J P : Matrix (Fin n) (Fin n) ℂ) (Xb Yb : Matrix (Fin n) (Fin d) ℂ) (y₀ : GL (Fin d) ℂ),
    J.conjTranspose = J → P.conjTranspose = P → Xb.conjTranspose * J * Xb = 0 → Yb.conjTranspose * J * Yb = 0 →
    Xb.conjTranspose * J * Yb = 1 →
    P * Xb = J * Yb * ((y₀⁻¹).1.conjTranspose * (y₀⁻¹).1) → P * Yb = J * Xb * (y₀.1 * (y₀.1).conjTranspose) →
    ∀ k : GL (Fin d) ℂ, (k.1).conjTranspose * k.1 = 1 →
      let m : GL (Fin d) ℂ := y₀ * k * y₀⁻¹
      let G : Matrix (Fin n) (Fin n) ℂ := 1 + Xb * (m.1 - 1) * (Yb.conjTranspose * J) + Yb * ((m⁻¹).1.conjTranspose - 1) * (Xb.conjTranspose * J)
      G.conjTranspose * P * G = P := by
  intro n d J P X Y y₀ hJ hP hXX hYY hXY hPX hPY k hk m G
  have hki : (k⁻¹).1 = k.1ᴴ := by
    calc (k⁻¹).1 = (k.1ᴴ * k.1) * (k⁻¹).1 := by rw [hk, Matrix.one_mul]
      _ = k.1ᴴ := by rw [Matrix.mul_assoc, Units.mul_inv, Matrix.mul_one]
  have hm : m.1 = y₀.1 * k.1 * (y₀⁻¹).1 := by simp [m]
  have hmi : (m⁻¹).1 = y₀.1 * k.1ᴴ * (y₀⁻¹).1 := by
    simp only [m, _root_.mul_inv_rev, inv_inv, Units.val_mul, hki, Matrix.mul_assoc]
  have hab : y₀.1ᴴ * (y₀⁻¹).1ᴴ = 1 := by
    rw [← conjTranspose_mul, Units.inv_mul, conjTranspose_one]
  have hAm : m.1ᴴ * ((y₀⁻¹).1ᴴ * (y₀⁻¹).1) * m.1 = (y₀⁻¹).1ᴴ * (y₀⁻¹).1 := by
    rw [hm]
    simp only [conjTranspose_mul, Matrix.mul_assoc]
    rw [← Matrix.mul_assoc y₀.1ᴴ, hab, Matrix.one_mul, ← Matrix.mul_assoc (y₀⁻¹).1 y₀.1, Units.inv_mul,
      Matrix.one_mul, ← Matrix.mul_assoc k.1ᴴ k.1, hk, Matrix.one_mul]
  have hBm : (m⁻¹).1 * (y₀.1 * y₀.1ᴴ) * (m⁻¹).1ᴴ = y₀.1 * y₀.1ᴴ := by
    rw [hmi]
    simp only [conjTranspose_mul, conjTranspose_conjTranspose, Matrix.mul_assoc]
    rw [← Matrix.mul_assoc (y₀⁻¹).1 y₀.1, Units.inv_mul, Matrix.one_mul, ← Matrix.mul_assoc y₀.1ᴴ, hab,
      Matrix.one_mul, ← Matrix.mul_assoc k.1ᴴ k.1, hk, Matrix.one_mul]
  have hAh : ((y₀⁻¹).1ᴴ * (y₀⁻¹).1)ᴴ = (y₀⁻¹).1ᴴ * (y₀⁻¹).1 := by
    rw [conjTranspose_mul, conjTranspose_conjTranspose]
  have hBh : (y₀.1 * y₀.1ᴴ)ᴴ = y₀.1 * y₀.1ᴴ := by
    rw [conjTranspose_mul, conjTranspose_conjTranspose]
  simp only [G]
  generalize (y₀⁻¹).1ᴴ * (y₀⁻¹).1 = A at hPX hAm hAh
  generalize y₀.1 * y₀.1ᴴ = B at hPY hBm hBh
  generalize m.1 = m₁ at hAm
  generalize (m⁻¹).1 = m₂ at hBm
  have hYX : Yᴴ * J * X = 1 := by
    have h := congrArg conjTranspose hXY
    simpa [conjTranspose_mul, hJ, Matrix.mul_assoc] using h
  have hXP : Xᴴ * P = A * (Yᴴ * J) := by
    have h := congrArg conjTranspose hPX
    simpa [conjTranspose_mul, hJ, hP, hAh, Matrix.mul_assoc] using h
  have hYP : Yᴴ * P = B * (Xᴴ * J) := by
    have h := congrArg conjTranspose hPY
    simpa [conjTranspose_mul, hJ, hP, hBh, Matrix.mul_assoc] using h
  have r1 : ∀ {c : Type} [Fintype c] (Z : Matrix (Fin d) c ℂ), Xᴴ * (J * (X * Z)) = 0 := fun Z => by
    simp only [← Matrix.mul_assoc, hXX, Matrix.zero_mul]
  have r2 : ∀ {c : Type} [Fintype c] (Z : Matrix (Fin d) c ℂ), Yᴴ * (J * (Y * Z)) = 0 := fun Z => by
    simp only [← Matrix.mul_assoc, hYY, Matrix.zero_mul]
  have r3 : ∀ {c : Type} [Fintype c] (Z : Matrix (Fin d) c ℂ), Xᴴ * (J * (Y * Z)) = Z := fun Z => by
    simp only [← Matrix.mul_assoc, hXY, Matrix.one_mul]
  have r4 : ∀ {c : Type} [Fintype c] (Z : Matrix (Fin d) c ℂ), Yᴴ * (J * (X * Z)) = Z := fun Z => by
    simp only [← Matrix.mul_assoc, hYX, Matrix.one_mul]
  have r5 : ∀ {c : Type} [Fintype c] (Z : Matrix (Fin d) c ℂ), P * (X * Z) = J * (Y * (A * Z)) := fun Z => by
    simp only [← Matrix.mul_assoc, hPX]
  have r6 : ∀ {c : Type} [Fintype c] (Z : Matrix (Fin d) c ℂ), P * (Y * Z) = J * (X * (B * Z)) := fun Z => by
    simp only [← Matrix.mul_assoc, hPY]
  have r7 : ∀ {c : Type} [Fintype c] (Z : Matrix (Fin n) c ℂ), Xᴴ * (P * Z) = A * (Yᴴ * (J * Z)) := fun Z => by
    simp only [← Matrix.mul_assoc, hXP]
  have r8 : ∀ {c : Type} [Fintype c] (Z : Matrix (Fin n) c ℂ), Yᴴ * (P * Z) = B * (Xᴴ * (J * Z)) := fun Z => by
    simp only [← Matrix.mul_assoc, hYP]
  have r9 : ∀ {c : Type} [Fintype c] (Z : Matrix (Fin d) c ℂ), m₁ᴴ * (A * (m₁ * Z)) = A * Z := fun Z => by
    simp only [← Matrix.mul_assoc, hAm]
  have r10 : ∀ {c : Type} [Fintype c] (Z : Matrix (Fin d) c ℂ), m₂ * (B * (m₂ᴴ * Z)) = B * Z := fun Z => by
    simp only [← Matrix.mul_assoc, hBm]
  simp only [conjTranspose_add, conjTranspose_mul, conjTranspose_sub, conjTranspose_one,
    conjTranspose_conjTranspose, hJ, Matrix.add_mul, Matrix.mul_add, Matrix.sub_mul, Matrix.mul_sub,
    Matrix.one_mul, Matrix.mul_one, Matrix.mul_assoc, r1, r2, r3, r4, r5, r6, r9, r10, hXP, hYP,
    Matrix.mul_zero, sub_zero, add_zero]
  abel

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTransposeMulMulSelfOfUnitaryConj =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviElementIsotropicOrthogonalComplex =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviElementIsotropicOrthogonalComplex", "h": "module\n\npublic import Mathlib.Analysis.Complex.Order\npublic import Mathlib.LinearAlgebra.Matrix.PosDef\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexOrder

namespace GlobalTheory

open Matrix

theorem levi_element_cpx : ∀ (n a b : ℕ) (J Q : Matrix (Fin n) (Fin n) ℂ), J.conjTranspose = J → Q.PosDef →
    ∀ (X₁ Y₁ : Matrix (Fin n) (Fin a) ℂ) (Xb Yb : Matrix (Fin n) (Fin b) ℂ),
      X₁.conjTranspose * J * X₁ = 0 → X₁.conjTranspose * J * Xb = 0 → Xb.conjTranspose * J * Xb = 0 →
      X₁.conjTranspose * J * Y₁ = 1 → X₁.conjTranspose * J * Yb = 0 → Yb.conjTranspose * J * Yb = 0 →
      Xb.conjTranspose * J * Yb = 1 →
    ∃ (u₂ : GL (Fin n) ℂ) (A : Matrix (Fin a) (Fin b) ℂ), (u₂.1).conjTranspose * J * u₂.1 = J ∧
      u₂.1 * X₁ = X₁ ∧ u₂.1 * Xb = Xb + X₁ * A ∧ u₂.1 * Yb = Yb ∧
      (∀ v : Fin n → ℂ, Matrix.mulVec (X₁.conjTranspose * J) v = 0 →
        Matrix.mulVec u₂.1 v = v + Matrix.mulVec X₁ (Matrix.mulVec A (Matrix.mulVec (Yb.conjTranspose * J) v))) ∧
      X₁.conjTranspose * Q * (Xb + X₁ * A) = 0 := by
  intro n a b J Q hJ hQ X₁ Y₁ Xb Yb h11 h1b hbb h1Y h1Yb hYbYb hbYb

  have hYb1 : Ybᴴ * J * X₁ = 0 := by
    have := congrArg conjTranspose h1Yb
    simpa [conjTranspose_mul, hJ, Matrix.mul_assoc] using this
  have hYbb : Ybᴴ * J * Xb = 1 := by
    have := congrArg conjTranspose hbYb
    simpa [conjTranspose_mul, hJ, Matrix.mul_assoc] using this
  have hY1 : Y₁ᴴ * J * X₁ = 1 := by
    have := congrArg conjTranspose h1Y
    simpa [conjTranspose_mul, hJ, Matrix.mul_assoc] using this

  have hinj : Function.Injective X₁.mulVec := by
    intro x y hxy
    have := congrArg (fun w => (Y₁ᴴ * J) *ᵥ w) hxy
    simp only [mulVec_mulVec] at this
    simpa [hY1] using this
  set G := X₁ᴴ * Q * X₁ with hG
  have hGpd : G.PosDef := hQ.conjTranspose_mul_mul_same hinj
  have hGu : IsUnit G := hGpd.isUnit
  have hGdet : IsUnit G.det := (Matrix.isUnit_iff_isUnit_det G).mp hGu
  set A : Matrix (Fin a) (Fin b) ℂ := -(G⁻¹ * (X₁ᴴ * Q * Xb)) with hA
  set T : Matrix (Fin n) (Fin n) ℂ := X₁ * A * Ybᴴ * J - Yb * Aᴴ * X₁ᴴ * J with hT
  have hT2 : T * T = 0 := by
    simp only [hT, sub_mul, mul_sub]
    have e1 : X₁ * A * Ybᴴ * J * (X₁ * A * Ybᴴ * J) = X₁ * A * (Ybᴴ * J * X₁) * A * Ybᴴ * J := by
      simp only [Matrix.mul_assoc]
    have e2 : X₁ * A * Ybᴴ * J * (Yb * Aᴴ * X₁ᴴ * J) = X₁ * A * (Ybᴴ * J * Yb) * Aᴴ * X₁ᴴ * J := by
      simp only [Matrix.mul_assoc]
    have e3 : Yb * Aᴴ * X₁ᴴ * J * (X₁ * A * Ybᴴ * J) = Yb * Aᴴ * (X₁ᴴ * J * X₁) * A * Ybᴴ * J := by
      simp only [Matrix.mul_assoc]
    have e4 : Yb * Aᴴ * X₁ᴴ * J * (Yb * Aᴴ * X₁ᴴ * J) = Yb * Aᴴ * (X₁ᴴ * J * Yb) * Aᴴ * X₁ᴴ * J := by
      simp only [Matrix.mul_assoc]
    rw [e1, e2, e3, e4, hYb1, hYbYb, h11, h1Yb]
    simp
  have hTJ : Tᴴ * J = -(J * T) := by
    simp only [hT, conjTranspose_sub, conjTranspose_mul, conjTranspose_conjTranspose, hJ, sub_mul, mul_sub,
      Matrix.mul_assoc, neg_sub]
  let u : GL (Fin n) ℂ := ⟨1 + T, 1 - T, by
      rw [mul_sub, mul_one, add_mul, one_mul, hT2]; abel,
    by rw [sub_mul, one_mul, mul_add, mul_one, hT2]; abel⟩
  refine ⟨u, A, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · show (1 + T)ᴴ * J * (1 + T) = J
    rw [conjTranspose_add, conjTranspose_one, add_mul, one_mul, add_mul, mul_add, mul_add, hTJ]
    simp only [mul_one, neg_mul, Matrix.mul_assoc, hT2, mul_zero, neg_zero, add_zero]
    abel
  · show (1 + T) * X₁ = X₁
    have : T * X₁ = 0 := by
      simp only [hT, Matrix.sub_mul]
      have e1 : X₁ * A * Ybᴴ * J * X₁ = X₁ * A * (Ybᴴ * J * X₁) := by simp only [Matrix.mul_assoc]
      have e2 : Yb * Aᴴ * X₁ᴴ * J * X₁ = Yb * Aᴴ * (X₁ᴴ * J * X₁) := by simp only [Matrix.mul_assoc]
      rw [e1, e2, hYb1, h11]; simp
    rw [Matrix.add_mul, Matrix.one_mul, this, add_zero]
  · show (1 + T) * Xb = Xb + X₁ * A
    have : T * Xb = X₁ * A := by
      simp only [hT, Matrix.sub_mul]
      have e1 : X₁ * A * Ybᴴ * J * Xb = X₁ * A * (Ybᴴ * J * Xb) := by simp only [Matrix.mul_assoc]
      have e2 : Yb * Aᴴ * X₁ᴴ * J * Xb = Yb * Aᴴ * (X₁ᴴ * J * Xb) := by simp only [Matrix.mul_assoc]
      rw [e1, e2, hYbb, h1b]; simp
    rw [Matrix.add_mul, Matrix.one_mul, this]
  · show (1 + T) * Yb = Yb
    have : T * Yb = 0 := by
      simp only [hT, Matrix.sub_mul]
      have e1 : X₁ * A * Ybᴴ * J * Yb = X₁ * A * (Ybᴴ * J * Yb) := by simp only [Matrix.mul_assoc]
      have e2 : Yb * Aᴴ * X₁ᴴ * J * Yb = Yb * Aᴴ * (X₁ᴴ * J * Yb) := by simp only [Matrix.mul_assoc]
      rw [e1, e2, hYbYb, h1Yb]; simp
    rw [Matrix.add_mul, Matrix.one_mul, this, add_zero]
  · intro v hv
    show (1 + T) *ᵥ v = v + X₁ *ᵥ (A *ᵥ ((Ybᴴ * J) *ᵥ v))
    rw [add_mulVec, one_mulVec]
    congr 1
    simp only [hT, sub_mulVec]
    have e1 : (X₁ * A * Ybᴴ * J) *ᵥ v = X₁ *ᵥ (A *ᵥ ((Ybᴴ * J) *ᵥ v)) := by
      simp only [mulVec_mulVec, Matrix.mul_assoc]
    have e2 : (Yb * Aᴴ * X₁ᴴ * J) *ᵥ v = (Yb * Aᴴ) *ᵥ ((X₁ᴴ * J) *ᵥ v) := by
      simp only [mulVec_mulVec, Matrix.mul_assoc]
    rw [e1, e2, hv, mulVec_zero, sub_zero]
  · rw [Matrix.mul_add]
    have : X₁ᴴ * Q * (X₁ * A) = G * A := by rw [hG]; simp only [Matrix.mul_assoc]
    rw [this, hA, Matrix.mul_neg, ← Matrix.mul_assoc, Matrix.mul_nonsing_inv G hGdet, Matrix.one_mul]
    simp

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviElementIsotropicOrthogonalComplex =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFlagComplementPosDefFactorization =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFlagComplementPosDefFactorization", "h": "module\n\npublic import Mathlib.Analysis.Complex.Order\npublic import Mathlib.LinearAlgebra.Matrix.PosDef\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexOrder

namespace GlobalTheory

open Matrix

theorem schur_complement_step_cpx : ∀ (n r : ℕ) (J θ : Matrix (Fin n) (Fin n) ℂ), J.conjTranspose = J → (J * θ).PosDef →
    ∀ (X Y : Matrix (Fin n) (Fin r) ℂ), X.conjTranspose * J * Y = 1 →
    ∀ (l d : ℕ) (h : l + d ≤ r) (u₁ : Matrix (Fin n) (Fin n) ℂ) (A : Matrix (Fin l) (Fin d) ℂ),
      let X₁ : Matrix (Fin n) (Fin l) ℂ := X.submatrix id fun j => ⟨j.val, by omega⟩
      let Xb : Matrix (Fin n) (Fin d) ℂ := X.submatrix id fun j => ⟨l + j.val, by omega⟩
      let X₂ : Matrix (Fin n) (Fin (l + d)) ℂ := X.submatrix id fun j => ⟨j.val, by omega⟩
      let Yb : Matrix (Fin n) (Fin d) ℂ := Y.submatrix id fun j => ⟨l + j.val, by omega⟩
      let Y₂ : Matrix (Fin n) (Fin (l + d)) ℂ := Y.submatrix id fun j => ⟨j.val, by omega⟩
      θ * X₂ = u₁ * Y₂ * (X₂.conjTranspose * (J * θ) * X₂) → X₁.conjTranspose * (J * θ) * (Xb + X₁ * A) = 0 →
      θ * (Xb + X₁ * A) = u₁ * Yb * (Xb.conjTranspose * (J * θ) * (Xb + X₁ * A)) ∧
        (Xb.conjTranspose * (J * θ) * (Xb + X₁ * A)).PosDef := by
  intro n r J θ hJ hpos X Y hXY l d h u₁ A X₁ Xb X₂ Yb Y₂ hθ h0

  let K : Matrix (Fin (l + d)) (Fin d) ℂ := fun i j =>
    Fin.addCases (motive := fun _ => ℂ) (fun i => A i j)
      (fun i => (1 : Matrix (Fin d) (Fin d) ℂ) i j) i
  have hK : X₂ * K = Xb + X₁ * A := by
    ext a c
    rw [Matrix.mul_apply, Fin.sum_univ_add]
    simp only [K, Fin.addCases_left, Fin.addCases_right, Matrix.add_apply, Matrix.one_apply,
      mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true,
      Matrix.mul_apply]
    rw [add_comm]
    rfl
  have hP : ∀ {m : ℕ} (f : Fin m → Fin (l + d)),
      (X₂.submatrix id f)ᴴ * (J * θ) * (Xb + X₁ * A)
        = (X₂ᴴ * (J * θ) * (Xb + X₁ * A)).submatrix f id := fun _ => rfl
  have hrow1 : (X₂ᴴ * (J * θ) * (Xb + X₁ * A)).submatrix (Fin.castAdd d) id = 0 :=
    (hP (Fin.castAdd d)).symm.trans h0
  have key : ∀ P : Matrix (Fin (l + d)) (Fin d) ℂ, P.submatrix (Fin.castAdd d) id = 0 →
      Y₂ * P = Yb * P.submatrix (Fin.natAdd l) id := by
    intro P hP0
    ext a c
    rw [Matrix.mul_apply, Matrix.mul_apply, Fin.sum_univ_add]
    have h00 : ∀ i, P (Fin.castAdd d i) c = 0 := fun i => by
      simpa using congrFun (congrFun hP0 i) c
    simp only [h00, mul_zero, Finset.sum_const_zero, zero_add]
    rfl
  have hmain : θ * (Xb + X₁ * A) = u₁ * Yb * (Xbᴴ * (J * θ) * (Xb + X₁ * A)) := by
    calc θ * (Xb + X₁ * A) = θ * X₂ * K := by rw [← hK, Matrix.mul_assoc]
      _ = u₁ * Y₂ * (X₂ᴴ * (J * θ) * X₂) * K := by rw [hθ]
      _ = u₁ * (Y₂ * (X₂ᴴ * (J * θ) * (X₂ * K))) := by simp only [Matrix.mul_assoc]
      _ = u₁ * (Y₂ * (X₂ᴴ * (J * θ) * (Xb + X₁ * A))) := by rw [hK]
      _ = u₁ * (Yb * (Xbᴴ * (J * θ) * (Xb + X₁ * A))) := by rw [key _ hrow1]; rfl
      _ = u₁ * Yb * (Xbᴴ * (J * θ) * (Xb + X₁ * A)) := (Matrix.mul_assoc u₁ Yb _).symm
  have hzero : (X₁ * A)ᴴ * (J * θ) * (Xb + X₁ * A) = 0 := by
    have h0' := h0
    simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc] at h0' ⊢
    rw [h0', Matrix.mul_zero]
  have hsame : Xbᴴ * (J * θ) * (Xb + X₁ * A)
      = (Xb + X₁ * A)ᴴ * (J * θ) * (Xb + X₁ * A) := by
    rw [Matrix.conjTranspose_add, Matrix.add_mul, Matrix.add_mul, hzero, add_zero]
  have hYX : Yᴴ * J * X = 1 := by
    have := congrArg Matrix.conjTranspose hXY
    simpa [Matrix.conjTranspose_mul, hJ, Matrix.mul_assoc] using this
  have hL : (Ybᴴ * J) * (Xb + X₁ * A) = 1 := by
    have e1 : Ybᴴ * J * Xb = 1 := by
      have : Ybᴴ * J * Xb = (Yᴴ * J * X).submatrix (fun j : Fin d => (⟨l + j.val, by omega⟩ : Fin r))
          (fun j : Fin d => (⟨l + j.val, by omega⟩ : Fin r)) := rfl
      rw [this, hYX]
      ext i j
      simp [Matrix.one_apply, Fin.ext_iff]
    have e2 : Ybᴴ * J * X₁ = 0 := by
      have : Ybᴴ * J * X₁ = (Yᴴ * J * X).submatrix (fun j : Fin d => (⟨l + j.val, by omega⟩ : Fin r))
          (fun j : Fin l => (⟨j.val, by omega⟩ : Fin r)) := rfl
      rw [this, hYX]
      ext i j
      have := j.isLt
      simp only [Matrix.submatrix_apply, Matrix.one_apply, Fin.ext_iff, Matrix.zero_apply]
      rw [if_neg (by omega)]
    rw [Matrix.mul_add, e1, ← Matrix.mul_assoc, e2, Matrix.zero_mul, add_zero]
  have hinj : Function.Injective (Xb + X₁ * A).mulVec := by
    intro v w hvw
    have := congrArg (Ybᴴ * J).mulVec hvw
    rw [Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hL, Matrix.one_mulVec, Matrix.one_mulVec] at this
    exact this
  refine ⟨hmain, ?_⟩
  rw [hsame]
  exact hpos.conjTranspose_mul_mul_same hinj

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFlagComplementPosDefFactorization =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFlagUnipotentMatrixExistsSparse =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFlagUnipotentMatrixExistsSparse", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Matrix.ConjTranspose\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexOrder

namespace GlobalTheory

theorem isotropic_unipotent_column_relations : ∀ (n r : ℕ) (J : Matrix (Fin n) (Fin n) ℂ) (X : Matrix (Fin n) (Fin r) ℂ), X.conjTranspose * J * X = 0 →
    ∀ (l d : ℕ) (h : l + d ≤ r) (u : Matrix (Fin n) (Fin n) ℂ) (A : Matrix (Fin l) (Fin d) ℂ),
      let X₁ : Matrix (Fin n) (Fin l) ℂ := X.submatrix id fun j => ⟨j.val, by omega⟩
      let Xb : Matrix (Fin n) (Fin d) ℂ := X.submatrix id fun j => ⟨l + j.val, by omega⟩
      let X₂ : Matrix (Fin n) (Fin (l + d)) ℂ := X.submatrix id fun j => ⟨j.val, by omega⟩
      u * X₁ = X₁ → u * Xb = Xb + X₁ * A →
      (∀ v : Fin n → ℂ, Matrix.mulVec (X₂.conjTranspose * J) v = 0 →
        ∃ (w : Fin (l + d) → ℂ) (a : Fin l → ℂ), Matrix.mulVec u v - v = Matrix.mulVec X₂ w + Matrix.mulVec X₁ a) →
      ∃ N : Matrix (Fin r) (Fin r) ℂ, u * X = X + X * N ∧
        (∀ i j, N i j ≠ 0 → (i.val < l ∧ l ≤ j.val) ∨ (i.val < l + d ∧ l + d ≤ j.val)) ∧
        (∀ v : Fin n → ℂ, (∀ i : Fin r, i.val < l + d → Matrix.mulVec (X.conjTranspose * J) v i = 0) →
          ∃ w : Fin r → ℂ, (∀ i, w i ≠ 0 → i.val < l + d) ∧ Matrix.mulVec u v - v = Matrix.mulVec X w) := by
  intro n r J X hX l d h u A X₁ Xb X₂ h1 hb hperp
  classical

  have hext : ∀ (m : ℕ) (hm : m ≤ r) (a : Fin m → ℂ),
      Matrix.mulVec X (fun i : Fin r => if hi : i.val < m then a ⟨i.val, hi⟩ else 0) =
        Matrix.mulVec (X.submatrix id fun j : Fin m => (⟨j.val, by omega⟩ : Fin r)) a := by
    intro m hm a
    funext k
    simp only [Matrix.mulVec, dotProduct, Matrix.submatrix_apply, id]
    symm
    refine Fintype.sum_of_injective (fun j : Fin m => (⟨j.val, by omega⟩ : Fin r)) ?_ _ _ ?_ ?_
    · intro x y hxy
      exact Fin.ext (by simpa using congrArg Fin.val hxy)
    · intro i hi
      have hmi : ¬ i.val < m := fun hlt => hi ⟨⟨i.val, hlt⟩, rfl⟩
      simp [hmi]
    · simp
  have he1 : ∀ a : Fin l → ℂ, Matrix.mulVec X (fun i : Fin r => if hi : i.val < l then a ⟨i.val, hi⟩ else 0) =
      Matrix.mulVec X₁ a := fun a => hext l (by omega) a
  have he2 : ∀ a : Fin (l + d) → ℂ, Matrix.mulVec X (fun i : Fin r => if hi : i.val < l + d then a ⟨i.val, hi⟩ else 0) =
      Matrix.mulVec X₂ a := fun a => hext (l + d) h a
  -- the argument used both for columns beyond `l + d` and for the final clause
  have hmain : ∀ v : Fin n → ℂ,
      (∀ i : Fin r, i.val < l + d → Matrix.mulVec (X.conjTranspose * J) v i = 0) →
      ∃ w : Fin r → ℂ, (∀ i, w i ≠ 0 → i.val < l + d) ∧
        Matrix.mulVec u v - v = Matrix.mulVec X w := by
    intro v hv
    have hz : Matrix.mulVec (X₂.conjTranspose * J) v = 0 := by
      funext i
      exact hv _ (by simp)
    obtain ⟨w, a, hwa⟩ := hperp v hz
    refine ⟨(fun i : Fin r => if hi : i.val < l + d then w ⟨i.val, hi⟩ else 0) +
        (fun i : Fin r => if hi : i.val < l then a ⟨i.val, hi⟩ else 0), ?_, ?_⟩
    · intro i hi
      by_contra hc
      have hc' : ¬ i.val < l := by omega
      exact hi (by simp [hc, hc'])
    · rw [hwa, Matrix.mulVec_add, he1, he2]
  have key : ∀ j : Fin r, ∃ c : Fin r → ℂ,
      (∀ i, c i ≠ 0 → (i.val < l ∧ l ≤ j.val) ∨ (i.val < l + d ∧ l + d ≤ j.val)) ∧
      Matrix.mulVec u (fun k => X k j) = (fun k => X k j) + Matrix.mulVec X c := by
    intro j
    by_cases hj1 : j.val < l
    · refine ⟨0, by simp, ?_⟩
      funext k
      have := congrFun (congrFun h1 k) ⟨j.val, hj1⟩
      simpa [Matrix.mul_apply, Matrix.mulVec, dotProduct, X₁] using this
    by_cases hj2 : j.val < l + d
    · refine ⟨fun i => if hi : i.val < l then A ⟨i.val, hi⟩ ⟨j.val - l, by omega⟩ else 0, ?_, ?_⟩
      · intro i hi
        by_cases hil : i.val < l
        · exact Or.inl ⟨hil, by omega⟩
        · exact absurd (by simp [hil]) hi
      · have he1' := he1 (fun i => A i ⟨j.val - l, by omega⟩)
        beta_reduce at he1'
        rw [he1']
        funext k
        have := congrFun (congrFun hb k) ⟨j.val - l, by omega⟩
        have hjj : (⟨l + (j.val - l), by omega⟩ : Fin r) = j := Fin.ext (by simp; omega)
        simp only [Matrix.mul_apply, Matrix.add_apply, Xb, X₁, Matrix.submatrix_apply, id, hjj] at this
        simpa [Matrix.mulVec, dotProduct, Matrix.mul_apply, X₁] using this
    · obtain ⟨w, hwsupp, hw⟩ := hmain (fun k => X k j) fun i _ => congrFun (congrFun hX i) j
      exact ⟨w, fun i hi => Or.inr ⟨hwsupp i hi, by omega⟩, sub_eq_iff_eq_add'.mp hw⟩
  choose c hc hc' using key
  refine ⟨Matrix.of fun i j => c j i, ?_, ?_, hmain⟩
  · ext k j
    have := congrFun (hc' j) k
    simpa [Matrix.mul_apply, Matrix.mulVec, dotProduct] using this
  · intro i j hij
    exact hc j i (by simpa using hij)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFlagUnipotentMatrixExistsSparse =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosDefExistsConjTransposeMulMulEqOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosDefExistsConjTransposeMulMulEqOne", "h": "module\n\npublic import Mathlib.Analysis.Complex.Order\npublic import Mathlib.LinearAlgebra.Matrix.PosDef\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Star.UnitaryStarAlgAut\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexOrder

noncomputable section

namespace GlobalTheory

open Matrix

theorem posDef_exists_conjTranspose_mul_mul_eq_one :
    ∀ (d : ℕ) (H : Matrix (Fin d) (Fin d) ℂ), H.PosDef →
      ∃ y₀ : GL (Fin d) ℂ, (y₀.1).conjTranspose * H * y₀.1 = 1 := by
  intro d H hP
  have hH : H.IsHermitian := hP.isHermitian
  set U : Matrix (Fin d) (Fin d) ℂ := (hH.eigenvectorUnitary : Matrix (Fin d) (Fin d) ℂ) with hUdef
  have hU1 : Uᴴ * U = 1 := hH.eigenvectorUnitary.2.1
  have hU2 : U * Uᴴ = 1 := hH.eigenvectorUnitary.2.2
  have hspec : H = U * diagonal (fun i => ((hH.eigenvalues i : ℝ) : ℂ)) * Uᴴ := by
    have h := hH.spectral_theorem
    rw [Unitary.conjStarAlgAut_apply] at h
    simpa [Matrix.star_eq_conjTranspose, Function.comp_def] using h
  have hpos : ∀ i, 0 < hH.eigenvalues i := fun i => hP.eigenvalues_pos i
  let r : Fin d → ℝ := fun i => Real.sqrt (hH.eigenvalues i)
  have hr : ∀ i, 0 < r i := fun i => Real.sqrt_pos.2 (hpos i)
  have hrr : ∀ i, r i * r i = hH.eigenvalues i := fun i => Real.mul_self_sqrt (hpos i).le
  let s : Fin d → ℂ := fun i => (((r i)⁻¹ : ℝ) : ℂ)
  let t : Fin d → ℂ := fun i => ((r i : ℝ) : ℂ)
  have hst : diagonal s * diagonal t = 1 := by
    rw [diagonal_mul_diagonal, ← diagonal_one]
    congr 1; funext i
    simp only [s, t, ← Complex.ofReal_mul, inv_mul_cancel₀ (hr i).ne', Complex.ofReal_one]
  have hts : diagonal t * diagonal s = 1 := by
    rw [diagonal_mul_diagonal, ← diagonal_one]
    congr 1; funext i
    simp only [s, t, ← Complex.ofReal_mul, mul_inv_cancel₀ (hr i).ne', Complex.ofReal_one]
  let Y : Matrix (Fin d) (Fin d) ℂ := U * diagonal s
  let Z : Matrix (Fin d) (Fin d) ℂ := diagonal t * Uᴴ
  have hYZ : Y * Z = 1 := by
    simp only [Y, Z]
    rw [Matrix.mul_assoc, ← Matrix.mul_assoc (diagonal s), hst, Matrix.one_mul, hU2]
  have hZY : Z * Y = 1 := by
    simp only [Y, Z]
    rw [Matrix.mul_assoc, ← Matrix.mul_assoc Uᴴ, hU1, Matrix.one_mul, hts]
  refine ⟨⟨Y, Z, hYZ, hZY⟩, ?_⟩
  show Yᴴ * H * Y = 1
  have hsH : (diagonal s)ᴴ = diagonal s := by
    rw [diagonal_conjTranspose]
    congr 1; funext i
    simp [s]
  have hdiag : diagonal s * diagonal (fun i => ((hH.eigenvalues i : ℝ) : ℂ)) * diagonal s = 1 := by
    rw [diagonal_mul_diagonal, diagonal_mul_diagonal, ← diagonal_one]
    congr 1; funext i
    simp only [s, ← hrr i, ← Complex.ofReal_mul]
    rw [show (r i)⁻¹ * (r i * r i) * (r i)⁻¹ = ((r i)⁻¹ * r i) * (r i * (r i)⁻¹) by ring,
      inv_mul_cancel₀ (hr i).ne', mul_inv_cancel₀ (hr i).ne']
    simp
  simp only [Y]
  rw [conjTranspose_mul, hsH, hspec]
  calc diagonal s * Uᴴ * (U * diagonal (fun i => ((hH.eigenvalues i : ℝ) : ℂ)) * Uᴴ) * (U * diagonal s)
      = diagonal s * (Uᴴ * U) * diagonal (fun i => ((hH.eigenvalues i : ℝ) : ℂ)) * (Uᴴ * U) * diagonal s := by
        simp only [Matrix.mul_assoc]
    _ = 1 := by rw [hU1, Matrix.mul_one, Matrix.mul_one, hdiag]

end GlobalTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosDefExistsConjTransposeMulMulEqOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RadicalEltMovingDualToMajorant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RadicalEltMovingDualToMajorant", "h": "module\n\npublic import Mathlib.Analysis.Complex.Order\npublic import Mathlib.LinearAlgebra.Matrix.PosDef\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexOrder
open Matrix

namespace GlobalTheory

theorem radical_elt_moving_dual_to_majorant (n p : ℕ) (J θ : Matrix (Fin n) (Fin n) ℂ)
    (hJ : J.conjTranspose = J) (hθ : θ * θ = 1) (hQ : (J * θ).PosDef)
    (X₂ Y₂ : Matrix (Fin n) (Fin p) ℂ) (hXX : X₂.conjTranspose * J * X₂ = 0)
    (hYY : Y₂.conjTranspose * J * Y₂ = 0) (hXY : X₂.conjTranspose * J * Y₂ = 1) :
    ∃ u₁ : GL (Fin n) ℂ, (u₁.1).conjTranspose * J * u₁.1 = J ∧ u₁.1 * X₂ = X₂ ∧
      (∀ v : Fin n → ℂ, Matrix.mulVec (X₂.conjTranspose * J) v = 0 →
        ∃ w : Fin p → ℂ, Matrix.mulVec u₁.1 v - v = Matrix.mulVec X₂ w) ∧
      θ * X₂ = u₁.1 * Y₂ * (X₂.conjTranspose * (J * θ) * X₂) := by
  have hθJ : θᴴ * J = J * θ := by
    have := hQ.isHermitian.eq
    rwa [conjTranspose_mul, hJ] at this
  have hYX : Y₂ᴴ * J * X₂ = 1 := by
    have := congrArg conjTranspose hXY
    simpa [conjTranspose_mul, hJ, Matrix.mul_assoc] using this
  have hinj : Function.Injective X₂.mulVec := by
    intro a b hab
    have := congrArg (fun v => (Y₂ᴴ * J).mulVec v) hab
    simpa [Matrix.mulVec_mulVec, hYX] using this
  have tXX : ∀ {m : Type} (B : Matrix (Fin p) m ℂ), X₂ᴴ * (J * (X₂ * B)) = 0 := by
    intro m B
    rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, hXX, Matrix.zero_mul]
  set P := X₂ᴴ * (J * θ) * X₂ with hPdef
  have hP : P.PosDef := hQ.conjTranspose_mul_mul_same hinj
  have hdet : IsUnit P.det := isUnit_iff_ne_zero.mpr hP.det_pos.ne'
  have hPPi : P * P⁻¹ = 1 := Matrix.mul_nonsing_inv P hdet
  have hPiP : P⁻¹ * P = 1 := Matrix.nonsing_inv_mul P hdet
  have hPiH : (P⁻¹)ᴴ = P⁻¹ := by rw [conjTranspose_nonsing_inv, hP.isHermitian.eq]
  set Y' := θ * X₂ * P⁻¹ with hY'
  have hXY' : X₂ᴴ * J * Y' = 1 := by
    rw [← hPPi, hY', hPdef]
    simp only [Matrix.mul_assoc]
  have hY'Y' : Y'ᴴ * J * Y' = 0 := by
    have h1 : ∀ B : Matrix (Fin n) (Fin p) ℂ, θᴴ * (J * (θ * B)) = J * B := by
      intro B
      rw [← Matrix.mul_assoc, hθJ, Matrix.mul_assoc, ← Matrix.mul_assoc θ, hθ, Matrix.one_mul]
    rw [hY']
    simp only [conjTranspose_mul, hPiH, Matrix.mul_assoc, h1, tXX, Matrix.mul_zero]
  set D := Y' - Y₂ with hD
  have hXD : X₂ᴴ * J * D = 0 := by rw [hD, Matrix.mul_sub, hXY', hXY, sub_self]
  have hDX : Dᴴ * J * X₂ = 0 := by
    have := congrArg conjTranspose hXD
    simpa [conjTranspose_mul, hJ, Matrix.mul_assoc] using this
  have hkey : Dᴴ * J * D + Dᴴ * J * Y₂ + Y₂ᴴ * J * D = 0 := by
    rw [hD]
    simp only [conjTranspose_sub, Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_assoc] at hY'Y' hYY ⊢
    rw [hY'Y', hYY]
    abel

  have tXD : ∀ {m : Type} (B : Matrix (Fin p) m ℂ), X₂ᴴ * (J * (D * B)) = 0 := by
    intro m B
    rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, hXD, Matrix.zero_mul]
  have tDX : ∀ {m : Type} (B : Matrix (Fin p) m ℂ), Dᴴ * (J * (X₂ * B)) = 0 := by
    intro m B
    rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, hDX, Matrix.zero_mul]
  have hXX' : X₂ᴴ * (J * X₂) = 0 := by rw [← Matrix.mul_assoc, hXX]
  have hDX' : Dᴴ * (J * X₂) = 0 := by rw [← Matrix.mul_assoc, hDX]
  have hXY'' : X₂ᴴ * (J * Y₂) = 1 := by rw [← Matrix.mul_assoc, hXY]
  set u : Matrix (Fin n) (Fin n) ℂ :=
    1 + (D * X₂ᴴ * J - X₂ * Dᴴ * J + X₂ * (Dᴴ * J * Y₂) * X₂ᴴ * J) with hu
  have huJ : uᴴ * J * u = J := by
    have hexp : uᴴ * J * u = J + J * X₂ * (Dᴴ * J * D + Dᴴ * J * Y₂ + Y₂ᴴ * J * D) * X₂ᴴ * J := by
      rw [hu]
      simp only [conjTranspose_add, conjTranspose_sub, conjTranspose_mul, conjTranspose_one,
        conjTranspose_conjTranspose, hJ, Matrix.mul_add, Matrix.add_mul, Matrix.mul_sub,
        Matrix.sub_mul, Matrix.mul_assoc, Matrix.one_mul, Matrix.mul_one, tXX, tXD, tDX,
        Matrix.mul_zero, add_zero]
      abel
    simp [hexp, hkey]
  have huX : u * X₂ = X₂ := by
    rw [hu]
    simp only [Matrix.add_mul, Matrix.sub_mul, Matrix.mul_assoc, Matrix.one_mul, hXX', hDX',
      Matrix.mul_zero, add_zero, sub_zero]
  have huY : u * Y₂ = Y' := by
    rw [hu]
    simp only [Matrix.add_mul, Matrix.sub_mul, Matrix.mul_assoc, Matrix.one_mul, hXY'',
      Matrix.mul_one]
    rw [hD]; abel
  have hdetJ : J.det ≠ 0 := fun h0 => hQ.det_pos.ne' (by rw [Matrix.det_mul, h0, zero_mul])
  have huU : IsUnit u := by
    rw [Matrix.isUnit_iff_isUnit_det, isUnit_iff_ne_zero]
    intro h0
    have := congrArg Matrix.det huJ
    rw [Matrix.det_mul, Matrix.det_mul, h0, mul_zero] at this
    exact hdetJ this.symm
  refine ⟨huU.unit, ?_, ?_, ?_, ?_⟩
  · simpa using huJ
  · simpa using huX
  · intro v hv
    have hv' : X₂ᴴ *ᵥ (J *ᵥ v) = 0 := by rw [Matrix.mulVec_mulVec, hv]
    refine ⟨-(Dᴴ *ᵥ (J *ᵥ v)), ?_⟩
    simp only [IsUnit.unit_spec, hu, Matrix.add_mulVec, Matrix.sub_mulVec, Matrix.one_mulVec,
      ← Matrix.mulVec_mulVec, hv', Matrix.mulVec_zero, Matrix.mulVec_neg]
    abel
  · simp only [IsUnit.unit_spec, huY, hY', Matrix.mul_assoc, hPiP, Matrix.mul_one]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RadicalEltMovingDualToMajorant =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplexWittBasisNormalForm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplexWittBasisNormalForm", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConjTransposeMulMulSelfOfUnitaryConj\npublic import Mathlib.Analysis.Complex.Order\npublic import Mathlib.LinearAlgebra.Matrix.PosDef\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeviElementIsotropicOrthogonalComplex\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFlagComplementPosDefFactorization\npublic import Mathlib.LinearAlgebra.Matrix.ConjTranspose\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianFlagUnipotentMatrixExistsSparse\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosDefExistsConjTransposeMulMulEqOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RadicalEltMovingDualToMajorant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped ComplexOrder

namespace GlobalTheory.MajPosCpx

theorem gram_sub_eq {n r a b : ℕ} (J : Matrix (Fin n) (Fin n) ℂ) (X Y : Matrix (Fin n) (Fin r) ℂ)
    (f : Fin a → Fin r) (g : Fin b → Fin r) (R : Matrix (Fin a) (Fin b) ℂ)
    (hR : ∀ i j, (X.conjTranspose * J * Y) (f i) (g j) = R i j) :
    (X.submatrix id f).conjTranspose * J * (Y.submatrix id g) = R := by
  ext i j; rw [← hR]; simp [Matrix.mul_apply, Matrix.conjTranspose_apply]

theorem mul_submatrix_id {n r a : ℕ} (u : Matrix (Fin n) (Fin n) ℂ) (X : Matrix (Fin n) (Fin r) ℂ)
    (f : Fin a → Fin r) : u * X.submatrix id f = (u * X).submatrix id f := by
  ext i j; simp [Matrix.mul_apply]

theorem exists_unip_conj_unitary : ∀ (n r : ℕ) (J : Matrix (Fin n) (Fin n) ℂ), J.conjTranspose = J →
    ∀ (X Y : Matrix (Fin n) (Fin r) ℂ), X.conjTranspose * J * X = 0 → Y.conjTranspose * J * Y = 0 → X.conjTranspose * J * Y = 1 →
    ∀ (c : GL (Fin n) ℂ) (ε : Fin n → Bool), (c.1).conjTranspose * J * c.1 = Matrix.diagonal (fun i => if ε i then 1 else -1) →
    ∀ (l d : ℕ) (h : l + d ≤ r),
      ∃ (u : GL (Fin n) ℂ) (N : Matrix (Fin r) (Fin r) ℂ),
        (u.1).conjTranspose * J * u.1 = J ∧ u.1 * X = X + X * N ∧
        (∀ i j, N i j ≠ 0 → (i.val < l ∧ l ≤ j.val) ∨ (i.val < l + d ∧ l + d ≤ j.val)) ∧
        (∀ v : Fin n → ℂ, (∀ i : Fin r, i.val < l + d → Matrix.mulVec (X.conjTranspose * J) v i = 0) →
          ∃ w : Fin r → ℂ, (∀ i, w i ≠ 0 → i.val < l + d) ∧ Matrix.mulVec u.1 v - v = Matrix.mulVec X w) ∧
        ∃ y₀ : GL (Fin d) ℂ, ∀ k : GL (Fin d) ℂ, (k.1).conjTranspose * k.1 = 1 →
          let Xb : Matrix (Fin n) (Fin d) ℂ := X.submatrix id fun j => ⟨l + j.val, by omega⟩
          let Yb : Matrix (Fin n) (Fin d) ℂ := Y.submatrix id fun j => ⟨l + j.val, by omega⟩
          let m : GL (Fin d) ℂ := y₀ * k * y₀⁻¹
          let G : Matrix (Fin n) (Fin n) ℂ := 1 + Xb * (m.1 - 1) * (Yb.conjTranspose * J) + Yb * ((m⁻¹).1.conjTranspose - 1) * (Xb.conjTranspose * J)
          let M : Matrix (Fin n) (Fin n) ℂ := (c⁻¹).1 * u.1 * G * (u⁻¹).1 * c.1
          M.conjTranspose * M = 1 := by
  intro n r J hJ X Y hXX hYY hXY c ε hc l d h
  set Dg : Matrix (Fin n) (Fin n) ℂ := Matrix.diagonal (fun i => if ε i then 1 else -1) with hDg
  have hDD : Dg * Dg = 1 := by
    rw [hDg, Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]; congr 1; funext i; split_ifs <;> norm_num
  have hcc : c.1 * (c⁻¹).1 = 1 := Units.mul_inv c
  have hcc' : (c⁻¹).1 * c.1 = 1 := Units.inv_mul c
  have hcH : (c⁻¹).1.conjTranspose * (c.1).conjTranspose = 1 := by
    rw [← Matrix.conjTranspose_mul, hcc, Matrix.conjTranspose_one]
  have hJc : J = (c⁻¹).1.conjTranspose * Dg * (c⁻¹).1 := by
    have e : (c⁻¹).1.conjTranspose * Dg * (c⁻¹).1 =
        ((c⁻¹).1.conjTranspose * (c.1).conjTranspose) * J * (c.1 * (c⁻¹).1) := by
      rw [← hc]; simp only [Matrix.mul_assoc]
    rw [e, hcH, hcc, Matrix.one_mul, Matrix.mul_one]
  set θ : Matrix (Fin n) (Fin n) ℂ := c.1 * Dg * (c⁻¹).1 with hθ
  have hθθ : θ * θ = 1 := by
    simp only [hθ, Matrix.mul_assoc]
    rw [← Matrix.mul_assoc (c⁻¹).1 c.1, hcc', Matrix.one_mul, ← Matrix.mul_assoc Dg Dg, hDD, Matrix.one_mul, hcc]
  have hQ : J * θ = (c⁻¹).1.conjTranspose * (c⁻¹).1 := by
    rw [hJc]; simp only [hθ, Matrix.mul_assoc]
    rw [← Matrix.mul_assoc (c⁻¹).1 c.1, hcc', Matrix.one_mul, ← Matrix.mul_assoc Dg Dg, hDD, Matrix.one_mul]
  have hQpd : (J * θ).PosDef := by
    rw [hQ]; exact Matrix.PosDef.conjTranspose_mul_self _ (Matrix.mulVec_injective_iff_isUnit.2 (c⁻¹).isUnit)
  set X₁ : Matrix (Fin n) (Fin l) ℂ := X.submatrix id fun j => ⟨j.val, by omega⟩ with hX₁
  set Y₁ : Matrix (Fin n) (Fin l) ℂ := Y.submatrix id fun j => ⟨j.val, by omega⟩ with hY₁
  set Xb : Matrix (Fin n) (Fin d) ℂ := X.submatrix id fun j => ⟨l + j.val, by omega⟩ with hXb
  set Yb : Matrix (Fin n) (Fin d) ℂ := Y.submatrix id fun j => ⟨l + j.val, by omega⟩ with hYb
  set X₂ : Matrix (Fin n) (Fin (l + d)) ℂ := X.submatrix id fun j => ⟨j.val, by omega⟩ with hX₂
  set Y₂ : Matrix (Fin n) (Fin (l + d)) ℂ := Y.submatrix id fun j => ⟨j.val, by omega⟩ with hY₂
  have w11 : X₁.conjTranspose * J * X₁ = 0 := gram_sub_eq J X X _ _ 0 (fun i j => by rw [hXX]; rfl)
  have w1b : X₁.conjTranspose * J * Xb = 0 := gram_sub_eq J X X _ _ 0 (fun i j => by rw [hXX]; rfl)
  have wbb : Xb.conjTranspose * J * Xb = 0 := gram_sub_eq J X X _ _ 0 (fun i j => by rw [hXX]; rfl)
  have v11 : X₁.conjTranspose * J * Y₁ = 1 :=
    gram_sub_eq J X Y _ _ 1 (fun i j => by rw [hXY]; simp [Matrix.one_apply, Fin.ext_iff])
  have v1b : X₁.conjTranspose * J * Yb = 0 :=
    gram_sub_eq J X Y _ _ 0 (fun i j => by
      rw [hXY, Matrix.one_apply, if_neg]
      · rfl
      · simp only [Fin.ext_iff]; omega)
  have ybb : Yb.conjTranspose * J * Yb = 0 := gram_sub_eq J Y Y _ _ 0 (fun i j => by rw [hYY]; rfl)
  have vbb : Xb.conjTranspose * J * Yb = 1 :=
    gram_sub_eq J X Y _ _ 1 (fun i j => by rw [hXY]; simp [Matrix.one_apply, Fin.ext_iff])
  have w22 : X₂.conjTranspose * J * X₂ = 0 := gram_sub_eq J X X _ _ 0 (fun i j => by rw [hXX]; rfl)
  have y22 : Y₂.conjTranspose * J * Y₂ = 0 := gram_sub_eq J Y Y _ _ 0 (fun i j => by rw [hYY]; rfl)
  have v22 : X₂.conjTranspose * J * Y₂ = 1 :=
    gram_sub_eq J X Y _ _ 1 (fun i j => by rw [hXY]; simp [Matrix.one_apply, Fin.ext_iff])
  have w21 : X₂.conjTranspose * J * X₁ = 0 := gram_sub_eq J X X _ _ 0 (fun i j => by rw [hXX]; rfl)
  obtain ⟨u₂, A, hu₂J, hu₂X₁, hu₂Xb, hu₂Yb, hu₂v, hA⟩ :=
    _root_.GlobalTheory.levi_element_cpx n l d J (J * θ) hJ hQpd X₁ Y₁ Xb Yb w11 w1b wbb v11 v1b ybb vbb
  obtain ⟨u₁, hu₁J, hu₁X₂, hu₁v, hθX₂⟩ := _root_.GlobalTheory.radical_elt_moving_dual_to_majorant n (l + d) J θ hJ hθθ hQpd X₂ Y₂ w22 y22 v22
  have hu₁X₁ : u₁.1 * X₁ = X₁ := by
    have e : X₁ = X₂.submatrix id (fun j : Fin l => ⟨j.val, by omega⟩) := rfl
    rw [e, mul_submatrix_id, hu₁X₂]
  have hu₁Xb : u₁.1 * Xb = Xb := by
    have e : Xb = X₂.submatrix id (fun j : Fin d => ⟨l + j.val, by omega⟩) := rfl
    rw [e, mul_submatrix_id, hu₁X₂]
  set u : GL (Fin n) ℂ := u₁ * u₂ with hu
  have huv : u.1 = u₁.1 * u₂.1 := Units.val_mul u₁ u₂
  have huJ : (u.1).conjTranspose * J * u.1 = J := by
    have e : (u₂.1).conjTranspose * (u₁.1).conjTranspose * J * (u₁.1 * u₂.1) =
        (u₂.1).conjTranspose * ((u₁.1).conjTranspose * J * u₁.1) * u₂.1 := by simp only [Matrix.mul_assoc]
    rw [huv, Matrix.conjTranspose_mul, e, hu₁J, hu₂J]
  have huX₁ : u.1 * X₁ = X₁ := by rw [huv, Matrix.mul_assoc, hu₂X₁, hu₁X₁]
  have huXb : u.1 * Xb = Xb + X₁ * A := by
    rw [huv, Matrix.mul_assoc, hu₂Xb, Matrix.mul_add, hu₁Xb, ← Matrix.mul_assoc, hu₁X₁]
  have huYb : u.1 * Yb = u₁.1 * Yb := by rw [huv, Matrix.mul_assoc, hu₂Yb]
  have huP : ∀ v : Fin n → ℂ, Matrix.mulVec (X₂.conjTranspose * J) v = 0 →
      ∃ (w : Fin (l + d) → ℂ) (a : Fin l → ℂ), Matrix.mulVec u.1 v - v = Matrix.mulVec X₂ w + Matrix.mulVec X₁ a := by
    intro v hv
    have h1 : Matrix.mulVec (X₁.conjTranspose * J) v = 0 := by
      funext i; exact congrFun hv ⟨i.val, by omega⟩
    set a := Matrix.mulVec A (Matrix.mulVec (Yb.conjTranspose * J) v) with ha
    have h2 : Matrix.mulVec (X₂.conjTranspose * J) (v + Matrix.mulVec X₁ a) = 0 := by
      rw [Matrix.mulVec_add, hv, Matrix.mulVec_mulVec, w21, Matrix.zero_mulVec, add_zero]
    obtain ⟨w, hw⟩ := hu₁v _ h2
    refine ⟨w, a, ?_⟩
    rw [huv, ← Matrix.mulVec_mulVec, hu₂v v h1, ← hw]
    abel
  obtain ⟨N, hN, hNs, hNp⟩ := _root_.GlobalTheory.isotropic_unipotent_column_relations n r J X hXX l d h u.1 A huX₁ huXb huP
  obtain ⟨hθX', hHpd⟩ := _root_.GlobalTheory.schur_complement_step_cpx n r J θ hJ hQpd X Y hXY l d h u₁.1 A hθX₂ hA
  set H : Matrix (Fin d) (Fin d) ℂ := Xb.conjTranspose * (J * θ) * (Xb + X₁ * A) with hHdef
  obtain ⟨y₀, hy₀⟩ := _root_.GlobalTheory.posDef_exists_conjTranspose_mul_mul_eq_one d H hHpd
  have hθu : θ * u.1 * Xb = u.1 * Yb * H := by
    rw [Matrix.mul_assoc, huXb, hθX', huYb]
  have hy1 : (y₀⁻¹).1.conjTranspose * (y₀.1).conjTranspose = 1 := by
    rw [← Matrix.conjTranspose_mul, Units.mul_inv, Matrix.conjTranspose_one]
  have hHy : H = (y₀⁻¹).1.conjTranspose * (y₀⁻¹).1 := by
    calc H = ((y₀⁻¹).1.conjTranspose * (y₀.1).conjTranspose) * H * (y₀.1 * (y₀⁻¹).1) := by
          rw [hy1, Units.mul_inv, Matrix.one_mul, Matrix.mul_one]
      _ = (y₀⁻¹).1.conjTranspose * ((y₀.1).conjTranspose * H * y₀.1) * (y₀⁻¹).1 := by simp only [Matrix.mul_assoc]
      _ = _ := by rw [hy₀, Matrix.mul_one]
  have hHinv : H * (y₀.1 * (y₀.1).conjTranspose) = 1 := by
    calc H * (y₀.1 * (y₀.1).conjTranspose) = (y₀⁻¹).1.conjTranspose * ((y₀⁻¹).1 * y₀.1) * (y₀.1).conjTranspose := by
          rw [hHy]; simp only [Matrix.mul_assoc]
      _ = 1 := by rw [Units.inv_mul, Matrix.mul_one, hy1]
  have huJ' : (u.1).conjTranspose * J = J * (u⁻¹).1 := by
    calc (u.1).conjTranspose * J = (u.1).conjTranspose * J * (u.1 * (u⁻¹).1) := by rw [Units.mul_inv, Matrix.mul_one]
      _ = ((u.1).conjTranspose * J * u.1) * (u⁻¹).1 := by simp only [Matrix.mul_assoc]
      _ = J * (u⁻¹).1 := by rw [huJ]
  have hθuY : θ * u.1 * Yb = u.1 * Xb * (y₀.1 * (y₀.1).conjTranspose) := by
    calc θ * u.1 * Yb = θ * u.1 * Yb * (H * (y₀.1 * (y₀.1).conjTranspose)) := by rw [hHinv, Matrix.mul_one]
      _ = θ * (θ * u.1 * Xb) * (y₀.1 * (y₀.1).conjTranspose) := by rw [hθu]; simp only [Matrix.mul_assoc]
      _ = (θ * θ) * u.1 * Xb * (y₀.1 * (y₀.1).conjTranspose) := by simp only [Matrix.mul_assoc]
      _ = _ := by rw [hθθ, Matrix.one_mul]
  have hPX : (u.1).conjTranspose * (J * θ) * u.1 * Xb = J * Yb * ((y₀⁻¹).1.conjTranspose * (y₀⁻¹).1) := by
    calc (u.1).conjTranspose * (J * θ) * u.1 * Xb = ((u.1).conjTranspose * J) * (θ * u.1 * Xb) := by
          simp only [Matrix.mul_assoc]
      _ = J * ((u⁻¹).1 * u.1) * Yb * H := by rw [huJ', hθu]; simp only [Matrix.mul_assoc]
      _ = _ := by rw [Units.inv_mul, Matrix.mul_one, hHy]
  have hPY : (u.1).conjTranspose * (J * θ) * u.1 * Yb = J * Xb * (y₀.1 * (y₀.1).conjTranspose) := by
    calc (u.1).conjTranspose * (J * θ) * u.1 * Yb = ((u.1).conjTranspose * J) * (θ * u.1 * Yb) := by
          simp only [Matrix.mul_assoc]
      _ = J * ((u⁻¹).1 * u.1) * Xb * (y₀.1 * (y₀.1).conjTranspose) := by rw [huJ', hθuY]; simp only [Matrix.mul_assoc]
      _ = _ := by rw [Units.inv_mul, Matrix.mul_one]
  have hPH : ((u.1).conjTranspose * (J * θ) * u.1).conjTranspose = (u.1).conjTranspose * (J * θ) * u.1 := by
    rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hQpd.1.eq]
    simp only [Matrix.mul_assoc]
  refine ⟨u, N, huJ, hN, hNs, fun v hv => hNp v hv, y₀, fun k hk => ?_⟩
  intro Xb' Yb' m G M
  have hG : G.conjTranspose * ((u.1).conjTranspose * (J * θ) * u.1) * G = (u.1).conjTranspose * (J * θ) * u.1 :=
    _root_.GlobalTheory.conjTranspose_mul_mul_self_of_unitary_conj n d J ((u.1).conjTranspose * (J * θ) * u.1) Xb Yb y₀ hJ hPH wbb ybb vbb hPX hPY k hk
  show ((c⁻¹).1 * u.1 * G * (u⁻¹).1 * c.1).conjTranspose * ((c⁻¹).1 * u.1 * G * (u⁻¹).1 * c.1) = 1
  have e1 : ((c⁻¹).1 * u.1 * G * (u⁻¹).1 * c.1).conjTranspose * ((c⁻¹).1 * u.1 * G * (u⁻¹).1 * c.1) =
      (c.1).conjTranspose * ((u⁻¹).1.conjTranspose *
        (G.conjTranspose * ((u.1).conjTranspose * ((c⁻¹).1.conjTranspose * (c⁻¹).1) * u.1) * G) * (u⁻¹).1) * c.1 := by
    simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
  rw [e1, ← hQ, hG]
  have e2 : (c.1).conjTranspose * ((u⁻¹).1.conjTranspose * ((u.1).conjTranspose * (J * θ) * u.1) * (u⁻¹).1) * c.1 =
      (c.1).conjTranspose * ((u.1 * (u⁻¹).1).conjTranspose * (J * θ) * (u.1 * (u⁻¹).1)) * c.1 := by
    simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
  rw [e2, Units.mul_inv, Matrix.conjTranspose_one, Matrix.one_mul, Matrix.mul_one, hQ]
  have e3 : (c.1).conjTranspose * ((c⁻¹).1.conjTranspose * (c⁻¹).1) * c.1 =
      ((c⁻¹).1 * c.1).conjTranspose * ((c⁻¹).1 * c.1) := by
    simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
  rw [e3, hcc', Matrix.conjTranspose_one, Matrix.one_mul]

end GlobalTheory.MajPosCpx
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplexWittBasisNormalForm =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.StabOfFrame =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.StabOfFrame", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ComplexWittBasisNormalForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Development.AbelianVarietyTheory.Definitions.Divisors.LocallyCompactUnipFlag\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsSplitChartSplitChart\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
  GlobalTheory.UAut GlobalTheory.SiegelSet GlobalTheory.ThK.SquareIntegrability GlobalTheory.LFun.SplitTie
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.CompanionTheory.GoodPos

theorem stab_of_frame : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J →
    ∀ (r : ℕ) (Xf Yf : Matrix (Fin n) (Fin r) E), IsWittFrame σ J Xf Yf →
    ∀ (w : InfinitePlace F) (cw : GL (Fin n) (w.Completion ⊗[F] E)),
      (∃ ε : Fin n → Bool, Formalism.UG.cT (sigR _ σ) cw.1 * JR w.Completion J * cw.1 =
        Matrix.diagonal fun i => if ε i then 1 else -1) →
    ∀ (l d : ℕ) (h : l + d ≤ r),
      ∃ (u : GArch σ J w) (N : Matrix (Fin r) (Fin r) (w.Completion ⊗[F] E)),
        (matHom _ σ J u).1 * Xf.map (inclR (F := F) w.Completion) =
          Xf.map (inclR (F := F) w.Completion) + Xf.map (inclR (F := F) w.Completion) * N ∧
        (∀ i j, N i j ≠ 0 → (i.val < l ∧ l ≤ j.val) ∨ (i.val < l + d ∧ l + d ≤ j.val)) ∧
        (∀ v : Fin n → w.Completion ⊗[F] E,
          (∀ i : Fin r, i.val < l + d →
            Matrix.mulVec ((Formalism.UG.cT (σ : E →+* E) Xf * J).map (inclR (F := F) w.Completion)) v i = 0) →
          ∃ a : Fin r → w.Completion ⊗[F] E, (∀ i, a i ≠ 0 → i.val < l + d) ∧
            Matrix.mulVec (matHom _ σ J u).1 v - v = Matrix.mulVec (Xf.map (inclR (F := F) w.Completion)) a) ∧
        ∃ y₀ : GL (Fin d) (w.Completion ⊗[F] E), ∀ k : GL (Fin d) (w.Completion ⊗[F] E),
          Formalism.UG.cT (sigR w.Completion σ) k.1 * k.1 = 1 → ∀ g : GArch σ J w,
          (matHom _ σ J g).1 = 1 + (GlobalTheory.BlockForms.blkCols h Xf).map (inclR (F := F) w.Completion) * ((y₀ * k * y₀⁻¹).1 - 1) *
            (Formalism.UG.cT (σ : E →+* E) (GlobalTheory.BlockForms.blkCols h Yf) * J).map (inclR (F := F) w.Completion) +
          (GlobalTheory.BlockForms.blkCols h Yf).map (inclR (F := F) w.Completion) * (Formalism.UG.cT (sigR w.Completion σ) ((y₀ * k * y₀⁻¹)⁻¹).1 - 1) *
            (Formalism.UG.cT (σ : E →+* E) (GlobalTheory.BlockForms.blkCols h Xf) * J).map (inclR (F := F) w.Completion) →
          u * g * u⁻¹ ∈ stabArch σ J w cw := by
  intro F E _ _ _ _ _ σ hcm n J hJ r Xf Yf hW w cw hcw l d h
  obtain ⟨τ⟩ : Nonempty (EmbOver E w) := inferInstance
  obtain ⟨ε, hε⟩ := hcw
  have hbij := infEmb_bijective hcm τ
  let φ : w.Completion ⊗[F] E →+* ℂ := infEmb τ
  let e : w.Completion ⊗[F] E ≃+* ℂ := RingEquiv.ofBijective φ hbij
  have hsymm : ∀ z, φ (e.symm z) = z := e.apply_symm_apply
  have hinj : ∀ {a b : ℕ} {P Q : Matrix (Fin a) (Fin b) (w.Completion ⊗[F] E)}, P.map φ = Q.map φ → P = Q :=
    fun hPQ => Matrix.map_injective hbij.1 hPQ
  have hincl : ∀ x : E, φ (inclR (F := F) w.Completion x) = τ.1 x := by
    intro x
    change infEmb τ ((1 : w.Completion) ⊗ₜ[F] x) = _
    simp
  have hinclM : ∀ {a b : ℕ} (Z : Matrix (Fin a) (Fin b) E), (Z.map (inclR (F := F) w.Completion)).map φ = Z.map τ.1 := by
    intro a b Z; ext i j; exact hincl _
  have hcTE : ∀ {a b : ℕ} (Z : Matrix (Fin a) (Fin b) E), (Formalism.UG.cT (σ : E →+* E) Z).map τ.1 = (Z.map τ.1).conjTranspose := by
    intro a b Z; ext i j
    simp [Formalism.UG.cT, Matrix.conjTranspose_apply, hcm.2.2.2]
  have hcTR : ∀ {a b : ℕ} (Z : Matrix (Fin a) (Fin b) (w.Completion ⊗[F] E)),
      (Formalism.UG.cT (sigR w.Completion σ) Z).map φ = (Z.map φ).conjTranspose := by
    intro a b Z; ext i j; exact (infEmb_sigR hcm τ _).symm
  have hbcb : ∀ {m : ℕ} (a : GL (Fin m) ℂ), Formalism.UG.bc φ (Formalism.UG.bc e.symm.toRingHom a) = a := by
    intro m a; ext i j; exact hsymm _
  have hJR : (JR w.Completion J).map φ = J.map τ.1 := hinclM J

  have hJ' : (J.map τ.1).conjTranspose = J.map τ.1 := by
    rw [← hcTE]; congr 1; ext i j; exact hJ.1 i j
  have hxx : (Xf.map τ.1).conjTranspose * J.map τ.1 * Xf.map τ.1 = 0 := by
    rw [← hcTE, ← Matrix.map_mul, ← Matrix.map_mul, hW.xx, Matrix.map_zero _ (map_zero _)]
  have hyy : (Yf.map τ.1).conjTranspose * J.map τ.1 * Yf.map τ.1 = 0 := by
    rw [← hcTE, ← Matrix.map_mul, ← Matrix.map_mul, hW.yy, Matrix.map_zero _ (map_zero _)]
  have hxy : (Xf.map τ.1).conjTranspose * J.map τ.1 * Yf.map τ.1 = 1 := by
    rw [← hcTE, ← Matrix.map_mul, ← Matrix.map_mul, hW.xy, Matrix.map_one _ (map_zero _) (map_one _)]
  have hc' : (Formalism.UG.bc φ cw).1.conjTranspose * J.map τ.1 * (Formalism.UG.bc φ cw).1 =
      Matrix.diagonal (fun i => if ε i then 1 else -1) := by
    have := congrArg (fun P => P.map φ) hε
    simp only [Matrix.map_mul, hcTR, hJR, Matrix.diagonal_map (map_zero _)] at this
    change (cw.1.map φ).conjTranspose * _ * cw.1.map φ = _
    rw [this]; congr 1; funext i; split_ifs <;> simp
  obtain ⟨u, N, hu, huXN, hNX, hNv, y₀, hy⟩ := GlobalTheory.MajPosCpx.exists_unip_conj_unitary n r (J.map τ.1) hJ' (Xf.map τ.1) (Yf.map τ.1) hxx hyy hxy
    (Formalism.UG.bc φ cw) ε hc' l d h

  let u0 : GL (Fin n) (w.Completion ⊗[F] E) := Formalism.UG.bc e.symm.toRingHom u
  have hu0 : u0.1.map φ = u.1 := congrArg Units.val (hbcb u)
  have hmem : u0 ∈ HR w.Completion σ J := by
    change Formalism.UG.cT (sigR w.Completion σ) u0.1 * JR w.Completion J * u0.1 = JR w.Completion J
    apply hinj
    rw [Matrix.map_mul, Matrix.map_mul, hcTR, hu0, hJR]
    exact hu
  let uA : GArch σ J w := (⟨u0, hmem⟩ : HR w.Completion σ J)
  have huA : (matHom _ σ J uA) = u0 := rfl
  let N0 : Matrix (Fin r) (Fin r) (w.Completion ⊗[F] E) := N.map e.symm
  have hN0 : N0.map φ = N := by ext i j; exact hsymm _
  refine ⟨uA, N0, ?_, ?_, ?_, Formalism.UG.bc e.symm.toRingHom y₀, ?_⟩
  · rw [huA]
    apply hinj
    rw [Matrix.map_mul, Matrix.map_add φ (map_add φ), Matrix.map_mul, hN0, hinclM, hu0]
    exact huXN
  · intro i j hne
    refine hNX i j ?_
    intro h0
    apply hne
    have : φ (N0 i j) = N i j := hsymm _
    rw [h0] at this
    exact hbij.1 (this.trans (map_zero φ).symm)
  · intro v hv
    have hv' : ∀ i : Fin r, i.val < l + d → Matrix.mulVec ((Xf.map τ.1).conjTranspose * J.map τ.1) (φ ∘ v) i = 0 := by
      intro i hi
      have := congrArg φ (hv i hi)
      rw [RingHom.map_mulVec, hinclM, Matrix.map_mul, hcTE, map_zero] at this
      exact this
    obtain ⟨a', ha', hav⟩ := hNv (φ ∘ v) hv'
    refine ⟨e.symm ∘ a', fun i hi => ha' i fun h0 => hi ?_, ?_⟩
    · show e.symm (a' i) = 0
      rw [h0, map_zero]
    · rw [huA]
      funext i
      apply hbij.1
      have hφa : φ ∘ (e.symm ∘ a') = a' := funext fun i => hsymm _
      rw [Pi.sub_apply, map_sub, RingHom.map_mulVec, RingHom.map_mulVec, hinclM, hφa]
      have h2 := congrFun hav i
      rw [Pi.sub_apply] at h2
      have h3 : (u0.1.map φ) = u.1 := hu0
      rw [h3]
      exact h2
  · intro k hk g hg
    have hval : ∀ {m : ℕ} (a : GL (Fin m) (w.Completion ⊗[F] E)), a.1.map φ = (Formalism.UG.bc φ a).1 := fun a => rfl
    have hk' : (Formalism.UG.bc φ k).1.conjTranspose * (Formalism.UG.bc φ k).1 = 1 := by
      have := congrArg (fun P => P.map φ) hk
      simpa only [Matrix.map_mul, hcTR, Matrix.map_one _ (map_zero _) (map_one _), hval] using this
    have hM := hy (Formalism.UG.bc φ k) hk'
    have hgφ : (matHom _ σ J g).1.map φ = 1 + ((Xf.map τ.1).submatrix id fun j : Fin d => (⟨l + j.val, by omega⟩ : Fin r)) *
        ((y₀ * Formalism.UG.bc φ k * y₀⁻¹).1 - 1) *
        (((Yf.map τ.1).submatrix id fun j : Fin d => (⟨l + j.val, by omega⟩ : Fin r)).conjTranspose * J.map τ.1) +
        ((Yf.map τ.1).submatrix id fun j : Fin d => (⟨l + j.val, by omega⟩ : Fin r)) *
        (((y₀ * Formalism.UG.bc φ k * y₀⁻¹)⁻¹).1.conjTranspose - 1) *
        (((Xf.map τ.1).submatrix id fun j : Fin d => (⟨l + j.val, by omega⟩ : Fin r)).conjTranspose * J.map τ.1) := by
      rw [hg]
      simp only [Matrix.map_add φ (map_add φ), Matrix.map_sub φ (map_sub φ), Matrix.map_mul, Matrix.map_one φ (map_zero φ) (map_one φ),
        hinclM, hcTE, hcTR, hval, map_mul, map_inv, hbcb]
      rfl
    have hbu : Formalism.UG.bc φ u0 = u := hbcb u
    have hmain : (cw⁻¹ * matHom _ σ J (uA * g * uA⁻¹) * cw).1.map φ =
        ((Formalism.UG.bc φ cw)⁻¹).1 * u.1 * (matHom _ σ J g).1.map φ * (u⁻¹).1 * (Formalism.UG.bc φ cw).1 := by
      rw [hval]
      simp only [map_mul, map_inv, huA, hbu, Units.val_mul, mul_assoc]
      rfl
    rw [mem_stabArch]
    generalize hx : cw⁻¹ * matHom _ σ J (uA * g * uA⁻¹) * cw = x
    change Formalism.UG.cT _ x.1 * 1 * x.1 = 1
    apply hinj
    rw [mul_one, Matrix.map_mul, hcTR, Matrix.map_one _ (map_zero _) (map_one _), ← hx, hmain, hgφ]
    exact hM

end GlobalTheory.CompanionTheory.GoodPos
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.StabOfFrame =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsConjMemMajCptFrame =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsConjMemMajCptFrame", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExpoConjOfIsCsd\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockEmbeddingArchimedeanComponents\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemUnipOfArchFrame\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.StabOfFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToGAdMat\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsSplitChartSplitChart\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SmGL GlobalTheory.PRep GlobalTheory.SplitWeil GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
  GlobalTheory.UAut GlobalTheory.SiegelSet GlobalTheory.ThK.SquareIntegrability GlobalTheory.LFun.SplitTie
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.CompanionTheory.GoodPos

theorem exists_conj_mem_majCpt_frame : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] [Algebra F E]
    (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J →
    ∀ (r : ℕ) (Xf Yf : Matrix (Fin n) (Fin r) E), IsWittFrame σ J Xf Yf →
    ∀ c : (∀ w : InfinitePlace F, GL (Fin n) (w.Completion ⊗[F] E)), (∀ w, ∃ ε : Fin n → Bool, Formalism.UG.cT (sigR _ σ) (c w).1 * JR w.Completion J * (c w).1 =
        Matrix.diagonal fun i => if ε i then 1 else -1) →
    ∀ (S : Finset (Fin r)) (l d : ℕ) (h : l + d ≤ r) (ι : GlobalTheory.CuspRep.GA E d →* GAd σ J), GlobalTheory.BlockForms.IsBlockEmb σ J Xf Yf h ι →
      1 ≤ d → (∀ j : Fin r, l ≤ j.val → j.val + 1 < l + d → j ∉ S) → (∃ k ∈ S, k.val + 1 = l + d) →
      (l = 0 ∨ ∃ p ∈ S, p.val + 1 = l) →
      ∃ u ∈ GlobalTheory.StdPar.unip σ J Xf S, u ∈ infPts σ J ∧ ∃ y : GL (Fin d) (GlobalTheory.CuspRep.Cinf E),
        ∀ k : GlobalTheory.CuspRep.Kinf E d, (u * ι (GlobalTheory.CuspRep.infGL E d y)) * ι (GlobalTheory.CuspRep.infGL E d (Unitary.toUnits k)) *
          (u * ι (GlobalTheory.CuspRep.infGL E d y))⁻¹ ∈ majCpt σ J c := by
  intro F E _ _ _ _ _ _ σ hCM n J hJ r Xf Yf hW c hc S l d h ι hι hd hS1 hS2 hS3
  obtain ⟨ρ, hρs, hρlift, hρι⟩ := GlobalTheory.BlockForms.exists_archComp_of_isBlockEmb F E σ hCM n J r Xf Yf l d h ι hι
  have loc := fun w => stab_of_frame F E σ hCM n J hJ r Xf Yf hW w (c w) (hc w) l d h
  choose uw N hN hNX hNv y₀ hy₀ using loc
  set u : GAd σ J := ofInf σ J (embArchPi σ J uw) with hu
  have hu_arch : ∀ w, projArch σ J w u = uw w := fun w => by
    rw [hu, projArch_ofInf, projInfArch_embArchPi]
  have hu_inf : u ∈ infPts σ J := mem_infPts.2 (projFin_ofInf _ _ _)
  obtain ⟨y, hy⟩ := hρlift y₀
  obtain ⟨k₀, hk₀S, hk₀⟩ := hS2
  refine ⟨u, mem_unip_of_arch_frame F E σ n J r Xf S u hu_inf fun w => ⟨N w, by rw [hu_arch]; exact hN w, fun i j hij => ?_,
    fun v hv => ?_⟩, hu_inf, y, fun k => ?_⟩
  · rcases hNX w i j hij with ⟨h1, h2⟩ | ⟨h1, h2⟩
    · rcases hS3 with h0 | ⟨p, hpS, hp⟩
      · omega
      · exact ⟨p, hpS, by rw [Fin.le_def]; omega, by rw [Fin.lt_def]; omega⟩
    · exact ⟨k₀, hk₀S, by rw [Fin.le_def]; omega, by rw [Fin.lt_def]; omega⟩
  · obtain ⟨a, ha, hav⟩ := hNv w v fun i hi => hv i ⟨k₀, hk₀S, by rw [Fin.le_def]; omega⟩
    exact ⟨a, fun i hi => ⟨k₀, hk₀S, by have := ha i hi; rw [Fin.le_def]; omega⟩, by rw [hu_arch]; exact hav⟩
  · have e : (u * ι (GlobalTheory.CuspRep.infGL E d y)) * ι (GlobalTheory.CuspRep.infGL E d (Unitary.toUnits k)) *
        (u * ι (GlobalTheory.CuspRep.infGL E d y))⁻¹ = u * ι (GlobalTheory.CuspRep.infGL E d (y * Unitary.toUnits k * y⁻¹)) * u⁻¹ := by
      simp only [map_mul, map_inv]; group
    rw [e, mem_majCpt]
    refine ⟨mul_mem (mul_mem hu_inf (hρι _).1) (inv_mem hu_inf), fun w => ?_⟩
    rw [map_mul, map_mul, map_inv, hu_arch]
    refine hy₀ w (Matrix.GeneralLinearGroup.map (ρ w) (Unitary.toUnits k)) ?_ _ ?_
    · have hk : star (k : Matrix (Fin d) (Fin d) (GlobalTheory.CuspRep.Cinf E)) * (k : Matrix (Fin d) (Fin d) (GlobalTheory.CuspRep.Cinf E)) = 1 :=
        Unitary.star_mul_self_of_mem k.2
      have e1 : Formalism.UG.cT (sigR w.Completion σ) ((Matrix.GeneralLinearGroup.map (ρ w) (Unitary.toUnits k)).1) =
          (star (k : Matrix (Fin d) (Fin d) (GlobalTheory.CuspRep.Cinf E))).map (ρ w) := by
        ext i j
        simp [Formalism.UG.cT, Matrix.star_apply, hρs]
      rw [e1]
      change _ * (k : Matrix (Fin d) (Fin d) (GlobalTheory.CuspRep.Cinf E)).map (ρ w) = 1
      rw [← Matrix.map_mul, hk, Matrix.map_one _ (map_zero _) (map_one _)]
    · rw [(hρι _).2 w]
      simp only [map_mul, map_inv, hy w]

end GlobalTheory.CompanionTheory.GoodPos
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsConjMemMajCptFrame =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsBlockPoint =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsBlockPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExpoConjOfIsCsd\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMajorantFrameCompactSubgroupLeStatement\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.ExistsConjMemMajCptFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

namespace GlobalTheory.CompanionTheory.GoodPos

theorem goodPos : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] [Algebra F E]
    (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J →
    ∀ (r : ℕ) (Xf Yf : Matrix (Fin n) (Fin r) E), IsWittFrame σ J Xf Yf → ∀ (K : Subgroup (GAd σ J)), IsMaxCpt σ J K →
    ∀ (S : Finset (Fin r)) (l d : ℕ) (h : l + d ≤ r) (ι : GlobalTheory.CuspRep.GA E d →* GAd σ J), GlobalTheory.BlockForms.IsBlockEmb σ J Xf Yf h ι →
      1 ≤ d → (∀ j : Fin r, l ≤ j.val → j.val + 1 < l + d → j ∉ S) → (∃ k ∈ S, k.val + 1 = l + d) →
      (l = 0 ∨ ∃ p ∈ S, p.val + 1 = l) →
      ∀ g : GAd σ J, ∃ u ∈ GlobalTheory.StdPar.unip σ J Xf S, u ∈ infPts σ J ∧ ∃ (y : GL (Fin d) (GlobalTheory.CuspRep.Cinf E)) (g₀ : GAd σ J),
        g = u * ι (GlobalTheory.CuspRep.infGL E d y) * g₀ ∧
        ∀ k : GlobalTheory.CuspRep.Kinf E d, g₀⁻¹ * ι (GlobalTheory.CuspRep.infGL E d (Unitary.toUnits k)) * g₀ ∈ K := by
  intro F E _ _ _ _ _ _ σ hCM n J hJ r Xf Yf hW K hK S l d h ι hι hd h1 h2 h3 g
  have hconj : ∀ a : GAd σ J, Continuous fun x : GAd σ J => a * x * a⁻¹ := fun a =>
    (continuous_const.mul continuous_id).mul continuous_const
  have hnorm : ∀ a x : GAd σ J, x ∈ infPts σ J → a * x * a⁻¹ ∈ infPts σ J := fun a x hx => by
    rw [mem_infPts_iff_forall] at hx ⊢
    intro v
    simp [map_mul, map_inv, hx v]
  set K1 : Subgroup (GAd σ J) := K.map (MulAut.conj g).toMonoidHom with hK1
  have hK1le : K1 ≤ infPts σ J := by
    rintro _ ⟨x, hx, rfl⟩
    exact hnorm g x (hK.1.1 hx)
  have hK1c : IsCompact (K1 : Set (GAd σ J)) := by
    have : (K1 : Set (GAd σ J)) = (fun x => g * x * g⁻¹) '' (K : Set (GAd σ J)) := by
      ext x; simp [hK1, MulAut.conj_apply]
    rw [this]; exact hK.1.2.image (hconj g)
  obtain ⟨c, hc, hle⟩ := GlobalTheory.T.exists_majorantFrame_compact_subgroup_le F E σ hCM n J hJ K1 hK1le hK1c
  set K2 : Subgroup (GAd σ J) := (majCpt σ J c).map (MulAut.conj g⁻¹).toMonoidHom with hK2
  have hmc := (isMaxCpt_majCpt hCM hc).1
  have hK2le : K2 ≤ infPts σ J := by
    rintro _ ⟨x, hx, rfl⟩
    exact hnorm g⁻¹ x (hmc.1 hx)
  have hK2c : IsCompact (K2 : Set (GAd σ J)) := by
    have : (K2 : Set (GAd σ J)) = (fun x => g⁻¹ * x * g⁻¹⁻¹) '' (majCpt σ J c : Set (GAd σ J)) := by
      ext x; simp [hK2]
    rw [this]; exact hmc.2.image (hconj g⁻¹)
  have hKK2 : K ≤ K2 := fun x hx => ⟨g * x * g⁻¹, hle ⟨x, hx, rfl⟩, by simp [mul_assoc]⟩
  have hK2K : K2 ≤ K := hK.2 ⟨hK2le, hK2c⟩ hKK2
  obtain ⟨u, hu, hui, y, hy⟩ := exists_conj_mem_majCpt_frame F E σ hCM n J hJ r Xf Yf hW c hc S l d h ι hι hd h1 h2 h3
  refine ⟨u, hu, hui, y, (u * ι (GlobalTheory.CuspRep.infGL E d y))⁻¹ * g, by group, fun k => hK2K ?_⟩
  refine ⟨_, hy k, ?_⟩
  simp only [MulEquiv.toMonoidHom_eq_coe, MonoidHom.coe_coe, MulAut.conj_apply, inv_inv, _root_.mul_inv_rev]
  group

end GlobalTheory.CompanionTheory.GoodPos
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsBlockPoint =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsBlockPointStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsBlockPointStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsBlockEmb\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExpoConjOfIsCsd\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsConstAlongSingleton\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsBlockPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OfIsSmoothModerate\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.FiniteDimensionalOfSlices\nimport Development.AutomorphicSpectrum.Proofs.GlobalProofs.MemFormsOnOfMemSpan\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Matrix
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Published GlobalTheory.Published.AutFin GlobalTheory.StdPar GlobalTheory.ThK.SmoothLev GlobalTheory.CompanionTheory.Hypotheses₂.ConstFin GlobalTheory.CompanionTheory.Hypotheses₂.LeviPart
open GlobalTheory.UAut GlobalTheory.AdelicU GlobalTheory.SiegelSet

theorem _root_.GlobalTheory.T.parabolic_block_embedding_compact : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] [Algebra F E]
    (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J →
    ∀ (r : ℕ) (Xf Yf : Matrix (Fin n) (Fin r) E), IsWittFrame σ J Xf Yf → ∀ (K : Subgroup (GAd σ J)), IsMaxCpt σ J K →
    ∀ (S : Finset (Fin r)) (l d : ℕ) (h : l + d ≤ r) (ι : GlobalTheory.CuspRep.GA E d →* GAd σ J), GlobalTheory.BlockForms.IsBlockEmb σ J Xf Yf h ι →
      1 ≤ d → (∀ j : Fin r, l ≤ j.val → j.val + 1 < l + d → j ∉ S) → (∃ k ∈ S, k.val + 1 = l + d) →
      (l = 0 ∨ ∃ p ∈ S, p.val + 1 = l) →
      ∀ g : GAd σ J, ∃ u ∈ GlobalTheory.StdPar.unip σ J Xf S, u ∈ infPts σ J ∧ ∃ (y : GL (Fin d) (GlobalTheory.CuspRep.Cinf E)) (g₀ : GAd σ J),
        g = u * ι (GlobalTheory.CuspRep.infGL E d y) * g₀ ∧
        ∀ k : GlobalTheory.CuspRep.Kinf E d, g₀⁻¹ * ι (GlobalTheory.CuspRep.infGL E d (Unitary.toUnits k)) * g₀ ∈ K := by
  first | exact @GlobalTheory.CompanionTheory.GoodPos.goodPos
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsBlockPointStatement =====
