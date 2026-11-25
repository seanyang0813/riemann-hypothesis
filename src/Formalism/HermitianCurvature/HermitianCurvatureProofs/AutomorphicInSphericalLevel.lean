module

public import Formalism.HermitianCurvature.StatementB
public import Mathlib.Geometry.Manifold.PartitionOfUnity
public import Mathlib.Geometry.Manifold.ContMDiff.NormedSpace
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.HermProjRight
public import Formalism.FormalDegreeBessel.FinalG
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FixedPointsGramVector
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.IsoRightInv
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.NsqMulVecLe
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.UnitaryWeylCompact
public import Formalism.HermitianCurvature.FiniteOrderIntersectionInSmooth
public import Formalism.HermitianCurvature.WeylElementCommutesLevelOne
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundVDefs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundV
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SupportPhiZeroSubset
import Mathlib.Geometry.Manifold.Sheaf.Basic
import Formalism.HermitianCurvature.BigCellVanishingOfCommute
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormFlagVector
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.ZhatNormLinearBound
import Mathlib.Tactic.Linter.Style
import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic
import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
import Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsSmoothExt, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PointwiseBoundHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.FlagStabilizerFixesFrame, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundHH, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundW, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundX, Formalism.HermitianCurvature.HermitianCurvatureProofs.AutomorphicInSphericalLevel

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsSmoothExt =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsSmoothExt", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.Geometry.Manifold.PartitionOfUnity\nimport Mathlib.Geometry.Manifold.Sheaf.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\npublic import Mathlib.Geometry.Manifold.ContMDiff.NormedSpace\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Set Filter Topology
open scoped Manifold ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.SmoothExtensionClosedSet

open Formalism.QuantumDeterminants Formalism.FourierDecayAlt

theorem isClosed_GVt (k r : ℕ) : IsClosed {x : Mt k r | Matrix.of x ∈ B.GV k r} := by
  have h0 : Continuous (fun x : Mt k r => (Matrix.of x : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)) :=
    continuous_id
  have hc : Continuous (fun x : Mt k r => (Matrix.of x)ᴴ * Hpk k r * Matrix.of x) :=
    ((h0.matrix_conjTranspose).matrix_mul continuous_const).matrix_mul h0
  exact isClosed_eq hc continuous_const

