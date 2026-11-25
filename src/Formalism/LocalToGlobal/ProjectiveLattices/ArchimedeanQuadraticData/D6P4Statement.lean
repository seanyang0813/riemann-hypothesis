module

public import Mathlib.NumberTheory.NumberField.Discriminant.Defs
public import Mathlib.NumberTheory.NumberField.Discriminant.Different
public import Mathlib.Analysis.Normed.Lp.PiLp
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.LinearAlgebra.LinearIndependent.Defs
public import Mathlib.LinearAlgebra.Basis.Basic
public import Mathlib.LinearAlgebra.Dimension.StrongRankCondition
public import Mathlib.NumberTheory.NumberField.Basic
public import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.HQsmulRight
public import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.RhoDotSelf
public import Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings
public import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FinrankCmType
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.CoveringRadiusStatement
public import Formalism.SharpRestriction.Divisibility.GeneratorPowers.PhiCMinF
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.NonvanishingNearHalfMax
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MaxPointFrameOfTransference
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.CmApproximationTransference

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.DiscrMulIntegral, Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.DotSelfEqSqNorm, Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ExistsBasisIn, Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.LatticeZbasis, Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ThetaDotSelf, Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FundamentalDomainD5, Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.D6P4Statement

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.DiscrMulIntegral =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.DiscrMulIntegral", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Discriminant.Defs\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.NumberField.Discriminant.Different\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option autoImplicit false

noncomputable section

namespace Formalism.L2.Pj.FundamentalDomainD5

open NumberField Matrix

theorem discr_mul_integral {K : Type} [Field K] [NumberField K] (z : K)
    (hz : ∀ a : 𝓞 K, ∃ n : ℤ, Algebra.trace ℚ K (z * a) = n) :
    IsIntegral ℤ ((NumberField.discr K : K) * z) := by
  classical
  have hne : (differentIdeal ℤ (𝓞 K) : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) ≠ 0 :=
    FractionalIdeal.coeIdeal_ne_zero.mpr (differentIdeal_ne_bot (A := ℤ) (B := 𝓞 K))

  have hz1 : z ∈ FractionalIdeal.dual ℤ ℚ (1 : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) := by
    have h1ne : (1 : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) ≠ 0 := by
      rw [← FractionalIdeal.coeIdeal_top]
      exact FractionalIdeal.coeIdeal_ne_zero.mpr top_ne_bot
    rw [FractionalIdeal.mem_dual h1ne]
    intro a ha
    obtain ⟨a', rfl⟩ := (FractionalIdeal.mem_one_iff _).mp ha
    obtain ⟨n, hn⟩ := hz a'
    refine ⟨n, ?_⟩
    rw [Algebra.traceForm_apply]
    simpa using hn.symm

  set N : ℕ := Ideal.absNorm (differentIdeal ℤ (𝓞 K)) with hN
  have hNmem : (N : K) ∈ (differentIdeal ℤ (𝓞 K) : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) := by
    rw [FractionalIdeal.mem_coeIdeal]
    exact ⟨(N : 𝓞 K), Ideal.absNorm_mem _, by simp⟩
  have hprod : z * (N : K) ∈ (1 : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) := by
    have h := FractionalIdeal.mul_mem_mul hz1 hNmem
    have hdual : FractionalIdeal.dual ℤ ℚ (1 : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) =
        (differentIdeal ℤ (𝓞 K) : FractionalIdeal (nonZeroDivisors (𝓞 K)) K)⁻¹ := by
      rw [coeIdeal_differentIdeal ℤ ℚ K (𝓞 K), inv_inv]
    rwa [hdual, inv_mul_cancel₀ hne] at h
  obtain ⟨x, hx⟩ := (FractionalIdeal.mem_one_iff _).mp hprod
  have hint : IsIntegral ℤ (z * (N : K)) := by
    rw [← hx]; exact RingOfIntegers.isIntegral_coe x
  have hNd : N = (NumberField.discr K).natAbs := NumberField.absNorm_differentIdeal K (𝓞 K)
  rcases Int.natAbs_eq (NumberField.discr K) with h | h
  · rw [h, ← hNd, Int.cast_natCast, mul_comm]; exact hint
  · rw [h, ← hNd, Int.cast_neg, Int.cast_natCast, neg_mul, mul_comm]; exact hint.neg

end Formalism.L2.Pj.FundamentalDomainD5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.DiscrMulIntegral =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.DotSelfEqSqNorm =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.DotSelfEqSqNorm", "h": "module\n\npublic import Mathlib.Analysis.Normed.Lp.PiLp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.InnerProductSpace.PiL2\n\n"}
section -- clump:auto
@[expose] public section

set_option autoImplicit false

noncomputable section

namespace Formalism.L2.Pj.FundamentalDomainD5

open Matrix

theorem dot_self_eq_sq_norm {N : ℕ} (v : Fin N → ℝ) :
    v ⬝ᵥ v = ‖(WithLp.linearEquiv 2 ℝ (Fin N → ℝ)).symm v‖ ^ 2 := by
  rw [EuclideanSpace.norm_eq, Real.sq_sqrt (Finset.sum_nonneg (fun i _ => sq_nonneg _))]
  simp [dotProduct, sq]

theorem cover_round {N : ℕ} (b : Fin N → Fin N → ℝ) (hb : LinearIndependent ℝ b) (ℓ : ℝ)
    (hℓ : ∀ j, b j ⬝ᵥ b j ≤ ℓ ^ 2) (w : Fin N → ℝ) :
    ∃ n : Fin N → ℤ, (w - ∑ j, (n j : ℝ) • b j) ⬝ᵥ (w - ∑ j, (n j : ℝ) • b j) ≤ ((N : ℝ) * ℓ / 2) ^ 2 := by
  classical
  rcases Nat.eq_zero_or_pos N with rfl | hN
  · exact ⟨0, by simp [dotProduct]⟩
  haveI : Nonempty (Fin N) := ⟨⟨0, hN⟩⟩
  have hcard : Fintype.card (Fin N) = Module.finrank ℝ (Fin N → ℝ) := by simp
  let B := basisOfLinearIndependentOfCardEqFinrank hb hcard
  have hB : ∀ j, B j = b j := fun j => by simp [B]
  set c := B.repr w with hcdef
  refine ⟨fun j => round (c j), ?_⟩
  have hw : w = ∑ j, c j • b j := by
    conv_lhs => rw [← B.sum_repr w]
    simp only [hB, hcdef]

  have hdiff : w - ∑ j, ((round (c j) : ℤ) : ℝ) • b j = ∑ j, (c j - round (c j)) • b j := by
    conv_lhs => rw [hw]
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl (fun j _ => ?_)
    rw [sub_smul]
  have hbj : ∀ j, ‖(WithLp.linearEquiv 2 ℝ (Fin N → ℝ)).symm (b j)‖ ≤ |ℓ| := by
    intro j
    have h := hℓ j
    rw [dot_self_eq_sq_norm, ← sq_abs ℓ] at h
    by_contra hc
    push_neg at hc
    nlinarith [abs_nonneg ℓ]
  have hnorm : ‖(WithLp.linearEquiv 2 ℝ (Fin N → ℝ)).symm (∑ j, (c j - round (c j)) • b j)‖ ≤
      (N : ℝ) * |ℓ| / 2 := by

    rw [map_sum]
    calc ‖∑ j, (WithLp.linearEquiv 2 ℝ (Fin N → ℝ)).symm ((c j - round (c j)) • b j)‖
        ≤ ∑ j, ‖(WithLp.linearEquiv 2 ℝ (Fin N → ℝ)).symm ((c j - round (c j)) • b j)‖ :=
          norm_sum_le _ _
      _ = ∑ j, |c j - round (c j)| * ‖(WithLp.linearEquiv 2 ℝ (Fin N → ℝ)).symm (b j)‖ := by
          refine Finset.sum_congr rfl (fun j _ => ?_)
          rw [LinearEquiv.map_smul, norm_smul, Real.norm_eq_abs]
      _ ≤ ∑ _j : Fin N, (1 / 2) * |ℓ| :=
          Finset.sum_le_sum (fun j _ =>
            mul_le_mul (abs_sub_round _) (hbj j) (norm_nonneg _) (by norm_num))
      _ = (N : ℝ) * |ℓ| / 2 := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
          ring
  rw [hdiff, dot_self_eq_sq_norm]
  calc ‖(WithLp.linearEquiv 2 ℝ (Fin N → ℝ)).symm (∑ j, (c j - round (c j)) • b j)‖ ^ 2
      ≤ ((N : ℝ) * |ℓ| / 2) ^ 2 := pow_le_pow_left₀ (norm_nonneg _) hnorm 2
    _ = ((N : ℝ) * ℓ / 2) ^ 2 := by
      rw [div_pow, mul_pow, sq_abs, ← mul_pow, ← div_pow]

end Formalism.L2.Pj.FundamentalDomainD5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.DotSelfEqSqNorm =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ExistsBasisIn =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ExistsBasisIn", "h": "module\n\npublic import Mathlib.LinearAlgebra.LinearIndependent.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Basis.Basic\npublic import Mathlib.LinearAlgebra.Dimension.StrongRankCondition\n\n"}
section -- clump:auto
@[expose] public section

set_option autoImplicit false

noncomputable section

namespace Formalism.L2.Pj.FundamentalDomainD5

theorem exists_basis_in {K : Type} [Field K] {r : ℕ} (S : Set (Fin r → K))
    (hS : Submodule.span K S = ⊤) :
    ∃ v : Fin r → Fin r → K, (∀ j, v j ∈ S) ∧ LinearIndependent K v := by
  obtain ⟨b, hbS, hspan, hli⟩ := exists_linearIndependent K S
  have htop : ⊤ ≤ Submodule.span K (Set.range ((↑) : b → Fin r → K)) := by
    rw [Subtype.range_coe, hspan, hS]
  let B := Module.Basis.mk hli htop
  let e := B.indexEquiv (Pi.basisFun K (Fin r))
  refine ⟨fun j => (e.symm j : Fin r → K), fun j => hbS (e.symm j).2, ?_⟩
  exact hli.comp e.symm e.symm.injective

end Formalism.L2.Pj.FundamentalDomainD5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ExistsBasisIn =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.LatticeZbasis =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.LatticeZbasis", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option autoImplicit false

noncomputable section

namespace Formalism.L2.Pj.FundamentalDomainD5

open NumberField Matrix

