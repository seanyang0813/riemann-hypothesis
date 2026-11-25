module

public import Mathlib.NumberTheory.Padics.Complex
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion
public import Mathlib.NumberTheory.RamificationInertia.Galois
public import Mathlib.RingTheory.Valuation.Integral
public import Mathlib.NumberTheory.NumberField.Completion.FinitePlace
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.TotallyRealRoots.LeNuIffPowMemPrinc
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Mathlib.Topology.Separation.CompletelyRegular

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.IdealValuations.LocDefY, Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemOfAdjoinTop, Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.IdealValuations.LocComplY

-- ===== clump member: Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.IdealValuations.LocDefY =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.IdealValuations.LocDefY", "h": "module\n\npublic import Mathlib.NumberTheory.Padics.Complex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.TotallyRealRoots.LeNuIffPowMemPrinc\n\n"}
section -- clump:auto
@[expose] public section

open KStar.TotallyRealRoots

namespace KStar.IdealValuations

variable (l : ℕ) [Fact l.Prime]


variable {l} in
noncomputable def complField {E : Type*} [Field E] (j : E →+* PadicAlgCl l) :
    IntermediateField ℚ_[l] (PadicAlgCl l) :=
  IntermediateField.adjoin ℚ_[l] (Set.range j)

end KStar.IdealValuations
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.IdealValuations.LocDefY =====

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemOfAdjoinTop =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemOfAdjoinTop", "h": "module\n\npublic import Mathlib.NumberTheory.Padics.Complex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem UpperTheory.Reformulated.B.Qj1.mem_of_adjoin_top.{u_2} :
    ∀ {l : ℕ}
    [inst : Fact (Nat.Prime l)] {K : Type u_2} [inst_1 : Field K] [inst_2 : CharZero K] {S : Set K},
    Algebra.adjoin ℚ S = ⊤ →
      ∀ (j : K →+* PadicAlgCl l) (F : IntermediateField ℚ_[l] (PadicAlgCl l)),
        (∀ s ∈ S, (j : K → PadicAlgCl l) s ∈ F) → ∀ (x : K), (j : K → PadicAlgCl l) x ∈ F := by
  intro l _ K _ _ S hS j F hF x
  have hx : x ∈ Algebra.adjoin ℚ S := hS ▸ Algebra.mem_top
  induction hx using Algebra.adjoin_induction with
  | mem y hy => exact hF y hy
  | algebraMap q =>
    rw [eq_ratCast, map_ratCast]
    exact SubfieldClass.ratCast_mem F q
  | add y z _ _ hy hz =>
    rw [map_add (f := _)]
    exact add_mem hy hz
  | mul y z _ _ hy hz =>
    rw [map_mul]
    exact mul_mem hy hz
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemOfAdjoinTop =====

-- ===== clump member: Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.IdealValuations.LocComplY =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.IdealValuations.LocComplY", "h": "module\n\npublic import Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.IdealValuations.LocDefY\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemOfAdjoinTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.RamificationInertia.Galois\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\npublic import Mathlib.RingTheory.Valuation.Integral\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.TotallyRealRoots.LeNuIffPowMemPrinc\npublic import Mathlib.NumberTheory.NumberField.Completion.FinitePlace\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain
open KStar.TotallyRealRoots

namespace KStar.IdealValuations

variable {l : ℕ} [Fact l.Prime]

variable {E : Type*} [Field E] [NumberField E]

omit [NumberField E] in
private theorem norm_int_le_one (j : E →+* PadicAlgCl l) (x : 𝓞 E) : ‖j (x : E)‖ ≤ 1 := by
  have h1 : IsIntegral ℤ (j (x : E)) := x.isIntegral_coe.map j.toIntAlgHom
  have h2 : IsIntegral (PadicAlgCl.valued l).v.integer (j (x : E)) := h1.tower_top
  have h3 := (Valuation.integer.integers (PadicAlgCl.valued l).v).mem_of_integral h2
  rw [Valuation.mem_integer_iff, PadicAlgCl.valuation_def] at h3
  exact_mod_cast h3

private def indPrime (j : E →+* PadicAlgCl l) : Ideal (𝓞 E) where
  carrier := {x | ‖j (x : E)‖ < 1}
  zero_mem' := by simp
  add_mem' := fun {a b} ha hb => by
    simp only [Set.mem_ofPred_eq, map_add (f := _)] at *
    exact (IsUltrametricDist.norm_add_le_max _ _).trans_lt (max_lt ha hb)
  smul_mem' := fun c x hx => by
    simp only [Set.mem_ofPred_eq, smul_eq_mul, map_mul, norm_mul] at *
    exact mul_lt_one_of_nonneg_of_lt_one_right (norm_int_le_one j c) (norm_nonneg _) hx

