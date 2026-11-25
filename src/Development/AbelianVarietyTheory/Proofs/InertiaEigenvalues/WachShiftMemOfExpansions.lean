module

public import Mathlib.RingTheory.MvPowerSeries.Inverse
public import Mathlib.RingTheory.PowerSeries.Basic
public import Mathlib.RingTheory.PowerSeries.Inverse
public import Mathlib.Data.List.GetD
public import Mathlib.LinearAlgebra.Dual.Defs
public import Mathlib.LinearAlgebra.Dual.Lemmas
public import Mathlib.Order.Int.LeastGreatest
public import Formalism.SharpRestriction.LevelLetterCocycles.ExpRules
public import Formalism.SharpRestriction.LevelLetterCocycles.ExistsPrimOfGood
public import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusIterateUniformizerUnitProducts
public import Formalism.SharpRestriction.LevelLetterCocycles.RToolModDStab
public import Formalism.SharpRestriction.LevelLetterCocycles.SemisimpleLetterIffForallMem
public import Formalism.SharpRestriction.LevelLetterCocycles.BaseChangePreservesUnitaryOf
public import Formalism.SharpRestriction.LevelLetterCocycles.InvariantLetterPolynomialDerivation
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
import Mathlib.RingTheory.PiTensorProduct
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
import Formalism.SharpRestriction.LevelLetterCocycles.SaturationUnramifiedOfRingCondition
import Mathlib.RingTheory.PowerSeries.NoZeroDivisors
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.LevelLetterCocycles.CocyclesToWachVectorsBoundOfExtTool

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiltLaurentProdPreserves, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachShiftMemOfExpansions

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiltLaurentProdPreserves =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiltLaurentProdPreserves", "h": "module\n\npublic import Mathlib.RingTheory.MvPowerSeries.Inverse\npublic import Mathlib.RingTheory.PowerSeries.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\npublic import Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Data.List.GetD\npublic import Mathlib.LinearAlgebra.Dual.Defs\npublic import Mathlib.LinearAlgebra.Dual.Lemmas\npublic import Mathlib.Order.Int.LeastGreatest\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries

namespace GlobalTheory

theorem filtLaurent_prod_preserves {L : Type} [Field L] (D : Module.End L L⟦X⟧) (e : ℕ → L)
    (hD : ∀ (i : ℕ) (f : L⟦X⟧), X ^ i ∣ f → X ^ (i + 1) ∣ D f - e i • f)
    (c : ℤ → L) (xs : List ℤ) (i : ℕ) (f : L⟦X⟧) (hf : X ^ i ∣ f) :
    X ^ i ∣ Polynomial.aeval D
      (xs.map fun x => (Polynomial.X - Polynomial.C (c x) : Polynomial L)).prod f := by
  induction xs with
  | nil => simpa using hf
  | cons x xs ih =>
    rw [List.map_cons, List.prod_cons, map_mul, Module.End.mul_apply]
    set g := Polynomial.aeval D
      (xs.map fun x => (Polynomial.X - Polynomial.C (c x) : Polynomial L)).prod f
    have h1 : X ^ i ∣ D g - e i • g := (pow_dvd_pow X (Nat.le_succ i)).trans (hD i g ih)
    have h2 : Polynomial.aeval D (Polynomial.X - Polynomial.C (c x) : Polynomial L) g
        = (D g - e i • g) + (e i - c x) • g := by
      simp [sub_smul, Module.algebraMap_end_apply]
    rw [h2]
    exact dvd_add h1 (Dvd.dvd.trans ih ⟨PowerSeries.C (e i - c x), by
      rw [PowerSeries.smul_eq_C_mul, mul_comm]⟩)

