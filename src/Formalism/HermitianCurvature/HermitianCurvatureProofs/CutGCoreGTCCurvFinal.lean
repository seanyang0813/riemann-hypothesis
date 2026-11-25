module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvPolyCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCTheta
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormalFormOrderZeroOfParts
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvBlock, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvPoly, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvRTT, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvScal, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvTop, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvFinal

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvBlock =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvBlock", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvCut\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NormalFormOrderZeroOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

noncomputable section

open Formalism.FourierDecayAlt.P.NFx4.NO

section Curv

variable {P : M.Par} {A : Type} [Ring A] [StarRing A] [Algebra ℂ A] (d : Q.NFData P A)

def curvTh0 : A := d.L.ζ * d.L.nab + d.L.ζb * d.L.nabs

def curvK : A := d.κ (fun ρ => ((absTy P ρ : ℝ) : ℂ)) +
    algebraMap ℂ A (P.TT : ℂ) * d.L.GGi * d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ))

theorem curv_theta_split : ThetaC d = curvTh0 d + curvK d := by
  unfold ThetaC curvTh0 curvK; abel

theorem curv_fc {x y : A} (hx : x ∈ ({d.L.ζ, d.L.ζi, d.L.ζb, d.L.ζbi, d.L.GG, d.L.GGi} : Set A))
    (hy : y ∈ ({d.L.ζ, d.L.ζi, d.L.ζb, d.L.ζbi, d.L.GG, d.L.GGi} : Set A)) : Commute x y :=
  d.L.fns_comm x (Or.inr hx) y (Or.inr hy)

theorem curvature_theta_commutator_zeta : curvTh0 d * d.L.ζb = d.L.ζb * curvTh0 d - d.L.ζb := by
  have h1 : Commute d.L.ζ d.L.ζb := curv_fc d (by simp) (by simp)
  unfold curvTh0
  simp only [add_mul, mul_add, mul_assoc, d.L.nab_ζb, d.L.nabs_ζb, mul_sub, mul_one]
  rw [h1.left_comm]
  abel

theorem curvature_theta_commutes_G : curvTh0 d * d.L.GG = d.L.GG * curvTh0 d := by
  have h1 : Commute d.L.ζ d.L.ζb := curv_fc d (by simp) (by simp)
  have h2 : Commute d.L.ζ d.L.GG := curv_fc d (by simp) (by simp)
  have h3 : Commute d.L.ζb d.L.GG := curv_fc d (by simp) (by simp)
  unfold curvTh0
  simp only [add_mul, mul_add, mul_assoc, d.L.nab_GG, d.L.nabs_GG, mul_sub]
  rw [h2.left_comm, h3.left_comm, h1.eq]
  abel

theorem curvature_theta_commutator_nabla : curvTh0 d * d.L.nab =
    d.L.nab * curvTh0 d - d.L.nab + d.L.ζb * (d.L.nabs * d.L.nab - d.L.nab * d.L.nabs) := by
  have e1 : ∀ X : A, d.L.nab * (d.L.ζ * X) = d.L.ζ * (d.L.nab * X) + X := fun X => by
    rw [← mul_assoc, d.L.nab_ζ, add_mul, one_mul, mul_assoc]
  have e2 : ∀ X : A, d.L.nab * (d.L.ζb * X) = d.L.ζb * (d.L.nab * X) := fun X => by
    rw [← mul_assoc, d.L.nab_ζb, mul_assoc]
  unfold curvTh0
  simp only [add_mul, mul_add, mul_assoc, e1, e2, mul_sub]
  abel

theorem curv_K_comm (hRel : d.Rel) {g : A} (hg : g ∈ ({d.L.ζb, d.L.GG} : Set A)) : curvK d * g = g * curvK d := by
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hg
  have hg' : g ∈ ({d.L.ζ, d.L.ζi, d.L.ζb, d.L.ζbi, d.L.GG, d.L.GGi} : Set A) := by rcases hg with rfl | rfl <;> simp
  have hk : ∀ f : M.Ty P → ℂ, Commute (d.κ f) g := fun f => kap_comm_fn hRel f (Or.inl (Or.inr hg'))
  have hGi : Commute d.L.GGi g := curv_fc d (by simp) hg'
  have ha : Commute (algebraMap ℂ A (P.TT : ℂ)) g := Algebra.commute_algebraMap_left _ _
  exact ((hk _).add_left ((ha.mul_left hGi).mul_left (hk _))).eq

theorem curv_K_nab (hRel : d.Rel) : curvK d * d.L.nab = d.L.nab * curvK d +
    algebraMap ℂ A (P.TT : ℂ) * d.L.ζb * d.L.GGi * d.L.GGi * d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ)) := by
  have hk : ∀ f : M.Ty P → ℂ, Commute (d.κ f) d.L.nab := fun f => kap_comm_fn hRel f (Or.inr (by simp))
  have ha : Commute (algebraMap ℂ A (P.TT : ℂ)) d.L.nab := Algebra.commute_algebraMap_left _ _
  have hζ : Commute (algebraMap ℂ A (P.TT : ℂ)) d.L.ζb := Algebra.commute_algebraMap_left _ _
  unfold curvK
  rw [add_mul, mul_add, (hk _).eq]
  have : algebraMap ℂ A (P.TT : ℂ) * d.L.GGi * d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ)) * d.L.nab =
      d.L.nab * (algebraMap ℂ A (P.TT : ℂ) * d.L.GGi * d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ))) +
      algebraMap ℂ A (P.TT : ℂ) * d.L.ζb * d.L.GGi * d.L.GGi * d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ)) := by
    rw [mul_assoc _ _ d.L.nab, (hk _).eq, ← mul_assoc, mul_assoc _ d.L.GGi d.L.nab]
    rw [show d.L.nab * (algebraMap ℂ A (P.TT : ℂ) * d.L.GGi * d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ))) =
      algebraMap ℂ A (P.TT : ℂ) * (d.L.nab * d.L.GGi) * d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ)) by
        rw [← mul_assoc, ← mul_assoc, ← ha.eq]; simp only [mul_assoc]]
    rw [d.L.nab_GGi]
    rw [show d.L.GGi * d.L.nab = (d.L.GGi * d.L.nab - d.L.ζb * d.L.GGi * d.L.GGi) + d.L.ζb * d.L.GGi * d.L.GGi by abel]
    simp only [mul_add, add_mul, mul_assoc]
    rw [← mul_assoc (algebraMap ℂ A (P.TT : ℂ)) d.L.ζb, hζ.eq]
    simp only [mul_assoc]
    abel_nf
  rw [this]
  abel

theorem curv_kap_theta (hRel : d.Rel) (f : M.Ty P → ℂ) : Commute (d.κ f) (ThetaC d) := by
  have hf : ∀ g ∈ d.L.fns ∪ {d.L.nab, d.L.nabs}, Commute (d.κ f) g := fun g hg => kap_comm_fn hRel f hg
  have hz : Commute (d.κ f) d.L.ζ := hf _ (Or.inl (by simp [R.LevelData.fns]))
  have hzb : Commute (d.κ f) d.L.ζb := hf _ (Or.inl (by simp [R.LevelData.fns]))
  have hGi : Commute (d.κ f) d.L.GGi := hf _ (Or.inl (by simp [R.LevelData.fns]))
  have hn : Commute (d.κ f) d.L.nab := hf _ (Or.inr (by simp))
  have hns : Commute (d.κ f) d.L.nabs := hf _ (Or.inr (by simp))
  have hkk : ∀ h : M.Ty P → ℂ, Commute (d.κ f) (d.κ h) := fun h => by
    show d.κ f * d.κ h = d.κ h * d.κ f
    rw [← map_mul, ← map_mul, mul_comm]
  unfold ThetaC
  exact (((hz.mul_right hn).add_right (hzb.mul_right hns)).add_right (hkk _)).add_right
    (((Algebra.commute_algebraMap_right _ _).mul_right hGi).mul_right (hkk _))

theorem curv_theta_zb (hRel : d.Rel) : ThetaC d * d.L.ζb = d.L.ζb * ThetaC d - d.L.ζb := by
  rw [curv_theta_split, add_mul, curvature_theta_commutator_zeta, curv_K_comm d hRel (by simp), mul_add]; abel

