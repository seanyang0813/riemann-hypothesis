module

public import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift
public import Mathlib.Data.Nat.Prime.Factorial
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAndTotalDifferentialAdditiveSquareZero
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechDeltaCupProduct
public import Mathlib.LinearAlgebra.ExteriorAlgebra.OfAlternating
public import Mathlib.LinearAlgebra.ExteriorAlgebra.Grading
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
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
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Order.CompletePartialOrder

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CartierPropertyAtSignMulFactorialScaling, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAntisymmetrizedCupProductLeadingTerm, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAntisymmetrizedCupProductVanishAboveDegree, Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CechVanishingAlongFiltration, Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.TotalDifferentialCupProduct, Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CupProductFiltrationBound, Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.ExistsFrobeniusSplittingDatum, Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.AlternatingProductCocycle, Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.FrobeniusSplittingClosed, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorFormsSpanOfSetsMulSmulMono, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorFormsSpanOfSetsMulSmulMonoStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlternatingProductIntegral, Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.SplittingIntegralFormsBound, Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.SplittingLocalIntegrality

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CartierPropertyAtSignMulFactorialScaling =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CartierPropertyAtSignMulFactorialScaling", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.Data.Nat.Prime.Factorial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI

theorem exists_inv_signFactorial {E : Type} [AddCommGroup E] (p : ℕ) [hp : Fact p.Prime]
    (hE : ∀ x : E, p • x = 0) (a : ℕ) (ha : a < p) :
    ∃ u : ℤ, ∀ y : E, (u * ((-1 : ℤ) ^ a * (a.factorial : ℤ))) • y = y := by
  have hcop : IsCoprime ((-1 : ℤ) ^ a * (a.factorial : ℤ)) (p : ℤ) := by
    apply IsCoprime.mul_left
    · exact IsCoprime.pow_left (isCoprime_one_left.neg_left)
    · rw [Int.isCoprime_iff_gcd_eq_one, Int.gcd_natCast_natCast]
      exact Nat.Coprime.symm ((Nat.Prime.coprime_iff_not_dvd hp.out).2
        (fun h => absurd ((Nat.Prime.dvd_factorial hp.out).1 h) (by omega)))
  obtain ⟨u, v, huv⟩ := hcop
  refine ⟨u, fun y => ?_⟩
  have h1 : u * ((-1 : ℤ) ^ a * (a.factorial : ℤ)) = 1 - v * p := by linarith
  rw [h1, sub_smul, one_smul, mul_smul, natCast_zsmul, hE, smul_zero, sub_zero]

