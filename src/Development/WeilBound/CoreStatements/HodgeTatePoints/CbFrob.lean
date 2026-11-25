module

public import Development.WeilBound.CoreStatements.HodgeTatePoints.CbBase
public import Development.WeilBound.CoreStatements.HodgeTatePoints.CoeffEvPowOne
public import Development.WeilBound.CoreStatements.HodgeTatePoints.FirstPowerEqProdAt
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
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.Separation.CompletelyRegular
import Mathlib.Topology.Sheaves.Init
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.HasSubstEv
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ConnectionKillsSeries

@[expose] public section

noncomputable section

namespace PositivityTheory.HtPt.Cb

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj
open ReciprocityTheory.ChartRestriction.G.TB

section

variable {R : Type} [CommRing R] {d m n : ℕ}

open scoped MvPowerSeries.WithPiTopology in
private theorem pderiv_ev_rows {b : Fin m → Pt R n d} (hb : ZZ b)
    (f : PS R m d) (v : Fin n × Fin d) :
    pderiv v (ev b f) = ∑ a, ∑ c, ev b (pderiv (a, c) f) * pderiv v (b a c) := by
  classical
  let : UniformSpace R := ⊥
  have hR : DiscreteUniformity R := ⟨rfl⟩
  let a : Fin m × Fin d → PS R n d := fun s => b s.1 s.2
  have ha : HasSubst a := hasSubst_ev b hb
  have hcont {σ : Type} (i : σ) :
      Continuous (fun g : MvPowerSeries σ R => pderiv i g) := by
    apply continuous_pi
    intro e
    change Continuous (fun g : MvPowerSeries σ R => coeff e (pderiv i g))
    simp only [coeff_pderiv]
    exact (MvPowerSeries.WithPiTopology.continuous_coeff R _).mul continuous_const
  have hsub : Continuous (subst a : PS R m d → PS R n d) := continuous_subst ha
  have hp : ∀ g : MvPolynomial (Fin m × Fin d) R,
      pderiv v (MvPolynomial.aeval a g) =
        ∑ s, MvPolynomial.aeval a (MvPolynomial.pderiv s g) * pderiv v (a s) := by
    intro g
    induction g using MvPolynomial.induction_on with
    | C r => simp
    | add g h hg hh => simp [hg, hh, add_mul, Finset.sum_add_distrib]
    | mul_X g s hg =>
      have hX (x : Fin m × Fin d) :
          MvPolynomial.aeval a (MvPolynomial.pderiv x
            (MvPolynomial.X s : MvPolynomial (Fin m × Fin d) R)) =
            if s = x then 1 else 0 := by
        by_cases h : s = x
        · subst x
          simp
        · simp [MvPolynomial.pderiv_X, h]
      rw [map_mul, MvPolynomial.aeval_X, Derivation.leibniz, hg, smul_eq_mul, smul_eq_mul,
        Finset.mul_sum]
      simp only [MvPolynomial.pderiv_mul, map_add, map_mul, MvPolynomial.aeval_X, hX, mul_ite,
        ite_mul, mul_one, mul_zero, zero_mul, add_mul, Finset.sum_add_distrib,
        Finset.sum_ite_eq, Finset.mem_univ, ite_true]
      rw [add_comm]
      congr 1
      exact Finset.sum_congr rfl fun _ _ => by ac_rfl
  rw [← Fintype.sum_prod_type (fun s : Fin m × Fin d =>
    ev b (pderiv s f) * pderiv v (b s.1 s.2))]
  change pderiv v (subst a f) = ∑ s, subst a (pderiv s f) * pderiv v (a s)
  refine congrFun (MvPowerSeries.WithPiTopology.denseRange_toMvPowerSeries.equalizer
    (hcont v |>.comp hsub)
    (continuous_finsetSum _ fun s _ => (hsub.comp (hcont s)).mul continuous_const) ?_) f
  funext g
  simpa only [Function.comp_apply, Finset.sum_apply, Pi.mul_apply, pderiv_coe, subst_coe] using hp g

private theorem constantCoeff_partial (f : PS R n d) (v : Fin n × Fin d) :
    constantCoeff (pderiv v f) = coeff (Finsupp.single v 1) f := by
  rw [← coeff_zero_eq_constantCoeff_apply, coeff_pderiv, zero_add]
  simp

theorem ev_at_zero (f : PS R 1 d) : ev ![(0 : Pt R n d)] f = C (constantCoeff f) := by
  ext e
  have ha : HasSubst (fun q : Fin 1 × Fin d => (![(0 : Pt R n d)] q.1 q.2)) :=
    hasSubst_ev _ (by intro j i; simp)
  rw [ev, coeff_subst ha, finsum_eq_single _ 0]
  · simp [coeff_C, coeff_one]
  · intro d' hd'
    obtain ⟨s, hs⟩ : ∃ s, d' s ≠ 0 := by
      by_contra hcon
      push Not at hcon
      exact hd' (Finsupp.ext hcon)
    have hz : (![(0 : Pt R n d)] s.1 s.2) ^ d' s = 0 := by simp [zero_pow hs]
    rw [Finsupp.prod, Finset.prod_eq_zero (Finsupp.mem_support_iff.2 hs) hz]
    simp

theorem dcomp_ne {s t : Fin n} (h : t ≠ s) (φ : Pt R 1 d) (j c : Fin d) :
    pderiv (s, j) (comp1 φ (pt R d t) c) = 0 := by
  show pderiv (s, j) (ev ![pt R d t] (φ c)) = 0
  rw [pderiv_ev_rows (ZZ_cons (Z_pt t) ZZ_nil), Fin.sum_univ_one]
  simp [ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt, h]

theorem dcomp_eq (s : Fin n) (φ : Pt R 1 d) (j c : Fin d) :
    pderiv (s, j) (comp1 φ (pt R d s) c) = ev ![pt R d s] (pderiv ((0 : Fin 1), j) (φ c)) := by
  show pderiv (s, j) (ev ![pt R d s] (φ c)) = _
  rw [pderiv_ev_rows (ZZ_cons (Z_pt s) ZZ_nil), Fin.sum_univ_one]
  simp [ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt]

theorem jac_cancel (G : FGLaw R d) {x : Pt R n d} (hx : Z x) (v : Fin d → PS R n d)
    (h : ∀ j, ∑ c, v c * ev ![x, 0] (pderiv ((1 : Fin 2), j) (G.F c)) = 0) (c : Fin d) : v c = 0 := by
  let M : Matrix (Fin d) (Fin d) (PS R n d) := fun c j => ev ![x, 0] (pderiv ((1 : Fin 2), j) (G.F c))
  have hb : ZZ ![x, (0 : Pt R n d)] := ZZ_cons hx (ZZ_cons Z_zero ZZ_nil)
  have hb0 : ZZ (n := 1) ![(0 : Pt R 1 d), pt R d 0] := ZZ_cons Z_zero (ZZ_cons (Z_pt 0) ZZ_nil)
  have hcc : ∀ c j, constantCoeff (M c j) = if c = j then 1 else 0 := by
    intro c j
    show constantCoeff (ev ![x, 0] (pderiv ((1 : Fin 2), j) (G.F c))) = _
    rw [ccev hb, constantCoeff_partial]
    have hu : constantCoeff (pderiv ((0 : Fin 1), j) (ev ![(0 : Pt R 1 d), pt R d 0] (G.F c))) =
        constantCoeff (pderiv ((0 : Fin 1), j) (pt R d 0 c)) := by
      rw [G.unit c]
      rfl
    rw [pderiv_ev_rows hb0, Fin.sum_univ_two, ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt] at hu
    simp [ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt, ccev hb0, constantCoeff_partial] at hu
    rw [hu]
  have hdet : IsUnit M.det := by
    rw [MvPowerSeries.isUnit_iff_constantCoeff, RingHom.map_det]
    have h1 : (constantCoeff : PS R n d →+* R).mapMatrix M = 1 := by
      ext c j
      simp [hcc, Matrix.one_apply]
    rw [h1, Matrix.det_one]
    exact isUnit_one
  have hv : Matrix.vecMul v M = 0 := by
    funext j
    exact h j
  have hv' : v = Matrix.vecMul (Matrix.vecMul v M) M⁻¹ := by
    rw [Matrix.vecMul_vecMul, Matrix.mul_nonsing_inv _ hdet, Matrix.vecMul_one]
  rw [hv', hv, Matrix.zero_vecMul]
  rfl

theorem ev_d_prod {b : Fin m → Pt R n d} (hb : ZZ b) (v : Fin m × Fin d) (f : ℕ → PS R m d)
    (h : ∀ k, ev b (pderiv v (f k)) = 0) (N : ℕ) : ev b (pderiv v (∏ k ∈ Finset.range N, f k)) = 0 := by
  induction N with
  | zero => simp [evz hb]
  | succ N ih =>
    rw [Finset.prod_range_succ, Derivation.leibniz, smul_eq_mul, smul_eq_mul,
      eva hb, evm hb, evm hb, ih, h, mul_zero, mul_zero, add_zero]

theorem d_pow_p (p : ℕ) [CharP R p] (v : Fin n × Fin d) (f : PS R n d) : pderiv v (f ^ p) = 0 := by
  rw [Derivation.leibniz_pow]
  have hp : (p : R) = 0 := CharP.cast_eq_zero R p
  have h0 : (p : MvPowerSeries (Fin n × Fin d) R) = 0 := by
    rw [← map_natCast (algebraMap R (MvPowerSeries (Fin n × Fin d) R)), hp, map_zero]
  rw [nsmul_eq_mul, h0, zero_mul]

variable {O : Type} [CommRing O]

theorem d_act_p (p : ℕ) [CharP R p] {G : FGLaw R d} (A : OAct O G) (i j : Fin d) :
    pderiv ((0 : Fin 1), j) (A.act (p : O) i) = 0 := by
  have hb : ZZ (n := 1) ![pt R d 0, (0 : Pt R 1 d)] := ZZ_cons (Z_pt 0) (ZZ_cons Z_zero ZZ_nil)
  have hp0 : ∀ e k : Fin d, coeff (Finsupp.single ((0 : Fin 1), k) 1) (A.act (p : O) e) = 0 := by
    intro e k
    have h1 := congrFun (congrFun (lin_act_nat A p) e) k
    simp only [lin] at h1
    rw [h1]
    simp [Matrix.one_apply, CharP.cast_eq_zero]
  refine jac_cancel G (Z_pt (R := R) (d := d) (n := 1) 0)
    (fun c => pderiv ((0 : Fin 1), c) (A.act (p : O) i)) (fun k => ?_) j
  have L : ev ![pt R d 0, (0 : Pt R 1 d)]
      (pderiv ((1 : Fin 2), k) (comp1 (A.act (p : O)) (G.add (pt R d 0) (pt R d 1)) i)) =
      ∑ c, pderiv ((0 : Fin 1), c) (A.act (p : O) i) *
        ev ![pt R d 0, (0 : Pt R 1 d)] (pderiv ((1 : Fin 2), k) (G.F c)) := by
    show ev _ (pderiv _ (ev ![G.add (pt R d 0) (pt R d 1)] (A.act (p : O) i))) = _
    rw [pderiv_ev_rows (ZZ_cons (Z_add G (Z_pt 0) (Z_pt 1)) ZZ_nil), Fin.sum_univ_one]
    simp only [Matrix.cons_val_zero, evsum hb]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [evm hb, ev1 hb (Z_add G (Z_pt 0) (Z_pt 1)), ep_add G hb (Z_pt 0) (Z_pt 1), ep_pt hb, ep_pt hb]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, p_add_zero G (Z_pt 0)]
    congr 1
    · exact ev_pt_self _ (fun l => by fin_cases l; rfl) _
    · show ev _ (pderiv _ (ev ![pt R d 0, pt R d 1] (G.F c))) = _
      rw [eval_points_two]
  have Rt : ev ![pt R d 0, (0 : Pt R 1 d)]
      (pderiv ((1 : Fin 2), k) (G.add (comp1 (A.act (p : O)) (pt R d 0))
        (comp1 (A.act (p : O)) (pt R d 1)) i)) = 0 := by
    show ev _ (pderiv _ (ev ![comp1 (A.act (p : O)) (pt R d 0), comp1 (A.act (p : O)) (pt R d 1)]
      (G.F i))) = 0
    rw [pderiv_ev_rows (ZZ_cons (Z_comp1 (Z_act A _) (Z_pt 0))
      (ZZ_cons (Z_comp1 (Z_act A _) (Z_pt 1)) ZZ_nil)), Fin.sum_univ_two]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one]
    simp only [dcomp_ne (show (0 : Fin 2) ≠ 1 by decide), dcomp_eq, mul_zero, Finset.sum_const_zero,
      zero_add, evsum hb, evm hb]
    refine Finset.sum_eq_zero fun e _ => ?_
    rw [ev1 hb (Z_pt 1), ep_pt hb]
    simp only [Matrix.cons_val_one, Matrix.cons_val_zero, ev_at_zero, constantCoeff_partial,
      hp0, map_zero, mul_zero]
  have e := congrArg (fun F : Pt R 2 d => ev ![pt R d 0, (0 : Pt R 1 d)]
    (pderiv ((1 : Fin 2), k) (F i))) (A.hom (p : O))
  rw [L, Rt] at e
  exact e

