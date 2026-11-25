module

public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrBase
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SecondValuationOfAdmitted
public import Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition
public import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees
public import Formalism.SharpRestriction.GrowthBounds.GLWeightTheory
public import Formalism.SharpRestriction.GrowthBounds.Lemma5aAt
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CardFilterValLt
public import Formalism.SharpRestriction.GrowthBounds.Joints
public import Formalism.SharpRestriction.GrowthBounds.ValuationLowestDegreeMapFractionField
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PlaneGramTheoremOfLemmas
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrData
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.BitVec
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrRenExpandMonomial, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.UnitLevelOne, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrSpanG, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrSpan, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrRenExpandMonomial =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrRenExpandMonomial", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrBase\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SecondValuationOfAdmitted\npublic import Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

open Formalism.MainNotions.G Formalism.MainNotions.PlaneGramData

section Mono

variable {K : Type} [Field K] {r : ℕ}

theorem br_monomial_eq (s : Fin r →₀ ℕ) (c : K) :
    (monomial s c : MvPolynomial (Fin r) K) = C c * ∏ a, X a ^ s a := by
  rw [MvPolynomial.monomial_eq, Finsupp.prod_fintype _ _ (fun a => pow_zero _)]

def brRen (K : Type) [Field K] (r : ℕ) : MvPolynomial (Fin r) K →ₐ[K] MvPolynomial (Unit × Fin r) K :=
  rename fun a => ((), a)

theorem brRen_inj : Function.Injective (fun a : Fin r => ((), a)) := fun a b h => congrArg Prod.snd h

theorem brRen_monomial (s : Fin r →₀ ℕ) (c : K) : brRen K r (monomial s c) = C c * monoL (K := K) (fun a => s a) := by
  rw [br_monomial_eq, map_mul, map_prod]
  simp only [brRen, rename_C, map_pow, rename_X, monoL]

theorem brRen_expand_monomial (P : ℕ) (s : Fin r →₀ ℕ) (c : K) :
    brRen K r (expand P (monomial s c)) = C c * monoL (K := K) (fun a => P * s a) := by
  rw [br_monomial_eq]
  simp only [map_mul, map_prod, map_pow, expand_C, expand_X, brRen, rename_C, rename_X, monoL, ← pow_mul]

theorem br_ddiv_monomial (M α : Fin r →₀ ℕ) :
    ddiv M (monomial α (1 : K)) = monomial (α - M) (∏ a, (((α a).choose (M a) : ℕ) : K)) := by
  classical
  unfold ddiv
  rw [support_monomial, if_neg one_ne_zero, Finset.sum_singleton, coeff_monomial, if_pos rfl, one_mul]
  split_ifs with h
  · congr 1
    rw [Finsupp.prod]
    apply Finset.prod_subset (Finset.subset_univ _)
    intro a _ ha
    have h0 : α a = 0 := by simpa using ha
    have hM : M a = 0 := by
      have := Finsupp.le_def.1 h a
      omega
    simp [h0, hM]
  · obtain ⟨a, ha⟩ : ∃ a, α a < M a := by
      by_contra hc
      push_neg at hc
      exact h (Finsupp.le_def.2 hc)
    rw [Finset.prod_eq_zero (Finset.mem_univ a) (by simp [Nat.choose_eq_zero_of_lt ha]), monomial_zero]

theorem brRen_ddiv (M α : Fin r →₀ ℕ) :
    brRen K r (ddiv M (monomial α (1 : K))) =
      divDer (atLetter () (fun a => M a)) (monoL (K := K) (fun a => α a)) := by
  rw [br_ddiv_monomial, brRen_monomial, Formalism.MainNotions.G.Joints.divDer_monoL]
  congr 2

