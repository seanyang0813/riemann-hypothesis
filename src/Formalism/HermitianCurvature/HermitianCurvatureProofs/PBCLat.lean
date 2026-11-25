module

public import Formalism.HermitianCurvature.LatticeHerglotzBound
public import Mathlib.MeasureTheory.Constructions.HaarToSphere
public import Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls
public import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
public import Mathlib.MeasureTheory.Integral.Pi
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBCStmt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelSizesJointMean
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PeriodLatticeFactsSplitOfGeneral
public import Lemmata.GeneralBFactRightSide.Imports
import Aesop.Main
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.LatticeSummability, Formalism.HermitianCurvature.HermitianCurvatureProofs.MajorantIntegrals, Formalism.HermitianCurvature.HermitianCurvatureProofs.PBCLat

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LatticeSummability =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.LatticeSummability", "h": "module\n\npublic import Formalism.HermitianCurvature.LatticeHerglotzBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Finset Function

noncomputable section

namespace Formalism.FourierDecayAlt.P.LatticeSummability

open Formalism.FourierDecayAlt.crystallineComparison

theorem mfac_nonneg (K : ℕ) {L : ℝ} (hL : 0 ≤ L) (a : ℝ) (ha : 0 ≤ a) : 0 ≤ mfac K L a := by
  unfold mfac
  split_ifs
  · exact zero_le_one
  · exact le_min zero_le_one (by positivity)

