module

public import Formalism.LocalToGlobal.KernelLattices.KerStd
public import Formalism.LocalToGlobal.GlobalTheory.GL3.NormNatCoprime
public import Formalism.LocalToGlobal.GlobalTheory.GL3.PStdOK
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.BaseEx
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NsmulRelIdxMem
public import Formalism.LocalToGlobal.GlobalTheory.GL3.PLinkThU
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.IsSemiChar
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.Th0CharMulOpUTh0HalfPeriodEq
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NormLeOneOfRoot
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobalLUnit
public import Formalism.LocalToGlobal.KernelLattices.LateralTheory
public import Mathlib.Analysis.Normed.Field.Instances
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.NumberTheory.Padics.Complex
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation
public import Mathlib.RingTheory.Valuation.Integral
public import Formalism.LocalToGlobal.GlobalTheory.GL3.PFamily
import Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.QuasiPeriodConstUniqueOf
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated2

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapNon, Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.RelIndexNeZeroOfNsmulMem, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapDet, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapSplit, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapVal, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.LiftOneFormsToCompatibleApply, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapAll

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapNon =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapNon", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.KerStd\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.NormNatCoprime\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.PStdOK\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.BaseEx\nimport Formalism.LocalToGlobal.TorsionIntegrality.EisensteinTranslationProducts.AnalyticIdentityTheorems.QuasiPeriodConstUniqueOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NsmulRelIdxMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.PLinkThU\nimport Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.KS

section Core

variable {F : Type} [NormedField F] [IsUltrametricDist F]

theorem norm_int_le (m : ℤ) : ‖(m : F)‖ ≤ 1 := by
  apply Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.RestC.norm_le_one_of_int
  have h := isIntegral_algebraMap (R := ℤ) (A := F) (x := m)
  simpa using h

