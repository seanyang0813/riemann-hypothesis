module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FormTransp
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPf
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LinBound
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApproxFinal
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMain
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LieAveraging.NonRelCharCHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemConj
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemFlag
public import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellFin
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.NilradicalLatticeZMemSpan
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfConj
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipReal
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LieAveraging.LiePowRPerp
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RelCharPf, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RelCharPfRat

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RelCharPf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RelCharPf", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.FormTransp\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPf\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LinBound\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.NilradicalLatticeZMemSpan\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfApproxFinal\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfConj\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMain\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical ComplexConjugate
open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.Pf.UnipB Formalism.L2.SG.Pf.Unip
open Formalism.L2.SG.Pf Formalism.L2.SG.Pf.Vanish2 Formalism.L2.SG.Pf.Level Formalism.L2.SG.TermOp Formalism.L2.SG.TermOp.Vanish

namespace Formalism.L2.SG.Pf.RelChar

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section abelian₂

variable {D : D7} (X : HidaSetting D)

def lamU (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) (A : Matrix (Kap X) (Kap X) ℂ) : ℂ :=
  ∑ a : Fin D.R.rS, hJ (X.B.I.ε v) (rv X.B.I v (X.fR a))
    ((Bv X v * A * Bv' X v) *ᵥ nxt (fun b => rv X.B.I v (X.eR b)) (rv X.B.I v (X.zR w)) a)

theorem lamU_add (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) (A B : Matrix (Kap X) (Kap X) ℂ) :
    lamU X w v (A + B) = lamU X w v A + lamU X w v B := by
  unfold lamU
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun a _ => ?_
  simp only [Matrix.mul_add, Matrix.add_mul, Matrix.add_mulVec, hJ, Matrix.mulVec_add, dotProduct_add]

theorem lamU_smul (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) (c : ℂ) (A : Matrix (Kap X) (Kap X) ℂ) :
    lamU X w v (c • A) = c * lamU X w v A := by
  unfold lamU
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun a _ => ?_
  have e : ∀ (B : Matrix (Fin X.B.I.n) (Fin X.B.I.n) ℂ) (y : Fin X.B.I.n → ℂ), (c • B) *ᵥ y = c • (B *ᵥ y) := by
    intro B y; ext i; simp [Matrix.mulVec, dotProduct, Finset.mul_sum, mul_assoc]
  simp only [Matrix.mul_smul, Matrix.smul_mul, e, hJ, Matrix.mulVec_smul, dotProduct_smul, smul_eq_mul]

def lamL (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) : Matrix (Kap X) (Kap X) ℂ →ₗ[ℂ] ℂ where
  toFun := lamU X w v
  map_add' := lamU_add X w v
  map_smul' c A := by rw [lamU_smul]; rfl

theorem hfe_v (v : InfinitePlace X.B.I.F) (a b : Fin D.R.rS) :
    hJ (X.B.I.ε v) (rv X.B.I v (X.fR a)) (rv X.B.I v (X.eR b)) = if b = a then 1 else 0 := by
  rw [hJ_rv, Vanish2.hE_f_e]
  split_ifs <;> simp

theorem hfz_v (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) (a : Fin D.R.rS) :
    hJ (X.B.I.ε v) (rv X.B.I v (X.fR a)) (rv X.B.I v (X.zR w)) = 0 := by
  rw [hJ_rv, Vanish2.hermitian_f_z_zero, map_zero]

theorem lamU_one (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) : lamU X w v 1 = 0 := by
  unfold lamU
  refine Finset.sum_eq_zero fun a _ => ?_
  rw [Matrix.mul_one, Bv_mul_Bv', Matrix.one_mulVec]
  unfold nxt
  split_ifs with h
  · rw [hfe_v, if_neg]
    intro h'
    have := congrArg Fin.val h'
    simp at this
  · exact hfz_v X w v a

theorem rc_sum_eq (w : D.what₂.Word) (s : X.B.I.Ginf) (v : InfinitePlace X.B.I.F) :
    ∑ a, rootCoord (X.B.I.ε v) (fun b => rv X.B.I v (X.eR b)) (fun b => rv X.B.I v (X.fR b))
      (rv X.B.I v (X.zR w)) (uMat (s v)) a = lamU X w v (Mv X v s) := by
  unfold lamU rootCoord
  rw [uMat_eq X v s]

end abelian₂

def LamPat2 : Prop :=
  ∀ (D : D7) (X : HidaSetting D) (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) (A : Matrix (Kap X) (Kap X) ℂ),
    InPat (lvk X) 2 A → lamU X w v A = 0

def RatVanish : Prop :=
  ∀ (D : D7) (X : HidaSetting D) (Yf : Formalism.L2.SG.Full.Full X) (u u' : D.what₂.Word)
    (t : GTerm X u u' (X.Fu u) (X.Fu u') (Yf.what₂ u) (Yf.what₂ u')), t.relevant →
    ∀ M : GL (Fin X.B.I.n) X.B.I.E, M ∈ Formalism.UG.UJ (starRingEnd X.B.I.E) X.B.I.J →
    (∀ y, X.crd (t.lin y) = (M : Matrix _ _ _) *ᵥ X.crd y) →
    ∀ Y : Matrix (Kap X) (Kap X) X.B.I.E, InPat (lvk X) 1 Y →
      InPat (lvk X) 1 (Gr X (↑M⁻¹ : Matrix _ _ _) * Y * Gr X (M : Matrix _ _ _)) → Yᴴ * JB X = -(JB X * Y) →
      ∀ v, (lamU X u v (Y.map (X.B.I.φ v)) -
        lamU X u' v ((Gr X (↑M⁻¹ : Matrix _ _ _) * Y * Gr X (M : Matrix _ _ _)).map (X.B.I.φ v))).re = 0

section Main

theorem eq_zero_of_nat_mul_le {x K : ℝ} (h : ∀ m : ℕ, 1 ≤ m → |(m : ℝ) * x| ≤ K) : x = 0 := by
  by_contra hx
  have hpos : 0 < |x| := abs_pos.2 hx
  obtain ⟨m, hm⟩ := exists_nat_gt (max 1 (K / |x|))
  have hm1 : 1 ≤ m := by
    have : (1 : ℝ) < m := lt_of_le_of_lt (le_max_left _ _) hm
    exact_mod_cast this.le
  have h1 := h m hm1
  rw [abs_mul, Nat.abs_cast] at h1
  have h2 : K / |x| < m := lt_of_le_of_lt (le_max_right _ _) hm
  have h3 : K < m * |x| := by rwa [div_lt_iff₀ hpos] at h2
  linarith

theorem re_add_star (z : ℂ) : z + star z = ((2 * z.re : ℝ) : ℂ) := by
  apply Complex.ext <;> simp; ring

theorem relCharC_of (h3 : LamPat2) (h4 : RatVanish) : RelCharC := by
  intro D X Yf u u' t ht r hr
  obtain ⟨M, hMU, hMx, -, hMc⟩ := t.rep.2.1
  have hx : ∀ v, uMat (t.pt.1 v) = (X.B.I.P v)⁻¹ * (M : Matrix _ _ _).map (X.B.I.φ v) * X.B.I.P v := hMx
  let G : InfinitePlace X.B.I.F → Matrix (Kap X) (Kap X) ℂ := fun v => (Gr X (M : Matrix _ _ _)).map (X.B.I.φ v)
  let G' : InfinitePlace X.B.I.F → Matrix (Kap X) (Kap X) ℂ :=
    fun v => (Gr X (↑M⁻¹ : Matrix _ _ _)).map (X.B.I.φ v)
  have hGG : ∀ v, G v * G' v = 1 :=
    fun v => by simp only [G, G']; rw [← Matrix.map_mul, rcm_gr_mul_inv, Matrix.map_one _ (map_zero _) (map_one _)]
  have hGu : ∀ v, (G v)ᴴ * JBv X v * G v = JBv X v := fun v => by
    simp only [G]; rw [← rcm_mv_rat X hx v]; exact Mv_unitary X v _
  have hx1 := (rcm_rset_iff t hx r).1 hr
  let Λ : InfinitePlace X.B.I.F → Matrix (Kap X) (Kap X) ℂ →ₗ[ℂ] ℂ := fun v =>
    lamL X u v - (lamL X u' v).comp ((LinearMap.mulRight ℂ (G v)).comp (LinearMap.mulLeft ℂ (G' v)))
  have hΛ : ∀ v B, Λ v B = lamU X u v B - lamU X u' v (G' v * B * G v) := fun v B => rfl
  let P : InfinitePlace X.B.I.F → Matrix (Kap X) (Kap X) ℂ := fun v => proj (JBv X v) (JBv' X v) (Mv X v r - 1)
  have hPk : ∀ v, InPat (lvk X) 1 (P v) := fun v => inPat_proj (JBv_graded X v) (JBv'_graded X v) (hx1 v).1
  have hPs : ∀ v, (P v)ᴴ * JBv X v = -(JBv X v * P v) :=
    fun v => proj_skew (JBv_herm X v) (JBv'_herm X v) (JBv'_mul X v) (JBv_mul X v) _
  have e2 : ∀ v, G' v * (Mv X v r - 1) * G v = G' v * Mv X v r * G v - 1 := fun v => by
    rw [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_one, mul_comm_one (hGG v)]
  have hcp : ∀ v, G' v * P v * G v = proj (JBv X v) (JBv' X v) (G' v * Mv X v r * G v - 1) := fun v => by
    show G' v * proj (JBv X v) (JBv' X v) (Mv X v r - 1) * G v = _
    rw [conj_proj (JBv_herm X v) (JBv'_herm X v) (JBv'_mul X v) (JBv_mul X v) (hGu v) (hGG v), e2]
  have hx2 : ∀ v, InPat (lvk X) 1 (G' v * Mv X v r * G v - 1) := fun v => (hx1 v).2
  have hPc : ∀ v, InPat (lvk X) 1 (G' v * P v * G v) := fun v => by
    rw [hcp]; exact inPat_proj (JBv_graded X v) (JBv'_graded X v) (hx2 v)

  have hstep : ∀ v, lamU X u v (Mv X v r) - lamU X u' v (Mv X v (t.pt.1⁻¹ * r * t.pt.1)) = Λ v (P v) := by
    intro v
    rw [rcm_mv_conj hx, hΛ]
    have hA2 : InPat (lvk X) (1 + 1) ((Mv X v r - 1) - P v) :=
      sub_proj_of_unitary (JBv_graded X v) (JBv'_graded X v) (JBv'_mul X v) (Mv_unitary X v r) (hx1 v).1
    have hu' : (G' v * Mv X v r * G v)ᴴ * JBv X v * (G' v * Mv X v r * G v) = JBv X v := by
      simp only [G, G']; rw [← rcm_mv_conj hx]; exact Mv_unitary X v _
    have hB2 : InPat (lvk X) (1 + 1) ((G' v * Mv X v r * G v - 1) - G' v * P v * G v) := by
      rw [hcp]
      exact sub_proj_of_unitary (JBv_graded X v) (JBv'_graded X v) (JBv'_mul X v) hu' (hx2 v)
    have l1 : lamU X u v (Mv X v r) = lamU X u v (P v) := by
      have e : Mv X v r = ((Mv X v r - 1) - P v) + P v + 1 := by abel
      rw [e, lamU_add, lamU_add, lamU_one, h3 D X u v _ hA2, zero_add, add_zero]
    have l2 : lamU X u' v (G' v * Mv X v r * G v) = lamU X u' v (G' v * P v * G v) := by
      have e : G' v * Mv X v r * G v = ((G' v * Mv X v r * G v - 1) - G' v * P v * G v) + G' v * P v * G v + 1 := by
        abel
      rw [e, lamU_add, lamU_add, lamU_one, h3 D X u' v _ hB2, zero_add, add_zero]
    rw [l1, l2]

  obtain ⟨C, hC⟩ := ratApprox_holds D X M hMU 1 le_rfl 1 le_rfl
  have hvan : ∀ v, (Λ v (P v)).re = 0 := by
    intro v
    obtain ⟨K, hK0, hK⟩ := _root_.UpperTheory.Reformulated.B.Qj19.lin_bound (Λ v)
    refine eq_zero_of_nat_mul_le (K := K * C) fun m hm => ?_
    have hmP : ∀ w, ((m : ℂ) • P w)ᴴ * JBv X w = -(JBv X w * ((m : ℂ) • P w)) := by
      intro w
      rw [conjTranspose_smul, Matrix.smul_mul, hPs, Matrix.mul_smul, smul_neg]
      congr 2
      simp
    obtain ⟨Y, hY1, hYc, hYs, -, hYC⟩ := hC (fun w => (m : ℂ) • P w) fun w =>
      ⟨inPat_smul _ (hPk w), by rw [Matrix.mul_smul, Matrix.smul_mul]; exact inPat_smul _ (hPc w), hmP w⟩
    have hR := h4 D X Yf u u' t ht M hMU hMc Y hY1 hYc hYs v
    have hΛY : (Λ v (Y.map (X.B.I.φ v))).re = 0 := by
      rw [hΛ]
      have : G' v * Y.map (X.B.I.φ v) * G v =
          (Gr X (↑M⁻¹ : Matrix _ _ _) * Y * Gr X (M : Matrix _ _ _)).map (X.B.I.φ v) := by
        simp only [G, G', Matrix.map_mul]
      rw [this]
      exact hR
    have hbd : ‖Λ v ((m : ℂ) • P v - Y.map (X.B.I.φ v))‖ ≤ K * C := by
      refine hK _ C fun i j => ?_
      have := hYC v i j
      rw [Matrix.sub_apply] at this ⊢
      rwa [norm_sub_rev]
    have hre : (Λ v ((m : ℂ) • P v)).re = (m : ℝ) * (Λ v (P v)).re := by
      rw [map_smul, smul_eq_mul, Complex.mul_re]
      simp
    calc |(m : ℝ) * (Λ v (P v)).re| = |(Λ v ((m : ℂ) • P v - Y.map (X.B.I.φ v))).re| := by
          rw [map_sub, Complex.sub_re, hΛY, sub_zero, hre]
      _ ≤ ‖Λ v ((m : ℂ) • P v - Y.map (X.B.I.φ v))‖ := Complex.abs_re_le_norm _
      _ ≤ K * C := hbd

  unfold HidaSetting.psiInfU psiInf
  refine Finset.prod_congr rfl fun v _ => ?_
  unfold psiR
  have hsum : ∀ (w : D.what₂.Word) (s : X.B.I.Ginf),
      (∑ a, (rootCoord (X.B.I.ε v) (fun b => rv X.B.I v (X.eR b)) (fun b => rv X.B.I v (X.fR b))
        (rv X.B.I v (X.zR w)) (uMat (s v)) a + star (rootCoord (X.B.I.ε v) (fun b => rv X.B.I v (X.eR b))
        (fun b => rv X.B.I v (X.fR b)) (rv X.B.I v (X.zR w)) (uMat (s v)) a))) =
      ((2 * (lamU X w v (Mv X v s)).re : ℝ) : ℂ) := by
    intro w s
    rw [Finset.sum_add_distrib, ← star_sum, rc_sum_eq, re_add_star]
  rw [hsum u r, hsum u' (t.pt.1⁻¹ * r * t.pt.1)]
  have hd := congrArg Complex.re (hstep v)
  rw [Complex.sub_re, hvan v, sub_eq_zero] at hd
  rw [hd]

theorem lamPat2_holds : LamPat2 := by
  intro D X w v A hA
  unfold lamU
  refine Finset.sum_eq_zero fun a _ => ?_
  have hc : ∀ j, (Bv' X v *ᵥ nxt (fun b => rv X.B.I v (X.eR b)) (rv X.B.I v (X.zR w)) a) j ≠ 0 →
      lvk X j ≤ a.1 + 2 := by
    intro j hj
    by_cases h : a.1 + 1 < D.R.rS
    · have hy : nxt (fun b => rv X.B.I v (X.eR b)) (rv X.B.I v (X.zR w)) a =
          rv X.B.I v (bv X (Sum.inl ⟨a.1 + 1, h⟩)) := by
        unfold nxt; rw [dite_eq_left h]; rfl
      rw [hy, Bv'_rv, Pi.single_apply] at hj
      split_ifs at hj with hjj
      · subst hjj; simp [lvk]
      · exact absurd rfl hj
    · have hy : nxt (fun b => rv X.B.I v (X.eR b)) (rv X.B.I v (X.zR w)) a = rv X.B.I v (X.zR w) := by
        unfold nxt; rw [dite_eq_right h]
      rcases j with b | i | b
      · simp only [lvk, Sum.elim_inl]; omega
      · simp only [lvk, Sum.elim_inl, Sum.elim_inr]; omega
      · exfalso; apply hj
        have h1 := hJ_e_Bv X v b (Bv' X v *ᵥ nxt (fun b => rv X.B.I v (X.eR b)) (rv X.B.I v (X.zR w)) a)
        rw [Matrix.mulVec_mulVec, Bv_mul_Bv', Matrix.one_mulVec, hy, hermitian_basis_e_z_orthogonal X w v b] at h1
        rw [hy]; exact h1.symm
  have hAc : Bv X v *ᵥ (A *ᵥ (Bv' X v *ᵥ nxt (fun b => rv X.B.I v (X.eR b)) (rv X.B.I v (X.zR w)) a)) ∈
      Submodule.span ℂ ((fun b => rv X.B.I v (X.eR b)) '' {b : Fin D.R.rS | b.1 < a.1}) := by
    refine Bv_mulVec_mem X v _ _ fun k hk => ?_
    rw [Matrix.mulVec, dotProduct]
    refine Finset.sum_eq_zero fun j _ => ?_
    by_cases hcj : (Bv' X v *ᵥ nxt (fun b => rv X.B.I v (X.eR b)) (rv X.B.I v (X.zR w)) a) j = 0
    · rw [hcj, mul_zero]
    · have hl := hc j hcj
      rw [hA k j ?_, zero_mul]
      rcases k with b | i | b
      · have : ¬ b.1 < a.1 := fun h => hk ⟨b, h, rfl⟩
        simp only [lvk, Sum.elim_inl] at hl ⊢; omega
      · simp only [lvk, Sum.elim_inl, Sum.elim_inr] at hl ⊢; have := a.2; omega
      · simp only [lvk, Sum.elim_inr] at hl ⊢; have := a.2; have := b.2; omega
  have e : (Bv X v * A * Bv' X v) *ᵥ nxt (fun b => rv X.B.I v (X.eR b)) (rv X.B.I v (X.zR w)) a =
      Bv X v *ᵥ (A *ᵥ (Bv' X v *ᵥ nxt (fun b => rv X.B.I v (X.eR b)) (rv X.B.I v (X.zR w)) a)) := by
    simp only [Matrix.mulVec_mulVec, Matrix.mul_assoc]
  rw [e]
  exact Vanish2.hJ_spL (X.B.I.ε v) _ _ (fun a b => hfe_v X v a b) a hAc

theorem relCharC_of_rat (h4 : RatVanish) : RelCharC := relCharC_of lamPat2_holds h4

end Main

end Formalism.L2.SG.Pf.RelChar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RelCharPf =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RelCharPfRat =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RelCharPfRat", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RelCharPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LieAveraging.NonRelCharCHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LieAveraging.LiePowRPerp\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemConj\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.RCocompactPfMemFlag\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.UnipReal\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.CellFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical ComplexConjugate
open Matrix NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.HidaSetting Formalism.L2.SG.Pf.UnipB Formalism.L2.SG.Pf.Unip
open Formalism.L2.SG.Pf Formalism.L2.SG.Pf.Level Formalism.L2.SG.TermOp Formalism.L2.SG.TermOp.Vanish Formalism.L2.SG.NonRelPf

namespace Formalism.L2.SG.Pf.RelChar

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T : E}

theorem lieN_map (γ : S.V ≃ₗ[E] S.V) (hγ : γ ∈ Formalism.HermitianLatticesTheory.isom S.hT) (F : FlagG S r T) (Y : S.V →ₗ[E] S.V)
    (h : (γ.symm.toLinearMap ∘ₗ Y ∘ₗ γ.toLinearMap) ∈ F.LieN) : Y ∈ (mapFlag γ hγ F).LieN := by
  have hiso : ∀ x y, S.hT (γ x) (γ y) = S.hT x y := hγ
  have hXa : ∀ a, (mapFlag γ hγ F).Xa a = (F.Xa a).map γ.toLinearMap := by
    intro a
    unfold FlagG.Xa
    rw [Submodule.map_span, ← Set.image_comp]
    rfl
  have hXX : (mapFlag γ hγ F).X = F.X.map γ.toLinearMap := by
    unfold FlagG.X
    rw [Submodule.map_span, ← Set.range_comp]
    rfl
  unfold FlagG.LieN at h ⊢
  obtain ⟨h0, h1, h2⟩ := h
  refine ⟨?_, ?_, ?_⟩
  · unfold LieU at h0 ⊢
    simp only [Set.mem_setOf_eq, LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply] at h0 ⊢
    intro x y
    have := h0 (γ.symm x) (γ.symm y)
    simp only [LinearEquiv.apply_symm_apply] at this
    rw [← hiso (γ.symm (Y x)) (γ.symm y), ← hiso (γ.symm x) (γ.symm (Y y))] at this
    simpa only [LinearEquiv.apply_symm_apply] using this
  · intro a ha1 ha2 x hx
    rw [hXa] at hx ⊢
    obtain ⟨x', hx', rfl⟩ := Submodule.mem_map.1 hx
    exact Submodule.mem_map.2 ⟨_, h1 a ha1 ha2 x' hx', by simp⟩
  · intro x hx
    rw [hXX]
    have hx2 : ∀ w ∈ (mapFlag γ hγ F).X, S.hT w x = 0 := by
      unfold perpS at hx
      exact hx
    have hx' : γ.symm x ∈ perpS S F.X := by
      unfold perpS
      show ∀ w ∈ F.X, S.hT w (γ.symm x) = 0
      intro w hw
      rw [← hiso w (γ.symm x), LinearEquiv.apply_symm_apply]
      exact hx2 (γ w) (by rw [hXX]; exact Submodule.mem_map_of_mem hw)
    exact Submodule.mem_map.2 ⟨_, h2 _ hx', by simp⟩

theorem lieN_fvec_mem (F : FlagG S r T) {Z : S.V →ₗ[E] S.V} (hZ : Z ∈ F.LieN) (a : Fin r) :
    Z (F.fvec a.succ) ∈ F.X := by
  unfold FlagG.LieN at hZ
  obtain ⟨-, h1, h2⟩ := hZ
  have hlt := a.isLt
  by_cases ha : (a : ℕ) + 1 < r
  · have he : F.fvec a.succ = F.e ⟨(a : ℕ) + 1, ha⟩ := by
      unfold FlagG.fvec
      have hs : a.succ = Fin.castSucc (⟨(a : ℕ) + 1, ha⟩ : Fin r) := Fin.ext (by simp)
      rw [hs, Fin.snoc_castSucc]
    rw [he]
    have hx : F.e ⟨(a : ℕ) + 1, ha⟩ ∈ F.Xa ((a : ℕ) + 2) := by
      unfold FlagG.Xa
      exact Submodule.subset_span ⟨_, show (a : ℕ) + 1 < (a : ℕ) + 2 by omega, rfl⟩
    have hy := h1 ((a : ℕ) + 2) (by omega) (by omega) _ hx
    unfold FlagG.Xa at hy
    unfold FlagG.X
    exact Submodule.span_mono (Set.image_subset_range _ _) hy
  · have he : F.fvec a.succ = F.z := by
      unfold FlagG.fvec
      have hs : a.succ = Fin.last r := Fin.ext (by simp only [Fin.val_succ, Fin.val_last]; omega)
      rw [hs, Fin.snoc_last]
    rw [he]
    exact h2 _ (_root_.PI.TermAttrConst.UnitaryGroupMassFormula.z_mem_perp F)

theorem ell_eq_dual (F : FlagG S r T) (fd : Fin r → S.V) (hfd : ∀ a b, S.hT (fd a) (F.e b) = if b = a then 1 else 0)
    {Z : S.V →ₗ[E] S.V} (hZ : Z ∈ F.LieN) : F.ell Z = ∑ a, S.hT (fd a) (Z (F.fvec a.succ)) := by
  simpa [FlagG.ell] using Finset.sum_congr rfl fun a _ =>
    (hT_eq_coefX F (fd a) a (hfd a) (lieN_fvec_mem F hZ a)).symm

end Gen

section Coord

variable {D : D7} (X : HidaSetting D)

def linOfMat (A : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) : (VS D).V →ₗ[D.host.E] (VS D).V :=
  X.bas.equivFun.symm.toLinearMap ∘ₗ Matrix.toLin' (A.map X.ιE) ∘ₗ X.bas.equivFun.toLinearMap

theorem crd_linOfMat (A : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) (y : (VS D).V) :
    X.crd (linOfMat X A y) = A *ᵥ X.crd y := by
  unfold Formalism.L2.SG.HidaSetting.HidaSetting.crd
  unfold crdOf
  funext i

  simp only [← Module.Basis.equivFun_apply, linOfMat, LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply,
  LinearEquiv.apply_symm_apply, Matrix.toLin'_apply, Matrix.mulVec, dotProduct, Matrix.map_apply, map_sum, map_mul]
  simp

theorem lieN_of_coord (w : D.what₂.Word) (W : Matrix (Kap X) (Kap X) X.B.I.E) (Z : (VS D).V →ₗ[D.host.E] (VS D).V)
    (hW : InPat (lvk X) 1 W) (hWs : Wᴴ * JB X = -(JB X * W)) (hZ : ∀ y, X.crd (Z y) = (Bm X * W * Bm' X) *ᵥ X.crd y) :
    Z ∈ (X.Fu w).LieN := by
  set A := Bm X * W * Bm' X with hA
  have hdot : ∀ p q : Fin X.B.I.n → X.B.I.E, hE X p q = star p ⬝ᵥ (X.B.I.J *ᵥ q) := by
    intro p q
    simp only [hE, Formalism.UG.hform, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]
    rfl
  have hJB : (Bm X)ᴴ * X.B.I.J = JB X * Bm' X := by
    rw [JB_eq, Matrix.mul_assoc, Bm_mul_Bm', Matrix.mul_one]
  have hAs : Aᴴ * X.B.I.J = -(X.B.I.J * A) := by
    have h1 : (Bm' X)ᴴ * (Bm X)ᴴ = 1 := by rw [← conjTranspose_mul, Bm_mul_Bm', conjTranspose_one]
    calc Aᴴ * X.B.I.J = (Bm' X)ᴴ * (Wᴴ * ((Bm X)ᴴ * X.B.I.J)) := by
          rw [hA]; simp only [conjTranspose_mul, Matrix.mul_assoc]
      _ = (Bm' X)ᴴ * (Wᴴ * JB X) * Bm' X := by rw [hJB]; simp only [Matrix.mul_assoc]
      _ = -((Bm' X)ᴴ * (JB X * W) * Bm' X) := by rw [hWs]; simp [Matrix.mul_neg, Matrix.neg_mul]
      _ = -(((Bm' X)ᴴ * (Bm X)ᴴ) * X.B.I.J * (Bm X * W * Bm' X)) := by
          rw [JB_eq]; simp only [Matrix.mul_assoc]
      _ = -(X.B.I.J * A) := by rw [h1, Matrix.one_mul]
  have hskew : ∀ p q, hE X (A *ᵥ p) q + hE X p (A *ᵥ q) = 0 := by
    intro p q
    rw [hdot, hdot, Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, hAs,
      Matrix.neg_mulVec, dotProduct_neg, Matrix.mulVec_mulVec]
    abel
  have hXf : ∀ k, (X.Fu w).Xa k = Submodule.span D.host.E (X.eX '' {i | i.1 < k}) := by
    intro k; unfold FlagG.Xa; rw [X.Fu_e]
  have hXs : (X.Fu w).X = Submodule.span D.host.E (X.eX '' Set.univ) := by
    unfold FlagG.X; rw [X.Fu_e, Set.image_univ]
  have hB : ∀ a : Fin D.R.rS, Bm' X *ᵥ X.eR a = Pi.single (Sum.inl a) 1 := by
    intro a
    rw [Bm'_mulVec]
    funext k
    rw [show X.eR a = bv X (Sum.inl a) from rfl, cE_bv]
    simp [Pi.single_apply]
  have he : ∀ a : Fin D.R.rS, Z (X.eX a) ∈ Submodule.span D.host.E (X.eX '' {b | b.1 < a.1}) := by
    intro a
    refine FlagCoordinates.crd_desc X _ _ ?_
    rw [hZ, show X.crd (X.eX a) = X.eR a from rfl, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hB]
    refine FlagCoordinates.Bm_mulVec_mem X _ _ fun k hk => ?_
    rw [mulVec_single_one]
    refine hW k _ ?_
    rcases k with b | i | b
    · have : ¬ b.1 < a.1 := fun h => hk ⟨b, h, rfl⟩
      simp only [lvk, Sum.elim_inl]; omega
    · simp only [lvk, Sum.elim_inl, Sum.elim_inr]; have := a.2; omega
    · simp only [lvk, Sum.elim_inl, Sum.elim_inr]; have := a.2; have := b.2; omega
  refine ⟨fun x y => ?_, fun a ha1 har x hx => ?_, fun x hx => ?_⟩
  · apply X.ιE.symm.injective
    rw [map_add (f := _), ← Formalism.L2.SG.NonRelPf.hE_crd X, ← Formalism.L2.SG.NonRelPf.hE_crd X, hZ, hZ, map_zero]
    exact hskew _ _
  · rw [hXf] at hx ⊢
    induction hx using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨b, hb, rfl⟩ := hy
      refine Submodule.span_mono ?_ (he b)
      rintro _ ⟨c, hc, rfl⟩
      exact ⟨c, by simp only [Set.mem_ofPred_eq] at hb hc ⊢; omega, rfl⟩
    | zero => simp
    | add y z _ _ hy hz => rw [map_add]; exact add_mem hy hz
    | smul c y _ hy => rw [map_smul]; exact Submodule.smul_mem _ _ hy
  · have hx0 : ∀ a, hE X (X.eR a) (X.crd x) = 0 := by
      intro a
      have hmem : X.eX a ∈ (X.Fu w).X := by
        rw [hXs]; exact Submodule.subset_span ⟨a, Set.mem_univ _, rfl⟩
      rw [show X.eR a = X.crd (X.eX a) from rfl, Formalism.L2.SG.NonRelPf.hE_crd X, hx _ hmem, map_zero]
    rw [hXs]
    refine FlagCoordinates.crd_desc X _ _ ?_
    rw [hZ, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, Bm'_mulVec]
    refine FlagCoordinates.Bm_mulVec_mem X Set.univ _ fun k hk => ?_
    have hk' : ∀ b, k ≠ Sum.inl b := by
      rintro b rfl
      exact hk ⟨b, Set.mem_univ _, rfl⟩
    rw [mulVec, dotProduct]
    refine Finset.sum_eq_zero fun j _ => ?_
    have hlk := lvk_notinl X k hk'
    rcases j with b | i | b
    · rw [hW k _ (by rw [lvk_inl]; have := b.2; omega), zero_mul]
    · rw [hW k _ (by rw [lvk_w]; omega), zero_mul]
    · rw [show cE X (X.crd x) (Sum.inr (Sum.inr b)) = hE X (X.eR b) (X.crd x) from rfl, hx0 b, mul_zero]

theorem ell_coord (w : D.what₂.Word) (W : Matrix (Kap X) (Kap X) X.B.I.E) (Z : (VS D).V →ₗ[D.host.E] (VS D).V)
    (hZ : ∀ y, X.crd (Z y) = (Bm X * W * Bm' X) *ᵥ X.crd y) (v : InfinitePlace X.B.I.F) :
    Φ X v (∑ a, (VS D).hT (X.fY a) (Z (nxt X.eX (X.zu w) a))) = lamU X w v (W.map (X.B.I.φ v)) := by
  rw [Φ_sum]
  unfold lamU
  refine Finset.sum_congr rfl fun a _ => ?_
  have hM : (X.B.I.P v)⁻¹ * (Bm X * W * Bm' X).map (X.B.I.φ v) * X.B.I.P v =
      Bv X v * W.map (X.B.I.φ v) * Bv' X v := by
    simp only [Bv, Bv', Matrix.map_mul, Matrix.mul_assoc]
  have hn : rv X.B.I v (X.crd (nxt X.eX (X.zu w) a)) =
      nxt (fun b => rv X.B.I v (X.eR b)) (rv X.B.I v (X.zR w)) a := by
    rw [nxt_map (fun y => rv X.B.I v (X.crd y))]; rfl
  show X.B.I.φ v (X.ιE.symm ((VS D).hT (X.fY a) (Z (nxt X.eX (X.zu w) a)))) = _
  rw [← Formalism.L2.SG.NonRelPf.hE_crd X, ← Formalism.L2.SG.Pf.Level.hJ_rv, hZ, ← Formalism.L2.SG.Pf.Level.rv_mulVec, hM, hn]
  rfl

end Coord

theorem ratVanish_holds : RatVanish := by
  intro D X Yf u u' t ht M hMU hMc Y hY1 hYc hYs v
  have hiso : t.lin ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT := t.rep.2.2.1
  have hisoF : ∀ a b, (VS D).hT (t.lin a) (t.lin b) = (VS D).hT a b := hiso
  set F' := mapFlag t.lin hiso (X.Fu u') with hF'
  have hfr : t.frame = ⟨F', t.lin (X.Fu u').z⟩ := by
    unfold GTerm.frame mapLF; rw [dite_eq_left hiso]
  have hRF := (_root_.term_function_const D u u' (X.Fu u) t.lam ((Yf.rowsOK u).1 t.lam t.mem)).2.2.1
  have hrel0 := (TermDef.isRel_mk D.host.F hRF ⟨t.frame, t.rep.2.2.2.2⟩).1 ht
  have hrel : Relevant D.host.F (X.Fu u) F' := by
    have e : t.frame.fl = F' := by rw [hfr]
    rw [← e]; exact hrel0

  set A := Bm X * Y * Bm' X with hA
  set Yp := Gr X (↑M⁻¹ : Matrix _ _ _) * Y * Gr X (M : Matrix _ _ _) with hYp
  let Z1 := linOfMat X A
  have hZ1 : ∀ y, X.crd (Z1 y) = A *ᵥ X.crd y := crd_linOfMat X A
  let Z2 := t.lin.symm.toLinearMap ∘ₗ Z1 ∘ₗ t.lin.toLinearMap
  have hcrdinv : ∀ w, X.crd (t.lin.symm w) = (↑M⁻¹ : Matrix _ _ _) *ᵥ X.crd w := by
    intro w
    have h := hMc (t.lin.symm w)
    rw [LinearEquiv.apply_symm_apply] at h
    rw [h, Matrix.mulVec_mulVec, Units.inv_mul, Matrix.one_mulVec]
  have hconj : (↑M⁻¹ : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) * A * (M : Matrix _ _ _) = Bm X * Yp * Bm' X := by
    rw [hA, hYp]
    unfold Gr
    calc (↑M⁻¹ : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) * (Bm X * Y * Bm' X) * (M : Matrix _ _ _)
        = (Bm X * Bm' X) * (↑M⁻¹ : Matrix _ _ _) * (Bm X * Y * Bm' X) * (M : Matrix _ _ _) * (Bm X * Bm' X) := by
          rw [Bm_mul_Bm', Matrix.one_mul, Matrix.mul_one]
      _ = _ := by simp only [Matrix.mul_assoc]
  have hZ2 : ∀ y, X.crd (Z2 y) = (Bm X * Yp * Bm' X) *ᵥ X.crd y := by
    intro y
    show X.crd (t.lin.symm (Z1 (t.lin y))) = _
    rw [hcrdinv, hZ1, hMc, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, ← hconj, hA]
  have hYps : Ypᴴ * JB X = -(JB X * Yp) := (memConjOf_holds D X M hMU).2.1 Y hYs
  have hL1 : Z1 ∈ (X.Fu u).LieN := lieN_of_coord X u Y Z1 hY1 hYs hZ1
  have hL2 : Z2 ∈ (X.Fu u').LieN := lieN_of_coord X u' Yp Z2 hYc hYps hZ2
  have hL3 : Z1 ∈ F'.LieN := lieN_map t.lin hiso (X.Fu u') Z1 hL2
  have htr := hrel Z1 ⟨hL1, hL3⟩
  unfold FlagG.dpsi at htr

  have hl1 : (X.Fu u).ell Z1 = ∑ a, (VS D).hT (X.fY a) (Z1 (nxt X.eX (X.zu u) a)) := by
    rw [ell_eq_dual (X.Fu u) X.fY (fun a b => by rw [X.Fu_e]; exact hTfe X a b) hL1]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [fvec_succ, X.Fu_e, X.flagZVector]
  have hl2 : F'.ell Z1 = ∑ a, (VS D).hT (X.fY a) (Z2 (nxt X.eX (X.zu u') a)) := by
    rw [ell_eq_dual F' (fun a => t.lin (X.fY a))
      (fun a b => by
        show (VS D).hT (t.lin (X.fY a)) (t.lin ((X.Fu u').e b)) = _
        rw [hisoF, X.Fu_e]; exact hTfe X a b) hL3]
    refine Finset.sum_congr rfl fun a _ => ?_
    have e1 : F'.fvec a.succ = t.lin (nxt X.eX (X.zu u') a) := by
      rw [fvec_succ, nxt_map t.lin, hF']
      simp only [mapFlag, X.Fu_e, X.flagZVector]
    rw [e1, ← hisoF (X.fY a)]
    congr 1
    exact (LinearEquiv.apply_symm_apply t.lin _).symm
  have hΦ1 := ell_coord X u Y Z1 hZ1 v
  have hΦ2 := ell_coord X u' Yp Z2 hZ2 v
  rw [← hl1] at hΦ1
  rw [← hl2] at hΦ2

  have hcm := Formalism.BasicNotions.Examples₂.cmData D.host
  have ht1 := Formalism.MainNotions.BridgeLemma.tie_trace hcm ((X.Fu u).ell Z1)
  have ht2 := Formalism.MainNotions.BridgeLemma.tie_trace hcm (F'.ell Z1)
  rw [htr, ht2] at ht1
  have hΦe := congrArg (Φ X v) ht1
  rw [Φ_add, Φ_add, Φ_star, Φ_star, hΦ1, hΦ2, re_add_star, re_add_star] at hΦe
  have := Complex.ofReal_injective hΦe
  rw [Complex.sub_re]
  linarith

theorem relCharC_holds : RelCharC := relCharC_of_rat ratVanish_holds

end Formalism.L2.SG.Pf.RelChar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RelCharPfRat =====
