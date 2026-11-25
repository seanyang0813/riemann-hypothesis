module

public import Formalism.LocalToGlobal.CharacterGerms.CoeffOneSubstCurve
public import Formalism.LocalToGlobal.CharacterGerms.FirstVanishingAt
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePGerm
public import Formalism.LocalToGlobal.CharacterGerms.CoeffLMulCvFrob
public import Formalism.LocalToGlobal.CharacterGerms.ConstantZeroFirstThenZero
public import Formalism.LocalToGlobal.CharacterGerms.FirstVanishingCore
public import Formalism.LocalToGlobal.CharacterGerms.PderivDoubleMultiplicationJacobian
public import Formalism.LocalToGlobal.CharacterGerms.RowTieAxes
public import Formalism.LocalToGlobal.CharacterGerms.RankMaximalOfNondegenerateOfUnitSeriesIntegral
public import Formalism.LocalToGlobal.CharacterGerms.ConstantZeroDoubleMultiplicationPair
public import Formalism.LocalToGlobal.CharacterGerms.GermEvalOneStandardPointSelf
public import Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd
public import Formalism.LocalToGlobal.CharacterGerms.MaximalOfValuationGeOne
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePOActSelf
public import Formalism.LocalToGlobal.CharacterGerms.RowTieSelfCuts
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePAddCvSelf
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePStartSelf
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePKeyDef
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePProjLieSelf
public import Formalism.LocalToGlobal.CharacterGerms.FunEqCoreHolds
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePKeyEig2
import Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule
import Formalism.LocalToGlobal.CharacterGerms.RowTieCartFB
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.CharacterGerms.EndomorphismLimitIntegral
import Formalism.LocalToGlobal.CharacterGerms.RowTiePLSmallMain

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.CharacterGerms.ConstantZeroMultiplicationPair, Formalism.LocalToGlobal.CharacterGerms.ConstantZeroCompCoordinate, Formalism.LocalToGlobal.CharacterGerms.LinearPartUnitFrobenius, Formalism.LocalToGlobal.CharacterGerms.UncurryLinearCombination, Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfCore, Formalism.LocalToGlobal.CharacterGerms.MmOfUnitMul, Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfOfProjection, Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfUnconditional

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.ConstantZeroMultiplicationPair =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.ConstantZeroMultiplicationPair", "h": "module\n\nimport Formalism.LocalToGlobal.CharacterGerms.CoeffOneSubstCurve\npublic import Formalism.LocalToGlobal.CharacterGerms.FirstVanishingAt\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePGerm\nimport Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule\npublic import Formalism.LocalToGlobal.CharacterGerms.CoeffLMulCvFrob\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantZeroFirstThenZero\npublic import Formalism.LocalToGlobal.CharacterGerms.FirstVanishingCore\npublic import Formalism.LocalToGlobal.CharacterGerms.PderivDoubleMultiplicationJacobian\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieAxes\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartFB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

namespace ZeroAxisEmbedding

open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ PartialDerivEval MaximalIdealCongruence

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}

def io0 (μ : Fin 1 × Fin dd →₀ ℕ) : Fin 2 × Fin dd →₀ ℕ := μ.mapDomain (fun q => ((0 : Fin 2), q.2))

theorem zero_axis_embedding_injective : Function.Injective (fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) := by
  intro a b h
  exact Prod.ext (Subsingleton.elim _ _) (Prod.ext_iff.1 h).2

theorem prod_E (d : Fin 2 × Fin dd →₀ ℕ) :
    (d.prod fun p m => ((![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) p.1 p.2) ^ m) =
      if ∀ i, d ((1 : Fin 2), i) = 0 then
        MvPowerSeries.monomial (d.comapDomain (fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) zero_axis_embedding_injective.injOn) 1
      else 0 := by
  split_ifs with h
  · have hsupp : ∀ p ∈ d.support, p.1 = 0 := by
      intro p hp
      by_contra h1
      have : p.1 = 1 := by
        have := p.1.isLt
        omega
      have h2 := h p.2
      rw [show ((1 : Fin 2), p.2) = p from Prod.ext this.symm rfl] at h2
      exact (Finsupp.mem_support_iff.1 hp) h2
    have hd : d = io0 (d.comapDomain (fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) zero_axis_embedding_injective.injOn) := by
      unfold io0
      rw [Finsupp.mapDomain_comapDomain _ zero_axis_embedding_injective]
      intro p hp
      refine ⟨((0 : Fin 1), p.2), ?_⟩
      exact Prod.ext (hsupp p (by simpa using hp)).symm rfl
    conv_lhs => rw [hd]
    unfold io0
    rw [Finsupp.prod_mapDomain_index (fun _ => pow_zero _) (fun _ _ _ => pow_add _ _ _)]
    have hf : ∀ a : Fin 1 × Fin dd, ((![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) ((0 : Fin 2), a.2).1 ((0 : Fin 2), a.2).2) =
        (MvPowerSeries.X a : PS C 1 dd) := fun a => by
      obtain ⟨k, j⟩ := a
      fin_cases k
      rfl
    rw [Finsupp.prod_congr (g2 := fun (a : Fin 1 × Fin dd) (m : ℕ) => (MvPowerSeries.X a : PS C 1 dd) ^ m)
      (fun a _ => congrArg (fun t => t ^ _) (hf a))]
    have h3 := prod_X_rename (C := C) (fun q : Fin 1 × Fin dd => q)
      ((d.comapDomain (fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) zero_axis_embedding_injective.injOn))
    rw [h3]
    exact congrArg (fun e => (MvPowerSeries.monomial e (1 : C) : PS C 1 dd)) (Finsupp.mapDomain_id (M := ℕ))
  · push Not at h
    obtain ⟨i, hi⟩ := h
    apply Finset.prod_eq_zero (i := ((1 : Fin 2), i)) (Finsupp.mem_support_iff.2 hi)
    show ((0 : Pt C 1 dd) i) ^ d ((1 : Fin 2), i) = 0
    rw [Pi.zero_apply, zero_pow hi]

theorem coeff_E (G : PS C 2 dd) (μ : Fin 1 × Fin dd →₀ ℕ) :
    MvPowerSeries.coeff μ (ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) G) = MvPowerSeries.coeff (io0 μ) G := by
  unfold ev
  rw [MvPowerSeries.coeff_subst (hasSubst_ev ZeroPointGroupLaw.constant_zero_first_then_zero), finsum_eq_single _ (io0 μ)]
  · rw [prod_E, if_pos]
    · rw [show (io0 μ).comapDomain (fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) zero_axis_embedding_injective.injOn = μ from
        Finsupp.comapDomain_mapDomain _ zero_axis_embedding_injective μ, MvPowerSeries.coeff_monomial, if_pos rfl, smul_eq_mul, mul_one]
    · intro i
      unfold io0
      rw [Finsupp.mapDomain_of_notMem_range]
      rintro ⟨q, hq⟩
      have := (Prod.ext_iff.1 hq).1
      simp at this
  · intro d hd
    rw [prod_E]
    split_ifs with h
    · rw [MvPowerSeries.coeff_monomial, if_neg, smul_zero]
      intro he
      apply hd
      have hsupp : ∀ p ∈ d.support, p.1 = 0 := by
        intro p hp
        by_contra h1
        have : p.1 = 1 := by
          have := p.1.isLt
          omega
        have h2 := h p.2
        rw [show ((1 : Fin 2), p.2) = p from Prod.ext this.symm rfl] at h2
        exact (Finsupp.mem_support_iff.1 hp) h2
      unfold io0
      rw [he, Finsupp.mapDomain_comapDomain _ zero_axis_embedding_injective]
      intro p hp
      refine ⟨((0 : Fin 1), p.2), ?_⟩
      exact Prod.ext (hsupp p (by simpa using hp)).symm rfl
    · rw [MvPowerSeries.coeff_zero, smul_zero]

def Sv (Y : FBChart C V O dd) (v : Fin dd → C) : PS C 1 dd :=
  fun μ => ∑ j, v j * MvPowerSeries.coeff (io0 μ + Finsupp.single ((1 : Fin 2), j) 1) Y.u1

theorem zero_axis_embedding_second (μ : Fin 1 × Fin dd →₀ ℕ) (j : Fin dd) : io0 μ ((1 : Fin 2), j) = 0 := by
  unfold io0
  rw [Finsupp.mapDomain_of_notMem_range]
  rintro ⟨q, hq⟩
  have := (Prod.ext_iff.1 hq).1
  simp at this

theorem Sv_eq_sum (Y : FBChart C V O dd) (v : Fin dd → C) :
    Sv Y v = ∑ j, MvPowerSeries.C (v j) *
      ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) Y.u1) := by
  ext μ

  rw [map_sum]
  show ∑ j, v j * MvPowerSeries.coeff (io0 μ + Finsupp.single ((1 : Fin 2), j) 1) Y.u1 = _
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [MvPowerSeries.coeff_C_mul, coeff_E, MvPowerSeries.coeff_pderiv, zero_axis_embedding_second, Nat.cast_zero, zero_add, mul_one]

abbrev M2 (Y : FBChart C V O dd) : Pt C 2 dd := comp1 (mulL Y.B.G.F V.l) (pt C (n := 2) dd 0)

theorem constant_zero_multiplication_pair (Y : FBChart C V O dd) : Z0 (![M2 Y, pt C dd 1] : Fin 2 → Pt C 2 dd) := fun k j => by
  fin_cases k
  · exact FirstUnitSeriesIntegrality.double_multiplication_constantCoeff Y.B.G V.l j
  · exact z0_pt 1 j

theorem pderiv_second_multiplication_pair (Y : FBChart C V O dd) (k j : Fin dd) : MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) (M2 Y k) = 0 := by
  show MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) (ev (n := 2) ![pt C dd 0] (mulL Y.B.G.F V.l k)) = 0
  rw [ZeroPointGroupLaw.pderiv_eval_single (pt C dd 0) (z0_pt 0)]
  refine Finset.sum_eq_zero fun r _ => ?_
  rw [show MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) (pt C (n := 2) dd 0 r) = 0 from
    MvPowerSeries.pderiv_X_of_ne (fun h' => by simp at h'), mul_zero]

theorem eval_multiplication_pair_zero (Y : FBChart C V O dd) (g : PS C 2 dd) :
    ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (ev (n := 2) ![M2 Y, pt C dd 1] g) =
      ev (n := 1) ![mulL Y.B.G.F V.l, 0] g := by
  rw [ev_ev (constant_zero_multiplication_pair Y) ZeroPointGroupLaw.constant_zero_first_then_zero]
  congr 1
  funext k i
  fin_cases k
  · show ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (ev (n := 2) ![pt C dd 0] (mulL Y.B.G.F V.l i)) =
      mulL Y.B.G.F V.l i
    rw [ev_ev (z0_1 _ (z0_pt 0)) ZeroPointGroupLaw.constant_zero_first_then_zero]
    have e : (fun k' i' => ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd)
        ((![pt C (n := 2) dd 0] : Fin 1 → Pt C 2 dd) k' i')) = ![pt C dd 0] := by
      funext k' i'
      fin_cases k'
      exact ev_X ZeroPointGroupLaw.constant_zero_first_then_zero 0 i'
    rw [e, ZeroPointGroupLaw.eval_identity_point]
  · exact ev_X ZeroPointGroupLaw.constant_zero_first_then_zero 1 i

theorem eval_point_zero_factor (M : Pt C 1 dd) (hM : ∀ j, MvPowerSeries.constantCoeff (M j) = 0) (g : PS C 2 dd) :
    ev (n := 1) ![M, 0] g = ev (n := 1) ![M] (ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) g) := by
  rw [ev_ev ZeroPointGroupLaw.constant_zero_first_then_zero (z0_1 M hM)]
  congr 1
  funext k i
  fin_cases k
  · exact (ev_X (z0_1 M hM) 0 i).symm
  · exact (ev_zero (z0_1 M hM)).symm

theorem eval_pderiv_first_unit_series (Y : FBChart C V O dd) (j : Fin dd) :
    ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) Y.u1) =
      ev (n := 1) ![mulL Y.B.G.F V.l, 0] (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) Y.h) -
        (V.l : C) • ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) Y.h) := by
  have hZ2 := constant_zero_multiplication_pair Y
  have hH0 : MvPowerSeries.constantCoeff (ev (n := 2) ![M2 Y, pt C dd 1] Y.h - (V.l : C) • Y.h) = 0 := by
    rw [map_sub, const_ev hZ2 (h_const Y), MvPowerSeries.smul_eq_C_mul, map_mul, h_const Y, mul_zero, sub_zero]
  have hu : Y.u1 = FB.expS C (ev (n := 2) ![M2 Y, pt C dd 1] Y.h - (V.l : C) • Y.h) := rfl
  have hEh : ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) Y.h = 0 := Y.gauge.ax1
  have hEH : ev (n := 1) (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) (ev (n := 2) ![M2 Y, pt C dd 1] Y.h - (V.l : C) • Y.h) = 0 := by
    rw [ev_sub ZeroPointGroupLaw.constant_zero_first_then_zero, eval_multiplication_pair_zero, eval_point_zero_factor _ (FirstUnitSeriesIntegrality.multiplication_constantCoeff_zero Y.B.G V.l), hEh, ev_zero (z0_1 _ (FirstUnitSeriesIntegrality.multiplication_constantCoeff_zero Y.B.G V.l)),
      MvPowerSeries.smul_eq_C_mul, ev_mul ZeroPointGroupLaw.constant_zero_first_then_zero, ev_C, hEh, mul_zero, sub_zero]
  have hD : MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) (ev (n := 2) ![M2 Y, pt C dd 1] Y.h) =
      ev (n := 2) ![M2 Y, pt C dd 1] (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) Y.h) := by
    have pderiv_eval_pair {n : ℕ} {a : Fin 2 → Pt C n dd} (ha : Z0 a) (f : PS C 2 dd) (q : Fin n × Fin dd) :
        MvPowerSeries.pderiv (R := C) q (ev a f) =
          ∑ j, ev a (MvPowerSeries.pderiv (R := C) ((0 : Fin 2), j) f) * MvPowerSeries.pderiv (R := C) q (a 0 j) +
          ∑ j, ev a (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) f) * MvPowerSeries.pderiv (R := C) q (a 1 j) := by
      unfold ev
      rw [Formalism.G.LogCR.pderiv_subst (a := fun p : Fin 2 × Fin dd => a p.1 p.2) (fun p => ha p.1 p.2) f q,
        Fintype.sum_prod_type, Fin.sum_univ_two]
    rw [pderiv_eval_pair hZ2]
    have e0 : ∀ k, MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) ((![M2 Y, pt C dd 1] : Fin 2 → Pt C 2 dd) 0 k) = 0 :=
      fun k => pderiv_second_multiplication_pair Y k j
    have e1 : ∀ k, MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) ((![M2 Y, pt C dd 1] : Fin 2 → Pt C 2 dd) 1 k) =
        if k = j then 1 else 0 := fun k => by
      show MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) (MvPowerSeries.X ((1 : Fin 2), k)) = _
      split_ifs with hk
      · subst hk
        exact MvPowerSeries.pderiv_X_self
      · exact MvPowerSeries.pderiv_X_of_ne (fun h' => hk (Prod.ext_iff.1 h').2)
    simp only [e0, e1, mul_zero, Finset.sum_const_zero, zero_add, mul_ite, mul_one, Finset.sum_ite_eq',
      Finset.mem_univ, if_true]
  have pderiv_expS {g : PS C 2 dd} (hg : MvPowerSeries.constantCoeff g = 0) (q : Fin 2 × Fin dd) :
      MvPowerSeries.pderiv (R := C) q (FB.expS C g) = FB.expS C g * MvPowerSeries.pderiv (R := C) q g := by
    unfold FB.expS
    rw [Formalism.G.LogCR.pderiv_psubst hg, PowerSeries.derivative_exp]
  rw [hu, pderiv_expS hH0, ev_mul ZeroPointGroupLaw.constant_zero_first_then_zero, FirstUnitSeriesIntegrality.expS_eq, FirstUnitSeriesIntegrality.ev_ex ZeroPointGroupLaw.constant_zero_first_then_zero _ hH0, hEH, FirstUnitSeriesIntegrality.ex_zero,
    one_mul, map_sub, hD, Derivation.map_smul, ev_sub ZeroPointGroupLaw.constant_zero_first_then_zero, eval_multiplication_pair_zero, MvPowerSeries.smul_eq_C_mul, ev_mul ZeroPointGroupLaw.constant_zero_first_then_zero, ev_C,
    ← MvPowerSeries.smul_eq_C_mul]

theorem Sv_eq (Y : FBChart C V O dd) (v : Fin dd → C) :
    Sv Y v = (V.l : C) • Y.sgP v - ev (n := 1) ![mulL Y.B.G.F V.l] (Y.sgP v) := by
  have ev_sgP {n : ℕ} (P : Pt C n dd) (hP : ∀ j, MvPowerSeries.constantCoeff (P j) = 0) :
      ev (n := n) ![P] (Y.sgP v) = -∑ i, MvPowerSeries.C (v i) * ev (n := n) ![P, 0] (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), i) Y.h) := by
    have hZ := z0_1 P hP
    have hZ' := ZeroPointGroupLaw.constant_zero_first_then_zero (C := C) (dd := dd)
    unfold FBChart.sgP
    rw [ev_neg hZ, ev_sum hZ]
    congr 1
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [ev_mul hZ, ev_C, ev_ev hZ' hZ]
    congr 2
    funext k j
    fin_cases k
    · exact ev_X hZ 0 j
    · exact ev_zero hZ
  have h1 := ev_sgP (mulL Y.B.G.F V.l) (FirstUnitSeriesIntegrality.multiplication_constantCoeff_zero Y.B.G V.l)
  have h2 := ev_sgP (n := 1) (pt C dd 0) (z0_pt 0)
  rw [ZeroPointGroupLaw.eval_identity_point] at h2
  rw [Sv_eq_sum, h1, h2]
  simp only [eval_pderiv_first_unit_series, mul_sub, Finset.sum_sub_distrib, MvPowerSeries.smul_eq_C_mul]
  ring_nf
  rw [Finset.mul_sum]
  congr 1
  exact Finset.sum_congr rfl fun x _ => by ring

theorem coeff_l_frob0 (P : PS C 1 dd) (hP : IntS V P) (hPz : MvPowerSeries.constantCoeff P = 0)
    (hfrob : ∀ μ : Fin 1 × Fin dd →₀ ℕ, (∃ i, ¬ V.l ∣ μ ((0 : Fin 1), i)) → V.MM (MvPowerSeries.coeff μ P))
    {γ : Fin dd → PowerSeries C} (hγ : IsCv V γ) :
    V.MM (PowerSeries.coeff V.l (MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) P) -
      ∑ i, MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), i) V.l) P * (PowerSeries.coeff 1 (γ i)) ^ V.l) := SelfAdjointCongruence.coeff_l_frob hP hPz hfrob hγ

theorem coeff_l_frob (P : PS C 1 dd) (hP : IntS V P)
    (hfrob : ∀ μ : Fin 1 × Fin dd →₀ ℕ, (∃ i, ¬ V.l ∣ μ ((0 : Fin 1), i)) → V.MM (MvPowerSeries.coeff μ P))
    {γ : Fin dd → PowerSeries C} (hγ : IsCv V γ) :
    V.MM (PowerSeries.coeff V.l (MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) P) -
      ∑ i, MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), i) V.l) P * (PowerSeries.coeff 1 (γ i)) ^ V.l) := by
  have hl := V.l_prime.two_le
  have hγ0 : ∀ j, PowerSeries.constantCoeff (γ j) = 0 := fun j => (hγ j).1
  have hG : MvPowerSeries.HasSubst (fun q : Fin 1 × Fin dd => γ q.2) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero fun q => hγ0 q.2
  set c := MvPowerSeries.constantCoeff P with hc
  have hP' : IntS V (P - MvPowerSeries.C c) := ZeroPointGroupLaw.intS_sub' hP (fun μ => by
    rw [MvPowerSeries.coeff_C]
    split_ifs
    · rw [hc, ← MvPowerSeries.coeff_zero_eq_constantCoeff_apply]
      exact hP 0
    · exact VF.Ge.zero 0)
  have hPz' : MvPowerSeries.constantCoeff (P - MvPowerSeries.C c) = 0 := by
    rw [map_sub, MvPowerSeries.constantCoeff_C, hc, sub_self]
  have hne : ∀ μ : Fin 1 × Fin dd →₀ ℕ, (∃ i, ¬ V.l ∣ μ ((0 : Fin 1), i)) → μ ≠ 0 := by
    rintro μ ⟨i, hi⟩ rfl
    exact hi (dvd_zero _)
  have hfrob' : ∀ μ : Fin 1 × Fin dd →₀ ℕ, (∃ i, ¬ V.l ∣ μ ((0 : Fin 1), i)) →
      V.MM (MvPowerSeries.coeff μ (P - MvPowerSeries.C c)) := fun μ hμ => by
    rw [map_sub, MvPowerSeries.coeff_C, if_neg (hne μ hμ), sub_zero]
    exact hfrob μ hμ
  have h := coeff_l_frob0 _ hP' hPz' hfrob' hγ
  have hs : ∀ i, MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), i) V.l) (P - MvPowerSeries.C c) =
      MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), i) V.l) P := fun i => by
    rw [map_sub, MvPowerSeries.coeff_C, if_neg (by simp; omega), sub_zero]
  simp only [hs] at h
  have hsub : MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) (P - MvPowerSeries.C c) =
      MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) P - MvPowerSeries.C c := by
    rw [MvPowerSeries.subst_sub hG, MvPowerSeries.subst_C]
  have hC0 : PowerSeries.coeff V.l (MvPowerSeries.C c : PowerSeries C) = 0 := by
    change MvPowerSeries.coeff (Finsupp.single () V.l) (MvPowerSeries.C c) = 0
    rw [MvPowerSeries.coeff_C, if_neg (Finsupp.single_ne_zero.2 (by omega))]
  rw [hsub, map_sub, hC0, sub_zero] at h
  exact h

theorem v_one_sub {m : C} (hm : V.MM m) : V.v (1 - m) = 0 := by
  have hm0 : (0 : WithTop ℝ) < V.v m := hm
  have hge : (0 : WithTop ℝ) ≤ V.v (1 - m) := by
    have h := V.v.map_add 1 (-m)
    rw [V.v.map_one, V.v.map_neg, ← sub_eq_add_neg] at h
    exact le_trans (le_min le_rfl hm0.le) h
  apply le_antisymm _ hge
  by_contra h
  push Not at h
  have h1 := mm_add (show V.MM (1 - m) from h) hm
  rw [sub_add_cancel] at h1
  have h2 : (0 : WithTop ℝ) < V.v (1 : C) := h1
  rw [V.v.map_one] at h2
  exact lt_irrefl _ h2

theorem curve_coefficient_linear_term (Y : FBChart C V O dd) {γ : Fin dd → PowerSeries C} (hγ : IsCv V γ) {U : Fin dd → C}
    (hL : Y.LgLin γ U) (v : Fin dd → C) (hv : ∀ i, V.Ge 0 (v i)) :
    V.MM ((V.l : C) * PowerSeries.coeff V.l (alongCv γ (un1 (Y.sgP v))) - Y.aLin U v) := by
  have hl := V.l_prime.two_le
  have hγ0 : ∀ j, PowerSeries.constantCoeff (γ j) = 0 := fun j => (hγ j).1
  have hγ0' : ∀ j, MvPowerSeries.constantCoeff (γ j) = 0 := hγ0
  have hγI : ∀ j, IntS V (γ j) := fun j => FirstVanishing.intS_cv (hγ j).2
  have hG : MvPowerSeries.HasSubst (fun q : Fin 1 × Fin dd => γ q.2) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero fun q => hγ0 q.2
  have hu1 := first_unit_series_integral C V O dd Y

  have hSI : IntS V (Sv Y v) := fun μ => by
    show V.Ge 0 (∑ j, v j * MvPowerSeries.coeff (io0 μ + Finsupp.single ((1 : Fin 2), j) 1) Y.u1)
    exact VF.Ge.sum fun j _ => (hv j).mul_int (hu1 _)
  have hSF : ∀ μ : Fin 1 × Fin dd →₀ ℕ, (∃ i, ¬ V.l ∣ μ ((0 : Fin 1), i)) →
      V.MM (MvPowerSeries.coeff μ (Sv Y v)) := by
    rintro μ ⟨i, hi⟩
    show V.MM (∑ j, v j * MvPowerSeries.coeff (io0 μ + Finsupp.single ((1 : Fin 2), j) 1) Y.u1)
    refine mm_sum _ _ fun j _ => mm_mul_ge' (hv j) (first_unit_series_frobenius C V O dd Y _ ⟨i, ?_⟩)
    rw [Finsupp.add_apply, Finsupp.single_apply, if_neg (by simp), add_zero]
    unfold io0
    rw [show ((0 : Fin 2), i) = (fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) ((0 : Fin 1), i) from rfl,
      Finsupp.mapDomain_apply_of_injective zero_axis_embedding_injective]
    exact hi

  have hA := coeff_l_frob (Sv Y v) hSI hSF hγ
  simp only [LogarithmSeriesLinearTerm.coeff1_of_lgLin Y hγ hL] at hA
  have haL : Y.aLin U v = ∑ i, MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), i) V.l) (Sv Y v) * U i ^ V.l := by
    have e1 : ∀ j, MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), j) 1) (Y.aOf U) =
        ∑ i, U i ^ V.l * MvPowerSeries.coeff (Finsupp.single ((0 : Fin 2), i) V.l + Finsupp.single ((1 : Fin 2), j) 1)
          Y.u1 := fun j => by
      show ∑ i, U i ^ V.l * MvPowerSeries.coeff (Finsupp.single ((0 : Fin 2), i) V.l +
        (Finsupp.single ((0 : Fin 1), j) 1).mapDomain (fun q : Fin 1 × Fin dd => ((1 : Fin 2), q.2))) Y.u1 = _
      rw [Finsupp.mapDomain_single]
    have e2 : ∀ i, MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), i) V.l) (Sv Y v) =
        ∑ j, v j * MvPowerSeries.coeff (Finsupp.single ((0 : Fin 2), i) V.l + Finsupp.single ((1 : Fin 2), j) 1)
          Y.u1 := fun i => by
      show ∑ j, v j * MvPowerSeries.coeff (io0 (Finsupp.single ((0 : Fin 1), i) V.l) +
        Finsupp.single ((1 : Fin 2), j) 1) Y.u1 = _
      unfold io0
      rw [Finsupp.mapDomain_single]
    unfold FBChart.aLin
    simp only [e1, e2, Finset.mul_sum, Finset.sum_mul]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring
  rw [← haL] at hA

  set s := PowerSeries.coeff V.l (alongCv γ (un1 (Y.sgP v))) with hs
  have hLγ0 : ∀ k, MvPowerSeries.constantCoeff
      (MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) (mulL Y.B.G.F V.l k)) = 0 :=
    fun k => MvPowerSeries.constantCoeff_subst_eq_zero hG (fun q => hγ0 q.2) (FirstUnitSeriesIntegrality.multiplication_constantCoeff_zero Y.B.G V.l k)
  have hM : MvPowerSeries.HasSubst (fun q : Fin 1 × Fin dd => mulL Y.B.G.F V.l q.2) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero fun q => FirstUnitSeriesIntegrality.multiplication_constantCoeff_zero Y.B.G V.l q.2
  have hSg : MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) (Sv Y v) =
      (V.l : C) • alongCv γ (un1 (Y.sgP v)) -
        alongCv (fun k => MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) (mulL Y.B.G.F V.l k))
          (un1 (Y.sgP v)) := by
    rw [Sv_eq, MvPowerSeries.subst_sub hG, MvPowerSeries.subst_smul hG, eval_single_eq_subst,
      MvPowerSeries.subst_comp_subst_apply hM hG]
    unfold alongCv
    rw [subst_singlePointUncurry hγ0, subst_singlePointUncurry hLγ0]

  have hX0 : ∀ (a : C), MvPowerSeries.constantCoeff (a • (MvPowerSeries.X () : PowerSeries C)) = 0 := by
    intro a
    rw [MvPowerSeries.smul_eq_C_mul, map_mul, MvPowerSeries.constantCoeff_X, mul_zero]
  have hcl : ∀ j, MvPowerSeries.constantCoeff (alongCv γ (un1 (Y.lg j))) = 0 := fun j =>
    MvPowerSeries.constantCoeff_subst_eq_zero (MvPowerSeries.hasSubst_of_constantCoeff_zero hγ0) hγ0 (LogarithmSeriesLinearTerm.lg0 Y j)
  have hclL : ∀ j, MvPowerSeries.constantCoeff ((V.l : C) • alongCv γ (un1 (Y.lg j))) = 0 := fun j => by
    rw [MvPowerSeries.smul_eq_C_mul, map_mul, hcl j, mul_zero]
  have hE : MvPowerSeries.HasSubst (fun k => un1 (Y.ex k)) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero fun k => by rw [constantCoeff_uncurry, Y.ex_const]
  set Φ := MvPowerSeries.subst (fun k => un1 (Y.ex k)) (un1 (Y.sgP v)) with hΦ
  have eLγ : (fun k => MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) (mulL Y.B.G.F V.l k)) =
      fun k => MvPowerSeries.subst (fun j => (V.l : C) • alongCv γ (un1 (Y.lg j))) (un1 (Y.ex k)) := by
    funext k
    rw [← LogarithmSeriesLinearTerm.ex_lg_at' Y _ hLγ0 k]
    simp only [LogarithmSeriesLinearTerm.lg_mulCv' Y hγ0 V.l]
  have eγ : γ = fun k => MvPowerSeries.subst (fun j => alongCv γ (un1 (Y.lg j))) (un1 (Y.ex k)) := by
    funext k
    exact (LogarithmSeriesLinearTerm.ex_lg_at' Y γ hγ0 k).symm
  have h1 : alongCv (fun k => MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) (mulL Y.B.G.F V.l k))
      (un1 (Y.sgP v)) = MvPowerSeries.subst (fun j => (V.l : C) • alongCv γ (un1 (Y.lg j))) Φ := by
    rw [eLγ, hΦ, MvPowerSeries.subst_comp_subst_apply hE (MvPowerSeries.hasSubst_of_constantCoeff_zero hclL)]
    rfl
  have h2 : alongCv γ (un1 (Y.sgP v)) = MvPowerSeries.subst (fun j => alongCv γ (un1 (Y.lg j))) Φ := by
    conv_lhs => rw [eγ]
    rw [hΦ, MvPowerSeries.subst_comp_subst_apply hE (MvPowerSeries.hasSubst_of_constantCoeff_zero hcl)]
    rfl
  have hdeg : (Finsupp.single () V.l).degree < V.l ^ 2 := by
    rw [Finsupp.degree_single]
    nlinarith
  have a1 := agr_subst_left (a := fun j => (V.l : C) • alongCv γ (un1 (Y.lg j)))
    (b := fun j => ((V.l : C) * U j) • (MvPowerSeries.X () : PowerSeries C)) hclL (fun j => hX0 _)
    (fun j => by
      have := FirstVanishing.Agr.smul (hL j) (V.l : C)
      rwa [smul_smul] at this) Φ _ hdeg
  have a2 := agr_subst_left (a := fun j => alongCv γ (un1 (Y.lg j)))
    (b := fun j => U j • (MvPowerSeries.X () : PowerSeries C)) hcl (fun j => hX0 _) (fun j => hL j) Φ _ hdeg
  change PowerSeries.coeff V.l _ = PowerSeries.coeff V.l _ at a1 a2
  have hσl : PowerSeries.coeff V.l (alongCv (fun k => MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2)
      (mulL Y.B.G.F V.l k)) (un1 (Y.sgP v))) = (V.l : C) ^ V.l * s := by
    rw [h1, a1, FirstVanishing.coeff_subst_scale, ← a2, ← h2]

  have hT : PowerSeries.coeff V.l (MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) (Sv Y v)) =
      (V.l : C) * s - (V.l : C) ^ V.l * s := by
    rw [hSg, map_sub, map_smul, hσl, smul_eq_mul]
  have hTI' : IntS V (MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) (Sv Y v)) :=
    intS_subst (a := fun q : Fin 1 × Fin dd => γ q.2) (fun q => hγ0' q.2) (fun q => hγI q.2) hSI
  have hTI : V.Ge 0 (PowerSeries.coeff V.l (MvPowerSeries.subst (fun q : Fin 1 × Fin dd => γ q.2) (Sv Y v))) :=
    hTI' (Finsupp.single () V.l)
  rw [hT] at hA hTI
  obtain ⟨m, hm⟩ : ∃ m, V.l = m + 2 := ⟨V.l - 2, by omega⟩
  have hmm : V.MM ((V.l : C) ^ (m + 1)) := by
    rw [pow_succ']
    exact mm_l_mul (VF.Ge.pow (ge_natCast V.l) m)
  have hv1 := v_one_sub hmm
  have hne : (1 - (V.l : C) ^ (m + 1)) ≠ 0 := by
    intro h0
    rw [h0, AddValuation.map_zero] at hv1
    exact WithTop.top_ne_zero hv1
  have els : (V.l : C) * s = ((V.l : C) * s - (V.l : C) ^ V.l * s) * (1 - (V.l : C) ^ (m + 1))⁻¹ := by
    rw [eq_mul_inv_iff_mul_eq₀ hne, hm]
    ring
  have hls : V.Ge 0 ((V.l : C) * s) := by
    rw [els]
    refine hTI.mul_int ?_
    unfold VF.Ge
    rw [AddValuation.map_inv, hv1]
    simp
  have hll : V.MM ((V.l : C) ^ V.l * s) := by
    have e5 : (V.l : C) ^ V.l = (V.l : C) ^ (m + 1) * (V.l : C) := by
      rw [← pow_succ]
      congr 1
    rw [e5, mul_assoc]
    exact mm_mul_ge hmm hls
  have e : (V.l : C) * s - Y.aLin U v = ((V.l : C) * s - (V.l : C) ^ V.l * s - Y.aLin U v) + (V.l : C) ^ V.l * s := by
    ring
  rw [e]
  exact mm_add hA hll

end ZeroAxisEmbedding

theorem curve_linear_term_unconditional : CurveLinearTermCondition := by
  intro C _ _ V O _ _ dd Y γ U hγ hL v hv
  exact ZeroAxisEmbedding.curve_coefficient_linear_term Y hγ hL v hv

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.ConstantZeroMultiplicationPair =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.ConstantZeroCompCoordinate =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.ConstantZeroCompCoordinate", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RankMaximalOfNondegenerateOfUnitSeriesIntegral\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePGerm\nimport Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantZeroDoubleMultiplicationPair\npublic import Formalism.LocalToGlobal.CharacterGerms.GermEvalOneStandardPointSelf\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieCartAdd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.CharacterGerms.PderivDoubleMultiplicationJacobian\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

def zl {C : Type} [Field C] {dd : ℕ} (v : Fin dd → C) (F : PS C 2 dd) : PS C 1 dd :=
  ∑ j, MvPowerSeries.C (v j) * ev (n := 1) ![pt C dd 0, 0] (MvPowerSeries.pderiv (R := C) ((1 : Fin 2), j) F)

namespace SelfAdjointLinearTerm

open PartialDerivEval FirstUnitSeriesIntegrality MulLFrob LiftedCoordinateEvaluation MvPowerSeries

variable {C : Type} [Field C] {dd : ℕ}

theorem snd_map (ν : Fin 1 × Fin dd →₀ ℕ) :
    (ν.mapDomain Prod.snd).mapDomain (fun x : Fin dd => ((0 : Fin 1), x)) = ν := by
  rw [← Finsupp.mapDomain_comp]
  have e : ((fun x : Fin dd => ((0 : Fin 1), x)) ∘ Prod.snd) = id := by
    funext p
    exact Prod.ext (Subsingleton.elim _ _) rfl
  rw [e, Finsupp.mapDomain_id]

theorem snd_mapDomain_mapDomain (ν : Fin 1 × Fin dd →₀ ℕ) :
    (ν.mapDomain Prod.snd).mapDomain (fun x : Fin dd => ((0 : Fin 2), x)) =
      ν.mapDomain (fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) := by
  rw [← Finsupp.mapDomain_comp]
  rfl

end SelfAdjointLinearTerm

open SelfAdjointLinearTerm in
theorem coeff_zl {C : Type} [Field C] {dd : ℕ} (v : Fin dd → C) (F : PS C 2 dd) (ν : Fin 1 × Fin dd →₀ ℕ) :
    MvPowerSeries.coeff ν (zl v F) = ∑ j, v j * MvPowerSeries.coeff
      (ν.mapDomain (fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) + Finsupp.single ((1 : Fin 2), j) 1) F := by
  unfold zl

  rw [map_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [MvPowerSeries.coeff_C_mul]
  conv_lhs => rw [← snd_map ν]
  rw [coeff_eval_second_zero, MvPowerSeries.coeff_pderiv, snd_mapDomain_mapDomain]
  have h0 : (ν.mapDomain fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) ((1 : Fin 2), j) = 0 := by
    apply Finsupp.mapDomain_of_notMem_range
    rintro ⟨x, hx⟩
    have h01 : (0 : Fin 2) = 1 := congrArg Prod.fst hx
    exact absurd h01 (by decide)
  rw [h0]
  simp

namespace SelfAdjointLinearTerm

open PartialDerivEval FirstUnitSeriesIntegrality MulLFrob LiftedCoordinateEvaluation MvPowerSeries

variable {C : Type} [Field C] [CharZero C] {dd : ℕ}

alias aux_statement_9 := _root_.Formalism.L2.FormalSeriesBounds.MulLFrob.constant_zero_first_then_zero

theorem zl_sub (v : Fin dd → C) (F G : PS C 2 dd) : zl v (F - G) = zl v F - zl v G := by
  have hS : MvPowerSeries.HasSubst (fun p : Fin 2 × Fin dd => (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) p.1 p.2) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (fun p => aux_statement_9 p.1 p.2)
  simp only [zl, ev, map_sub, MvPowerSeries.subst_sub hS, mul_sub, Finset.sum_sub_distrib]

theorem zl_smul (v : Fin dd → C) (c : C) (F : PS C 2 dd) : zl v (c • F) = c • zl v F := by
  have hS : MvPowerSeries.HasSubst (fun p : Fin 2 × Fin dd => (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) p.1 p.2) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (fun p => aux_statement_9 p.1 p.2)
  simp only [zl, ev, Derivation.map_smul, MvPowerSeries.subst_smul hS, Finset.smul_sum,
    mul_smul_comm]

theorem zl_expS (v : Fin dd → C) {f : PS C 2 dd} (hf : constantCoeff f = 0)
    (hf0 : ev (n := 1) ![pt C dd 0, 0] f = 0) : zl v (FB.expS C f) = zl v f := by
  unfold zl
  refine Finset.sum_congr rfl fun j _ => ?_
  have hd : pderiv (R := C) ((1 : Fin 2), j) (FB.expS C f) =
      FB.expS C f * pderiv (R := C) ((1 : Fin 2), j) f := by
    unfold FB.expS
    rw [Formalism.G.LogCR.pderiv_psubst hf, PowerSeries.derivative_exp]
  rw [hd, ev_mul aux_statement_9,
    FirstUnitSeriesIntegrality.expS_eq, FirstUnitSeriesIntegrality.ev_ex aux_statement_9 f hf,
    hf0, ex_zero, one_mul]

def PAB (A B : Pt C 1 dd) : Fin 2 → Pt C 2 dd := ![comp1 A (pt C (n := 2) dd 0), comp1 B (pt C (n := 2) dd 1)]

theorem constant_zero_comp_coordinate {n : ℕ} {A : Pt C 1 dd} (hA : ∀ i, constantCoeff (A i) = 0) (k : Fin n) (i : Fin dd) :
    constantCoeff (comp1 A (pt C (n := n) dd k) i) = 0 := by
  simp only [comp1, ev]
  have hc : ∀ p : Fin 1 × Fin dd, constantCoeff ((![pt C dd k] : Fin 1 → Pt C n dd) p.1 p.2) = 0 := by
    intro p
    simp only [Matrix.cons_val_fin_one, pt, MvPowerSeries.constantCoeff_X]
  apply MvPowerSeries.constantCoeff_subst_eq_zero
  · exact MvPowerSeries.hasSubst_of_constantCoeff_zero hc
  · exact hc
  · exact hA i

theorem zPAB {A B : Pt C 1 dd} (hA : ∀ i, constantCoeff (A i) = 0) (hB : ∀ i, constantCoeff (B i) = 0) :
    Z0 (PAB A B) := by
  intro k i
  fin_cases k
  · simpa [PAB] using constant_zero_comp_coordinate hA 0 i
  · simpa [PAB] using constant_zero_comp_coordinate hB 1 i

theorem product_points_at_zero {A B : Pt C 1 dd} (hB : ∀ i, constantCoeff (B i) = 0) :
    (fun k i => ev (n := 1) ![pt C dd 0, 0] (PAB A B k i)) = (![A, 0] : Fin 2 → Pt C 1 dd) := by
  funext k i
  fin_cases k
  · show ev (n := 1) ![pt C dd 0, 0] (ev ![pt C (n := 2) dd 0] (A i)) = A i
    rw [ev_ev (z0_1 _ fun j => z0_pt 0 j) aux_statement_9]
    have : (fun (k : Fin 1) (i : Fin dd) => ev (n := 1) ![pt C dd 0, 0] ((![pt C (n := 2) dd 0] : Fin 1 → Pt C 2 dd) k i)) =
        ![pt C (n := 1) dd 0] := by
      funext k i
      fin_cases k
      exact ev_X aux_statement_9 0 i
    rw [this, germEval_oneStandardPoint_self]
  · show ev (n := 1) ![pt C dd 0, 0] (ev ![pt C (n := 2) dd 1] (B i)) = 0
    rw [ev_ev (z0_1 _ fun j => z0_pt 1 j) aux_statement_9]
    have : (fun (k : Fin 1) (i : Fin dd) => ev (n := 1) ![pt C dd 0, 0] ((![pt C (n := 2) dd 1] : Fin 1 → Pt C 2 dd) k i)) =
        ![(0 : Pt C 1 dd)] := by
      funext k i
      fin_cases k
      exact ev_X aux_statement_9 1 i
    rw [this, ev_zero_pt, hB i, map_zero]

theorem d_A (A : Pt C 1 dd) (j k : Fin dd) :
    pderiv (R := C) ((1 : Fin 2), j) (comp1 A (pt C (n := 2) dd 0) k) = 0 := by
  show pderiv (R := C) ((1 : Fin 2), j) (ev ![pt C (n := 2) dd 0] (A k)) = 0
  have hsingle {P : Pt C 2 dd} (hP : ∀ m, constantCoeff (P m) = 0) (g : PS C 1 dd)
      (q : Fin 2 × Fin dd) :
      pderiv (R := C) q (ev ![P] g) =
        ∑ m, ev ![P] (pderiv (R := C) ((0 : Fin 1), m) g) * pderiv (R := C) q (P m) := by
    unfold ev
    rw [Formalism.G.LogCR.pderiv_subst
      (a := fun p : Fin 1 × Fin dd => (![P] : Fin 1 → Pt C 2 dd) p.1 p.2)
      (fun p => by obtain ⟨t, m⟩ := p; fin_cases t; exact hP m) g q,
      Fintype.sum_prod_type, Fin.sum_univ_one]
    rfl
  rw [hsingle (fun m => z0_pt 0 m) (A k) ((1 : Fin 2), j)]
  refine Finset.sum_eq_zero fun m _ => ?_
  rw [show pt C dd 0 m = X ((0 : Fin 2), m) from rfl,
    pderiv_X_of_ne (by
      intro h
      have h' := congrArg Prod.fst h
      exact (by decide : (0 : Fin 2) ≠ 1) h'), mul_zero]

theorem d_B (B : Pt C 1 dd) (j k : Fin dd) :
    pderiv (R := C) ((1 : Fin 2), j) (comp1 B (pt C (n := 2) dd 1) k) =
      ev ![pt C (n := 2) dd 1] (pderiv (R := C) ((0 : Fin 1), j) (B k)) := by
  show pderiv (R := C) ((1 : Fin 2), j) (ev ![pt C (n := 2) dd 1] (B k)) = _
  have hsingle {P : Pt C 2 dd} (hP : ∀ m, constantCoeff (P m) = 0) (g : PS C 1 dd)
      (q : Fin 2 × Fin dd) :
      pderiv (R := C) q (ev ![P] g) =
        ∑ m, ev ![P] (pderiv (R := C) ((0 : Fin 1), m) g) * pderiv (R := C) q (P m) := by
    unfold ev
    rw [Formalism.G.LogCR.pderiv_subst
      (a := fun p : Fin 1 × Fin dd => (![P] : Fin 1 → Pt C 2 dd) p.1 p.2)
      (fun p => by obtain ⟨t, m⟩ := p; fin_cases t; exact hP m) g q,
      Fintype.sum_prod_type, Fin.sum_univ_one]
    rfl
  rw [hsingle (fun m => z0_pt 1 m) (B k) ((1 : Fin 2), j), Finset.sum_eq_single j]
  · rw [show pt C dd 1 j = X ((1 : Fin 2), j) from rfl, pderiv_X_self, mul_one]
  · intro m _ hm
    rw [show pt C dd 1 m = X ((1 : Fin 2), m) from rfl,
      pderiv_X_of_ne (fun h => hm (Prod.mk.inj h).2), mul_zero]
  · intro h
    exact absurd (Finset.mem_univ j) h

theorem eval_pderiv_constant_linear (B : Pt C 1 dd) (j k : Fin dd) :
    ev (n := 1) ![pt C dd 0, 0] (ev ![pt C (n := 2) dd 1] (pderiv (R := C) ((0 : Fin 1), j) (B k))) =
      MvPowerSeries.C (coeff (Finsupp.single ((0 : Fin 1), j) 1) (B k)) := by
  rw [ev_ev (z0_1 _ fun j => z0_pt 1 j) aux_statement_9]
  have : (fun (k : Fin 1) (i : Fin dd) => ev (n := 1) ![pt C dd 0, 0] ((![pt C (n := 2) dd 1] : Fin 1 → Pt C 2 dd) k i)) =
      ![(0 : Pt C 1 dd)] := by
    funext k i
    fin_cases k
    exact ev_X aux_statement_9 1 i
  rw [this, ev_zero_pt, ← coeff_zero_eq_constantCoeff_apply, coeff_pderiv]
  simp

variable {V : VF C} {O : Type} [CommRing O] [StarRing O]

theorem zl_hAB (Y : FBChart C V O dd) {A B : Pt C 1 dd} (hA : ∀ i, constantCoeff (A i) = 0)
    (hB : ∀ i, constantCoeff (B i) = 0) (v : Fin dd → C) :
    zl v (ev (PAB A B) Y.h) = -ev (n := 1) ![A] (Y.sgP (linAct B v)) := by
  have hsg : ev (n := 1) ![A] (Y.sgP (linAct B v)) =
      -∑ i, MvPowerSeries.C (linAct B v i) *
        ev (n := 1) ![A, 0] (pderiv (R := C) ((1 : Fin 2), i) Y.h) := by
    have hZ : Z0 (![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) := aux_statement_9
    have hZA : Z0 (![A] : Fin 1 → Pt C 1 dd) := z0_1 A hA
    unfold FBChart.sgP
    rw [ev_neg hZA, ev_sum hZA]
    congr 1
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [ev_mul hZA, ev_C, ev_ev hZ hZA]
    congr 2
    funext k j
    fin_cases k
    · exact ev_X hZA 0 j
    · exact ev_zero hZA
  rw [hsg, neg_neg]
  unfold zl
  have h1 : ∀ j, ev (n := 1) ![pt C dd 0, 0] (pderiv (R := C) ((1 : Fin 2), j) (ev (PAB A B) Y.h)) =
      ∑ k, ev (n := 1) ![A, 0] (pderiv (R := C) ((1 : Fin 2), k) Y.h) *
        MvPowerSeries.C (coeff (Finsupp.single ((0 : Fin 1), j) 1) (B k)) := by
    intro j
    have hpPair (g : PS C 2 dd) (q : Fin 2 × Fin dd) :
        pderiv (R := C) q (ev (PAB A B) g) =
          ∑ k, ev (PAB A B) (pderiv (R := C) ((0 : Fin 2), k) g) *
              pderiv (R := C) q (PAB A B 0 k) +
            ∑ k, ev (PAB A B) (pderiv (R := C) ((1 : Fin 2), k) g) *
              pderiv (R := C) q (PAB A B 1 k) := by
      unfold ev
      rw [Formalism.G.LogCR.pderiv_subst
        (a := fun p : Fin 2 × Fin dd => PAB A B p.1 p.2)
        (fun p => zPAB hA hB p.1 p.2) g q,
        Fintype.sum_prod_type, Fin.sum_univ_two]
    rw [hpPair Y.h ((1 : Fin 2), j)]
    have e0 : ∑ k, ev (PAB A B) (pderiv (R := C) ((0 : Fin 2), k) Y.h) * pderiv (R := C) ((1 : Fin 2), j) (PAB A B 0 k) = 0 :=
      Finset.sum_eq_zero fun k _ => by
        rw [show PAB A B 0 k = comp1 A (pt C (n := 2) dd 0) k from rfl, d_A, mul_zero]
    rw [e0, zero_add, ev_sum aux_statement_9]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [show PAB A B 1 k = comp1 B (pt C (n := 2) dd 1) k from rfl, d_B, ev_mul aux_statement_9, eval_pderiv_constant_linear,
      ev_ev (zPAB hA hB) aux_statement_9, product_points_at_zero hB]
  simp only [h1, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun k _ => ?_
  unfold linAct

  rw [map_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [map_mul]
  ring

theorem height_at_zero_product (Y : FBChart C V O dd) {A B : Pt C 1 dd} (hA : ∀ i, constantCoeff (A i) = 0)
    (hB : ∀ i, constantCoeff (B i) = 0) : ev (n := 1) ![pt C dd 0, 0] (ev (PAB A B) Y.h) = 0 := by
  rw [ev_ev (zPAB hA hB) aux_statement_9, product_points_at_zero hB]
  have h := congrArg (ev (n := 1) ![A]) Y.gauge.ax1
  rw [ev_ev aux_statement_9 (z0_1 A hA), ev_zero (z0_1 A hA)] at h
  have : (fun (k : Fin 2) (i : Fin dd) => ev (n := 1) ![A] ((![pt C dd 0, 0] : Fin 2 → Pt C 1 dd) k i)) =
      (![A, 0] : Fin 2 → Pt C 1 dd) := by
    funext k i
    fin_cases k
    · exact ev_X (z0_1 A hA) 0 i
    · exact ev_zero (z0_1 A hA)
  rw [this] at h
  exact h

theorem const_hAB (Y : FBChart C V O dd) {A B : Pt C 1 dd} (hA : ∀ i, constantCoeff (A i) = 0)
    (hB : ∀ i, constantCoeff (B i) = 0) : constantCoeff (ev (PAB A B) Y.h) = 0 :=
  const_ev (zPAB hA hB) (h_const Y)

theorem comp1_identity_left {n : ℕ} (k : Fin n) : comp1 (pt C (n := 1) dd 0) (pt C (n := n) dd k) = pt C dd k := by
  funext i
  simp only [comp1, ev, pt]
  rw [MvPowerSeries.subst_X (MvPowerSeries.hasSubst_of_constantCoeff_zero (fun p => by
    simp only [Matrix.cons_val_fin_one, pt, MvPowerSeries.constantCoeff_X]))]
  rfl

theorem linAct_id (v : Fin dd → C) : linAct (pt C (n := 1) dd 0) v = v := by
  funext i
  unfold linAct
  rw [Finset.sum_eq_single i]
  · show coeff (Finsupp.single ((0 : Fin 1), i) 1) (X ((0 : Fin 1), i) : PS C 1 dd) * v i = v i
    rw [coeff_X, if_pos rfl, one_mul]
  · intro j _ hj
    show coeff (Finsupp.single ((0 : Fin 1), j) 1) (X ((0 : Fin 1), i) : PS C 1 dd) * v j = 0
    rw [coeff_X, if_neg, zero_mul]
    intro h
    apply hj
    have := (Finsupp.single_left_inj (one_ne_zero)).1 h
    exact (Prod.mk.inj this).2
  · intro h
    exact absurd (Finset.mem_univ i) h

theorem zId : ∀ i, constantCoeff (pt C (n := 1) dd 0 i) = 0 := fun i => by simp [pt]

end SelfAdjointLinearTerm


open SelfAdjointLinearTerm PartialDerivEval FirstUnitSeriesIntegrality MulLFrob in
theorem linear_part_first_unit {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}
    (Y : FBChart C V O dd) (v : Fin dd → C) :
    zl v Y.u1 = (V.l : C) • Y.sgP v - ev (n := 1) ![mulL Y.B.G.F V.l] (Y.sgP v) := by
  have hM : ∀ i, MvPowerSeries.constantCoeff (mulL Y.B.G.F V.l i) = 0 :=
    FirstUnitSeriesIntegrality.multiplication_constantCoeff_zero Y.B.G V.l
  have e1 : (![comp1 (mulL Y.B.G.F V.l) (pt C (n := 2) dd 0), pt C dd 1] : Fin 2 → Pt C 2 dd) =
      SelfAdjointLinearTerm.PAB (mulL Y.B.G.F V.l) (pt C (n := 1) dd 0) := by
    unfold SelfAdjointLinearTerm.PAB
    rw [SelfAdjointLinearTerm.comp1_identity_left]
  have e2 : ev (SelfAdjointLinearTerm.PAB (pt C (n := 1) dd 0) (pt C (n := 1) dd 0)) Y.h = Y.h := by
    unfold SelfAdjointLinearTerm.PAB
    rw [SelfAdjointLinearTerm.comp1_identity_left, SelfAdjointLinearTerm.comp1_identity_left,
      PartialDerivEval.eval_points_two]
  have e3 : ev (n := 2) ![comp1 (mulL Y.B.G.F V.l) (pt C (n := 2) dd 0), pt C dd 1] Y.h - (V.l : C) • Y.h =
      ev (SelfAdjointLinearTerm.PAB (mulL Y.B.G.F V.l) (pt C (n := 1) dd 0)) Y.h -
        (V.l : C) • ev (SelfAdjointLinearTerm.PAB (pt C (n := 1) dd 0) (pt C (n := 1) dd 0)) Y.h := by
    rw [e1, e2]
  unfold FBChart.u1
  rw [e3, SelfAdjointLinearTerm.zl_expS v
      (by rw [map_sub, SelfAdjointLinearTerm.const_hAB Y hM SelfAdjointLinearTerm.zId, MvPowerSeries.smul_eq_C_mul, map_mul, SelfAdjointLinearTerm.const_hAB Y SelfAdjointLinearTerm.zId SelfAdjointLinearTerm.zId, mul_zero,
        sub_zero])
      (by rw [PartialDerivEval.ev_sub SelfAdjointLinearTerm.aux_statement_9, SelfAdjointLinearTerm.height_at_zero_product Y hM SelfAdjointLinearTerm.zId, MvPowerSeries.smul_eq_C_mul, PartialDerivEval.ev_mul SelfAdjointLinearTerm.aux_statement_9, SelfAdjointLinearTerm.height_at_zero_product Y SelfAdjointLinearTerm.zId SelfAdjointLinearTerm.zId, mul_zero,
        sub_zero]),
    SelfAdjointLinearTerm.zl_sub, SelfAdjointLinearTerm.zl_smul, SelfAdjointLinearTerm.zl_hAB Y hM SelfAdjointLinearTerm.zId, SelfAdjointLinearTerm.zl_hAB Y SelfAdjointLinearTerm.zId SelfAdjointLinearTerm.zId, SelfAdjointLinearTerm.linAct_id, MulLFrob.germEval_oneStandardPoint_self, smul_neg]
  ring


open SelfAdjointLinearTerm PartialDerivEval FirstUnitSeriesIntegrality MulLFrob in
theorem constant_zero_first_zero_self {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}
    (Y : FBChart C V O dd) (e eb : Pt C 1 dd) (he0 : ∀ i, MvPowerSeries.constantCoeff (e i) = 0)
    (heb0 : ∀ i, MvPowerSeries.constantCoeff (eb i) = 0) (v : Fin dd → C) :
    zl v (FB.expS C (ev (n := 2) ![comp1 e (pt C dd 0), pt C dd 1] Y.h -
      ev (n := 2) ![pt C dd 0, comp1 eb (pt C dd 1)] Y.h)) =
      Y.sgP (linAct eb v) - ev (n := 1) ![e] (Y.sgP v) := by
  have e1 : (![comp1 e (pt C (n := 2) dd 0), pt C dd 1] : Fin 2 → Pt C 2 dd) = SelfAdjointLinearTerm.PAB e (pt C (n := 1) dd 0) := by
    unfold SelfAdjointLinearTerm.PAB
    rw [SelfAdjointLinearTerm.comp1_identity_left]
  have e2 : (![pt C (n := 2) dd 0, comp1 eb (pt C dd 1)] : Fin 2 → Pt C 2 dd) = SelfAdjointLinearTerm.PAB (pt C (n := 1) dd 0) eb := by
    unfold SelfAdjointLinearTerm.PAB
    rw [SelfAdjointLinearTerm.comp1_identity_left]
  rw [e1, e2, SelfAdjointLinearTerm.zl_expS v
      (by rw [map_sub, SelfAdjointLinearTerm.const_hAB Y he0 SelfAdjointLinearTerm.zId, SelfAdjointLinearTerm.const_hAB Y SelfAdjointLinearTerm.zId heb0, sub_zero])
      (by rw [PartialDerivEval.ev_sub SelfAdjointLinearTerm.aux_statement_9, SelfAdjointLinearTerm.height_at_zero_product Y he0 SelfAdjointLinearTerm.zId, SelfAdjointLinearTerm.height_at_zero_product Y SelfAdjointLinearTerm.zId heb0, sub_zero]),
    SelfAdjointLinearTerm.zl_sub, SelfAdjointLinearTerm.zl_hAB Y he0 SelfAdjointLinearTerm.zId, SelfAdjointLinearTerm.zl_hAB Y SelfAdjointLinearTerm.zId heb0, SelfAdjointLinearTerm.linAct_id, MulLFrob.germEval_oneStandardPoint_self]
  ring

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.ConstantZeroCompCoordinate =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.LinearPartUnitFrobenius =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.LinearPartUnitFrobenius", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.CoeffOneSubstCurve\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantZeroCompCoordinate\npublic import Formalism.LocalToGlobal.CharacterGerms.FirstVanishingAt\nimport Formalism.LocalToGlobal.CharacterGerms.CoeffLMulCvFrob\nimport Formalism.LocalToGlobal.CharacterGerms.MaximalOfValuationGeOne\npublic import Formalism.LocalToGlobal.CharacterGerms.PderivDoubleMultiplicationJacobian\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartFB\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePOActSelf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

namespace PairPointEvaluation

open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ PartialDerivEval MaximalIdealCongruence FirstVanishing SelfAdjointCongruence MvPowerSeries

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}

theorem constant_zero_pair_points {a b : Pt C 1 dd} (ha : ∀ j, constantCoeff (a j) = 0) (hb : ∀ j, constantCoeff (b j) = 0) :
    Z0 (![a, b] : Fin 2 → Pt C 1 dd) := by
  intro k i
  fin_cases k
  · simpa using ha i
  · simpa using hb i

theorem eval_single_comp {a b : Pt C 1 dd} (ha : ∀ j, constantCoeff (a j) = 0) (hb : ∀ j, constantCoeff (b j) = 0)
    (f : PS C 1 dd) : ev (n := 1) ![a] (ev (n := 1) ![b] f) = ev (n := 1) ![comp1 b a] f := by
  rw [ev_ev (z0_1 b hb) (z0_1 a ha)]
  congr 1
  funext k i
  fin_cases k
  rfl

theorem hom_at (G : FGLaw C dd) {e : Pt C 1 dd} (he0 : ∀ j, constantCoeff (e j) = 0)
    (hhom : comp1 e (addOf G.F (pt C (n := 2) dd 0) (pt C (n := 2) dd 1)) =
      addOf G.F (comp1 e (pt C (n := 2) dd 0)) (comp1 e (pt C (n := 2) dd 1)))
    {a b : Pt C 1 dd} (ha : ∀ j, constantCoeff (a j) = 0) (hb : ∀ j, constantCoeff (b j) = 0) :
    comp1 e (addOf G.F a b) = addOf G.F (comp1 e a) (comp1 e b) := by
  funext i
  have hab := constant_zero_pair_points ha hb
  have h := congrArg (ev (n := 1) ![a, b]) (congrFun hhom i)
  have hadd0 : ∀ j, constantCoeff (addOf G.F (pt C (n := 2) dd 0) (pt C (n := 2) dd 1) j) = 0 :=
    fun j => const_ev (z0_pp 0 1) (G.const j)
  have hc : ∀ (k : Fin 2) j, constantCoeff (comp1 e (pt C (n := 2) dd k) j) = 0 :=
    fun k j => const_ev (z0_1 _ (z0_pt k)) (he0 j)
  have hcc : Z0 (![comp1 e (pt C (n := 2) dd 0), comp1 e (pt C (n := 2) dd 1)] : Fin 2 → Pt C 2 dd) := fun k j => by
    fin_cases k
    · exact hc 0 j
    · exact hc 1 j
  have hL : ev (n := 1) ![a, b] (comp1 e (addOf G.F (pt C (n := 2) dd 0) (pt C (n := 2) dd 1)) i) =
      comp1 e (addOf G.F a b) i := by
    show ev (n := 1) ![a, b] (ev ![addOf G.F (pt C (n := 2) dd 0) (pt C (n := 2) dd 1)] (e i)) =
      ev ![addOf G.F a b] (e i)
    rw [ev_ev (z0_1 _ hadd0) hab]
    congr 1
    funext k j
    fin_cases k
    show ev (n := 1) ![a, b] (ev (n := 2) ![pt C dd 0, pt C dd 1] (G.F j)) = ev ![a, b] (G.F j)
    rw [PartialDerivEval.eval_points_two]
  have hR : ev (n := 1) ![a, b] (addOf G.F (comp1 e (pt C (n := 2) dd 0)) (comp1 e (pt C (n := 2) dd 1)) i) =
      addOf G.F (comp1 e a) (comp1 e b) i := by
    show ev (n := 1) ![a, b] (ev ![comp1 e (pt C (n := 2) dd 0), comp1 e (pt C (n := 2) dd 1)] (G.F i)) =
      ev ![comp1 e a, comp1 e b] (G.F i)
    rw [ev_ev hcc hab]
    congr 1
    funext k j
    fin_cases k
    · show ev (n := 1) ![a, b] (ev ![pt C (n := 2) dd 0] (e j)) = ev ![a] (e j)
      rw [ev_ev (z0_1 _ (z0_pt 0)) hab]
      congr 1
      funext k' j'
      fin_cases k'
      exact ev_X hab 0 j'
    · show ev (n := 1) ![a, b] (ev ![pt C (n := 2) dd 1] (e j)) = ev ![b] (e j)
      rw [ev_ev (z0_1 _ (z0_pt 1)) hab]
      congr 1
      funext k' j'
      fin_cases k'
      exact ev_X hab 1 j'
  rw [← hL, ← hR]
  exact h

theorem mulL_comm (G : FGLaw C dd) {e : Pt C 1 dd} (he0 : ∀ j, constantCoeff (e j) = 0)
    (hhom : comp1 e (addOf G.F (pt C (n := 2) dd 0) (pt C (n := 2) dd 1)) =
      addOf G.F (comp1 e (pt C (n := 2) dd 0)) (comp1 e (pt C (n := 2) dd 1))) (n : ℕ) :
    comp1 (mulL G.F n) e = comp1 e (mulL G.F n) := by
  induction n with
  | zero =>
    funext i
    show ev ![e] (0 : PS C 1 dd) = ev ![(0 : Pt C 1 dd)] (e i)
    rw [MulLFrob.ev_zero_pt, he0 i, map_zero, ev_zero (z0_1 e he0)]
  | succ n ih =>
    have hm0 := FirstUnitSeriesIntegrality.multiplication_constantCoeff_zero G n
    have h1 : comp1 (mulL G.F (n + 1)) e = addOf G.F (comp1 (mulL G.F n) e) e := by
      funext i
      show ev ![e] (ev ![mulL G.F n, pt C dd 0] (G.F i)) = ev ![comp1 (mulL G.F n) e, e] (G.F i)
      rw [ev_ev (constant_zero_pair_points hm0 (z0_pt 0)) (z0_1 e he0)]
      congr 1
      funext k j
      fin_cases k
      · rfl
      · exact ev_X (z0_1 e he0) 0 j
    have h2 : comp1 e (mulL G.F (n + 1)) = addOf G.F (comp1 e (mulL G.F n)) e := by
      show comp1 e (addOf G.F (mulL G.F n) (pt C dd 0)) = _
      rw [hom_at G he0 hhom hm0 (z0_pt 0)]
      congr 1
      funext i
      exact MulLFrob.germEval_oneStandardPoint_self (e i)
    rw [h1, h2, ih]

theorem idx_apply (μ : Fin 1 × Fin dd →₀ ℕ) (i j : Fin dd) :
    (μ.mapDomain (fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) + Finsupp.single ((1 : Fin 2), j) 1 :
      Fin 2 × Fin dd →₀ ℕ) ((0 : Fin 2), i) = μ ((0 : Fin 1), i) := by
  have hinj : Function.Injective (fun q : Fin 1 × Fin dd => ((0 : Fin 2), q.2)) := by
    intro p q h
    have h' : ((0 : Fin 2), p.2) = ((0 : Fin 2), q.2) := h
    exact Prod.ext (Subsingleton.elim _ _) (Prod.mk.inj h').2
  have hne : ((1 : Fin 2), j) ≠ ((0 : Fin 2), i) := by
    have h10 : (1 : Fin 2) ≠ 0 := by decide
    intro h
    exact h10 (congrArg Prod.fst h)
  rw [Finsupp.add_apply, Finsupp.single_apply, if_neg hne, add_zero]
  exact Finsupp.mapDomain_apply_of_injective hinj μ ((0 : Fin 1), i)

theorem aLin_eq (Y : FBChart C V O dd) (u w : Fin dd → C) :
    Y.aLin u w = ∑ i, coeff (Finsupp.single ((0 : Fin 1), i) V.l) (zl w Y.u1) * u i ^ V.l := by
  simp only [coeff_zl, Finsupp.mapDomain_single]
  unfold FBChart.aLin
  have h : ∀ j, coeff (Finsupp.single ((0 : Fin 1), j) 1) (Y.aOf u) =
      ∑ i, u i ^ V.l * coeff (Finsupp.single ((0 : Fin 2), i) V.l + Finsupp.single ((1 : Fin 2), j) 1) Y.u1 := by
    intro j
    show ∑ i, u i ^ V.l * coeff (Finsupp.single ((0 : Fin 2), i) V.l +
      (Finsupp.single ((0 : Fin 1), j) 1).mapDomain (fun q : Fin 1 × Fin dd => ((1 : Fin 2), q.2))) Y.u1 = _
    rw [Finsupp.mapDomain_single]
  simp only [h, Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring

theorem intS_zl {w : Fin dd → C} (hw : ∀ i, V.Ge 0 (w i)) {F : PS C 2 dd} (hF : IntS V F) : IntS V (zl w F) := by
  intro ν
  rw [coeff_zl]
  exact VF.Ge.sum fun j _ => VF.Ge.mul_int (hw j) (hF _)

theorem linear_part_unit_frobenius (Y : FBChart C V O dd) {w : Fin dd → C} (hw : ∀ i, V.Ge 0 (w i)) : FrobX V (zl w Y.u1) := by
  intro μ hμ
  obtain ⟨i, hi⟩ := hμ
  rw [coeff_zl]
  refine mm_sum _ _ fun j _ => mm_mul_ge' (hw j) (first_unit_series_frobenius C V O dd Y _ ⟨i, ?_⟩)
  rw [idx_apply]
  exact hi

end PairPointEvaluation


open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ PartialDerivEval MaximalIdealCongruence FirstVanishing SelfAdjointCongruence PairPointEvaluation MvPowerSeries in
theorem aLinAdj_holds : ALinAdjSt := by
  intro C _ _ V O _ _ dd Y e eb heI hebI he0 heb0 hhom hW u hu hV1 v hv
  have hl := V.l_prime.two_le
  obtain ⟨M, hMdef⟩ : ∃ M : Pt C 1 dd, M = mulL Y.B.G.F V.l := ⟨_, rfl⟩
  have hM0 : ∀ j, constantCoeff (M j) = 0 := fun j => by rw [hMdef]; exact FirstUnitSeriesIntegrality.multiplication_constantCoeff_zero Y.B.G V.l j
  have hMI : ∀ j, IntS V (M j) := fun j => by rw [hMdef]; exact FirstUnitSeriesIntegrality.mulL_int Y.B.G Y.intF V.l j
  have hMF : ∀ k, FrobX V (M k) := fun k μ hμ => by rw [hMdef]; exact mulLFrob_holds C V O dd Y k μ hμ
  obtain ⟨v', hv'def⟩ : ∃ v' : Fin dd → C, v' = linAct eb v := ⟨_, rfl⟩
  have hv' : ∀ i, V.Ge 0 (v' i) := fun i => by
    rw [hv'def]
    exact VF.Ge.sum fun j _ => VF.Ge.mul_int (hebI i _) (hv j)
  obtain ⟨T, hTdef⟩ : ∃ T : PS C 1 dd, T = zl v (FB.expS C (ev (n := 2) ![comp1 e (pt C dd 0), pt C dd 1] Y.h -
      ev (n := 2) ![pt C dd 0, comp1 eb (pt C dd 1)] Y.h)) := ⟨_, rfl⟩
  have hS : ∀ w, zl w Y.u1 = MvPowerSeries.C (V.l : C) * Y.sgP w - ev (n := 1) ![M] (Y.sgP w) := fun w => by
    rw [linear_part_first_unit, hMdef, MvPowerSeries.smul_eq_C_mul]
  have hT : T = Y.sgP v' - ev (n := 1) ![e] (Y.sgP v) := by
    rw [hTdef, constant_zero_first_zero_self Y e eb he0 heb0 v, hv'def]
  have hTI : IntS V T := by rw [hTdef]; exact intS_zl hv hW
  have hsg0 : ∀ w, constantCoeff (Y.sgP w) = 0 := fun w => OActSelf.cc_sgP Y w
  have hT0 : constantCoeff T = 0 := by
    rw [hT, map_sub, hsg0, const_ev (z0_1 e he0) (hsg0 v), sub_zero]
  have hS0 : ∀ w, constantCoeff (zl w Y.u1) = 0 := fun w => by
    rw [hS, map_sub, map_mul, hsg0, const_ev (z0_1 M hM0) (hsg0 w), mul_zero, sub_zero]
  have hSI : ∀ w, (∀ i, V.Ge 0 (w i)) → IntS V (zl w Y.u1) := fun w hw => intS_zl hw (first_unit_series_integral C V O dd Y)

  have key : ev (n := 1) ![e] (zl v Y.u1) + MvPowerSeries.C (V.l : C) * T = zl v' Y.u1 + ev (n := 1) ![M] T := by
    rw [hS, hS, hT, ev_sub (z0_1 e he0), ev_mul (z0_1 e he0), ev_C, ev_sub (z0_1 M hM0), eval_single_comp he0 hM0,
      eval_single_comp hM0 he0, hMdef, mulL_comm Y.B.G he0 hhom]
    ring

  obtain ⟨γ0, hγ0def⟩ : ∃ γ0 : Fin dd → PowerSeries C, γ0 = fun i => u i • (MvPowerSeries.X () : PowerSeries C) :=
    ⟨_, rfl⟩
  have hc : ∀ i n, PowerSeries.coeff n (γ0 i) = if n = 1 then u i else 0 := fun i n => by
    rw [hγ0def]
    show PowerSeries.coeff n (u i • (MvPowerSeries.X () : PowerSeries C)) = _
    rw [map_smul, coeffX', smul_eq_mul]
    split_ifs <;> simp
  have hcv0 : IsCv V γ0 := fun i => ⟨by
      have := hc i 0
      rw [if_neg (by omega)] at this
      rwa [PowerSeries.coeff_zero_eq_constantCoeff_apply] at this, fun n => by
      rw [hc]
      split_ifs
      · exact hu i
      · exact VF.Ge.zero 0⟩
  have hγz : ∀ j, constantCoeff (γ0 j) = 0 := fun j => (hcv0 j).1
  have hγI : ∀ j, IntS V (γ0 j) := fun j => intS_cv (hcv0 j).2
  have hG : HasSubst (fun q : Fin 1 × Fin dd => γ0 q.2) := hasSubst_of_constantCoeff_zero fun q => hγz q.2
  have hδ0 : ∀ φ : Pt C 1 dd, (∀ j, constantCoeff (φ j) = 0) →
      ∀ k, constantCoeff (subst (fun q : Fin 1 × Fin dd => γ0 q.2) (φ k)) = 0 :=
    fun φ hφ k => constantCoeff_subst_eq_zero hG (fun q => hγz q.2) (hφ k)
  have hδI : ∀ φ : Pt C 1 dd, (∀ j, IntS V (φ j)) →
      ∀ k, IntS V (subst (fun q : Fin 1 × Fin dd => γ0 q.2) (φ k)) :=
    fun φ hφ k => intS_subst (a := fun q : Fin 1 × Fin dd => γ0 q.2) (fun q => hγz q.2) (fun q => hγI q.2) (hφ k)
  have hδcv : ∀ φ : Pt C 1 dd, (∀ j, constantCoeff (φ j) = 0) → (∀ j, IntS V (φ j)) →
      IsCv V (fun k => subst (fun q : Fin 1 × Fin dd => γ0 q.2) (φ k)) :=
    fun φ h0 hI k => ⟨hδ0 φ h0 k, fun n => hδI φ hI k (Finsupp.single () n)⟩
  have hcomp : ∀ φ : Pt C 1 dd, (∀ j, constantCoeff (φ j) = 0) → ∀ f : PS C 1 dd,
      subst (fun q : Fin 1 × Fin dd => γ0 q.2) (ev (n := 1) ![φ] f) =
        subst (fun q : Fin 1 × Fin dd => subst (fun q : Fin 1 × Fin dd => γ0 q.2) (φ q.2)) f := by
    intro φ hφ f
    have hφS : HasSubst (fun q : Fin 1 × Fin dd => φ q.2) := hasSubst_of_constantCoeff_zero fun q => hφ q.2
    rw [eval_single_eq_subst, subst_comp_subst_apply hφS hG]
  have k2 := congrArg (subst (fun q : Fin 1 × Fin dd => γ0 q.2)) key
  rw [subst_add hG, subst_add hG, ← MvPowerSeries.smul_eq_C_mul, subst_smul hG, hcomp e he0, hcomp M hM0] at k2
  have k3 := congrArg (PowerSeries.coeff V.l) k2
  rw [map_add (f := _), map_add (f := _), map_smul, smul_eq_mul] at k3

  have hA1 := coeff_l_frob (hSI v hv) (hS0 v) (linear_part_unit_frobenius Y hv) (hδcv e he0 heI)
  have hlin : ∀ i, PowerSeries.coeff 1 (subst (fun q : Fin 1 × Fin dd => γ0 q.2) (e i)) = linAct e u i := fun i => by
    rw [coeff_one_subst_curve (he0 i) hγz]
    unfold linAct
    exact Finset.sum_congr rfl fun j _ => by rw [hc, if_pos rfl]
  simp only [hlin] at hA1
  rw [← aLin_eq] at hA1
  have hA3 := coeff_l_frob (hSI v' hv') (hS0 v') (linear_part_unit_frobenius Y hv') hcv0
  simp only [hc, if_pos] at hA3
  rw [← aLin_eq] at hA3
  have hA2 : V.MM ((V.l : C) * PowerSeries.coeff V.l (subst (fun q : Fin 1 × Fin dd => γ0 q.2) T)) :=
    mm_l_mul (intS_subst (a := fun q : Fin 1 × Fin dd => γ0 q.2) (fun q => hγz q.2) (fun q => hγI q.2) hTI
      (Finsupp.single () V.l))
  have hLow : ∀ k, LowMM V (subst (fun q : Fin 1 × Fin dd => γ0 q.2) (M k)) := by
    intro k n hn
    rcases Nat.lt_or_ge n V.l with h | h
    · exact coeff_lt_frob (hM0 k) (hMF k) hcv0 n h
    · have hnl : n = V.l := le_antisymm hn h
      subst hnl
      have h1 := coeff_l_frob (hMI k) (hM0 k) (hMF k) hcv0
      simp only [hc, if_pos] at h1
      have h2 := hV1 k
      rw [← hMdef] at h2
      have h3 := mm_add h1 h2
      rwa [sub_add_cancel] at h3
  have hA4 : V.MM (PowerSeries.coeff V.l
      (subst (fun q : Fin 1 × Fin dd => subst (fun q : Fin 1 × Fin dd => γ0 q.2) (M q.2)) T)) :=
    lowMM_subst (a := fun q : Fin 1 × Fin dd => subst (fun q : Fin 1 × Fin dd => γ0 q.2) (M q.2))
      (fun q => hδ0 M hM0 q.2) (fun q => hδI M hMI q.2) (fun q => hLow q.2) hTI hT0 V.l le_rfl
  rw [← hv'def]
  obtain ⟨A1, hA1d⟩ : ∃ A1, A1 = PowerSeries.coeff V.l
    (subst (fun q : Fin 1 × Fin dd => subst (fun q : Fin 1 × Fin dd => γ0 q.2) (e q.2)) (zl v Y.u1)) := ⟨_, rfl⟩
  obtain ⟨A3, hA3d⟩ : ∃ A3, A3 = PowerSeries.coeff V.l (subst (fun q : Fin 1 × Fin dd => γ0 q.2) (zl v' Y.u1)) :=
    ⟨_, rfl⟩
  rw [← hA1d, ← hA3d] at k3
  rw [← hA1d] at hA1
  rw [← hA3d] at hA3
  have efin : Y.aLin (linAct e u) v - Y.aLin u v' =
      (A3 - Y.aLin u v') - (A1 - Y.aLin (linAct e u) v) + (A1 - A3) := by ring
  have e13 : A1 - A3 = PowerSeries.coeff V.l
      (subst (fun q : Fin 1 × Fin dd => subst (fun q : Fin 1 × Fin dd => γ0 q.2) (M q.2)) T) -
        (V.l : C) * PowerSeries.coeff V.l (subst (fun q : Fin 1 × Fin dd => γ0 q.2) T) := by
    linear_combination k3
  rw [efin, e13]
  exact mm_add (mm_sub hA3 hA1) (mm_sub hA4 hA2)

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.LinearPartUnitFrobenius =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.UncurryLinearCombination =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.UncurryLinearCombination", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.FirstVanishingAt\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieAxes\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieCartFB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}

theorem FBChart.uncurry_log_constantCoeff_chart (Y : FBChart C V O dd) (i : Fin dd) : MvPowerSeries.constantCoeff (un1 (Y.lg i)) = 0 := by
  rw [constantCoeff_uncurry, Y.lg_const]

theorem FBChart.uncurry_exp_log_eq_X (Y : FBChart C V O dd) (i : Fin dd) :
    MvPowerSeries.subst (fun j => un1 (Y.lg j)) (un1 (Y.ex i)) = (MvPowerSeries.X i : MvPowerSeries (Fin dd) C) := by
  rw [uncurry_comp Y.lg_const, Y.ex_lg]
  exact uncurry_X i

theorem FBChart.uncurry_linear_combination (Y : FBChart C V O dd) (i : Fin dd) (μ : Fin dd →₀ ℕ) (hμ : μ.degree ≤ 1) :
    MvPowerSeries.coeff μ (un1 (Y.lg i)) =
      MvPowerSeries.coeff μ (MvPowerSeries.X i : MvPowerSeries (Fin dd) C) := by
  show MvPowerSeries.coeff (μ.mapDomain fun x : Fin dd => ((0 : Fin 1), x)) (Y.lg i) = _
  rw [Y.lg_lin i _ (by rw [Finsupp.degree_mapDomain]; exact hμ), ← uncurry_X i]
  rfl

theorem FBChart.ex_lg_at' (Y : FBChart C V O dd) {τ : Type} (A : Fin dd → MvPowerSeries τ C)
    (hA : ∀ j, MvPowerSeries.constantCoeff (A j) = 0) (i : Fin dd) :
    MvPowerSeries.subst (fun j => MvPowerSeries.subst A (un1 (Y.lg j))) (un1 (Y.ex i)) = A i := by
  have hA' := MvPowerSeries.hasSubst_of_constantCoeff_zero hA
  have hL : MvPowerSeries.HasSubst (fun j => un1 (Y.lg j)) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero fun j => Y.uncurry_log_constantCoeff_chart j
  rw [← MvPowerSeries.subst_comp_subst_apply hL hA', Y.uncurry_exp_log_eq_X, MvPowerSeries.subst_X hA']

theorem hom_of_lgLin (Y : FBChart C V O dd) {γ : Fin dd → PowerSeries C} {U : Fin dd → C} (hγ : IsCv V γ)
    (hlg : Y.LgLin γ U) (i : Fin dd) (μ : Fin 2 →₀ ℕ) (hμ0 : μ 0 < V.l) (hμ1 : μ 1 < V.l) :
    MvPowerSeries.coeff μ
      (MvPowerSeries.subst (fun q : Fin 2 × Fin dd => cvAt (MvPowerSeries.X q.1) (γ q.2)) (Y.B.G.F i) -
        cvAt (MvPowerSeries.X 0 + MvPowerSeries.X 1) (γ i)) = 0 := by
  have hl := V.l_prime.two_le
  have hγ0 : ∀ j, PowerSeries.constantCoeff (γ j) = 0 := fun j => (hγ j).1
  have hX : ∀ k : Fin 2, MvPowerSeries.constantCoeff (MvPowerSeries.X k : MvPowerSeries (Fin 2) C) = 0 :=
    fun k => MvPowerSeries.constantCoeff_X k
  have hS : MvPowerSeries.constantCoeff (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) C) = 0 := by
    rw [map_add (f := _), hX 0, hX 1, add_zero]
  have hP0 : ∀ (k : Fin 2) (j : Fin dd), MvPowerSeries.constantCoeff (cvAt (MvPowerSeries.X k) (γ j)) = 0 :=
    fun k j => const_cvAt (hX k) (hγ0 j)
  have hQ0 : ∀ j, MvPowerSeries.constantCoeff (cvAt (MvPowerSeries.X 0 + MvPowerSeries.X 1) (γ j)) = 0 :=
    fun j => const_cvAt hS (hγ0 j)
  have hPP : MvPowerSeries.HasSubst (fun q : Fin 2 × Fin dd => cvAt (MvPowerSeries.X q.1) (γ q.2)) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero fun q => hP0 q.1 q.2
  have hFP0 : ∀ j, MvPowerSeries.constantCoeff
      (MvPowerSeries.subst (fun q : Fin 2 × Fin dd => cvAt (MvPowerSeries.X q.1) (γ q.2)) (Y.B.G.F j)) = 0 :=
    fun j => MvPowerSeries.constantCoeff_subst_eq_zero hPP (fun q => hP0 q.1 q.2) (Y.B.G.const j)
  have hAt : ∀ (s : MvPowerSeries (Fin 2) C), MvPowerSeries.constantCoeff s = 0 → ∀ j,
      Agr (V.l ^ 2) (MvPowerSeries.subst (fun j' => cvAt s (γ j')) (un1 (Y.lg j))) (U j • s) := by
    intro s hs j
    rw [subst_cvAt hs hγ0, ← cvAt_smul_X hs]
    exact agr_subst_right (a := fun _ : Unit => s) (fun _ => hs) (hlg j)
  have hsum : ∀ j, Agr (V.l ^ 2)
      (MvPowerSeries.subst (fun j' => cvAt (MvPowerSeries.X 0) (γ j')) (un1 (Y.lg j)) +
        MvPowerSeries.subst (fun j' => cvAt (MvPowerSeries.X 1) (γ j')) (un1 (Y.lg j)))
      (MvPowerSeries.subst (fun j' => cvAt (MvPowerSeries.X 0 + MvPowerSeries.X 1) (γ j')) (un1 (Y.lg j))) := by
    intro j
    refine ((hAt _ (hX 0) j).add (hAt _ (hX 1) j)).trans ?_
    rw [← smul_add]
    exact (hAt _ hS j).symm
  have e1 := Y.ex_lg_at' _ hFP0 i
  have e1' : (fun j => MvPowerSeries.subst
      (fun j' => MvPowerSeries.subst (fun q : Fin 2 × Fin dd => cvAt (MvPowerSeries.X q.1) (γ q.2)) (Y.B.G.F j'))
      (un1 (Y.lg j))) = fun j =>
        MvPowerSeries.subst (fun j' => cvAt (MvPowerSeries.X 0) (γ j')) (un1 (Y.lg j)) +
        MvPowerSeries.subst (fun j' => cvAt (MvPowerSeries.X 1) (γ j')) (un1 (Y.lg j)) := by
    funext j
    exact lg_addOf Y (fun k j' => cvAt (MvPowerSeries.X k) (γ j')) hP0 j
  rw [e1'] at e1
  have e2 := Y.ex_lg_at' _ hQ0 i
  have hc : ∀ j, MvPowerSeries.constantCoeff
      (MvPowerSeries.subst (fun j' => cvAt (MvPowerSeries.X 0) (γ j')) (un1 (Y.lg j)) +
        MvPowerSeries.subst (fun j' => cvAt (MvPowerSeries.X 1) (γ j')) (un1 (Y.lg j))) = 0 := by
    intro j
    rw [map_add (f := _), MvPowerSeries.constantCoeff_subst_eq_zero
        (MvPowerSeries.hasSubst_of_constantCoeff_zero fun j' => hP0 0 j') (fun j' => hP0 0 j') (Y.uncurry_log_constantCoeff_chart j),
      MvPowerSeries.constantCoeff_subst_eq_zero
        (MvPowerSeries.hasSubst_of_constantCoeff_zero fun j' => hP0 1 j') (fun j' => hP0 1 j') (Y.uncurry_log_constantCoeff_chart j),
      add_zero]
  have hc' : ∀ j, MvPowerSeries.constantCoeff
      (MvPowerSeries.subst (fun j' => cvAt (MvPowerSeries.X 0 + MvPowerSeries.X 1) (γ j')) (un1 (Y.lg j))) = 0 :=
    fun j => MvPowerSeries.constantCoeff_subst_eq_zero
      (MvPowerSeries.hasSubst_of_constantCoeff_zero hQ0) hQ0 (Y.uncurry_log_constantCoeff_chart j)
  have hag := agr_subst_left hc hc' hsum (un1 (Y.ex i))
  rw [e1, e2] at hag
  have hdeg : μ.degree < V.l ^ 2 := by
    rw [Finsupp.degree_eq_sum, Fin.sum_univ_two]
    nlinarith
  rw [map_sub, sub_eq_zero]
  exact hag μ hdeg

theorem coeff1_of_lgLin (Y : FBChart C V O dd) {γ : Fin dd → PowerSeries C} {U : Fin dd → C} (hγ : IsCv V γ)
    (hlg : Y.LgLin γ U) (i : Fin dd) : PowerSeries.coeff 1 (γ i) = U i := by
  have hl := V.l_prime.two_le
  have hγ0 : ∀ j, PowerSeries.constantCoeff (γ j) = 0 := fun j => (hγ j).1
  have hlin : Agr 2 (un1 (Y.lg i)) (MvPowerSeries.X i) := fun e he => Y.uncurry_linear_combination i e (by omega)
  have h2 := agr_subst_right (a := γ) hγ0 hlin
  rw [MvPowerSeries.subst_X (MvPowerSeries.hasSubst_of_constantCoeff_zero hγ0)] at h2
  have h3 := (hlg i).mono (show 2 ≤ V.l ^ 2 by nlinarith)
  have h4 := (h2.symm.trans h3) (Finsupp.single () 1) (by rw [Finsupp.degree_single]; omega)
  change PowerSeries.coeff 1 (γ i) = PowerSeries.coeff 1 _ at h4
  rw [h4, map_smul, coeffX', if_pos rfl, smul_eq_mul, mul_one]

theorem agr_of_ty {I : Fin 2 → Type} [∀ g, Fintype (I g)] {g : Fin 2} {w : I g → C} {x : ℕ → I g ⊕ JJ I g → C}
    (h0 : x 0 = Sum.elim w 0) (h1 : ∀ c, x 1 (Sum.inl c) = 0) (cf : I g → C) :
    Agr (V.l ^ 2) (∑ c : I g, cf c • tyS V.l (fun s => x s (Sum.inl c)))
      ((∑ c, cf c * w c) • (MvPowerSeries.X () : PowerSeries C)) := by
  intro e he
  have hl := V.l_prime.two_le
  obtain ⟨n, rfl⟩ : ∃ n, e = Finsupp.single () n := ⟨e (), Finsupp.unique_single e⟩
  rw [Finsupp.degree_single] at he
  change PowerSeries.coeff n _ = PowerSeries.coeff n _

  rw [map_sum, map_smul, coeffX']
  simp only [map_smul, smul_eq_mul, tyS_good_coeff h0 h1 hl _ n he]
  by_cases hn1 : n = 1
  · simp [hn1]
  · simp [hn1]

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.UncurryLinearCombination =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfCore =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfCore", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieSelfCuts\npublic import Formalism.LocalToGlobal.CharacterGerms.FirstVanishingAt\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantZeroDoubleMultiplicationPair\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantZeroFirstThenZero\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePAddCvSelf\npublic import Formalism.LocalToGlobal.CharacterGerms.UncurryLinearCombination\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

def NoLinSelfSt : Prop :=
  ∀ (C : Type) [Field C] [CharZero C] (V : VF C) (O : Type) [CommRing O] [StarRing O] (dd : ℕ)
    (Y : FBChart C V O dd) (d : ℕ) [NeZero d] (I0 : Type) [Fintype I0] (p : SelfData Y d I0)
    (g : Fin 2) (a0 : ZMod d) (u0 : Fin dd → C), (∀ i, V.Ge 0 (u0 i)) →
    (∀ β, linAct (Y.B.A.act β) u0 = p.em a0 β • u0) → Y.FirstVanishingAt u0 →
    (∀ q : I0, V.MM (∑ col, Y.aLin (fun i => p.gm a0 col g * u0 i)
      (fun i => p.gm (p.ty0 q) col (1 - g) * p.e q i))) →
    ∀ v : Fin dd → C, (∀ i, V.Ge 0 (v i)) → V.MM (Y.aLin u0 v)

namespace SelfAdjointTop

open MaximalIdealCongruence

variable {C : Type} [Field C]

theorem not_mm_one {V : VF C} : ¬ V.MM (1 : C) := by
  intro h
  have h1 : (0 : WithTop ℝ) < V.v 1 := h
  rw [AddValuation.map_one] at h1
  exact lt_irrefl _ h1

theorem mm_of_unit_mul {V : VF C} {c x : C} (hc : ¬ V.MM c) (hc0 : V.Ge 0 c) (h : V.MM (c * x)) : V.MM x := by
  have hc0' : (0 : WithTop ℝ) ≤ V.v c := hc0
  have hc' : ¬ (0 : WithTop ℝ) < V.v c := hc
  have h0 : V.v c = 0 := le_antisymm (not_lt.mp hc') hc0'
  have h1 : (0 : WithTop ℝ) < V.v (c * x) := h
  rw [AddValuation.map_mul, h0, zero_add] at h1
  exact h1

theorem tyS_coeff_l {l : ℕ} (hl : 2 ≤ l) (f : ℕ → C) : PowerSeries.coeff l (tyS l f) = f 1 := by
  unfold tyS
  rw [PowerSeries.coeff_mk, Finset.sum_eq_single 1]
  · rw [pow_one, if_pos rfl]
  · intro s _ hs
    rw [if_neg]
    intro h
    apply hs
    have h' : l ^ s = l ^ 1 := by rw [pow_one]; exact h
    exact Nat.pow_right_injective hl h'
  · intro h
    exact absurd (Finset.mem_range.2 (by omega)) h

theorem linAct_comb {dd : ℕ} {ι : Type} [Fintype ι] (φ : Pt C 1 dd) (w : ι → C) (e : ι → Fin dd → C) :
    linAct φ (fun i => ∑ c, w c * e c i) = fun i => ∑ c, w c * linAct φ (e c) i := by
  funext i
  unfold linAct
  simp only [Finset.mul_sum]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun j _ => by ring

variable [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}

theorem coeff_aOf_smul (Y : FBChart C V O dd) (c : C) (u : Fin dd → C) (ν : Fin 1 × Fin dd →₀ ℕ) :
    MvPowerSeries.coeff ν (Y.aOf fun i => c * u i) = c ^ V.l * MvPowerSeries.coeff ν (Y.aOf u) := by
  show ∑ i, (c * u i) ^ V.l * _ = c ^ V.l * ∑ i, u i ^ V.l * _
  rw [Finset.mul_sum]
  exact Finset.sum_congr rfl fun i _ => by rw [mul_pow, mul_assoc]

theorem aLin_single (Y : FBChart C V O dd) (u : Fin dd → C) (j : Fin dd) :
    Y.aLin u (Pi.single j 1) = MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), j) 1) (Y.aOf u) := by
  unfold FBChart.aLin
  rw [Finset.sum_eq_single j]
  · rw [Pi.single_eq_same, one_mul]
  · intro b _ hb
    rw [Pi.single_eq_of_ne hb, zero_mul]
  · intro h
    exact absurd (Finset.mem_univ j) h

theorem first_vanishing_of_unit_smul (Y : FBChart C V O dd) {c : C} (hc : ¬ V.MM c) (hc0 : V.Ge 0 c) {u : Fin dd → C}
    (h : Y.FirstVanishingAt fun i => c * u i) : Y.FirstVanishingAt u := by
  intro k
  have hk := h k
  have e : ∑ i, MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), i) V.l) (mulL Y.B.G.F V.l k) * (c * u i) ^ V.l =
      c ^ V.l * ∑ i, MvPowerSeries.coeff (Finsupp.single ((0 : Fin 1), i) V.l) (mulL Y.B.G.F V.l k) * u i ^ V.l := by
    rw [Finset.mul_sum]
    exact Finset.sum_congr rfl fun i _ => by rw [mul_pow]; ring
  rw [e] at hk
  exact mm_of_unit_mul (fun h' => hc (mm_of_pow h')) (hc0.pow _) hk