theorem norm_add_eq_sub {x y : F} (h : ‖x‖ ≠ ‖y‖) : ‖x + y‖ = ‖x - y‖ := by
  have h' : ‖x‖ ≠ ‖-y‖ := by rwa [norm_neg]
  rw [sub_eq_add_neg, IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm h,
    IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm h', norm_neg]

theorem not_both {p : ℕ} (hp : p.Prime) {s t : ℤ} (hst : IsCoprime s t) (hs : (p : ℤ) ∣ s) (ht : (p : ℤ) ∣ t) : False := by
  have h := hst.isUnit_of_dvd' hs ht
  rw [Int.ofNat_isUnit, Nat.isUnit_iff] at h
  exact hp.one_lt.ne' h

theorem not_dvd_form (p d : ℕ) [Fact p.Prime] (hpd : ¬ p ∣ d) (hJ : jacobiSym (-(d : ℤ)) p ≠ 1) {s t : ℤ} (hst : IsCoprime s t) :
    ¬ (p : ℤ) ∣ s ^ 2 + d * t ^ 2 := by
  intro hdiv
  have hz : ((s : ZMod p)) ^ 2 + (d : ZMod p) * (t : ZMod p) ^ 2 = 0 := by
    have h := (ZMod.intCast_zmod_eq_zero_iff_dvd (s ^ 2 + d * t ^ 2) p).2 hdiv
    push_cast at h
    exact h
  have hd0 : (((-(d : ℤ)) : ℤ) : ZMod p) ≠ 0 := by
    intro h0
    have h1 := (ZMod.intCast_zmod_eq_zero_iff_dvd (-(d : ℤ)) p).1 h0
    rw [dvd_neg] at h1
    exact hpd (by exact_mod_cast h1)
  by_cases ht : (t : ZMod p) = 0
  · rw [ht] at hz
    have hs0 : (s : ZMod p) = 0 := by simpa using hz
    exact not_both (Fact.out : p.Prime) hst ((ZMod.intCast_zmod_eq_zero_iff_dvd s p).1 hs0)
      ((ZMod.intCast_zmod_eq_zero_iff_dvd t p).1 ht)
  · apply hJ
    rw [← jacobiSym.legendreSym.to_jacobiSym, legendreSym.eq_one_iff p hd0]
    refine ⟨(s : ZMod p) / (t : ZMod p), ?_⟩
    push_cast
    field_simp
    linear_combination -hz

theorem core_coprime (p d : ℕ) [Fact p.Prime] (hd : d.Prime) (hJ : jacobiSym (-(d : ℤ)) p ≠ 1)
    (h1 : ∀ m : ℤ, ¬ (p : ℤ) ∣ m → ‖(m : F)‖ = 1) (hlt : ‖(p : F)‖ < 1) (hp0 : (p : F) ≠ 0) (r : F) (hr : r ^ 2 = -(d : F))
    (s t : ℤ) (hst : IsCoprime s t) : ‖(s : F) + t * r‖ = ‖(s : F) - t * r‖ := by
  have hr1 : ‖r‖ ^ 2 = ‖(d : F)‖ := by rw [← norm_pow, hr, norm_neg]
  by_cases hpd : p ∣ d
  · have hpd' : p = d := (Nat.prime_dvd_prime_iff_eq Fact.out hd).1 hpd
    have hr2 : ‖r‖ ^ 2 = ‖(p : F)‖ := by rw [hr1, hpd']
    have hpp : 0 < ‖(p : F)‖ := norm_pos_iff.2 hp0
    have hrn : 0 ≤ ‖r‖ := norm_nonneg r
    have hrpos : 0 < ‖r‖ := by
      rcases hrn.lt_or_eq with h | h
      · exact h
      · rw [← h] at hr2; norm_num at hr2; linarith
    have hrlt : ‖r‖ < 1 := by
      by_contra hc
      rw [not_lt] at hc
      nlinarith
    have hplt : ‖(p : F)‖ < ‖r‖ := by rw [← hr2]; nlinarith
    apply norm_add_eq_sub
    by_cases hs : (p : ℤ) ∣ s
    · have ht : ¬ (p : ℤ) ∣ t := fun ht => not_both (Fact.out : p.Prime) hst hs ht
      obtain ⟨s', rfl⟩ := hs
      have e1 : ‖(((p : ℤ) * s' : ℤ) : F)‖ ≤ ‖(p : F)‖ := by
        push_cast
        rw [norm_mul]
        exact mul_le_of_le_one_right hpp.le (norm_int_le s')
      rw [norm_mul, h1 t ht, one_mul]
      exact (lt_of_le_of_lt e1 hplt).ne
    · rw [h1 s hs, norm_mul]
      have : ‖(t : F)‖ * ‖r‖ < 1 := lt_of_le_of_lt (mul_le_of_le_one_left hrn (norm_int_le t)) hrlt
      exact this.ne'
  · have hn := h1 _ (not_dvd_form p d hpd hJ hst)
    have hrle : ‖r‖ ≤ 1 := by
      have hdle : ‖(d : F)‖ ≤ 1 := by simpa using norm_int_le (F := F) (d : ℤ)
      by_contra hc
      rw [not_le] at hc
      nlinarith [norm_nonneg r]
    have htr : ‖(t : F) * r‖ ≤ 1 := by
      rw [norm_mul]; exact mul_le_one₀ (norm_int_le t) (norm_nonneg r) hrle
    have hA : ‖(s : F) + t * r‖ ≤ 1 := (IsUltrametricDist.norm_add_le_max _ _).trans (max_le (norm_int_le s) htr)
    have hA' : ‖(s : F) - t * r‖ ≤ 1 := by
      rw [sub_eq_add_neg]
      exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le (norm_int_le s) (by rwa [norm_neg]))
    have hprod : ‖(s : F) + t * r‖ * ‖(s : F) - t * r‖ = 1 := by
      rw [← norm_mul, ← hn]
      congr 1
      push_cast
      linear_combination (-(t : F) ^ 2) * hr
    have hA1 : ‖(s : F) + t * r‖ = 1 := by
      apply le_antisymm hA
      by_contra hc
      rw [not_le] at hc
      nlinarith [norm_nonneg ((s : F) + t * r), norm_nonneg ((s : F) - t * r)]
    rw [hA1, one_mul] at hprod
    rw [hA1, hprod]

theorem core_int (p d : ℕ) [Fact p.Prime] (hd : d.Prime) (hJ : jacobiSym (-(d : ℤ)) p ≠ 1)
    (h1 : ∀ m : ℤ, ¬ (p : ℤ) ∣ m → ‖(m : F)‖ = 1) (hlt : ‖(p : F)‖ < 1) (hp0 : (p : F) ≠ 0) (r : F) (hr : r ^ 2 = -(d : F))
    (s t : ℤ) : ‖(s : F) + t * r‖ = ‖(s : F) - t * r‖ := by
  by_cases h0 : Int.gcd s t = 0
  · obtain ⟨rfl, rfl⟩ := Int.gcd_eq_zero_iff.1 h0
    simp
  · obtain ⟨s', t', hg, hs, ht⟩ := Int.exists_gcd_one (Nat.pos_of_ne_zero h0)
    have hc := core_coprime p d hd hJ h1 hlt hp0 r hr s' t' (Int.isCoprime_iff_gcd_eq_one.2 hg)
    have hsF : (s : F) = (s' : F) * ((Int.gcd s t : ℕ) : F) := by exact_mod_cast congrArg (Int.cast : ℤ → F) hs
    have htF : (t : F) = (t' : F) * ((Int.gcd s t : ℕ) : F) := by exact_mod_cast congrArg (Int.cast : ℤ → F) ht
    have e1 : (s : F) + t * r = ((Int.gcd s t : ℕ) : F) * ((s' : F) + t' * r) := by rw [hsF, htF]; ring
    have e2 : (s : F) - t * r = ((Int.gcd s t : ℕ) : F) * ((s' : F) - t' * r) := by rw [hsF, htF]; ring
    rw [e1, e2, norm_mul, norm_mul, hc]

theorem core_rat [CharZero F] (p d : ℕ) [Fact p.Prime] (hd : d.Prime) (hJ : jacobiSym (-(d : ℤ)) p ≠ 1)
    (h1 : ∀ m : ℤ, ¬ (p : ℤ) ∣ m → ‖(m : F)‖ = 1) (hlt : ‖(p : F)‖ < 1) (r : F) (hr : r ^ 2 = -(d : F))
    (a b : ℚ) : ‖(a : F) + b * r‖ = ‖(a : F) - b * r‖ := by
  have hp0 : (p : F) ≠ 0 := Nat.cast_ne_zero.2 (Fact.out : p.Prime).ne_zero
  have ha : (a.den : F) ≠ 0 := Nat.cast_ne_zero.2 a.den_ne_zero
  have hb : (b.den : F) ≠ 0 := Nat.cast_ne_zero.2 b.den_ne_zero
  have e : ∀ σ : F, (a : F) + b * σ =
      (((a.num * b.den : ℤ) : F) + ((b.num * a.den : ℤ) : F) * σ) / ((a.den : F) * (b.den : F)) := by
    intro σ
    rw [Rat.cast_def a, Rat.cast_def b]
    push_cast
    field_simp
  have e2 : (a : F) - b * r =
      (((a.num * b.den : ℤ) : F) - ((b.num * a.den : ℤ) : F) * r) / ((a.den : F) * (b.den : F)) := by
    have := e (-r)
    rw [mul_neg, ← sub_eq_add_neg, mul_neg, ← sub_eq_add_neg] at this
    exact this
  rw [e r, e2, norm_div, norm_div, core_int p d hd hJ h1 hlt hp0 r hr]

end Core

section Host

open Formalism.FrobeniusOrbits

variable {R : Ranks} (H : Host R)

theorem K_repr (k : H.K) : ∃ a b : ℚ, (k : H.E) = (a : H.E) + (b : H.E) * H.sqd := by
  have hβ := _root_.Formalism.BasicNotions.Examples₂.bE_sq H
  refine K_induction H (p := fun x => ∃ a b : ℚ, x = (a : H.E) + (b : H.E) * H.sqd) ?_ ?_ ?_ ?_ ?_ k
  · exact ⟨0, 1, by simp⟩
  · intro r
    exact ⟨r, 0, by simp⟩
  · rintro x y ⟨a, b, rfl⟩ ⟨a', b', rfl⟩
    exact ⟨a + a', b + b', by push_cast; ring⟩
  · rintro x ⟨a, b, rfl⟩
    by_cases h0 : a = 0 ∧ b = 0
    · obtain ⟨rfl, rfl⟩ := h0
      exact ⟨0, 0, by simp⟩
    · have hd : (0 : ℚ) < H.d := by exact_mod_cast d_pos H
      have hN : a ^ 2 + (H.d : ℚ) * b ^ 2 ≠ 0 := by
        intro hz
        apply h0
        have h1 : a ^ 2 = 0 := by nlinarith [sq_nonneg a, mul_nonneg hd.le (sq_nonneg b)]
        have h2 : (H.d : ℚ) * b ^ 2 = 0 := by nlinarith [sq_nonneg a, mul_nonneg hd.le (sq_nonneg b)]
        refine ⟨by simpa using h1, ?_⟩
        have h3 := (mul_eq_zero.1 h2).resolve_left hd.ne'
        simpa using h3
      have hNE : (a : H.E) ^ 2 + (H.d : H.E) * (b : H.E) ^ 2 ≠ 0 := by exact_mod_cast hN
      refine ⟨a / (a ^ 2 + (H.d : ℚ) * b ^ 2), -b / (a ^ 2 + (H.d : ℚ) * b ^ 2), ?_⟩
      apply inv_eq_of_mul_eq_one_right
      push_cast
      have e : ((a : H.E) + (b : H.E) * H.sqd) *
          ((a : H.E) / ((a : H.E) ^ 2 + (H.d : H.E) * (b : H.E) ^ 2) +
            -(b : H.E) / ((a : H.E) ^ 2 + (H.d : H.E) * (b : H.E) ^ 2) * H.sqd) =
          ((a : H.E) ^ 2 - (b : H.E) ^ 2 * H.sqd ^ 2) / ((a : H.E) ^ 2 + (H.d : H.E) * (b : H.E) ^ 2) := by ring
      rw [e, hβ, div_eq_one_iff_eq hNE]
      ring
  · rintro x y ⟨a, b, rfl⟩ ⟨a', b', rfl⟩
    exact ⟨a * a' - H.d * b * b', a * b' + a' * b, by push_cast; linear_combination ((b : H.E) * b') * hβ⟩

end Host

section Main

variable {D : D7}

theorem norm_int_unit (p : ℕ) [Fact p.Prime] (m : ℤ) (h : ¬ (p : ℤ) ∣ m) : ‖(m : ℂ_[p])‖ = 1 := by
  have hc : Nat.Coprime m.natAbs p := by
    rw [Nat.coprime_comm, Nat.Prime.coprime_iff_not_dvd Fact.out]
    intro hd
    exact h (Int.natCast_dvd.2 hd)
  have h1 := Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.RestC.norm_nat_coprime p hc
  have h2 : ‖(m : ℂ_[p])‖ = ‖((m.natAbs : ℕ) : ℂ_[p])‖ := by
    rcases Int.natAbs_eq m with e | e
    · conv_lhs => rw [e]
      simp
    · conv_lhs => rw [e]
      simp
  rw [h2, h1]

theorem norm_p_lt (p : ℕ) [Fact p.Prime] : ‖(p : ℂ_[p])‖ < 1 := by
  have h := PadicComplex.norm_extends' p (p : ℚ_[p])
  have h2 : ‖(p : ℚ_[p])‖ < 1 := by
    first
      | exact Padic.norm_p_lt_one
  rw [← h] at h2
  simpa using h2

theorem nonsplit_conj (p : ℕ) [Fact p.Prime] (hs : ¬ SplitK D p) (ι : ℂ ≃+* ℂ_[p]) (x : D.host.K) :
    ‖ι (D.host.φ₀ (D.host.conj (x : D.host.E)))‖ = ‖ι (D.host.φ₀ (x : D.host.E))‖ := by
  have hJ : jacobiSym (-(D.host.d : ℤ)) p ≠ 1 := fun h => hs (Or.inr h)
  obtain ⟨a, b, hx⟩ := K_repr D.host x
  have hr : (ι (Complex.I * (Real.sqrt D.host.d : ℂ))) ^ 2 = -(D.host.d : ℂ_[p]) := by
    rw [← map_pow]
    have h : (Complex.I * (Real.sqrt D.host.d : ℂ)) ^ 2 = -(D.host.d : ℂ) := by
      rw [mul_pow, Complex.I_sq, ← Complex.ofReal_pow, Real.sq_sqrt (Nat.cast_nonneg _)]
      simp
    rw [h, map_neg, map_natCast]
  have e1 : ι (D.host.φ₀ (x : D.host.E)) = (a : ℂ_[p]) + b * ι (Complex.I * (Real.sqrt D.host.d : ℂ)) := by
    rw [hx, map_add (f := _), map_mul, phi_b, map_ratCast, map_ratCast, map_add (f := _), map_mul, map_ratCast, map_ratCast]
  have e2 : ι (D.host.φ₀ (D.host.conj (x : D.host.E))) = (a : ℂ_[p]) - b * ι (Complex.I * (Real.sqrt D.host.d : ℂ)) := by
    rw [hx, map_add (f := _), map_mul, _root_.Formalism.BasicNotions.Examples₂.conj_bE, map_ratCast, map_ratCast, mul_neg, ← sub_eq_add_neg, map_sub, map_mul, phi_b,
      map_ratCast, map_ratCast, map_sub, map_mul, map_ratCast, map_ratCast]
  rw [e1, e2]
  exact (core_rat p D.host.d D.host.hyp.2.1 hJ (norm_int_unit p) (norm_p_lt p) _ hr a b).symm

theorem det_unit_nonsplit (p : ℕ) [Fact p.Prime] (hs : ¬ SplitK D p) (ι : ℂ ≃+* ℂ_[p]) (x : D.host.K)
    (h : D.host.φ₀ (x : D.host.E) * (starRingEnd ℂ) (D.host.φ₀ (x : D.host.E)) = 1) : ‖ι (D.host.φ₀ (x : D.host.E))‖ = 1 := by
  have h1 := nonsplit_conj p hs ι x
  rw [_root_.Formalism.BasicNotions.Examples₂.emb_conj] at h1
  have h2 : ‖ι (D.host.φ₀ (x : D.host.E))‖ * ‖ι ((starRingEnd ℂ) (D.host.φ₀ (x : D.host.E)))‖ = 1 := by
    rw [← norm_mul, ← map_mul, h, map_one, norm_one]
  rw [h1] at h2
  exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) two_ne_zero).1 (by rw [sq]; exact h2)

end Main

section DetK

open Formalism.L2.Th1.H (stdLat imgLat relIdx IsIsom)

theorem stdH_apply' {m : Type} [Fintype m] [DecidableEq m] (L : PeriodPair) (x y : m → ℂ) :
    Formalism.L2.Th1.H.stdH L m x y = ∑ i, x i * ((Formalism.L2.Th1.F.area L : ℝ) : ℂ)⁻¹ * conj (y i) := by
  simp [Formalism.L2.Th1.H.stdH, Formalism.L2.Th1.H.matH, LinearMap.mk₂'ₛₗ_apply, Matrix.smul_apply, Matrix.one_apply]

theorem mem_stdLat' {m : Type} {L : PeriodPair} {x : m → ℂ} : x ∈ stdLat L m ↔ ∀ i, x i ∈ L.lattice := by
  simp [stdLat, AddSubgroup.mem_pi]

theorem area_ne (L : PeriodPair) : ((Formalism.L2.Th1.F.area L : ℝ) : ℂ) ≠ 0 := by
  have h : 0 < Formalism.L2.Th1.F.area L := by
    exact Formalism.L2.Th1.F.PeriodAreaSignLemmas.area_pos L
  exact_mod_cast h.ne'

theorem unitary_det_gen (L : PeriodPair) {m : Type} [Fintype m] [DecidableEq m] (u : (m → ℂ) ≃ₗ[ℂ] (m → ℂ))
    (hiso : IsIsom (Formalism.L2.Th1.H.stdH L m) (Formalism.L2.Th1.H.stdH L m) (u : (m → ℂ) →ₗ[ℂ] (m → ℂ))) :
    LinearMap.det (u : (m → ℂ) →ₗ[ℂ] (m → ℂ)) * conj (LinearMap.det (u : (m → ℂ) →ₗ[ℂ] (m → ℂ))) = 1 := by
  set U := LinearMap.toMatrix' (u : (m → ℂ) →ₗ[ℂ] (m → ℂ)) with hU
  set A : ℂ := ((Formalism.L2.Th1.F.area L : ℝ) : ℂ) with hAdef
  have hA : A ≠ 0 := area_ne L
  have hUU : Matrix.conjTranspose U * U = 1 := by
    ext k j
    have h := hiso (Pi.single j 1) (Pi.single k 1)
    rw [stdH_apply', stdH_apply'] at h
    have hr : ∑ i, (Pi.single j 1 : m → ℂ) i * A⁻¹ * conj ((Pi.single k 1 : m → ℂ) i)
        = if k = j then A⁻¹ else 0 := by
      rw [Finset.sum_eq_single j]
      · by_cases hkj : k = j
        · subst hkj; simp
        · simp [hkj, Ne.symm hkj]
      · intro t _ ht; simp [Pi.single_apply, ht]
      · intro h; exact absurd (Finset.mem_univ j) h
    rw [← hAdef, hr] at h
    simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.one_apply, hU, LinearMap.toMatrix'_apply]
    have e : ∑ i, star ((u : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (Pi.single k 1) i) *
        (u : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (Pi.single j 1) i
        = A * ∑ i, (u : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (Pi.single j 1) i * A⁻¹ *
          conj ((u : (m → ℂ) →ₗ[ℂ] (m → ℂ)) (Pi.single k 1) i) := by
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [Complex.star_def]
      field_simp
    rw [e, h]
    split_ifs
    · field_simp
    · simp
  have hd' := congrArg Matrix.det hUU
  rw [Matrix.det_mul, Matrix.det_conjTranspose, Matrix.det_one, hU, LinearMap.det_toMatrix'] at hd'
  rw [mul_comm]
  exact hd'

variable {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Base D cc δ)

theorem entries_in_K (hδ0 : δ ≠ 0) (hcc : cc ≠ ⊥) (u : (Fin 4 × D.what₂.Tau → ℂ) ≃ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ))
    (h1 : relIdx (stdLat B.L (Fin 4 × D.what₂.Tau)) (imgLat (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)) B.latA) ≠ 0)
    (i j : Fin 4 × D.what₂.Tau) :
    ∃ x : D.host.K, u (Pi.single j 1) i = D.host.φ₀ (x : D.host.E) := by
  obtain ⟨c, hc, hc0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot (p := cc) hcc
  set ω : ℂ := δ * D.host.φ₀ (((c : D.host.K) : D.host.E)) with hω
  have hωL : ω ∈ B.L.lattice := (GlobalTheory.FourthRootStd.mem_iff B ω).2 (AddSubgroup.subset_closure ⟨c, hc, rfl⟩)
  set Lt := stdLat B.L (Fin 4 × D.what₂.Tau) with hLt
  set M := imgLat (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)) B.latA with hM
  have hk2 : relIdx B.latA Lt ≠ 0 := GlobalTheory.FourthRootStd.idx₂ B
  have hv : (Pi.single j ω : Fin 4 × D.what₂.Tau → ℂ) ∈ Lt := by
    rw [hLt, mem_stdLat']
    intro t
    by_cases h : t = j
    · subst h; simpa using hωL
    · rw [Pi.single_eq_of_ne h]; exact B.L.lattice.zero_mem
  have h2 : relIdx B.latA Lt • (Pi.single j ω : Fin 4 × D.what₂.Tau → ℂ) ∈ B.latA :=
    PI.UnitaryGroupMassFormula.UnitDetRoot.nsmul_relIdx_mem B.latA Lt hv
  have h3 : u (relIdx B.latA Lt • (Pi.single j ω : Fin 4 × D.what₂.Tau → ℂ)) ∈ M := ⟨_, h2, rfl⟩
  have h4 : relIdx Lt M • u (relIdx B.latA Lt • (Pi.single j ω : Fin 4 × D.what₂.Tau → ℂ)) ∈ Lt :=
    PI.UnitaryGroupMassFormula.UnitDetRoot.nsmul_relIdx_mem Lt M h3
  have hveq : (Pi.single j ω : Fin 4 × D.what₂.Tau → ℂ) = ω • (Pi.single j 1 : Fin 4 × D.what₂.Tau → ℂ) := by
    ext t
    by_cases h : t = j
    · subst h; simp
    · simp [h]
  have hz : (relIdx Lt M • u (relIdx B.latA Lt • (Pi.single j ω : Fin 4 × D.what₂.Tau → ℂ))) i
      = ((relIdx Lt M : ℂ) * (relIdx B.latA Lt : ℂ) * ω) * u (Pi.single j 1) i := by
    rw [hveq, map_nsmul, map_smul]
    simp only [Pi.smul_apply, nsmul_eq_mul, Pi.mul_apply, Pi.natCast_apply, smul_eq_mul]
    ring
  obtain ⟨c', -, hc'⟩ := Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.FL.lam_mem D cc δ _ ((GlobalTheory.FourthRootStd.mem_iff B _).1 ((mem_stdLat'.1 h4) i))
  rw [hz] at hc'
  have hcK : ((c : D.host.K)) ≠ 0 := by
    intro h
    exact hc0 (RingOfIntegers.coe_injective (h.trans (map_zero (algebraMap (𝓞 D.host.K) D.host.K)).symm))
  have hφc : D.host.φ₀ (((c : D.host.K) : D.host.E)) ≠ 0 := by
    rw [Ne, map_eq_zero]
    intro h
    exact hcK ((algebraMap D.host.K D.host.E).injective (h.trans (map_zero (algebraMap D.host.K D.host.E)).symm))
  have hk1C : (relIdx Lt M : ℂ) ≠ 0 := by exact_mod_cast h1
  have hk2C : (relIdx B.latA Lt : ℂ) ≠ 0 := by exact_mod_cast hk2
  refine ⟨(c' : D.host.K) / ((relIdx Lt M : D.host.K) * (relIdx B.latA Lt : D.host.K) * (c : D.host.K)), ?_⟩
  push_cast
  rw [map_div₀, map_mul, map_mul, map_natCast, map_natCast, eq_div_iff (mul_ne_zero (mul_ne_zero hk1C hk2C) hφc)]
  apply mul_left_cancel₀ hδ0
  rw [← hc', hω]
  ring

theorem det_in_K (hδ0 : δ ≠ 0) (hcc : cc ≠ ⊥) (u : (Fin 4 × D.what₂.Tau → ℂ) ≃ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ))
    (h1 : relIdx (stdLat B.L (Fin 4 × D.what₂.Tau)) (imgLat (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)) B.latA) ≠ 0) :
    ∃ x : D.host.K, LinearMap.det (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)) = D.host.φ₀ (x : D.host.E) := by
  choose M hM using fun (i j : Fin 4 × D.what₂.Tau) => entries_in_K B hδ0 hcc u h1 i j
  refine ⟨(Matrix.of M).det, ?_⟩
  have e : LinearMap.toMatrix' (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)) =
      (D.host.φ₀.comp (algebraMap D.host.K D.host.E)).mapMatrix (Matrix.of M) := by
    ext i j
    rw [LinearMap.toMatrix'_apply]
    exact hM i j
  rw [← LinearMap.det_toMatrix', e, ← RingHom.map_det]
  rfl

theorem det_norm_nonsplit (hδ0 : δ ≠ 0) (hcc : cc ≠ ⊥) (p : ℕ) [Fact p.Prime] (hs : ¬ SplitK D p) (ι : ℂ ≃+* ℂ_[p])
    (u : (Fin 4 × D.what₂.Tau → ℂ) ≃ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ))
    (hiso : IsIsom (Formalism.L2.Th1.H.stdH B.L (Fin 4 × D.what₂.Tau)) (Formalism.L2.Th1.H.stdH B.L (Fin 4 × D.what₂.Tau))
      (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)))
    (h1 : relIdx (stdLat B.L (Fin 4 × D.what₂.Tau)) (imgLat (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)) B.latA) ≠ 0) :
    ‖ι (LinearMap.det (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)))‖ = 1 := by
  obtain ⟨x, hx⟩ := det_in_K B hδ0 hcc u h1
  have h := unitary_det_gen B.L u hiso
  rw [hx] at h ⊢
  exact det_unit_nonsplit p hs ι x h

theorem kappaAt_nonsplit_of (hδ0 : δ ≠ 0) (hcc : cc ≠ ⊥) (p : ℕ) [Fact p.Prime] (hs : ¬ SplitK D p) (ι : ℂ ≃+* ℂ_[p])
    (hκ : ‖ι B.kappa‖ = 1) : B.KappaAt p ι := by
  intro u hiso h1 _ _
  rw [hκ, det_norm_nonsplit B hδ0 hcc p hs ι u hiso h1]
  norm_num

end DetK

end Formalism.L2.Ker.KS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapNon =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.RelIndexNeZeroOfNsmulMem =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.RelIndexNeZeroOfNsmulMem", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.IsSemiChar\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.Th0CharMulOpUTh0HalfPeriodEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate

namespace Formalism.L2.Th1.H

section Index

variable {V : Type*} [AddCommGroup V]

end Index

section Lattice

instance periodLattice_finite (L : PeriodPair) : Module.Finite ℤ L.lattice := ZLattice.module_finite ℝ L.lattice

def stdLatEquiv (L : PeriodPair) (m : Type*) : stdLat L m ≃+ (m → L.lattice) where
  toFun x := fun i => ⟨(x : m → ℂ) i, (mem_stdLat L m x).1 x.2 i⟩
  invFun y := ⟨fun i => (y i : ℂ), (mem_stdLat L m _).2 fun i => (y i).2⟩
  left_inv _ := rfl
  right_inv _ := rfl
  map_add' _ _ := rfl

theorem stdLat_finite (L : PeriodPair) (m : Type*) [Finite m] : Module.Finite ℤ (stdLat L m) := Module.Finite.equiv (stdLatEquiv L m).symm.toIntLinearEquiv

end Lattice

end Formalism.L2.Th1.H
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.RelIndexNeZeroOfNsmulMem =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapDet =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapDet", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.KerStd\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.PStdOK\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.CayleyGaussianIntegrals.RelIndexNeZeroOfNsmulMem\nimport Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated2\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NormLeOneOfRoot\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.NsmulRelIdxMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitDeterminantRoot.GlobalLUnit\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.KS

open Formalism.MainNotions
open Formalism.L2.Th1.H (stdLat pow4 imgLat relIdx IsIsom IsSelfDual dualLat altE)
open Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity

section Gen

variable {V : Type*} [AddCommGroup V] [Module ℂ V]

def Good (p : ℕ) (Lt : AddSubgroup V) (T : V →ₗ[ℂ] V) (x : V) : Prop := ∃ k : ℕ, ¬ p ∣ k ∧ (k : ℂ) • T x ∈ Lt

theorem mul_smul_mem (Lt : AddSubgroup V) {k : ℕ} {v : V} (h : (k : ℂ) • v ∈ Lt) (r : ℕ) : ((r * k : ℕ) : ℂ) • v ∈ Lt := by
  have e : ((r * k : ℕ) : ℂ) • v = r • ((k : ℂ) • v) := by
    rw [← Nat.cast_smul_eq_nsmul ℂ r, smul_smul, Nat.cast_mul]
  rw [e]
  exact Lt.nsmul_mem h r

theorem good_zero {p : ℕ} (hp : p.Prime) (Lt : AddSubgroup V) (T : V →ₗ[ℂ] V) : Good p Lt T 0 :=
  ⟨1, hp.one_lt.ne' ∘ Nat.dvd_one.1, by rw [map_zero, smul_zero]; exact Lt.zero_mem⟩

theorem good_add {p : ℕ} (hp : p.Prime) (Lt : AddSubgroup V) (T : V →ₗ[ℂ] V) {x y : V} (hx : Good p Lt T x) (hy : Good p Lt T y) :
    Good p Lt T (x + y) := by
  obtain ⟨k, hk, h1⟩ := hx
  obtain ⟨l, hl, h2⟩ := hy
  refine ⟨l * k, fun h => (hp.dvd_mul.1 h).elim hl hk, ?_⟩
  rw [map_add (f := _), smul_add]
  refine Lt.add_mem (mul_smul_mem Lt h1 l) ?_
  rw [mul_comm]
  exact mul_smul_mem Lt h2 k

theorem good_neg {p : ℕ} (Lt : AddSubgroup V) (T : V →ₗ[ℂ] V) {x : V} (hx : Good p Lt T x) : Good p Lt T (-x) := by
  obtain ⟨k, hk, h1⟩ := hx
  refine ⟨k, hk, ?_⟩
  rw [map_neg, smul_neg]
  exact Lt.neg_mem h1

theorem good_unif {p : ℕ} (hp : p.Prime) (Lt : AddSubgroup V) [hfin : Module.Finite ℤ Lt] (T : V →ₗ[ℂ] V)
    (hT : ∀ x ∈ Lt, Good p Lt T x) : ∃ k : ℕ, ¬ p ∣ k ∧ ∀ x ∈ Lt, (k : ℂ) • T x ∈ Lt := by
  obtain ⟨S, hS⟩ := hfin.fg_top
  have hT' : ∀ x : Lt, ∃ k : ℕ, ¬ p ∣ k ∧ (k : ℂ) • T (x : V) ∈ Lt := fun x => hT x x.2
  choose kf hk1 hk2 using hT'
  refine ⟨∏ s ∈ S, kf s, ?_, ?_⟩
  · intro h
    obtain ⟨a, _, ha⟩ := (hp.prime.dvd_finsetProd_iff _).1 h
    exact hk1 a ha
  · intro x hx
    have hmem : (⟨x, hx⟩ : Lt) ∈ Submodule.span ℤ (S : Set Lt) := by rw [hS]; trivial
    have key : ∀ y : Lt, y ∈ Submodule.span ℤ (S : Set Lt) → ((∏ s ∈ S, kf s : ℕ) : ℂ) • T (y : V) ∈ Lt := by
      intro y hy
      induction hy using Submodule.span_induction with
      | mem y hy =>
        obtain ⟨r, hr⟩ := Finset.dvd_prod_of_mem kf hy
        rw [hr, mul_comm]
        exact mul_smul_mem Lt (hk2 y) r
      | zero => simp only [ZeroMemClass.coe_zero, map_zero, smul_zero]; exact Lt.zero_mem
      | add y z _ _ h1 h2 =>
        simp only [AddSubgroup.coe_add, map_add (f := _), smul_add]
        exact Lt.add_mem h1 h2
      | smul n y _ h1 =>
        have e : ((n • y : Lt) : V) = n • (y : V) := rfl
        rw [e, map_zsmul, smul_comm]
        exact Lt.zsmul_mem h1 n
    exact key _ hmem

end Gen

section Det

variable {m : Type} [Fintype m] [DecidableEq m]

theorem mem_std (L : PeriodPair) (x : m → ℂ) : x ∈ stdLat L m ↔ ∀ i, x i ∈ L.lattice := by
  simp [stdLat, AddSubgroup.mem_pi]

theorem int_of_stab (L : PeriodPair) (c : ℂ) (h : ∀ ω ∈ L.lattice, c * ω ∈ L.lattice) : IsIntegral ℤ c := by
  refine isIntegral_of_smul_mem_submodule L.lattice ?_ (Module.Finite.iff_fg.1 inferInstance) c h
  intro h0
  have h1 : L.ω₁ ∈ L.lattice := L.ω₁_mem_lattice
  rw [h0, Submodule.mem_bot] at h1
  have h2 := L.indep.ne_zero 0
  exact h2 (by simpa using h1)

theorem int_det {p : ℕ} (hp : p.Prime) (L : PeriodPair) (T : (m → ℂ) →ₗ[ℂ] (m → ℂ))
    (hT : ∀ x ∈ stdLat L m, Good p (stdLat L m) T x) : ∃ k : ℕ, ¬ p ∣ k ∧ IsIntegral ℤ ((k : ℂ) * LinearMap.det T) := by
  have : Module.Finite ℤ (stdLat L m) := Formalism.L2.Th1.H.stdLat_finite L m
  obtain ⟨k, hk, hkT⟩ := good_unif hp (stdLat L m) T hT
  have hA : ∀ i j, LinearMap.toMatrix' T i j = T (Pi.single j 1) i := by
    intro i j
    rw [LinearMap.toMatrix'_apply]
  have hent : ∀ i j, IsIntegral ℤ (((k : ℂ) • LinearMap.toMatrix' T) i j) := by
    intro i j
    apply int_of_stab L
    intro ω hω
    have h1 : (Pi.single j ω : m → ℂ) ∈ stdLat L m := by
      rw [mem_std]
      intro i'
      by_cases h : i' = j
      · subst h; simpa using hω
      · rw [Pi.single_eq_of_ne h]; exact L.lattice.zero_mem
    have h2 := (mem_std L _).1 (hkT _ h1) i
    have e : (Pi.single j ω : m → ℂ) = ω • (Pi.single j 1 : m → ℂ) := by
      funext i'
      by_cases h : i' = j
      · subst h; simp
      · simp [Pi.single_eq_of_ne h]
    rw [e, map_smul] at h2
    simp only [Pi.smul_apply, smul_eq_mul] at h2
    rw [Matrix.smul_apply, hA, smul_eq_mul]
    convert h2 using 1
    ring
  refine ⟨k ^ Fintype.card m, fun h => hk (hp.dvd_of_dvd_pow h), ?_⟩
  have h3 := IsIntegral.det hent
  rw [Matrix.det_smul, LinearMap.det_toMatrix'] at h3
  rw [Nat.cast_pow]
  exact h3

end Det

section Ext

variable (D : D7)

abbrev Ix : Type := Fin 4 × D.what₂.Tau

def fK : D.host.K →+* ℂ := D.host.φ₀.comp (algebraMap D.host.K D.host.E)

def vec (v : Ix D → D.host.K) : Ix D → ℂ := fun w => fK D (v w)

def extC (f : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K)) : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ) :=
  Matrix.toLin' ((LinearMap.toMatrix' f).map (fK D))

theorem extC_vec (f : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K)) (v : Ix D → D.host.K) :
    extC D f (vec D v) = vec D (f v) := by
  funext i
  have h := RingHom.map_mulVec (fK D) (LinearMap.toMatrix' f) v i
  rw [LinearMap.toMatrix'_mulVec] at h
  exact h.symm

theorem det_extC (f : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K)) :
    LinearMap.det (extC D f) = fK D (LinearMap.det f) := by
  unfold extC
  rw [LinearMap.det_toLin', ← LinearMap.det_toMatrix' f, RingHom.map_det]
  rfl

theorem vec_natsmul (s : ℕ) (v : Ix D → D.host.K) : vec D (s • v) = (s : ℂ) • vec D v := by
  funext w
  simp [vec]

theorem single_eq (j : Ix D) (ω : ℂ) : (Pi.single j ω : Ix D → ℂ) = ω • vec D (Pi.single j 1) := by
  funext i
  by_cases h : i = j
  · subst h; simp [vec]
  · simp [vec, Pi.single_eq_of_ne h]

end Ext

section Cmp

variable {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Base D cc δ)

theorem gaussCoord_embedding_fourfold (y : Fin 4 → D.host.E) : B.gC (emb4 D y) = vec D (B.γ₀.g y) := B.gC_spec y

theorem good_stdLat_comp_extC (p : ℕ) [hp : Fact p.Prime] (γ : IsoK D) (hγ : γ.AtP p)
    (u : (Ix D → ℂ) ≃ₗ[ℂ] (Ix D → ℂ))
    (h2 : ¬ p ∣ relIdx (stdLat B.L (Ix D)) (imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA)) :
    ∀ x ∈ stdLat B.L (Ix D), Good p (stdLat B.L (Ix D))
      ((u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) ∘ₗ extC D ((B.γ₀.g.symm.trans γ.g).symm : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K))) x := by
  intro x hx
  rw [← Finset.univ_sum_single x]
  refine Finset.sum_induction _ _ (fun a b => good_add hp.out _ _) (good_zero hp.out _ _) ?_
  intro j _
  have hω : x j ∈ TaylorLogMetric.lamOf D cc δ := (GlobalTheory.FourthRootStd.mem_iff B _).1 ((mem_std B.L x).1 hx j)
  obtain ⟨s, hs, hmem⟩ := hγ.2 (Pi.single j 1) (by
    intro w
    by_cases h : w = j
    · subst h; exact ⟨1, by simp⟩
    · exact ⟨0, by simp [Pi.single_eq_of_ne h]⟩)
  set y : Fin 4 → D.host.E := fun a => (s : D.host.E) * γ.g.symm (Pi.single j 1) a with hy
  have hy' : y = s • γ.g.symm (Pi.single j 1) := by
    funext a
    rw [hy, Pi.smul_apply, nsmul_eq_mul]
  have e1 : (s : ℂ) • extC D ((B.γ₀.g.symm.trans γ.g).symm : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K)) (Pi.single j (x j))
      = B.gC (x j • emb4 D y) := by
    rw [single_eq, map_smul, map_smul, extC_vec, gaussCoord_embedding_fourfold, hy', map_nsmul, vec_natsmul, smul_comm]
    rfl
  have hz : B.gC (x j • emb4 D y) ∈ B.latA := ⟨x j • emb4 D y, SO.gen_mem hω hmem, rfl⟩
  have hz2 : u (B.gC (x j • emb4 D y)) ∈ imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA := ⟨_, hz, rfl⟩
  have hz3 := PI.UnitaryGroupMassFormula.UnitDetRoot.nsmul_relIdx_mem (stdLat B.L (Ix D)) _ hz2
  refine ⟨relIdx (stdLat B.L (Ix D)) (imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA) * s, ?_, ?_⟩
  · intro h
    rcases hp.out.dvd_mul.1 h with h | h
    · exact h2 h
    · exact hp.out.one_lt.ne' (Nat.dvd_one.1 (hs ▸ Nat.dvd_gcd h dvd_rfl))
  · rw [← e1, map_smul, ← Nat.cast_smul_eq_nsmul ℂ, smul_smul] at hz3
    rw [Nat.cast_mul]
    exact hz3

theorem good_lat (p : ℕ) [hp : Fact p.Prime] (γ : IsoK D) (hγ : γ.AtP p) :
    ∀ z ∈ pow4 B.lamM, Good p (stdLat B.L (Ix D))
      (extC D ((B.γ₀.g.symm.trans γ.g) : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K)) ∘ₗ (B.gC : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ))) z := by
  intro z hz
  have hz' := SO.fourth_power_le_closure_embeddings (TaylorLogMetric.lamOf D cc δ) hz
  clear hz
  induction hz' using AddSubgroup.closure_induction with
  | mem z h =>
    obtain ⟨w, hw, y, hy, rfl⟩ := h
    obtain ⟨s, hs, hr⟩ := hγ.1 y hy
    refine ⟨s, fun h => hp.out.one_lt.ne' (Nat.dvd_one.1 (hs ▸ Nat.dvd_gcd h dvd_rfl)), ?_⟩
    have e : (extC D ((B.γ₀.g.symm.trans γ.g) : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K)) ∘ₗ (B.gC : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ))) (w • emb4 D y)
        = w • vec D (γ.g y) := by
      show extC D _ (B.gC (w • emb4 D y)) = _
      rw [map_smul, map_smul, gaussCoord_embedding_fourfold, extC_vec]
      congr 2
      simp
    rw [e, mem_std]
    intro i
    obtain ⟨o, ho⟩ := hr i
    have h1 := GlobalTheory.FourthRootStd.lam_mul o hw
    rw [GlobalTheory.FourthRootStd.mem_iff]
    have e2 : D.host.φ₀ (((o : D.host.K) : D.host.E)) = (s : ℂ) * fK D (γ.g y i) := by
      have : fK D (algebraMap (𝓞 D.host.K) D.host.K o) = fK D ((s : D.host.K) * γ.g y i) := by rw [ho]
      rw [map_mul, map_natCast] at this
      exact this
    rw [e2] at h1
    simp only [Pi.smul_apply, smul_eq_mul, vec]
    convert h1 using 1
    ring
  | zero => exact good_zero hp.out _ _
  | add a b _ _ h1 h2 => exact good_add hp.out _ _ h1 h2
  | neg a _ h1 => exact good_neg _ _ h1

theorem relIdx_smul_mem_imgLat_of_mem_stdLat (hsd : IsSelfDual (Formalism.L2.Th1.H.stdH B.L (Ix D)) B.latA)
    (u : (Ix D → ℂ) ≃ₗ[ℂ] (Ix D → ℂ))
    (hiso : IsIsom (Formalism.L2.Th1.H.stdH B.L (Ix D)) (Formalism.L2.Th1.H.stdH B.L (Ix D)) (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ))) :
    ∀ x ∈ stdLat B.L (Ix D),
      ((relIdx (stdLat B.L (Ix D)) (imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA) : ℕ) : ℂ) • x
        ∈ imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA := by
  intro x hx
  have hM : dualLat (Formalism.L2.Th1.H.stdH B.L (Ix D)) (imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA)
      = imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA := SO.selfDual_img _ _ u hiso _ hsd
  have hL : dualLat (Formalism.L2.Th1.H.stdH B.L (Ix D)) (stdLat B.L (Ix D)) = stdLat B.L (Ix D) :=
    _root_.Formalism.L2.Th1.H.StdSelfDual_proof B.L (Ix D)
  have hx' : x ∈ dualLat (Formalism.L2.Th1.H.stdH B.L (Ix D)) (stdLat B.L (Ix D)) := by rw [hL]; exact hx
  have key : ((relIdx (stdLat B.L (Ix D)) (imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA) : ℕ) : ℂ) • x
      ∈ dualLat (Formalism.L2.Th1.H.stdH B.L (Ix D)) (imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA) := by
    intro y hy
    have h1 := PI.UnitaryGroupMassFormula.UnitDetRoot.nsmul_relIdx_mem (stdLat B.L (Ix D)) _ hy
    rw [← Nat.cast_smul_eq_nsmul ℂ] at h1
    obtain ⟨n, hn⟩ := hx' _ h1
    refine ⟨n, ?_⟩
    rw [← hn]
    simp [altE, relIdx, LinearMap.map_smulₛₗ]
  rwa [hM] at key

theorem good_alt_ter (hsd : IsSelfDual (Formalism.L2.Th1.H.stdH B.L (Ix D)) B.latA) (p : ℕ) [hp : Fact p.Prime] (γ : IsoK D) (hγ : γ.AtP p)
    (u : (Ix D → ℂ) ≃ₗ[ℂ] (Ix D → ℂ))
    (hiso : IsIsom (Formalism.L2.Th1.H.stdH B.L (Ix D)) (Formalism.L2.Th1.H.stdH B.L (Ix D)) (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)))
    (h2 : ¬ p ∣ relIdx (stdLat B.L (Ix D)) (imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA)) :
    ∀ x ∈ stdLat B.L (Ix D), Good p (stdLat B.L (Ix D))
      (extC D ((B.γ₀.g.symm.trans γ.g) : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K)) ∘ₗ (u.symm : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ))) x := by
  intro x hx
  obtain ⟨z, ⟨z', hz', hzz⟩, hzx⟩ := relIdx_smul_mem_imgLat_of_mem_stdLat B hsd u hiso x hx
  obtain ⟨s, hs, hmem⟩ := good_lat B p γ hγ z' hz'
  have e1 : B.gC z' = z := hzz
  have e2 : u z = ((relIdx (stdLat B.L (Ix D)) (imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA) : ℕ) : ℂ) • x := hzx
  have e3 : z = ((relIdx (stdLat B.L (Ix D)) (imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA) : ℕ) : ℂ) • u.symm x := by
    rw [← map_smul, ← e2, LinearEquiv.symm_apply_apply]
  refine ⟨s * relIdx (stdLat B.L (Ix D)) (imgLat (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) B.latA),
    fun h => (hp.out.dvd_mul.1 h).elim hs h2, ?_⟩
  have e4 : (extC D ((B.γ₀.g.symm.trans γ.g) : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K)) ∘ₗ (B.gC : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ))) z'
      = extC D ((B.γ₀.g.symm.trans γ.g) : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K)) z := by
    rw [← e1]; rfl
  rw [e4, e3, map_smul, smul_smul, ← Nat.cast_mul] at hmem
  exact hmem

