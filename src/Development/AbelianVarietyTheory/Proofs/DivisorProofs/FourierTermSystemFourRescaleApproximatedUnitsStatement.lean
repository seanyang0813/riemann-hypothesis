module

public import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMemberP
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Development.AbelianVarietyTheory.Definitions.Divisors.FromBase
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemFourRescaleApproximatedUnits, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemFourRescaleApproximatedUnitsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemFourRescaleApproximatedUnits =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemFourRescaleApproximatedUnits", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMemberP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Poinc.VPre

theorem four_rescale : ∀ (O : Type) [CommRing O] (bar : O → O) (q s : ℕ) (W : Matrix (Fin s) (Fin s) ℤ) (A : Type) [CommRing A] [IsLocalRing A] (Φ : VPre bar q W A) (N₁ : ℕ), Φ.Four N₁ → ∀ v : ∀ y, (Φ.V y)ˣ, (∀ e : ℕ, ∃ a : A, ∀ y, Φ.ev y a - ((v y)⁻¹ : (Φ.V y)ˣ) ∈ (maximalIdeal A ^ e).map (Φ.ev y)) → (Φ.rescale v).Four N₁ := by
  intro O _ bar q s W A _ _ Φ N₁ hF w hw (y₀ : Φ.Y) N₀
  obtain ⟨N, hN0, hN1, k, hk0, hku, hmain⟩ := hF y₀ N₀
  refine ⟨N, hN0, hN1, k, hk0, hku, ?_⟩
  intro l a c e
  obtain ⟨f, hf⟩ := hmain l a c e
  obtain ⟨b, hb⟩ := hw (e + 1)

  have hmax : ∀ (y : Φ.Y) (x : A), x ∈ maximalIdeal A → Φ.ev y x ∈ maximalIdeal (Φ.V y) := by
    intro y x hx
    haveI := Φ.ev_loc y
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    exact (IsLocalRing.mem_maximalIdeal _ |>.mp hx) (isUnit_of_map_unit (Φ.ev y) x hu)
  have hle : ∀ y : Φ.Y, (maximalIdeal A ^ (e + 1)).map (Φ.ev y) ≤ maximalIdeal (Φ.V y) := by
    intro y
    rw [Ideal.map_le_iff_le_comap]
    exact le_trans (Ideal.pow_le_self (Nat.succ_ne_zero e)) (fun x hx => hmax y x hx)
  have hbu : IsUnit b := by
    by_contra hn
    have hbm : b ∈ maximalIdeal A := (IsLocalRing.mem_maximalIdeal _).mpr hn
    have h1 : Φ.ev y₀ b ∈ maximalIdeal (Φ.V y₀) := hmax y₀ b hbm
    have h2 := hle y₀ (hb y₀)
    have h3 : (((w y₀)⁻¹ : (Φ.V y₀)ˣ) : Φ.V y₀) ∈ maximalIdeal (Φ.V y₀) := by
      have := Ideal.sub_mem _ h1 h2
      simpa using this
    exact (IsLocalRing.mem_maximalIdeal _ |>.mp h3) (Units.isUnit _)
  refine ⟨f * ((hbu.unit⁻¹ : Aˣ) : A) ^ l, fun (y : Φ.Y) j => ?_⟩
  obtain ⟨S, hS1, hS2, hS3⟩ := hf y j
  refine ⟨S, hS1, hS2, ?_⟩
  set J := maximalIdeal (Φ.V y) ^ j ⊔ (maximalIdeal A ^ e).map (Φ.ev y) with hJ
  have hIe : (maximalIdeal A ^ (e + 1)).map (Φ.ev y) ≤ J :=
    le_trans (Ideal.map_mono (Ideal.pow_le_pow_right (Nat.le_succ e))) le_sup_right
  set z : Φ.V y := Φ.ev y ((hbu.unit⁻¹ : Aˣ) : A) with hz
  set ww : Φ.V y := ((w y : (Φ.V y)ˣ) : Φ.V y) with hww
  have hzb : z * Φ.ev y b = 1 := by
    rw [hz, ← map_mul]
    simp
  have hzw : z - ww ∈ J := by
    apply hIe
    have h := (hb y)
    have hx : z - ww = -(z * ww * (Φ.ev y b - (((w y)⁻¹ : (Φ.V y)ˣ) : Φ.V y))) := by
      have : ww * (((w y)⁻¹ : (Φ.V y)ˣ) : Φ.V y) = 1 := by simp [hww]
      linear_combination ww * hzb - z * this
    rw [hx]
    exact neg_mem (Ideal.mul_mem_left _ _ h)
  have hprod : ∀ mu : Fin l × Fin s → Φ.X y,
      (∏ i, (Φ.u y (fun x => mu (i, x)) (c i) * ww) * mono W (Φ.t y) (Φ.δ y) (fun x => mu (i, x)))
        = (∏ i, Φ.u y (fun x => mu (i, x)) (c i) * mono W (Φ.t y) (Φ.δ y) (fun x => mu (i, x))) * ww ^ l := by
    intro mu
    rw [show (fun i => Φ.u y (fun x => mu (i, x)) (c i) * ww * mono W (Φ.t y) (Φ.δ y) (fun x => mu (i, x)))
        = fun i => (Φ.u y (fun x => mu (i, x)) (c i) * mono W (Φ.t y) (Φ.δ y) (fun x => mu (i, x))) * ww from
        funext fun i => by ring]
    rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
  show Φ.ev y (f * ((hbu.unit⁻¹ : Aˣ) : A) ^ l) - ∑ mu ∈ S, (∏ i, (Φ.u y (fun x => mu (i, x)) (c i) * ww) * mono W (Φ.t y) (Φ.δ y) (fun x => mu (i, x))) ∈ J
  simp_rw [hprod]
  rw [← Finset.sum_mul, map_mul, map_pow, ← hz]
  set P := ∑ mu ∈ S, ∏ i, Φ.u y (fun x => mu (i, x)) (c i) * mono W (Φ.t y) (Φ.δ y) (fun x => mu (i, x))
  have hd : z ^ l - ww ^ l ∈ J := by
    obtain ⟨r, hr⟩ := sub_dvd_pow_sub_pow z ww l
    rw [hr]
    exact Ideal.mul_mem_right _ _ hzw
  have : Φ.ev y f * z ^ l - P * ww ^ l = z ^ l * (Φ.ev y f - P) + P * (z ^ l - ww ^ l) := by ring
  rw [this]
  exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ hS3) (Ideal.mul_mem_left _ _ hd)

end GlobalTheory.Poinc.VPre
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemFourRescaleApproximatedUnits =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemFourRescaleApproximatedUnitsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemFourRescaleApproximatedUnitsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMemberP\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemFourRescaleApproximatedUnits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
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
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FourierTermSystemFourRescaleApproximatedUnitsStatement =====