variable [StarRing O] (B : FB R d O)

theorem deriv_first_first_form_zero {z : Pt R n d} (hz : Z z) (c : Fin d) : ev ![0, 0, z] (pderiv ((0 : Fin 3), c) B.ph1) = 0 := by
  have hb : ZZ ![(0 : Pt R n d), z] := ZZ_cons Z_zero (ZZ_cons hz ZZ_nil)
  have e0 : pderiv ((0 : Fin 2), c) (ev ![pt R d 0, 0, pt R d 1] B.ph1) = 0 := by
    rw [B.cocycleLeft_zero_snd]
    exact Derivation.map_one_eq_zero _
  rw [pderiv_ev_rows (ZZ_cons (Z_pt 0) (ZZ_cons Z_zero (ZZ_cons (Z_pt 1) ZZ_nil))),
    Fin.sum_univ_three] at e0
  simp [ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt] at e0
  have e1 := congrArg (ev ![(0 : Pt R n d), z]) e0
  rw [ev3 hb (Z_pt 0) Z_zero (Z_pt 1), ep_pt hb, ep_zero hb, ep_pt hb, evz hb] at e1
  simpa using e1

theorem deriv_second_first_form_zero {z : Pt R n d} (hz : Z z) (c : Fin d) : ev ![0, 0, z] (pderiv ((1 : Fin 3), c) B.ph1) = 0 := by
  have hb : ZZ ![(0 : Pt R n d), z] := ZZ_cons Z_zero (ZZ_cons hz ZZ_nil)
  have e0 : pderiv ((0 : Fin 2), c) (ev ![0, pt R d 0, pt R d 1] B.ph1) = 0 := by
    rw [B.cocycleLeft_zero_fst]
    exact Derivation.map_one_eq_zero _
  rw [pderiv_ev_rows (ZZ_cons Z_zero (ZZ_cons (Z_pt 0) (ZZ_cons (Z_pt 1) ZZ_nil))),
    Fin.sum_univ_three] at e0
  simp [ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt] at e0
  have e1 := congrArg (ev ![(0 : Pt R n d), z]) e0
  rw [ev3 hb Z_zero (Z_pt 0) (Z_pt 1), ep_zero hb, ep_pt hb, ep_pt hb, evz hb] at e1
  simpa using e1

private theorem ev_zero_pderiv_pow1_eq_zero {z : Pt R n d} (hz : Z z) (k : Fin d) (N : ℕ) :
    ev ![(0 : Pt R n d), z] (pderiv ((0 : Fin 2), k) (pow1 B N)) = 0 := by
  have hb : ZZ ![(0 : Pt R n d), z] := ZZ_cons Z_zero (ZZ_cons hz ZZ_nil)
  unfold pow1
  refine ev_d_prod hb _ _ (fun l => ?_) N
  rw [pderiv_ev_rows (ZZ_cons (Z_comp1 (Z_act B.A _) (Z_pt 0))
    (ZZ_cons (Z_pt 0) (ZZ_cons (Z_pt 1) ZZ_nil))), Fin.sum_univ_three]
  simp only [Matrix.cons_val_two, Matrix.tail_cons,
    eva hb, evsum hb, evm hb, ev3 hb (Z_comp1 (Z_act B.A _) (Z_pt 0)) (Z_pt 0) (Z_pt 1),
    ep_comp1 _ hb (Z_pt 0), ep_pt hb, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
    germComp1_zero_of_noConstantCoeff (Z_act _ _), deriv_first_first_form_zero B hz, deriv_second_first_form_zero B hz, zero_mul, Finset.sum_const_zero,
    zero_add]
  refine Finset.sum_eq_zero fun e _ => ?_
  simp [ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt, evz hb]

theorem deriv_first_power_char_p (p : ℕ) [CharP R p] (j : Fin d) : pderiv ((0 : Fin 2), j) (pow1 B p) = 0 := by
  have hb : ZZ (n := 2) ![pt R d 0, 0, pt R d 1] :=
    ZZ_cons (Z_pt 0) (ZZ_cons Z_zero (ZZ_cons (Z_pt 1) ZZ_nil))
  refine jac_cancel B.G (Z_pt (R := R) (d := d) (n := 2) 0)
    (fun c => pderiv ((0 : Fin 2), c) (pow1 B p)) (fun k => ?_) j
  have hadd : ∀ c, pderiv ((1 : Fin 3), k) (B.G.add (pt R d 0) (pt R d 1) c) =
      ev ![pt R d 0, pt R d 1] (pderiv ((1 : Fin 2), k) (B.G.F c)) := by
    intro c
    show pderiv _ (ev ![pt R d 0, pt R d 1] (B.G.F c)) = _
    rw [pderiv_ev_rows (ZZ_cons (Z_pt 0) (ZZ_cons (Z_pt 1) ZZ_nil)), Fin.sum_univ_two]
    simp [ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt]
  have hz2 : ∀ c, pderiv ((1 : Fin 3), k) (pt R d 2 c) = 0 := by
    intro c
    simp [ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt]
  have L : ev ![pt R d 0, (0 : Pt R 2 d), pt R d 1] (pderiv ((1 : Fin 3), k)
      (ev ![B.G.add (pt R d 0) (pt R d 1), pt R d 2] (pow1 B p) * B.ph1 ^ p)) =
      ∑ c, pderiv ((0 : Fin 2), c) (pow1 B p) *
        ev ![pt R d 0, (0 : Pt R 2 d)] (pderiv ((1 : Fin 2), k) (B.G.F c)) := by
    rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul, d_pow_p, mul_zero, zero_add,
      evm hb, evpow hb, B.cocycleLeft_zero_snd, one_pow, one_mul,
      pderiv_ev_rows (ZZ_cons (Z_add B.G (Z_pt 0) (Z_pt 1)) (ZZ_cons (Z_pt 2) ZZ_nil)),
      Fin.sum_univ_two]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
      hz2, mul_zero, Finset.sum_const_zero, add_zero, evsum hb, evm hb, hadd,
      ev2 hb (Z_add B.G (Z_pt 0) (Z_pt 1)) (Z_pt 2), ev2 hb (Z_pt 0) (Z_pt 1),
      ep_add B.G hb (Z_pt 0) (Z_pt 1), ep_pt hb, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.head_cons, Matrix.cons_val_two, Matrix.tail_cons, p_add_zero B.G (Z_pt 0), eval_points_two]
  have hA : pderiv ((1 : Fin 3), k) (ev ![pt R d 0, pt R d 2] (pow1 B p)) = 0 := by
    rw [pderiv_ev_rows (ZZ_cons (Z_pt 0) (ZZ_cons (Z_pt 2) ZZ_nil)), Fin.sum_univ_two]
    simp [ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt]
  have hBq : ev ![pt R d 0, (0 : Pt R 2 d), pt R d 1]
      (pderiv ((1 : Fin 3), k) (ev ![pt R d 1, pt R d 2] (pow1 B p))) = 0 := by
    rw [pderiv_ev_rows (ZZ_cons (Z_pt 1) (ZZ_cons (Z_pt 2) ZZ_nil)), Fin.sum_univ_two]
    simp [ReciprocityTheory.ChartRestriction.G.TB.LogPf.pderiv_pt]
    rw [ev2 hb (Z_pt 1) (Z_pt 2), ep_pt hb, ep_pt hb]
    simpa using ev_zero_pderiv_pow1_eq_zero B (Z_pt (R := R) (d := d) (n := 2) 1) k p
  have hC : pderiv ((1 : Fin 3), k) (ev ![comp1 (B.A.act (p : O)) (pt R d 0),
      comp1 (B.A.act (p : O)) (pt R d 1), pt R d 2] B.ph1) = 0 := by
    rw [pderiv_ev_rows (ZZ_cons (Z_comp1 (Z_act B.A _) (Z_pt 0))
      (ZZ_cons (Z_comp1 (Z_act B.A _) (Z_pt 1)) (ZZ_cons (Z_pt 2) ZZ_nil))), Fin.sum_univ_three]
    have hq : ZZ (n := 3) ![pt R d 1] := ZZ_cons (Z_pt 1) ZZ_nil
    simp [dcomp_ne (show (0 : Fin 3) ≠ 1 by decide), dcomp_eq, d_act_p, evz hq, hz2]
  have e := congrArg (fun f : PS R 3 d => ev ![pt R d 0, (0 : Pt R 2 d), pt R d 1]
    (pderiv ((1 : Fin 3), k) f)) (first_power_add R d O B p)
  rw [L] at e
  simp only [Derivation.leibniz, smul_eq_mul, hA, hC, mul_zero, zero_add, add_zero,
    evm hb, hBq] at e
  exact e