theorem lattice_zbasis {K : Type} [Field K] [NumberField K] {r : ℕ} (L : Submodule (𝓞 K) (Fin r → K))
    (hfg : L.FG) (hspan : Submodule.span K (L : Set (Fin r → K)) = ⊤) :
    ∃ e : Fin (Module.finrank ℚ K * r) → (Fin r → K), (∀ j, e j ∈ L) ∧ LinearIndependent ℚ e ∧
      ∀ v ∈ L, ∃ n : Fin (Module.finrank ℚ K * r) → ℤ, v = ∑ j, (n j : ℚ) • e j := by
  classical
  haveI : Module.Finite (𝓞 K) L := Module.Finite.iff_fg.mpr hfg
  haveI : Module.Finite ℤ L := Module.Finite.trans (𝓞 K) L
  haveI : Module.Free ℤ L := Module.free_of_finite_type_torsion_free'
  set b := Module.Free.chooseBasis ℤ L
  set f : Module.Free.ChooseBasisIndex ℤ L → (Fin r → K) := fun j => (b j : Fin r → K) with hf
  have hfZ : LinearIndependent ℤ f :=
    b.linearIndependent.map' (L.subtype.restrictScalars ℤ) (LinearMap.ker_eq_bot.mpr Subtype.val_injective)
  have hfQ : LinearIndependent ℚ f := (LinearIndependent.iff_fractionRing ℤ ℚ).mp hfZ
  have hrep : ∀ v ∈ L, ∃ c : Module.Free.ChooseBasisIndex ℤ L → ℤ, v = ∑ j, (c j : ℚ) • f j := by
    intro v hv
    refine ⟨fun j => b.repr ⟨v, hv⟩ j, ?_⟩
    have h' := congrArg (fun z : L => (z : Fin r → K)) (b.sum_repr ⟨v, hv⟩)
    simp only [Submodule.coe_sum] at h'
    conv_lhs => rw [← h']
    exact Finset.sum_congr rfl fun j _ => (Int.cast_smul_eq_zsmul ℚ _ _).symm
  have hS : ∀ v ∈ L, v ∈ Submodule.span ℚ (Set.range f) := by
    intro v hv
    obtain ⟨c, hc⟩ := hrep v hv
    rw [hc]
    exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)
  have hKL : ∀ v ∈ L, ∀ k : K, k • v ∈ Submodule.span ℚ (Set.range f) := by
    intro v hv k
    have halg : IsAlgebraic ℤ k :=
      (IsFractionRing.isAlgebraic_iff ℤ ℚ K).mpr (Algebra.IsAlgebraic.isAlgebraic k)
    obtain ⟨y, hy0, hyi⟩ := halg.exists_integral_multiple
    have hmem : ((⟨y • k, hyi⟩ : 𝓞 K)) • v ∈ L := L.smul_mem _ hv
    have hyK : (y : K) ≠ 0 := by exact_mod_cast hy0
    have heq : k • v = ((y : ℚ)⁻¹) • ((⟨y • k, hyi⟩ : 𝓞 K) • v) := by
      rw [algebra_compatible_smul K ((y : ℚ)⁻¹), algebra_compatible_smul K (⟨y • k, hyi⟩ : 𝓞 K), smul_smul]
      congr 1
      simp only [map_inv₀, map_intCast, zsmul_eq_mul]
      show k = (y : K)⁻¹ * ((y : K) * k)
      field_simp
    rw [heq]
    exact Submodule.smul_mem _ _ (hS _ hmem)
  have htop : ⊤ ≤ Submodule.span ℚ (Set.range f) := by
    intro x _
    have hx : x ∈ Submodule.span K (L : Set (Fin r → K)) := hspan ▸ Submodule.mem_top
    have key : ∀ z ∈ Submodule.span K (L : Set (Fin r → K)), ∀ k : K, k • z ∈ Submodule.span ℚ (Set.range f) := by
      intro z hz
      induction hz using Submodule.span_induction with
      | mem v hv => exact hKL v hv
      | zero => intro k; rw [smul_zero]; exact Submodule.zero_mem _
      | add a c _ _ ha hc => intro k; rw [smul_add]; exact Submodule.add_mem _ (ha k) (hc k)
      | smul c a _ ha => intro k; rw [smul_smul]; exact ha (k * c)
    simpa using key x hx 1
  have hcard : Fintype.card (Module.Free.ChooseBasisIndex ℤ L) = Module.finrank ℚ K * r := by
    rw [← Module.finrank_eq_card_basis (Module.Basis.mk hfQ htop), Module.finrank_pi_fintype]
    simp [mul_comm]
  let eqv := Fintype.equivFinOfCardEq hcard
  refine ⟨f ∘ eqv.symm, fun j => (b (eqv.symm j)).2, hfQ.comp _ eqv.symm.injective, fun v hv => ?_⟩
  obtain ⟨c, hc⟩ := hrep v hv
  refine ⟨c ∘ eqv.symm, ?_⟩
  rw [hc]
  exact (Fintype.sum_equiv eqv.symm _ _ (fun j => rfl)).symm

end Formalism.L2.Pj.FundamentalDomainD5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.LatticeZbasis =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ThetaDotSelf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ThetaDotSelf", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.HQsmulRight\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.RhoDotSelf\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FinrankCmType\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option autoImplicit false

noncomputable section

namespace Formalism.L2.Pj.FundamentalDomainD5

open NumberField Matrix ComplexConjugate ReciprocityTheory.MultiplicativeHeights

variable {K : Type} [Field K] [NumberField K] {ι : Type} [Fintype ι] {r : ℕ}

