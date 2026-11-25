module

public import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMemberP
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeastVectorUniqueInClassModStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeightedLatticeQuadraticSumGeDiagonal
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Development.AbelianVarietyTheory.Definitions.Divisors.FromBase
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.BitVec

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierMonomialMemRadicalExtendedMaximalIdeal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemIndexZeroCoefficientApprox, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemIndexZeroCoefficientApproxStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierMonomialMemRadicalExtendedMaximalIdeal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierMonomialMemRadicalExtendedMaximalIdeal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMemberP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LeastVectorUniqueInClassModStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeightedLatticeQuadraticSumGeDiagonal\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Poinc.RadQ

section Forms

variable {s : ℕ} {W : Matrix (Fin s) (Fin s) ℤ} {X : Type} [AddCommGroup X]

def polW (W : Matrix (Fin s) (Fin s) ℤ) (β : LinearMap.BilinForm ℤ X) (x y : Fin s → X) : ℤ :=
  ∑ u, ∑ v, W u v * (β (x u) (y v) + β (y u) (x v))

theorem qW_smul_add (β : LinearMap.BilinForm ℤ X) (a : ℤ) (x y : Fin s → X) :
    qW W β (a • x + y) = a ^ 2 * qW W β x + a * polW W β x y + qW W β y := by
  simp only [qW, polW, Pi.add_apply, Pi.smul_apply, map_add (f := _), map_zsmul, LinearMap.add_apply,
    LinearMap.smul_apply, smul_eq_mul, Finset.mul_sum, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun u _ => Finset.sum_congr rfl fun v _ => ?_
  ring

theorem qW_smul (β : LinearMap.BilinForm ℤ X) (a : ℤ) (x : Fin s → X) :
    qW W β (a • x) = a ^ 2 * qW W β x := by
  have h := qW_smul_add (W := W) β a x 0
  rw [add_zero] at h
  rw [h]
  simp [qW, polW]

theorem polW_eq_zero (hW : PosW W) {β : LinearMap.BilinForm ℤ X} (hs : ∀ a b, β a b = β b a)
    (hβ : ∀ y, 0 ≤ β y y) {x : Fin s → X} (hx : qW W β x = 0) (y : Fin s → X) : polW W β x y = 0 := by
  have h : ∀ a : ℤ, 0 ≤ a * polW W β x y + qW W β y := fun a => by
    have := qW_nonneg hW hs hβ (a • x + y)
    rw [qW_smul_add, hx, mul_zero, zero_add] at this
    exact this
  have hy := qW_nonneg hW hs hβ y
  rcases lt_trichotomy (polW W β x y) 0 with hp | hp | hp
  · have := h (qW W β y + 1); nlinarith
  · exact hp
  · have := h (-(qW W β y + 1)); nlinarith

theorem qW_add_eq_zero (hW : PosW W) {β : LinearMap.BilinForm ℤ X} (hs : ∀ a b, β a b = β b a)
    (hβ : ∀ y, 0 ≤ β y y) {x y : Fin s → X} (hx : qW W β x = 0) (hy : qW W β y = 0) :
    qW W β (x + y) = 0 := by
  have := qW_smul_add (W := W) β 1 x y
  rw [one_smul] at this
  rw [this, hx, hy, polW_eq_zero hW hs hβ hx]
  ring

def nullSub (hW : PosW W) {m : ℕ} (δ : Fin m → LinearMap.BilinForm ℤ X)
    (hs : ∀ k a b, δ k a b = δ k b a) (hn : ∀ k y, 0 ≤ δ k y y) (I : Fin m → Prop) :
    AddSubgroup (Fin s → X) where
  carrier := {mu | ∀ k, I k → qW W (δ k) mu = 0}
  add_mem' := fun ha hb k hk => qW_add_eq_zero hW (hs k) (hn k) (ha k hk) (hb k hk)
  zero_mem' := fun k _ => by simp [qW]
  neg_mem' := fun {x} ha k hk => by
    show qW W (δ k) (-x) = 0
    rw [← neg_one_smul ℤ x, qW_smul, ha k hk, mul_zero]

theorem exists_qW_pos (hW : PosW W) {m : ℕ} (δ : Fin m → LinearMap.BilinForm ℤ X)
    (hs : ∀ k a b, δ k a b = δ k b a) (hn : ∀ k y, 0 ≤ δ k y y) (hp : ∀ x, x ≠ 0 → ∃ k, 0 < δ k x x)
    {mu : Fin s → X} (hmu : mu ≠ 0) : ∃ k, 0 < qW W (δ k) mu := by
  obtain ⟨u, hu⟩ : ∃ u, mu u ≠ 0 := by
    by_contra h
    push_neg at h
    exact hmu (funext h)
  obtain ⟨k, hk⟩ := hp _ hu
  obtain ⟨c, hc0, hc⟩ := QWDom.qW_ge s W hW
  refine ⟨k, ?_⟩
  have h1 : δ k (mu u) (mu u) ≤ ∑ v, δ k (mu v) (mu v) :=
    Finset.single_le_sum (f := fun v => δ k (mu v) (mu v)) (fun v _ => hn k _) (Finset.mem_univ u)
  have h2 := hc X (δ k) (hs k) (hn k) mu
  have h3 : (0 : ℝ) < c * ((∑ v, δ k (mu v) (mu v) : ℤ) : ℝ) := by
    apply mul_pos hc0
    exact_mod_cast hk.trans_le h1
  exact_mod_cast h3.trans_le h2

theorem mono_mem {V : Type} [CommRing V] {m : ℕ} (t : Fin m → V) (δ : Fin m → LinearMap.BilinForm ℤ X)
    (mu : Fin s → X) (P : Ideal V) (k : Fin m) (hk : t k ∈ P) (hq : 0 < qW W (δ k) mu) :
    mono W t δ mu ∈ P := by
  unfold mono
  refine Ideal.mem_of_dvd _ (Finset.dvd_prod_of_mem _ (Finset.mem_univ k)) ?_
  exact Ideal.pow_mem_of_mem _ hk _ (by omega)

end Forms

section Val

open IsDiscreteValuationRing

variable {R : Type} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]