private theorem mem_indPrime (j : E →+* PadicAlgCl l) (x : 𝓞 E) :
    x ∈ indPrime j ↔ ‖j (x : E)‖ < 1 := Iff.rfl

private theorem indPrime_isPrime (j : E →+* PadicAlgCl l) : (indPrime j).IsPrime := by
  refine ⟨?_, fun {x y} h => ?_⟩
  · rw [Ideal.ne_top_iff_one, mem_indPrime]; simp
  · simp only [mem_indPrime, map_mul, norm_mul] at *
    by_contra hc
    push Not at hc
    have := one_le_mul_of_one_le_of_one_le hc.1 hc.2
    linarith

private theorem l_mem_indPrime (j : E →+* PadicAlgCl l) : (l : 𝓞 E) ∈ indPrime j := by
  rw [mem_indPrime]
  have : j ((l : 𝓞 E) : E) = ((l : ℚ_[l]) : PadicAlgCl l) := by
    rw [show ((l : 𝓞 E) : E) = (l : E) from map_natCast (algebraMap (𝓞 E) E) l, map_natCast]
    exact (map_natCast (algebraMap ℚ_[l] (PadicAlgCl l)) l).symm
  rw [this, PadicAlgCl.norm_extends]
  exact Padic.norm_p_lt_one

private theorem liesOver_of_mem {K : Type*} [Field K] [NumberField K] (P : Ideal (𝓞 K))
    [hP : P.IsPrime] (h : (l : 𝓞 K) ∈ P) : P.LiesOver (Ideal.span {(l : ℤ)}) := by
  have hl : Prime (l : ℤ) := Nat.prime_iff_prime_int.mp Fact.out
  have hm : (Ideal.span {(l : ℤ)}).IsMaximal :=
    ((Ideal.span_singleton_prime hl.ne_zero).mpr hl).isMaximal (by simpa using hl.ne_zero)
  refine ⟨hm.eq_of_le (Ideal.comap_isPrime _ _).ne_top ?_⟩
  rw [Ideal.span_singleton_le_iff_mem, Ideal.under, Ideal.mem_comap]
  simpa using h

private theorem finiteDimensional_complField (j : E →+* PadicAlgCl l) :
    FiniteDimensional ℚ_[l] (complField j) := by
  obtain ⟨α, hα⟩ := Field.exists_primitive_element ℚ E
  have hα' : Algebra.adjoin ℚ {α} = ⊤ := by
    rw [← IntermediateField.adjoin_simple_toSubalgebra_of_isAlgebraic
      (Algebra.IsAlgebraic.isAlgebraic α), hα]
    rfl
  have h : complField j = IntermediateField.adjoin ℚ_[l] {j α} := by
    apply le_antisymm
    · rw [complField, IntermediateField.adjoin_le_iff]
      rintro _ ⟨x, rfl⟩
      refine _root_.UpperTheory.Reformulated.B.Qj1.mem_of_adjoin_top hα' j _ ?_ x
      rintro _ rfl
      exact IntermediateField.mem_adjoin_simple_self _ _
    · exact IntermediateField.adjoin.mono _ _ _ (Set.singleton_subset_iff.mpr ⟨α, rfl⟩)
  rw [h]
  exact IntermediateField.adjoin.finiteDimensional (Algebra.IsIntegral.isIntegral _)

theorem exists_embedding_place (v : HeightOneSpectrum (𝓞 E)) (hv : (l : 𝓞 E) ∈ v.asIdeal) :
    ∃ j : E →+* PadicAlgCl l, ∀ x : 𝓞 E, ‖j (x : E)‖ < 1 ↔ x ∈ v.asIdeal := by
  let L := IntermediateField.normalClosure ℚ E (AlgebraicClosure E)
  have : Algebra.IsAlgebraic ℚ (AlgebraicClosure E) :=
    Algebra.IsAlgebraic.trans ℚ E (AlgebraicClosure E)
  have : IsAlgClosure ℚ (AlgebraicClosure E) := ⟨inferInstance, inferInstance⟩
  have : IsGalois ℚ (AlgebraicClosure E) := IsAlgClosure.isGalois ℚ _
  have : IsGalois ℚ L := IsGalois.normalClosure ℚ E (AlgebraicClosure E)
  have : NumberField L := {}
  let j0 : L →ₐ[ℚ] PadicAlgCl l := (by
    refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
    solve_by_elim* (maxDepth := 2) only [*,
      @_root_.DivisionSemiring.to_moduleIsTorsionFree,
      @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
  have := v.isPrime
  obtain ⟨Q, hQ, hQv⟩ := Ideal.exists_ideal_over_prime_of_isIntegral_of_isDomain (S := 𝓞 L)
    v.asIdeal (by
      rw [(RingHom.injective_iff_ker_eq_bot (algebraMap (𝓞 E) (𝓞 L))).mp
        (FaithfulSMul.algebraMap_injective (𝓞 E) (𝓞 L))]
      exact bot_le)
  have := indPrime_isPrime j0.toRingHom
  have := liesOver_of_mem (l := l) _ (l_mem_indPrime j0.toRingHom)
  have := liesOver_of_mem (l := l) Q (by
    rw [← hQv, Ideal.mem_comap] at hv
    simpa using hv)
  obtain ⟨σ, hσ⟩ := Ideal.exists_smul_eq_of_isGaloisGroup (Ideal.span {(l : ℤ)})
    Q (indPrime j0.toRingHom) Gal(L/ℚ)
  refine ⟨j0.toRingHom.comp ((σ : L →+* L).comp (algebraMap E L)), fun x => ?_⟩
  rw [← hQv, Ideal.mem_comap, ← Ideal.smul_mem_pointwise_smul_iff (a := σ), hσ, mem_indPrime]
  rfl

private theorem lt_one_iff_of_place (v : HeightOneSpectrum (𝓞 E)) {A B : Type*}
    [NormedField A] [NormedField B] (i : E →+* A) (j : E →+* B)
    (hi1 : ∀ x : 𝓞 E, ‖i (x : E)‖ ≤ 1) (hj1 : ∀ x : 𝓞 E, ‖j (x : E)‖ ≤ 1)
    (hi : ∀ x : 𝓞 E, ‖i (x : E)‖ < 1 ↔ x ∈ v.asIdeal)
    (hj : ∀ x : 𝓞 E, ‖j (x : E)‖ < 1 ↔ x ∈ v.asIdeal) (x : E) (hx : ‖i x‖ < 1) :
    ‖j x‖ < 1 := by
  obtain ⟨n, ⟨d, hd⟩, h⟩ := v.exists_primeCompl_mul_eq_or_mul_eq x
  have hid : ‖i (d : E)‖ = 1 := le_antisymm (hi1 d) (not_lt.mp fun h => hd ((hi d).mp h))
  have hjd : ‖j (d : E)‖ = 1 := le_antisymm (hj1 d) (not_lt.mp fun h => hd ((hj d).mp h))
  rcases h with h | h
  · have h : x * (d : E) = (n : E) := h
    have h1 : ‖i x‖ = ‖i (n : E)‖ := by rw [← h, map_mul, norm_mul, hid, mul_one]
    have h2 : ‖j x‖ = ‖j (n : E)‖ := by rw [← h, map_mul, norm_mul, hjd, mul_one]
    rw [h2, hj, ← hi, ← h1]
    exact hx
  · have h : x * (n : E) = (d : E) := h
    rw [← h, map_mul, norm_mul] at hid
    exact absurd hid (mul_lt_one_of_nonneg_of_lt_one_left (norm_nonneg _) hx (hi1 n)).ne

omit [NumberField E] in
private theorem eps_delta_of_place {A B : Type*}
    [NormedField A] [NormedField B] (i : E →+* A) (j : E →+* B)
    (h : ∀ x, ‖i x‖ < 1 → ‖j x‖ < 1) (p : E) (hp : p ≠ 0) (hp1 : ‖j p‖ < 1) (ε : ℝ) (hε : 0 < ε) :
    ∃ δ > 0, ∀ a b : E, dist (i a) (i b) < δ → dist (j a) (j b) < ε := by
  obtain ⟨n, hn⟩ := exists_pow_lt_of_lt_one hε hp1
  have hpn : p ^ n ≠ 0 := pow_ne_zero _ hp
  have hi : 0 < ‖i (p ^ n)‖ := norm_pos_iff.mpr ((map_ne_zero i).mpr hpn)
  have hj : 0 < ‖j (p ^ n)‖ := norm_pos_iff.mpr ((map_ne_zero j).mpr hpn)
  refine ⟨_, hi, fun a b hab => ?_⟩
  rw [dist_eq_norm, ← map_sub] at hab ⊢
  have := h ((a - b) / p ^ n) (by rwa [map_div₀, norm_div, div_lt_one hi])
  rw [map_div₀, norm_div, div_lt_one hj, map_pow, norm_pow] at this
  exact this.trans hn

theorem exists_completion_map (v : HeightOneSpectrum (𝓞 E)) (j : E →+* PadicAlgCl l)
    (hj : ∀ x : 𝓞 E, ‖j (x : E)‖ < 1 ↔ x ∈ v.asIdeal) :
    ∃ J : v.adicCompletion E →+* PadicAlgCl l, Continuous J ∧
      (∀ x : E, J (algebraMap E _ x) = j x) ∧ J.fieldRange = (complField j).toSubfield := by
  let i : E →+* v.adicCompletion E := algebraMap E _
  have hi1 : ∀ x : 𝓞 E, ‖i (x : E)‖ ≤ 1 := fun x => FinitePlace.norm_le_one E v x
  have hi : ∀ x : 𝓞 E, ‖i (x : E)‖ < 1 ↔ x ∈ v.asIdeal :=
    fun x => FinitePlace.norm_lt_one_iff_mem E v x
  obtain ⟨p, hpv, hp0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot v.ne_bot
  have hp0' : (p : E) ≠ 0 := by exact_mod_cast hp0
  have := finiteDimensional_complField j
  have : CompleteSpace (complField j) := FiniteDimensional.complete ℚ_[l] _
  let f : E →+* complField j :=
    j.codRestrict (complField j) fun x => IntermediateField.subset_adjoin _ _ ⟨x, rfl⟩
  let : NormedField E := NormedField.induced E _ i i.injective
  have hiso : Isometry i := fun _ _ => rfl
  have hf : IsUniformInducing f := by
    rw [Metric.isUniformInducing_iff, Metric.uniformContinuous_iff]
    constructor
    · intro ε hε
      obtain ⟨δ, hδ, h⟩ := eps_delta_of_place i j
        (lt_one_iff_of_place v i j hi1 (norm_int_le_one j) hi hj) p hp0' ((hj p).mpr hpv) ε hε
      exact ⟨δ, hδ, fun {a b} hab => h a b hab⟩
    · intro ε hε
      obtain ⟨δ, hδ, h⟩ := eps_delta_of_place j i
        (lt_one_iff_of_place v j i (norm_int_le_one j) hi1 hj hi) p hp0' ((hi p).mpr hpv) ε hε
      exact ⟨δ, hδ, fun {a b} hab => h a b hab⟩
  have hd : DenseRange i := v.denseRange_algebraMap E
  let J' : v.adicCompletion E →+* complField j :=
    IsDenseInducing.extendRingHom hiso.isUniformInducing hd hf.uniformContinuous
  have hJ' : IsUniformInducing J' :=
    (hiso.isUniformInducing.isDenseInducing hd).isUniformInducing_extend hiso.isUniformInducing hf
  have hJi : ∀ x, J' (i x) = f x := fun x =>
    (hiso.isUniformInducing.isDenseInducing hd).extend_eq hf.uniformContinuous.continuous x
  let J : v.adicCompletion E →+* PadicAlgCl l := (complField j).subtype.comp J'
  have hJ : IsUniformInducing J := isUniformEmbedding_subtype_val.isUniformInducing.comp hJ'
  have hJj : ∀ x : E, J (algebraMap E _ x) = j x := fun x => congrArg Subtype.val (hJi x)
  refine ⟨J, hJ.uniformContinuous.continuous, hJj, le_antisymm ?_ ?_⟩
  · rintro _ ⟨x, rfl⟩
    exact (J' x).2
  · have hcl : IsClosed (J.fieldRange : Set (PadicAlgCl l)) := hJ.isComplete_range.isClosed
    rw [complField, IntermediateField.adjoin_toSubfield, Subfield.closure_le]
    rintro _ (⟨q, rfl⟩ | ⟨x, rfl⟩)
    · refine (Padic.denseRange_ratCast l).induction_on q
        (hcl.preimage (continuous_algebraMap _ _)) fun r => ?_
      rw [map_ratCast]
      exact SubfieldClass.ratCast_mem J.fieldRange r
    · exact ⟨_, hJj x⟩

end KStar.IdealValuations
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.IdealValuations.LocComplY =====