theorem curv_theta_GG (hRel : d.Rel) : ThetaC d * d.L.GG = d.L.GG * ThetaC d := by
  rw [curv_theta_split, add_mul, curvature_theta_commutes_G, curv_K_comm d hRel (by simp), mul_add]

theorem curv_theta_nab (hRel : d.Rel) : ThetaC d * d.L.nab = d.L.nab * ThetaC d - d.L.nab +
    d.L.ζb * (d.L.nabs * d.L.nab - d.L.nab * d.L.nabs) +
    algebraMap ℂ A (P.TT : ℂ) * d.L.ζb * d.L.GGi * d.L.GGi * d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ)) := by
  rw [curv_theta_split, add_mul, curvature_theta_commutator_nabla, curv_K_nab d hRel, mul_add]; abel

theorem GG_mul_l0_eq (Y : ℂ) : d.L.GG * d.L.l0 Y = -(d.L.GG * d.L.nab) - algebraMap ℂ A (Y + 1 / 2) * d.L.ζb := by
  have h3 : Commute d.L.GG d.L.ζb := curv_fc d (by simp) (by simp)
  have ha : Commute d.L.GG (algebraMap ℂ A (Y + 1 / 2)) := Algebra.commute_algebraMap_right _ _
  unfold R.LevelData.l0
  rw [mul_sub, mul_neg, ← mul_assoc, ha.eq, mul_assoc, ← mul_assoc d.L.GG, h3.eq, mul_assoc, d.L.GG_GGi, mul_one]

theorem curv_key (hRel : d.Rel) (Y : ℂ) :
    ThetaC d * (d.L.GG * d.L.l0 Y) - d.L.GG * d.L.l0 Y * ThetaC d + d.L.GG * d.L.l0 Y =
      -(d.L.GG * (d.L.ζb * ((d.L.nabs * d.L.nab - d.L.nab * d.L.nabs) +
        algebraMap ℂ A (P.TT : ℂ) * d.L.GGi * d.L.GGi * d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ))))) := by
  have hzbT : Commute d.L.ζb (algebraMap ℂ A (P.TT : ℂ)) := Algebra.commute_algebraMap_right _ _
  have r1 : ThetaC d * (d.L.GG * d.L.nab) = d.L.GG * (ThetaC d * d.L.nab) := by
    rw [← mul_assoc, curv_theta_GG d hRel, mul_assoc]
  have r2 : ThetaC d * (algebraMap ℂ A (Y + 1 / 2) * d.L.ζb) =
      algebraMap ℂ A (Y + 1 / 2) * (ThetaC d * d.L.ζb) := by
    rw [← mul_assoc, (Algebra.commute_algebraMap_right (Y + 1 / 2) (ThetaC d)).eq, mul_assoc]
  rw [GG_mul_l0_eq]
  simp only [mul_neg, neg_mul, mul_sub, sub_mul, r1, r2, curv_theta_nab d hRel, curv_theta_zb d hRel]
  simp only [mul_add, mul_sub, mul_assoc]
  rw [← mul_assoc d.L.ζb (algebraMap ℂ A (P.TT : ℂ)), hzbT.eq]
  simp only [mul_assoc]
  abel

theorem curvature_block_form_holds : GTCCurvBlock := by
  intro P A _ _ _ d hRel hc ρ
  have hκ : d.κ (dTy P ρ) = Pj d ρ := rfl
  rw [hκ]
  set Pp := Pj d ρ with hPp
  have hΘ : Pp * ThetaC d = ThetaC d * Pp := comm_Pj_of d (curv_kap_theta d hRel) ρ
  have hGGP : Pp * d.L.GG = d.L.GG * Pp := comm_Pj_of d (fun f => kap_GG hRel f) ρ
  have hl0P : Pp * d.L.l0 Complex.I = d.L.l0 Complex.I * Pp := comm_Pj_of d (fun f => kappa_commute_l0 hRel f _) ρ
  have hPP : Pp * Pp = Pp := Pj_idem d ρ
  have hx : M.xC P ρ Complex.I ≠ 0 := by
    unfold M.xC
    rw [Finset.prod_ne_zero_iff]
    intro i _ h
    have := congrArg Complex.im h
    simp at this
  have hPt : Pp * d.QQ Complex.I 1 0 * Pp = M.xC P ρ Complex.I • (d.L.GG * d.L.l0 Complex.I * Pp) := by
    rw [normal_form_lower_left, mul_add, add_mul, lower_sum_diagonal_zero hRel, add_zero]
    rw [← mul_assoc Pp, ← mul_assoc Pp, hGGP, mul_assoc d.L.GG Pp, Q.NFData.x, hPp, Pj_kap, ← hPp]
    rw [mul_smul_comm, smul_mul_assoc, smul_mul_assoc]
    congr 1
    simp only [mul_assoc]
    rw [← mul_assoc Pp, hl0P, mul_assoc, hPP]
  set W := d.L.GG * d.L.l0 Complex.I with hW
  have hv : Pp * (ThetaC d * d.QQ Complex.I 1 0 - d.QQ Complex.I 1 0 * ThetaC d) * Pp =
      Pp * (-d.QQ Complex.I 1 0) * Pp := by rw [hc]
  have e1 : Pp * (ThetaC d * d.QQ Complex.I 1 0 - d.QQ Complex.I 1 0 * ThetaC d) * Pp =
      ThetaC d * (Pp * d.QQ Complex.I 1 0 * Pp) - (Pp * d.QQ Complex.I 1 0 * Pp) * ThetaC d := by
    rw [mul_sub, sub_mul]
    congr 1
    · rw [← mul_assoc, hΘ]; simp only [mul_assoc]
    · simp only [mul_assoc]; rw [← hΘ]
  rw [e1, mul_neg, neg_mul, hPt] at hv
  have hv2 : M.xC P ρ Complex.I • ((ThetaC d * W - W * ThetaC d + W) * Pp) = 0 := by
    have : (ThetaC d * W - W * ThetaC d + W) * Pp = ThetaC d * (W * Pp) - W * Pp * ThetaC d + W * Pp := by
      rw [add_mul, sub_mul, mul_assoc, mul_assoc W, mul_assoc W, ← hΘ]
    rw [mul_smul_comm, smul_mul_assoc] at hv
    rw [this, smul_add, smul_sub, hv]
    abel
  have hv3 : (ThetaC d * W - W * ThetaC d + W) * Pp = 0 := by
    have := congrArg (fun z => (M.xC P ρ Complex.I)⁻¹ • z) hv2
    simpa only [smul_smul, inv_mul_cancel₀ hx, one_smul, smul_zero] using this
  rw [hW, curv_key d hRel, neg_mul, neg_eq_zero] at hv3
  set C := d.L.nabs * d.L.nab - d.L.nab * d.L.nabs
  have hκP : d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ)) * Pp = ((-2 * M.aC P ρ : ℝ) : ℂ) • Pp := by
    rw [hPp, kap_Pj]
  have hv4 : C * Pp + algebraMap ℂ A (P.TT : ℂ) * d.L.GGi * d.L.GGi * (((-2 * M.aC P ρ : ℝ) : ℂ) • Pp) = 0 := by
    have e : d.L.ζbi * (d.L.GGi * (d.L.GG * (d.L.ζb * (C + algebraMap ℂ A (P.TT : ℂ) * d.L.GGi * d.L.GGi *
        d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ)))) * Pp)) = 0 := by
      rw [hv3, mul_zero, mul_zero]
    rw [← e]
    simp only [mul_assoc]
    rw [← mul_assoc d.L.GGi d.L.GG, d.L.GGi_GG, one_mul, ← mul_assoc d.L.ζbi d.L.ζb, d.L.ζbi_ζb, one_mul]
    rw [add_mul]
    simp only [mul_assoc]
    rw [hκP]
  have hfin : C * Pp = -(algebraMap ℂ A (P.TT : ℂ) * d.L.GGi * d.L.GGi * (((-2 * M.aC P ρ : ℝ) : ℂ) • Pp)) :=
    eq_neg_of_add_eq_zero_left hv4
  rw [hfin, mul_smul_comm]
  simp only [mul_assoc]
  rw [← Algebra.smul_def, ← Algebra.smul_def, smul_smul, ← neg_smul]
  congr 1
  push_cast
  ring

end Curv

end

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvBlock =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvPoly =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvPoly", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvPolyCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.CurvPoly

noncomputable section

section PLT

variable {R : Type} [Ring R] [Algebra ℂ R]

def PLT (N : ℕ) (f : ℂ → R) : Prop := ∃ a : ℕ → R, ∀ s, f s = ∑ k ∈ Finset.range N, s ^ k • a k

theorem PLT.congr {N : ℕ} {f g : ℂ → R} (h : PLT N f) (e : ∀ s, g s = f s) : PLT N g := by
  obtain ⟨a, ha⟩ := h
  exact ⟨a, fun s => by rw [e, ha]⟩

theorem PLT.mono {N N' : ℕ} {f : ℂ → R} (h : PLT N f) (hN : N ≤ N') : PLT N' f := by
  obtain ⟨a, ha⟩ := h
  refine ⟨fun k => if k < N then a k else 0, fun s => ?_⟩
  rw [ha]
  symm
  rw [← Finset.sum_subset (Finset.range_mono hN)]
  · exact Finset.sum_congr rfl fun k hk => by dsimp only; rw [if_pos (Finset.mem_range.1 hk)]
  · intro k _ hk
    dsimp only
    rw [if_neg (fun h => hk (Finset.mem_range.2 h)), smul_zero]

theorem plt_zero (N : ℕ) : PLT N (fun _ => (0 : R)) := ⟨fun _ => 0, fun s => by simp⟩

theorem PLT.add {N : ℕ} {f g : ℂ → R} (hf : PLT N f) (hg : PLT N g) : PLT N (fun s => f s + g s) := by
  obtain ⟨a, ha⟩ := hf
  obtain ⟨b, hb⟩ := hg
  exact ⟨fun k => a k + b k, fun s => by dsimp only; rw [ha, hb, ← Finset.sum_add_distrib]; simp only [smul_add]⟩

theorem PLT.const_mul {N : ℕ} {f : ℂ → R} (x : R) (hf : PLT N f) : PLT N (fun s => x * f s) := by
  obtain ⟨a, ha⟩ := hf
  exact ⟨fun k => x * a k, fun s => by dsimp only; rw [ha, Finset.mul_sum]; simp only [mul_smul_comm]⟩

theorem PLT.mul_const {N : ℕ} {f : ℂ → R} (hf : PLT N f) (x : R) : PLT N (fun s => f s * x) := by
  obtain ⟨a, ha⟩ := hf
  exact ⟨fun k => a k * x, fun s => by dsimp only; rw [ha, Finset.sum_mul]; simp only [smul_mul_assoc]⟩

theorem PLT.mul {a b : ℕ} {f g : ℂ → R} (hf : PLT (a + 1) f) (hg : PLT (b + 1) g) :
    PLT (a + b + 1) (fun s => f s * g s) :=
  Formalism.FourierDecayAlt.P.MAx3.PG.polyIn_mul (f := f) (g := g) hf hg

theorem plt_monomial (n : ℕ) (x : R) : PLT (n + 1) (fun s => s ^ n • x) := by
  refine ⟨fun k => if k = n then x else 0, fun s => ?_⟩
  rw [Finset.sum_eq_single n]
  · simp
  · intro k _ hk; simp [hk]
  · intro h; exact absurd (Finset.mem_range.2 (Nat.lt_succ_self n)) h

theorem plt_const (x : R) : PLT 1 (fun _ => x) := (plt_monomial 0 x).congr fun s => by simp

theorem plt_sum {ι : Type} {N : ℕ} (t : Finset ι) {f : ι → ℂ → R} (h : ∀ i ∈ t, PLT N (f i)) :
    PLT N (fun s => ∑ i ∈ t, f i s) := by
  classical
  induction t using Finset.induction_on with
  | empty => exact (plt_zero N).congr fun s => by simp
  | insert j t hj ih =>
    refine ((h j (Finset.mem_insert_self _ _)).add (ih fun i hi => h i (Finset.mem_insert_of_mem hi))).congr ?_
    intro s
    rw [Finset.sum_insert hj]

theorem plt_affine (x y : R) : PLT 2 (fun s => s • x + y) :=
  ((plt_monomial 1 x).add ((plt_const y).mono (by norm_num))).congr fun s => by simp

theorem polyIn_of_plt {f : ℂ → R} {d : ℕ} (h : PLT (d + 1) f) : MAx3.G.PolyIn f d := h

end PLT

theorem plt_kap {P : M.Par} {A : Type} [Ring A] [Algebra ℂ A] (κ : (M.Ty P → ℂ) →ₐ[ℂ] A) {N : ℕ}
    (g : M.Ty P → ℂ → ℂ) (h : ∀ ρ, PLT N (g ρ)) : PLT N (fun u => κ (fun ρ => g ρ u)) := by
  choose c hc using h
  refine ⟨fun i => κ (fun ρ => c ρ i), fun u => ?_⟩
  have e : (fun ρ => g ρ u) = ∑ i ∈ Finset.range N, u ^ i • (fun ρ => c ρ i) := by
    funext ρ
    rw [hc ρ u, Finset.sum_apply]
    rfl
  dsimp only

  rw [e, map_sum]
  simp only [map_smul]

