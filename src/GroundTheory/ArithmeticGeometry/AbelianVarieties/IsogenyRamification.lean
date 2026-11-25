module

public import GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyPoints
public import GroundTheory.ArithmeticGeometry.AbelianVarieties.DivisorsPic
public import GroundTheory.ArithmeticGeometry.AbelianVarieties.DivisorsPullback
public import GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenySeparable
public import GroundTheory.ArithmeticGeometry.AbelianVarieties.DualIsogenyExists
import GroundTheory.ArithmeticGeometry.AbelianVarieties.DivisorsValuation
import GroundTheory.ArithmeticGeometry.AbelianVarieties.KernelCard
import GroundTheory.ArithmeticGeometry.AbelianVarieties.WeilTranslate

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyValuation, GroundTheory.ArithmeticGeometry.AbelianVarieties.WeilPairing, GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyRamification

-- ===== clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyValuation =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyValuation", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyPoints\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.DivisorsPic\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.DivisorsPullback\nimport GroundTheory.ArithmeticGeometry.AbelianVarieties.DivisorsValuation\nimport GroundTheory.ArithmeticGeometry.AbelianVarieties.KernelCard\nimport GroundTheory.ArithmeticGeometry.AbelianVarieties.WeilTranslate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.AlgebraicGeometry.EllipticCurve.DivisionPolynomial.Degree\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Arith.Abelian

open Polynomial WeierstrassCurve WeierstrassCurve.Affine WeierstrassCurve.Affine.CoordinateRing
  IsDedekindDomain WithZero IntermediateField

open scoped nonZeroDivisors

universe u

variable {F : Type u} [Field F]

section Infinity

variable {W : WeierstrassCurve F}

