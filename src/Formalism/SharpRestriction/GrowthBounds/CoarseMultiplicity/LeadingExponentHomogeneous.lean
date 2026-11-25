module

public import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.PadicGeMulNat
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.ExpFactIoExp
public import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.FactorsOfPerturb
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.MemIntPolOfCoeff
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SymbolVariableLowerLetter
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.SegmentStatementHolds
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.FactAbs, Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.CharZeroOfW, Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LeadingExponentHomogeneous

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.FactAbs =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.FactAbs", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CovariantDegrees\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.PadicGeMulNat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees Formalism.MainNotions.G.GLWeightTheory

theorem fact_abs {D : Formalism.BasicNotions.D7} (h52 : Formalism.MainNotions.CovariantDegrees.FactorialUnitDecomposition D) {p : ℕ} (hp : p.Prime) (h5 : 5 ≤ p) (σ : Type)
    [Fintype σ] [DecidableEq σ] (odd : σ → Prop) [DecidablePred odd] (t ρ L : σ → ℕ)
    (hodd : ∀ v, odd v → L v = p ^ (t v + 1) ∧ ρ v < L v) (hend : ∀ v, ¬ odd v → L v = 1 ∧ ρ v = 0) (c : ℕ) :
    ∃ (T : Finset (σ →₀ ℕ)) (q : (σ →₀ ℕ) → ℚ),
      (∀ ν ∈ T, (ν.sum fun _ n => n) ≤ 4 * c ∧ (∀ v ∈ ν.support, odd v) ∧ PadicGe p (q ν) 0) ∧
      ∀ μ : σ →₀ ℕ, ∃ h : ℚ, PadicGe p h c ∧
        (∏ v, ((ρ v + L v * μ v).factorial : ℚ)) *
            (∑ ν ∈ T, q ν * ((ν.prod fun k i => (μ k).choose i : ℕ) : ℚ)) =
          (∏ v, ((ρ v).factorial : ℚ) * ((μ v).factorial : ℚ) * ((L v).factorial : ℚ) ^ (μ v)) * (1 + h) := by
  haveI : Fact p.Prime := ⟨hp⟩
  obtain ⟨h1, h2⟩ := h52 p hp h5
  set t' : σ → ℕ := fun v => if odd v then t v else 0 with ht'
  set ρ' : σ → ℕ := fun v => if odd v then ρ v else 0 with hρ'
  have hlt : ∀ k, ρ' k < p ^ (t' k + 1) := by
    intro k
    by_cases hk : odd k
    · simp only [hρ', ht', if_pos hk]
      rw [← (hodd k hk).1]; exact (hodd k hk).2
    · simp only [hρ', ht', if_neg hk]
      exact pow_pos hp.pos _
  obtain ⟨hunit, -, hop⟩ := h2 σ t' ρ' hlt
  obtain ⟨T, q, hT, hq⟩ := hop true c
  let E : (σ → ℕ) → (σ →₀ ℕ) := fun j => Finsupp.equivFunOnFinite.symm j
  have hE : Function.Injective E := Finsupp.equivFunOnFinite.symm.injective
  have hEa : ∀ j v, E j v = j v := fun j v => rfl
  refine ⟨(T.filter fun j => ∀ v, ¬ odd v → j v = 0).image E, fun ν => q ν, ?_, ?_⟩
  · intro ν hν
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.1 hν
    obtain ⟨hjT, hj0⟩ := Finset.mem_filter.1 hj
    refine ⟨?_, ?_, ?_⟩
    · rw [Finsupp.sum_fintype _ _ (fun _ => rfl)]
      exact (hT j hjT).1
    · intro v hv
      by_contra hno
      exact (Finsupp.mem_support_iff.1 hv) (hj0 v hno)
    · exact (hT j hjT).2
  · intro μ
    set e' : σ → ℕ := fun v => if odd v then μ v else 0 with he'
    set U : ℚ := ∏ k, cUnit (p ^ (t' k + 1)) (e' k) * dUnit (p ^ (t' k + 1)) (e' k) (ρ' k) with hU
    set A : ℚ := ∏ k, (((ρ' k + p ^ (t' k + 1) * e' k).factorial : ℕ) : ℚ) with hA
    set B : ℚ := ∏ k, ((ρ' k).factorial : ℚ) * ((e' k).factorial : ℚ) * ((p ^ (t' k + 1)).factorial : ℚ) ^ (e' k) with hB
    set g : ℚ := ∑ j ∈ T, q j * ∏ k, ((e' k).choose (j k) : ℚ) with hg
    have hU0 : U ≠ 0 := (hunit e').1
    have hUv : padicValRat p U = 0 := (hunit e').2
    have hAB : A = B * U := by
      rw [hA, hB, hU, ← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun k _ => ?_
      rw [h1 (t' k) (ρ' k) (e' k) (hlt k)]
      ring
    have hB0 : B ≠ 0 := by
      rw [hB]
      refine Finset.prod_ne_zero_iff.2 fun k _ => ?_
      have a1 : ((ρ' k).factorial : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _)
      have a2 : ((e' k).factorial : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _)
      have a3 : ((p ^ (t' k + 1)).factorial : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _)
      exact mul_ne_zero (mul_ne_zero a1 a2) (pow_ne_zero _ a3)
    have hq' : PadicGe p (U⁻¹ - g) c := by
      have := hq e'
      simp only [if_true] at this
      have e : A / B = U := by rw [hAB]; field_simp
      rw [← hA, ← hB, e] at this
      exact this
    have hgs : (∑ ν ∈ (T.filter fun j => ∀ v, ¬ odd v → j v = 0).image E,
        q ν * ((ν.prod fun k i => (μ k).choose i : ℕ) : ℚ)) = g := by
      rw [Finset.sum_image fun a _ b _ h => hE h, hg, Finset.sum_filter]
      refine Finset.sum_congr rfl fun j _ => ?_
      by_cases hj : ∀ v, ¬ odd v → j v = 0
      · rw [if_pos hj, Finsupp.prod_fintype _ _ (fun _ => Nat.choose_zero_right _)]
        push_cast
        congr 1
        refine Finset.prod_congr rfl fun k _ => ?_
        by_cases hk : odd k
        · simp only [he', if_pos hk, hEa]
        · simp only [he', if_neg hk, hEa, hj k hk, Nat.choose_zero_right]
      · rw [if_neg hj]
        push_neg at hj
        obtain ⟨v, hv, hjv⟩ := hj
        have : (∏ k, ((e' k).choose (j k) : ℚ)) = 0 := by
          refine Finset.prod_eq_zero (Finset.mem_univ v) ?_
          simp only [he', if_neg hv]
          rw [Nat.choose_eq_zero_of_lt (Nat.pos_of_ne_zero hjv)]
          simp
        rw [this, mul_zero]
    refine ⟨(-U) * (U⁻¹ - g), ?_, ?_⟩
    · have hU' : PadicGe p (-U) 0 := padicGe_neg (Or.inr (by rw [hUv]; simp))
      have := padicGe_mul hU' hq'
      simpa using this
    · rw [hgs]
      set M : ℚ := ∏ v, (if odd v then (1 : ℚ) else ((μ v).factorial : ℚ)) with hM
      have l1 : (∏ v, ((ρ v + L v * μ v).factorial : ℚ)) = A * M := by
        rw [hA, hM, ← Finset.prod_mul_distrib]
        refine Finset.prod_congr rfl fun v _ => ?_
        by_cases hv : odd v
        · simp only [hρ', ht', he', if_pos hv, (hodd v hv).1, mul_one]
        · simp only [hρ', ht', he', if_neg hv, (hend v hv).1, (hend v hv).2]
          simp
      have l2 : (∏ v, ((ρ v).factorial : ℚ) * ((μ v).factorial : ℚ) * ((L v).factorial : ℚ) ^ (μ v)) = B * M := by
        rw [hB, hM, ← Finset.prod_mul_distrib]
        refine Finset.prod_congr rfl fun v _ => ?_
        by_cases hv : odd v
        · simp only [hρ', ht', he', if_pos hv, (hodd v hv).1, mul_one]
        · simp only [hρ', ht', he', if_neg hv, (hend v hv).1, (hend v hv).2]
          simp
      rw [l1, l2, hAB]
      field_simp
      ring

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.FactAbs =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.CharZeroOfW =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.CharZeroOfW", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.ExpFactIoExp\nimport Formalism.SharpRestriction.GrowthBounds.BinomialRatio.SegmentStatementHolds\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.FactAbs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees MvPolynomial

theorem p_not_unit {O : Type} [CommRing O] {p : ℕ} {w : O} (hw : Irreducible w) (hpw : w ^ 2 = (p : O)) :
    ¬ IsUnit (p : O) := by
  rw [← hpw]
  intro h
  exact hw.not_isUnit (isUnit_of_mul_isUnit_left (by rwa [pow_two] at h))

theorem charZero_of_w {O : Type} [CommRing O] [IsDomain O] {p : ℕ} (hp : p.Prime) {w : O} (hw : Irreducible w)
    (hpw : w ^ 2 = (p : O)) : CharZero O := by
  have hp0 : (p : O) ≠ 0 := by rw [← hpw]; exact pow_ne_zero _ hw.ne_zero
  have hpu := p_not_unit hw hpw
  obtain ⟨c, hc⟩ := CharP.exists O
  rcases CharP.char_is_prime_or_zero O c with h | h
  · exfalso
    have hc0 : (c : O) = 0 := CharP.cast_eq_zero O c
    by_cases hcp : c = p
    · exact hp0 (hcp ▸ hc0)
    · have hcop : Nat.Coprime c p := (Nat.coprime_primes h hp).2 hcp
      obtain ⟨a, b, hab⟩ := Nat.isCoprime_iff_coprime.2 hcop
      have h1 : ((a * c + b * p : ℤ) : O) = 1 := by rw [hab]; simp
      push_cast at h1
      rw [hc0, mul_zero, zero_add] at h1
      exact hpu (IsUnit.of_mul_eq_one_right _ h1)
  · subst h
    exact CharP.charP_to_charZero O

def KapAt (C0 CYb Cde Ck CD Cb CE1 CE2 Cc : ℝ) : Prop :=
  ∀ (X : Loc) [NeZero X.m] (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (w : O),
    Irreducible w → w ^ 2 = (X.p : O) → D1num X → HIext C0 CYb Cde Ck CD Cb X → CBound Cc X →
    ∀ (j : Fin (numSeg X.TT)) (b : SegBlock (segS X.TT j) X.m),
      Kept X.p X.m (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b →
      ∃ κ : O, κ ≠ 0 ∧ vLEO X.p κ (((X.m + 2) * lgSeg X j : ℕ) : ℝ) ∧
        ∀ μ, HomExp C0 CE1 CE2 X j b μ →
          zSeg (KK O) X j * (X.p : KK O) ^ padicValNat X.p (Nblk C0 CE1 CE2 X j b) * (Rblk C0 CE1 CE2 X j b : KK O) *
            (∏ v : BV C0 CE1 CE2 X j, ((baseExp C0 CE1 CE2 X j b (symVar C0 CE1 CE2 X j v)).factorial : KK O) *
              ((symLev X.p C0 CE1 CE2 X j v).factorial : KK O) ^ (μ v)) =
          algebraMap O (KK O) κ * (specConst X.p (X.seg C0 CE1 CE2 j) b : KK O)

theorem lev_pow (C0 CE1 CE2 : ℝ) (X : Loc) (j : Fin (numSeg X.TT)) (i : Fin (segS X.TT j)) :
    ∃ t, (X.seg C0 CE1 CE2 j).P X.p i = X.p ^ (t + 1) := by
  obtain ⟨s, ⟨-, -, -, h4⟩, h5⟩ := get_spec X.TT j i
  have hlt : (segDists X.TT j).get i < segG X.TT j := h5 ▸ h4
  refine ⟨segG X.TT j - (segDists X.TT j).get i - 1, ?_⟩
  show X.p ^ (segG X.TT j - (segDists X.TT j).get i) = _
  congr 1
  omega

theorem oddVar_data (C0 CE1 CE2 : ℝ) (X : Loc) (j : Fin (numSeg X.TT)) (b : SegBlock (segS X.TT j) X.m)
    (hb : Kept X.p X.m (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b) (v : BV C0 CE1 CE2 X j)
    (hv : IsOddVar C0 CE1 CE2 X j v) :
    (∃ t, symLev X.p C0 CE1 CE2 X j v = X.p ^ (t + 1)) ∧
      baseExp C0 CE1 CE2 X j b (symVar C0 CE1 CE2 X j v) < symLev X.p C0 CE1 CE2 X j v := by
  rcases v with ⟨a, c⟩ | ⟨l, bo⟩
  · have h : (a : ℕ) < 2 * segS X.TT j := hv
    simp only [symLev, symVar, dif_pos h]
    refine ⟨lev_pow C0 CE1 CE2 X j _, ?_⟩
    rw [baseExp_odd]
    simp only [Fin.succ_ne_zero, and_false, if_false, add_zero]
    split_ifs
    · exact (hb.1.1 _ _).1
    · exact (hb.1.1 _ _).2
  · have h : (l : ℕ) < (X.seg C0 CE1 CE2 j).t := hv
    simp only [symLev, symVar, dif_pos h]
    refine ⟨lev_pow C0 CE1 CE2 X j _, ?_⟩
    rw [baseExp_odd]
    have hz : ¬ ((uTop (X.seg C0 CE1 CE2 j) ⟨l, h⟩ : ℕ) < (X.seg C0 CE1 CE2 j).sigma) := by
      show ¬ ((X.seg C0 CE1 CE2 j).sigma + (l : ℕ) < (X.seg C0 CE1 CE2 j).sigma)
      omega
    simp only [hz, false_and, if_false, add_zero]
    split_ifs
    · exact (hb.1.1 _ _).1
    · exact (hb.1.1 _ _).2

theorem endVar_data (C0 CE1 CE2 : ℝ) (X : Loc) (j : Fin (numSeg X.TT)) (b : SegBlock (segS X.TT j) X.m)
    (v : BV C0 CE1 CE2 X j) (hv : ¬ IsOddVar C0 CE1 CE2 X j v) :
    symLev X.p C0 CE1 CE2 X j v = 1 ∧ baseExp C0 CE1 CE2 X j b (symVar C0 CE1 CE2 X j v) = 0 := by
  rcases v with ⟨a, c⟩ | ⟨l, bo⟩
  · have h : ¬ (a : ℕ) < 2 * segS X.TT j := hv
    simp only [symLev, symVar, dif_neg h]
    exact ⟨trivial, baseExp_end C0 CE1 CE2 X j b _ _⟩
  · have h : ¬ (l : ℕ) < (X.seg C0 CE1 CE2 j).t := hv
    simp only [symLev, symVar, dif_neg h]
    exact ⟨trivial, baseExp_end C0 CE1 CE2 X j b _ _⟩

theorem factAt_of {D : Formalism.BasicNotions.D7} (h52 : Formalism.MainNotions.CovariantDegrees.FactorialUnitDecomposition D) {C0 CYb Cde Ck CD Cb CE1 CE2 Cc : ℝ}
    (hK : KapAt C0 CYb Cde Ck CD Cb CE1 CE2 Cc) : FactAt C0 CYb Cde Ck CD Cb CE1 CE2 Cc := by
  classical
  intro X _ O _ _ _ w hw h2 hD1 hH hc j b hb
  have hp : X.p.Prime := hD1.1
  have hpO := p_not_unit hw h2
  have hO : CharZero O := charZero_of_w hp hw h2
  have : CharZero (KK O) := charZero_of_injective_algebraMap (IsFractionRing.injective O (KK O))
  obtain ⟨κ, hκ0, hκv, hκ⟩ := hK X O w hw h2 hD1 hH hc j b hb
  have ht : ∀ v : BV C0 CE1 CE2 X j, ∃ t, IsOddVar C0 CE1 CE2 X j v → symLev X.p C0 CE1 CE2 X j v = X.p ^ (t + 1) := by
    intro v
    by_cases hv : IsOddVar C0 CE1 CE2 X j v
    · obtain ⟨t, ht⟩ := (oddVar_data C0 CE1 CE2 X j b hb v hv).1
      exact ⟨t, fun _ => ht⟩
    · exact ⟨0, fun h => absurd h hv⟩
  choose t ht using ht
  obtain ⟨T, q, hT, hfa⟩ := fact_abs h52 hp hD1.2.1 (BV C0 CE1 CE2 X j) (IsOddVar C0 CE1 CE2 X j) t
    (fun v => baseExp C0 CE1 CE2 X j b (symVar C0 CE1 CE2 X j v)) (fun v => symLev X.p C0 CE1 CE2 X j v)
    (fun v hv => ⟨ht v hv, (oddVar_data C0 CE1 CE2 X j b hb v hv).2⟩)
    (fun v hv => endVar_data C0 CE1 CE2 X j b v hv) X.c
  have hq : ∀ ν, ∃ y : O, ν ∈ T → ((q ν : ℚ) : KK O) = algebraMap O (KK O) y := by
    intro ν
    by_cases hν : ν ∈ T
    · obtain ⟨y, hy⟩ := rat_int (O := O) (K := KK O) hp hpO (q ν) 0 (by simpa using (hT ν hν).2.2)
      exact ⟨y, fun _ => by rw [hy, pow_zero, one_mul]⟩
    · exact ⟨0, fun h => absurd h hν⟩
  choose qO hqO using hq
  refine ⟨κ, T, qO, hκ0, hκv, fun ν hν => ⟨(hT ν hν).1, (hT ν hν).2.1⟩, ?_⟩
  intro μ hμ
  obtain ⟨h, hh, heq⟩ := hfa μ
  obtain ⟨y, hy⟩ := rat_int (O := O) (K := KK O) hp hpO h X.c hh
  refine ⟨w ^ X.c * y, ?_⟩
  have hg : algebraMap O (KK O) (gEv T qO μ) =
      ((∑ ν ∈ T, q ν * ((ν.prod fun k i => (μ k).choose i : ℕ) : ℚ) : ℚ) : KK O) := by
    unfold gEv

    rw [map_sum, Rat.cast_sum]
    refine Finset.sum_congr rfl fun ν hν => ?_
    rw [map_mul, ← hqO ν hν, map_natCast, Rat.cast_mul, Rat.cast_natCast]
  have heqK := congrArg (fun x : ℚ => (x : KK O)) heq
  simp only [Rat.cast_mul, Rat.cast_prod, Rat.cast_natCast, Rat.cast_add, Rat.cast_one, Rat.cast_pow] at heqK
  have hsplit : (∏ x : BV C0 CE1 CE2 X j,
      ((baseExp C0 CE1 CE2 X j b (symVar C0 CE1 CE2 X j x)).factorial : KK O) * ((μ x).factorial : KK O) *
        ((symLev X.p C0 CE1 CE2 X j x).factorial : KK O) ^ (μ x)) =
      (∏ v : BV C0 CE1 CE2 X j, ((baseExp C0 CE1 CE2 X j b (symVar C0 CE1 CE2 X j v)).factorial : KK O) *
        ((symLev X.p C0 CE1 CE2 X j v).factorial : KK O) ^ (μ v)) * ∏ v : BV C0 CE1 CE2 X j, ((μ v).factorial : KK O) := by
    rw [← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl fun v _ => by ring
  have hmu : (expFact μ : KK O) = ∏ v : BV C0 CE1 CE2 X j, ((μ v).factorial : KK O) := by
    unfold expFact
    rw [Finsupp.prod_fintype _ _ (fun _ => rfl)]
    push_cast
    rfl
  have hW : (algebraMap O (KK O) (w ^ X.c)) ^ 2 = (X.p : KK O) ^ X.c := by
    rw [← map_pow, ← pow_mul, mul_comm, pow_mul, h2, map_pow, map_natCast]
  have hk := hκ μ hμ
  rw [expFact_ioExp, hg, hmu, map_add (f := _), map_one, map_mul, map_mul, Nat.cast_mul, Nat.cast_prod]
  rw [hsplit] at heqK
  linear_combination (zSeg (KK O) X j * (X.p : KK O) ^ padicValNat X.p (Nblk C0 CE1 CE2 X j b) *
      (Rblk C0 CE1 CE2 X j b : KK O)) * heqK +
    ((∏ v : BV C0 CE1 CE2 X j, ((μ v).factorial : KK O)) * (1 + (h : KK O))) * hk +
    (algebraMap O (KK O) κ * (specConst X.p (X.seg C0 CE1 CE2 j) b : KK O) *
      (∏ v : BV C0 CE1 CE2 X j, ((μ v).factorial : KK O))) * hy -
    (algebraMap O (KK O) κ * (specConst X.p (X.seg C0 CE1 CE2 j) b : KK O) *
      (∏ v : BV C0 CE1 CE2 X j, ((μ v).factorial : KK O)) * algebraMap O (KK O) y) * hW

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.CharZeroOfW =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LeadingExponentHomogeneous =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LeadingExponentHomogeneous", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.CharZeroOfW\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.FactorsOfPerturb\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.MemIntPolOfCoeff\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SymbolVariableLowerLetter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G Formalism.MainNotions.G.GLWeightTheory MvPolynomial

theorem nat_split {O : Type} [CommRing O] [IsLocalRing O] {p : ℕ} (hp : p.Prime) (hpO : ¬ IsUnit (p : O)) {n : ℕ}
    (hn : n ≠ 0) : ∃ u : Oˣ, (n : O) = (p : O) ^ (n.factorization p) * u := by
  have hcop : Nat.Coprime (ordCompl[p] n) p := (Nat.coprime_ordCompl hp hn).symm
  have hunit : IsUnit ((ordCompl[p] n : ℕ) : O) := by
    by_contra hu
    have h1 := Nat.gcd_eq_gcd_ab (ordCompl[p] n) p
    rw [hcop] at h1
    have h2 : (1 : O) = ((ordCompl[p] n : ℕ) : O) * ((Nat.gcdA (ordCompl[p] n) p : ℤ) : O) +
        (p : O) * ((Nat.gcdB (ordCompl[p] n) p : ℤ) : O) := by
      have := congrArg (Int.cast : ℤ → O) h1
      simp only [Int.cast_add, Int.cast_mul, Int.cast_natCast, Nat.cast_one, Int.cast_one] at this
      exact this
    have hm1 : ((ordCompl[p] n : ℕ) : O) ∈ IsLocalRing.maximalIdeal O := hu
    have hm2 : (p : O) ∈ IsLocalRing.maximalIdeal O := hpO
    have h3 : (1 : O) ∈ IsLocalRing.maximalIdeal O := by
      rw [h2]
      exact Ideal.add_mem _ (Ideal.mul_mem_right _ _ hm1) (Ideal.mul_mem_right _ _ hm2)
    exact (IsLocalRing.maximalIdeal.isMaximal O).ne_top ((Ideal.eq_top_iff_one _).2 h3)
  refine ⟨hunit.unit, ?_⟩
  rw [IsUnit.unit_spec, ← Nat.cast_pow, ← Nat.cast_mul, Nat.ordProj_mul_ordCompl_eq_self]

theorem kap_transport {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {p : ℕ} (hp : p.Prime) {w : O}
    (hw : Irreducible w) (h2 : w ^ 2 = (p : O)) {A B : ℕ} (hA : A ≠ 0) (hB : B ≠ 0) (E D : ℕ)
    (hlo : B.factorization p ≤ E + A.factorization p) (hhi : E + A.factorization p ≤ D + B.factorization p) :
    ∃ κ : O, κ ≠ 0 ∧ vLEO p κ (D : ℝ) ∧ (p : O) ^ E * (A : O) = κ * (B : O) := by
  have hpO := p_not_unit hw h2
  obtain ⟨uA, huA⟩ := nat_split hp hpO hA
  obtain ⟨uB, huB⟩ := nat_split hp hpO hB
  have hp0 : (p : O) ≠ 0 := by rw [← h2]; exact pow_ne_zero _ hw.ne_zero
  set n := E + A.factorization p - B.factorization p with hn
  have h1 : (p : O) ^ n ≠ 0 := pow_ne_zero _ hp0
  have hκ : (p : O) ^ n * uA * ((uB⁻¹ : Oˣ) : O) ≠ 0 := mul_ne_zero (mul_ne_zero h1 uA.ne_zero) (Units.ne_zero _)
  refine ⟨(p : O) ^ n * uA * ((uB⁻¹ : Oˣ) : O), hκ, ?_, ?_⟩
  · rw [vLEO_iff hw h2 hκ, dvr_order_mul (mul_ne_zero h1 uA.ne_zero) (Units.ne_zero _), dvr_order_mul h1 uA.ne_zero,
      dvr_order_pow hp0, dvr_order_unit_eq_zero uA.isUnit, dvr_order_unit_eq_zero (Units.isUnit _)]
    have hv : dvrOrderNat (p : O) = 2 := by rw [← h2, dvr_order_pow hw.ne_zero, nv_irr hw]
    rw [hv]
    have : (n : ℝ) ≤ D := by exact_mod_cast (by omega : n ≤ D)
    push_cast
    linarith
  · rw [huA, huB]
    have hu : ((uB⁻¹ : Oˣ) : O) * uB = 1 := by simp
    have hpw : (p : O) ^ E * (p : O) ^ A.factorization p = (p : O) ^ n * (p : O) ^ B.factorization p := by
      rw [← pow_add, ← pow_add]
      congr 1
      omega
    linear_combination (uA : O) * hpw - ((p : O) ^ n * (p : O) ^ B.factorization p * uA) * hu

section

variable (C0 CE1 CE2 : ℝ) (X : Loc) [NeZero X.m] (j : Fin (numSeg X.TT))

def lvW (ℓ : ℕ) : BV C0 CE1 CE2 X j → ℕ := fun v => if symLev X.p C0 CE1 CE2 X j v = ℓ then 1 else 0

def lvL (ℓ : ℕ) : Fin (2 * segS X.TT j + 1 + 1) → ℕ :=
  fun a => if symLev X.p C0 CE1 CE2 X j (Sum.inl (a, 0)) = ℓ then 1 else 0

theorem lev_balanced (ℓ : ℕ) : Balanced X.m (X.seg C0 CE1 CE2 j) (lvW C0 CE1 CE2 X j ℓ) (lvL C0 CE1 CE2 X j ℓ) := by
  refine ⟨fun a c => rfl, ?_, ?_⟩
  · intro l
    have hi := (uTop (X.seg C0 CE1 CE2 j) l).2
    have e0 : finPos (2 * segS X.TT j + 1) (2 * (uTop (X.seg C0 CE1 CE2 j) l : ℕ)) =
        Fin.castSucc (⟨2 * (uTop (X.seg C0 CE1 CE2 j) l).val, by omega⟩ : Fin (2 * segS X.TT j + 1)) :=
      Fin.ext (Nat.min_eq_left (by omega))
    have e1 : finPos (2 * segS X.TT j + 1) (2 * (uTop (X.seg C0 CE1 CE2 j) l : ℕ) + 1) =
        Fin.castSucc (⟨2 * (uTop (X.seg C0 CE1 CE2 j) l).val + 1, by omega⟩ : Fin (2 * segS X.TT j + 1)) :=
      Fin.ext (Nat.min_eq_left (by omega))
    unfold lvW lvL
    rw [sl_Z, sl_Z, e0, e1, symbol_level_lower_letter, sl_E]
  · unfold lvW lvL
    rw [symbol_level_last, symbol_level_last, sl_U, sl_xi]

theorem lev_const (b : SegBlock (segS X.TT j) X.m) (μ μ' : BV C0 CE1 CE2 X j →₀ ℕ) (hμ : HomExp C0 CE1 CE2 X j b μ)
    (hμ' : HomExp C0 CE1 CE2 X j b μ') (f : ℕ → ℕ) :
    ∏ v, f (symLev X.p C0 CE1 CE2 X j v) ^ μ v = ∏ v, f (symLev X.p C0 CE1 CE2 X j v) ^ μ' v := by
  classical
  have key : ∀ ν : BV C0 CE1 CE2 X j →₀ ℕ, HomExp C0 CE1 CE2 X j b ν →
      ∏ v, f (symLev X.p C0 CE1 CE2 X j v) ^ ν v =
        ∏ ℓ ∈ Finset.univ.image (symLev X.p C0 CE1 CE2 X j), f ℓ ^ (OmB X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j)
          (segAPlus X.TT X.aT j) b (lvW C0 CE1 CE2 X j ℓ) (lvL C0 CE1 CE2 X j ℓ)) := by
    intro ν hν
    rw [← Finset.prod_fiberwise_of_maps_to (s := Finset.univ) (t := Finset.univ.image (symLev X.p C0 CE1 CE2 X j))
      (g := symLev X.p C0 CE1 CE2 X j) (fun v _ => Finset.mem_image_of_mem _ (Finset.mem_univ v))]
    refine Finset.prod_congr rfl fun ℓ _ => ?_
    rw [← hν _ _ (lev_balanced C0 CE1 CE2 X j ℓ), ← Finset.prod_pow_eq_pow_sum, Finset.prod_filter]
    refine Finset.prod_congr rfl fun v _ => ?_
    unfold lvW
    split_ifs with h
    · rw [h, mul_one]
    · rw [mul_zero, pow_zero]
  rw [key μ hμ, key μ' hμ']

def mu0F (b : SegBlock (segS X.TT j) X.m) : BV C0 CE1 CE2 X j → ℕ
  | Sum.inl (a, c) => if c = 0 then Fin.lastCases (motive := fun _ => ℕ) (X.seg C0 CE1 CE2 j).bPlus
      (fun a' => (segChain X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b).deg a') a else 0
  | Sum.inr (l, false) => Fin.lastCases (motive := fun _ => ℕ) (segAPlus X.TT X.aT j - b.oPlus)
      (fun l' => coarseA X.p (X.seg C0 CE1 CE2 j) b (uTop (X.seg C0 CE1 CE2 j) l') -
        b.o (uTop (X.seg C0 CE1 CE2 j) l')) l
  | Sum.inr (_, true) => 0

def mu0 (b : SegBlock (segS X.TT j) X.m) : BV C0 CE1 CE2 X j →₀ ℕ :=
  Finsupp.equivFunOnFinite.symm (mu0F C0 CE1 CE2 X j b)

theorem leading_exponent_homogeneous (b : SegBlock (segS X.TT j) X.m) : HomExp C0 CE1 CE2 X j b (mu0 C0 CE1 CE2 X j b) := by
  classical
  intro ω ωL hB
  obtain ⟨h1, -, -⟩ := hB
  show ∑ v, mu0F C0 CE1 CE2 X j b v * ω v = _
  rw [Fintype.sum_sum_type, Fintype.sum_prod_type, Fintype.sum_prod_type]
  have a1 : ∀ a : Fin (2 * segS X.TT j + 1 + 1), ∑ c : Fin X.m, mu0F C0 CE1 CE2 X j b (Sum.inl (a, c)) * ω (Sum.inl (a, c)) =
      Fin.lastCases (motive := fun _ => ℕ) (X.seg C0 CE1 CE2 j).bPlus
        (fun a' => (segChain X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b).deg a') a * ωL a := by
    intro a
    rw [Finset.sum_eq_single (0 : Fin X.m)]
    · simp only [mu0F, if_true, h1]
    · intro c _ hc
      simp only [mu0F, if_neg hc, zero_mul]
    · intro h; exact absurd (Finset.mem_univ _) h
  have a2 : ∀ l : Fin ((X.seg C0 CE1 CE2 j).t + 1), ∑ β : Bool, mu0F C0 CE1 CE2 X j b (Sum.inr (l, β)) * ω (Sum.inr (l, β)) =
      Fin.lastCases (motive := fun _ => ℕ) (segAPlus X.TT X.aT j - b.oPlus)
        (fun l' => coarseA X.p (X.seg C0 CE1 CE2 j) b (uTop (X.seg C0 CE1 CE2 j) l') -
          b.o (uTop (X.seg C0 CE1 CE2 j) l')) l * ω (Sum.inr (l, false)) := by
    intro l
    rw [Fintype.sum_bool]
    simp only [mu0F, zero_mul, zero_add]
  rw [Finset.sum_congr rfl fun a _ => a1 a, Finset.sum_congr rfl fun l _ => a2 l]
  have s1 : ∑ a : Fin (2 * segS X.TT j + 1 + 1), Fin.lastCases (motive := fun _ => ℕ) (X.seg C0 CE1 CE2 j).bPlus
        (fun a' => (segChain X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b).deg a') a * ωL a =
      ∑ a' : Fin (2 * segS X.TT j + 1), (segChain X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b).deg a' *
        ωL (Fin.castSucc a') + (X.seg C0 CE1 CE2 j).bPlus * ωL (Fin.last _) := by
    rw [Fin.sum_univ_castSucc]
    simp only [Fin.lastCases_castSucc, Fin.lastCases_last]
  have s2 : ∑ l : Fin ((X.seg C0 CE1 CE2 j).t + 1), Fin.lastCases (motive := fun _ => ℕ) (segAPlus X.TT X.aT j - b.oPlus)
        (fun l' => coarseA X.p (X.seg C0 CE1 CE2 j) b (uTop (X.seg C0 CE1 CE2 j) l') -
          b.o (uTop (X.seg C0 CE1 CE2 j) l')) l * ω (Sum.inr (l, false)) =
      ∑ l' : Fin (X.seg C0 CE1 CE2 j).t, (coarseA X.p (X.seg C0 CE1 CE2 j) b (uTop (X.seg C0 CE1 CE2 j) l') -
          b.o (uTop (X.seg C0 CE1 CE2 j) l')) * ω (Sum.inr (Fin.castSucc l', false)) +
        (segAPlus X.TT X.aT j - b.oPlus) * ω (Sum.inr (Fin.last _, false)) := by
    rw [Fin.sum_univ_castSucc]
    simp only [Fin.lastCases_castSucc, Fin.lastCases_last]
  rw [s1, s2]
  unfold OmB
  ring

def PhiB (b : SegBlock (segS X.TT j) X.m) : ℕ :=
  Rblk C0 CE1 CE2 X j b * ∏ v : BV C0 CE1 CE2 X j, (baseExp C0 CE1 CE2 X j b (symVar C0 CE1 CE2 X j v)).factorial *
    (symLev X.p C0 CE1 CE2 X j v).factorial ^ (mu0 C0 CE1 CE2 X j b v)

end

def KapNumAt (C0 CYb Cde Ck CD Cb CE1 CE2 Cc : ℝ) : Prop :=
  ∀ (X : Loc) [NeZero X.m], D1num X → HIext C0 CYb Cde Ck CD Cb X → CBound Cc X →
    ∀ (j : Fin (numSeg X.TT)) (b : SegBlock (segS X.TT j) X.m),
      Kept X.p X.m (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b →
      (facSeg X j).factorization X.p ≤ (X.m + 1) * lgSeg X j +
          (∏ x : X.TT × Bool, (cdeg C0 CE1 CE2 X j b x).factorial).factorization X.p +
          (PhiB C0 CE1 CE2 X j b).factorization X.p ∧
      (∏ x : X.TT × Bool, (cdeg C0 CE1 CE2 X j b x).factorial).factorization X.p +
          (PhiB C0 CE1 CE2 X j b).factorization X.p ≤ lgSeg X j + (facSeg X j).factorization X.p

theorem facSeg_ne (X : Loc) (j : Fin (numSeg X.TT)) : facSeg X j ≠ 0 := by
  have : 0 < facSeg X j := by
    unfold facSeg
    positivity
  omega

theorem PhiB_ne (C0 CE1 CE2 : ℝ) (X : Loc) [NeZero X.m] (j : Fin (numSeg X.TT)) (b : SegBlock (segS X.TT j) X.m) :
    PhiB C0 CE1 CE2 X j b ≠ 0 := by
  have : 0 < PhiB C0 CE1 CE2 X j b := by
    unfold PhiB Rblk
    positivity
  omega

theorem kapAt_of {C0 CYb Cde Ck CD Cb CE1 CE2 Cc : ℝ} (hN : KapNumAt C0 CYb Cde Ck CD Cb CE1 CE2 Cc) :
    KapAt C0 CYb Cde Ck CD Cb CE1 CE2 Cc := by
  classical
  intro X _ O _ _ _ w hw h2 hD1 hH hc j b hb
  have hp : X.p.Prime := hD1.1
  have hO : CharZero O := charZero_of_w hp hw h2
  have : CharZero (KK O) := charZero_of_injective_algebraMap (IsFractionRing.injective O (KK O))
  obtain ⟨n1, n2⟩ := hN X hD1 hH hc j b hb
  set sp := specConst X.p (X.seg C0 CE1 CE2 j) b with hsp
  have hsp0 : sp ≠ 0 := specConst_ne _ _ _
  have hc0 : (∏ x : X.TT × Bool, (cdeg C0 CE1 CE2 X j b x).factorial) ≠ 0 :=
    Finset.prod_ne_zero_iff.2 fun x _ => Nat.factorial_ne_zero _
  have hvN : padicValNat X.p (Nblk C0 CE1 CE2 X j b) =
      (∏ x : X.TT × Bool, (cdeg C0 CE1 CE2 X j b x).factorial).factorization X.p + sp.factorization X.p := by
    rw [Nat.padicValNat_def, ← Nat.factorization_def _ hp]
    unfold Nblk
    rw [Nat.factorization_mul hc0 hsp0]
    rfl
  have hBf : (facSeg X j * sp).factorization X.p = (facSeg X j).factorization X.p + sp.factorization X.p := by
    rw [Nat.factorization_mul (facSeg_ne X j) hsp0]
    rfl
  obtain ⟨κ, hκ0, hκv, hκ⟩ := kap_transport hp hw h2 (PhiB_ne C0 CE1 CE2 X j b) (mul_ne_zero (facSeg_ne X j) hsp0)
    ((X.m + 1) * lgSeg X j + padicValNat X.p (Nblk C0 CE1 CE2 X j b)) ((X.m + 2) * lgSeg X j)
    (by rw [hBf, hvN]; omega) (by
      rw [hBf, hvN]
      have : (X.m + 2) * lgSeg X j = (X.m + 1) * lgSeg X j + lgSeg X j := by ring
      omega)
  refine ⟨κ, hκ0, hκv, ?_⟩
  intro μ hμ
  have hΦ : Rblk C0 CE1 CE2 X j b * ∏ v : BV C0 CE1 CE2 X j,
      (baseExp C0 CE1 CE2 X j b (symVar C0 CE1 CE2 X j v)).factorial * (symLev X.p C0 CE1 CE2 X j v).factorial ^ (μ v) =
      PhiB C0 CE1 CE2 X j b := by
    unfold PhiB
    rw [Finset.prod_mul_distrib, Finset.prod_mul_distrib,
      lev_const C0 CE1 CE2 X j b μ _ hμ (leading_exponent_homogeneous C0 CE1 CE2 X j b) Nat.factorial]
  have hΦK := congrArg (fun n : ℕ => (n : KK O)) hΦ
  simp only [Nat.cast_mul, Nat.cast_prod, Nat.cast_pow] at hΦK
  have hκK := congrArg (algebraMap O (KK O)) hκ
  simp only [map_mul, map_pow, map_natCast, Nat.cast_mul] at hκK
  have hf0 : (facSeg X j : KK O) ≠ 0 := Nat.cast_ne_zero.2 (facSeg_ne X j)
  unfold zSeg
  rw [mul_assoc (_ * _) _ _, hΦK, div_mul_eq_mul_div, div_mul_eq_mul_div, div_eq_iff hf0, ← pow_add, hκK]
  ring

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LeadingExponentHomogeneous =====
