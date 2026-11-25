module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.JacobianTransformationLaw
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.Development
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.WeightedSumScaling
public import Mathlib.CategoryTheory.Category.Basic
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.SumSliceEq
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.IaDivDown
public import Mathlib.Algebra.BigOperators.Field
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.IntegralApproximationByInteger
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.IsUnitRedP
public import Formalism.PeriodIntegrals.TwistedEisensteinNonvanishing
public import Formalism.LocalToGlobal.Columns.ChainTwAux
public import Formalism.LocalToGlobal.Columns.ChainTwFinal
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.Columns.ChainTwCst
import Formalism.LocalToGlobal.Columns.ChainTwPsi

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TestFunctionPeriodicity, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.WeightedSumToGaussSum, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.ChangeVariablesDeterminantOne, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.FreeCoordinateAffineInvertible, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TwistedEisensteinOfHypotheses, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.UnfoldingMatrixFreeCoordinate, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TwistedEisensteinOfRemaining, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TwistedEisensteinNonvanishing, Formalism.LocalToGlobal.Columns.UnfoldingNonvanishingDoubleCosetHolds

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TestFunctionPeriodicity =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TestFunctionPeriodicity", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.JacobianTransformationLaw\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module

noncomputable section

namespace PI.TwistedEisensteinNonvanishing.W

open Loc LocE

section PhiFacts

variable {E K : Type} [Field E] [NumberField E] [StarRing E] [Field K] {P : HeightOneSpectrum (𝓞 E)}

theorem fPos_lt' {k₀ c n l : ℕ} (_hk : k₀ ≤ n) (hl : l < n + c) : fPos k₀ c n l < n + c := by
  unfold fPos
  split_ifs <;> omega

theorem fIdx_fPos' {k₀ c n l : ℕ} (hk : k₀ ≤ n) (hl : l < n + c) : fIdx k₀ c n (fPos k₀ c n l) = l := by
  unfold fIdx fPos
  split_ifs <;> omega

theorem eN_out {N s : ℕ} (hs : ¬ s < N) : eN E N s = 0 := by
  funext l
  have hl := l.isLt
  simp only [eN, Pi.zero_apply]
  rw [if_neg (by omega)]

theorem entB_add' {N' N : ℕ} (q k₀ c' n' c n : ℕ) (x y : HomE E N' N) (p p' : ℕ) :
    entB q k₀ c' n' c n 0 0 (x + y) p p' = entB q k₀ c' n' c n 0 0 x p p' + entB q k₀ c' n' c n 0 0 y p p' := by
  unfold entB atN
  split_ifs <;> simp [add_mul]

theorem unitV_congr' (ξ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ) {a b : E} (h : redP P a = redP P b) :
    unitV ξ a = unitV ξ b := by
  unfold unitV
  by_cases ha : IsUnit (redP P a)
  · have hb : IsUnit (redP P b) := h ▸ ha
    rw [dite_eq_left ha, dite_eq_left hb, show ha.unit = hb.unit from Units.ext h]
  · rw [dite_eq_right ha, dite_eq_right (h ▸ ha)]

theorem aym_det_zero (q k₀ r c' n' c n : ℕ) (x : HomE E (n' + c') (n + c)) (hr : n + c < r ∨ n' + c' < r) :
    (AYm q k₀ r c' n' c n x).det = 0 := by
  have hq : ∀ a b : ℕ, entB q k₀ c' n' c n 0 0 x a b
      = atN (x (eN E (n' + c') (fIdx k₀ c' n' b))) (fIdx k₀ c n a) := by
    intro a b
    simp [entB, scE]
  rcases hr with hr | hr
  · by_cases hz : ∃ s : Fin r, n + c ≤ fIdx k₀ c n s.1
    · obtain ⟨s, hs⟩ := hz
      apply Matrix.det_eq_zero_of_row_eq_zero s
      intro t
      simp only [AYm, Matrix.of_apply, hq, atN]
      rw [dite_eq_right (by omega)]
    · push_neg at hz
      obtain ⟨s, s', hne, heq⟩ := Fintype.exists_ne_map_eq_of_card_lt
        (fun s : Fin r => (⟨fIdx k₀ c n s.1, hz s⟩ : Fin (n + c))) (by simp; omega)
      apply Matrix.det_zero_of_row_eq hne
      funext t
      have he : fIdx k₀ c n s.1 = fIdx k₀ c n s'.1 := congrArg Fin.val heq
      simp only [AYm, Matrix.of_apply, hq, he]
  · by_cases hz : ∃ t : Fin r, n' + c' ≤ fIdx k₀ c' n' t.1
    · obtain ⟨t, ht⟩ := hz
      apply Matrix.det_eq_zero_of_column_eq_zero t
      intro s
      simp only [AYm, Matrix.of_apply, hq, eN_out (E := E) (show ¬ fIdx k₀ c' n' t.1 < n' + c' by omega),
        map_zero]
      simp [atN]
    · push_neg at hz
      obtain ⟨t, t', hne, heq⟩ := Fintype.exists_ne_map_eq_of_card_lt
        (fun t : Fin r => (⟨fIdx k₀ c' n' t.1, hz t⟩ : Fin (n' + c'))) (by simp; omega)
      apply Matrix.det_zero_of_column_eq hne
      intro s
      have he : fIdx k₀ c' n' t.1 = fIdx k₀ c' n' t'.1 := congrArg Fin.val heq
      simp only [AYm, Matrix.of_apply, hq, he]

end PhiFacts

theorem test_function_support : PhiSuppP := by
  intro E K _ _ _ _ P q ξ k₀ r c' n' c n hk hk' y hy s l
  have hc : ∀ p p', p < n + c → p' < n' + c' → IntAt P (entB q k₀ c' n' c n 0 0 y p p') := by
    by_contra hc
    apply hy
    unfold PhiQ
    rw [if_neg (fun h => hc h.1)]
  by_cases hs : s < n' + c'
  · have h1 := hc _ _ (fPos_lt' hk l.2) (fPos_lt' hk' hs)
    simpa [entB, scE, fIdx_fPos' hk l.2, fIdx_fPos' hk' hs, atN, l.2] using h1
  · rw [eN_out (E := E) hs, map_zero]
    exact ⟨0, 1, fun h1 => P.isPrime.ne_top ((Ideal.eq_top_iff_one _).mpr h1), by simp⟩

private theorem algebraMap_integers_injective {E : Type} [Field E] [NumberField E] :
    Function.Injective (algebraMap (𝓞 E) E) := by
  first
    | exact IsFractionRing.injective (𝓞 E) E

private theorem mul_not_mem_of_not_mem {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)} {s t : 𝓞 E}
    (hs : s ∉ P.asIdeal) (ht : t ∉ P.asIdeal) : s * t ∉ P.asIdeal :=
  fun h => (P.isPrime.mem_or_mem h).elim hs ht

private theorem one_not_mem_asIdeal {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)} : (1 : 𝓞 E) ∉ P.asIdeal :=
  fun h => P.isPrime.ne_top ((Ideal.eq_top_iff_one _).mpr h)

private theorem intAt_add_of_starRing {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)} {a b : E} (ha : IntAt P a) (hb : IntAt P b) :
    IntAt P (a + b) := by
  obtain ⟨r1, s1, hs1, h1⟩ := ha
  obtain ⟨r2, s2, hs2, h2⟩ := hb
  refine ⟨s2 * r1 + s1 * r2, s1 * s2, mul_not_mem_of_not_mem hs1 hs2, ?_⟩
  simp only [map_add (f := _), map_mul]
  rw [← h1, ← h2]
  ring

private theorem intAt_mul_twisted_eisenstein_coset {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)} {a b : E} (ha : IntAt P a) (hb : IntAt P b) :
    IntAt P (a * b) := by
  obtain ⟨r1, s1, hs1, h1⟩ := ha
  obtain ⟨r2, s2, hs2, h2⟩ := hb
  refine ⟨r1 * r2, s1 * s2, mul_not_mem_of_not_mem hs1 hs2, ?_⟩
  simp only [map_mul]
  rw [← h1, ← h2]
  ring

private theorem intAt_neg_of_starRing {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)} {a : E} (ha : IntAt P a) : IntAt P (-a) := by
  obtain ⟨r, s, hs, h⟩ := ha
  exact ⟨-r, s, hs, by rw [mul_neg, h, map_neg]⟩

private theorem intAt_natCast_twisted_eisenstein_coset {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)} (m : ℕ) : IntAt P (m : E) :=
  ⟨m, 1, one_not_mem_asIdeal, by simp⟩