theorem cartierAt_signFactorial : ∀ {E : Type} [AddCommGroup E] (p : ℕ) [Fact p.Prime] (d γ : E →+ E) (γ' : E → E)
    (N T : ℕ → AddSubgroup E), (∀ x : E, p • x = 0) → (∀ a, p ≤ a → N a = ⊥) →
    (∀ a, ∀ x ∈ N a, γ' x = ((-1 : ℤ) ^ a * (a.factorial : ℤ)) • γ x) → CartierAt d γ N T → CartierAt d γ' N T := by
  intro E _ p hp d γ γ' N T hE hN hγ hC
  have hp0 : 0 < p := hp.out.pos
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro x hx h0
    rw [hγ 0 x hx] at h0
    simp at h0
    exact hC.inj_zero x hx h0
  · intro a x hx z hz h
    by_cases hpa : p ≤ a + 1
    · rw [hN _ hpa] at hx; exact (AddSubgroup.mem_bot.1 hx)
    · obtain ⟨u, hu⟩ := exists_inv_signFactorial (E := E) p hE (a + 1) (by omega)
      apply hC.inj_succ a x hx (u • z) (AddSubgroup.zsmul_mem _ hz u)
      rw [hγ _ x hx] at h
      rw [map_zsmul, ← h, ← mul_smul, hu]
  · intro y hy hd
    obtain ⟨x, hx, rfl⟩ := hC.surj_zero y hy hd
    exact ⟨x, hx, by rw [hγ 0 x hx]; simp⟩
  · intro a y hy hd
    obtain ⟨x, hx, z, hz, rfl⟩ := hC.surj_succ a y hy hd
    by_cases hpa : p ≤ a + 1
    · have hx0 : x = 0 := by rw [hN _ hpa] at hx; exact AddSubgroup.mem_bot.1 hx
      subst hx0
      refine ⟨0, AddSubgroup.zero_mem _, z, hz, ?_⟩
      rw [hγ (a + 1) 0 (AddSubgroup.zero_mem _)]; simp
    · obtain ⟨u, hu⟩ := exists_inv_signFactorial (E := E) p hE (a + 1) (by omega)
      refine ⟨u • x, AddSubgroup.zsmul_mem _ hx u, z, hz, ?_⟩
      rw [hγ _ _ (AddSubgroup.zsmul_mem _ hx u), map_zsmul, ← mul_smul, mul_comm, hu]

end GlobalTheory.DI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CartierPropertyAtSignMulFactorialScaling =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAntisymmetrizedCupProductLeadingTerm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAntisymmetrizedCupProductLeadingTerm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI.PhiLead
variable {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type} [LinearOrder ι]

theorem prodL_single (f : ι → V →+ V) (h : ι → ι → V →+ K) (j : ι) (vs : List V) :
    prodL f h vs {j} = ((-1 : ℤ) ^ vs.length) • (vs.map (fun v => ExteriorAlgebra.ι K (f j v))).prod := by
  induction vs with
  | nil => simp [prodL, oneC]
  | cons v vs ih =>
    have e : prodL f h (v :: vs) = Lop f h v (prodL f h vs) := rfl
    rw [e]
    simp only [Lop, Finset.singleton_nonempty, dite_true, Finset.min'_singleton, Finset.erase_singleton,
      Finset.not_nonempty_empty, dite_false, add_zero, Finset.card_singleton, ih, List.length_cons,
      List.map_cons, List.prod_cons, pow_succ]
    rw [mul_smul_comm, smul_smul]
    ring_nf

theorem alt_single (f : ι → V →+ V) (h : ι → ι → V →+ K) (a : ℕ) (v : Fin a → V) (j : ι) :
    alt f h a v {j} = ((-1 : ℤ) ^ a * (a.factorial : ℤ)) • ExteriorAlgebra.ιMulti K a (fun k => f j (v k)) := by
  have key : ∀ σ : Equiv.Perm (Fin a), prodL f h (List.ofFn (v ∘ σ)) {j} =
      ((-1 : ℤ) ^ a * ((Equiv.Perm.sign σ : ℤˣ) : ℤ)) • ExteriorAlgebra.ιMulti K a (fun k => f j (v k)) := by
    intro σ
    rw [prodL_single, List.length_ofFn, List.map_ofFn]
    have h1 : (List.ofFn ((fun v => ExteriorAlgebra.ι K (f j v)) ∘ v ∘ σ)).prod =
        ExteriorAlgebra.ιMulti K a ((fun k => f j (v k)) ∘ σ) := by
      rw [ExteriorAlgebra.ιMulti_apply]; rfl
    rw [h1, AlternatingMap.map_perm, mul_smul]
    simp [Units.smul_def]
  simp only [alt, Finset.sum_apply, Pi.smul_apply, key, smul_smul]
  rw [← Finset.sum_smul]
  congr 1
  have hs : ∀ σ : Equiv.Perm (Fin a), ((Equiv.Perm.sign σ : ℤˣ) : ℤ) * ((-1 : ℤ) ^ a * ((Equiv.Perm.sign σ : ℤˣ) : ℤ)) = (-1 : ℤ) ^ a := by
    intro σ
    rcases Int.units_eq_one_or (Equiv.Perm.sign σ) with hσ | hσ <;> simp [hσ]
  simp only [hs, Finset.sum_const, Finset.card_univ, Fintype.card_perm, Fintype.card_fin, nsmul_eq_mul]
  push_cast; ring

theorem gamma_iMulti (p : ℕ) (g : V →+ V) (γ : ExteriorAlgebra K V →+* ExteriorAlgebra K V)
    (hγ : IsGamma p g γ) (a : ℕ) (v : Fin a → V) :
    γ (ExteriorAlgebra.ιMulti K a v) = ExteriorAlgebra.ιMulti K a (fun k => g (v k)) := by
  rw [ExteriorAlgebra.ιMulti_apply, ExteriorAlgebra.ιMulti_apply, map_list_prod, List.map_ofFn]
  congr 1
  exact List.ofFn_inj.mpr (funext fun k => hγ.2 (v k))

theorem leading_term : ∀ {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type} [LinearOrder ι] (p : ℕ) (f : ι → V →+ V) (h : ι → ι → V →+ K), (∀ (a : ℕ) (v : Fin a → V) (j : ι), alt f h a v {j} = ((-1 : ℤ) ^ a * (a.factorial : ℤ)) • ExteriorAlgebra.ιMulti K a (fun k => f j (v k))) ∧ ∀ (Φ : ExteriorAlgebra K V →+ (Finset ι → ExteriorAlgebra K V)) (j : ι) (γ : ExteriorAlgebra K V →+* ExteriorAlgebra K V), IsPhi p f h Φ → IsGamma p (f j) γ → ∀ a, ∀ x ∈ forms (Set.univ : Set K) (Set.univ : Set V) a, Φ x {j} = ((-1 : ℤ) ^ a * (a.factorial : ℤ)) • γ x := by
  intro K _ V _ _ ι _ p f h
  refine ⟨fun a v j => alt_single f h a v j, ?_⟩
  intro Φ j γ hΦ hγ a x hx
  induction hx using AddSubgroup.closure_induction with
  | mem x hx =>
    obtain ⟨b, -, v, -, rfl⟩ := hx
    have hg : γ (b • ExteriorAlgebra.ιMulti K a v) = b ^ p • ExteriorAlgebra.ιMulti K a (fun k => f j (v k)) := by
      rw [Algebra.smul_def, map_mul, hγ.1, gamma_iMulti p (f j) γ hγ, ← Algebra.smul_def]
    rw [hΦ, Pi.smul_apply, alt_single, hg, smul_comm]
  | zero => simp
  | add x y _ _ hx hy => simp [hx, hy, smul_add]
  | neg x _ hx => simp [hx, smul_neg]
end GlobalTheory.DI.PhiLead
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAntisymmetrizedCupProductLeadingTerm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAntisymmetrizedCupProductVanishAboveDegree =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAntisymmetrizedCupProductVanishAboveDegree", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI

theorem prodL_eq_zero_of_card {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type}
    [LinearOrder ι] (f : ι → V →+ V) (h : ι → ι → V →+ K) (vs : List V) (t : Finset ι)
    (ht : vs.length + 1 < t.card) : prodL f h vs t = 0 := by
  induction vs generalizing t with
  | nil =>
    simp only [prodL, List.foldr_nil, oneC]
    simp only [List.length_nil] at ht
    rw [if_neg (by omega)]
  | cons v vs ih =>
    change Lop f h v (prodL f h vs) t = 0
    simp only [List.length_cons] at ht
    unfold Lop
    split_ifs with h1 h2
    · have e1 := ih t (by omega)
      have e2 := ih (t.erase (t.min' h1))
        (by rw [Finset.card_erase_of_mem (Finset.min'_mem _ _)]; omega)
      rw [e1, e2, mul_zero, smul_zero, smul_zero, add_zero]
    · have e1 := ih t (by omega)
      rw [e1, mul_zero, smul_zero, add_zero]
    · rfl

theorem alt_and_phi_vanish_above_degree : ∀ {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type} [LinearOrder ι] (p : ℕ) (f : ι → V →+ V) (h : ι → ι → V →+ K), (∀ (a : ℕ) (v : Fin a → V) (t : Finset ι), a + 1 < t.card → alt f h a v t = 0) ∧ ∀ (Φ : ExteriorAlgebra K V →+ (Finset ι → ExteriorAlgebra K V)), IsPhi p f h Φ → ∀ a, ∀ x ∈ forms (Set.univ : Set K) (Set.univ : Set V) a, ∀ t : Finset ι, a + 1 < t.card → Φ x t = 0 := by
  intro K _ V _ _ ι _ p f h
  have halt : ∀ (a : ℕ) (v : Fin a → V) (t : Finset ι), a + 1 < t.card → alt f h a v t = 0 := by
    intro a v t ht
    simp only [alt, Finset.sum_apply, Pi.smul_apply]
    apply Finset.sum_eq_zero
    intro σ _
    rw [prodL_eq_zero_of_card f h _ t (by simpa using ht), smul_zero]
  refine ⟨halt, ?_⟩
  intro Φ hΦ a x hx t ht
  induction hx using AddSubgroup.closure_induction with
  | mem x hx =>
    obtain ⟨b, -, v, -, rfl⟩ := hx
    rw [hΦ, Pi.smul_apply, halt a v t ht, smul_zero]
  | zero => simp
  | add x y _ _ hx hy => simp [hx, hy]
  | neg x _ hx => simp [hx]

end GlobalTheory.DI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAntisymmetrizedCupProductVanishAboveDegree =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CechVanishingAlongFiltration =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CechVanishingAlongFiltration", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAndTotalDifferentialAdditiveSquareZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI.FiltVanish

variable {ι : Type} {E : Type} [AddCommGroup E]

theorem inTot_zero (T : ℕ → Finset ι → AddSubgroup E) (m : ℕ) : InTot T m (0 : Finset ι → E) :=
  ⟨rfl, fun q s _ => (T q s).zero_mem, fun _ _ => rfl⟩

theorem inTot_add {T : ℕ → Finset ι → AddSubgroup E} {m : ℕ} {c c' : Finset ι → E}
    (h1 : InTot T m c) (h2 : InTot T m c') : InTot T m (c + c') := by
  refine ⟨?_, ?_, ?_⟩
  · simp [h1.1, h2.1]
  · intro q s hq; exact (T q s).add_mem (h1.2.1 q s hq) (h2.2.1 q s hq)
  · intro s hs; simp [h1.2.2 s hs, h2.2.2 s hs]

theorem inTot_sub {T : ℕ → Finset ι → AddSubgroup E} {m : ℕ} {c c' : Finset ι → E}
    (h1 : InTot T m c) (h2 : InTot T m c') : InTot T m (c - c') := by
  refine ⟨?_, ?_, ?_⟩
  · simp [h1.1, h2.1]
  · intro q s hq; exact (T q s).sub_mem (h1.2.1 q s hq) (h2.2.1 q s hq)
  · intro s hs; simp [h1.2.2 s hs, h2.2.2 s hs]

end GlobalTheory.DI.FiltVanish

private theorem delta_eq_zero_of_card_le_of_vanish_below {ι : Type} [LinearOrder ι] {E : Type} [AddCommGroup E]
    (c : Finset ι → E) (p : ℕ) (hc : ∀ s : Finset ι, s.card < p → c s = 0)
    (t : Finset ι) (ht : t.card ≤ p) : delta c t = 0 := by
  unfold delta
  refine Finset.sum_eq_zero fun i hi => ?_
  have h1 : (t.erase i).card < p := by
    rw [Finset.card_erase_of_mem hi]
    have := Finset.card_pos.mpr ⟨i, hi⟩
    omega
  rw [hc _ h1, smul_zero]

private theorem inTot_succ_delta_of_inTot {ι : Type} [LinearOrder ι] {E : Type} [AddCommGroup E]
    (N : ℕ → Finset ι → AddSubgroup E) (hN : ∀ q s t, s.Nonempty → s ⊆ t → N q s ≤ N q t)
    (m : ℕ) (c : Finset ι → E) (hc : InTot N m c) : InTot N (m + 1) (delta c) := by
  obtain ⟨h0, hmem, hbig⟩ := hc
  refine ⟨?_, fun q s hq => ?_, fun s hs => ?_⟩
  · simp [delta]
  · unfold delta
    refine sum_mem fun i hi => ?_
    refine zsmul_mem ?_ _
    have hcard : (s.erase i).card + 1 = s.card := Finset.card_erase_add_one hi
    by_cases he : (s.erase i).Nonempty
    · exact hN q _ _ he (Finset.erase_subset i s) (hmem q _ (by omega))
    · rw [Finset.not_nonempty_iff_eq_empty] at he
      rw [he, h0]
      exact zero_mem _
  · unfold delta
    refine Finset.sum_eq_zero fun i hi => ?_
    have hcard : (s.erase i).card + 1 = s.card := Finset.card_erase_add_one hi
    rw [hbig _ (by omega), smul_zero]

private theorem inTot_succ_Dtot_of_inTot {ι : Type} [LinearOrder ι] {E : Type} [AddCommGroup E]
    (d : E →+ E) (T : ℕ → Finset ι → AddSubgroup E) (hT : ∀ q s t, s.Nonempty → s ⊆ t → T q s ≤ T q t)
    (hd : ∀ q s x, x ∈ T q s → d x ∈ T (q + 1) s)
    (m : ℕ) (c : Finset ι → E) (hc : InTot T m c) : InTot T (m + 1) (Dtot d c) := by
  have hδ := inTot_succ_delta_of_inTot T hT m c hc
  obtain ⟨h0, hmem, hbig⟩ := hc
  refine ⟨?_, fun q s hq => ?_, fun s hs => ?_⟩
  · simp [Dtot, hδ.1, h0]
  · simp only [Dtot]
    refine add_mem (hδ.2.1 q s hq) (zsmul_mem ?_ _)
    rcases q with _ | q
    · rw [hbig s (by omega), map_zero]
      exact zero_mem _
    · exact hd q s _ (hmem q s (by omega))
  · simp only [Dtot]
    rw [hδ.2.2 s hs, hbig s (by omega), map_zero, smul_zero, add_zero]


open GlobalTheory.DI.FiltVanish in
theorem GlobalTheory.DI.cechZero_of_hypZero_filtered : ∀ {ι : Type} [LinearOrder ι] {E : Type} [AddCommGroup E] (d : E →+ E) (N T : ℕ → Finset ι → AddSubgroup E) (Ψ : (Finset ι → E) →+ (Finset ι → E)) (γ : Finset ι → E → E), (∀ x, d (d x) = 0) → (∀ q s t, s.Nonempty → s ⊆ t → N q s ≤ N q t) → (∀ q s t, s.Nonempty → s ⊆ t → T q s ≤ T q t) → (∀ q s x, x ∈ T q s → d x ∈ T (q + 1) s) → (∀ m c, InTot N m c → Dtot d (Ψ c) = Ψ (delta c)) → (∀ m c, InTot N m c → InTot T m (Ψ c)) → (∀ s, s.Nonempty → CartierAt d (γ s) (fun a => N a s) (fun a => T a s)) → (∀ m c u, InTot N m c → u.Nonempty → (∀ s, s.card < u.card → c s = 0) → Ψ c u = γ u (c u)) → ∀ a b, HypZero d T (a + b) → CechZero (N a) b := by
  intro ι _ E _ d N T Ψ γ hdd hN hT hd hΨd hΨT hγ hlead a b hH
  have hγ0 : ∀ u : Finset ι, u.Nonempty → γ u 0 = 0 := by
    intro u hu
    have h := hlead 0 0 u (GlobalTheory.DI.FiltVanish.inTot_zero N 0) hu (fun _ _ => rfl)
    rw [map_zero] at h
    simpa using h.symm
  have key : ∀ (n k p : ℕ) (c y : Finset ι → E), p + k = n + 2 → InTot N (n + 1) c → delta c = 0 →
      (∀ s : Finset ι, s.card < p → c s = 0) → InTot T n y → (∀ s : Finset ι, s.card < p → y s = 0) →
      Dtot d y = Ψ c → ∃ y', InTot N n y' ∧ delta y' = c := by
    intro n k
    induction k with
    | zero =>
      intro p c y hpk hc hδc hclow hy hylow hDy
      refine ⟨0, GlobalTheory.DI.FiltVanish.inTot_zero N n, ?_⟩
      funext s
      have h0 : c s = 0 := by
        by_cases hs : s.card < p
        · exact hclow s hs
        · exact hc.2.2 s (by omega)
      rw [h0]
      simp [delta]
    | succ k ih =>
      intro p c y hpk hc hδc hclow hy hylow hDy
      rcases Nat.eq_zero_or_pos p with hp0 | hp0
      · subst hp0
        refine ih 1 c y (by omega) hc hδc ?_ hy ?_ hDy
        · intro s hs
          have he : s = ∅ := Finset.card_eq_zero.mp (by omega)
          rw [he]
          exact hc.1
        · intro s hs
          have he : s = ∅ := Finset.card_eq_zero.mp (by omega)
          rw [he]
          exact hy.1
      have hA : ∀ t : Finset ι, t.card = p → c t = 0 ∧ d (y t) = 0 := by
        intro t ht
        have hne : t.Nonempty := Finset.card_pos.mp (by omega)
        have hlt : ∀ s : Finset ι, s.card < t.card → c s = 0 := fun s hs => hclow s (by omega)
        have hl := hlead (n + 1) c t hc hne hlt
        rw [← hDy] at hl
        simp only [Dtot] at hl
        rw [delta_eq_zero_of_card_le_of_vanish_below y p hylow t (le_of_eq ht), zero_add, ht] at hl
        have hc0 : c t = 0 := by
          by_cases hpn : p = n + 1
          · have hyt : y t = 0 := hy.2.2 t (by omega)
            rw [hyt, map_zero, smul_zero] at hl
            have hmem : c t ∈ N 0 t := hc.2.1 0 t (by omega)
            exact (hγ t hne).inj_zero (c t) hmem hl.symm
          · have hmem : c t ∈ N (n - p + 1) t := hc.2.1 _ t (by omega)
            have hymem : y t ∈ T (n - p) t := hy.2.1 _ t (by omega)
            refine (hγ t hne).inj_succ (n - p) (c t) hmem (((-1 : ℤ) ^ p) • y t) (zsmul_mem hymem _) ?_
            rw [map_zsmul]
            exact hl.symm
        refine ⟨hc0, ?_⟩
        rw [hc0, hγ0 t hne] at hl
        rcases neg_one_pow_eq_or ℤ p with h | h
        · rw [h, one_smul] at hl
          exact hl
        · rw [h, neg_one_smul, neg_eq_zero] at hl
          exact hl
      by_cases hpn1 : p = n + 1
      · refine ⟨0, GlobalTheory.DI.FiltVanish.inTot_zero N n, ?_⟩
        funext s
        have h0 : c s = 0 := by
          rcases lt_trichotomy s.card p with h | h | h
          · exact hclow s h
          · exact (hA s h).1
          · exact hc.2.2 s (by omega)
        rw [h0]
        simp [delta]
      have hpn : p ≤ n := by omega
      have hB : ∀ t : Finset ι, ∃ xz : E × E, t.card = p → (xz.1 ∈ N (n - p) t ∧ xz.2 ∈ T (n - p - 1) t ∧ (n ≤ p → xz.2 = 0) ∧ y t = γ t xz.1 + d xz.2) := by
        intro t
        by_cases ht : t.card = p
        · have hne : t.Nonempty := Finset.card_pos.mp (by omega)
          have hymem : y t ∈ T (n - p) t := hy.2.1 _ t (by omega)
          have hdy := (hA t ht).2
          by_cases h0 : n - p = 0
          · have hymem' : y t ∈ T 0 t := by rw [← h0]; exact hymem
            obtain ⟨x, hx, hxy⟩ := (hγ t hne).surj_zero (y t) hymem' hdy
            refine ⟨(x, 0), fun _ => ⟨by rw [h0]; exact hx, zero_mem _, fun _ => rfl, ?_⟩⟩
            simp [hxy]
          · obtain ⟨q, hq⟩ : ∃ q, n - p = q + 1 := ⟨n - p - 1, by omega⟩
            have hymem' : y t ∈ T (q + 1) t := by rw [← hq]; exact hymem
            obtain ⟨x, hx, z, hz, hxy⟩ := (hγ t hne).surj_succ q (y t) hymem' hdy
            refine ⟨(x, z), fun _ => ⟨by rw [hq]; exact hx, by rw [show n - p - 1 = q by omega]; exact hz, fun _ => by omega, hxy⟩⟩
        · exact ⟨(0, 0), fun h => absurd h ht⟩
      choose xz hxz using hB
      obtain ⟨X, hXp, hXo⟩ : ∃ X : Finset ι → E, (∀ s : Finset ι, s.card = p → X s = (xz s).1) ∧ (∀ s : Finset ι, s.card ≠ p → X s = 0) :=
        ⟨fun s => if s.card = p then (xz s).1 else 0, fun s hs => if_pos hs, fun s hs => if_neg hs⟩
      obtain ⟨Z, hZp, hZo⟩ : ∃ Z : Finset ι → E, (∀ s : Finset ι, s.card = p → Z s = ((-1 : ℤ) ^ p) • (xz s).2) ∧ (∀ s : Finset ι, s.card ≠ p → Z s = 0) :=
        ⟨fun s => if s.card = p then ((-1 : ℤ) ^ p) • (xz s).2 else 0, fun s hs => if_pos hs, fun s hs => if_neg hs⟩
      have hXN : InTot N n X := by
        refine ⟨hXo ∅ (by rw [Finset.card_empty]; omega), fun q s hq => ?_, fun s hs => hXo s (by omega)⟩
        by_cases hs : s.card = p
        · rw [hXp s hs]
          have hqe : q = n - p := by omega
          subst hqe
          exact (hxz s hs).1
        · rw [hXo s hs]
          exact zero_mem _
      have hZT : InTot T (n - 1) Z := by
        refine ⟨hZo ∅ (by rw [Finset.card_empty]; omega), fun q s hq => ?_, fun s hs => ?_⟩
        · by_cases hs : s.card = p
          · rw [hZp s hs]
            have hqe : q = n - p - 1 := by omega
            subst hqe
            exact zsmul_mem (hxz s hs).2.1 _
          · rw [hZo s hs]
            exact zero_mem _
        · by_cases hs' : s.card = p
          · rw [hZp s hs', (hxz s hs').2.2.1 (by omega), smul_zero]
          · exact hZo s hs'
      have hn1 : n - 1 + 1 = n := by omega
      have hDZ : InTot T n (Dtot d Z) := hn1 ▸ inTot_succ_Dtot_of_inTot d T hT hd (n - 1) Z hZT
      have hΨX : InTot T n (Ψ X) := hΨT n X hXN
      have hδX : InTot N (n + 1) (delta X) := inTot_succ_delta_of_inTot N hN n X hXN
      have hΨXs : ∀ s : Finset ι, s.Nonempty → s.card ≤ p → Ψ X s = γ s (X s) :=
        fun s hs hsp => hlead n X s hXN hs (fun s' hs' => hXo s' (by omega))
      have hDZs : ∀ s : Finset ι, s.card ≤ p → Dtot d Z s = ((-1 : ℤ) ^ s.card) • d (Z s) := by
        intro s hs
        simp only [Dtot]
        rw [delta_eq_zero_of_card_le_of_vanish_below Z p (fun s' hs' => hZo s' (by omega)) s hs, zero_add]
      have hsq : ((-1 : ℤ) ^ p) * (-1 : ℤ) ^ p = 1 := by
        rw [← mul_pow]
        norm_num
      have hδc' : delta (c - delta X) = 0 := by
        rw [delta_sub, hδc, delta_delta, sub_zero]
      have hclow' : ∀ s : Finset ι, s.card < p + 1 → (c - delta X) s = 0 := by
        intro s hs
        rw [Pi.sub_apply, delta_eq_zero_of_card_le_of_vanish_below X p (fun s' hs' => hXo s' (by omega)) s (by omega), sub_zero]
        rcases Nat.lt_or_ge s.card p with h | h
        · exact hclow s h
        · exact (hA s (by omega)).1
      have hylow' : ∀ s : Finset ι, s.card < p + 1 → (y - Ψ X - Dtot d Z) s = 0 := by
        intro s hs
        simp only [Pi.sub_apply]
        rw [hDZs s (by omega)]
        rcases Nat.lt_or_ge s.card p with h | h
        · rw [hylow s h, hZo s (by omega), map_zero, smul_zero, sub_zero, zero_sub, neg_eq_zero]
          by_cases hne : s.Nonempty
          · rw [hΨXs s hne (by omega), hXo s (by omega), hγ0 s hne]
          · rw [Finset.not_nonempty_iff_eq_empty] at hne
            subst hne
            exact hΨX.1
        · have hsp : s.card = p := by omega
          have hne : s.Nonempty := Finset.card_pos.mp (by omega)
          rw [hΨXs s hne (by omega), hXp s hsp, hZp s hsp, hsp, map_zsmul, smul_smul, hsq, one_smul,
            (hxz s hsp).2.2.2]
          abel
      have hDy' : Dtot d (y - Ψ X - Dtot d Z) = Ψ (c - delta X) := by
        rw [Dtot_sub, Dtot_sub, Dtot_Dtot d hdd, hDy, hΨd n X hXN, map_sub, sub_zero]
      obtain ⟨y'', hy''N, hy''δ⟩ := ih (p + 1) (c - delta X) (y - Ψ X - Dtot d Z) (by omega)
        (GlobalTheory.DI.FiltVanish.inTot_sub hc hδX) hδc' hclow'
        (GlobalTheory.DI.FiltVanish.inTot_sub (GlobalTheory.DI.FiltVanish.inTot_sub hy hΨX) hDZ) hylow' hDy'
      exact ⟨y'' + X, GlobalTheory.DI.FiltVanish.inTot_add hy''N hXN, by rw [delta_add, hy''δ, sub_add_cancel]⟩
  intro c hc hδc
  have hcN : InTot N (a + b + 1) c := by
    refine ⟨hc.1, fun q s hq => ?_, fun s hs => hc.2.2 s (by omega)⟩
    by_cases hs : s.card = b + 1
    · have hqa : q = a := by omega
      subst hqa
      exact hc.2.1 s
    · rw [hc.2.2 s hs]
      exact zero_mem _
  have hΨc := hΨT _ c hcN
  have hDΨ : Dtot d (Ψ c) = 0 := by rw [hΨd _ c hcN, hδc, map_zero]
  obtain ⟨y, hy, hDy⟩ := hH (Ψ c) hΨc hDΨ
  obtain ⟨y', hy'N, hy'δ⟩ := key (a + b) (a + b + 2) 0 c y (by omega) hcN hδc
    (fun s hs => absurd hs (Nat.not_lt_zero _)) hy (fun s hs => absurd hs (Nat.not_lt_zero _)) hDy
  refine ⟨fun s => if s.card = b then y' s else 0, ⟨?_, fun s => ?_, fun s hs => if_neg hs⟩, ?_⟩
  · by_cases hb : b = 0
    · simp [hb, hy'N.1]
    · simp [Ne.symm hb]
  · dsimp only
    split_ifs with hs
    · exact hy'N.2.1 a s (by omega)
    · exact zero_mem _
  · funext t
    by_cases ht : t.card = b + 1
    · rw [← hy'δ]
      simp only [delta]
      refine Finset.sum_congr rfl fun i hi => ?_
      have hcard : (t.erase i).card = b := by
        rw [Finset.card_erase_of_mem hi]
        omega
      rw [if_pos hcard]
    · rw [hc.2.2 t ht]
      simp only [delta]
      refine Finset.sum_eq_zero fun i hi => ?_
      have hcard : (t.erase i).card ≠ b := by
        rw [Finset.card_erase_of_mem hi]
        have := Finset.card_pos.mpr ⟨i, hi⟩
        omega
      rw [if_neg hcard, smul_zero]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CechVanishingAlongFiltration =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.TotalDifferentialCupProduct =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.TotalDifferentialCupProduct", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechDeltaCupProduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI

theorem Dtot_cup : ∀ {ι : Type} [LinearOrder ι] {E : Type} [AddCommGroup E] (d : E →+ E)
    (Φ : E →+ (Finset ι → E)) (c : Finset ι → E), (∀ x, Φ x ∅ = 0) → c ∅ = 0 →
    (∀ s, Dtot d (Φ (c s)) = 0) → Dtot d (cup Φ c) = cup Φ (delta c) := by
  intro ι _ E _ d Φ c hΦ hc hD
  funext u
  have key := delta_cup_eq Φ c hΦ hc u
  suffices hS : (∑ j ∈ u, ((-1 : ℤ) ^ ({x ∈ u | x < j}).card) • delta (Φ (c ({x ∈ u | x ≤ j}))) ({x ∈ u | j ≤ x}))
      + ((-1 : ℤ) ^ u.card) • d (cup Φ c u) = 0 by
    simp only [Dtot]
    rw [key, add_assoc, hS, add_zero]

  simp only [cup, map_sum, Finset.smul_sum, ← Finset.sum_add_distrib]
  refine Finset.sum_eq_zero fun j hj => ?_
  have h := congrFun (hD ({x ∈ u | x ≤ j})) ({x ∈ u | j ≤ x})
  simp only [Dtot, Pi.zero_apply] at h
  rw [eq_neg_of_add_eq_zero_left h]
  have hcard : ({x ∈ u | x < j}).card + ({x ∈ u | j ≤ x}).card = u.card := by
    have := Finset.card_filter_add_card_filter_not (s := u) (fun x => x < j)
    simpa only [not_lt] using this
  rw [smul_neg, smul_smul, ← pow_add, hcard, neg_add_cancel]

end GlobalTheory.DI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.TotalDifferentialCupProduct =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CupProductFiltrationBound =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CupProductFiltrationBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CechVanishingAlongFiltration\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.TotalDifferentialCupProduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI

private theorem card_filter_le_add_card_filter_ge {ι : Type} [LinearOrder ι] (u : Finset ι) (j : ι)
    (hj : j ∈ u) : ({x ∈ u | x ≤ j}).card + ({x ∈ u | j ≤ x}).card = u.card + 1 := by
  have hU : ({x ∈ u | x ≤ j}) ∪ ({x ∈ u | j ≤ x}) = u := by
    ext x
    simp only [Finset.mem_union, Finset.mem_filter]
    constructor
    · rintro (⟨h, _⟩ | ⟨h, _⟩) <;> exact h
    · intro hx
      rcases le_total x j with h | h
      · exact Or.inl ⟨hx, h⟩
      · exact Or.inr ⟨hx, h⟩
  have hI : ({x ∈ u | x ≤ j}) ∩ ({x ∈ u | j ≤ x}) = {j} := by
    ext x
    simp only [Finset.mem_inter, Finset.mem_filter, Finset.mem_singleton]
    constructor
    · rintro ⟨⟨_, h1⟩, ⟨_, h2⟩⟩
      exact le_antisymm h1 h2
    · rintro rfl
      exact ⟨⟨hj, le_refl _⟩, ⟨hj, le_refl _⟩⟩
  have h := Finset.card_union_add_card_inter ({x ∈ u | x ≤ j}) ({x ∈ u | j ≤ x})
  rw [hU, hI, Finset.card_singleton] at h
  omega

theorem cechZero_of_hypZero_of_closed_map : ∀ {ι : Type} [LinearOrder ι] {E : Type} [AddCommGroup E] (d : E →+ E) (N T : ℕ → Finset ι → AddSubgroup E) (Φ : E →+ (Finset ι → E)), (∀ x, d (d x) = 0) → (∀ q s t, s.Nonempty → s ⊆ t → N q s ≤ N q t) → (∀ q s t, s.Nonempty → s ⊆ t → T q s ≤ T q t) → (∀ q s x, x ∈ T q s → d x ∈ T (q + 1) s) → (∀ x, Φ x ∅ = 0) → (∀ x, Dtot d (Φ x) = 0) → (∀ a u t x, u.Nonempty → t ⊆ u → x ∈ N a u → (∀ q, q + t.card = a + 1 → Φ x t ∈ T q u) ∧ (a + 1 < t.card → Φ x t = 0)) → (∀ s, ∀ j ∈ s, CartierAt d (fun x => Φ x {j}) (fun a => N a s) (fun a => T a s)) → ∀ a b, HypZero d T (a + b) → CechZero (N a) b := by
  intro ι _ E _ d N T Φ hdd hN hT hd hΦ0 hΦD hΦT hC a b hH
  let Ψ : (Finset ι → E) →+ (Finset ι → E) := AddMonoidHom.mk' (fun c => cup Φ c) (by
    intro c c'
    funext u
    simp only [cup, Pi.add_apply, map_add (f := _), Finset.sum_add_distrib])
  have hΨ : ∀ c, Ψ c = cup Φ c := fun c => rfl
  let γ : Finset ι → E → E := fun s x => if h : s.Nonempty then Φ x {s.max' h} else 0
  refine cechZero_of_hypZero_filtered d N T Ψ γ hdd hN hT hd ?_ ?_ ?_ ?_ a b hH
  · intro m c hc
    rw [hΨ, hΨ]
    exact Dtot_cup d Φ c hΦ0 hc.1 (fun s => hΦD _)
  · intro m c hc
    rw [hΨ]
    refine ⟨?_, fun q u hq => ?_, fun u hu => ?_⟩
    · simp [cup]
    · simp only [cup]
      refine sum_mem fun j hj => ?_
      have hsz := card_filter_le_add_card_filter_ge u j hj
      have hLne : ({x ∈ u | x ≤ j}).Nonempty := ⟨j, Finset.mem_filter.mpr ⟨hj, le_refl _⟩⟩
      have hune : u.Nonempty := ⟨j, hj⟩
      by_cases hLm : ({x ∈ u | x ≤ j}).card ≤ m
      · have hx : c ({x ∈ u | x ≤ j}) ∈ N (m - ({x ∈ u | x ≤ j}).card) u :=
          hN _ _ u hLne (Finset.filter_subset _ _) (hc.2.1 _ _ (by omega))
        exact (hΦT _ u _ _ hune (Finset.filter_subset _ _) hx).1 q (by omega)
      · rw [hc.2.2 _ (by omega), map_zero, Pi.zero_apply]
        exact zero_mem _
    · simp only [cup]
      refine Finset.sum_eq_zero fun j hj => ?_
      have hsz := card_filter_le_add_card_filter_ge u j hj
      have hLne : ({x ∈ u | x ≤ j}).Nonempty := ⟨j, Finset.mem_filter.mpr ⟨hj, le_refl _⟩⟩
      have hune : u.Nonempty := ⟨j, hj⟩
      by_cases hLm : ({x ∈ u | x ≤ j}).card ≤ m
      · have hx : c ({x ∈ u | x ≤ j}) ∈ N (m - ({x ∈ u | x ≤ j}).card) u :=
          hN _ _ u hLne (Finset.filter_subset _ _) (hc.2.1 _ _ (by omega))
        exact (hΦT _ u _ _ hune (Finset.filter_subset _ _) hx).2 (by omega)
      · rw [hc.2.2 _ (by omega), map_zero, Pi.zero_apply]
  · intro s hs
    have hγs : γ s = fun x => Φ x {s.max' hs} := by
      funext x
      simp only [γ, dif_pos hs]
    rw [hγs]
    exact hC s (s.max' hs) (s.max'_mem hs)
  · intro m c u hc hu hlow
    rw [hΨ]
    simp only [cup]
    rw [Finset.sum_eq_single_of_mem (u.max' hu) (u.max'_mem hu)]
    · have hL : ({x ∈ u | x ≤ u.max' hu}) = u := by
        ext x
        simp only [Finset.mem_filter]
        constructor
        · exact fun h => h.1
        · intro hx
          exact ⟨hx, u.le_max' x hx⟩
      have hR : ({x ∈ u | u.max' hu ≤ x}) = {u.max' hu} := by
        ext x
        simp only [Finset.mem_filter, Finset.mem_singleton]
        constructor
        · rintro ⟨hx, hle⟩
          exact le_antisymm (u.le_max' x hx) hle
        · rintro rfl
          exact ⟨u.max'_mem hu, le_refl _⟩
      rw [hL, hR]
      simp only [γ, dif_pos hu]
    · intro j hj hne
      have hlt : ({x ∈ u | x ≤ j}).card < u.card := by
        apply Finset.card_lt_card
        refine ⟨Finset.filter_subset _ _, fun hsub => ?_⟩
        have hm := hsub (u.max'_mem hu)
        simp only [Finset.mem_filter] at hm
        exact hne (le_antisymm (u.le_max' j hj) hm.2)
      rw [hlow _ hlt, map_zero, Pi.zero_apply]

end GlobalTheory.DI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CupProductFiltrationBound =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.ExistsFrobeniusSplittingDatum =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.ExistsFrobeniusSplittingDatum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.ExteriorAlgebra.OfAlternating\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI

theorem exists_isPhi : ∀ {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type} [LinearOrder ι] (p : ℕ) [Fact p.Prime] [CharP K p] (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (f : ι → V →+ V) (h : ι → ι → V →+ K), IsDatum p d f h → ∃ Φ, IsPhi p f h Φ := by
  intro K _ V _ _ ι _ p _ _ d f h hD
  have lopAddV : ∀ (x x' : V) (y : Finset ι → ExteriorAlgebra K V),
      Lop f h (x + x') y = Lop f h x y + Lop f h x' y := by
    intro x x' y
    funext t
    simp only [Lop, Pi.add_apply]
    split_ifs <;> simp only [map_add (f := _), add_mul, smul_add, add_smul, add_zero] <;> abel
  have lopAddY : ∀ (x : V) (y y' : Finset ι → ExteriorAlgebra K V),
      Lop f h x (y + y') = Lop f h x y + Lop f h x y' := by
    intro x y y'
    funext t
    simp only [Lop, Pi.add_apply]
    split_ifs <;> simp only [mul_add, smul_add, add_zero] <;> abel
  have lopSmulV : ∀ (c : K) (x : V) (y : Finset ι → ExteriorAlgebra K V),
      Lop f h (c • x) y = c ^ p • Lop f h x y := by
    intro c x y
    funext t
    simp only [Lop, Pi.smul_apply]
    split_ifs <;>
      simp only [hD.f_smul, hD.h_smul, map_smul, smul_mul_assoc, mul_smul, smul_add, smul_zero,
        smul_comm ((-1 : ℤ) ^ t.card) (c ^ p)]
  have lopSmulY : ∀ (k : K) (x : V) (y : Finset ι → ExteriorAlgebra K V),
      Lop f h x (k • y) = k • Lop f h x y := by
    intro k x y
    funext t
    simp only [Lop, Pi.smul_apply]
    split_ifs <;>
      simp only [mul_smul_comm, smul_add, smul_zero, smul_comm ((-1 : ℤ) ^ t.card) k, smul_comm _ k]
  have hcons : ∀ (x : V) (l : List V), prodL f h (x :: l) = Lop f h x (prodL f h l) := fun _ _ => rfl
  have hupd0 : ∀ {a : ℕ} (v : Fin (a + 1) → V) (z : V),
      (fun k : Fin a => Function.update v 0 z k.succ) = fun k => v k.succ := by
    intro a v z
    funext k
    exact Function.update_of_ne (Fin.succ_ne_zero k) _ _
  have hupds : ∀ {a : ℕ} (v : Fin (a + 1) → V) (j : Fin a) (z : V),
      (fun k : Fin a => Function.update v j.succ z k.succ) = Function.update (fun k => v k.succ) j z := by
    intro a v j z
    funext k
    by_cases hk : k = j
    · subst hk
      simp
    · rw [Function.update_of_ne hk, Function.update_of_ne (fun e => hk (Fin.succ_injective _ e))]
  have hPadd : ∀ (a : ℕ) (v : Fin a → V) (i : Fin a) (x x' : V),
      prodL f h (List.ofFn (Function.update v i (x + x'))) =
        prodL f h (List.ofFn (Function.update v i x)) + prodL f h (List.ofFn (Function.update v i x')) := by
    intro a
    induction a with
    | zero => intro v i; exact i.elim0
    | succ a ih =>
      intro v i x x'
      rcases Fin.eq_zero_or_eq_succ i with rfl | ⟨j, rfl⟩
      · simp only [List.ofFn_succ, hcons, Function.update_self, hupd0]
        exact lopAddV _ _ _
      · simp only [List.ofFn_succ, hcons, hupds,
          Function.update_of_ne (Fin.succ_ne_zero j).symm]
        rw [ih, lopAddY]
  have hPsmul : ∀ (a : ℕ) (v : Fin a → V) (i : Fin a) (c : K) (x : V),
      prodL f h (List.ofFn (Function.update v i (c • x))) =
        c ^ p • prodL f h (List.ofFn (Function.update v i x)) := by
    intro a
    induction a with
    | zero => intro v i; exact i.elim0
    | succ a ih =>
      intro v i c x
      rcases Fin.eq_zero_or_eq_succ i with rfl | ⟨j, rfl⟩
      · simp only [List.ofFn_succ, hcons, Function.update_self, hupd0]
        exact lopSmulV _ _ _
      · simp only [List.ofFn_succ, hcons, hupds,
          Function.update_of_ne (Fin.succ_ne_zero j).symm]
        rw [ih, lopSmulY]
  have key : ∃ Φ : ExteriorAlgebra K V →+ (Finset ι → ExteriorAlgebra K V),
      (∀ (c : K) (x : ExteriorAlgebra K V), Φ (c • x) = c ^ p • Φ x) ∧
        ∀ (a : ℕ) (v : Fin a → V), Φ (ExteriorAlgebra.ιMulti K a v) = alt f h a v := by
    letI tw : Module K (Finset ι → ExteriorAlgebra K V) := Module.compHom _ (frobenius K p)
    let P : ∀ a : ℕ, (Fin a → V) →ₘₗ[K] (Finset ι → ExteriorAlgebra K V) := fun a =>
      { toFun := fun v => prodL f h (List.ofFn v)
        map_update_add' := fun v i x x' => by
          obtain rfl : ‹DecidableEq (Fin a)› = instDecidableEqFin a := Subsingleton.elim _ _
          exact hPadd a v i x x'
        map_update_smul' := fun v i c x => by
          obtain rfl : ‹DecidableEq (Fin a)› = instDecidableEqFin a := Subsingleton.elim _ _
          exact hPsmul a v i c x }
    let A : ∀ a : ℕ, V [⋀^Fin a]→ₗ[K] (Finset ι → ExteriorAlgebra K V) := fun a =>
      MultilinearMap.alternatization (P a)
    let Φ0 := ExteriorAlgebra.liftAlternating (R := K) A
    refine ⟨Φ0.toAddMonoidHom, fun c x => ?_, fun a v => ?_⟩
    · exact Φ0.map_smul c x
    · show Φ0 (ExteriorAlgebra.ιMulti K a v) = _
      rw [ExteriorAlgebra.liftAlternating_apply_ιMulti]
      show (MultilinearMap.alternatization (P a)) v = alt f h a v
      rw [MultilinearMap.alternatization_apply]
      unfold alt
      apply Finset.sum_congr rfl
      intro σ _
      rw [Units.smul_def]
      rfl
  obtain ⟨Φ, h1, h2⟩ := key
  exact ⟨Φ, fun c a v => by rw [h1, h2]⟩

end GlobalTheory.DI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.ExistsFrobeniusSplittingDatum =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.AlternatingProductCocycle =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.AlternatingProductCocycle", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI.AltClosed

variable {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type} [LinearOrder ι]

def dtotHom {E : Type} [AddCommGroup E] (d : E →+ E) : (Finset ι → E) →+ (Finset ι → E) :=
  AddMonoidHom.mk' (Dtot d) (GlobalTheory.DI.Dtot_add d)


omit [LinearOrder ι] in
theorem oneC_empty : (oneC : Finset ι → ExteriorAlgebra K V) ∅ = 0 := by
  simp [oneC]

theorem d_one (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (hd : IsOddDer d) : d 1 = 0 := by
  have h1 := hd.mul 1 1
  simp only [mul_one, map_one, one_mul] at h1
  exact add_left_cancel (a := d 1) (by rw [add_zero]; exact h1.symm)

theorem delta_oneC_pair {x y : ι} (h : x < y) :
    delta (oneC : Finset ι → ExteriorAlgebra K V) {x, y} = 0 := by
  have hne : x ≠ y := ne_of_lt h
  simp only [delta]
  rw [Finset.sum_pair hne]
  have e1 : ({x, y} : Finset ι).erase x = {y} := by
    ext z
    simp only [Finset.mem_erase, Finset.mem_insert, Finset.mem_singleton]
    constructor
    · rintro ⟨hz, hz' | hz'⟩
      · exact absurd hz' hz
      · exact hz'
    · rintro rfl
      exact ⟨hne.symm, Or.inr rfl⟩
  have e2 : ({x, y} : Finset ι).erase y = {x} := by
    ext z
    simp only [Finset.mem_erase, Finset.mem_insert, Finset.mem_singleton]
    constructor
    · rintro ⟨hz, hz' | hz'⟩
      · exact hz'
      · exact absurd hz' hz
    · rintro rfl
      exact ⟨hne, Or.inl rfl⟩
  have s1 : GlobalTheory.cubeSign ({x, y} : Finset ι) x = 1 := by
    unfold GlobalTheory.cubeSign
    have : ({z ∈ ({x, y} : Finset ι) | z < x}) = ∅ := by
      ext z
      simp only [Finset.mem_filter, Finset.mem_insert, Finset.mem_singleton, Finset.notMem_empty, iff_false, not_and]
      rintro (rfl | rfl) hz
      · exact lt_irrefl _ hz
      · exact lt_asymm h hz
    rw [this]
    simp
  have s2 : GlobalTheory.cubeSign ({x, y} : Finset ι) y = -1 := by
    unfold GlobalTheory.cubeSign
    have : ({z ∈ ({x, y} : Finset ι) | z < y}) = {x} := by
      ext z
      simp only [Finset.mem_filter, Finset.mem_insert, Finset.mem_singleton]
      constructor
      · rintro ⟨rfl | rfl, hz⟩
        · rfl
        · exact absurd hz (lt_irrefl _)
      · rintro rfl
        exact ⟨Or.inl rfl, h⟩
    rw [this]
    simp
  rw [e1, e2, s1, s2]
  simp [oneC]

theorem delta_oneC (t : Finset ι) : delta (oneC : Finset ι → ExteriorAlgebra K V) t = 0 := by
  by_cases h2 : t.card = 2
  · obtain ⟨x, y, hxy, rfl⟩ := Finset.card_eq_two.mp h2
    rcases lt_or_gt_of_ne hxy with hlt | hlt
    · exact delta_oneC_pair hlt
    · rw [Finset.pair_comm]
      exact delta_oneC_pair hlt
  · simp only [delta]
    apply Finset.sum_eq_zero
    intro i hi
    have hpos := Finset.card_pos.mpr ⟨i, hi⟩
    have hc : ¬ (t.erase i).card = 1 := by
      rw [Finset.card_erase_of_mem hi]
      omega
    simp [oneC, hc]

theorem dtot_oneC (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (hd : IsOddDer d) :
    Dtot d (oneC : Finset ι → ExteriorAlgebra K V) = 0 := by
  funext t
  simp only [Dtot, delta_oneC, zero_add, Pi.zero_apply]
  unfold oneC
  split_ifs <;> simp [d_one d hd]

private theorem cubeSign_min_eq_one (s : Finset ι) (hs : s.Nonempty) : GlobalTheory.cubeSign s (s.min' hs) = 1 := by
  unfold GlobalTheory.cubeSign
  have e : ({x ∈ s | x < s.min' hs}) = ∅ := by
    apply Finset.filter_false_of_mem
    intro x hx
    exact not_lt.mpr (s.min'_le x hx)
  rw [e]
  simp

private theorem cubeSign_eq_neg_cubeSign_erase_min (s : Finset ι) (hs : s.Nonempty) (i : ι) (hi : i ∈ s.erase (s.min' hs)) :
    GlobalTheory.cubeSign s i = -GlobalTheory.cubeSign (s.erase (s.min' hs)) i := by
  have hne : i ≠ s.min' hs := Finset.ne_of_mem_erase hi
  have his : i ∈ s := Finset.mem_of_mem_erase hi
  have hlt : s.min' hs < i := lt_of_le_of_ne (s.min'_le i his) hne.symm
  unfold GlobalTheory.cubeSign
  have hfil : ({x ∈ s | x < i}) = insert (s.min' hs) ({x ∈ s.erase (s.min' hs) | x < i}) := by
    ext x
    simp only [Finset.mem_filter, Finset.mem_insert, Finset.mem_erase]
    constructor
    · rintro ⟨hxs, hxi⟩
      by_cases hx : x = s.min' hs
      · exact Or.inl hx
      · exact Or.inr ⟨⟨hx, hxs⟩, hxi⟩
    · rintro (hx | ⟨⟨_, hxs⟩, hxi⟩)
      · rw [hx]
        exact ⟨s.min'_mem hs, hlt⟩
      · exact ⟨hxs, hxi⟩
  rw [hfil, Finset.card_insert_of_notMem (by simp), pow_succ]
  ring

private theorem delta_eq_erase_min_sub_sum_cubeSign {E : Type} [AddCommGroup E] (c : Finset ι → E) (s : Finset ι) (hs : s.Nonempty) :
    delta c s = c (s.erase (s.min' hs)) -
      ∑ i ∈ s.erase (s.min' hs), GlobalTheory.cubeSign (s.erase (s.min' hs)) i • c (s.erase i) := by
  unfold delta
  rw [← Finset.add_sum_erase s _ (s.min'_mem hs), cubeSign_min_eq_one s hs, one_smul, sub_eq_add_neg,
    ← Finset.sum_neg_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro i hi
  rw [cubeSign_eq_neg_cubeSign_erase_min s hs i hi, neg_smul]

private theorem Lop_apply_of_min_eq (f : ι → V →+ V) (h : ι → ι → V →+ K) (v : V)
    (y : Finset ι → ExteriorAlgebra K V) (t : Finset ι) (m0 : ι) (ht : t.Nonempty) (hm : t.min' ht = m0) :
    Lop f h v y t = (-1 : ℤ) ^ t.card • (ExteriorAlgebra.ι K (f m0 v) * y t) +
      (if h2 : (t.erase m0).Nonempty then h m0 ((t.erase m0).min' h2) v • y (t.erase m0) else 0) := by
  subst hm
  unfold Lop
  rw [dite_eq_left ht]

private theorem neg_one_pow_card_erase_of_mem (t : Finset ι) (i : ι) (hi : i ∈ t) :
    (-1 : ℤ) ^ (t.erase i).card = -(-1) ^ t.card := by
  rw [Finset.card_erase_of_mem hi]
  obtain ⟨k, hk⟩ : ∃ k, t.card = k + 1 := ⟨t.card - 1, by have := Finset.card_pos.mpr ⟨i, hi⟩; omega⟩
  rw [hk, Nat.add_sub_cancel, pow_succ]
  ring

private theorem Dtot_Lop_eq_zero_of_Dtot_eq_zero_of_empty_eq_zero (p : ℕ) (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (f : ι → V →+ V)
    (h : ι → ι → V →+ K) (hd : IsOddDer d) (hD : IsDatum p d f h) (v : V)
    (y : Finset ι → ExteriorAlgebra K V) (hy : Dtot d y = 0) (hy0 : y ∅ = 0) :
    Dtot d (Lop f h v y) = 0 := by
  have hys : ∀ s : Finset ι, d (y s) = -((-1 : ℤ) ^ s.card • delta y s) := by
    intro s
    have e0 := congrFun hy s
    simp only [Dtot, Pi.zero_apply] at e0
    have e2 : (-1 : ℤ) ^ s.card • d (y s) = -delta y s := by
      rw [eq_neg_iff_add_eq_zero, add_comm]
      exact e0
    have e1 : ((-1 : ℤ) ^ s.card * (-1) ^ s.card) = 1 := by
      rw [← mul_pow]
      simp
    calc d (y s) = ((-1 : ℤ) ^ s.card * (-1) ^ s.card) • d (y s) := by rw [e1, one_smul]
      _ = (-1 : ℤ) ^ s.card • ((-1 : ℤ) ^ s.card • d (y s)) := mul_smul _ _ _
      _ = -((-1 : ℤ) ^ s.card • delta y s) := by rw [e2, smul_neg]
  have dsm : ∀ (k : K) (x : ExteriorAlgebra K V), d (k • x) = d (algebraMap K _ k) * x + k • d x := by
    intro k x
    rw [Algebra.smul_def, hd.mul, AlgHom.commutes, ← Algebra.smul_def]
  have dω : ∀ (i : ι) (x : ExteriorAlgebra K V),
      d (ExteriorAlgebra.ι K (f i v) * x) = -(ExteriorAlgebra.ι K (f i v) * d x) := by
    intro i x
    rw [hd.mul, hD.closed, zero_mul, zero_add]
    rw [show CliffordAlgebra.involute (ExteriorAlgebra.ι K (f i v)) = -ExteriorAlgebra.ι K (f i v) from
      CliffordAlgebra.involute_ι _, neg_mul]
  have hε : ∀ (n : ℕ) (x : ExteriorAlgebra K V), (-1 : ℤ) ^ n • ((-1 : ℤ) ^ n • x) = x := by
    intro n x
    rw [← mul_smul, ← mul_pow]
    simp
  funext s
  simp only [Dtot, Pi.zero_apply]
  by_cases hs : s.Nonempty
  swap
  · rw [Finset.not_nonempty_iff_eq_empty.mp hs]
    simp [delta, Lop]
  · rw [delta_eq_erase_min_sub_sum_cubeSign _ s hs]
    have hdy := delta_eq_erase_min_sub_sum_cubeSign y s hs
    set m := s.min' hs
    set s' := s.erase m
    have hms : m ∈ s := s.min'_mem hs
    have hLs := Lop_apply_of_min_eq f h v y s m hs rfl
    have hLi : ∀ i ∈ s', Lop f h v y (s.erase i) =
        -((-1 : ℤ) ^ s.card • (ExteriorAlgebra.ι K (f m v) * y (s.erase i))) +
        (if h2 : (s'.erase i).Nonempty then h m ((s'.erase i).min' h2) v • y (s'.erase i) else 0) := by
      intro i hi
      have hne : i ≠ m := Finset.ne_of_mem_erase hi
      have his : i ∈ s := Finset.mem_of_mem_erase hi
      have hmi : m ∈ s.erase i := Finset.mem_erase.mpr ⟨hne.symm, hms⟩
      have hmin : (s.erase i).min' ⟨m, hmi⟩ = m :=
        le_antisymm ((s.erase i).min'_le m hmi)
          (Finset.le_min' _ _ _ (fun z hz => s.min'_le z (Finset.mem_of_mem_erase hz)))
      rw [Lop_apply_of_min_eq f h v y (s.erase i) m ⟨m, hmi⟩ hmin, neg_one_pow_card_erase_of_mem s i his, neg_smul,
        Finset.erase_right_comm]
    have hsum : ∑ i ∈ s', GlobalTheory.cubeSign s' i • Lop f h v y (s.erase i) =
        -((-1 : ℤ) ^ s.card • (ExteriorAlgebra.ι K (f m v) * ∑ i ∈ s', GlobalTheory.cubeSign s' i • y (s.erase i))) +
        ∑ i ∈ s', GlobalTheory.cubeSign s' i •
          (if h2 : (s'.erase i).Nonempty then h m ((s'.erase i).min' h2) v • y (s'.erase i) else 0) := by
      rw [Finset.mul_sum, Finset.smul_sum, ← Finset.sum_neg_distrib, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro i hi
      rw [hLi i hi, smul_add, smul_neg, mul_smul_comm, smul_comm (GlobalTheory.cubeSign s' i)]
    have hX : ∑ i ∈ s', GlobalTheory.cubeSign s' i • y (s.erase i) = y s' - delta y s := by
      rw [hdy]
      abel
    have hLs2 : Lop f h v y s = (-1 : ℤ) ^ s.card • (ExteriorAlgebra.ι K (f m v) * y s) +
        (if h2 : s'.Nonempty then h m (s'.min' h2) v • y s' else 0) := hLs
    rw [hsum, hLs2, hX, map_add (f := _), map_zsmul, dω, hys s]
    by_cases h2 : s'.Nonempty
    · set n := s'.min' h2 with hn_eq
      have hns : n ∈ s' := s'.min'_mem h2
      have hLs' : Lop f h v y s' = (-1 : ℤ) ^ s'.card • (ExteriorAlgebra.ι K (f n v) * y s') +
          (if h3 : (s'.erase n).Nonempty then h n ((s'.erase n).min' h3) v • y (s'.erase n) else 0) :=
        Lop_apply_of_min_eq f h v y s' n h2 rfl
      have hc : (-1 : ℤ) ^ s'.card = -(-1) ^ s.card := neg_one_pow_card_erase_of_mem s m hms
      have hSh : ∑ i ∈ s', GlobalTheory.cubeSign s' i •
          (if h3 : (s'.erase i).Nonempty then h m ((s'.erase i).min' h3) v • y (s'.erase i) else 0) =
          (if h3 : (s'.erase n).Nonempty then h n ((s'.erase n).min' h3) v • y (s'.erase n) else 0) +
            h m n v • delta y s' := by
        rw [← sub_eq_iff_eq_add]
        unfold delta
        rw [Finset.smul_sum, ← Finset.sum_sub_distrib, Finset.sum_eq_single n]
        · rw [show GlobalTheory.cubeSign s' n = 1 from cubeSign_min_eq_one s' h2]
          simp only [one_smul]
          by_cases h3 : (s'.erase n).Nonempty
          · rw [dite_eq_left h3, dite_eq_left h3, ← sub_smul]
            congr 1
            rw [← hD.cocycle m n ((s'.erase n).min' h3) v]
            ring
          · rw [dite_eq_right h3, dite_eq_right h3, Finset.not_nonempty_iff_eq_empty.mp h3, hy0]
            simp
        · intro b hb hbn
          have hnb : n ∈ s'.erase b := Finset.mem_erase.mpr ⟨fun e => hbn e.symm, hns⟩
          have hmin : (s'.erase b).min' ⟨n, hnb⟩ = n :=
            le_antisymm ((s'.erase b).min'_le n hnb)
              (Finset.le_min' _ _ _ (fun z hz => s'.min'_le z (Finset.mem_of_mem_erase hz)))
          rw [dite_eq_left ⟨n, hnb⟩, hmin, smul_comm (h m n v) (GlobalTheory.cubeSign s' b), sub_self]
        · intro hn
          exact absurd hns hn
      have hcomm : ∀ x : ExteriorAlgebra K V,
          h m n v • ((-1 : ℤ) ^ s.card • x) = (-1 : ℤ) ^ s.card • (h m n v • x) :=
        fun x => smul_comm _ _ _
      rw [dite_eq_left h2, ← hn_eq, hSh, hLs', dsm, hD.dh, hys s', hc]
      simp only [neg_smul, neg_neg, mul_neg, mul_sub, sub_mul, smul_add, smul_sub,
        mul_smul_comm, hε, hcomm]
      abel
    · have hs'e : s' = ∅ := Finset.not_nonempty_iff_eq_empty.mp h2
      have hdy0 : delta y s = 0 := by
        rw [hdy, hs'e]
        simp [hy0]
      rw [dite_eq_right h2, hdy0, hs'e]
      simp [Lop, hy0]

theorem prodL_closed (p : ℕ) (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (f : ι → V →+ V)
    (h : ι → ι → V →+ K) (hd : IsOddDer d) (hD : IsDatum p d f h) (vs : List V) :
    Dtot d (prodL f h vs) = 0 ∧ prodL f h vs ∅ = 0 := by
  induction vs with
  | nil => exact ⟨dtot_oneC d hd, oneC_empty (ι := ι)⟩
  | cons v vs ih =>
    obtain ⟨h1, h2⟩ := ih
    refine ⟨?_, ?_⟩
    · exact Dtot_Lop_eq_zero_of_Dtot_eq_zero_of_empty_eq_zero p d f h hd hD v _ h1 h2
    · simp [prodL, Lop]

theorem alt_closed (p : ℕ) (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (f : ι → V →+ V)
    (h : ι → ι → V →+ K) (hd : IsOddDer d) (hD : IsDatum p d f h) (a : ℕ) (v : Fin a → V) :
    Dtot d (alt f h a v) = 0 ∧ alt f h a v ∅ = 0 := by
  have hp := fun vs => prodL_closed p d f h hd hD vs
  constructor
  · change dtotHom d (alt f h a v) = 0
    unfold alt

    rw [map_sum]
    apply Finset.sum_eq_zero
    intro σ _
    rw [map_zsmul]
    change _ • Dtot d _ = 0
    rw [(hp _).1, smul_zero]
  · simp only [alt, Finset.sum_apply, Pi.smul_apply, (hp _).2, smul_zero, Finset.sum_const_zero]

end GlobalTheory.DI.AltClosed

theorem GlobalTheory.DI.prodL_alt_closed : ∀ {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type} [LinearOrder ι] (p : ℕ) (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (f : ι → V →+ V) (h : ι → ι → V →+ K), IsOddDer d → IsDatum p d f h → (∀ vs : List V, Dtot d (prodL f h vs) = 0 ∧ prodL f h vs ∅ = 0) ∧ ∀ (a : ℕ) (v : Fin a → V), Dtot d (alt f h a v) = 0 ∧ alt f h a v ∅ = 0 := by
  intro K _ V _ _ ι _ p d f h hd hD
  exact ⟨fun vs => AltClosed.prodL_closed p d f h hd hD vs,
    fun a v => AltClosed.alt_closed p d f h hd hD a v⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.AlternatingProductCocycle =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.FrobeniusSplittingClosed =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.FrobeniusSplittingClosed", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.AlternatingProductCocycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.ExteriorAlgebra.Grading\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI.PhiClosed

variable {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type} [LinearOrder ι]

theorem d_alg_pow (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (hd : IsOddDer d) (c : K) (n : ℕ) :
    d (algebraMap K (ExteriorAlgebra K V) c ^ (n + 1)) =
      (n + 1) • (algebraMap K (ExteriorAlgebra K V) c ^ n * d (algebraMap K (ExteriorAlgebra K V) c)) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [pow_succ' _ (n + 1), hd.mul, ih, AlgHom.commutes]
    have hc : d (algebraMap K (ExteriorAlgebra K V) c) * algebraMap K (ExteriorAlgebra K V) c ^ (n + 1) =
        algebraMap K (ExteriorAlgebra K V) c ^ (n + 1) * d (algebraMap K (ExteriorAlgebra K V) c) := by
      rw [← map_pow]
      exact (Algebra.commutes _ _).symm
    rw [hc, mul_smul_comm, ← mul_assoc, ← pow_succ', succ_nsmul' _ (n + 1)]

theorem d_alg_pow_char (p : ℕ) [Fact p.Prime] [CharP K p] (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V)
    (hd : IsOddDer d) (c : K) : d (algebraMap K (ExteriorAlgebra K V) (c ^ p)) = 0 := by
  obtain ⟨k, hk⟩ : ∃ k, p = k + 1 := ⟨p - 1, by have := (Fact.out : p.Prime).one_lt; omega⟩
  rw [map_pow, hk, d_alg_pow d hd c k, ← hk, ← Nat.cast_smul_eq_nsmul K, CharP.cast_eq_zero, zero_smul]

theorem d_smul_pow (p : ℕ) [Fact p.Prime] [CharP K p] (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V)
    (hd : IsOddDer d) (c : K) (y : ExteriorAlgebra K V) : d (c ^ p • y) = c ^ p • d y := by
  rw [Algebra.smul_def, hd.mul, AlgHom.commutes, d_alg_pow_char p d hd c, zero_mul, zero_add,
    ← Algebra.smul_def]

theorem Dtot_add (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (a b : Finset ι → ExteriorAlgebra K V) :
    Dtot d (a + b) = Dtot d a + Dtot d b := by
  funext t
  simp only [Dtot, delta, Pi.add_apply, smul_add, Finset.sum_add_distrib, map_add (f := _)]
  abel

theorem Dtot_smul_pow (p : ℕ) [Fact p.Prime] [CharP K p] (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V)
    (hd : IsOddDer d) (c : K) (a : Finset ι → ExteriorAlgebra K V) :
    Dtot d (c ^ p • a) = c ^ p • Dtot d a := by
  funext t
  simp only [Dtot, delta, Pi.smul_apply, d_smul_pow p d hd, Finset.smul_sum, smul_add]
  congr 1
  · exact Finset.sum_congr rfl fun i _ => smul_comm _ _ _
  · exact smul_comm _ _ _

end GlobalTheory.DI.PhiClosed

open GlobalTheory.DI.PhiClosed in
theorem GlobalTheory.DI.phi_closed : ∀ {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type} [LinearOrder ι] (p : ℕ) [Fact p.Prime] [CharP K p] (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (f : ι → V →+ V) (h : ι → ι → V →+ K) (Φ : ExteriorAlgebra K V →+ (Finset ι → ExteriorAlgebra K V)), IsOddDer d → IsDatum p d f h → IsPhi p f h Φ → (∀ x, Φ x ∅ = 0) ∧ ∀ x, Dtot d (Φ x) = 0 := by
  intro K _ V _ _ ι _ p _ _ d f h Φ hd hD hΦ
  have hA := (prodL_alt_closed p d f h hd hD).2
  have hz0 : Dtot d (0 : Finset ι → ExteriorAlgebra K V) = 0 := by
    funext t
    simp [Dtot, delta]
  have key : ∀ x : ExteriorAlgebra K V, ∀ c : K, Φ (c • x) ∅ = 0 ∧ Dtot d (Φ (c • x)) = 0 := by
    intro x
    have hx : x ∈ Submodule.span K
        (Set.range fun x : (n : ℕ) × (Fin n → V) => ExteriorAlgebra.ιMulti K x.1 x.2) := by
      rw [ExteriorAlgebra.ιMulti_span]
      exact Submodule.mem_top
    induction hx using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨⟨a, v⟩, rfl⟩ := hy
      intro c
      rw [hΦ c a v]
      exact ⟨by rw [Pi.smul_apply, (hA a v).2, smul_zero],
        by rw [PhiClosed.Dtot_smul_pow p d hd, (hA a v).1, smul_zero]⟩
    | zero =>
      intro c
      simp [hz0]
    | add y z _ _ hy hz =>
      intro c
      rw [smul_add, map_add (f := _)]
      exact ⟨by rw [Pi.add_apply, (hy c).1, (hz c).1, add_zero],
        by rw [PhiClosed.Dtot_add, (hy c).2, (hz c).2, add_zero]⟩
    | smul a y _ hy =>
      intro c
      rw [smul_smul]
      exact hy (c * a)
  exact ⟨fun x => by simpa using (key x 1).1, fun x => by simpa using (key x 1).2⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.FrobeniusSplittingClosed =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorFormsSpanOfSetsMulSmulMono =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorFormsSpanOfSetsMulSmulMono", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.DI

section
variable {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V]

theorem forms_gen_mem {B : Set K} {L : Set V} {q : ℕ} {b : K} (hb : b ∈ B) (v : Fin q → V)
    (hv : ∀ k, v k ∈ L) : b • ExteriorAlgebra.ιMulti K q v ∈ forms B L q :=
  AddSubgroup.subset_closure ⟨b, hb, v, hv, rfl⟩

theorem forms_le_comap_of_gen {B B' : Set K} {L L' : Set V} {q q' : ℕ}
    (φ : ExteriorAlgebra K V →+ ExteriorAlgebra K V)
    (h : ∀ b ∈ B, ∀ v : Fin q → V, (∀ k, v k ∈ L) →
      φ (b • ExteriorAlgebra.ιMulti K q v) ∈ forms B' L' q') :
    forms B L q ≤ (forms B' L' q').comap φ := by
  show AddSubgroup.closure _ ≤ _
  rw [AddSubgroup.closure_le]
  rintro x ⟨b, hb, v, hv, rfl⟩
  exact h b hb v hv

theorem ι_mul_ιMulti_eq (u : V) {q : ℕ} (w : Fin q → V) :
    ExteriorAlgebra.ι K u * ExteriorAlgebra.ιMulti K q w =
      ExteriorAlgebra.ιMulti K (q + 1) (Fin.cons u w) := by
  rw [ExteriorAlgebra.ιMulti_succ_apply]
  rfl

theorem ιMulti_one_eq (u : Fin 1 → V) : ExteriorAlgebra.ιMulti K 1 u = ExteriorAlgebra.ι K (u 0) := by
  rw [ExteriorAlgebra.ιMulti_succ_apply, ExteriorAlgebra.ιMulti_zero_apply, mul_one]

theorem forms_mul_smul_mono (A : Subring K) (L : Set V) :
    (1 : ExteriorAlgebra K V) ∈ forms (A : Set K) L 0 ∧
    (∀ q x y, x ∈ forms (A : Set K) L 1 → y ∈ forms (A : Set K) L q →
      x * y ∈ forms (A : Set K) L (q + 1)) ∧
    (∀ q (c : K) y, c ∈ A → y ∈ forms (A : Set K) L q → c • y ∈ forms (A : Set K) L q) ∧
    (∀ (B : Set K) q (c : K) y, y ∈ forms B L q → c • y ∈ forms ((fun b => c * b) '' B) L q) ∧
    ∀ (B B' : Set K) (L' : Set V) q, B ⊆ B' → L ⊆ L' → forms B L q ≤ forms B' L' q := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · have h := forms_gen_mem (B := (A : Set K)) (L := L) A.one_mem (Fin.elim0 : Fin 0 → V)
      (fun k => k.elim0)
    simpa using h
  · intro q x y hx hy

    have key : ∀ a ∈ (A : Set K), ∀ u : Fin 1 → V, (∀ k, u k ∈ L) →
        a • ExteriorAlgebra.ιMulti K 1 u * y ∈ forms (A : Set K) L (q + 1) := by
      intro a ha u hu
      have := forms_le_comap_of_gen (B := (A : Set K)) (L := L) (B' := (A : Set K)) (L' := L)
        (q := q) (q' := q + 1) (AddMonoidHom.mulLeft (a • ExteriorAlgebra.ιMulti K 1 u)) ?_ hy
      · exact this
      intro b hb w hw
      show a • ExteriorAlgebra.ιMulti K 1 u * (b • ExteriorAlgebra.ιMulti K q w) ∈ _
      rw [smul_mul_smul_comm, ιMulti_one_eq, ι_mul_ιMulti_eq]
      refine forms_gen_mem (A.mul_mem ha hb) _ ?_
      intro k
      refine Fin.cases ?_ (fun k => ?_) k
      · simpa using hu 0
      · simpa using hw k
    exact forms_le_comap_of_gen (B' := (A : Set K)) (L' := L) (q' := q + 1)
      (AddMonoidHom.mulRight y) (fun a ha u hu => key a ha u hu) hx
  · intro q c y hc hy
    refine forms_le_comap_of_gen (B' := (A : Set K)) (L' := L) (q' := q)
      (DistribSMul.toAddMonoidHom _ c) ?_ hy
    intro b hb v hv
    show c • b • ExteriorAlgebra.ιMulti K q v ∈ _
    rw [smul_smul]
    exact forms_gen_mem (A.mul_mem hc hb) v hv
  · intro B q c y hy
    refine forms_le_comap_of_gen (B' := (fun b => c * b) '' B) (L' := L) (q' := q)
      (DistribSMul.toAddMonoidHom _ c) ?_ hy
    intro b hb v hv
    show c • b • ExteriorAlgebra.ιMulti K q v ∈ _
    rw [smul_smul]
    exact forms_gen_mem (B := (fun b => c * b) '' B) (Set.mem_image_of_mem _ hb) v hv
  · intro B B' L' q hB hL
    refine (forms_le_comap_of_gen (B' := B') (L' := L') (q' := q) (AddMonoidHom.id _) ?_)
    intro b hb v hv
    exact forms_gen_mem (hB hb) v (fun k => hL (hv k))

end

end GlobalTheory.DI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorFormsSpanOfSetsMulSmulMono =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorFormsSpanOfSetsMulSmulMonoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorFormsSpanOfSetsMulSmulMonoStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorFormsSpanOfSetsMulSmulMono\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorFormsSpanOfSetsMulSmulMonoStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlternatingProductIntegral =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlternatingProductIntegral", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExteriorFormsSpanOfSetsMulSmulMonoStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI

theorem prodL_mem_forms_and_vanish {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V]
    {ι : Type} [LinearOrder ι]
    (f : ι → V →+ V) (h : ι → ι → V →+ K) (A : Subring K) (L : Set V) (s : Finset ι)
    (hf : ∀ i ∈ s, ∀ v ∈ L, ExteriorAlgebra.ι K (f i v) ∈ forms (A : Set K) L 1)
    (hh : ∀ i ∈ s, ∀ j ∈ s, ∀ v ∈ L, h i j v ∈ A) :
    ∀ (vs : List V), (∀ w ∈ vs, w ∈ L) → ∀ t : Finset ι,
      (t ⊆ s → ∀ q, q + t.card = vs.length + 1 → prodL f h vs t ∈ forms (A : Set K) L q) ∧
      (vs.length + 1 < t.card → prodL f h vs t = 0) := by
  obtain ⟨hone, hmul, hsmul, -, -⟩ := _root_.GlobalTheory.DI.forms_mul_smul_mono A L
  intro vs
  induction vs with
  | nil =>
    intro _ t
    simp only [prodL, List.foldr_nil, oneC, List.length_nil]
    refine ⟨fun _ q hq => ?_, fun ht => ?_⟩
    · split_ifs with h1t
      · have hq0 : q = 0 := by omega
        subst hq0
        exact hone
      · exact zero_mem _
    · rw [if_neg (by omega)]
  | cons w vs ih =>
    intro hvs t
    have hw : w ∈ L := hvs w (List.mem_cons_self ..)
    have hvs' : ∀ u ∈ vs, u ∈ L := fun u hu => hvs u (List.mem_cons_of_mem _ hu)
    have key : prodL f h (w :: vs) t = Lop f h w (prodL f h vs) t := rfl
    rw [key, List.length_cons]
    refine ⟨fun hts q hq => ?_, fun hlt => ?_⟩
    · simp only [Lop]
      by_cases ht : t.Nonempty
      · rw [dite_eq_left ht]
        have hm : t.min' ht ∈ s := hts (t.min'_mem ht)
        refine add_mem ?_ ?_
        · refine zsmul_mem ?_ _
          rcases q with _ | q
          · rw [(ih hvs' t).2 (by omega), mul_zero]
            exact zero_mem _
          · exact hmul q _ _ (hf _ hm w hw) ((ih hvs' t).1 hts q (by omega))
        · split_ifs with h2
          · have hm' : (t.erase (t.min' ht)).min' h2 ∈ s :=
              hts (Finset.mem_of_mem_erase ((t.erase _).min'_mem h2))
            have hcard : (t.erase (t.min' ht)).card = t.card - 1 :=
              Finset.card_erase_of_mem (t.min'_mem ht)
            have hpos : 0 < t.card := ht.card_pos
            exact hsmul q _ _ (hh _ hm _ hm' w hw)
              ((ih hvs' _).1 ((Finset.erase_subset _ _).trans hts) q (by omega))
          · exact zero_mem _
      · rw [dite_eq_right ht]
        exact zero_mem _
    · simp only [Lop]
      by_cases ht : t.Nonempty
      · rw [dite_eq_left ht]
        have hcard : (t.erase (t.min' ht)).card = t.card - 1 :=
          Finset.card_erase_of_mem (t.min'_mem ht)
        rw [(ih hvs' t).2 (by omega), mul_zero, smul_zero, zero_add]
        split_ifs with h2
        · rw [(ih hvs' _).2 (by omega), smul_zero]
        · rfl
      · rw [dite_eq_right ht]

theorem alt_mem_forms : ∀ {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type}
    [LinearOrder ι] (f : ι → V →+ V) (h : ι → ι → V →+ K) (A : Subring K) (L : Set V) (s : Finset ι),
    (∀ i ∈ s, ∀ v ∈ L, ExteriorAlgebra.ι K (f i v) ∈ forms (A : Set K) L 1) →
    (∀ i ∈ s, ∀ j ∈ s, ∀ v ∈ L, h i j v ∈ A) →
    ∀ (a : ℕ) (v : Fin a → V) (t : Finset ι), (∀ k, v k ∈ L) → t ⊆ s →
      ∀ q, q + t.card = a + 1 → alt f h a v t ∈ forms (A : Set K) L q := by
  intro K _ V _ _ ι _ f h A L s hf hh a v t hv hts q hq
  rw [alt, Finset.sum_apply]
  refine AddSubgroup.sum_mem _ fun σ _ => ?_
  rw [Pi.smul_apply]
  refine zsmul_mem ?_ _
  refine (prodL_mem_forms_and_vanish f h A L s hf hh _ ?_ t).1 hts q (by rw [List.length_ofFn]; exact hq)
  intro w hw
  obtain ⟨k, rfl⟩ := List.mem_ofFn.mp hw
  exact hv _

end GlobalTheory.DI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlternatingProductIntegral =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.SplittingIntegralFormsBound =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.SplittingIntegralFormsBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AlternatingProductIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI

theorem pow_smul_mem_forms_powMul {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V]
    (p : ℕ) (A B : Set K) (L : Set V) (q : ℕ) (b : K) (hb : b ∈ B) (y : ExteriorAlgebra K V)
    (hy : y ∈ forms A L q) : b ^ p • y ∈ forms {z | ∃ c ∈ B, ∃ a ∈ A, z = c ^ p * a} L q := by
  unfold forms at hy ⊢
  induction hy using AddSubgroup.closure_induction with
  | mem x hx =>
    obtain ⟨a', ha', v, hv, rfl⟩ := hx
    apply AddSubgroup.subset_closure
    exact ⟨b ^ p * a', ⟨b, hb, a', ha', rfl⟩, v, hv, by rw [smul_smul]⟩
  | zero => rw [smul_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [smul_add]; exact add_mem hx hy
  | neg x _ hx => rw [smul_neg]; exact neg_mem hx

theorem phi_mem_forms : ∀ {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type} [LinearOrder ι] (p : ℕ) (f : ι → V →+ V) (h : ι → ι → V →+ K) (Φ : ExteriorAlgebra K V →+ (Finset ι → ExteriorAlgebra K V)) (A : Subring K) (B : Set K) (L : Set V) (s : Finset ι), IsPhi p f h Φ → (∀ i ∈ s, ∀ v ∈ L, ExteriorAlgebra.ι K (f i v) ∈ forms (A : Set K) L 1) → (∀ i ∈ s, ∀ j ∈ s, ∀ v ∈ L, h i j v ∈ A) → ∀ (a q : ℕ) (t : Finset ι), t ⊆ s → q + t.card = a + 1 → ∀ x ∈ forms B L a, Φ x t ∈ forms {z | ∃ c ∈ B, ∃ b ∈ A, z = c ^ p * b} L q := by
  intro K _ V _ _ ι _ p f h Φ A B L s hΦ hf hh a q t hts hq x hx
  unfold forms at hx
  induction hx using AddSubgroup.closure_induction with
  | mem x hx =>
    obtain ⟨c, hc, v, hv, rfl⟩ := hx
    rw [show Φ (c • ExteriorAlgebra.ιMulti K a v) = c ^ p • alt f h a v from hΦ c a v, Pi.smul_apply]
    exact pow_smul_mem_forms_powMul p (A : Set K) B L q c hc _
      (_root_.GlobalTheory.DI.alt_mem_forms f h A L s hf hh a v t hv hts q hq)
  | zero =>
    rw [map_zero, Pi.zero_apply]
    exact zero_mem _
  | add x y _ _ hx hy =>
    rw [map_add (f := _), Pi.add_apply]
    exact add_mem hx hy
  | neg x _ hx =>
    rw [map_neg, Pi.neg_apply]
    exact neg_mem hx

end GlobalTheory.DI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.SplittingIntegralFormsBound =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.SplittingLocalIntegrality =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.SplittingLocalIntegrality", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsFlatLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CartierPropertyAtSignMulFactorialScaling\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAntisymmetrizedCupProductLeadingTerm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechAntisymmetrizedCupProductVanishAboveDegree\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.CupProductFiltrationBound\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.ExistsFrobeniusSplittingDatum\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.FrobeniusSplittingClosed\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.SplittingIntegralFormsBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory GlobalTheory.DI

namespace GlobalTheory.DI

theorem decomp_pointwise : ∀ {K : Type} [CommRing K] {V : Type} [AddCommGroup V] [Module K V] {ι : Type} [LinearOrder ι] (p : ℕ) [Fact p.Prime] [CharP K p] (d : ExteriorAlgebra K V →+ ExteriorAlgebra K V) (f : ι → V →+ V) (h : ι → ι → V →+ K) (γ : ι → ExteriorAlgebra K V →+* ExteriorAlgebra K V) {P : Type} (U : Finset ι → Set P) (A : P → Subring K) (B : P → Set K) (L : P → Set V) (N T : ℕ → Finset ι → AddSubgroup (ExteriorAlgebra K V)), IsOddDer d → IsDatum p d f h → (∀ i, IsGamma p (f i) (γ i)) → (∀ q s t, s.Nonempty → s ⊆ t → N q s ≤ N q t) → (∀ q s t, s.Nonempty → s ⊆ t → T q s ≤ T q t) → (∀ q s x, x ∈ T q s → d x ∈ T (q + 1) s) → (∀ a s, s.Nonempty → N a s ≤ forms (Set.univ : Set K) (Set.univ : Set V) a) → (∀ a s, s.Nonempty → p ≤ a → N a s = ⊥) → (∀ a s, s.Nonempty → ∀ y ∈ U s, N a s ≤ forms (B y) (L y) a) → (∀ q s x, s.Nonempty → x ∈ forms (Set.univ : Set K) (Set.univ : Set V) q → (∀ y ∈ U s, x ∈ forms {z | ∃ c ∈ B y, ∃ b ∈ A y, z = c ^ p * b} (L y) q) → x ∈ T q s) → (∀ s, ∀ y ∈ U s, ∀ i ∈ s, ∀ v ∈ L y, ExteriorAlgebra.ι K (f i v) ∈ forms (A y : Set K) (L y) 1) → (∀ s, ∀ y ∈ U s, ∀ i ∈ s, ∀ j ∈ s, ∀ v ∈ L y, h i j v ∈ A y) → (∀ s, ∀ j ∈ s, CartierAt d (γ j) (fun a => N a s) (fun a => T a s)) → ∀ a b, HypZero d T (a + b) → CechZero (N a) b := by
  intro K _ V _ _ ι _ p _ _ d f h γ P U A B L N T hd hD hγ hNm hTm hTd hNu hNp hNU hT hfA hhA hC
  obtain ⟨Φ, hΦ⟩ := _root_.GlobalTheory.DI.exists_isPhi p d f h hD
  obtain ⟨h0, hcl⟩ := _root_.GlobalTheory.DI.phi_closed p d f h Φ hd hD hΦ
  have hvan := (_root_.GlobalTheory.DI.alt_and_phi_vanish_above_degree p f h).2 Φ hΦ
  apply _root_.GlobalTheory.DI.cechZero_of_hypZero_of_closed_map d N T Φ hd.sq hNm hTm hTd h0 hcl
  · intro a u t x hu htu hx
    have hxu : x ∈ forms (Set.univ : Set K) (Set.univ : Set V) a := hNu a u hu hx
    refine ⟨fun q hq => ?_, fun hlt => hvan a x hxu t hlt⟩
    apply hT q u _ hu
    · have := _root_.GlobalTheory.DI.phi_mem_forms p f h Φ (⊤ : Subring K) Set.univ Set.univ t hΦ
        (fun i _ v _ => by
          simpa [ιMulti_one_eq] using
            forms_gen_mem (B := ((⊤ : Subring K) : Set K)) (L := Set.univ) (q := 1)
              (⊤ : Subring K).one_mem (fun _ : Fin 1 => f i v) fun _ => trivial)
        (fun _ _ _ _ _ _ => Subring.mem_top _) a q t subset_rfl hq x hxu
      exact (forms_mul_smul_mono (⊤ : Subring K) Set.univ).2.2.2.2 _ _ _ _
        (Set.subset_univ _) subset_rfl this
    · intro y hy
      exact _root_.GlobalTheory.DI.phi_mem_forms p f h Φ (A y) (B y) (L y) u hΦ (hfA u y hy) (hhA u y hy) a q t htu hq x
        (hNU a u hu y hy hx)
  · intro s j hj
    have hs : s.Nonempty := ⟨j, hj⟩
    exact _root_.GlobalTheory.DI.cartierAt_signFactorial p d (γ j).toAddMonoidHom (fun x => Φ x {j}) (fun a => N a s) (fun a => T a s)
      (fun x => by
        rw [nsmul_eq_mul, ← map_natCast (algebraMap K (ExteriorAlgebra K V)),
          CharP.cast_eq_zero, map_zero, zero_mul])
      (fun a ha => hNp a s hs ha)
      (fun a x hx => (_root_.GlobalTheory.DI.PhiLead.leading_term p f h).2 Φ j (γ j) hΦ (hγ j) a x (hNu a s hs hx)) (hC s j hj)

end GlobalTheory.DI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.NadelVanishingPairs.NadelVanishingLemmas.SplittingLocalIntegrality =====