theorem addVal_prod {J : Type*} (S : Finset J) (f : J → R) :
    addVal R (∏ i ∈ S, f i) = ∑ i ∈ S, addVal R (f i) := by
  classical
  induction S using Finset.induction_on with
  | empty => simp
  | insert a S ha ih => rw [Finset.prod_insert ha, Finset.sum_insert ha, addVal_mul, ih]

theorem le_addVal_of_mem_pow (j : ℕ) (x : R) (hx : x ∈ IsLocalRing.maximalIdeal R ^ j) : (j : ℕ∞) ≤ addVal R x := by
  obtain ⟨ϖ, hϖ⟩ := exists_irreducible R
  rw [(irreducible_iff_uniformizer ϖ).1 hϖ, Ideal.span_singleton_pow, Ideal.mem_span_singleton] at hx
  have := (addVal_le_iff_dvd (a := ϖ ^ j) (b := x)).2 hx
  rwa [addVal_pow, addVal_uniformizer hϖ, nsmul_eq_mul, _root_.mul_one] at this

theorem addVal_unit {x : R} (hx : IsUnit x) : addVal R x = 0 := by
  have := (addVal_le_iff_dvd (a := x) (b := 1)).2 hx.dvd
  rw [AddValuation.map_one] at this
  exact le_antisymm this zero_le

theorem addVal_mem (x : R) (hx : x ∈ IsLocalRing.maximalIdeal R) (h0 : x ≠ 0) :
    ∃ r : ℕ, 1 ≤ r ∧ addVal R x = r := by
  obtain ⟨ϖ, hϖ⟩ := exists_irreducible R
  rw [(irreducible_iff_uniformizer ϖ).1 hϖ, Ideal.mem_span_singleton] at hx
  have h1 := (addVal_le_iff_dvd (a := ϖ) (b := x)).2 hx
  rw [addVal_uniformizer hϖ] at h1
  have htop : addVal R x ≠ ⊤ := fun e => h0 (addVal_eq_top_iff.1 e)
  obtain ⟨r, hr⟩ := ENat.ne_top_iff_exists.1 htop
  refine ⟨r, ?_, hr.symm⟩
  rw [← hr] at h1
  exact_mod_cast h1

end Val

end GlobalTheory.Poinc.RadQ

namespace GlobalTheory.Poinc.RadQ

open IsDiscreteValuationRing

