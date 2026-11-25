module

public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsIsometryOfSabMap
public import Formalism.LocalToGlobal.ProjectiveLattices.PartitionExtendByZeroAntitone
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnitaryLatticeStabilizerDetRoot
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
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.TameInvariantLevelAction
public import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.CoeSelfDualLatticeInFrameCoordinatesEq
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPinnedOfIsUnf
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply

@[expose] public section

open NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Pj Formalism.IndefR.Lev GlobalTheory.IndefiniteRowSideFullHecke.LatticeBasisLifts GlobalTheory.GeoLevel
open GlobalTheory.Member (FinCong IotaOK)
open GlobalTheory.LevelCusp (IsMatch)
open GlobalTheory.Dict (castFr)
open scoped TensorProduct Matrix

namespace GlobalTheory.GeoLevel

theorem det_mul_cc_det_of_isMatch {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} (X : Data E r)
    (δ : GL (Fin r) E) (h : IsMatch X X δ) :
    (δ : Matrix (Fin r) (Fin r) E).det * IsCMField.complexConj E (δ : Matrix (Fin r) (Fin r) E).det = 1 := by
  have hm : (δ : Matrix (Fin r) (Fin r) E)ᵀ * X.Gm *
      ((IsCMField.complexConj E : E →+* E).mapMatrix (δ : Matrix (Fin r) (Fin r) E)) = X.Gm := by
    ext i j
    have := h.iso (Pi.single i 1) (Pi.single j 1)
    simp only [herm, cc, Matrix.mulVec_single_one, Matrix.col_apply] at this
    simp only [Pi.single_apply, apply_ite, map_one, map_zero, ite_mul, mul_one, one_mul, mul_zero,
      zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true] at this
    rw [← this]
    simp only [Matrix.mul_apply, Matrix.transpose_apply, RingHom.mapMatrix_apply, Matrix.map_apply,
      Finset.sum_mul]
    rw [Finset.sum_comm]
    rfl
  have hd := congrArg Matrix.det hm
  rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose, ← RingHom.map_det] at hd
  apply mul_left_cancel₀ X.Gm_det
  rw [mul_one]
  refine Eq.trans ?_ hd
  rw [← mul_assoc, mul_comm X.Gm.det]
  rfl

theorem four_dvd_finrank_and_det_eq_pm_one : ∀ (D : D7), 4 ∣ Module.finrank ℚ D.host.E ∧ ∀ (r : ℕ) (X : Data D.host.E r) (δ : GL (Fin r) D.host.E), IsMatch X X δ → (δ : Matrix (Fin r) (Fin r) D.host.E).det = 1 ∨ ∃ m : ℕ, 0 < m ∧ (δ : Matrix (Fin r) (Fin r) D.host.E).det ^ m = 1 := by
  intro D
  refine ⟨?_, fun r X δ h => ?_⟩
  · have hE : Module.finrank ℚ D.host.E = 4 * D.R.n := by
      have h : (Module.finrank ℚ D.host.E : ℝ) = 4 * (D.R.n : ℝ) := by
        rw [D.host.finrank_cmField]
        unfold Ranks.n
        push_cast
        ring
      exact_mod_cast h
    exact ⟨_, hE⟩
  · have h1 := det_mul_cc_det_of_isMatch X δ h
    refine Or.inr (GlobalTheory.Mem.StabDet.eq_pm_one_of_unitary D.host _ ⟨?_, h1⟩
      (GlobalTheory.Mem.StabDet.isIntegral_det X.Λ X.Λ_fg X.Λ_span _ fun v hv => (h.lat v).1 hv))
    rw [mul_comm]
    exact h1

end GlobalTheory.GeoLevel