theorem eq_valuationInfty_pow_of_genX (w : Valuation W.toAffine.FunctionField ℤᵐ⁰)
    (hF : ∀ c : F, c ≠ 0 → w (algebraMap F W.toAffine.FunctionField c) = 1) {a : ℕ} (ha : 0 < a)
    (hx : w (genX W) = exp (2 * (a : ℤ))) (f : W.toAffine.FunctionField) :
    w f = valuationInfty W f ^ a := by
  have hk : (0 : ℤ) < 2 * a := by positivity
  obtain ⟨m, hm, hm3⟩ := valuation_genY_of_one_lt w hF hk hx
  have hm' : m = 3 * a := by linarith
  subst hm'
  have ha' : (a : ℤ) ≠ 0 := by exact_mod_cast ha.ne'
  have hA : ∀ c : W.toAffine.CoordinateRing,
      w (algebraMap _ W.toAffine.FunctionField c) =
        valuationInfty W (algebraMap _ W.toAffine.FunctionField c) ^ a := by
    intro c
    rcases eq_or_ne c 0 with rfl | hc
    · simp [zero_pow ha.ne']
    rw [valuationInfty_algebraMap, valuationInftyCoord_apply W hc, ← exp_nsmul]
    obtain ⟨p, q, rfl⟩ := exists_smul_basis_eq c
    rw [algebraMap_smul_basis]
    rcases eq_or_ne q 0 with rfl | hq
    · have hp : p ≠ 0 := by rintro rfl; simp at hc
      rw [natDegree_norm_smul_basis_of_q_eq_zero, map_zero, zero_mul, add_zero,
        valuation_poly_of_one_lt w hF hk hx hp]
      congr 1; push_cast; ring
    · have hwQy : w (algebraMap F[X] W.toAffine.FunctionField q * genY W) =
          exp (2 * a * (q.natDegree : ℤ) + 3 * a) := by
        rw [Valuation.map_mul, valuation_poly_of_one_lt w hF hk hx hq, hm, ← exp_add]
        congr 1; ring
      rcases eq_or_ne p 0 with rfl | hp
      · rw [natDegree_norm_smul_basis_of_p_eq_zero hq, map_zero, zero_add, hwQy]
        congr 1; push_cast; ring
      · rw [natDegree_norm_smul_basis_of_ne_zero hp hq]
        have hwP := valuation_poly_of_one_lt w hF hk hx hp
        have hapos : (0 : ℤ) < a := by exact_mod_cast ha
        rcases lt_or_gt_of_ne (show (2 * p.natDegree : ℤ) ≠ 2 * q.natDegree + 3 by omega) with
          hlt | hlt
        · rw [Valuation.map_add_eq_of_lt_right _ (by rw [hwP, hwQy, exp_lt_exp]; nlinarith), hwQy,
            max_eq_right (by omega)]
          congr 1; push_cast; ring
        · rw [Valuation.map_add_eq_of_lt_left _ (by rw [hwP, hwQy, exp_lt_exp]; nlinarith), hwP,
            max_eq_left (by omega)]
          congr 1; push_cast; ring
  obtain ⟨⟨c, s⟩, rfl⟩ := IsLocalization.mk'_surjective W.toAffine.CoordinateRing⁰ f
  dsimp only
  have hs : (s : W.toAffine.CoordinateRing) ≠ 0 := nonZeroDivisors.ne_zero s.2
  have hspec := IsLocalization.mk'_spec W.toAffine.FunctionField c s
  have h1 := congrArg w hspec
  have h2 := congrArg (fun g => valuationInfty W g ^ a) hspec
  rw [Valuation.map_mul, hA, hA] at h1
  rw [Valuation.map_mul, mul_pow] at h2
  have hvs : valuationInfty W (algebraMap _ W.toAffine.FunctionField
      (s : W.toAffine.CoordinateRing)) ^ a ≠ 0 :=
    pow_ne_zero _ ((Valuation.ne_zero_iff _).mpr ((map_ne_zero_iff _ (IsFractionRing.injective _ _)).mpr hs))
  exact mul_right_cancel₀ hvs (h1.trans h2.symm)

omit [Field F] in
theorem genX_ne_zero' [Field F] (W : WeierstrassCurve F) : genX W ≠ 0 := by
  intro h
  apply transcendental_genX W
  rw [h]
  exact isAlgebraic_zero

theorem exists_eq_valuationInfty_pow (w : Valuation W.toAffine.FunctionField ℤᵐ⁰)
    (hF : ∀ c : F, c ≠ 0 → w (algebraMap F W.toAffine.FunctionField c) = 1)
    (hx : 1 < w (genX W)) : ∃ e : ℕ, 0 < e ∧ ∀ f, w f = valuationInfty W f ^ e := by
  have hx0 : w (genX W) ≠ 0 := (Valuation.ne_zero_iff _).mpr (genX_ne_zero' W)
  set k := log (w (genX W))
  have hxk : w (genX W) = exp k := (exp_log hx0).symm
  have hk : 0 < k := by
    rw [hxk, ← exp_zero, exp_lt_exp] at hx; exact hx
  obtain ⟨m, -, hm3⟩ := valuation_genY_of_one_lt w hF hk hxk
  refine ⟨(m - k).toNat, by omega, eq_valuationInfty_pow_of_genX w hF (by omega) ?_⟩
  rw [hxk]
  congr 1
  omega

end Infinity

section Classify

variable {W : WeierstrassCurve F} [IsAlgClosed F] [W.IsElliptic]

theorem valuationPoint_pointOfIdeal [DecidableEq F] (v : HeightOneSpectrum W.toAffine.CoordinateRing) :
    valuationPoint W (pointOfIdeal W v) = v.valuation W.toAffine.FunctionField := by
  obtain ⟨h, e⟩ : ∃ h : W.toAffine.Nonsingular _ _, pointOfIdeal W v = .some _ _ h := ⟨_, rfl⟩
  have hv : heightOneOfNonsingular h = v := by
    apply pointOfIdeal_injective W
    rw [pointOfIdeal_heightOneOfNonsingular, e]
  rw [e]
  show (heightOneOfNonsingular h).valuation _ = _
  rw [hv]

theorem exists_valuationPoint_pow [DecidableEq F] (w : Valuation W.toAffine.FunctionField ℤᵐ⁰)
    (hF : ∀ c : F, c ≠ 0 → w (algebraMap F W.toAffine.FunctionField c) = 1)
    (hnt : ∃ f, f ≠ 0 ∧ w f ≠ 1) :
    ∃ (P : W.toAffine.Point) (e : ℕ), 0 < e ∧ ∀ f, w f = valuationPoint W P f ^ e := by
  by_cases hx : 1 < w (genX W)
  · obtain ⟨e, he, h⟩ := exists_eq_valuationInfty_pow w hF hx
    exact ⟨0, e, he, h⟩
  · obtain ⟨v, -, e, he, h⟩ := exists_eq_pow_valuation_of_le_one w hF (not_lt.mp hx) hnt
    exact ⟨pointOfIdeal W v, e, he, fun f => by rw [valuationPoint_pointOfIdeal, h]⟩

theorem valuationPoint_genX_le_one {P : W.toAffine.Point} (hP : P ≠ 0) :
    valuationPoint W P (genX W) ≤ 1 := by
  cases P with
  | zero => exact absurd rfl hP
  | some x y h =>
    show (heightOneOfNonsingular h).valuation _ (algebraMap _ _ _) ≤ 1
    exact HeightOneSpectrum.valuation_le_one _ _

theorem valuationPoint_zero_genX : valuationPoint W 0 (genX W) = exp 2 := valuationInfty_genX W

theorem eq_zero_of_one_lt_valuationPoint_genX {P : W.toAffine.Point}
    (h : 1 < valuationPoint W P (genX W)) : P = 0 := by
  by_contra hP
  exact absurd (valuationPoint_genX_le_one hP) (not_le.mpr h)

theorem eq_of_valuationPoint_pow_eq [DecidableEq F] {P Q : W.toAffine.Point} {e e' : ℕ} (he : 0 < e)
    (h : ∀ f, valuationPoint W P f ^ e = valuationPoint W Q f ^ e') : P = Q := by
  have he' : e' ≠ 0 := by
    rintro rfl
    have := h 0
    rw [map_zero, zero_pow he.ne', pow_zero] at this
    exact zero_ne_one this

  have h' : ∀ f, valuationPoint W 0 f ^ e = valuationPoint W (Q - P) f ^ e' := by
    intro f
    have := h (translate W (-P) f)
    rwa [valuationPoint_translate, valuationPoint_translate, add_neg_cancel, ← sub_eq_add_neg] at this
  have hx := h' (genX W)
  rw [valuationPoint_zero_genX, ← exp_nsmul] at hx
  have hgt : 1 < valuationPoint W (Q - P) (genX W) := by
    by_contra hle
    rw [not_lt] at hle
    have : valuationPoint W (Q - P) (genX W) ^ e' ≤ 1 := pow_le_one' hle _
    rw [← hx, ← exp_zero, exp_le_exp] at this
    simp only [nsmul_eq_mul] at this
    have : (0 : ℤ) < e := by exact_mod_cast he
    linarith
  have := eq_zero_of_one_lt_valuationPoint_genX hgt
  rw [sub_eq_zero] at this
  exact this.symm

theorem eq_of_valuationPoint_pow_eq_pow (P : W.toAffine.Point) {e e' : ℕ}
    (h : ∀ f, valuationPoint W P f ^ e = valuationPoint W P f ^ e') : e = e' := by
  obtain ⟨t, ht⟩ := exists_valuationPoint_eq_exp_neg_one W P
  have := h t
  rw [ht, ← exp_nsmul, ← exp_nsmul, exp_inj] at this
  simp only [nsmul_eq_mul, mul_neg, mul_one, neg_inj] at this
  exact_mod_cast this

end Classify

section Isogeny

variable [IsAlgClosed F] [DecidableEq F] {E E' E'' : WeierstrassCurve F} [E.IsElliptic]
  [E'.IsElliptic] [E''.IsElliptic]


omit [IsAlgClosed F] [DecidableEq F] in
theorem valuation_le_one_of_isIntegral {K : Type*} [Field K] [Algebra F K]
    (M : IntermediateField F K) (v : Valuation K ℤᵐ⁰) (hM : ∀ m : M, v (m : K) ≤ 1) {z : K}
    (hz : IsIntegral M z) : v z ≤ 1 := by
  by_contra hgt
  push_neg at hgt
  have hz0 : z ≠ 0 := by rintro rfl; simp at hgt
  have hvz : v z ≠ 0 := (Valuation.ne_zero_iff _).mpr hz0
  set k := log (v z)
  have hk : v z = exp k := (exp_log hvz).symm
  have hkpos : 0 < k := by rw [hk, ← exp_zero, exp_lt_exp] at hgt; exact hgt
  have hmon : (minpoly M z).Monic := minpoly.monic hz
  have h0 := minpoly.aeval M z
  rw [hmon.as_sum] at h0

  simp only [map_add (f := _), map_pow, aeval_X, map_sum, map_mul, aeval_C] at h0
  set n := (minpoly M z).natDegree
  have hpow : ∀ i : ℕ, v z ^ i = exp (i * k) := fun i => by
    rw [hk, ← exp_nsmul, nsmul_eq_mul]
  have hsum : v (∑ i ∈ Finset.range n, algebraMap M K ((minpoly M z).coeff i) * z ^ i) <
      v (z ^ n) := by
    rw [Valuation.map_pow, hpow]
    apply Valuation.map_sum_lt _ exp_ne_zero
    intro i hi
    rw [Valuation.map_mul, Valuation.map_pow, hpow]
    calc v (algebraMap M K ((minpoly M z).coeff i)) * exp (i * k) ≤ 1 * exp (i * k) :=
          mul_le_mul_left (hM _) _
      _ < exp (n * k) := by
          rw [one_mul, exp_lt_exp]
          have : (i : ℤ) < n := by exact_mod_cast Finset.mem_range.mp hi
          nlinarith
  have := Valuation.map_add_eq_of_lt_left v hsum
  rw [h0, map_zero, Valuation.map_pow, hpow] at this
  exact exp_ne_zero this.symm

theorem valuationPoint_zero_eq (f : E.toAffine.FunctionField) :
    valuationPoint E 0 f = valuationInfty E f := rfl

namespace Isogeny

theorem exists_point_valuation_comap (φ : Isogeny E E') :
    ∃ (Q : E'.toAffine.Point) (e : ℕ), 0 < e ∧ ∀ R f,
      valuationPoint E R (φ.comap f) = valuationPoint E' (Q + φ.pointMap R) f ^ e := by
  let w : Valuation E'.toAffine.FunctionField ℤᵐ⁰ := (valuationPoint E 0).comap φ.comap.toRingHom
  have hw : ∀ f, w f = valuationPoint E 0 (φ.comap f) := fun f => rfl
  have hF : ∀ c : F, c ≠ 0 → w (algebraMap F E'.toAffine.FunctionField c) = 1 := by
    intro c hc
    rw [hw, AlgHom.commutes, valuationPoint_zero_eq, valuationInfty_algebraMap_const_eq_one E hc]
  have hnt : ∃ f, f ≠ 0 ∧ w f ≠ 1 := by
    by_contra hcon
    push_neg at hcon
    have hM : ∀ m : φ.comap.fieldRange, valuationPoint E 0 (m : E.toAffine.FunctionField) ≤ 1 := by
      rintro ⟨m, f, rfl⟩
      by_cases hf : f = 0
      · simp [hf]
      · exact (hcon f hf).le
    have := φ.finiteDimensional
    have hint : IsIntegral φ.comap.fieldRange (genX E) := IsIntegral.of_finite _ _
    have := valuation_le_one_of_isIntegral _ _ hM hint
    rw [valuationPoint_zero_genX, ← exp_zero, exp_le_exp] at this
    omega
  obtain ⟨Q, e, he, hQ⟩ := exists_valuationPoint_pow w hF hnt
  refine ⟨Q, e, he, fun R f => ?_⟩
  have h1 : valuationPoint E R (φ.comap f) = valuationPoint E 0 (translate E R (φ.comap f)) := by
    rw [valuationPoint_translate, zero_add]
  rw [h1, ← AlgHom.comp_apply, ← φ.comap_comp_translate, AlgHom.comp_apply, ← hw, hQ,
    valuationPoint_translate]

end Isogeny

theorem one_lt_valuationPoint_mulIsogeny_x {n : ℤ} (hn : n ≠ 0) :
    1 < valuationPoint E 0 ((mulIsogeny E n hn).comap (genX E)) := by
  have hvF : ∀ c : F, c ≠ 0 → valuationInfty E (algebraMap F E.toAffine.FunctionField c) = 1 :=
    fun c hc => valuationInfty_algebraMap_const_eq_one E hc
  have hΦ0 : E.Φ n ≠ 0 := by
    intro h
    have := E.natDegree_Φ n
    rw [h, natDegree_zero] at this
    have : 0 < n.natAbs ^ 2 := by have := Int.natAbs_pos.mpr hn; positivity
    omega
  have hΨ0 : E.ΨSq n ≠ 0 := ΨSq_ne_zero_of_ne_zero E hn
  have hΦ := valuation_poly_of_one_lt (valuationInfty E) hvF two_pos (valuationInfty_genX E) hΦ0
  have hΨ := valuation_poly_of_one_lt (valuationInfty E) hvF two_pos (valuationInfty_genX E) hΨ0
  rw [E.natDegree_Φ n] at hΦ
  have hle := natDegree_ΨSq_le E n
  have hpos : 0 < n.natAbs ^ 2 := by have := Int.natAbs_pos.mpr hn; positivity
  rw [Isogeny.comap_genX, mulIsogeny_alt, aeval_genX, aeval_genX, valuationPoint_zero_eq, map_div₀,
    hΦ, hΨ, ← exp_sub, ← exp_zero, exp_lt_exp]
  have : ((E.ΨSq n).natDegree : ℤ) < (n.natAbs ^ 2 : ℕ) := by
    have : (E.ΨSq n).natDegree < n.natAbs ^ 2 := by omega
    exact_mod_cast this
  push_cast at this ⊢
  linarith

namespace Isogeny

theorem comp_mulIsogeny_two (φ : Isogeny E E') :
    φ.comp (mulIsogeny E 2 two_ne_zero) = (mulIsogeny E' 2 two_ne_zero).comp φ := by
  apply ext'
  have h2 : (mulIsogeny E 2 two_ne_zero).1 = genericPoint E + genericPoint E := by
    rw [mulIsogeny_val, two_zsmul]
  have hG : IsGenPt E (genericPoint E + genericPoint E) := isGenPt_two_smul_genericPoint
  have e1 : (φ.comp (mulIsogeny E 2 two_ne_zero)).1 = φ.1 + φ.1 := by
    show φ.app (mulIsogeny E 2 two_ne_zero).1 _ = _
    rw [φ.app_congr h2 _ hG, φ.app_add isGenPt_genericPoint isGenPt_genericPoint hG,
      app_genericPoint']
  rw [e1, comp_val, mulIsogeny_val, map_zsmul, map_comap_genericPoint, two_zsmul]

theorem comap_comp_mulIsogeny_two (φ : Isogeny E E') :
    (mulIsogeny E 2 two_ne_zero).comap.comp φ.comap = φ.comap.comp (mulIsogeny E' 2 two_ne_zero).comap := by
  rw [← comap_comp, ← comap_comp, comp_mulIsogeny_two]

theorem mulIsogeny_two_valuation (E : WeierstrassCurve F) [E.IsElliptic] :
    ∃ e : ℕ, 0 < e ∧ ∀ R f, valuationPoint E R ((mulIsogeny E 2 two_ne_zero).comap f) =
      valuationPoint E ((2 : ℤ) • R) f ^ e := by
  obtain ⟨Q, e, he, hQ⟩ := (mulIsogeny E 2 two_ne_zero).exists_point_valuation_comap
  have hQ0 : Q = 0 := by
    have h := hQ 0 (genX E)
    have hlt := one_lt_valuationPoint_mulIsogeny_x (E := E) (n := 2) two_ne_zero
    rw [h, pointMap_mulIsogeny, smul_zero, add_zero] at hlt
    apply eq_zero_of_one_lt_valuationPoint_genX
    by_contra hle
    rw [not_lt] at hle
    exact absurd (pow_le_one' hle e) (not_le.mpr hlt)
  refine ⟨e, he, fun R f => ?_⟩
  rw [hQ, hQ0, zero_add, pointMap_mulIsogeny]

theorem exists_ramIdx (φ : Isogeny E E') : ∃ e : ℕ, 0 < e ∧ ∀ R f,
    valuationPoint E R (φ.comap f) = valuationPoint E' (φ.pointMap R) f ^ e := by
  obtain ⟨Q, e, he, hQ⟩ := φ.exists_point_valuation_comap
  suffices hQ0 : Q = 0 by
    refine ⟨e, he, fun R f => ?_⟩
    rw [hQ, hQ0, zero_add]
  obtain ⟨e₂, he₂, h₂⟩ := mulIsogeny_two_valuation E
  obtain ⟨e₂', he₂', h₂'⟩ := mulIsogeny_two_valuation E'
  have hφ0 : φ.pointMap 0 = 0 := map_zero φ.pointHom
  have key : ∀ f, valuationPoint E' Q f ^ (e * e₂) =
      valuationPoint E' ((2 : ℤ) • Q) f ^ (e₂' * e) := by
    intro f
    have h1 := h₂ 0 (φ.comap f)
    rw [smul_zero, hQ, hφ0, add_zero, ← pow_mul] at h1
    have h2 := DFunLike.congr_fun (comap_comp_mulIsogeny_two φ) f
    simp only [AlgHom.comp_apply] at h2
    rw [← h1, h2, hQ, hφ0, add_zero, h₂', ← pow_mul]
  have := eq_of_valuationPoint_pow_eq (Nat.mul_pos he he₂) key
  rw [two_zsmul, left_eq_add] at this
  exact this

noncomputable def ramIdx (φ : Isogeny E E') : ℕ := φ.exists_ramIdx.choose

theorem ramIdx_pos (φ : Isogeny E E') : 0 < φ.ramIdx := φ.exists_ramIdx.choose_spec.1

theorem valuationPoint_comap (φ : Isogeny E E') (R : E.toAffine.Point)
    (f : E'.toAffine.FunctionField) :
    valuationPoint E R (φ.comap f) = valuationPoint E' (φ.pointMap R) f ^ φ.ramIdx :=
  φ.exists_ramIdx.choose_spec.2 R f

theorem ordPoint_comap (φ : Isogeny E E') (R : E.toAffine.Point) {f : E'.toAffine.FunctionField}
    (hf : f ≠ 0) :
    ordPoint E R (φ.comap f) = φ.ramIdx * ordPoint E' (φ.pointMap R) f := by
  have hf' : φ.comap f ≠ 0 := (map_ne_zero_iff _ φ.comap.toRingHom.injective).mpr hf
  have h := φ.valuationPoint_comap R f
  rw [valuationPoint_eq_exp E R hf', valuationPoint_eq_exp E' _ hf, ← exp_nsmul, exp_inj,
    nsmul_eq_mul] at h
  linarith

theorem ramIdx_eq_of (φ : Isogeny E E') {e : ℕ} (R : E.toAffine.Point)
    (h : ∀ f, valuationPoint E R (φ.comap f) = valuationPoint E' (φ.pointMap R) f ^ e) :
    φ.ramIdx = e :=
  eq_of_valuationPoint_pow_eq_pow (φ.pointMap R) fun f => by rw [← h, valuationPoint_comap]

theorem ramIdx_comp (ψ : Isogeny E' E'') (φ : Isogeny E E') :
    (ψ.comp φ).ramIdx = ψ.ramIdx * φ.ramIdx := by
  apply ramIdx_eq_of _ 0
  intro f
  rw [comap_comp, AlgHom.comp_apply, valuationPoint_comap, valuationPoint_comap, pointMap_comp,
    ← pow_mul, mul_comm]

end Isogeny

end Isogeny

end GroundTheory.Arith.Abelian
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyValuation =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.WeilPairing =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.AbelianVarieties.WeilPairing", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.DivisorsPic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.LocalProperties.Reduced\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Arith.Abelian

open Polynomial WeierstrassCurve WeierstrassCurve.Affine AddSubgroup

universe u

variable {F : Type u} [Field F] [DecidableEq F] [IsAlgClosed F] (W : WeierstrassCurve F)
  [W.IsElliptic]

theorem divisorOf_pow {f : W.toAffine.FunctionField} (hf : f ≠ 0) (k : ℕ) :
    divisorOf W (f ^ k) = k • divisorOf W f := by
  induction k with
  | zero => rw [pow_zero, divisorOf_one, zero_smul]
  | succ k ih => rw [pow_succ, divisorOf_mul W (pow_ne_zero k hf) hf, ih, succ_nsmul]

theorem divisorOf_prod {ι' : Type*} (s : Finset ι') (φ : ι' → W.toAffine.FunctionField)
    (hφ : ∀ i ∈ s, φ i ≠ 0) : divisorOf W (∏ i ∈ s, φ i) = ∑ i ∈ s, divisorOf W (φ i) := by
  classical
  induction s using Finset.induction_on with
  | empty => rw [Finset.prod_empty, Finset.sum_empty, divisorOf_one]
  | insert a s ha ih =>
    rw [Finset.prod_insert ha, Finset.sum_insert ha,
      divisorOf_mul W (hφ a (Finset.mem_insert_self a s))
        (Finset.prod_ne_zero_iff.mpr fun i hi => hφ i (Finset.mem_insert_of_mem hi)),
      ih fun i hi => hφ i (Finset.mem_insert_of_mem hi)]



variable {W}

variable (W)

variable {W}


end GroundTheory.Arith.Abelian
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.WeilPairing =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyRamification =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyRamification", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyValuation\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenySeparable\nimport GroundTheory.ArithmeticGeometry.AbelianVarieties.DivisorsPullback\nimport GroundTheory.ArithmeticGeometry.AbelianVarieties.DivisorsValuation\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.DualIsogenyExists\nimport GroundTheory.ArithmeticGeometry.AbelianVarieties.KernelCard\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.WeilPairing\nimport GroundTheory.ArithmeticGeometry.AbelianVarieties.WeilTranslate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.AlgebraicGeometry.EllipticCurve.DivisionPolynomial.Degree\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.LocalProperties.Reduced\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Arith.Abelian

open Polynomial WeierstrassCurve WeierstrassCurve.Affine WeierstrassCurve.Affine.CoordinateRing
  IsDedekindDomain WithZero IntermediateField

universe u

variable {F : Type u} [Field F] [IsAlgClosed F] [DecidableEq F] {E E' E'' : WeierstrassCurve F}
  [E.IsElliptic] [E'.IsElliptic] [E''.IsElliptic]

namespace Isogeny

end Isogeny

section Poly

variable (E)

theorem ordPoint_zero_poly {p : F[X]} (hp : p ≠ 0) :
    ordPoint E 0 (algebraMap F[X] E.toAffine.FunctionField p) = -2 * (p.natDegree : ℤ) := by
  have hvF : ∀ c : F, c ≠ 0 → valuationInfty E (algebraMap F E.toAffine.FunctionField c) = 1 :=
    fun c hc => valuationInfty_algebraMap_const_eq_one E hc
  have h := valuation_poly_of_one_lt (valuationInfty E) hvF two_pos (valuationInfty_genX E) hp
  have hne : algebraMap F[X] E.toAffine.FunctionField p ≠ 0 := by
    rw [← aeval_genX]; exact (aeval_genX_eq_zero_iff E p).not.mpr hp
  have h2 := valuationPoint_eq_exp E 0 hne
  rw [valuationPoint_zero_eq, h, exp_inj] at h2
  linarith

theorem ordPoint_some_poly_of_eval_ne {x₀ y₀ : F} (h : E.toAffine.Nonsingular x₀ y₀) {p : F[X]}
    (hp : p.eval x₀ ≠ 0) :
    ordPoint E (.some x₀ y₀ h) (algebraMap F[X] E.toAffine.FunctionField p) = 0 := by
  have hp0 : p ≠ 0 := by rintro rfl; simp at hp
  have hne : algebraMap F[X] E.toAffine.FunctionField p ≠ 0 := by
    rw [← aeval_genX]; exact (aeval_genX_eq_zero_iff E p).not.mpr hp0
  have hnot : algebraMap F[X] E.toAffine.CoordinateRing p ∉ (heightOneOfNonsingular h).asIdeal := by
    intro hmem
    have := XYIdeal_le_ker h.1 hmem
    rw [RingHom.mem_ker] at this
    apply hp
    rw [← this]
    show _ = evalPoint h.1 (AdjoinRoot.mk _ (C p))
    rw [evalPoint_mk, evalEval_C]
  have hv : valuationPoint E (.some x₀ y₀ h) (algebraMap F[X] E.toAffine.FunctionField p) = 1 := by
    show (heightOneOfNonsingular h).valuation _ _ = 1
    rw [IsScalarTower.algebraMap_apply F[X] E.toAffine.CoordinateRing E.toAffine.FunctionField,
      HeightOneSpectrum.valuation_of_algebraMap,
      HeightOneSpectrum.intValuation_eq_one_iff_mem_primeCompl]
    exact hnot
  have h2 := valuationPoint_eq_exp E (.some x₀ y₀ h) hne
  rw [hv, ← exp_zero, exp_inj] at h2
  linarith

omit [IsAlgClosed F] [DecidableEq F] in
theorem algebraMap_poly_ne_zero {p : F[X]} (hp : p ≠ 0) :
    algebraMap F[X] E.toAffine.FunctionField p ≠ 0 := by
  rw [← aeval_genX]; exact (aeval_genX_eq_zero_iff E p).not.mpr hp

theorem ordPoint_div (P : E.toAffine.Point) {f g : E.toAffine.FunctionField} (hf : f ≠ 0)
    (hg : g ≠ 0) : ordPoint E P (f / g) = ordPoint E P f - ordPoint E P g := by
  have := ordPoint_mul E P (div_ne_zero hf hg) hg
  rw [div_mul_cancel₀ f hg] at this
  linarith

end Poly

section Mul

variable (E)

theorem ramIdx_mulIsogeny_mul_card_ker (n : ℤ) (hn : n ≠ 0) :
    (mulIsogeny E n hn).ramIdx * Nat.card (mulIsogeny E n hn).pointHom.ker = n.natAbs ^ 2 := by
  classical
  set φ := mulIsogeny E n hn
  set e := φ.ramIdx
  have hΨ0 : E.ΨSq n ≠ 0 := ΨSq_ne_zero_of_ne_zero E hn
  have hΦ0 : E.Φ n ≠ 0 := by
    intro h
    have := E.natDegree_Φ n
    rw [h, natDegree_zero] at this
    have : 0 < n.natAbs ^ 2 := by have := Int.natAbs_pos.mpr hn; positivity
    omega
  set a := algebraMap F[X] E.toAffine.FunctionField (E.ΨSq n)
  set b := algebraMap F[X] E.toAffine.FunctionField (E.Φ n)
  have ha : a ≠ 0 := algebraMap_poly_ne_zero E hΨ0
  have hb : b ≠ 0 := algebraMap_poly_ne_zero E hΦ0
  have hx : φ.comap (genX E) = b / a := by
    rw [Isogeny.comap_genX, mulIsogeny_alt, aeval_genX, aeval_genX]
  have hgx : genX E ≠ 0 := genX_ne_zero' E
  have hordx : ordPoint E 0 (genX E) = -2 := by
    have := ordPoint_zero_poly E (p := X) X_ne_zero
    rw [natDegree_X] at this
    rw [genX_eq]; simpa using this
  have hker : ∀ T : E.toAffine.Point, T ∈ φ.pointHom.ker ↔ n • T = 0 := fun T => by
    rw [AddMonoidHom.mem_ker, Isogeny.pointHom_apply, Isogeny.pointMap_mulIsogeny]

  have hO : (e : ℤ) = (n.natAbs ^ 2 : ℕ) - ((E.ΨSq n).natDegree : ℤ) := by
    have h1 := φ.ordPoint_comap 0 hgx
    rw [Isogeny.pointMap_mulIsogeny, smul_zero, hordx, hx, ordPoint_div E 0 hb ha,
      ordPoint_zero_poly E hΦ0, ordPoint_zero_poly E hΨ0, E.natDegree_Φ n] at h1
    linarith

  have hA : ∀ {x₀ y₀ : F} (h : E.toAffine.Nonsingular x₀ y₀),
      ordPoint E (.some x₀ y₀ h) a = if n • (Point.some x₀ y₀ h) = 0 then 2 * (e : ℤ) else 0 := by
    intro x₀ y₀ h
    split_ifs with hT
    · have hz : (E.ΨSq n).eval x₀ = 0 := (zsmul_eq_zero_iff E h n).mp hT
      have hΦe : (E.Φ n).eval x₀ ≠ 0 := by
        intro hΦ
        obtain ⟨u, v, huv⟩ := isCoprime_Φ_ΨSq E n
        have := congrArg (eval x₀) huv
        simp only [eval_add, eval_mul, hΦ, hz, mul_zero, add_zero, eval_one] at this
        exact zero_ne_one this
      have h1 := φ.ordPoint_comap (.some x₀ y₀ h) hgx
      rw [Isogeny.pointMap_mulIsogeny, hT, hordx, hx, ordPoint_div E _ hb ha,
        ordPoint_some_poly_of_eval_ne E h hΦe] at h1
      linarith
    · exact ordPoint_some_poly_of_eval_ne E h (fun hz => hT ((zsmul_eq_zero_iff E h n).mpr hz))

  have hfin : Set.Finite {T : E.toAffine.Point | n • T = 0} := by
    have : Finite φ.pointHom.ker := φ.finite_ker
    have h2 : ({T : E.toAffine.Point | n • T = 0} : Set E.toAffine.Point) = φ.pointHom.ker := by
      ext T; exact (hker T).symm
    rw [h2]
    exact Set.toFinite _
  set S := hfin.toFinset
  have hcard : Nat.card φ.pointHom.ker = S.card := by
    rw [← Nat.card_eq_card_finite_toFinset hfin]
    exact Nat.card_congr (Equiv.subtypeEquivRight fun T => hker T)
  have h0S : (0 : E.toAffine.Point) ∈ S := by simp [S]
  set D : CurveDivisor E := (∑ T ∈ S.erase 0, Finsupp.single T (2 * (e : ℤ))) +
    Finsupp.single 0 (-2 * ((E.ΨSq n).natDegree : ℤ))
  have hD : divisorOf E a = D := by
    ext P
    rw [divisorOf_apply]
    simp only [D, Finsupp.add_apply, Finsupp.finsetSum_apply, Finsupp.single_apply]
    by_cases hP : P = 0
    · subst hP
      rw [Finset.sum_eq_zero (fun T hT => if_neg (Finset.ne_of_mem_erase hT)), if_pos rfl, zero_add,
        ordPoint_zero_poly E hΨ0]
    · rw [if_neg (Ne.symm hP), add_zero, Finset.sum_ite_eq']
      obtain ⟨h, hP'⟩ := eq_some_xOf_yOf E hP
      have hmem : P ∈ S.erase 0 ↔ n • P = 0 := by simp [S, hP]
      rw [hP', hA h, ← hP']
      by_cases hT : n • P = 0
      · rw [if_pos hT, if_pos (hmem.mpr hT)]
      · rw [if_neg hT, if_neg (fun h' => hT (hmem.mp h'))]
  have hdeg := divisorDegree_divisorOf E ha

  rw [hD, map_add (f := _), map_sum, divisorDegree_single] at hdeg
  simp only [divisorDegree_single, Finset.sum_const, Finset.card_erase_of_mem h0S] at hdeg
  have hS : 1 ≤ S.card := Finset.card_pos.mpr ⟨0, h0S⟩
  rw [hcard]
  rw [nsmul_eq_mul, Nat.cast_sub hS] at hdeg
  have h2 : 2 * ((e : ℤ) * S.card) = 2 * ((n.natAbs ^ 2 : ℕ) : ℤ) := by
    push_cast at hdeg hO ⊢
    linear_combination hdeg + 2 * hO
  have h3 : (e : ℤ) * S.card = ((n.natAbs ^ 2 : ℕ) : ℤ) := by linarith
  exact_mod_cast h3

end Mul

section Dvd

theorem infinite_point (E : WeierstrassCurve F) [E.IsElliptic] : Infinite E.toAffine.Point := by
  have : Infinite F := infinite_of_isSepClosed F
  choose y hy using fun x : F => exists_equation E x
  refine Infinite.of_injective (fun x : F => Point.some x (y x)
    (equation_iff_nonsingular.mp (hy x))) fun a b hab => ?_
  simp only [Point.some.injEq] at hab
  exact hab.1

namespace Isogeny

theorem exists_ordPoint_eq_ite (S : Finset E.toAffine.Point) :
    ∃ t : E.toAffine.FunctionField, t ≠ 0 ∧
      ∀ T ∈ S, ordPoint E T t = if T = 0 then 1 else 0 := by
  have := infinite_point E
  obtain ⟨B, hB⟩ := Infinite.exists_notMem_finset S
  obtain ⟨C, hC⟩ := Infinite.exists_notMem_finset (S ∪ S.image (· - B))
  have hC1 : C ∉ S := fun h => hC (Finset.mem_union_left _ h)
  have hC2 : B + C ∉ S := fun h => hC (Finset.mem_union_right _
    (Finset.mem_image.mpr ⟨B + C, h, by abel⟩))
  set D : CurveDivisor E := Finsupp.single 0 1 + Finsupp.single (B + C) 1 - Finsupp.single B 1 -
    Finsupp.single C 1
  have hdeg : divisorDegree E D = 0 := by
    simp only [D, map_sub, map_add (f := _), divisorDegree_single]; norm_num
  have hsum : divisorSum E D = 0 := by
    simp only [D, map_sub, map_add (f := _), divisorSum_single, one_smul]; abel
  obtain ⟨t, ht, htD⟩ := exists_divisorOf_eq E hdeg hsum
  refine ⟨t, ht, fun T hT => ?_⟩
  rw [← divisorOf_apply, htD]
  have h1 : B + C ≠ T := fun h => hC2 (h ▸ hT)
  have h2 : B ≠ T := fun h => hB (h ▸ hT)
  have h3 : C ≠ T := fun h => hC1 (h ▸ hT)
  simp only [D, Finsupp.sub_apply, Finsupp.add_apply, Finsupp.single_apply, if_neg h1, if_neg h2,
    if_neg h3]
  by_cases h0 : T = 0
  · subst h0; simp
  · rw [if_neg (Ne.symm h0), if_neg h0]; simp

theorem ramIdx_dvd_insepDeg (φ : Isogeny E E') : φ.ramIdx ∣ φ.insepDeg := by
  classical
  haveI := Fintype.ofFinite φ.pointHom.ker
  set S : Finset E.toAffine.Point := Finset.univ.image (fun T : φ.pointHom.ker => (T : E.toAffine.Point))
  obtain ⟨t, ht, hord⟩ := exists_ordPoint_eq_ite (E := E) S
  set u := ∏ T : φ.pointHom.ker, translate E T t
  have hu0 : u ≠ 0 := Finset.prod_ne_zero_iff.mpr fun T _ => translate_ne_zero E _ ht
  have hfix : u ∈ φ.fixedKer := by
    apply mem_fixedKer_of_forall
    intro R hR
    rw [map_prod]
    simp only [translate_translate]
    exact Fintype.prod_equiv (Equiv.addLeft (⟨R, hR⟩ : φ.pointHom.ker)) _ _ (fun T => rfl)
  have hu : ordPoint E 0 u = 1 := by
    rw [← divisorOf_apply, divisorOf_prod E _ _ (fun T _ => translate_ne_zero E _ ht),
      Finsupp.finsetSum_apply]
    have : ∀ T : φ.pointHom.ker, divisorOf E (translate E T t) 0 =
        if (T : E.toAffine.Point) = 0 then 1 else 0 := by
      intro T
      rw [divisorOf_apply, ordPoint_translate E 0 _ ht, zero_add,
        hord _ (Finset.mem_image_of_mem _ (Finset.mem_univ T))]
    simp only [this]
    rw [Finset.sum_ite, Finset.sum_const_zero, add_zero, Finset.sum_const, nsmul_eq_mul, mul_one]
    have : (Finset.univ.filter fun T : φ.pointHom.ker => (T : E.toAffine.Point) = 0) = {0} := by
      ext T
      simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_singleton]
      exact ⟨fun h => Subtype.ext h, fun h => by rw [h]; rfl⟩
    rw [this, Finset.card_singleton, Nat.cast_one]
  obtain ⟨g, hg⟩ := φ.exists_comap_eq_pow hfix
  have hg0 : g ≠ 0 := by
    rintro rfl
    rw [map_zero, eq_comm] at hg
    exact pow_ne_zero _ hu0 hg
  have h1 := φ.ordPoint_comap 0 hg0
  rw [hg, ← divisorOf_apply, divisorOf_pow E hu0, Finsupp.smul_apply, divisorOf_apply, hu,
    nsmul_eq_mul, mul_one, show φ.pointMap 0 = 0 from φ.pointHom.map_zero] at h1
  exact Int.natCast_dvd_natCast.mp ⟨_, h1⟩

end Isogeny

end Dvd

section Degree

namespace Isogeny

theorem card_ker_comp (ψ : Isogeny E' E'') (φ : Isogeny E E') :
    Nat.card (ψ.comp φ).pointHom.ker = Nat.card ψ.pointHom.ker * Nat.card φ.pointHom.ker := by
  set K := (ψ.comp φ).pointHom.ker
  have hK : ∀ T, T ∈ K ↔ φ.pointMap T ∈ ψ.pointHom.ker := fun T => by
    rw [AddMonoidHom.mem_ker, AddMonoidHom.mem_ker, pointHom_apply, pointHom_apply, pointMap_comp]
  let h : K →+ ψ.pointHom.ker :=
    { toFun := fun T => ⟨φ.pointMap T, (hK T).mp T.2⟩
      map_zero' := Subtype.ext (φ.pointHom.map_zero)
      map_add' := fun S T => Subtype.ext (φ.pointMap_add S T) }
  have hsurj : Function.Surjective h := by
    rintro ⟨S, hS⟩
    obtain ⟨T, rfl⟩ := φ.pointMap_surjective S
    exact ⟨⟨T, (hK T).mpr hS⟩, rfl⟩
  have e1 := AddSubgroup.card_eq_card_quotient_mul_card_addSubgroup h.ker
  rw [Nat.card_congr (QuotientAddGroup.quotientKerEquivOfSurjective h hsurj).toEquiv] at e1
  rw [e1]
  congr 1
  refine Nat.card_congr
    { toFun := fun x => ⟨x.1.1, by
        have := x.2
        rw [AddMonoidHom.mem_ker] at this ⊢
        exact congrArg Subtype.val this⟩
      invFun := fun T => ⟨⟨T.1, (hK T.1).mpr (by
        rw [AddMonoidHom.mem_ker] at ⊢
        have := T.2
        rw [AddMonoidHom.mem_ker, pointHom_apply] at this
        rw [pointHom_apply, this]; exact ψ.pointHom.map_zero)⟩, by
        rw [AddMonoidHom.mem_ker]
        exact Subtype.ext (by have := T.2; rwa [AddMonoidHom.mem_ker] at this)⟩
      left_inv := fun x => rfl
      right_inv := fun T => rfl }

theorem ramIdx_eq_insepDeg (φ : Isogeny E E') : φ.ramIdx = φ.insepDeg := by
  set d := φ.degree
  have hd : (d : ℤ) ≠ 0 := Nat.cast_ne_zero.mpr φ.degree_pos.ne'
  have hc := φ.dual_comp
  have he : φ.dual.ramIdx * φ.ramIdx = (mulIsogeny E d hd).ramIdx := by
    rw [← ramIdx_comp, hc]
  have hk : Nat.card φ.dual.pointHom.ker * Nat.card φ.pointHom.ker =
      Nat.card (mulIsogeny E d hd).pointHom.ker := by
    rw [← card_ker_comp, hc]
  have h1 := ramIdx_mulIsogeny_mul_card_ker E (d : ℤ) hd
  rw [Int.natAbs_natCast, ← he, ← hk] at h1
  have hq1 := φ.degree_eq_insepDeg_mul
  have hq2 := φ.dual.degree_eq_insepDeg_mul
  rw [degree_dual] at hq2
  have hk1 : 0 < Nat.card φ.pointHom.ker := Nat.card_pos
  have hk2 : 0 < Nat.card φ.dual.pointHom.ker := Nat.card_pos
  have heq : φ.dual.ramIdx * φ.ramIdx = φ.dual.insepDeg * φ.insepDeg := by
    have : (φ.dual.ramIdx * φ.ramIdx) * (Nat.card φ.dual.pointHom.ker * Nat.card φ.pointHom.ker) =
        (φ.dual.insepDeg * φ.insepDeg) *
          (Nat.card φ.dual.pointHom.ker * Nat.card φ.pointHom.ker) := by
      calc _ = d ^ 2 := by rw [← h1]
        _ = _ := by
          rw [sq]
          show φ.degree * φ.degree = _
          nth_rewrite 1 [hq2]
          rw [hq1]
          ring
    exact Nat.eq_of_mul_eq_mul_right (Nat.mul_pos hk2 hk1) this
  have l1 := Nat.le_of_dvd φ.insepDeg_pos φ.ramIdx_dvd_insepDeg
  have l2 := Nat.le_of_dvd φ.dual.insepDeg_pos φ.dual.ramIdx_dvd_insepDeg
  have p1 := φ.ramIdx_pos
  have p2 := φ.dual.ramIdx_pos
  by_contra hne
  have hlt : φ.ramIdx < φ.insepDeg := lt_of_le_of_ne l1 hne
  have : φ.dual.ramIdx * φ.ramIdx < φ.dual.insepDeg * φ.insepDeg :=
    calc φ.dual.ramIdx * φ.ramIdx < φ.dual.ramIdx * φ.insepDeg := Nat.mul_lt_mul_of_pos_left hlt p2
      _ ≤ φ.dual.insepDeg * φ.insepDeg := Nat.mul_le_mul_right _ l2
  omega

theorem ramIdx_mul_card_ker (φ : Isogeny E E') : φ.ramIdx * Nat.card φ.pointHom.ker = φ.degree := by
  rw [ramIdx_eq_insepDeg, degree_eq_insepDeg_mul]

end Isogeny

end Degree

end GroundTheory.Arith.Abelian
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.AbelianVarieties.IsogenyRamification =====
