module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.LevelIntersectParabolic
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.MassDataInst
public import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.Measures

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.RescaleCore, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.Rescale

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.RescaleCore =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.RescaleCore", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.LevelIntersectParabolic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.Measures\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures
open scoped TensorProduct

namespace Formalism.L2.SG.Pf.RescaleCore

def GramStdND : Prop :=
  ∀ (F E : Type) [Field F] [Field E] [Algebra F E] (σ : E →ₐ[F] E) (n : ℕ) (J : Matrix (Fin n) (Fin n) E) (r : ℕ)
    (P : Frame E n r) (T : F), (∀ x, σ (σ x) = x) → IsHermND σ J → P.IsStd σ J T → (gramE σ J (tupH P)).det ≠ 0

end Formalism.L2.SG.Pf.RescaleCore
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.RescaleCore =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.Rescale =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.Rescale", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.RescaleCore\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.MassDataInst\npublic import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Matrix

namespace Formalism.L2.SG.Pf.Rescale

section Gram

variable {F E : Type} [Field F] [Field E] [Algebra F E] (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E)

theorem hE_swap (hσ : ∀ x, σ (σ x) = x) (hJ : IsHermND σ J) (x y : Fin n → E) :
    hE σ J y x = σ (hE σ J x y) := by

  simp only [hE, Formalism.UG.hform, AlgHom.coe_toRingHom, map_sum, map_mul, hσ]
  conv_lhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  simp only [hJ.1]
  ring

theorem standard_gram_nondegenerate : Formalism.L2.SG.Pf.RescaleCore.GramStdND := by
  intro F E _ _ _ σ n J r P T hσ hJ hS
  obtain ⟨hee, hff, hef, hez, hfz, hzz, hT⟩ := hS
  intro hdet
  obtain ⟨v, hv0, hv⟩ := (Matrix.exists_mulVec_eq_zero_iff).2 hdet

  have tE : ∀ a : Fin r, tupH P (Fin.castAdd r (Fin.castSucc a)) = P.e a := by
    intro a; simp [tupH, F0, Fin.append_left, Fin.snoc_castSucc]
  have tZ : tupH P (Fin.castAdd r (Fin.last r)) = P.z := by
    simp [tupH, F0, Fin.append_left, Fin.snoc_last]
  have tF : ∀ a : Fin r, tupH P (Fin.natAdd (r + 1) a) = P.f a := by
    intro a; simp [tupH, Fin.append_right]
  have hsum : ∀ i, (gramE σ J (tupH P) *ᵥ v) i =
      (∑ b : Fin r, hE σ J (tupH P i) (P.e b) * v (Fin.castAdd r (Fin.castSucc b))) +
        hE σ J (tupH P i) P.z * v (Fin.castAdd r (Fin.last r)) +
        ∑ b : Fin r, hE σ J (tupH P i) (P.f b) * v (Fin.natAdd (r + 1) b) := by
    intro i
    simp only [Matrix.mulVec, dotProduct, gramE]
    rw [Fin.sum_univ_add, Fin.sum_univ_castSucc]
    simp only [tE, tZ, tF]
  have hrow : ∀ i, (gramE σ J (tupH P) *ᵥ v) i = 0 := fun i => congrFun hv i
  have vF : ∀ a : Fin r, v (Fin.natAdd (r + 1) a) = 0 := by
    intro a
    have h := hrow (Fin.castAdd r (Fin.castSucc a))
    rw [hsum, tE] at h
    simp only [hee, zero_mul, Finset.sum_const_zero, zero_add, hez, hef, ite_mul, one_mul,
      Finset.sum_ite_eq, Finset.mem_univ, if_true] at h
    exact h
  have hze : ∀ b, hE σ J P.z (P.e b) = 0 := fun b => by rw [hE_swap σ J hσ hJ, hez, map_zero]
  have hzf : ∀ b, hE σ J P.z (P.f b) = 0 := fun b => by rw [hE_swap σ J hσ hJ, hfz, map_zero]
  have hfe : ∀ a b, hE σ J (P.f a) (P.e b) = if b = a then 1 else 0 := fun a b => by
    rw [hE_swap σ J hσ hJ, hef]; split_ifs <;> simp
  have hfz' : ∀ a, hE σ J (P.f a) P.z = 0 := hfz
  have vZ : v (Fin.castAdd r (Fin.last r)) = 0 := by
    have h := hrow (Fin.castAdd r (Fin.last r))
    rw [hsum, tZ] at h
    simp only [hze, hzf, zero_mul, Finset.sum_const_zero, zero_add, add_zero] at h
    have hne : hE σ J P.z P.z ≠ 0 := by
      rw [hzz]
      intro h0
      exact hT (neg_eq_zero.1 ((algebraMap F E).injective (by rw [h0, map_zero])))
    exact (mul_eq_zero.1 h).resolve_left hne
  have vE : ∀ a : Fin r, v (Fin.castAdd r (Fin.castSucc a)) = 0 := by
    intro a
    have h := hrow (Fin.natAdd (r + 1) a)
    rw [hsum, tF] at h
    simp only [hfe, hfz', hff, zero_mul, Finset.sum_const_zero, add_zero, ite_mul, one_mul, zero_mul,
      Finset.sum_ite_eq', Finset.mem_univ, if_true] at h
    exact h
  apply hv0
  funext i
  refine Fin.addCases (fun j => ?_) (fun a => ?_) i
  · refine Fin.lastCases ?_ (fun a => ?_) j
    · exact vZ
    · exact vE a
  · exact vF a

end Gram

end Formalism.L2.SG.Pf.Rescale

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub

namespace Formalism.L2.SG.Pf.Rescale

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

end Formalism.L2.SG.Pf.Rescale
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.Rescale =====