theorem filtLaurent_prod_raises {L : Type} [Field L] (D : Module.End L L⟦X⟧) (c : ℤ → L) (K : ℤ)
    (hD : ∀ (i : ℕ) (f : L⟦X⟧), X ^ i ∣ f → X ^ (i + 1) ∣ D f - c (-(K + i)) • f)
    (n : ℕ) : ∀ (xs : List ℤ) (i : ℕ) (f : L⟦X⟧), X ^ i ∣ f →
      (∀ l : ℕ, i ≤ l → l < i + n → -(K + l) ∈ xs) →
      X ^ (i + n) ∣ Polynomial.aeval D
        (xs.map fun x => (Polynomial.X - Polynomial.C (c x) : Polynomial L)).prod f := by
  induction n with
  | zero => exact fun xs i f hf _ => filtLaurent_prod_preserves D _ hD c xs i f hf
  | succ n ih =>
    intro xs i f hf hxs
    have hx : -(K + i) ∈ xs := hxs i le_rfl (by omega)
    have hperm := ((List.perm_cons_erase hx).map
      fun x => (Polynomial.X - Polynomial.C (c x) : Polynomial L)).prod_eq
    rw [hperm, List.map_cons, List.prod_cons, mul_comm, map_mul, Module.End.mul_apply]
    have h2 : Polynomial.aeval D (Polynomial.X - Polynomial.C (c (-(K + i))) : Polynomial L) f
        = D f - c (-(K + i)) • f := by
      simp [Module.algebraMap_end_apply]
    rw [h2, show i + (n + 1) = (i + 1) + n by omega]
    refine ih _ (i + 1) _ (hD i f hf) fun l hl hl' => ?_
    exact (List.mem_erase_of_ne (by omega)).2 (hxs l (by omega) (by omega))

noncomputable def filtLaurentDiag {L : Type} [Field L] (w : ℕ → L) : Module.End L L⟦X⟧ where
  toFun f := PowerSeries.mk fun i => w i * coeff i f
  map_add' f g := by ext i; simp [mul_add]
  map_smul' a f := by ext i; simp [mul_left_comm]

theorem filtLaurent_triangular {L : Type} [Field L] (w : ℕ → L) (p : L⟦X⟧)
    (hp : constantCoeff p ≠ 0) (i : ℕ) (a : L) (ha : constantCoeff p * a = w i)
    (f : L⟦X⟧) (hf : X ^ i ∣ f) :
    X ^ (i + 1) ∣ (LinearMap.mulLeft L p⁻¹ ∘ₗ filtLaurentDiag w) f - a • f := by
  have h1 : (LinearMap.mulLeft L p⁻¹ ∘ₗ filtLaurentDiag w) f - a • f
      = p⁻¹ * (filtLaurentDiag w f - a • (p * f)) := by
    rw [mul_sub, mul_smul_comm, ← mul_assoc, PowerSeries.inv_mul_cancel _ hp, one_mul]
    rfl
  rw [h1]
  refine Dvd.dvd.mul_left ?_ _
  rw [X_pow_dvd_iff]
  intro l hl
  have hpf : X ^ i ∣ p * f := hf.mul_left p
  rcases Nat.lt_succ_iff_lt_or_eq.1 hl with h | rfl
  · simp [filtLaurentDiag, X_pow_dvd_iff.1 hf l h, X_pow_dvd_iff.1 hpf l h]
  · obtain ⟨g, rfl⟩ := hf
    have e1 : coeff l (X ^ l * g) = constantCoeff g := by
      simpa using coeff_X_pow_mul g l 0
    have e2 : coeff l (p * (X ^ l * g)) = constantCoeff p * constantCoeff g := by
      rw [mul_left_comm]
      simpa using coeff_X_pow_mul (p * g) l 0
    simp only [map_sub, filtLaurentDiag, LinearMap.coe_mk, AddHom.coe_mk, coeff_mk, map_smul,
      e1, e2, smul_eq_mul, ← ha]
    ring

theorem filtLaurent_shift_line : ∀ (L : Type) [Field L] (M : Type) [AddCommGroup M] [Module L M] (Fl : ℤ → Submodule L M), Antitone Fl → ∀ (u : Lˣ) (p : PowerSeries L) (c : ℤ → L), PowerSeries.constantCoeff p ≠ 0 → (∀ x : ℤ, PowerSeries.constantCoeff p * c x = ((u ^ (-x) : Lˣ) : L) - 1) → ∀ (y' Y : ℕ) (xs : List ℤ), (∀ (a : ℤ) (j : ℕ), Fl (a + 1) ≠ Fl a → y' < j → j ≤ Y → a + (j : ℤ) ∈ xs) → ∀ seq : ℕ → ℤ → M, (∀ m, ∃ k₀ : ℤ, ∀ k < k₀, seq m k = 0) → (∀ m < xs.length, ∀ k : ℤ, ∑ᶠ j : ℕ, PowerSeries.coeff j p • (seq (m + 1) (k - j) + c (xs.getD m 0) • seq m (k - j)) = (((u ^ k : Lˣ) : L) - 1) • seq m k) → (∀ k : ℤ, seq 0 k ∈ Fl (-k - Y)) → ∀ k : ℤ, seq xs.length k ∈ Fl (-k - y') := by
  intro L _ M _ _ Fl hFl u p c hp hc y' Y xs hxs seq hbd hrec h0 k
  rw [← Subspace.forall_mem_dualAnnihilator_apply_eq_zero_iff]
  intro φ hφ
  rw [Submodule.mem_dualAnnihilator] at hφ
  choose k₀ hk₀ using hbd

  have core : ∀ (K : ℤ), (∀ m ≤ xs.length, K ≤ k₀ m) → ∀ i n : ℕ,
      (∀ l < i, φ (seq 0 (K + l)) = 0) → (∀ l : ℕ, i ≤ l → l < i + n → -(K + l) ∈ xs) →
      ∀ l < i + n, φ (seq xs.length (K + l)) = 0 := by
    intro K hK i n hi hn
    set w : ℕ → L := fun l => ((u ^ (K + l) : Lˣ) : L) - 1 with hw
    set D : Module.End L L⟦X⟧ := LinearMap.mulLeft L p⁻¹ ∘ₗ filtLaurentDiag w with hDdef
    set G : ℕ → L⟦X⟧ := fun m => PowerSeries.mk fun l => φ (seq m (K + l)) with hG
    have hstep : ∀ m < xs.length, G (m + 1) = D (G m) - c (xs.getD m 0) • G m := by
      intro m hm
      have key : p * (G (m + 1) + c (xs.getD m 0) • G m) = filtLaurentDiag w (G m) := by
        ext l
        have h1 := hrec m hm (K + l)
        rw [finsum_eq_sum_of_support_subset (s := Finset.range (l + 1))] at h1
        · have h2 := congrArg φ h1
          rw [coeff_mul, Finset.Nat.sum_antidiagonal_eq_sum_range_succ
            (fun a b => coeff a p * coeff b (G (m + 1) + c (xs.getD m 0) • G m))]

          rw [map_sum, map_smul] at h2
          simp only [filtLaurentDiag, LinearMap.coe_mk, AddHom.coe_mk, coeff_mk, hG, hw]
          rw [← smul_eq_mul, ← h2]
          refine Finset.sum_congr rfl fun j hj => ?_
          have hj' : j ≤ l := Nat.lt_succ_iff.1 (Finset.mem_range.1 hj)
          have : K + ((l - j : ℕ) : ℤ) = K + l - j := by omega
          simp only [map_add (f := _), map_smul, coeff_mk, this, smul_eq_mul]
        · intro j hj
          by_contra hj'
          have hj'' : l + 1 ≤ j := by simpa using hj'
          have a1 := hK m hm.le
          have a2 := hK (m + 1) hm
          apply hj
          simp only
          rw [hk₀ (m + 1) _ (by omega), hk₀ m _ (by omega)]
          simp
      rw [eq_sub_iff_add_eq, hDdef, LinearMap.comp_apply, ← key, LinearMap.mulLeft_apply,
        ← mul_assoc, PowerSeries.inv_mul_cancel _ hp, one_mul]
    have hall : ∀ m ≤ xs.length, G m = Polynomial.aeval D
        ((xs.take m).map fun x => (Polynomial.X - Polynomial.C (c x) : Polynomial L)).prod
          (G 0) := by
      intro m
      induction m with
      | zero => simp
      | succ m ih =>
        intro hm
        have hm' : m < xs.length := hm
        rw [hstep m hm', List.take_succ_eq_append_getElem hm', List.map_append, List.prod_append,
          mul_comm, map_mul, Module.End.mul_apply, ← ih hm'.le, List.getD_eq_getElem _ _ hm']
        simp [Module.algebraMap_end_apply]
    have hfin := filtLaurent_prod_raises D c K (fun l f hf =>
      filtLaurent_triangular w p hp l _ (by rw [hc, neg_neg]) f hf) n xs i (G 0)
      (X_pow_dvd_iff.2 fun l hl => by simpa [hG] using hi l hl) hn
    have h3 := hall xs.length le_rfl
    rw [List.take_length] at h3
    rw [← h3] at hfin
    intro l hl
    simpa [hG] using X_pow_dvd_iff.1 hfin l hl
  obtain ⟨K₀, hK₀⟩ := ((Set.finite_le_nat xs.length).image k₀).bddBelow
  have hK₁ : ∀ m ≤ xs.length, K₀ ≤ k₀ m := fun m hm => hK₀ ⟨m, hm, rfl⟩
  by_cases hex : ∃ a : ℤ, ¬ ∀ v ∈ Fl a, φ v = 0
  · have hbdd : ∀ a : ℤ, (¬ ∀ v ∈ Fl a, φ v = 0) → a < -k - y' := by
      intro a ha
      by_contra h
      exact ha fun v hv => hφ v (hFl (not_lt.1 h) hv)
    obtain ⟨a, ha, hmax⟩ := Int.exists_greatest_of_bdd
      ⟨-k - y', fun a ha => (hbdd a ha).le⟩ hex
    have ha1 : ∀ v ∈ Fl (a + 1), φ v = 0 := by
      by_contra h
      have := hmax _ h
      omega
    have hjump : Fl (a + 1) ≠ Fl a := fun h => ha (h ▸ ha1)
    have hlt := hbdd a ha
    set K := min K₀ (min k (-a - Y)) with hK
    have := core K (fun m hm => (min_le_left _ _).trans (hK₁ m hm)) (-a - Y - K).toNat (Y - y')
      (fun l hl => ha1 _ (hFl (by omega) (h0 _)))
      (fun l hl hl' => by
        have := hxs a (-(K + l) - a).toNat hjump (by omega) (by omega)
        convert this using 1
        omega) (k - K).toNat (by omega)
    convert this using 3
    omega
  · push Not at hex
    set K := min K₀ k with hK
    have := core K (fun m hm => (min_le_left _ _).trans (hK₁ m hm)) ((k - K).toNat + 1) 0
      (fun l _ => hex _ _ (h0 _)) (fun l hl hl' => by omega) (k - K).toNat (by omega)
    convert this using 3
    omega

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiltLaurentProdPreserves =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachShiftMemOfExpansions =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachShiftMemOfExpansions", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExpRules\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiltLaurentProdPreserves\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExistsPrimOfGood\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusIterateUniformizerUnitProducts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RToolModDStab\nimport Formalism.SharpRestriction.LevelLetterCocycles.SaturationUnramifiedOfRingCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SemisimpleLetterIffForallMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PowerSeries.NoZeroDivisors\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.BaseChangePreservesUnitaryOf\nimport Formalism.SharpRestriction.LevelLetterCocycles.CocyclesToWachVectorsBoundOfExtTool\npublic import Formalism.SharpRestriction.LevelLetterCocycles.InvariantLetterPolynomialDerivation\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc

namespace GlobalTheory

section Core

open TensorProduct Formalism.MainNotions.RamifiedCoefficientChains.Sh Formalism.MainNotions.N.Pv.LocalLengthBound.Ser Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt
open Formalism.MainNotions.CrystallineLiftingInputs (DL)
open Formalism.MainNotions.LiftingTheory (qp)
open Formalism.MainNotions.WachCoordinates (FilLev)

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

theorem wachExp_diag_shift_iff {M : Type} [AddCommGroup M] [Module LL M] {Fl : ℤ → Submodule LL M}
    (hF : Antitone Fl) {m : ℤ} {d : ℤ → M} (hd : ∀ k < m, d k = 0) (u : PowerSeries LL)
    (hu : IsUnit u) (y : ℕ) :
    (∀ k, conv ((u * PowerSeries.X) ^ y) d k ∈ Fl (-k)) ↔ ∀ k, d k ∈ Fl (-k - y) := by
  have hd' : LB m d := hd
  have hu0 : PowerSeries.constantCoeff (u ^ y) ≠ 0 :=
    ((hu.pow y).map PowerSeries.constantCoeff).ne_zero
  have e : conv ((u * PowerSeries.X) ^ y) d = fun k => smulS (u ^ y) d (k - y) := by
    show smulS ((u * PowerSeries.X) ^ y) d = _
    rw [mul_comm, mul_pow, smulS_mul hd', smulS_X_pow (LB_smulS hd' _)]
  rw [e]
  constructor
  · intro h k
    have h1 : Dg Fl (-(y : ℤ)) (smulS (u ^ y) d) := fun j => by
      have := h (j + y)
      simp only [add_sub_cancel_right] at this
      rwa [show -(y : ℤ) - j = -(j + y) by ring]
    have h2 := Dg_smulS hF (LB_smulS hd' _) h1 (u ^ y)⁻¹ k
    rw [smulS_inv hd' _ hu0] at h2
    rwa [show -k - (y : ℤ) = -(y : ℤ) - k by ring]
  · intro h k
    have h1 : Dg Fl (-(y : ℤ)) d := fun j => by
      rw [show -(y : ℤ) - j = -j - y by ring]; exact h j
    have h2 := Dg_smulS hF hd' h1 (u ^ y) (k - y)
    rwa [show -(y : ℤ) - (k - y) = -k by ring] at h2

theorem wachExp_mem_iff (W : LocWach PD LL O v n) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W) (hRg : ExpRing W)
    (hRu : ExpRules W) (hCr : ExpCrit W) (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (T : LocLat G Qp LL O)
    (hT : IsCrys PD T.ρ) (i : ZMod n) (ζ : LL) (hζ : IsPrimitiveRoot ζ PD.p)
    (x : W.DD T) (d : ℤ → T.V ⊗[Qp] BdR) (hx : DL W T i x) (hd : IsExp W T i ζ x d)
    (Y : ℕ) (hY : qp W ^ Y • x ∈ W.N T) (y : ℕ) :
    qp W ^ y • x ∈ W.N T ↔ ∀ k, d k ∈ FilLev W T i 0 (-k - y) := by
  have hK : Module.finrank K₀ K = 1 := Formalism.MainNotions.UnusedSlot80.SatW.finrank_one_of_bij' hA.1
  obtain ⟨h9r, -⟩ := (h9 T hT hA.2.1 hA.2.2).2.2 hK
  have hR := Formalism.MainNotions.LiftingTheory.lifta_ring_of W h9r
  have hqΔ := Formalism.MainNotions.LiftingTheory.lifta_qΔ W hR.πΔ
  have hDL : DL W T i (qp W ^ y • x) := by
    refine ⟨by rw [smul_comm, hx.1], fun δ hδ => ?_⟩
    rw [γD_smul', map_pow, hqΔ δ hδ, hx.2 δ hδ]
  obtain ⟨⟨u, hu, hq⟩, -, -⟩ := hRg hA i ζ hζ
  have hE := (hRu hA T hT i ζ hζ).2.2.2.2.1 (qp W ^ y) x d hd
  have hN : qp W ^ Y • (qp W ^ y • x) ∈ W.N T := by
    rw [smul_comm]; exact (W.N T).smul_mem _ hY
  rw [(hCr hA T hT i ζ hζ _ _ hDL hE).1 ⟨Y, hN⟩, map_pow, hq]
  obtain ⟨m, hm⟩ := hd.1
  exact wachExp_diag_shift_iff (Formalism.MainNotions.UnusedSlot80.LevR.filLev_anti W T i 0) hm u hu y

theorem wachShift_mem_of_exp [NeZero n] (W : LocWach PD LL O v n) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W)
    (hRg : ExpRing W) (hRu : ExpRules W) (hCr : ExpCrit W) (hD : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL)
    (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (hp : (PD.p : LL) ≠ 0) (ζ : LL) (hζ : IsPrimitiveRoot ζ PD.p)
    (T : LocLat G Qp LL O) (hT : IsCrys PD T.ρ) (i : ZMod n) (y' Y : ℕ) (cO : ℤ → O)
    (hc : ∀ x : ℤ, ((PD.p : ℕ) : O) * cO x = 1 - (((W.χΓ W.gam) ^ (-x) : Oˣ) : O))
    (xs : List ℤ)
    (hxs : ∀ (τ : K →ₐ[Qp] LL) (a : ℤ) (j : ℕ), Formalism.MainNotions.LiftingTheory.Over W τ i → IsJumpV PD T.ρ τ a →
      y' < j → j ≤ Y → a + (j : ℤ) ∈ xs)
    (seq : ℕ → W.DD T) (h0 : DL W T i (seq 0)) (h0N : qp W ^ Y • seq 0 ∈ W.N T)
    (hrec : ∀ k < xs.length, W.π₀ • (seq (k + 1) + cO (xs.getD k 0) • seq k) =
      W.γD T W.gam (seq k) - seq k) :
    DL W T i (seq xs.length) ∧ qp W ^ y' • seq xs.length ∈ W.N T := by
  classical
  have hU := Formalism.MainNotions.UnusedSlot35.DssRec.π₀_unit W h9 hA T hT
  have hDS := rToolMod_dStab W h9
  have hQ : ∀ k ≤ xs.length, QLattice W T i Y (seq k) := by
    intro k
    induction k with
    | zero => exact fun _ => ⟨h0, h0N⟩
    | succ k ih =>
      intro hk
      have hk' : k < xs.length := hk
      have e : seq (k + 1) = derivationOnWachModule W T (seq k) + (-cO (xs.getD k 0)) • seq k := by
        have h1 : seq (k + 1) + cO (xs.getD k 0) • seq k = derivationOnWachModule W T (seq k) :=
          Formalism.MainNotions.UnusedSlot35.DssRec.smul_inj W.π₀ hU (by rw [hrec k hk', uniformizer_smul_derivation W T hU]; rfl)
        rw [← h1, neg_smul, add_neg_cancel_right]
      rw [e]
      exact qLattice_add W T (qLattice_derivation W T hDS hA hT i Y (ih hk'.le))
        (qLattice_smul W T _ (ih hk'.le))
  refine ⟨(hQ _ le_rfl).1, ?_⟩
  obtain ⟨⟨u, hu, hq⟩, hπ0, -⟩ := hRg hA i ζ hζ
  obtain ⟨hex, -, hadd, hsO, hsA, hγ, -⟩ := hRu hA T hT i ζ hζ
  have hqne : W.lev i ζ (qp W ^ Y) ≠ 0 := by
    rw [map_pow, hq]
    exact pow_ne_zero _ (mul_ne_zero hu.ne_zero PowerSeries.X_ne_zero)
  have hf : ∀ k : ℕ, ∃ d : ℤ → T.V ⊗[Qp] BdR, (∃ m : ℤ, ∀ j < m, d j = 0) ∧
      (k ≤ xs.length → IsExp W T i ζ (seq k) d) := by
    intro k
    by_cases hk : k ≤ xs.length
    · obtain ⟨d, hd, -⟩ := hex (seq k) _ (hQ k hk).2 hqne
      exact ⟨d, hd.1, fun _ => hd⟩
    · exact ⟨0, ⟨0, fun _ _ => rfl⟩, fun h => absurd h hk⟩
  choose f hfb hfe using hf
  rw [wachExp_mem_iff W h9 hRg hRu hCr hA T hT i ζ hζ _ _ (hQ _ le_rfl).1 (hfe _ le_rfl) Y
    (hQ _ le_rfl).2 y']
  have hf0 := (wachExp_mem_iff W h9 hRg hRu hCr hA T hT i ζ hζ _ _ h0 (hfe 0 (Nat.zero_le _)) Y
    h0N Y).1 h0N
  let uL : LLˣ := Units.map (algebraMap O LL : O →* LL) (W.χΓ W.gam)
  refine filtLaurent_shift_line LL _ (fun a => FilLev W T i 0 a)
    (Formalism.MainNotions.UnusedSlot80.LevR.filLev_anti W T i 0) uL (W.lev i ζ W.π₀) (fun x => algebraMap O LL (cO x))
    (by rw [hπ0]; exact neg_ne_zero.2 hp) (fun x => ?_) y' Y xs (fun a j ha hj hj' => ?_) f hfb
    (fun m hm k => ?_) hf0
  · have h1 := congrArg (algebraMap O LL) (hc x)
    rw [map_mul, map_natCast, map_sub, map_one] at h1
    have h2 : ((uL ^ (-x) : LLˣ) : LL) = algebraMap O LL (((W.χΓ W.gam) ^ (-x) : Oˣ) : O) := by
      rw [← map_zpow]; rfl
    rw [hπ0, h2]
    linear_combination -h1
  · let e : K₀ ≃ₐ[Qp] K := AlgEquiv.ofBijective (IsScalarTower.toAlgHom Qp K₀ K) hA.1
    let τ : K →ₐ[Qp] LL := (W.emb i).comp e.symm.toAlgHom
    have hτ : Formalism.MainNotions.LiftingTheory.Over W τ i := by
      apply AlgHom.ext
      intro z
      show W.emb i (e.symm (e z)) = W.emb i z
      rw [e.symm_apply_apply]
    have hF : ∀ b : ℤ, FildR PD T.ρ τ b = FilLev W T i 0 b := by
      intro b
      rw [((hD hA.1 T.V T.ρ hT).2 τ).2.2 b, show τ.comp (IsScalarTower.toAlgHom Qp K₀ K) = W.emb i from hτ]
      unfold FilLev
      simp only [Nat.cast_zero, sub_zero, pow_zero, Module.End.one_eq_id, Submodule.map_id]
    refine hxs τ a j hτ ?_ hj hj'
    unfold IsJumpV
    rw [hF, hF]
    exact ha
  · have e1 := hfe m hm.le
    have e2 := hfe (m + 1) hm
    have hL := hsA W.π₀ _ _ (hadd _ _ _ _ e2 (hsO (cO (xs.getD m 0)) _ _ e1))
    have hR := hadd _ _ _ _ (hγ _ _ e1) (hsO (-1) _ _ e1)
    have ex : W.γ T (seq m) + (-1 : O) • seq m =
        W.π₀ • (seq (m + 1) + cO (xs.getD m 0) • seq m) := by
      rw [hrec m hm, neg_one_smul, ← sub_eq_add_neg]; rfl
    rw [ex] at hR
    have hN : qp W ^ Y • (W.π₀ • (seq (m + 1) + cO (xs.getD m 0) • seq m)) ∈ W.N T := by
      rw [smul_comm]
      exact (W.N T).smul_mem _
        (qLattice_add W T (hQ (m + 1) hm) (qLattice_smul W T _ (hQ m hm.le))).2
    have h3 := congrFun ((hex _ _ hN hqne).unique hL hR) k
    have h2 : ((uL ^ k : LLˣ) : LL) = (algebraMap O LL (W.χΓ W.gam : O)) ^ k := by
      rw [Units.val_zpow_eq_zpow_val]; rfl
    rw [h2, sub_smul, one_smul]
    refine Eq.trans ?_ (h3.trans ?_)
    · rfl
    · simp [sub_eq_add_neg]

end Core

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachShiftMemOfExpansions =====
