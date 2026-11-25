module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.Development
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.FockLin
public import Formalism.PeriodIntegrals.FockRBlock
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.Development
public import Formalism.PeriodIntegrals.RowLetter
public import Formalism.PeriodIntegrals.RowWtSpan
public import Mathlib.RingTheory.MvPolynomial.EulerIdentity
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FRSmulRight
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.MemHdIff
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormCoreSK
public import Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.PolynomialThetaProduct
public import Mathlib.LinearAlgebra.Dual.Lemmas
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FirstWeightLeConductor
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.OpWords
public import Mathlib.Data.Fin.Tuple.Sort
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.BitVec
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
import Formalism.GradedWeylDivisibility.FinalD
import Formalism.GradedWeylDivisibility.FinalC

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.FilterConcatWLength, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.MultidegSingle, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.NotMemVarsEmbS, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.OkSmulRight, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.StepMonoFactor, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdjointTensorOfSingleValid, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.ChainRule, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.DetDer, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.NvFalseEq, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.RowLetter, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowWeightSpan.RowWtSpanOfBideterminant, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.RowWtSpan, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LetterRowOperator, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePosOf, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RowGenCoeffZero, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ThetaInjHd, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePos, Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.OperatorWeightBoundHolds

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.FilterConcatWLength =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.FilterConcatWLength", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.FockLin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace PI.TOW

open PI.TO