theorem trace_id (σ : ι → K →+* ℂ) (hinj : Function.Injective σ)
    (hcm : ∀ τ : K →+* ℂ, (∃ i, σ i = τ) ↔ ¬ ∃ i, σ i = ComplexEmbedding.conjugate τ)
    (Q : ι → Matrix (Fin r) (Fin r) ℂ) (p : ℕ) (S : HermForm K r)
    (hform : ∀ i x y, σ i (S.h x y) = jForm p (Q i *ᵥ embVec (σ i) x) (Q i *ᵥ embVec (σ i) y))
    {N : ℕ} (eqv : Fin N ≃ ι × Fin r × Fin 2) (y v : Fin r → K) :
    rho eqv (Theta p (Phi σ Q y)) ⬝ᵥ rho eqv (Phi σ Q v) =
      (1 / 2 : ℝ) * ((Algebra.trace ℚ K (S.h y v) : ℚ) : ℝ) := by
  rw [rho_dot, ← sum_re_cmType σ hinj hcm (S.h y v)]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [hform i y v, jForm, Complex.re_sum]
  refine Finset.sum_congr rfl fun a _ => ?_
  simp only [Theta, Phi, map_mul, sgn_conj]
  ring_nf

private lemma rho_dot_self_lemma {N : ℕ} (eqv : Fin N ≃ ι × Fin r × Fin 2) (w : ι → Fin r → ℂ) :
    rho eqv w ⬝ᵥ rho eqv w = ∑ i, ∑ j, Complex.normSq (w i j) := by
  unfold rho
  simp only [dotProduct]
  refine (Equiv.sum_comp eqv (fun x : ι × Fin r × Fin 2 =>
    (if x.2.2 = 0 then (w x.1 x.2.1).re else (w x.1 x.2.1).im) *
      (if x.2.2 = 0 then (w x.1 x.2.1).re else (w x.1 x.2.1).im))).trans ?_
  simp [Fintype.sum_prod_type, Fin.sum_univ_two, Complex.normSq_apply]

theorem theta_dot_self (p : ℕ) {N : ℕ} (eqv : Fin N ≃ ι × Fin r × Fin 2) (w : ι → Fin r → ℂ) :
    rho eqv (Theta p w) ⬝ᵥ rho eqv (Theta p w) = rho eqv w ⬝ᵥ rho eqv w := by
  rw [rho_dot_self_lemma, rho_dot_self_lemma]
  unfold Theta sgn
  simp only [map_mul]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  split_ifs <;> simp

theorem phi_dot_self (σ : ι → K →+* ℂ) (Q : ι → Matrix (Fin r) (Fin r) ℂ) {N : ℕ}
    (eqv : Fin N ≃ ι × Fin r × Fin 2) (v : Fin r → K) :
    rho eqv (Phi σ Q v) ⬝ᵥ rho eqv (Phi σ Q v) = majSq σ Q v := by
  rw [rho_dot_self_lemma]
  unfold Phi majSq normSq
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  exact Complex.normSq_eq_norm_sq _

theorem trace_one_ne : Algebra.trace ℚ K 1 ≠ 0 := by
  rw [← map_one (algebraMap ℚ K), Algebra.trace_algebraMap]
  simp only [nsmul_eq_mul, mul_one, ne_eq, Nat.cast_eq_zero]
  exact Module.finrank_pos.ne'

