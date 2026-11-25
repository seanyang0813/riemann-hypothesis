module

public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JpUnif
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UniformBoundednessStatement
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
public import Mathlib.Data.Matrix.ColumnRowPartitioned
public import Mathlib.LinearAlgebra.Matrix.Rank
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Card
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.TypeStar
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.TotallySplit
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Lemma
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.RingTheory.Coalgebra.CoassocSimps

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AverageInvariantRightTranslation, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AverageOverMaximalCompactResidue, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardCompletionsToFullRank, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardFixedLowerRightBlock, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRankCompletionSymmetry, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRankLowerLeftEqLowerRight, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSquareCongruenceConjugation, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ParabolicDoubleCosetOfEqualCorank, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ReductionCorankEqRankLowerLeft, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ReductionUniqueUpToParabolic, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResidueUpperUnipotentLift, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompactnessStatement

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AverageInvariantRightTranslation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AverageInvariantRightTranslation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix GlobalTheory.CompanionTheory.Jp

namespace GlobalTheory.CompanionTheory.Jp.AvgRight

theorem avgK_right_invariant : ∀ (O : Type) [CommRing O] [IsLocalRing O] (n : ℕ) (ϖ : O) (φ : GL (Ix n) O → ℂ),
    (∀ κ, ∀ γ ∈ Gam2 (n := n) ϖ, φ (κ * γ) = φ κ) → ∀ j : GL (Ix n) O,
      avgK ϖ (fun κ => φ (κ * j)) = avgK ϖ φ := by
  intro O _ _ n ϖ φ hφ j
  have hout : ∀ x : GL (Ix n) O,
      φ (Quotient.out (QuotientGroup.mk x : GL (Ix n) O ⧸ Gam2 (n := n) ϖ)) = φ x := by
    intro x
    obtain ⟨h, hh⟩ := QuotientGroup.mk_out_eq_mul (Gam2 (n := n) ϖ) x
    rw [hh]
    exact hφ x h.1 h.2
  have hshift : ∀ u : GL (Ix n) O ⧸ Gam2 (n := n) ϖ,
      φ (Quotient.out u * j) =
        φ (Quotient.out (u * (QuotientGroup.mk j : GL (Ix n) O ⧸ Gam2 (n := n) ϖ))) := by
    intro u
    rw [← hout (Quotient.out u * j)]
    congr 2
    rw [QuotientGroup.mk_mul, QuotientGroup.out_eq']
  unfold avgK
  congr 1
  rw [finsum_congr hshift]
  exact finsum_comp_equiv (Equiv.mulRight (QuotientGroup.mk j : GL (Ix n) O ⧸ Gam2 (n := n) ϖ))
    (f := fun u => φ (Quotient.out u))

end GlobalTheory.CompanionTheory.Jp.AvgRight

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AverageInvariantRightTranslation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AverageOverMaximalCompactResidue =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AverageOverMaximalCompactResidue", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JpUnif\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UniformBoundednessStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace GlobalTheory.CompanionTheory.Jp.AvgRes

theorem avg_of_surjective {G H : Type*} [Group G] [Group H] (N : Subgroup G) [N.Normal] [Finite (G ⧸ N)] (r : G →* H)
    (hr : Function.Surjective r) (hN : N ≤ r.ker) (f : H → ℂ) :
    (Nat.card (G ⧸ N) : ℂ)⁻¹ * ∑ᶠ u : G ⧸ N, f (r (Quotient.out u)) = (∑ᶠ g, f g) / (Nat.card H : ℂ) := by
  classical
  haveI : Fintype (G ⧸ N) := Fintype.ofFinite _
  set φ : G ⧸ N →* H := QuotientGroup.lift N r hN with hφdef
  have hφ : Function.Surjective φ := by
    intro h
    obtain ⟨g, rfl⟩ := hr h
    exact ⟨(g : G ⧸ N), QuotientGroup.lift_mk N hN g⟩
  haveI : Finite H := Finite.of_surjective φ hφ
  haveI : Fintype H := Fintype.ofFinite _
  have hout : ∀ u : G ⧸ N, r (Quotient.out u) = φ u := by
    intro u
    conv_rhs => rw [← Quotient.out_eq u]
    exact (QuotientGroup.lift_mk N hN _).symm
  simp_rw [hout]
  rw [finsum_eq_sum_of_fintype, finsum_eq_sum_of_fintype, Finset.sum_comp f φ,
    Finset.image_univ_of_surjective hφ]
  set c := (Finset.univ.filter fun u : G ⧸ N => φ u = 1).card with hc
  have hfib : ∀ b : H, (Finset.univ.filter fun u : G ⧸ N => φ u = b).card = c := fun b =>
    MonoidHom.card_fiber_eq_of_mem_range φ (hφ b) (hφ 1)
  have hcard : Fintype.card (G ⧸ N) = Fintype.card H * c := by
    rw [← Finset.card_univ, Finset.card_eq_sum_card_image φ Finset.univ,
      Finset.image_univ_of_surjective hφ]
    simp [hfib]
  have hc0 : (c : ℂ) ≠ 0 := by
    rw [hc]
    exact Nat.cast_ne_zero.mpr (Finset.card_ne_zero.mpr ⟨1, by simp⟩)
  have hH : (Fintype.card H : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr Fintype.card_ne_zero
  simp_rw [hfib]
  rw [← Finset.smul_sum, Nat.card_eq_fintype_card, Nat.card_eq_fintype_card, hcard,
    nsmul_eq_mul]
  push_cast
  field_simp

variable {O : Type} [CommRing O] [IsLocalRing O]

theorem resK_surjective (n : ℕ) : Function.Surjective (resK (n := n) (O := O)) := by
  intro M
  classical
  have hs := IsLocalRing.residue_surjective (R := O)
  let A : Matrix (Ix n) (Ix n) O :=
    (M : Matrix (Ix n) (Ix n) (IsLocalRing.ResidueField O)).map (Function.surjInv hs)
  have hA : (IsLocalRing.residue O).mapMatrix A = (M : Matrix (Ix n) (Ix n) _) := by
    ext i j
    exact Function.surjInv_eq hs _
  have hdet : IsUnit A.det := by
    rw [← IsLocalRing.residue_ne_zero_iff_isUnit, RingHom.map_det, hA]
    exact (Matrix.isUnits_det_units M).ne_zero
  refine ⟨Matrix.nonsingInvUnit A hdet, ?_⟩
  ext i j
  exact Function.surjInv_eq hs _

theorem level_square_congruence_le_reduction_ker (n : ℕ) {ϖ : O} (hϖ : ϖ ∈ IsLocalRing.maximalIdeal O) :
    Gam2 (n := n) ϖ ≤ (resK (n := n) (O := O)).ker := by
  intro g hg
  have hg' := MonoidHom.mem_ker.mp hg
  rw [MonoidHom.mem_ker]
  have hle : Ideal.span {ϖ ^ 2} ≤ IsLocalRing.maximalIdeal O :=
    Ideal.span_le.mpr (Set.singleton_subset_iff.mpr (Ideal.pow_mem_of_mem _ hϖ 2 two_pos))
  ext i j
  have h1 : Ideal.Quotient.mk (Ideal.span {ϖ ^ 2}) ((g : Matrix (Ix n) (Ix n) O) i j) =
      Ideal.Quotient.mk (Ideal.span {ϖ ^ 2}) ((1 : Matrix (Ix n) (Ix n) O) i j) := by
    have h0 := congrArg
      (fun x : GL (Ix n) (O ⧸ Ideal.span {ϖ ^ 2}) => (x : Matrix (Ix n) (Ix n) (O ⧸ Ideal.span {ϖ ^ 2})) i j) hg'
    change Ideal.Quotient.mk _ ((g : Matrix (Ix n) (Ix n) O) i j) =
      (1 : Matrix (Ix n) (Ix n) (O ⧸ Ideal.span {ϖ ^ 2})) i j at h0
    rw [h0, Matrix.one_apply, Matrix.one_apply]
    split_ifs <;> simp
  have h2 := Ideal.Quotient.eq.mpr (hle (Ideal.Quotient.eq.mp h1))
  change IsLocalRing.residue O ((g : Matrix (Ix n) (Ix n) O) i j) =
    (1 : Matrix (Ix n) (Ix n) (IsLocalRing.ResidueField O)) i j
  rw [show (1 : Matrix (Ix n) (Ix n) (IsLocalRing.ResidueField O)) i j =
      IsLocalRing.residue O ((1 : Matrix (Ix n) (Ix n) O) i j) by
    rw [Matrix.one_apply, Matrix.one_apply]
    split_ifs <;> simp]
  exact h2

theorem avgK_res : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Fintype (IsLocalRing.ResidueField O)]
    (n : ℕ) (ϖ : O), Irreducible ϖ → ∀ f : GL (Ix n) (IsLocalRing.ResidueField O) → ℂ,
      avgK ϖ (fun κ => f (resK κ)) = sumG f / (Nat.card (GL (Ix n) (IsLocalRing.ResidueField O)) : ℂ) := by
  intro O _ _ _ _ n ϖ hϖ f
  have hm : ϖ ∈ IsLocalRing.maximalIdeal O :=
    (IsLocalRing.mem_maximalIdeal ϖ).mpr hϖ.not_isUnit
  haveI : (Gam2 (n := n) ϖ).Normal := MonoidHom.normal_ker _
  haveI : Finite (GL (Ix n) O ⧸ Gam2 (n := n) ϖ) := GlobalTheory.CompanionTheory.Jp.Unif.finite_quotient_level_square_congruence n hϖ
  exact avg_of_surjective (Gam2 ϖ) resK (resK_surjective n) (level_square_congruence_le_reduction_ker n hm) f

end GlobalTheory.CompanionTheory.Jp.AvgRes

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AverageOverMaximalCompactResidue =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardCompletionsToFullRank =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardCompletionsToFullRank", "h": "module\n\npublic import Mathlib.Data.Matrix.ColumnRowPartitioned\npublic import Mathlib.LinearAlgebra.Matrix.Rank\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Card\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\n\n"}
section -- clump:auto
@[expose] public section

open Matrix GlobalTheory.CompanionTheory.Jp

namespace GlobalTheory.CompanionTheory.Jp.CntCols

variable {k : Type} [Field k]

theorem rank_fromCols_eq_iff {n : ℕ} (C D : Matrix (Fin n) (Fin n) k) :
    (Matrix.fromCols C D).rank = n ↔ ∀ y : Fin n → k, y ᵥ* C = 0 → y ᵥ* D = 0 → y = 0 := by
  have h1 : (Matrix.fromCols C D).rank = Module.finrank k (LinearMap.range (Matrix.fromCols C D)ᵀ.mulVecLin) := by
    rw [Matrix.finrank_range_mulVecLin, Matrix.rank_transpose]
  have h2 := LinearMap.finrank_range_add_finrank_ker (Matrix.fromCols C D)ᵀ.mulVecLin
  rw [← h1, Module.finrank_fin_fun] at h2
  constructor
  · intro h y hC hD
    have h3 : Module.finrank k (LinearMap.ker (Matrix.fromCols C D)ᵀ.mulVecLin) = 0 := by omega
    have h4 := Submodule.finrank_eq_zero.mp h3
    have h5 : y ∈ LinearMap.ker (Matrix.fromCols C D)ᵀ.mulVecLin := by
      rw [LinearMap.mem_ker, Matrix.mulVecLin_apply, Matrix.mulVec_transpose, Matrix.vecMul_fromCols, hC, hD]
      ext i; cases i <;> simp
    rw [h4] at h5
    simpa using h5
  · intro h
    have h3 : LinearMap.ker (Matrix.fromCols C D)ᵀ.mulVecLin = ⊥ := by
      rw [Submodule.eq_bot_iff]
      intro y hy
      rw [LinearMap.mem_ker, Matrix.mulVecLin_apply, Matrix.mulVec_transpose, Matrix.vecMul_fromCols] at hy
      refine h y ?_ ?_
      · ext i; simpa using congrFun hy (Sum.inl i)
      · ext i; simpa using congrFun hy (Sum.inr i)
    rw [h3] at h2
    simpa using h2

theorem finrank_leftKer {n : ℕ} (D : Matrix (Fin n) (Fin n) k) :
    Module.finrank k (LinearMap.ker Dᵀ.mulVecLin) = n - D.rank := by
  have h1 : D.rank = Module.finrank k (LinearMap.range Dᵀ.mulVecLin) := by
    rw [Matrix.finrank_range_mulVecLin, Matrix.rank_transpose]
  have h2 := LinearMap.finrank_range_add_finrank_ker Dᵀ.mulVecLin
  rw [← h1, Module.finrank_fin_fun] at h2
  omega

theorem li_iff {V Z ι : Type} [AddCommGroup V] [Module k V] [AddCommGroup Z] [Module k Z] [Fintype ι]
    (b : Module.Basis ι k Z) (g : Z →ₗ[k] V) :
    LinearIndependent k (fun i => g (b i)) ↔ ∀ y, g y = 0 → y = 0 := by
  constructor
  · intro h y hy
    have h1 := Fintype.linearIndependent_iff.mp h (fun i => b.repr y i) (by
      have := congrArg g (b.sum_repr y)

      rw [map_sum, hy] at this
      simpa using this)
    rw [← b.sum_repr y]
    simp [h1]
  · intro h
    have : LinearMap.ker g = ⊥ := by
      rw [Submodule.eq_bot_iff]; intro y hy; exact h y hy
    exact b.linearIndependent.map' g this

theorem card_completions : ∀ (k : Type) [Field k] [Fintype k] (n ρ : ℕ) (D : Matrix (Fin n) (Fin n) k), D.rank = ρ →
    Nat.card {C : Matrix (Fin n) (Fin n) k // (Matrix.fromCols C D).rank = n} =
      Fintype.card k ^ (n * ρ) * ∏ j ∈ Finset.range (n - ρ), (Fintype.card k ^ n - Fintype.card k ^ j) := by
  intro k _ _ n ρ D hD
  have hρ : ρ ≤ n := by simpa [hD] using D.rank_le_width
  have hZ : Module.finrank k (LinearMap.ker Dᵀ.mulVecLin) = n - ρ := by rw [finrank_leftKer, hD]
  obtain ⟨W, hW⟩ := Submodule.exists_isCompl (LinearMap.ker Dᵀ.mulVecLin)
  have hWf : Module.finrank k W = ρ := by
    have := Submodule.finrank_add_eq_of_isCompl hW
    rw [hZ, Module.finrank_fin_fun] at this
    omega
  let bZ := Module.finBasisOfFinrankEq k _ hZ
  let bW := Module.finBasisOfFinrankEq k _ hWf
  let bV := (bZ.prod bW).map (Submodule.prodEquivOfIsCompl _ W hW)
  let E : Matrix (Fin n) (Fin n) k ≃ (Fin (n - ρ) → Fin n → k) × (Fin ρ → Fin n → k) :=
    ((Matrix.transposeLinearEquiv (Fin n) (Fin n) k k).toEquiv.trans
      (Matrix.toLin' (R := k) (m := Fin n) (n := Fin n)).toEquiv).trans
      ((bV.constr k).symm.toEquiv.trans (Equiv.sumArrowEquivProdArrow _ _ _))
  have hE : ∀ C i, (E C).1 i = (bZ i : Fin n → k) ᵥ* C := by
    intro C i
    simp [E, bV, Equiv.sumArrowEquivProdArrow, Module.Basis.constr, Matrix.mulVec_transpose]
  have hp : ∀ C, (Matrix.fromCols C D).rank = n ↔ LinearIndependent k (E C).1 := by
    intro C
    have h1 : (E C).1 = fun i => (Cᵀ.mulVecLin ∘ₗ (LinearMap.ker Dᵀ.mulVecLin).subtype) (bZ i) := by
      funext i
      rw [hE]
      simp
    rw [h1, li_iff, rank_fromCols_eq_iff]
    constructor
    · intro h y hy
      have h2 : (y : Fin n → k) ᵥ* D = 0 := by
        have := y.2
        rwa [LinearMap.mem_ker, Matrix.mulVecLin_apply, Matrix.mulVec_transpose] at this
      have h3 : (y : Fin n → k) ᵥ* C = 0 := by simpa [Matrix.mulVec_transpose] using hy
      exact Subtype.ext (h _ h3 h2)
    · intro h y hC hD'
      have hy : y ∈ LinearMap.ker Dᵀ.mulVecLin := by
        rwa [LinearMap.mem_ker, Matrix.mulVecLin_apply, Matrix.mulVec_transpose]
      have := h ⟨y, hy⟩ (by simpa [Matrix.mulVec_transpose] using hC)
      simpa using congrArg Subtype.val this
  rw [Nat.card_congr ((Equiv.subtypeEquiv (q := fun x => LinearIndependent k x.1) E hp).trans
      (Equiv.prodSubtypeFstEquivSubtypeProd (p := fun s : Fin (n - ρ) → Fin n → k => LinearIndependent k s))), Nat.card_prod,
    card_linearIndependent (K := k) (V := Fin n → k) (by rw [Module.finrank_fin_fun]; omega), Module.finrank_fin_fun,
    Finset.prod_range (fun j => Fintype.card k ^ n - Fintype.card k ^ j), mul_comm]
  congr 1
  simp [pow_mul]

end GlobalTheory.CompanionTheory.Jp.CntCols
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardCompletionsToFullRank =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardFixedLowerRightBlock =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardFixedLowerRightBlock", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\npublic import Mathlib.Data.Matrix.ColumnRowPartitioned\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix GlobalTheory.CompanionTheory.Jp

namespace GlobalTheory.CompanionTheory.Jp.CntHalf

variable {k : Type} [Field k] {n : ℕ}

def lowH (g : GL (Ix n) k) : Matrix (Fin n) (Ix n) k := g.1.submatrix Sum.inr id

lemma lowH_eq (g : GL (Ix n) k) : lowH g = fromCols (lowerLeftBlock g) (dBlk g) := by
  ext i (j | j) <;> simp [lowH, lowerLeftBlock, dBlk, toBlocks₂₁, toBlocks₂₂]

lemma lowH_mul (g h : GL (Ix n) k) : lowH (g * h) = lowH g * h.1 := by
  ext i j
  simp [lowH, Matrix.mul_apply]

lemma lowH_one : lowH (1 : GL (Ix n) k) = fromCols 0 1 := by
  ext i (j | j) <;> simp [lowH, Matrix.one_apply]

lemma rank_lowH (g : GL (Ix n) k) : (lowH g).rank = n := by
  have h : LinearIndependent k g.1.row := Matrix.linearIndependent_rows_of_isUnit g.isUnit
  have h2 : LinearIndependent k (lowH g).row := h.comp Sum.inr Sum.inr_injective
  simpa using h2.rank_matrix

lemma exists_lowH (M : Matrix (Fin n) (Ix n) k) (hM : M.rank = n) : ∃ g : GL (Ix n) k, lowH g = M := by
  have hli : LinearIndependent k M.row := by
    rw [linearIndependent_iff_card_eq_finrank_span, Set.finrank, ← M.rank_eq_finrank_span_row, hM]
    simp
  obtain ⟨W', hW'⟩ := Submodule.exists_isCompl (Submodule.span k (Set.range M.row))
  have hfr : Module.finrank k W' = n := by
    have h1 := Submodule.finrank_add_eq_of_isCompl hW'
    have h2 := M.rank_eq_finrank_span_row
    simp at h1
    omega
  let b := Module.finBasisOfFinrankEq k W' hfr
  let w : Fin n → (Ix n → k) := fun i => (b i : Ix n → k)
  have hw : LinearIndependent k w := b.linearIndependent.map' W'.subtype (Submodule.ker_subtype _)
  have hspan : Submodule.span k (Set.range w) ≤ W' := by
    rw [Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    exact (b i).2
  have hall : LinearIndependent k (Sum.elim w M.row) :=
    LinearIndependent.sum_type hw hli (Disjoint.mono_left hspan hW'.disjoint.symm)
  let A : Matrix (Ix n) (Ix n) k := Matrix.of (Sum.elim w M.row)
  have hA : IsUnit A := by
    rw [← Matrix.linearIndependent_rows_iff_isUnit]
    exact hall
  refine ⟨hA.unit, ?_⟩
  ext i j
  rfl

lemma card_fibre (g₀ : GL (Ix n) k) :
    Nat.card {g : GL (Ix n) k // lowH g = lowH g₀} =
      Nat.card {g : GL (Ix n) k // lowerLeftBlock g = 0 ∧ dBlk g = 1} := by
  refine Nat.card_congr (Equiv.subtypeEquiv (Equiv.mulRight g₀⁻¹) ?_)
  intro g
  have hone : lowH g₀ * (g₀⁻¹).1 = fromCols 0 1 := by
    rw [← lowH_mul, mul_inv_cancel, lowH_one]
  have hcd : (lowerLeftBlock (g * g₀⁻¹) = 0 ∧ dBlk (g * g₀⁻¹) = 1) ↔ lowH (g * g₀⁻¹) = fromCols 0 1 := by
    rw [lowH_eq, Matrix.fromCols_inj.eq_iff]
  simp only [Equiv.coe_mulRight]
  rw [hcd, lowH_mul, ← hone]
  constructor
  · intro h; rw [h]
  · intro h
    have := congrArg (· * g₀.1) h
    simpa [Matrix.mul_assoc, ← Units.val_mul] using this

theorem card_lowerRightBlock_eq_fibre_formula (k : Type) [Field k] [Fintype k] (n : ℕ) (D : Matrix (Fin n) (Fin n) k) :
    Nat.card {g : GL (Ix n) k // dBlk g = D} =
      Nat.card {g : GL (Ix n) k // lowerLeftBlock g = 0 ∧ dBlk g = 1} *
        Nat.card {C : Matrix (Fin n) (Fin n) k // (Matrix.fromCols C D).rank = n} := by
  classical
  haveI : Fintype {C : Matrix (Fin n) (Fin n) k // (Matrix.fromCols C D).rank = n} := Fintype.ofFinite _
  let f : {g : GL (Ix n) k // dBlk g = D} → {C : Matrix (Fin n) (Fin n) k // (Matrix.fromCols C D).rank = n} :=
    fun g => ⟨lowerLeftBlock g.1, by have h := rank_lowH g.1; rw [lowH_eq, g.2] at h; exact h⟩
  have hfib : ∀ C, Nat.card {x // f x = C} = Nat.card {g : GL (Ix n) k // lowerLeftBlock g = 0 ∧ dBlk g = 1} := by
    intro C
    obtain ⟨g₀, hg₀⟩ := exists_lowH (Matrix.fromCols C.1 D) C.2
    rw [← card_fibre g₀]
    have hy : ∀ y : {g : GL (Ix n) k // lowH g = lowH g₀},
        Matrix.fromCols (lowerLeftBlock y.1) (dBlk y.1) = Matrix.fromCols C.1 D := by
      intro y
      rw [← lowH_eq, ← hg₀]
      exact y.2
    refine Nat.card_congr
      { toFun := fun x => ⟨x.1.1, ?_⟩
        invFun := fun y => ⟨⟨y.1, ?_⟩, ?_⟩
        left_inv := fun x => rfl
        right_inv := fun y => rfl }
    · rw [hg₀, lowH_eq, x.1.2, show lowerLeftBlock x.1.1 = C.1 from congrArg Subtype.val x.2]
    · exact (Matrix.fromCols_inj (hy y)).2
    · exact Subtype.ext (Matrix.fromCols_inj (hy y)).1
  rw [Nat.card_congr (Equiv.sigmaFiberEquiv f).symm, Nat.card_sigma,
    Finset.sum_congr rfl (fun C _ => hfib C), Finset.sum_const, smul_eq_mul, Finset.card_univ,
    ← Nat.card_eq_fintype_card, mul_comm]

end GlobalTheory.CompanionTheory.Jp.CntHalf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardFixedLowerRightBlock =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRankCompletionSymmetry =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRankCompletionSymmetry", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Rank\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\npublic import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Card\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\n\n"}
section -- clump:auto
@[expose] public section

open Matrix GlobalTheory.CompanionTheory.Jp

namespace GlobalTheory.CompanionTheory.Jp.CountRank

open Module

variable {k : Type} [Field k] [Fintype k]

theorem card_injective {U V : Type} [AddCommGroup U] [Module k U] [AddCommGroup V] [Module k V]
    [FiniteDimensional k U] [FiniteDimensional k V] {e n : ℕ}
    (hU : finrank k U = e) (hV : finrank k V = n) (he : e ≤ n) :
    Nat.card {g : U →ₗ[k] V // Function.Injective g} =
      ∏ j ∈ Finset.range e, (Fintype.card k ^ n - Fintype.card k ^ j) := by
  classical
  have : Finite V := Module.finite_of_finite k
  let b : Module.Basis (Fin e) k U := Module.finBasisOfFinrankEq k U hU
  have key : ∀ g : U →ₗ[k] V, Function.Injective g ↔ LinearIndependent k (g ∘ b) := by
    intro g
    constructor
    · intro hg
      exact b.linearIndependent.map' g (LinearMap.ker_eq_bot.mpr hg)
    · intro hli
      rw [← LinearMap.ker_eq_bot, Submodule.eq_bot_iff]
      intro x hx
      rw [LinearMap.mem_ker] at hx
      have hsum : ∑ i, (b.repr x i) • (g ∘ b) i = 0 := by
        have h0 : g (∑ i, (b.repr x i) • b i) = 0 := by rw [b.sum_repr]; exact hx

        rw [map_sum] at h0
        simpa only [Function.comp_apply, map_smul] using h0
      have hc := Fintype.linearIndependent_iff.mp hli _ hsum
      apply b.repr.injective
      ext i
      simp [hc i]
  have E : {g : U →ₗ[k] V // Function.Injective g} ≃ {s : Fin e → V // LinearIndependent k s} :=
    { toFun := fun g => ⟨g.1 ∘ b, (key g.1).mp g.2⟩
      invFun := fun s => ⟨b.constr k s.1, (key _).mpr (by
          have hs : (b.constr k s.1 : U → V) ∘ b = s.1 := by
            funext i
            simp
          rw [hs]
          exact s.2)⟩
      left_inv := fun g => Subtype.ext (b.ext fun i => by simp)
      right_inv := fun s => Subtype.ext (funext fun i => by simp) }
  rw [Nat.card_congr E, card_linearIndependent (K := k) (V := V) (k := e) (by omega), hV,
    Finset.prod_range (fun j => Fintype.card k ^ n - Fintype.card k ^ j)]

theorem card_ker_eq {V : Type} [AddCommGroup V] [Module k V] [FiniteDimensional k V]
    {n ρ : ℕ} (hV : finrank k V = n) (hρ : ρ ≤ n) (K : Submodule k V)
    (hK : finrank k K = n - ρ) :
    Nat.card {f : V →ₗ[k] V // LinearMap.ker f = K} =
      ∏ j ∈ Finset.range ρ, (Fintype.card k ^ n - Fintype.card k ^ j) := by
  classical
  have hQ : finrank k (V ⧸ K) = ρ := by
    have := Submodule.finrank_quotient_add_finrank K
    omega
  have E : {f : V →ₗ[k] V // LinearMap.ker f = K} ≃
      {g : (V ⧸ K) →ₗ[k] V // Function.Injective g} :=
    { toFun := fun f => ⟨K.liftQ f.1 (le_of_eq f.2.symm),
        LinearMap.ker_eq_bot.mp (Submodule.ker_liftQ_eq_bot _ _ _ (le_of_eq f.2))⟩
      invFun := fun g => ⟨g.1.comp K.mkQ, by
        rw [LinearMap.ker_comp, LinearMap.ker_eq_bot.mpr g.2, Submodule.comap_bot,
          Submodule.ker_mkQ]⟩
      left_inv := fun f => Subtype.ext (Submodule.liftQ_mkQ K f.1 _)
      right_inv := fun g => Subtype.ext (Submodule.linearMap_qext K (Submodule.liftQ_mkQ K _ _)) }
  rw [Nat.card_congr E]
  exact card_injective hQ hV (by omega)

theorem card_rank_eq {V : Type} [AddCommGroup V] [Module k V] [FiniteDimensional k V]
    {n ρ : ℕ} (hV : finrank k V = n) (hρ : ρ ≤ n) :
    Nat.card {f : V →ₗ[k] V // finrank k (LinearMap.range f) = ρ} =
      Nat.card {K : Submodule k V // finrank k K = n - ρ} *
        ∏ j ∈ Finset.range ρ, (Fintype.card k ^ n - Fintype.card k ^ j) := by
  classical
  have : Finite V := Module.finite_of_finite k
  have : Finite (V →ₗ[k] V) := Module.finite_of_finite k
  have : Finite (Submodule k V) :=
    Finite.of_injective (fun K : Submodule k V => (K : Set V)) SetLike.coe_injective
  letI : Fintype {K : Submodule k V // finrank k K = n - ρ} := Fintype.ofFinite _
  have E : {f : V →ₗ[k] V // finrank k (LinearMap.range f) = ρ} ≃
      Σ K : {K : Submodule k V // finrank k K = n - ρ},
        {f : V →ₗ[k] V // LinearMap.ker f = K.1} :=
    { toFun := fun f => ⟨⟨LinearMap.ker f.1, by
          have h1 := LinearMap.finrank_range_add_finrank_ker f.1
          have h2 := f.2
          omega⟩, ⟨f.1, rfl⟩⟩
      invFun := fun p => ⟨p.2.1, by
          have h1 := LinearMap.finrank_range_add_finrank_ker p.2.1
          have h2 := p.1.2
          have h3 := p.2.2
          rw [h3] at h1
          omega⟩
      left_inv := fun f => rfl
      right_inv := by
        rintro ⟨⟨K, hK⟩, ⟨f, hf⟩⟩
        dsimp only at hf
        subst hf
        rfl }
  rw [Nat.card_congr E, Nat.card_sigma,
    Finset.sum_congr rfl (fun a _ => card_ker_eq hV hρ a.1 a.2), Finset.sum_const,
    Finset.card_univ, smul_eq_mul,
    Nat.card_eq_fintype_card (α := {K : Submodule k V // finrank k K = n - ρ})]

theorem card_sub_le {V : Type} [AddCommGroup V] [Module k V] [FiniteDimensional k V]
    {n : ℕ} (hV : finrank k V = n) (d : ℕ) (hd : d ≤ n) :
    Nat.card {K : Submodule k V // finrank k K = d} ≤
      Nat.card {K : Submodule k V // finrank k K = n - d} := by
  classical
  have : Finite V := Module.finite_of_finite k
  have : Finite (Submodule k V) :=
    Finite.of_injective (fun K : Submodule k V => (K : Set V)) SetLike.coe_injective
  let eV : Module.Dual k V ≃ₗ[k] V := ((Module.finBasis k V).toDualEquiv).symm
  have hDual : ∀ K : Submodule k V,
      finrank k (K.dualAnnihilator) = finrank k V - finrank k K := by
    intro K
    have := Subspace.finrank_add_finrank_dualAnnihilator_eq K
    omega
  let F : {K : Submodule k V // finrank k K = d} → {K : Submodule k V // finrank k K = n - d} :=
    fun K => ⟨(K.1.dualAnnihilator).map (eV : Module.Dual k V →ₗ[k] V), by
      rw [LinearEquiv.finrank_map_eq, hDual, hV, K.2]⟩
  apply Nat.card_le_card_of_injective F
  intro K₁ K₂ h
  apply Subtype.ext
  have h1 : (K₁.1.dualAnnihilator).map (eV : Module.Dual k V →ₗ[k] V) =
      (K₂.1.dualAnnihilator).map (eV : Module.Dual k V →ₗ[k] V) := congrArg Subtype.val h
  have h2 := Submodule.map_injective_of_injective eV.injective h1
  exact Subspace.dualAnnihilator_inj.mp h2

theorem card_sub_symm {V : Type} [AddCommGroup V] [Module k V] [FiniteDimensional k V]
    {n : ℕ} (hV : finrank k V = n) (d : ℕ) (hd : d ≤ n) :
    Nat.card {K : Submodule k V // finrank k K = d} =
      Nat.card {K : Submodule k V // finrank k K = n - d} := by
  apply le_antisymm (card_sub_le hV d hd)
  have := card_sub_le hV (n - d) (Nat.sub_le n d)
  rwa [Nat.sub_sub_self hd] at this

theorem card_matrix_rank (n ρ : ℕ) :
    Nat.card {D : Matrix (Fin n) (Fin n) k // D.rank = ρ} =
      Nat.card {f : (Fin n → k) →ₗ[k] (Fin n → k) // finrank k (LinearMap.range f) = ρ} := by
  apply Nat.card_congr
  exact Equiv.subtypeEquiv
    (Matrix.toLin' : Matrix (Fin n) (Fin n) k ≃ₗ[k] ((Fin n → k) →ₗ[k] (Fin n → k))).toEquiv
    (fun D => by
      show D.rank = ρ ↔ finrank k (LinearMap.range (Matrix.toLin' D)) = ρ
      rw [Matrix.toLin'_apply', Matrix.finrank_range_mulVecLin])

theorem rank_symm (k : Type) [Field k] [Fintype k] (n ρ : ℕ) (h : ρ ≤ n) :
    Nat.card {D : Matrix (Fin n) (Fin n) k // D.rank = ρ} *
        ∏ j ∈ Finset.range (n - ρ), (Fintype.card k ^ n - Fintype.card k ^ j) =
      Nat.card {D : Matrix (Fin n) (Fin n) k // D.rank = n - ρ} *
        ∏ j ∈ Finset.range ρ, (Fintype.card k ^ n - Fintype.card k ^ j) := by
  have hV : finrank k (Fin n → k) = n := Module.finrank_fin_fun k
  rw [card_matrix_rank, card_matrix_rank, card_rank_eq hV h, card_rank_eq hV (Nat.sub_le n ρ),
    Nat.sub_sub_self h, card_sub_symm hV ρ h]
  ring

end GlobalTheory.CompanionTheory.Jp.CountRank
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRankCompletionSymmetry =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRankLowerLeftEqLowerRight =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRankLowerLeftEqLowerRight", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix GlobalTheory.CompanionTheory.Jp

namespace GlobalTheory.CompanionTheory.Jp.CntSwap

def swapW (k : Type) [Field k] (n : ℕ) : GL (Ix n) k :=
  ⟨fromBlocks 0 1 1 0, fromBlocks 0 1 1 0,
    by simp [fromBlocks_multiply, fromBlocks_one],
    by simp [fromBlocks_multiply, fromBlocks_one]⟩

lemma lowerRightBlock_mul_block_swap {k : Type} [Field k] {n : ℕ} (g : GL (Ix n) k) :
    dBlk (g * swapW k n) = lowerLeftBlock g := by
  show (g.1 * fromBlocks 0 1 1 0).toBlocks₂₂ = g.1.toBlocks₂₁
  conv_lhs => rw [← fromBlocks_toBlocks g.1]
  rw [fromBlocks_multiply]
  simp

theorem card_lower_left_rank_eq_card_lower_right_rank : ∀ (k : Type) [Field k] [Fintype k] (n i : ℕ),
    Nat.card {g : GL (Ix n) k // (lowerLeftBlock g).rank = i} = Nat.card {g : GL (Ix n) k // (dBlk g).rank = i} := by
  intro k _ _ n i
  exact Nat.card_congr ((Equiv.mulRight (swapW k n)).subtypeEquiv (fun g => by
    rw [Equiv.coe_mulRight, lowerRightBlock_mul_block_swap]))

end GlobalTheory.CompanionTheory.Jp.CntSwap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRankLowerLeftEqLowerRight =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSquareCongruenceConjugation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSquareCongruenceConjugation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix GlobalTheory.CompanionTheory.Jp

namespace GlobalTheory.CompanionTheory.Jp.Twist

theorem block_twist {O L : Type} [CommRing O] [Field L] [Algebra O L] {n : ℕ} (ϖ : O) (w : L)
    (hw : w = algebraMap O L ϖ) (A B C D : Matrix (Fin n) (Fin n) O) :
    (fromBlocks A B (ϖ • C) D).map (algebraMap O L) *
        fromBlocks (1 : Matrix (Fin n) (Fin n) L) 0 0 (w • 1) =
      fromBlocks (1 : Matrix (Fin n) (Fin n) L) 0 0 (w • 1) *
        (fromBlocks A (ϖ • B) C D).map (algebraMap O L) := by
  subst hw
  rw [fromBlocks_map, fromBlocks_map, fromBlocks_multiply, fromBlocks_multiply, fromBlocks_inj]
  refine ⟨?_, ?_, ?_, ?_⟩ <;> ext i j <;>
    simp [smul_eq_mul] <;> simp [Algebra.smul_def]

theorem twist_gam : ∀ (O L : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field L] [Algebra O L] [IsFractionRing O L]
    (n : ℕ) (ϖ : O), Irreducible ϖ → ∀ w : Lˣ, (w : L) = algebraMap O L ϖ → ∀ γ ∈ Gam2 (n := n) ϖ,
      ∃ j' : GL (Ix n) O, inL γ * tauM w = tauM w * inL j' ∧ resK j' = 1 := by
  intro O L _ _ _ _ _ _ n ϖ hϖ w hw γ hγ
  have hγ' : ∀ i j, (γ : Matrix (Ix n) (Ix n) O) i j - (1 : Matrix (Ix n) (Ix n) O) i j ∈
      Ideal.span {ϖ ^ 2} := by
    intro i j
    rw [← Ideal.Quotient.eq]
    have := congrArg (fun u : GL (Ix n) (O ⧸ Ideal.span {ϖ ^ 2}) => u.1 i j)
      (MonoidHom.mem_ker.1 hγ)
    simpa [Matrix.one_apply, apply_ite] using this
  have hϖm : ϖ ∈ IsLocalRing.maximalIdeal O := (IsLocalRing.mem_maximalIdeal ϖ).2 hϖ.not_isUnit
  have hm : Ideal.span {ϖ ^ 2} ≤ IsLocalRing.maximalIdeal O :=
    (Ideal.span_singleton_le_span_singleton.2 (dvd_pow_self ϖ two_ne_zero)).trans
      ((Ideal.span_singleton_le_iff_mem _).2 hϖm)
  have hC : ∀ i j, ∃ c, (γ : Matrix (Ix n) (Ix n) O) (Sum.inr i) (Sum.inl j) = ϖ * (ϖ * c) := by
    intro i j
    have h0 := hγ' (Sum.inr i) (Sum.inl j)
    simp only [Matrix.one_apply, reduceCtorEq, if_false, sub_zero] at h0
    obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 h0
    exact ⟨c, by rw [← hc]; ring⟩
  choose C hCe using hC
  obtain ⟨M, hM⟩ : ∃ M : Matrix (Ix n) (Ix n) O, M = fromBlocks (γ : Matrix (Ix n) (Ix n) O).toBlocks₁₁
      (ϖ • (γ : Matrix (Ix n) (Ix n) O).toBlocks₁₂) (ϖ • Matrix.of C)
      (γ : Matrix (Ix n) (Ix n) O).toBlocks₂₂ := ⟨_, rfl⟩
  have hγM : (γ : Matrix (Ix n) (Ix n) O) = fromBlocks (γ : Matrix (Ix n) (Ix n) O).toBlocks₁₁
      (γ : Matrix (Ix n) (Ix n) O).toBlocks₁₂ (ϖ • (ϖ • Matrix.of C))
      (γ : Matrix (Ix n) (Ix n) O).toBlocks₂₂ := by
    ext i j
    rcases i with i | i <;> rcases j with j | j <;>
      simp [Matrix.toBlocks₁₁, Matrix.toBlocks₁₂, Matrix.toBlocks₂₂, hCe]
  have hsc : Matrix.scalar (Fin n) (w : L) = (w : L) • (1 : Matrix (Fin n) (Fin n) L) := by
    rw [Matrix.scalar_apply, Matrix.smul_one_eq_diagonal]
  have hrel : (γ : Matrix (Ix n) (Ix n) O).map (algebraMap O L) *
        fromBlocks (1 : Matrix (Fin n) (Fin n) L) 0 0 (Matrix.scalar (Fin n) (w : L)) =
      fromBlocks (1 : Matrix (Fin n) (Fin n) L) 0 0 (Matrix.scalar (Fin n) (w : L)) *
        M.map (algebraMap O L) := by
    rw [hsc, hM]
    conv_lhs => rw [hγM]
    exact block_twist ϖ (w : L) hw _ _ _ _
  have hτ : (fromBlocks (1 : Matrix (Fin n) (Fin n) L) 0 0 (Matrix.scalar (Fin n) (w : L))).det ≠ 0 := by
    rw [Matrix.det_fromBlocks_zero₂₁, hsc, Matrix.det_smul, Matrix.det_one]
    simp
  have hdetM : M.det = (γ : Matrix (Ix n) (Ix n) O).det := by
    have h1 := congrArg Matrix.det hrel
    rw [Matrix.det_mul, Matrix.det_mul, mul_comm] at h1
    have h2 := mul_left_cancel₀ hτ h1
    rw [← RingHom.mapMatrix_apply, ← RingHom.mapMatrix_apply, ← RingHom.map_det,
      ← RingHom.map_det] at h2
    exact (IsFractionRing.injective O L h2).symm
  have hdet : IsUnit M.det := by
    rw [hdetM]
    exact Matrix.isUnits_det_units γ
  have hMm : ∀ i j, M i j - (1 : Matrix (Ix n) (Ix n) O) i j ∈ IsLocalRing.maximalIdeal O := by
    intro i j
    rw [hM]
    rcases i with i | i <;> rcases j with j | j
    · simpa [Matrix.toBlocks₁₁] using hm (hγ' (Sum.inl i) (Sum.inl j))
    · simpa using Ideal.mul_mem_right _ _ hϖm
    · simpa using Ideal.mul_mem_right _ _ hϖm
    · simpa [Matrix.toBlocks₂₂] using hm (hγ' (Sum.inr i) (Sum.inr j))
  refine ⟨Matrix.nonsingInvUnit M hdet, Units.ext ?_, Units.ext ?_⟩
  · exact hrel
  · have h3 : M.map (IsLocalRing.residue O) = (1 : Matrix (Ix n) (Ix n) O).map (IsLocalRing.residue O) := by
      ext i j
      exact Ideal.Quotient.eq.2 (hMm i j)
    rw [Matrix.map_one _ (map_zero _) (map_one _)] at h3
    exact h3

end GlobalTheory.CompanionTheory.Jp.Twist
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSquareCongruenceConjugation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ParabolicDoubleCosetOfEqualCorank =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ParabolicDoubleCosetOfEqualCorank", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix GlobalTheory.CompanionTheory.Jp Module

namespace GlobalTheory.CompanionTheory.Jp.Dbl

variable {k : Type} [Field k]

theorem glue {X₁ X₂ : Type} [AddCommGroup X₁] [Module k X₁] [AddCommGroup X₂] [Module k X₂]
    {Y₁ Z₁ : Submodule k X₁} {Y₂ Z₂ : Submodule k X₂} (h₁ : IsCompl Y₁ Z₁) (h₂ : IsCompl Y₂ Z₂)
    (u : Y₁ ≃ₗ[k] Y₂) (v : Z₁ ≃ₗ[k] Z₂) :
    ∃ e : X₁ ≃ₗ[k] X₂, (∀ y : Y₁, e y = u y) ∧ ∀ z : Z₁, e z = v z := by
  refine ⟨(Submodule.prodEquivOfIsCompl Y₁ Z₁ h₁).symm ≪≫ₗ (u.prodCongr v) ≪≫ₗ
    Submodule.prodEquivOfIsCompl Y₂ Z₂ h₂, ?_, ?_⟩
  · intro y; simp
  · intro z; simp

theorem exists_equiv_pair {X₁ X₂ : Type} [AddCommGroup X₁] [Module k X₁] [AddCommGroup X₂] [Module k X₂]
    [FiniteDimensional k X₁] [FiniteDimensional k X₂] (hX : finrank k X₁ = finrank k X₂)
    (Y₁ : Submodule k X₁) (Y₂ : Submodule k X₂) (hY : finrank k Y₁ = finrank k Y₂) :
    ∃ e : X₁ ≃ₗ[k] X₂, ∀ y ∈ Y₁, e y ∈ Y₂ := by
  obtain ⟨Z₁, h₁⟩ := Submodule.exists_isCompl Y₁
  obtain ⟨Z₂, h₂⟩ := Submodule.exists_isCompl Y₂
  have a₁ := Submodule.finrank_add_eq_of_isCompl h₁
  have a₂ := Submodule.finrank_add_eq_of_isCompl h₂
  obtain ⟨e, he, -⟩ := glue h₁ h₂ (LinearEquiv.ofFinrankEq _ _ hY)
    (LinearEquiv.ofFinrankEq _ _ (by omega))
  refine ⟨e, fun y hy => ?_⟩
  have := he ⟨y, hy⟩
  simp only at this
  rw [this]
  exact Subtype.property _

variable {V : Type} [AddCommGroup V] [Module k V]

theorem exists_rel_compl (S T : Submodule k V) :
    ∃ A : Submodule k V, Disjoint S A ∧ (S ⊓ T) ⊔ A = T := by
  obtain ⟨C, hC⟩ := Submodule.exists_isCompl (S ⊓ T)
  refine ⟨C ⊓ T, ?_, ?_⟩
  · rw [Submodule.disjoint_def]
    intro x hS hx
    have : x ∈ (S ⊓ T) ⊓ C := ⟨⟨hS, hx.2⟩, hx.1⟩
    rw [hC.inf_eq_bot] at this
    simpa using this
  · rw [← sup_inf_assoc_of_le C (inf_le_right : S ⊓ T ≤ T), hC.sup_eq_top, top_inf_eq]

theorem exists_compl_ge (S A : Submodule k V) (h : Disjoint S A) :
    ∃ R : Submodule k V, IsCompl S R ∧ A ≤ R := by
  obtain ⟨Q, hQ⟩ := Submodule.exists_isCompl (S ⊔ A)
  refine ⟨A ⊔ Q, ⟨?_, ?_⟩, le_sup_left⟩
  · rw [Submodule.disjoint_def]
    intro x hS hx
    obtain ⟨a, ha, q, hq, rfl⟩ := Submodule.mem_sup.1 hx
    have hq' : q ∈ (S ⊔ A) ⊓ Q := by
      refine ⟨?_, hq⟩
      have : q = (a + q) + (-a) := by abel
      rw [this]
      exact Submodule.add_mem _ (Submodule.mem_sup_left hS)
        (Submodule.neg_mem _ (Submodule.mem_sup_right ha))
    rw [hQ.inf_eq_bot, Submodule.mem_bot] at hq'
    subst hq'
    rw [add_zero] at hS ⊢
    exact (Submodule.disjoint_def.1 h) a hS ha
  · rw [codisjoint_iff, ← sup_assoc, hQ.sup_eq_top]

theorem exists_equiv_triple [FiniteDimensional k V] (S T₁ T₂ : Submodule k V)
    (hT : finrank k T₁ = finrank k T₂) (hI : finrank k ↥(S ⊓ T₁) = finrank k ↥(S ⊓ T₂)) :
    ∃ e : V ≃ₗ[k] V, (∀ s ∈ S, e s ∈ S) ∧ ∀ t ∈ T₁, e t ∈ T₂ := by
  obtain ⟨A₁, d₁, s₁⟩ := exists_rel_compl S T₁
  obtain ⟨A₂, d₂, s₂⟩ := exists_rel_compl S T₂
  obtain ⟨R₁, c₁, l₁⟩ := exists_compl_ge S A₁ d₁
  obtain ⟨R₂, c₂, l₂⟩ := exists_compl_ge S A₂ d₂
  have dimA : ∀ (T A : Submodule k V), Disjoint S A → (S ⊓ T) ⊔ A = T →
      finrank k ↥(S ⊓ T) + finrank k A = finrank k T := by
    intro T A d s
    have := Submodule.finrank_sup_add_finrank_inf_eq (S ⊓ T) A
    have hb : (S ⊓ T) ⊓ A = ⊥ :=
      le_bot_iff.1 ((inf_le_inf_right A inf_le_left).trans d.le_bot)
    rw [s, hb, finrank_bot, add_zero] at this
    exact this.symm
  have a₁ := dimA T₁ A₁ d₁ s₁
  have a₂ := dimA T₂ A₂ d₂ s₂
  have r₁ := Submodule.finrank_add_eq_of_isCompl c₁
  have r₂ := Submodule.finrank_add_eq_of_isCompl c₂
  have cS : ∀ T : Submodule k V, finrank k (Submodule.comap S.subtype (S ⊓ T)) = finrank k ↥(S ⊓ T) :=
    fun T => LinearEquiv.finrank_eq (Submodule.comapSubtypeEquivOfLe inf_le_left)
  obtain ⟨eS, hS⟩ := exists_equiv_pair (X₁ := S) (X₂ := S) rfl
    (Submodule.comap S.subtype (S ⊓ T₁)) (Submodule.comap S.subtype (S ⊓ T₂))
    (by rw [cS, cS, hI])
  have f₁ : finrank k (Submodule.comap R₁.subtype A₁) = finrank k A₁ :=
    LinearEquiv.finrank_eq (Submodule.comapSubtypeEquivOfLe l₁)
  have f₂ : finrank k (Submodule.comap R₂.subtype A₂) = finrank k A₂ :=
    LinearEquiv.finrank_eq (Submodule.comapSubtypeEquivOfLe l₂)
  obtain ⟨eR, hR⟩ := exists_equiv_pair (X₁ := R₁) (X₂ := R₂) (by omega)
    (Submodule.comap R₁.subtype A₁) (Submodule.comap R₂.subtype A₂) (by omega)
  obtain ⟨e, he₁, he₂⟩ := glue c₁ c₂ eS eR
  refine ⟨e, fun s hs => ?_, fun t ht => ?_⟩
  · have e₀ : e s = eS ⟨s, hs⟩ := he₁ ⟨s, hs⟩
    rw [e₀]
    exact Subtype.property _
  · rw [← s₁] at ht
    obtain ⟨p, hp, a, ha, rfl⟩ := Submodule.mem_sup.1 ht
    rw [map_add (f := _)]
    have e₁ : e p = eS ⟨p, hp.1⟩ := he₁ ⟨p, hp.1⟩
    have e₂ : e a = eR ⟨a, l₁ ha⟩ := he₂ ⟨a, l₁ ha⟩
    have m₁ : (eS ⟨p, hp.1⟩ : V) ∈ S ⊓ T₂ := hS ⟨p, hp.1⟩ hp
    have m₂ : (eR ⟨a, l₁ ha⟩ : V) ∈ A₂ := hR ⟨a, l₁ ha⟩ ha
    rw [e₁, e₂, ← s₂]
    exact Submodule.add_mem_sup m₁ m₂

variable {n : ℕ}

def incR : (Fin n → k) →ₗ[k] (Ix n → k) where
  toFun w := Sum.elim 0 w
  map_add' x y := by ext (i | i) <;> simp
  map_smul' c x := by ext (i | i) <;> simp

def sS : Submodule k (Ix n → k) := LinearMap.ker (LinearMap.funLeft k k (Sum.inr : Fin n → Ix n))

theorem mem_sS {v : Ix n → k} : v ∈ sS (k := k) (n := n) ↔ ∀ j, v (Sum.inr j) = 0 := by
  simp [sS, LinearMap.mem_ker, funext_iff, LinearMap.funLeft_apply]

def phi (g : GL (Ix n) k) : (Fin n → k) →ₗ[k] (Ix n → k) := g.1.mulVecLin ∘ₗ incR

theorem phi_inj (g : GL (Ix n) k) : Function.Injective (phi g) := by
  intro x y h
  have h1 : g.1 *ᵥ incR x = g.1 *ᵥ incR y := h
  have h2 : incR x = incR y := by
    have := congrArg (fun v => (g⁻¹).1 *ᵥ v) h1
    simpa [Matrix.mulVec_mulVec] using this
  ext i
  exact congrFun h2 (Sum.inr i)

theorem phi_inr (g : GL (Ix n) k) (w : Fin n → k) (j : Fin n) :
    phi g w (Sum.inr j) = ((dBlk g).mulVecLin w) j := by
  simp [phi, incR, Matrix.mulVec, dotProduct, Fintype.sum_sum_type, dBlk, Matrix.toBlocks₂₂]

theorem hodgeTateLatticePoint_finrank_tateModule (g : GL (Ix n) k) : finrank k (LinearMap.range (phi g)) = n := by
  rw [LinearMap.finrank_range_of_inj (phi_inj g)]; simp

theorem finrank_inf (g : GL (Ix n) k) :
    finrank k ↥(sS (k := k) (n := n) ⊓ LinearMap.range (phi g)) + (dBlk g).rank = n := by
  have h : sS (k := k) (n := n) ⊓ LinearMap.range (phi g) =
      (LinearMap.ker (dBlk g).mulVecLin).map (phi g) := by
    ext v
    constructor
    · rintro ⟨hs, w, rfl⟩
      refine ⟨w, ?_, rfl⟩
      rw [SetLike.mem_coe, LinearMap.mem_ker]
      ext j
      rw [← phi_inr]
      exact mem_sS.1 hs j
    · rintro ⟨w, hw, rfl⟩
      refine ⟨mem_sS.2 fun j => ?_, w, rfl⟩
      rw [phi_inr, (LinearMap.mem_ker.1 hw)]
      rfl
  rw [h, ← LinearEquiv.finrank_eq (Submodule.equivMapOfInjective _ (phi_inj g) _)]
  have := LinearMap.finrank_range_add_finrank_ker (dBlk g).mulVecLin
  simp only [finrank_fin_fun] at this
  have hr : (dBlk g).rank = finrank k (LinearMap.range (dBlk g).mulVecLin) := (Matrix.finrank_range_mulVecLin _).symm
  omega

theorem exists_pM (E : GL (Ix n) k) (h : E.1.toBlocks₂₁ = 0) :
    ∃ (a d : GL (Fin n) k) (b : Matrix (Fin n) (Fin n) k), E = pM a d b := by
  have hE : E.1 = fromBlocks E.1.toBlocks₁₁ E.1.toBlocks₁₂ 0 E.1.toBlocks₂₂ := by
    rw [← h, fromBlocks_toBlocks]
  have hdet : E.1.toBlocks₁₁.det * E.1.toBlocks₂₂.det ≠ 0 := by
    rw [← det_fromBlocks_zero₂₁ _ E.1.toBlocks₁₂, ← hE]
    exact (Matrix.isUnits_det_units E).ne_zero
  refine ⟨Matrix.GeneralLinearGroup.mkOfDetNeZero _ (left_ne_zero_of_mul hdet),
    Matrix.GeneralLinearGroup.mkOfDetNeZero _ (right_ne_zero_of_mul hdet), E.1.toBlocks₁₂, ?_⟩
  apply Units.ext
  exact hE

theorem pM_inv (a d : GL (Fin n) k) (b : Matrix (Fin n) (Fin n) k) :
    (pM a d b)⁻¹ = pM a⁻¹ d⁻¹ (-((a⁻¹).1 * b * (d⁻¹).1)) := by
  apply Units.ext
  rfl

theorem main : ∀ (k : Type) [Field k] (n : ℕ) (g₁ g₂ : GL (Ix n) k), iD g₁ = iD g₂ →
    ∃ (a d : GL (Fin n) k) (b : Matrix (Fin n) (Fin n) k) (x : GL (Ix n) k),
      x.1.toBlocks₁₂ = 0 ∧ g₂ = pM a d b * g₁ * x := by
  intro k _ n g₁ g₂ h
  have hr : (dBlk g₁).rank = (dBlk g₂).rank := by
    have h1 := (dBlk g₁).rank_le_height
    have h2 := (dBlk g₂).rank_le_height
    unfold iD at h
    omega
  obtain ⟨e, heS, heT⟩ := exists_equiv_triple (sS (k := k) (n := n))
    (LinearMap.range (phi g₂)) (LinearMap.range (phi g₁))
    (by rw [hodgeTateLatticePoint_finrank_tateModule, hodgeTateLatticePoint_finrank_tateModule])
    (by have := finrank_inf g₁; have := finrank_inf g₂; omega)
  let E : GL (Ix n) k :=
    ⟨LinearMap.toMatrix' e.toLinearMap, LinearMap.toMatrix' e.symm.toLinearMap,
      by rw [← LinearMap.toMatrix'_comp]; simp,
      by rw [← LinearMap.toMatrix'_comp]; simp⟩
  have hE : ∀ v, E.1 *ᵥ v = e v := fun v => LinearMap.toMatrix'_mulVec _ _
  have h21 : E.1.toBlocks₂₁ = 0 := by
    ext i j
    have hs : (Pi.single (Sum.inl j) 1 : Ix n → k) ∈ sS (k := k) (n := n) :=
      mem_sS.2 fun l => by simp
    have := mem_sS.1 (heS _ hs) i
    rw [← hE, Matrix.mulVec_single_one] at this
    exact this
  obtain ⟨a, d, b, hp⟩ := exists_pM E h21
  refine ⟨a⁻¹, d⁻¹, -((a⁻¹).1 * b * (d⁻¹).1), g₁⁻¹ * E * g₂, ?_, ?_⟩
  · ext i j
    have hw : ∀ w : Fin n → k, ∃ w', g₁.1 *ᵥ incR w' = E.1 *ᵥ (g₂.1 *ᵥ incR w) := by
      intro w
      obtain ⟨w', hw'⟩ := heT (phi g₂ w) ⟨w, rfl⟩
      exact ⟨w', by rw [hE]; exact hw'⟩
    obtain ⟨w', hw'⟩ := hw (Pi.single j 1)
    have hs : (incR (Pi.single j 1) : Ix n → k) = Pi.single (Sum.inr j) 1 := by
      ext (l | l) <;> simp [incR, Pi.single_apply]
    have hx : (g₁⁻¹ * E * g₂).1 *ᵥ (Pi.single (Sum.inr j) 1) = incR w' := by
      rw [← hs]
      have : (g₁⁻¹ * E * g₂).1 = (g₁⁻¹).1 * E.1 * g₂.1 := rfl
      rw [this, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, ← hw', Matrix.mulVec_mulVec]
      simp
    have := congrFun hx (Sum.inl i)
    rw [Matrix.mulVec_single_one] at this
    simpa [incR, Matrix.toBlocks₁₂] using this
  · rw [← pM_inv, ← hp]
    group

end GlobalTheory.CompanionTheory.Jp.Dbl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ParabolicDoubleCosetOfEqualCorank =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ReductionCorankEqRankLowerLeft =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ReductionCorankEqRankLowerLeft", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Matrix GlobalTheory.CompanionTheory.Jp

noncomputable section

namespace GlobalTheory.CompanionTheory.Jp.RedRank

theorem rank_add_rank_eq {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {n : ℕ} {ϖ : O}
    (hϖ : Irreducible ϖ) (d E : Matrix (Fin n) (Fin n) O) (hdE : d * E = ϖ • (1 : Matrix (Fin n) (Fin n) O))
    (hEd : E * d = ϖ • (1 : Matrix (Fin n) (Fin n) O)) :
    (d.map (IsLocalRing.residue O)).rank + (E.map (IsLocalRing.residue O)).rank = n := by
  have hmax : IsLocalRing.maximalIdeal O = Ideal.span {ϖ} :=
    IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ |>.1 hϖ
  have hres : IsLocalRing.residue O ϖ = 0 := by
    rw [IsLocalRing.residue_eq_zero_iff, hmax]
    exact Ideal.mem_span_singleton_self ϖ
  have hzero : d.map (IsLocalRing.residue O) * E.map (IsLocalRing.residue O) = 0 := by
    rw [← Matrix.map_mul, hdE]
    ext i j
    simp [hres]
  have hker : LinearMap.ker (d.map (IsLocalRing.residue O)).mulVecLin =
      LinearMap.range (E.map (IsLocalRing.residue O)).mulVecLin := by
    ext x
    constructor
    · intro hx
      have hx' : (d.map (IsLocalRing.residue O)) *ᵥ x = 0 := by simpa using hx
      choose x₀ hx₀ using fun i => IsLocalRing.residue_surjective (x i)
      have hxc : (IsLocalRing.residue O) ∘ x₀ = x := funext hx₀
      have hmem : ∀ i, ∃ y : O, y * ϖ = (d *ᵥ x₀) i := by
        intro i
        have h0 : IsLocalRing.residue O ((d *ᵥ x₀) i) = 0 := by
          rw [RingHom.map_mulVec, hxc, hx']
          rfl
        rw [IsLocalRing.residue_eq_zero_iff, hmax] at h0
        exact Ideal.mem_span_singleton'.1 h0
      choose y hy using hmem
      have hdx : d *ᵥ x₀ = ϖ • y := by
        ext i
        simp [← hy i, mul_comm]
      have hEx : ϖ • x₀ = ϖ • (E *ᵥ y) := by
        have h1 : E *ᵥ (d *ᵥ x₀) = ϖ • x₀ := by
          rw [Matrix.mulVec_mulVec, hEd, Matrix.smul_mulVec, Matrix.one_mulVec]
        rw [← h1, hdx, Matrix.mulVec_smul]
      have hxE : x₀ = E *ᵥ y := smul_right_injective _ hϖ.ne_zero hEx
      refine ⟨(IsLocalRing.residue O) ∘ y, ?_⟩
      ext i
      simp only [Matrix.mulVecLin_apply]
      rw [← RingHom.map_mulVec, ← hxE]
      exact hx₀ i
    · rintro ⟨y, rfl⟩
      simp [Matrix.mulVec_mulVec, hzero]
  have hrn := LinearMap.finrank_range_add_finrank_ker (d.map (IsLocalRing.residue O)).mulVecLin
  rw [hker] at hrn
  simpa [← Matrix.finrank_range_mulVecLin] using hrn

theorem low_rows {R : Type} [CommRing R] {n : ℕ} (g : GL (Ix n) R) :
    lowerLeftBlock g * (g⁻¹).1.toBlocks₁₂ + dBlk g * (g⁻¹).1.toBlocks₂₂ = 1 := by
  have h : g.1 * (g⁻¹).1 = 1 := by rw [← Units.val_mul]; simp
  have e : fromBlocks g.1.toBlocks₁₁ g.1.toBlocks₁₂ g.1.toBlocks₂₁ g.1.toBlocks₂₂ *
      fromBlocks (g⁻¹).1.toBlocks₁₁ (g⁻¹).1.toBlocks₁₂ (g⁻¹).1.toBlocks₂₁ (g⁻¹).1.toBlocks₂₂ = 1 := by
    rw [fromBlocks_toBlocks, fromBlocks_toBlocks]; exact h
  rw [fromBlocks_multiply, ← fromBlocks_one] at e
  exact (Matrix.fromBlocks_inj.1 e).2.2.2

theorem scM_val {L : Type} [Field L] {n : ℕ} (w : Lˣ) : (scM (n := n) w).1 = (w : L) • (1 : Matrix (Fin n) (Fin n) L) := by
  ext i j
  simp [scM, Matrix.one_apply, Matrix.diagonal_apply]

theorem low_eq {L : Type} [Field L] {n : ℕ} (x : L) (X Y : Matrix (Ix n) (Ix n) L) (a b d : Matrix (Fin n) (Fin n) L)
    (h : X * fromBlocks 1 0 0 (x • (1 : Matrix (Fin n) (Fin n) L)) = fromBlocks a b 0 d * Y) :
    X.toBlocks₂₁ = d * Y.toBlocks₂₁ ∧ x • X.toBlocks₂₂ = d * Y.toBlocks₂₂ := by
  have e : fromBlocks X.toBlocks₁₁ X.toBlocks₁₂ X.toBlocks₂₁ X.toBlocks₂₂ *
        fromBlocks 1 0 0 (x • (1 : Matrix (Fin n) (Fin n) L)) =
      fromBlocks a b 0 d * fromBlocks Y.toBlocks₁₁ Y.toBlocks₁₂ Y.toBlocks₂₁ Y.toBlocks₂₂ := by
    rw [fromBlocks_toBlocks, fromBlocks_toBlocks]; exact h
  rw [fromBlocks_multiply, fromBlocks_multiply] at e
  obtain ⟨-, -, h3, h4⟩ := Matrix.fromBlocks_inj.1 e
  simp only [Matrix.mul_one, Matrix.mul_zero, add_zero, zero_add, Matrix.zero_mul, Matrix.mul_smul] at h3 h4
  exact ⟨h3, h4⟩

theorem exists_integral {O L : Type} [CommRing O] [Field L] (ι : O →+* L) (hι : Function.Injective ι) {n : ℕ} (ϖ : O)
    (C D C' D' Bi Di Bi' Di' : Matrix (Fin n) (Fin n) O) (h1 : C * Bi + D * Di = 1) (h2 : C' * Bi' + D' * Di' = 1)
    (dL dLi : Matrix (Fin n) (Fin n) L) (hd : dL * dLi = 1) (hd' : dLi * dL = 1)
    (hC : C.map ι = dL * C'.map ι) (hD : ι ϖ • D.map ι = dL * D'.map ι) :
    (C * Bi' + ϖ • (D * Di')) * (ϖ • (C' * Bi) + D' * Di) = ϖ • (1 : Matrix (Fin n) (Fin n) O) ∧
    (ϖ • (C' * Bi) + D' * Di) * (C * Bi' + ϖ • (D * Di')) = ϖ • (1 : Matrix (Fin n) (Fin n) O) ∧
    C = (C * Bi' + ϖ • (D * Di')) * C' ∧ (ϖ • (C' * Bi) + D' * Di) * D = D' := by
  have hinj : Function.Injective (ι.mapMatrix (m := Fin n)) := fun A B h => by
    ext i j
    exact hι (congrFun (congrFun h i) j)
  have hs : ∀ M : Matrix (Fin n) (Fin n) O, ι.mapMatrix (ϖ • M) = ι ϖ • ι.mapMatrix M := by
    intro M; ext i j; simp
  have hC' : ι.mapMatrix C = dL * ι.mapMatrix C' := hC
  have hD' : ι ϖ • ι.mapMatrix D = dL * ι.mapMatrix D' := hD
  have h1' : ι.mapMatrix C * ι.mapMatrix Bi + ι.mapMatrix D * ι.mapMatrix Di = 1 := by
    rw [← map_mul, ← map_mul, ← map_add (f := _), h1, map_one]
  have h2' : ι.mapMatrix C' * ι.mapMatrix Bi' + ι.mapMatrix D' * ι.mapMatrix Di' = 1 := by
    rw [← map_mul, ← map_mul, ← map_add (f := _), h2, map_one]
  have hCi : ι.mapMatrix C' = dLi * ι.mapMatrix C := by
    rw [hC', ← Matrix.mul_assoc, hd', Matrix.one_mul]
  have hDi : ι.mapMatrix D' = ι ϖ • (dLi * ι.mapMatrix D) := by
    rw [← Matrix.mul_smul, hD', ← Matrix.mul_assoc, hd', Matrix.one_mul]
  have hF : ι.mapMatrix (C * Bi' + ϖ • (D * Di')) = dL := by
    rw [map_add (f := _), hs, map_mul, map_mul, hC', ← Matrix.smul_mul, hD', Matrix.mul_assoc, Matrix.mul_assoc, ← Matrix.mul_add,
      h2', Matrix.mul_one]
  have hG : ι.mapMatrix (ϖ • (C' * Bi) + D' * Di) = ι ϖ • dLi := by
    rw [map_add (f := _), hs, map_mul, map_mul, hCi, hDi, Matrix.smul_mul, Matrix.mul_assoc, Matrix.mul_assoc, ← smul_add,
      ← Matrix.mul_add, h1', Matrix.mul_one]
  refine ⟨hinj ?_, hinj ?_, hinj ?_, hinj ?_⟩
  · rw [map_mul, hF, hG, hs, map_one, Matrix.mul_smul, hd]
  · rw [map_mul, hF, hG, hs, map_one, Matrix.smul_mul, hd']
  · rw [map_mul, hF, hC']
  · rw [map_mul, hG, Matrix.smul_mul, hDi]

theorem iD_eq_rank : ∀ (O L : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field L] [Algebra O L] [IsFractionRing O L]
    (n : ℕ) (ϖ : O), Irreducible ϖ → ∀ w : Lˣ, (w : L) = algebraMap O L ϖ →
    ∀ (κ : GL (Ix n) O) (h : GL (Ix n) (IsLocalRing.ResidueField O)), IsRed (O := O) w κ h →
      iD h = (lowerLeftBlock (resK κ)).rank := by
  intro O L _ _ _ _ _ _ n ϖ hϖ w hw κ h hred
  obtain ⟨a, d, b, κ', hEq, rfl⟩ := hred
  have hv := congrArg Units.val hEq
  have hlow := low_eq (w : L) (κ.1.map (algebraMap O L)) (κ'.1.map (algebraMap O L)) a.1 b d.1 (by
    have : (tauM (n := n) w).1 = fromBlocks 1 0 0 ((w : L) • (1 : Matrix (Fin n) (Fin n) L)) := by
      simp [tauM, pM, scM_val]
    rw [← this]
    exact hv)
  have hres : IsLocalRing.residue O ϖ = 0 := by
    rw [IsLocalRing.residue_eq_zero_iff, IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ |>.1 hϖ]
    exact Ideal.mem_span_singleton_self ϖ
  obtain ⟨e1, e2, e3, e4⟩ := exists_integral (algebraMap O L) (IsFractionRing.injective O L) ϖ
    (lowerLeftBlock κ) (dBlk κ) (lowerLeftBlock κ') (dBlk κ') (κ⁻¹).1.toBlocks₁₂ (κ⁻¹).1.toBlocks₂₂ (κ'⁻¹).1.toBlocks₁₂ (κ'⁻¹).1.toBlocks₂₂
    (low_rows κ) (low_rows κ') d.1 (d⁻¹).1 (by rw [← Units.val_mul]; simp) (by rw [← Units.val_mul]; simp)
    hlow.1 (by rw [← hw]; exact hlow.2)
  have hn := rank_add_rank_eq hϖ _ _ e1 e2
  set R := (IsLocalRing.residue O).mapMatrix (m := Fin n) with hR
  have hsz : ∀ M : Matrix (Fin n) (Fin n) O, R (ϖ • M) = 0 := by
    intro M; ext i j; simp [hR, hres]
  have hd0 : (lowerLeftBlock κ * (κ'⁻¹).1.toBlocks₁₂ + ϖ • (dBlk κ * (κ'⁻¹).1.toBlocks₂₂)).map (IsLocalRing.residue O) =
      R (lowerLeftBlock κ) * R (κ'⁻¹).1.toBlocks₁₂ := by
    change R _ = _
    rw [map_add (f := _), hsz, add_zero, map_mul]
  have hE0 : (ϖ • (lowerLeftBlock κ' * (κ⁻¹).1.toBlocks₁₂) + dBlk κ' * (κ⁻¹).1.toBlocks₂₂).map (IsLocalRing.residue O) =
      R (dBlk κ') * R (κ⁻¹).1.toBlocks₂₂ := by
    change R _ = _
    rw [map_add (f := _), hsz, zero_add, map_mul]
  have r1 : ((lowerLeftBlock κ * (κ'⁻¹).1.toBlocks₁₂ + ϖ • (dBlk κ * (κ'⁻¹).1.toBlocks₂₂)).map (IsLocalRing.residue O)).rank
      = (R (lowerLeftBlock κ)).rank := by
    apply le_antisymm
    · rw [hd0]; exact Matrix.rank_mul_le_left _ _
    · have : R (lowerLeftBlock κ) = (lowerLeftBlock κ * (κ'⁻¹).1.toBlocks₁₂ + ϖ • (dBlk κ * (κ'⁻¹).1.toBlocks₂₂)).map (IsLocalRing.residue O) *
          R (lowerLeftBlock κ') := by
        conv_lhs => rw [e3]
        rw [map_mul]; rfl
      rw [this]; exact Matrix.rank_mul_le_left _ _
  have r2 : ((ϖ • (lowerLeftBlock κ' * (κ⁻¹).1.toBlocks₁₂) + dBlk κ' * (κ⁻¹).1.toBlocks₂₂).map (IsLocalRing.residue O)).rank
      = (R (dBlk κ')).rank := by
    apply le_antisymm
    · rw [hE0]; exact Matrix.rank_mul_le_left _ _
    · have : R (dBlk κ') = (ϖ • (lowerLeftBlock κ' * (κ⁻¹).1.toBlocks₁₂) + dBlk κ' * (κ⁻¹).1.toBlocks₂₂).map (IsLocalRing.residue O) *
          R (dBlk κ) := by
        conv_lhs => rw [← e4]
        rw [map_mul]; rfl
      rw [this]; exact Matrix.rank_mul_le_left _ _
  rw [r1, r2] at hn
  have hc : lowerLeftBlock (resK κ) = R (lowerLeftBlock κ) := rfl
  have hdd : dBlk (resK κ') = R (dBlk κ') := rfl
  unfold iD
  rw [hc, hdd]
  omega

end GlobalTheory.CompanionTheory.Jp.RedRank

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ReductionCorankEqRankLowerLeft =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ReductionUniqueUpToParabolic =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ReductionUniqueUpToParabolic", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix GlobalTheory.CompanionTheory.Jp

noncomputable section

namespace GlobalTheory.CompanionTheory.Jp.RedUnique

theorem exists_pM_of_low_zero {k : Type} [Field k] {n : ℕ} (g : GL (Ix n) k)
    (hg : g.1.toBlocks₂₁ = 0) :
    ∃ (a d : GL (Fin n) k) (b : Matrix (Fin n) (Fin n) k), g = pM a d b := by
  have hgb : g.1 = fromBlocks g.1.toBlocks₁₁ g.1.toBlocks₁₂ 0 g.1.toBlocks₂₂ := by
    rw [← hg, fromBlocks_toBlocks]
  have hdet : g.1.det ≠ 0 :=
    ((Matrix.isUnit_iff_isUnit_det _).1 g.isUnit).ne_zero
  rw [hgb, det_fromBlocks_zero₂₁] at hdet
  refine ⟨GeneralLinearGroup.mkOfDetNeZero _ (left_ne_zero_of_mul hdet),
    GeneralLinearGroup.mkOfDetNeZero _ (right_ne_zero_of_mul hdet), g.1.toBlocks₁₂, ?_⟩
  apply Units.ext
  exact hgb

theorem low_inv_mul_pM {R : Type} [CommRing R] {n : ℕ} (a₁ d₁ a₂ d₂ : GL (Fin n) R)
    (b₁ b₂ : Matrix (Fin n) (Fin n) R) :
    (((pM a₂ d₂ b₂)⁻¹ * pM a₁ d₁ b₁ : GL (Ix n) R)).1.toBlocks₂₁ = 0 := by
  have h1 : ((pM a₁ d₁ b₁ : GL (Ix n) R)).1 = fromBlocks a₁.1 b₁ 0 d₁.1 := rfl
  have h2 : (((pM a₂ d₂ b₂)⁻¹ : GL (Ix n) R)).1 =
      fromBlocks (a₂⁻¹).1 (-((a₂⁻¹).1 * b₂ * (d₂⁻¹).1)) 0 (d₂⁻¹).1 := rfl
  rw [Units.val_mul, h1, h2, fromBlocks_multiply]
  simp [toBlocks_fromBlocks₂₁]

theorem red_unique : ∀ (O L : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field L] [Algebra O L] [IsFractionRing O L]
    (n : ℕ) (w : Lˣ) (κ : GL (Ix n) O) (h₁ h₂ : GL (Ix n) (IsLocalRing.ResidueField O)),
    IsRed (O := O) w κ h₁ → IsRed (O := O) w κ h₂ →
      ∃ (a d : GL (Fin n) (IsLocalRing.ResidueField O)) (b : Matrix (Fin n) (Fin n) (IsLocalRing.ResidueField O)),
        h₂ = pM a d b * h₁ := by
  intro O L _ _ _ _ _ _ n w κ h₁ h₂ r₁ r₂
  obtain ⟨a₁, d₁, b₁, κ₁, e₁, rfl⟩ := r₁
  obtain ⟨a₂, d₂, b₂, κ₂, e₂, rfl⟩ := r₂
  obtain ⟨c, hcd⟩ : ∃ c : GL (Ix n) O, c = κ₂ * κ₁⁻¹ := ⟨_, rfl⟩
  have hc : inL (L := L) c = (pM a₂ d₂ b₂)⁻¹ * pM a₁ d₁ b₁ := by
    have e : pM a₁ d₁ b₁ * inL (L := L) κ₁ = pM a₂ d₂ b₂ * inL (L := L) κ₂ := e₁.symm.trans e₂
    rw [hcd, map_mul, map_inv, eq_inv_mul_iff_mul_eq, ← mul_assoc, ← e, mul_inv_cancel_right]
  have hlow : (inL (L := L) c).1.toBlocks₂₁ = 0 := by
    rw [hc]; exact low_inv_mul_pM _ _ _ _ _ _
  have hO : ∀ i j, c.1 (Sum.inr i) (Sum.inl j) = 0 := by
    intro i j
    have h0 : algebraMap O L (c.1 (Sum.inr i) (Sum.inl j)) = 0 := congrFun (congrFun hlow i) j
    exact IsFractionRing.injective O L (h0.trans (map_zero _).symm)
  have hk : (resK c).1.toBlocks₂₁ = 0 := by
    ext i j
    change IsLocalRing.residue O (c.1 (Sum.inr i) (Sum.inl j)) = 0
    rw [hO, map_zero]
  obtain ⟨a, d, b, hp⟩ := exists_pM_of_low_zero _ hk
  refine ⟨a, d, b, ?_⟩
  rw [← hp, ← map_mul, hcd, inv_mul_cancel_right]

end GlobalTheory.CompanionTheory.Jp.RedUnique

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ReductionUniqueUpToParabolic =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResidueUpperUnipotentLift =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResidueUpperUnipotentLift", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Matrix GlobalTheory.CompanionTheory.Jp

namespace GlobalTheory.CompanionTheory.Jp

theorem tauM_val_blocks {L : Type} [Field L] {n : ℕ} (w : Lˣ) :
    ((tauM (n := n) w : GL (Ix n) L) : Matrix (Ix n) (Ix n) L) =
      fromBlocks 1 0 0 ((w : L) • (1 : Matrix (Fin n) (Fin n) L)) := by
  ext i k
  rcases i with i | i <;> rcases k with k | k <;>
    simp [tauM, pM, scM, Matrix.one_apply, Matrix.diagonal_apply]

theorem twist_low : ∀ (O L : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field L] [Algebra O L] [IsFractionRing O L]
    (n : ℕ) (ϖ : O), Irreducible ϖ → ∀ w : Lˣ, (w : L) = algebraMap O L ϖ →
    ∀ x : GL (Ix n) (IsLocalRing.ResidueField O), x.1.toBlocks₁₂ = 0 →
      ∃ j j' : GL (Ix n) O, inL j * tauM w = tauM w * inL j' ∧ resK j' = x := by
  intro O L _ _ _ _ _ _ n ϖ hϖ w hw x hx
  classical
  obtain ⟨ℓ, hℓ⟩ : ∃ ℓ : IsLocalRing.ResidueField O → O, ∀ a, IsLocalRing.residue O (ℓ a) = a :=
    ⟨Function.surjInv IsLocalRing.residue_surjective, Function.surjInv_eq _⟩
  have hmapℓ : ∀ B : Matrix (Fin n) (Fin n) (IsLocalRing.ResidueField O),
      (B.map ℓ).map (IsLocalRing.residue O) = B := by
    intro B
    ext i k
    simp [hℓ]
  obtain ⟨A, hA⟩ : ∃ A, A = x.1.toBlocks₁₁.map ℓ := ⟨_, rfl⟩
  obtain ⟨C, hC⟩ : ∃ C, C = x.1.toBlocks₂₁.map ℓ := ⟨_, rfl⟩
  obtain ⟨D, hD⟩ : ∃ D, D = x.1.toBlocks₂₂.map ℓ := ⟨_, rfl⟩
  have hred : (fromBlocks A 0 C D).map (IsLocalRing.residue O) = x.1 := by
    rw [Matrix.fromBlocks_map, hA, hC, hD, hmapℓ, hmapℓ, hmapℓ,
      Matrix.map_zero _ (map_zero _), ← hx, Matrix.fromBlocks_toBlocks]
  have hdet : IsUnit (A.det * D.det) := by
    rw [← IsLocalRing.residue_ne_zero_iff_isUnit]
    have h1 : IsLocalRing.residue O (A.det * D.det) = x.1.det := by
      rw [← Matrix.det_fromBlocks_zero₁₂ A C D, RingHom.map_det, RingHom.mapMatrix_apply, hred]
    rw [h1]
    exact ((Matrix.isUnit_iff_isUnit_det _).mp x.isUnit).ne_zero
  let j' : GL (Ix n) O := Matrix.nonsingInvUnit (fromBlocks A 0 C D)
    (by rw [Matrix.det_fromBlocks_zero₁₂]; exact hdet)
  let j : GL (Ix n) O := Matrix.nonsingInvUnit (fromBlocks A 0 (ϖ • C) D)
    (by rw [Matrix.det_fromBlocks_zero₁₂]; exact hdet)
  refine ⟨j, j', ?_, ?_⟩
  · apply Units.ext
    rw [Units.val_mul, Units.val_mul, tauM_val_blocks]
    show (fromBlocks A 0 (ϖ • C) D).map (algebraMap O L) * _ =
      _ * (fromBlocks A 0 C D).map (algebraMap O L)
    rw [Matrix.fromBlocks_map, Matrix.fromBlocks_map, Matrix.fromBlocks_multiply,
      Matrix.fromBlocks_multiply]
    congr 1
    · simp
    · simp
    · ext i k
      simp [hw, Matrix.map_apply, Matrix.smul_apply]
      rw [Algebra.smul_def]
    · ext i k
      simp [hw]
  · apply Units.ext
    exact hred

end GlobalTheory.CompanionTheory.Jp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResidueUpperUnipotentLift =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompactnessStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompactnessStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JpUnif\npublic import Mathlib.Data.Matrix.ColumnRowPartitioned\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LowerLeftBlock\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AverageInvariantRightTranslation\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AverageOverMaximalCompactResidue\npublic import Mathlib.LinearAlgebra.Matrix.Rank\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardCompletionsToFullRank\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardFixedLowerRightBlock\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRankCompletionSymmetry\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CardRankLowerLeftEqLowerRight\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LevelSquareCongruenceConjugation\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ParabolicDoubleCosetOfEqualCorank\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ReductionCorankEqRankLowerLeft\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ReductionUniqueUpToParabolic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResidueUpperUnipotentLift\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UniformBoundednessStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix
namespace GlobalTheory.CompanionTheory.Jp.Cmp

theorem twist_low : ∀ (O L : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field L] [Algebra O L] [IsFractionRing O L]
    (n : ℕ) (ϖ : O), Irreducible ϖ → ∀ w : Lˣ, (w : L) = algebraMap O L ϖ →
    ∀ x : GL (Ix n) (IsLocalRing.ResidueField O), x.1.toBlocks₁₂ = 0 →
      ∃ j j' : GL (Ix n) O, inL j * tauM w = tauM w * inL j' ∧ resK j' = x := _root_.GlobalTheory.CompanionTheory.Jp.twist_low

theorem dbl : ∀ (k : Type) [Field k] (n : ℕ) (g₁ g₂ : GL (Ix n) k), iD g₁ = iD g₂ →
    ∃ (a d : GL (Fin n) k) (b : Matrix (Fin n) (Fin n) k) (x : GL (Ix n) k),
      x.1.toBlocks₁₂ = 0 ∧ g₂ = pM a d b * g₁ * x := _root_.GlobalTheory.CompanionTheory.Jp.Dbl.main

theorem red_mul {O L : Type} [CommRing O] [IsLocalRing O] [Field L] [Algebra O L] {n : ℕ} {w : Lˣ}
    {κ j j' : GL (Ix n) O} {h : GL (Ix n) (IsLocalRing.ResidueField O)} (hr : IsRed (O := O) w κ h)
    (e : inL j * tauM w = tauM w * inL j') : IsRed (O := O) w (κ * j) (h * resK j') := by
  obtain ⟨a, d, b, κ', E, R⟩ := hr
  refine ⟨a, d, b, κ' * j', ?_, ?_⟩
  · rw [map_mul, mul_assoc, e, ← mul_assoc, E, map_mul, mul_assoc]
  · rw [map_mul, R]

theorem iD_mul_low {k : Type} [Field k] {n : ℕ} (g x : GL (Ix n) k) (hx : x.1.toBlocks₁₂ = 0) :
    iD (g * x) = iD g := by
  have hd : dBlk (g * x) = dBlk g * x.1.toBlocks₂₂ := by
    have e : (g * x).1 = fromBlocks g.1.toBlocks₁₁ g.1.toBlocks₁₂ g.1.toBlocks₂₁ g.1.toBlocks₂₂ *
        fromBlocks x.1.toBlocks₁₁ x.1.toBlocks₁₂ x.1.toBlocks₂₁ x.1.toBlocks₂₂ := by
      simp [fromBlocks_toBlocks]
    unfold dBlk
    rw [e, fromBlocks_multiply, toBlocks_fromBlocks₂₂, hx]
    simp
  have hu : IsUnit x.1.toBlocks₂₂.det := by
    have h0 : x.1 = fromBlocks x.1.toBlocks₁₁ 0 x.1.toBlocks₂₁ x.1.toBlocks₂₂ := by
      rw [← hx, fromBlocks_toBlocks]
    have hd : IsUnit x.1.det := (Matrix.isUnit_iff_isUnit_det _).1 x.isUnit
    rw [h0, det_fromBlocks_zero₁₂] at hd
    exact isUnit_of_mul_isUnit_right hd
  unfold iD
  rw [hd, Matrix.rank_mul_eq_left_of_isUnit_det _ _ hu]

theorem low_mul {k : Type} [Field k] {n : ℕ} (x y : GL (Ix n) k) (hx : x.1.toBlocks₁₂ = 0) (hy : y.1.toBlocks₁₂ = 0) :
    (x * y).1.toBlocks₁₂ = 0 := by
  have e : (x * y).1 = fromBlocks x.1.toBlocks₁₁ x.1.toBlocks₁₂ x.1.toBlocks₂₁ x.1.toBlocks₂₂ *
      fromBlocks y.1.toBlocks₁₁ y.1.toBlocks₁₂ y.1.toBlocks₂₁ y.1.toBlocks₂₂ := by
    simp [fromBlocks_toBlocks]
  rw [e, fromBlocks_multiply, toBlocks_fromBlocks₁₂, hx, hy]
  simp

theorem avg_lin {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Fintype (IsLocalRing.ResidueField O)]
    {n : ℕ} {ϖ : O} (hϖ : Irreducible ϖ) {ι : Type} (s : Finset ι) (c : ℂ) (F : ι → GL (Ix n) O → ℂ) :
    avgK ϖ (fun κ => c * ∑ x ∈ s, F x κ) = c * ∑ x ∈ s, avgK ϖ (F x) := by
  haveI := Unif.finite_quotient_level_square_congruence n hϖ
  classical
  haveI := Fintype.ofFinite (GL (Ix n) O ⧸ Gam2 (n := n) ϖ)
  unfold avgK
  simp only [finsum_eq_sum_of_fintype, ← Finset.mul_sum]
  rw [Finset.sum_comm]
  ring

theorem sum_fib {G : Type} [Fintype G] (t : G → ℕ) (n : ℕ) (ht : ∀ g, t g ≤ n) (F : ℕ → ℂ) :
    ∑ g, F (t g) = ∑ i ∈ Finset.range (n + 1), (Nat.card {g // t g = i} : ℂ) * F i := by
  classical
  rw [← Finset.sum_fiberwise_of_maps_to (s := Finset.univ) (t := Finset.range (n + 1)) (g := t)
    (fun x _ => Finset.mem_range.2 (Nat.lt_succ_of_le (ht x)))]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Finset.sum_congr rfl (g := fun _ => F i) (fun x hx => by rw [(Finset.mem_filter.1 hx).2])]
  rw [Finset.sum_const, nsmul_eq_mul, Nat.card_eq_fintype_card, Fintype.card_subtype]

theorem card_by_rank {k : Type} [Field k] [Fintype k] (n ρ : ℕ) :
    Nat.card {g : GL (Ix n) k // (dBlk g).rank = ρ} =
      Nat.card {D : Matrix (Fin n) (Fin n) k // D.rank = ρ} *
        (Nat.card {g : GL (Ix n) k // lowerLeftBlock g = 0 ∧ dBlk g = 1} *
          (Fintype.card k ^ (n * ρ) * ∏ j ∈ Finset.range (n - ρ), (Fintype.card k ^ n - Fintype.card k ^ j))) := by
  classical
  let e : {g : GL (Ix n) k // (dBlk g).rank = ρ} ≃
      Σ D : {D : Matrix (Fin n) (Fin n) k // D.rank = ρ}, {g : GL (Ix n) k // dBlk g = D.1} :=
    { toFun := fun g => ⟨⟨dBlk g.1, g.2⟩, ⟨g.1, rfl⟩⟩
      invFun := fun s => ⟨s.2.1, by rw [s.2.2]; exact s.1.2⟩
      left_inv := fun g => rfl
      right_inv := by
        rintro ⟨⟨D, hD⟩, ⟨g, hg⟩⟩
        dsimp only at hg
        subst hg
        rfl }
  rw [Nat.card_congr e, Nat.card_sigma]
  rw [Finset.sum_congr rfl (g := fun _ => Nat.card {g : GL (Ix n) k // lowerLeftBlock g = 0 ∧ dBlk g = 1} *
          (Fintype.card k ^ (n * ρ) * ∏ j ∈ Finset.range (n - ρ), (Fintype.card k ^ n - Fintype.card k ^ j)))
    (fun D _ => by rw [_root_.GlobalTheory.CompanionTheory.Jp.CntHalf.card_lowerRightBlock_eq_fibre_formula, _root_.GlobalTheory.CompanionTheory.Jp.CntCols.card_completions k n ρ D.1 D.2])]
  rw [Finset.sum_const, smul_eq_mul, Finset.card_univ, ← Nat.card_eq_fintype_card]

theorem count {k : Type} [Field k] [Fintype k] (n i : ℕ) (hi : i ≤ n) :
    Nat.card {g : GL (Ix n) k // iD g = i} * Fintype.card k ^ (2 * n * i) =
      Nat.card {g : GL (Ix n) k // (lowerLeftBlock g).rank = i} * Fintype.card k ^ (n * n) := by
  have h1 : Nat.card {g : GL (Ix n) k // iD g = i} = Nat.card {g : GL (Ix n) k // (dBlk g).rank = n - i} := by
    refine Nat.card_congr (Equiv.subtypeEquivRight fun g => ?_)
    have : (dBlk g).rank ≤ n := by simpa using (dBlk g).rank_le_card_width
    unfold iD
    omega
  rw [h1, _root_.GlobalTheory.CompanionTheory.Jp.CntSwap.card_lower_left_rank_eq_card_lower_right_rank, card_by_rank, card_by_rank]
  have hr := _root_.GlobalTheory.CompanionTheory.Jp.CountRank.rank_symm k n i hi
  have e1 : n - (n - i) = i := by omega
  rw [e1]
  have e2 : n * (n - i) + 2 * n * i = n * i + n * n := by
    obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le hi
    simp only [Nat.add_sub_cancel_left]
    ring
  set c := Nat.card {g : GL (Ix n) k // lowerLeftBlock g = 0 ∧ dBlk g = 1}
  set q := Fintype.card k
  set Ia := ∏ j ∈ Finset.range (n - i), (q ^ n - q ^ j)
  set Ib := ∏ j ∈ Finset.range i, (q ^ n - q ^ j)
  set Ra := Nat.card {D : Matrix (Fin n) (Fin n) k // D.rank = i}
  set Rb := Nat.card {D : Matrix (Fin n) (Fin n) k // D.rank = n - i}
  calc Rb * (c * (q ^ (n * (n - i)) * Ib)) * q ^ (2 * n * i)
      = (Rb * Ib) * c * q ^ (n * (n - i) + 2 * n * i) := by rw [pow_add]; ring
    _ = (Ra * Ia) * c * q ^ (n * i + n * n) := by rw [hr, e2]
    _ = Ra * (c * (q ^ (n * i) * Ia)) * q ^ (n * n) := by rw [pow_add]; ring

theorem sum_weight {k : Type} [Field k] [Fintype k] (n : ℕ) (f : ℕ → ℂ) :
    sumG (fun g : GL (Ix n) k => (Fintype.card k : ℂ) ^ (2 * n * iD g) * f (iD g)) =
      (Fintype.card k : ℂ) ^ (n * n) * sumG (fun h : GL (Ix n) k => f (lowerLeftBlock h).rank) := by
  classical
  haveI := Fintype.ofFinite (GL (Ix n) k)
  unfold sumG
  rw [finsum_eq_sum_of_fintype, finsum_eq_sum_of_fintype]
  have a := sum_fib (iD (k := k) (n := n)) n (fun g => by unfold iD; omega)
    (fun i => (Fintype.card k : ℂ) ^ (2 * n * i) * f i)
  have b := sum_fib (fun h : GL (Ix n) k => (lowerLeftBlock h).rank) n
    (fun g => by simpa using (lowerLeftBlock g).rank_le_card_width) f
  rw [a, b, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i hi => ?_
  have c := count (k := k) n i (Nat.lt_succ_iff.1 (Finset.mem_range.1 hi))
  have c' := congrArg (Nat.cast : ℕ → ℂ) c
  push_cast at c'
  linear_combination (f i) * c'

theorem jpCmp : JpCmp := by
  intro O L _ _ _ _ _ _ _ n ϖ hϖ w hw Ψ hΨ T hT
  classical
  haveI := Fintype.ofFinite (GL (Ix n) (IsLocalRing.ResidueField O))
  have hinv : ∀ κ h, IsRed (O := O) w κ h → Ψ h = Ψ (T κ) := by
    intro κ h hr
    obtain ⟨a, d, b, e⟩ := _root_.GlobalTheory.CompanionTheory.Jp.RedUnique.red_unique O L n w κ (T κ) h (hT κ) hr
    rw [e, hΨ]
  have hγ : ∀ κ, ∀ γ ∈ Gam2 (n := n) ϖ, Ψ (T (κ * γ)) = Ψ (T κ) := by
    intro κ γ hg
    obtain ⟨j', e, r⟩ := _root_.GlobalTheory.CompanionTheory.Jp.Twist.twist_gam O L n ϖ hϖ w hw γ hg
    have := red_mul (hT κ) e
    rw [r, mul_one] at this
    exact (hinv _ _ this).symm
  have hx : ∀ x : GL (Ix n) (IsLocalRing.ResidueField O), x.1.toBlocks₁₂ = 0 →
      avgK ϖ (fun κ => Ψ (T κ * x)) = avgK ϖ (fun κ => Ψ (T κ)) := by
    intro x hl
    obtain ⟨j, j', e, r⟩ := _root_.GlobalTheory.CompanionTheory.Jp.twist_low O L n ϖ hϖ w hw x hl
    have h1 : (fun κ => Ψ (T κ * x)) = fun κ => Ψ (T (κ * j)) := by
      funext κ
      have := red_mul (hT κ) e
      rw [r] at this
      exact hinv _ _ this
    rw [h1]
    exact _root_.GlobalTheory.CompanionTheory.Jp.AvgRight.avgK_right_invariant O n ϖ (fun κ => Ψ (T κ)) hγ j
  set Pm : Finset (GL (Ix n) (IsLocalRing.ResidueField O)) := Finset.univ.filter (fun x => x.1.toBlocks₁₂ = 0) with hPm
  have hmem : ∀ x, x ∈ Pm ↔ x.1.toBlocks₁₂ = 0 := by simp [hPm]
  have hN : (Pm.card : ℂ) ≠ 0 := by
    have : (1 : GL (Ix n) (IsLocalRing.ResidueField O)) ∈ Pm := by
      rw [hmem]; simp [← fromBlocks_one]
    exact_mod_cast (Finset.card_pos.2 ⟨_, this⟩).ne'
  let Φ : GL (Ix n) (IsLocalRing.ResidueField O) → ℂ := fun g => (Pm.card : ℂ)⁻¹ * ∑ x ∈ Pm, Ψ (g * x)
  have hΦavg : avgK ϖ (fun κ => Φ (T κ)) = avgK ϖ (fun κ => Ψ (T κ)) := by
    have := avg_lin hϖ Pm (Pm.card : ℂ)⁻¹ (fun x κ => Ψ (T κ * x))
    simp only [Φ]
    rw [this, Finset.sum_congr rfl (fun x h => hx x ((hmem x).1 h))]
    rw [Finset.sum_const, nsmul_eq_mul]
    field_simp
  have hΦ : ∀ g₁ g₂, iD g₁ = iD g₂ → Φ g₂ = Φ g₁ := by
    intro g₁ g₂ e
    obtain ⟨a, d, b, x₀, h0, rfl⟩ := dbl _ n g₁ g₂ e
    simp only [Φ]
    congr 1
    have hinj : Set.InjOn (fun x => x₀ * x) (Pm : Set _) := fun _ _ _ _ h => mul_left_cancel h
    have him : Pm.image (fun x => x₀ * x) = Pm := by
      refine Finset.eq_of_subset_of_card_le ?_ ?_
      · intro y hy
        obtain ⟨x, hxm, rfl⟩ := Finset.mem_image.1 hy
        exact (hmem _).2 (low_mul _ _ h0 ((hmem _).1 hxm))
      · rw [Finset.card_image_of_injOn hinj]
    conv_rhs => rw [← him]
    rw [Finset.sum_image hinj]
    refine Finset.sum_congr rfl fun x _ => ?_
    rw [mul_assoc, mul_assoc, hΨ]
  let f : ℕ → ℂ := fun i => if h : ∃ g, iD g = i then Φ h.choose else 0
  have hf : ∀ g, Φ g = f (iD g) := by
    intro g
    have h : ∃ g', iD g' = iD g := ⟨g, rfl⟩
    simp only [f, dif_pos h]
    exact hΦ _ _ h.choose_spec
  have hnum : sumG (fun g => (Fintype.card (IsLocalRing.ResidueField O) : ℂ) ^ (2 * n * iD g) * Ψ g) =
      sumG (fun g => (Fintype.card (IsLocalRing.ResidueField O) : ℂ) ^ (2 * n * iD g) * Φ g) := by
    unfold sumG
    rw [finsum_eq_sum_of_fintype, finsum_eq_sum_of_fintype]
    have h1 : ∀ x ∈ Pm, ∑ g, (Fintype.card (IsLocalRing.ResidueField O) : ℂ) ^ (2 * n * iD g) * Ψ (g * x) =
        ∑ g, (Fintype.card (IsLocalRing.ResidueField O) : ℂ) ^ (2 * n * iD g) * Ψ g := by
      intro x hxm
      rw [← Equiv.sum_comp (Equiv.mulRight x) (fun g => (Fintype.card (IsLocalRing.ResidueField O) : ℂ) ^ (2 * n * iD g) * Ψ g)]
      refine Finset.sum_congr rfl fun g _ => ?_
      simp only [Equiv.coe_mulRight]
      rw [iD_mul_low g x ((hmem x).1 hxm)]
    simp only [Φ]
    have h2 : ∑ g, (Fintype.card (IsLocalRing.ResidueField O) : ℂ) ^ (2 * n * iD g) * ((Pm.card : ℂ)⁻¹ * ∑ x ∈ Pm, Ψ (g * x)) =
        (Pm.card : ℂ)⁻¹ * ∑ x ∈ Pm, ∑ g, (Fintype.card (IsLocalRing.ResidueField O) : ℂ) ^ (2 * n * iD g) * Ψ (g * x) := by
      rw [Finset.sum_comm (s := Pm), Finset.mul_sum]
      refine Finset.sum_congr rfl fun g _ => ?_
      rw [← Finset.mul_sum]
      ring
    rw [h2, Finset.sum_congr rfl h1, Finset.sum_const, nsmul_eq_mul]
    field_simp
  have hq : ((Fintype.card (IsLocalRing.ResidueField O) : ℂ) ^ (n * n)) ≠ 0 := by
    have : (Fintype.card (IsLocalRing.ResidueField O)) ≠ 0 := Fintype.card_ne_zero
    exact pow_ne_zero _ (by exact_mod_cast this)
  have hL : avgK ϖ (fun κ => Ψ (T κ)) = sumG (fun h : GL (Ix n) (IsLocalRing.ResidueField O) => f (lowerLeftBlock h).rank) /
      (Nat.card (GL (Ix n) (IsLocalRing.ResidueField O)) : ℂ) := by
    rw [← hΦavg, ← _root_.GlobalTheory.CompanionTheory.Jp.AvgRes.avgK_res O n ϖ hϖ (fun h : GL (Ix n) (IsLocalRing.ResidueField O) => f (lowerLeftBlock h).rank)]
    congr 1
    funext κ
    rw [hf, _root_.GlobalTheory.CompanionTheory.Jp.RedRank.iD_eq_rank O L n ϖ hϖ w hw κ _ (hT κ)]
  have hden := sum_weight (k := IsLocalRing.ResidueField O) n (fun _ => 1)
  have hone : sumG (fun _ : GL (Ix n) (IsLocalRing.ResidueField O) => (1 : ℂ)) =
      (Nat.card (GL (Ix n) (IsLocalRing.ResidueField O)) : ℂ) := by
    unfold sumG
    rw [finsum_eq_sum_of_fintype, Finset.sum_const, nsmul_eq_mul, mul_one, Finset.card_univ, Nat.card_eq_fintype_card]
  simp only [mul_one] at hden
  rw [hL, hnum, hden, hone]
  have hw2 : sumG (fun g => (Fintype.card (IsLocalRing.ResidueField O) : ℂ) ^ (2 * n * iD g) * Φ g) =
      sumG (fun g : GL (Ix n) (IsLocalRing.ResidueField O) => (Fintype.card (IsLocalRing.ResidueField O) : ℂ) ^ (2 * n * iD g) * f (iD g)) := by
    unfold sumG
    exact finsum_congr fun g => by beta_reduce; rw [hf]
  rw [hw2, sum_weight]
  field_simp

end GlobalTheory.CompanionTheory.Jp.Cmp
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompactnessStatement =====