theorem det_compare (hsd : IsSelfDual (Formalism.L2.Th1.H.stdH B.L (Fin 4 × D.what₂.Tau)) B.latA) (p : ℕ) [hp : Fact p.Prime] (ι : ℂ ≃+* ℂ_[p])
    (γ : IsoK D) (hγ : γ.AtP p)
    (u : (Fin 4 × D.what₂.Tau → ℂ) ≃ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ))
    (hiso : IsIsom (Formalism.L2.Th1.H.stdH B.L (Fin 4 × D.what₂.Tau)) (Formalism.L2.Th1.H.stdH B.L (Fin 4 × D.what₂.Tau))
      (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)))
    (h2 : ¬ p ∣ relIdx (stdLat B.L (Fin 4 × D.what₂.Tau)) (imgLat (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)) B.latA)) :
    ‖ι (LinearMap.det (u : (Fin 4 × D.what₂.Tau → ℂ) →ₗ[ℂ] (Fin 4 × D.what₂.Tau → ℂ)))‖
      = ‖ι (D.host.φ₀ ((γ.detRel B.γ₀ : D.host.K) : D.host.E))‖ := by
  obtain ⟨k₁, hk₁, hi₁⟩ := int_det hp.out B.L _ (good_stdLat_comp_extC B p γ hγ u h2)
  obtain ⟨k₂, hk₂, hi₂⟩ := int_det hp.out B.L _ (good_alt_ter B hsd p γ hγ u hiso h2)
  rw [LinearMap.det_comp, det_extC] at hi₁ hi₂
  set f := B.γ₀.g.symm.trans γ.g with hf
  set X := fK D (LinearMap.det (f : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K))) with hX
  set X' := fK D (LinearMap.det (f.symm : (Ix D → D.host.K) →ₗ[D.host.K] (Ix D → D.host.K))) with hX'
  set U := LinearMap.det (u : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) with hU
  set U' := LinearMap.det (u.symm : (Ix D → ℂ) →ₗ[ℂ] (Ix D → ℂ)) with hU'
  have hXX : X * X' = 1 := by rw [hX, hX', ← map_mul, LinearEquiv.det_mul_det_symm, map_one]
  have hUU : U * U' = 1 := LinearEquiv.det_mul_det_symm u
  have hinv : (U * X')⁻¹ = X * U' := by
    apply inv_eq_of_mul_eq_one_right
    calc U * X' * (X * U') = (U * U') * (X * X') := by ring
      _ = 1 := by rw [hXX, hUU, one_mul]
  have hne : U * X' ≠ 0 := by
    intro h0
    have : U * X' * (X * U') = 1 := by
      calc U * X' * (X * U') = (U * U') * (X * X') := by ring
        _ = 1 := by rw [hXX, hUU, one_mul]
    rw [h0, zero_mul] at this
    exact zero_ne_one this
  have hunit : PI.UnitaryGroupMassFormula.UnitDetRoot.IsLUnit p (U * X') := by
    refine ⟨hne, k₁ * k₂, fun h => (hp.out.dvd_mul.1 h).elim hk₁ hk₂, ?_, ?_⟩
    · have : ((k₁ * k₂ : ℕ) : ℂ) * (U * X') = (k₂ : ℂ) * ((k₁ : ℂ) * (U * X')) := by push_cast; ring
      rw [this]
      exact (isIntegral_algebraMap (R := ℤ) (A := ℂ) (x := (k₂ : ℤ))).mul hi₁ |> fun h => by simpa using h
    · rw [hinv]
      have : ((k₁ * k₂ : ℕ) : ℂ) * (X * U') = (k₁ : ℂ) * ((k₂ : ℂ) * (X * U')) := by push_cast; ring
      rw [this]
      exact (isIntegral_algebraMap (R := ℤ) (A := ℂ) (x := (k₁ : ℤ))).mul hi₂ |> fun h => by simpa using h
  have h1 := PI.UnitaryGroupMassFormula.UnitDetRoot.normOne p ι _ hunit
  rw [map_mul, norm_mul] at h1
  have h3 : ‖ι X‖ * ‖ι X'‖ = 1 := by rw [← norm_mul, ← map_mul, hXX, map_one, norm_one]
  have h4 : ‖ι X'‖ ≠ 0 := by
    intro h0
    rw [h0, mul_zero] at h3
    exact zero_ne_one h3
  have h5 : ‖ι U‖ = ‖ι X‖ := mul_right_cancel₀ h4 (h1.trans h3.symm)
  exact h5

end Cmp

end Formalism.L2.Ker.KS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapDet =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapSplit =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapSplit", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.LateralTheory\nimport Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.NormNatCoprime\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.BaseEx\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.KS

open Formalism.MainNotions Formalism.FrobeniusOrbits

variable {D : D7}

theorem detRel_unitary (γ γ₀ : IsoK D) :
    D.host.φ₀ ((γ.detRel γ₀ : D.host.K) : D.host.E) *
      (starRingEnd ℂ) (D.host.φ₀ ((γ.detRel γ₀ : D.host.K) : D.host.E)) = 1 := by
  set T : (Fin 4 × D.what₂.Tau → D.host.K) →ₗ[D.host.K] (Fin 4 × D.what₂.Tau → D.host.K) :=
    ((γ₀.g.symm.trans γ.g : (Fin 4 × D.what₂.Tau → D.host.K) ≃ₗ[D.host.K] _) :
      (Fin 4 × D.what₂.Tau → D.host.K) →ₗ[D.host.K] (Fin 4 × D.what₂.Tau → D.host.K)) with hT
  let f : D.host.K →+* ℂ := D.host.φ₀.comp (algebraMap D.host.K D.host.E)
  have hform : ∀ v v' : Fin 4 × D.what₂.Tau → D.host.K,
      ∑ w, f (T v w) * conj (f (T v' w)) = ∑ w, f (v w) * conj (f (v' w)) := by
    intro v v'
    have h1 := γ.isom (γ₀.g.symm v) (γ₀.g.symm v')
    have h2 := γ₀.isom (γ₀.g.symm v) (γ₀.g.symm v')
    rw [← h2] at h1
    simp only [LinearEquiv.apply_symm_apply] at h1
    have h3 := congrArg D.host.φ₀ h1

    simp only [map_sum, map_mul, _root_.Formalism.BasicNotions.Examples₂.emb_conj] at h3
    exact h3
  set M : Matrix (Fin 4 × D.what₂.Tau) (Fin 4 × D.what₂.Tau) D.host.K := LinearMap.toMatrix' T with hM
  have hdet : f (γ.detRel γ₀) = (f.mapMatrix M).det := by
    rw [← RingHom.map_det, hM, LinearMap.det_toMatrix']
    rfl
  have hone : (f.mapMatrix M).transpose * ((f.mapMatrix M).map (starRingEnd ℂ)) = 1 := by
    ext i j
    rw [Matrix.mul_apply]
    have h := hform (Pi.single i 1) (Pi.single j 1)
    have e1 : ∀ w, (f.mapMatrix M).transpose i w * ((f.mapMatrix M).map (starRingEnd ℂ)) w j =
        f (T (Pi.single i 1) w) * conj (f (T (Pi.single j 1) w)) := by
      intro w
      simp only [Matrix.transpose_apply, Matrix.map_apply, RingHom.mapMatrix_apply, hM, LinearMap.toMatrix'_apply]
    rw [Finset.sum_congr rfl fun w _ => e1 w, h, Matrix.one_apply]
    rw [Finset.sum_eq_single i]
    · by_cases hij : i = j
      · subst hij; simp
      · simp [hij]
    · intro w _ hw
      simp [Pi.single_apply, hw]
    · intro hi; exact absurd (Finset.mem_univ i) hi
  have h4 := congrArg Matrix.det hone
  rw [Matrix.det_mul, Matrix.det_transpose, Matrix.det_one] at h4
  have h5 : ((f.mapMatrix M).map (starRingEnd ℂ)).det = conj ((f.mapMatrix M).det) := by
    rw [RingHom.map_det]; rfl
  rw [h5, ← hdet] at h4
  exact h4

theorem exists_conj (a : 𝓞 D.host.K) :
    ∃ b : 𝓞 D.host.K, ((b : D.host.K) : D.host.E) = D.host.conj ((a : D.host.K) : D.host.E) := by
  have hi : IsIntegral ℤ (D.host.conj ((a : D.host.K) : D.host.E)) := by
    have h1 : IsIntegral ℤ ((a : D.host.K) : D.host.E) :=
      map_isIntegral_int (algebraMap D.host.K D.host.E) (NumberField.RingOfIntegers.isIntegral_coe a)
    exact map_isIntegral_int D.host.conj.toRingEquiv.toRingHom h1
  have hk : IsIntegral ℤ (⟨D.host.conj ((a : D.host.K) : D.host.E), conj_mem_K D.host (a : D.host.K)⟩ : D.host.K) :=
    (isIntegral_algebraMap_iff (A := D.host.K) (B := D.host.E) ).1 hi
  exact ⟨⟨_, hk⟩, rfl⟩

theorem repr_K (x : D.host.K) : ∃ r s : ℚ, (x : D.host.E) =
    algebraMap ℚ D.host.E r + algebraMap ℚ D.host.E s * D.host.sqd := by
  have hsq : D.host.sqd * D.host.sqd = -(D.host.d : D.host.E) := by
    rw [← sq]; exact _root_.Formalism.BasicNotions.Examples₂.bE_sq D.host
  refine K_induction D.host (p := fun x => ∃ r s : ℚ, x =
    algebraMap ℚ D.host.E r + algebraMap ℚ D.host.E s * D.host.sqd) ?_ ?_ ?_ ?_ ?_ x
  · exact ⟨0, 1, by simp⟩
  · intro r; exact ⟨r, 0, by simp⟩
  · rintro _ _ ⟨r, s, rfl⟩ ⟨r', s', rfl⟩
    exact ⟨r + r', s + s', by simp only [map_add (f := _)]; ring⟩
  · rintro _ ⟨r, s, rfl⟩
    by_cases h0 : r = 0 ∧ s = 0
    · exact ⟨0, 0, by rw [h0.1, h0.2]; simp⟩
    · have hd : (0 : ℚ) < D.host.d := by exact_mod_cast d_pos D.host
      have hN : r ^ 2 + (D.host.d : ℚ) * s ^ 2 ≠ 0 := by
        intro h
        apply h0
        have h3 : 0 ≤ (D.host.d : ℚ) * s ^ 2 := mul_nonneg hd.le (sq_nonneg s)
        have h1 : r ^ 2 = 0 := le_antisymm (by linarith) (sq_nonneg r)
        have h2 : (D.host.d : ℚ) * s ^ 2 = 0 := by linarith
        have h4 : s ^ 2 = 0 := (mul_eq_zero.1 h2).resolve_left hd.ne'
        exact ⟨by simpa using h1, by simpa using h4⟩
      refine ⟨r / (r ^ 2 + (D.host.d : ℚ) * s ^ 2), -s / (r ^ 2 + (D.host.d : ℚ) * s ^ 2), ?_⟩
      apply inv_eq_of_mul_eq_one_right
      have q1 : r * (r / (r ^ 2 + (D.host.d : ℚ) * s ^ 2)) +
          s * (-s / (r ^ 2 + (D.host.d : ℚ) * s ^ 2)) * (-(D.host.d : ℚ)) = 1 := by
        field_simp
      have q2 : r * (-s / (r ^ 2 + (D.host.d : ℚ) * s ^ 2)) + s * (r / (r ^ 2 + (D.host.d : ℚ) * s ^ 2)) = 0 := by
        field_simp
        ring
      have h1 := congrArg (algebraMap ℚ D.host.E) q1
      have h2 := congrArg (algebraMap ℚ D.host.E) q2
      simp only [map_add (f := _), map_mul, map_neg, map_natCast, map_one, map_zero] at h1 h2
      linear_combination (algebraMap ℚ D.host.E s * algebraMap ℚ D.host.E (-s / (r ^ 2 + (D.host.d : ℚ) * s ^ 2))) * hsq + h1 +
        D.host.sqd * h2
  · rintro _ _ ⟨r, s, rfl⟩ ⟨r', s', rfl⟩
    refine ⟨r * r' - (D.host.d : ℚ) * (s * s'), r * s' + s * r', ?_⟩
    simp only [map_add (f := _), map_sub, map_mul, map_natCast]
    linear_combination (algebraMap ℚ D.host.E s * algebraMap ℚ D.host.E s') * hsq

theorem norm_int (t t' : 𝓞 D.host.K) (h : ((t' : D.host.K) : D.host.E) = D.host.conj ((t : D.host.K) : D.host.E)) :
    ∃ n : ℤ, t * t' = (n : 𝓞 D.host.K) := by
  have hsq : D.host.sqd * D.host.sqd = -(D.host.d : D.host.E) := by
    rw [← sq]; exact _root_.Formalism.BasicNotions.Examples₂.bE_sq D.host
  obtain ⟨r, s, hrs⟩ := repr_K (t : D.host.K)
  have hc : ((t' : D.host.K) : D.host.E) =
      algebraMap ℚ D.host.E r - algebraMap ℚ D.host.E s * D.host.sqd := by
    rw [h, hrs, map_add (f := _), map_mul, AlgEquiv.commutes, AlgEquiv.commutes, _root_.Formalism.BasicNotions.Examples₂.conj_bE]
    ring
  have hprod : (((t * t' : 𝓞 D.host.K) : D.host.K) : D.host.E) = algebraMap ℚ D.host.E (r ^ 2 + (D.host.d : ℚ) * s ^ 2) := by
    have e : (((t * t' : 𝓞 D.host.K) : D.host.K) : D.host.E) = ((t : D.host.K) : D.host.E) * ((t' : D.host.K) : D.host.E) := by
      push_cast; rfl
    rw [e, hrs, hc]
    simp only [map_add (f := _), map_mul, map_pow, map_natCast]
    linear_combination (-(algebraMap ℚ D.host.E s * algebraMap ℚ D.host.E s)) * hsq
  have hi : IsIntegral ℤ (algebraMap ℚ D.host.E (r ^ 2 + (D.host.d : ℚ) * s ^ 2)) := by
    rw [← hprod]
    exact map_isIntegral_int (algebraMap D.host.K D.host.E) (NumberField.RingOfIntegers.isIntegral_coe (t * t'))
  have hq : IsIntegral ℤ (r ^ 2 + (D.host.d : ℚ) * s ^ 2) :=
    (isIntegral_algebraMap_iff (A := ℚ) (B := D.host.E) ).1 hi
  obtain ⟨n, hn⟩ := IsIntegrallyClosed.isIntegral_iff.1 hq
  refine ⟨n, ?_⟩
  apply NumberField.RingOfIntegers.coe_injective
  apply Subtype.val_injective
  show (((t * t' : 𝓞 D.host.K) : D.host.K) : D.host.E) = (((n : 𝓞 D.host.K) : D.host.K) : D.host.E)
  rw [hprod, ← hn]
  simp

theorem dvd_of_mem (Q : Ideal (𝓞 D.host.K)) (hQ : Q.IsPrime) (p : ℕ) (hp : p.Prime) (hpQ : ((p : ℕ) : 𝓞 D.host.K) ∈ Q)
    (n : ℤ) (hn : (n : 𝓞 D.host.K) ∈ Q) : (p : ℤ) ∣ n := by
  by_contra hnd
  have hc : IsCoprime (p : ℤ) n := ((Nat.prime_iff_prime_int.1 hp).coprime_iff_not_dvd).2 hnd
  obtain ⟨u, v, huv⟩ := hc
  apply hQ.ne_top
  rw [Ideal.eq_top_iff_one]
  have h1 : ((u : 𝓞 D.host.K)) * ((p : ℕ) : 𝓞 D.host.K) + (v : 𝓞 D.host.K) * (n : 𝓞 D.host.K) = 1 := by
    have := congrArg (Int.cast : ℤ → 𝓞 D.host.K) huv
    push_cast at this
    exact this
  rw [← h1]
  exact Q.add_mem (Q.mul_mem_left _ hpQ) (Q.mul_mem_left _ hn)

section Split

variable {γ₀ : IsoK D} (k : KapChoice γ₀) (p : ℕ) (hp : p.Prime) (hs : SplitK D p)

include hp hs

theorem pi_mem : k.pi p ∈ (k.pp p).asIdeal := by
  have h : k.pi p ∈ Ideal.span {k.pi p} := Ideal.mem_span_singleton_self _
  rw [← k.pi_gen p hp hs] at h
  exact Ideal.pow_le_self (classNumber_ne D) h

theorem pi_dichotomy [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) :
    ‖ι (D.host.φ₀ (((k.pi p : 𝓞 D.host.K) : D.host.K) : D.host.E))‖ < 1 ∨
      ‖ι (D.host.φ₀ (D.host.conj (((k.pi p : 𝓞 D.host.K) : D.host.K) : D.host.E)))‖ < 1 := by
  obtain ⟨b, hb⟩ := exists_conj (k.pi p)
  obtain ⟨n, hn⟩ := norm_int (k.pi p) b hb
  have hmem : (n : 𝓞 D.host.K) ∈ (k.pp p).asIdeal := by
    rw [← hn]; exact Ideal.mul_mem_right _ _ (pi_mem k p hp hs)
  have hdvd := dvd_of_mem (k.pp p).asIdeal (k.pp p).isPrime p hp (k.pp_over p hp hs) n hmem
  have hlt : ‖((n : ℤ) : ℂ_[p])‖ < 1 := by
    obtain ⟨m, hm⟩ := hdvd
    have hp1 : ‖((p : ℕ) : ℂ_[p])‖ < 1 := by
      have e : (((p : ℕ) : ℚ_[p]) : ℂ_[p]) = ((p : ℕ) : ℂ_[p]) := by simp
      rw [← e, PadicComplex.norm_extends']
      exact Padic.norm_p_lt_one
    have hm1 : ‖((m : ℤ) : ℂ_[p])‖ ≤ 1 := by
      have h := Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.RestC.norm_le_one_of_int
        (map_isIntegral_int (Int.castRingHom ℂ_[p]) (isIntegral_algebraMap (R := ℤ) (A := ℤ) (x := m)))
      simpa using h
    rw [hm]
    push_cast
    rw [norm_mul]
    exact mul_lt_one_of_nonneg_of_lt_one_left (norm_nonneg _) hp1 hm1
  have hprod : ι (D.host.φ₀ (((k.pi p : 𝓞 D.host.K) : D.host.K) : D.host.E)) *
      ι (D.host.φ₀ (D.host.conj (((k.pi p : 𝓞 D.host.K) : D.host.K) : D.host.E))) = ((n : ℤ) : ℂ_[p]) := by
    rw [← hb, ← map_mul, ← map_mul]
    have e : ((k.pi p : D.host.K) : D.host.E) * ((b : D.host.K) : D.host.E) = (((k.pi p * b : 𝓞 D.host.K) : D.host.K) : D.host.E) := by
      push_cast; rfl
    rw [e, hn]
    simp
  by_contra hcon
  obtain ⟨hc1, hc2⟩ := not_or.1 hcon
  have h3 := mul_le_mul (not_lt.1 hc1) (not_lt.1 hc2) zero_le_one (norm_nonneg _)
  rw [← norm_mul, hprod, one_mul] at h3
  linarith

theorem conj_pi_not_mem (b : 𝓞 D.host.K)
    (hb : ((b : D.host.K) : D.host.E) = D.host.conj (((k.pi p : 𝓞 D.host.K) : D.host.K) : D.host.E)) :
    b ∉ (k.pp p).asIdeal := by
  intro hbm
  have hinj : ∀ x y : 𝓞 D.host.K, ((x : D.host.K) : D.host.E) = ((y : D.host.K) : D.host.E) → x = y := fun x y h =>
    NumberField.RingOfIntegers.coe_injective (Subtype.val_injective h)

  have hstab : ∀ t t' : 𝓞 D.host.K, ((t' : D.host.K) : D.host.E) = D.host.conj ((t : D.host.K) : D.host.E) →
      t ∈ (k.pp p).asIdeal → t' ∈ (k.pp p).asIdeal := by
    intro t t' ht htm
    have h1 : t ^ classNumber D.host.K ∈ Ideal.span {k.pi p} := by
      rw [← k.pi_gen p hp hs]; exact Ideal.pow_mem_pow htm _
    obtain ⟨r, hr⟩ := Ideal.mem_span_singleton'.1 h1
    obtain ⟨r', hr'⟩ := exists_conj r
    have h2 : t' ^ classNumber D.host.K = r' * b := by
      apply hinj
      have e1 : (((t' ^ classNumber D.host.K : 𝓞 D.host.K) : D.host.K) : D.host.E) = ((t' : D.host.K) : D.host.E) ^ classNumber D.host.K := by
        push_cast; rfl
      have e2 : (((r' * b : 𝓞 D.host.K) : D.host.K) : D.host.E) = ((r' : D.host.K) : D.host.E) * ((b : D.host.K) : D.host.E) := by
        push_cast; rfl
      have e3 : (((r * k.pi p : 𝓞 D.host.K) : D.host.K) : D.host.E) = ((r : D.host.K) : D.host.E) * ((k.pi p : D.host.K) : D.host.E) := by
        push_cast; rfl
      have e4 : (((t ^ classNumber D.host.K : 𝓞 D.host.K) : D.host.K) : D.host.E) = ((t : D.host.K) : D.host.E) ^ classNumber D.host.K := by
        push_cast; rfl
      rw [e1, e2, ht, hr', hb, ← map_pow, ← map_mul, ← e3, ← e4, hr]
    have h3 : t' ^ classNumber D.host.K ∈ (k.pp p).asIdeal := by
      rw [h2]; exact Ideal.mul_mem_left _ _ hbm
    exact (k.pp p).isPrime.mem_of_pow_mem _ h3
  obtain ⟨P, hP, hpP, a₁, b₁, hab, ha₁, hb₁⟩ := splitKSplits D p hp hs
  have hle : P ≤ (k.pp p).asIdeal := by
    intro t ht
    obtain ⟨t', ht'⟩ := exists_conj t
    obtain ⟨n, hn⟩ := norm_int t t' ht'
    have hnP : (n : 𝓞 D.host.K) ∈ P := by rw [← hn]; exact Ideal.mul_mem_right _ _ ht
    obtain ⟨m, hm⟩ := dvd_of_mem P hP p hp hpP n hnP
    have hnp : t * t' ∈ (k.pp p).asIdeal := by
      rw [hn, hm]
      push_cast
      exact Ideal.mul_mem_right _ _ (k.pp_over p hp hs)
    rcases (k.pp p).isPrime.mem_or_mem hnp with h | h
    · exact h
    · refine hstab t' t ?_ h
      rw [ht', conj_conj]
  have hPne : P ≠ ⊥ := by
    intro h0
    rw [h0, Ideal.mem_bot] at hpP
    exact hp.ne_zero (by exact_mod_cast hpP)
  have hmax : P.IsMaximal := hP.isMaximal hPne
  have hPeq : P = (k.pp p).asIdeal := hmax.eq_of_le (k.pp p).isPrime.ne_top hle
  apply hb₁
  rw [hPeq]
  exact hstab a₁ b₁ hab.symm (hPeq ▸ ha₁)

end Split

end Formalism.L2.Ker.KS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapSplit =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapVal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapVal", "h": "module\n\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\npublic import Mathlib.RingTheory.Valuation.Integral\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField IsDedekindDomain

namespace Formalism.L2.Ker.KS

section Val

variable {K : Type} [Field K] [NumberField K] {p : ℕ} [Fact p.Prime] (f : K →+* ℂ_[p])

theorem normO_le (a : 𝓞 K) : ‖f (a : K)‖ ≤ 1 := by
  obtain ⟨P, hm, hP⟩ := RingOfIntegers.isIntegral_coe a
  let v : Valuation ℂ_[p] NNReal := NormedField.valuation
  have hv := Valuation.integer.integers v
  have h2 : IsIntegral v.integer (f (a : K)) := by
    refine ⟨P.map (Int.castRingHom v.integer), hm.map _, ?_⟩
    rw [Polynomial.eval₂_map]
    have e1 : (algebraMap v.integer ℂ_[p]).comp (Int.castRingHom v.integer) = f.comp (algebraMap ℤ K) :=
      RingHom.ext_int _ _
    rw [e1, ← Polynomial.hom_eval₂]
    have : Polynomial.eval₂ (algebraMap ℤ K) (a : K) P = 0 := hP
    rw [this, map_zero]
  have := (hv.isIntegral_iff_v_le_one).mp h2
  exact_mod_cast this

variable (𝔭 : HeightOneSpectrum (𝓞 K)) (ϖ : 𝓞 K) (h : ℕ) (hgen : 𝔭.asIdeal ^ h = Ideal.span {ϖ}) (hlt : ‖f (ϖ : K)‖ < 1)

include hgen hlt in
theorem norm_lt_of_mem {t : 𝓞 K} (ht : t ∈ 𝔭.asIdeal) : ‖f (t : K)‖ < 1 := by
  have hmem : t ^ h ∈ Ideal.span {ϖ} := hgen ▸ Ideal.pow_mem_pow ht h
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.mp hmem
  have key : ‖f (t : K)‖ ^ h < 1 := by
    have e : ‖f (t : K)‖ ^ h = ‖f (c : K)‖ * ‖f (ϖ : K)‖ := by
      rw [← norm_pow, ← map_pow, ← norm_mul, ← map_mul]
      congr 2
      exact_mod_cast hc.symm
    rw [e]
    calc ‖f (c : K)‖ * ‖f (ϖ : K)‖ ≤ 1 * ‖f (ϖ : K)‖ :=
          mul_le_mul_of_nonneg_right (normO_le f c) (norm_nonneg _)
      _ < 1 := by rw [one_mul]; exact hlt
  have hh : h ≠ 0 := by
    rintro rfl
    simp at key
  exact (pow_lt_one_iff_of_nonneg (norm_nonneg _) hh).mp key

include hgen hlt in
theorem norm_eq_one_of_not_mem {a : 𝓞 K} (ha : a ∉ 𝔭.asIdeal) : ‖f (a : K)‖ = 1 := by
  obtain ⟨b, i, hi, hbi⟩ := 𝔭.isMaximal.exists_inv ha
  have hsmall : ‖f (i : K)‖ < 1 := norm_lt_of_mem f 𝔭 ϖ h hgen hlt hi
  have hba : ‖f (b : K)‖ * ‖f (a : K)‖ = 1 := by
    rw [← norm_mul, ← map_mul]
    have e : ((b : K) * (a : K)) = 1 + -(i : K) := by
      have : ((b * a + i : 𝓞 K) : K) = 1 := by rw [hbi]; rfl
      push_cast at this
      linear_combination this
    rw [e, map_add (f := _), map_neg, map_one]
    rw [IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm] <;> simp [norm_neg] <;> linarith [hsmall]
  refine le_antisymm (normO_le f a) ?_
  calc (1 : ℝ) = ‖f (b : K)‖ * ‖f (a : K)‖ := hba.symm
    _ ≤ 1 * ‖f (a : K)‖ := mul_le_mul_of_nonneg_right (normO_le f b) (norm_nonneg _)
    _ = ‖f (a : K)‖ := one_mul _

include hgen hlt in
theorem norm_pow_int {a : 𝓞 K} (ha : a ≠ 0) :
    ∃ n : ℕ, 𝔭.intValuation a = WithZero.exp (-(n : ℤ)) ∧ ‖f (a : K)‖ ^ h = ‖f (ϖ : K)‖ ^ n := by
  classical
  obtain ⟨n, hva⟩ : ∃ n : ℕ, 𝔭.intValuation a = WithZero.exp (-(n : ℤ)) := ⟨_, 𝔭.intValuation_if_neg ha⟩
  refine ⟨n, hva, ?_⟩
  have hvah : 𝔭.intValuation (a ^ h) = WithZero.exp (-((n * h : ℕ) : ℤ)) := by
    rw [map_pow, hva, ← WithZero.exp_nsmul]
    congr 1
    push_cast
    ring
  have hmem : a ^ h ∈ Ideal.span {ϖ ^ n} := by
    have := (𝔭.intValuation_le_pow_iff_mem (a ^ h) (n * h)).mp hvah.le
    rwa [mul_comm, pow_mul, hgen, Ideal.span_singleton_pow] at this
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.mp hmem
  have hcn : c ∉ 𝔭.asIdeal := by
    intro hcm
    have h1 : a ^ h ∈ 𝔭.asIdeal ^ (n * h + 1) := by
      rw [← hc, pow_succ', mul_comm n h, pow_mul, hgen, Ideal.span_singleton_pow]
      exact Ideal.mul_mem_mul hcm (Ideal.mem_span_singleton_self _)
    have h2 := (𝔭.intValuation_le_pow_iff_mem _ _).mpr h1
    rw [hvah, WithZero.exp_le_exp] at h2
    push_cast at h2
    omega
  have hc1 := norm_eq_one_of_not_mem f 𝔭 ϖ h hgen hlt hcn
  have e : (a : K) ^ h = (c : K) * (ϖ : K) ^ n := by exact_mod_cast hc.symm
  rw [← norm_pow, ← map_pow f, e, map_mul, norm_mul, hc1, one_mul, map_pow, norm_pow]

include hgen hlt in
theorem norm_pow_eq {x : K} (hx : x ≠ 0) :
    ‖f x‖ ^ h = ‖f (ϖ : K)‖ ^ (-WithZero.log (𝔭.valuation K x)) := by
  obtain ⟨a, b, hb, rfl⟩ := IsFractionRing.div_surjective (A := 𝓞 K) x
  have hb0 : b ≠ 0 := nonZeroDivisors.ne_zero hb
  have ha0 : a ≠ 0 := by
    rintro rfl
    simp at hx
  obtain ⟨n, hva, hna⟩ := norm_pow_int f 𝔭 ϖ h hgen hlt ha0
  obtain ⟨m, hvb, hnb⟩ := norm_pow_int f 𝔭 ϖ h hgen hlt hb0
  have hϖ : ϖ ≠ 0 := by
    rintro rfl
    rw [Ideal.span_singleton_eq_bot.mpr rfl] at hgen
    exact (pow_ne_zero h 𝔭.ne_bot) hgen
  have hfϖ : ‖f (ϖ : K)‖ ≠ 0 := by simpa using hϖ
  have hva' : 𝔭.valuation K (algebraMap (𝓞 K) K a) = WithZero.exp (-(n : ℤ)) := by
    rw [← hva]
    exact HeightOneSpectrum.valuation_of_algebraMap 𝔭 a
  have hvb' : 𝔭.valuation K (algebraMap (𝓞 K) K b) = WithZero.exp (-(m : ℤ)) := by
    rw [← hvb]
    exact HeightOneSpectrum.valuation_of_algebraMap 𝔭 b
  rw [(𝔭.valuation K).map_div, hva', hvb', ← WithZero.exp_sub, WithZero.log_exp, map_div₀, norm_div,
    div_pow]
  change ‖f (a : K)‖ ^ h / ‖f (b : K)‖ ^ h = _
  rw [hna, hnb, show -(-(n : ℤ) - -(m : ℤ)) = (n : ℤ) - m by ring, zpow_sub₀ hfϖ, zpow_natCast,
    zpow_natCast]

end Val

end Formalism.L2.Ker.KS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapVal =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.LiftOneFormsToCompatibleApply =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.LiftOneFormsToCompatibleApply", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapDet\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.NormNatCoprime\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.BaseEx\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapSplit\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapVal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate
open NumberField Formalism.BasicNotions Classical IsDedekindDomain

namespace Formalism.L2.Ker.KS

open Formalism.MainNotions
open Formalism.L2.Th1.H (stdLat pow4 imgLat relIdx IsIsom IsSelfDual)

variable {D : D7}

def f1 {p : ℕ} [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) : D.host.K →+* ℂ_[p] := (ι : ℂ →+* ℂ_[p]).comp (fK D)

def f2 {p : ℕ} [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) : D.host.K →+* ℂ_[p] :=
  ((ι : ℂ →+* ℂ_[p]).comp (starRingEnd ℂ)).comp (fK D)

theorem liftOneFormsToCompatible_apply {p : ℕ} [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) (x : D.host.K) : f1 ι x = ι (D.host.φ₀ (x : D.host.E)) := rfl

theorem conjugate_embedding_apply {p : ℕ} [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) (x : D.host.K) :
    f2 ι x = ι (D.host.φ₀ (D.host.conj (x : D.host.E))) := by
  rw [_root_.Formalism.BasicNotions.Examples₂.emb_conj]; rfl

section Kap

variable {γ₀ : IsoK D} (k : KapChoice γ₀)

theorem pi_unit {p : ℕ} [Fact p.Prime] (f : D.host.K →+* ℂ_[p]) (q : ℕ) (hq : q.Prime) (hs : SplitK D q) (hqp : q ≠ p) :
    ‖f ((k.pi q : 𝓞 D.host.K) : D.host.K)‖ = 1 := by
  have h1 : ((q : ℕ) : 𝓞 D.host.K) ^ classNumber D.host.K ∈ Ideal.span {k.pi q} :=
    k.pi_gen q hq hs ▸ Ideal.pow_mem_pow (k.pp_over q hq hs) _
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 h1
  have h2 : ((c : D.host.K) * ((k.pi q : 𝓞 D.host.K) : D.host.K)) = ((q : ℕ) : D.host.K) ^ classNumber D.host.K := by
    set_option synthInstance.maxHeartbeats 200000 in
    exact_mod_cast congrArg (fun z : 𝓞 D.host.K => (z : D.host.K)) hc
  have h3 : ‖f (c : D.host.K)‖ * ‖f ((k.pi q : 𝓞 D.host.K) : D.host.K)‖ = 1 := by
    rw [← norm_mul, ← map_mul, h2, map_pow, map_natCast, norm_pow,
      Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.RestC.norm_nat_coprime p ((Nat.coprime_primes hq Fact.out).2 hqp), one_pow]
  have h4 := normO_le f c
  have h5 := normO_le f (k.pi q)
  nlinarith [norm_nonneg (f (c : D.host.K)), norm_nonneg (f ((k.pi q : 𝓞 D.host.K) : D.host.K))]

theorem rt_norm_pow {p : ℕ} [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) (q : ℕ) (hq : q.Prime) (hs : SplitK D q) :
    ‖ι (k.rt q)‖ ^ (2 * classNumber D.host.K) =
      ‖f1 ι ((k.pi q : 𝓞 D.host.K) : D.host.K)‖ / ‖f2 ι ((k.pi q : 𝓞 D.host.K) : D.host.K)‖ := by
  rw [← norm_pow, ← map_pow, k.rt_pow q hq hs, map_div₀, norm_div, liftOneFormsToCompatible_apply, conjugate_embedding_apply]

theorem rt_unit {p : ℕ} [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) (q : ℕ) (hq : q.Prime) (hs : SplitK D q) (hqp : q ≠ p) :
    ‖ι (k.rt q)‖ = 1 := by
  have h := rt_norm_pow k ι q hq hs
  rw [pi_unit k _ q hq hs hqp, pi_unit k _ q hq hs hqp, div_one] at h
  exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) (mul_ne_zero two_ne_zero (classNumber_ne D))).1 h

def nm {p : ℕ} [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) : ℂ →* ℝ where
  toFun z := ‖ι z‖
  map_one' := by simp
  map_mul' x y := by simp

theorem supp_finite : (Function.mulSupport fun q : {q : ℕ // q.Prime ∧ SplitK D q} => k.rt q ^ (-(k.yP q))).Finite := by
  have h := (yFinite D γ₀ k).preimage (f := fun q : {q : ℕ // q.Prime ∧ SplitK D q} => (q : ℕ)) Subtype.val_injective.injOn
  refine h.subset fun q hq => ?_
  refine ⟨q.2.1, q.2.2, fun h0 => hq ?_⟩
  show k.rt q ^ (-(k.yP q)) = 1
  rw [h0, neg_zero, zpow_zero]

theorem kappa_norm {p : ℕ} [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) :
    ‖ι k.kappa‖ = ∏ᶠ q : {q : ℕ // q.Prime ∧ SplitK D q}, ‖ι (k.rt q)‖ ^ (-(k.yP q)) := by
  have h := (nm ι).map_finprod (supp_finite k)
  have e : ∀ q : {q : ℕ // q.Prime ∧ SplitK D q}, nm ι (k.rt q ^ (-(k.yP q))) = ‖ι (k.rt q)‖ ^ (-(k.yP q)) := by
    intro q
    show ‖ι (k.rt q ^ (-(k.yP q)))‖ = _
    rw [map_zpow₀, norm_zpow]
  simp only [e] at h
  exact h

theorem kappa_norm_split {p : ℕ} [hp : Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) (hs : SplitK D p) :
    ‖ι k.kappa‖ = ‖ι (k.rt p)‖ ^ (-(k.yP p)) := by
  rw [kappa_norm]
  rw [finprod_eq_single _ (⟨p, hp.out, hs⟩ : {q : ℕ // q.Prime ∧ SplitK D q})]
  intro q hq
  rw [rt_unit k ι q q.2.1 q.2.2 (fun h => hq (Subtype.ext h)), one_zpow]

theorem kappa_norm_nonsplit {p : ℕ} [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) (hs : ¬ SplitK D p) : ‖ι k.kappa‖ = 1 := by
  rw [kappa_norm]
  refine finprod_eq_one_of_forall_eq_one fun q => ?_
  rw [rt_unit k ι q q.2.1 q.2.2 (fun h => hs (h ▸ q.2.2)), one_zpow]

theorem zpow_aux (a X : ℝ) (y : ℤ) (h : ℕ) : ((a ^ (-y)) ^ 2 * X) ^ h = (a ^ (2 * h)) ^ (-y) * X ^ h := by
  rw [mul_pow, ← zpow_natCast (a ^ (-y)) 2, ← zpow_mul, ← zpow_natCast (a ^ _) h, ← zpow_mul, ← zpow_natCast a (2 * h), ← zpow_mul]
  congr 2
  push_cast
  ring

theorem kappa_split {p : ℕ} [hp : Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) (hs : SplitK D p) :
    ‖ι k.kappa‖ ^ 2 * ‖ι (D.host.φ₀ (((k.gaP p).detRel γ₀ : D.host.K) : D.host.E))‖ = 1 := by
  set x : D.host.K := (k.gaP p).detRel γ₀ with hx
  have hU := detRel_unitary (k.gaP p) γ₀
  rw [← hx] at hU
  have hX0 : D.host.φ₀ (x : D.host.E) ≠ 0 := fun h0 => by rw [h0, zero_mul] at hU; exact zero_ne_one hU
  have hx0 : x ≠ 0 := by
    rintro h0
    apply hX0
    rw [h0]; simp
  have hh : classNumber D.host.K ≠ 0 := classNumber_ne D
  obtain ⟨b, hb⟩ := exists_conj (k.pi p)
  have hbn := conj_pi_not_mem k p hp.out hs b hb
  have hgen := k.pi_gen p hp.out hs
  have hrt := rt_norm_pow k ι p hp.out hs
  have hy : k.yP p = -WithZero.log ((k.pp p).valuation D.host.K x) := rfl
  rw [kappa_norm_split k ι hs]
  refine (pow_eq_one_iff_of_nonneg (by positivity) hh).1 ?_
  rw [zpow_aux, hrt]
  rcases pi_dichotomy k p hp.out hs ι with hlt | hlt
  · have hlt1 : ‖f1 ι ((k.pi p : 𝓞 D.host.K) : D.host.K)‖ < 1 := hlt
    have e1 := norm_pow_eq (f1 ι) (k.pp p) (k.pi p) _ hgen hlt1 hx0
    have e2 := norm_eq_one_of_not_mem (f1 ι) (k.pp p) (k.pi p) _ hgen hlt1 hbn
    have e3 : f2 ι ((k.pi p : 𝓞 D.host.K) : D.host.K) = f1 ι (b : D.host.K) := by
      rw [conjugate_embedding_apply, liftOneFormsToCompatible_apply, hb]
    rw [e3, e2, div_one]
    rw [liftOneFormsToCompatible_apply] at e1
    rw [e1, ← hy, ← zpow_add₀ (by
      intro h0
      have := norm_eq_zero.1 h0
      have h1 := (map_eq_zero (f1 ι)).1 this
      exact k.pi_ne_zero p hp.out hs (by
        set_option synthInstance.maxHeartbeats 200000 in
        exact_mod_cast h1))]
    simp
  · have hlt2 : ‖f2 ι ((k.pi p : 𝓞 D.host.K) : D.host.K)‖ < 1 := by rw [conjugate_embedding_apply]; exact hlt
    have e1 := norm_pow_eq (f2 ι) (k.pp p) (k.pi p) _ hgen hlt2 hx0
    have e2 := norm_eq_one_of_not_mem (f2 ι) (k.pp p) (k.pi p) _ hgen hlt2 hbn
    have e3 : f1 ι ((k.pi p : 𝓞 D.host.K) : D.host.K) = f2 ι (b : D.host.K) := by
      rw [conjugate_embedding_apply, liftOneFormsToCompatible_apply, hb, conj_conj]
    have e4 : ‖f2 ι x‖ = ‖ι (D.host.φ₀ (x : D.host.E))‖⁻¹ := by
      have : ‖ι (D.host.φ₀ (x : D.host.E))‖ * ‖f2 ι x‖ = 1 := by
        show _ * ‖ι ((starRingEnd ℂ) (D.host.φ₀ (x : D.host.E)))‖ = 1
        rw [← norm_mul, ← map_mul, hU, map_one, norm_one]
      exact eq_inv_of_mul_eq_one_right this
    have hA0 : ‖f2 ι ((k.pi p : 𝓞 D.host.K) : D.host.K)‖ ≠ 0 := by
      intro h0
      have := norm_eq_zero.1 h0
      have h1 := (map_eq_zero (f2 ι)).1 this
      exact k.pi_ne_zero p hp.out hs (by
        set_option synthInstance.maxHeartbeats 200000 in
        exact_mod_cast h1)
    rw [e3, e2]
    rw [e4, inv_pow, ← hy] at e1
    have e5 : ‖ι (D.host.φ₀ (x : D.host.E))‖ ^ classNumber D.host.K
        = (‖f2 ι ((k.pi p : 𝓞 D.host.K) : D.host.K)‖ ^ (k.yP p))⁻¹ := by rw [← e1, inv_inv]
    rw [e5, one_div, inv_zpow, zpow_neg, inv_inv]
    exact mul_inv_cancel₀ (zpow_ne_zero _ hA0)

end Kap

section Main

variable {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Base D cc δ)

theorem kappaAt_split (hsd : IsSelfDual (Formalism.L2.Th1.H.stdH B.L (Fin 4 × D.what₂.Tau)) B.latA) (p : ℕ) [hp : Fact p.Prime]
    (ι : ℂ ≃+* ℂ_[p]) (hs : SplitK D p) : B.KappaAt p ι := by
  intro u hiso _ h2 _
  rw [det_compare B hsd p ι (B.kc.gaP p) (B.kc.gaP_at p hp.out hs) u hiso h2]
  exact kappa_split B.kc ι hs

end Main

end Formalism.L2.Ker.KS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.LiftOneFormsToCompatibleApply =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapAll =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapAll", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.KerStd\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.PFamily\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.PStdOK\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapNon\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.LiftOneFormsToCompatibleApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.KS

open Formalism.MainNotions
open Formalism.L2.Th1.H (IsSelfDual)

variable {D : D7} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Base D cc δ)

theorem kappaAt_of (hsd : IsSelfDual (Formalism.L2.Th1.H.stdH B.L (Fin 4 × D.what₂.Tau)) B.latA) (hcc : cc ≠ ⊥) (h0 : δ ≠ 0)
    (p : ℕ) [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) : B.KappaAt p ι := by
  by_cases hs : SplitK D p
  · exact kappaAt_split B hsd p ι hs
  · exact kappaAt_nonsplit_of B h0 hcc p hs ι (kappa_norm_nonsplit B.kc ι hs)

theorem kappaAt (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (p : ℕ) [Fact p.Prime] (ι : ℂ ≃+* ℂ_[p]) :
    B.KappaAt p ι :=
  kappaAt_of B (GlobalTheory.FourthRootStd.selfDual B hcc hδ) hcc.1 (Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.base_linkage_nonempty D cc δ B) p ι

theorem kappaAll (D : D7) : KappaAll D :=
  fun _ _ B hcc hδ p _ ι _ => kappaAt B hcc hδ p ι

theorem kappaSplit (D : D7) : KappaSplit D :=
  fun _ _ B hcc hδ p _ ι _ => kappaAt B hcc hδ p ι

end Formalism.L2.Ker.KS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.SelfDualLatticeNorms.KapAll =====
