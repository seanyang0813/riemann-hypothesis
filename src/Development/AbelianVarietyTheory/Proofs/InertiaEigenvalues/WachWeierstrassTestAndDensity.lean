module

public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.RingTheory.PowerSeries.Basic
public import Mathlib.RingTheory.PowerSeries.WeierstrassPreparation
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
public import Mathlib.RingTheory.PowerSeries.Inverse
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegersCompleteDVR
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProdPrimePowDvd, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachWeierstrassTestAndDensity

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProdPrimePowDvd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProdPrimePowDvd", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.PowerSeries.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.PowerSeries.WeierstrassPreparation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\npublic import Mathlib.RingTheory.PowerSeries.Inverse\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations

namespace GlobalTheory.Per


open PowerSeries in
theorem exists_div_X_sub_C {O : Type} [CommRing O] [IsLocalRing O]
    [IsAdicComplete (IsLocalRing.maximalIdeal O) O] (x : O) (hx : ¬ IsUnit x) (a : PowerSeries O) :
    ∃ (b : PowerSeries O) (c : O), a = (PowerSeries.X - PowerSeries.C x) * b + PowerSeries.C c := by
  have hres : (PowerSeries.X - PowerSeries.C x : PowerSeries O).map (IsLocalRing.residue O) =
      PowerSeries.X := by
    have hx0 : IsLocalRing.residue O x = 0 :=
      (IsLocalRing.residue_eq_zero_iff x).2 ((IsLocalRing.mem_maximalIdeal x).2 hx)
    rw [map_sub, PowerSeries.map_X, PowerSeries.map_C, hx0, map_zero, sub_zero]
  have hne : (PowerSeries.X - PowerSeries.C x : PowerSeries O).map (IsLocalRing.residue O) ≠ 0 := by
    rw [hres]; exact PowerSeries.X_ne_zero
  obtain ⟨q, r, hdeg, heq⟩ := a.exists_isWeierstrassDivision hne
  change r.degree < ((PowerSeries.X - PowerSeries.C x : PowerSeries O).map
      (IsLocalRing.residue O)).order.toNat at hdeg
  rw [hres, PowerSeries.order_X] at hdeg
  have hr : r = Polynomial.C (r.coeff 0) := by
    have h1 : r.degree < 0 + 1 := by simpa using hdeg
    exact Polynomial.eq_C_of_degree_le_zero (Order.le_of_lt_succ h1)
  refine ⟨q, r.coeff 0, ?_⟩
  rw [heq, hr, Polynomial.coe_C, Polynomial.coeff_C_zero]

section
variable {O : Type} [CommRing O] [IsLocalRing O]
  [IsAdicComplete (IsLocalRing.maximalIdeal O) O] {L : Type} [Field L] [Algebra O L]

theorem ev_C (ev : PowerSeries O →ₐ[O] PowerSeries L) (c : O) :
    ev (PowerSeries.C c) = PowerSeries.C (algebraMap O L c) := by
  simpa [PowerSeries.algebraMap_apply] using ev.commutes c

theorem X_dvd_ev_iff (hinj : Function.Injective (algebraMap O L)) {x : O} (hx : ¬ IsUnit x)
    (ev : PowerSeries O →ₐ[O] PowerSeries L) {w : PowerSeries L}
    (hev : ev PowerSeries.X = PowerSeries.C (algebraMap O L x) + PowerSeries.X * w)
    (a : PowerSeries O) :
    PowerSeries.X ∣ ev a ↔ (PowerSeries.X - PowerSeries.C x) ∣ a := by
  have hXev : ev (PowerSeries.X - PowerSeries.C x) = PowerSeries.X * w := by
    rw [map_sub, hev, ev_C]; ring
  constructor
  · intro h
    obtain ⟨b, c, rfl⟩ := exists_div_X_sub_C x hx a
    rw [map_add (f := _), map_mul, hXev, ev_C] at h
    have h2 : PowerSeries.X ∣ PowerSeries.C (algebraMap O L c) :=
      (dvd_add_right (dvd_mul_of_dvd_left (dvd_mul_right _ _) _)).1 h
    rw [PowerSeries.X_dvd_iff, PowerSeries.constantCoeff_C] at h2
    have hc : c = 0 := hinj (by rw [h2, map_zero])
    subst hc
    rw [map_zero, add_zero]
    exact dvd_mul_right _ _
  · rintro ⟨b, rfl⟩
    rw [map_mul, hXev, mul_assoc]
    exact dvd_mul_right _ _