theorem map_mono_eq_zero {O : Type} [CommRing O] {bar : O → O} {q s : ℕ} {W : Matrix (Fin s) (Fin s) ℤ} {A : Type}
    [CommRing A] [IsLocalRing A] (Φ : VPre bar q W A) (N₁ : ℕ) (hN : 3 ≤ N₁) (hE : Φ.Exact N₁) (y : Φ.Y)
    (nu : Fin s → Φ.X y) (hnu : nu ≠ 0) (R : Type) [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
    (φ : Φ.V y →+* R) [IsLocalHom φ] (hJ : ∀ a ∈ IsLocalRing.maximalIdeal A, φ (Φ.ev y a) = 0) :
    φ (mono W (Φ.t y) (Φ.δ y) nu) = 0 := by
  classical
  by_contra hm
  have hs : ∀ k a b, Φ.δ y k a b = Φ.δ y k b a := fun k => (Φ.bal y k).1
  have hn : ∀ k x, 0 ≤ Φ.δ y k x x := Φ.nonneg y
  have hW := Φ.posW
  have hQ : ∀ k mu, 0 ≤ qW W (Φ.δ y k) mu := fun k mu => qW_nonneg hW (hs k) (hn k) mu
  let H := nullSub hW (Φ.δ y) hs hn (fun k => φ (Φ.t y k) = 0)
  have hmemH : ∀ mu, mu ∈ H ↔ ∀ k, φ (Φ.t y k) = 0 → qW W (Φ.δ y k) mu = 0 := fun mu => Iff.rfl
  have hφmono : ∀ mu, φ (mono W (Φ.t y) (Φ.δ y) mu) = ∏ k, φ (Φ.t y k) ^ (qW W (Φ.δ y k) mu).toNat := by
    intro mu
    simp [mono, map_prod, map_pow]
  have hout : ∀ mu, mu ∉ H → φ (mono W (Φ.t y) (Φ.δ y) mu) = 0 := by
    intro mu hmu
    rw [hmemH] at hmu
    push_neg at hmu
    obtain ⟨k, hk, hk'⟩ := hmu
    rw [hφmono]
    apply Finset.prod_eq_zero (Finset.mem_univ k)
    rw [hk]
    apply zero_pow
    have := hQ k mu
    omega
  have hnuH : nu ∈ H := by
    by_contra h
    exact hm (hout nu h)

  let n : Fin (Φ.m y) → ℕ := fun k => (addVal R (φ (Φ.t y k))).toNat
  have hnk : ∀ k, φ (Φ.t y k) ≠ 0 → 1 ≤ n k ∧ addVal R (φ (Φ.t y k)) = n k := by
    intro k hk
    obtain ⟨r, hr1, hr⟩ := addVal_mem (φ (Φ.t y k)) (map_nonunit φ _ (Φ.t_mem y k).1) hk
    have : n k = r := by simp only [n, hr, ENat.toNat_coe]
    exact ⟨this ▸ hr1, this ▸ hr⟩
  let β : LinearMap.BilinForm ℤ (Φ.X y) := ∑ k, (n k : ℤ) • Φ.δ y k
  have hβlin : ∀ mu, qW W β mu = ∑ k, (n k : ℤ) * qW W (Φ.δ y k) mu := by
    intro mu
    simp only [qW, β, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul, Finset.mul_sum]
    conv_rhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun u _ => ?_
    conv_rhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun v _ => Finset.sum_congr rfl fun k _ => ?_
    ring
  have hβs : ∀ a b, β a b = β b a := by
    intro a b
    simp only [β, LinearMap.sum_apply, LinearMap.smul_apply, hs _ a b]
  have hβn : ∀ x, 0 ≤ β x x := by
    intro x
    simp only [β, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul]
    exact Finset.sum_nonneg fun k _ => mul_nonneg (by positivity) (hn k x)
  have hβ0 : ∀ mu, 0 ≤ qW W β mu := qW_nonneg hW hβs hβn
  let e : (Fin s → Φ.X y) → ℕ := fun mu => ∑ k, (qW W (Φ.δ y k) mu).toNat * n k
  have he : ∀ mu, (e mu : ℤ) = qW W β mu := by
    intro mu
    rw [hβlin]
    simp only [e, Nat.cast_sum, Nat.cast_mul, Int.toNat_of_nonneg (hQ _ mu)]
    exact Finset.sum_congr rfl fun k _ => by ring
  have hvmono : ∀ mu ∈ H, addVal R (φ (mono W (Φ.t y) (Φ.δ y) mu)) = (e mu : ℕ∞) := by
    intro mu hmu
    have hk : ∀ k, addVal R (φ (Φ.t y k) ^ (qW W (Φ.δ y k) mu).toNat) =
        (((qW W (Φ.δ y k) mu).toNat * n k : ℕ) : ℕ∞) := by
      intro k
      by_cases hk : φ (Φ.t y k) = 0
      · rw [(hmemH mu).1 hmu k hk]
        simp
      · rw [addVal_pow, (hnk k hk).2, nsmul_eq_mul]
        push_cast
        rfl
    rw [hφmono, addVal_prod]
    simp only [hk, e, Nat.cast_sum]
  have hβpos : ∀ mu ∈ H, mu ≠ 0 → 0 < qW W β mu := by
    intro mu hmu h0
    obtain ⟨k, hk⟩ := exists_qW_pos hW (Φ.δ y) hs hn (Φ.pos y) h0
    have hk0 : φ (Φ.t y k) ≠ 0 := fun e' => by
      have := (hmemH mu).1 hmu k e'
      omega
    rw [hβlin]
    have h1 : (n k : ℤ) * qW W (Φ.δ y k) mu ≤ ∑ j, (n j : ℤ) * qW W (Φ.δ y j) mu :=
      Finset.single_le_sum (f := fun j => (n j : ℤ) * qW W (Φ.δ y j) mu)
        (fun j _ => mul_nonneg (by positivity) (hQ j mu)) (Finset.mem_univ k)
    have h2 : (1 : ℤ) ≤ n k := by exact_mod_cast (hnk k hk0).1
    have h3 : (0 : ℤ) < (n k : ℤ) * qW W (Φ.δ y k) mu := mul_pos (by omega) hk
    omega

  have hex : ∃ r : ℕ, ∃ mu ∈ H, mu ≠ 0 ∧ qW W β mu = r :=
    ⟨(qW W β nu).toNat, nu, hnuH, hnu, (Int.toNat_of_nonneg (hβ0 nu)).symm⟩
  obtain ⟨mu₀, hmu₀H, hmu₀0, hmu₀eq⟩ := Nat.find_spec hex
  have hmin : ∀ mu ∈ H, mu ≠ 0 → qW W β mu₀ ≤ qW W β mu := by
    intro mu hmu h0
    rw [hmu₀eq]
    have h1 := Nat.find_min' hex ⟨mu, hmu, h0, (Int.toNat_of_nonneg (hβ0 mu)).symm⟩
    have h2 := Int.toNat_of_nonneg (hβ0 mu)
    omega
  have hcong : ∀ mu : Fin s → Φ.X y, (∀ w, CongMod N₁ (mu w) (mu₀ w)) →
      ∃ w : Fin s → Φ.X y, mu = mu₀ + N₁ • w := by
    intro mu h
    choose w hw using h
    exact ⟨w, funext fun i => by simp [hw i]⟩
  have hsat : ∀ w : Fin s → Φ.X y, N₁ • w ∈ H → w ∈ H := by
    intro w hw
    refine (hmemH w).2 fun k hk => ?_
    have h := (hmemH _).1 hw k hk
    rw [← natCast_zsmul, qW_smul] at h
    have h3 : (N₁ : ℤ) ^ 2 ≠ 0 := by positivity
    exact (mul_eq_zero.1 h).resolve_left h3
  have hbig : ∀ mu ∈ H, (∀ w, CongMod N₁ (mu w) (mu₀ w)) → mu ≠ mu₀ → qW W β mu₀ < qW W β mu := by
    intro mu hmu hc hne
    obtain ⟨w, rfl⟩ := hcong mu hc
    have hw : w ∈ H := hsat w (by simpa using H.sub_mem hmu hmu₀H)
    have hw0 : w ≠ 0 := by
      rintro rfl
      simp at hne
    exact _root_.GlobalTheory.Poinc.LeastVec.least_lt_add_smul s W hW (Φ.X y) β hβs hβn H hβpos mu₀ hmu₀H hmu₀0 hmin N₁ hN w hw hw0
  have hz : ∀ mu : Fin s → Φ.X y, (∀ w, CongMod N₁ (mu w) (mu₀ w)) → mu ≠ 0 := by
    rintro mu hc rfl
    have h1 := hbig 0 H.zero_mem hc (Ne.symm hmu₀0)
    have h2 : qW W β 0 = 0 := by simp [qW]
    have h3 := hβ0 mu₀
    omega

  obtain ⟨c, hc⟩ := Φ.u_unit y mu₀
  obtain ⟨h, hh⟩ := hE y mu₀ c
  have hmaxV : ∀ mu : Fin s → Φ.X y, (∀ w, CongMod N₁ (mu w) (mu₀ w)) → Φ.term y mu c ∈ IsLocalRing.maximalIdeal (Φ.V y) := by
    intro mu hmu
    obtain ⟨k, hk⟩ := exists_qW_pos hW (Φ.δ y) hs hn (Φ.pos y) (hz mu hmu)
    exact Ideal.mul_mem_left _ _ (mono_mem _ _ _ _ k (Φ.t_mem y k).1 hk)
  have hevh : Φ.ev y h ∈ IsLocalRing.maximalIdeal (Φ.V y) := by
    obtain ⟨S, hS1, -, hS3⟩ := hh 1
    rw [pow_one, RingHom.id_apply] at hS3
    have := Ideal.add_mem _ hS3 (Ideal.sum_mem _ fun mu hmu => hmaxV mu (hS1 mu hmu))
    simpa using this
  have hhA : h ∈ IsLocalRing.maximalIdeal A := by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    exact (IsLocalRing.mem_maximalIdeal _).1 hevh (hu.map _)
  have hφh : φ (Φ.ev y h) = 0 := hJ h hhA

  set q₀ := (qW W β mu₀).toNat with hq₀
  have he₀ : e mu₀ = q₀ := by
    have := he mu₀
    omega
  obtain ⟨S, hS1, hS2, hS3⟩ := hh (q₀ + 1 + (∑ i, qW W (Φ.δ y i) mu₀).toNat)
  have hmu₀S : mu₀ ∈ S := by
    by_contra hno
    have h1 := hS2 mu₀ (fun w => ⟨0, by simp⟩) hno
    have hnn : 0 ≤ ∑ i, qW W (Φ.δ y i) mu₀ := Finset.sum_nonneg fun i _ => hQ i mu₀
    push_cast at h1
    omega
  have hsum : ((q₀ + 1 : ℕ) : ℕ∞) ≤ addVal R (φ (∑ mu ∈ S, Φ.term y mu c)) := by
    have h1 : φ (Φ.ev y h - ∑ mu ∈ S, Φ.term y mu c) ∈
        IsLocalRing.maximalIdeal R ^ (q₀ + 1 + (∑ i, qW W (Φ.δ y i) mu₀).toNat) :=
      GlobalTheory.map_maximalIdeal_pow_le φ _ (Ideal.mem_map_of_mem φ (by simpa using hS3))
    rw [map_sub, hφh, zero_sub] at h1
    have h2 := le_addVal_of_mem_pow _ _ h1
    rw [AddValuation.map_neg] at h2
    refine le_trans ?_ h2
    exact_mod_cast (by omega : q₀ + 1 ≤ q₀ + 1 + (∑ i, qW W (Φ.δ y i) mu₀).toNat)
  have hrest : ∀ mu ∈ S.erase mu₀, ((q₀ + 1 : ℕ) : ℕ∞) ≤ addVal R (φ (Φ.term y mu c)) := by
    intro mu hmu
    obtain ⟨hne, hmuS⟩ := Finset.mem_erase.1 hmu
    rw [VPre.term, map_mul, addVal_mul]
    refine le_trans ?_ le_add_self
    by_cases hH : mu ∈ H
    · rw [hvmono mu hH]
      have h1 := hbig mu hH (hS1 mu hmuS) hne
      have h2 := he mu
      have h3 := hβ0 mu₀
      exact_mod_cast (show q₀ + 1 ≤ e mu by omega)
    · rw [hout mu hH]
      simp
  have hrestsum : ((q₀ + 1 : ℕ) : ℕ∞) ≤ addVal R (φ (∑ mu ∈ S.erase mu₀, Φ.term y mu c)) := by

    rw [map_sum]
    exact AddValuation.map_le_sum _ fun mu hmu => hrest mu hmu
  have hv₀ : addVal R (φ (Φ.term y mu₀ c)) = (q₀ : ℕ∞) := by
    rw [VPre.term, map_mul, addVal_mul, addVal_unit (hc.map φ), hvmono mu₀ hmu₀H, he₀, zero_add]
  have hfinal : ((q₀ + 1 : ℕ) : ℕ∞) ≤ addVal R (φ (Φ.term y mu₀ c)) := by
    have hsplit := Finset.add_sum_erase S (fun mu => Φ.term y mu c) hmu₀S
    have h1 : φ (Φ.term y mu₀ c) =
        φ (∑ mu ∈ S, Φ.term y mu c) - φ (∑ mu ∈ S.erase mu₀, Φ.term y mu c) := by
      rw [← hsplit, map_add (f := _)]
      ring
    rw [h1]
    exact le_trans (le_min hsum hrestsum) (AddValuation.map_sub _ _ _)
  rw [hv₀] at hfinal
  have : q₀ + 1 ≤ q₀ := by exact_mod_cast hfinal
  omega

theorem mono_mem_radical : ∀ (O : Type) [CommRing O] (bar : O → O) (q s : ℕ) (W : Matrix (Fin s) (Fin s) ℤ) (A : Type)
    [CommRing A] [IsLocalRing A] (Φ : VPre bar q W A) (N₁ : ℕ), 3 ≤ N₁ → Φ.Exact N₁ → ∀ (y : Φ.Y)
    (nu : Fin s → Φ.X y), nu ≠ 0 → mono W (Φ.t y) (Φ.δ y) nu ∈ ((IsLocalRing.maximalIdeal A).map (Φ.ev y)).radical := by
  intro O _ bar q s W A _ _ Φ N₁ hN hE y nu hnu
  by_contra hno
  rw [Ideal.radical_eq_sInf, Submodule.mem_sInf] at hno
  push_neg at hno
  obtain ⟨p, ⟨hJp, hp⟩, hmp⟩ := hno
  have hs : ∀ k a b, Φ.δ y k a b = Φ.δ y k b a := fun k => (Φ.bal y k).1
  by_cases hpm : p = IsLocalRing.maximalIdeal (Φ.V y)
  · subst hpm
    obtain ⟨k, hk⟩ := exists_qW_pos Φ.posW (Φ.δ y) hs (Φ.nonneg y) (Φ.pos y) hnu
    exact hmp (mono_mem _ _ _ _ k (Φ.t_mem y k).1 hk)
  · haveI : IsNoetherianRing (Φ.V y) := (Φ.cn y).1
    obtain ⟨R, _, _, _, _, φ, hker, hloc⟩ := GlobalTheory.exists_complete_discreteValuationRing_ker_eq p hpm
    apply hmp
    rw [← hker, RingHom.mem_ker]
    exact map_mono_eq_zero Φ N₁ hN hE y nu hnu R φ fun a ha => by
      rw [← RingHom.mem_ker, hker]
      exact hJp (Ideal.mem_map_of_mem _ ha)

end GlobalTheory.Poinc.RadQ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierMonomialMemRadicalExtendedMaximalIdeal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemIndexZeroCoefficientApprox =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemIndexZeroCoefficientApprox", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMemberP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierMonomialMemRadicalExtendedMaximalIdeal\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeightedLatticeQuadraticSumGeDiagonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Poinc.Sep.UnitZero

theorem qW_nsmul {s : ℕ} (W : Matrix (Fin s) (Fin s) ℤ) {X : Type} [AddCommGroup X] (β : LinearMap.BilinForm ℤ X)
    (N : ℕ) (ν : Fin s → X) : qW W β (fun u => N • ν u) = (N : ℤ) ^ 2 * qW W β ν := by
  simp only [qW, Finset.mul_sum]
  refine Finset.sum_congr rfl fun u _ => Finset.sum_congr rfl fun v _ => ?_
  rw [← Nat.cast_smul_eq_nsmul ℤ N (ν u), ← Nat.cast_smul_eq_nsmul ℤ N (ν v), LinearMap.map_smul₂, LinearMap.map_smul,
    smul_eq_mul, smul_eq_mul]
  ring

theorem mono_nsmul {s m : ℕ} (W : Matrix (Fin s) (Fin s) ℤ) {X : Type} [AddCommGroup X] {V : Type} [CommRing V]
    (t : Fin m → V) (δ : Fin m → LinearMap.BilinForm ℤ X) (ν : Fin s → X) (hν : ∀ k, 0 ≤ qW W (δ k) ν) (N : ℕ) :
    mono W t δ (fun u => N • ν u) = mono W t δ ν ^ (N ^ 2) := by
  simp only [mono]
  rw [← Finset.prod_pow]
  refine Finset.prod_congr rfl fun k _ => ?_
  rw [← pow_mul, qW_nsmul]
  congr 1
  have : (N : ℤ) ^ 2 * qW W (δ k) ν = (((qW W (δ k) ν).toNat * N ^ 2 : ℕ) : ℤ) := by
    push_cast
    rw [Int.toNat_of_nonneg (hν k)]
    ring
  rw [this, Int.toNat_natCast]

theorem mem_of_forall_mem_pow_sup {V : Type} [CommRing V] [IsLocalRing V] [IsNoetherianRing V] (I : Ideal V) (x : V)
    (h : ∀ j : ℕ, x ∈ maximalIdeal V ^ j ⊔ I) : x ∈ I := by
  have hK := Ideal.iInf_pow_smul_eq_bot_of_le_jacobson (R := V) (M := V ⧸ I) (maximalIdeal V)
    (by simpa only [Ideal.jacobson_bot] using (IsLocalRing.maximalIdeal_le_jacobson (⊥ : Ideal V)))
  rw [← Ideal.Quotient.eq_zero_iff_mem]
  have hx : Ideal.Quotient.mk I x ∈ ⨅ i : ℕ, maximalIdeal V ^ i • (⊤ : Submodule V (V ⧸ I)) := by
    rw [Submodule.mem_iInf]
    intro j
    obtain ⟨a, ha, b, hb, rfl⟩ := Submodule.mem_sup.1 (h j)
    have : Ideal.Quotient.mk I (a + b) = a • Ideal.Quotient.mk I 1 := by
      rw [map_add (f := _), Ideal.Quotient.eq_zero_iff_mem.2 hb, add_zero, Algebra.smul_def, Ideal.Quotient.algebraMap_eq, map_one,
        _root_.mul_one]
    rw [this]
    exact Submodule.smul_mem_smul ha Submodule.mem_top
  rw [hK] at hx
  exact (Submodule.mem_bot _).1 hx

theorem pow_mem_of_radical {V : Type} [CommRing V] (J : Ideal V) {m : ℕ} (t : Fin m → V) {Ix : Type}
    (a : Ix → Fin m → ℕ) (Z : Set Ix) (hrad : ∀ ν ∈ Z, (∏ k, t k ^ a ν k) ∈ J.radical) (e : ℕ) :
    ∃ n, ∀ ν ∈ Z, ∀ M, n ≤ M → (∏ k, t k ^ a ν k) ^ M ∈ J ^ e := by
  classical
  let P : (Fin m → Bool) → V := fun p => ∏ k, t k ^ (if p k then 1 else 0)
  let pat : Ix → Fin m → Bool := fun ν k => decide (0 < a ν k)
  have hdvd : ∀ ν, P (pat ν) ∣ ∏ k, t k ^ a ν k := fun ν =>
    Finset.prod_dvd_prod_of_dvd _ _ fun k _ => pow_dvd_pow _ (by
      by_cases h : 0 < a ν k <;> simp [pat, h] <;> omega)
  have hP : ∀ p, ∃ n, (∃ ν ∈ Z, pat ν = p) → P p ^ n ∈ J := by
    intro p
    by_cases hp : ∃ ν ∈ Z, pat ν = p
    · obtain ⟨ν, hν, rfl⟩ := hp
      have hK : (∏ k, t k ^ a ν k) ∣ P (pat ν) ^ (∑ k, a ν k) := by
        simp only [P]
        rw [← Finset.prod_pow]
        refine Finset.prod_dvd_prod_of_dvd _ _ fun k _ => ?_
        rw [← pow_mul]
        refine pow_dvd_pow _ ?_
        by_cases h : 0 < a ν k
        · simp only [pat, h, decide_true, if_true, Nat.one_mul]
          exact Finset.single_le_sum (f := a ν) (fun _ _ => Nat.zero_le _) (Finset.mem_univ k)
        · simp only [pat, h, decide_false]
          simp only [Bool.false_eq_true, if_false, Nat.zero_mul]
          omega
      obtain ⟨c, hc⟩ := hK
      have h1 : P (pat ν) ^ (∑ k, a ν k) ∈ J.radical := by
        rw [hc]; exact Ideal.mul_mem_right _ _ (hrad ν hν)
      obtain ⟨n, hn⟩ := Ideal.mem_radical_of_pow_mem h1
      exact ⟨n, fun _ => hn⟩
    · exact ⟨0, fun h => (hp h).elim⟩
  choose nP hnP using hP
  refine ⟨(Finset.univ.sup nP) * e, fun ν hν M hM => ?_⟩
  have hle : nP (pat ν) * e ≤ M :=
    le_trans (Nat.mul_le_mul_right _ (Finset.le_sup (f := nP) (Finset.mem_univ _))) hM
  have h1 : P (pat ν) ^ (nP (pat ν) * e) ∈ J ^ e := by
    rw [pow_mul]; exact Ideal.pow_mem_pow (hnP _ ⟨ν, hν, rfl⟩) e
  have h2 : P (pat ν) ^ (nP (pat ν) * e) ∣ (∏ k, t k ^ a ν k) ^ M :=
    (pow_dvd_pow _ hle).trans (pow_dvd_pow_of_dvd (hdvd ν) M)
  obtain ⟨c, hc⟩ := h2
  rw [hc]; exact Ideal.mul_mem_right _ _ h1

end GlobalTheory.Poinc.Sep.UnitZero

namespace GlobalTheory.Poinc.Sep.UnitZero

theorem mem_orbit_zero {O : Type} [CommRing O] {X₀ X : Type} [AddCommGroup X₀] [Module O X₀] [AddCommGroup X]
    [Module O X] {N₁ N : ℕ} {k : X₀ →ₗ[ℤ] X} {Ix : Type} {mu : Ix → X} (h : mu ∈ orbit O N₁ N k (0 : Ix → X₀)) :
    ∀ i, ∃ w, mu i = N • w := by
  obtain ⟨gam, -, -, -, hmu⟩ := h
  intro i
  obtain ⟨w, hw⟩ := hmu i
  exact ⟨w, by simpa using hw⟩

theorem zero_mem_orbit {O : Type} [CommRing O] {X₀ X : Type} [AddCommGroup X₀] [Module O X₀] [AddCommGroup X]
    [Module O X] {N₁ N : ℕ} {k : X₀ →ₗ[ℤ] X} {Ix : Type} : (0 : Ix → X) ∈ orbit O N₁ N k (0 : Ix → X₀) :=
  ⟨LinearMap.id, fun c x => ⟨0, by simp⟩, by simp, fun x => ⟨0, by simp⟩, fun i => ⟨0, by simp⟩⟩

end GlobalTheory.Poinc.Sep.UnitZero

namespace GlobalTheory.Poinc.Sep

theorem coeffZero_approx : ∀ (O : Type) [CommRing O] (bar : O → O) (q s : ℕ) (W : Matrix (Fin s) (Fin s) ℤ) (A : Type) [CommRing A] [IsLocalRing A] (Φ : VPre bar q W A) (N₁ : ℕ), 3 ≤ N₁ → Φ.Exact N₁ → Φ.abelian₂ → Φ.Four N₁ → (∀ y y', Φ.m y ≠ 1 → Φ.m y' ≠ 1 → y = y') → ∀ (c₀ : Φ.Q) (e : ℕ), ∃ a : A, ∀ y, Φ.ev y a - Φ.u y 0 c₀ ∈ (maximalIdeal A ^ e).map (Φ.ev y) := by
  intro O _ bar q s W A _ _ Φ N₁ h3 hEx hLam hFour huniq c₀ e
  classical
  rcases isEmpty_or_nonempty Φ.Y with hY | ⟨⟨y₀⟩⟩
  · exact ⟨0, fun y => (IsEmpty.false y).elim⟩
  obtain ⟨cW, hcW, hqW⟩ := QWDom.qW_ge s W Φ.posW
  obtain ⟨C, hC⟩ := hLam
  have hnn : ∀ y (k : Fin (Φ.m y)) (ν : Fin s → Φ.X y), 0 ≤ qW W (Φ.δ y k) ν := fun y k ν =>
    GlobalTheory.Poinc.qW_nonneg Φ.posW (Φ.bal y k).1 (Φ.nonneg y k) ν
  have hspec : ∃ n : ℕ, ∀ y, Φ.m y ≠ 1 → ∀ ν : Fin s → Φ.X y, ν ≠ 0 → ∀ M, n ≤ M →
      mono W (Φ.t y) (Φ.δ y) ν ^ M ∈ (maximalIdeal A ^ e).map (Φ.ev y) := by
    by_cases h : ∃ y₁, Φ.m y₁ ≠ 1
    · obtain ⟨y₁, hy₁⟩ := h
      obtain ⟨n, hn⟩ := UnitZero.pow_mem_of_radical ((maximalIdeal A).map (Φ.ev y₁)) (Φ.t y₁)
        (fun ν k => (qW W (Φ.δ y₁ k) ν).toNat) {ν | ν ≠ 0}
        (fun ν hν => _root_.GlobalTheory.Poinc.RadQ.mono_mem_radical O bar q s W A Φ N₁ h3 hEx y₁ ν hν) e
      refine ⟨n, fun y hy => ?_⟩
      obtain rfl := huniq y y₁ hy hy₁
      intro ν hν M hM
      rw [Ideal.map_pow]
      exact hn ν hν M hM
    · exact ⟨0, fun y hy => (h ⟨y, hy⟩).elim⟩
  obtain ⟨n, hn⟩ := hspec
  obtain ⟨N, hN₀, -, k, -, -, hF⟩ := hFour y₀ (n + ⌈((e * C : ℕ) : ℝ) / cW⌉₊ + 1)
  obtain ⟨f, hf⟩ := hF 1 0 (fun _ => c₀) e
  refine ⟨f, fun y => ?_⟩
  have hN2 : N ≤ N ^ 2 := Nat.le_self_pow two_ne_zero N
  have hNc : ((e * C : ℕ) : ℝ) ≤ (N : ℝ) ^ 2 * cW := by
    have h1 : ((e * C : ℕ) : ℝ) / cW ≤ (N : ℝ) ^ 2 := by
      refine (Nat.le_ceil _).trans ?_
      exact_mod_cast (show ⌈((e * C : ℕ) : ℝ) / cW⌉₊ ≤ N ^ 2 by omega)
    rwa [div_le_iff₀ hcW] at h1
  have hmono : ∀ ν : Fin s → Φ.X y, ν ≠ 0 →
      mono W (Φ.t y) (Φ.δ y) (fun v => N • ν v) ∈ (maximalIdeal A ^ e).map (Φ.ev y) := by
    intro ν hν
    by_cases hm : Φ.m y = 1
    · obtain ⟨v, hv⟩ := Function.ne_iff.1 hν
      obtain ⟨i, hi⟩ := Φ.pos y (ν v) hv
      obtain ⟨h, hh, hdiv⟩ := hC y hm i (ν v) hv
      have hexp : e * (C * (Φ.δ y i (ν v) (ν v)).toNat) ≤ (qW W (Φ.δ y i) (fun u => N • ν u)).toNat := by
        have hq := hqW (Φ.X y) (Φ.δ y i) (Φ.bal y i).1 (Φ.nonneg y i) ν
        have hsum : Φ.δ y i (ν v) (ν v) ≤ ∑ u, Φ.δ y i (ν u) (ν u) :=
          Finset.single_le_sum (f := fun u => Φ.δ y i (ν u) (ν u)) (fun u _ => Φ.nonneg y i _) (Finset.mem_univ v)
        have hsumR : ((Φ.δ y i (ν v) (ν v) : ℤ) : ℝ) ≤ ((∑ u, Φ.δ y i (ν u) (ν u) : ℤ) : ℝ) := by exact_mod_cast hsum
        have hD0 : (0 : ℝ) ≤ ((Φ.δ y i (ν v) (ν v) : ℤ) : ℝ) := by exact_mod_cast hi.le
        have hR : ((e * C : ℕ) : ℝ) * ((Φ.δ y i (ν v) (ν v) : ℤ) : ℝ) ≤ (N : ℝ) ^ 2 * (qW W (Φ.δ y i) ν : ℝ) := by
          calc ((e * C : ℕ) : ℝ) * ((Φ.δ y i (ν v) (ν v) : ℤ) : ℝ)
              ≤ (N : ℝ) ^ 2 * cW * ((Φ.δ y i (ν v) (ν v) : ℤ) : ℝ) := mul_le_mul_of_nonneg_right hNc hD0
            _ = (N : ℝ) ^ 2 * (cW * ((Φ.δ y i (ν v) (ν v) : ℤ) : ℝ)) := by ring
            _ ≤ (N : ℝ) ^ 2 * (cW * ((∑ u, Φ.δ y i (ν u) (ν u) : ℤ) : ℝ)) :=
                mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hsumR hcW.le) (by positivity)
            _ ≤ (N : ℝ) ^ 2 * (qW W (Φ.δ y i) ν : ℝ) := mul_le_mul_of_nonneg_left hq (by positivity)
        have hZ : ((e * C : ℕ) : ℤ) * Φ.δ y i (ν v) (ν v) ≤ (N : ℤ) ^ 2 * qW W (Φ.δ y i) ν := by exact_mod_cast hR
        have hpos : 0 ≤ (N : ℤ) ^ 2 * qW W (Φ.δ y i) ν := mul_nonneg (by positivity) (hnn y i ν)
        rw [UnitZero.qW_nsmul, ← Nat.cast_le (α := ℤ), Int.toNat_of_nonneg hpos]
        push_cast
        rw [Int.toNat_of_nonneg hi.le]
        push_cast at hZ
        linarith
      have h1 : Φ.ev y (h ^ e) ∈ (maximalIdeal A ^ e).map (Φ.ev y) := Ideal.mem_map_of_mem _ (Ideal.pow_mem_pow hh e)
      have h2 : Φ.ev y (h ^ e) ∣ mono W (Φ.t y) (Φ.δ y) (fun u => N • ν u) := by
        rw [map_pow]
        refine (pow_dvd_pow_of_dvd hdiv e).trans ?_
        rw [← pow_mul]
        refine (pow_dvd_pow _ ((Nat.mul_comm _ _).le.trans hexp)).trans ?_
        unfold mono
        exact Finset.dvd_prod_of_mem (fun k => Φ.t y k ^ (qW W (Φ.δ y k) (fun u => N • ν u)).toNat) (Finset.mem_univ i)
      obtain ⟨c, hc⟩ := h2
      rw [hc]; exact Ideal.mul_mem_right _ _ h1
    · rw [UnitZero.mono_nsmul W (Φ.t y) (Φ.δ y) ν (fun k => hnn y k ν) N]
      exact hn y hm ν hν _ (le_trans (by omega) hN2)
  have hterm : ∀ mu ∈ orbit O N₁ N (k y) (0 : Fin 1 × Fin s → Φ.X y₀), mu ≠ 0 →
      (∏ i : Fin 1, Φ.u y (fun v => mu (i, v)) c₀ * mono W (Φ.t y) (Φ.δ y) (fun v => mu (i, v))) ∈
        (maximalIdeal A ^ e).map (Φ.ev y) := by
    intro mu hmu hmu0
    choose w hw using UnitZero.mem_orbit_zero hmu
    have hν : (fun v => w (0, v)) ≠ 0 := by
      intro h0
      apply hmu0
      funext ⟨i, v⟩
      have hi0 : i = 0 := Subsingleton.elim _ _
      subst hi0
      rw [hw, Pi.zero_apply]
      have := congrFun h0 v
      simp only [Pi.zero_apply] at this
      rw [this, smul_zero]
    rw [Fin.prod_univ_one]
    have : (fun v => mu (0, v)) = fun v => N • w (0, v) := funext fun v => hw _
    rw [this]
    exact Ideal.mul_mem_left _ _ (hmono _ hν)
  have hmem : ∀ j : ℕ, Φ.ev y f - Φ.u y 0 c₀ ∈ maximalIdeal (Φ.V y) ^ j ⊔ (maximalIdeal A ^ e).map (Φ.ev y) := by
    intro j
    obtain ⟨S, hS, htail, hap⟩ := hf y (j + 1)
    have h0 : (0 : Fin 1 × Fin s → Φ.X y) ∈ S := by
      by_contra h0
      have := htail 0 UnitZero.zero_mem_orbit h0
      simp only [lin, qW, Pi.zero_apply, map_zero, mul_zero, Finset.sum_const_zero] at this
      omega
    rw [← Finset.add_sum_erase S _ h0] at hap
    have hz : (∏ i : Fin 1, Φ.u y (fun v => (0 : Fin 1 × Fin s → Φ.X y) (i, v)) c₀ *
        mono W (Φ.t y) (Φ.δ y) (fun v => (0 : Fin 1 × Fin s → Φ.X y) (i, v))) = Φ.u y 0 c₀ := by
      rw [Fin.prod_univ_one]
      show Φ.u y 0 c₀ * mono W (Φ.t y) (Φ.δ y) 0 = Φ.u y 0 c₀
      simp [mono, qW]
    rw [hz] at hap
    have hle : maximalIdeal (Φ.V y) ^ (j + 1) ⊔ (maximalIdeal A ^ e).map (Φ.ev y) ≤
        maximalIdeal (Φ.V y) ^ j ⊔ (maximalIdeal A ^ e).map (Φ.ev y) :=
      sup_le_sup_right (Ideal.pow_le_pow_right (Nat.le_succ j)) _
    have key := Submodule.add_mem _ (hle hap)
      (Ideal.mem_sup_right (Ideal.sum_mem _ fun mu hmu => hterm mu (hS (Finset.mem_of_mem_erase hmu))
        (Finset.ne_of_mem_erase hmu)))
    convert key using 1
    ring
  haveI : IsNoetherianRing (Φ.V y) := (Φ.cn y).1
  exact UnitZero.mem_of_forall_mem_pow_sup _ _ hmem

end GlobalTheory.Poinc.Sep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemIndexZeroCoefficientApprox =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemIndexZeroCoefficientApproxStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemIndexZeroCoefficientApproxStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMemberP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemIndexZeroCoefficientApprox\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemIndexZeroCoefficientApproxStatement =====