theorem mfac_anti (K : ℕ) {L : ℝ} (hL : 0 < L) {b b' : ℝ} (hb : 0 ≤ b) (hbb : b ≤ b') :
    mfac K L b' ≤ mfac K L b := by
  unfold mfac
  by_cases hb0 : b = 0
  · rw [if_pos hb0]
    split_ifs
    · exact le_rfl
    · exact min_le_left _ _
  · have hbpos : 0 < b := lt_of_le_of_ne hb (Ne.symm hb0)
    have hb'0 : b' ≠ 0 := by linarith
    rw [if_neg hb0, if_neg hb'0]
    refine min_le_min le_rfl (pow_le_pow_left₀ (div_nonneg hL.le (by linarith)) ?_ K)
    exact div_le_div_of_nonneg_left hL.le hbpos hbb

end Formalism.FourierDecayAlt.P.LatticeSummability
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LatticeSummability =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MajorantIntegrals =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.MajorantIntegrals", "h": "module\n\npublic import Formalism.HermitianCurvature.LatticeHerglotzBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Constructions.HaarToSphere\npublic import Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals\npublic import Mathlib.MeasureTheory.Integral.Pi\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set

noncomputable section

namespace Formalism.FourierDecayAlt.P.MajorantIntegrals

open Formalism.FourierDecayAlt.crystallineComparison

theorem radial_eq (K : ℕ) (x : ℝ) (hx : 0 < x) (y : ℝ) (hy : 0 < y) :
    y ^ (Module.finrank ℝ ℂ - 1) • mfac K x y =
      if y ≤ x then y else x ^ K * y ^ ((1 : ℝ) - K) := by
  rw [Complex.finrank_real_complex]
  simp only [mfac, hy.ne', if_false, smul_eq_mul, show 2 - 1 = 1 from rfl, pow_one]
  split_ifs with hxy
  · rw [min_eq_left (one_le_pow₀ ((one_le_div hy).mpr hxy)), mul_one]
  · push Not at hxy
    have h1 : (x / y) ^ K ≤ 1 :=
      pow_le_one₀ (div_nonneg hx.le hy.le) ((div_le_one hy).mpr hxy.le)
    rw [min_eq_right h1, Real.rpow_sub hy, Real.rpow_one, Real.rpow_natCast, div_pow]
    field_simp

theorem volC : (volume : Measure ℂ).real (Metric.ball 0 1) = Real.pi := by
  simp [Measure.real, Complex.volume_ball]

theorem majIntegral_ok : MajIntegral := by
  intro K x hK hx
  have hK' : (2 : ℝ) < K := by exact_mod_cast hK
  have hcongr : EqOn (fun y : ℝ => y ^ (Module.finrank ℝ ℂ - 1) • mfac K x y)
      (fun y => if y ≤ x then y else x ^ K * y ^ ((1 : ℝ) - K)) (Ioi 0) :=
    fun y hy => radial_eq K x hx y hy
  have hIoc : IntegrableOn (fun y : ℝ => y) (Ioc 0 x) :=
    (continuous_id.integrableOn_Icc).mono_set Ioc_subset_Icc_self
  have hIoi : IntegrableOn (fun y : ℝ => x ^ K * y ^ ((1 : ℝ) - K)) (Ioi x) :=
    (integrableOn_Ioi_rpow_of_lt (by linarith) hx).const_mul _
  have hA : IntegrableOn (fun y : ℝ => if y ≤ x then y else x ^ K * y ^ ((1 : ℝ) - K)) (Ioc 0 x) :=
    hIoc.congr_fun (fun y hy => by simp [hy.2]) measurableSet_Ioc
  have hB : IntegrableOn (fun y : ℝ => if y ≤ x then y else x ^ K * y ^ ((1 : ℝ) - K)) (Ioi x) :=
    hIoi.congr_fun (fun y hy => by simp [not_le.mpr (mem_Ioi.mp hy)]) measurableSet_Ioi
  have hint : IntegrableOn (fun y : ℝ => y ^ (Module.finrank ℝ ℂ - 1) • mfac K x y) (Ioi 0) := by
    refine IntegrableOn.congr_fun ?_ hcongr.symm measurableSet_Ioi
    rw [← Ioc_union_Ioi_eq_Ioi hx.le]
    exact hA.union hB
  refine ⟨(integrable_fun_norm_addHaar volume (f := mfac K x)).mpr hint, ?_⟩
  rw [integral_fun_norm_addHaar volume (mfac K x), setIntegral_congr_fun measurableSet_Ioi hcongr,
    ← Ioc_union_Ioi_eq_Ioi hx.le,
    setIntegral_union (Ioc_disjoint_Ioi le_rfl) measurableSet_Ioi hA hB,
    setIntegral_congr_fun measurableSet_Ioc (fun y hy => if_pos hy.2),
    setIntegral_congr_fun measurableSet_Ioi (fun y hy => if_neg (not_le.mpr (mem_Ioi.mp hy))),
    ← intervalIntegral.integral_of_le hx.le, integral_id, integral_const_mul,
    integral_Ioi_rpow_of_lt (by linarith) hx, volC, Complex.finrank_real_complex]
  have e : x ^ K * x ^ ((1 : ℝ) - K + 1) = x ^ 2 := by
    rw [← Real.rpow_natCast, ← Real.rpow_add hx]
    rw [show (K : ℝ) + (1 - K + 1) = ((2 : ℕ) : ℝ) by push_cast; ring, Real.rpow_natCast]
  have hK2 : (K : ℝ) - 2 ≠ 0 := by linarith
  simp only [nsmul_eq_mul, smul_eq_mul, Nat.cast_ofNat]
  rw [neg_div, mul_neg, ← mul_div_assoc, e]
  have hK4 : (1 : ℝ) - K + 1 = -((K : ℝ) - 2) := by ring
  rw [hK4]
  field_simp
  ring

theorem majIntegralProd_ok : MajIntegralProd := by
  intro f K x hK hx
  have h1 := fun v => (majIntegral_ok K (x v) hK (hx v))
  refine ⟨Integrable.fintype_prod (f := fun v (l : ℂ) => mfac K (x v) ‖l‖)
    (μ := fun _ => volume) (fun v => (h1 v).1), ?_⟩
  have h2 := integral_fintype_prod_volume_eq_prod (ι := Fin f) (E := fun _ => ℂ)
    (fun v (l : ℂ) => mfac K (x v) ‖l‖)
  exact h2.trans (Finset.prod_congr rfl (fun v _ => (h1 v).2))

end Formalism.FourierDecayAlt.P.MajorantIntegrals
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MajorantIntegrals =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PBCLat =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PBCLat", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PBCStmt\nimport Aesop.Main\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LatticeSummability\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelSizesJointMean\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MajorantIntegrals\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PeriodLatticeFactsSplitOfGeneral\npublic import Lemmata.GeneralBFactRightSide.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.PBC

open Formalism.FourierDecayAlt Finset Filter Topology NumberField MeasureTheory
open scoped Pointwise

noncomputable section

open Classical

namespace Lat

theorem rd_ge_one (E : Type) [Field E] [NumberField E] : 1 ≤ S6.rd E := by
  unfold S6.rd
  apply Real.one_le_rpow _ (by positivity)
  have h := NumberField.discr_ne_zero E
  have : (1 : ℤ) ≤ |discr E| := Int.one_le_abs h
  exact_mod_cast this

theorem sizesSup : PBC.SizesSup := by
  intro Cs hCs
  refine ⟨Cs, hCs, ?_⟩
  intro E _ _ _ Wp Wq _ _ _ _ S hg1 hg2 hU b n hb hn hthr
  obtain ⟨-, hcard, hdeg⟩ := Formalism.FourierDecayAlt.P.degreeFacts_statement E
  have hf : S.f = S6.deg E := by
    rw [← hcard, ← Fintype.card_fin S.f]; exact Fintype.card_congr S.pl
  have hfpos : 0 < S.f := hf ▸ hdeg
  have : Nonempty (Fin S.f) := ⟨⟨0, hfpos⟩⟩
  have hgN : 0 < S.g := Nat.mul_pos hg1 hg2
  have hg1R : (1 : ℝ) ≤ S.g := by exact_mod_cast hgN
  have hgR : (0 : ℝ) < S.g := by linarith
  have hrd1 := rd_ge_one E
  have hrd : 0 < S6.rd E := by linarith
  have hN' := Formalism.FourierDecayAlt.P.Jx2.sqrt_idl
    Formalism.FourierDecayAlt.P.scaledIdealNorm E S.g (S6.nuBlock S.G.r b n + 1) hgN
  have hN : √(FractionalIdeal.absNorm (S6.dualIdl E S.g (S6.nuBlock S.G.r b n)) : ℝ) =
      (((S.g : ℝ) * S6.rd E ^ (S6.nuBlock S.G.r b n + 1)) ^ S6.deg E)⁻¹ := by
    simpa only [S6.dualIdl] using hN'
  set ν : ℤ := S6.nuBlock S.G.r b n with hν
  set x : ℝ := S6.rd E ^ ν with hx
  have hxpos : 0 < x := zpow_pos hrd _
  rw [zpow_add₀ hrd.ne', zpow_one] at hN
  set m : ℝ := Finset.univ.inf' Finset.univ_nonempty (thr S b n) with hm
  have hmpos : 0 < m := by
    rw [hm, Finset.lt_inf'_iff]; exact fun v _ => hthr v
  have hmle : ∀ v, m ≤ thr S b n v := fun v => Finset.inf'_le _ (Finset.mem_univ v)
  refine ⟨S.g / m, div_pos hgR hmpos, ?_⟩
  set R : ℝ := S.g / m with hR
  have hRpos : 0 < R := div_pos hgR hmpos

  set Nn : ℝ := (FractionalIdeal.absNorm (S6.dualIdl E S.g ν) : ℝ) with hNn
  have hNn0 : 0 ≤ Nn := by
    have : 0 < √Nn := by rw [hN]; positivity
    exact (Real.sqrt_pos.mp this).le
  have hNinv : Nn⁻¹ = ((S.g : ℝ) * (x * S6.rd E)) ^ (2 * S.f) := by
    have h2 : Nn = (√Nn) ^ 2 := (Real.sq_sqrt hNn0).symm
    rw [h2, hN, ← hf]
    rw [inv_pow, inv_inv, ← pow_mul, mul_comm S.f 2]

  have hvol : S.base.vol b n = (∏ v, thr S b n v) ^ 2 * Nn⁻¹ := by
    simp only [C.HidaSetting.base, C.HidaSetting.mkData, thr]
    rw [div_eq_mul_inv]
    congr 2
    exact (Equiv.prod_comp S.pl (fun w => J.thrS S.G S.CA S.de S.de' S.T S.T' S.l b n w)).symm
  have hdlB : KB.dlB S b n = x ^ 2 * (S6.rd E * (S.g : ℝ) ^ 3 / 2) := by
    have e : S6.rd E ^ (2 * ν) = x ^ 2 := by rw [hx, ← zpow_natCast, ← zpow_mul]; ring_nf
    simp only [KB.dlB, D.deG]
    rw [← hν, e]
    field_simp
  rw [hvol, hNinv, hdlB]

  have key : ∀ v, x ^ 2 * (S6.rd E * (S.g : ℝ) ^ 3 / 2) * (Cs * (1 + (R * thr S b n v / S.g) ^ 2)) / R ^ 2 ≤
      Cs * (thr S b n v ^ 2 * ((S.g : ℝ) * (x * S6.rd E)) ^ 2) := by
    intro v
    have ht := hthr v
    have h1 : (1 + (R * thr S b n v / S.g) ^ 2) / R ^ 2 ≤ 2 * thr S b n v ^ 2 / (S.g : ℝ) ^ 2 := by
      rw [div_le_div_iff₀ (by positivity) (by positivity)]
      have hR' : R * m = S.g := by rw [hR]; field_simp
      have hmt : m ^ 2 ≤ thr S b n v ^ 2 := pow_le_pow_left₀ hmpos.le (hmle v) 2
      have : (S.g : ℝ) ^ 2 ≤ R ^ 2 * thr S b n v ^ 2 := by
        rw [← hR', mul_pow]
        exact mul_le_mul_of_nonneg_left hmt (sq_nonneg R)
      have e : (1 + (R * thr S b n v / S.g) ^ 2) * (S.g : ℝ) ^ 2 =
          (S.g : ℝ) ^ 2 + R ^ 2 * thr S b n v ^ 2 := by field_simp
      rw [e]
      grind
    calc x ^ 2 * (S6.rd E * (S.g : ℝ) ^ 3 / 2) * (Cs * (1 + (R * thr S b n v / S.g) ^ 2)) / R ^ 2
        = x ^ 2 * (S6.rd E * (S.g : ℝ) ^ 3 / 2) * Cs * ((1 + (R * thr S b n v / S.g) ^ 2) / R ^ 2) := by ring
      _ ≤ x ^ 2 * (S6.rd E * (S.g : ℝ) ^ 3 / 2) * Cs * (2 * thr S b n v ^ 2 / (S.g : ℝ) ^ 2) :=
          mul_le_mul_of_nonneg_left h1 (by positivity)
      _ = Cs * (thr S b n v ^ 2 * ((S.g : ℝ) * (x * S6.rd E)) ^ 2) * (1 / ((S.g : ℝ) * S6.rd E)) := by
          field_simp
      _ ≤ Cs * (thr S b n v ^ 2 * ((S.g : ℝ) * (x * S6.rd E)) ^ 2) * 1 := by
          apply mul_le_mul_of_nonneg_left _ (by positivity)
          rw [div_le_one (by positivity)]
          exact one_le_mul_of_one_le_of_one_le hg1R hrd1
      _ = _ := mul_one _
  calc (∏ _v : Fin S.f, x ^ 2 * (S6.rd E * (S.g : ℝ) ^ 3 / 2)) *
        (∏ v, Cs * (1 + (R * thr S b n v / S.g) ^ 2)) / R ^ (2 * S.f)
      = ∏ v, x ^ 2 * (S6.rd E * (S.g : ℝ) ^ 3 / 2) * (Cs * (1 + (R * thr S b n v / S.g) ^ 2)) / R ^ 2 := by
        conv_rhs => rw [Finset.prod_div_distrib, Finset.prod_mul_distrib]
        simp only [Finset.prod_const, Finset.card_univ, Fintype.card_fin]
        rw [pow_mul]
    _ ≤ ∏ v, Cs * (thr S b n v ^ 2 * ((S.g : ℝ) * (x * S6.rd E)) ^ 2) :=
        Finset.prod_le_prod₀ (fun v _ => by have := hthr v; positivity) (fun v _ => key v)
    _ = Cs ^ S.f * ((∏ v, thr S b n v) ^ 2 * ((S.g : ℝ) * (x * S6.rd E)) ^ (2 * S.f)) := by
        rw [Finset.prod_mul_distrib, Finset.prod_const, Finset.card_univ, Fintype.card_fin,
          Finset.prod_mul_distrib, Finset.prod_pow, Finset.prod_const, Finset.card_univ, Fintype.card_fin,
          ← pow_mul, mul_comm 2 S.f]

theorem psi_add {f : ℕ} (a b : crystallineComparison.V f) : crystallineComparison.psi (a + b) = crystallineComparison.psi a * crystallineComparison.psi b := by
  unfold crystallineComparison.psi
  rw [← Complex.exp_add, ← mul_add, ← Finset.sum_add_distrib]
  congr 2
  refine Finset.sum_congr rfl (fun v _ => ?_)
  simp only [Pi.add_apply, map_add (f := _)]
  ring

theorem psi_zero {f : ℕ} : crystallineComparison.psi (0 : crystallineComparison.V f) = 1 := by simp [crystallineComparison.psi]

theorem psi_single {f : ℕ} (v : Fin f) (w : ℂ) :
    crystallineComparison.psi (Pi.single v w : crystallineComparison.V f) = Complex.exp (2 * Real.pi * Complex.I * (w + (starRingEnd ℂ) w)) := by
  unfold crystallineComparison.psi
  congr 2
  rw [Finset.sum_eq_single v]
  · simp
  · intro u _ hu; simp [hu]
  · simp

theorem mul_single {f : ℕ} (σ : crystallineComparison.V f) (v : Fin f) (w : ℂ) :
    σ * (Pi.single v w : crystallineComparison.V f) = Pi.single v (σ v * w) := by
  funext u
  by_cases h : u = v
  · subst h; simp
  · simp [h]

def gen (f : ℕ) (R : ℝ) (p : Fin f × Bool) : crystallineComparison.V f :=
  Pi.single p.1 (if p.2 then (R : ℂ) * Complex.I else (R : ℂ))

theorem lstd_eq (f : ℕ) (R : ℝ) : Lstd f R = Submodule.span ℤ (Set.range (gen f R)) := rfl

def kerPsi {f : ℕ} (σ : crystallineComparison.V f) : AddSubgroup (crystallineComparison.V f) where
  carrier := {z | crystallineComparison.psi (σ * z) = 1}
  zero_mem' := by simp [psi_zero]
  add_mem' {a b} ha hb := by
    simp only [Set.mem_ofPred_eq] at ha hb ⊢
    rw [mul_add, psi_add, ha, hb, one_mul]
  neg_mem' {a} ha := by
    simp only [Set.mem_ofPred_eq] at ha ⊢
    have h := psi_add (σ * -a) (σ * a)
    rw [← mul_add, neg_add_cancel, mul_zero, psi_zero, ha, mul_one] at h
    exact h.symm

theorem mem_dual_iff (f : ℕ) (R : ℝ) (hR : 0 < R) (σ : crystallineComparison.V f) :
    σ ∈ crystallineComparison.dualSet (Lstd f R) ↔
      ∀ v, ∃ a b : ℤ, σ v = ((a : ℂ) + (b : ℂ) * Complex.I) / (2 * (R : ℂ)) := by
  have hR' : (R : ℂ) ≠ 0 := by exact_mod_cast hR.ne'
  have hgen : ∀ v (β : Bool), crystallineComparison.psi (σ * gen f R (v, β)) = 1 ↔
      ∃ n : ℤ, (if β then -(2 * R * (σ v).im) else 2 * R * (σ v).re) = n := by
    intro v β
    rw [gen, mul_single, psi_single, Complex.add_conj,
      ← _root_.Bl.general_b_fact_right_side.goal1]
    congr! 4
    cases β <;> simp [Complex.mul_re, Complex.mul_im] <;> ring
  constructor
  · intro h v
    obtain ⟨a, ha⟩ := (hgen v false).1 (h _ (Submodule.subset_span ⟨(v, false), rfl⟩))
    obtain ⟨c, hc⟩ := (hgen v true).1 (h _ (Submodule.subset_span ⟨(v, true), rfl⟩))
    simp only [if_false, if_true, Bool.false_eq_true] at ha hc
    refine ⟨a, -c, ?_⟩
    rw [eq_div_iff (by simp [hR'])]
    apply Complex.ext
    · simp [Complex.mul_re]; linarith
    · simp [Complex.mul_im]; linarith
  · intro h z hz
    have hle : Lstd f R ≤ AddSubgroup.toIntSubmodule (kerPsi σ) := by
      rw [lstd_eq, Submodule.span_le]
      rintro _ ⟨⟨v, β⟩, rfl⟩
      show crystallineComparison.psi (σ * gen f R (v, β)) = 1
      rw [hgen]
      obtain ⟨a, b, hab⟩ := h v
      have h2 : σ v * (2 * (R : ℂ)) = (a : ℂ) + (b : ℂ) * Complex.I := by
        rw [hab]; field_simp
      have hre : 2 * R * (σ v).re = a := by
        have := congrArg Complex.re h2
        simp [Complex.mul_re] at this; linarith
      have him : 2 * R * (σ v).im = b := by
        have := congrArg Complex.im h2
        simp [Complex.mul_im] at this; linarith
      cases β
      · exact ⟨a, by simpa using hre⟩
      · exact ⟨-b, by simp [him]⟩
    exact hle hz

def eqv (f : ℕ) : (Σ _ : Fin f, Fin 2) ≃ Fin f × Bool :=
  (Equiv.sigmaEquivProd (Fin f) (Fin 2)).trans (Equiv.prodCongr (Equiv.refl _) finTwoEquiv)

def b0 (f : ℕ) : Module.Basis (Fin f × Bool) ℝ (crystallineComparison.V f) :=
  (Pi.basis fun _ : Fin f => Complex.basisOneI).reindex (eqv f)

theorem standard_lattice_basis_apply (f : ℕ) (v : Fin f) (β : Bool) :
    b0 f (v, β) = (Pi.single v (if β then Complex.I else 1) : crystallineComparison.V f) := by
  cases β <;> simp [b0, eqv, Pi.basis_apply] <;> rfl

theorem standard_lattice_basis_repr (f : ℕ) (m : crystallineComparison.V f) (v : Fin f) (β : Bool) :
    (b0 f).repr m (v, β) = if β then (m v).im else (m v).re := by
  rw [b0, Module.Basis.repr_reindex_apply]
  cases β <;> simp [eqv, Pi.basis_repr] <;> rfl

def bR (f : ℕ) (R : ℝ) (hR : 0 < R) : Module.Basis (Fin f × Bool) ℝ (crystallineComparison.V f) :=
  (b0 f).isUnitSMul (w := fun _ => R) (fun _ => hR.ne'.isUnit)

theorem bR_eq (f : ℕ) (R : ℝ) (hR : 0 < R) : ⇑(bR f R hR) = gen f R := by
  funext p
  obtain ⟨v, β⟩ := p
  rw [bR, Module.Basis.isUnitSMul_apply, standard_lattice_basis_apply, gen]
  cases β <;> funext u <;> by_cases h : u = v <;> simp_all [Complex.real_smul]

theorem fundamentalDomain_standard_basis_eq (f : ℕ) : ZSpan.fundamentalDomain (b0 f) =
    Set.pi Set.univ (fun _ : Fin f => {z : ℂ | z.re ∈ Set.Ico (0 : ℝ) 1 ∧ z.im ∈ Set.Ico (0 : ℝ) 1}) := by
  ext m
  simp only [ZSpan.fundamentalDomain, Set.mem_ofPred_eq, Set.mem_pi, Set.mem_univ, true_implies, Prod.forall,
    standard_lattice_basis_repr, Bool.forall_bool, if_false, if_true, Bool.false_eq_true]

theorem vol_square : (volume : Measure ℂ) {z : ℂ | z.re ∈ Set.Ico (0 : ℝ) 1 ∧ z.im ∈ Set.Ico (0 : ℝ) 1} = 1 := by
  have h : {z : ℂ | z.re ∈ Set.Ico (0 : ℝ) 1 ∧ z.im ∈ Set.Ico (0 : ℝ) 1} =
      Complex.measurableEquivRealProd ⁻¹' (Set.Ico (0 : ℝ) 1 ×ˢ Set.Ico (0 : ℝ) 1) := by
    ext z; simp [Complex.measurableEquivRealProd]
  rw [h, Complex.volume_preserving_equiv_real_prod.measure_preimage
    ((measurableSet_Ico.prod measurableSet_Ico).nullMeasurableSet), Measure.volume_eq_prod,
    Measure.prod_prod, Real.volume_Ico]
  simp

theorem volume_fundamentalDomain_standard_basis (f : ℕ) : (volume : Measure (crystallineComparison.V f)) (ZSpan.fundamentalDomain (b0 f)) = 1 := by
  rw [fundamentalDomain_standard_basis_eq, volume_pi_pi, Finset.prod_eq_one (fun _ _ => vol_square)]

theorem fd_bR (f : ℕ) (R : ℝ) (hR : 0 < R) :
    ZSpan.fundamentalDomain (bR f R hR) = R • ZSpan.fundamentalDomain (b0 f) := by
  ext m
  rw [Set.mem_smul_set_iff_inv_smul_mem₀ hR.ne']
  simp only [ZSpan.fundamentalDomain, Set.mem_ofPred_eq, bR, Module.Basis.repr_isUnitSMul, map_smul,
    Finsupp.smul_apply, smul_eq_mul]
  constructor <;> intro h i <;> simpa [Units.smul_def, Units.val_inv_eq_inv_val, IsUnit.unit_spec] using h i

theorem finrank_V (f : ℕ) : Module.finrank ℝ (crystallineComparison.V f) = 2 * f := by
  rw [Module.finrank_pi_fintype]
  simp [Complex.finrank_real_complex, mul_comm]

theorem lstdFacts : PBC.LstdFacts := by
  intro f R hR
  rw [lstd_eq, ← bR_eq f R hR]
  refine ⟨inferInstance, inferInstance, ?_, ?_⟩
  · rw [ZLattice.covolume_eq_measure_fundamentalDomain _ _ (ZSpan.isAddFundamentalDomain (bR f R hR) volume),
      fd_bR, Measure.real, Measure.addHaar_smul, volume_fundamentalDomain_standard_basis, finrank_V]
    simp [abs_of_pos hR, hR.le]
  · intro σ
    rw [bR_eq, ← lstd_eq]
    exact mem_dual_iff f R hR σ

theorem mfac_scale (K : ℕ) (L g a : ℝ) (hg : 0 < g) :
    crystallineComparison.mfac K L (g * a) = crystallineComparison.mfac K (L / g) a := by
  unfold crystallineComparison.mfac
  by_cases h : a = 0
  · simp [h]
  · rw [if_neg (mul_ne_zero hg.ne' h), if_neg h]
    congr 2
    field_simp

theorem mL_scale {f : ℕ} (K : ℕ) (L : Fin f → ℝ) (g : ℝ) (hg : 0 < g) (σ : crystallineComparison.V f) :
    crystallineComparison.mL K L (g • σ) = crystallineComparison.mL K (fun v => L v / g) σ := by
  unfold crystallineComparison.mL
  refine Finset.prod_congr rfl (fun v _ => ?_)
  rw [Pi.smul_apply, norm_smul, Real.norm_eq_abs, abs_of_pos hg, mfac_scale K _ g _ hg]

theorem mfac_shift0 (K : ℕ) {L δ : ℝ} (hL : 0 ≤ L) (hδ : 0 < δ) {a : ℝ} (ha : 0 ≤ a) :
    crystallineComparison.mfac K L a ≤ crystallineComparison.mfac K (L + δ) (a + δ) := by
  have had : 0 < a + δ := by linarith
  unfold crystallineComparison.mfac
  rw [if_neg had.ne']
  split_ifs with h0
  · subst h0
    rw [min_eq_left (one_le_pow₀ ((one_le_div (by linarith)).mpr (by linarith)))]
  · have hapos : 0 < a := lt_of_le_of_ne ha (Ne.symm h0)
    rcases le_or_gt a L with haL | haL
    · rw [min_eq_left (one_le_pow₀ ((one_le_div had).mpr (by linarith)))]
      exact min_le_left _ _
    · apply min_le_min_left
      apply pow_le_pow_left₀ (div_nonneg hL ha)
      rw [div_le_div_iff₀ hapos had]
      nlinarith

theorem gauss_norm (m n : ℤ) (h : (m : ℂ) + (n : ℂ) * Complex.I ≠ 0) :
    1 ≤ ‖(m : ℂ) + (n : ℂ) * Complex.I‖ := by
  have hmn : m ≠ 0 ∨ n ≠ 0 := by
    by_contra hc; push Not at hc; apply h; simp [hc.1, hc.2]
  have hsq : (1 : ℝ) ≤ (m : ℝ) ^ 2 + (n : ℝ) ^ 2 := by
    rcases hmn with hm | hn
    · have : (1 : ℤ) ≤ m ^ 2 := by rw [← sq_abs m]; exact one_le_pow₀ (Int.one_le_abs hm)
      have : (1 : ℝ) ≤ (m : ℝ) ^ 2 := by exact_mod_cast this
      linarith [sq_nonneg (n : ℝ)]
    · have : (1 : ℤ) ≤ n ^ 2 := by rw [← sq_abs n]; exact one_le_pow₀ (Int.one_le_abs hn)
      have : (1 : ℝ) ≤ (n : ℝ) ^ 2 := by exact_mod_cast this
      linarith [sq_nonneg (m : ℝ)]
  rw [← Real.sqrt_one, Complex.norm_def, Complex.normSq_apply]
  apply Real.sqrt_le_sqrt
  simp; rw [← sq, ← sq]; exact hsq

theorem dual_sep (f : ℕ) (R : ℝ) (hR : 0 < R) (σ σ' : crystallineComparison.V f) (hσ : σ ∈ crystallineComparison.dualSet (Lstd f R))
    (hσ' : σ' ∈ crystallineComparison.dualSet (Lstd f R)) (hne : σ ≠ σ') : 1 / (2 * R) ≤ ‖σ - σ'‖ := by
  obtain ⟨v, hv⟩ : ∃ v, σ v ≠ σ' v := by
    by_contra h; push Not at h; exact hne (funext h)
  obtain ⟨a, b, hab⟩ := (mem_dual_iff f R hR σ).1 hσ v
  obtain ⟨a', b', hab'⟩ := (mem_dual_iff f R hR σ').1 hσ' v
  have hd : σ v - σ' v = (((a - a' : ℤ) : ℂ) + ((b - b' : ℤ) : ℂ) * Complex.I) / (2 * (R : ℂ)) := by
    rw [hab, hab']; push_cast; field_simp; ring
  have hnz : (((a - a' : ℤ) : ℂ) + ((b - b' : ℤ) : ℂ) * Complex.I) ≠ 0 := by
    intro h0; apply hv; rw [← sub_eq_zero, hd, h0, zero_div]
  calc 1 / (2 * R) ≤ ‖(((a - a' : ℤ) : ℂ) + ((b - b' : ℤ) : ℂ) * Complex.I)‖ / (2 * R) :=
        div_le_div_of_nonneg_right (gauss_norm _ _ hnz) (by positivity)
    _ = ‖σ v - σ' v‖ := by
        rw [hd, norm_div]; congr 1; simp [abs_of_pos hR]
    _ = ‖(σ - σ') v‖ := rfl
    _ ≤ ‖σ - σ'‖ := norm_le_pi_norm (σ - σ') v

theorem vol_ball_V (f : ℕ) (δ : ℝ) (hδ : 0 < δ) :
    (volume : Measure (crystallineComparison.V f)).real (Metric.ball 0 δ) = (Real.pi * δ ^ 2) ^ f := by
  rw [Measure.real, volume_pi_ball _ hδ]
  simp only [Pi.zero_apply, Complex.volume_ball, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
  rw [ENNReal.toReal_pow, ENNReal.toReal_mul, ENNReal.toReal_pow, ENNReal.toReal_ofReal hδ.le]
  simp [mul_comm]

theorem lstdSum : PBC.LstdSum := by
  refine ⟨54, by norm_num, ?_⟩
  intro f R g L hR hg hL
  set K := C.Kst with hKdef
  have hK : 2 < K := by simp [hKdef, C.Kst]
  set large₂ : Fin f → ℝ := fun v => L v / g with hLg
  have hLg0 : ∀ v, 0 ≤ large₂ v := fun v => div_nonneg (hL v) hg.le
  set δ : ℝ := 1 / (4 * R) with hδdef
  have hδ : 0 < δ := by positivity
  set L' : Fin f → ℝ := fun v => large₂ v + δ with hL'
  have hL'pos : ∀ v, 0 < L' v := fun v => by simp only [hL']; linarith [hLg0 v]
  have hmaj := Formalism.FourierDecayAlt.P.MajorantIntegrals.majIntegralProd_ok f K L' hK hL'pos
  have hint := hmaj.1
  have hnn : ∀ y : crystallineComparison.V f, 0 ≤ crystallineComparison.mL K L' y := fun y =>
    Finset.prod_nonneg (fun v _ => Formalism.FourierDecayAlt.P.LatticeSummability.mfac_nonneg K (hL'pos v).le _ (norm_nonneg _))
  set vb := (volume : Measure (crystallineComparison.V f)).real (Metric.ball 0 δ) with hvb
  have hvb0 : 0 < vb := by rw [hvb, vol_ball_V f δ hδ]; positivity
  have hvbσ : ∀ σ : crystallineComparison.V f, (volume : Measure (crystallineComparison.V f)).real (Metric.ball σ δ) = vb := by
    intro σ; rw [hvb, Measure.real, Measure.real, Measure.addHaar_ball_center]
  have hpt : ∀ σ : crystallineComparison.V f, ∀ y ∈ Metric.ball σ δ, crystallineComparison.mL K large₂ σ ≤ crystallineComparison.mL K L' y := by
    intro σ y hy
    apply Finset.prod_le_prod₀ (fun v _ => Formalism.FourierDecayAlt.P.LatticeSummability.mfac_nonneg K (hLg0 v) _ (norm_nonneg _))
    intro v _
    have hyv : ‖y v‖ ≤ ‖σ v‖ + δ := by
      have h1 : ‖y v - σ v‖ ≤ ‖y - σ‖ := norm_le_pi_norm (y - σ) v
      have h2 : ‖y - σ‖ < δ := by rw [← dist_eq_norm]; exact hy
      have h3 : ‖y v‖ ≤ ‖σ v‖ + ‖y v - σ v‖ := by
        calc ‖y v‖ = ‖σ v + (y v - σ v)‖ := by ring_nf
          _ ≤ _ := norm_add_le _ _
      linarith
    exact (mfac_shift0 K (hLg0 v) hδ (norm_nonneg _)).trans
      (Formalism.FourierDecayAlt.P.LatticeSummability.mfac_anti K (hL'pos v) (norm_nonneg _) hyv)
  have hloc : ∀ σ : crystallineComparison.V f, crystallineComparison.mL K large₂ σ * vb ≤ ∫ y in Metric.ball σ δ, crystallineComparison.mL K L' y := by
    intro σ
    rw [← hvbσ σ, mul_comm, ← smul_eq_mul, ← setIntegral_const]
    exact setIntegral_mono_on (integrableOn_const (measure_ball_lt_top).ne) hint.integrableOn
      measurableSet_ball (fun y hy => hpt σ y hy)
  have hsum : ∀ u : Finset (crystallineComparison.dualSet (Lstd f R)),
      ∑ σ ∈ u, crystallineComparison.mL K L (g • (σ : crystallineComparison.V f)) ≤ (∫ y, crystallineComparison.mL K L' y) / vb := by
    intro u
    simp only [mL_scale K L g hg]
    rw [le_div_iff₀ hvb0, Finset.sum_mul]
    have hdisj : Set.Pairwise (↑u : Set (crystallineComparison.dualSet (Lstd f R)))
        (Function.onFun Disjoint fun σ : crystallineComparison.dualSet (Lstd f R) => Metric.ball (σ : crystallineComparison.V f) δ) := by
      intro σ _ σ' _ hne
      apply Metric.ball_disjoint_ball
      have := dual_sep f R hR σ σ' σ.2 σ'.2 (fun h => hne (Subtype.ext h))
      rw [dist_eq_norm]
      have e : δ + δ = 1 / (2 * R) := by rw [hδdef]; field_simp; ring
      linarith
    calc ∑ σ ∈ u, crystallineComparison.mL K large₂ (σ : crystallineComparison.V f) * vb
        ≤ ∑ σ ∈ u, ∫ y in Metric.ball (σ : crystallineComparison.V f) δ, crystallineComparison.mL K L' y :=
          Finset.sum_le_sum (fun σ _ => hloc σ)
      _ = ∫ y in ⋃ σ ∈ u, Metric.ball (σ : crystallineComparison.V f) δ, crystallineComparison.mL K L' y :=
          (integral_biUnion_finset u (fun σ _ => measurableSet_ball) hdisj
            (fun σ _ => hint.integrableOn)).symm
      _ ≤ ∫ y, crystallineComparison.mL K L' y := setIntegral_le_integral hint (Filter.Eventually.of_forall hnn)
  have hnng : ∀ σ : crystallineComparison.dualSet (Lstd f R), 0 ≤ crystallineComparison.mL K L (g • (σ : crystallineComparison.V f)) := fun σ =>
    Finset.prod_nonneg (fun v _ => Formalism.FourierDecayAlt.P.LatticeSummability.mfac_nonneg K (hL v) _ (norm_nonneg _))
  have hS : Summable (fun σ : crystallineComparison.dualSet (Lstd f R) => crystallineComparison.mL K L (g • (σ : crystallineComparison.V f))) :=
    summable_of_sum_le hnng hsum
  refine ⟨hS, (hS.tsum_le_of_sum_le hsum).trans ?_⟩

  rw [hmaj.2, hvb, vol_ball_V f δ hδ, show (Real.pi * δ ^ 2) ^ f = ∏ _v : Fin f, (Real.pi * δ ^ 2) by simp]
  rw [← Finset.prod_div_distrib]
  apply Finset.prod_le_prod₀
  · intro v _
    have hK2 : (0 : ℝ) < (K : ℝ) - 2 := by simp [hKdef, C.Kst]; norm_num
    have := hL'pos v
    exact div_nonneg (div_nonneg (by positivity) hK2.le) (by positivity)
  intro v _
  have hKr : (K : ℝ) = 5 := by simp [hKdef, C.Kst]
  rw [hKr]
  set x : ℝ := R * L v / g with hxdef
  have hx0 : 0 ≤ x := by have := hL v; positivity
  have hx : L' v = 4 * δ * x + δ := by
    show L v / g + δ = _
    rw [hxdef, hδdef]; field_simp
  rw [hx]
  have e : Real.pi * (4 * δ * x + δ) ^ 2 * 5 / (5 - 2) / (Real.pi * δ ^ 2) = (4 * x + 1) ^ 2 * 5 / 3 := by
    field_simp; ring
  rw [e]
  have hdiff : 54 * (1 + x ^ 2) - (4 * x + 1) ^ 2 * 5 / 3 =
      (20 * (x - 1) ^ 2 + 62 * x ^ 2 + 137) / 3 := by ring
  linarith [sq_nonneg (x - 1), sq_nonneg x]

end Lat

end

end Formalism.FourierDecayAlt.P.PBC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PBCLat =====
