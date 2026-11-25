module

public import Formalism.PeriodIntegrals.BallQuotLen
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RamificationRankSum.Points
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiBallFromAlt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.GradedCoef
public import Formalism.PeriodIntegrals.LengthPoleInLift
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AssembleAlt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.FiltOk
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.LeOrdASmulOsK
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Vanish
public import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.FinitePtsOfCurve
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorSpanGeneratorsAlt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.Column
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorHasse
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseOrderBound.CompositionalInverseSymm
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorRep
public import Formalism.PeriodIntegrals.FiltLenF
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.FiltLenFMain
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SumAntidiagonalTuple
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.RestrictedDerivativeLinear
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseJacobsonPowers.SfrMulMemJHfr
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BallQuotientLength.LengthBallQuotientEqSumMulFdeg, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.BallQuot, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AALeAAp, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Assemble, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.ColDeriv, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.UnitCols, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Closed, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.LiftMul, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiBallFrom, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiLenHolds, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Taylor, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.StepsOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PoleLengthBound

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BallQuotientLength.LengthBallQuotientEqSumMulFdeg =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BallQuotientLength.LengthBallQuotientEqSumMulFdeg", "h": "module\n\npublic import Formalism.PeriodIntegrals.BallQuotLen\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RamificationRankSum.Points\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.UnitaryGroupMassFormula.BallQuotLen

open Formalism.MainNotions.Gaps.EtaleWeightGaps IsLocalRing

section Gen