end SelfAdjointTop


open SelfAdjointTop MaximalIdealCongruence in
theorem rank_maximal_self_core (hV1 : FirstVanishingCore) (hFE : FunEqCoreSt) (hC0 : CurveLinearTermCondition) (hNL : NoLinSelfSt) :
    RankMaximalSelfOfNondegenerate := by
  intro C _ _ V O _ _ dd Y d _ I0 _ p hN hrk Hc hAlt g a hbig w x hG hc0 c
  by_contra hwc
  have hl := V.l_prime.two_le
  obtain ⟨γ, lam, hγ, hlam, hlg, hfil⟩ := ((Y.rawSelf p).mem_tySet_iff V g x).1 hG.1.1
  have h0 : x 0 = Sum.elim w 0 := hG.1.2.1
  have h1 : ∀ c, x 1 (Sum.inl c) = 0 := hG.2
  have hγ0 : ∀ s, MvPowerSeries.constantCoeff (γ s) = 0 := fun s => (hγ s).1

  obtain ⟨a0, ha0⟩ : ∃ a0 : ZMod d, ∀ c : I0, w c ≠ 0 → p.ty0 c = a0 := by
    refine ⟨if g = 0 then a else a + p.hd, fun c' hw => ?_⟩
    by_contra hne
    apply hw
    have h2 := hG.1.2.2 0 (Sum.inl c') (by
      show (if g = 0 then p.ty0 c' else p.ty0 c' + p.hd) ≠ a + ((0 : ℕ) : ZMod d)
      rw [Nat.cast_zero, add_zero]
      by_cases hg : g = 0
      · rw [if_pos hg] at hne ⊢
        exact hne
      · rw [if_neg hg] at hne ⊢
        intro h3
        apply hne
        rw [← h3, add_assoc, p.hd_two, add_zero])
    rw [h0] at h2
    exact h2
  have hwI : ∀ c : I0, V.Ge 0 (w c) := fun c' => by
    have h2 := (Hc g).t2 x hG.1.1 0 (fun i hi => absurd hi (Nat.not_lt_zero _)) (Sum.inl c')
    rw [h0] at h2
    exact h2
  let u0 : Fin dd → C := fun i => ∑ c : I0, w c * p.e c i
  let U : Fin 2 → Fin dd → C := fun col i => p.gm a0 col g * u0 i
  let γc : Fin 2 → Fin dd → PowerSeries C := fun col i => γ (col, i)
  have hu0I : ∀ i, V.Ge 0 (u0 i) := fun i => VF.Ge.sum fun c' _ => VF.Ge.mul_int (hwI c') (p.e_int c' i)
  have hgI : ∀ b r s, V.Ge 0 (p.gm b r s) := fun b r s => SelfData.gm_int Y p b r s
  have hUI : ∀ col i, V.Ge 0 (U col i) := fun col i => VF.Ge.mul_int (hgI _ _ _) (hu0I i)
  have hU : ∀ col i, ∑ c : I0, (Y.rawSelf p).u g c (col, i) * w c = U col i := by
    intro col i
    show ∑ c : I0, (p.gm (p.ty0 c) col g * p.e c i) * w c = p.gm a0 col g * ∑ c : I0, w c * p.e c i
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun c' _ => ?_
    by_cases hw : w c' = 0
    · rw [hw]; ring
    · rw [ha0 c' hw]; ring
  have hcv : ∀ col, IsCv V (γc col) := fun col i => hγ (col, i)
  have hcol : ∀ (col : Fin 2) (f : MvPowerSeries (Fin dd) C), alongCv γ (inCol col f) = alongCv (γc col) f :=
    fun col f => subst_inCol hγ0 col f
  have hLg : ∀ col, Y.LgLin (γc col) (U col) := by
    intro col i
    have h2 : alongCv (γc col) (un1 (Y.lg i)) =
        ∑ c : I0, (Y.rawSelf p).u g c (col, i) • tyS V.l (fun s => x s (Sum.inl c)) := by
      rw [← hcol]
      exact hlg (col, i)
    rw [h2, ← hU]
    exact agr_of_ty (I := fun _ => I0) h0 h1 _

  obtain ⟨col, hcolU⟩ : ∃ col, ¬ V.MM (p.gm a0 col g) := by
    by_contra hall
    push Not at hall
    apply SelfAdjointTop.not_mm_one (V := V)
    rw [← SelfData.gm_pair Y p a0 g]
    exact mm_sum _ _ fun r _ => mm_mul_ge (hall r) (hgI _ _ _)
  have hV1U : ∀ r, Y.FirstVanishingAt (U r) := fun r => hV1 C V O dd Y (γc r) (U r) (hcv r) (hLg r)
  have hV1u : Y.FirstVanishingAt u0 := SelfAdjointTop.first_vanishing_of_unit_smul Y hcolU (hgI _ _ _) (hV1U col)
  have heig : ∀ β, linAct (Y.B.A.act β) u0 = p.em a0 β • u0 := by
    intro β
    show linAct (Y.B.A.act β) (fun i => ∑ c : I0, w c * p.e c i) = _
    rw [SelfAdjointTop.linAct_comb]
    funext i
    show ∑ c : I0, w c * linAct (Y.B.A.act β) (p.e c) i = p.em a0 β * ∑ c : I0, w c * p.e c i
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun c' _ => ?_
    rw [p.e_eig]
    show w c' * (p.em (p.ty0 c') β * p.e c' i) = _
    by_cases hw : w c' = 0
    · rw [hw]; ring
    · rw [ha0 c' hw]; ring

  have hlink : ∀ q : I0, V.MM (∑ r, Y.aLin (U r) (fun i => p.gm (p.ty0 q) r (1 - g) * p.e q i)) := by
    intro q
    have hq := congrArg (PowerSeries.coeff V.l) (hfil q)

    rw [SelfAdjointTop.tyS_coeff_l hl, map_add (f := _), map_sub, map_sum] at hq
    have hz : ∑ c : I0, PowerSeries.coeff V.l (if (Y.rawSelf p).ty g c = (Y.rawSelf p).ty (1 - g) q then
        (Y.rawSelf p).sg1 ((Y.rawSelf p).u g c) ((Y.rawSelf p).u (1 - g) q) • tyS V.l (fun s => x s (Sum.inl c))
        else 0) = 0 := by
      refine Finset.sum_eq_zero fun c' _ => ?_
      split_ifs
      · rw [map_smul, SelfAdjointTop.tyS_coeff_l hl, h1 c', smul_zero]
      · rw [map_zero]
    rw [hz, add_zero] at hq
    have hsg : alongCv γ ((Y.rawSelf p).sg ((Y.rawSelf p).u (1 - g) q)) =
        ∑ r, alongCv (γc r) (un1 (Y.sgP fun i => p.gm (p.ty0 q) r (1 - g) * p.e q i)) := by
      rw [Y.rawSelf_sg p, Fin.sum_univ_two, Fin.sum_univ_two, ← hcol, ← hcol, Y.rawCol_sg, Y.rawCol_sg]
      exact MvPowerSeries.subst_add (MvPowerSeries.hasSubst_of_constantCoeff_zero hγ0) _ _

    rw [hsg, map_sum] at hq
    have hc := hc0 q
    have hc' : V.MM ((V.l : C) * x 1 (Sum.inr q)) := hc
    rw [hq] at hc'
    have hvI : ∀ r i, V.Ge 0 (p.gm (p.ty0 q) r (1 - g) * p.e q i) :=
      fun r i => VF.Ge.mul_int (hgI _ _ _) (p.e_int q i)
    have hL := fun r => hC0 C V O dd Y (γc r) (U r) (hcv r) (hLg r) _ (hvI r)
    have e : ∑ r, Y.aLin (U r) (fun i => p.gm (p.ty0 q) r (1 - g) * p.e q i) =
        (V.l : C) * PowerSeries.coeff V.l (lam q) -
          (V.l : C) * (PowerSeries.coeff V.l (lam q) -
            ∑ r, PowerSeries.coeff V.l (alongCv (γc r) (un1 (Y.sgP fun i => p.gm (p.ty0 q) r (1 - g) * p.e q i)))) -
          ∑ r, ((V.l : C) * PowerSeries.coeff V.l
            (alongCv (γc r) (un1 (Y.sgP fun i => p.gm (p.ty0 q) r (1 - g) * p.e q i))) -
              Y.aLin (U r) (fun i => p.gm (p.ty0 q) r (1 - g) * p.e q i)) := by
      rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
      ring
    rw [e]
    exact MaximalIdealCongruence.mm_sub (MaximalIdealCongruence.mm_sub (MaximalIdealCongruence.mm_l_mul ((hlam q).2 _)) hc') (mm_sum _ _ fun r _ => hL r)
  have hnl := hNL C V O dd Y d I0 p g a0 u0 hu0I heig hV1u hlink

  have hfun : (fun i => PowerSeries.coeff 1 (γc col i)) = U col :=
    funext fun i => coeff1_of_lgLin Y (hcv col) (hLg col) i
  obtain ⟨b, hb, hbc⟩ := first_step_second_half C V Y.algClosed dd Y.B.G Y.intF (Y.aOf (U col)) (Y.chartLinearTerm (U col))
    (intS_aOf Y (first_unit_series_integral C V O dd Y) _ (hUI col)) (intS_c2lin Y _ (hUI col))
    (fun j => by
      rw [SelfAdjointTop.coeff_aOf_smul Y (p.gm a0 col g) u0, ← SelfAdjointTop.aLin_single]
      refine MaximalIdealCongruence.mm_mul_ge' ((hgI _ _ _).pow _) (hnl _ fun i => ?_)
      by_cases hij : i = j
      · subst hij; rw [Pi.single_eq_same]; exact VF.Ge.one
      · rw [Pi.single_eq_of_ne hij]; exact VF.Ge.zero 0)
    (hFE C V O dd Y (U col) (hUI col) (hV1U col))
  refine hN (γc col) (hcv col) ?_ ?_ ⟨b, hb, ?_⟩
  · by_contra hall
    push Not at hall
    apply hwc
    have hall' : ∀ i, V.MM (U col i) := fun i => by rw [← congrFun hfun i]; exact hall i
    have hu0M : ∀ i, V.MM (u0 i) := fun i => SelfAdjointTop.mm_of_unit_mul hcolU (hgI _ _ _) (hall' i)
    obtain ⟨wd, hwd, hsat⟩ := p.e_sat
    have e : w c = ∑ i, u0 i * wd i c := by
      show w c = ∑ i, (∑ c' : I0, w c' * p.e c' i) * wd i c
      simp only [Finset.sum_mul]
      rw [Finset.sum_comm]
      have : ∀ c' : I0, ∑ i, w c' * p.e c' i * wd i c = w c' * (if c' = c then 1 else 0) := by
        intro c'
        rw [← hsat c' c, Finset.mul_sum]
        exact Finset.sum_congr rfl fun i _ => by ring
      simp only [this, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
    rw [e]
    exact mm_sum _ _ fun i _ => mm_mul_ge (hu0M i) (hwd i c)
  · intro i μ hμ0 hμ1
    rw [hom_of_lgLin Y (hcv col) (hLg col) i μ hμ0 hμ1]
    exact mm_zero
  · rw [hfun]
    exact hbc

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfCore =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.MmOfUnitMul =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.MmOfUnitMul", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.FirstVanishingAt\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePStartSelf\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantZeroDoubleMultiplicationPair\nimport Formalism.LocalToGlobal.CharacterGerms.EndomorphismLimitIntegral\npublic import Formalism.LocalToGlobal.CharacterGerms.MaximalOfValuationGeOne\nimport Formalism.LocalToGlobal.CharacterGerms.RowTiePLSmallMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

namespace SelfLinear

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ MaximalIdealCongruence RowTiePE0 RowTiePProj RowTiePLSmall

variable {C : Type} [Field C] [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ}

theorem coeff_aOf (Y : FBChart C V O dd) (u : Fin dd → C) (ν : Fin 1 × Fin dd →₀ ℕ) :
    MvPowerSeries.coeff ν (Y.aOf u) = ∑ i, u i ^ V.l * MvPowerSeries.coeff
      (Finsupp.single ((0 : Fin 2), i) V.l + ν.mapDomain (fun q : Fin 1 × Fin dd => ((1 : Fin 2), q.2))) Y.u1 := rfl

theorem aLin_mul_left (Y : FBChart C V O dd) (c : C) (u v : Fin dd → C) :
    Y.aLin (fun i => c * u i) v = c ^ V.l * Y.aLin u v := by
  unfold FBChart.aLin
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [coeff_aOf, coeff_aOf, Finset.mul_sum, Finset.mul_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [mul_pow]
  ring

theorem aLin_mul_right (Y : FBChart C V O dd) (c : C) (u v : Fin dd → C) :
    Y.aLin u (fun i => c * v i) = c * Y.aLin u v := by
  unfold FBChart.aLin
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  ring

theorem aLin_sum_right (Y : FBChart C V O dd) {ι : Type} [Fintype ι] (u : Fin dd → C) (b : ι → C)
    (e : ι → Fin dd → C) : Y.aLin u (∑ c, b c • e c) = ∑ c, b c * Y.aLin u (e c) := by
  unfold FBChart.aLin
  simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem aLin_int (Y : FBChart C V O dd) {u v : Fin dd → C} (hu : ∀ i, V.Ge 0 (u i)) (hv : ∀ i, V.Ge 0 (v i)) :
    V.Ge 0 (Y.aLin u v) :=
  VF.Ge.sum fun j _ => (hv j).mul_int (intS_aOf Y (first_unit_series_integral C V O dd Y) u hu _)

theorem mm_of_unit_mul {c x : C} (hc : V.v c = 0) (h : V.MM (c * x)) : V.MM x := by
  unfold VF.MM at *
  rwa [V.v.map_mul, hc, zero_add] at h

theorem mm_pow_sub {A B : C} (hA : V.Ge 0 A) (hB : V.Ge 0 B) (h : V.MM (A - B)) : V.MM (A ^ V.l - B ^ V.l) := by
  have h1 := mm_add_pow (V := V) hB (hA.sub hB)
  have h2 : V.MM ((A - B) ^ V.l) := mm_pow h V.l_prime.ne_zero
  have e : A ^ V.l - B ^ V.l = ((B + (A - B)) ^ V.l - B ^ V.l - (A - B) ^ V.l) + (A - B) ^ V.l := by
    rw [add_sub_cancel]; ring
  rw [e]
  exact mm_add h1 h2

section Self

variable {d : ℕ} {I0 : Type} [Fintype I0]

theorem gm_frob (Y : FBChart C V O dd) (p : SelfData Y d I0) (a : ZMod d) (r s : Fin 2) :
    V.MM (p.gm (a + 1) r s - p.gm a r s ^ V.l) := by
  obtain ⟨M, hM⟩ := p.gm_lim 1
  have h0 := hM a r s
  have h1 := hM (a + 1) r s
  rw [Nat.cast_one] at h0 h1
  have e : p.gm (a + 1) r s - p.gm a r s ^ V.l =
      (p.gm (a + 1) r s - p.em (a + 1) (M r s)) + (p.em (a + 1) (M r s) - p.em a (M r s) ^ V.l) -
        (p.gm a r s ^ V.l - p.em a (M r s) ^ V.l) := by ring
  rw [e]
  exact mm_sub (mm_add (maximal_of_valuation_ge_one h1) (p.em_frob a _))
    (mm_pow_sub (SelfData.gm_int Y p a r s) (p.em_int a _) (maximal_of_valuation_ge_one h0))

end Self

theorem adj_seq (hAdj : ALinAdjSt) (Y : FBChart C V O dd) (s : ℕ → O) (h1 : ActCv Y s)
    (h2 : ActCv Y (fun n => star (s n))) :
    ∃ e eb : Pt C 1 dd,
      (∀ (N : ℕ) i μ, ∃ n0 : ℕ, ∀ n ≥ n0,
        V.Ge N (MvPowerSeries.coeff μ (e i) - MvPowerSeries.coeff μ (Y.B.A.act (s n) i))) ∧
      (∀ (N : ℕ) i μ, ∃ n0 : ℕ, ∀ n ≥ n0,
        V.Ge N (MvPowerSeries.coeff μ (eb i) - MvPowerSeries.coeff μ (Y.B.A.act (star (s n)) i))) ∧
      (∀ i, IntS V (eb i)) ∧
      ∀ u : Fin dd → C, (∀ i, V.Ge 0 (u i)) → Y.FirstVanishingAt u → ∀ v : Fin dd → C, (∀ i, V.Ge 0 (v i)) →
        V.MM (Y.aLin (linAct e u) v - Y.aLin u (linAct eb v)) := by
  obtain ⟨e, eb, hi, hib, he, heb, hhom, hexp⟩ := endomorphism_limit_integral Y s h1 h2
  refine ⟨e, eb, he, heb, hib, ?_⟩
  exact hAdj C V O dd Y e eb hi hib (const_of_lim Y (tends_of_endomorphism_limit Y he))
    (const_of_lim Y (a := fun n => star (s n)) (tends_of_endomorphism_limit Y (a := fun n => star (s n)) heb)) hhom hexp

theorem linAct_of_lim (Y : FBChart C V O dd) {s : ℕ → O} {e : Pt C 1 dd}
    (he : ∀ (N : ℕ) i μ, ∃ n0 : ℕ, ∀ n ≥ n0,
      V.Ge N (MvPowerSeries.coeff μ (e i) - MvPowerSeries.coeff μ (Y.B.A.act (s n) i)))
    {u : Fin dd → C} {χ : ℕ → C} {c : C} (hu : ∀ n, linAct (Y.B.A.act (s n)) u = χ n • u) (hχ : Tends V χ c) :
    linAct e u = c • u := by
  funext i
  have L := linAct_tends (tends_of_endomorphism_limit Y he) u i
  have eq : (fun n => linAct (Y.B.A.act (s n)) u i) = fun n => χ n * u i := funext fun n => by
    rw [hu]; rfl
  rw [eq] at L
  exact L.unique (hχ.mul (tends_const _))

theorem actCv_const (Y : FBChart C V O dd) (β : O) : ActCv Y (fun _ => β) := fun N _ _ =>
  ⟨0, fun _ _ => by rw [sub_self]; exact VF.Ge.zero _⟩

theorem linAct_int {φ : Pt C 1 dd} (hφ : ∀ i, IntS V (φ i)) {v : Fin dd → C} (hv : ∀ i, V.Ge 0 (v i)) (i : Fin dd) :
    V.Ge 0 (linAct φ v i) :=
  VF.Ge.sum fun j _ => (hφ i _).mul_int (hv j)

section Self2

variable {d : ℕ} [NeZero d] {I0 : Type} [Fintype I0]

theorem orth (hAdj : ALinAdjSt) (Y : FBChart C V O dd) (p : SelfData Y d I0) (a0 : ZMod d) (u0 : Fin dd → C)
    (hu0 : ∀ i, V.Ge 0 (u0 i)) (heig : ∀ β, linAct (Y.B.A.act β) u0 = p.em a0 β • u0) (hV1 : Y.FirstVanishingAt u0)
    (q : I0) (hq : a0 + 1 ≠ p.ty0 q + p.hd) : V.MM (Y.aLin u0 (p.e q)) := by
  obtain ⟨β, hβ⟩ := p.em_sep (a0 + 1) (p.ty0 q + p.hd) hq
  obtain ⟨e, eb, he, heb, -, hadj⟩ := adj_seq hAdj Y (fun _ => β) (actCv_const Y β) (actCv_const Y (star β))
  have e1 : linAct e u0 = p.em a0 β • u0 := linAct_of_lim Y he (fun _ => heig β) (tends_const _)
  have e2 : linAct eb (p.e q) = p.em (p.ty0 q + p.hd) β • p.e q :=
    linAct_of_lim Y (s := fun _ => star β) heb (fun _ => by rw [p.e_eig, p.em_conj]) (tends_const _)
  have h := hadj u0 hu0 hV1 (p.e q) (p.e_int q)
  rw [e1, e2] at h
  have f1 : Y.aLin (p.em a0 β • u0) (p.e q) = p.em a0 β ^ V.l * Y.aLin u0 (p.e q) :=
    aLin_mul_left Y (p.em a0 β) u0 (p.e q)
  have f2 : Y.aLin u0 (p.em (p.ty0 q + p.hd) β • p.e q) = p.em (p.ty0 q + p.hd) β * Y.aLin u0 (p.e q) :=
    aLin_mul_right Y _ u0 (p.e q)
  rw [f1, f2] at h
  have hL := aLin_int Y hu0 (p.e_int q)
  refine mm_of_unit_mul hβ ?_
  have e3 : (p.em (a0 + 1) β - p.em (p.ty0 q + p.hd) β) * Y.aLin u0 (p.e q) =
      (p.em (a0 + 1) β - p.em a0 β ^ V.l) * Y.aLin u0 (p.e q) +
        (p.em a0 β ^ V.l * Y.aLin u0 (p.e q) - p.em (p.ty0 q + p.hd) β * Y.aLin u0 (p.e q)) := by ring
  rw [e3]
  exact mm_add (mm_mul_ge (p.em_frob a0 β) hL) h

theorem onType (Y : FBChart C V O dd) (p : SelfData Y d I0) (g : Fin 2) (a0 : ZMod d) (u0 : Fin dd → C)
    (hu0 : ∀ i, V.Ge 0 (u0 i)) (q : I0) (hq : a0 + 1 = p.ty0 q + p.hd)
    (hc0 : V.MM (∑ col, Y.aLin (fun i => p.gm a0 col g * u0 i) (fun i => p.gm (p.ty0 q) col (1 - g) * p.e q i))) :
    V.MM (Y.aLin u0 (p.e q)) := by
  have hty : p.ty0 q = a0 + 1 + p.hd := by
    rw [hq, add_assoc, p.hd_two, add_zero]
  have hL := aLin_int Y hu0 (p.e_int q)
  have e1 : ∑ col, Y.aLin (fun i => p.gm a0 col g * u0 i) (fun i => p.gm (p.ty0 q) col (1 - g) * p.e q i) =
      (∑ col, p.gm a0 col g ^ V.l * p.gm (a0 + 1 + p.hd) col (1 - g)) * Y.aLin u0 (p.e q) := by
    rw [Finset.sum_mul]
    refine Finset.sum_congr rfl fun col _ => ?_
    rw [aLin_mul_left, aLin_mul_right, hty]
    ring
  rw [e1] at hc0
  have hS : V.MM (1 - ∑ col, p.gm a0 col g ^ V.l * p.gm (a0 + 1 + p.hd) col (1 - g)) := by
    rw [← SelfData.gm_pair Y p (a0 + 1) g, ← Finset.sum_sub_distrib]
    refine mm_sum _ _ fun col _ => ?_
    rw [← sub_mul]
    exact mm_mul_ge (gm_frob Y p a0 col g) (SelfData.gm_int Y p _ _ _)
  have e2 : Y.aLin u0 (p.e q) =
      (1 - ∑ col, p.gm a0 col g ^ V.l * p.gm (a0 + 1 + p.hd) col (1 - g)) * Y.aLin u0 (p.e q) +
        (∑ col, p.gm a0 col g ^ V.l * p.gm (a0 + 1 + p.hd) col (1 - g)) * Y.aLin u0 (p.e q) := by ring
  rw [e2]
  exact mm_add (mm_mul_ge hS hL) hc0

end Self2

end SelfLinear


open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ MaximalIdealCongruence RowTiePE0 RowTiePProj RowTiePLSmall SelfLinear in
theorem noLin_self (hAdj : ALinAdjSt) (hPL : ProjLieSelfSt) {C : Type} [Field C] [CharZero C] {V : VF C}
    {O : Type} [CommRing O] [StarRing O] {dd : ℕ} (Y : FBChart C V O dd) {d : ℕ} [NeZero d] {I0 : Type} [Fintype I0]
    (p : SelfData Y d I0) (g : Fin 2) (a0 : ZMod d) (u0 : Fin dd → C) (hu0 : ∀ i, V.Ge 0 (u0 i))
    (heig : ∀ β, linAct (Y.B.A.act β) u0 = p.em a0 β • u0) (hV1 : Y.FirstVanishingAt u0)
    (hc0 : ∀ q : I0, V.MM (∑ col, Y.aLin (fun i => p.gm a0 col g * u0 i)
      (fun i => p.gm (p.ty0 q) col (1 - g) * p.e q i))) :
    ∀ v : Fin dd → C, (∀ i, V.Ge 0 (v i)) → V.MM (Y.aLin u0 v) := by
  open SelfLinear Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ MaximalIdealCongruence RowTiePE0 RowTiePProj RowTiePLSmall in
  intro v hv
  have hq : ∀ q, V.MM (Y.aLin u0 (p.e q)) := fun q => by
    by_cases h : a0 + 1 = p.ty0 q + p.hd
    · exact onType Y p g a0 u0 hu0 q h (hc0 q)
    · exact orth hAdj Y p a0 u0 hu0 heig hV1 q h
  obtain ⟨ε, hε, hε1, hεx⟩ := p.em_unr
  have hl2 : 2 ≤ V.l := V.l_prime.two_le
  have hεs := star_rel hε
  have hεs1 : ∀ a, V.MM (p.em a (star ε) - 1) := fun a => by rw [p.em_conj]; exact hε1 _
  have hεsx : ∀ x : O, (∀ a, V.MM (p.em a x)) → ∃ y, star ε * x = (V.l : O) * y := by
    intro x hx
    obtain ⟨y, hy⟩ := hεx (star x) fun a => by rw [p.em_conj]; exact hx _
    refine ⟨star y, ?_⟩
    have h := congrArg star hy
    simp only [star_mul, star_star, star_natCast] at h
    rw [mul_comm, h, mul_comm]
  have cvA : ActCv Y (fun n => ε ^ V.l ^ n) := fun N i μ => by
    obtain ⟨n0, h⟩ := lSmall_holds C V O dd Y (fun n => ε ^ V.l ^ (n + 1)) (fun n => ε ^ V.l ^ n)
      (pow_cong hl2 hε) N i μ
    exact ⟨n0, h⟩
  have cvB : ActCv Y (fun n => star ε ^ V.l ^ n) := fun N i μ => by
    obtain ⟨n0, h⟩ := lSmall_holds C V O dd Y (fun n => star ε ^ V.l ^ (n + 1)) (fun n => star ε ^ V.l ^ n)
      (pow_cong hl2 hεs) N i μ
    exact ⟨n0, h⟩
  have sA : (fun n => star (ε ^ V.l ^ n)) = fun n => star ε ^ V.l ^ n := funext fun n => star_pow _ _
  obtain ⟨e, eb, he, heb, hib, hadj⟩ := adj_seq hAdj Y (fun n => ε ^ V.l ^ n) cvA (by rw [sA]; exact cvB)
  simp only [star_pow] at heb
  have e1 : linAct e u0 = (1 : C) • u0 :=
    linAct_of_lim Y he (χ := fun n => p.em a0 ε ^ V.l ^ n) (fun n => by rw [heig, map_pow]) (tends_pow_one (hε1 a0))
  rw [one_smul] at e1
  obtain ⟨b, hb⟩ := hPL C V O dd Y d I0 p (star ε) hεs hεs1 hεsx eb heb v
  obtain ⟨wd, hwd, hsat⟩ := p.e_sat
  have hbint : ∀ c, V.Ge 0 (b c) := by
    intro c
    have e : b c = ∑ x, linAct eb v x * wd x c := by
      rw [hb]
      simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Finset.sum_mul]
      rw [Finset.sum_comm]
      have : ∀ c', ∑ x, b c' * p.e c' x * wd x c = b c' * (if c' = c then 1 else 0) := by
        intro c'
        rw [← hsat c' c, Finset.mul_sum]
        refine Finset.sum_congr rfl fun x _ => ?_
        ring
      simp only [this, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
    rw [e]
    exact VF.Ge.sum fun x _ => (linAct_int hib hv x).mul_int (hwd x c)
  have h := hadj u0 hu0 hV1 v hv
  rw [e1, hb, aLin_sum_right] at h
  have e2 : Y.aLin u0 v = (Y.aLin u0 v - ∑ c, b c * Y.aLin u0 (p.e c)) + ∑ c, b c * Y.aLin u0 (p.e c) := by ring
  rw [e2]
  exact mm_add h (mm_sum _ _ fun c _ => mm_mul_ge' (hbint c) (hq c))

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.MmOfUnitMul =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfOfProjection =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfOfProjection", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfCore\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePKeyDef\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePStartSelf\npublic import Formalism.LocalToGlobal.CharacterGerms.MmOfUnitMul\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePProjLieSelf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.FormalSeriesBounds

theorem noLinSelf_of (hAdj : ALinAdjSt) (hPL : ProjLieSelfSt) : NoLinSelfSt :=
  fun _ _ _ _ _ _ _ _ Y _ _ _ _ p g a0 u0 hu0 heig hV1 hc0 => noLin_self hAdj hPL Y p g a0 u0 hu0 heig hV1 hc0

theorem rank_maximal_self_of_projection (hV1 : FirstVanishingCore) (hFE : FunEqCoreSt) (hC0 : CurveLinearTermCondition) (hAdj : ALinAdjSt) (hPL : ProjLieSelfSt) :
    RankMaximalSelfOfNondegenerate :=
  rank_maximal_self_core hV1 hFE hC0 (noLinSelf_of hAdj hPL)

theorem rank_maximal_self_of_eigen (hV1 : FirstVanishingCore) (hFE : FunEqCoreSt) (hC0 : CurveLinearTermCondition) (hAdj : ALinAdjSt)
    (hE : RowTiePKey.KeyEigSt) : RankMaximalSelfOfNondegenerate :=
  rank_maximal_self_of_projection hV1 hFE hC0 hAdj (projLieSelf_of hE)

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfOfProjection =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfUnconditional =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfUnconditional", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieSelfCuts\npublic import Formalism.LocalToGlobal.CharacterGerms.ConstantZeroMultiplicationPair\nimport Formalism.LocalToGlobal.CharacterGerms.FirstVanishingCore\npublic import Formalism.LocalToGlobal.CharacterGerms.FunEqCoreHolds\npublic import Formalism.LocalToGlobal.CharacterGerms.LinearPartUnitFrobenius\npublic import Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfOfProjection\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTiePKeyEig2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.FormalSeriesBounds

theorem rank_maximal_self_unconditional : RankMaximalSelfOfNondegenerate :=
  rank_maximal_self_of_eigen first_vanishing_core funEqCore_holds curve_linear_term_unconditional aLinAdj_holds RowTiePKey.keyEig_holds

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfUnconditional =====