theorem expand {A : Type} [Ring A] [Algebra ℂ A] (m : ℕ) (GG GGi K α β γ Wt1 Wt2 Θ : A)
    (x w ml X' W' : ℂ → A)
    (hx : ∀ u, x u = u ^ (m + 1) • (1 : A) + u ^ m • K + X' u) (hX' : PLT m X')
    (hw : ∀ u, w u = u ^ (m + 3) • Wt1 + u ^ (m + 2) • Wt2 + W' u) (hW' : PLT (m + 2) W')
    (hml : ∀ u, ml u = u ^ 2 • α + u • β + γ)
    (C1 : GG * α + GGi * Wt1 = 1) (C2 : GG * β + GG * K * α + GGi * Wt2 = Θ) :
    PLT (m + 2) (fun u => GGi * w u + GG * x u * ml u - u ^ (m + 3) • (1 : A) - u ^ (m + 2) • Θ) := by
  have key : ∀ u, GGi * w u + GG * x u * ml u - u ^ (m + 3) • (1 : A) - u ^ (m + 2) • Θ -
      (u ^ (m + 1) • (GG * γ + GG * K * β) + u ^ m • (GG * K * γ) + (GG * X' u * ml u + GGi * W' u)) =
      u ^ (m + 3) • (GG * α + GGi * Wt1 - 1) + u ^ (m + 2) • (GG * β + GG * K * α + GGi * Wt2 - Θ) := by
    intro u
    rw [hx, hw, hml u]
    simp only [mul_add, add_mul, smul_mul_assoc, mul_smul_comm, smul_add, mul_one, smul_smul, mul_assoc, smul_sub]
    module
  have hlow : PLT (m + 2) (fun u => u ^ (m + 1) • (GG * γ + GG * K * β) + u ^ m • (GG * K * γ) +
      (GG * X' u * ml u + GGi * W' u)) := by
    refine ((plt_monomial (m + 1) _).add ((plt_monomial m _).mono (by omega))).add ?_
    refine PLT.add ?_ (hW'.const_mul GGi)
    have hml' : PLT 3 ml := by
      refine (((plt_monomial 2 α).add ((plt_monomial 1 β).mono (by omega))).add ((plt_const γ).mono (by omega))).congr ?_
      intro s; rw [hml s]; simp
    cases m with
    | zero =>
      obtain ⟨a, ha⟩ := hX'
      exact (plt_zero 2).congr fun s => by simp [ha s]
    | succ n =>
      have := (hX'.const_mul GG).mul (b := 2) hml'
      exact (this.mono (by omega)).congr fun s => by simp only [mul_assoc]
  refine hlow.congr fun u => ?_
  have e := key u
  rw [C1, C2, sub_self, sub_self, smul_zero, smul_zero, add_zero, sub_eq_zero] at e
  exact e

section NF

variable {P : M.Par} {A : Type} [Ring A] [StarRing A] [Algebra ℂ A] (d : Q.NFData P A)

theorem lc {a b : A} (h : a * b = b * a) (c : A) : a * (b * c) = b * (a * c) := by
  rw [← mul_assoc, h, mul_assoc]

theorem fc {x y : A} (hx : x ∈ ({d.L.ζ, d.L.ζi, d.L.ζb, d.L.ζbi, d.L.GG, d.L.GGi} : Set A))
    (hy : y ∈ ({d.L.ζ, d.L.ζi, d.L.ζb, d.L.ζbi, d.L.GG, d.L.GGi} : Set A)) : x * y = y * x :=
  d.L.fns_comm x (Or.inr hx) y (Or.inr hy)

theorem ml_expand (u : ℂ) : d.L.m0 u * d.L.l0 u =
    u ^ 2 • (d.L.ζ * d.L.GGi * (d.L.ζb * d.L.GGi)) +
      u • (d.L.nabs * (d.L.ζb * d.L.GGi) + d.L.ζ * d.L.GGi * d.L.nab) +
      (d.L.nabs * d.L.nab + (1 / 2 : ℂ) • (d.L.nabs * (d.L.ζb * d.L.GGi)) - (1 / 2 : ℂ) • (d.L.ζ * d.L.GGi * d.L.nab) -
        (1 / 4 : ℂ) • (d.L.ζ * d.L.GGi * (d.L.ζb * d.L.GGi))) := by
  unfold R.LevelData.m0 R.LevelData.l0
  simp only [← Algebra.smul_def]
  simp only [neg_mul, mul_neg, sub_mul, mul_sub, smul_mul_assoc, mul_smul_comm, smul_smul, mul_assoc,
    smul_sub, smul_neg, neg_sub]
  module

theorem GG_alpha : d.L.GG * (d.L.ζ * d.L.GGi * (d.L.ζb * d.L.GGi)) =
    1 + algebraMap ℂ A d.L.TT * d.L.GGi := by
  have hz : d.L.ζ * d.L.ζb = d.L.GG + algebraMap ℂ A d.L.TT := by rw [d.L.GG_def]; abel
  have h1 : d.L.GG * d.L.ζ = d.L.ζ * d.L.GG := fc d (by simp) (by simp)
  have h2 : d.L.GGi * d.L.ζb = d.L.ζb * d.L.GGi := fc d (by simp) (by simp)
  calc d.L.GG * (d.L.ζ * d.L.GGi * (d.L.ζb * d.L.GGi))
      = d.L.ζ * ((d.L.GG * d.L.GGi) * (d.L.ζb * d.L.GGi)) := by
        simp only [mul_assoc]; rw [lc h1]
    _ = d.L.ζ * d.L.ζb * d.L.GGi := by rw [d.L.GG_GGi, one_mul, mul_assoc]
    _ = 1 + algebraMap ℂ A d.L.TT * d.L.GGi := by rw [hz, add_mul, d.L.GG_GGi]

theorem C1 : d.L.GG * (d.L.ζ * d.L.GGi * (d.L.ζb * d.L.GGi)) + d.L.GGi * algebraMap ℂ A (-d.L.TT) = 1 := by
  rw [GG_alpha, ← Algebra.commutes, map_neg, neg_mul]
  abel

theorem GG_nabs : d.L.GG * (d.L.nabs * (d.L.ζb * d.L.GGi)) =
    d.L.ζb * d.L.nabs + algebraMap ℂ A d.L.TT * d.L.GGi := by
  have hz : d.L.ζb * d.L.ζ = d.L.GG + algebraMap ℂ A d.L.TT := by
    rw [← fc d (x := d.L.ζ) (by simp) (by simp), d.L.GG_def]; abel
  have h1 : d.L.GG * d.L.ζb = d.L.ζb * d.L.GG := fc d (by simp) (by simp)
  have e : d.L.nabs * (d.L.ζb * d.L.GGi) = d.L.ζb * (d.L.GGi * d.L.nabs) + d.L.ζb * (d.L.ζ * d.L.GGi * d.L.GGi) -
      d.L.GGi := by
    rw [← mul_assoc, d.L.nabs_ζb, sub_mul, one_mul, mul_assoc, d.L.nabs_GGi, mul_add]
  rw [e, mul_sub, mul_add, lc h1, lc h1, ← mul_assoc d.L.GG d.L.GGi, d.L.GG_GGi, one_mul]
  have e2 : d.L.GG * (d.L.ζ * d.L.GGi * d.L.GGi) = d.L.ζ * d.L.GGi := by
    have h3 : d.L.GG * d.L.ζ = d.L.ζ * d.L.GG := fc d (by simp) (by simp)
    simp only [mul_assoc]; rw [lc h3, ← mul_assoc d.L.GG, d.L.GG_GGi, one_mul]
  rw [e2, ← mul_assoc, hz, add_mul, d.L.GG_GGi]
  abel

end NF

end

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.CurvPoly

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.CurvPoly


noncomputable section

section NormalFormTwo

variable {P : M.Par} {A : Type} [Ring A] [StarRing A] [Algebra ℂ A] (d : Q.NFData P A)

theorem GG_zGinab : d.L.GG * (d.L.ζ * d.L.GGi * d.L.nab) = d.L.ζ * d.L.nab := by
  have h1 : d.L.GG * d.L.ζ = d.L.ζ * d.L.GG := fc d (by simp) (by simp)
  simp only [mul_assoc]
  rw [lc h1, ← mul_assoc d.L.GG d.L.GGi, d.L.GG_GGi, one_mul]

theorem kappa_of_weight_function : d.κ (fun ρ => (P.TT : ℂ) * (((absTy P ρ : ℝ) : ℂ) - 1 - sumU P)) =
    (P.TT : ℂ) • (d.κ (fun ρ => ((absTy P ρ : ℝ) : ℂ)) - 1 - algebraMap ℂ A (sumU P)) := by
  rw [show (fun ρ => (P.TT : ℂ) * (((absTy P ρ : ℝ) : ℂ) - 1 - sumU P)) = (P.TT : ℂ) •
      ((fun ρ => ((absTy P ρ : ℝ) : ℂ)) - 1 - algebraMap ℂ (M.Ty P → ℂ) (sumU P)) from funext fun ρ => by simp]
  rw [map_smul, map_sub, map_sub, map_one, AlgHom.commutes]

theorem kap_aC : d.κ (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ)) =
    (2 : ℂ) • d.κ (fun ρ => ((absTy P ρ : ℝ) : ℂ)) - algebraMap ℂ A (sumU P) := by
  rw [show (fun ρ => ((-2 * M.aC P ρ : ℝ) : ℂ)) = (2 : ℂ) • (fun ρ => ((absTy P ρ : ℝ) : ℂ)) -
      algebraMap ℂ (M.Ty P → ℂ) (sumU P) from funext fun ρ => by
        simp only [M.aC, absTy, sumU, Pi.sub_apply, Pi.smul_apply, smul_eq_mul, Pi.algebraMap_apply,
          Algebra.algebraMap_self, RingHom.id_apply]
        push_cast
        ring]
  rw [map_sub, map_smul, AlgHom.commutes]

theorem C2 (hRel : d.Rel) (hTT : d.L.TT = (P.TT : ℂ)) :
    d.L.GG * (d.L.nabs * (d.L.ζb * d.L.GGi) + d.L.ζ * d.L.GGi * d.L.nab) +
      d.L.GG * d.κ (fun ρ => ((absTy P ρ : ℝ) : ℂ)) * (d.L.ζ * d.L.GGi * (d.L.ζb * d.L.GGi)) +
      d.L.GGi * d.κ (fun ρ => (P.TT : ℂ) * (((absTy P ρ : ℝ) : ℂ) - 1 - sumU P)) = ThetaC d := by
  have hKG : d.L.GG * d.κ (fun ρ => ((absTy P ρ : ℝ) : ℂ)) = d.κ (fun ρ => ((absTy P ρ : ℝ) : ℂ)) * d.L.GG :=
    (hRel.2.1 _ d.L.GG (Or.inl (by simp [R.LevelData.fns]))).eq.symm
  have hKGi : d.κ (fun ρ => ((absTy P ρ : ℝ) : ℂ)) * d.L.GGi = d.L.GGi * d.κ (fun ρ => ((absTy P ρ : ℝ) : ℂ)) :=
    (hRel.2.1 _ d.L.GGi (Or.inl (by simp [R.LevelData.fns]))).eq
  unfold ThetaC
  rw [kappa_of_weight_function, kap_aC, mul_add, GG_nabs, GG_zGinab, hKG, mul_assoc (d.κ _) d.L.GG, GG_alpha, hTT]
  simp only [Algebra.algebraMap_eq_smul_one, mul_add, mul_sub, smul_mul_assoc, mul_smul_comm,
    one_mul, mul_one, smul_sub, smul_smul, hKGi]
  module

end NormalFormTwo

theorem curvature_polynomial_of_scalar : GTCCurvPolyOfScal := by
  intro hS P A _ _ _ d hRel hk hTT
  obtain ⟨m, hm⟩ : ∃ m, P.k = m + 2 := ⟨P.k - 2, by omega⟩
  have hsc := hS P hk
  choose cw hcw using fun ρ => (hsc ρ).1
  choose cx hcx using fun ρ => (hsc ρ).2.1
  have hex := fun ρ => (hsc ρ).2.2
  have scalPLT : ∀ {N : ℕ} {g : ℂ → ℂ} (c : ℕ → ℂ), (∀ u, g u = ∑ i ∈ Finset.range N, u ^ i * c i) → PLT N g :=
    fun c h => ⟨c, fun u => by rw [h u]; simp only [smul_eq_mul]⟩
  have hxEx : ∀ ex : Finset ℕ, (∃ l ∈ ex, l ∈ Finset.Icc 1 (P.k - 1)) →
      PLT (m + 1) (fun u => d.κ (fun ρ => M.xEx P ex ρ u)) := by
    intro ex hex'
    refine plt_kap d.κ (fun ρ u => M.xEx P ex ρ u) fun ρ => ?_
    obtain ⟨c, hc⟩ := hex ρ ex hex'
    exact scalPLT c (fun u => by rw [hc u, show P.k - 1 = m + 1 by omega])
  have hS21 : PLT (m + 1) (fun u => d.weightedSumBis u) := by
    unfold Q.NFData.weightedSumBis
    exact plt_sum _ fun l hl => (hxEx {l} ⟨l, Finset.mem_singleton_self l, hl⟩).const_mul (d.SS l)
  have hS12 : PLT (m + 1) (fun u => d.S12 u) := by
    unfold Q.NFData.S12
    exact plt_sum _ fun l hl => (hxEx {l} ⟨l, Finset.mem_singleton_self l, hl⟩).mul_const (star (d.SS l))
  have hS4 : PLT (m + 1) (fun u => d.S4 u) := by
    unfold Q.NFData.S4
    exact plt_sum _ fun l hl => plt_sum _ fun j _ =>
      (hxEx {l, j} ⟨l, Finset.mem_insert_self l _, hl⟩).const_mul (star (d.SS l) * d.SS j)
  have hm0 : PLT 2 (fun u => d.L.m0 u) :=
    (plt_affine (-(d.L.ζ * d.L.GGi)) (-d.L.nabs + (1 / 2 : ℂ) • (d.L.ζ * d.L.GGi))).congr fun u => by
      unfold R.LevelData.m0
      simp only [← Algebra.smul_def]
      module
  have hl0 : PLT 2 (fun u => d.L.l0 u) :=
    (plt_affine (-(d.L.ζb * d.L.GGi)) (-d.L.nab - (1 / 2 : ℂ) • (d.L.ζb * d.L.GGi))).congr fun u => by
      unfold R.LevelData.l0
      simp only [← Algebra.smul_def]
      module
  set K := d.κ (fun ρ => ((absTy P ρ : ℝ) : ℂ)) with hK
  set X' : ℂ → A := fun u => d.κ (fun ρ => ∑ i ∈ Finset.range m, u ^ i * cx ρ i) with hX'def
  have hx : ∀ u, d.x u = u ^ (m + 1) • (1 : A) + u ^ m • K + X' u := by
    intro u
    unfold Q.NFData.x
    rw [show (fun ρ => M.xC P ρ u) = u ^ (m + 1) • (1 : M.Ty P → ℂ) + u ^ m • (fun ρ => ((absTy P ρ : ℝ) : ℂ)) +
        (fun ρ => ∑ i ∈ Finset.range m, u ^ i * cx ρ i) from funext fun ρ => by
          rw [hcx ρ u, show P.k - 1 = m + 1 by omega, show P.k - 2 = m by omega]
          simp only [Pi.add_apply, Pi.smul_apply, Pi.one_apply, smul_eq_mul, mul_one]
          ring]
    rw [map_add (f := _), map_add (f := _), map_smul, map_smul, map_one]
  have hX' : PLT m X' := plt_kap d.κ _ (fun ρ => scalPLT (cx ρ) (fun u => rfl))
  have hxP : PLT (m + 2) (fun u => d.x u) :=
    (((plt_monomial (m + 1) (1 : A)).add ((plt_monomial m K).mono (by omega))).add (hX'.mono (by omega))).congr
      fun u => hx u
  set W' : ℂ → A := fun u => d.κ (fun ρ => ∑ i ∈ Finset.range P.k, u ^ i * cw ρ i) with hW'def
  have hw : ∀ u, d.κ (fun ρ => M.wC P ρ u) = u ^ (m + 3) • algebraMap ℂ A (-(P.TT : ℂ)) +
      u ^ (m + 2) • d.κ (fun ρ => (P.TT : ℂ) * (((absTy P ρ : ℝ) : ℂ) - 1 - sumU P)) + W' u := by
    intro u
    rw [show (fun ρ => M.wC P ρ u) = u ^ (m + 3) • algebraMap ℂ (M.Ty P → ℂ) (-(P.TT : ℂ)) +
        u ^ (m + 2) • (fun ρ => (P.TT : ℂ) * (((absTy P ρ : ℝ) : ℂ) - 1 - sumU P)) +
        (fun ρ => ∑ i ∈ Finset.range P.k, u ^ i * cw ρ i) from funext fun ρ => by
          rw [hcw ρ u, hm]
          simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, Pi.algebraMap_apply, Algebra.algebraMap_self,
            RingHom.id_apply]]
    rw [map_add (f := _), map_add (f := _), map_smul, map_smul, AlgHom.commutes]
  have hW' : PLT (m + 2) W' := plt_kap d.κ _ (fun ρ => scalPLT (cw ρ) (fun u => by rw [hm]))
  have hC1 : d.L.GG * (d.L.ζ * d.L.GGi * (d.L.ζb * d.L.GGi)) + d.L.GGi * algebraMap ℂ A (-(P.TT : ℂ)) = 1 := by
    have := C1 d; rwa [hTT] at this
  have hmain := expand m d.L.GG d.L.GGi K _ _ _ _ _ (ThetaC d) (fun u => d.x u)
    (fun u => d.κ (fun ρ => M.wC P ρ u)) (fun u => d.L.m0 u * d.L.l0 u) X' W' hx hX' hw hW' (ml_expand d) hC1
    (C2 d hRel hTT)
  have hlow : PLT (m + 2) (fun u => d.L.GG * d.L.m0 u * d.L.GGi * d.weightedSumBis u + d.S12 u * d.L.l0 u +
      d.L.GGi * d.S4 u) := by
    have t1 := ((hm0.const_mul d.L.GG).mul (a := 1) (b := m) (hS21.const_mul d.L.GGi)).mono (show 1 + m + 1 ≤ m + 2 by omega)
    have t2 := (hS12.mul (a := m) (b := 1) hl0)
    have t3 := (hS4.const_mul d.L.GGi).mono (show m + 1 ≤ m + 2 by omega)
    exact ((t1.add t2).add t3).congr fun u => by simp only [mul_assoc]
  constructor
  · rw [show P.k - 1 = m + 1 by omega]
    apply polyIn_of_plt
    refine (hmain.add hlow).congr fun u => ?_
    have hQ : d.QQ u 0 0 = d.L.GGi * (d.κ fun ρ => M.wC P ρ u) + d.L.GG * d.x u * d.L.m0 u * d.L.l0 u +
        d.L.GG * d.L.m0 u * d.L.GGi * d.weightedSumBis u + d.S12 u * d.L.l0 u + d.L.GGi * d.S4 u := by
      simp [Q.NFData.QQ]
    rw [hQ, hm]
    simp only [mul_assoc]
    abel
  · rw [hm]
    apply polyIn_of_plt
    have t := ((hxP.const_mul d.L.GG).mul (a := m + 1) (b := 1) hl0).add (hS21.mono (show m + 1 ≤ m + 1 + 1 + 1 by omega))
    refine t.congr fun u => ?_
    simp [Q.NFData.QQ]

end

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.CurvPoly

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

alias curvature_polynomial_of_scalar := _root_.Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.CurvPoly.curvature_polynomial_of_scalar

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvPoly =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvRTT =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvRTT", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvCut\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

noncomputable section

open Formalism.FourierDecayAlt.P.MAx3.G

section PolyTools

variable {R : Type} [Ring R] [Algebra ℂ R]

theorem curv_polyIn_congr {f g : ℂ → R} {d : ℕ} (h : PolyIn f d) (e : ∀ s, g s = f s) : PolyIn g d := by
  obtain ⟨a, ha⟩ := h
  exact ⟨a, fun s => by rw [e, ha]⟩

theorem curv_polyIn_csmul {f : ℂ → R} {d : ℕ} (c : ℂ) (hf : PolyIn f d) : PolyIn (fun s => c • f s) d := by
  obtain ⟨a, ha⟩ := hf
  exact ⟨fun k => c • a k, fun s => by dsimp only; rw [ha, Finset.smul_sum]; simp only [smul_comm c]⟩

theorem curv_polyIn_sub {f g : ℂ → R} {d : ℕ} (hf : PolyIn f d) (hg : PolyIn g d) :
    PolyIn (fun s => f s - g s) d :=
  curv_polyIn_congr (polyIn_add hf (curv_polyIn_csmul (-1) hg)) fun s => by simp [sub_eq_add_neg]

theorem curv_polyIn_monomial (n : ℕ) (x : R) : PolyIn (fun s => s ^ n • x) n := by
  refine ⟨fun k => if k = n then x else 0, fun s => ?_⟩
  dsimp only
  rw [Finset.sum_eq_single n (fun b _ hb => by rw [if_neg hb, smul_zero])
    (fun h => absurd (Finset.mem_range.2 (Nat.lt_succ_self n)) h), if_pos rfl]

end PolyTools

theorem curv_top_zero {E : Type*} [AddCommGroup E] [Module ℂ E] (n : ℕ) (c : E) (a : ℕ → E)
    (h : ∀ u : ℂ, u ^ (n + 1) • c = ∑ i ∈ Finset.range (n + 1), u ^ i • a i) : c = 0 := by
  rw [← Module.forall_dual_apply_eq_zero_iff ℂ]
  intro φ
  set p : Polynomial ℂ := Polynomial.C (φ c) * Polynomial.X ^ (n + 1) -
    ∑ i ∈ Finset.range (n + 1), Polynomial.C (φ (a i)) * Polynomial.X ^ i with hpdef
  have hp : p = 0 := by
    apply Polynomial.funext
    intro u
    have hu := congrArg φ (h u)

    simp only [map_smul, map_sum, smul_eq_mul] at hu
    simp only [hpdef, Polynomial.eval_sub, Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_pow,
      Polynomial.eval_X, Polynomial.eval_finsetSum, Polynomial.eval_zero]
    rw [mul_comm (φ c), hu, sub_eq_zero]
    exact Finset.sum_congr rfl fun i _ => mul_comm _ _
  have hc := congrArg (fun q => _root_.AddMonoidAlgebra.coeff (M := ℕ) q (n + 1)) hp
  simp only [hpdef, Polynomial.coeff_sub, Polynomial.coeff_C_mul_X_pow, Polynomial.finsetSum_coeff,
    Polynomial.coeff_zero] at hc
  rw [Finset.sum_eq_zero (fun i hi => by
    rw [if_neg (by have := Finset.mem_range.1 hi; omega)]), sub_zero] at hc
  exact hc

theorem curvature_radial_torus_holds : GTCCurvRTT := by
  intro A _ _ n f g Θ hn hrtt hF hg v
  set T := g v with hT
  set F : ℂ → A := fun u => f u - u ^ (n + 1) • (1 : A) - u ^ n • Θ with hFdef
  have hn' : n - 1 + 1 = n := Nat.sub_add_cancel hn
  have hG : PolyIn (fun u => F u * T - T * F u) (n - 1) :=
    curv_polyIn_sub (polyIn_mul_const hF T) (polyIn_const_mul T hF)
  have hSt : PolyIn (fun u => g u * f v - u ^ n • (T * Θ) - T * F u + v • (u ^ n • (Θ * T - T * Θ)) -
      u • (F u * T - T * F u) + v • (F u * T - T * F u)) n := by
    refine polyIn_add (curv_polyIn_sub (polyIn_add (curv_polyIn_sub (curv_polyIn_sub (polyIn_mul_const hg (f v))
      (curv_polyIn_monomial n (T * Θ))) (polyIn_mono (polyIn_const_mul T hF) (by omega)))
      (curv_polyIn_csmul v (curv_polyIn_monomial n (Θ * T - T * Θ)))) ?_) ?_
    · have := polyIn_smul_var hG
      rw [hn'] at this
      exact this
    · exact polyIn_mono (curv_polyIn_csmul v hG) (by omega)
  obtain ⟨s, hs⟩ := hSt
  have key : ∀ u : ℂ, u ^ (n + 1) • (Θ * T - T * Θ + T) = ∑ i ∈ Finset.range (n + 1), u ^ i • s i := by
    intro u
    rw [← hs u]
    have hfu : f u = F u + u ^ (n + 1) • (1 : A) + u ^ n • Θ := by simp only [hFdef]; abel
    have h := hrtt u v
    rw [← hT, hfu] at h
    simp only [add_mul, mul_add, smul_mul_assoc, mul_smul_comm, one_mul, mul_one] at h
    linear_combination (norm := module) h
  have h0 := curv_top_zero n _ s key
  exact eq_neg_of_add_eq_zero_left h0

end

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvRTT =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvScal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvScal", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvPolyCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Polynomial

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.CurvScal

noncomputable section

theorem pl_monic (s : Finset ℕ) (f : ℕ → ℂ) : (∏ i ∈ s, (X + C (f i))).Monic :=
  monic_prod_of_monic _ _ (fun i _ => monic_X_add_C (f i))

theorem pl_natDegree (s : Finset ℕ) (f : ℕ → ℂ) : (∏ i ∈ s, (X + C (f i))).natDegree = s.card := by
  rw [natDegree_prod_of_monic _ _ (fun i _ => monic_X_add_C (f i))]
  simp

theorem pl_top (s : Finset ℕ) (f : ℕ → ℂ) : (∏ i ∈ s, (X + C (f i))).coeff s.card = 1 := by
  have h := (pl_monic s f).coeff_natDegree
  rwa [pl_natDegree] at h

theorem pl_next (s : Finset ℕ) (f : ℕ → ℂ) (hs : 0 < s.card) :
    (∏ i ∈ s, (X + C (f i))).coeff (s.card - 1) = ∑ i ∈ s, f i := by
  have h := nextCoeff_of_natDegree_pos (p := ∏ i ∈ s, (X + C (f i))) (by rw [pl_natDegree]; exact hs)
  rw [pl_natDegree] at h
  rw [← h, Monic.nextCoeff_prod _ _ (fun i _ => monic_X_add_C (f i))]
  simp [nextCoeff_X_add_C]

theorem pl_high (s : Finset ℕ) (f : ℕ → ℂ) {j : ℕ} (hj : s.card < j) : (∏ i ∈ s, (X + C (f i))).coeff j = 0 :=
  coeff_eq_zero_of_natDegree_lt (by rw [pl_natDegree]; exact hj)

theorem top2 (p : ℂ[X]) (N : ℕ) (h : p.natDegree < N + 2) (u : ℂ) :
    p.eval u = u ^ (N + 1) * p.coeff (N + 1) + u ^ N * p.coeff N + ∑ i ∈ Finset.range N, u ^ i * p.coeff i := by
  rw [eval_eq_sum_range' h, Finset.sum_range_succ, Finset.sum_range_succ]
  have : ∀ i, p.coeff i * u ^ i = u ^ i * p.coeff i := fun i => mul_comm _ _
  simp only [this]
  ring

theorem card_Icc_one (n : ℕ) : (Finset.Icc 1 n).card = n := by simp

theorem xC_leading_terms_alt (P : M.Par) (m : ℕ) (hm : P.k = m + 2) (ρ : M.Ty P) :
    ∃ c : ℕ → ℂ, ∀ u : ℂ, M.xC P ρ u = u ^ (P.k - 1) + (absTy P ρ : ℂ) * u ^ (P.k - 2) +
        ∑ i ∈ Finset.range (P.k - 2), u ^ i * c i := by
  have h1 : P.k - 1 = m + 1 := by omega
  have h2 : P.k - 2 = m := by omega
  let f : ℕ → ℂ := fun i => ((M.rho P ρ i : ℝ) : ℂ)
  refine ⟨fun i => (∏ i ∈ Finset.Icc 1 (m + 1), (X + C (f i))).coeff i, fun u => ?_⟩
  have hx : M.xC P ρ u = (∏ i ∈ Finset.Icc 1 (m + 1), (X + C (f i))).eval u := by
    rw [eval_prod]; unfold M.xC; rw [h1]; simp [f]
  rw [hx, top2 _ m (by rw [pl_natDegree, card_Icc_one]; omega) u, h1, h2]
  have ht := pl_top (Finset.Icc 1 (m + 1)) f
  have hn := pl_next (Finset.Icc 1 (m + 1)) f (by rw [card_Icc_one]; omega)
  rw [card_Icc_one] at ht hn
  rw [Nat.add_sub_cancel] at hn
  rw [ht, hn]
  have ha : (absTy P ρ : ℂ) = ∑ i ∈ Finset.Icc 1 (m + 1), f i := by
    simp only [absTy, h1, f]; push_cast; rfl
  rw [ha]; ring

theorem part_ex (P : M.Par) (m : ℕ) (hm : P.k = m + 2) (ρ : M.Ty P) (ex : Finset ℕ)
    (hex : ∃ l ∈ ex, l ∈ Finset.Icc 1 (P.k - 1)) :
    ∃ c : ℕ → ℂ, ∀ u : ℂ, M.xEx P ex ρ u = ∑ i ∈ Finset.range (P.k - 1), u ^ i * c i := by
  have h1 : P.k - 1 = m + 1 := by omega
  let f : ℕ → ℂ := fun i => ((M.rho P ρ i : ℝ) : ℂ)
  let s := Finset.Icc 1 (m + 1) \ ex
  have hs : s.card < m + 1 := by
    obtain ⟨l, hl, hlI⟩ := hex
    rw [h1] at hlI
    have hss : s ⊂ Finset.Icc 1 (m + 1) :=
      (Finset.ssubset_iff_of_subset Finset.sdiff_subset).2 ⟨l, hlI, by simp [hl]⟩
    have := Finset.card_lt_card hss
    rwa [card_Icc_one] at this
  refine ⟨fun i => (∏ i ∈ s, (X + C (f i))).coeff i, fun u => ?_⟩
  have hx : M.xEx P ex ρ u = (∏ i ∈ s, (X + C (f i))).eval u := by
    rw [eval_prod]; unfold M.xEx; rw [h1]; simp [f, s]
  rw [hx, eval_eq_sum_range' (by rw [pl_natDegree]; omega) u, h1]
  exact Finset.sum_congr rfl fun i _ => mul_comm _ _

theorem part_w (P : M.Par) (m : ℕ) (hm : P.k = m + 2) (ρ : M.Ty P) :
    ∃ c : ℕ → ℂ, ∀ u : ℂ, M.wC P ρ u = u ^ (P.k + 1) * (-(P.TT : ℂ)) +
        u ^ P.k * ((P.TT : ℂ) * ((absTy P ρ : ℂ) - 1 - sumU P)) + ∑ i ∈ Finset.range P.k, u ^ i * c i := by
  have h1 : P.k - 1 = m + 1 := by omega
  let fx : ℕ → ℂ := fun i => ((M.rho P ρ i : ℝ) : ℂ) + 1
  let xp := ∏ i ∈ Finset.Icc 1 (m + 1), (X + C (fx i))
  have hxp : M.coordinatePolynomial P ρ = xp := by unfold M.coordinatePolynomial; rw [h1]
  have xmon : xp.Monic := pl_monic _ _
  have xdeg : xp.natDegree = m + 1 := by rw [pl_natDegree, card_Icc_one]
  have xtop : xp.coeff (m + 1) = 1 := by
    have := pl_top (Finset.Icc 1 (m + 1)) fx; rwa [card_Icc_one] at this
  have xnext : xp.coeff m = ∑ i ∈ Finset.Icc 1 (m + 1), fx i := by
    have := pl_next (Finset.Icc 1 (m + 1)) fx (by rw [card_Icc_one]; omega)
    rwa [card_Icc_one, Nat.add_sub_cancel] at this
  have xhigh : xp.coeff (m + 2) = 0 := pl_high _ _ (by rw [card_Icc_one]; omega)
  let fa : ℕ → ℂ := fun i => 1 / 2 + (P.u i : ℂ)
  let fb : ℕ → ℂ := fun i => 1 / 2 + (P.u' i : ℂ)
  let pa := ∏ i ∈ Finset.Icc 1 (m + 2), (X + C (fa i))
  let pb := ∏ i ∈ Finset.Icc 1 (m + 2), (X + C (fb i))
  have hT : (-((P.T : ℂ) * (P.T' : ℂ))) = -(P.TT : ℂ) := by simp [M.Par.TT]
  have hq : M.qP P = C (-(P.TT : ℂ)) * (pa * pb) := by
    unfold M.qP; rw [hm, Finset.prod_mul_distrib, hT]
  have abmon : (pa * pb).Monic := (pl_monic _ _).mul (pl_monic _ _)
  have abdeg : (pa * pb).natDegree = 2 * m + 4 := by
    rw [(pl_monic _ _).natDegree_mul (pl_monic _ _), pl_natDegree, pl_natDegree, card_Icc_one]; ring
  have abtop : (pa * pb).coeff (2 * m + 4) = 1 := by rw [← abdeg]; exact abmon.coeff_natDegree
  have abnext : (pa * pb).coeff (2 * m + 3) =
      ∑ i ∈ Finset.Icc 1 (m + 2), fa i + ∑ i ∈ Finset.Icc 1 (m + 2), fb i := by
    have h := nextCoeff_of_natDegree_pos (p := pa * pb) (by rw [abdeg]; omega)
    rw [abdeg, show 2 * m + 4 - 1 = 2 * m + 3 by omega] at h
    rw [← h, (pl_monic _ _).nextCoeff_mul (pl_monic _ _),
      Monic.nextCoeff_prod _ _ (fun i _ => monic_X_add_C (fa i)),
      Monic.nextCoeff_prod _ _ (fun i _ => monic_X_add_C (fb i))]
    simp only [nextCoeff_X_add_C]
  let NS : ℂ[X] := ∑ l ∈ Finset.Icc 1 (m + 1), C ((M.Nrm P l ρ : ℝ) : ℂ) *
    ((∏ j ∈ (Finset.Icc 1 (m + 1)).erase l, (X + C ((M.rho P ρ j : ℝ) : ℂ))) *
      ∏ j ∈ (Finset.Icc 1 (m + 1)).erase l, (X + C (((M.rho P ρ j : ℝ) : ℂ) + 1)))
  have hw : M.wNum P ρ = M.qP P + NS := by unfold M.wNum; rw [h1]
  have nsdeg : NS.natDegree ≤ 2 * m + 2 := by
    apply natDegree_sum_le_of_forall_le
    intro l hl
    refine (natDegree_C_mul_le _ _).trans (natDegree_mul_le.trans ?_)
    have hc : ((Finset.Icc 1 (m + 1)).erase l).card = m := by
      rw [Finset.card_erase_of_mem hl, card_Icc_one]; omega
    have e1 := pl_natDegree ((Finset.Icc 1 (m + 1)).erase l) (fun j => ((M.rho P ρ j : ℝ) : ℂ))
    have e2 := pl_natDegree ((Finset.Icc 1 (m + 1)).erase l) (fun j => ((M.rho P ρ j : ℝ) : ℂ) + 1)
    rw [e1, e2, hc]; omega
  let c0 : ℂ := (P.TT : ℂ) * ((absTy P ρ : ℂ) - 1 - sumU P)
  let Q0 : ℂ[X] := C (-(P.TT : ℂ)) * X ^ (m + 3) + C c0 * X ^ (m + 2)
  let G : ℂ[X] := M.wNum P ρ - xp * Q0
  have e_xQ : xp * Q0 = C (-(P.TT : ℂ)) * (xp * X ^ (m + 3)) + C c0 * (xp * X ^ (m + 2)) := by
    simp only [Q0]; ring
  have c4a : (xp * X ^ (m + 3)).coeff (2 * m + 4) = 1 := by
    rw [show 2 * m + 4 = (m + 1) + (m + 3) by ring, coeff_mul_X_pow, xtop]
  have c4b : (xp * X ^ (m + 2)).coeff (2 * m + 4) = 0 := by
    rw [show 2 * m + 4 = (m + 2) + (m + 2) by ring, coeff_mul_X_pow, xhigh]
  have c3a : (xp * X ^ (m + 3)).coeff (2 * m + 3) = xp.coeff m := by
    rw [show 2 * m + 3 = m + (m + 3) by ring, coeff_mul_X_pow]
  have c3b : (xp * X ^ (m + 2)).coeff (2 * m + 3) = 1 := by
    rw [show 2 * m + 3 = (m + 1) + (m + 2) by ring, coeff_mul_X_pow, xtop]
  have Q0deg : (xp * Q0).natDegree ≤ 2 * m + 4 := by
    refine natDegree_mul_le.trans ?_
    rw [xdeg]
    have : Q0.natDegree ≤ m + 3 := (natDegree_add_le _ _).trans
      (max_le (natDegree_C_mul_X_pow_le _ _) ((natDegree_C_mul_X_pow_le _ _).trans (by omega)))
    omega
  have qdeg : (M.qP P).natDegree ≤ 2 * m + 4 := by
    rw [hq]; exact (natDegree_C_mul_le _ _).trans abdeg.le
  have hA : (absTy P ρ : ℂ) = ∑ i ∈ Finset.Icc 1 (m + 1), ((M.rho P ρ i : ℝ) : ℂ) := by
    simp only [absTy, h1]; push_cast; rfl
  have hS : sumU P = ∑ i ∈ Finset.Icc 1 (m + 2), (P.u i : ℂ) + ∑ i ∈ Finset.Icc 1 (m + 2), (P.u' i : ℂ) := by
    simp only [sumU, hm, Finset.sum_add_distrib]
  have Gdeg : G.natDegree ≤ 2 * m + 2 := by
    rw [natDegree_le_iff_coeff_eq_zero]
    intro N hN
    simp only [G, hw, coeff_sub, coeff_add]
    rw [coeff_eq_zero_of_natDegree_lt (p := NS) (by omega), add_zero]
    rcases (show N = 2 * m + 3 ∨ N = 2 * m + 4 ∨ 2 * m + 4 < N by omega) with h | h | h
    · subst h
      rw [e_xQ, coeff_add, coeff_C_mul, coeff_C_mul, c3a, c3b, xnext, hq, coeff_C_mul, abnext]
      simp only [fa, fb, fx, c0, hA, hS, Finset.sum_add_distrib, Finset.sum_const, card_Icc_one, nsmul_eq_mul]
      push_cast
      ring
    · subst h
      rw [e_xQ, coeff_add, coeff_C_mul, coeff_C_mul, c4a, c4b, hq, coeff_C_mul, abtop]; ring
    · rw [coeff_eq_zero_of_natDegree_lt (by omega : (M.qP P).natDegree < N),
        coeff_eq_zero_of_natDegree_lt (by omega : (xp * Q0).natDegree < N)]; ring
  have hG := modByMonic_add_div G xp
  have hdiv : M.wNum P ρ /ₘ xp = Q0 + G /ₘ xp := by
    refine (div_modByMonic_unique (Q0 + G /ₘ xp) (G %ₘ xp) xmon ⟨?_, degree_modByMonic_lt _ xmon⟩).1
    calc G %ₘ xp + xp * (Q0 + G /ₘ xp) = xp * Q0 + (G %ₘ xp + xp * (G /ₘ xp)) := by ring
      _ = xp * Q0 + G := by rw [hG]
      _ = M.wNum P ρ := by simp only [G]; ring
  have Gq : (G /ₘ xp).natDegree < m + 2 := by rw [natDegree_divByMonic _ xmon, xdeg]; omega
  refine ⟨fun i => (G /ₘ xp).coeff i, fun u => ?_⟩
  unfold M.wC
  rw [hxp, hdiv, eval_add, eval_eq_sum_range' Gq u, hm]
  simp only [Q0, c0, eval_add, eval_mul, eval_C, eval_pow, eval_X]
  have : ∀ i, (G /ₘ xp).coeff i * u ^ i = u ^ i * (G /ₘ xp).coeff i := fun i => mul_comm _ _
  simp only [this]
  ring

end

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.CurvScal

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

theorem curvature_scalar_holds : GTCCurvScal := by
  intro P hk ρ
  obtain ⟨m, hm⟩ : ∃ m, P.k = m + 2 := ⟨P.k - 2, by omega⟩
  exact ⟨CurvScal.part_w P m hm ρ, CurvScal.xC_leading_terms_alt P m hm ρ, fun ex hex => CurvScal.part_ex P m hm ρ ex hex⟩

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvScal =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvTop =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvTop", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCTheta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

noncomputable section

theorem thetaC_eq_thetaNF {P : M.Par} {A : Type} [Ring A] [StarRing A] [Algebra ℂ A] (d : Q.NFData P A)
    (hTT : d.L.TT = (P.TT : ℂ)) : ThetaC d = ThetaNF P d := by
  unfold ThetaC ThetaNF
  rw [hTT]
  congr 3
  funext ρ
  rw [aC_eq]
  push_cast
  ring

theorem gTRTopNF_of_curvPoly (h : GTCCurvPoly) : GTRTopNF := by
  intro P A _ _ _ d _ hk _ hRel hTT
  obtain ⟨⟨a, ha⟩, -⟩ := h P A d hRel hk hTT
  have hk1 : P.k - 1 + 1 = P.k := by omega
  refine ⟨fun j => if j = P.k + 1 then 1 else if j = P.k then ThetaC d else if j < P.k then a j else 0,
    fun Y => ?_, 0, ?_⟩
  · have e := ha Y
    rw [hk1] at e
    dsimp only at e ⊢
    rw [Finset.sum_range_succ, Finset.sum_range_succ]
    simp only [show P.k ≠ P.k + 1 by omega, ↓reduceIte]
    rw [Finset.sum_congr rfl (fun j hj => by
      rw [if_neg (by have := Finset.mem_range.1 hj; omega), if_neg (by have := Finset.mem_range.1 hj; omega),
        if_pos (Finset.mem_range.1 hj)]), ← e]
    abel
  · simp only [show P.k ≠ P.k + 1 by omega, if_false, if_true, Int.cast_zero, zero_smul, add_zero]
    exact thetaC_eq_thetaNF d hTT

end

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvTop =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvFinal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvFinal", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCTheta\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvBlock\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvPoly\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvRTT\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvScal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

theorem curvature_polynomial_holds : GTCCurvPoly := curvature_polynomial_of_scalar curvature_scalar_holds

theorem curvature_identity_holds : GTCCurvId :=
  gTCCurvId_of_cut curvature_polynomial_holds curvature_radial_torus_holds curvature_block_form_holds

theorem top_normal_form_of_curvature : GTRTopNF := gTRTopNF_of_curvPoly curvature_polynomial_holds

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCCurvFinal =====