variable {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
variable {A : Type*} [CommRing A] [Algebra O A] {ϖ : O}

private theorem enat_map_natCast_int_eq_top_iff (a : ℕ∞) : a.map (Nat.cast : ℕ → ℤ) = ⊤ ↔ a = ⊤ := by
  cases a <;> simp

theorem eq_zero_of_ord_top [∀ ζ : Pts O A, IsDVRAt ζ] (h : IsUnif (A := A) ϖ) {x : A}
    (hx : ∀ ζ : Pts O A, ord ϖ ζ x = ⊤) : x = 0 := by
  obtain ⟨n, hn⟩ := h.denom x
  have hy : (⟨ϖ ^ n • x, hn⟩ : ↥(As O A)) = 0 := by
    refine eq_zero_of_localization _ (fun J hJ => ?_)
    have hv : vL (⟨J, hJ⟩ : Pts O A) ⟨ϖ ^ n • x, hn⟩ = ⊤ := by
      have := hx ⟨J, hJ⟩
      rw [ord_eq (ζ := (⟨J, hJ⟩ : Pts O A)) h hn, ordAt, WithTop.add_eq_top] at this
      rcases this with h1 | h1
      · exact (enat_map_natCast_int_eq_top_iff _).mp h1
      · exact absurd h1 WithTop.coe_ne_top
    exact (vL_eq_top_iff (ζ := (⟨J, hJ⟩ : Pts O A)) _).mp hv
  have h0 : ϖ ^ n • x = 0 := congrArg Subtype.val hy
  rw [Algebra.smul_def, map_pow] at h0
  exact (h.isUnit.pow n).mul_right_eq_zero.mp h0

theorem isUnit_of_ord_ne_top (K : Type*) [Field K] [Algebra K A] [FiniteDimensional K A]
    [∀ ζ : Pts O A, IsDVRAt ζ] (h : IsUnif (A := A) ϖ) {x : A} (hx : ∀ ζ : Pts O A, ord ϖ ζ x ≠ ⊤) :
    IsUnit x := by
  have hnz : x ∈ nonZeroDivisors A := by
    rw [mem_nonZeroDivisors_iff_right]
    intro y hy
    refine eq_zero_of_ord_top h (fun ζ => ?_)
    have := ord_mul (ζ := ζ) h x y
    rw [mul_comm x y, hy, ord_zero (ζ := ζ) h] at this
    rcases WithTop.add_eq_top.mp this.symm with h1 | h1
    · exact absurd h1 (hx ζ)
    · exact h1
  haveI : IsArtinianRing A := IsArtinianRing.of_finite K A
  exact IsArtinianRing.isUnit_of_mem_nonZeroDivisors hnz

theorem exists_param [Finite (Pts O A)] (ζ₀ : Pts O A) [IsDVRAt ζ₀] :
    ∃ t : ↥(As O A), vL ζ₀ t = 1 ∧ ∀ ζ : Pts O A, ζ ≠ ζ₀ → t ∉ ζ.asIdeal := by
  classical
  haveI := Fintype.ofFinite (Pts O A)
  haveI : IsDomain (Loc ζ₀) := IsDVRAt.isDomain
  haveI : IsDiscreteValuationRing (Loc ζ₀) := IsDVRAt.isDVR
  obtain ⟨π, hπ⟩ := IsDiscreteValuationRing.exists_irreducible (Loc ζ₀)
  obtain ⟨⟨a, s⟩, has⟩ := IsLocalization.mk'_surjective ζ₀.asIdeal.primeCompl π
  have hva : vL ζ₀ a = 1 := by
    rw [vL_eq_addVal]
    have e1 : algebraMap _ (Loc ζ₀) a = π * algebraMap _ (Loc ζ₀) (s : ↥(As O A)) := by
      rw [← has, IsLocalization.mk'_spec]
    obtain ⟨u, hu⟩ := IsLocalization.map_units (Loc ζ₀) s
    rw [e1, IsDiscreteValuationRing.addVal_mul, IsDiscreteValuationRing.addVal_uniformizer hπ, ← hu,
      IsDiscreteValuationRing.addVal_eq_zero_of_unit, add_zero]
  have h1 : ∀ x ∈ ζ₀.asIdeal, 1 ≤ vL ζ₀ x := by
    intro x hx
    rw [ENat.one_le_iff_ne_zero]
    intro h0
    exact ((vL_eq_zero_iff (ζ := ζ₀) x).mp h0) hx
  have h2 : ∀ x ∈ ζ₀.asIdeal ^ 2, 2 ≤ vL ζ₀ x := by
    intro x hx
    rw [sq] at hx
    refine Submodule.mul_induction_on hx (fun p hp q hq => ?_) (fun x y hx hy => ?_)
    · rw [vL_mul]
      calc (2 : ℕ∞) = 1 + 1 := by norm_num
        _ ≤ _ := add_le_add (h1 p hp) (h1 q hq)
    · exact le_trans (le_min hx hy) (vL_add (ζ := ζ₀) x y)
  have hcop : ζ₀.asIdeal ^ 2 ⊔ ⨅ ζ ∈ (Finset.univ.filter (· ≠ ζ₀)), ζ.asIdeal = ⊤ := by
    refine Ideal.sup_iInf_eq_top (fun ζ hζ => ?_)
    have hne : ζ₀.asIdeal ≠ ζ.asIdeal := by
      intro heq
      exact (Finset.mem_filter.mp hζ).2 (MaximalSpectrum.ext heq).symm
    have hc : IsCoprime ζ₀.asIdeal ζ.asIdeal :=
      Ideal.isCoprime_iff_sup_eq.mpr (ζ₀.isMaximal.coprime_of_ne ζ.isMaximal hne)
    exact Ideal.isCoprime_iff_sup_eq.mp (hc.pow_left (m := 2))
  have hone : (1 : ↥(As O A)) ∈ ζ₀.asIdeal ^ 2 ⊔ ⨅ ζ ∈ (Finset.univ.filter (· ≠ ζ₀)), ζ.asIdeal := by
    rw [hcop]
    exact Submodule.mem_top
  obtain ⟨i, hi, j, hj, hij⟩ := Submodule.mem_sup.mp hone
  have hjmem : ∀ ζ : Pts O A, ζ ≠ ζ₀ → j ∈ ζ.asIdeal := by
    intro ζ hz
    simp only [Submodule.mem_iInf] at hj
    exact hj ζ (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hz⟩)
  refine ⟨a * j + i, ?_, ?_⟩
  · have hj' : j = 1 - i := eq_sub_of_add_eq' hij
    have ht : a * j + i = a + i * (1 - a) := by rw [hj']; ring
    have hr : 2 ≤ vL ζ₀ (i * (1 - a)) := by
      rw [vL_mul]
      exact le_trans (h2 i hi) le_self_add
    have hlt : vL ζ₀ a < vL ζ₀ (i * (1 - a)) := by
      rw [hva]
      exact lt_of_lt_of_le (by norm_num) hr
    rw [ht, vL_eq_addVal, map_add (f := _), AddValuation.map_add_of_distinct_val, ← vL_eq_addVal,
      ← vL_eq_addVal, min_eq_left hlt.le, hva]
    rw [← vL_eq_addVal, ← vL_eq_addVal]
    exact hlt.ne
  · intro ζ hz ht
    have hi' : i ∈ ζ.asIdeal := by
      have := ζ.asIdeal.sub_mem ht (ζ.asIdeal.mul_mem_left a (hjmem ζ hz))
      simpa using this
    have : (1 : ↥(As O A)) ∈ ζ.asIdeal := by
      rw [← hij]
      exact ζ.asIdeal.add_mem hi' (hjmem ζ hz)
    exact ζ.isMaximal.ne_top ((Ideal.eq_top_iff_one _).mpr this)


open scoped Classical in
open Classical in
theorem exists_unit_param (K : Type*) [Field K] [Algebra K A] [FiniteDimensional K A]
    [Finite (Pts O A)] [∀ ζ : Pts O A, IsDVRAt ζ] (h : IsUnif (A := A) ϖ) (ζ₀ : Pts O A) :
    ∃ t : Aˣ, ∀ ζ : Pts O A, ord ϖ ζ (t : A) = (((if ζ = ζ₀ then 1 else 0 : ℤ)) : WithTop ℤ) := by
  obtain ⟨t, ht1, ht2⟩ := exists_param ζ₀
  have hord : ∀ ζ : Pts O A, ord ϖ ζ (t : A) = (((if ζ = ζ₀ then 1 else 0 : ℤ)) : WithTop ℤ) := by
    intro ζ
    rw [ord_of_mem (ζ := ζ) h t.2]
    split_ifs with hz
    · subst hz
      rw [show (⟨(t : A), t.2⟩ : ↥(As O A)) = t from rfl, ht1]
      rfl
    · rw [show (⟨(t : A), t.2⟩ : ↥(As O A)) = t from rfl, (vL_eq_zero_iff (ζ := ζ) t).mpr (ht2 ζ hz)]
      rfl
  have hu : IsUnit (t : A) :=
    isUnit_of_ord_ne_top K h (fun ζ => by rw [hord]; exact WithTop.coe_ne_top)
  exact ⟨hu.unit, fun ζ => by rw [hu.unit_spec]; exact hord ζ⟩

private theorem ordZ_one (h : IsUnif (A := A) ϖ) (ζ : Pts O A) [IsDVRAt ζ] : ordZ ϖ ζ (1 : A) = 0 := by
  have := coe_ordZ (ζ := ζ) h (one_mem (nonZeroDivisors A))
  rw [ord_one (ζ := ζ) h] at this
  exact_mod_cast this

private theorem ordZ_units_mul (h : IsUnif (A := A) ϖ) (ζ : Pts O A) [IsDVRAt ζ] (v w : Aˣ) :
    ordZ ϖ ζ ((v : A) * w) = ordZ ϖ ζ v + ordZ ϖ ζ w := by
  have hv := coe_ordZ (ζ := ζ) h v.isUnit.mem_nonZeroDivisors
  have hw := coe_ordZ (ζ := ζ) h w.isUnit.mem_nonZeroDivisors
  have hvw := coe_ordZ (ζ := ζ) h (v * w).isUnit.mem_nonZeroDivisors
  rw [Units.val_mul, ord_mul (ζ := ζ) h, ← hv, ← hw] at hvw
  exact_mod_cast hvw

theorem exists_unit_ord (K : Type*) [Field K] [Algebra K A] [FiniteDimensional K A]
    [Finite (Pts O A)] [∀ ζ : Pts O A, IsDVRAt ζ] (h : IsUnif (A := A) ϖ) (d : Pts O A → ℤ) :
    ∃ u : Aˣ, ∀ ζ : Pts O A, ord ϖ ζ (u : A) = ((d ζ : ℤ) : WithTop ℤ) := by
  classical
  haveI := Fintype.ofFinite (Pts O A)
  choose t ht using exists_unit_param K h
  let φ : Pts O A → Aˣ →* Multiplicative ℤ := fun ζ =>
    { toFun := fun v => Multiplicative.ofAdd (ordZ ϖ ζ (v : A))
      map_one' := by simp only [Units.val_one, ordZ_one h ζ]; rfl
      map_mul' := fun v w => by simp only [Units.val_mul, ordZ_units_mul h ζ v w]; rfl }
  refine ⟨∏ ζ', t ζ' ^ d ζ', fun ζ => ?_⟩
  have e2 : ∀ ζ', Multiplicative.toAdd (φ ζ (t ζ')) = if ζ = ζ' then 1 else 0 := by
    intro ζ'
    show ordZ ϖ ζ (t ζ' : A) = _
    have := coe_ordZ (ζ := ζ) h (t ζ').isUnit.mem_nonZeroDivisors
    rw [ht ζ' ζ] at this
    exact_mod_cast this
  have hz : ordZ ϖ ζ ((∏ ζ', t ζ' ^ d ζ' : Aˣ) : A) = d ζ := by
    have e1 : Multiplicative.toAdd (φ ζ (∏ ζ', t ζ' ^ d ζ')) =
        ordZ ϖ ζ ((∏ ζ', t ζ' ^ d ζ' : Aˣ) : A) := rfl
    rw [← e1, map_prod, toAdd_prod]
    simp only [map_zpow, toAdd_zpow, e2, smul_eq_mul, mul_ite, mul_one, mul_zero,
      Finset.sum_ite_eq, Finset.mem_univ, if_true]
  rw [← coe_ordZ (ζ := ζ) h (Units.isUnit _).mem_nonZeroDivisors, hz]

theorem ord_sub_one_nonneg_iff (h : IsUnif (A := A) ϖ) (ζ : Pts O A) [IsDVRAt ζ] (x : ↥(As O A)) :
    0 ≤ ord ϖ ζ (x : A) + ((-1 : ℤ) : WithTop ℤ) ↔ x ∈ ζ.asIdeal := by
  rw [ord_of_mem (ζ := ζ) h x.2]
  have e := vL_eq_zero_iff (ζ := ζ) x
  rw [← not_not (a := x ∈ ζ.asIdeal), ← e]
  show 0 ≤ (vL ζ x).map (Nat.cast : ℕ → ℤ) + ((-1 : ℤ) : WithTop ℤ) ↔ ¬ vL ζ x = 0
  generalize vL ζ x = v
  induction v using ENat.recTopCoe with
  | top => simp
  | coe n =>
    simp only [ENat.map_coe, ← WithTop.coe_add, WithTop.coe_nonneg, Nat.cast_eq_zero]
    constructor <;> intro hh <;> omega

theorem length_quot_add {R M : Type*} [Ring R] [AddCommGroup M] [Module R M]
    {N P Q : Submodule R M} (h1 : N ≤ P) (h2 : P ≤ Q) :
    Module.length R (↥Q ⧸ N.comap Q.subtype) =
      Module.length R (↥P ⧸ N.comap P.subtype) + Module.length R (↥Q ⧸ P.comap Q.subtype) := by
  have hle1 : N.comap P.subtype ≤ (N.comap Q.subtype).comap (Submodule.inclusion h2) := by
    intro x hx
    simpa using hx
  have hle2 : N.comap Q.subtype ≤ (P.comap Q.subtype).comap LinearMap.id := by
    intro x hx
    exact h1 hx
  refine Module.length_eq_add_of_exact
    (Submodule.mapQ _ _ (Submodule.inclusion h2) hle1) (Submodule.mapQ _ _ LinearMap.id hle2) ?_ ?_ ?_
  · intro x y hxy
    obtain ⟨x, rfl⟩ := Submodule.mkQ_surjective _ x
    obtain ⟨y, rfl⟩ := Submodule.mkQ_surjective _ y
    simp only [Submodule.mkQ_apply, Submodule.mapQ_apply, Submodule.Quotient.eq] at hxy ⊢
    simpa using hxy
  · intro y
    obtain ⟨q, rfl⟩ := Submodule.mkQ_surjective _ y
    exact ⟨Submodule.Quotient.mk q, by simp⟩
  · intro y
    obtain ⟨q, rfl⟩ := Submodule.mkQ_surjective _ y
    simp only [Submodule.mkQ_apply, Submodule.mapQ_apply, LinearMap.id_apply, Set.mem_range,
      Submodule.Quotient.mk_eq_zero, Submodule.mem_comap, Submodule.subtype_apply]
    constructor
    · intro hq
      refine ⟨Submodule.Quotient.mk ⟨q, hq⟩, ?_⟩
      rw [Submodule.mapQ_apply]
      rfl
    · rintro ⟨x, hx⟩
      obtain ⟨p, rfl⟩ := Submodule.mkQ_surjective _ x
      rw [Submodule.mkQ_apply, Submodule.mapQ_apply, Submodule.Quotient.eq] at hx
      have h3 := h1 hx
      simp only [Submodule.subtype_apply, Submodule.coe_sub,
        Submodule.coe_inclusion] at h3
      have h4 := P.sub_mem p.2 h3
      simpa using h4

theorem length_zero_of_le {R M : Type*} [Ring R] [AddCommGroup M] [Module R M]
    {N P : Submodule R M} (h : P ≤ N) : Module.length R (↥P ⧸ N.comap P.subtype) = 0 := by
  rw [Module.length_eq_zero_iff]
  exact Submodule.Quotient.subsingleton_iff.mpr (by
    rw [eq_top_iff]
    intro x _
    exact h x.2)



theorem length_residue (hfin : Module.Finite O ↥(As O A)) (ζ : Pts O A) :
    Module.length O (↥(As O A) ⧸ ζ.asIdeal) = (fdeg ζ : ℕ∞) := by
  classical
  haveI : ζ.asIdeal.IsMaximal := ζ.isMaximal
  haveI : ζ.asIdeal.LiesOver (IsLocalRing.maximalIdeal O) := ⟨(comap_eq_maximalIdeal ζ).symm⟩
  have hf : fdeg ζ = Module.finrank (O ⧸ IsLocalRing.maximalIdeal O) (↥(As O A) ⧸ ζ.asIdeal) := by
    rw [fdeg_eq_inertiaDeg, Ideal.inertiaDeg_eq_of_isMaximal (IsLocalRing.maximalIdeal O) ζ.asIdeal]
  letI : Field (O ⧸ IsLocalRing.maximalIdeal O) := Ideal.Quotient.field _
  haveI : Module.Finite O (↥(As O A) ⧸ ζ.asIdeal) :=
    Module.Finite.of_surjective ((ζ.asIdeal.restrictScalars O).mkQ) (Submodule.mkQ_surjective _)
  haveI : Module.Finite (O ⧸ IsLocalRing.maximalIdeal O) (↥(As O A) ⧸ ζ.asIdeal) :=
    Module.Finite.of_restrictScalars_finite O _ _
  haveI : Module.Free (O ⧸ IsLocalRing.maximalIdeal O) (↥(As O A) ⧸ ζ.asIdeal) :=
    Module.Free.of_divisionRing _ _
  let b := Module.finBasis (O ⧸ IsLocalRing.maximalIdeal O) (↥(As O A) ⧸ ζ.asIdeal)
  let eqv := b.equivFun.restrictScalars O
  have h1 : Module.length O (O ⧸ IsLocalRing.maximalIdeal O) = 1 :=
    Module.length_eq_one_iff.mpr (isSimpleModule_iff_isCoatom.mpr
      (Ideal.isMaximal_def.mp (IsLocalRing.maximalIdeal.isMaximal O)))
  rw [hf, eqv.length_eq, Module.length_pi, h1, mul_one, ENat.card_eq_coe_fintype_card, Fintype.card_fin]

variable {V : Type*} [AddCommGroup V] [Module A V] [Module O V] [IsScalarTower O A V] {e : V}

theorem ballO_mono [∀ ζ : Pts O A, IsDVRAt ζ] (h : IsUnif (A := A) ϖ) (he : IsGen (A := A) e)
    {c c' : Pts O A → ℤ} (hc : ∀ ζ, c ζ ≤ c' ζ) : ballO ϖ e c ≤ ballO ϖ e c' := fun v hv => ball_mono h he hc hv


open scoped Classical in
open Classical in
theorem length_step (K : Type*) [Field K] [Algebra K A] [FiniteDimensional K A]
    [Finite (Pts O A)] [∀ ζ : Pts O A, IsDVRAt ζ] (h : IsUnif (A := A) ϖ) (hfin : Module.Finite O ↥(As O A))
    (he : IsGen (A := A) e) (c d : Pts O A → ℤ) (ζ₀ : Pts O A)
    (hd : ∀ ζ, d ζ = c ζ + if ζ = ζ₀ then 1 else 0) :
    Module.length O (↥(ballO ϖ e d) ⧸ (ballO ϖ e c).comap (ballO ϖ e d).subtype) = fdeg ζ₀ := by
  classical
  obtain ⟨w, hw⟩ := exists_unit_ord K h (fun ζ => -d ζ)
  have hwi : ∀ ζ, ord ϖ ζ ((w⁻¹ : Aˣ) : A) = ((d ζ : ℤ) : WithTop ℤ) := by
    intro ζ
    have e := ord_units_add_inv (ζ := ζ) h w
    obtain ⟨k, hk⟩ := WithTop.ne_top_iff_exists.mp
      (ord_ne_top (ζ := ζ) h (w⁻¹).isUnit.mem_nonZeroDivisors)
    rw [← hk, hw ζ] at e
    rw [← hk]
    have e' : -d ζ + k = 0 := by exact_mod_cast e
    congr 1
    omega
  have hov : ∀ (c' : Pts O A → ℤ) (b : ↥(As O A)) (ζ : Pts O A),
      ordV ϖ ζ e c' (((b : A) * w) • e) = ord ϖ ζ (b : A) + ((c' ζ - d ζ : ℤ) : WithTop ℤ) := by
    intro c' b ζ
    simp only [ordV]
    rw [coord_smul_gen he, ord_mul (ζ := ζ) h, hw ζ, add_assoc, ← WithTop.coe_add]
    rw [show -d ζ + c' ζ = c' ζ - d ζ by ring]
  have hmemd : ∀ b : ↥(As O A), ((b : A) * w) • e ∈ ballO ϖ e d := by
    intro b
    show ((b : A) * w) • e ∈ ball ϖ e d
    rw [mem_ball_iff (h := h) (he := he)]
    intro ζ
    rw [hov, sub_self, WithTop.coe_zero, add_zero]
    exact ord_nonneg (ζ := ζ) h b.2
  let f : ↥(As O A) →ₗ[O] ↥(ballO ϖ e d) :=
    { toFun := fun b => ⟨((b : A) * w) • e, hmemd b⟩
      map_add' := fun x y => by
        apply Subtype.ext
        simp only [Subalgebra.coe_add, add_mul, add_smul, Submodule.coe_add]
      map_smul' := fun r x => by
        apply Subtype.ext
        simp only [Subalgebra.coe_smul, RingHom.id_apply, Submodule.coe_smul, smul_mul_assoc,
          smul_assoc] }
  let G := ((ballO ϖ e c).comap (ballO ϖ e d).subtype).mkQ ∘ₗ f
  have hsurj : Function.Surjective G := by
    intro y
    obtain ⟨v, rfl⟩ := Submodule.mkQ_surjective _ y
    have hv : ∀ ζ : Pts O A, 0 ≤ ordV ϖ ζ e d (v : V) := (mem_ball_iff (c := d) (h := h) (he := he) (v := (v : V))).mp v.2
    have hb : (coord e (v : V) : A) * ((w⁻¹ : Aˣ) : A) ∈ As O A := by
      rw [mem_As_iff h]
      intro ζ
      rw [ord_mul (ζ := ζ) h, hwi ζ]
      exact hv ζ
    refine ⟨⟨_, hb⟩, ?_⟩
    show Submodule.mkQ _ (f ⟨_, hb⟩) = Submodule.mkQ _ v
    congr 1
    apply Subtype.ext
    show ((coord e (v : V) : A) * ((w⁻¹ : Aˣ) : A) * w) • e = v
    rw [mul_assoc, Units.inv_mul, mul_one, coord_smul_self he]
  have hker : LinearMap.ker G = ζ₀.asIdeal.restrictScalars O := by
    ext b
    rw [LinearMap.mem_ker, Submodule.restrictScalars_mem]
    show Submodule.mkQ _ (f b) = 0 ↔ b ∈ ζ₀.asIdeal
    rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, Submodule.mem_comap,
      Submodule.subtype_apply]
    show ((b : A) * w) • e ∈ ball ϖ e c ↔ b ∈ ζ₀.asIdeal
    rw [mem_ball_iff (h := h) (he := he)]
    constructor
    · intro H
      have := H ζ₀
      rw [hov, hd ζ₀, if_pos rfl, show c ζ₀ - (c ζ₀ + 1) = (-1 : ℤ) by ring] at this
      exact (ord_sub_one_nonneg_iff h ζ₀ b).mp this
    · intro hb ζ
      rw [hov, hd ζ]
      by_cases hz : ζ = ζ₀
      · subst hz
        rw [if_pos rfl, show c ζ - (c ζ + 1) = (-1 : ℤ) by ring]
        exact (ord_sub_one_nonneg_iff h ζ b).mpr hb
      · rw [if_neg hz, show c ζ - (c ζ + 0) = (0 : ℤ) by ring, WithTop.coe_zero, add_zero]
        exact ord_nonneg (ζ := ζ) h b.2
  rw [← (G.quotKerEquivOfSurjective hsurj).length_eq,
    (Submodule.quotEquivOfEq _ _ hker).length_eq,
    (Submodule.Quotient.restrictScalarsEquiv O ζ₀.asIdeal).length_eq]
  exact length_residue hfin ζ₀

theorem length_ball_quotient_eq_sum_mul_fdeg (K : Type*) [Field K] [Algebra K A] [FiniteDimensional K A]
    [Fintype (Pts O A)] [∀ ζ : Pts O A, IsDVRAt ζ] (h : IsUnif (A := A) ϖ)
    (hfin : Module.Finite O ↥(As O A)) (he : IsGen (A := A) e) :
    ∀ (n : ℕ) (c : Pts O A → ℤ) (m : Pts O A → ℕ), ∑ ζ, m ζ = n →
      Module.length O (↥(ballO ϖ e (fun ζ => c ζ + m ζ)) ⧸
          (ballO ϖ e c).comap (ballO ϖ e (fun ζ => c ζ + m ζ)).subtype) =
        ((∑ ζ, m ζ * fdeg ζ : ℕ) : ℕ∞) := by
  classical
  intro n
  induction n with
  | zero =>
    intro c m hm
    have hm0 : ∀ ζ, m ζ = 0 := fun ζ => (Finset.sum_eq_zero_iff.mp hm) ζ (Finset.mem_univ _)
    simp only [hm0, Nat.cast_zero, zero_mul, Finset.sum_const_zero]
    exact length_zero_of_le (ballO_mono h he (fun ζ => by simp [hm0 ζ]))
  | succ n ih =>
    intro c m hm
    obtain ⟨ζ₀, hζ₀⟩ : ∃ ζ₀, m ζ₀ ≠ 0 := by
      by_contra hcon
      push_neg at hcon
      simp [hcon] at hm
    let m' : Pts O A → ℕ := fun ζ => if ζ = ζ₀ then m ζ - 1 else m ζ
    have hmm : ∀ ζ, m ζ = m' ζ + if ζ = ζ₀ then 1 else 0 := by
      intro ζ
      by_cases hz : ζ = ζ₀
      · subst hz
        show m ζ = (if ζ = ζ then m ζ - 1 else m ζ) + if ζ = ζ then 1 else 0
        rw [if_pos rfl, if_pos rfl]
        omega
      · show m ζ = (if ζ = ζ₀ then m ζ - 1 else m ζ) + if ζ = ζ₀ then 1 else 0
        rw [if_neg hz, if_neg hz, add_zero]
    have hsum : ∑ ζ, m ζ = ∑ ζ, m' ζ + 1 := by
      rw [Finset.sum_congr rfl (fun ζ _ => hmm ζ), Finset.sum_add_distrib]
      simp
    have hm' : ∑ ζ, m' ζ = n := by omega
    have hle1 : ballO ϖ e c ≤ ballO ϖ e (fun ζ => c ζ + (m' ζ : ℤ)) :=
      ballO_mono h he (fun ζ => le_add_of_nonneg_right (Nat.cast_nonneg _))
    have hle2 : ballO ϖ e (fun ζ => c ζ + (m' ζ : ℤ)) ≤ ballO ϖ e (fun ζ => c ζ + (m ζ : ℤ)) :=
      ballO_mono h he (fun ζ => show c ζ + (m' ζ : ℤ) ≤ c ζ + (m ζ : ℤ) by
        have h5 : (m' ζ : ℤ) ≤ (m ζ : ℤ) :=
          Nat.cast_le.mpr (le_trans (Nat.le_add_right _ _) (hmm ζ).symm.le)
        linarith)
    have hd : ∀ ζ, (fun ζ => c ζ + (m ζ : ℤ)) ζ =
        (fun ζ => c ζ + (m' ζ : ℤ)) ζ + if ζ = ζ₀ then 1 else 0 := by
      intro ζ
      beta_reduce
      rw [hmm ζ]
      split_ifs <;> push_cast <;> ring
    have hs : ∑ ζ, m ζ * fdeg ζ = ∑ ζ, m' ζ * fdeg ζ + fdeg ζ₀ := by
      rw [Finset.sum_congr rfl (fun ζ _ => by rw [hmm ζ, add_mul]), Finset.sum_add_distrib]
      congr 1
      simp [ite_mul]
    rw [length_quot_add hle1 hle2, ih c m' hm', length_step K h hfin he _ _ ζ₀ hd, hs, Nat.cast_add]

end Gen

theorem ballQuotLen_main : PI.BallQuotLen := by
  intro O _ _ _ K _ _ _ A _ _ _ _ _ _ ϖ hϖ hfin _ V _ _ _ _ _ _ e he c m
  classical
  haveI : Module.Finite O ↥(As O A) := hfin
  haveI : Finite (Pts O A) := PI.UnitaryGroupMassFormula.EfRankSum.finite_pts O A
  letI : Fintype (Pts O A) := Fintype.ofFinite _
  have h : IsUnif (A := A) ϖ := by
    refine ⟨hϖ, ?_, ?_⟩
    · rw [IsScalarTower.algebraMap_apply O K A]
      refine IsUnit.map _ (isUnit_iff_ne_zero.mpr ?_)
      intro h0
      exact hϖ.ne_zero ((IsFractionRing.injective O K) (h0.trans (map_zero _).symm))
    · intro x
      have halg : IsAlgebraic O x :=
        (IsFractionRing.isAlgebraic_iff O K A).mpr (Algebra.IsAlgebraic.isAlgebraic x)
      obtain ⟨y, hy0, hyx⟩ := halg.exists_integral_multiple
      obtain ⟨k, u, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hy0 hϖ
      refine ⟨k, ?_⟩
      have e1 : ϖ ^ k • x = ((u⁻¹ : Oˣ) : O) • (((u : O) * ϖ ^ k) • x) := by
        rw [smul_smul, ← mul_assoc, Units.inv_mul, one_mul]
      rw [e1]
      exact IsIntegral.smul _ hyx
  rw [finsum_eq_sum_of_fintype]
  exact length_ball_quotient_eq_sum_mul_fdeg K h hfin he (∑ ζ, m ζ) c m rfl

end PI.UnitaryGroupMassFormula.BallQuotLen
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BallQuotientLength.LengthBallQuotientEqSumMulFdeg =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.BallQuot =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.BallQuot", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiBallFromAlt\npublic import Formalism.PeriodIntegrals.BallQuotLen\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BallQuotientLength.LengthBallQuotientEqSumMulFdeg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.PoleLengthCount

theorem pole_ballQuot : BallQuot := _root_.PI.UnitaryGroupMassFormula.BallQuotLen.ballQuotLen_main

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.BallQuot =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AALeAAp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AALeAAp", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.GradedCoef\npublic import Formalism.PeriodIntegrals.LengthPoleInLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps

namespace PI.PoleLengthCount

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {ka wL wF : WeightFamilies.Wt D j}

theorem AA_le_AAp' (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) (Q : LocalPointData G la) (T : ℕ)
    (m : PtsG G la → ℕ) : Q.AA T ≤ Q.AAp T m := by
  refine Submodule.span_mono (Set.image_mono ?_)
  rintro x ⟨hx, hb⟩
  refine ⟨hx, fun β hβ ζ => le_trans (WithTop.coe_le_coe.2 ?_) (hb β hβ ζ)⟩
  dsimp only
  omega

theorem bound (hF : FiltStep) (hM : MonCount) (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO))
    (Q : LocalPointData G la) (T : ℕ) (m : PtsG G la → ℕ)
    (h1 : FiltOk G la T) (h2 : GradedCoef G la Q T m) (h3 : PiBallLen G la Q m) :
    Module.length (Op X la G.N) (↥(Q.AAp T m) ⧸ (Q.AA T).comap (Q.AAp T m).subtype) ≤
      ((Nat.choose (T - 1) (WeightFamilies.dimY D j) * ∑ᶠ ζ, m ζ * fdeg ζ : ℕ) : ℕ∞) := by
  obtain ⟨ψ, hker, hP, hQ⟩ := h2
  refine (hF (Op X la G.N) (WK X la G.w wF (a0 D j T)) (Fk G la T) (a0 D j T) h1.1 h1.2.1 h1.2.2
    (fun k => Vk G la k) ψ hker (Q.AAp T m) (Q.AA T) (fun k => Pk G la Q m k) (fun k => Qk G la Q k)
    (AA_le_AAp' G la Q T m) hP hQ).trans ?_
  refine (Finset.sum_le_sum (fun k _ => (h3 k).le)).trans ?_
  rw [← Nat.cast_sum, Nat.cast_le, ← Finset.sum_mul]
  refine Nat.mul_le_mul_right _ ?_
  by_cases hT : WeightFamilies.dimY D j < T
  · rw [show a0 D j T = T - WeightFamilies.dimY D j from rfl, hM _ _ hT]
  · rw [show a0 D j T = 0 from by simp only [a0]; omega]
    simp

theorem target (hF : FiltStep) (hM : MonCount) (hS : Steps) : PI.LengthPoleInLift := by
  intro D B P j X ka wL wF G la Q S CRm T e c hOk hw hL
  obtain ⟨h1, h2, h3⟩ := hS G la Q S CRm T e c hOk hw hL
  exact bound hF hM G la Q T _ h1 h2 h3

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AALeAAp =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Assemble =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Assemble", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AssembleAlt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.FiltOk\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.LeOrdASmulOsK\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.RestrictedDerivativeLinear\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Vanish\nimport Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.FinitePtsOfCurve\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps

namespace PI.PoleLengthCount

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {ka wL wF : WeightFamilies.Wt D j}

theorem colIdx_sum {N : ℕ} (col : Fin N) (α : Fin (WeightFamilies.dimY D j) → ℕ) :
    ((colIdx D j col α).sum fun _ n => n) = ∑ i, α i := by
  classical
  unfold colIdx
  rw [Finsupp.sum_fintype _ _ (fun _ => rfl)]
  simp [Fintype.sum_prod_type, Fin.sum_univ_succ]

theorem mon_sum {d k : ℕ} (α : Mon d k) : ∑ i, α.1 i = k := Finset.Nat.mem_antidiagonalTuple.1 α.2

theorem colIdx_mon {N : ℕ} (col : Fin N) {k : ℕ} (α : Mon (WeightFamilies.dimY D j) k) :
    ((colIdx D j col α.1).sum fun _ n => n) = k := by
  rw [colIdx_sum, mon_sum]

theorem exists_coef {G : GlobalFamilyData X ka wL wF} {la : HeightOneSpectrum (𝓞 B.KO)} (Q : LocalPointData G la) (hC : Q.InCurve)
    (u : Fin G.N → OsK X la G.w)
    (hs : ∑ col, algebraMap (Op X la G.N) (OsK X la G.w) (Tv X la G.N ((0 : Fin (WeightFamilies.dimY D j + 1)), col)) * u col = 1)
    (ho : ∀ (ζ : PtsG G la) col, 0 ≤ ord (unifO X la G.N) ζ (u col)) (k : ℕ) :
    ∃ a : Fin G.N → OsK X la G.w, (∀ col (ζ : PtsG G la), 0 ≤ ord (unifO X la G.N) ζ (a col)) ∧
      ∑ col, a col * u col ^ k = 1 := by
  have : ∀ ζ : PtsG G la, IsDVRAt ζ := isDVRAt_of_curve Q hC
  have hU := isUnif_of_curve Q hC
  have hu : ∀ col, u col ∈ As (Op X la G.N) (OsK X la G.w) := fun col => (mem_As_iff hU _).2 fun ζ => ho ζ col
  let u' : Fin G.N → ↥(As (Op X la G.N) (OsK X la G.w)) := fun col => ⟨u col, hu col⟩
  have h1 : Ideal.span (Set.range u') = ⊤ := by
    rw [Ideal.eq_top_iff_one]
    have e : (1 : ↥(As (Op X la G.N) (OsK X la G.w))) =
        ∑ col, algebraMap (Op X la G.N) ↥(As (Op X la G.N) (OsK X la G.w))
          (Tv X la G.N ((0 : Fin (WeightFamilies.dimY D j + 1)), col)) * u' col := by
      apply Subtype.ext
      simp only [u', OneMemClass.coe_one, AddSubmonoidClass.coe_finsetSum, MulMemClass.coe_mul,
        Subalgebra.coe_algebraMap]
      exact hs.symm
    rw [e]
    exact Ideal.sum_mem _ fun col _ => Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨col, rfl⟩)
  have h2 := Ideal.span_pow_eq_top _ h1 k
  rw [← Set.range_comp] at h2
  have h3 : (1 : ↥(As (Op X la G.N) (OsK X la G.w))) ∈
      Ideal.span (Set.range ((fun x => x ^ k) ∘ u')) := by rw [h2]; trivial
  obtain ⟨c, hc⟩ := Ideal.mem_span_range_iff_exists_fun.1 h3
  refine ⟨fun col => (c col : OsK X la G.w), fun col ζ => ord_nonneg ζ hU (c col).2, ?_⟩
  have := congrArg Subtype.val hc
  simpa [u'] using this

section

variable (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO))

def psiRaw (a : Fin G.N → OsK X la G.w) (k : ℕ) (x : ↥(HK X la G.w wF)) : Vk G la k :=
  fun α => ∑ col, a col • rD G la (colIdx D j col α.1) x

theorem psiRaw_add (a : Fin G.N → OsK X la G.w) (k : ℕ) (x y : ↥(HK X la G.w wF)) :
    psiRaw G la a k (x + y) = psiRaw G la a k x + psiRaw G la a k y := by
  funext α
  simp only [psiRaw, Pi.add_apply, rD_add, smul_add, Finset.sum_add_distrib]

theorem psiRaw_smul (a : Fin G.N → OsK X la G.w) (k : ℕ) (r : Op X la G.N) (x : ↥(HK X la G.w wF))
    (hx : x ∈ Jid X la G.w ^ k • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w wF))) :
    psiRaw G la a k (@algebraMap (Op X la G.N) (Kp X la G.N) _ _ _ r • x) = r • psiRaw G la a k x := by
  funext α
  simp only [psiRaw, Pi.smul_apply, Finset.smul_sum]
  refine Finset.sum_congr rfl fun col _ => ?_
  calc
    _ = a col • (r • rD G la (colIdx D j col α.1) x) :=
      congrArg (fun y => a col • y)
        (restricted_derivative_linear G la k _ r x hx (le_of_eq (colIdx_mon col α)))
    _ = _ := smul_comm _ _ _

theorem psiRaw_congr (a : Fin G.N → OsK X la G.w) {k T : ℕ} (hk : k < a0 D j T) {x x' : ↥(HK X la G.w wF)}
    (h : toWK X la G.w wF (a0 D j T) x = toWK X la G.w wF (a0 D j T) x') : psiRaw G la a k x = psiRaw G la a k x' := by
  have hd : x - x' ∈ Jid X la G.w ^ a0 D j T • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w wF)) := by
    rw [← toWK_eq_zero_iff, map_sub, h, sub_self]
  have hd' : x - x' ∈ Jid X la G.w ^ (k + 1) • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w wF)) :=
    Submodule.smul_mono_left (Ideal.pow_le_pow_right hk) hd
  funext α
  unfold psiRaw
  refine Finset.sum_congr rfl fun col _ => ?_
  have e : x = x' + (x - x') := by abel
  rw [e, rD_add, vanishingOnQuadric G la (k + 1) _ _ hd' (by rw [colIdx_mon col α]; omega), add_zero]

theorem exists_of_mem_Fk {T k : ℕ} {z : WK X la G.w wF (a0 D j T)} (hz : z ∈ Fk G la T k) :
    ∃ x : ↥(HK X la G.w wF), x ∈ Jid X la G.w ^ k • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w wF)) ∧
      toWK X la G.w wF (a0 D j T) x = z := by
  unfold Fk at hz
  induction hz using Submodule.span_induction with
  | mem z hz =>
    obtain ⟨x, hx, rfl⟩ := hz
    exact ⟨x, hx, rfl⟩
  | zero => exact ⟨0, Submodule.zero_mem _, map_zero _⟩
  | add z1 z2 _ _ h1 h2 =>
    obtain ⟨x1, hx1, rfl⟩ := h1
    obtain ⟨x2, hx2, rfl⟩ := h2
    exact ⟨x1 + x2, Submodule.add_mem _ hx1 hx2, map_add _ _ _⟩
  | smul r z _ h =>
    obtain ⟨x, hx, rfl⟩ := h
    refine ⟨@algebraMap (Op X la G.N) (Kp X la G.N) _ _ _ r • x, Submodule.smul_of_tower_mem _ _ hx, ?_⟩
    rw [LinearMap.map_smul_of_tower]
    rfl

def pre {T k : ℕ} {z : WK X la G.w wF (a0 D j T)} (hz : z ∈ Fk G la T k) : ↥(HK X la G.w wF) :=
  Classical.choose (exists_of_mem_Fk G la hz)

theorem pre_mem {T k : ℕ} {z : WK X la G.w wF (a0 D j T)} (hz : z ∈ Fk G la T k) :
    pre G la hz ∈ Jid X la G.w ^ k • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w wF)) :=
  (Classical.choose_spec (exists_of_mem_Fk G la hz)).1

theorem pre_eq {T k : ℕ} {z : WK X la G.w wF (a0 D j T)} (hz : z ∈ Fk G la T k) :
    toWK X la G.w wF (a0 D j T) (pre G la hz) = z :=
  (Classical.choose_spec (exists_of_mem_Fk G la hz)).2

def psiL (a : Fin G.N → OsK X la G.w) (T k : ℕ) (hk : k < a0 D j T) :
    ↥(Fk G la T k) →ₗ[Op X la G.N] Vk G la k where
  toFun z := psiRaw G la a k (pre G la z.2)
  map_add' z1 z2 := by
    rw [← psiRaw_add]
    apply psiRaw_congr G la a hk
    rw [map_add (f := _), pre_eq, pre_eq, pre_eq]
    rfl
  map_smul' r z := by
    rw [RingHom.id_apply, ← psiRaw_smul G la a k r _ (pre_mem G la z.2)]
    apply psiRaw_congr G la a hk
    rw [LinearMap.map_smul_of_tower, pre_eq, pre_eq]
    rfl

def psiF (a : ℕ → Fin G.N → OsK X la G.w) (T : ℕ) : ∀ k, ↥(Fk G la T k) →ₗ[Op X la G.N] Vk G la k :=
  fun k => if hk : k < a0 D j T then psiL G la (a k) T k hk else 0

theorem psiF_lt (a : ℕ → Fin G.N → OsK X la G.w) {T k : ℕ} (hk : k < a0 D j T) (z : ↥(Fk G la T k))
    (x : ↥(HK X la G.w wF)) (hx : toWK X la G.w wF (a0 D j T) x = z) :
    psiF G la a T k z = psiRaw G la (a k) k x := by
  unfold psiF
  rw [dite_eq_left hk]
  exact psiRaw_congr G la (a k) hk ((pre_eq G la z.2).trans hx.symm)

theorem taylorRead (hE5 : ColDeriv G la) (u : Fin G.N → OsK X la G.w) (hu : uSpec G la u) (k : ℕ)
    (a : Fin G.N → OsK X la G.w) (ha : ∑ col, a col * u col ^ k = 1) (cf : Mon (WeightFamilies.dimY D j) k → ↥(HK X la G.w wF))
    (r : ↥(HK X la G.w wF))
    (hr : r ∈ Jid X la G.w ^ (k + 1) • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w wF)))
    (α' : Mon (WeightFamilies.dimY D j) k) :
    psiRaw G la a k (∑ α, yPow X la G.w α.1 • cf α + r) α' = toA0K X la G.w wF (cf α') := by
  have h1 : ∀ col, rD G la (colIdx D j col α'.1) (∑ α, yPow X la G.w α.1 • cf α + r) =
      u col ^ k • toA0K X la G.w wF (cf α') := by
    intro col
    rw [rD_add, rD_sum, vanishingOnQuadric G la (k + 1) _ r hr (by rw [colIdx_mon col α']; omega), add_zero]
    simp only [hE5 u hu k _ α' col]
    rw [Finset.sum_ite_eq', if_pos (Finset.mem_univ _)]
  unfold psiRaw
  simp only [h1, smul_smul]
  rw [← Finset.sum_smul, ha, one_smul]

end

theorem ordV_shift (t : WithTop ℤ) (c m : ℤ) (h : ((-m : ℤ) : WithTop ℤ) ≤ t + (c : WithTop ℤ)) :
    0 ≤ t + ((c + m : ℤ) : WithTop ℤ) := by
  induction t using WithTop.recTopCoe with
  | top => simp
  | coe n =>
    rw [← WithTop.coe_add] at h ⊢
    have := WithTop.coe_le_coe.1 h
    exact_mod_cast (show (0 : ℤ) ≤ n + (c + m) by omega)

theorem pole_length_assemble : Assemble := by
  intro D B P j X ka wL wF G la Q S CRm T e c hOk hw hL _ _ hE3 hE4 hE5 _ hE7
  have hC := hOk.2.1
  have : ∀ ζ : PtsG G la, IsDVRAt ζ := isDVRAt_of_curve Q hC
  have hU := isUnif_of_curve Q hC
  obtain ⟨u, hu, hs, ho⟩ := hE3
  choose a ha1 ha2 using exists_coef Q hC u hs ho
  refine ⟨psiF G la a T, ?_, ?_, ?_⟩
  · intro k z hz0
    by_cases hk : k < a0 D j T
    · obtain ⟨x, hx, hxz⟩ := exists_of_mem_Fk G la z.2
      rw [psiF_lt G la a hk z x hxz] at hz0
      obtain ⟨cf, r, hr, hxe⟩ := hE4 k x hx
      have hc : ∀ α, toA0K X la G.w wF (cf α) = 0 := fun α => by
        rw [← taylorRead G la hE5 u hu k (a k) (ha2 k) cf r hr α, ← hxe, hz0]
        rfl
      have hx' : x ∈ Jid X la G.w ^ (k + 1) • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w wF)) := by
        rw [hxe]
        refine Submodule.add_mem _ (Submodule.sum_mem _ fun α _ => ?_) hr
        have h1 : yPow X la G.w α.1 ∈ Jid X la G.w ^ k := by
          have := prod_sfr_mem X la G.w α.1
          rwa [mon_sum] at this
        have h2 : cf α ∈ Jid X la G.w • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w wF)) :=
          (reduction_eq_zero_iff_mem_ideal_smul X la G.w wF _).1 (hc α)
        rw [pow_succ, Submodule.mul_smul]
        exact Submodule.smul_mem_smul h1 h2
      rw [← hxz]
      exact Submodule.subset_span ⟨x, hx', rfl⟩
    · have h0 : (z : WK X la G.w wF (a0 D j T)) ∈ Fk G la T (a0 D j T) :=
        (image_filtration_decreasing G la T).1 (by omega) z.2
      rw [(image_filtration_decreasing G la T).2.2, Submodule.mem_bot] at h0
      rw [h0]
      exact Submodule.zero_mem _
  · intro k hk
    rintro _ ⟨z, hz, rfl⟩
    obtain ⟨x, -, hxz⟩ := exists_of_mem_Fk G la z.2
    have hg := good_of_mem_AAp hC (m := Q.mm S T e) (by omega) hz x hxz
    rw [psiF_lt G la a hk z x hxz]
    unfold Pk
    rw [Submodule.mem_pi]
    intro α _
    rw [mem_ballO_iff _ hU hC.2.2]
    intro ζ
    have key : ((-(Q.mm S T e ζ : ℤ) : ℤ) : WithTop ℤ) ≤ Q.ordA ζ (psiRaw G la (a k) k x α) :=
      le_ordA_sum Q hC ζ _ _ _ fun col _ => le_ordA_smul_OsK Q hC ζ _ (ha1 k col ζ) _ _
        (hg _ (by rw [colIdx_mon col α]; omega) ζ)
    exact ordV_shift _ _ _ key
  · intro k hk b hb
    unfold Qk at hb
    rw [Submodule.mem_pi] at hb
    choose x hx1 hx2 using fun α => hL (b α) (hb α (Set.mem_univ _))
    set Xs : ↥(HK X la G.w wF) := ∑ α, yPow X la G.w α.1 • x α with hXs
    have hX : Xs ∈ Jid X la G.w ^ k • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w wF)) := by
      refine Submodule.sum_mem _ fun α _ => Submodule.smul_mem_smul ?_ Submodule.mem_top
      have := prod_sfr_mem X la G.w α.1
      rwa [mon_sum] at this
    have hXA : toWK X la G.w wF (a0 D j T) Xs ∈ Q.AA T := by

      rw [hXs, map_sum]
      exact Submodule.sum_mem _ fun α _ => hE7 (x α) α.1 (hx2 α)
    refine ⟨⟨_, Submodule.subset_span ⟨Xs, hX, rfl⟩⟩, hXA, ?_⟩
    rw [psiF_lt G la a hk _ Xs rfl]
    funext α'
    have := taylorRead G la hE5 u hu k (a k) (ha2 k) x 0 (Submodule.zero_mem _) α'
    rw [add_zero] at this
    rw [this, hx1]

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Assemble =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.ColDeriv =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.ColDeriv", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorSpanGeneratorsAlt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AssembleAlt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Vanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps

namespace PI.PoleLengthCount

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {ka wL wF : WeightFamilies.Wt D j}

theorem u_eq_wfr (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) {u : Fin G.N → OsK X la G.w}
    (hu : uSpec G la u) (col : Fin G.N) : u col = toOsK X la G.w (PoleLengthBounds.wfr G la col) := by
  obtain ⟨f, hf, hfu⟩ := hu col
  have : f = PoleLengthBounds.wfr G la col := by
    apply Subtype.ext
    rw [hf]
    simp only [PoleLengthBounds.wfr, coe_weightZeroFraction, frac_apply, pow_one]
  rw [← hfu, this]

theorem uC_eq_pow (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) (col : Fin G.N) {k : ℕ}
    (α : Mon (WeightFamilies.dimY D j) k) :
    PoleLengthBounds.uC G la col α.1 = toOsK X la G.w (PoleLengthBounds.wfr G la col) ^ k := by
  have h := α.2
  rw [Finset.Nat.mem_antidiagonalTuple] at h
  rw [PoleLengthBounds.uC, Finset.prod_pow_eq_pow_sum, h]

theorem colDeriv_of (hTH : PoleLengthBounds.TaylorHasse) (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) :
    ColDeriv G la := by
  classical
  intro u hu k α α' col cf
  have hx : ((yPow X la G.w α.1 • cf : ↥(HK X la G.w wF)) : Lw X la G.w) ∈ HK X la G.w wF :=
    (yPow X la G.w α.1 • cf).2
  have h := hasse_preserves_kernel G la (colIdx D j col α'.1) _ hx
  let cf' : (Fin (WeightFamilies.dimY D j) → ℕ) → ↥(HK X la G.w wF) := fun β => if β = α.1 then cf else 0
  have hrem : (yPow X la G.w α.1 • cf : ↥(HK X la G.w wF)) -
      ∑ β ∈ PoleLengthBounds.mon D j k, PoleLengthBounds.ym G la β • cf' β ∈
        (Jid X la G.w ^ (k + 1) • (⊤ : Submodule ↥(Frac0 X la G.w) ↥(HK X la G.w wF))) := by
    have : ∑ β ∈ PoleLengthBounds.mon D j k, PoleLengthBounds.ym G la β • cf' β = yPow X la G.w α.1 • cf := by
      rw [Finset.sum_eq_single α.1]
      · simp only [cf', if_pos rfl]; rfl
      · intro b _ hb; simp only [cf', if_neg hb, smul_zero]
      · intro hn; exact absurd α.2 hn
    rw [this, sub_self]
    exact Submodule.zero_mem _
  have key := hTH G la k _ cf' hrem col α'.1 α'.2 h
  rw [rD, dite_eq_left h]
  refine Eq.trans key ?_
  rw [uC_eq_pow G la col α', u_eq_wfr G la hu col]
  by_cases hαα : α = α'
  · subst hαα
    simp only [cf', ↓reduceIte]
  · have hne : α'.1 ≠ α.1 := fun e => hαα (Subtype.ext e.symm)
    simp only [cf', if_neg hne, if_neg hαα, map_zero, smul_zero]

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.ColDeriv =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.UnitCols =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.UnitCols", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AssembleAlt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorSpanGeneratorsAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps

namespace PI.PoleLengthCount

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {ka wL wF : WeightFamilies.Wt D j}

theorem coe_wfr (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) (col : Fin G.N) :
    (PoleLengthBounds.wfr G la col : Lw X la G.w) =
      algebraMap (Rp X la G.N) (Lw X la G.w) (emb X la G.N (X.inc wL (G.w col))) * w0inv X la G.w := by
  simp only [PoleLengthBounds.wfr, coe_weightZeroFraction, frac_apply, pow_one]

theorem uSpec_wfr (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) :
    uSpec G la (fun col => toOsK X la G.w (PoleLengthBounds.wfr G la col)) :=
  fun col => ⟨PoleLengthBounds.wfr G la col, coe_wfr G la col, rfl⟩

theorem sum_T_wfr (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) :
    ∑ col, algebraMap (Kp X la G.N) ↥(Frac0 X la G.w)
      (@algebraMap (Op X la G.N) (Kp X la G.N) _ _ _ (Tv X la G.N ((0 : Fin (WeightFamilies.dimY D j + 1)), col))) *
        PoleLengthBounds.wfr G la col = 1 := by
  apply Subtype.ext
  have h : ∀ col, ((algebraMap (Kp X la G.N) ↥(Frac0 X la G.w)
      (@algebraMap (Op X la G.N) (Kp X la G.N) _ _ _ (Tv X la G.N ((0 : Fin (WeightFamilies.dimY D j + 1)), col))) *
        PoleLengthBounds.wfr G la col : ↥(Frac0 X la G.w)) : Lw X la G.w) =
      frac X la G.w 1 ((@algebraMap (Op X la G.N) (Kp X la G.N) _ _ _ (Tv X la G.N ((0 : Fin (WeightFamilies.dimY D j + 1)), col))) •
        emb X la G.N (X.inc wL (G.w col))) := by
    intro col
    rw [LinearMap.map_smul, Algebra.smul_def]
    rfl

  rw [AddSubmonoidClass.coe_finsetSum, Finset.sum_congr rfl fun col _ => h col, ← map_sum]
  show frac X la G.w 1 (sec X la G.w 0) = _
  rw [frac_apply, pow_one, section_mul_inverse_eq_one]
  rfl

theorem sum_T_u (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) :
    ∑ col, algebraMap (Op X la G.N) (OsK X la G.w) (Tv X la G.N ((0 : Fin (WeightFamilies.dimY D j + 1)), col)) *
      toOsK X la G.w (PoleLengthBounds.wfr G la col) = 1 := by
  have := congrArg (toOsK X la G.w) (sum_T_wfr G la)

  rw [map_one, map_sum] at this
  rw [← this]
  refine Finset.sum_congr rfl fun col _ => ?_
  rw [map_mul, AlgHom.commutes]
  rfl

theorem unitCols_of (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO))
    (hOrd : ∀ (ζ : PtsG G la) (col : Fin G.N), 0 ≤ ord (unifO X la G.N) ζ (toOsK X la G.w (PoleLengthBounds.wfr G la col))) :
    UnitCols G la :=
  ⟨fun col => toOsK X la G.w (PoleLengthBounds.wfr G la col), uSpec_wfr G la, sum_T_u G la, hOrd⟩

theorem unitCols_of_column (hCol : PoleLengthBounds.Column) (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) (Q : LocalPointData G la)
    (S : Scal B) (CRm : ℝ) (T : ℕ) (c : ℝ) (hOk : Q.Ok S CRm T c) (hw : ∀ k, G.w k ∈ X.WWc S.sW wL) :
    UnitCols G la :=
  unitCols_of G la fun ζ col => (hCol G la Q S CRm T c hOk hw ζ).1 col

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.UnitCols =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Closed =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Closed", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AssembleAlt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.Column\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorHasse\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.ColDeriv\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.UnitCols\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps

namespace PI.PoleLengthCount

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {ka wL wF : WeightFamilies.Wt D j}

theorem column_derivative (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) : ColDeriv G la :=
  colDeriv_of PoleLengthBounds.taylorHasse_holds G la

theorem unit_columns_holds (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) (Q : LocalPointData G la)
    (S : Scal B) (CRm : ℝ) (T : ℕ) (c : ℝ) (hOk : Q.Ok S CRm T c) (hw : ∀ k, G.w k ∈ X.WWc S.sW wL) :
    UnitCols G la :=
  unitCols_of_column PoleLengthBounds.column_holds G la Q S CRm T c hOk hw

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Closed =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.LiftMul =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.LiftMul", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.LeOrdASmulOsK\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseJacobsonPowers.SfrMulMemJHfr\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HasseOrderBound.CompositionalInverseSymm\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Vanish\nimport Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.FinitePtsOfCurve\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps Finset.HasAntidiagonal

namespace PI.PoleLengthCount

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {ka wL wF : WeightFamilies.Wt D j}

section

variable {G : GlobalFamilyData X ka wL wF} {la : HeightOneSpectrum (𝓞 B.KO)} (Q : LocalPointData G la)

def IntD (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) (f : Lw X la G.w) : Prop :=
  ∀ γ : Idx D j G.N →₀ ℕ, ∃ g : ↥(Frac0 X la G.w), (g : Lw X la G.w) = hasse X la G.w γ f ∧
    ∀ ζ : PtsG G la, 0 ≤ ord (unifO X la G.N) ζ (toOsK X la G.w g)

variable {Q}

theorem ord_sum_nonneg (hC : Q.InCurve) (ζ : PtsG G la) {ι : Type*} (s : Finset ι) (f : ι → OsK X la G.w)
    (h : ∀ i ∈ s, 0 ≤ ord (unifO X la G.N) ζ (f i)) : 0 ≤ ord (unifO X la G.N) ζ (∑ i ∈ s, f i) := by
  classical
  have := isDVRAt_of_curve Q hC ζ
  have hU := isUnif_of_curve Q hC
  induction s using Finset.induction_on with
  | empty => rw [Finset.sum_empty, ord_zero ζ hU]; exact le_top
  | insert a s ha ih =>
    rw [Finset.sum_insert ha]
    exact le_trans (le_min (h a (Finset.mem_insert_self _ _)) (ih fun i hi => h i (Finset.mem_insert_of_mem hi)))
      (ord_add ζ hU _ _)

theorem ord_mul_nonneg (hC : Q.InCurve) (ζ : PtsG G la) {x y : OsK X la G.w} (hx : 0 ≤ ord (unifO X la G.N) ζ x)
    (hy : 0 ≤ ord (unifO X la G.N) ζ y) : 0 ≤ ord (unifO X la G.N) ζ (x * y) := by
  have := isDVRAt_of_curve Q hC ζ
  have hU := isUnif_of_curve Q hC
  rw [ord_mul ζ hU]
  exact add_nonneg hx hy

theorem ord_prod_nonneg (hC : Q.InCurve) (ζ : PtsG G la) {ι : Type*} (s : Finset ι) (f : ι → OsK X la G.w)
    (h : ∀ i ∈ s, 0 ≤ ord (unifO X la G.N) ζ (f i)) : 0 ≤ ord (unifO X la G.N) ζ (∏ i ∈ s, f i) := by
  have := isDVRAt_of_curve Q hC ζ
  have hU := isUnif_of_curve Q hC
  refine Finset.prod_induction f (fun x => 0 ≤ ord (unifO X la G.N) ζ x) (fun x y hx hy => ord_mul_nonneg hC ζ hx hy)
    ?_ h
  rw [ord_one ζ hU]

theorem ord_pow_nonneg (hC : Q.InCurve) (ζ : PtsG G la) {x : OsK X la G.w} (hx : 0 ≤ ord (unifO X la G.N) ζ x)
    (n : ℕ) : 0 ≤ ord (unifO X la G.N) ζ (x ^ n) := by
  have := isDVRAt_of_curve Q hC ζ
  have hU := isUnif_of_curve Q hC
  rw [ord_pow ζ hU]
  exact nsmul_nonneg hx n

theorem intD_mul (hC : Q.InCurve) {f1 f2 : Lw X la G.w} (h1 : IntD G la f1) (h2 : IntD G la f2) :
    IntD G la (f1 * f2) := by
  intro γ
  choose g1 hg1 ho1 using h1
  choose g2 hg2 ho2 using h2
  refine ⟨∑ q ∈ antidiagonal γ, g1 q.1 * g2 q.2, ?_, fun ζ => ?_⟩
  · show _ = PI.HJP.H X la G.w γ (f1 * f2)
    rw [PI.HJP.H_mul]
    push_cast
    refine Finset.sum_congr rfl fun q _ => ?_
    rw [hg1, hg2]
    rfl
  · set_option synthInstance.maxHeartbeats 100000 in
      rw [map_sum]
    refine ord_sum_nonneg hC ζ _ _ fun q _ => ?_
    rw [map_mul]
    exact ord_mul_nonneg hC ζ (ho1 _ ζ) (ho2 _ ζ)

theorem intD_one (hC : Q.InCurve) : IntD G la (1 : Lw X la G.w) := by
  classical
  have hU := isUnif_of_curve Q hC
  intro γ
  refine ⟨if γ = 0 then 1 else 0, ?_, fun ζ => ?_⟩
  · show _ = MvPowerSeries.coeff γ (tayLc X la G.w 1)
    rw [map_one, MvPowerSeries.coeff_one]
    split_ifs <;> rfl
  · have := isDVRAt_of_curve Q hC ζ
    split_ifs
    · rw [map_one, ord_one ζ hU]
    · rw [map_zero, ord_zero ζ hU]; exact le_top

theorem intD_prod (hC : Q.InCurve) {ι : Type*} (s : Finset ι) (f : ι → Lw X la G.w) (h : ∀ i ∈ s, IntD G la (f i)) :
    IntD G la (∏ i ∈ s, f i) :=
  Finset.prod_induction f (fun x => IntD G la x) (fun _ _ hx hy => intD_mul hC hx hy) (intD_one hC) h

theorem intD_pow (hC : Q.InCurve) {f : Lw X la G.w} (hf : IntD G la f) (n : ℕ) : IntD G la (f ^ n) := by
  induction n with
  | zero => rw [pow_zero]; exact intD_one hC
  | succ n ih => rw [pow_succ]; exact intD_mul hC ih hf

theorem intD_sfr (hC : Q.InCurve) (u : Fin G.N → OsK X la G.w) (hu : uSpec G la u)
    (ho : ∀ (ζ : PtsG G la) col, 0 ≤ ord (unifO X la G.N) ζ (u col)) (i : Fin (WeightFamilies.dimY D j + 1)) :
    IntD G la (sfr X la G.w i : Lw X la G.w) := by
  classical
  have hU := isUnif_of_curve Q hC
  choose fk hfk1 hfk2 using hu
  choose mq hmq hfq using fun q : Idx D j G.N →₀ ℕ => PI.HasseOrdBdW.compositionalInverseSymm X la G.w 1 q
  intro γ
  set c : (Idx D j G.N →₀ ℕ) → Fin G.N → Kp X la G.N :=
    fun q k => @algebraMap (Op X la G.N) (Kp X la G.N) _ _ _ (hasseOp X la G.N q (Tv X la G.N (i, k))) with hc
  refine ⟨∑ q ∈ antidiagonal γ, (mq q.2 : ↥(Frac0 X la G.w)) *
      ((∑ k, c q.1 k • fk k) * ∏ k, fk k ^ q.2 ((0 : Fin (WeightFamilies.dimY D j + 1)), k)), ?_, fun ζ => ?_⟩
  · have e0 : (sfr X la G.w i : Lw X la G.w) =
        algebraMap (Rp X la G.N) (Lw X la G.w) (sec X la G.w i) * w0inv X la G.w ^ 1 := by
      rw [coe_sfr, frac_apply]
    show _ = PI.HJP.H X la G.w γ (sfr X la G.w i : Lw X la G.w)
    rw [e0, PI.HJP.H_mul]
    push_cast
    refine Finset.sum_congr rfl fun q _ => ?_
    have hA : PI.HJP.H X la G.w q.1 (algebraMap (Rp X la G.N) (Lw X la G.w) (sec X la G.w i)) =
        algebraMap (Rp X la G.N) (Lw X la G.w) (∑ k, c q.1 k • emb X la G.N (X.inc wL (G.w k))) := by
      exact (hasse_algebraMap X la G.w q.1 (sec X la G.w i)).trans
        (congrArg (algebraMap (Rp X la G.N) (Lw X la G.w)) (by
          simpa only [hc] using hasseRp_sec X la G.w q.1 i))
    have hB : PI.HJP.H X la G.w q.2 (w0inv X la G.w ^ 1) = (mq q.2 : Lw X la G.w) *
        algebraMap (Rp X la G.N) (Lw X la G.w) (∏ k, emb X la G.N (X.inc wL (G.w k)) ^ q.2 (0, k)) *
          w0inv X la G.w ^ (1 + q.2.sum fun _ n => n) := hfq q.2
    rw [hA, hB]
    by_cases hm : mq q.2 = 0
    · simp [hm]
    · have hn := hmq q.2 hm

      simp only [hfk1, map_sum, map_prod, map_pow, Algebra.smul_def, map_mul,
      ← IsScalarTower.algebraMap_apply (Kp X la G.N) (Rp X la G.N) (Lw X la G.w)]
      rw [← hn, pow_add, ← Finset.prod_pow_eq_pow_sum]
      simp only [mul_pow, Finset.prod_mul_distrib]
      have e1 : ∀ (A E : Fin G.N → Lw X la G.w) (y : Lw X la G.w),
          ∑ k, A k * (E k * y) = (∑ k, A k * E k) * y := fun A E y => by
        rw [Finset.sum_mul]; exact Finset.sum_congr rfl fun k _ => by ring
      rw [e1]
      ring
  · set_option synthInstance.maxHeartbeats 100000 in
      rw [map_sum]
    refine ord_sum_nonneg hC ζ _ _ fun q _ => ?_
    have := isDVRAt_of_curve Q hC ζ
    rw [map_mul, map_mul, map_intCast]
    refine ord_mul_nonneg hC ζ (ord_nonneg ζ hU (intCast_mem _ _)) (ord_mul_nonneg hC ζ ?_ ?_)
    · set_option synthInstance.maxHeartbeats 100000 in
        rw [map_sum]
      refine ord_sum_nonneg hC ζ _ _ fun k _ => ?_
      rw [map_smul, hfk2, hc, algebraMap_smul, Algebra.smul_def]
      exact ord_mul_nonneg hC ζ (ord_nonneg ζ hU (Subalgebra.algebraMap_mem _ _)) (ho ζ k)
    · rw [map_prod]
      refine ord_prod_nonneg hC ζ _ _ fun k _ => ?_
      rw [map_pow, hfk2]
      exact ord_pow_nonneg hC ζ (ho ζ k) _

theorem intD_yPow (hC : Q.InCurve) (u : Fin G.N → OsK X la G.w) (hu : uSpec G la u)
    (ho : ∀ (ζ : PtsG G la) col, 0 ≤ ord (unifO X la G.N) ζ (u col)) (α : Fin (WeightFamilies.dimY D j) → ℕ) :
    IntD G la (yPow X la G.w α : Lw X la G.w) := by
  have e : (yPow X la G.w α : Lw X la G.w) = ∏ i, (sfr X la G.w i.succ : Lw X la G.w) ^ α i := by
    unfold yPow
    push_cast
    rfl
  rw [e]
  exact intD_prod hC _ _ fun i _ => intD_pow hC (intD_sfr hC u hu ho i.succ) _

theorem good_mul (hC : Q.InCurve) {T : ℕ} {f : ↥(Frac0 X la G.w)} (hf : IntD G la (f : Lw X la G.w))
    {x : ↥(HK X la G.w wF)} (hx : GoodP Q T (fun _ => 0) x) : GoodP Q T (fun _ => 0) (f • x) := by
  choose g hg ho using hf
  have hP := hasse_preserves_kernel G la
  intro β hβ ζ
  rw [rD_eq G la β _ (hP β _ (f • x).2)]
  have e : (⟨_, hP β _ (f • x).2⟩ : ↥(HK X la G.w wF)) =
      ∑ q ∈ antidiagonal β, g q.1 • (⟨_, hP q.2 _ x.2⟩ : ↥(HK X la G.w wF)) := by
    apply Subtype.ext
    rw [Submodule.coe_sum]
    show PI.HJP.H X la G.w β ((f : Lw X la G.w) * (x : Lw X la G.w)) = _
    rw [PI.HJP.H_mul]
    refine Finset.sum_congr rfl fun q _ => ?_
    rw [Submodule.coe_smul]
    exact (congrArg (· * hasse X la G.w q.2 (x : Lw X la G.w)) (hg q.1)).symm

  rw [e, map_sum]
  refine le_ordA_sum Q hC ζ _ _ _ fun q hq => ?_
  rw [LinearMap.map_smul, ← algebraMap_smul (OsK X la G.w) (g q.1)]
  refine le_ordA_smul_OsK Q hC ζ _ (ho q.1 ζ) _ _ ?_
  have hq2 : (q.2.sum fun _ n => n) ≤ a0 D j T - 1 := by
    rw [mem_antidiagonal] at hq
    rw [PI.HJP.sum_eq_degree] at hβ ⊢
    have : Finsupp.degree β = Finsupp.degree q.1 + Finsupp.degree q.2 := by rw [← hq, map_add (f := _)]
    omega
  have := hx q.2 hq2 ζ
  rwa [rD_eq G la q.2 x (hP q.2 _ x.2)] at this

end

theorem liftMul_of {G : GlobalFamilyData X ka wL wF} {la : HeightOneSpectrum (𝓞 B.KO)} (Q : LocalPointData G la) (T : ℕ) (hC : Q.InCurve)
    (h3 : UnitCols G la) : LiftMul G la Q T := by
  obtain ⟨u, hu, -, ho⟩ := h3
  intro x α hx
  by_cases ha : 0 < a0 D j T
  · have hg := good_of_mem_AAp hC ha hx x rfl
    have hg' := good_mul hC (intD_yPow (Q := Q) hC u hu ho α) hg
    have hP := hasse_preserves_kernel G la
    refine Submodule.subset_span ⟨yPow X la G.w α • x, ⟨fun β _ => hP β _ (yPow X la G.w α • x).2, fun β hβ ζ => ?_⟩, rfl⟩
    have := hg' β hβ ζ
    rwa [rD_eq G la β _ (hP β _ (yPow X la G.w α • x).2)] at this
  · have h0 : ∀ y : ↥(HK X la G.w wF), toWK X la G.w wF (a0 D j T) y = 0 := fun y => by
      rw [toWK_eq_zero_iff, show a0 D j T = 0 by omega, pow_zero, Ideal.one_eq_top, Submodule.top_smul]
      exact Submodule.mem_top
    rw [h0]
    exact Submodule.zero_mem _

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.LiftMul =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiBallFrom =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiBallFrom", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiBallFromAlt\npublic import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.FinitePtsOfCurve\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps

namespace PI.PoleLengthCount

theorem ball_product_length : PiBallFrom := by
  intro hPi hBQ D B P j X ka wL wF G la Q S CRm T e c hOk k

  have hC : Q.InCurve := hOk.2.1
  haveI : FiniteDimensional (Kp X la G.N) (OsK X la G.w) := hC.1
  haveI : IsReduced (OsK X la G.w) := hC.2.1
  haveI : ∀ ζ : PtsG G la, IsDVRAt ζ := isDVRAt_of_curve Q hC
  have hU := isUnif_of_curve Q hC

  have hle : ballO (unifO X la G.N) Q.e Q.c ≤
      ballO (unifO X la G.N) Q.e (fun ζ => Q.c ζ + ((Q.mm S T e ζ : ℕ) : ℤ)) := by
    intro v hv
    exact ball_mono hU hC.2.2 (fun ζ => by dsimp only; omega) hv

  have h1 := hPi (Op X la G.N) (SectionSheafQuotient X la G.w wF) (Mon (WeightFamilies.dimY D j) k)
    (ballO (unifO X la G.N) Q.e (fun ζ => Q.c ζ + ((Q.mm S T e ζ : ℕ) : ℤ)))
    (ballO (unifO X la G.N) Q.e Q.c) hle
  have h2 := hBQ (Op X la G.N) (Kp X la G.N) (OsK X la G.w) (unifO X la G.N)
    (unifO_irreducible X la G.N) (finite_As_of_curve Q hC) (SectionSheafQuotient X la G.w wF) Q.e hC.2.2 Q.c (Q.mm S T e)
  refine h1.trans ?_
  rw [h2, Fintype.card_coe, Nat.cast_mul]

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiBallFrom =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiLenHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiLenHolds", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiBallFromAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.PoleLengthCount

open Module

theorem piLen_holds : PiLen := by
  intro R M ι _ _ _ _ P Q _
  classical
  set PP := Submodule.pi Set.univ fun _ : ι => P
  set QQ := Submodule.pi Set.univ fun _ : ι => Q
  let q : Submodule R ↥P := Q.comap P.subtype
  let g : ι → (↥PP →ₗ[R] ↥P) := fun i =>
    ((LinearMap.proj i).comp PP.subtype).codRestrict P (fun x => x.2 i (Set.mem_univ i))
  let f : ↥PP →ₗ[R] (ι → ↥P ⧸ q) := LinearMap.pi fun i => q.mkQ.comp (g i)
  have hker : QQ.comap PP.subtype = LinearMap.ker f := by
    ext x
    simp only [Submodule.mem_comap, Submodule.subtype_apply, LinearMap.mem_ker, f, QQ,
      Submodule.mem_pi, Set.mem_univ, true_implies]
    constructor
    · intro h
      funext i
      simp only [LinearMap.pi_apply, LinearMap.comp_apply, Submodule.mkQ_apply, Pi.zero_apply,
        Submodule.Quotient.mk_eq_zero]
      exact h i
    · intro h i
      have := congrFun h i
      simp only [LinearMap.pi_apply, LinearMap.comp_apply, Submodule.mkQ_apply, Pi.zero_apply,
        Submodule.Quotient.mk_eq_zero] at this
      exact this
  have hsurj : Function.Surjective f := by
    intro y
    choose p hp using fun i => Submodule.Quotient.mk_surjective q (y i)
    refine ⟨⟨fun i => (p i : M), fun i _ => (p i).2⟩, ?_⟩
    funext i
    simp only [f, LinearMap.pi_apply, LinearMap.comp_apply, Submodule.mkQ_apply]
    rw [← hp i]
    rfl
  have e1 := (Submodule.quotEquivOfEq _ _ hker).trans (LinearMap.quotKerEquivOfSurjective f hsurj)
  rw [e1.length_eq, Module.length_pi, ENat.card_eq_coe_fintype_card]

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiLenHolds =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Taylor =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Taylor", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AssembleAlt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BaseLengthBound.TaylorRep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps

namespace PI.PoleLengthCount

variable {D : D7} {B : WeightFamilies.Prov D} {P : ModuliIntegralCharts.Prov D} {j : ℕ} {X : PJ D B P j} {ka wL wF : WeightFamilies.Wt D j}

theorem taylor_holds (G : GlobalFamilyData X ka wL wF) (la : HeightOneSpectrum (𝓞 B.KO)) : Taylor G la := by
  intro k x hx
  obtain ⟨cf, hcf⟩ := PoleLengthBounds.pow_smul_top_le_monSpan (M := ↥(HK X la G.w wF))
    (fun i : Fin (WeightFamilies.dimY D j) => sfr X la G.w i.succ) k hx
  refine ⟨fun α => cf α.1, 0, Submodule.zero_mem _, ?_⟩
  rw [add_zero, hcf]
  exact (Finset.sum_coe_sort (Finset.Nat.antidiagonalTuple (WeightFamilies.dimY D j) k)
    (fun α => (∏ i, sfr X la G.w i.succ ^ α i) • cf α)).symm

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Taylor =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.StepsOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.StepsOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.LengthPoleInLift\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiBallFromAlt\npublic import Formalism.PeriodIntegrals.FiltLenF\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiltrationLength.FiltLenFMain\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SumAntidiagonalTuple\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.AALeAAp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Assemble\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Closed\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.LiftMul\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiBallFrom\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PiLenHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Taylor\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.FiltOk\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.RestrictedDerivativeLinear\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.Vanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions NumberField IsDedekindDomain Module Formalism.MainNotions.Gaps.EtaleWeightGaps

namespace PI.PoleLengthCount

theorem steps_of (hBQ : BallQuot) : Steps := by
  intro D B P j X ka wL wF G la Q S CRm T e c hOk hw hL
  have h3 := unit_columns_holds G la Q S CRm T c hOk hw
  exact ⟨image_filtration_decreasing G la T,
    pole_length_assemble G la Q S CRm T e c hOk hw hL (hasse_preserves_kernel G la) (vanishingOnQuadric G la) h3 (taylor_holds G la)
      (column_derivative G la) (restricted_derivative_linear G la) (liftMul_of Q T hOk.2.1 h3),
    ball_product_length piLen_holds hBQ G la Q S CRm T e c hOk⟩

theorem pole_length_bound_of_balls (hBQ : BallQuot) : PI.LengthPoleInLift := target _root_.PI.FiltrationLength.filtLenF_main sum_antidiagonalTuple (steps_of hBQ)

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.StepsOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PoleLengthBound =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PoleLengthBound", "h": "module\n\npublic import Formalism.PeriodIntegrals.LengthPoleInLift\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.BallQuot\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.StepsOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.PoleLengthCount

theorem pole_length_bound : PI.LengthPoleInLift := pole_length_bound_of_balls pole_ballQuot

end PI.PoleLengthCount
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PoleLengthBound.PoleLengthBound =====
