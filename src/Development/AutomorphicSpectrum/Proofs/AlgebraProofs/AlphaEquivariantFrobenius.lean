module

public import Development.WeilBound.CoreStatements.HodgeTatePoints.CbBase
public import Development.WeilBound.CoreStatements.HodgeTatePoints.CbFrob
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft
import Development.WeilBound.CoreStatements.HodgeTatePoints.CoeffEvPowOne
import Development.WeilBound.CoreStatements.HodgeTatePoints.FirstPowerEqProdAt
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ConnectionKillsSeries

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.HodgeTatePoints.CbAlpha, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaEquivariantFrobenius

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.CbAlpha =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.CbAlpha", "h": "module\n\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.CbBase\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.CbFrob\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.CoeffEvPowOne\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.FirstPowerEqProdAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ConnectionKillsSeries\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.HtPt.Cb

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj
open ReciprocityTheory.ChartRestriction.G.TB

section

variable {R : Type} [CommRing R] {d : ℕ}

def Lz (j : Fin d) (f : PS R 2 d) : PS R 1 d := ev (n := 1) ![pt R d 0, 0] (pderiv ((1 : Fin 2), j) f)

theorem coeff_Lz (f : PS R 2 d) (i j : Fin d) :
    coeff (Finsupp.single ((0 : Fin 1), i) 1) (Lz j f) = bil f 1 1 i j := by
  rw [← cc_pderiv, Lz, d2 (Z_pt 0) Z_zero]
  simp [dpt, ccev (show ZZ (![pt R d 0, 0] : Fin 2 → Pt R 1 d) from ZZ_cons (Z_pt 0) (ZZ_cons Z_zero ZZ_nil)), cc_pderiv, coeff_pderiv, bil]

theorem Lz_mul (j : Fin d) (f g : PS R 2 d) : Lz j (f * g) =
    Lz j f * ev (n := 1) ![pt R d 0, 0] g + ev (n := 1) ![pt R d 0, 0] f * Lz j g := by
  have hb : ZZ (n := 1) ![pt R d 0, (0 : Pt R 1 d)] := ZZ_cons (Z_pt 0) (ZZ_cons Z_zero ZZ_nil)
  simp only [Lz, dmul, eva hb, evm hb]

theorem Lz_fst {φ : Pt R 1 d} (hφ : Z φ) (j : Fin d) (f : PS R 2 d) :
    Lz j (ev (n := 2) ![comp1 φ (pt R d 0), pt R d 1] f) = ev ![φ] (Lz j f) := by
  have hb : ZZ (n := 1) ![pt R d 0, (0 : Pt R 1 d)] := ZZ_cons (Z_pt 0) (ZZ_cons Z_zero ZZ_nil)
  have hφ' : ZZ ![φ] := ZZ_cons hφ ZZ_nil
  have h01 : ((0 : Fin 2) = 1) ↔ False := by decide
  simp only [Lz]
  rw [d2 (Z_comp1 hφ (Z_pt 0)) (Z_pt 1)]
  simp only [dcomp_ne (show (0 : Fin 2) ≠ 1 by decide), dpt, mul_zero, Finset.sum_const_zero,
    zero_add, Prod.mk.injEq, true_and, mul_ite, mul_one, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  rw [ev2 hb (Z_comp1 hφ (Z_pt 0)) (Z_pt 1), ev2 hφ' (Z_pt 0) Z_zero, ep_comp1 φ hb (Z_pt 0),
    ep_pt hb, ep_pt hb, ep_pt hφ', ep_zero hφ']
  simp [germCompOne_identityPoint_left]

theorem Lz_snd {ψ : Pt R 1 d} (hψ : Z ψ) (j : Fin d) (f : PS R 2 d) :
    Lz j (ev (n := 2) ![pt R d 0, comp1 ψ (pt R d 1)] f) = ∑ c, Lz c f * C (lin ψ 1 c j) := by
  have hb : ZZ (n := 1) ![pt R d 0, (0 : Pt R 1 d)] := ZZ_cons (Z_pt 0) (ZZ_cons Z_zero ZZ_nil)
  have h01 : ((0 : Fin 2) = 1) ↔ False := by decide
  simp only [Lz]
  rw [d2 (Z_pt 0) (Z_comp1 hψ (Z_pt 1))]
  simp only [dpt, dcomp_eq, Prod.mk.injEq, h01, false_and, if_false, mul_zero,
    Finset.sum_const_zero, zero_add, evsum hb, evm hb]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [ev2 hb (Z_pt 0) (Z_comp1 hψ (Z_pt 1)), ev1 hb (Z_pt 1), ep_comp1 ψ hb (Z_pt 1)]
  simp only [ep_pt hb, Matrix.cons_val_zero, Matrix.cons_val_one, germComp1_zero_of_noConstantCoeff hψ,
    ev_at_zero, cc_pderiv, lin]

variable (p : ℕ) [hp : Fact p.Prime] [CharP R p]

theorem ev_ev_pow {φ : Pt R 1 d} (hφ : Z φ) (f : PS R 1 d) :
    ev ![φ] (ev (n := 1) ![ptPow R d p 0] f) =
      ev (n := 1) ![ptPow R d p 0] (ev ![fun i => MvPowerSeries.map (frobenius R p) (φ i)] f) := by
  have hψ : Z (fun i => MvPowerSeries.map (frobenius R p) (φ i)) := by
    intro i
    simp [hφ i]
  have hφ' : ZZ ![φ] := ZZ_cons hφ ZZ_nil
  have hq : ZZ (n := 1) ![ptPow R d p 0] := ZZ_cons (Z_ptPow p 0) ZZ_nil
  rw [ev1 hφ' (Z_ptPow p 0), ev1 hq hψ, ep_ptPow p hφ']
  congr 1
  funext k i
  simp only [ep, Matrix.cons_val_fin_one]
  rw [frob_subst R p d 1 (φ i)]
  congr 1
  funext k'
  rw [Fin.fin_one_eq_zero k']
  rfl

end

private theorem coeff_single_prime_ev_of_Z {R : Type} [CommRing R] {d : ℕ} (p : ℕ) [Fact p.Prime] [CharP R p]
    {φ : Pt R 1 d} (hφ : Z φ) (F : PS R 1 d) (i : Fin d) :
    coeff (Finsupp.single ((0 : Fin 1), i) p) (ev ![φ] (ev (n := 1) ![ptPow R d p 0] F)) =
      ∑ c, coeff (Finsupp.single ((0 : Fin 1), c) 1) F * lin φ 1 c i ^ p := by
  have hψ : Z (fun i => MvPowerSeries.map (frobenius R p) (φ i)) := by
    intro i
    simp [hφ i]
  rw [ev_ev_pow p hφ, coeff_ev_pow_one, coeff_lin_ev hψ]
  refine Finset.sum_congr rfl fun c _ => ?_
  simp [lin, coeff_map, frobenius_def]

private theorem exists_act_prime_eq_comp1_ptPow {R : Type} [CommRing R] {d : ℕ} (p : ℕ) [Fact p.Prime] [CharP R p]
    {O : Type} [CommRing O] [StarRing O] (B : FB R d O) :
    ∃ h : Pt R 1 d, Z h ∧ B.A.act (p : O) = comp1 h (ptPow R d p 0) ∧
      ∀ c i, lin h 1 c i = hw B p c i := by
  have key : ∀ c, ∃ g : PS R 1 d, B.A.act (p : O) c = ev ![ptPow R d p 0] g := fun c =>
    (series_in_p R p d).1 _ (fun j => d_act_p p B.A c j)
  choose h hh using key
  have hq : ZZ (n := 1) ![ptPow R d p 0] := ZZ_cons (Z_ptPow p 0) ZZ_nil
  refine ⟨h, ?_, ?_, ?_⟩
  · intro c
    rw [← ccev hq (h c), ← hh c]
    exact B.A.const _ c
  · funext c
    exact hh c
  · intro c i
    show coeff _ (h c) = coeff _ (B.A.act (p : O) c)
    rw [hh c, coeff_ev_pow_one]

private theorem ev_comp1_ptPow_eq_ev {R : Type} [CommRing R] {d : ℕ} (p : ℕ) [Fact p.Prime]
    (h : Pt R 1 d) (hh : Z h) (F : PS R 1 d) :
    ev ![comp1 h (ptPow R d p 0)] F = ev (n := 1) ![ptPow R d p 0] (ev ![h] F) := by
  have hq : ZZ (n := 1) ![ptPow R d p 0] := ZZ_cons (Z_ptPow p 0) ZZ_nil
  rw [ev1 hq hh, ep_one]

private theorem Lz_ev_ptPow_pt {R : Type} [CommRing R] {d : ℕ} (p : ℕ) [Fact p.Prime] [CharP R p]
    (g : PS R 2 d) (j : Fin d) :
    Lz j (ev ![ptPow R d p 0, pt R d 1] g) = ev (n := 1) ![ptPow R d p 0] (Lz j g) := by
  have hb : ZZ (n := 1) ![pt R d 0, (0 : Pt R 1 d)] := ZZ_cons (Z_pt 0) (ZZ_cons Z_zero ZZ_nil)
  have hq : ZZ (n := 1) ![ptPow R d p 0] := ZZ_cons (Z_ptPow p 0) ZZ_nil
  have hp0 : ∀ c, pderiv ((1 : Fin 2), j) (ptPow R d p (0 : Fin 2) c) = 0 := fun c =>
    d_pow_p p _ (X ((0 : Fin 2), c))
  simp only [Lz]
  rw [d2 (Z_ptPow p 0) (Z_pt 1)]
  simp only [hp0, dpt, mul_zero, Finset.sum_const_zero, zero_add, Prod.mk.injEq, true_and,
    mul_ite, mul_one, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  rw [ev2 hb (Z_ptPow p 0) (Z_pt 1), ev2 hq (Z_pt 0) Z_zero, ep_ptPow p hb, ep_pt hb, ep_pt hq,
    ep_zero hq]
  congr 1

private theorem ev_zero_ad_eq_one {R : Type} [CommRing R] {d n : ℕ} {O : Type} [CommRing O] [StarRing O]
    (B : FB R d O) {x : Pt R n d} (hx : Z x) (a : O) : ev ![x, 0] (B.ad a) = 1 := by
  have hx' : ZZ ![x] := ZZ_cons hx ZZ_nil
  have e := congrArg (ev ![x]) (B.adjoint_zero_snd a)
  rw [ev2 hx' (Z_pt 0) Z_zero, ep_pt hx', ep_zero hx'] at e
  simpa [ev_one] using e

private theorem ev_act_Lz_pow1_add_ev_act_prime_Lz_ad {R : Type} [CommRing R] {d : ℕ} (p : ℕ) [Fact p.Prime] [CharP R p]
    {O : Type} [CommRing O] [StarRing O] (B : FB R d O) (a : O) (j : Fin d) :
    ev ![B.A.act a] (Lz j (pow1 B p)) + ev ![B.A.act (p : O)] (Lz j (B.ad a)) =
      ∑ c, Lz c (pow1 B p) * C (lin (B.A.act (star a)) 1 c j) := by
  have hb : ZZ (n := 1) ![pt R d 0, (0 : Pt R 1 d)] := ZZ_cons (Z_pt 0) (ZZ_cons Z_zero ZZ_nil)
  have e := congrArg (Lz j) (first_power_adjoint R d O B a p)
  rw [Lz_mul, Lz_mul, Lz_fst (Z_act B.A a), Lz_fst (Z_act B.A (p : O)),
    Lz_snd (Z_act B.A (star a))] at e
  have e1 : ev (n := 1) ![pt R d 0, 0]
      (ev ![comp1 (B.A.act (p : O)) (pt R d 0), pt R d 1] (B.ad a)) = 1 := by
    rw [ev2 hb (Z_comp1 (Z_act _ _) (Z_pt 0)) (Z_pt 1), ep_comp1 _ hb (Z_pt 0), ep_pt hb, ep_pt hb]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, germCompOne_identityPoint_left]
    exact ev_zero_ad_eq_one B (Z_act _ _) a
  have e2 : ev (n := 1) ![pt R d 0, 0]
      (ev ![comp1 (B.A.act a) (pt R d 0), pt R d 1] (pow1 B p)) = 1 := by
    rw [ev2 hb (Z_comp1 (Z_act _ _) (Z_pt 0)) (Z_pt 1), ep_comp1 _ hb (Z_pt 0), ep_pt hb, ep_pt hb]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, germCompOne_identityPoint_left]
    exact _root_.PositivityTheory.HtPt.Cb.first_power_zero_right B (Z_act _ _) p
  have e3 : Lz j (B.ad a ^ p) = 0 := by
    simp only [Lz, d_pow_p, evz hb]
  have e4 : ev (n := 1) ![pt R d 0, 0] (B.ad a ^ p) = 1 := by
    rw [evpow hb, B.adjoint_zero_snd, one_pow]
  rw [e1, e2, e3, e4] at e
  simpa using e

private theorem sum_am_mul_rho_pow_add_bil_ad_mul_hw {R : Type} [CommRing R] {d : ℕ} (p : ℕ) [Fact p.Prime] [CharP R p]
    {O : Type} [CommRing O] [StarRing O] (B : FB R d O) (a : O) (i j : Fin d) :
    ∑ c, am B p c j * rho B a c i ^ p + ∑ c, bil (B.ad a) 1 1 c j * hw B p c i =
      ∑ c, am B p i c * rho B (star a) c j := by
  obtain ⟨g, -, hg, hgb⟩ := first_power_char_p R p d O B
  obtain ⟨h, hh, hχ, hhw⟩ := exists_act_prime_eq_comp1_ptPow p B
  have hLP : ∀ c, Lz c (pow1 B p) = ev (n := 1) ![ptPow R d p 0] (Lz c g) := fun c => by
    rw [hg, Lz_ev_ptPow_pt]
  have e := congrArg (coeff (Finsupp.single ((0 : Fin 1), i) p)) (ev_act_Lz_pow1_add_ev_act_prime_Lz_ad p B a j)
  simp only [hLP] at e

  rw [map_add (f := _), coeff_single_prime_ev_of_Z p (Z_act B.A a), hχ, ev_comp1_ptPow_eq_ev p h hh, coeff_ev_pow_one,
  coeff_lin_ev hh, map_sum] at e
  simp only [coeff_mul_C, coeff_ev_pow_one, coeff_Lz, hgb, hhw] at e
  exact e

theorem alpha_act : ∀ (R : Type) [CommRing R] (p : ℕ) [Fact p.Prime] [CharP R p] (d : ℕ) (O : Type) [CommRing O] [StarRing O] (B : FB R d O) (a : O) (u : Fin d → R), alpha B p (((rho B a).map (· ^ p)).mulVec u) = rhoH B a (alpha B p u) := by
  intro R _ p _ _ d O _ _ B a u
  obtain ⟨h, hh, hχ, hhw⟩ := exists_act_prime_eq_comp1_ptPow p B
  have m1 : hw B p * (rho B a).map (· ^ p) = rho B a * hw B p := by
    ext i k
    have e := congrArg (fun F : Pt R 1 d => lin F p i k)
      (act_comm B.A a (p : O) (Z_pt (R := R) (d := d) (n := 1) 0))
    simp only [germCompOne_identityPoint_left] at e
    rw [hχ] at e
    have L : lin (comp1 (B.A.act a) (comp1 h (ptPow R d p 0))) p i k =
        ∑ c, rho B a i c * hw B p c k := by
      show coeff (Finsupp.single ((0 : Fin 1), k) p) (ev ![comp1 h (ptPow R d p 0)] (B.A.act a i)) = _
      rw [ev_comp1_ptPow_eq_ev p h hh, coeff_ev_pow_one, coeff_lin_ev hh]
      simp only [hhw]
      rfl
    have Rr : lin (comp1 (comp1 h (ptPow R d p 0)) (B.A.act a)) p i k =
        ∑ c, hw B p i c * rho B a c k ^ p := by
      show coeff (Finsupp.single ((0 : Fin 1), k) p)
        (ev ![B.A.act a] (ev (n := 1) ![ptPow R d p 0] (h i))) = _
      rw [coeff_single_prime_ev_of_Z p (Z_act B.A a)]
      refine Finset.sum_congr rfl fun c _ => ?_
      rw [← hhw]
      rfl
    rw [L, Rr] at e
    simp only [Matrix.mul_apply, Matrix.map_apply]
    exact e.symm
  have m2 : (am B p).transpose * (rho B a).map (· ^ p) =
      (rho B (star a)).transpose * (am B p).transpose - (bil (B.ad a) 1 1).transpose * hw B p := by
    ext i k
    have e := sum_am_mul_rho_pow_add_bil_ad_mul_hw p B a k i
    simp only [Matrix.sub_apply, Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply]
    rw [eq_sub_iff_add_eq, e]
    exact Finset.sum_congr rfl fun _ _ => mul_comm _ _
  refine Prod.ext ?_ ?_
  · simp [alpha, rhoH, Matrix.mulVec_mulVec, m1]
  · simp [alpha, rhoH, Matrix.mulVec_mulVec, m2, Matrix.sub_mulVec]

end PositivityTheory.HtPt.Cb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.CbAlpha =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaEquivariantFrobenius =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaEquivariantFrobenius", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.GermComp1ZeroPointLeft\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.CbAlpha\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Conj.AlphaAct

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv GlobalTheory.CompanionTheory.Ar.Conj

theorem alpha_comm_act : ∀ (R : Type) [CommRing R] (p : ℕ) [Fact p.Prime] [CharP R p] (d : ℕ) (O : Type) [CommRing O] [StarRing O] (B : FB R d O) (a : O) (u : Fin d → R), alpha B p (((rho B a).map (· ^ p)).mulVec u) = rhoH B a (alpha B p u) :=
  @PositivityTheory.HtPt.Cb.alpha_act

end GlobalTheory.CompanionTheory.Ar.Conj.AlphaAct
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.AlphaEquivariantFrobenius =====