theorem brRen_term (P : ℕ) (ρ' δ κ β : Fin r →₀ ℕ) (x : K) :
    brRen K r (monomial ρ' x * expand P (monomial δ (1 : K) * ddiv κ (monomial β (1 : K)))) =
      C (x * ∏ a, (((β a).choose (κ a) : ℕ) : K)) * monoL (K := K) (fun a => ρ' a) *
        monoL (K := K) (fun a => P * (β a - κ a + δ a)) := by
  rw [br_ddiv_monomial, monomial_mul, one_mul, map_mul, brRen_monomial, brRen_expand_monomial]
  have h : (fun a => P * (δ + (β - κ)) a) = fun a => P * (β a - κ a + δ a) := by
    funext a
    simp [Finsupp.add_apply, add_comm]
  rw [h, map_mul]
  ring

end Mono

section DER

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem brDER (S0 : UniformizedDVR p O) [CharZero (KK O)] (h6 : Formalism.MainNotions.PlaneGramData.DerivativeCongruenceAtRing p O) :
    DER (KK O) (vQ p S0) p := by
  classical
  unfold DER
  intro _ r g ρ hρ M c hc
  obtain ⟨T, coef, hT, hval⟩ := h6 g r (fun a => M a) (fun a => ρ a) hρ c hc
  let e := T.equivFin
  let τ : Fin T.card → (Fin r → ℕ) × (Fin r → ℕ) × (Fin r → ℕ) := fun t => (e.symm t).1
  have key : ∀ x : WithTop ℚ, geQ x (c : ℝ) → ((c : ℕ) : WithTop ℚ) ≤ x := by
    intro x hx
    induction x using WithTop.recTopCoe with
    | top => exact le_top
    | coe q =>
      have hq := hx q rfl
      have hq' : ((c : ℕ) : ℚ) ≤ q := by exact_mod_cast hq
      exact_mod_cast hq'
  refine ⟨T.card, fun t => algebraMap O (KK O) (coef (τ t)),
    fun t => Finsupp.equivFunOnFinite.symm (τ t).1, fun t => Finsupp.equivFunOnFinite.symm (τ t).2.1,
    fun t => Finsupp.equivFunOnFinite.symm (τ t).2.2, ?_, ?_, ?_⟩
  · intro t
    show (0 : WithTop ℚ) ≤ vK p (algebraMap O (KK O) (coef (τ t)))
    by_cases h0 : coef (τ t) = 0
    · rw [h0, map_zero, Formalism.MainNotions.G.GLWeightTheory.valuation_zero_alt p]
      exact le_top
    · rw [Formalism.MainNotions.G.Joints.vK_alg p _ h0]
      exact WithTop.coe_nonneg.2 (div_nonneg (Nat.cast_nonneg _) (Nat.cast_nonneg _))
  · intro t
    have hb := (hT (τ t) (e.symm t).2).2
    rw [br_absE, br_absE]
    simp only [Finsupp.coe_equivFunOnFinite_symm]
    push_cast at hb ⊢
    exact hb
  · intro β γ
    show ((c : ℕ) : WithTop ℚ) ≤ vK p _
    have hX : ∀ F : MvPolynomial (Fin r) (KK O),
        F.coeff γ = (brRen (KK O) r F).coeff (γ.mapDomain fun a => ((), a)) :=
      fun F => (coeff_rename_mapDomain _ brRen_inj F γ).symm

    rw [hX, map_sub, map_sum, brRen_ddiv]
    simp only [brRen_term]
    have hα : (fun a => (ρ + p ^ g • β) a) = fun a => ρ a + p ^ g * β a := by
      funext a
      simp
    have hsum : (∑ t : Fin T.card,
        C (algebraMap O (KK O) (coef (τ t)) *
            ∏ a, (((β a).choose ((Finsupp.equivFunOnFinite.symm (τ t).2.2) a) : ℕ) : KK O)) *
          monoL (K := KK O) (fun a => (Finsupp.equivFunOnFinite.symm (τ t).1) a) *
          monoL (K := KK O) (fun a => p ^ g * (β a - (Finsupp.equivFunOnFinite.symm (τ t).2.2) a +
            (Finsupp.equivFunOnFinite.symm (τ t).2.1) a))) =
        ∑ x ∈ T, C (algebraMap O (KK O) (coef x) * ∏ a, (((β a).choose (x.2.2 a) : ℕ) : KK O)) *
          monoL (K := KK O) x.1 * monoL (K := KK O) (fun a => p ^ g * (β a - x.2.2 a + x.2.1 a)) := by
      simp only [Finsupp.coe_equivFunOnFinite_symm]
      rw [← Finset.sum_coe_sort T]
      exact Fintype.sum_equiv e.symm _ _ (fun t => rfl)
    rw [hα, hsum]
    exact key _ (hval (fun a => β a) (γ.mapDomain fun a => ((), a)))

end DER

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrRenExpandMonomial =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.UnitLevelOne =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.UnitLevelOne", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrBase\npublic import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees\npublic import Formalism.SharpRestriction.GrowthBounds.GLWeightTheory\npublic import Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

section Dig

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [CharZero O]

theorem vQ_rat_ge (hp : p.Prime) (S : G.UniformizedDVR p O) (x : ℚ) (c : ℕ) (h : CovariantDegrees.PadicGe p x c) :
    ((c : ℕ) : WithTop ℚ) ≤ vQ p S ((x : ℚ) : G.KK O) := by
  obtain ⟨z, hz⟩ := G.Joints.rat_padicGe_cast hp S x c h
  rw [hz, ← geQ_nat_iff S]
  exact G.Joints.geQ_vK_pow_mul S c z

theorem vQ_rat_nonneg (hp : p.Prime) (S : G.UniformizedDVR p O) (x : ℚ) (h : CovariantDegrees.PadicGe p x 0) :
    0 ≤ vQ p S ((x : ℚ) : G.KK O) := by
  have := vQ_rat_ge hp S x 0 (by simpa using h)
  simpa using this

theorem vQ_rat_unit [CharZero (G.KK O)] (hp : p.Prime) (S : G.UniformizedDVR p O) (x : ℚ) (hx : x ≠ 0)
    (h : padicValRat p x = 0) : vQ p S ((x : ℚ) : G.KK O) = 0 := by
  have : Fact p.Prime := ⟨hp⟩
  have h1 := vQ_rat_nonneg hp S x (Or.inr (by simp [h]))
  have h2 := vQ_rat_nonneg hp S x⁻¹ (Or.inr (by rw [padicValRat.inv, h]; simp))
  have h3 : vQ p S ((x : ℚ) : G.KK O) + vQ p S ((x⁻¹ : ℚ) : G.KK O) = 0 := by
    rw [← AddValuation.map_mul, ← Rat.cast_mul, mul_inv_cancel₀ hx, Rat.cast_one, AddValuation.map_one]
  exact ((add_eq_zero_iff_of_nonneg h1 h2).mp h3).1

theorem unit_level_one (n : ℕ) : G.cUnit 1 n * G.dUnit 1 n 0 = 1 := by
  unfold G.cUnit G.dUnit
  have : ((n.factorial : ℕ) : ℚ) ≠ 0 := by exact_mod_cast (Nat.factorial_ne_zero _)
  simp [this]

theorem unit_at_zero (P : ℕ) : G.cUnit P 0 * G.dUnit P 0 0 = 1 := by
  unfold G.cUnit G.dUnit
  simp

theorem brDIG [CharZero (G.KK O)] (D : Formalism.BasicNotions.D7) (S : G.UniformizedDVR p O) {n' : ℕ} (hG : G.AdmissibleDVR p n' O)
    (h5 : PlaneGramData.FactorialDigitSplitAtRing p O) : DIG (G.KK O) (vQ p S) p := by
  classical
  intro _ τ _ r g
  have hp := hG.prime
  have : Fact p.Prime := ⟨hp⟩
  obtain ⟨hA, hB⟩ := (G.GLWeightTheory.lemma_five_two_first_holds D) p hp hG.five_le
  refine ⟨fun t ρ n => (((∏ a, ((ρ a).factorial : ℚ)) * ((p ^ g t).factorial : ℚ) ^ n : ℚ) : G.KK O),
    fun t ρ β => ((PlaneGramData.gamDig (p ^ g t) ρ β : ℚ) : G.KK O), ?_, ?_⟩
  · intro t ρ hρ
    obtain ⟨h1, h2, -⟩ := h5 (g t) r ρ hρ
    refine ⟨fun n => ?_, fun β => ⟨vQ_rat_unit hp S _ (h2 β).1 (h2 β).2, ?_⟩⟩
    · rw [Rat.cast_ne_zero]
      exact mul_ne_zero (Finset.prod_ne_zero_iff.mpr fun a _ => by exact_mod_cast Nat.factorial_ne_zero _)
        (pow_ne_zero _ (by exact_mod_cast Nat.factorial_ne_zero _))
    · have := congrArg (fun x : ℚ => (x : G.KK O)) (h1 β)
      push_cast at this ⊢
      rw [this]
  · intro ρ hρ c _ ε hε
    set tt : τ × Fin r → ℕ := fun k => g k.1 - 1 with htt
    set rh : τ × Fin r → ℕ := fun k => ρ k.1 k.2 with hrh'
    have hlev : ∀ k : τ × Fin r, g k.1 ≠ 0 → tt k + 1 = g k.1 := by
      intro k h0; simp only [htt]; omega
    have hrh : ∀ k, rh k < p ^ (tt k + 1) := by
      intro k
      have h := hρ k.1 k.2
      by_cases h0 : g k.1 = 0
      · rw [h0, pow_zero] at h
        exact lt_of_lt_of_le h (Nat.one_le_pow _ _ hp.pos)
      · rw [hlev k h0]; exact h
    obtain ⟨-, -, hQ⟩ := hB (τ × Fin r) tt rh hrh
    obtain ⟨T, q, hT, hq⟩ := hQ (decide (ε = -1)) c
    set ze : (τ × Fin r → ℕ) → (τ × Fin r → ℕ) := fun β k => if g k.1 = 0 then 0 else β k with hze
    have hquot : ∀ e' : τ × Fin r → ℕ,
        ((∏ k, (((rh k + p ^ (tt k + 1) * e' k).factorial : ℕ) : ℚ)) /
          (∏ k, ((rh k).factorial : ℚ) * ((e' k).factorial : ℚ) * ((p ^ (tt k + 1)).factorial : ℚ) ^ (e' k))) =
        ∏ k, G.cUnit (p ^ (tt k + 1)) (e' k) * G.dUnit (p ^ (tt k + 1)) (e' k) (rh k) := by
      intro e'
      have hlet : ∀ k, (((rh k + p ^ (tt k + 1) * e' k).factorial : ℕ) : ℚ) =
          (((rh k).factorial : ℚ) * ((e' k).factorial : ℚ) * ((p ^ (tt k + 1)).factorial : ℚ) ^ (e' k)) *
            (G.cUnit (p ^ (tt k + 1)) (e' k) * G.dUnit (p ^ (tt k + 1)) (e' k) (rh k)) := by
        intro k
        rw [hA (tt k) (rh k) (e' k) (hrh k)]; ring
      rw [Finset.prod_congr rfl (fun k _ => hlet k), Finset.prod_mul_distrib]
      have hne : (∏ k, ((rh k).factorial : ℚ) * ((e' k).factorial : ℚ) *
          ((p ^ (tt k + 1)).factorial : ℚ) ^ (e' k)) ≠ 0 := by
        refine Finset.prod_ne_zero_iff.2 fun k _ => ?_
        have h1 : ((rh k).factorial : ℚ) ≠ 0 := by exact_mod_cast (Nat.factorial_ne_zero _)
        have h2 : ((e' k).factorial : ℚ) ≠ 0 := by exact_mod_cast (Nat.factorial_ne_zero _)
        have h3 : ((p ^ (tt k + 1)).factorial : ℚ) ≠ 0 := by exact_mod_cast (Nat.factorial_ne_zero _)
        exact mul_ne_zero (mul_ne_zero h1 h2) (pow_ne_zero _ h3)
      rw [mul_div_cancel_left₀ _ hne]
    have hk : ∀ (β : τ × Fin r → ℕ) (k : τ × Fin r),
        G.cUnit (p ^ (tt k + 1)) (ze β k) * G.dUnit (p ^ (tt k + 1)) (ze β k) (rh k) =
          G.cUnit (p ^ g k.1) (β k) * G.dUnit (p ^ g k.1) (β k) (ρ k.1 k.2) := by
      intro β k
      by_cases h0 : g k.1 = 0
      · have hr0 : ρ k.1 k.2 = 0 := by
          have h := hρ k.1 k.2
          rw [h0, pow_zero] at h
          omega
        have e1 : ze β k = 0 := by simp only [hze, if_pos h0]
        have e2 : rh k = 0 := hr0
        rw [e1, e2, unit_at_zero, h0, pow_zero, hr0, unit_level_one]
      · have e1 : ze β k = β k := by simp only [hze, if_neg h0]
        rw [e1, hlev k h0]
    have hprod : ∀ β : τ × Fin r → ℕ,
        (∏ k, G.cUnit (p ^ (tt k + 1)) (ze β k) * G.dUnit (p ^ (tt k + 1)) (ze β k) (rh k)) =
          ∏ t, PlaneGramData.gamDig (p ^ g t) (ρ t) (fun a => β (t, a)) := by
      intro β
      rw [Finset.prod_congr rfl (fun k _ => hk β k), Fintype.prod_prod_type]
      rfl
    have hsum : ∀ β : τ × Fin r → ℕ,
        (∑ j ∈ T, q j * ∏ k, ((ze β k).choose (j k) : ℚ)) =
          ∑ j ∈ T.filter (fun m => ∀ k : τ × Fin r, g k.1 = 0 → m k = 0), q j * ∏ k, ((β k).choose (j k) : ℚ) := by
      intro β
      rw [Finset.sum_filter]
      refine Finset.sum_congr rfl fun j _ => ?_
      split_ifs with hjz
      · congr 1
        refine Finset.prod_congr rfl fun k _ => ?_
        by_cases h0 : g k.1 = 0
        · simp only [hze, if_pos h0, hjz k h0, Nat.choose_zero_right]
        · simp only [hze, if_neg h0]
      · push Not at hjz
        obtain ⟨k, h0, hne⟩ := hjz
        rw [Finset.prod_eq_zero (Finset.mem_univ k), mul_zero]
        simp only [hze, if_pos h0]
        rw [Nat.choose_eq_zero_of_lt (Nat.pos_of_ne_zero hne), Nat.cast_zero]
    refine ⟨T.filter (fun m => ∀ k : τ × Fin r, g k.1 = 0 → m k = 0), fun m => ((q m : ℚ) : G.KK O), ?_, ?_⟩
    · intro m hm
      have := hT m (Finset.mem_filter.mp hm).1
      exact ⟨vQ_rat_nonneg hp S _ this.2, by omega⟩
    · intro β
      have hb := hq (ze β)
      simp only [hquot, hprod, hsum] at hb
      have hv := vQ_rat_ge hp S _ c hb
      have e : ((∏ t, ((PlaneGramData.gamDig (p ^ g t) (ρ t) (fun a => β (t, a)) : ℚ) : G.KK O)) ^ ε -
          binomComb (T.filter (fun m => ∀ k : τ × Fin r, g k.1 = 0 → m k = 0))
            (fun m => ((q m : ℚ) : G.KK O)) β) =
          (((if decide (ε = -1) = true then (∏ t, PlaneGramData.gamDig (p ^ g t) (ρ t) (fun a => β (t, a)))⁻¹
            else ∏ t, PlaneGramData.gamDig (p ^ g t) (ρ t) (fun a => β (t, a))) -
            ∑ j ∈ T.filter (fun m => ∀ k : τ × Fin r, g k.1 = 0 → m k = 0),
              q j * ∏ k, ((β k).choose (j k) : ℚ) : ℚ) : G.KK O) := by
        unfold binomComb
        rcases hε with rfl | rfl
        · simp
        · simp
      rw [e]
      exact hv

end Dig

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.UnitLevelOne =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrSpanG =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrSpanG", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.Lemma5aAt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CardFilterValLt\npublic import Formalism.SharpRestriction.GrowthBounds.Joints\nimport Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition\npublic import Formalism.SharpRestriction.GrowthBounds.ValuationLowestDegreeMapFractionField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset
open Classical

namespace Formalism.MainNotions.G.Joints.PlaneGramSpan

open Formalism.MainNotions.G Formalism.MainNotions.G.Joints

theorem colH_zero {n : ℕ} (c : ℤ) : colH (0 : Fin n → ℤ) c = if c ≤ 0 then n else 0 := by
  unfold colH
  split_ifs with h
  · rw [Finset.filter_true_of_mem (fun m _ => by simpa using h)]; simp
  · rw [Finset.card_eq_zero, Finset.filter_eq_empty_iff]
    intro m _; simpa using h

def oneMu (n N : ℕ) (h : Fin (N + 1) → ℕ) (e : ℤ) : Fin (N + 1) → Fin n → ℤ :=
  fun i m => (if m.val < h i then 1 else 0) - e

theorem colH_oneMu {n N : ℕ} (h : Fin (N + 1) → ℕ) (e : ℤ) (i : Fin (N + 1)) (hh : h i ≤ n) (c : ℤ) :
    colH (oneMu n N h e i) c = if c + e ≤ 0 then n else if c + e = 1 then h i else 0 := by
  unfold colH oneMu
  split_ifs with h1 h2
  · rw [Finset.filter_true_of_mem]
    · simp
    · intro m _; split_ifs <;> omega
  · refine Eq.trans ?_ (_root_.GlobalTheory.CardFilterLt.card_filter_val_lt hh)
    congr 1
    ext m
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · intro h3
      by_contra h4
      rw [if_neg h4] at h3
      omega
    · intro h3
      rw [if_pos h3]; omega
  · rw [Finset.card_eq_zero, Finset.filter_eq_empty_iff]
    intro m _; split_ifs <;> omega

theorem hstrip_one {n : ℕ} (a b : ℕ) (e : ℤ) (hb : b ≤ n) (h1 : a ≤ b) (h2 : b ≤ a + 1) :
    HStrip (fun m : Fin n => (if m.val < a then (1 : ℤ) else 0) - e)
      (fun m : Fin n => (if m.val < b then (1 : ℤ) else 0) - e) (b - a) := by
  refine ⟨fun m => ?_, fun m hm => ?_, ?_⟩
  · show (if m.val < a then (1 : ℤ) else 0) - e ≤ (if m.val < b then (1 : ℤ) else 0) - e
    split_ifs <;> omega
  · show (if m.val + 1 < b then (1 : ℤ) else 0) - e ≤ (if m.val < a then (1 : ℤ) else 0) - e
    split_ifs <;> omega
  · have e1 : ∀ m : Fin n, ((if m.val < b then (1 : ℤ) else 0) - e - ((if m.val < a then (1 : ℤ) else 0) - e)) =
        (if m.val < b then (1 : ℤ) else 0) - (if m.val < a then (1 : ℤ) else 0) := fun m => by ring
    simp only [e1]
    rw [Finset.sum_sub_distrib, Finset.sum_boole, Finset.sum_boole, _root_.GlobalTheory.CardFilterLt.card_filter_val_lt hb, _root_.GlobalTheory.CardFilterLt.card_filter_val_lt (h1.trans hb)]
    push_cast [Nat.cast_sub h1]
    ring

def onePath {n N : ℕ} {LL : Letters (Fin N)} {d : Fin N → ℕ} (P : PPath n N LL d) (c : ℤ) :
    PPath n N LL (fun i => if IsUsed P.mu c i then 1 else 0) where
  mu := oneMu n N (fun i => colH (P.mu i) c) (if 1 ≤ c then 0 else 1)
  zero := by
    funext m
    show (if m.val < colH (P.mu 0) c then (1 : ℤ) else 0) - (if 1 ≤ c then 0 else 1) = 0
    rw [P.zero, colH_zero]
    have := m.2
    split_ifs <;> omega
  dom := by
    intro i m m' hmm
    have h0 : m.val ≤ m'.val := hmm
    show (if m'.val < colH (P.mu i) c then (1 : ℤ) else 0) - _ ≤ (if m.val < colH (P.mu i) c then (1 : ℤ) else 0) - _
    split_ifs <;> omega
  step := by
    intro i
    have hstep := P.step i
    by_cases hv : LL.vec i = true
    · rw [if_pos hv] at hstep ⊢
      have h1 := colH_strip hstep.1 c
      have h2 := strip_le_one hstep (P.dom _) c
      have h3 := hstrip_one (n := n) (colH (P.mu i.castSucc) c) (colH (P.mu i.succ) c) (if 1 ≤ c then 0 else 1)
        (_root_.Formalism.MainNotions.CovariantDegrees.colH_le _ _) (by omega) (by omega)
      have h4 : (if IsUsed P.mu c i then 1 else 0) = colH (P.mu i.succ) c - colH (P.mu i.castSucc) c := by
        unfold IsUsed
        split_ifs with h <;> omega
      rw [h4]; exact h3
    · rw [if_neg hv] at hstep ⊢
      have h1 := colH_strip hstep.1 c
      have h2 := strip_le_one hstep (P.dom _) c
      have h3 := hstrip_one (n := n) (colH (P.mu i.succ) c) (colH (P.mu i.castSucc) c) (if 1 ≤ c then 0 else 1)
        (_root_.Formalism.MainNotions.CovariantDegrees.colH_le _ _) (by omega) (by omega)
      have h4 : (if IsUsed P.mu c i then 1 else 0) = colH (P.mu i.castSucc) c - colH (P.mu i.succ) c := by
        unfold IsUsed
        split_ifs with h <;> omega
      rw [h4]; exact h3

theorem colH_onePath {n N : ℕ} {LL : Letters (Fin N)} {d : Fin N → ℕ} (P : PPath n N LL d) (c : ℤ)
    (i : Fin (N + 1)) (c' : ℤ) :
    colH ((onePath P c).mu i) c' = if c' + (if 1 ≤ c then 0 else 1) ≤ 0 then n
      else if c' + (if 1 ≤ c then 0 else 1) = 1 then colH (P.mu i) c else 0 :=
  colH_oneMu (fun i => colH (P.mu i) c) _ i (_root_.Formalism.MainNotions.CovariantDegrees.colH_le _ _) c'

theorem colStep_congr {n : ℕ} {P : Type*} [CommRing P] {c c' : ℤ} (hc : 1 ≤ c ↔ 1 ≤ c') (a b : ℕ)
    (x : Fin n → P) (K : Finset (Fin n) → P) : colStep c a b x K = colStep c' a b x K := by
  unfold colStep
  by_cases h : 1 ≤ c
  · simp only [if_pos h, if_pos (hc.1 h)]
  · simp only [if_neg h, if_neg (fun x => h (hc.2 x))]

theorem Kcol_ge (R : Type*) [CommRing R] {N n : ℕ} (mu : Fin (N + 1) → Fin n → ℤ) (c : ℤ) (j : ℕ) (h : ¬ j < N) :
    Kcol R mu c (j + 1) = Kcol R mu c j := by
  rw [Kcol, dite_eq_right h]

theorem Kcol_congr (R : Type*) [CommRing R] {N n : ℕ} (mu mu' : Fin (N + 1) → Fin n → ℤ) (c c' : ℤ)
    (hc : 1 ≤ c ↔ 1 ≤ c') (hh : ∀ i, colH (mu i) c = colH (mu' i) c') :
    ∀ j, Kcol R mu c j = Kcol R mu' c' j := by
  intro j
  induction j with
  | zero => rfl
  | succ j ih =>
    by_cases h : j < N
    · rw [Kcol_succ R mu c j h, Kcol_succ R mu' c' j h, ih, hh, hh, colStep_congr hc]
    · rw [Kcol_ge R mu c j h, Kcol_ge R mu' c' j h, ih]

theorem Kcol_unused (R : Type*) [CommRing R] {N n : ℕ} (mu : Fin (N + 1) → Fin n → ℤ) (c : ℤ)
    (hun : ∀ i : Fin N, ¬ IsUsed mu c i) : ∀ j, Kcol R mu c j = extOne := by
  intro j
  induction j with
  | zero => rfl
  | succ j ih =>
    by_cases h : j < N
    · have h3 : colH (mu (⟨j, h⟩ : Fin N).castSucc) c = colH (mu (⟨j, h⟩ : Fin N).succ) c := not_not.1 (hun ⟨j, h⟩)
      rw [Kcol_succ R mu c j h, ih, h3, colStep_same]
    · rw [Kcol_ge R mu c j h, ih]

theorem Psi_one (R : Type*) [CommRing R] {N n : ℕ} (mu : Fin (N + 1) → Fin n → ℤ) (c0 : ℤ)
    (hc0 : c0 ∈ colRange mu) (hun : ∀ c, c ≠ c0 → ∀ i : Fin N, ¬ IsUsed mu c i) (I : ℤ → Finset (Fin n))
    (hI : ∀ c, c ≠ c0 → I c = ∅) : Psi R mu I = Kcol R mu c0 N (I c0) := by
  unfold Psi
  rw [Finset.prod_eq_single c0]
  · intro c _ hc
    rw [Kcol_unused R mu c (hun c hc), hI c hc]
    simp [extOne]
  · intro h; exact absurd hc0 h

theorem colH_const {N n : ℕ} (mu : Fin (N + 1) → Fin n → ℤ) (c : ℤ) (hun : ∀ i : Fin N, ¬ IsUsed mu c i) :
    ∀ i : Fin (N + 1), colH (mu i) c = colH (mu 0) c := by
  intro i
  induction i using Fin.induction with
  | zero => rfl
  | succ i ih => rw [← ih]; exact (not_not.1 (hun i)).symm

theorem valS_zero' {R : Type*} [CommRing R] {ι : Type*} {n : ℕ} [NeZero n] (LL : Letters ι) (S : Set ι) :
    valS LL S (0 : MvPolynomial (ι × Fin n) R) = ⊤ := by
  unfold valS sDegs
  simp

section ColEst

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem col_est (h3b : Formalism.MainNotions.PlaneGramData.PathSpanAtRing O) {N r : ℕ} [NeZero r] {LL : Letters (Fin N)} {d : Fin N → ℕ}
    (P : PPath r N LL d) (c : ℤ) (J : Finset (Fin r))
    (hJ : J.card = if 1 ≤ c then colH (pEnd P.mu) c else r - colH (pEnd P.mu) c) (i : Fin N) :
    ((((if 1 ≤ c ∧ colH (P.mu i.succ) c = r then 1 else 0) -
        (if c ≤ 0 ∧ colH (P.mu i.succ) c < r then 1 else 0) : ℤ)) : WithTop ℤ)
      ≤ valS LL {j | j ≤ i} (Kcol (KK O) P.mu c N J) := by
  have hr : 0 < r := NeZero.pos r
  by_cases hun : ∀ i : Fin N, ¬ IsUsed P.mu c i
  · have hc := colH_const P.mu c hun i.succ
    rw [P.zero, colH_zero] at hc
    have h0 : ((if 1 ≤ c ∧ colH (P.mu i.succ) c = r then 1 else 0) -
        (if c ≤ 0 ∧ colH (P.mu i.succ) c < r then 1 else 0) : ℤ) = 0 := by
      rw [hc]
      by_cases h1 : c ≤ 0
      · rw [if_pos h1, if_neg (by omega), if_neg (by omega)]; rfl
      · rw [if_neg h1, if_neg (by omega), if_neg (by omega)]; rfl
    rw [h0, Kcol_unused _ _ _ hun]
    unfold extOne
    split_ifs
    · rw [valS_one]; rfl
    · rw [valS_zero']; exact le_top
  · simp only [not_forall, not_not] at hun
    obtain ⟨i0, hi0⟩ := hun
    obtain ⟨e, he⟩ : ∃ e : ℤ, e = if 1 ≤ c then 0 else 1 := ⟨_, rfl⟩
    have he' : (e = 0 ∧ 1 ≤ c) ∨ (e = 1 ∧ c ≤ 0) := by
      by_cases h : 1 ≤ c
      · left; rw [he, if_pos h]; exact ⟨rfl, h⟩
      · right; rw [he, if_neg h]; exact ⟨rfl, by omega⟩
    obtain ⟨c0, hc0⟩ : ∃ c0 : ℤ, c0 = 1 - e := ⟨_, rfl⟩
    have hH : ∀ (i : Fin (N + 1)) (c' : ℤ), colH ((onePath P c).mu i) c' =
        if c' + e ≤ 0 then r else if c' + e = 1 then colH (P.mu i) c else 0 := by
      intro i c'; rw [he]; exact colH_onePath P c i c'
    have hH0 : ∀ i, colH ((onePath P c).mu i) c0 = colH (P.mu i) c := by
      intro i
      rw [hH, if_neg (by omega), if_pos (by omega)]
    have hused : IsUsed (onePath P c).mu c0 i0 := by
      unfold IsUsed; rw [hH0, hH0]; exact hi0
    have hmem := col_clause3 (onePath P c) c0 i0 hused
    have hun' : ∀ c', c' ≠ c0 → ∀ i : Fin N, ¬ IsUsed (onePath P c).mu c' i := by
      intro c' hc' i
      unfold IsUsed
      rw [hH, hH, if_neg (by omega : ¬ c' + e = 1), if_neg (by omega : ¬ c' + e = 1)]
      exact not_not.2 rfl
    have hc1 : 1 ≤ c ↔ 1 ≤ c0 := by omega
    set I' : ℤ → Finset (Fin r) := fun c' => if c' = c0 then J else ∅ with hI'
    have hSt : IsSt (onePath P c).mu I' := by
      refine ⟨fun c' hc' => ?_, fun c' => ?_, fun c' t => ?_⟩
      · show (if c' = c0 then J else ∅) = ∅
        rw [if_neg]; rintro rfl; exact hc' hmem
      · show (if c' = c0 then J else ∅).card = _
        have hE : pEnd (onePath P c).mu = (onePath P c).mu (Fin.last N) := rfl
        rw [hE, hH]
        by_cases h : c' = c0
        · rw [if_pos h, hJ, h, if_neg (by omega : ¬ c0 + e ≤ 0), if_pos (by omega : c0 + e = 1)]
          by_cases hc : 1 ≤ c
          · rw [if_pos hc, if_pos (hc1.1 hc)]; rfl
          · rw [if_neg hc, if_neg (fun x => hc (hc1.2 x))]; rfl
        · rw [if_neg h, Finset.card_empty]
          split_ifs <;> omega
      · refine Finset.card_le_card (Finset.filter_subset_filter _ ?_)
        by_cases h1 : 1 ≤ c'
        · have : tabCol I' (c' + 1) = ∅ := by
            unfold tabCol; rw [if_pos (by omega)]; exact if_neg (by omega)
          rw [this]; exact Finset.empty_subset _
        · by_cases h2 : c' = c0
          · have : tabCol I' (c' + 1) = ∅ := by
              unfold tabCol; rw [if_pos (by omega)]; exact if_neg (by omega)
            rw [this]; exact Finset.empty_subset _
          · have : tabCol I' c' = univ := by
              unfold tabCol; rw [if_neg h1]
              show univ \ (if c' = c0 then J else ∅) = univ
              rw [if_neg h2]; simp
            rw [this]; exact Finset.subset_univ _
    have key := (h3b N r LL _).2 (onePath P c) I' hSt i
    rw [Psi_one O (onePath P c).mu c0 hmem hun' I' (fun c' h => if_neg h)] at key
    have hJ' : I' c0 = J := if_pos rfl
    rw [hJ', ← Kcol_congr O P.mu (onePath P c).mu c c0 hc1 (fun i => (hH0 i).symm) N] at key
    rw [← StandardMonomialSpace.lift_Kcol_map (algebraMap O (KK O)) P.mu c N J,
      StandardMonomialSpace.valS_map _ (IsFractionRing.injective O (KK O))]
    refine le_trans (le_of_eq ?_) key
    congr 1
    show _ = (if (lastIdx r).val < colH (P.mu i.succ) c then (1 : ℤ) else 0) - (if 1 ≤ c then 0 else 1)
    have hl : (lastIdx r).val = r - 1 := rfl
    have hle := _root_.Formalism.MainNotions.CovariantDegrees.colH_le (P.mu i.succ) c
    rw [hl]
    split_ifs <;> omega

end ColEst

theorem sum_colVal (T x : ℤ) (h1 : -T ≤ x) (h2 : x ≤ T) :
    ∑ c ∈ Finset.Icc (-T) T, ((if 1 ≤ c ∧ c ≤ x then (1 : ℤ) else 0) - (if c ≤ 0 ∧ x < c then (1 : ℤ) else 0)) = x := by
  rw [Finset.sum_sub_distrib, Finset.sum_boole, Finset.sum_boole]
  have e1 : (Finset.Icc (-T) T).filter (fun c => 1 ≤ c ∧ c ≤ x) = Finset.Icc 1 x := by
    ext c; simp only [Finset.mem_filter, Finset.mem_Icc]; constructor
    · intro h; exact h.2
    · intro h; exact ⟨⟨by omega, by omega⟩, h⟩
  have e2 : (Finset.Icc (-T) T).filter (fun c => c ≤ 0 ∧ x < c) = Finset.Ioc x 0 := by
    ext c; simp only [Finset.mem_filter, Finset.mem_Icc, Finset.mem_Ioc]; constructor
    · intro h; exact ⟨h.2.2, h.2.1⟩
    · intro h; exact ⟨⟨by omega, by omega⟩, h.2, h.1⟩
  rw [e1, e2, Int.card_Icc, Int.card_Ioc]
  omega

theorem colH_eq_iff {n : ℕ} [NeZero n] {mu : Fin n → ℤ} (hd : Dominant mu) (c : ℤ) :
    colH mu c = n ↔ c ≤ mu (lastIdx n) := by
  unfold colH
  constructor
  · intro h
    have h1 : (univ.filter fun m => c ≤ mu m) = univ := by
      apply Finset.eq_univ_of_card; rw [h]; simp
    have := Finset.mem_univ (lastIdx n)
    rw [← h1] at this
    exact (Finset.mem_filter.1 this).2
  · intro h
    rw [Finset.filter_true_of_mem]
    · simp
    · intro m _
      refine h.trans (hd ?_)
      show m.val ≤ n - 1
      have := m.2; omega

theorem stage_identity {N r : ℕ} [NeZero r] {LL : Letters (Fin N)} {d : Fin N → ℕ} (P : PPath r N LL d)
    (i : Fin (N + 1)) :
    P.mu i (lastIdx r) = ∑ c ∈ colRange P.mu, ((if 1 ≤ c ∧ colH (P.mu i) c = r then (1 : ℤ) else 0) -
      (if c ≤ 0 ∧ colH (P.mu i) c < r then (1 : ℤ) else 0)) := by
  have hT := abs_le_alt P.mu i (lastIdx r)
  have h1 := neg_abs_le (P.mu i (lastIdx r))
  have h2 := le_abs_self (P.mu i (lastIdx r))
  rw [← sum_colVal (∑ i, ∑ m, |P.mu i m|) (P.mu i (lastIdx r)) (by linarith) (by linarith)]
  refine Finset.sum_congr rfl fun c _ => ?_
  have h3 := colH_eq_iff (P.dom i) c
  have h4 := _root_.Formalism.MainNotions.CovariantDegrees.colH_le (P.mu i) c
  have h5 : colH (P.mu i) c < r ↔ P.mu i (lastIdx r) < c := by
    constructor
    · intro h; by_contra h'; exact absurd (h3.2 (not_lt.1 h')) (by omega)
    · intro h; by_contra h'; exact absurd (h3.1 (by omega)) (by omega)
  simp only [h3, h5]

theorem twistSub_empty {R : Type*} [CommRing R] {ι : Type*} {n : ℕ} (LL : Letters ι) (j : Fin n)
    (F : MvPolynomial (ι × Fin n) R) :
    twistSub LL (∅ : Set ι) j F = MvPolynomial.map (coefL R n) F := by
  induction F using MvPolynomial.induction_on with
  | C a => simp [twistSub]
  | add p q hp hq => simp only [map_add (f := _), hp, hq]
  | mul_X p v hp =>
    simp only [map_mul, hp, map_X]
    congr 1
    simp [twistSub]

theorem valS_empty_nonneg {R : Type*} [CommRing R] {ι : Type*} {n : ℕ} [NeZero n] (LL : Letters ι)
    (F : MvPolynomial (ι × Fin n) R) : ((0 : ℤ) : WithTop ℤ) ≤ valS LL (∅ : Set ι) F := by
  rw [le_valuation_iff_twist_order]
  intro m
  rw [twistSub_empty, coeff_map]
  exact LGe_C _

theorem valS_empty_le {R : Type} [Field R] {ι : Type} {n : ℕ} [NeZero n] (LL : Letters ι)
    (F : MvPolynomial (ι × Fin n) R) (hF : F ≠ 0) (th : ℤ) (h : ((th : ℤ) : WithTop ℤ) ≤ valS LL (∅ : Set ι) F) :
    th ≤ 0 := by
  have := glCoord_nontrivial R n
  rw [le_valuation_iff_twist_order] at h
  obtain ⟨m, hm⟩ := MvPolynomial.ne_zero_iff.1 hF
  have h1 := h m
  rw [twistSub_empty, coeff_map] at h1
  refine h1 0 ?_
  rw [Finsupp.mem_support_iff]
  show (LaurentPolynomial.C (((algebraMap (MvPolynomial (Fin n × Fin n) R) (GLCoord R n)).comp MvPolynomial.C)
    (F.coeff m))).coeff 0 ≠ 0
  rw [LaurentPolynomial.C_apply]
  simp only [if_true]
  exact (map_ne_zero _).2 hm

section Lift

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem exists_lift {σ : Type} (F : MvPolynomial σ (KK O)) (h : ∀ m, ∃ o : O, F.coeff m = algebraMap O (KK O) o) :
    ∃ F0 : MvPolynomial σ O, MvPolynomial.map (algebraMap O (KK O)) F0 = F := by
  choose o ho using h
  refine ⟨∑ m ∈ F.support, monomial m (o m), ?_⟩

  rw [map_sum]
  simp only [map_monomial, ← ho]
  exact F.support_sum_monomial_coeff

theorem mem_Pol_map {ι : Type} {r : ℕ} (d : ι → ℕ) (F0 : MvPolynomial (ι × Fin r) O) :
    MvPolynomial.map (algebraMap O (KK O)) F0 ∈ Pol (KK O) r d ↔ F0 ∈ Pol O r d := by
  unfold Pol
  rw [mem_restrictSupport_iff, mem_restrictSupport_iff,
    support_map_of_injective _ (IsFractionRing.injective O (KK O))]

theorem comb_of_span {ι : Type} [Fintype ι] {σ : Type} (Ψ0 : ι → MvPolynomial σ O) (s : Set ι)
    (F0 : MvPolynomial σ O) (h : F0 ∈ Submodule.span O (Ψ0 '' s)) :
    ∃ l : ι → O, (∀ b, l b ≠ 0 → b ∈ s) ∧ MvPolynomial.map (algebraMap O (KK O)) F0 =
      ∑ b, algebraMap O (KK O) (l b) • MvPolynomial.map (algebraMap O (KK O)) (Ψ0 b) := by
  obtain ⟨l, hl, rfl⟩ := (Finsupp.mem_span_image_iff_linearCombination O).1 h
  refine ⟨fun b => l b, fun b hb => ?_, ?_⟩
  · exact (Finsupp.mem_supported O l).1 hl (Finsupp.mem_support_iff.2 hb)

  · rw [Finsupp.linearCombination_apply, Finsupp.sum_fintype l (fun i a => a • Ψ0 i) (fun i => zero_smul _ _), map_sum]
    refine Finset.sum_congr rfl fun b _ => ?_
    rw [MvPolynomial.smul_eq_C_mul, MvPolynomial.smul_eq_C_mul, map_mul, map_C]

theorem polSet_finite {N r : ℕ} (d : Fin N → ℕ) : {m : Fin N × Fin r →₀ ℕ | ∀ i, multideg m i = d i}.Finite := by
  refine (Set.finite_Icc (0 : Fin N × Fin r →₀ ℕ) (Finsupp.equivFunOnFinite.symm fun x => d x.1)).subset ?_
  intro m hm
  refine ⟨fun x => Nat.zero_le _, fun x => ?_⟩
  show m x ≤ d x.1
  rw [← hm x.1]
  unfold multideg
  exact Finset.single_le_sum (f := fun c => m (x.1, c)) (fun _ _ => Nat.zero_le _) (Finset.mem_univ x.2)

abbrev Idx (N r : ℕ) (LL : Letters (Fin N)) (d : Fin N → ℕ) : Type :=
  {x : PPath r N LL d × (ℤ → Finset (Fin r)) // IsSt x.1.mu x.2}

theorem psiO_mem (h3a : Formalism.MainNotions.PlaneGramData.PathColumnBasisAtRing O) {N r : ℕ} [NeZero r] {LL : Letters (Fin N)} {d : Fin N → ℕ}
    (x : Idx N r LL d) : Psi O x.1.1.mu x.1.2 ∈ Pol O r d := by
  rw [← (h3a N r LL d).2]
  exact Submodule.subset_span ⟨x.1.1, x.1.2, x.2, rfl⟩

theorem idx_finite (h3a : Formalism.MainNotions.PlaneGramData.PathColumnBasisAtRing O) (N r : ℕ) [NeZero r] (LL : Letters (Fin N)) (d : Fin N → ℕ) :
    Finite (Idx N r LL d) := by
  have hli := (h3a N r LL d).1
  set W : Submodule O (MvPolynomial (Fin N × Fin r) O) :=
    Submodule.span O ((fun m => monomial m (1 : O)) '' {m : Fin N × Fin r →₀ ℕ | ∀ i, multideg m i = d i}) with hW
  have hN : IsNoetherian O W := isNoetherian_of_fg_of_noetherian W (Submodule.fg_span ((polSet_finite d).image _))
  have hsub : ∀ F ∈ Pol O r d, F ∈ W := by
    intro F hF
    rw [← F.support_sum_monomial_coeff]
    refine Submodule.sum_mem _ fun m hm => ?_
    have h1 : monomial m (F.coeff m) = F.coeff m • monomial m (1 : O) := by
      rw [smul_monomial, smul_eq_mul, mul_one]
    rw [h1]
    refine Submodule.smul_mem _ _ (Submodule.subset_span ⟨m, ?_, rfl⟩)
    exact ((mem_restrictSupport_iff O).1 hF) (Finset.mem_coe.2 hm)
  have hli' : LinearIndependent O (fun x : Idx N r LL d =>
      (⟨Psi O x.1.1.mu x.1.2, hsub _ (psiO_mem h3a x)⟩ : W)) :=
    LinearIndependent.of_comp W.subtype hli
  exact hli'.finite_of_isNoetherian

theorem li_K (h3a : Formalism.MainNotions.PlaneGramData.PathColumnBasisAtRing O) (N r : ℕ) [NeZero r] (LL : Letters (Fin N)) (d : Fin N → ℕ) :
    LinearIndependent (KK O) (fun x : Idx N r LL d => Psi (KK O) x.1.1.mu x.1.2) := by
  have hli := (h3a N r LL d).1
  have h1 := hli.map' (MvPolynomial.mapAlgHom (σ := Fin N × Fin r) (Algebra.ofId O (KK O))).toLinearMap
    (LinearMap.ker_eq_bot.2 (MvPolynomial.map_injective _ (IsFractionRing.injective O (KK O))))
  have h2 : LinearIndependent O (fun x : Idx N r LL d => Psi (KK O) x.1.1.mu x.1.2) := by
    have e : (fun x : Idx N r LL d => Psi (KK O) x.1.1.mu x.1.2) =
        (⇑(MvPolynomial.mapAlgHom (σ := Fin N × Fin r) (Algebra.ofId O (KK O))).toLinearMap ∘
          fun x : Idx N r LL d => Psi O x.1.1.mu x.1.2) := by
      funext x
      exact (StandardMonomialSpace.Psi_map (algebraMap O (KK O)) x.1.1.mu x.1.2).symm
    rw [e]; exact h1
  exact (LinearIndependent.iff_fractionRing O (KK O)).1 h2

theorem psiK_mem (h3a : Formalism.MainNotions.PlaneGramData.PathColumnBasisAtRing O) {N r : ℕ} [NeZero r] {LL : Letters (Fin N)} {d : Fin N → ℕ}
    (x : Idx N r LL d) : Psi (KK O) x.1.1.mu x.1.2 ∈ Pol (KK O) r d ∧
      ∀ m, ∃ o : O, (Psi (KK O) x.1.1.mu x.1.2).coeff m = algebraMap O (KK O) o := by
  rw [← StandardMonomialSpace.Psi_map (algebraMap O (KK O))]
  exact ⟨(mem_Pol_map d _).2 (psiO_mem h3a x), fun m => ⟨_, coeff_map _ _ _⟩⟩

theorem span_all (h3a : Formalism.MainNotions.PlaneGramData.PathColumnBasisAtRing O) {N r : ℕ} [NeZero r] {LL : Letters (Fin N)} {d : Fin N → ℕ}
    [Fintype (Idx N r LL d)] (F : MvPolynomial (Fin N × Fin r) (KK O)) (hF : F ∈ Pol (KK O) r d)
    (hint : ∀ m, ∃ o : O, F.coeff m = algebraMap O (KK O) o) :
    ∃ l : Idx N r LL d → O, F = ∑ b, algebraMap O (KK O) (l b) • Psi (KK O) b.1.1.mu b.1.2 := by
  obtain ⟨F0, rfl⟩ := exists_lift F hint
  have h0 : F0 ∈ Pol O r d := (mem_Pol_map d F0).1 hF
  rw [← (h3a N r LL d).2] at h0
  have h1 : F0 ∈ Submodule.span O ((fun x : Idx N r LL d => Psi O x.1.1.mu x.1.2) '' Set.univ) := by
    refine Submodule.span_mono ?_ h0
    rintro G ⟨P, I, hI, rfl⟩
    exact ⟨⟨(P, I), hI⟩, Set.mem_univ _, rfl⟩
  obtain ⟨l, -, hl⟩ := comb_of_span _ _ F0 h1
  refine ⟨l, ?_⟩
  rw [hl]
  exact Finset.sum_congr rfl fun b _ => by rw [StandardMonomialSpace.Psi_map]

theorem withBot_le_int (x : WithBot ℤ) : ∃ M : ℤ, x ≤ (M : WithBot ℤ) := by
  induction x using WithBot.recBotCoe with
  | bot => exact ⟨0, bot_le⟩
  | coe z => exact ⟨z, le_rfl⟩

theorem span_mem (h3b : Formalism.MainNotions.PlaneGramData.PathSpanAtRing O) {N r : ℕ} [NeZero r] {LL : Letters (Fin N)} {d : Fin N → ℕ}
    [Fintype (Idx N r LL d)] (F : MvPolynomial (Fin N × Fin r) (KK O)) (hF : F ∈ Pol (KK O) r d)
    (hint : ∀ m, ∃ o : O, F.coeff m = algebraMap O (KK O) o) (th : Fin N → ℤ)
    (hth : ∀ i : Fin N, ((th i : ℤ) : WithTop ℤ) ≤ valS LL {j | j ≤ i} F) :
    ∃ l : Idx N r LL d → O, (∀ b, l b ≠ 0 → ∀ i : Fin N, th i ≤ b.1.1.mu i.succ (lastIdx r)) ∧
      F = ∑ b, algebraMap O (KK O) (l b) • Psi (KK O) b.1.1.mu b.1.2 := by
  obtain ⟨F0, rfl⟩ := exists_lift F hint
  have h0 : F0 ∈ Pol O r d := (mem_Pol_map d F0).1 hF
  choose M hM using fun i : Fin N => withBot_le_int (lam1S LL {j | j ≤ i} F0)
  have hA := (h3b N r LL d).1 th M
  have h1 : F0 ∈ {G : MvPolynomial (Fin N × Fin r) O | G ∈ Pol O r d ∧ ∀ i : Fin N,
      ((th i : ℤ) : WithTop ℤ) ≤ valS LL {j | j ≤ i} G ∧ lam1S LL {j | j ≤ i} G ≤ ((M i : ℤ) : WithBot ℤ)} := by
    refine ⟨h0, fun i => ⟨?_, hM i⟩⟩
    have := hth i
    rwa [StandardMonomialSpace.valS_map _ (IsFractionRing.injective O (KK O))] at this
  unfold Formalism.MainNotions.CovariantDegrees.A3at at hA
  rw [hA] at h1
  have h2 : F0 ∈ Submodule.span O ((fun x : Idx N r LL d => Psi O x.1.1.mu x.1.2) ''
      {b | ∀ i : Fin N, th i ≤ b.1.1.mu i.succ (lastIdx r)}) := by
    refine Submodule.span_mono ?_ h1
    rintro G ⟨P, I, hI, hc, rfl⟩
    exact ⟨⟨(P, I), hI⟩, fun i => (hc i).1, rfl⟩
  obtain ⟨l, hl1, hl⟩ := comb_of_span _ _ F0 h2
  refine ⟨l, hl1, ?_⟩
  rw [hl]
  exact Finset.sum_congr rfl fun b _ => by rw [StandardMonomialSpace.Psi_map]

end Lift

theorem sum_fin_equiv {M : Type*} [AddCommMonoid M] (s : Finset ℤ) (f : ℤ → M) :
    ∑ k : Fin s.card, f ((s.equivFin.symm k).1) = ∑ c ∈ s, f c := by
  rw [← Finset.sum_coe_sort s f]
  exact Fintype.sum_equiv s.equivFin.symm _ _ (fun _ => rfl)

theorem prod_fin_equiv {M : Type*} [CommMonoid M] (s : Finset ℤ) (f : ℤ → M) :
    ∏ k : Fin s.card, f ((s.equivFin.symm k).1) = ∏ c ∈ s, f c := by
  rw [← Finset.prod_coe_sort s f]
  exact Fintype.prod_equiv s.equivFin.symm _ _ (fun _ => rfl)

end Formalism.MainNotions.G.Joints.PlaneGramSpan
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrSpanG =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrSpan =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrSpan", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrBase\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrSpanG\nimport Formalism.SharpRestriction.GrowthBounds.ValuationLowestDegreeMapFractionField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.Finset.Slice\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

open Formalism.MainNotions.G.Joints.PlaneGramSpan

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem coe_initSet_zero (N : ℕ) : ((initSet N 0 : Finset (Fin N)) : Set (Fin N)) = ∅ := by
  ext j; simp [initSet]

theorem coe_initSet_succ (N : ℕ) (i : Fin N) :
    ((initSet N (i.succ : Fin (N + 1)).val : Finset (Fin N)) : Set (Fin N)) = {j | j ≤ i} := by
  ext j
  simp only [initSet, Finset.coe_filter, Finset.mem_univ, true_and, Set.mem_setOf_eq, Fin.val_succ]
  rw [Fin.le_iff_val_le_val]
  omega

theorem brSPAN [CharZero (G.KK O)] (S : G.UniformizedDVR p O) (h3 : Formalism.MainNotions.PlaneGramData.PolynomialSpanAtRing O) :
    SPAN (G.KK O) (vQ p S) p := by
  classical
  intro _ N r _ sg d
  obtain ⟨h3a, h3b, h3c⟩ := h3
  let LL : G.Letters (Fin N) := ⟨sg⟩
  haveI : Finite (Idx N r LL d) := idx_finite h3a N r LL d
  letI : Fintype (Idx N r LL d) := Fintype.ofFinite _
  have hint : ∀ F : MvPolynomial (Fin N × Fin r) (G.KK O), Integral (vQ p S) F →
      ∀ m, ∃ o : O, AddMonoidAlgebra.coeff F m = algebraMap O (G.KK O) o :=
    fun F hF m => (vQ_nonneg_iff S _).1 (hF m)
  let cI : (b : Idx N r LL d) → Fin #(G.colRange b.1.1.mu) → ℤ :=
    fun b k => ((G.colRange b.1.1.mu).equivFin.symm k : ℤ)
  refine ⟨Idx N r LL d, inferInstance, fun b => G.Psi (G.KK O) b.1.1.mu b.1.2, fun b => b.1.1.mu,
    fun b => #(G.colRange b.1.1.mu), fun b k => G.Kcol (G.KK O) b.1.1.mu (cI b k) N (b.1.2 (cI b k)),
    cI, fun b k i => b.1.1.h i (cI b k),
    fun b k => Finset.univ.filter (fun i => G.IsUsed b.1.1.mu (cI b k) i),
    ?_, li_K h3a N r LL d, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro b
    refine ⟨?_, ?_⟩
    · rw [PolK_eq]
      exact (psiK_mem h3a b).1
    · intro m
      obtain ⟨o, ho⟩ := (psiK_mem h3a b).2 m
      rw [ho]
      exact (vQ_nonneg_iff S _).2 ⟨o, rfl⟩
  · intro F hF
    obtain ⟨hFK, hFI⟩ := hF
    rw [PolK_eq] at hFK
    obtain ⟨l, hl⟩ := span_all (LL := LL) h3a F hFK (hint F hFI)
    exact ⟨fun b => algebraMap O _ (l b), fun b => (vQ_nonneg_iff S _).2 ⟨_, rfl⟩, hl⟩
  · rintro th F ⟨⟨hFK, hFI⟩, hA⟩
    rw [PolK_eq] at hFK
    have hth : ∀ i : Fin N, ((th i.succ : ℤ) : WithTop ℤ) ≤ G.valS LL {j | j ≤ i} F := by
      intro i
      have h1 := hA i.succ
      change ((th i.succ : ℤ) : WithTop ℤ) ≤ valS sg (initSet N (i.succ : Fin (N + 1)).val) F at h1
      rw [valS_eq, coe_initSet_succ] at h1
      exact h1
    obtain ⟨l, hl1, hl2⟩ := span_mem h3b F hFK (hint F hFI) (fun i => th i.succ) hth
    refine ⟨fun b => algebraMap O _ (l b), fun b => (vQ_nonneg_iff S _).2 ⟨_, rfl⟩, ?_, hl2⟩
    intro b hb i
    have hlb : l b ≠ 0 := by
      intro h0
      apply hb
      simp [h0]
    dsimp only
    rw [lastIdx_eq]
    cases i using Fin.cases with
    | zero =>
      rw [b.1.1.zero]
      have hF0 : F ≠ 0 := by
        intro hF0
        rw [hF0] at hl2
        have hz := Fintype.linearIndependent_iff.1 (li_K h3a N r LL d) _ hl2.symm b
        exact hlb (IsFractionRing.injective O (G.KK O) (by rw [hz, map_zero]))
      have h0 := hA 0
      change ((th 0 : ℤ) : WithTop ℤ) ≤ valS sg (initSet N (0 : Fin (N + 1)).val) F at h0
      rw [valS_eq, Fin.val_zero, coe_initSet_zero] at h0
      exact valS_empty_le LL F hF0 _ h0
    | succ j => exact hl1 b hlb j
  · intro b
    exact (prod_fin_equiv (G.colRange b.1.1.mu) (fun c => G.Kcol (G.KK O) b.1.1.mu c N (b.1.2 c))).symm
  · intro b k
    dsimp only
    rw [PolK, mem_restrictSupport_iff]
    intro m hm
    rw [← Formalism.MainNotions.G.Joints.StandardMonomialSpace.lift_Kcol_map (algebraMap O (G.KK O))] at hm
    have hm' := MvPolynomial.support_map_subset _ _ hm
    intro i
    have h1 := (h3c N r LL d b.1.1).1 (cI b k) (b.1.2 (cI b k)) i m hm'
    simpa [G.multideg] using h1
  · intro b i
    rw [← (h3c N r LL d b.1.1).2.1 i]
    refine Finset.card_bij (fun k _ => (((G.colRange b.1.1.mu).equivFin.symm k : ℤ))) ?_ ?_ ?_
    · intro k hk
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hk ⊢
      exact ⟨Subtype.prop _, hk⟩
    · intro k1 _ k2 _ h
      exact (G.colRange b.1.1.mu).equivFin.symm.injective (Subtype.ext h)
    · intro c hc
      simp only [Finset.mem_filter] at hc
      refine ⟨(G.colRange b.1.1.mu).equivFin ⟨c, hc.1⟩, ?_, ?_⟩
      · simp [cI, hc.2]
      · simp
  · intro b k i hc
    refine ((h3c N r LL d b.1.1).2.2.2.1 (cI b k) hc i).trans (le_of_eq ?_)
    congr 1
    ext j
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, LL]
    tauto
  · intro b k i
    dsimp only
    rw [valS_eq]
    cases i using Fin.cases with
    | zero =>
      rw [Fin.val_zero, coe_initSet_zero]
      have hv0 : colVal (cI b k) (b.1.1.h 0 (cI b k)) r = 0 := by
        show colVal (cI b k) (G.colH (b.1.1.mu 0) (cI b k)) r = 0
        rw [b.1.1.zero, colH_zero]
        have hr := NeZero.ne r
        simp only [colVal]
        split_ifs <;> omega
      rw [hv0]
      exact valS_empty_nonneg LL _
    | succ j =>
      rw [coe_initSet_succ]
      exact col_est h3b b.1.1 (cI b k) (b.1.2 (cI b k)) (b.2.2.1 (cI b k)) j
  · intro b i
    dsimp only
    rw [lastIdx_eq, stage_identity b.1.1 i]
    exact (sum_fin_equiv _ (fun c => colVal c (b.1.1.h i c) r)).symm

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrSpan =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.PlaneGramTheoremOfLemmas\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrData\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SecondValuationOfAdmitted\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrRenExpandMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.UnitLevelOne\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.BrSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.PlaneGram

open Formalism.MainNotions.G

theorem stmt (D : Formalism.BasicNotions.D7) {CH : ℝ} (hCH : 26 ≤ CH) : Formalism.MainNotions.PlaneGramData.Stmt D CH 2 24 60 := by
  intro p O _ _ _ _ hSet hAdm
  obtain ⟨⟨S⟩, n', hG⟩ := hSet
  obtain ⟨-, h2, h3, h4, h5, h6⟩ := hAdm
  exact Br.plane_gram_of_theorem_at S hG
    (plane_gram_theorem_of_five_lemmas le_rfl (second_valuation_of_admitted h2) (brSPAN S h3) (brPROJ S h4) (brDIG D S hG h5)
      (brDER S h6)) hCH

theorem stmtE (D : Formalism.BasicNotions.D7) : Formalism.MainNotions.PlaneGramData.ClosedFormOfAdmitted D :=
  ⟨26, 2, 24, 60, by norm_num, by norm_num, by norm_num, by norm_num, fun _ hCH => stmt D hCH⟩

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments =====