private theorem mk_mul_redP_eq_of_mul_eq {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)} {a : E} (r s : 𝓞 E) (hs : s ∉ P.asIdeal)
    (h : algebraMap (𝓞 E) E s * a = algebraMap (𝓞 E) E r) :
    Ideal.Quotient.mk P.asIdeal s * redP P a = Ideal.Quotient.mk P.asIdeal r := by
  haveI : P.asIdeal.IsMaximal := by
    first
      | exact P.isMaximal
  have hs0 : Ideal.Quotient.mk P.asIdeal s ≠ 0 := by
    rwa [Ne, Ideal.Quotient.eq_zero_iff_mem]
  obtain ⟨b, hb⟩ := Ideal.Quotient.exists_inv hs0
  have hex : ∃ c : 𝓞 E ⧸ P.asIdeal, ∃ r s : 𝓞 E, s ∉ P.asIdeal ∧
      algebraMap (𝓞 E) E s * a = algebraMap (𝓞 E) E r ∧
      Ideal.Quotient.mk P.asIdeal s * c = Ideal.Quotient.mk P.asIdeal r :=
    ⟨b * Ideal.Quotient.mk P.asIdeal r, r, s, hs, h, by rw [← mul_assoc, hb, one_mul]⟩
  unfold redP
  rw [dite_eq_left hex]
  obtain ⟨r', s', hs', h', hc⟩ := hex.choose_spec
  have hs0' : Ideal.Quotient.mk P.asIdeal s' ≠ 0 := by
    rwa [Ne, Ideal.Quotient.eq_zero_iff_mem]
  have key : s * r' = s' * r := algebraMap_integers_injective (by simp only [map_mul]; rw [← h, ← h']; ring)
  apply mul_left_cancel₀ hs0'
  calc Ideal.Quotient.mk P.asIdeal s' * (Ideal.Quotient.mk P.asIdeal s * hex.choose)
      = Ideal.Quotient.mk P.asIdeal s * (Ideal.Quotient.mk P.asIdeal s' * hex.choose) := by ring
    _ = Ideal.Quotient.mk P.asIdeal s * Ideal.Quotient.mk P.asIdeal r' := by rw [hc]
    _ = Ideal.Quotient.mk P.asIdeal s' * Ideal.Quotient.mk P.asIdeal r := by
      rw [← map_mul, ← map_mul, key]

private theorem redP_mul_twisted_eisenstein_coset {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)} {a b : E} (ha : IntAt P a) (hb : IntAt P b) :
    redP P (a * b) = redP P a * redP P b := by
  obtain ⟨r1, s1, hs1, h1⟩ := ha
  obtain ⟨r2, s2, hs2, h2⟩ := hb
  have hs := mul_not_mem_of_not_mem hs1 hs2
  have e3 := mk_mul_redP_eq_of_mul_eq (a := a * b) (r1 * r2) (s1 * s2) hs (by
    simp only [map_mul]
    rw [← h1, ← h2]
    ring)
  have e1 := mk_mul_redP_eq_of_mul_eq r1 s1 hs1 h1
  have e2 := mk_mul_redP_eq_of_mul_eq r2 s2 hs2 h2
  have hs0 : Ideal.Quotient.mk P.asIdeal (s1 * s2) ≠ 0 := by
    rwa [Ne, Ideal.Quotient.eq_zero_iff_mem]
  apply mul_left_cancel₀ hs0
  rw [e3]
  simp only [map_mul]
  rw [← e1, ← e2]
  ring

private theorem redP_natCast {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)} (m : ℕ) :
    redP P (m : E) = Ideal.Quotient.mk P.asIdeal (m : 𝓞 E) := by
  have e := mk_mul_redP_eq_of_mul_eq (P := P) (a := (m : E)) (m : 𝓞 E) 1 one_not_mem_asIdeal (by simp)
  rwa [map_one, one_mul] at e

private theorem redP_det_twisted_eisenstein_coset {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)} {r : ℕ} (M : Matrix (Fin r) (Fin r) E)
    (hM : ∀ i j, IntAt P (M i j)) :
    redP P M.det = (Matrix.of fun i j => redP P (M i j)).det := by
  let S : Subring E :=
    { carrier := {a | IntAt P a}
      mul_mem' := fun ha hb => intAt_mul_twisted_eisenstein_coset ha hb
      one_mem' := by simpa using intAt_natCast_twisted_eisenstein_coset (P := P) 1
      add_mem' := fun ha hb => intAt_add_of_starRing ha hb
      zero_mem' := by simpa using intAt_natCast_twisted_eisenstein_coset (P := P) 0
      neg_mem' := fun ha => intAt_neg_of_starRing ha }
  let φ : S →+* 𝓞 E ⧸ P.asIdeal :=
    { toFun := fun a => redP P (a : E)
      map_one' := by simpa using redP_natCast (P := P) 1
      map_mul' := fun a b => redP_mul_twisted_eisenstein_coset a.2 b.2
      map_zero' := by simpa using redP_natCast (P := P) 0
      map_add' := fun a b => _root_.PI.TwistedEisensteinNonvanishing.W.reduction_add' a.2 b.2 }
  let MS : Matrix (Fin r) (Fin r) S := Matrix.of fun i j => ⟨M i j, hM i j⟩
  have h1 : ((MS.det : S) : E) = M.det := by
    change S.subtype MS.det = M.det
    rw [RingHom.map_det]
    rfl
  have h2 : φ MS.det = (Matrix.of fun i j => redP P (M i j)).det := by
    rw [RingHom.map_det]
    rfl
  rw [← h1, ← h2]
  rfl

theorem test_function_periodicity : PhiPerP := by
  intro E K _ _ _ _ P _ _ ξ k₀ r c' n' c n y ε hε
  have hq : ∀ (x : HomE E (n' + c') (n + c)) (a b : ℕ), entB (qOf P) k₀ c' n' c n 0 0 x a b
      = atN (x (eN E (n' + c') (fIdx k₀ c' n' b))) (fIdx k₀ c n a) := by
    intro x a b
    simp [entB, scE]
  have hq0 : (qOf P : E) ≠ 0 := by
    have h0 : Ideal.absNorm P.asIdeal ≠ 0 := fun h => P.ne_bot (Ideal.absNorm_eq_zero_iff.mp h)
    simp only [qOf]
    exact_mod_cast h0
  have hredq : redP P (qOf P : E) = 0 := by
    rw [redP_natCast, Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.absNorm_mem _
  have hεd : ∀ p p', IntAt P (entB (qOf P) k₀ c' n' c n 0 0 ε p p' / (qOf P : E)) := by
    intro p p'
    rw [hq]
    unfold atN
    split_ifs with hi
    · exact hε _ _
    · rw [zero_div]
      simpa using intAt_natCast_twisted_eisenstein_coset (P := P) 0
  have hε1 : ∀ p p', IntAt P (entB (qOf P) k₀ c' n' c n 0 0 ε p p') := by
    intro p p'
    have h := intAt_mul_twisted_eisenstein_coset (intAt_natCast_twisted_eisenstein_coset (P := P) (qOf P)) (hεd p p')
    rwa [mul_div_cancel₀ _ hq0] at h
  have hεr : ∀ p p', redP P (entB (qOf P) k₀ c' n' c n 0 0 ε p p') = 0 := by
    intro p p'
    rw [← mul_div_cancel₀ (entB (qOf P) k₀ c' n' c n 0 0 ε p p') hq0,
      redP_mul_twisted_eisenstein_coset (intAt_natCast_twisted_eisenstein_coset (qOf P)) (hεd p p'), hredq, zero_mul]
  have e : ∀ p p', entB (qOf P) k₀ c' n' c n 0 0 (y + ε) p p'
      = entB (qOf P) k₀ c' n' c n 0 0 y p p' + entB (qOf P) k₀ c' n' c n 0 0 ε p p' :=
    fun p p' => entB_add' _ _ _ _ _ _ y ε p p'
  simp only [PhiQ]
  simp only [e]
  split_ifs with h1 h2 h2
  · apply unitV_congr'
    by_cases hr : n + c < r ∨ n' + c' < r
    · have d1 := aym_det_zero (qOf P) k₀ r c' n' c n (y + ε) hr
      have d2 := aym_det_zero (qOf P) k₀ r c' n' c n y hr
      simp only [AYm, e] at d1 d2
      rw [d1, d2]
    · push_neg at hr
      have hi : ∀ i : Fin r, i.1 < n + c := fun i => by have := i.2; omega
      have hj : ∀ j : Fin r, j.1 < n' + c' := fun j => by have := j.2; omega
      rw [redP_det_twisted_eisenstein_coset (Matrix.of fun s t : Fin r =>
          entB (qOf P) k₀ c' n' c n 0 0 y s.1 t.1 + entB (qOf P) k₀ c' n' c n 0 0 ε s.1 t.1)
          (fun i j => by rw [Matrix.of_apply, ← e]; exact h1.1 _ _ (hi i) (hj j)),
        redP_det_twisted_eisenstein_coset (Matrix.of fun s t : Fin r => entB (qOf P) k₀ c' n' c n 0 0 y s.1 t.1)
          (fun i j => h2.1 _ _ (hi i) (hj j))]
      congr 1
      ext i j
      simp only [Matrix.of_apply]
      rw [_root_.PI.TwistedEisensteinNonvanishing.W.reduction_add' (h2.1 _ _ (hi i) (hj j)) (hε1 _ _), hεr, add_zero]
  · exfalso
    apply h2
    refine ⟨fun p p' hp hp' => ?_, fun p p' hp hp' hp'' => ?_⟩
    · have h := intAt_add_of_starRing (h1.1 p p' hp hp') (intAt_neg_of_starRing (hε1 p p'))
      rwa [e, add_neg_cancel_right] at h
    · have h := intAt_add_of_starRing (h1.2 p p' hp hp' hp'') (intAt_neg_of_starRing (hεd p p'))
      rwa [e, add_div, add_neg_cancel_right] at h
  · exfalso
    apply h1
    refine ⟨fun p p' hp hp' => by rw [e]; exact intAt_add_of_starRing (h2.1 p p' hp hp') (hε1 p p'),
      fun p p' hp hp' hp'' => ?_⟩
    rw [e, add_div]
    exact intAt_add_of_starRing (h2.2 p p' hp hp' hp'') (hεd p p')
  · rfl

theorem bounded_matrix_entries : BddEntP := by
  intro E _ _ _ P R j h hb
  have hmem : ∀ x : Sp E (R.N j + cOf R j),
      x ∈ LocE.lamY P (qOf P) (R.N j) (cOf R j) 0 ↔ ∀ l, IntAt P (x l) := by
    intro x
    simp [LocE.lamY, LocE.sclLat, mem_stdAt', LocE.scE]
  have he : ∀ s, eN E (R.N j + cOf R j) s ∈ LocE.lamY P (qOf P) (R.N j) (cOf R j) 0 := by
    intro s
    rw [hmem]
    intro l
    simp only [eN]
    split_ifs
    · simpa using intAt_natCast_twisted_eisenstein_coset (P := P) 1
    · simpa using intAt_natCast_twisted_eisenstein_coset (P := P) 0
  refine ⟨fun s l => ?_, fun s l => ?_⟩
  · have h1 := (hmem _).mp (hb _ (he s)).2 l
    first
      | exact h1
  · have h1 := (hmem _).mp (hb _ (he s)).1 l
    first
      | exact h1

end PI.TwistedEisensteinNonvanishing.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TestFunctionPeriodicity =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.WeightedSumToGaussSum =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.WeightedSumToGaussSum", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.WeightedSumScaling\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.SumSliceEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module

noncomputable section

namespace PI.TwistedEisensteinNonvanishing.W

open Loc LocE Function

variable {E K : Type} [Field E] [NumberField E] [Field K]

section QTdef

variable (P : HeightOneSpectrum (𝓞 E)) {ι : Type} [Fintype ι] [DecidableEq ι]

def QT (T : (ι → E) → (ι → E)) (c : K) : Prop :=
  ∀ a b : ℕ, ∃ a' b' : ℕ, ∀ H : (ι → E) → K, Good P a b H →
    Good P a' b' (fun t => H (T t)) ∧ RS P a' b' (fun t => H (T t)) = c * RS P a b H

variable {P}

theorem qt_comp {T1 T2 : (ι → E) → (ι → E)} {c1 c2 : K} (h1 : QT P T1 c1) (h2 : QT P T2 c2) :
    QT P (fun t => T1 (T2 t)) (c2 * c1) := by
  intro a b
  obtain ⟨a1, b1, h1'⟩ := h1 a b
  obtain ⟨a2, b2, h2'⟩ := h2 a1 b1
  refine ⟨a2, b2, fun H hH => ?_⟩
  obtain ⟨g1, r1⟩ := h1' H hH
  obtain ⟨g2, r2⟩ := h2' (fun t => H (T1 t)) g1
  exact ⟨g2, r2.trans (by rw [r1]; ring)⟩

theorem qt_congr {T T' : (ι → E) → (ι → E)} {c c' : K} (h : QT P T c) (hT : ∀ t, T' t = T t) (hc : c' = c) :
    QT P T' c' := by
  have hTT : T' = T := funext hT
  subst hTT
  subst hc
  exact h

def em (k l : ι) (d c β : E) (t : ι → E) : ι → E := update t k (d * t k + c * t l + β)

end QTdef

section Em

variable {P : HeightOneSpectrum (𝓞 E)} (hN : NTAll) (hp : (Ideal.absNorm P.asIdeal).Prime)
    (hq : ((Ideal.absNorm P.asIdeal : ℕ) : 𝓞 E) ∉ P.asIdeal ^ 2) (hK : ((qOf P : ℕ) : K) ≠ 0)
include hN hp hq hK

theorem weighted_sum_to_gauss_sum {N : ℕ} {f g : E → K} {c : K} (h : W1 P N N f = c * W1 P N N g) :
    Sg P N N f = c * Sg P N N g := by
  have hq0 : ((qOf P : K) ^ N)⁻¹ ≠ 0 := inv_ne_zero (pow_ne_zero _ hK)
  unfold W1 at h
  apply mul_left_cancel₀ hq0
  rw [h]
  ring

theorem qt_em {ι : Type} [Fintype ι] [DecidableEq ι] (k l : ι) {d : E} (hd : d ≠ 0) (c β : E)
    (hkl : l ≠ k ∨ c = 0) : QT P (em k l d c β) ((qOf P : K) ^ vq P d) := by
  have hq0 := qE_ne P hp
  intro a b
  obtain ⟨gc, hgc⟩ := ia_bound P hN hp hq c
  obtain ⟨gβ, hgβ⟩ := ia_bound P hN hp hq β
  obtain ⟨gd, hgd⟩ := ia_bound P hN hp hq d
  obtain ⟨gi, hgi⟩ := ia_bound P hN hp hq d⁻¹
  obtain ⟨a2, b2, hsc⟩ := weighted_sum_scaling (K := K) hN hp hq hK hd (a + gc + gβ) b

  have hcl : ∀ t : ι → E, (∀ j, IntAt P ((qOf P : E) ^ a * t j)) →
      IntAt P ((qOf P : E) ^ (a + gc + gβ) * (c * t l + β)) := by
    intro t ht
    have e : (qOf P : E) ^ (a + gc + gβ) * (c * t l + β) =
        (qOf P : E) ^ gβ * (((qOf P : E) ^ gc * c) * ((qOf P : E) ^ a * t l)) +
          (qOf P : E) ^ (a + gc) * ((qOf P : E) ^ gβ * β) := by
      rw [pow_add, pow_add]
      ring
    rw [e]
    exact ia_add P (ia_mul P (ia_qpow P _) (ia_mul P hgc (ht l))) (ia_mul P (ia_qpow P _) hgβ)
  have hcl' : ∀ t : ι → E, (∀ j, j ≠ k → IntAt P ((qOf P : E) ^ a * t j)) →
      IntAt P ((qOf P : E) ^ (a + gc + gβ) * (c * t l + β)) := by
    intro t ht
    rcases hkl with hlk | hc0
    · have e : (qOf P : E) ^ (a + gc + gβ) * (c * t l + β) =
          (qOf P : E) ^ gβ * (((qOf P : E) ^ gc * c) * ((qOf P : E) ^ a * t l)) +
            (qOf P : E) ^ (a + gc) * ((qOf P : E) ^ gβ * β) := by
        rw [pow_add, pow_add]
        ring
      rw [e]
      exact ia_add P (ia_mul P (ia_qpow P _) (ia_mul P hgc (ht l hlk))) (ia_mul P (ia_qpow P _) hgβ)
    · have e : (qOf P : E) ^ (a + gc + gβ) * (c * t l + β) = (qOf P : E) ^ (a + gc) * ((qOf P : E) ^ gβ * β) := by
        rw [hc0, pow_add]
        ring
      rw [e]
      exact ia_mul P (ia_qpow P _) hgβ
  have hupd : ∀ (t : ι → E) (u : E), c * update t k u l = c * t l := by
    intro t u
    rcases hkl with hlk | hc0
    · rw [update_of_ne hlk]
    · rw [hc0, zero_mul, zero_mul]
  refine ⟨a + gc + gβ + gi, b + gd + gc, fun H hH => ?_⟩
  have hgood : Good P (a + gc + gβ + gi) (b + gd + gc) (fun t => H (em k l d c β t)) := by
    refine ⟨fun t ht j => ?_, fun t δ hδ => ?_⟩
    · have hs := hH.1 _ ht
      have hoth : ∀ j, j ≠ k → IntAt P ((qOf P : E) ^ a * t j) := by
        intro j hj
        have := hs j
        rwa [em, update_of_ne hj] at this
      by_cases hj : j = k
      · subst hj
        have hx := hs j
        rw [em, update_self] at hx
        have e : (qOf P : E) ^ (a + gc + gβ + gi) * t j = ((qOf P : E) ^ gi * d⁻¹) *
            ((qOf P : E) ^ (gc + gβ) * ((qOf P : E) ^ a * (d * t j + c * t l + β)) -
              (qOf P : E) ^ (a + gc + gβ) * (c * t l + β)) := by
          rw [pow_add, pow_add, pow_add, pow_add]
          field_simp
          ring
        rw [e]
        exact ia_mul P hgi (ia_sub P (ia_mul P (ia_qpow P _) hx) (hcl' t hoth))
      · exact ia_up P (by omega) (hoth j hj)
    · have e : em k l d c β (t + δ) = em k l d c β t + update δ k (d * δ k + c * δ l) := by
        ext j
        by_cases hj : j = k
        · subst hj
          simp only [em, update_self, Pi.add_apply]
          ring
        · simp only [em, update_of_ne hj, Pi.add_apply]
      show H (em k l d c β (t + δ)) = H (em k l d c β t)
      rw [e]
      apply hH.2
      intro j
      by_cases hj : j = k
      · subst hj
        rw [update_self]
        have e2 : (d * δ j + c * δ l) / (qOf P : E) ^ b = ((qOf P : E) ^ gd * d) * (δ j / (qOf P : E) ^ (b + gd)) +
            ((qOf P : E) ^ gc * c) * (δ l / (qOf P : E) ^ (b + gc)) := by
          rw [pow_add, pow_add]
          field_simp
        rw [e2]
        exact ia_add P (ia_mul P hgd (ia_div_down P hp (by omega) (hδ j)))
          (ia_mul P hgc (ia_div_down P hp (by omega) (hδ l)))
      · rw [update_of_ne hj]
        exact ia_div_down P hp (by omega) (hδ j)
  refine ⟨hgood, ?_⟩
  set N := max (max (a + gc + gβ + gi) (b + gd + gc)) (max (max a2 b2) (a + gc + gβ + b)) with hNdef
  rw [← rs_stab hN hp hq hK (A := N) (B := N) (by omega) (by omega) hgood,
    ← rs_stab hN hp hq hK (A := N) (B := N) (by omega) (by omega) hH]
  have key : ∑ t ∈ Fintype.piFinset (fun _ : ι => valsQ E (qOf P) N N), H (em k l d c β t) =
      (qOf P : K) ^ vq P d * ∑ t ∈ Fintype.piFinset (fun _ : ι => valsQ E (qOf P) N N), H t := by
    have h0 := sum_slice_eq k (fun _ : ι => valsQ E (qOf P) N N) (valsQ E (qOf P) N N) (valsQ E (qOf P) N N)
      (fun t => H (em k l d c β t)) H ((qOf P : K) ^ vq P d) ?_
    · rwa [update_eq_self k (fun _ : ι => valsQ E (qOf P) N N)] at h0
    intro t
    have e1 : ∀ u, em k l d c β (update t k u) = update t k (d * u + (c * t l + β)) := by
      intro u
      rw [em, update_idem, update_self, hupd, add_assoc]
    simp only [e1]
    by_cases hz : ∀ u, H (update t k u) = 0
    · rw [Finset.sum_eq_zero (fun u _ => hz _), Finset.sum_eq_zero (fun u _ => hz _), mul_zero]
    simp only [not_forall] at hz
    obtain ⟨u0, hu0⟩ := hz
    have hs := hH.1 _ hu0
    have hβ' : IntAt P ((qOf P : E) ^ (a + gc + gβ) * (c * t l + β)) := by
      apply hcl'
      intro j hj
      have := hs j
      rwa [update_of_ne hj] at this
    obtain ⟨gψ, eψ⟩ := sg_transl hN hp hq (good_function_mono (by omega) (good_slice hH t k)) hβ'
    obtain ⟨gs, es⟩ := hsc _ gψ
    have s1 : ∑ u ∈ valsQ E (qOf P) N N, H (update t k (d * u + (c * t l + β))) =
        Sg P N N (fun u => H (update t k (d * u + (c * t l + β)))) := sum_vals hp N N _
    have s2 : ∑ u ∈ valsQ E (qOf P) N N, H (update t k u) = Sg P N N (fun u => H (update t k u)) :=
      sum_vals hp N N _
    rw [s1, s2]
    apply weighted_sum_to_gauss_sum hN hp hq hK
    have w1 : W1 P N N (fun u => H (update t k (d * u + (c * t l + β)))) =
        W1 P a2 b2 (fun u => H (update t k (d * u + (c * t l + β)))) :=
      weighted_sum_stable hN hp hq hK (by omega) (by omega) gs
    have w2 : W1 P N N (fun u => H (update t k u)) = W1 P (a + gc + gβ) b (fun u => H (update t k u)) :=
      weighted_sum_stable hN hp hq hK (by omega) (by omega) (good_function_mono (by omega) (good_slice hH t k))
    rw [w1, es, w2]
    unfold W1
    rw [eψ]
  unfold RS
  rw [key]
  ring

end Em

end PI.TwistedEisensteinNonvanishing.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.WeightedSumToGaussSum =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.ChangeVariablesDeterminantOne =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.ChangeVariablesDeterminantOne", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.WeightedSumToGaussSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module

noncomputable section

namespace PI.TwistedEisensteinNonvanishing.W

open Loc LocE Function Matrix

variable {E K : Type} [Field E] [NumberField E] [Field K]

theorem qt_id {P : HeightOneSpectrum (𝓞 E)} {ι : Type} [Fintype ι] [DecidableEq ι] :
    QT P (fun t : ι → E => t) (1 : K) :=
  fun a b => ⟨a, b, fun _ h => ⟨h, (one_mul _).symm⟩⟩

section Lin

variable {P : HeightOneSpectrum (𝓞 E)} (hN : NTAll) (hp : (Ideal.absNorm P.asIdeal).Prime)
    (hq : ((Ideal.absNorm P.asIdeal : ℕ) : 𝓞 E) ∉ P.asIdeal ^ 2) (hK : ((qOf P : ℕ) : K) ≠ 0)
include hN hp hq hK

variable {ι : Type} [Fintype ι] [DecidableEq ι]

theorem qt_transvec (t : TransvectionStruct ι E) :
    QT P (fun v => t.toMatrix *ᵥ v) ((qOf P : K) ^ vq P t.toMatrix.det) := by
  have hmv : ∀ v : ι → E, t.toMatrix *ᵥ v = em t.i t.j 1 t.c 0 v := by
    intro v
    funext k
    by_cases h : k = t.i
    · subst h
      simp [TransvectionStruct.toMatrix, Matrix.transvection, Matrix.add_mulVec,
        Matrix.single_mulVec, em]
    · simp [TransvectionStruct.toMatrix, Matrix.transvection, Matrix.add_mulVec,
        Matrix.single_mulVec, em, h]
  exact qt_congr (qt_em hN hp hq hK t.i t.j one_ne_zero t.c 0 (Or.inl t.hij.symm)) hmv (by rw [t.det])

theorem qt_diag (D : ι → E) (hD : ∀ i, D i ≠ 0) :
    QT P (fun v => diagonal D *ᵥ v) ((qOf P : K) ^ vq P (diagonal D).det) := by
  classical
  have key : ∀ s : Finset ι, QT P (fun v : ι → E => fun k => if k ∈ s then D k * v k else v k)
      ((qOf P : K) ^ (∑ k ∈ s, vq P (D k))) := by
    intro s
    induction s using Finset.induction_on with
    | empty => exact qt_congr qt_id (fun v => by funext k; simp) (by simp)
    | insert a s ha ih =>
      refine qt_congr (qt_comp (qt_em hN hp hq hK a a (hD a) 0 0 (Or.inr rfl)) ih) (fun v => ?_) ?_
      · funext k
        by_cases hk : k = a
        · subst hk
          simp [em, ha]
        · simp [em, hk]
      · rw [Finset.sum_insert ha, zpow_add₀ hK, mul_comm]
  refine qt_congr (key Finset.univ) (fun v => by funext k; simp [Matrix.mulVec_diagonal]) ?_
  rw [Matrix.det_diagonal, vq_prod (s := Finset.univ) (f := D) (hf := fun i _ => hD i)]
  all_goals assumption

theorem qt_matrix (M : Matrix ι ι E) (hM : M.det ≠ 0) :
    QT P (fun v => M *ᵥ v) ((qOf P : K) ^ vq P M.det) := by
  classical
  obtain ⟨L, L', D, hMLD⟩ := Matrix.Pivot.exists_list_transvec_mul_diagonal_mul_list_transvec M
  have hlist : ∀ l : List (TransvectionStruct ι E),
      QT P (fun v => (l.map TransvectionStruct.toMatrix).prod *ᵥ v) (1 : K) := by
    intro l
    induction l with
    | nil => exact qt_congr qt_id (fun v => by simp) rfl
    | cons t l ih =>
      refine qt_congr (qt_comp (qt_transvec hN hp hq hK t) ih) (fun v => by simp [Matrix.mulVec_mulVec]) ?_
      rw [t.det, vq_one, zpow_zero, one_mul]
      all_goals assumption
  have hl1 : ∀ l : List (TransvectionStruct ι E), ((l.map TransvectionStruct.toMatrix).prod).det = 1 := by
    intro l
    induction l with
    | nil => simp
    | cons t l ih => simp [Matrix.det_mul, t.det, ih]
  have hdetM : M.det = (diagonal D).det := by
    rw [hMLD, Matrix.det_mul, Matrix.det_mul, hl1, hl1, one_mul, mul_one]
  have hD : ∀ i, D i ≠ 0 := by
    intro i hi
    apply hM
    rw [hdetM, Matrix.det_diagonal]
    exact Finset.prod_eq_zero (Finset.mem_univ i) hi
  refine qt_congr (qt_comp (hlist L) (qt_comp (qt_diag hN hp hq hK D hD) (hlist L')))
    (fun v => by rw [hMLD]; simp [Matrix.mulVec_mulVec, Matrix.mul_assoc]) ?_
  rw [hdetM, one_mul, mul_one]

theorem qt_transl (τ : ι → E) : QT P (fun v : ι → E => v + τ) (1 : K) := by
  classical
  have key : ∀ s : Finset ι, QT P (fun v : ι → E => fun k => if k ∈ s then v k + τ k else v k) (1 : K) := by
    intro s
    induction s using Finset.induction_on with
    | empty => exact qt_congr qt_id (fun v => by funext k; simp) rfl
    | insert a s ha ih =>
      refine qt_congr (qt_comp (qt_em hN hp hq hK a a one_ne_zero 0 (τ a) (Or.inr rfl)) ih) (fun v => ?_) ?_
      · funext k
        by_cases hk : k = a
        · subst hk
          simp [em, ha]
        · simp [em, hk]
      · rw [vq_one, zpow_zero, one_mul]
        all_goals assumption
  exact qt_congr (key Finset.univ) (fun v => by funext k; simp) rfl

theorem qt_aff (L : (ι → E) ≃ₗ[E] (ι → E)) (τ : ι → E) :
    QT P (fun t => L t + τ) ((qOf P : K) ^ vq P (LinearMap.det (L : (ι → E) →ₗ[E] (ι → E)))) := by
  have hL : ∀ t, L t = LinearMap.toMatrix' (L : (ι → E) →ₗ[E] (ι → E)) *ᵥ t :=
    fun t => (LinearMap.toMatrix'_mulVec _ t).symm
  have hdet : (LinearMap.toMatrix' (L : (ι → E) →ₗ[E] (ι → E))).det ≠ 0 := by
    rw [LinearMap.det_toMatrix']
    exact (LinearEquiv.isUnit_det' L).ne_zero
  refine qt_congr (qt_comp (qt_transl hN hp hq hK τ) (qt_matrix hN hp hq hK _ hdet))
    (fun t => by simp only [hL]) ?_
  rw [LinearMap.det_toMatrix', mul_one]

end Lin

theorem cov_of (hN : NTAll) : CoVP := by
  intro E K _ _ _ P hp hq hK ι _ _ L τ
  exact ⟨(qOf P : K) ^ vq P (LinearMap.det (L : (ι → E) →ₗ[E] (ι → E))), zpow_ne_zero _ hK,
    qt_aff hN hp hq hK L τ⟩

end PI.TwistedEisensteinNonvanishing.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.ChangeVariablesDeterminantOne =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.FreeCoordinateAffineInvertible =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.FreeCoordinateAffineInvertible", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module

noncomputable section

namespace PI.TwistedEisensteinNonvanishing.W

open Loc LocE

section XX

variable {E : Type} [Field E]

theorem xxw_eN_eq {N : ℕ} (s : Fin N) : eN E N s.1 = Pi.single s 1 := by
  funext l
  simp only [eN, Pi.single_apply]
  by_cases h : l = s
  · subst h
    simp
  · rw [if_neg h, if_neg]
    intro h'
    exact h (Fin.ext h')

theorem xxw_mem_Ufl {n c i : ℕ} (v : Fin (n + c) → E) : v ∈ Ufl E n c i ↔ ∀ l : Fin (n + c), n + i ≤ l.1 → v l = 0 := by
  show (∀ l : Fin (n + c), l.1 ∉ {l | l < n + i} → v l = 0) ↔ _
  simp only [Set.mem_setOf_eq, not_lt]

theorem xxw_entry {n' c' n c : ℕ} (xj : (Fin n' → E) →ₗ[E] (Fin n → E)) (t : FC n' c' n c → E) (s : Fin (n' + c')) (l : Fin (n + c)) :
    xx1 xj t (Pi.single s 1) l =
      if hf : IsFree n' n c l.1 s.1 then t ⟨(l, s), hf⟩
      else if hs : s.1 < n' then (if hl : l.1 < n then LinearMap.toMatrix' xj ⟨l.1, hl⟩ ⟨s.1, hs⟩ else 0)
      else if l.1 = n + (s.1 - n') then 1 else 0 := by
  simp only [xx1, Matrix.toLin'_apply, Matrix.mulVec_single_one]
  rfl

theorem xxw_res {n c : ℕ} {ρ : (Fin (n + c) → E) ≃ₗ[E] (Fin (n + c) → E)} (hρ : R1cond E n c ρ) (v : Fin n → E) :
    ρ (inX E n c v) = inX E n c (resX ρ v) := by
  have hinX : ∀ u : Fin n → E, inX E n c u ∈ Ufl E n c 0 := by
    intro u
    rw [xxw_mem_Ufl]
    intro l hl
    simp only [inX, LinearMap.pi_apply, dif_neg (show ¬ l.1 < n by omega), LinearMap.zero_apply]
  have hsum : inX E n c v = ∑ p : Fin n, v p • eN E (n + c) p.1 := by
    funext l
    rw [Finset.sum_apply]
    simp only [Pi.smul_apply, smul_eq_mul, eN, mul_ite, mul_one, mul_zero]
    by_cases hl : l.1 < n
    · simp only [inX, LinearMap.pi_apply, dif_pos hl, LinearMap.proj_apply]
      rw [Finset.sum_eq_single ⟨l.1, hl⟩]
      · simp
      · intro p _ hp
        rw [if_neg]
        intro h
        exact hp (Fin.ext h.symm)
      · intro h
        exact absurd (Finset.mem_univ _) h
    · simp only [inX, LinearMap.pi_apply, dif_neg hl, LinearMap.zero_apply]
      symm
      apply Finset.sum_eq_zero
      intro p _
      rw [if_neg]
      intro h
      have := p.isLt
      omega
  funext l

  by_cases hl : l.1 < n
  · rw [hsum, map_sum]
    simp only [map_smul, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
    simp only [inX, LinearMap.pi_apply, dif_pos hl, LinearMap.proj_apply, resX, Matrix.toLin'_apply,
      Matrix.mulVec, dotProduct, Matrix.of_apply]
    refine Finset.sum_congr rfl (fun p _ => ?_)
    rw [mul_comm]
    rfl
  · have h1 := hρ.1 0 _ (hinX v)
    rw [xxw_mem_Ufl] at h1
    rw [h1 l (by omega)]
    simp only [inX, LinearMap.pi_apply, dif_neg hl, LinearMap.zero_apply]

theorem xxw_step {n c : ℕ} {ρ : (Fin (n + c) → E) ≃ₗ[E] (Fin (n + c) → E)} (hρ : R1cond E n c ρ) (i : ℕ)
    (v : Fin (n + c) → E) (hv : v ∈ Ufl E n c (i + 1)) : ρ v - v ∈ Ufl E n c i := by
  by_cases hi : n + i < n + c
  · have hw : v - v ⟨n + i, hi⟩ • eN E (n + c) (n + i) ∈ Ufl E n c i := by
      rw [xxw_mem_Ufl] at hv ⊢
      intro l hl
      simp only [Pi.sub_apply, Pi.smul_apply, smul_eq_mul, eN]
      by_cases hli : l.1 = n + i
      · have hl' : l = ⟨n + i, hi⟩ := Fin.ext hli
        rw [if_pos hli, hl']
        simp
      · rw [if_neg hli, mul_zero, sub_zero]
        exact hv l (by omega)
    have h1 := hρ.1 i _ hw
    have h2 := hρ.2.2 i
    have e1 : ρ v - v = (ρ (v - v ⟨n + i, hi⟩ • eN E (n + c) (n + i)) -
        (v - v ⟨n + i, hi⟩ • eN E (n + c) (n + i))) +
        v ⟨n + i, hi⟩ • (ρ (eN E (n + c) (n + i)) - eN E (n + c) (n + i)) := by
      rw [map_sub, map_smul, smul_sub]
      abel
    rw [e1]
    exact (Ufl E n c i).add_mem ((Ufl E n c i).sub_mem h1 hw) ((Ufl E n c i).smul_mem _ h2)
  · rw [xxw_mem_Ufl]
    intro l hl
    have := l.isLt
    omega

private theorem xx1_single_eq_of_not_lt {n' c' n c : ℕ} (xj : (Fin n' → E) →ₗ[E] (Fin n → E))
    (t : FC n' c' n c → E) (s : Fin (n' + c')) (hs : ¬ s.1 < n') :
    xx1 xj t (Pi.single s 1) = xx1 (0 : (Fin n' → E) →ₗ[E] (Fin n → E)) t (Pi.single s 1) := by
  funext l
  simp only [xxw_entry, dif_neg hs]

private theorem xx1_single_eq_inX_of_lt {n' c' n c : ℕ} (xj : (Fin n' → E) →ₗ[E] (Fin n → E))
    (t : FC n' c' n c → E) (s : Fin (n' + c')) (hs : s.1 < n') :
    xx1 xj t (Pi.single s 1) = inX E n c (xj (Pi.single ⟨s.1, hs⟩ 1)) := by
  funext l
  rw [xxw_entry]
  have hnf : ¬ IsFree n' n c l.1 s.1 := fun h => by have := h.1; omega
  rw [dif_neg hnf, dif_pos hs]
  simp only [inX, LinearMap.pi_apply]
  by_cases hl : l.1 < n
  · rw [dif_pos hl, dif_pos hl, LinearMap.proj_apply, LinearMap.toMatrix'_apply]
  · rw [dif_neg hl, dif_neg hl, LinearMap.zero_apply]

private theorem xx1_single_apply_eq_eN_of_le {n' c' n c : ℕ} (xj : (Fin n' → E) →ₗ[E] (Fin n → E))
    (t : FC n' c' n c → E) (s : Fin (n' + c')) (hs : ¬ s.1 < n') (hj : s.1 - n' < c) :
    ∀ l : Fin (n + c), n + (s.1 - n') ≤ l.1 →
      xx1 xj t (Pi.single s 1) l = eN E (n + c) (n + (s.1 - n')) l := by
  intro l hl
  rw [xxw_entry]
  have hnf : ¬ IsFree n' n c l.1 s.1 := by
    rintro ⟨-, h | ⟨-, h⟩⟩
    · omega
    · omega
  rw [dif_neg hnf, dif_neg hs]
  rfl

theorem unfolding_affine_space_invariant : XXP := by
  intro E _ n' c' n c ρ hρ xj t
  obtain ⟨h1, -⟩ := hρ
  apply (Pi.basisFun E (Fin (n' + c'))).ext
  intro s
  rw [Pi.basisFun_apply]
  funext l
  simp only [LinearMap.comp_apply, LinearEquiv.coe_coe]
  rw [xxw_entry]
  by_cases hf : IsFree n' n c l.1 s.1
  · rw [dif_pos hf]
    have hs : ¬ s.1 < n' := by have := hf.1; omega
    rw [xx1_single_eq_of_not_lt xj t s hs]
    show _ = (ρ.toLinearMap ∘ₗ xx1 (0 : (Fin n' → E) →ₗ[E] (Fin n → E)) t) (eN E (n' + c') s.1) l
    rw [xxw_eN_eq]
    rfl
  · rw [dif_neg hf]
    by_cases hs : s.1 < n'
    · rw [dif_pos hs, xx1_single_eq_inX_of_lt xj t s hs, xxw_res h1]
      simp only [inX, LinearMap.pi_apply]
      by_cases hl : l.1 < n
      · rw [dif_pos hl, dif_pos hl, LinearMap.proj_apply, LinearMap.toMatrix'_apply,
          LinearMap.comp_apply]
      · rw [dif_neg hl, dif_neg hl, LinearMap.zero_apply]
    · rw [dif_neg hs]
      have hj : s.1 - n' < c := by
        by_contra hj
        apply hf
        refine ⟨by omega, ?_⟩
        by_cases hjc : s.1 - n' = c
        · exact Or.inl hjc
        · exact Or.inr ⟨by omega, by have := l.isLt; omega⟩
      by_cases hj0 : s.1 - n' = 0
      · have hcol : xx1 xj t (Pi.single s 1) = eN E (n + c) n := by
          funext l'
          rw [xxw_entry]
          have hnf : ¬ IsFree n' n c l'.1 s.1 := by
            rintro ⟨-, h | ⟨h, -⟩⟩ <;> omega
          rw [dif_neg hnf, dif_neg hs, hj0, add_zero]
          rfl
        rw [hcol, h1.2.1, hj0, add_zero]
        rfl
      · have hl : n + (s.1 - n') ≤ l.1 := by
          by_contra hl
          apply hf
          exact ⟨by omega, Or.inr ⟨by omega, by omega⟩⟩
        have hu : xx1 xj t (Pi.single s 1) - eN E (n + c) (n + (s.1 - n')) ∈ Ufl E n c (s.1 - n') := by
          rw [xxw_mem_Ufl]
          intro l' hl'
          rw [Pi.sub_apply, xx1_single_apply_eq_eN_of_le xj t s hs hj l' hl', sub_self]
        have hA := h1.1 _ _ hu
        have hB := h1.2.2 (s.1 - n')
        have hC := (Ufl E n c (s.1 - n')).add_mem hA hB
        rw [map_sub, xxw_mem_Ufl] at hC
        have h3 := hC l hl
        simp only [Pi.add_apply, Pi.sub_apply] at h3
        have e2 : ρ (xx1 xj t (Pi.single s 1)) l = eN E (n + c) (n + (s.1 - n')) l := by
          linear_combination h3
        rw [e2]
        rfl

theorem xxw_inX_inj {n c : ℕ} {v w : Fin n → E} (h : inX E n c v = inX E n c w) : v = w := by
  funext p
  have h1 := congrFun h (Fin.castAdd c p)
  simpa [inX, LinearMap.pi_apply, Fin.coe_castAdd, p.isLt] using h1

theorem restriction_to_affine_surjective : ResXSurjP := by
  intro E _ n' n c ρ hρ y
  obtain ⟨h1, h2⟩ := hρ
  refine ⟨resX ρ⁻¹ ∘ₗ y, ?_⟩
  have key : ∀ u : Fin n → E, resX ρ (resX ρ⁻¹ u) = u := by
    intro u
    apply xxw_inX_inj (c := c)
    rw [← xxw_res h1, ← xxw_res h2, ← LinearEquiv.mul_apply, mul_inv_cancel]
    rfl
  apply LinearMap.ext
  intro x
  simp only [LinearMap.comp_apply]
  exact key (y x)

theorem xxw_diff {n' c' n c : ℕ} (t : FC n' c' n c → E) (s : Fin (n' + c')) :
    xx1 (0 : (Fin n' → E) →ₗ[E] (Fin n → E)) t (Pi.single s 1) - xx1 (0 : (Fin n' → E) →ₗ[E] (Fin n → E)) 0 (Pi.single s 1) =
      fun l => if hf : IsFree n' n c l.1 s.1 then t ⟨(l, s), hf⟩ else 0 := by
  funext l
  simp only [Pi.sub_apply, xxw_entry]
  split_ifs <;> simp

def xxwLin {n' c' n c : ℕ} (ρ : (Fin (n + c) → E) ≃ₗ[E] (Fin (n + c) → E)) : (FC n' c' n c → E) →ₗ[E] (FC n' c' n c → E) where
  toFun t f := ρ (fun l => if hf : IsFree n' n c l.1 f.1.2.1 then t ⟨(l, f.1.2), hf⟩ else 0) f.1.1
  map_add' t t' := by
    funext f
    have hv : (fun l : Fin (n + c) => if hf : IsFree n' n c l.1 f.1.2.1 then (t + t') ⟨(l, f.1.2), hf⟩ else 0) =
        (fun l : Fin (n + c) => if hf : IsFree n' n c l.1 f.1.2.1 then t ⟨(l, f.1.2), hf⟩ else 0) +
        (fun l : Fin (n + c) => if hf : IsFree n' n c l.1 f.1.2.1 then t' ⟨(l, f.1.2), hf⟩ else 0) := by
      funext l
      simp only [Pi.add_apply]
      split_ifs <;> simp
    show ρ _ f.1.1 = ρ _ f.1.1 + ρ _ f.1.1
    rw [hv, map_add (f := _)]
    rfl
  map_smul' a t := by
    funext f
    have hv : (fun l : Fin (n + c) => if hf : IsFree n' n c l.1 f.1.2.1 then (a • t) ⟨(l, f.1.2), hf⟩ else 0) =
        a • (fun l : Fin (n + c) => if hf : IsFree n' n c l.1 f.1.2.1 then t ⟨(l, f.1.2), hf⟩ else 0) := by
      funext l
      simp only [Pi.smul_apply, smul_eq_mul]
      split_ifs <;> simp
    show ρ _ f.1.1 = a * ρ _ f.1.1
    rw [hv, map_smul]
    rfl

theorem xxw_tr_eq {n' c' n c : ℕ} (ρ : (Fin (n + c) → E) ≃ₗ[E] (Fin (n + c) → E)) (t : FC n' c' n c → E) :
    Tr ρ t = xxwLin ρ t + Tr ρ 0 := by
  funext f
  simp only [Tr, Pi.add_apply, LinearMap.comp_apply, LinearEquiv.coe_coe]
  rw [xxw_eN_eq]
  have h := xxw_diff (E := E) t f.1.2
  rw [sub_eq_iff_eq_add] at h
  rw [h, map_add (f := _), Pi.add_apply]
  rfl

theorem xxw_tr_inv {n' c' n c : ℕ} {ρ : (Fin (n + c) → E) ≃ₗ[E] (Fin (n + c) → E)} (hρ : ρ ∈ R1 E n c) (t : FC n' c' n c → E) :
    Tr ρ⁻¹ (Tr ρ t) = t := by
  have hρi : ρ⁻¹ ∈ R1 E n c := inv_mem hρ
  have e1 := unfolding_affine_space_invariant E n' c' n c ρ hρ 0 t
  have e2 := unfolding_affine_space_invariant E n' c' n c ρ⁻¹ hρi 0 (Tr ρ t)
  rw [LinearMap.comp_zero] at e1 e2
  have e3 : xx1 (0 : (Fin n' → E) →ₗ[E] (Fin n → E)) (Tr ρ⁻¹ (Tr ρ t)) =
      xx1 (0 : (Fin n' → E) →ₗ[E] (Fin n → E)) t := by
    rw [← e2, ← e1]
    apply LinearMap.ext
    intro x
    simp only [LinearMap.comp_apply, LinearEquiv.coe_coe]
    rw [← LinearEquiv.mul_apply, inv_mul_cancel]
    rfl
  funext f
  have h := congrFun (LinearMap.congr_fun e3 (Pi.single f.1.2 1)) f.1.1
  rw [xxw_entry, xxw_entry, dif_pos f.2, dif_pos f.2] at h
  exact h

theorem free_coordinate_affine_invertible : TrAffP := by
  intro E _ n' c' n c ρ hρ
  have hρi : ρ⁻¹ ∈ R1 E n c := inv_mem hρ
  have key : ∀ σ : (Fin (n + c) → E) ≃ₗ[E] (Fin (n + c) → E), σ ∈ R1 E n c →
      ∀ t : FC n' c' n c → E, xxwLin σ⁻¹ (xxwLin σ t) = t := by
    intro σ hσ t
    have h1 := xxw_tr_inv hσ t
    have h0 := xxw_tr_inv hσ (0 : FC n' c' n c → E)
    rw [xxw_tr_eq σ⁻¹, xxw_tr_eq σ t, map_add (f := _)] at h1
    rw [xxw_tr_eq σ⁻¹] at h0
    calc xxwLin σ⁻¹ (xxwLin σ t) = (xxwLin σ⁻¹ (xxwLin σ t) + xxwLin σ⁻¹ (Tr σ 0) + Tr σ⁻¹ 0) -
          (xxwLin σ⁻¹ (Tr σ 0) + Tr σ⁻¹ 0) := by abel
      _ = t - 0 := by rw [h1, h0]
      _ = t := sub_zero t
  refine ⟨{ xxwLin ρ with invFun := xxwLin ρ⁻¹, left_inv := key ρ hρ, right_inv := ?_ },
    fun t => xxw_tr_eq ρ t⟩
  intro t
  have := key ρ⁻¹ hρi t
  rwa [inv_inv] at this

theorem character_argument_constant_shift : ChArgP := by
  intro E _ n' c' n c ρ hρ xj t
  obtain ⟨h1, -⟩ := hρ
  unfold chArg
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl (fun i hi => ?_)
  have hic : i < c := Finset.mem_range.mp hi
  simp only [LinearMap.comp_apply, LinearEquiv.coe_coe]
  by_cases hs : n' + i + 1 < n' + c'
  · obtain ⟨s, hs_eq⟩ : ∃ s : Fin (n' + c'), s.1 = n' + i + 1 := ⟨⟨_, hs⟩, rfl⟩
    rw [← hs_eq, xxw_eN_eq s]
    have hsn : ¬ s.1 < n' := by omega
    have hu : xx1 xj t (Pi.single s 1) -
        xx1 (0 : (Fin n' → E) →ₗ[E] (Fin n → E)) 0 (Pi.single s 1) ∈ Ufl E n c (i + 1) := by
      rw [xx1_single_eq_of_not_lt xj t s hsn, xxw_diff, xxw_mem_Ufl]
      intro l hl
      have hlt := l.isLt
      rw [dif_neg]
      rintro ⟨-, h | ⟨-, h⟩⟩ <;> omega
    have hstep := xxw_step h1 i _ hu
    rw [xxw_mem_Ufl] at hstep
    have hn : n + i < n + c := by omega
    have h2 := hstep ⟨n + i, hn⟩ le_rfl
    have h0 : xx1 (0 : (Fin n' → E) →ₗ[E] (Fin n → E)) 0 (Pi.single s 1) ⟨n + i, hn⟩ = 0 := by
      rw [xxw_entry, dif_pos]
      · rfl
      · refine ⟨by omega, Or.inr ⟨by omega, Or.inr ?_⟩⟩
        simp only
        omega
    simp only [atN, dif_pos hn]
    rw [map_sub, Pi.sub_apply, Pi.sub_apply, Pi.sub_apply, h0] at h2
    linear_combination h2
  · have h0 : eN E (n' + c') (n' + i + 1) = 0 := by
      funext l
      simp only [eN, Pi.zero_apply]
      rw [if_neg]
      have := l.isLt
      omega
    rw [h0]
    simp [atN]

end XX

end PI.TwistedEisensteinNonvanishing.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.FreeCoordinateAffineInvertible =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TwistedEisensteinOfHypotheses =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TwistedEisensteinOfHypotheses", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.Development\npublic import Mathlib.CategoryTheory.Category.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module

noncomputable section

namespace PI.TwistedEisensteinNonvanishing.W

open Loc LocE

theorem psi_ne {E K : Type} [Field E] [NumberField E] [StarRing E] [Field K] {D : ℕ}
    {P : HeightOneSpectrum (𝓞 E)} {psi : E → K} (hpsi : PsiOk D P psi) (z : E) : psi z ≠ 0 := by
  obtain ⟨hmul, hint, hout⟩ := hpsi
  by_cases hz : IntAt P ((qOf P : E) ^ D * z)
  · have hz' : IntAt P ((qOf P : E) ^ D * (-z)) := by
      obtain ⟨r, s, hs, hrs⟩ := hz
      exact ⟨-r, s, hs, by rw [mul_neg, mul_neg, hrs, map_neg]⟩
    have h0 : IntAt P 0 := ⟨0, 1, (Ideal.ne_top_iff_one _).mp P.isPrime.ne_top, by simp⟩
    have h := hmul z (-z) hz hz'
    rw [add_neg_cancel, hint 0 h0] at h
    intro hz0
    rw [hz0, zero_mul] at h
    exact one_ne_zero h
  · rw [hout z hz]
    exact one_ne_zero

private lemma intAt_add_twisted_eisenstein_coset {E : Type} [Field E] [NumberField E] {P : HeightOneSpectrum (𝓞 E)} {a b : E}
    (ha : IntAt P a) (hb : IntAt P b) : IntAt P (a + b) := by
  obtain ⟨r1, s1, hs1, h1⟩ := ha
  obtain ⟨r2, s2, hs2, h2⟩ := hb
  refine ⟨r1 * s2 + r2 * s1, s1 * s2, fun h => ?_, ?_⟩
  · rcases P.isPrime.mem_or_mem h with h' | h'
    · exact hs1 h'
    · exact hs2 h'
  · rw [map_mul, map_add (f := _), map_mul, map_mul, ← h1, ← h2]
    ring

private lemma intAt_neg_twisted_eisenstein_coset {E : Type} [Field E] [NumberField E] {P : HeightOneSpectrum (𝓞 E)} {a : E}
    (h : IntAt P a) : IntAt P (-a) := by
  obtain ⟨r, s, hs, hr⟩ := h
  exact ⟨-r, s, hs, by rw [mul_neg, hr, map_neg]⟩

private lemma intAt_qOf_pow_mul {E : Type} [Field E] [NumberField E] {P : HeightOneSpectrum (𝓞 E)} (k : ℕ) {a : E}
    (h : IntAt P a) : IntAt P ((qOf P : E) ^ k * a) := by
  obtain ⟨r, s, hs, hr⟩ := h
  refine ⟨(qOf P : 𝓞 E) ^ k * r, s, hs, ?_⟩
  rw [map_mul, map_pow, map_natCast, ← hr]
  ring

theorem key_pt {E K : Type} [Field E] [NumberField E] [StarRing E] [Field K] {D j : ℕ} (hjD : j ≤ D)
    {P : HeightOneSpectrum (𝓞 E)} {psi : E → K} (hpsi : PsiOk D P psi) {C gx gy : K} (hC : C ≠ 0)
    {cx cy c0 : E} (hg : gx = C * gy) (hc : cy = cx + c0)
    (hbx : gx ≠ 0 → IntAt P ((qOf P : E) ^ j * cx)) (hby : gy ≠ 0 → IntAt P ((qOf P : E) ^ j * cy)) :
    gx * psi (-cx) = (C * psi c0) * (gy * psi (-cy)) := by
  by_cases hgy : gy = 0
  · rw [hg, hgy]
    ring
  · have hgx : gx ≠ 0 := by
      rw [hg]
      exact mul_ne_zero hC hgy
    have ix := hbx hgx
    have iy := hby hgy
    have lift : ∀ t : E, IntAt P ((qOf P : E) ^ j * t) → IntAt P ((qOf P : E) ^ D * t) := by
      intro t ht
      have h := intAt_qOf_pow_mul (D - j) ht
      rwa [← mul_assoc, ← pow_add, Nat.sub_add_cancel hjD] at h
    have i_cx := lift cx ix
    have i_cy := lift cy iy
    have i_c0 : IntAt P ((qOf P : E) ^ D * c0) := by
      have e : (qOf P : E) ^ D * c0 = (qOf P : E) ^ D * cy + -((qOf P : E) ^ D * cx) := by
        rw [hc]
        ring
      rw [e]
      exact intAt_add_twisted_eisenstein_coset i_cy (intAt_neg_twisted_eisenstein_coset i_cx)
    have i_ncy : IntAt P ((qOf P : E) ^ D * (-cy)) := by
      rw [mul_neg]
      exact intAt_neg_twisted_eisenstein_coset i_cy
    have hsplit := hpsi.1 (-cy) c0 i_ncy i_c0
    have e : -cy + c0 = -cx := by
      rw [hc]
      ring
    rw [e] at hsplit
    rw [hsplit, hg]
    ring

theorem RS_mul {E K : Type} [Field E] [NumberField E] [Field K] (P : HeightOneSpectrum (𝓞 E)) {ι : Type}
    [Fintype ι] [DecidableEq ι] (A B : ℕ) (C : K) (H : (ι → E) → K) :
    RS P A B (fun t => C * H t) = C * RS P A B H := by
  simp only [RS, ← Finset.mul_sum]
  ring

theorem core {E K : Type} [Field E] [NumberField E] [StarRing E] [Field K] (P : HeightOneSpectrum (𝓞 E))
    (hp : (Ideal.absNorm P.asIdeal).Prime) (hq : ((Ideal.absNorm P.asIdeal : ℕ) : 𝓞 E) ∉ P.asIdeal ^ 2)
    (hq0 : ((qOf P : ℕ) : K) ≠ 0) (hStab : StabP) (hCoV : CoVP) (hXX : XXP) (hTA : TrAffP)
    (hRX : ResXSurjP) (hCA : ChArgP) (hCB : ChArgBddP)
    {n' c' n c D j : ℕ} (hjD : j ≤ D) {psi : E → K} (hpsi : PsiOk D P psi)
    (G G' : SF E K (n' + c') (n + c)) (ρ : (Fin (n + c) → E) ≃ₗ[E] (Fin (n + c) → E)) (hρ : ρ ∈ R1 E n c)
    (C : K) (hC : C ≠ 0) (hCeq : ∀ x, G' x = C * G (ρ.toLinearMap ∘ₗ x))
    (hS : ∀ x, G x ≠ 0 → ∀ (s : ℕ) (l : Fin (n + c)), IntAt P ((qOf P : E) ^ j * x (eN E (n' + c') s) l))
    (hS' : ∀ x, G' x ≠ 0 → ∀ (s : ℕ) (l : Fin (n + c)), IntAt P ((qOf P : E) ^ j * x (eN E (n' + c') s) l))
    (hH : ∀ y : (Fin n' → E) →ₗ[E] (Fin n → E),
      Good P j j (fun t : FC n' c' n c → E => G (xx1 y t) * psi (-chArg (xx1 y t))))
    (hne : ∃ A0 B0 : ℕ, ∀ A' B', A0 ≤ A' → B0 ≤ B' →
      (fun xj : (Fin n' → E) →ₗ[E] (Fin n → E) =>
        RS P A' B' (fun t : FC n' c' n c → E => G (xx1 xj t) * psi (-chArg (xx1 xj t)))) ≠ 0) :
    ∃ A0 B0 : ℕ, ∀ A' B', A0 ≤ A' → B0 ≤ B' →
      (fun xj : (Fin n' → E) →ₗ[E] (Fin n → E) =>
        RS P A' B' (fun t : FC n' c' n c → E => G' (xx1 xj t) * psi (-chArg (xx1 xj t)))) ≠ 0 := by
  obtain ⟨L, hL⟩ := hTA E n' c' n c ρ hρ
  obtain ⟨cT, hcT, hcov⟩ := hCoV E K P hp hq hq0 (FC n' c' n c) L (Tr ρ 0)
  obtain ⟨a', b', hab⟩ := hcov j j
  have key : ∀ (xj : (Fin n' → E) →ₗ[E] (Fin n → E)) (t : FC n' c' n c → E),
      G' (xx1 xj t) * psi (-chArg (xx1 xj t)) =
        (C * psi (chArg (ρ.toLinearMap ∘ₗ xx1 (0 : (Fin n' → E) →ₗ[E] (Fin n → E)) (0 : FC n' c' n c → E)))) *
          (G (xx1 (resX ρ ∘ₗ xj) (L t + Tr ρ 0)) * psi (-chArg (xx1 (resX ρ ∘ₗ xj) (L t + Tr ρ 0)))) := by
    intro xj t
    have e1 : ρ.toLinearMap ∘ₗ xx1 xj t = xx1 (resX ρ ∘ₗ xj) (L t + Tr ρ 0) := by
      rw [hXX E n' c' n c ρ hρ xj t, hL t]
    rw [← e1]
    exact key_pt hjD hpsi hC (hCeq _) (hCA E n' c' n c ρ hρ xj t)
      (fun h0 => hCB E P n' c' n c j _ (hS' _ h0)) (fun h0 => hCB E P n' c' n c j _ (hS _ h0))
  obtain ⟨A0, B0, hAB⟩ := hne
  obtain ⟨y, hy⟩ : ∃ y : (Fin n' → E) →ₗ[E] (Fin n → E),
      RS P j j (fun t : FC n' c' n c → E => G (xx1 y t) * psi (-chArg (xx1 y t))) ≠ 0 := by
    obtain ⟨y, hy⟩ := Function.ne_iff.1 (hAB (max A0 j) (max B0 j) (le_max_left _ _) (le_max_left _ _))
    refine ⟨y, ?_⟩
    simp only [Pi.zero_apply] at hy
    rwa [← hStab E K P hp hq hq0 _ j j _ (hH y) _ _ (le_max_right _ _) (le_max_right _ _)]
  obtain ⟨xj, rfl⟩ := hRX E n' n c ρ hρ y
  obtain ⟨hg, heq⟩ := hab _ (hH (resX ρ ∘ₗ xj))
  refine ⟨a', b', fun A' B' hA' hB' hz => ?_⟩
  have h1 := congrFun hz xj
  simp only [Pi.zero_apply] at h1
  rw [show (fun t : FC n' c' n c → E => G' (xx1 xj t) * psi (-chArg (xx1 xj t))) = fun t =>
      (C * psi (chArg (ρ.toLinearMap ∘ₗ xx1 (0 : (Fin n' → E) →ₗ[E] (Fin n → E)) (0 : FC n' c' n c → E)))) *
        (G (xx1 (resX ρ ∘ₗ xj) (L t + Tr ρ 0)) * psi (-chArg (xx1 (resX ρ ∘ₗ xj) (L t + Tr ρ 0))))
      from funext (key xj), RS_mul, hStab E K P hp hq hq0 _ a' b' _ hg A' B' hA' hB', heq] at h1
  exact mul_ne_zero (mul_ne_zero hC (psi_ne hpsi _)) (mul_ne_zero hcT hy) h1

theorem twisted_eisenstein_of_hypotheses (hStab : StabP) (hCoV : CoVP) (hOm : OmStepP) (hPS : PhiSuppP) (hPP : PhiPerP)
    (hBE : BddEntP) (hGS : GSuppP) (hGP : GPerP) (hHG : HGoodP) (hCB : ChArgBddP) (hXX : XXP)
    (hTA : TrAffP) (hRX : ResXSurjP) (hCA : ChArgP) : PI.TwistedEisensteinNonvanishing.TwistedEisensteinNonvanishing := by
  intro E K _ _ _ _ R P hp hq psi sq cq ξ hpsi hsq hcq i hi hal h h' hbal hbh hbh' hdc hne
  obtain ⟨r, hr, κ, hκ, rfl⟩ := hdc
  have m1 : i ≤ i * (R.t + 1) := Nat.le_mul_of_pos_right i (Nat.succ_pos _)
  have m2 : i + 1 ≤ (i + 1) * (R.t + 1) := Nat.le_mul_of_pos_right _ (Nat.succ_pos _)
  have hk := R.m_add_three_le_k
  have s1 : R.r = (R.k + (i + 1)) + cOf R (i + 1) := by
    unfold Ranks.r cOf
    omega
  have s3 : R.k + (i + 1) ≤ R.N (i + 1) := by
    unfold Ranks.N
    omega
  have s4 : R.r ≤ R.N i + cOf R i := by
    unfold Ranks.r Ranks.N cOf
    omega
  have s5 : R.k ≤ R.N i := by
    unfold Ranks.N
    omega
  have s6 : R.k ≤ R.N (i + 1) := by
    unfold Ranks.N
    omega
  have s7 : cOf R (i + 1) < cOf R i := by
    unfold cOf
    omega
  by_cases hq0 : ((qOf P : ℕ) : K) = 0
  · exfalso
    have hFC : Nonempty (FC (R.N i) (cOf R i) (R.N (i + 1)) (cOf R (i + 1))) :=
      ⟨⟨(⟨0, by omega⟩, ⟨R.N i + cOf R (i + 1), by omega⟩), by
        show IsFree (R.N i) (R.N (i + 1)) (cOf R (i + 1)) 0 (R.N i + cOf R (i + 1))
        unfold IsFree
        omega⟩⟩
    obtain ⟨A0, B0, hAB⟩ := hne
    refine hAB A0 (B0 + 1) le_rfl (Nat.le_succ _) ?_
    funext xj
    show (((qOf P : K) ^ (B0 + 1))⁻¹) ^ Fintype.card (FC (R.N i) (cOf R i) (R.N (i + 1)) (cOf R (i + 1))) * _ = 0
    rw [hq0, zero_pow (Nat.succ_ne_zero _), inv_zero, zero_pow Fintype.card_ne_zero, zero_mul]
  have hρ : r⁻¹ ∈ R1 E (R.N (i + 1)) (cOf R (i + 1)) := inv_mem hr
  obtain ⟨C, hC, hCeq⟩ := hOm E K P hp hq sq cq hsq hcq ξ R.k R.r (cOf R i) (R.N i) (cOf R (i + 1)) (R.N (i + 1))
    (R.k + (i + 1)) s1 (Nat.le_add_right _ _) s3 s4 s5 hal h r κ hκ
  obtain ⟨bh1, bh2⟩ := hBE E P R (i + 1) h hbh
  obtain ⟨bh1', -⟩ := hBE E P R (i + 1) (r * h * κ) hbh'
  obtain ⟨ba1, ba2⟩ := hBE E P R i hal hbal
  have hPhiS := hPS E K P (qOf P) ξ R.k R.r (cOf R i) (R.N i) (cOf R (i + 1)) (R.N (i + 1)) s6 s5
  have hPhiP := hPP E K P hp hq ξ R.k R.r (cOf R i) (R.N i) (cOf R (i + 1)) (R.N (i + 1))
  have gS := hGS E K P hp _ _ (locChar (qOf P) cq ξ⁻¹) (vP P (qOf P)) sq hal h _ (i + 1) hPhiS ba2 bh1
  have gS' := hGS E K P hp _ _ (locChar (qOf P) cq ξ⁻¹) (vP P (qOf P)) sq hal (r * h * κ) _ (i + 1) hPhiS ba2 bh1'
  have gP := hGP E K P hp _ _ (locChar (qOf P) cq ξ⁻¹) (vP P (qOf P)) sq hal h _ i hPhiP ba1 bh2
  have hHg := hHG E K P hp (R.N i) (cOf R i) (R.N (i + 1)) (cOf R (i + 1)) (2 * R.m) (i + 1) (by omega) psi hpsi _ gS gP
  exact core P hp hq hq0 hStab hCoV hXX hTA hRX hCA hCB (D := 2 * R.m) (j := i + 1) (by omega) hpsi _ _ r⁻¹ hρ
    C hC hCeq gS gS' hHg hne

end PI.TwistedEisensteinNonvanishing.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TwistedEisensteinOfHypotheses =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.UnfoldingMatrixFreeCoordinate =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.UnfoldingMatrixFreeCoordinate", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.IaDivDown\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Field\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module

noncomputable section

namespace PI.TwistedEisensteinNonvanishing.W

open Loc LocE

section Vec

variable {E : Type} [Field E]

theorem gh_eN_lt {N s : ℕ} (h : s < N) : eN E N s = Pi.single (⟨s, h⟩ : Fin N) 1 := by
  funext l
  simp [eN, Pi.single_apply, Fin.ext_iff]

theorem gh_eN_ge {N s : ℕ} (h : N ≤ s) : eN E N s = 0 := by
  funext l
  have := l.2
  simp only [eN, Pi.zero_apply]
  rw [if_neg (by omega)]

theorem gh_decomp {N : ℕ} (v : Fin N → E) : v = ∑ m : Fin N, v m • eN E N m.1 := by
  funext l
  simp [eN, Finset.sum_apply, Fin.val_inj]

theorem gh_apply {M N : ℕ} (f : (Fin M → E) →ₗ[E] (Fin N → E)) (v : Fin M → E) (l : Fin N) :
    f v l = ∑ m : Fin M, v m * f (eN E M m.1) l := by
  conv_lhs => rw [gh_decomp v]

  simp [map_sum, Finset.sum_apply]

theorem gh_atN_add {N : ℕ} (v w : Fin N → E) (i : ℕ) : atN (v + w) i = atN v i + atN w i := by
  unfold atN
  split_ifs <;> simp

theorem gh_chArg_add {n' c' n c : ℕ} (x z : (Fin (n' + c') → E) →ₗ[E] (Fin (n + c) → E)) :
    chArg (n := n) (c := c) (x + z) = chArg (n := n) (c := c) x + chArg (n := n) (c := c) z := by
  unfold chArg
  simp [LinearMap.add_apply, gh_atN_add, Finset.sum_add_distrib]

theorem unfolding_matrix_free_coordinate {n' c' n c : ℕ} (y : (Fin n' → E) →ₗ[E] (Fin n → E)) (t : FC n' c' n c → E) (p : FC n' c' n c) :
    xx1 y t (eN E (n' + c') p.1.2.1) p.1.1 = t p := by
  have he : eN E (n' + c') p.1.2.1 = Pi.single p.1.2 1 := gh_eN_lt p.1.2.2
  rw [he]
  unfold xx1
  rw [Matrix.toLin'_apply, Matrix.mulVec_single_one]
  exact dif_pos p.2

private theorem xx1_eN_apply {n' c' n c : ℕ} (y : (Fin n' → E) →ₗ[E] (Fin n → E))
    (t : FC n' c' n c → E) {s : ℕ} (hs : s < n' + c') (l : Fin (n + c)) :
    xx1 y t (eN E (n' + c') s) l =
      if hf : IsFree n' n c l.1 s then t ⟨(l, ⟨s, hs⟩), hf⟩
      else if hs' : s < n' then (if hl : l.1 < n then LinearMap.toMatrix' y ⟨l.1, hl⟩ ⟨s, hs'⟩ else 0)
      else if l.1 = n + (s - n') then 1 else 0 := by
  rw [gh_eN_lt hs]
  unfold xx1
  rw [Matrix.toLin'_apply, Matrix.mulVec_single_one]
  rfl

theorem unfolding_matrix_sub {n' c' n c : ℕ} (y : (Fin n' → E) →ₗ[E] (Fin n → E)) (t t' : FC n' c' n c → E) (s : ℕ) (l : Fin (n + c)) :
    (xx1 y t - xx1 y t') (eN E (n' + c') s) l =
      if hs : s < n' + c' then (if hf : IsFree n' n c l.1 s then t ⟨(l, ⟨s, hs⟩), hf⟩ - t' ⟨(l, ⟨s, hs⟩), hf⟩ else 0) else 0 := by
  by_cases hs : s < n' + c'
  · rw [dif_pos hs, LinearMap.sub_apply, Pi.sub_apply, xx1_eN_apply y t hs, xx1_eN_apply y t' hs]
    split_ifs <;> first | rfl | exact sub_self _
  · rw [dite_eq_right hs, gh_eN_ge (not_lt.mp hs)]
    simp

end Vec

section Bd

variable {E : Type} [Field E] [NumberField E] (P : HeightOneSpectrum (𝓞 E))

end Bd

theorem character_argument_bounded : ChArgBddP := by
  intro E _ _ P n' c' n c j x hx
  unfold chArg
  rw [Finset.mul_sum]
  apply ia_sum (P := P)
  intro i _
  unfold atN
  split_ifs with h
  · exact hx _ _
  · rw [mul_zero]; exact ia_zero (P := P)

theorem translated_function_support : GSuppP := by
  intro E K _ _ _ P hp a b mu v sq g₀ h Φ j hΦ hg hh x hx s l
  set y := h.symm.toLinearMap ∘ₗ x ∘ₗ g₀.toLinearMap with hy
  have hy0 : Φ y ≠ 0 := by
    intro h0; apply hx; simp only [om]; rw [← hy, h0, mul_zero]
  have hyI := hΦ y hy0
  set w := y (g₀.symm (eN E a s)) with hw
  have e1 : x (eN E a s) l = h w l := by simp [hw, hy]
  have e2 := gh_apply h.toLinearMap w l
  simp only [LinearEquiv.coe_coe] at e2
  rw [e1, e2, Finset.mul_sum]
  apply ia_sum (P := P)
  intro m _
  rw [mul_left_comm]
  refine ia_mul (P := P) ?_ (hh m.1 l)
  have e3 := gh_apply y (g₀.symm (eN E a s)) m
  rw [← hw] at e3
  rw [e3]
  apply ia_sum (P := P)
  intro k _
  exact ia_mul (P := P) (hg s k) (hyI k.1 m)

theorem translated_function_invariance : GPerP := by
  intro E K _ _ _ P hp a b mu v sq g₀ h Φ e hΦ hg hh x δ hδ
  have hq : (qOf P : E) ≠ 0 := qE_ne (P := P) hp
  simp only [om]
  congr 1
  rw [LinearMap.add_comp, LinearMap.comp_add]
  apply hΦ
  intro s l
  have e1 := gh_apply h.symm.toLinearMap (δ (g₀ (eN E a s))) l
  simp only [LinearEquiv.coe_coe] at e1
  simp only [LinearMap.comp_apply, LinearEquiv.coe_coe]
  rw [e1, Finset.sum_div]
  apply ia_sum (P := P)
  intro k _
  rw [gh_apply δ (g₀ (eN E a s)) k, Finset.sum_mul, Finset.sum_div]
  apply ia_sum (P := P)
  intro m _
  have e3 : g₀ (eN E a s) m * δ (eN E a m.1) k * h.symm (eN E b k.1) l / (qOf P : E)
      = ((qOf P : E) ^ e * g₀ (eN E a s) m) * (δ (eN E a m.1) k / (qOf P : E) ^ (e + 1))
        * h.symm (eN E b k.1) l := by
    field_simp
    ring
  rw [e3]
  exact ia_mul (P := P) (ia_mul (P := P) (hg s m) (hδ m.1 k)) (hh k.1 l)

theorem unfolding_integrand_good : HGoodP := by
  intro E K _ _ _ _ P hp n' c' n c D j hjD psi hpsi G hGs hGp y
  have hq : (qOf P : E) ≠ 0 := qE_ne (P := P) hp
  refine ⟨?_, ?_⟩
  · intro t ht l
    have hGne : G (xx1 y t) ≠ 0 := by
      intro h0; apply ht; simp only [h0, zero_mul]
    rw [← unfolding_matrix_free_coordinate y t l]
    exact hGs _ hGne _ _
  · intro t δ hδ
    set X := xx1 y t with hX
    set Dm := xx1 y (t + δ) - X with hDm
    have hsplit : xx1 y (t + δ) = X + Dm := by rw [hDm]; abel
    have hD : ∀ (s : ℕ) (l : Fin (n + c)), IntAt P (Dm (eN E (n' + c') s) l / (qOf P : E) ^ j) := by
      intro s l
      rw [hDm, hX, unfolding_matrix_sub]
      split_ifs with hs hf
      · simp only [Pi.add_apply, add_sub_cancel_left]; exact hδ _
      · rw [zero_div]; exact ia_zero (P := P)
      · rw [zero_div]; exact ia_zero (P := P)
    have hDint : ∀ (s : ℕ) (l : Fin (n + c)), IntAt P (Dm (eN E (n' + c') s) l) := by
      intro s l
      have e : Dm (eN E (n' + c') s) l
          = (qOf P : E) ^ j * (Dm (eN E (n' + c') s) l / (qOf P : E) ^ j) := by
        field_simp
      rw [e]; exact ia_mul (P := P) (ia_qpow (P := P) j) (hD s l)
    have hGeq : G (X + Dm) = G X := hGp X Dm hD
    simp only
    rw [hsplit, hGeq]
    by_cases hG : G X = 0
    · rw [hG, zero_mul, zero_mul]
    · have hB : IntAt P (chArg (n := n) (c := c) Dm) := by
        have := character_argument_bounded E P n' c' n c 0 Dm (fun s l => by rw [pow_zero, one_mul]; exact hDint s l)
        rwa [pow_zero, one_mul] at this
      have hA : IntAt P ((qOf P : E) ^ j * chArg (n := n) (c := c) X) :=
        character_argument_bounded E P n' c' n c j X (hGs X hG)
      have hA' : IntAt P ((qOf P : E) ^ D * -chArg (n := n) (c := c) X) :=
        ia_up (P := P) hjD (by rw [mul_neg]; exact ia_neg (P := P) hA)
      have hB' : IntAt P ((qOf P : E) ^ D * -chArg (n := n) (c := c) Dm) :=
        ia_mul (P := P) (ia_qpow (P := P) D) (ia_neg (P := P) hB)
      rw [gh_chArg_add, neg_add, hpsi.1 _ _ hA' hB', hpsi.2.1 _ (ia_neg (P := P) hB), mul_one]

end PI.TwistedEisensteinNonvanishing.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.UnfoldingMatrixFreeCoordinate =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TwistedEisensteinOfRemaining =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TwistedEisensteinOfRemaining", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.IaDivDown\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.ChangeVariablesDeterminantOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.FreeCoordinateAffineInvertible\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.IntegralApproximationByInteger\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.IsUnitRedP\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.JacobianTransformationLaw\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.SumSliceEq\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TwistedEisensteinOfHypotheses\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.UnfoldingMatrixFreeCoordinate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.TwistedEisensteinNonvanishing.W

theorem ntAll : NTAll := ⟨integer_integral_iff_dvd, integral_approximation_by_integer, element_eq_prime_power_mul_unit, valuation_exponent_unique, unit_congruent_to_integer⟩

theorem twisted_eisenstein_of_remaining (hPS : PhiSuppP) (hPP : PhiPerP) (hBE : BddEntP) : PI.TwistedEisensteinNonvanishing.TwistedEisensteinNonvanishing :=
  twisted_eisenstein_of_hypotheses (stab_of ntAll) (cov_of ntAll) (omStep_of jacobian_transformation_law (muNe_of ntAll)) hPS hPP hBE translated_function_support
    translated_function_invariance unfolding_integrand_good character_argument_bounded unfolding_affine_space_invariant free_coordinate_affine_invertible restriction_to_affine_surjective character_argument_constant_shift

end PI.TwistedEisensteinNonvanishing.W
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TwistedEisensteinOfRemaining =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TwistedEisensteinNonvanishing =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TwistedEisensteinNonvanishing", "h": "module\n\npublic import Formalism.PeriodIntegrals.TwistedEisensteinNonvanishing\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TestFunctionPeriodicity\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TwistedEisensteinCoset.TwistedEisensteinOfRemaining\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem TwistedEisensteinNonvanishing : PI.TwistedEisensteinNonvanishing.TwistedEisensteinNonvanishing :=
  PI.TwistedEisensteinNonvanishing.W.twisted_eisenstein_of_remaining PI.TwistedEisensteinNonvanishing.W.test_function_support PI.TwistedEisensteinNonvanishing.W.test_function_periodicity PI.TwistedEisensteinNonvanishing.W.bounded_matrix_entries
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TwistedEisensteinNonvanishing =====

-- ===== clump member: Formalism.LocalToGlobal.Columns.UnfoldingNonvanishingDoubleCosetHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Columns.UnfoldingNonvanishingDoubleCosetHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.ChainTwAux\npublic import Formalism.PeriodIntegrals.TwistedEisensteinNonvanishing\nimport Formalism.LocalToGlobal.Columns.ChainTwCst\npublic import Formalism.LocalToGlobal.Columns.ChainTwFinal\nimport Formalism.LocalToGlobal.Columns.ChainTwPsi\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TwistedEisensteinNonvanishing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Module

noncomputable section

namespace Formalism.L2.Col

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV

def toTwistedEisensteinRanks (R : Ranks) : PI.TwistedEisensteinNonvanishing.Ranks :=
  { ord := R.ord, k := R.k, m := R.m, t := R.t, k_even := R.k_even, m_even := R.m_even, t_odd := R.t_odd, two_le_m := R.two_le_m,
    m_add_three_le_k := R.m_add_three_le_k, rank_add_five_le := R.rank_add_five_le, three_m_lt_t := R.three_m_lt_t,
    m_le_f := R.m_le_f, f_le_k := R.f_le_k, m_sq_le_N := R.m_sq_le_N }

section Br

variable {X : Fields} {Pr : Primes X} {R : Ranks} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ} {mu : Tup X.F X.E X.K S}

theorem doubleCosetDatum_psi_ok (G : ChGlob X R.m) (P : rowSG Pr sel mu)
    (hadd : ∀ x y : X.E, IntAt P.1 ((qOf P.1 : X.E) ^ (2 * R.m) * x) → IntAt P.1 ((qOf P.1 : X.E) ^ (2 * R.m) * y) →
      twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m) (x + y) = twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m) x * twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m) y)
    (hint : ∀ x : X.E, IntAt P.1 x → twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m) x = 1) :
    PI.TwistedEisensteinNonvanishing.PsiOk (2 * (toTwistedEisensteinRanks R).m) P.1 (twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m)) := by
  refine ⟨fun x y hx hy => hadd x y hx hy, fun x hx => hint x hx, fun x hx => ?_⟩
  unfold twPsiQ
  rw [dite_eq_right]
  rintro ⟨b, hb, -⟩
  exact hx hb

theorem twistedMultiplier_ne_zero (G : ChGlob X R.m) (i : ℕ) (P : rowSG Pr sel mu) (hP : P.1 ∉ Pr.vGs) : twMuq Ch sel mu G (i + 1) P ≠ 0 := by
  unfold twMuq
  rw [if_neg hP]
  split_ifs
  · exact Units.ne_zero _
  · exact one_ne_zero

theorem squareRoot_norm_ne_zero (P : rowSG Pr sel mu) (hq : (Ideal.absNorm P.1.asIdeal).Prime) (hsq : twSqrt P.1 ^ 2 = (qOf P.1 : X.K)) :
    twSqrt (X := X) P.1 ≠ 0 := by
  intro h0
  rw [h0, zero_pow two_ne_zero] at hsq
  have : (qOf P.1 : X.K) ≠ 0 := by exact_mod_cast hq.ne_zero
  exact this hsq.symm

theorem firstUnfolding_eq_doubleCosetDatum (G : ChGlob X R.m) (i : ℕ) (P : rowSG Pr sel mu) (hP : P.1 ∉ Pr.vGs) (A' B' : ℕ) (hal : AutY X R i) (h : AutY X R (i + 1)) :
    E1at Ch sel mu { twCst Ch sel mu G with A := A', B := B' } i P hal h =
      PI.TwistedEisensteinNonvanishing.TwistedEisensteinCoefficient (toTwistedEisensteinRanks R) P.1 (twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m)) (twSqrt P.1) (twMuq Ch sel mu G (i + 1) P)
        (resChar (mu : Chr X.F X.E X.K) P.1) A' B' i hal h := by
  unfold E1at omPhi muAt PhiAt
  simp only [twCst, if_neg hP]
  rfl

theorem doubleCosetDatum_hypotheses (H : PI.TwistedEisensteinNonvanishing.TwistedEisensteinNonvanishing) (G : ChGlob X R.m) {i : ℕ} (hi : i + 3 ≤ R.m) (P : rowSG Pr sel mu) (hP : P.1 ∉ Pr.vGs)
    (hq : (Ideal.absNorm P.1.asIdeal).Prime) (hu : ((Ideal.absNorm P.1.asIdeal : ℕ) : 𝓞 X.E) ∉ P.1.asIdeal ^ 2)
    (hadd : ∀ x y : X.E, IntAt P.1 ((qOf P.1 : X.E) ^ (2 * R.m) * x) → IntAt P.1 ((qOf P.1 : X.E) ^ (2 * R.m) * y) →
      twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m) (x + y) = twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m) x * twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m) y)
    (hint : ∀ x : X.E, IntAt P.1 x → twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m) x = 1) (hsq : twSqrt P.1 ^ 2 = (qOf P.1 : X.K))
    (hal : AutY X R i) (h h' : AutY X R (i + 1)) (hbal : TwBdd (Pr := Pr) i P.1 hal) (hb : TwBdd (Pr := Pr) (i + 1) P.1 h)
    (hb' : TwBdd (Pr := Pr) (i + 1) P.1 h') (hdc : SameDC (Pr := Pr) true (i + 1) P.1 h h')
    (hne : FiniteSumNonzeroLargeDepth Ch sel mu (twCst Ch sel mu G) i P hal h) : FiniteSumNonzeroLargeDepth Ch sel mu (twCst Ch sel mu G) i P hal h' := by
  have hL : ∀ j, lamYat (Pr := Pr) (R := R) j P.1 = LocE.lamY P.1 (qOf P.1) (R.N j) (cOf R j) 0 := fun j => by
    unfold lamYat; rw [if_neg hP]
  have hJ : ∀ j, Jat (Pr := Pr) (R := R) true j P.1 = LocE.JQ P.1 (qOf P.1) (R.k + j) (R.N j) (cOf R j) := fun j => by
    unfold Jat; rw [if_neg hP]
  have bdd : ∀ j (g : AutY X R j), TwBdd (Pr := Pr) j P.1 g → PI.TwistedEisensteinNonvanishing.BddL (toTwistedEisensteinRanks R) P.1 j g := fun j g hg x hx => by
    have := hg x (by rw [hL]; exact hx)
    rw [hL] at this
    exact this
  obtain ⟨A₀, B₀, hAB⟩ := hne
  have := H X.E X.K (toTwistedEisensteinRanks R) P.1 hq hu (twPsiQ G.σ₀ G.xi0 P.1 (2 * R.m)) (twSqrt P.1) (twMuq Ch sel mu G (i + 1) P)
    (resChar (mu : Chr X.F X.E X.K) P.1) (doubleCosetDatum_psi_ok G P hadd hint) (squareRoot_norm_ne_zero P hq hsq) (twistedMultiplier_ne_zero G i P hP) i hi hal h h'
    (bdd i hal hbal) (bdd (i + 1) h hb) (bdd (i + 1) h' hb')
    (by obtain ⟨r, hr, κ, hκ, e⟩ := hdc; exact ⟨r, hr, κ, by rw [hJ] at hκ; exact hκ, e⟩)
    ⟨A₀, B₀, fun A' B' hA hB => by rw [← firstUnfolding_eq_doubleCosetDatum G i P hP]; exact hAB A' B' hA hB⟩
  obtain ⟨A₁, B₁, h1⟩ := this
  exact ⟨A₁, B₁, fun A' B' hA hB => by rw [firstUnfolding_eq_doubleCosetDatum G i P hP]; exact h1 A' B' hA hB⟩

theorem unfoldingNonvanishingDoubleCoset_holds (G : ChGlob X R.m) {m2 : ℕ} (hm : R.m = m2 + 2) (hK : TwCstQ (Pr := Pr) sel mu G) :
    UnfoldingNonvanishingDoubleCoset Ch sel mu (twCst Ch sel mu G) m2 := by
  intro i hi P hP hd hal h h' hbal hb hb' hs hne
  exact doubleCosetDatum_hypotheses _root_.TwistedEisensteinNonvanishing G (by omega) P hP hd.1 hd.2 (hK.psi_add P hP) (hK.psi_int P hP) (hK.sq_sq P hP)
    hal h h' hbal hb hb' hs hne

theorem twIdx_ok_closed (hX : X.Ok) (hPr : Pr.Ok) (hCh : Ch.Ok) (h4 : ∀ w ∈ Pr.vGs, qOf w % 4 = 1) (G : ChGlob X R.m)
    {e : Fin R.m → X.Tau → ℚ} {eta : Formalism.L2.Host.HChar X.E} (hT : Ch.Tied G.σ₀ e G.mu0 eta) (hW : Ch.WeilTied G.σ₀ G.xi0)
    (hval : ∀ (j : Fin R.m) (w : HeightOneSpectrum (𝓞 X.E)), w ∈ Pr.vGs →
      ∃ y : X.K, G.σ₀ y = ((((G.mu0 j).locK w (ciQU w)) : ℂˣ) : ℂ)⁻¹)
    {m2 : ℕ} (hm : R.m = m2 + 2) (hQG : ∀ P ∈ QE sel (mu : Chr X.F X.E X.K), P ∉ Pr.vGs)
    (hd : ∀ P : rowSG Pr sel mu, P.1 ∉ Pr.vGs → TwDegOne X P.1)
    (hz : ∀ P : rowSG Pr sel mu, P.1 ∉ Pr.vGs →
      ∃ z : X.K, G.σ₀ z = Complex.exp (2 * Real.pi * Complex.I / ((qOf P.1 ^ (2 * R.m) : ℕ) : ℂ)))
    (hs : ∀ P : rowSG Pr sel mu, P.1 ∉ Pr.vGs → ∃ z : X.K, z ^ 2 = (qOf P.1 : X.K))
    (hxi : ∀ P : rowSG Pr sel mu, P.1 ∉ Pr.vGs → IntAt P.1 G.xi0 ∧ redP P.1 G.xi0 ≠ 0) :
    (twIdx Ch sel mu (twCst Ch sel mu G) m2).Ok Ch sel mu (twCst Ch sel mu G) G m2 := by
  have hK := twCstQ_of hd hz hs hxi
  have hc := twCst_ok hPr hCh h4 hK
  exact twistedIndex_firstUnfolding_ok hX hPr hCh h4 G hT hW hval hm hQG hd hz hs hxi (unfoldingNonvanishingDoubleCoset_holds G hm hK) (characterNonvanishing_holds hm hc)

end Br

end Formalism.L2.Col
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Columns.UnfoldingNonvanishingDoubleCosetHolds =====