theorem exists_smoothExt {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (F : B.Mat k r → E) (hF : B.CkOn (⊤ : ℕ∞) (B.GV k r) F) :
    ∃ Ft : Mt k r → E, ContDiff ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) Ft ∧
      ∀ x : Mt k r, Matrix.of x ∈ B.GV k r → Ft x = F (Matrix.of x) := by
  set s : Set (Mt k r) := {x : Mt k r | Matrix.of x ∈ B.GV k r} with hs
  have hloc : ∀ i : s, ∃ (U : Set (Mt k r)) (f' : Mt k r → E), IsOpen U ∧ (i : Mt k r) ∈ U ∧
      ContDiffOn ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) f' U ∧ ∀ x ∈ U, Matrix.of x ∈ B.GV k r → F (Matrix.of x) = f' x := by
    intro i
    obtain ⟨U, f', hU, hiU, hf', hfe⟩ := hF (Matrix.of (i : Mt k r)) i.2
    exact ⟨U, f', hU, hiU, hf', fun x hx hxG => hfe (Matrix.of x) hx hxG⟩
  choose U f' hU hiU hf' hfe using hloc
  have hcov : s ⊆ ⋃ i : s, U i := fun x hx => mem_iUnion.2 ⟨⟨x, hx⟩, hiU ⟨x, hx⟩⟩
  obtain ⟨ρ, hρ⟩ := SmoothPartitionOfUnity.exists_isSubordinate 𝓘(ℝ, Mt k r) (isClosed_GVt k r) U hU hcov
  refine ⟨fun x => ∑ᶠ i, ρ i x • f' i x, ?_, ?_⟩
  · have h := ρ.contMDiff_finsum_smul (n := (⊤ : ℕ∞)) (g := f') fun i x hx => by
      have hxU : x ∈ U i := hρ i hx
      exact ((hf' i).contDiffAt ((hU i).mem_nhds hxU)).contMDiffAt
    exact contMDiff_iff_contDiff.1 h
  · intro x hx
    have hsum : ∑ᶠ i, ρ i x = 1 := ρ.sum_eq_one hx
    have heq : ∀ i, ρ i x • f' i x = ρ i x • F (Matrix.of x) := by
      intro i
      by_cases h0 : ρ i x = 0
      · simp [h0]
      · have hxU : x ∈ U i := hρ i (subset_tsupport _ h0)
        rw [hfe i x hxU hx]
    simp only [heq]
    rw [← finsum_smul, hsum, one_smul]

end Formalism.FourierDecayAlt.P.SmoothExtensionClosedSet
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsSmoothExt =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PointwiseBoundHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PointwiseBoundHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.BigCellVanishingOfCommute\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C6

noncomputable section

namespace PI.UnitaryGroupMassFormula.DLm

section Frob

attribute [local instance] Matrix.frobeniusSeminormedAddCommGroup Matrix.frobeniusNormedAddCommGroup
  Matrix.frobeniusNormedSpace

end Frob

lemma gN_cont (k r : ℕ) : Continuous (fun g : B.Mat k r => B.gN g) := by
  unfold B.gN
  fun_prop

end PI.UnitaryGroupMassFormula.DLm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PointwiseBoundHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FlagStabilizerFixesFrame =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FlagStabilizerFixesFrame", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.HermProjRight\npublic import Formalism.FormalDegreeBessel.FinalG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FixedPointsGramVector\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormFlagVector\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PointwiseBoundHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.IsoRightInv\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.NsqMulVecLe\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.ZhatNormLinearBound\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.UnitaryWeylCompact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.SmoothExtensionClosedSet

open Finset Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt PI.PolynomialProperness PI.PolynomialProperness.CoreW
open scoped ComplexConjugate

noncomputable section

def cIso (N A R0 : ℝ) : ℝ := 2 * (N * A) ^ 2 * R0 ^ 2 + 2 * (1 + N * A) * (1 + N * A * R0 * R0) ^ 2

section iso

variable {n : ℕ} {ι : Type} [Fintype ι] [DecidableEq ι]

theorem isoExpl (H : Matrix (Fin n) (Fin n) ℂ) (m : ι → Fin n → ℂ) (hH : Hᴴ = H) (hHH : H * H = 1)
    (Γi : Matrix ι ι ℂ) (hG : gramOf H m * Γi = 1)
    (hpsd : ∀ x, (∀ i, herm H x (m i) = 0) → 0 ≤ (herm H x x).re)
    (s : Matrix (Fin n) (Fin n) ℂ) (hs : sᴴ * H * s = H) (K : ℝ) (hK : 0 ≤ K)
    (hsm : ∀ i, nsq (s *ᵥ m i) ≤ K) (x : Fin n → ℂ) :
    nsq (s *ᵥ x) ≤ cIso (Fintype.card ι) (∑ j, ∑ k, ‖Γi j k‖) (∑ i, eN (m i)) * (1 + K) ^ 2 * nsq x := by
  obtain ⟨A, hA⟩ : ∃ A : ℝ, A = ∑ j, ∑ k, ‖Γi j k‖ := ⟨_, rfl⟩
  obtain ⟨N, hN⟩ : ∃ N : ℝ, N = (Fintype.card ι : ℝ) := ⟨_, rfl⟩
  obtain ⟨R0, hR0⟩ : ∃ R0 : ℝ, R0 = ∑ i, eN (m i) := ⟨_, rfl⟩
  rw [← hA, ← hN, ← hR0]
  have hA0 : 0 ≤ A := hA ▸ Finset.sum_nonneg fun j _ => Finset.sum_nonneg fun k _ => norm_nonneg _
  have hN0 : 0 ≤ N := hN ▸ Nat.cast_nonneg _
  have hR00 : 0 ≤ R0 := hR0 ▸ Finset.sum_nonneg fun i _ => eN_nonneg _
  have hD0 : 0 ≤ N * A := mul_nonneg hN0 hA0
  have hmR0 : ∀ k, eN (m k) ≤ R0 := fun k => hR0 ▸
    Finset.single_le_sum (f := fun i => eN (m i)) (fun i _ => eN_nonneg _) (Finset.mem_univ k)
  have hGs : gramOf H (fun i => s *ᵥ m i) * Γi = 1 := by rw [gram_image H s hs m]; exact hG
  have hRR : Real.sqrt K * Real.sqrt K = K := Real.mul_self_sqrt hK
  have hsmR : ∀ k, eN (s *ᵥ m k) ≤ Real.sqrt K := fun k => by
    have h := Real.abs_le_sqrt ((eN_sq _).trans_le (hsm k) : eN (s *ᵥ m k) ^ 2 ≤ K)
    rwa [abs_of_nonneg (eN_nonneg _)] at h
  have hu_orth : ∀ j, herm H (x - proj H Γi m x) (m j) = 0 := proj_orth H Γi m hG x
  have hub : eN (x - proj H Γi m x) ≤ (1 + N * A * R0 * R0) * eN x := by
    have h1 := proj_bound H hH hHH Γi m R0 hR00 hmR0 x
    rw [← hA, ← hN] at h1
    calc eN (x - proj H Γi m x) ≤ eN x + eN (proj H Γi m x) := eN_sub _ _
      _ ≤ eN x + N * (A * (eN x * R0)) * R0 := by linarith
      _ = (1 + N * A * R0 * R0) * eN x := by ring
  have hsp : eN (s *ᵥ proj H Γi m x) ≤ N * A * R0 * Real.sqrt K * eN x := by
    have h1 : s *ᵥ proj H Γi m x = ∑ i, coef H Γi m x i • (s *ᵥ m i) := by
      unfold proj
      rw [mulVec_sum]
      simp_rw [mulVec_smul]
    rw [h1]
    have h2 := lincomb_bound (coef H Γi m x) (fun i => s *ᵥ m i) (A * (eN x * R0)) (Real.sqrt K)
      (Real.sqrt_nonneg _) (fun i => hA ▸ coef_bound H hH hHH Γi m R0 hmR0 x i) hsmR
    rw [← hN] at h2
    calc _ ≤ N * (A * (eN x * R0)) * Real.sqrt K := h2
      _ = N * A * R0 * Real.sqrt K * eN x := by ring
  have hv_orth : ∀ j, herm H (s *ᵥ (x - proj H Γi m x)) (s *ᵥ m j) = 0 := fun j => by
    rw [herm_iso H s hs]
    exact hu_orth j
  have hv := orth_bound H hH hHH Γi (fun i => s *ᵥ m i) hGs (Real.sqrt K) (Real.sqrt_nonneg _) hsmR
    (psd_image H s hHH hs m hpsd) _ hv_orth
  rw [← hA, ← hN, hRR, herm_iso H s hs] at hv
  have hvv : (herm H (x - proj H Γi m x) (x - proj H Γi m x)).re ≤
      (1 + N * A * R0 * R0) ^ 2 * nsq x := by
    calc (herm H (x - proj H Γi m x) (x - proj H Γi m x)).re
        ≤ ‖herm H (x - proj H Γi m x) (x - proj H Γi m x)‖ := Complex.re_le_norm _
      _ ≤ eN (x - proj H Γi m x) * eN (x - proj H Γi m x) := herm_le H hH hHH _ _
      _ ≤ ((1 + N * A * R0 * R0) * eN x) * ((1 + N * A * R0 * R0) * eN x) :=
          mul_le_mul hub hub (eN_nonneg _) ((eN_nonneg _).trans hub)
      _ = (1 + N * A * R0 * R0) ^ 2 * nsq x := by rw [← eN_sq]; ring
  have hc1 : 0 ≤ 1 + N * A * K := by have := mul_nonneg hD0 hK; linarith
  have hnv : nsq (s *ᵥ (x - proj H Γi m x)) ≤ (1 + N * A * K) * ((1 + N * A * R0 * R0) ^ 2 * nsq x) :=
    hv.trans (mul_le_mul_of_nonneg_left hvv hc1)
  have hX : 0 ≤ nsq x := by rw [← eN_sq]; positivity
  have hsx : eN (s *ᵥ x) ≤ eN (s *ᵥ proj H Γi m x) + eN (s *ᵥ (x - proj H Γi m x)) := by
    have hx : x = proj H Γi m x + (x - proj H Γi m x) := by abel
    calc eN (s *ᵥ x) = eN (s *ᵥ (proj H Γi m x + (x - proj H Γi m x))) := by rw [← hx]
      _ = eN (s *ᵥ proj H Γi m x + s *ᵥ (x - proj H Γi m x)) := by rw [mulVec_add]
      _ ≤ _ := eN_add _ _
  have ha2 : eN (s *ᵥ proj H Γi m x) ^ 2 ≤ (N * A) ^ 2 * R0 ^ 2 * K * nsq x := by
    have h1 := pow_le_pow_left₀ (eN_nonneg _) hsp 2
    calc eN (s *ᵥ proj H Γi m x) ^ 2 ≤ (N * A * R0 * Real.sqrt K * eN x) ^ 2 := h1
      _ = (N * A) ^ 2 * R0 ^ 2 * (Real.sqrt K * Real.sqrt K) * eN x ^ 2 := by ring
      _ = (N * A) ^ 2 * R0 ^ 2 * K * nsq x := by rw [hRR, eN_sq]
  have hsum : nsq (s *ᵥ x) ≤ 2 * eN (s *ᵥ proj H Γi m x) ^ 2 +
      2 * nsq (s *ᵥ (x - proj H Γi m x)) := by
    rw [← eN_sq, ← eN_sq (s *ᵥ (x - proj H Γi m x))]
    have h1 := pow_le_pow_left₀ (eN_nonneg _) hsx 2
    nlinarith [sq_nonneg (eN (s *ᵥ proj H Γi m x) - eN (s *ᵥ (x - proj H Γi m x)))]
  unfold cIso
  exact hsum.trans (final_alg (N * A) R0 (1 + N * A * R0 * R0) K (1 + N * A * K) (nsq x) _ _
    hD0 hK hX rfl ha2 hnv)

theorem nsq_cont : Continuous fun x : Fin n → ℂ => nsq x := by
  show Continuous fun x : Fin n → ℂ => ∑ i, Complex.normSq (x i)
  exact continuous_finsetSum _ fun i _ => Complex.continuous_normSq.comp (continuous_apply i)

theorem eN_eq_sqrt (x : Fin n → ℂ) : eN x = Real.sqrt (nsq x) := by
  rw [eN, EuclideanSpace.norm_eq]
  simp [nsq, Complex.normSq_eq_norm_sq]

theorem eN_cont : Continuous fun x : Fin n → ℂ => eN x := by
  have e : (fun x : Fin n → ℂ => eN x) = fun x => Real.sqrt (nsq x) := funext eN_eq_sqrt
  rw [e]
  exact Real.continuous_sqrt.comp nsq_cont

theorem gramOf_cont {X : Type*} [TopologicalSpace X] (H : Matrix (Fin n) (Fin n) ℂ) (m : X → ι → Fin n → ℂ)
    (Kx : Set X) (hm : ContinuousOn m Kx) : ContinuousOn (fun x => gramOf H (m x)) Kx := by
  have hmi : ∀ i l, ContinuousOn (fun x => m x i l) Kx := fun i l =>
    continuousOn_pi.1 (continuousOn_pi.1 hm i) l
  refine continuousOn_pi.2 fun i => continuousOn_pi.2 fun j => ?_
  simp only [gramOf, Matrix.of_apply, herm, dotProduct, Matrix.mulVec, Pi.star_apply]
  refine continuousOn_finsetSum _ fun l _ => ?_
  refine ((hmi i l).star).mul ?_
  exact continuousOn_finsetSum _ fun q _ => continuousOn_const.mul (hmi j q)

theorem isoUnif {X : Type*} [TopologicalSpace X] (H : Matrix (Fin n) (Fin n) ℂ) (hH : Hᴴ = H)
    (hHH : H * H = 1) (m : X → ι → Fin n → ℂ) (Kx : Set X) (hK : IsCompact Kx) (hm : ContinuousOn m Kx)
    (hdet : ∀ x ∈ Kx, IsUnit (gramOf H (m x)).det)
    (hpsd : ∀ x ∈ Kx, ∀ v, (∀ i, herm H v (m x i) = 0) → 0 ≤ (herm H v v).re) :
    ∃ C : ℝ, ∀ x ∈ Kx, ∀ s : Matrix (Fin n) (Fin n) ℂ, sᴴ * H * s = H → ∀ K : ℝ, 0 ≤ K →
      (∀ i, nsq (s *ᵥ m x i) ≤ K) → ∀ v, nsq (s *ᵥ v) ≤ C * (1 + K) ^ 2 * nsq v := by
  classical
  have hG := gramOf_cont H m Kx hm
  have e : ∀ x, (gramOf H (m x))⁻¹ = (gramOf H (m x)).det⁻¹ • (gramOf H (m x)).adjugate := fun x => by
    rw [Matrix.inv_def, Ring.inverse_eq_inv']
  have hinv : ContinuousOn (fun x => (gramOf H (m x))⁻¹) Kx := by
    have h1 : ContinuousOn (fun x => ((gramOf H (m x)).det)⁻¹) Kx :=
      ((continuous_id.matrix_det).comp_continuousOn hG).inv₀ fun x hx => (hdet x hx).ne_zero
    have h2 : ContinuousOn (fun x => (gramOf H (m x)).adjugate) Kx :=
      (continuous_id.matrix_adjugate).comp_continuousOn hG
    have h3 : ContinuousOn (fun x => ((gramOf H (m x)).det)⁻¹ • (gramOf H (m x)).adjugate) Kx := h1.smul h2
    exact h3.congr fun x _ => e x
  have hA : ContinuousOn (fun x => ∑ j, ∑ k, ‖(gramOf H (m x))⁻¹ j k‖) Kx :=
    continuousOn_finsetSum _ fun j _ => continuousOn_finsetSum _ fun k _ =>
      continuous_norm.comp_continuousOn (continuousOn_pi.1 (continuousOn_pi.1 hinv j) k)
  have hR : ContinuousOn (fun x => ∑ i, eN (m x i)) Kx :=
    continuousOn_finsetSum _ fun i _ => eN_cont.comp_continuousOn (continuousOn_pi.1 hm i)
  have hc : ContinuousOn (fun x => cIso (Fintype.card ι) (∑ j, ∑ k, ‖(gramOf H (m x))⁻¹ j k‖)
      (∑ i, eN (m x i))) Kx := by
    simp only [cIso]
    fun_prop
  obtain ⟨C, hC⟩ := hK.bddAbove_image hc
  refine ⟨C, fun x hx s hs K' hK' hsm v => ?_⟩
  have h1 := isoExpl H (m x) hH hHH (gramOf H (m x))⁻¹ (Matrix.mul_nonsing_inv _ (hdet x hx)) (hpsd x hx)
    s hs K' hK' hsm v
  have hn : 0 ≤ nsq v := Finset.sum_nonneg fun i _ => Complex.normSq_nonneg _
  have hcC := hC ⟨x, hx, rfl⟩
  exact h1.trans (mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hcC (sq_nonneg _)) hn)

end iso

section fibre

variable {k r : ℕ}

theorem fix_of_S (z : Fin (2 * r + k + 1) → ℂ) (hz : C2.StdZ k r z) {s : B.Mat k r} (hs : s ∈ Sset k r z)
    (hu : C2.uMap k r z s = 1) (b : Fin (r + 1)) : s *ᵥ fvec k r z b = fvec k r z b := by
  rw [((unipotent_map_frame k r z hz).1 s hs).1 b, hu]
  simp [Matrix.one_apply]

theorem uw_fix (z : Fin (2 * r + k + 1) → ℂ) (hz : C2.StdZ k r z) {h : B.Mat k r} (hh : h ∈ UWset k r z)
    (b : Fin (r + 1)) : h *ᵥ fvec k r z b = fvec k r z b := by
  obtain ⟨-, h1, h2⟩ := hh
  unfold fvec
  split_ifs with hb
  · exact (h1 ⟨b.val, hb⟩).1
  · exact h2

theorem flagStabilizer_fixes_frame (z : Fin (2 * r + k + 1) → ℂ) (hz : C2.StdZ k r z) {n : B.Mat k r} (hn : n ∈ C2.N0set k r z)
    (b : Fin (r + 1)) : n *ᵥ fvec k r z b = fvec k r z b := by
  obtain ⟨hN, hU⟩ := hn
  have h1 : (1 : B.Mat k r) ∈ UWset k r z := by
    refine ⟨?_, fun a => ⟨Matrix.one_mulVec _, Matrix.one_mulVec _⟩, Matrix.one_mulVec _⟩
    show (1 : B.Mat k r)ᴴ * Hpk k r * 1 = Hpk k r
    simp
  exact fix_of_S z hz ⟨1, h1, n, hN, (one_mul n).symm⟩ hU b

theorem inv_fix {s : B.Mat k r} (hs : s ∈ B.GV k r) {v : Fin (2 * r + k + 1) → ℂ} (hv : s *ᵥ v = v) :
    s⁻¹ *ᵥ v = v := by
  have h1 : s⁻¹ * s = 1 := ((gvGroup k r).2 s hs).2.2.2
  calc s⁻¹ *ᵥ v = s⁻¹ *ᵥ (s *ᵥ v) := by rw [hv]
    _ = (s⁻¹ * s) *ᵥ v := by rw [Matrix.mulVec_mulVec]
    _ = v := by rw [h1, Matrix.one_mulVec]

theorem gramVec_cont (z z' : Fin (2 * r + k + 1) → ℂ) : Continuous fun g : B.Mat k r => gramVec k r z z' g := by
  refine continuous_pi fun i => ?_
  cases i with
  | inl a => exact continuous_const
  | inr b => exact continuous_id.matrix_mulVec continuous_const

theorem gram_eq (z z' : Fin (2 * r + k + 1) → ℂ) (g : B.Mat k r) :
    gramOf (Hpk k r) (gramVec k r z z' g) = gramM k r z z' g := by
  ext i j
  rfl

theorem fam_det (z z' : Fin (2 * r + k + 1) → ℂ) (hstd : C2.Std k r z z') {g : B.Mat k r}
    (hpos : C2.PosPt k r z z' g) : IsUnit (gramOf (Hpk k r) (gramVec k r z z' g)).det := by
  obtain ⟨-, ⟨hz, -⟩, ⟨hz', -⟩⟩ := hstd
  have h := gGram k r z z' hz hz' g hpos.1
  rw [gram_eq]
  refine isUnit_iff_ne_zero.mpr fun h0 => ?_
  rw [h0, mul_zero] at h
  have h2 : Gf k r z z' g = 0 := by exact_mod_cast h
  linarith [hpos.2]

theorem fam_psd (z z' : Fin (2 * r + k + 1) → ℂ) (hstd : C2.Std k r z z') {g : B.Mat k r}
    (hpos : C2.PosPt k r z z' g) (x : Fin (2 * r + k + 1) → ℂ)
    (hx : ∀ i, herm (Hpk k r) x (gramVec k r z z' g i) = 0) : 0 ≤ (herm (Hpk k r) x x).re := by
  by_cases h0 : x = 0
  · subst h0
    simp [herm]
  · have hmem : x ∈ C2.Uperp k r z z' g := by
      rw [C2.Uperp, LinearMap.mem_ker, Matrix.mulVecLin_apply, ← Matrix.mulVec_mulVec]
      funext i
      have h1 := hx i
      simp only [herm] at h1
      simpa [Matrix.mulVec, dotProduct, Pi.star_apply] using h1
    exact ((gram_independent_signature' k r z z' g hstd hpos).2.2.1 x hmem h0).le

theorem fibreProper (z z' : Fin (2 * r + k + 1) → ℂ) (hstd : C2.Std k r z z') (Kg : Set (B.Mat k r))
    (hK : IsCompact Kg) (hKpos : ∀ g ∈ Kg, C2.PosPt k r z z' g) (R : ℝ) :
    ∃ Rp : ℝ, ∀ g ∈ Kg, ∀ h ∈ UWset k r z, ∀ n ∈ C2.N0set k r z, ∀ h' ∈ UWset k r z',
      ∀ n' ∈ C2.N0set k r z', B.gN (h⁻¹ * n⁻¹ * g * n' * h') ≤ R →
        B.gN h ≤ Rp ∧ B.gN n ≤ Rp ∧ B.gN h' ≤ Rp ∧ B.gN n' ≤ Rp := by
  have hz : C2.StdZ k r z := hstd.2.1
  have hz' : C2.StdZ k r z' := hstd.2.2
  have hH : (Hpk k r)ᴴ = Hpk k r := GN.hpk_herm k r
  have hHH : Hpk k r * Hpk k r = 1 := GN.hpk_sq k r
  obtain ⟨Cu, hCu⟩ := (PI.QuotSetU.UnitaryGroupMassFormula.unitary_weyl_compact k r z hz.1 hz.2).exists_bound_of_continuousOn
    (PI.UnitaryGroupMassFormula.DLm.gN_cont k r).continuousOn
  obtain ⟨Cu', hCu'⟩ := (PI.QuotSetU.UnitaryGroupMassFormula.unitary_weyl_compact k r z' hz'.1 hz'.2).exists_bound_of_continuousOn
    (PI.UnitaryGroupMassFormula.DLm.gN_cont k r).continuousOn
  have hUb : ∀ h ∈ UWset k r z, B.gN h ≤ Cu := fun h hh =>
    (le_abs_self _).trans (by simpa [Real.norm_eq_abs] using hCu h hh)
  have hUb' : ∀ h ∈ UWset k r z', B.gN h ≤ Cu' := fun h hh =>
    (le_abs_self _).trans (by simpa [Real.norm_eq_abs] using hCu' h hh)
  obtain ⟨C1, hC1⟩ := isoUnif (Hpk k r) hH hHH (fun g => gramVec k r z z' g) Kg hK
    (gramVec_cont z z').continuousOn (fun g hg => fam_det z z' hstd (hKpos g hg))
    (fun g hg => fam_psd z z' hstd (hKpos g hg))
  have hc2 : Continuous fun g : B.Mat k r => fun i => (Hpk k r * gᴴ * Hpk k r) *ᵥ gramVec k r z z' g i :=
    continuous_pi fun i => ((continuous_const.mul continuous_id.matrix_conjTranspose).mul continuous_const).matrix_mulVec
      ((continuous_apply i).comp (gramVec_cont z z'))
  have hinvG : ∀ g ∈ Kg, (Hpk k r * gᴴ * Hpk k r) = g⁻¹ := fun g hg => (GN.inv_eq (hKpos g hg).1).symm
  obtain ⟨C2, hC2⟩ := isoUnif (Hpk k r) hH hHH
    (fun g i => (Hpk k r * gᴴ * Hpk k r) *ᵥ gramVec k r z z' g i) Kg hK hc2.continuousOn
    (fun g hg => by
      rw [hinvG g hg, gram_image (Hpk k r) g⁻¹ (GN.inv_mem (hKpos g hg).1)]
      exact fam_det z z' hstd (hKpos g hg))
    (fun g hg => by
      rw [hinvG g hg]
      exact psd_image (Hpk k r) g⁻¹ hHH (GN.inv_mem (hKpos g hg).1) _ (fam_psd z z' hstd (hKpos g hg)))
  obtain ⟨Kf, hKf⟩ : ∃ Kf : ℝ, Kf = ∑ a, nsq (fvec k r z a) + ∑ b, nsq (fvec k r z' b) := ⟨_, rfl⟩
  have hKf0 : 0 ≤ Kf := hKf ▸ add_nonneg (Finset.sum_nonneg fun a _ => by rw [← eN_sq]; positivity)
    (Finset.sum_nonneg fun a _ => by rw [← eN_sq]; positivity)
  have hfa : ∀ a, nsq (fvec k r z a) ≤ Kf := fun a => by
    have h1 := Finset.single_le_sum (f := fun a => nsq (fvec k r z a))
      (fun a _ => by rw [← eN_sq]; positivity) (Finset.mem_univ a)
    have h2 : 0 ≤ ∑ b, nsq (fvec k r z' b) := Finset.sum_nonneg fun a _ => by rw [← eN_sq]; positivity
    rw [hKf]; linarith
  have hfb : ∀ b, nsq (fvec k r z' b) ≤ Kf := fun b => by
    have h1 := Finset.single_le_sum (f := fun b => nsq (fvec k r z' b))
      (fun a _ => by rw [← eN_sq]; positivity) (Finset.mem_univ b)
    have h2 : 0 ≤ ∑ a, nsq (fvec k r z a) := Finset.sum_nonneg fun a _ => by rw [← eN_sq]; positivity
    rw [hKf]; linarith
  obtain ⟨K, hKdef⟩ : ∃ K : ℝ, K = Kf + R ^ 2 * Kf := ⟨_, rfl⟩
  have hK0 : 0 ≤ K := hKdef ▸ add_nonneg hKf0 (mul_nonneg (sq_nonneg _) hKf0)
  obtain ⟨Bv, hBv⟩ : ∃ Bv : ℝ, Bv = ∑ j, nsq (bvec j : Fin (2 * r + k + 1) → ℂ) := ⟨_, rfl⟩

  have hcols : ∀ (C : ℝ) (t : B.Mat k r), (∀ v, nsq (t *ᵥ v) ≤ C * (1 + K) ^ 2 * nsq v) →
      B.gN t ≤ Real.sqrt (C * (1 + K) ^ 2 * Bv) := fun C t ht => by
    apply Real.le_sqrt_of_sq_le
    rw [gN_sq_cols, hBv, Finset.mul_sum]
    exact Finset.sum_le_sum fun j _ => ht _
  refine ⟨max (max Cu Cu') (max (Cu * Real.sqrt (C1 * (1 + K) ^ 2 * Bv))
    (Cu' * Real.sqrt (C2 * (1 + K) ^ 2 * Bv))), ?_⟩
  intro g hg h hh n hn h' hh' n' hn' hy
  have hhG : h ∈ B.GV k r := hh.1
  have hnG : n ∈ B.GV k r := hn.1.1
  have hh'G : h' ∈ B.GV k r := hh'.1
  have hn'G : n' ∈ B.GV k r := hn'.1.1
  have hgG : g ∈ B.GV k r := (hKpos g hg).1
  obtain ⟨y, hydef⟩ : ∃ y, y = h⁻¹ * n⁻¹ * g * n' * h' := ⟨_, rfl⟩
  rw [← hydef] at hy
  have hyG : y ∈ B.GV k r := by
    rw [hydef]
    exact GN.mul_mem (GN.mul_mem (GN.mul_mem (GN.mul_mem (GN.inv_mem hhG) (GN.inv_mem hnG))
    hgG) hn'G) hh'G
  have hy0 : 0 ≤ B.gN y := GN.gN_nonneg y
  have hy2 : B.gN y ^ 2 ≤ R ^ 2 := pow_le_pow_left₀ hy0 hy 2
  have hCu0 : 0 ≤ Cu := (GN.gN_nonneg h).trans (hUb h hh)
  have hCu0' : 0 ≤ Cu' := (GN.gN_nonneg h').trans (hUb' h' hh')

  obtain ⟨t, htdef⟩ : ∃ t, t = h⁻¹ * n⁻¹ := ⟨_, rfl⟩
  have htG : t ∈ B.GV k r := by
    rw [htdef]
    exact GN.mul_mem (GN.inv_mem hhG) (GN.inv_mem hnG)
  have htf : ∀ a, t *ᵥ fvec k r z a = fvec k r z a := fun a => by
    rw [htdef, ← mulVec_mulVec, inv_fix hnG (flagStabilizer_fixes_frame z hz hn a), inv_fix hhG (uw_fix z hz hh a)]
  have hty : ∀ b, t *ᵥ (g *ᵥ fvec k r z' b) = y *ᵥ fvec k r z' b := fun b => by
    rw [hydef, htdef]
    conv_rhs => rw [← mulVec_mulVec, uw_fix z' hz' hh' b, ← mulVec_mulVec, flagStabilizer_fixes_frame z' hz' hn' b]
    rw [mulVec_mulVec]
  have ht := hC1 g hg t htG K hK0 (fun i => by
    rcases i with a | b
    · show nsq (t *ᵥ fvec k r z a) ≤ K
      rw [htf a]
      have := hfa a
      rw [hKdef]; linarith [mul_nonneg (sq_nonneg R) hKf0]
    · show nsq (t *ᵥ (g *ᵥ fvec k r z' b)) ≤ K
      rw [hty b]
      calc nsq (y *ᵥ fvec k r z' b) ≤ B.gN y ^ 2 * nsq (fvec k r z' b) := nsq_mulVec_le _ _
        _ ≤ R ^ 2 * Kf := mul_le_mul hy2 (hfb b) (by rw [← eN_sq]; positivity) (sq_nonneg _)
        _ ≤ K := by rw [hKdef]; linarith)
  have htb := hcols C1 t ht

  obtain ⟨t', ht'def⟩ : ∃ t', t' = h'⁻¹ * n'⁻¹ := ⟨_, rfl⟩
  have ht'G : t' ∈ B.GV k r := by
    rw [ht'def]
    exact GN.mul_mem (GN.inv_mem hh'G) (GN.inv_mem hn'G)
  have ht'f : ∀ b, t' *ᵥ fvec k r z' b = fvec k r z' b := fun b => by
    rw [ht'def, ← mulVec_mulVec, inv_fix hn'G (flagStabilizer_fixes_frame z' hz' hn' b), inv_fix hh'G (uw_fix z' hz' hh' b)]
  have hyinv : y⁻¹ = h'⁻¹ * n'⁻¹ * g⁻¹ * n * h := by
    rw [hydef]
    simp only [Matrix.mul_inv_rev, Matrix.nonsing_inv_nonsing_inv _ (GN.det_isUnit hnG),
      Matrix.nonsing_inv_nonsing_inv _ (GN.det_isUnit hhG), Matrix.mul_assoc]
  have ht'y : ∀ a, t' *ᵥ (g⁻¹ *ᵥ fvec k r z a) = y⁻¹ *ᵥ fvec k r z a := fun a => by
    rw [hyinv, ht'def]
    conv_rhs => rw [← mulVec_mulVec, uw_fix z hz hh a, ← mulVec_mulVec, flagStabilizer_fixes_frame z hz hn a]
    rw [mulVec_mulVec]
  have ht' := hC2 g hg t' ht'G K hK0 (fun i => by
    rcases i with a | b
    · show nsq (t' *ᵥ ((Hpk k r * gᴴ * Hpk k r) *ᵥ fvec k r z a)) ≤ K
      rw [hinvG g hg, ht'y a]
      calc nsq (y⁻¹ *ᵥ fvec k r z a) ≤ B.gN y⁻¹ ^ 2 * nsq (fvec k r z a) := nsq_mulVec_le _ _
        _ = B.gN y ^ 2 * nsq (fvec k r z a) := by rw [GN.gN_inv hyG]
        _ ≤ R ^ 2 * Kf := mul_le_mul hy2 (hfa a) (by rw [← eN_sq]; positivity) (sq_nonneg _)
        _ ≤ K := by rw [hKdef]; linarith
    · show nsq (t' *ᵥ ((Hpk k r * gᴴ * Hpk k r) *ᵥ (g *ᵥ fvec k r z' b))) ≤ K
      rw [hinvG g hg, mulVec_mulVec (fvec k r z' b) g⁻¹ g, GN.inv_mul hgG, one_mulVec, ht'f b]
      have := hfb b
      rw [hKdef]; linarith [mul_nonneg (sq_nonneg R) hKf0])
  have ht'b := hcols C2 t' ht'

  have hnt : n⁻¹ = h * t := by
    rw [htdef, ← Matrix.mul_assoc, GN.mul_inv hhG, Matrix.one_mul]
  have hnt' : n'⁻¹ = h' * t' := by
    rw [ht'def, ← Matrix.mul_assoc, GN.mul_inv hh'G, Matrix.one_mul]
  have hnb : B.gN n ≤ Cu * Real.sqrt (C1 * (1 + K) ^ 2 * Bv) := by
    rw [← GN.gN_inv hnG, hnt]
    exact (GN.gN_mul_le _ _).trans (mul_le_mul (hUb h hh) htb (GN.gN_nonneg _) hCu0)
  have hnb' : B.gN n' ≤ Cu' * Real.sqrt (C2 * (1 + K) ^ 2 * Bv) := by
    rw [← GN.gN_inv hn'G, hnt']
    exact (GN.gN_mul_le _ _).trans (mul_le_mul (hUb' h' hh') ht'b (GN.gN_nonneg _) hCu0')
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact (hUb h hh).trans ((le_max_left _ _).trans (le_max_left _ _))
  · exact hnb.trans ((le_max_left _ _).trans (le_max_right _ _))
  · exact (hUb' h' hh').trans ((le_max_right _ _).trans (le_max_left _ _))
  · exact hnb'.trans ((le_max_right _ _).trans (le_max_right _ _))

end fibre

end

end Formalism.FourierDecayAlt.P.SmoothExtensionClosedSet
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FlagStabilizerFixesFrame =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundHH =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundHH", "h": "module\n\npublic import Formalism.HermitianCurvature.FiniteOrderIntersectionInSmooth\npublic import Formalism.HermitianCurvature.WeylElementCommutesLevelOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.BigCellVanishingOfCommute\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C6
open scoped ENNReal NNReal

noncomputable section

namespace PI.UnitaryGroupMassFormula.DLm

def UnipotentSetIsClosedSubgroup : Prop := ∀ (k r : ℕ) (z : Fin (2 * r + k + 1) → ℂ), C2.StdZ k r z → B2.IsClosedSubgroup (C2.N0set k r z)

end PI.UnitaryGroupMassFormula.DLm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundHH =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundW =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundW", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundVDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.BigCellVanishingOfCommute\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C6

noncomputable section

namespace PI.UnitaryGroupMassFormula.DLm

namespace NBk

variable {k r : ℕ}

lemma mul_diagonal_conjTranspose_apply (P Q : Matrix (Fin r) (Fin (k + 1)) ℂ) (a b : Fin r) :
    (P * Matrix.diagonal (hW k) * Qᴴ) a b = ∑ j, P a j * hW k j * star (Q b j) := by
  rw [Matrix.mul_apply]; simp only [Matrix.mul_diagonal, Matrix.conjTranspose_apply]

lemma nbm_cm (Ba B : Matrix (Fin r) (Fin (k + 1)) ℂ) (Sa S : Matrix (Fin r) (Fin r) ℂ) (a b : Fin r) :
    cmOf k r (Ba + B) (Sa + S + (1 / 2 : ℂ) •
        (B * Matrix.diagonal (hW k) * Baᴴ - Ba * Matrix.diagonal (hW k) * Bᴴ)) a b =
      cmOf k r B S a b + -(Ba * Matrix.diagonal (hW k) * Bᴴ) a b + cmOf k r Ba Sa a b := by
  unfold cmOf
  simp only [Matrix.conjTranspose_add, Matrix.add_mul, Matrix.mul_add, Matrix.add_apply, Matrix.sub_apply,
    Matrix.smul_apply, smul_eq_mul]
  ring

theorem nbm_mul (Ba B : Matrix (Fin r) (Fin (k + 1)) ℂ) (Sa S : Matrix (Fin r) (Fin r) ℂ) :
    unipotentBlockMatrix k r Ba Sa * unipotentBlockMatrix k r B S =
      unipotentBlockMatrix k r (Ba + B) (Sa + S + (1 / 2 : ℂ) •
        (B * Matrix.diagonal (hW k) * Baᴴ - Ba * Matrix.diagonal (hW k) * Bᴴ)) := by
  ext p q
  rw [Matrix.mul_apply, sum_split]
  induction p using cases3 <;> induction q using cases3 <;>
    simp only [nb_ee, nb_we, nb_se, nb_ew, nb_ww, nb_sw, nb_es, nb_ws, nb_ss, zero_mul, mul_zero,
      Finset.sum_const_zero, add_zero, zero_add, ite_mul, mul_ite, one_mul, mul_one, Finset.sum_ite_eq,
      Finset.sum_ite_eq', Finset.mem_univ, if_true, Matrix.add_apply, star_add]
  all_goals first
    | done
    | (rw [nbm_cm, mul_diagonal_conjTranspose_apply, ← Finset.sum_neg_distrib]; ring_nf)
    | ring

end NBk

end PI.UnitaryGroupMassFormula.DLm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundW =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundX =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundX", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundHH\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundVDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundV\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundW\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.BigCellVanishingOfCommute\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C6
open scoped ENNReal NNReal

noncomputable section

namespace PI.UnitaryGroupMassFormula.DLm

namespace HBx

variable {k r : ℕ}

end HBx

namespace HBx

variable {k r : ℕ}

lemma uMap_cont (z : Fin (2 * r + k + 1) → ℂ) : Continuous fun s : B.Mat k r => C2.uMap k r z s := by
  unfold C2.uMap herm
  refine continuous_pi fun a => continuous_pi fun b => ?_
  split_ifs
  · exact continuous_const.dotProduct (continuous_const.matrix_mulVec
      (continuous_id.matrix_mulVec continuous_const))
  · exact (continuous_const.dotProduct (continuous_const.matrix_mulVec
      (continuous_id.matrix_mulVec continuous_const))).div_const _

lemma isClosed_N0set (z : Fin (2 * r + k + 1) → ℂ) : IsClosed (C2.N0set k r z) := by
  have hU : IsClosed (UH (Hpk k r)) := by
    show IsClosed {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | gᴴ * Hpk k r * g = Hpk k r}
    exact isClosed_eq ((continuous_id.matrix_conjTranspose.matrix_mul continuous_const).matrix_mul
      continuous_id) continuous_const
  have hA : IsClosed {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | ∀ (a : Fin r) (i : Fin (2 * r + k + 1)), a.val ≤ i.val →
      g i (eI k r a) = if i = eI k r a then 1 else 0} := by
    have e : {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | ∀ (a : Fin r) (i : Fin (2 * r + k + 1)), a.val ≤ i.val →
        g i (eI k r a) = if i = eI k r a then 1 else 0} =
        ⋂ (a : Fin r) (i : Fin (2 * r + k + 1)) (_ : a.val ≤ i.val),
          {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | g i (eI k r a) = if i = eI k r a then 1 else 0} := by
      ext g
      simp only [Set.mem_setOf_eq, Set.mem_iInter]
    rw [e]
    exact isClosed_iInter fun a => isClosed_iInter fun i => isClosed_iInter fun _ =>
      isClosed_eq (continuous_id.matrix_elem _ _) continuous_const
  have hB : IsClosed {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | ∀ i j : Fin (2 * r + k + 1), r ≤ j.val → j.val ≤ r + k → r ≤ i.val →
      g i j = if i = j then 1 else 0} := by
    have e : {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | ∀ i j : Fin (2 * r + k + 1), r ≤ j.val → j.val ≤ r + k → r ≤ i.val →
        g i j = if i = j then 1 else 0} =
        ⋂ (i : Fin (2 * r + k + 1)) (j : Fin (2 * r + k + 1)) (_ : r ≤ j.val) (_ : j.val ≤ r + k)
          (_ : r ≤ i.val), {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | g i j = if i = j then 1 else 0} := by
      ext g
      simp only [Set.mem_setOf_eq, Set.mem_iInter]
    rw [e]
    exact isClosed_iInter fun i => isClosed_iInter fun j => isClosed_iInter fun _ =>
      isClosed_iInter fun _ => isClosed_iInter fun _ =>
        isClosed_eq (continuous_id.matrix_elem _ _) continuous_const
  have hu : IsClosed {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | C2.uMap k r z g = 1} := isClosed_eq (uMap_cont z) continuous_const
  have e : C2.N0set k r z = ((UH (Hpk k r) ∩ {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | ∀ (a : Fin r) (i : Fin (2 * r + k + 1)),
      a.val ≤ i.val → g i (eI k r a) = if i = eI k r a then 1 else 0}) ∩
      {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | ∀ i j : Fin (2 * r + k + 1), r ≤ j.val → j.val ≤ r + k → r ≤ i.val →
        g i j = if i = j then 1 else 0}) ∩ {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ | C2.uMap k r z g = 1} := by
    ext g
    unfold C2.N0set Formalism.QuantumDeterminants.Nset
    simp only [Set.mem_setOf_eq, Set.mem_inter_iff]
    tauto
  rw [e]
  exact ((hU.inter hA).inter hB).inter hu

lemma blk_zero : unipotentBlockMatrix k r 0 0 = 1 := by
  ext i j
  simp [unipotentBlockMatrix, cmOf, Matrix.one_apply]

lemma skew_mul (Ba B : Matrix (Fin r) (Fin (k + 1)) ℂ) (Sa S : Matrix (Fin r) (Fin r) ℂ) (hSa : Saᴴ = -Sa)
    (hS : Sᴴ = -S) :
    (Sa + S + (1 / 2 : ℂ) • (B * Matrix.diagonal (hW k) * Baᴴ - Ba * Matrix.diagonal (hW k) * Bᴴ))ᴴ =
      -(Sa + S + (1 / 2 : ℂ) • (B * Matrix.diagonal (hW k) * Baᴴ - Ba * Matrix.diagonal (hW k) * Bᴴ)) := by
  have hD : (Matrix.diagonal (hW k))ᴴ = Matrix.diagonal (hW k) := by
    rw [Matrix.diagonal_conjTranspose]
    congr 1
    funext j
    exact NBk.star_hW j
  have hX : (B * Matrix.diagonal (hW k) * Baᴴ)ᴴ = Ba * Matrix.diagonal (hW k) * Bᴴ := by
    simp only [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hD, Matrix.mul_assoc]
  have hY : (Ba * Matrix.diagonal (hW k) * Bᴴ)ᴴ = B * Matrix.diagonal (hW k) * Baᴴ := by
    simp only [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hD, Matrix.mul_assoc]
  have hc : star (1 / 2 : ℂ) = 1 / 2 := by simp
  rw [Matrix.conjTranspose_add, Matrix.conjTranspose_add, Matrix.conjTranspose_smul,
    Matrix.conjTranspose_sub, hX, hY, hSa, hS, hc,
    ← neg_sub (B * Matrix.diagonal (hW k) * Baᴴ) (Ba * Matrix.diagonal (hW k) * Bᴴ), smul_neg]
  abel

end HBx

theorem unipotent_integral_closed : UnipotentSetIsClosedSubgroup := by
  intro k r z hz
  have key : ∀ (Bm : Matrix (Fin r) (Fin (k + 1)) ℂ) (S : Matrix (Fin r) (Fin r) ℂ),
      unipotentBlockMatrix k r Bm S * unipotentBlockMatrix k r (-Bm) (-S) = 1 := by
    intro Bm S
    rw [NBk.nbm_mul]
    have e1 : Bm + -Bm = 0 := add_neg_cancel Bm
    have e2 : S + -S + (1 / 2 : ℂ) • (-Bm * Matrix.diagonal (hW k) * Bmᴴ -
        Bm * Matrix.diagonal (hW k) * (-Bm)ᴴ) = 0 := by
      simp [Matrix.conjTranspose_neg, Matrix.neg_mul, Matrix.mul_neg]
    rw [e1, e2, HBx.blk_zero]
  refine ⟨?_, ?_, ?_, ?_, HBx.isClosed_N0set z⟩
  · rw [← HBx.blk_zero]
    exact NBk.nb_mem _ _ hz (Matrix.zero_mulVec _) (by simp)
  · intro a ha b hb
    obtain ⟨Ba, Sa, hBa, hSa, rfl⟩ := unipotent_eq_block k r z hz a ha
    obtain ⟨B, S, hB, hS, rfl⟩ := unipotent_eq_block k r z hz b hb
    rw [NBk.nbm_mul]
    exact NBk.nb_mem _ _ hz (by rw [Matrix.add_mulVec, hBa, hB, add_zero]) (HBx.skew_mul Ba B Sa S hSa hS)
  · intro a ha
    obtain ⟨Ba, Sa, hBa, hSa, rfl⟩ := unipotent_eq_block k r z hz a ha
    rw [Matrix.inv_eq_right_inv (key Ba Sa)]
    exact NBk.nb_mem _ _ hz (by rw [Matrix.neg_mulVec, hBa, neg_zero])
      (by rw [Matrix.conjTranspose_neg, hSa])
  · intro a ha
    obtain ⟨Ba, Sa, hBa, hSa, rfl⟩ := unipotent_eq_block k r z hz a ha
    exact Matrix.isUnit_det_of_right_inverse (key Ba Sa)

end PI.UnitaryGroupMassFormula.DLm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundX =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.AutomorphicInSphericalLevel =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.AutomorphicInSphericalLevel", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SupportPhiZeroSubset\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsSmoothExt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FlagStabilizerFixesFrame\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.DensityLemma.PFibreBoundX\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PolynomialProperness.ZhatNormLinearBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.SmoothExtensionClosedSet

open MeasureTheory Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Set Filter Topology Metric PI.PolynomialProperness

noncomputable section

section alg

variable {k r : ℕ}

def mm (A B : Mt k r) : Mt k r := fun i j => ∑ l, A i l * B l j

def ct (A : Mt k r) : Mt k r := fun i j => Complex.conjCLE (A j i)

def hinvM (A : Mt k r) : Mt k r := mm (mm (Matrix.of.symm (Hpk k r)) (ct A)) (Matrix.of.symm (Hpk k r))

def sgsP (p : B.SS k r) (g : Mt k r) : Mt k r := mm (mm (mm (mm (hinvM p.1.1) (hinvM p.1.2)) g) p.2.2) p.2.1

theorem of_mm (A B : Mt k r) : Matrix.of (mm A B) = Matrix.of A * Matrix.of B := by
  ext i j
  simp [mm, Matrix.mul_apply]

theorem of_ct (A : Mt k r) : Matrix.of (ct A) = (Matrix.of A)ᴴ := by
  ext i j
  simp [ct, Matrix.conjTranspose_apply]

theorem of_hinvM {A : Mt k r} (hA : Matrix.of A ∈ B.GV k r) : Matrix.of (hinvM A) = (Matrix.of A)⁻¹ := by
  simp only [hinvM, of_mm, of_ct, Equiv.apply_symm_apply]
  have hg : (Matrix.of A)ᴴ * Hpk k r * Matrix.of A = Hpk k r := hA
  refine (Matrix.inv_eq_left_inv ?_).symm
  calc Hpk k r * (Matrix.of A)ᴴ * Hpk k r * Matrix.of A
      = Hpk k r * ((Matrix.of A)ᴴ * Hpk k r * Matrix.of A) := by simp only [Matrix.mul_assoc]
    _ = 1 := by rw [hg, Formalism.QuantumDeterminants.GBasic.Hpk_sq]

theorem of_sgsP {p : B.SS k r} (h1 : Matrix.of p.1.1 ∈ B.GV k r) (h2 : Matrix.of p.1.2 ∈ B.GV k r) (g : Mt k r) :
    Matrix.of (sgsP p g) = B.sgs p (Matrix.of g) := by
  rw [sgsP, of_mm, of_mm, of_mm, of_mm, of_hinvM h1, of_hinvM h2]
  rfl

variable {X : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X] {n : WithTop ℕ∞}

theorem cd_ent {f : X → Mt k r} (hf : ContDiff ℝ n f) (i j : Fin (2 * r + k + 1)) :
    ContDiff ℝ n fun x => f x i j := contDiff_pi.mp (contDiff_pi.mp hf i) j

theorem cd_mm {f g : X → Mt k r} (hf : ContDiff ℝ n f) (hg : ContDiff ℝ n g) :
    ContDiff ℝ n fun x => mm (f x) (g x) := by
  refine contDiff_pi.mpr (fun i => contDiff_pi.mpr (fun j => ?_))
  simp only [mm]
  exact ContDiff.sum (fun l _ => (cd_ent hf i l).mul (cd_ent hg l j))

theorem cd_ct {f : X → Mt k r} (hf : ContDiff ℝ n f) : ContDiff ℝ n fun x => ct (f x) := by
  refine contDiff_pi.mpr (fun i => contDiff_pi.mpr (fun j => ?_))
  exact Complex.conjCLE.contDiff.comp (cd_ent hf j i)

theorem cd_hinvM {f : X → Mt k r} (hf : ContDiff ℝ n f) : ContDiff ℝ n fun x => hinvM (f x) :=
  cd_mm (cd_mm contDiff_const (cd_ct hf)) contDiff_const

theorem cd_sgsP : ContDiff ℝ n fun q : B.SS k r × Mt k r => sgsP q.1 q.2 := by
  have h11 : ContDiff ℝ n fun q : B.SS k r × Mt k r => q.1.1.1 := contDiff_fst.comp (contDiff_fst.comp contDiff_fst)
  have h12 : ContDiff ℝ n fun q : B.SS k r × Mt k r => q.1.1.2 := contDiff_snd.comp (contDiff_fst.comp contDiff_fst)
  have h21 : ContDiff ℝ n fun q : B.SS k r × Mt k r => q.1.2.1 := contDiff_fst.comp (contDiff_snd.comp contDiff_fst)
  have h22 : ContDiff ℝ n fun q : B.SS k r × Mt k r => q.1.2.2 := contDiff_snd.comp (contDiff_snd.comp contDiff_fst)
  have hg : ContDiff ℝ n fun q : B.SS k r × Mt k r => q.2 := contDiff_snd
  exact cd_mm (cd_mm (cd_mm (cd_mm (cd_hinvM h11) (cd_hinvM h12)) hg) h22) h21

theorem norm_le_gN (x : Mt k r) : ‖x‖ ≤ B.gN (Matrix.of x) := by
  refine (pi_norm_le_iff_of_nonneg (GN.gN_nonneg _)).2 fun i => ?_
  refine (pi_norm_le_iff_of_nonneg (GN.gN_nonneg _)).2 fun j => ?_
  exact GN.entry_le_gN (Matrix.of x) i j

end alg

section sand

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

def sand (A : Wp →L[ℂ] Wp) (B' : Wq →L[ℂ] Wq) : (Wq →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wp) :=
  ContinuousLinearMap.compL ℂ (Wq →L[ℂ] Wp) (Wq →L[ℂ] Wp) (Wq →L[ℂ] Wp)
    (ContinuousLinearMap.compL ℂ Wq Wp Wp A) ((ContinuousLinearMap.compL ℂ Wq Wq Wp).flip B')

theorem sand_apply (A : Wp →L[ℂ] Wp) (B' : Wq →L[ℂ] Wq) (X : Wq →L[ℂ] Wp) : sand A B' X = A.comp (X.comp B') := rfl

theorem sand_cont : Continuous fun q : (Wp →L[ℂ] Wp) × (Wq →L[ℂ] Wq) => sand q.1 q.2 := by
  have h1 : Continuous fun q : (Wp →L[ℂ] Wp) × (Wq →L[ℂ] Wq) => ContinuousLinearMap.compL ℂ Wq Wp Wp q.1 :=
    (ContinuousLinearMap.compL ℂ Wq Wp Wp).continuous.comp continuous_fst
  have h2 : Continuous fun q : (Wp →L[ℂ] Wp) × (Wq →L[ℂ] Wq) => (ContinuousLinearMap.compL ℂ Wq Wq Wp).flip q.2 :=
    (ContinuousLinearMap.compL ℂ Wq Wq Wp).flip.continuous.comp continuous_snd
  exact h1.clm_comp h2

theorem sand_norm_le (A : Wp →L[ℂ] Wp) (B' : Wq →L[ℂ] Wq) (hA : ‖A‖ ≤ 1) (hB : ‖B'‖ ≤ 1) :
    ‖sand A B'‖ ≤ 1 := by
  refine ContinuousLinearMap.opNorm_le_bound _ zero_le_one (fun X => ?_)
  rw [sand_apply, one_mul]
  calc ‖A.comp (X.comp B')‖ ≤ ‖A‖ * ‖X.comp B'‖ := ContinuousLinearMap.opNorm_comp_le _ _
    _ ≤ 1 * (‖X‖ * ‖B'‖) :=
        mul_le_mul hA (ContinuousLinearMap.opNorm_comp_le _ _) (norm_nonneg _) zero_le_one
    _ ≤ ‖X‖ := by nlinarith [norm_nonneg X, norm_nonneg B']

end sand

section main

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

def fR (Bs : B.RealPlaceData k r Wp Wq) (p : B.SS k r) : (Wq →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wp) :=
  sand (Bs.π (Matrix.of p.1.1)) (Bs.π' (Matrix.of (hinvM p.2.1)))

def automorphic_in_spherical_level (Bs : B.RealPlaceData k r Wp Wq) (p : B.SS k r) : Prop :=
  Matrix.of p.1.1 ∈ UWset k r Bs.z ∧ Matrix.of p.1.2 ∈ C2.N0set k r Bs.z ∧
    Matrix.of p.2.1 ∈ UWset k r Bs.z' ∧ Matrix.of p.2.2 ∈ C2.N0set k r Bs.z'

theorem ae_mem_good_set (Bs : B.RealPlaceData k r Wp Wq) (μ0 μ0' : Measure (Mt k r))
    (hμ0 : B.IsHaarOn (C2.N0set k r Bs.z) μ0) (hμ0' : B.IsHaarOn (C2.N0set k r Bs.z') μ0') :
    ∀ᵐ p ∂((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')), automorphic_in_spherical_level Bs p := by
  have hW := Formalism.FourierDecayAlt.P.Dx2.OrbJ.sigmaF Bs.haarW
  have hW' := Formalism.FourierDecayAlt.P.Dx2.OrbJ.sigmaF Bs.haarW'
  have hN := Formalism.FourierDecayAlt.P.Dx2.OrbJ.sigmaF hμ0
  have hN' := Formalism.FourierDecayAlt.P.Dx2.OrbJ.sigmaF hμ0'
  have b1 : ∀ᵐ q ∂(Bs.μW.prod μ0), Matrix.of q.1 ∈ UWset k r Bs.z :=
    (Measure.quasiMeasurePreserving_fst (μ := Bs.μW) (ν := μ0)).ae
      (Formalism.FourierDecayAlt.P.Dx2.OrbJ.ae_mem Bs.haarW)
  have b2 : ∀ᵐ q ∂(Bs.μW.prod μ0), Matrix.of q.2 ∈ C2.N0set k r Bs.z :=
    (Measure.quasiMeasurePreserving_snd (μ := Bs.μW) (ν := μ0)).ae (Formalism.FourierDecayAlt.P.Dx2.OrbJ.ae_mem hμ0)
  have c1 : ∀ᵐ q ∂(Bs.μW'.prod μ0'), Matrix.of q.1 ∈ UWset k r Bs.z' :=
    (Measure.quasiMeasurePreserving_fst (μ := Bs.μW') (ν := μ0')).ae
      (Formalism.FourierDecayAlt.P.Dx2.OrbJ.ae_mem Bs.haarW')
  have c2 : ∀ᵐ q ∂(Bs.μW'.prod μ0'), Matrix.of q.2 ∈ C2.N0set k r Bs.z' :=
    (Measure.quasiMeasurePreserving_snd (μ := Bs.μW') (ν := μ0')).ae (Formalism.FourierDecayAlt.P.Dx2.OrbJ.ae_mem hμ0')
  have d1 : ∀ᵐ p ∂((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')),
      Matrix.of p.1.1 ∈ UWset k r Bs.z ∧ Matrix.of p.1.2 ∈ C2.N0set k r Bs.z :=
    (Measure.quasiMeasurePreserving_fst (μ := Bs.μW.prod μ0) (ν := Bs.μW'.prod μ0')).ae (b1.and b2)
  have d2 : ∀ᵐ p ∂((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')),
      Matrix.of p.2.1 ∈ UWset k r Bs.z' ∧ Matrix.of p.2.2 ∈ C2.N0set k r Bs.z' :=
    (Measure.quasiMeasurePreserving_snd (μ := Bs.μW.prod μ0) (ν := Bs.μW'.prod μ0')).ae (c1.and c2)
  filter_upwards [d1, d2] with p h1 h2
  exact ⟨h1.1, h1.2, h2.1, h2.2⟩

theorem isClosed_good_set (Bs : B.RealPlaceData k r Wp Wq) : IsClosed {p : B.SS k r | automorphic_in_spherical_level Bs p} := by
  have hz : C2.StdZ k r Bs.z := ⟨Bs.z_mem, Bs.T_pos⟩
  have hz' : C2.StdZ k r Bs.z' := ⟨Bs.z'_mem, Bs.T'_pos⟩
  have u1 : IsClosed {x : Mt k r | Matrix.of x ∈ UWset k r Bs.z} := (Formalism.FourierDecayAlt.P.weyl_subgroup_closed k r Bs.z).closed
  have u2 : IsClosed {x : Mt k r | Matrix.of x ∈ C2.N0set k r Bs.z} := (PI.UnitaryGroupMassFormula.DLm.unipotent_integral_closed k r Bs.z hz).closed
  have u3 : IsClosed {x : Mt k r | Matrix.of x ∈ UWset k r Bs.z'} :=
    (Formalism.FourierDecayAlt.P.weyl_subgroup_closed k r Bs.z').closed
  have u4 : IsClosed {x : Mt k r | Matrix.of x ∈ C2.N0set k r Bs.z'} :=
    (PI.UnitaryGroupMassFormula.DLm.unipotent_integral_closed k r Bs.z' hz').closed
  have h := ((u1.preimage (continuous_fst.comp continuous_fst)).inter (u2.preimage (continuous_snd.comp continuous_fst))).inter
    ((u3.preimage (continuous_fst.comp continuous_snd)).inter (u4.preimage (continuous_snd.comp continuous_snd)))
  convert h using 1
  ext p
  simp [automorphic_in_spherical_level, and_assoc]

theorem norm_pi_le_one (Bs : B.RealPlaceData k r Wp Wq) {h : B.Mat k r} (hh : h ∈ UWset k r Bs.z) : ‖Bs.π h‖ ≤ 1 :=
  ContinuousLinearMap.opNorm_le_bound _ zero_le_one fun v => by rw [Bs.π_unitary h hh v, one_mul]

theorem norm_pi'_le_one (Bs : B.RealPlaceData k r Wp Wq) {h : B.Mat k r} (hh : h ∈ UWset k r Bs.z') : ‖Bs.π' h‖ ≤ 1 :=
  ContinuousLinearMap.opNorm_le_bound _ zero_le_one fun v => by rw [Bs.π'_unitary h hh v, one_mul]

theorem hinv_mem (Bs : B.RealPlaceData k r Wp Wq) {p : B.SS k r} (hp : automorphic_in_spherical_level Bs p) :
    Matrix.of (hinvM p.2.1) ∈ UWset k r Bs.z' := by
  rw [of_hinvM hp.2.2.1.1]
  exact (Formalism.FourierDecayAlt.P.weyl_subgroup_closed k r Bs.z').inv_mem _ hp.2.2.1

variable [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem fR_loc (Bs : B.RealPlaceData k r Wp Wq) (μ0 μ0' : Measure (Mt k r))
    (hμ0 : B.IsHaarOn (C2.N0set k r Bs.z) μ0) (hμ0' : B.IsHaarOn (C2.N0set k r Bs.z') μ0') :
    LocallyIntegrable (fR Bs) ((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')) := by
  have hae := ae_mem_good_set Bs μ0 μ0' hμ0 hμ0'
  have hc1 : Continuous fun p : B.SS k r => (Matrix.of p.1.1 : B.Mat k r) := continuous_fst.comp continuous_fst
  have hc2 : Continuous fun p : B.SS k r => (Matrix.of (hinvM p.2.1) : B.Mat k r) :=
    (cd_hinvM (n := 0) (by fun_prop : ContDiff ℝ 0 fun p : B.SS k r => p.2.1)).continuous
  have hpair : ContinuousOn (fun p : B.SS k r => (Bs.π (Matrix.of p.1.1), Bs.π' (Matrix.of (hinvM p.2.1))))
      {p | automorphic_in_spherical_level Bs p} := by
    refine ContinuousOn.prodMk (Bs.π_cont.comp' hc1.continuousOn ?_) ?_
    · exact fun p hp => hp.1
    · exact Bs.π'_cont.comp' hc2.continuousOn fun p hp => hinv_mem Bs hp
  have h2 := sand_cont.comp_continuousOn hpair
  have hcont : ContinuousOn (fR Bs) {p | automorphic_in_spherical_level Bs p} := by
    unfold fR
    exact h2
  have hsm : AEStronglyMeasurable (fR Bs) ((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')) := by
    have h := hcont.aestronglyMeasurable (μ := (Bs.μW.prod μ0).prod (Bs.μW'.prod μ0'))
      (isClosed_good_set Bs).measurableSet
    rwa [Measure.restrict_eq_self_of_ae_mem (s := {p | automorphic_in_spherical_level Bs p}) hae] at h
  have hbd : ∀ᵐ p ∂((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')), ‖fR Bs p‖ ≤ 1 :=
    hae.mono fun p hp => sand_norm_le _ _ (norm_pi_le_one Bs hp.1) (norm_pi'_le_one Bs (hinv_mem Bs hp))
  have := Formalism.FourierDecayAlt.P.Dx2.OrbJ.sigmaF Bs.haarW
  have := Formalism.FourierDecayAlt.P.Dx2.OrbJ.sigmaF Bs.haarW'
  have := Formalism.FourierDecayAlt.P.Dx2.OrbJ.sigmaF hμ0
  have := Formalism.FourierDecayAlt.P.Dx2.OrbJ.sigmaF hμ0'
  have : IsFiniteMeasureOnCompacts Bs.μW := ⟨fun K hK => Bs.haarW.finite_compact K hK⟩
  have : IsFiniteMeasureOnCompacts Bs.μW' := ⟨fun K hK => Bs.haarW'.finite_compact K hK⟩
  have : IsFiniteMeasureOnCompacts μ0 := ⟨fun K hK => hμ0.finite_compact K hK⟩
  have : IsFiniteMeasureOnCompacts μ0' := ⟨fun K hK => hμ0'.finite_compact K hK⟩
  exact fun x => ⟨closedBall x 1, closedBall_mem_nhds x one_pos,
    Measure.integrableOn_of_bounded (isCompact_closedBall x 1).measure_lt_top.ne hsm (ae_restrict_of_ae hbd)⟩

end main

section final

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem norm_SS_le (p : B.SS k r) (c : ℝ) (h1 : B.gN (Matrix.of p.1.1) ≤ c) (h2 : B.gN (Matrix.of p.1.2) ≤ c)
    (h3 : B.gN (Matrix.of p.2.1) ≤ c) (h4 : B.gN (Matrix.of p.2.2) ≤ c) : ‖p‖ ≤ c := by
  rw [norm_prod_le_iff, norm_prod_le_iff, norm_prod_le_iff]
  exact ⟨⟨(norm_le_gN _).trans h1, (norm_le_gN _).trans h2⟩, ⟨(norm_le_gN _).trans h3, (norm_le_gN _).trans h4⟩⟩

theorem local_smooth (Bs : B.RealPlaceData k r Wp Wq) (ν' : Fin (2 * r + k + 1) → ℂ) (m₀ : B.Mat k r)
    (μ0 μ0' : Measure (Mt k r)) (hμ0 : B.IsHaarOn (C2.N0set k r Bs.z) μ0)
    (hμ0' : B.IsHaarOn (C2.N0set k r Bs.z') μ0') (sec : G.Mat (r + 1) → Mt k r) (hsec : PBI.IsSec Bs ν' m₀ sec)
    (F : B.Mat k r → (Wq →L[ℂ] Wp)) (R : ℝ) (hR : ∀ g ∈ B.GV k r, F g ≠ 0 → B.gN g ≤ R)
    (Ft : Mt k r → (Wq →L[ℂ] Wp)) (hFt : ContDiff ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) Ft)
    (hFtF : ∀ x : Mt k r, Matrix.of x ∈ B.GV k r → Ft x = F (Matrix.of x)) (Z₀ : G.Mat (r + 1))
    (hZ₀ : 0 < PBI.gPoly (Tz k r Bs.z * Tz k r Bs.z') (Matrix.of Z₀)) :
    ContDiffAt ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) (PBI.phi0 Bs μ0 μ0' sec F) Z₀ := by
  have hstd : C2.Std k r Bs.z Bs.z' := ⟨Bs.k_pos, ⟨Bs.z_mem, Bs.T_pos⟩, ⟨Bs.z'_mem, Bs.T'_pos⟩⟩
  obtain ⟨Ω, hΩdef⟩ : ∃ Ω : Set (G.Mat (r + 1)),
      Ω = {Z | 0 < PBI.gPoly (Tz k r Bs.z * Tz k r Bs.z') (Matrix.of Z)} := ⟨_, rfl⟩
  have hΩ : IsOpen Ω := hΩdef ▸ isOpen_lt continuous_const (PBI.continuous_gPoly r _)
  have hZΩ : Z₀ ∈ Ω := hΩdef ▸ hZ₀
  obtain ⟨δ₀, hδ₀, hball⟩ := Metric.isOpen_iff.1 hΩ Z₀ hZΩ
  have hδ : 0 < δ₀ / 2 := by positivity
  have hKΩ : closedBall Z₀ (δ₀ / 2) ⊆ Ω := (closedBall_subset_ball (by linarith)).trans hball
  have hsΩ : ball Z₀ (δ₀ / 2) ⊆ Ω := ball_subset_closedBall.trans hKΩ
  have hsecΩ : ContDiffOn ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) sec Ω := hΩdef ▸ hsec.1
  have hsecΩ' : ∀ Z ∈ Ω, Matrix.of (sec Z) ∈ B.GV k r ∧
      Zhat k r Bs.z Bs.z' (Matrix.of (sec Z)) = Matrix.of Z := fun Z hZ => by
    rw [hΩdef] at hZ
    exact ⟨(hsec.2 Z hZ).1, (hsec.2 Z hZ).2.1⟩
  have hcont : ContinuousOn (fun Z => (Matrix.of (sec Z) : B.Mat k r)) (closedBall Z₀ (δ₀ / 2)) :=
    hsecΩ.continuousOn.mono hKΩ
  obtain ⟨Kg, hKgdef⟩ : ∃ Kg : Set (B.Mat k r), Kg = (fun Z => (Matrix.of (sec Z) : B.Mat k r)) '' closedBall Z₀ (δ₀ / 2) :=
    ⟨_, rfl⟩
  have hKg : IsCompact Kg := hKgdef ▸ (isCompact_closedBall Z₀ (δ₀ / 2)).image_of_continuousOn hcont
  have hKpos : ∀ g ∈ Kg, C2.PosPt k r Bs.z Bs.z' g := by
    intro g hg
    rw [hKgdef] at hg
    obtain ⟨Z, hZ, rfl⟩ := hg
    obtain ⟨hgG, hZg⟩ := hsecΩ' Z (hKΩ hZ)
    refine ⟨hgG, ?_⟩
    have hZ' := hKΩ hZ
    rw [hΩdef] at hZ'
    rw [PBI.gf_eq_gPoly, hZg]
    exact hZ'
  obtain ⟨Rp, hRp⟩ := fibreProper Bs.z Bs.z' hstd Kg hKg hKpos R
  have hρ : 0 < max Rp 1 := lt_max_of_lt_right one_pos
  let φ : ContDiffBump (0 : B.SS k r) := ⟨max Rp 1, max Rp 1 + 1, hρ, by linarith⟩

  have hgs : ∀ (Z : G.Mat (r + 1)) (x : B.SS k r), Z ∈ ball Z₀ (δ₀ / 2) → x ∉ closedBall (0 : B.SS k r) (max Rp 1 + 1) →
      φ (-x) • Ft (sgsP (-x) (sec Z)) = 0 := by
    intro Z x _ hx
    have h0 : φ (-x) = 0 := by
      apply φ.zero_of_le_dist
      rw [mem_closedBall, dist_zero_right, not_le] at hx
      rw [dist_zero_right, norm_neg]
      exact hx.le
    rw [h0, zero_smul]
  have hgsm : ContDiffOn ℝ ((⊤ : ℕ∞) : WithTop ℕ∞)
      (fun q : G.Mat (r + 1) × B.SS k r => φ (-q.2) • Ft (sgsP (-q.2) (sec q.1))) (ball Z₀ (δ₀ / 2) ×ˢ univ) := by
    have hφ : ContDiff ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) fun q : G.Mat (r + 1) × B.SS k r => φ (-q.2) :=
      φ.contDiff.comp contDiff_snd.neg
    have hsec2 : ContDiffOn ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) (fun q : G.Mat (r + 1) × B.SS k r => sec q.1)
        (ball Z₀ (δ₀ / 2) ×ˢ univ) :=
      hsecΩ.comp contDiff_fst.contDiffOn fun q hq => hsΩ hq.1
    have hpair : ContDiffOn ℝ ((⊤ : ℕ∞) : WithTop ℕ∞)
        (fun q : G.Mat (r + 1) × B.SS k r => (-q.2, sec q.1)) (ball Z₀ (δ₀ / 2) ×ˢ univ) :=
      contDiff_snd.neg.contDiffOn.prodMk hsec2
    have hin := (cd_sgsP (k := k) (r := r) (n := ((⊤ : ℕ∞) : WithTop ℕ∞))).comp_contDiffOn hpair
    have hfull := hφ.contDiffOn.smul (hFt.comp_contDiffOn hin)
    exact hfull.congr fun q _ => rfl
  have hconv := contDiffOn_convolution_right_with_param_comp (𝕜 := ℝ) (n := ⊤)
    (μ := (Bs.μW.prod μ0).prod (Bs.μW'.prod μ0'))
    (ContinuousLinearMap.restrictScalarsL ℂ (Wq →L[ℂ] Wp) (Wq →L[ℂ] Wp) ℝ ℝ)
    (s := ball Z₀ (δ₀ / 2)) (v := fun _ => (0 : B.SS k r)) contDiffOn_const (f := fR Bs)
    (g := fun Z x => φ (-x) • Ft (sgsP (-x) (sec Z))) (k := closedBall (0 : B.SS k r) (max Rp 1 + 1))
    isOpen_ball (isCompact_closedBall _ _) hgs (fR_loc Bs μ0 μ0' hμ0 hμ0') hgsm

  have hae := ae_mem_good_set Bs μ0 μ0' hμ0 hμ0'
  have heq : ∀ Z ∈ ball Z₀ (δ₀ / 2), PBI.phi0 Bs μ0 μ0' sec F Z =
      convolution (fR Bs) (fun x => φ (-x) • Ft (sgsP (-x) (sec Z)))
        (ContinuousLinearMap.restrictScalarsL ℂ (Wq →L[ℂ] Wp) (Wq →L[ℂ] Wp) ℝ ℝ)
        ((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')) 0 := by
    intro Z hZ
    have hZΩ' := hsΩ hZ
    have hZpos : 0 < PBI.gPoly (Tz k r Bs.z * Tz k r Bs.z') (Matrix.of Z) := by rw [hΩdef] at hZΩ'; exact hZΩ'
    obtain ⟨hgG, -⟩ := hsecΩ' Z hZΩ'
    have hgK : (Matrix.of (sec Z) : B.Mat k r) ∈ Kg := by
      rw [hKgdef]; exact ⟨Z, ball_subset_closedBall hZ, rfl⟩
    rw [PBI.phi0, if_pos hZpos, PBI.fibInt, convolution_def]
    refine integral_congr_ae ?_
    filter_upwards [hae] with p hp
    obtain ⟨h1, h2, h3, h4⟩ := hp
    have hG1 : Matrix.of p.1.1 ∈ B.GV k r := h1.1
    have hG2 : Matrix.of p.1.2 ∈ B.GV k r := h2.1.1
    have hG3 : Matrix.of p.2.1 ∈ B.GV k r := h3.1
    have hG4 : Matrix.of p.2.2 ∈ B.GV k r := h4.1.1
    have hsg : Matrix.of (sgsP p (sec Z)) = B.sgs p (Matrix.of (sec Z)) := of_sgsP hG1 hG2 _
    have hsgG : B.sgs p (Matrix.of (sec Z)) ∈ B.GV k r := by
      unfold B.sgs
      exact GN.mul_mem (GN.mul_mem (GN.mul_mem (GN.mul_mem (GN.inv_mem hG1) (GN.inv_mem hG2)) hgG) hG4) hG3
    have hFt' : Ft (sgsP p (sec Z)) = F (B.sgs p (Matrix.of (sec Z))) := by
      rw [hFtF _ (hsg ▸ hsgG), hsg]
    have hinv' : Matrix.of (hinvM p.2.1) = (Matrix.of p.2.1)⁻¹ := of_hinvM hG3
    have hR' : (ContinuousLinearMap.restrictScalarsL ℂ (Wq →L[ℂ] Wp) (Wq →L[ℂ] Wp) ℝ ℝ) (fR Bs p)
        (φ (- (0 - p)) • Ft (sgsP (- (0 - p)) (sec Z))) =
        (Bs.π (Matrix.of p.1.1)).comp ((φ p • F (B.sgs p (Matrix.of (sec Z)))).comp
          (Bs.π' (Matrix.of p.2.1)⁻¹)) := by
      rw [zero_sub, neg_neg, hFt', ← hinv']
      rfl
    rw [hR']
    by_cases hF0 : F (B.sgs p (Matrix.of (sec Z))) = 0
    · simp [B.rho, hF0]
    · have hb : B.gN ((Matrix.of p.1.1)⁻¹ * (Matrix.of p.1.2)⁻¹ * Matrix.of (sec Z) * Matrix.of p.2.2 *
          Matrix.of p.2.1) ≤ R := hR _ hsgG hF0
      obtain ⟨b1, b2, b3, b4⟩ := hRp _ hgK _ h1 _ h2 _ h3 _ h4 hb
      have hpn : ‖p‖ ≤ max Rp 1 :=
        norm_SS_le p _ (b1.trans (le_max_left _ _)) (b2.trans (le_max_left _ _))
          (b3.trans (le_max_left _ _)) (b4.trans (le_max_left _ _))
      have hφ1 : φ p = 1 := φ.one_of_mem_closedBall (by rw [mem_closedBall, dist_zero_right]; exact hpn)
      rw [hφ1, one_smul]
      rfl
  exact (hconv.congr heq).contDiffAt (isOpen_ball.mem_nhds (mem_ball_self (by positivity)))

end final

theorem fibIntSmooth : PBI.FibIntSmooth := by
  intro k r Wp Wq _ _ _ _ _ _ Bs ν' m₀ μ0 μ0' sec F _ hμ0 hμ0' hsec hF
  obtain ⟨hFsm, ⟨R, hR⟩, ε, hε, hεG⟩ := hF
  obtain ⟨Ft, hFt, hFtF⟩ := exists_smoothExt F hFsm
  rw [contDiff_iff_contDiffAt]
  intro Z₀
  by_cases hZ₀ : 0 < PBI.gPoly (Tz k r Bs.z * Tz k r Bs.z') (Matrix.of Z₀)
  · exact local_smooth Bs ν' m₀ μ0 μ0' hμ0 hμ0' sec hsec F R hR Ft hFt hFtF Z₀ hZ₀
  · have hopen : IsOpen {Z : G.Mat (r + 1) | PBI.gPoly (Tz k r Bs.z * Tz k r Bs.z') (Matrix.of Z) < ε} :=
      isOpen_lt (PBI.continuous_gPoly r _) continuous_const
    have hmem : Z₀ ∈ {Z : G.Mat (r + 1) | PBI.gPoly (Tz k r Bs.z * Tz k r Bs.z') (Matrix.of Z) < ε} := by
      show PBI.gPoly (Tz k r Bs.z * Tz k r Bs.z') (Matrix.of Z₀) < ε
      linarith [not_lt.1 hZ₀]
    have hev : PBI.phi0 Bs μ0 μ0' sec F =ᶠ[𝓝 Z₀] fun _ => 0 := by
      filter_upwards [hopen.mem_nhds hmem] with Z hZ
      by_contra hne
      obtain ⟨g, hg, hFg, hZg⟩ := PBI.support_phi_zero_subset Bs ν' m₀ μ0 μ0' hμ0 hμ0' sec hsec F Z hne
      have h1 := hεG g hg hFg
      rw [PBI.gf_eq_gPoly, hZg] at h1
      exact absurd hZ (not_lt.2 h1)
    exact contDiffAt_const.congr_of_eventuallyEq hev

end

end Formalism.FourierDecayAlt.P.SmoothExtensionClosedSet

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.AutomorphicInSphericalLevel =====