theorem nondeg [Nonempty ι] (σ : ι → K →+* ℂ) (Q : ι → Matrix (Fin r) (Fin r) ℂ)
    (hQ : ∀ i, (Q i).det ≠ 0) (p : ℕ) (S : HermForm K r)
    (hform : ∀ i x y, σ i (S.h x y) = jForm p (Q i *ᵥ embVec (σ i) x) (Q i *ᵥ embVec (σ i) y))
    (x : Fin r → K) (h : ∀ v, Algebra.trace ℚ K (S.h v x) = 0) : x = 0 := by
  classical
  unfold jForm embVec at hform
  obtain ⟨i₀⟩ := ‹Nonempty ι›
  have hsingle : ∀ (j : Fin r) (b : K),
      (fun a => σ i₀ ((Pi.single j b : Fin r → K) a)) = (Pi.single j (σ i₀ b) : Fin r → ℂ) := by
    intro j b
    funext a
    by_cases ha : a = j
    · subst ha
      simp
    · simp [Pi.single_eq_of_ne ha]
  have hcol : ∀ (j : Fin r) (z : ℂ) (k : Fin r), (Q i₀ *ᵥ (Pi.single j z : Fin r → ℂ)) k = Q i₀ k j * z := by
    intro j z k
    simp [Matrix.mulVec, dotProduct, Pi.single_apply]
  have hg : ∀ j : Fin r, S.h (Pi.single j 1) x = 0 := by
    intro j
    have hlin : ∀ b : K, S.h (Pi.single j b) x = S.1 b * S.h (Pi.single j 1) x := by
      intro b
      apply (σ i₀).injective
      rw [map_mul, hform, hform, hsingle, hsingle, S.3, Finset.mul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [hcol, hcol, map_one]
      simp only [map_mul, map_one]
      ring
    by_contra hg0
    have ht := h (Pi.single j (S.1 (S.h (Pi.single j 1) x)⁻¹))
    have ht2 := hlin (S.1 (S.h (Pi.single j 1) x)⁻¹)
    rw [ht2, S.2, inv_mul_cancel₀ hg0] at ht
    exact trace_one_ne ht
  have hw : (Q i₀)ᴴ *ᵥ (fun k => sgn p k * (Q i₀ *ᵥ fun a => σ i₀ (x a)) k) = 0 := by
    funext j
    have h0 := congrArg (σ i₀) (hg j)
    rw [hform, hsingle, map_zero] at h0
    show ∑ k, (Q i₀)ᴴ j k * (sgn p k * (Q i₀ *ᵥ fun a => σ i₀ (x a)) k) = 0
    rw [← h0]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [hcol, map_one, mul_one, Matrix.conjTranspose_apply, starRingEnd_apply]
    ring
  have hdet : ((Q i₀)ᴴ).det ≠ 0 := by
    rw [Matrix.det_conjTranspose]
    exact star_ne_zero.mpr (hQ i₀)
  have hw0 := Matrix.eq_zero_of_mulVec_eq_zero hdet hw
  have hu0 : (Q i₀ *ᵥ fun a => σ i₀ (x a)) = 0 := by
    funext k
    have hk := congrFun hw0 k
    simp only [Pi.zero_apply] at hk ⊢
    rcases mul_eq_zero.mp hk with hk | hk
    · unfold sgn at hk
      split_ifs at hk <;> norm_num at hk
    · exact hk
  have hx0 := Matrix.eq_zero_of_mulVec_eq_zero (hQ i₀) hu0
  funext a
  have ha := congrFun hx0 a
  simp only [Pi.zero_apply] at ha ⊢
  exact (σ i₀).injective (by rw [ha, map_zero])

end Formalism.L2.Pj.FundamentalDomainD5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ThetaDotSelf =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FundamentalDomainD5 =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FundamentalDomainD5", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.CoveringRadiusStatement\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.DiscrMulIntegral\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.DotSelfEqSqNorm\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ExistsBasisIn\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FinrankCmType\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.LatticeZbasis\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ThetaDotSelf\npublic import Formalism.SharpRestriction.Divisibility.GeneratorPowers.PhiCMinF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.HQsmulRight\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.RhoDotSelf\nimport Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.CmApproximationTransference\n\n"}
section -- clump:auto
@[expose] public section

set_option autoImplicit false

noncomputable section

namespace Formalism.L2.Pj.FundamentalDomainD5

open NumberField Matrix ComplexConjugate ReciprocityTheory.MultiplicativeHeights

theorem d5_translation : ReciprocityTheory.ChartRestriction.G.FD.CoveringRadiusStatement :=
  GlobalTheory.CMTransference.cmApproximation_transference

end Formalism.L2.Pj.FundamentalDomainD5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FundamentalDomainD5 =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.D6P4Statement =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.D6P4Statement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.NonvanishingNearHalfMax\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FundamentalDomainD5\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MaxPointFrameOfTransference\n\n"}
section -- clump:auto
@[expose] public section

set_option autoImplicit false

namespace Formalism.L2.Pj.FundamentalDomainD5

open NumberField

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem t41H_statement : ReciprocityTheory.ChartRestriction.G.FD.FrameAtHalfMaximum (E := E) :=
  ReciprocityTheory.ChartRestriction.G.FD.maxPointFrame_of_transference d5_translation

end Formalism.L2.Pj.FundamentalDomainD5
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.D6P4Statement =====