end

private theorem exists_subst_first_row {R : Type} [CommRing R] {n d : ℕ} [NeZero n]
    (p : ℕ) [hp : Fact p.Prime] [CharP R p] (f : PS R n d)
    (hf : ∀ j, pderiv ((0 : Fin n), j) f = 0) :
    ∃ g : PS R n d, f = subst (fun s : Fin n × Fin d =>
      (X s : PS R n d) ^ (if s.1 = 0 then p else 1)) g := by
  let w (s : Fin n × Fin d) := if s.1 = 0 then p else 1
  have hw (s : Fin n × Fin d) : w s ≠ 0 := w_ne p s
  let g : PS R n d := fun m => coeff (scl w m) f
  refine ⟨g, ?_⟩
  ext e
  change coeff e f = coeff e (subst (fun s => (X s : PS R n d) ^ w s) g)
  by_cases he : ∃ m, e = scl w m
  · obtain ⟨m, rfl⟩ := he
    rw [coeff_scl hw]
    rfl
  · rw [coeff_not_scl hw _ _ (not_exists.mp he)]
    obtain ⟨s, hs, hdvd⟩ : ∃ s : Fin n × Fin d, s.1 = 0 ∧ ¬ p ∣ e s := by
      by_contra h
      push Not at h
      refine he ⟨Finsupp.equivFunOnFinite.symm fun s => if s.1 = 0 then e s / p else e s, ?_⟩
      ext s
      by_cases hs : s.1 = 0
      · simp [scl, w, hs, Nat.mul_div_cancel' (h s hs)]
      · simp [scl, w, hs]
    have h0 : e s ≠ 0 := fun h => hdvd (h ▸ dvd_zero p)
    have hle : Finsupp.single s 1 ≤ e :=
      Finsupp.single_le_iff.mpr (Nat.one_le_iff_ne_zero.mpr h0)
    have hvanish : pderiv s f = 0 := by
      obtain ⟨i, j⟩ := s
      obtain rfl : i = 0 := hs
      exact hf j
    have hcoeff := congrArg (coeff (e - Finsupp.single s 1)) hvanish
    rw [coeff_pderiv, tsub_add_cancel_of_le hle, map_zero] at hcoeff
    have hcast : (((e - Finsupp.single s 1 : (Fin n × Fin d) →₀ ℕ) s : ℕ) : R) + 1 =
        (e s : R) := by
      rw [← Nat.cast_succ]
      congr 1
      simp
      omega
    rw [hcast] at hcoeff
    exact ((CharP.isUnit_natCast_iff hp.out).mpr hdvd).mul_left_eq_zero.mp hcoeff

theorem mulp_V : ∀ (R : Type) [CommRing R] (p : ℕ) [Fact p.Prime] [CharP R p] (d : ℕ) (O : Type) [CommRing O] [StarRing O] (B : FB R d O), ∃ V : Pt R 1 d, (∀ i, constantCoeff (V i) = 0) ∧ B.A.act (p : O) = comp1 V (ptPow R d p 0) ∧ lin V 1 = hw B p := by
  intro R _ p _ _ d O _ _ B
  have key (c : Fin d) : ∃ g : PS R 1 d, B.A.act (p : O) c = ev ![ptPow R d p 0] g := by
    simpa only [ev_pow_one_eq] using
      exists_subst_first_row p _ (fun j => d_act_p p B.A c j)
  choose V hV using key
  have hq : ZZ (n := 1) ![ptPow R d p 0] := ZZ_cons (Z_ptPow p 0) ZZ_nil
  refine ⟨V, ?_, ?_, ?_⟩
  · intro c
    rw [← ccev hq (V c), ← hV c]
    exact B.A.const _ c
  · funext c
    exact hV c
  · ext c i
    show coeff _ (V c) = coeff _ (B.A.act (p : O) c)
    rw [hV c, coeff_ev_pow_one]

theorem first_power_char_p : ∀ (R : Type) [CommRing R] (p : ℕ) [Fact p.Prime] [CharP R p] (d : ℕ) (O : Type) [CommRing O] [StarRing O] (B : FB R d O), ∃ g : PS R 2 d, AxOne g ∧ pow1 B p = ev (n := 2) ![ptPow R d p 0, pt R d 1] g ∧ bil g 1 1 = am B p := by
  intro R _ p _ _ d O _ _ B
  have hfactor : ∃ g : PS R 2 d, pow1 B p = ev ![ptPow R d p 0, pt R d 1] g := by
    simpa only [ev_pow_two_eq] using
      exists_subst_first_row p (pow1 B p) (deriv_first_power_char_p B p)
  obtain ⟨g, hg⟩ := hfactor
  have hq : ZZ (n := 1) ![ptPow R d p 0] := ZZ_cons (Z_ptPow p 0) ZZ_nil
  refine ⟨g, And.intro ?_ ?_, hg, ?_⟩
  · have hb : ZZ (n := 1) ![(0 : Pt R 1 d), pt R d 0] := ZZ_cons Z_zero (ZZ_cons (Z_pt 0) ZZ_nil)
    have e := congrArg (ev ![(0 : Pt R 1 d), pt R d 0]) hg
    rw [first_power_zero_left B (Z_pt 0), ev2 hb (Z_ptPow p 0) (Z_pt 1), ep_ptPow p hb, ep_pt hb] at e
    refine Eq.trans ?_ e.symm
    congr 1
    funext k i
    fin_cases k
    · simp [(Fact.out : p.Prime).ne_zero]
    · rfl
  · have hb : ZZ (n := 1) ![pt R d 0, (0 : Pt R 1 d)] := ZZ_cons (Z_pt 0) (ZZ_cons Z_zero ZZ_nil)
    have e := congrArg (ev ![pt R d 0, (0 : Pt R 1 d)]) hg
    rw [first_power_zero_right B (Z_pt 0), ev2 hb (Z_ptPow p 0) (Z_pt 1), ep_ptPow p hb, ep_pt hb] at e
    apply ev_pow_inj p
    rw [ev2 hq (Z_pt 0) Z_zero, ep_pt hq, ep_zero hq, ev_one, e]
    congr 1
  · rw [← bil_ev_pow_two p g, ← hg]
    rfl

end PositivityTheory.HtPt.Cb
