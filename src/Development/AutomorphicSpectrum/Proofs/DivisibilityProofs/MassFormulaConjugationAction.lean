module

public import Mathlib.Algebra.Group.End
public import Mathlib.Tactic.Continuity
public import Mathlib.Data.Fintype.Card
public import Mathlib.Data.Fintype.EquivFin
public import Mathlib.Data.Fintype.Fin
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardCount, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MassFormulaConjugationAction

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardCount =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardCount", "h": "module\n\npublic import Mathlib.Algebra.Group.End\npublic import Mathlib.Tactic.Continuity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Data.Fintype.Card\npublic import Mathlib.Data.Fintype.EquivFin\npublic import Mathlib.Data.Fintype.Fin\n\n"}
section -- clump:auto
@[expose] public section

namespace ListOfFnPermExistsEquivPerm

open Finset in
private theorem card_count {α : Type} [DecidableEq α] :
    ∀ {n : ℕ} (v : Fin n → α) (a : α), #{i | v i = a} = (List.ofFn v).count a
  | 0, v, a => by simp
  | n + 1, v, a => by
    have ih := card_count (fun i : Fin n => v i.succ) a
    rw [Fin.card_filter_univ_succ', List.ofFn_succ, List.count_cons, ih]
    by_cases h : v 0 = a <;> simp [h, add_comm]

end ListOfFnPermExistsEquivPerm

theorem UpperTheory.Reformulated.B.Yde7.main :
    ∀ {α : Type} {n : ℕ} (v w : Fin n → α),
      (List.ofFn v).Perm (List.ofFn w) → ∃ (s : Equiv.Perm (Fin n)), v = w ∘ (⇑s : Fin n → Fin n) := by
  intro α n v w h
  classical
  have hc : ∀ c, Fintype.card {i // v i = c} = Fintype.card {i // w i = c} := by
    intro c
    rw [Fintype.card_subtype, Fintype.card_subtype]
    convert (ListOfFnPermExistsEquivPerm.card_count v c).trans ((h.count_eq c).trans (ListOfFnPermExistsEquivPerm.card_count w c).symm)
  refine ⟨Equiv.ofFiberEquiv (fun c => Fintype.equivOfCardEq (hc c)), ?_⟩
  funext i
  exact (Equiv.ofFiberEquiv_map _ i).symm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardCount =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MassFormulaConjugationAction =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MassFormulaConjugationAction", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num

section Lin

variable {K : Type} [Fintype K] {ι : K → Type} {σ : Type}
  (I : Ideal (MvPolynomial (Σ k, ι k) ℤ) → (n : ℕ) → (Fin n → HermLine ι) → ℝ)
  (P : Ideal (MvPolynomial (Σ k, ι k) ℤ)) (A : σ → HermLine ι)

theorem arNum_eq_sum_of_subset (H : MvPolynomial σ ℝ) (s : Finset (σ →₀ ℕ)) (hs : H.support ⊆ s) :
    arNum I P A H = ∑ μ ∈ s, H.coeff μ * arList I P (μ.toMultiset.map A).toList := by
  unfold arNum
  refine Finset.sum_subset hs fun μ _ hμ => ?_
  rw [MvPolynomial.notMem_support_iff.1 hμ, zero_mul]

theorem arNum_add' (H H' : MvPolynomial σ ℝ) :
    arNum I P A (H + H') = arNum I P A H + arNum I P A H' := by
  classical
  rw [arNum_eq_sum_of_subset I P A (H + H') (H.support ∪ H'.support) MvPolynomial.support_add,
    arNum_eq_sum_of_subset I P A H (H.support ∪ H'.support) Finset.subset_union_left,
    arNum_eq_sum_of_subset I P A H' (H.support ∪ H'.support) Finset.subset_union_right,
    ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun μ _ => ?_
  rw [MvPolynomial.coeff_add, add_mul]

theorem arNum_C_mul' (c : ℝ) (H : MvPolynomial σ ℝ) :
    arNum I P A (C c * H) = c * arNum I P A H := by
  have hs : (C c * H).support ⊆ H.support := by
    intro μ hμ
    rw [MvPolynomial.mem_support_iff] at hμ ⊢
    intro h0
    exact hμ (by rw [MvPolynomial.coeff_C_mul, h0, mul_zero])
  rw [arNum_eq_sum_of_subset I P A (C c * H) H.support hs, arNum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun μ _ => ?_
  rw [MvPolynomial.coeff_C_mul, mul_assoc]

theorem arNum_zero' : arNum I P A (0 : MvPolynomial σ ℝ) = 0 := by
  simp [arNum]

theorem arNum_sum' {α : Type} (s : Finset α) (H : α → MvPolynomial σ ℝ) :
    arNum I P A (∑ a ∈ s, H a) = ∑ a ∈ s, arNum I P A (H a) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using arNum_zero' I P A
  | insert a s ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha, arNum_add', ih]

theorem arNum_monomial' (μ : σ →₀ ℕ) (c : ℝ) :
    arNum I P A (monomial μ c) = c * arList I P (μ.toMultiset.map A).toList := by
  classical
  rw [arNum_eq_sum_of_subset I P A (monomial μ c) {μ} MvPolynomial.support_monomial_subset,
    Finset.sum_singleton, MvPolynomial.coeff_monomial, if_pos rfl]

theorem arNum_rename' {σ' : Type} (e : σ' → σ) (H : MvPolynomial σ' ℝ) :
    arNum I P A (rename e H) = arNum I P (A ∘ e) H := by
  classical
  induction H using MvPolynomial.induction_on' with
  | monomial μ c =>
    rw [MvPolynomial.rename_monomial, arNum_monomial', arNum_monomial',
      show Finsupp.toMultiset (Finsupp.mapDomain e μ) = (Finsupp.toMultiset μ).map e from
        (Finsupp.toMultiset_map _ _).symm, Multiset.map_map]
  | add p q hp hq => rw [map_add (f := _), arNum_add', arNum_add', hp, hq]

end Lin

theorem arList_eq_of_perm {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {P : Ideal (MRing ι ℤ)} {D : ℕ} (hP : IsArithVar P (D + 1))
    {I : Ideal (MRing ι ℤ) → (n : ℕ) → (Fin n → HermLine ι) → ℝ} (hI : IsIntersectionFamily I)
    (l : List (HermLine ι)) (L : Fin (D + 1) → HermLine ι) (hL : ∀ j, IsSmoothHerm (L j))
    (hp : l.Perm (List.ofFn L)) : arList I P l = I P (D + 1) L := by
  have key : ∀ (m : ℕ) (v : Fin m → HermLine ι), (List.ofFn v).Perm (List.ofFn L) →
      I P m v = I P (D + 1) L := by
    intro m v h
    have hm : m = D + 1 := by simpa using h.length_eq
    subst hm
    obtain ⟨s, rfl⟩ := _root_.UpperTheory.Reformulated.B.Yde7.main v L h
    exact hI.1 P _ L s hP hL
  refine key l.length l.get ?_
  rwa [List.ofFn_get]

theorem arNum_linear_arList_symm : (∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (I : Ideal (MRing ι ℤ) → (n : ℕ) → (Fin n → HermLine ι) → ℝ) (P : Ideal (MRing ι ℤ)) (σ : Type) (A : σ → HermLine ι), (∀ H H' : MvPolynomial σ ℝ, arNum I P A (H + H') = arNum I P A H + arNum I P A H') ∧ (∀ (c : ℝ) (H : MvPolynomial σ ℝ), arNum I P A (C c * H) = c * arNum I P A H) ∧ (∀ (α : Type) (s : Finset α) (H : α → MvPolynomial σ ℝ), arNum I P A (∑ a ∈ s, H a) = ∑ a ∈ s, arNum I P A (H a)) ∧ (∀ (μ : σ →₀ ℕ) (c : ℝ), arNum I P A (monomial μ c) = c * arList I P (μ.toMultiset.map A).toList) ∧ ∀ (σ' : Type) (e : σ' → σ) (H : MvPolynomial σ' ℝ), arNum I P A (rename e H) = arNum I P (A ∘ e) H) ∧ (∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι ℤ)) (D : ℕ), IsArithVar P (D + 1) → ∀ (I : Ideal (MRing ι ℤ) → (n : ℕ) → (Fin n → HermLine ι) → ℝ), IsIntersectionFamily I → ∀ (l : List (HermLine ι)) (L : Fin (D + 1) → HermLine ι), (∀ j, IsSmoothHerm (L j)) → l.Perm (List.ofFn L) → arList I P l = I P (D + 1) L) := by
  refine ⟨?_, ?_⟩
  · intro K _ _ ι _ I P σ A
    exact ⟨arNum_add' I P A, arNum_C_mul' I P A, fun α s H => arNum_sum' I P A s H,
      arNum_monomial' I P A, fun σ' e H => arNum_rename' I P A e H⟩
  · intro K _ _ ι _ P D hP I hI l L hL hp
    exact arList_eq_of_perm hP hI l L hL hp

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MassFormulaConjugationAction =====