theorem X_pow_dvd_ev_iff (hinj : Function.Injective (algebraMap O L)) {x : O} (hx : ¬ IsUnit x)
    (ev : PowerSeries O →ₐ[O] PowerSeries L) {w : PowerSeries L} (hw : IsUnit w)
    (hev : ev PowerSeries.X = PowerSeries.C (algebraMap O L x) + PowerSeries.X * w)
    (m : ℕ) (a : PowerSeries O) :
    PowerSeries.X ^ m ∣ ev a ↔ (PowerSeries.X - PowerSeries.C x) ^ m ∣ a := by
  have hXev : ev (PowerSeries.X - PowerSeries.C x) = PowerSeries.X * w := by
    rw [map_sub, hev, ev_C]; ring
  induction m generalizing a with
  | zero => simp
  | succ m ih =>
    constructor
    · intro h
      have h1 : PowerSeries.X ∣ ev a := (dvd_pow_self _ (Nat.succ_ne_zero m)).trans h
      obtain ⟨b, rfl⟩ := (X_dvd_ev_iff hinj hx ev hev a).1 h1
      rw [map_mul, hXev, pow_succ', mul_assoc] at h
      have h2 : PowerSeries.X ^ m ∣ w * ev b := (mul_dvd_mul_iff_left PowerSeries.X_ne_zero).1 h
      have h3 : PowerSeries.X ^ m ∣ ev b := (IsUnit.dvd_mul_left hw).1 h2
      rw [pow_succ']
      exact mul_dvd_mul_left _ ((ih b).1 h3)
    · rintro ⟨b, rfl⟩
      rw [pow_succ' (PowerSeries.X - PowerSeries.C x), mul_assoc, map_mul, hXev,
        pow_succ' (PowerSeries.X : PowerSeries L), mul_assoc]
      exact mul_dvd_mul_left _ (dvd_mul_of_dvd_right ((ih _).2 (dvd_mul_right _ _)) _)

theorem prime_X_sub_C (hinj : Function.Injective (algebraMap O L)) {x : O} (hx : ¬ IsUnit x)
    (ev : PowerSeries O →ₐ[O] PowerSeries L) {w : PowerSeries L}
    (hev : ev PowerSeries.X = PowerSeries.C (algebraMap O L x) + PowerSeries.X * w) :
    Prime (PowerSeries.X - PowerSeries.C x : PowerSeries O) := by
  refine ⟨?_, ?_, ?_⟩
  · intro h
    have h1 := congrArg (PowerSeries.coeff 1) h
    simp at h1
  · rw [PowerSeries.isUnit_iff_constantCoeff]
    simpa using hx
  · intro a b h
    rw [← X_dvd_ev_iff hinj hx ev hev, map_mul] at h
    rw [← X_dvd_ev_iff hinj hx ev hev a, ← X_dvd_ev_iff hinj hx ev hev b]
    exact PowerSeries.X_prime.2.2 _ _ h

end

theorem prod_prime_pow_dvd {R ι : Type} [CommRing R] [IsDomain R] (p : ι → R) (m : ι → ℕ)
    (hp : ∀ k, Prime (p k)) (hne : ∀ j k, p j ∣ p k → j = k) (a : R)
    (h : ∀ k, p k ^ m k ∣ a) (s : Finset ι) : (∏ k ∈ s, p k ^ m k) ∣ a := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert i s hi ih =>
    rw [Finset.prod_insert hi]
    obtain ⟨t, ht⟩ := ih
    have hnd : ¬ p i ∣ ∏ k ∈ s, p k ^ m k := by
      intro hd
      obtain ⟨k, hk, hdk⟩ := ((hp i).dvd_finsetProd_iff _).1 hd
      have hik := hne i k ((hp i).dvd_of_dvd_pow hdk)
      subst hik
      exact hi hk
    have hdt : p i ^ m i ∣ t :=
      (hp i).pow_dvd_of_dvd_mul_left _ hnd (by rw [← ht]; exact h i)
    rw [ht, mul_comm _ t]
    exact mul_dvd_mul_right hdt _

theorem weierstrass_test : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O], ∀ (LL : Type) [Field LL] [Algebra O LL] [IsFractionRing O LL] (ι : Type) [Fintype ι] (x : ι → O) (m : ι → ℕ), Function.Injective x → (∀ k, ¬ IsUnit (x k)) → ∀ (ev : ι → (PowerSeries O →ₐ[O] PowerSeries LL)), (∀ k, ∃ w : PowerSeries LL, IsUnit w ∧ ev k PowerSeries.X = PowerSeries.C (algebraMap O LL (x k)) + PowerSeries.X * w) → ∀ a : PowerSeries O, (∀ k, PowerSeries.X ^ m k ∣ ev k a) ↔ (∏ k, (PowerSeries.X - PowerSeries.C (x k)) ^ m k) ∣ a := by
  intro O _ _ _ _ LL _ _ _ ι _ x m hxinj hxu ev hev a
  have hinj : Function.Injective (algebraMap O LL) := IsFractionRing.injective O LL
  have key : ∀ k, PowerSeries.X ^ m k ∣ ev k a ↔
      (PowerSeries.X - PowerSeries.C (x k)) ^ m k ∣ a := by
    intro k
    obtain ⟨w, hw, hwk⟩ := hev k
    exact X_pow_dvd_ev_iff hinj (hxu k) (ev k) hw hwk (m k) a
  simp_rw [key]
  constructor
  · intro h
    refine prod_prime_pow_dvd (fun k => PowerSeries.X - PowerSeries.C (x k)) m ?_ ?_ a h
      Finset.univ
    · intro k
      obtain ⟨w, -, hwk⟩ := hev k
      exact prime_X_sub_C hinj (hxu k) (ev k) hwk
    · intro j k hjk
      obtain ⟨w, -, hwj⟩ := hev j
      have h1 := (X_dvd_ev_iff hinj (hxu j) (ev j) hwj _).2 hjk
      rw [map_sub, hwj, ev_C, PowerSeries.X_dvd_iff] at h1
      have h2 : algebraMap O LL (x j) = algebraMap O LL (x k) := by
        simpa [sub_eq_zero] using h1
      exact hxinj (hinj h2)
  · intro h k
    exact (Finset.dvd_prod_of_mem _ (Finset.mem_univ k)).trans h

end GlobalTheory.Per
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProdPrimePowDvd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachWeierstrassTestAndDensity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachWeierstrassTestAndDensity", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegersCompleteDVR\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProdPrimePowDvd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL

namespace GlobalTheory.NL.WDiv

section Series
variable {O : Type} [CommRing O] {L : Type} [Field L] [Algebra O L]

theorem ev_C' (ev : PowerSeries O →ₐ[O] PowerSeries L) (c : O) :
    ev (PowerSeries.C c) = PowerSeries.C (algebraMap O L c) := by
  have h := ev.commutes c
  rw [PowerSeries.algebraMap_apply, PowerSeries.algebraMap_apply] at h
  simpa using h

theorem powerSeries_expansion_image_dense_with_denominator [IsDomain O] [IsFractionRing O L] (ev : PowerSeries O →ₐ[O] PowerSeries L) (x : O)
    {w : PowerSeries L} (hw : IsUnit w)
    (hev : ev PowerSeries.X = PowerSeries.C (algebraMap O L x) + PowerSeries.X * w) (m : ℕ) :
    ∀ f : PowerSeries L, ∃ (a : PowerSeries O) (d : O), d ≠ 0 ∧
      PowerSeries.X ^ m ∣ ev a - PowerSeries.C (algebraMap O L d) * f := by
  induction m with
  | zero => exact fun f => ⟨0, 1, one_ne_zero, by simp⟩
  | succ m ih =>
    intro f
    obtain ⟨w', hw'⟩ := hw.exists_right_inv
    obtain ⟨g, hg⟩ : PowerSeries.X ∣ f - PowerSeries.C (PowerSeries.constantCoeff f) := by
      rw [PowerSeries.X_dvd_iff]; simp
    obtain ⟨a, d, hd, z, hz⟩ := ih (w' * g)
    obtain ⟨⟨n, e, he⟩, hne⟩ := IsLocalization.surj (nonZeroDivisors O) (PowerSeries.constantCoeff f)
    have hne' := congrArg (PowerSeries.C (R := L)) hne
    simp only [map_mul] at hne'
    refine ⟨PowerSeries.C (d * n) + PowerSeries.C e * (PowerSeries.X - PowerSeries.C x) * a, d * e,
      mul_ne_zero hd (nonZeroDivisors.ne_zero he), PowerSeries.C (algebraMap O L e) * w * z, ?_⟩
    simp only [map_add (f := _), map_mul, map_sub, ev_C', hev]
    linear_combination (-(PowerSeries.C (algebraMap O L d))) * hne' -
      PowerSeries.C (algebraMap O L d) * PowerSeries.C (algebraMap O L e) * hg +
      PowerSeries.C (algebraMap O L e) * PowerSeries.X * w * hz +
      PowerSeries.C (algebraMap O L e) * PowerSeries.X * PowerSeries.C (algebraMap O L d) * g * hw'

theorem dense [IsDomain O] [IsFractionRing O L] (ev : PowerSeries O →ₐ[O] PowerSeries L) (x : O)
    {w : PowerSeries L} (hw : IsUnit w)
    (hev : ev PowerSeries.X = PowerSeries.C (algebraMap O L x) + PowerSeries.X * w) (m : ℕ)
    (f : PowerSeries L) : ∃ (a : PowerSeries O) (c : L), c ≠ 0 ∧
      PowerSeries.X ^ m ∣ c • ev a - f := by
  obtain ⟨a, d, hd, h⟩ := powerSeries_expansion_image_dense_with_denominator ev x hw hev m f
  have hd' : algebraMap O L d ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective O L)).2 hd
  refine ⟨a, (algebraMap O L d)⁻¹, inv_ne_zero hd', ?_⟩
  have h2 := h.mul_left (PowerSeries.C (algebraMap O L d)⁻¹)
  rwa [mul_sub, ← mul_assoc, ← map_mul, inv_mul_cancel₀ hd', map_one, one_mul,
    ← PowerSeries.smul_eq_C_mul] at h2

theorem not_isUnit_sub_one [IsLocalRing O] {l : ℕ} (hp : l.Prime) (hl : ¬ IsUnit (l : O)) {μ : O} {j : ℕ}
    (hμ : μ ^ l ^ j = 1) : ¬ IsUnit (μ - 1) := by
  haveI : Fact l.Prime := ⟨hp⟩
  have h0 : ((l : ℕ) : IsLocalRing.ResidueField O) = 0 := by
    rw [← map_natCast (IsLocalRing.residue O)]
    exact (IsLocalRing.residue_eq_zero_iff _).2 hl
  haveI : CharP (IsLocalRing.ResidueField O) l := (CharP.charP_iff_prime_eq_zero hp).2 h0
  intro h
  have h1 := (h.map (IsLocalRing.residue O)).pow (l ^ j)
  rw [map_sub, map_one, sub_pow_char_pow, ← map_pow, hμ, map_one, one_pow, sub_self] at h1
  exact not_isUnit_zero h1

theorem test [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O]
    [IsFractionRing O L] (S : Finset O) (hS : ∀ μ ∈ S, ¬ IsUnit (μ - 1))
    (ev : O → (PowerSeries O →ₐ[O] PowerSeries L))
    (hev : ∀ μ ∈ S, ∃ w : PowerSeries L, IsUnit w ∧
      ev μ PowerSeries.X = PowerSeries.C (algebraMap O L (μ - 1)) + PowerSeries.X * w)
    (k : ℕ) (a : PowerSeries O) (ha : ∀ μ ∈ S, PowerSeries.X ^ k ∣ ev μ a) :
    (∏ μ ∈ S, (1 + PowerSeries.X - PowerSeries.C μ)) ^ k ∣ a := by
  have h := (GlobalTheory.Per.weierstrass_test O L ↥S (fun μ => μ.1 - 1) (fun _ => k)
    (fun μ ν h => Subtype.ext (sub_left_injective h)) (fun μ => hS μ.1 μ.2) (fun μ => ev μ.1)
    (fun μ => hev μ.1 μ.2) a).1 (fun μ => ha μ.1 μ.2)
  rw [Finset.prod_pow, Finset.prod_coe_sort S (fun μ => PowerSeries.X - PowerSeries.C (μ - 1))] at h
  convert h using 3 with μ
  rw [map_sub, map_one]; ring

theorem prod_roots [IsDomain O] {N : ℕ} (hN : 0 < N) {μ : O} (h : IsPrimitiveRoot μ N) :
    ((1 + PowerSeries.X) ^ N - 1 : PowerSeries O) =
      ∏ ν ∈ Polynomial.nthRootsFinset N (1 : O), (1 + PowerSeries.X - PowerSeries.C ν) := by
  have := congrArg (Polynomial.aeval (1 + PowerSeries.X : PowerSeries O))
    (Polynomial.X_pow_sub_one_eq_prod hN h)
  simpa [map_prod, PowerSeries.algebraMap_apply] using this

theorem prod_prim [IsDomain O] {l : ℕ} (hp : l.Prime) {j : ℕ} {μ : O} (h : IsPrimitiveRoot μ (l ^ (j + 1))) :
    (∑ i ∈ Finset.range l, ((1 + PowerSeries.X) ^ l ^ j) ^ i : PowerSeries O) =
      ∏ ν ∈ primitiveRoots (l ^ (j + 1)) O, (1 + PowerSeries.X - PowerSeries.C ν) := by
  have := congrArg (Polynomial.aeval (1 + PowerSeries.X : PowerSeries O))
    ((Polynomial.cyclotomic_prime_pow_eq_geom_sum (R := O) (n := j) hp).symm.trans
      (Polynomial.cyclotomic_eq_prod_X_sub_primitiveRoots h))

  simpa [map_prod, map_sum, PowerSeries.algebraMap_apply] using this

end Series

section Wach

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n)

theorem phi_pow_one_add (j : ℕ) : (W.φA ^ j) (1 + letπ) = (1 + letπ) ^ PD.p ^ j := by
  induction j with
  | zero => simp
  | succ j ih =>
    have h : W.φA (1 + letπ) = (1 + letπ) ^ PD.p := by
      rw [map_add (f := _), map_one, W.φA_π]
      funext i
      have := W.q₀_def
      simp only [Pi.add_apply, Pi.mul_apply, Pi.pow_apply, Pi.one_apply, letπ, LocWach.q]
      linear_combination this
    rw [pow_succ', AlgHom.mul_apply, ih, map_pow, h, ← pow_mul, pow_succ']

theorem X_eq (i : ZMod n) : W.X i = (1 + PowerSeries.X) ^ PD.p ^ (W.s - 1) - 1 := by
  have h := phi_pow_one_add W (W.s - 1)
  rw [map_add (f := _), map_one] at h
  have h2 := congrFun h i
  simp only [Pi.add_apply, Pi.pow_apply, Pi.one_apply] at h2
  change 1 + W.X i = (1 + PowerSeries.X) ^ _ at h2
  linear_combination h2

theorem Q_eq [IsDomain O] (i : ZMod n) :
    W.Q i = ∑ k ∈ Finset.range PD.p, ((1 + PowerSeries.X) ^ PD.p ^ (W.s - 1)) ^ k := by
  have hq : W.q = ∑ k ∈ Finset.range PD.p, (1 + letπ) ^ k := by
    funext i
    simp only [Finset.sum_apply, Pi.add_apply, Pi.pow_apply, Pi.one_apply, letπ, LocWach.q]
    apply mul_left_cancel₀ (PowerSeries.X_ne_zero (R := O))
    rw [W.q₀_def, ← mul_geom_sum]
    ring

  rw [LocWach.Q, hq, map_sum]
  simp only [map_pow, phi_pow_one_add, Finset.sum_apply, Pi.add_apply, Pi.pow_apply, Pi.one_apply, letπ]

noncomputable def ev (i : ZMod n) (ζ : LL) : PowerSeries O →ₐ[O] PowerSeries LL :=
  (W.lev i ζ).comp (AlgHom.pi fun _ => AlgHom.id O (PowerSeries O))

theorem lev_eq (i : ZMod n) (ζ : LL) (a : LetA O n) : W.lev i ζ a = ev W i ζ (a i) := by
  rw [← sub_eq_zero, ev, AlgHom.comp_apply, ← map_sub]
  exact W.lev_letter _ _ _ (by simp)

theorem ev_X (i : ZMod n) (μ : O) {j : ℕ} (hj : 0 < PD.p ^ j)
    (h : IsPrimitiveRoot (algebraMap O LL μ) (PD.p ^ j)) :
    ∃ w : PowerSeries LL, IsUnit w ∧ ev W i (algebraMap O LL μ) PowerSeries.X =
      PowerSeries.C (algebraMap O LL (μ - 1)) + PowerSeries.X * w := by
  obtain ⟨E, h0, h1, h2⟩ := W.lev_π i _ ⟨j, h⟩
  rw [lev_eq] at h2
  obtain ⟨g, hg⟩ : PowerSeries.X ∣ E - 1 := by
    rw [PowerSeries.X_dvd_iff]; simp [h0]
  have hg0 : PowerSeries.constantCoeff g = 1 := by
    have a1 := congrArg (PowerSeries.coeff 1) hg
    have a2 := congrArg (PowerSeries.coeff 0) h1
    rw [PowerSeries.coeff_derivative] at a2
    rw [map_sub, PowerSeries.coeff_succ_X_mul, PowerSeries.coeff_one] at a1
    simp [h0] at a1 a2
    rw [← a1, a2]
  refine ⟨PowerSeries.C (algebraMap O LL μ) * g, ?_, ?_⟩
  · rw [PowerSeries.isUnit_iff_constantCoeff]
    simpa [hg0] using h.ne_zero hj.ne'
  · simp only [letπ] at h2
    rw [map_sub, map_sub, map_one, map_one]
    linear_combination h2 + PowerSeries.C (algebraMap O LL μ) * hg

variable [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O]
  [IsFractionRing O LL]

theorem Q_test (hl : ¬ IsUnit (PD.p : O)) {μ₀ : O} (h₀ : IsPrimitiveRoot μ₀ (PD.p ^ W.s)) (k : ℕ)
    (a : LetA O n) (ha : ∀ i ζ, IsPrimitiveRoot ζ (PD.p ^ W.s) → a ∈ van W i ζ k) : W.Q ^ k ∣ a := by
  have hs : W.s = W.s - 1 + 1 := by have := W.s_pos; omega
  have hpos : 0 < PD.p ^ W.s := pow_pos PD.hp.pos _
  have hi := IsFractionRing.injective O LL
  have key : ∀ i, (W.Q ^ k) i ∣ a i := fun i => by
    rw [Pi.pow_apply, Q_eq, prod_prim PD.hp (hs ▸ h₀), ← hs]
    refine test (L := LL) _ (fun μ hμ => not_isUnit_sub_one PD.hp hl
      ((mem_primitiveRoots hpos).1 hμ).pow_eq_one) (fun μ => ev W i (algebraMap O LL μ))
      (fun μ hμ => ev_X W i μ hpos (((mem_primitiveRoots hpos).1 hμ).map_of_injective hi)) k _
      (fun μ hμ => ?_)
    rw [← lev_eq]
    exact Ideal.mem_span_singleton.1 (ha i _ (((mem_primitiveRoots hpos).1 hμ).map_of_injective hi))
  choose b hb using key
  exact ⟨b, funext hb⟩

theorem X_test (hl : ¬ IsUnit (PD.p : O)) {μ₀ : O} (h₀ : IsPrimitiveRoot μ₀ (PD.p ^ W.s)) (k : ℕ)
    (a : LetA O n) (ha : ∀ i ζ, ζ ^ (PD.p ^ (W.s - 1)) = 1 → a ∈ van W i ζ k) : W.X ^ k ∣ a := by
  have hs : W.s = W.s - 1 + 1 := by have := W.s_pos; omega
  have hpos : 0 < PD.p ^ (W.s - 1) := pow_pos PD.hp.pos _
  have hi := IsFractionRing.injective O LL
  have h₁ : IsPrimitiveRoot (μ₀ ^ PD.p) (PD.p ^ (W.s - 1)) :=
    h₀.pow (pow_pos PD.hp.pos _) (by conv_lhs => rw [hs, pow_succ'])
  have key : ∀ i, (W.X ^ k) i ∣ a i := fun i => by
    rw [Pi.pow_apply, X_eq, prod_roots hpos h₁]
    refine test (L := LL) _ (fun μ hμ => not_isUnit_sub_one PD.hp hl
      ((Polynomial.mem_nthRootsFinset hpos 1).1 hμ)) (fun μ => ev W i (algebraMap O LL μ))
      (fun μ hμ => ?_) k _ (fun μ hμ => ?_)
    · have h1 := (Polynomial.mem_nthRootsFinset hpos 1).1 hμ
      obtain ⟨j, -, hj⟩ := (Nat.dvd_prime_pow PD.hp).1 (orderOf_dvd_of_pow_eq_one h1)
      exact ev_X W i μ (j := j) (pow_pos PD.hp.pos _)
        ((hj ▸ IsPrimitiveRoot.orderOf μ).map_of_injective hi)
    · rw [← lev_eq]
      refine Ideal.mem_span_singleton.1 (ha i _ ?_)
      rw [← map_pow, (Polynomial.mem_nthRootsFinset hpos 1).1 hμ, map_one]
  choose b hb using key
  exact ⟨b, funext hb⟩

omit [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O] in
theorem lev_dense (i : ZMod n) (μ : O) {j : ℕ} (h : IsPrimitiveRoot (algebraMap O LL μ) (PD.p ^ j))
    (f : PowerSeries LL) (m : ℕ) : ∃ (a : LetA O n) (c : LL), c ≠ 0 ∧
      PowerSeries.X ^ m ∣ c • W.lev i (algebraMap O LL μ) a - f := by
  obtain ⟨w, hw, hev⟩ := ev_X W i μ (pow_pos PD.hp.pos _) h
  obtain ⟨a, c, hc, h⟩ := dense _ _ hw hev m f
  exact ⟨fun _ => a, c, hc, by rwa [lev_eq]⟩

omit [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O] in
theorem lev_dense_van {j : ℕ}
    (hint : ∀ ζ : LL, IsPrimitiveRoot ζ (PD.p ^ j) → ∃ μ : O, algebraMap O LL μ = ζ)
    (i : ZMod n) (ζ : LL) (h : IsPrimitiveRoot ζ (PD.p ^ j))
    (f : PowerSeries LL) (m : ℕ) : ∃ (a : LetA O n) (c : LL), c ≠ 0 ∧
      PowerSeries.X ^ m ∣ c • W.lev i ζ a - f ∧
      ∀ i' ζ', IsPrimitiveRoot ζ' (PD.p ^ j) → (i', ζ') ≠ (i, ζ) → a ∈ van W i' ζ' m := by
  classical
  have hpos : 0 < PD.p ^ j := pow_pos PD.hp.pos _
  have hi := IsFractionRing.injective O LL
  obtain ⟨μ, rfl⟩ := hint ζ h
  obtain ⟨w, hw, hev⟩ := ev_X W i μ hpos h
  set P : PowerSeries O := ∏ ν ∈ (primitiveRoots (PD.p ^ j) O).erase μ,
    (PowerSeries.X - PowerSeries.C (ν - 1)) ^ m with hP
  have hu : IsUnit (ev W i (algebraMap O LL μ) P) := by
    rw [hP, map_prod]
    refine IsUnit.prod_iff.2 fun ν hν => ?_
    rw [map_pow, map_sub, hev, ev_C']
    refine IsUnit.pow _ ?_
    rw [PowerSeries.isUnit_iff_constantCoeff]
    have : algebraMap O LL μ ≠ algebraMap O LL ν := fun e => (Finset.ne_of_mem_erase hν) (hi e).symm
    simpa [sub_eq_zero] using this
  obtain ⟨u, hu'⟩ := hu.exists_right_inv
  obtain ⟨a, c, hc, hd⟩ := dense _ _ hw hev m (u * f)
  refine ⟨Pi.single i (a * P), c, hc, ?_, fun i' ζ' h' hne => ?_⟩
  · rw [lev_eq, Pi.single_eq_same, map_mul]
    convert hd.mul_left (ev W i (algebraMap O LL μ) P) using 1
    rw [mul_sub, ← mul_assoc, hu', one_mul, mul_smul_comm, mul_comm]
  · refine Ideal.mem_comap.2 (Ideal.mem_span_singleton.2 ?_)
    rw [lev_eq]
    by_cases hii : i' = i
    · subst hii
      obtain ⟨ν, rfl⟩ := hint ζ' h'
      obtain ⟨w', -, hev'⟩ := ev_X W i' ν hpos h'
      rw [Pi.single_eq_same, map_mul]
      refine Dvd.dvd.mul_left ?_ _
      have hν : ν ∈ (primitiveRoots (PD.p ^ j) O).erase μ :=
        Finset.mem_erase.2 ⟨fun e => hne (by rw [e]),
          (mem_primitiveRoots hpos).2 (h'.of_map_of_injective hi)⟩
      refine Dvd.dvd.trans ?_ (map_dvd _ (Finset.dvd_prod_of_mem
        (fun ν => (PowerSeries.X - PowerSeries.C (ν - 1)) ^ m) hν))
      rw [map_pow, map_sub, hev', ev_C', add_sub_cancel_left]
      exact pow_dvd_pow_of_dvd (dvd_mul_right _ _) _
    · rw [Pi.single_eq_of_ne hii, map_zero]
      exact dvd_zero _

end Wach

theorem root_integral {l : ℕ} [Fact l.Prime] (LL : FinExt l) {ζ : ↥LL.1} {N : ℕ} (hN : 0 < N)
    (h : ζ ^ N = 1) : ∃ μ : ↥(OL LL), algebraMap ↥(OL LL) ↥LL.1 μ = ζ :=
  ⟨⟨ζ, IsIntegral.of_pow hN (h ▸ isIntegral_one)⟩, rfl⟩

theorem exists_prim {l : ℕ} [Fact l.Prime] {K : FinExt l} {s : ℕ} {LL : FinExt l} (h : Good K s LL) :
    ∃ μ : ↥(OL LL), IsPrimitiveRoot μ (l ^ s) := by
  have hp : l.Prime := Fact.out
  haveI : NeZero ((l ^ s : ℕ) : Om l) := ⟨by exact_mod_cast (pow_pos hp.pos s).ne'⟩
  obtain ⟨z, hz⟩ := HasEnoughRootsOfUnity.exists_isPrimitiveRoot (Om l) (l ^ s)
  have h1 : z ∈ Ks K s :=
    (le_sup_right : _ ≤ Ks K s) (IntermediateField.subset_adjoin _ _ hz.pow_eq_one)
  have h2 : z ∈ LL.1 := h.2.2.2 (Ks K s).val ⟨z, h1⟩
  have h3 : IsPrimitiveRoot (⟨z, h2⟩ : ↥LL.1) (l ^ s) :=
    IsPrimitiveRoot.of_map_of_injective (f := LL.1.val) hz Subtype.val_injective
  obtain ⟨μ, hμ⟩ := root_integral LL (pow_pos hp.pos s) h3.pow_eq_one
  exact ⟨μ, IsPrimitiveRoot.of_map_of_injective (f := algebraMap ↥(OL LL) ↥LL.1) (hμ ▸ h3)
    Subtype.val_injective⟩

theorem weierstrass_dense : ∀ (loc : LocTheory) (HW : HWOf loc) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; (∀ (k : ℕ) (a : AA K LL), (∀ (i : Let K) (ζ : ↥LL.1), IsPrimitiveRoot ζ (l ^ s) → a ∈ van W i ζ k) → W.Q ^ k ∣ a) ∧ (∀ (k : ℕ) (a : AA K LL), (∀ (i : Let K) (ζ : ↥LL.1), ζ ^ (l ^ (s - 1)) = 1 → a ∈ van W i ζ k) → W.X ^ k ∣ a) ∧ (∀ (i : Let K) (ζ : ↥LL.1), (∃ j : ℕ, IsPrimitiveRoot ζ (l ^ j)) → ∀ (f : PowerSeries ↥LL.1) (m : ℕ), ∃ (a : AA K LL) (c : ↥LL.1), c ≠ 0 ∧ PowerSeries.X ^ m ∣ c • W.lev i ζ a - f) ∧ ∀ (i : Let K) (ζ : ↥LL.1), IsPrimitiveRoot ζ (l ^ s) → ∀ (f : PowerSeries ↥LL.1) (m : ℕ), ∃ (a : AA K LL) (c : ↥LL.1), c ≠ 0 ∧ PowerSeries.X ^ m ∣ c • W.lev i ζ a - f ∧ ∀ (i' : Let K) (ζ' : ↥LL.1), IsPrimitiveRoot ζ' (l ^ s) → (i', ζ') ≠ (i, ζ) → a ∈ van W i' ζ' m := by
  intro loc HW l _ K s LL h W
  obtain ⟨_, hc, -, hl, -, -, hf⟩ := GlobalTheory.Per.integers_completeDVR l LL
  have hp : l.Prime := Fact.out
  have e : ((loc l).PD K).p = l := (loc l).PD_p K
  have es : W.s = s := (HW l).W_s K s LL h
  obtain ⟨μ₀, h₀⟩ := exists_prim h
  refine ⟨fun k a ha => Q_test W (by rwa [e]) (μ₀ := μ₀) (by rwa [e, es]) k a (by rwa [e, es]),
    fun k a ha => X_test W (by rwa [e]) (μ₀ := μ₀) (by rwa [e, es]) k a (by rwa [e, es]), ?_, ?_⟩
  · rintro i ζ ⟨j, hj⟩ f m
    obtain ⟨μ, rfl⟩ := root_integral LL (pow_pos hp.pos j) hj.pow_eq_one
    exact lev_dense W i μ (j := j) (by rwa [e]) f m
  · intro i ζ hζ f m
    have := lev_dense_van W (j := s) (by
      rw [e]; exact fun ζ hζ => root_integral LL (pow_pos hp.pos s) hζ.pow_eq_one) i ζ (by rwa [e]) f m
    rwa [e] at this

end GlobalTheory.NL.WDiv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachWeierstrassTestAndDensity =====
