module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.InfOfMulFinOf
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.KerFockMovedReal
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FrChInv
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HighestWeightBelow
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsFockFrameChangeLastColumnDefinitePair
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasInfExpOfOrder
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.TendstoInfMulProd
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Rat
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
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ClassFunctionSumIntegral
import Mathlib.Tactic.Basify

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.DefStep
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsOpenCompactLevel)
open scoped ComplexOrder Matrix
open GlobalTheory.FockFrameChange GlobalTheory.FockReal

noncomputable section

namespace GlobalTheory.ColKer


open GlobalTheory.Chain.StepVac in
theorem mu_exp {D : D7} {T : Type} {L : LevCh D T} {μ₀ : T} (hL : L.Is μ₀) (t : T) (j : ℕ) (hj : j < D.R.m)
    (τ : D.what₂.Tau) : HasInfExp D (L.mu t (j + 1)) τ (-(D.hc τ).e ⟨j, hj⟩) := by
  obtain ⟨n, hn, ho⟩ := hL.xi_fin t
  have h0 := GlobalTheory.HeckeInfExp.hasInfExp_of_chrEq D _ _ _ (hL.mu0 ⟨j, hj⟩) (hasInfQ_tau (L.C.isMu0 ⟨j, hj⟩).inf) τ
  obtain ⟨θ, hθ⟩ : ∃ θ, IsInfFam (D := D) θ := by
    obtain ⟨_, _, hθ, _⟩ := h0
    exact hθ
  have := hasInfExp_mul h0 (hasInfExp_of_order hθ (hL.xi t) hn ho τ)
  rw [add_zero, Formalism.L2.Host.eExp, Equiv.symm_apply_apply] at this
  exact this

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc}

theorem realGL_fin (θ : InfFam D) (V : HSp D) {g : GA D V} (hg : g ∈ GfC V) : GlobalTheory.CoefModel.realGL θ V g = 1 := by
  funext τ
  show Formalism.UG.bc (θ τ) (infHom V g) = 1
  rw [show infHom V g = 1 from hg, map_one]

theorem realGL_infOf (θ : InfFam D) (V : HSp D) (h : GA D V) :
    GlobalTheory.CoefModel.realGL θ V (infOf V h : GA D V) = GlobalTheory.CoefModel.realGL θ V h := by
  conv_rhs => rw [← infOf_mul_finOf V h]
  rw [map_mul, realGL_fin θ V (finOf V h).2, mul_one]

theorem det_realIn (θ : InfFam D) (fr : ∀ X : Node, GL (Fin (G.V X).rank) D.host.E) (X : Node) (g : GA D (G.V X))
    (τ : D.what₂.Tau) :
    ((realIn θ fr X g τ : GL (Fin (G.V X).rank) ℂ) : Matrix (Fin (G.V X).rank) (Fin (G.V X).rank) ℂ).det =
      ((GlobalTheory.CoefModel.realGL θ (G.V X) g τ : GL (Fin (G.V X).rank) ℂ) : Matrix (Fin (G.V X).rank) (Fin (G.V X).rank) ℂ).det := by
  simp only [realIn, MonoidHom.pi_apply, MonoidHom.comp_apply, MulEquiv.coe_toMonoidHom, MulAut.conj_apply,
    Pi.evalMonoidHom_apply, Units.val_mul, Matrix.det_mul, inv_inv]
  rw [mul_comm, ← mul_assoc, ← Matrix.det_mul, Units.mul_inv, Matrix.det_one, one_mul]

theorem conj_frame {n : ℕ} (O F c : GL (Fin n) ℂ) :
    ((O : Matrix (Fin n) (Fin n) ℂ)⁻¹ * (F : Matrix (Fin n) (Fin n) ℂ)) *
      ((F⁻¹ * c * F : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) *
      ((O : Matrix (Fin n) (Fin n) ℂ)⁻¹ * (F : Matrix (Fin n) (Fin n) ℂ))⁻¹ =
        (O : Matrix (Fin n) (Fin n) ℂ)⁻¹ * (c : Matrix (Fin n) (Fin n) ℂ) * (O : Matrix (Fin n) (Fin n) ℂ) := by
  simp only [← Matrix.coe_units_inv, ← Units.val_mul]
  congr 1
  group

theorem transp_frame {n : ℕ} (O F c : GL (Fin n) ℂ) :
    (((O : Matrix (Fin n) (Fin n) ℂ)⁻¹ * (F : Matrix (Fin n) (Fin n) ℂ))⁻¹)ᵀ *
      ((((F⁻¹ * c * F)⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ))ᵀ *
      ((O : Matrix (Fin n) (Fin n) ℂ)⁻¹ * (F : Matrix (Fin n) (Fin n) ℂ))ᵀ =
        (((O : Matrix (Fin n) (Fin n) ℂ)⁻¹ * (c : Matrix (Fin n) (Fin n) ℂ) * (O : Matrix (Fin n) (Fin n) ℂ))⁻¹)ᵀ := by
  rw [← Matrix.transpose_mul, ← Matrix.transpose_mul]
  congr 1
  simp only [← Matrix.coe_units_inv, ← Units.val_mul]
  congr 1
  group

theorem realChar_top (W : G.Weil) (fr : ∀ X : Node, GL (Fin (G.V X).rank) D.host.E) (t : T) (j : ℕ)
    (e₁ e₂ : D.what₂.Tau → ℤ) (k : GA D (G.V (.top j))) (h : GA D (G.V (.top (j + 1)))) :
    realChar W (Pair.top t j) e₁ e₂ k (infOf _ h) =
      ∏ τ, ((realIn W.θ fr (.top j) k τ : GL (Fin (G.V (.top j)).rank) ℂ) :
          Matrix (Fin (G.V (.top j)).rank) (Fin (G.V (.top j)).rank) ℂ).det ^ e₂ τ *
        ((realIn W.θ fr (.top (j + 1)) h τ : GL (Fin (G.V (.top (j + 1))).rank) ℂ) :
          Matrix (Fin (G.V (.top (j + 1))).rank) (Fin (G.V (.top (j + 1))).rank) ℂ).det ^ e₁ τ := by
  unfold realChar
  refine Finset.prod_congr rfl fun τ _ => ?_
  rw [det_realIn, det_realIn, ← realGL_infOf W.θ _ h]
  rfl

theorem coe_realIn (θ : InfFam D) (fr : ∀ X : Node, GL (Fin (G.V X).rank) D.host.E) (X : Node) (g : GA D (G.V X))
    (τ : D.what₂.Tau) :
    realIn θ fr X g τ = (frGL fr X τ)⁻¹ * GlobalTheory.CoefModel.realGL θ (G.V X) g τ * frGL fr X τ := by
  simp [realIn]

theorem realSubst_top {μ₀ : T} (hL : L.Is μ₀) (W : G.Weil) {U : Set T} (N : Std G U) (t : T) (j : ℕ)
    (hj : j + 1 ≤ D.R.m) (k : GA D (G.V (.top j))) (h : GA D (G.V (.top (j + 1))))
    (Q : PolF D (G.V (.top (j + 1))).rank (G.V (.top j)).rank) :
    realSubst W W.onb (Pair.top t j) k (infOf _ h) Q =
      GlobalTheory.AvgCol.frCh W N j (GlobalTheory.CompactHowe.substF
        (fun τ => ((realIn W.θ N.fr (.top (j + 1)) h τ : GL (Fin (G.V (.top (j + 1))).rank) ℂ) :
          Matrix (Fin (G.V (.top (j + 1))).rank) (Fin (G.V (.top (j + 1))).rank) ℂ))
        (fun τ => (((realIn W.θ N.fr (.top j) k τ)⁻¹ : GL (Fin (G.V (.top j)).rank) ℂ) :
          Matrix (Fin (G.V (.top j)).rank) (Fin (G.V (.top j)).rank) ℂ)ᵀ)
        (GlobalTheory.AvgCol.frChInv W N j Q)) := by
  have hO : ∀ X, DefNode D.R.m X → ∀ τ, IsUnit (W.onb X τ).det := fun X hX τ => by
    have e := congrArg Matrix.det (onb_def hL W hX τ)
    rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_one] at e
    exact isUnit_iff_exists_inv.2 ⟨_, by rw [mul_comm]; exact e⟩
  have hn := DefPair.nodes (show DefPair D.R.m (Pair.top t j) from hj)
  have hid : ⇑(opp (Pair.top t j)) = (id : ℂ → ℂ) := rfl
  unfold GlobalTheory.AvgCol.frCh GlobalTheory.AvgCol.frChInv realSubst
  rw [substF_mul, substF_mul]
  refine congrArg₂ (fun A B => GlobalTheory.CompactHowe.substF A B Q) (funext fun τ => ?_) (funext fun τ => ?_)
  · rw [hid, Matrix.map_id, coe_realIn]
    have eC : compAt W.θ τ (Formalism.L2.Theta.mt (G.pT (Pair.top t j)) (G.toPair (Pair.top t j) k ↑(infOf _ h)).2) =
        ((GlobalTheory.CoefModel.realGL W.θ _ h τ : GL (Fin (G.V (.top (j + 1))).rank) ℂ) :
          Matrix (Fin (G.V (.top (j + 1))).rank) (Fin (G.V (.top (j + 1))).rank) ℂ) := by
      rw [← realGL_infOf]; rfl
    rw [eC]
    exact (conj_frame (Matrix.nonsingInvUnit _ (hO _ hn.2 τ)) (frGL N.fr _ τ) _).symm
  · rw [hid, Matrix.map_id, coe_realIn]
    exact (transp_frame (Matrix.nonsingInvUnit _ (hO _ hn.1 τ)) (frGL N.fr _ τ) (GlobalTheory.CoefModel.realGL W.θ (G.V (.top j)) k τ)).symm


open GlobalTheory.SignedHC

section GridBounds

open Finset

variable (D : D7) (C : ℝ) (τ : D.what₂.Tau)

private theorem num_e {l : ℕ} (h1 : 1 ≤ l) (h2 : l ≤ D.R.m) : (((num D C τ).e l : ℤ) : ℚ) = (D.hc τ).e ⟨l - 1, by omega⟩ := by
  obtain ⟨l, rfl⟩ : ∃ l', l = l' + 1 := ⟨l - 1, by omega⟩
  exact GridData.extend_cast 1 (D.hc τ).e_int ⟨l, by omega⟩

private theorem num_b {l : ℕ} (h1 : 1 ≤ l) (h2 : l ≤ D.R.m) : (((num D C τ).b l : ℤ) : ℚ) = (D.hc τ).b ⟨l - 1, by omega⟩ := by
  obtain ⟨l, rfl⟩ : ∃ l', l = l' + 1 := ⟨l - 1, by omega⟩
  exact GridData.extend_cast 1 (D.hc τ).b_int ⟨l, by omega⟩

private theorem num_v {i : ℕ} (h1 : 2 ≤ i) (h2 : i ≤ D.R.k) : (((num D C τ).v i : ℤ) : ℚ) = (D.hc τ).v ⟨i - 2, by omega⟩ := by
  obtain ⟨i, rfl⟩ : ∃ i', i = i' + 2 := ⟨i - 2, by omega⟩
  exact GridData.extend_cast 2 (D.hc τ).v_int ⟨i, by omega⟩

private theorem num_be {l : ℕ} (h1 : 1 ≤ l) (h2 : l ≤ D.R.m) : ((D.R.t : ℚ) + 3) / 2 ≤ ((num D C τ).e l : ℚ) - (num D C τ).b l := by
  rw [num_e D C τ h1 h2, num_b D C τ h1 h2]
  exact (D.hc τ).gap_be _

private theorem num_eb {l : ℕ} (h1 : 1 ≤ l) (h2 : l + 1 ≤ D.R.m) : ((D.R.t : ℚ) + 3) / 2 ≤ ((num D C τ).b (l + 1) : ℚ) - (num D C τ).e l := by
  rw [num_e D C τ h1 (by omega), num_b D C τ (by omega) h2]
  obtain ⟨l, rfl⟩ : ∃ l', l = l' + 1 := ⟨l - 1, by omega⟩
  exact (D.hc τ).gap_eb ⟨l, by omega⟩ (by simpa using (by omega : l + 1 < D.R.m))

private theorem num_e_lt {l l' : ℕ} (h1 : 1 ≤ l) (h : l < l') (h2 : l' ≤ D.R.m) : (D.R.t : ℚ) + 3 + (num D C τ).e l ≤ (num D C τ).e l' := by
  induction l', h using Nat.le_induction with
  | base =>
    linarith [num_be D C τ (l := l + 1) (by omega) h2, num_eb D C τ h1 h2]
  | succ n hn ih =>
    have := ih (by omega)
    have e1 := num_be D C τ (l := n + 1) (by omega) h2
    have e2 := num_eb D C τ (l := n) (by omega) h2
    have : (0 : ℚ) ≤ D.R.t := by positivity
    linarith

private theorem num_cloud {i : ℕ} (h1 : 2 ≤ i) (h2 : i ≤ D.R.k) : -((num D C τ).b 1 : ℚ) + 1 ≤ (num D C τ).v i := by
  have hm : 1 ≤ D.R.m := by have := D.R.two_le_m; omega
  have hk : 2 ≤ D.R.k := by omega
  have base : -((num D C τ).b 1 : ℚ) < (num D C τ).v D.R.k := by
    rw [num_v D C τ hk le_rfl, num_b D C τ le_rfl hm]
    have e1 := (D.hc τ).u_last_gt (by omega) (by omega)
    have e2 := (D.hc τ).v_gt_u ⟨D.R.k - 2, by omega⟩
    have e3 : (⟨D.R.k - 2 + 1, by omega⟩ : Fin D.R.k) = ⟨D.R.k - 1, by omega⟩ := Fin.ext (by simp only; omega)
    simp only [e3] at e2
    exact e1.trans e2
  have base' : -((num D C τ).b 1) < (num D C τ).v D.R.k := by exact_mod_cast base
  have step : (num D C τ).v D.R.k ≤ (num D C τ).v i := by
    rcases h2.eq_or_lt with rfl | h
    · exact le_rfl
    · exact ((num D C τ).v_anti i D.R.k h1 h le_rfl).le
  have : -((num D C τ).b 1) + 1 ≤ (num D C τ).v i := by omega
  exact_mod_cast this

private theorem blockMPlus_bd {l : ℕ} {x : ℚ} (h : x ∈ (num D C τ).blockMPlus l) :
    -((num D C τ).e l : ℚ) - (D.R.t : ℚ) / 2 ≤ x ∧ x ≤ -((num D C τ).e l : ℚ) + (D.R.t : ℚ) / 2 := by
  have := abs_le.1 (abs_sub_le_of_mem_block h)
  have e : (((num D C τ).t + 1 : ℕ) : ℚ) = D.R.t + 1 := by push_cast; rfl
  rw [e] at this
  constructor <;> linarith [this.1, this.2]

private theorem a_le {i j : ℕ} (h : i ≤ j) : (num D C τ).a j ≤ (num D C τ).a i := by
  rcases h.eq_or_lt with rfl | h
  · exact le_rfl
  · have : (0 : ℚ) ≤ (num D C τ).ga := by positivity
    linarith [a_add_le (G := num D C τ) h]

private theorem weightX_above {j : ℕ} (hj : j + 1 ≤ D.R.m) {x y : ℚ} (hx : x ∈ (num D C τ).weightX j) (hy : y ∈ (num D C τ).blockMPlus (j + 1)) : y < x := by
  have hm : 1 ≤ D.R.m := by omega
  have hk : 2 ≤ D.R.k := by have := D.R.m_add_three_le_k; omega
  have ht : (0 : ℚ) ≤ D.R.t := by positivity
  have hg : (0 : ℚ) ≤ (num D C τ).ga := by positivity
  obtain ⟨y1, y2⟩ := blockMPlus_bd D C τ hy
  have hbe := num_be D C τ (l := 1) le_rfl hm
  have he1 : ((num D C τ).e 1 : ℚ) ≤ (num D C τ).e (j + 1) := by
    rcases Nat.eq_zero_or_pos j with rfl | h
    · exact le_rfl
    · linarith [num_e_lt D C τ (l := 1) (l' := j + 1) le_rfl (by omega) hj]
  have hlow : y < -((num D C τ).b 1 : ℚ) := by linarith
  have hc2 := num_cloud D C τ (i := 2) le_rfl hk
  have ham : (num D C τ).a (num D C τ).m = (num D C τ).v 2 + (num D C τ).ga + 1 / 2 := (num D C τ).a_m
  rcases GridData.mem_weightX.1 hx with h | h | ⟨i, h1, h2, h⟩ | ⟨l, h1, h2, h⟩
  · obtain ⟨i, hi, rfl⟩ := GridData.mem_tops.1 h
    linarith [a_le D C τ hi]
  · obtain ⟨i, h1, h2, rfl⟩ := GridData.mem_cloudHalf.1 h
    have := num_cloud D C τ h1 h2
    simp only [GridData.vHalf]
    linarith
  · have := (blockC'_between (num_nearMid D C τ) (odd_sLen D).pos (sLen_lt_gap D C) h1 h2 h).1
    linarith [a_le D C τ h2]
  · have := num_e_lt D C τ h1 (by omega : l < j + 1) hj
    have := (blockMPlus_bd D C τ h).1
    linarith


end GridBounds

theorem detShift_top (G : GridData L sc) (t : T) (j : ℕ) (hj : j < D.R.m) (τ : D.what₂.Tau) :
    (((wt G (.top (j + 1)) τ).detShift : ℤ) : ℚ) = -((D.hc τ).e ⟨j, hj⟩ : ℚ) + ((G.V (.top j)).rank : ℚ) / 2 ∧
    (((nuEnd G (.top t j) τ : ℤ) - (wt G (.top j) τ).detShift : ℤ) : ℚ) =
      -(-((D.hc τ).e ⟨j, hj⟩ : ℚ) + ((G.V (.top (j + 1))).rank : ℚ) / 2) := by
  have hj' : j + 1 ≤ D.R.m := hj
  have r0 := rank_top G (j := j) (by omega)
  have r1 := rank_top G (j := j + 1) hj'
  have h0 := isHC_top D sc.cGap τ (j := j) (by omega) r0
  have h1 := isHC_top D sc.cGap τ hj' r1
  have hE := h0.1.card_entries.trans h0.2.1
  have hF := h1.1.card_entries.trans h1.2.1
  have e0 : entries (Node.par D sc.cGap (.top j) τ) = (num D sc.cGap τ).weightX j := entries_plus _
  have e1 : entries (Node.par D sc.cGap (.top (j + 1)) τ) = (num D sc.cGap τ).weightX (j + 1) := entries_plus _
  have w0 : ∀ r, ((wt G (.top j) τ).w r : ℚ) = highestWeight _ hE r := fun r => wtOf_cast hE h0.2.2 r
  have w1 : ∀ r, ((wt G (.top (j + 1)) τ).w r : ℚ) = highestWeight _ hF r := fun r => wtOf_cast hF h1.2.2 r
  have hb : (G.V (.top (j + 1))).rank = (G.V (.top j)).rank + (D.R.t + 1) := by
    rw [r0, r1]; simp only [rankX]; ring
  obtain ⟨v1, v2⟩ := highestWeight_below hb (-((num D sc.cGap τ).e (j + 1) : ℚ)) hE
    (by rw [e0, e1, GridData.weightX_succ]; rfl)
    (fun x hx y hy => by rw [e0] at hx; exact weightX_above D sc.cGap τ hj' hx hy) hF
  have ha : 0 < (G.V (.top j)).rank := r0 ▸ rankX_pos D j
  have hce : (((num D sc.cGap τ).e (j + 1) : ℤ) : ℚ) = (D.hc τ).e ⟨j, hj⟩ := num_e D sc.cGap τ (l := j + 1) (by omega) hj'
  have hS1 : (wt G (.top (j + 1)) τ).detShift = (wt G (.top (j + 1)) τ).w ⟨(G.V (.top (j + 1))).rank - 1, by omega⟩ := by
    rw [DomWeight.detShift, dite_eq_left (by omega)]
  have hS0 : (wt G (.top j) τ).detShift = (wt G (.top j) τ).w ⟨(G.V (.top j)).rank - 1, by omega⟩ := by
    rw [DomWeight.detShift, dite_eq_left ha]
  have d1 : (((wt G (.top (j + 1)) τ).detShift : ℤ) : ℚ) = -((D.hc τ).e ⟨j, hj⟩ : ℚ) + ((G.V (.top j)).rank : ℚ) / 2 := by
    rw [hS1, w1, v2 _ (by simp only; omega), hce]
  refine ⟨d1, ?_⟩
  have hlt : (G.V (.top j)).rank - 1 < (G.V (.top (j + 1))).rank := by omega
  have hν : nuEnd G (.top t j) τ = (wt G (.top (j + 1)) τ).natW ⟨(G.V (.top j)).rank - 1, hlt⟩ := by
    simp only [nuEnd, dite_eq_left hlt]
  have hanti : (wt G (.top (j + 1)) τ).detShift ≤ (wt G (.top (j + 1)) τ).w ⟨(G.V (.top j)).rank - 1, hlt⟩ := by
    rw [hS1]; exact (wt G (.top (j + 1)) τ).anti (Fin.mk_le_mk.2 (by omega))
  have hnat : ((nuEnd G (.top t j) τ : ℕ) : ℤ) =
      (wt G (.top (j + 1)) τ).w ⟨(G.V (.top j)).rank - 1, hlt⟩ - (wt G (.top (j + 1)) τ).detShift := by
    rw [hν, DomWeight.natW, Int.toNat_of_nonneg (by omega)]
  have hc : (G.V (.top j)).rank - 1 < (G.V (.top j)).rank := by omega
  have ew : (((wt G (.top (j + 1)) τ).w ⟨(G.V (.top j)).rank - 1, hlt⟩ : ℤ) : ℚ) =
      highestWeight _ hE ⟨(G.V (.top j)).rank - 1, hc⟩ - ((D.R.t + 1 : ℕ) : ℚ) / 2 := by
    rw [w1, ← v1]
    rfl
  have hrk : ((G.V (.top (j + 1))).rank : ℚ) = (G.V (.top j)).rank + (D.R.t + 1) := by
    rw [hb]; push_cast; ring
  rw [Int.cast_sub, hnat, Int.cast_sub, ew, d1, hS0, w0, hrk]
  push_cast
  ring

theorem kerA_col_mul_real : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T}
    (S : GridChoice W U) {μ0 : T}, L.Is μ0 → ∀ (j : ℕ), j < D.R.m → ∀ (t : T) (d : FinDatum G t (.top t j)), S.Z.HasVec d →
    ∀ (Q : PolF D (G.V (.top (j + 1))).rank (G.V (.top j)).rank) (x : FinPt G (.top j)) (k : GA D (G.V (.top j))),
    k ∈ GinfC (G.V (.top j)) → ∀ (h : GA D (G.V (.top (j + 1)))),
      W.kerA (.col t j) (W.fock (.top t j) (movedVec t S d) Q) ((x : GA D (G.V (.top j))) * k) h =
        (∏ τ, ((realIn W.θ S.N.fr (.top j) k τ : GL (Fin (G.V (.top j)).rank) ℂ) :
              Matrix (Fin (G.V (.top j)).rank) (Fin (G.V (.top j)).rank) ℂ).det ^
                ((nuEnd G (.top t j) τ : ℤ) - (wt G (.top j) τ).detShift) *
            ((realIn W.θ S.N.fr (.top (j + 1)) h τ : GL (Fin (G.V (.top (j + 1))).rank) ℂ) :
              Matrix (Fin (G.V (.top (j + 1))).rank) (Fin (G.V (.top (j + 1))).rank) ℂ).det ^ (wt G (.top (j + 1)) τ).detShift) *
          W.ker (.top t j) (W.fock (.top t j) (movedVec t S d) (GlobalTheory.AvgCol.frCh W S.N j
            (GlobalTheory.CompactHowe.substF
              (fun τ => ((realIn W.θ S.N.fr (.top (j + 1)) h τ : GL (Fin (G.V (.top (j + 1))).rank) ℂ) :
                Matrix (Fin (G.V (.top (j + 1))).rank) (Fin (G.V (.top (j + 1))).rank) ℂ))
              (fun τ => (((realIn W.θ S.N.fr (.top j) k τ)⁻¹ : GL (Fin (G.V (.top j)).rank) ℂ) :
                Matrix (Fin (G.V (.top j)).rank) (Fin (G.V (.top j)).rank) ℂ)ᵀ)
              (GlobalTheory.AvgCol.frChInv W S.N j Q))))
            (x : GA D (G.V (.top j))) (finOf _ h : GA D (G.V (.top (j + 1)))) := by
  intro D T L sc G W U S μ₀ hL j hj t d hd Q x k hk h
  have hp : DefPair D.R.m (Pair.top t j) := show j + 1 ≤ D.R.m by omega
  have hh : ((finOf _ h : GA D (G.V (.top (j + 1)))) * (infOf _ h : GA D (G.V (.top (j + 1))))) = h := by
    rw [← _root_.GlobalTheory.PointAtPlaceHom.comm_of_mem _ (infOf _ h).2 (finOf _ h).2]
    exact infOf_mul_finOf _ h
  have hr0 : Even (G.V (.top j)).rank := by rw [rank_top G (j := j) (by omega)]; exact rankX_even D j
  have hr1 : Even (G.V (.top (j + 1))).rank := by rw [rank_top G (j := j + 1) (by omega)]; exact rankX_even D (j + 1)
  have hS : G.chrS (.top t j) = L.mu t (j + 1) := by
    simp only [GridData.chrS, Formalism.IndefR.Lift.attChr, GridData.chr, GridData.pS, Nat.not_odd_iff_even.2 hr0, ite_false]
  have hT : G.chrT (.top t j) = L.mu t (j + 1) := by
    simp only [GridData.chrT, Formalism.IndefR.Lift.attChr, GridData.chr, GridData.pT, Nat.not_odd_iff_even.2 hr1, ite_false]
  set a : D.what₂.Tau → ℚ := fun τ => -((D.hc τ).e ⟨j, hj⟩ : ℚ) with ha_def
  have ha : ∀ τ, HasInfExp D (G.chrS (.top t j)) τ (a τ) := fun τ => by rw [hS]; exact mu_exp hL t j hj τ
  have hb : ∀ τ, HasInfExp D (G.chrT (.top t j)) τ (a τ) := fun τ => by rw [hT]; exact mu_exp hL t j hj τ
  have he₁ : ∀ τ, (((wt G (.top (j + 1)) τ).detShift : ℤ) : ℚ) =
      a τ + sgnP (Pair.top t j) * (G.pS (.top t j)).rank / 2 := fun τ => by
    rw [(detShift_top G t j hj τ).1]; simp only [sgnP, one_mul, a]
  have he₂ : ∀ τ, ((((nuEnd G (.top t j) τ : ℤ) - (wt G (.top j) τ).detShift) : ℤ) : ℚ) =
      -(a τ + sgnP (Pair.top t j) * (G.pT (.top t j)).rank / 2) := fun τ => by
    rw [(detShift_top G t j hj τ).2]; simp only [sgnP, one_mul, a]
  show W.ker (.top t j) _ ((x : GA D (G.V (.top j))) * k) h = _
  conv_lhs => rw [← hh]
  have key := ker_fock_moved_real (p := Pair.top t j) hL W S t hp d hd a a ha hb _ _ he₁ he₂ k hk (infOf _ h) (infOf _ h).2 Q
    (x : GA D (G.V (.top j))) (finOf _ h : GA D (G.V (.top (j + 1))))
  rw [key, realChar_top W S.N.fr t j, realSubst_top hL W S.N t j hp k h Q]

end GlobalTheory.ColKer

end