theorem mem_concatW {n' k : ℕ} (w : Fin n' → List (Fin k × Fin k)) (z : Fin n' × (Fin k × Fin k)) :
    z ∈ concatW w ↔ z.2 ∈ w z.1 := by
  simp only [concatW, liftW, List.mem_flatMap, List.mem_finRange, true_and, List.mem_map]
  constructor
  · rintro ⟨t, y, hy, rfl⟩
    exact hy
  · intro h
    exact ⟨z.1, z.2, h, rfl⟩

theorem filter_concatW_length {n' k : ℕ} (w : Fin n' → List (Fin k × Fin k)) (t : Fin n') :
    ((concatW w).filter fun z => z.1 = t).length = (w t).length := by
  rw [← List.countP_eq_length_filter]
  simp only [concatW, liftW, List.countP_flatMap]
  rw [← List.ofFn_eq_map, List.sum_ofFn, Finset.sum_eq_single t]
  · simp [Function.comp_def]
  · intro b _ hb
    simp [Function.comp_def, hb]
  · simp

theorem prod_smul_eq {σ K : Type*} [CommRing K] {ι : Type*} [Fintype ι] (c : ι → K) (x : ι → MvPolynomial σ K) :
    ∏ i, (c i • x i) = (∏ i, c i) • ∏ i, x i := by
  simp only [MvPolynomial.smul_eq_C_mul, Finset.prod_mul_distrib, map_prod]

theorem partS_mem {K : Type} [CommRing K] {n' m : ℕ} {d : Fin n' → ℕ} (μ : Fin n' × Fin (m + 1) →₀ ℕ)
    (hμ : μ ∈ {μ : Fin n' × Fin (m + 1) →₀ ℕ | ∀ i, multideg μ i = d i}) (t : Fin n') :
    monomial (partS μ t) (1 : K) ∈ Hd K (m + 1) (d t) := by
  show monomial (partS μ t) (1 : K) ∈ restrictSupport K {ν : Fin (m + 1) →₀ ℕ | ∑ c, ν c = d t}
  rw [mem_restrictSupport_iff]
  intro x hx
  have hx' := support_monomial_subset hx
  rw [Finset.mem_singleton] at hx'
  subst hx'
  have h := hμ t
  simpa [partS, multideg] using h

theorem stepPure_of (hL : StepLift) (hM : StepMonoFactor) : StepPure := by
  unfold StepPure
  intro hFB hOP K _ _ n' m hm vec TT d c ν hν hνc hν0 B S hB hS
  classical
  have hex : ∀ t : Fin n', ∃ (L : Finset (List (Fin (m + 1) × Fin (m + 1))))
      (a : List (Fin (m + 1) × Fin (m + 1)) → K),
      (∀ l ∈ L, l.length ≤ (if t ∈ TT then c else 0)) ∧
      ∀ P ∈ Hd K (m + 1) (d t), ∀ Q ∈ Hd K (m + 1) (d t),
        fockR (theta K m (vec t) P * S t) (theta K m (vec t) Q * B t) =
          fockR (theta K m (vec t) (∑ l ∈ L, a l • word1 l P)) (theta K m (vec t) Q) := by
    intro t
    refine hOP K m hm (vec t) (d t) (if t ∈ TT then c else 0) (ν t) (hν t) ?_ (B t) (hB t)
      (S t) (hS t)
    split_ifs with ht
    · exact hνc t ht
    · simp [hν0 t ht]
  choose L a hLlen hLfock using hex
  let f : List (Fin n' × (Fin (m + 1) × Fin (m + 1))) →₀ K :=
    ∑ w ∈ Fintype.piFinset L, Finsupp.single (concatW w) (∏ t, a t (w t))
  unfold Ok
  refine ⟨f, ?_, ?_⟩
  · intro l hl
    have hl' := Finsupp.support_finsetSum hl
    rw [Finset.mem_biUnion] at hl'
    obtain ⟨w, hw, hlw⟩ := hl'
    have hlw' := Finsupp.support_single_subset hlw
    rw [Finset.mem_singleton] at hlw'
    subst hlw'
    rw [Fintype.mem_piFinset] at hw
    unfold WordOK
    constructor
    · intro z hz
      rw [mem_concatW] at hz
      by_contra hzT
      have hlen := hLlen z.1 (w z.1) (hw z.1)
      rw [if_neg hzT] at hlen
      cases hwz : w z.1 with
      | nil => simp [hwz] at hz
      | cons _ _ => simp [hwz] at hlen
    · intro t
      rw [filter_concatW_length]
      have hlen := hLlen t (w t) (hw t)
      split_ifs at hlen <;> omega
  · have hcombo : ∀ G, combo f G =
        ∑ w ∈ Fintype.piFinset L, (∏ t, a t (w t)) • opWord (concatW w) G := by
      intro G
      simp only [combo, f]
      rw [← Finsupp.sum_finsetSum_index (fun l => zero_smul K (opWord l G))
        (fun l b₁ b₂ => add_smul b₁ b₂ (opWord l G))]
      refine Finset.sum_congr rfl fun w _ => ?_
      rw [Finsupp.sum_single_index (zero_smul K (opWord (concatW w) G))]
    have hTh : ∀ F : Fin n' → MvPolynomial (Fin (m + 1)) K,
        Th0 K m vec (∏ t, embS K t (F t)) = ∏ t, blockEmb K t (theta K m (vec t) (F t)) := by
      intro F
      rw [map_prod]
      exact Finset.prod_congr rfl fun t _ => blockSubstitution_blockInclusion vec t (F t)
    have main : ∀ P Q : Fin n' → MvPolynomial (Fin (m + 1)) K,
        (∀ t, P t ∈ Hd K (m + 1) (d t)) → (∀ t, Q t ∈ Hd K (m + 1) (d t)) →
        fockR (Th0 K m vec (∏ t, embS K t (P t)) * ∏ t, blockEmb K t (S t))
            (Th0 K m vec (∏ t, embS K t (Q t)) * ∏ t, blockEmb K t (B t)) =
          fockR (Th0 K m vec (combo f (∏ t, embS K t (P t))))
            (Th0 K m vec (∏ t, embS K t (Q t))) := by
      intro P Q hP hQ
      have hc : combo f (∏ t, embS K t (P t)) =
          ∏ t, embS K t (∑ l ∈ L t, a t l • word1 l (P t)) := by
        rw [hcombo]

        simp only [map_sum, map_smul]
        rw [Finset.prod_univ_sum]
        refine Finset.sum_congr rfl fun w _ => ?_
        rw [prod_smul_eq, hL K n' (m + 1) w P]
      rw [hc, hTh, hTh, hTh, ← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
      simp only [← map_mul]
      rw [hFB K (Fin n') (m + 1) (m + 1), hFB K (Fin n') (m + 1) (m + 1)]
      exact Finset.prod_congr rfl fun t _ => hLfock t (P t) (hP t) (Q t) (hQ t)
    let Φ : MvPolynomial (Fin n' × Fin (m + 1)) K →ₗ[K] MvPolynomial (Fin n' × Fin (m + 1)) K →ₗ[K] K :=
      (fockB (Fin n' × (Fin (m + 1) × Fin (m + 1))) K).compl₁₂
        ((LinearMap.mulRight K (∏ t, blockEmb K t (S t))).comp (Th0 K m vec).toLinearMap)
        ((LinearMap.mulRight K (∏ t, blockEmb K t (B t))).comp (Th0 K m vec).toLinearMap)
    let Ψ : MvPolynomial (Fin n' × Fin (m + 1)) K →ₗ[K] MvPolynomial (Fin n' × Fin (m + 1)) K →ₗ[K] K :=
      (fockB (Fin n' × (Fin (m + 1) × Fin (m + 1))) K).compl₁₂
        ((Th0 K m vec).toLinearMap.comp (comboL f)) (Th0 K m vec).toLinearMap
    have key := bilin_ext_restrict {μ | ∀ i, multideg μ i = d i} Φ Ψ (by
      intro μ hμ μ' hμ'
      show fockB _ K (Th0 K m vec (monomial μ 1) * ∏ t, blockEmb K t (S t))
          (Th0 K m vec (monomial μ' 1) * ∏ t, blockEmb K t (B t)) =
        fockB _ K (Th0 K m vec (combo f (monomial μ 1))) (Th0 K m vec (monomial μ' 1))
      rw [fockB_apply, fockB_apply, hM K n' (m + 1) μ, hM K n' (m + 1) μ']
      exact main _ _ (fun t => partS_mem μ hμ t) (fun t => partS_mem μ' hμ' t))
    intro G hG H hH
    rw [← fockB_apply, ← fockB_apply]
    exact key G hG H hH

end PI.TOW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.FilterConcatWLength =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.MultidegSingle =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.MultidegSingle", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace PI.TOW.DegW

open PI.TO PI.TOW

variable {K : Type} [Field K] {n' k : ℕ}

theorem multideg_add (a b : Fin n' × Fin k →₀ ℕ) (i : Fin n') :
    multideg (a + b) i = multideg a i + multideg b i := by
  simp only [multideg, Finsupp.add_apply, Finset.sum_add_distrib]

theorem multideg_single (j : Fin n' × Fin k) (i : Fin n') :
    multideg (Finsupp.single j 1) i = if j.1 = i then 1 else 0 := by
  obtain ⟨j₁, j₂⟩ := j
  by_cases h : j₁ = i <;> simp [multideg, Finsupp.single_apply, Prod.ext_iff, h]

theorem step_mem (t : Fin n') (a b : Fin k) (d : Fin n' → ℕ) (G : MvPolynomial (Fin n' × Fin k) K)
    (hG : G ∈ Pol K (ι := Fin n') k d) :
    X (t, a) * pderiv (t, b) G ∈ Pol K (ι := Fin n') k d := by
  rw [Pol, MvPolynomial.mem_restrictSupport_iff] at hG

  rw [G.as_sum, map_sum, Finset.mul_sum]
  refine Submodule.sum_mem _ fun m hm => ?_
  have hdm : ∀ i, multideg m i = d i := hG hm
  rw [MvPolynomial.pderiv_monomial, MvPolynomial.X, MvPolynomial.monomial_mul]
  by_cases hmb : m (t, b) = 0
  · simp [hmb]
  have hle : Finsupp.single (t, b) 1 ≤ m := by
    rw [Finsupp.single_le_iff]; omega
  have hsplit : m = (m - Finsupp.single (t, b) 1) + Finsupp.single (t, b) 1 :=
    (tsub_add_cancel_of_le hle).symm
  have hexp : ∀ i, multideg (Finsupp.single (t, a) 1 + (m - Finsupp.single (t, b) 1)) i = d i := by
    intro i
    have h1 := multideg_add (m - Finsupp.single (t, b) 1) (Finsupp.single (t, b) 1) i
    rw [← hsplit, hdm i, multideg_single] at h1
    rw [multideg_add, multideg_single]
    simp only at h1 ⊢
    split_ifs at h1 ⊢ <;> omega
  rw [Pol, MvPolynomial.mem_restrictSupport_iff]
  intro x hx
  have hx' := MvPolynomial.support_monomial_subset (Finset.mem_coe.mp hx)
  rw [Finset.mem_singleton] at hx'
  subst hx'
  exact hexp

theorem stepDeg : StepDeg := by
  intro K _ n' k d l G hG
  induction l with
  | nil => exact hG
  | cons y l ih =>
    simp only [opWord, List.foldr_cons] at ih ⊢
    exact step_mem y.1 y.2.1 y.2.2 d _ ih

end PI.TOW.DegW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.MultidegSingle =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.NotMemVarsEmbS =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.NotMemVarsEmbS", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace PI.TOW.LiftW

open PI.TO PI.TOW

variable {K : Type} [CommRing K] {n' k : ℕ}

theorem inj (t : Fin n') : Function.Injective (fun c : Fin k => (t, c)) := by
  intro a c h
  exact (Prod.mk.inj h).2

theorem pderiv_embS (t : Fin n') (b : Fin k) (W : MvPolynomial (Fin k) K) :
    pderiv (t, b) (embS K t W) = embS K t (pderiv b W) := by
  simpa [embS] using pderiv_rename (inj (k := k) t) b W

theorem notMem_vars_embS {t a : Fin n'} (h : a ≠ t) (b : Fin k) (W : MvPolynomial (Fin k) K) :
    (t, b) ∉ (embS K a W).vars := by
  intro hm
  have h2 : (t, b) ∈ W.vars.image (fun c : Fin k => (a, c)) :=
    vars_rename (fun c : Fin k => (a, c)) W hm
  rw [Finset.mem_image] at h2
  obtain ⟨c, -, hc⟩ := h2
  exact h (congrArg Prod.fst hc)

theorem pderiv_prod_ne (t : Fin n') (b : Fin k) (T : Finset (Fin n')) (ht : t ∉ T)
    (H : Fin n' → MvPolynomial (Fin k) K) : pderiv (t, b) (∏ s ∈ T, embS K s (H s)) = 0 := by
  classical
  induction T using Finset.induction_on with
  | empty => simp
  | insert s T hs ih =>
    rw [Finset.prod_insert hs, Derivation.leibniz]
    have hst : s ≠ t := fun e => ht (e ▸ Finset.mem_insert_self s T)
    rw [ih (fun h => ht (Finset.mem_insert_of_mem h)),
      pderiv_eq_zero_of_notMem_vars (notMem_vars_embS hst b (H s))]
    simp

theorem opWord_liftW (t : Fin n') (l : List (Fin k × Fin k)) (F : MvPolynomial (Fin k) K)
    (R : MvPolynomial (Fin n' × Fin k) K) (hR : ∀ b, pderiv (t, b) R = 0) :
    opWord (liftW t l) (embS K t F * R) = embS K t (word1 l F) * R := by
  induction l with
  | nil => simp [opWord, liftW, word1]
  | cons y l ih =>
    have e1 : opWord (liftW t (y :: l)) (embS K t F * R)
        = X (t, y.1) * pderiv (t, y.2) (opWord (liftW t l) (embS K t F * R)) := by
      simp [opWord, liftW]
    have e2 : word1 (y :: l) F = X y.1 * pderiv y.2 (word1 l F) := by
      simp [word1]
    rw [e1, ih, e2, Derivation.leibniz, hR, pderiv_embS]
    simp [embS, map_mul, rename_X]
    ring

theorem opWord_append (l₁ l₂ : List (Fin n' × (Fin k × Fin k))) (f : MvPolynomial (Fin n' × Fin k) K) :
    opWord (l₁ ++ l₂) f = opWord l₁ (opWord l₂ f) := by
  simp [opWord, List.foldr_append]

theorem main_list (w : Fin n' → List (Fin k × Fin k)) (G : Fin n' → MvPolynomial (Fin k) K)
    (ts : List (Fin n')) (hts : ts.Nodup) :
    opWord (ts.flatMap fun t => liftW t (w t)) (∏ s, embS K s (G s)) =
      ∏ s, embS K s (if s ∈ ts then word1 (w s) (G s) else G s) := by
  classical
  induction ts with
  | nil => simp [opWord]
  | cons t ts ih =>
    rw [List.nodup_cons] at hts
    rw [List.flatMap_cons, opWord_append, ih hts.2]
    rw [← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ t),
      ← Finset.mul_prod_erase Finset.univ
        (fun s => embS K s (if s ∈ t :: ts then word1 (w s) (G s) else G s)) (Finset.mem_univ t)]
    simp only [if_neg hts.1, List.mem_cons, true_or, if_true]
    rw [opWord_liftW t (w t) (G t) _ (fun b' => pderiv_prod_ne t b' _ (Finset.notMem_erase t _) _)]
    congr 1
    refine Finset.prod_congr rfl fun s hs => ?_
    have hne : s ≠ t := Finset.ne_of_mem_erase hs
    simp [hne]

theorem stepLift : StepLift := by
  intro K _ n' k w F
  have h := main_list w F (List.finRange n') (List.nodup_finRange n')
  simpa [concatW, List.mem_finRange] using h

end PI.TOW.LiftW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.NotMemVarsEmbS =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.OkSmulRight =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.OkSmulRight", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.FockLin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace PI.TOW

open PI.TO

variable {K : Type} [Field K] {n' m : ℕ} {vec : Fin n' → Bool} {TT : Finset (Fin n')} {d : Fin n' → ℕ} {c : ℕ}

theorem ok_zero_left (s : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) K) :
    Ok K n' m vec TT d c 0 s := by
  refine ⟨0, by simp, fun G _ H _ => ?_⟩
  rw [mul_zero, fockR_zero_right, combo_zero, map_zero, fockR_zero_left]

theorem ok_zero_right (β : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) K) :
    Ok K n' m vec TT d c β 0 := by
  refine ⟨0, by simp, fun G _ H _ => ?_⟩
  rw [mul_zero, fockR_zero_left, combo_zero, map_zero, fockR_zero_left]

theorem ok_add_left {β₁ β₂ s : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) K}
    (h₁ : Ok K n' m vec TT d c β₁ s) (h₂ : Ok K n' m vec TT d c β₂ s) : Ok K n' m vec TT d c (β₁ + β₂) s := by
  obtain ⟨f₁, hf₁, e₁⟩ := h₁
  obtain ⟨f₂, hf₂, e₂⟩ := h₂
  refine ⟨f₁ + f₂, fun l hl => ?_, fun G hG H hH => ?_⟩
  · rcases Finset.mem_union.1 (Finsupp.support_add hl) with h | h
    exacts [hf₁ l h, hf₂ l h]
  · rw [mul_add, fockR_add_right, e₁ G hG H hH, e₂ G hG H hH, combo_add, map_add (f := _),
      fockR_add_left]

theorem ok_add_right {β s₁ s₂ : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) K}
    (h₁ : Ok K n' m vec TT d c β s₁) (h₂ : Ok K n' m vec TT d c β s₂) : Ok K n' m vec TT d c β (s₁ + s₂) := by
  obtain ⟨f₁, hf₁, e₁⟩ := h₁
  obtain ⟨f₂, hf₂, e₂⟩ := h₂
  refine ⟨f₁ + f₂, fun l hl => ?_, fun G hG H hH => ?_⟩
  · rcases Finset.mem_union.1 (Finsupp.support_add hl) with h | h
    exacts [hf₁ l h, hf₂ l h]
  · rw [mul_add, fockR_add_left, e₁ G hG H hH, e₂ G hG H hH, combo_add, map_add (f := _),
      fockR_add_left]

theorem ok_smul_left (a : K) {β s : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) K}
    (h : Ok K n' m vec TT d c β s) : Ok K n' m vec TT d c (a • β) s := by
  obtain ⟨f, hf, e⟩ := h
  refine ⟨a • f, fun l hl => hf l (Finsupp.support_smul hl), fun G hG H hH => ?_⟩
  rw [mul_smul_comm, fockR_smul_right, e G hG H hH, combo_smul, map_smul,
    fockR_smul_left]

theorem ok_smul_right (a : K) {β s : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) K}
    (h : Ok K n' m vec TT d c β s) : Ok K n' m vec TT d c β (a • s) := by
  obtain ⟨f, hf, e⟩ := h
  refine ⟨a • f, fun l hl => hf l (Finsupp.support_smul hl), fun G hG H hH => ?_⟩
  rw [mul_smul_comm, fockR_smul_left, e G hG H hH, combo_smul, map_smul,
    fockR_smul_left]

theorem stepSpan : StepSpan := by
  intro K _ n' m vec TT d c M hM β hβ s hs
  unfold PI.TO.tensorLat at hβ hs
  have key : ∀ F : Fin n' → MvPolynomial (Fin (m + 1) × Fin (m + 1)) K, (∀ t, F t ∈ M t) →
      Ok K n' m vec TT d c (∏ t, PI.TO.blockEmb K t (F t)) s := by
    intro F hF
    induction hs using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨S, hS, rfl⟩ := hx
      exact hM F S hF hS
    | zero => exact ok_zero_right _
    | add x y _ _ hx hy => exact ok_add_right hx hy
    | smul a x _ hx => exact ok_smul_right a hx
  induction hβ using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨F, hF, rfl⟩ := hx
    exact key F hF
  | zero => exact ok_zero_left _
  | add x y _ _ hx hy => exact ok_add_left hx hy
  | smul a x _ hx => exact ok_smul_left a hx

end PI.TOW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.OkSmulRight =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.StepMonoFactor =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.StepMonoFactor", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace PI.TOW.MonoW

open PI.TO PI.TOW

theorem stepMonoFactor : StepMonoFactor := by
  intro K _ n' k μ
  simp only [embS, rename_monomial]
  suffices hμ : μ = ∑ t, Finsupp.mapDomain (fun c => (t, c)) (partS μ t) by
    rw [← MvPolynomial.monomial_sum_one, ← hμ]
  ext ⟨t, c⟩
  rw [Finsupp.finsetSum_apply, Finset.sum_eq_single t]
  · rw [Finsupp.mapDomain_apply_of_injective (fun a b h => by simpa using h)]
    simp [partS]
  · intro t' _ ht'
    rw [Finsupp.mapDomain_notin_range]
    rintro ⟨c', hc'⟩
    exact ht' (congrArg Prod.fst hc')
  · simp

end PI.TOW.MonoW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.StepMonoFactor =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdjointTensorOfSingleValid =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdjointTensorOfSingleValid", "h": "module\n\npublic import Formalism.PeriodIntegrals.FockRBlock\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.FilterConcatWLength\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.MultidegSingle\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.NotMemVarsEmbS\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.OkSmulRight\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.StepMonoFactor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorOperator.Development\n\n"}
section -- clump:auto
@[expose] public section

theorem adjointTensorOfSingle_valid : PI.TenOp :=
  PI.TOW.tenOp_of_steps PI.TOW.DegW.stepDeg
    (PI.TOW.stepPure_of PI.TOW.LiftW.stepLift PI.TOW.MonoW.stepMonoFactor) PI.TOW.stepSpan
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdjointTensorOfSingleValid =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.ChainRule =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.ChainRule", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace PI.RL.W

open PI.RL

section

variable {K : Type} [Field K] {k : ℕ}

theorem RE_add (a b : Fin k) (f g : MvPolynomial (Fin k × Fin k) K) :
    RE K k a b (f + g) = RE K k a b f + RE K k a b g := by
  simp only [PI.RL.RE, map_add (f := _), mul_add, Finset.sum_add_distrib]

theorem RE_C (a b : Fin k) (r : K) : RE K k a b (C r) = 0 := by
  simp [PI.RL.RE]

private theorem pderiv_mul_eq {σ : Type*} {R : Type*} [CommRing R] (i : σ) (f g : MvPolynomial σ R) :
    pderiv i (f * g) = pderiv i f * g + f * pderiv i g := by
  rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]; ring

theorem RE_mul (a b : Fin k) (f g : MvPolynomial (Fin k × Fin k) K) :
    RE K k a b (f * g) = RE K k a b f * g + f * RE K k a b g := by
  simp only [PI.RL.RE, pderiv_mul_eq, mul_add, Finset.sum_add_distrib, Finset.sum_mul,
    Finset.mul_sum]
  congr 1 <;> (refine Finset.sum_congr rfl (fun t _ => ?_); ring)

end

private theorem pderiv_X_eq_ite {σ : Type*} {R : Type*} [CommRing R] [DecidableEq σ] (c i : σ) :
    pderiv c (X i : MvPolynomial σ R) = if c = i then 1 else 0 := by
  rw [pderiv_X]
  by_cases h : c = i
  · subst h; simp
  · rw [if_neg h, Pi.single_apply, if_neg (Ne.symm h)]

private theorem derivation_aeval_eq_sum_pderiv {K : Type*} [CommRing K] {σ τ : Type*} [Fintype σ] [DecidableEq σ]
    (D : MvPolynomial τ K → MvPolynomial τ K)
    (hadd : ∀ f g, D (f + g) = D f + D g) (hC : ∀ r, D (C r) = 0)
    (hmul : ∀ f g, D (f * g) = D f * g + f * D g)
    (g : σ → MvPolynomial τ K) (P : MvPolynomial σ K) :
    D (aeval g P) = ∑ c, aeval g (pderiv c P) * D (g c) := by
  induction P using MvPolynomial.induction_on
  next r =>
    rw [aeval_C, MvPolynomial.algebraMap_eq, hC]
    simp
  next p q hp hq =>
    rw [map_add (f := _), hadd, hp, hq, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl (fun c _ => ?_)
    rw [map_add (f := _), map_add (f := _), add_mul]
  next p i ih =>
    have e : ∀ c, aeval g (pderiv c (p * X i)) * D (g c) =
        g i * (aeval g (pderiv c p) * D (g c)) + (if c = i then aeval g p * D (g i) else 0) := by
      intro c
      rw [pderiv_mul_eq, pderiv_X_eq_ite, map_add (f := _), map_mul, map_mul, aeval_X]
      by_cases h : c = i
      · subst h; rw [if_pos rfl, if_pos rfl, map_one]; ring
      · rw [if_neg h, if_neg h, map_zero]; ring
    rw [Finset.sum_congr rfl (fun c _ => e c), Finset.sum_add_distrib, ← Finset.mul_sum, ← ih,
      map_mul, aeval_X, hmul]
    simp only [Finset.sum_ite_eq', Finset.mem_univ, if_true]
    ring

theorem chainRule : ChainRule := by
  intro K _ m vec a b P
  simp only [PI.RL.theta]
  exact derivation_aeval_eq_sum_pderiv (PI.RL.RE K (m + 1) a b) (RE_add a b) (RE_C a b)
    (RE_mul a b) _ P

theorem vecX : VecX := by
  intro K _ m a b c
  have hp : ∀ t : Fin (m + 1),
      pderiv (b, t) (X (c, 0) : MvPolynomial (Fin (m + 1) × Fin (m + 1)) K) =
        if c = b ∧ t = 0 then 1 else 0 := by
    intro t
    rw [pderiv_X]
    by_cases h : c = b ∧ t = 0
    · obtain ⟨rfl, rfl⟩ := h; simp
    · rw [if_neg h, Pi.single_apply, if_neg]
      intro he
      simp only [Prod.mk.injEq] at he
      exact h ⟨he.1, he.2.symm⟩
  simp only [PI.RL.Nv, if_true, PI.RL.RE, hp, mul_ite, mul_one, mul_zero]
  by_cases h : c = b
  · subst h; simp [Finset.sum_ite_eq']
  · simp [h]

theorem hdHom : HdHom := by
  intro K _ k d P hP
  unfold PI.RL.Hd at hP
  rw [mem_restrictSupport_iff] at hP
  intro μ hμ
  have h2 := hP (mem_support_iff.mpr hμ)
  rw [Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by simp)]
  simpa using h2

end PI.RL.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.ChainRule =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.DetDer =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.DetDer", "h": "module\n\npublic import Formalism.PeriodIntegrals.RowLetter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace PI.RL.W

section General

variable {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]

theorem derivation_finset_prod {ι : Type*} [DecidableEq ι] (D : Derivation R S S) (f : ι → S) (s : Finset ι) :
    D (∏ j ∈ s, f j) = ∑ i ∈ s, ∏ j ∈ s, Function.update f i (D (f i)) j := by
  refine Finset.induction_on s (by simp) ?_
  intro a s ha ih
  have hne : ∀ i ∈ s, i ≠ a := fun i hi h => ha (h ▸ hi)
  have h0 : Function.update f a (D (f a)) a = D (f a) := by simp
  have h1 : ∏ j ∈ s, Function.update f a (D (f a)) j = ∏ j ∈ s, f j :=
    Finset.prod_congr rfl fun j hj => Function.update_of_ne (hne j hj) _ _
  have h2 : ∀ i ∈ s, ∏ j ∈ insert a s, Function.update f i (D (f i)) j =
      f a * ∏ j ∈ s, Function.update f i (D (f i)) j := fun i hi => by
    rw [Finset.prod_insert ha, Function.update_of_ne (hne i hi).symm]
  rw [Finset.prod_insert ha, Derivation.leibniz, ih, Finset.sum_insert ha, Finset.prod_insert ha, h0, h1,
    Finset.sum_congr rfl h2, ← Finset.mul_sum, smul_eq_mul, smul_eq_mul]
  ring

theorem derivation_det {n : Type*} [Fintype n] [DecidableEq n] (D : Derivation R S S) (A : Matrix n n S) :
    D A.det = ∑ i, (A.updateRow i fun j => D (A i j)).det := by
  have key : ∀ B : Matrix n n S, B.det = ∑ σ : Equiv.Perm n, ((Equiv.Perm.sign σ : ℤ) : S) * ∏ i, B i (σ i) :=
    fun B => by rw [← Matrix.det_transpose, Matrix.det_apply']; rfl
  have hc : ∀ k : ℤ, D (k : S) = 0 := fun k => by
    rw [← map_intCast (algebraMap R S) k, Derivation.map_algebraMap]
  have hrow : ∀ (i : n) (σ : Equiv.Perm n), ∏ j, (A.updateRow i fun j => D (A i j)) j (σ j) =
      ∏ j, Function.update (fun j => A j (σ j)) i (D (A i (σ i))) j := fun i σ =>
    Finset.prod_congr rfl fun j _ => by
      by_cases h : j = i
      · subst h; simp
      · simp [Matrix.updateRow_ne h, Function.update_of_ne h]

  rw [key, map_sum]
  simp_rw [key, hrow, Derivation.leibniz, hc, smul_zero, add_zero, derivation_finset_prod, smul_eq_mul,
    Finset.mul_sum]
  exact Finset.sum_comm

theorem derivation_sum_apply {ι : Type*} {A M : Type*} [CommSemiring A] [AddCommMonoid M] [Module A M]
    [Algebra R A] [Module R M] (s : Finset ι) (D : ι → Derivation R A M) (x : A) :
    (∑ t ∈ s, D t) x = ∑ t ∈ s, D t x := by
  classical
  refine Finset.induction_on s (by simp) ?_
  intro a s ha ih
  rw [Finset.sum_insert ha, Finset.sum_insert ha, Derivation.add_apply, ih]

end General

def REder (K : Type) [CommRing K] (k : ℕ) (a b : Fin k) :
    Derivation K (MvPolynomial (Fin k × Fin k) K) (MvPolynomial (Fin k × Fin k) K) :=
  ∑ t : Fin k, (X (a, t) : MvPolynomial (Fin k × Fin k) K) • pderiv (b, t)

theorem RE_eq_REder (K : Type) [CommRing K] (k : ℕ) (a b : Fin k) (f : MvPolynomial (Fin k × Fin k) K) :
    PI.RL.RE K k a b f = REder K k a b f := by
  unfold PI.RL.RE REder
  rw [derivation_sum_apply]
  rfl

theorem REder_X (K : Type) [CommRing K] (k : ℕ) (a b : Fin k) (i j : Fin k) :
    REder K k a b (X (i, j)) = if i = b then X (a, j) else 0 := by
  unfold REder
  rw [derivation_sum_apply]
  simp only [Derivation.smul_apply, pderiv_X, smul_eq_mul]
  by_cases h : i = b
  · subst h
    simp [Pi.single_apply, mul_ite]
  · simp [h]

end PI.RL.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.DetDer =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.NvFalseEq =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.NvFalseEq", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.DetDer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace PI.RL.W

open PI.RL

theorem Nv_false_eq (K : Type) [Field K] (m : ℕ) (c : Fin (m + 1)) :
    Nv K m false c = ((genM K m).updateRow c (Pi.single (Fin.last m) 1)).det := by
  simp [Nv, Matrix.adjugate_apply]

theorem keyCov : KeyCov := by
  intro K _ m a b c
  have hN : ∀ d, Nv K m false d =
      ((genM K m).updateRow d (Pi.single (Fin.last m) 1)).det := fun d => Nv_false_eq K m d
  have hG : ∀ i j, genM K m i j = X (i, j) := fun i j => rfl
  rw [RE_eq_REder, hN c, hN b, derivation_det]
  have hrow : ∀ i j, REder K (m + 1) a b
      (((genM K m).updateRow c (Pi.single (Fin.last m) 1)) i j) =
        if i = c then 0 else if i = b then X (a, j) else 0 := by
    intro i j
    by_cases hic : i = c
    · subst hic
      rw [Matrix.updateRow_self, if_pos rfl]
      by_cases hj : j = Fin.last m
      · subst hj; simp
      · simp [hj]
    · rw [Matrix.updateRow_ne hic, hG, REder_X, if_neg hic]
  simp_rw [hrow]
  have hz : ∀ (M : Matrix (Fin (m + 1)) (Fin (m + 1)) (MvPolynomial (Fin (m + 1) × Fin (m + 1)) K))
      (i : Fin (m + 1)) (r : Fin (m + 1) → MvPolynomial (Fin (m + 1) × Fin (m + 1)) K),
      (∀ j, r j = 0) → (M.updateRow i r).det = 0 := by
    intro M i r hr
    exact Matrix.det_eq_zero_of_row_eq_zero i (fun j => by rw [Matrix.updateRow_self]; exact hr j)
  by_cases hbc : b = c
  · subst hbc
    rw [Finset.sum_eq_zero]
    · simp
    · intro i _
      apply hz
      intro j
      split_ifs <;> rfl
  rw [Finset.sum_eq_single b]
  rotate_left
  · intro i _ hib
    apply hz
    intro j
    split_ifs <;> rfl
  · intro h; exact absurd (Finset.mem_univ b) h
  simp only [hbc, if_false, if_true]
  by_cases hab : a = b
  · subst hab
    rw [if_pos rfl, if_neg hbc, sub_zero]
    congr 1
    refine Matrix.ext fun i j => ?_
    by_cases hi : i = a
    · rw [hi, Matrix.updateRow_self]
      simp only [Matrix.updateRow_apply, hG]
      try (split_ifs <;> simp_all)
    · rw [Matrix.updateRow_ne hi]
  rw [if_neg hab]
  by_cases hac : a = c
  · subst hac
    rw [if_pos rfl, zero_sub]
    have hperm : (((genM K m).updateRow a (Pi.single (Fin.last m) 1)).updateRow b
        (fun j => X (a, j))) =
        ((genM K m).updateRow b (Pi.single (Fin.last m) 1)).submatrix (Equiv.swap b a) id := by
      refine Matrix.ext fun i j => ?_
      simp only [Matrix.submatrix_apply, id, Matrix.updateRow_apply, Equiv.swap_apply_def, hG]
      split_ifs <;> simp_all
    rw [hperm, Matrix.det_permute, Equiv.Perm.sign_swap hbc]
    simp
  · rw [if_neg hac, sub_zero]
    apply Matrix.det_zero_of_row_eq hab
    funext j
    rw [Matrix.updateRow_ne hab, Matrix.updateRow_self, Matrix.updateRow_ne hac, hG]

end PI.RL.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.NvFalseEq =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.RowLetter =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.RowLetter", "h": "module\n\npublic import Formalism.PeriodIntegrals.RowLetter\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.ChainRule\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowDerivationChainRule.NvFalseEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem row_letter_rule : PI.RowLetter :=
  PI.RL.W.rowLetter_of PI.RL.W.chainRule PI.RL.W.vecX PI.RL.W.keyCov PI.RL.W.hdHom
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.RowLetter =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowWeightSpan.RowWtSpanOfBideterminant =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowWeightSpan.RowWtSpanOfBideterminant", "h": "module\n\npublic import Formalism.PeriodIntegrals.RowWtSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.MvPolynomial.EulerIdentity\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace PI.RWS

open PI.RW

def rowW {k : ℕ} (a : Fin k) : Fin k × Fin k → ℕ := fun v => if v.1 = a then 1 else 0

theorem RE_eq_of_hom {K : Type} [CommRing K] {k : ℕ} (a : Fin k)
    (f : MvPolynomial (Fin k × Fin k) K) (d : ℕ)
    (h : IsWeightedHomogeneous (rowW a) f d) : RE K k a a f = (d : K) • f := by
  unfold RE
  rw [Nat.cast_smul_eq_nsmul K d f, ← h.sum_weight_X_mul_pderiv]
  symm
  rw [Fintype.sum_prod_type, Finset.sum_eq_single a (fun x _ hx => by simp [rowW, hx])
    (fun h => absurd (Finset.mem_univ a) h)]
  simp [rowW]

theorem minor_hom {K : Type} [CommRing K] {k s : ℕ} (a : Fin k) (I : Fin s → Fin k) (hs : s ≤ k) :
    IsWeightedHomogeneous (rowW a) (initMinor K I hs)
      (Finset.univ.filter fun p => I p = a).card := by
  unfold initMinor
  rw [Matrix.det_apply]
  refine IsWeightedHomogeneous.sum _ _ _ fun σ _ => ?_
  have hp := IsWeightedHomogeneous.prod Finset.univ
    (fun i => (X (I (σ i), Fin.castLE hs i) : MvPolynomial (Fin k × Fin k) K))
    (fun i => rowW a (I (σ i), Fin.castLE hs i)) (w := rowW a)
    (fun i _ => isWeightedHomogeneous_X K (rowW a) _)
  have hdeg : ∑ i, rowW a (I (σ i), Fin.castLE hs i) =
      (Finset.univ.filter fun p => I p = a).card := by
    simp only [rowW]
    rw [Finset.card_filter]
    exact Equiv.sum_comp σ (fun p => if I p = a then 1 else 0)
  rw [hdeg] at hp
  rw [Units.smul_def, ← mem_weightedHomogeneousSubmodule] at *
  exact zsmul_mem hp _

theorem bidet_hom {K : Type} [CommRing K] {k N : ℕ} (a : Fin k) (sz : Fin N → ℕ)
    (hsz : ∀ j, sz j ≤ k) (I : ∀ j, Fin (sz j) → Fin k) :
    IsWeightedHomogeneous (rowW a) (bideterminant K sz hsz I)
      (∑ j, (Finset.univ.filter fun p => I j p = a).card) := by
  simpa [bideterminant] using IsWeightedHomogeneous.prod _ _ _ fun j _ => minor_hom a (I j) (hsz j)

theorem wt_le {k N : ℕ} (sz : Fin N → ℕ) (I : ∀ j, Fin (sz j) → Fin k)
    (hI : ∀ j, StrictMono (I j)) (a t0 : Fin k) (ht0 : t0.val = 0) :
    ∑ j, (Finset.univ.filter fun p => I j p = a).card ≤ shapeDeg sz t0 := by
  unfold shapeDeg
  rw [ht0, Finset.card_filter]
  refine Finset.sum_le_sum fun j _ => ?_
  by_cases hj : 0 < sz j
  · rw [if_pos hj]
    refine Finset.card_le_one.2 fun p hp q hq => ?_
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hp hq
    exact (hI j).injective (hp.trans hq.symm)
  · rw [if_neg hj]
    have hem : (Finset.univ : Finset (Fin (sz j))) = ∅ :=
      Finset.univ_eq_empty_iff.2 ⟨fun p => hj (lt_of_le_of_lt (Nat.zero_le _) p.2)⟩
    rw [hem]
    simp

theorem rowWtSpan_of_bideterminant (h1 : BideterminantMem) (h2 : BideterminantSpan) : PI.RowWtSpan := by
  intro K _ m ν _
  refine ⟨{d : Σ N : ℕ, Σ sz : Fin N → ℕ, ∀ j, Fin (sz j) → Fin (m + 1) //
      (∀ j, d.2.1 j ≤ m + 1) ∧ shapeDeg d.2.1 = ν ∧ ∀ j, StrictMono (d.2.2 j)},
    fun d => bideterminant K d.1.2.1 d.2.1 d.1.2.2,
    fun d a => ∑ j, (Finset.univ.filter fun p => d.1.2.2 j p = a).card, ?_, ?_, ?_⟩
  · apply le_antisymm
    · rw [Submodule.span_le]
      rintro _ ⟨⟨⟨N, sz, I⟩, hsz, hsh, hmono⟩, rfl⟩
      subst hsh
      exact h1 K (m + 1) (m + 1) N sz hsz I
    · refine le_trans (h2 K (m + 1) (m + 1) ν) (Submodule.span_mono ?_)
      rintro f ⟨N, sz, hsz, I, hsh, hmono, rfl⟩
      exact ⟨⟨⟨N, sz, I⟩, hsz, hsh, hmono⟩, rfl⟩
  · rintro ⟨⟨N, sz, I⟩, hsz, hsh, hmono⟩ a
    exact RE_eq_of_hom a _ _ (bidet_hom a sz hsz I)
  · rintro ⟨⟨N, sz, I⟩, hsz, hsh, hmono⟩ a
    have hw := wt_le sz I hmono a 0 rfl
    rw [hsh] at hw
    exact hw

end PI.RWS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowWeightSpan.RowWtSpanOfBideterminant =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.RowWtSpan =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.RowWtSpan", "h": "module\n\npublic import Formalism.PeriodIntegrals.RowWtSpan\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RowWeightSpan.RowWtSpanOfBideterminant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.RowWtSpan =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LetterRowOperator =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LetterRowOperator", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FRSmulRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.GradedWeylDivisibility
open Formalism.L2.G.Model (theta Hd nuL)
open Formalism.L2.G.Model.TS (fockR)

def letterRowOperator (K : Type) [Field K] (m : ℕ) (vec : Bool) (d : ℕ) (a b : Fin (m + 1)) : Module.End K (VV K m d) :=
  if vec then Ed K (m + 1) d a b else (if a = b then (d : K) • (1 : Module.End K (VV K m d)) else 0) - Ed K (m + 1) d b a

theorem letter_operator_matches_row_operator (hT : RestTheta) (K : Type) [Field K] (m : ℕ) (vec : Bool) (d : ℕ) (a b : Fin (m + 1)) (P : VV K m d) :
    thV K m vec d (letterRowOperator K m vec d a b P) = RE K (m + 1) a b (thV K m vec d P) := by
  have h := hT K m vec d a b P.1 ((mem_Hd_iff _).2 P.2)
  show theta K m vec ((letterRowOperator K m vec d a b P : VV K m d) : MvPolynomial (Fin (m + 1)) K) = RE K (m + 1) a b (theta K m vec P.1)
  rw [h]
  congr 1
  unfold letterRowOperator TE
  cases vec
  · by_cases hab : a = b
    · simp [hab, Ed]
    · simp [hab, Ed]
  · simp [Ed]


theorem comm_A (hAdj : RestAdj) (hT : RestTheta) (hR : RestRep) {K : Type} [Field K] [CharZero K] {m : ℕ} (hm : 1 ≤ m)
    (vec : Bool) (d : ℕ)
    (A : MvPolynomial (Fin (m + 1) × Fin (m + 1)) K → MvPolynomial (Fin (m + 1) × Fin (m + 1)) K → Module.End K (VV K m d))
    (hA : ∀ β s P Q, fockR (thV K m vec d (A β s P)) (thV K m vec d Q) = fockR (thV K m vec d P * s) (thV K m vec d Q * β))
    (a b : Fin (m + 1)) (β s : MvPolynomial (Fin (m + 1) × Fin (m + 1)) K) :
    letterRowOperator K m vec d a b * A β s - A β s * letterRowOperator K m vec d a b = A β (RE K (m + 1) a b s) - A (RE K (m + 1) b a β) s := by
  apply LinearMap.ext
  intro P
  rw [← sub_eq_zero]
  apply uniqV hR hm vec d
  intro Q
  simp only [LinearMap.sub_apply, Module.End.mul_apply, map_sub, fR_sub_left, hA]
  rw [letter_operator_matches_row_operator hT, hAdj, ← letter_operator_matches_row_operator hT, hA, letter_operator_matches_row_operator hT, letter_operator_matches_row_operator hT]
  have e1 : RE K (m + 1) b a (thV K m vec d Q) * β =
      RE K (m + 1) b a (thV K m vec d Q * β) - thV K m vec d Q * RE K (m + 1) b a β := by
    rw [RE_mul]; ring
  rw [e1, fR_sub_right, ← hAdj, RE_mul, fR_add_left]
  ring

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LetterRowOperator =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePosOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePosOf", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LetterRowOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.GradedWeylDivisibility
open Formalism.L2.G.Model (theta Hd nuL)
open Formalism.L2.G.Model.TS (fockR)

theorem Ed_comm_eq (K : Type) [Field K] (m : ℕ) (vec : Bool) (d : ℕ) (a b : Fin (m + 1)) (X : Module.End K (VV K m d)) :
    Ed K (m + 1) d a b * X - X * Ed K (m + 1) d a b =
      if vec = true then letterRowOperator K m vec d a b * X - X * letterRowOperator K m vec d a b
      else -(letterRowOperator K m vec d b a * X - X * letterRowOperator K m vec d b a) := by
  cases vec
  · simp only [Bool.false_eq_true, if_false, letterRowOperator]
    split_ifs
    · rw [sub_mul, mul_sub, smul_mul_assoc, one_mul, mul_smul_comm, mul_one]
      abel
    · rw [zero_sub, neg_mul, mul_neg]
      abel
  · simp [letterRowOperator]



theorem onePos_of (hOB : OpBound) (hAdj : RestAdj) (hSt : RestStab) (hT : RestTheta) (hW : RestWt) (hR : RestRep)
    (hR2 : RestRep2) : OnePos := by
  intro K _ _ m hm vec d c ν hν hνc β hβ s hs
  obtain ⟨A, hA⟩ := exists_A (K := K) hR hR2 hm vec d
  have huniq : ∀ T T' : Module.End K (VV K m d),
      (∀ P Q, fockR (thV K m vec d (T P)) (thV K m vec d Q) =
        fockR (thV K m vec d (T' P)) (thV K m vec d Q)) → T = T' := by
    intro T T' h
    refine LinearMap.ext fun P => ?_
    have h0 := uniqV hR hm vec d (T P - T' P) (fun Q => by rw [map_sub, fR_sub_left, h P Q, sub_self])
    exact sub_eq_zero.1 h0
  have hadd1 : ∀ x x' y, A (x + x') y = A x y + A x' y := by
    intro x x' y
    apply huniq
    intro P Q
    rw [LinearMap.add_apply, map_add (f := _), fR_add_left, hA, hA, hA, mul_add, fR_add_right]
  have hsmul1 : ∀ (t : K) x y, A (t • x) y = t • A x y := by
    intro t x y
    apply huniq
    intro P Q
    rw [LinearMap.smul_apply, map_smul, fR_smul_left, hA, hA, mul_smul_comm, fR_smul_right]
  have hadd2 : ∀ x y y', A x (y + y') = A x y + A x y' := by
    intro x y y'
    apply huniq
    intro P Q
    rw [LinearMap.add_apply, map_add (f := _), fR_add_left, hA, hA, hA, mul_add, fR_add_left]
  have hsmul2 : ∀ (t : K) x y, A x (t • y) = t • A x y := by
    intro t x y
    apply huniq
    intro P Q
    rw [LinearMap.smul_apply, map_smul, fR_smul_left, hA, hA, mul_smul_comm, fR_smul_left]
  let Aₗ : MvPolynomial (Fin (m + 1) × Fin (m + 1)) K →ₗ[K]
      MvPolynomial (Fin (m + 1) × Fin (m + 1)) K →ₗ[K] Module.End K (VV K m d) :=
    LinearMap.mk₂ K A hadd1 hsmul1 hadd2 hsmul2
  obtain ⟨J, bs, μ, hspan, hRE, hμ⟩ := hW K m ν hν
  let WW := Submodule.map₂ Aₗ (dualWeyl K (m + 1) (m + 1) ν) (dualWeyl K (m + 1) (m + 1) ν)
  let Sg := Set.image2 (fun x y => Aₗ x y) (Set.range bs) (Set.range bs)
  have hWWspan : WW = Submodule.span K Sg := by
    show Submodule.map₂ Aₗ _ _ = _
    rw [← hspan, Submodule.map₂_span_span]
  have hbmem : ∀ i, bs i ∈ dualWeyl K (m + 1) (m + 1) ν := fun i => by
    rw [← hspan]
    exact Submodule.subset_span ⟨i, rfl⟩
  have hAmem : ∀ x y, x ∈ dualWeyl K (m + 1) (m + 1) ν → y ∈ dualWeyl K (m + 1) (m + 1) ν →
      A x y ∈ WW := fun x y hx hy => Submodule.apply_mem_map₂ Aₗ hx hy
  have hcomm : ∀ x y (a a' : Fin (m + 1)), x ∈ dualWeyl K (m + 1) (m + 1) ν →
      y ∈ dualWeyl K (m + 1) (m + 1) ν →
      Ed K (m + 1) d a a' * A x y - A x y * Ed K (m + 1) d a a' ∈ WW := by
    intro x y a a' hx hy
    rw [Ed_comm_eq K m vec d a a' (A x y)]
    split_ifs
    · rw [comm_A hAdj hT hR hm vec d A hA a a' x y]
      exact WW.sub_mem (hAmem _ _ hx (hSt K (m + 1) ν a a' y hy)) (hAmem _ _ (hSt K (m + 1) ν a' a x hx) hy)
    · rw [comm_A hAdj hT hR hm vec d A hA a' a x y]
      exact WW.neg_mem (WW.sub_mem (hAmem _ _ hx (hSt K (m + 1) ν a' a y hy))
        (hAmem _ _ (hSt K (m + 1) ν a a' x hx) hy))
  have hstab : ∀ A' ∈ WW, ∀ a a' : Fin (m + 1),
      Ed K (m + 1) d a a' * A' - A' * Ed K (m + 1) d a a' ∈ WW := by
    intro A' hA' a a'
    rw [hWWspan] at hA'
    induction hA' using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨_, ⟨i, rfl⟩, _, ⟨j, rfl⟩, rfl⟩ := hx
      exact hcomm _ _ a a' (hbmem i) (hbmem j)
    | zero => simp
    | add x y _ _ hx hy =>
      have e : Ed K (m + 1) d a a' * (x + y) - (x + y) * Ed K (m + 1) d a a' =
          (Ed K (m + 1) d a a' * x - x * Ed K (m + 1) d a a') +
            (Ed K (m + 1) d a a' * y - y * Ed K (m + 1) d a a') := by
        rw [mul_add, add_mul]
        abel
      rw [e]
      exact WW.add_mem hx hy
    | smul t x _ hx =>
      have e : Ed K (m + 1) d a a' * (t • x) - (t • x) * Ed K (m + 1) d a a' =
          t • (Ed K (m + 1) d a a' * x - x * Ed K (m + 1) d a a') := by
        rw [mul_smul_comm, smul_mul_assoc, smul_sub]
      rw [e]
      exact WW.smul_mem t hx
  have hwt : ∀ A' ∈ Sg, ∃ ω : Fin (m + 1) → ℤ,
      (∀ a, Ed K (m + 1) d a a * A' - A' * Ed K (m + 1) d a a = (ω a : K) • A') ∧ ∀ a, ω a ≤ c := by
    rintro _ ⟨_, ⟨i, rfl⟩, _, ⟨j, rfl⟩, rfl⟩
    refine ⟨fun a => if vec then (μ j a : ℤ) - μ i a else (μ i a : ℤ) - μ j a, fun a => ?_, fun a => ?_⟩
    · show Ed K (m + 1) d a a * A (bs i) (bs j) - A (bs i) (bs j) * Ed K (m + 1) d a a = _
      rw [Ed_comm_eq K m vec d a a (A (bs i) (bs j)), comm_A hAdj hT hR hm vec d A hA a a (bs i) (bs j),
        hRE j a, hRE i a, hsmul1, hsmul2]
      dsimp only
      rw [show (Aₗ (bs i)) (bs j) = A (bs i) (bs j) from rfl]
      split_ifs <;> push_cast <;> rw [sub_smul] <;> abel
    · dsimp only
      have h1 := hμ j a
      have h2 := hμ i a
      split_ifs <;> omega
  have hmain := hOB K (m + 1) d c WW Sg hstab hWWspan hwt (A β s) (hAmem β s hβ hs)
  have hset : {B | ∃ l : List (Fin (m + 1) × Fin (m + 1)), l.length ≤ c ∧ B = EdWord K (m + 1) d l} =
      EdWord K (m + 1) d '' {l | l.length ≤ c} := by
    ext B
    simp [eq_comm]
  rw [hset, Finsupp.mem_span_image_iff_linearCombination] at hmain
  obtain ⟨f, hf, hfA⟩ := hmain
  refine ⟨f.support, f, fun l hl => (Finsupp.mem_supported K f).1 hf hl, ?_⟩
  intro P hP Q hQ
  have hP' : P ∈ homogeneousSubmodule (Fin (m + 1)) K d := (mem_Hd_iff P).1 hP
  have hQ' : Q ∈ homogeneousSubmodule (Fin (m + 1)) K d := (mem_Hd_iff Q).1 hQ
  have h1 := hA β s ⟨P, hP'⟩ ⟨Q, hQ'⟩
  have hcoe : ((A β s ⟨P, hP'⟩ : VV K m d) : MvPolynomial (Fin (m + 1)) K) =
      ∑ l ∈ f.support, f l • word1 l P := by
    rw [← hfA, Finsupp.linearCombination_apply, Finsupp.sum, LinearMap.sum_apply, Submodule.coe_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [LinearMap.smul_apply, Submodule.coe_smul, EdWord_coe]
  calc fockR (theta K m vec P * s) (theta K m vec Q * β)
      = fockR (thV K m vec d ⟨P, hP'⟩ * s) (thV K m vec d ⟨Q, hQ'⟩ * β) := rfl
    _ = fockR (thV K m vec d (A β s ⟨P, hP'⟩)) (thV K m vec d ⟨Q, hQ'⟩) := h1.symm
    _ = fockR (theta K m vec (∑ l ∈ f.support, f l • word1 l P)) (theta K m vec Q) := by
      rw [← hcoe]
      rfl

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePosOf =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RowGenCoeffZero =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RowGenCoeffZero", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.MemHdIff\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormCoreSK\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.GradedWeylDivisibility
open Formalism.L2.G.Model.TS (fockR)

theorem RE_X (K : Type) [CommRing K] (k : ℕ) (a b : Fin k) (v : Fin k × Fin k) :
    RE K k a b (X v) = if v.1 = b then X (a, v.2) else 0 := by
  unfold RE
  simp only [pderiv_X]
  by_cases h : v.1 = b
  · rw [if_pos h, Finset.sum_eq_single v.2]
    · have : ((b, v.2) : Fin k × Fin k) = v := Prod.ext h.symm rfl
      rw [this, Pi.single_eq_same, mul_one]
    · intro t _ ht
      rw [Pi.single_eq_of_ne, mul_zero]
      intro hv
      apply ht
      rw [hv]
    · simp
  · rw [if_neg h]
    apply Finset.sum_eq_zero
    intro t _
    rw [Pi.single_eq_of_ne, mul_zero]
    intro hv
    apply h
    rw [hv]

theorem RE_C (K : Type) [CommRing K] (k : ℕ) (a b : Fin k) (r : K) : RE K k a b (C r) = 0 := by
  unfold RE
  simp

theorem rowGen_coeff_zero (K : Type) [CommRing K] (k : ℕ) (a b : Fin k) (f : MvPolynomial (Fin k × Fin k) K) :
    (rowGen K a b f).coeff 0 = f := by
  induction f using MvPolynomial.induction_on with
  | C r => simp [rowGen, Polynomial.algebraMap_apply, MvPolynomial.algebraMap_eq]
  | add p q hp hq => rw [map_add (f := _), Polynomial.coeff_add, hp, hq]
  | mul_X p v hp =>
    rw [map_mul, Polynomial.mul_coeff_zero, hp]
    congr 1
    simp only [rowGen, aeval_X]
    split_ifs <;> simp

theorem RE_eq_rowDiv (K : Type) [CommRing K] (k : ℕ) (a b : Fin k) (f : MvPolynomial (Fin k × Fin k) K) :
    RE K k a b f = rowDiv K a b 1 f := by
  unfold rowDiv
  induction f using MvPolynomial.induction_on with
  | C r => rw [RE_C]; simp [rowGen, Polynomial.algebraMap_apply, MvPolynomial.algebraMap_eq]
  | add p q hp hq => rw [RE_add, map_add (f := _), Polynomial.coeff_add, hp, hq]
  | mul_X p v hp =>
    rw [RE_mul, map_mul, Polynomial.mul_coeff_one, rowGen_coeff_zero, rowGen_coeff_zero, hp, RE_X]
    have : (rowGen K a b (X v)).coeff 1 = if v.1 = b then X (a, v.2) else 0 := by
      simp only [rowGen, aeval_X]
      split_ifs <;> simp [Polynomial.coeff_C]
    rw [this]
    ring

theorem restAdj : RestAdj := by
  intro K _ k a b P Q
  rw [RE_eq_rowDiv, RE_eq_rowDiv]
  exact _root_.Formalism.L2.G.Model.TS.fock_pairing_divided_adjoint K k k a b 1 P Q

theorem restStab : RestStab := by
  intro K _ _ k ν a b P hP
  rw [RE_eq_rowDiv]
  exact rowDivStable K k k ν a b 1 P hP

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RowGenCoeffZero =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ThetaInjHd =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ThetaInjHd", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FRSmulRight\nimport Formalism.GradedWeylDivisibility.FinalD\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.PolynomialThetaProduct\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormCoreSK\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dual.Lemmas\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.GradedWeylDivisibility
open Formalism.L2.G.Model (theta Hd nuL psi qf)
open Formalism.L2.G.Model.TS (fockR)

theorem nuL_anti (m d : ℕ) (vec : Bool) : Antitone (nuL m d vec) := by
  intro a b hab
  cases vec
  · simp only [nuL, Bool.false_eq_true, if_false]
    by_cases ha : a = Fin.last m
    · have hb : b = Fin.last m := le_antisymm (Fin.le_last _) (ha ▸ hab)
      simp [ha, hb]
    · split_ifs <;> omega
  · simp only [nuL, if_true]
    by_cases hb : b = 0
    · have ha : a = 0 := le_antisymm (hb ▸ hab) (Fin.zero_le _)
      simp [ha, hb]
    · split_ifs <;> omega

theorem theta_inj_Hd (K : Type) [Field K] (m : ℕ) (hm : 1 ≤ m) (vec : Bool) (d : ℕ) (P : MvPolynomial (Fin (m + 1)) K)
    (hP : P ∈ Hd K (m + 1) d) (h : theta K m vec P = 0) : P = 0 := by
  have h1 : (psi K m vec).comp (theta K m vec) = aeval (fun c => qf K m vec * X c) := by
    apply MvPolynomial.algHom_ext
    intro c
    simp only [AlgHom.comp_apply, theta, aeval_X]
    exact Formalism.L2.G.Model.psi_Nv K m hm vec c
  have h2 := congrArg (fun f => f P) h1
  simp only [AlgHom.comp_apply, h, map_zero] at h2
  rw [Formalism.L2.G.Model.scaleHd _ P hP] at h2
  rcases mul_eq_zero.1 h2.symm with h3 | h3
  · exact absurd h3 (pow_ne_zero _ (Formalism.L2.G.Model.qf_ne K m vec))
  · exact h3

theorem theta_mem (K : Type) [Field K] (m : ℕ) (hm : 1 ≤ m) (vec : Bool) (d : ℕ) (P : MvPolynomial (Fin (m + 1)) K)
    (hP : P ∈ Hd K (m + 1) d) : theta K m vec P ∈ dualWeyl K (m + 1) (m + 1) (nuL m d vec) := by
  rw [← Formalism.L2.G.Model.theta_Hd K m hm d vec]
  exact ⟨P, hP, rfl⟩

theorem restRep : RestRep := by
  intro K _ _ m hm vec d P hP h
  apply theta_inj_Hd K m hm vec d P hP
  apply Formalism.L2.G.Model.TS.Top.nondegK K (m + 1) (m + 1) le_rfl (nuL m d vec) (nuL_anti m d vec) _ (theta_mem K m hm vec d P hP)
  intro P' hP'
  rw [← Formalism.L2.G.Model.theta_Hd K m hm d vec] at hP'
  obtain ⟨Q, hQ, rfl⟩ := hP'
  rw [fR_symm]
  exact h Q hQ

theorem restRep2 : RestRep2 := by
  intro K _ _ m hm vec d f
  have hfinW : FiniteDimensional K ↥(dualWeyl K (m + 1) (m + 1) (nuL m d vec)) := by
    obtain ⟨b, hb, -⟩ := sSBasis K (m + 1) (m + 1) (nuL m d vec)
    have : Finite ↥(ssIdx (m + 1) (m + 1) (nuL m d vec)) := (sSIdxFinite (m + 1) (m + 1) (nuL m d vec)).to_subtype
    rw [← hb.2.1]
    exact FiniteDimensional.span_of_finite K (Set.finite_range b)
  let φ : VV K m d →ₗ[K] ↥(dualWeyl K (m + 1) (m + 1) (nuL m d vec)) :=
    LinearMap.codRestrict _ (thV K m vec d) (fun P => theta_mem K m hm vec d P.1 ((mem_Hd_iff _).2 P.2))
  have hφ : Function.Injective φ := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro P hP
    apply Subtype.ext
    apply theta_inj_Hd K m hm vec d P.1 ((mem_Hd_iff _).2 P.2)
    exact congrArg Subtype.val hP
  have hfinV : FiniteDimensional K (VV K m d) := FiniteDimensional.of_injective φ hφ
  have hinj : Function.Injective (cForm K m vec d 1 1) := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro P hP
    apply uniqV restRep hm vec d P
    intro Q
    have h2 : cForm K m vec d 1 1 P Q = 0 := by rw [hP]; rfl
    rw [cForm_apply, mul_one, mul_one] at h2
    exact h2
  have hsurj : Function.Surjective (cForm K m vec d 1 1) :=
    (LinearMap.injective_iff_surjective_of_finrank_eq_finrank (Subspace.dual_finrank_eq).symm).1 hinj
  obtain ⟨P, hP⟩ := hsurj f
  refine ⟨P, fun Q => ?_⟩
  rw [← hP, cForm_apply, mul_one, mul_one]

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ThetaInjHd =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePos =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePos", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.MemHdIff\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePosOf\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RowGenCoeffZero\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ThetaInjHd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

theorem onePos_of_opBound (hOB : OpBound) (hT : RestTheta) (hW : RestWt) : OnePos :=
  onePos_of hOB restAdj restStab hT hW restRep restRep2

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePos =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.OperatorWeightBoundHolds =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.OperatorWeightBoundHolds", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FirstWeightLeConductor\npublic import Formalism.PeriodIntegrals.RowWtSpan\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.MemHdIff\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Formalism.GradedWeylDivisibility.FinalC\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormCoreSK\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdjointTensorOfSingleValid\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.OpWords\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.RowLetter\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.RowWtSpan\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePos\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\npublic import Mathlib.Data.Fin.Tuple.Sort\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideWords

open Formalism.GradedWeylDivisibility

private theorem initMinor_comp_perm_eq_sign_mul {R : Type} [CommRing R] {r n s : ℕ} (I : Fin s → Fin r) (hs : s ≤ n)
    (σ : Equiv.Perm (Fin s)) :
    PI.RW.initMinor R (I ∘ σ) hs =
      ((((Equiv.Perm.sign σ : ℤˣ) : ℤ) : MvPolynomial (Fin r × Fin n) R)) * PI.RW.initMinor R I hs := by
  unfold PI.RW.initMinor
  rw [← Matrix.det_permute σ]
  rfl

private theorem initMinor_eq_zero_of_not_injective {R : Type} [CommRing R] {r n s : ℕ} (I : Fin s → Fin r) (hs : s ≤ n)
    (hI : ¬ Function.Injective I) : PI.RW.initMinor R I hs = 0 := by
  unfold PI.RW.initMinor
  simp only [Function.Injective, not_forall] at hI
  obtain ⟨i, j, hij, hne⟩ := hI
  exact Matrix.det_zero_of_row_eq (Ne.symm (Ne.symm hne)) (by
    funext q
    simp [hij])

private theorem initMinor_eq_sign_sort_mul {R : Type} [CommRing R] {r n s : ℕ} (I : Fin s → Fin r) (hs : s ≤ n)
    (hI : Function.Injective I) :
    PI.RW.initMinor R I hs =
      ((((Equiv.Perm.sign (Tuple.sort I) : ℤˣ) : ℤ) : MvPolynomial (Fin r × Fin n) R)) *
        PI.RW.initMinor R (I ∘ Tuple.sort I) hs := by
  rw [initMinor_comp_perm_eq_sign_mul, ← mul_assoc, ← Int.cast_mul, ← Units.val_mul, Int.units_mul_self]
  simp

theorem bideterminant_span_holds : PI.RW.BideterminantSpan := by
  intro R _ _ k n ν
  rw [show PI.RW.dualWeyl R k n ν = Formalism.GradedWeylDivisibility.dualWeyl R k n ν from rfl,
    Formalism.GradedWeylDivisibility.standardMonomialSpanDomain R k n ν]
  refine Submodule.span_le.mpr ?_
  rintro f ⟨K, sz, hsz, I, hν, rfl⟩
  by_cases hinj : ∀ i, Function.Injective (I i)
  · have hb : Formalism.GradedWeylDivisibility.bideterminant R sz hsz I =
        (∏ i, ((((Equiv.Perm.sign (Tuple.sort (I i)) : ℤˣ) : ℤ) : MvPolynomial (Fin k × Fin n) R))) *
          PI.RW.bideterminant R sz hsz (fun i => I i ∘ Tuple.sort (I i)) := by
      show (∏ i, PI.RW.initMinor R (I i) (hsz i)) = _
      unfold PI.RW.bideterminant
      rw [← Finset.prod_mul_distrib]
      exact Finset.prod_congr rfl (fun i _ => initMinor_eq_sign_sort_mul (I i) (hsz i) (hinj i))
    rw [hb, ← Int.cast_prod, ← zsmul_eq_mul]
    have hJ : ∀ i, StrictMono (I i ∘ Tuple.sort (I i)) := fun i =>
      (Tuple.monotone_sort (I i)).strictMono_of_injective ((hinj i).comp (Equiv.injective _))
    refine zsmul_mem (Submodule.subset_span ?_) _
    exact ⟨K, sz, hsz, fun i => I i ∘ Tuple.sort (I i), hν, hJ, rfl⟩
  · push_neg at hinj
    obtain ⟨i, hi⟩ := hinj
    have h0 : Formalism.GradedWeylDivisibility.bideterminant R sz hsz I = 0 := by
      show (∏ i, PI.RW.initMinor R (I i) (hsz i)) = 0
      exact Finset.prod_eq_zero (Finset.mem_univ i) (initMinor_eq_zero_of_not_injective (I i) (hsz i) hi)
    rw [h0]
    exact Submodule.zero_mem _

theorem dual_weyl_weights_bounded : Formalism.MainNotions.TestSideCounting.RestWt := _root_.PI.RWS.rowWtSpan_of_bideterminant bidetMem bideterminant_span_holds

theorem letter_operators_holds : Formalism.MainNotions.TestSideCounting.RestTheta := row_letter_rule

theorem onePos_of_OB (hOB : Formalism.MainNotions.TestSideCounting.OpBound) : Formalism.MainNotions.TestSideCounting.OnePos :=
  Formalism.MainNotions.TestSideCounting.onePos_of_opBound hOB letter_operators_holds dual_weyl_weights_bounded

theorem tensor_operators_of_one_position (h : Formalism.MainNotions.TestSideCounting.OnePos) : Formalism.MainNotions.TestSideCounting.TenOp :=
  adjointTensorOfSingle_valid _root_.Formalism.L2.G.Model.TS.fock_pairing_block h

theorem tenOp_of_OB (hOB : Formalism.MainNotions.TestSideCounting.OpBound) : Formalism.MainNotions.TestSideCounting.TenOp := tensor_operators_of_one_position (onePos_of_OB hOB)

theorem tensor_operators_holds : Formalism.MainNotions.TestSideCounting.TenOp := tenOp_of_OB _root_.operator_words_bound

end Formalism.MainNotions.TestSideWords
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.OperatorWeightBoundHolds =====
