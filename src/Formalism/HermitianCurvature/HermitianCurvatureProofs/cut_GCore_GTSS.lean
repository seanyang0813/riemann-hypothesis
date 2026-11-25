module

public import Formalism.HermitianCurvature.StatementM
public import Mathlib.Analysis.Complex.Norm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.EulerZetaGammaInvIdentity
public import Mathlib.Analysis.Normed.Ring.Basic
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTConnGaugeA
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSTr
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormalFormOrderZeroOfParts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCLocalCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCLRadT
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSAdj
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSConst
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSLocal
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSPhaseA, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSPhase, Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_GCore_GTSS

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSPhaseA =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSPhaseA", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementM\npublic import Mathlib.Analysis.Complex.Norm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.EulerZetaGammaInvIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Normed.Ring.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.M Finset

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.SSPh

def height (P : M.Par) (ρ : M.Ty P) : ℕ := ∑ i, ((ρ i : Fin _) : ℕ)

theorem sum_ind (P : M.Par) (l : ℕ) (hl : l ∈ Icc 1 (P.k - 1)) :
    ∑ i : Fin (P.k - 1), (if (i : ℕ) + 1 = l then 1 else 0) = 1 := by
  rw [Finset.mem_Icc] at hl
  rw [Finset.sum_eq_single ⟨l - 1, by omega⟩]
  · rw [if_pos (by simp; omega)]
  · intro b _ hb
    rw [if_neg]
    intro h
    apply hb
    ext
    simp
    omega
  · intro h
    exact absurd (Finset.mem_univ _) h

theorem up_height (P : M.Par) (l : ℕ) (hl : l ∈ Icc 1 (P.k - 1)) (ρ ρ' : M.Ty P) (hU : M.Up P l ρ ρ') :
    height P ρ' = height P ρ + 1 := by
  unfold height
  rw [Finset.sum_congr rfl (fun i _ => hU i), Finset.sum_add_distrib, sum_ind P l hl]

theorem pred_exists (P : M.Par) (ρ' : M.Ty P) (h : height P ρ' ≠ 0) :
    ∃ l ∈ Icc 1 (P.k - 1), ∃ ρ, M.Up P l ρ ρ' := by
  obtain ⟨i, hi⟩ : ∃ i, ((ρ' i : Fin _) : ℕ) ≠ 0 := by
    by_contra hall
    push_neg at hall
    apply h
    unfold height
    exact Finset.sum_eq_zero fun i _ => hall i
  refine ⟨(i : ℕ) + 1, ?_, fun j => if hj : j = i then ⟨((ρ' j : Fin _) : ℕ) - 1,
    Nat.lt_of_le_of_lt (Nat.sub_le _ _) (ρ' j).isLt⟩ else ρ' j, ?_⟩
  · rw [Finset.mem_Icc]
    have := i.isLt
    omega
  · intro j
    by_cases hj : j = i
    · subst hj
      simp
      omega
    · simp only [hj, dif_neg, not_false_eq_true]
      rw [if_neg]
      · simp
      · intro h2
        apply hj
        ext
        omega

theorem phase_exists (P : M.Par) (w : ℕ → M.Ty P → M.Ty P → ℂ)
    (hw1 : ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ ρ', M.Up P l ρ ρ' → ‖w l ρ ρ'‖ = 1)
    (hcoc : ∀ l ∈ Icc 1 (P.k - 1), ∀ j ∈ Icc 1 (P.k - 1), j ≠ l → ∀ ρ ρl ρj ρlj : M.Ty P,
      M.Up P l ρ ρl → M.Up P j ρ ρj → M.Up P j ρl ρlj → M.Up P l ρj ρlj →
        w j ρl ρlj * w l ρ ρl = w l ρj ρlj * w j ρ ρj) :
    ∃ u : M.Ty P → ℂ, (∀ ρ, ‖u ρ‖ = 1) ∧
      ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ ρ', M.Up P l ρ ρ' → u ρ' = w l ρ ρ' * u ρ := by
  classical
  have key : ∀ n : ℕ, ∃ u : M.Ty P → ℂ, (∀ ρ, ‖u ρ‖ = 1) ∧
      ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ ρ', M.Up P l ρ ρ' → height P ρ' ≤ n → u ρ' = w l ρ ρ' * u ρ := by
    intro n
    induction n with
    | zero =>
      refine ⟨fun _ => 1, fun _ => by simp, fun l hl ρ ρ' hU hh => ?_⟩
      rw [up_height P l hl ρ ρ' hU] at hh
      omega
    | succ n ih =>
      obtain ⟨u, hu1, hu⟩ := ih
      let u' : M.Ty P → ℂ := fun ρ' =>
        if hh : height P ρ' = n + 1 then
          (let hp := pred_exists P ρ' (by omega)
           w hp.choose hp.choose_spec.2.choose ρ' * u hp.choose_spec.2.choose)
        else u ρ'
      have hu'1 : ∀ ρ, ‖u' ρ‖ = 1 := by
        intro ρ'
        simp only [u']
        split_ifs with hh
        · have hp := pred_exists P ρ' (by omega)
          rw [norm_mul, hw1 _ (pred_exists P ρ' (by omega)).choose_spec.1 _ _
            (pred_exists P ρ' (by omega)).choose_spec.2.choose_spec, hu1, one_mul]
        · exact hu1 ρ'
      refine ⟨u', hu'1, fun l hl ρ ρ' hU hh => ?_⟩
      have hhρ := up_height P l hl ρ ρ' hU
      have hρ : u' ρ = u ρ := by
        simp only [u']
        rw [dif_neg (by omega)]
      rw [hρ]
      by_cases hn : height P ρ' = n + 1
      · simp only [u']
        rw [dite_eq_left hn]
        set hp := pred_exists P ρ' (by omega) with hpdef
        set l0 := hp.choose with hl0
        have hl0m : l0 ∈ Icc 1 (P.k - 1) := hp.choose_spec.1
        set ρ0 := hp.choose_spec.2.choose with hρ0
        have hU0 : M.Up P l0 ρ0 ρ' := hp.choose_spec.2.choose_spec
        show w l0 ρ0 ρ' * u ρ0 = w l ρ ρ' * u ρ
        by_cases hll : l0 = l
        · have e : ρ0 = ρ := Formalism.FourierDecayAlt.P.Mx4.up_inj P l ρ' ρ0 ρ (hll ▸ hU0) hU
          rw [e, hll]
        · obtain ⟨σ, hσ1, hσ2⟩ := Formalism.FourierDecayAlt.P.Mx4.up_mixed1 P l0 l (Ne.symm hll) ρ ρ' ρ0 hU hU0

          have h0 := up_height P l0 hl0m ρ0 ρ' hU0
          have e1 : u ρ0 = w l σ ρ0 * u σ := hu l hl σ ρ0 hσ2 (by omega)
          have e2 : u ρ = w l0 σ ρ * u σ := hu l0 hl0m σ ρ hσ1 (by omega)
          have hc' := hcoc l0 hl0m l hl (Ne.symm hll) σ ρ ρ0 ρ' hσ1 hσ2 hU hU0
          rw [e1, e2, ← mul_assoc, ← mul_assoc, hc']
      · have hle : height P ρ' ≤ n := by omega
        simp only [u']
        rw [dif_neg hn]
        exact hu l hl ρ ρ' hU hle
  obtain ⟨u, hu1, hu⟩ := key (Finset.univ.sup (height P))
  exact ⟨u, hu1, fun l hl ρ ρ' hU => hu l hl ρ ρ' hU (Finset.le_sup (Finset.mem_univ ρ'))⟩

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.SSPh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSPhaseA =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSPhase =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSPhase", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTConnGaugeA\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSPhaseA\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSTr\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.EulerZetaGammaInvIdentity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormalFormOrderZeroOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Finset

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.SSPh

open Formalism.FourierDecayAlt.P.CutMP.Gauge Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

noncomputable section

theorem fnZ_const_mul (P : M.Par) (c : ℂ) (f : MA.SmQ P.r P.TT) : fnZ P (fun _ => c) * f = c • f := by
  have hmem : (fun _ : MA.Qp P.r P.TT => c) ∈ MA.smSub P.r P.TT :=
    (MA.smSub P.r P.TT).algebraMap_mem c
  unfold fnZ MA.toSm
  rw [dite_eq_left hmem]
  apply Subtype.ext
  funext q
  simp

theorem sm_const_inj (P : M.Par) (q0 : MA.Qp P.r P.TT) {c c' : ℂ}
    (h : c • (1 : MA.SmQ P.r P.TT) = c' • (1 : MA.SmQ P.r P.TT)) : c = c' := by
  have h1 := congrArg (fun g : MA.SmQ P.r P.TT => (g : MA.Qp P.r P.TT → ℂ) q0) h
  simpa using h1

theorem ss_fst_apply (P : M.Par) (l : ℕ) (τ σ : M.Ty P) (f : MA.SmQ P.r P.TT) :
    ((MA.SS P (MA.DQ P) l) τ σ).1 f =
      (if M.Up P l σ τ then (((Real.sqrt (M.Nrm P l σ)) : ℝ) : ℂ) else 0) • f := by
  unfold MA.SS
  simp only [Matrix.of_apply]
  split_ifs
  · rfl
  · rw [zero_smul]
    rfl

theorem star_ss_fst_apply (P : M.Par) (l : ℕ) (τ σ : M.Ty P) (f : MA.SmQ P.r P.TT) :
    ((star (MA.SS P (MA.DQ P) l)) τ σ).1 f =
      (if M.Up P l τ σ then (((Real.sqrt (M.Nrm P l τ)) : ℝ) : ℂ) else 0) • f := by
  rw [Matrix.star_apply]
  unfold MA.SS
  simp only [Matrix.of_apply]
  split_ifs
  · show ((algebraMap ℂ (MA.DQ P).Pr _).2.unop) f = _
    show (algebraMap ℂ (Module.End ℂ (MA.DQ P).R) (starRingEnd ℂ _)) f = _
    rw [Complex.conj_ofReal]
    rfl
  · simp; rfl

theorem dzQ_smul (P : M.Par) (c : ℂ) (f : MA.SmQ P.r P.TT) : dzQ P (c • f) = c • dzQ P f := map_smul ((MA.DQ P).dzP).1 c f

theorem dzbQ_smul (P : M.Par) (c : ℂ) (f : MA.SmQ P.r P.TT) : dzbQ P (c • f) = c • dzbQ P f := map_smul ((MA.DQ P).dzbP).1 c f

theorem mulQ_smul (P : M.Par) (x : (MA.DQ P).Pr) (c : ℂ) (f : MA.SmQ P.r P.TT) :
    mulQ P x (c • f) = c • mulQ P x f := map_smul x.1 c f

theorem second_shift_phase_holds : GTSSPhase := by
  intro Wp Wq _ _ _ _ _ _ P Bs X d hH e he hk hn s t hL hst
  classical
  obtain ⟨hpl, hk2, hcs, hLv, hSL, hRel, hQ⟩ := hH
  have hP : P.OK := hpl.1
  have hTT : 0 < P.TT := mul_pos hP.T_pos hP.T'_pos
  let q0 : MA.Qp P.r P.TT := ⟨((fun _ => 1), ((Real.sqrt P.TT + 1 : ℝ) : ℂ)), ⟨fun _ => one_ne_zero, ann_pt P hTT⟩⟩

  let CV : Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π' → (M.Ty P → ℂ) → Prop :=
    fun Ψ c => trR P Bs e Ψ = fun σ => c σ • (1 : MA.SmQ P.r P.TT)
  have cv_eq : ∀ Ψ c c', CV Ψ c → CV Ψ c' → c = c' := by
    intro Ψ c c' h1 h2
    funext σ
    exact sm_const_inj P q0 (congrFun (h1.symm.trans h2) σ)
  have cv_SS : ∀ l ∈ Icc 1 (P.k - 1), ∀ Ψ c, CV Ψ c → CV ((d.SS l).1 Ψ) (fun τ => ∑ σ, s l τ σ * c σ) := by
    intro l hl Ψ c h
    funext τ
    rw [(hL l hl Ψ τ).1, h, Finset.sum_smul]
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [fnZ_const_mul, smul_smul]
  have cv_St : ∀ l ∈ Icc 1 (P.k - 1), ∀ Ψ c, CV Ψ c →
      CV ((star (d.SS l)).1 Ψ) (fun τ => ∑ σ, t l τ σ * c σ) := by
    intro l hl Ψ c h
    funext τ
    rw [(hL l hl Ψ τ).2, h, Finset.sum_smul]
    refine Finset.sum_congr rfl fun σ _ => ?_
    rw [fnZ_const_mul, smul_smul]
  have cv_K : ∀ f Ψ c, CV Ψ c → CV ((d.κ f).1 Ψ) (fun τ => f τ * c τ) := by
    intro f Ψ c h
    funext τ
    rw [hk f Ψ, actA_kap, h, smul_smul]
  choose U hU using fun ρ : M.Ty P =>
    SSTr.exists_tr P Bs hpl hk2 e he (fun τ => if τ = ρ then (1 : MA.SmQ P.r P.TT) else 0)
  have cvU : ∀ ρ, CV (U ρ) (fun τ => if τ = ρ then 1 else 0) := by
    intro ρ
    show trR P Bs e (U ρ) = _
    rw [(hU ρ).1]
    funext τ
    by_cases h : τ = ρ <;> simp [h]

  have F1 : ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ τ, ¬ M.Up P l ρ τ → s l τ ρ = 0 := by
    intro l hl ρ τ hnu
    have hr := hRel.2.2.2.1 l (fun σ => if σ = ρ then 1 else 0) (fun σ => if M.Up P l ρ σ then 1 else 0) (by
      intro σ σ' hU'
      by_cases h : σ = ρ
      · subst h; simp [hU']
      · have : ¬ M.Up P l ρ σ' := fun h2 => h (Formalism.FourierDecayAlt.P.Mx4.up_inj P l σ' σ ρ hU' h2)
        simp [h, this])
    have c1 := cv_K (fun σ => if M.Up P l ρ σ then 1 else 0) _ _ (cv_SS l hl _ _ (cvU ρ))
    have c2 := cv_SS l hl _ _ (cv_K (fun σ => if σ = ρ then 1 else 0) _ _ (cvU ρ))
    have e12 : (d.κ fun σ => if M.Up P l ρ σ then (1 : ℂ) else 0).1 ((d.SS l).1 (U ρ)) =
        (d.SS l).1 ((d.κ fun σ => if σ = ρ then (1 : ℂ) else 0).1 (U ρ)) :=
      congrArg (fun a : Q.Pr (Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') => a.1 (U ρ)) hr
    rw [e12] at c1
    have h := congrFun (cv_eq _ _ _ c1 c2) τ
    simp only [mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true, if_neg hnu,
      zero_mul] at h
    rw [← h]

  have F2 : ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ ρ', M.Up P l ρ ρ' →
      star (s l ρ' ρ) * s l ρ' ρ = ((M.Nrm P l ρ : ℝ) : ℂ) := by
    intro l hl ρ ρ' hU1
    have hN := hRel.2.2.2.2.2 l hl
    have c1 := cv_St l hl _ _ (cv_SS l hl _ _ (cvU ρ))
    have c2 := cv_K (fun σ => ((M.Nrm P l σ : ℝ) : ℂ)) _ _ (cvU ρ)
    have e12 : (star (d.SS l)).1 ((d.SS l).1 (U ρ)) = (d.κ fun σ => ((M.Nrm P l σ : ℝ) : ℂ)).1 (U ρ) :=
      congrArg (fun a : Q.Pr (Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') => a.1 (U ρ)) hN
    rw [e12] at c1
    have h := congrFun (cv_eq _ _ _ c1 c2) ρ
    simp only [mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true] at h
    rw [← h, Finset.sum_eq_single ρ', hst l hl ρ ρ']
    · intro σ _ hσ
      have : ¬ M.Up P l ρ σ := fun h2 => hσ (Formalism.FourierDecayAlt.P.Mx4.up_fun P l ρ σ ρ' h2 hU1)
      rw [F1 l hl ρ σ this, mul_zero]
    · intro h0; exact absurd (Finset.mem_univ _) h0
  have L1 : ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ ρl : M.Ty P, M.Up P l ρ ρl → ∀ (g : M.Ty P → ℂ) (c : ℂ),
      ∑ σ, g σ * (s l σ ρ * c) = g ρl * (s l ρl ρ * c) := by
    intro l hl ρ ρl hU1 g c
    rw [Finset.sum_eq_single ρl]
    · intro σ _ hσ
      have : ¬ M.Up P l ρ σ := fun h2 => hσ (Formalism.FourierDecayAlt.P.Mx4.up_fun P l ρ σ ρl h2 hU1)
      rw [F1 l hl ρ σ this, zero_mul, mul_zero]
    · intro h0; exact absurd (Finset.mem_univ _) h0

  have hIS : Wd.IsStart d.QQ (M.qC P) := by
    have h := (Formalism.FourierDecayAlt.P.actual_start Wp Wq P Bs.z Bs.z' Bs.π Bs.π' hpl X).1
    rwa [show X.QQ = d.QQ from funext hQ] at h
  have hX := Formalism.FourierDecayAlt.P.shift_extra P _ d hP hSL hRel hIS
  have F3 : ∀ l ∈ Icc 1 (P.k - 1), ∀ j ∈ Icc 1 (P.k - 1), j ≠ l → ∀ ρ ρl ρj ρlj : M.Ty P,
      M.Up P l ρ ρl → M.Up P j ρ ρj → M.Up P j ρl ρlj → M.Up P l ρj ρlj →
      s j ρlj ρl * s l ρl ρ * ((M.rho P ρ j - M.rho P ρ l - 1 : ℝ) : ℂ) =
        s l ρlj ρj * s j ρj ρ * ((M.rho P ρ j - M.rho P ρ l + 1 : ℝ) : ℂ) := by
    intro l hl j hj hjl ρ ρl ρj ρlj h1 h2 h3 h4
    have hc := ((hX.2 l hl).2 j hj hjl).1
    have c1 := cv_SS j hj _ _ (cv_SS l hl _ _
      (cv_K (fun σ => ((M.rho P σ j - M.rho P σ l - 1 : ℝ) : ℂ)) _ _ (cvU ρ)))
    have c2 := cv_SS l hl _ _ (cv_SS j hj _ _
      (cv_K (fun σ => ((M.rho P σ j - M.rho P σ l + 1 : ℝ) : ℂ)) _ _ (cvU ρ)))
    have e12 : (d.SS j).1 ((d.SS l).1 ((d.κ fun σ => ((M.rho P σ j - M.rho P σ l - 1 : ℝ) : ℂ)).1 (U ρ))) =
        (d.SS l).1 ((d.SS j).1 ((d.κ fun σ => ((M.rho P σ j - M.rho P σ l + 1 : ℝ) : ℂ)).1 (U ρ))) :=
      congrArg (fun a : Q.Pr (Q.RadSp P.k P.r Bs.z Bs.z' Bs.π Bs.π') => a.1 (U ρ)) hc
    rw [e12] at c1
    have h := congrFun (cv_eq _ _ _ c1 c2) ρlj
    simp only [mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true] at h
    rw [L1 l hl ρ ρl h1, L1 j hj ρ ρj h2] at h
    rw [← mul_assoc, ← mul_assoc] at h
    exact h

  let sq : ℕ → M.Ty P → ℂ := fun l ρ => ((Real.sqrt (M.Nrm P l ρ) : ℝ) : ℂ)
  have hpos : ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ ρ', M.Up P l ρ ρ' → 0 < M.Nrm P l ρ :=
    fun l hl ρ ρ' hU1 => ((_root_.Formalism.FourierDecayAlt.P.Mx4.nrmFacts P hP l hl ρ).1 ρ' hU1).1
  have hsq0 : ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ ρ', M.Up P l ρ ρ' → sq l ρ ≠ 0 := by
    intro l hl ρ ρ' hU1
    have := Real.sqrt_pos.2 (hpos l hl ρ ρ' hU1)
    show ((Real.sqrt (M.Nrm P l ρ) : ℝ) : ℂ) ≠ 0
    exact_mod_cast this.ne'
  let w : ℕ → M.Ty P → M.Ty P → ℂ := fun l ρ ρ' => s l ρ' ρ / sq l ρ
  have hsw : ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ ρ', M.Up P l ρ ρ' → s l ρ' ρ = w l ρ ρ' * sq l ρ := by
    intro l hl ρ ρ' hU1
    exact (div_mul_cancel₀ _ (hsq0 l hl ρ ρ' hU1)).symm
  have hnorm_s : ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ ρ', M.Up P l ρ ρ' → ‖s l ρ' ρ‖ = Real.sqrt (M.Nrm P l ρ) := by
    intro l hl ρ ρ' hU1
    have h := F2 l hl ρ ρ' hU1
    rw [Complex.star_def, Complex.conj_mul'] at h
    have h' : ‖s l ρ' ρ‖ ^ 2 = M.Nrm P l ρ := by exact_mod_cast h
    rw [← h', Real.sqrt_sq (norm_nonneg _)]
  have hw1 : ∀ l ∈ Icc 1 (P.k - 1), ∀ ρ ρ', M.Up P l ρ ρ' → ‖w l ρ ρ'‖ = 1 := by
    intro l hl ρ ρ' hU1
    have hs := Real.sqrt_pos.2 (hpos l hl ρ ρ' hU1)
    show ‖s l ρ' ρ / sq l ρ‖ = 1
    rw [norm_div, hnorm_s l hl ρ ρ' hU1]
    simp only [sq, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hs]
    exact div_self hs.ne'
  have hcoc : ∀ l ∈ Icc 1 (P.k - 1), ∀ j ∈ Icc 1 (P.k - 1), j ≠ l → ∀ ρ ρl ρj ρlj : M.Ty P,
      M.Up P l ρ ρl → M.Up P j ρ ρj → M.Up P j ρl ρlj → M.Up P l ρj ρlj →
        w j ρl ρlj * w l ρ ρl = w l ρj ρlj * w j ρ ρj := by
    intro l hl j hj hjl ρ ρl ρj ρlj h1 h2 h3 h4
    have f3 := F3 l hl j hj hjl ρ ρl ρj ρlj h1 h2 h3 h4
    rw [hsw j hj ρl ρlj h3, hsw l hl ρ ρl h1, hsw l hl ρj ρlj h4, hsw j hj ρ ρj h2] at f3
    have cr := (Formalism.FourierDecayAlt.P.Mx4.corner P hP l j hl hj hjl ρ ρl ρj h1 h2).1
    have cr' : sq j ρl * sq l ρ * ((M.rho P ρ j - M.rho P ρ l - 1 : ℝ) : ℂ) =
        sq l ρj * sq j ρ * ((M.rho P ρ j - M.rho P ρ l + 1 : ℝ) : ℂ) := by
      simp only [sq]; exact_mod_cast cr
    have hd := Formalism.FourierDecayAlt.P.Mx4.gap P hP l j hl hj hjl ρ ρl ρj h1 h2
    have hm : ((M.rho P ρ j - M.rho P ρ l - 1 : ℝ) : ℂ) ≠ 0 := by
      have : M.rho P ρ j - M.rho P ρ l - 1 ≠ 0 := by rcases hd with h | h <;> intro h0 <;> linarith
      exact_mod_cast this
    have hK : sq j ρl * sq l ρ * ((M.rho P ρ j - M.rho P ρ l - 1 : ℝ) : ℂ) ≠ 0 :=
      mul_ne_zero (mul_ne_zero (hsq0 j hj ρl ρlj h3) (hsq0 l hl ρ ρl h1)) hm
    apply mul_right_cancel₀ hK
    linear_combination f3 - w l ρj ρlj * w j ρ ρj * cr'
  obtain ⟨u, hu1, hu⟩ := phase_exists P w hw1 hcoc
  have huS : ∀ ρ, ContDiffOn ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) ((fun ρ (_ : ℂ) => u ρ) ρ) (Ann P) ∧
      ∀ ζ ∈ Ann P, ‖(fun ρ (_ : ℂ) => u ρ) ρ ζ‖ = 1 := fun ρ => ⟨contDiffOn_const, fun _ _ => hu1 ρ⟩
  have hsu : ∀ ρ, star (u ρ) * u ρ = 1 := fun ρ => star_mul_self_of_norm (hu1 ρ)
  have tr' : ∀ Φ ρ, trR P Bs (fun ρ ζ => u ρ • e ρ ζ) Φ ρ = star (u ρ) • trR P Bs e Φ ρ := by
    intro Φ ρ
    rw [trR_phase P Bs e (fun ρ _ => u ρ) huS Φ ρ]
    exact fnZ_const_mul P _ _
  have tr'' : ∀ Φ ρ, trR P Bs e Φ ρ = u ρ • trR P Bs (fun ρ ζ => u ρ • e ρ ζ) Φ ρ := by
    intro Φ ρ
    rw [tr', smul_smul, mul_comm, hsu, one_smul]
  refine ⟨fun ρ ζ => u ρ • e ρ ζ, isFrameB_phase P Bs e (fun ρ _ => u ρ) he huS,
    kapF_phase P Bs d e (fun ρ _ => u ρ) huS hk, ?_, ?_⟩
  · intro Φ
    constructor
    · funext ρ
      rw [tr', (hn Φ).1, actA_nabA, actA_nabA, tr']
      rw [dzQ_smul, mulQ_smul, mulQ_smul, smul_add, smul_comm (star (u ρ)) ((M.aC P ρ : ℝ) : ℂ)]
    · funext ρ
      rw [tr', (hn Φ).2, actA_nabsA, actA_nabsA, tr']
      rw [dzbQ_smul, mulQ_smul, mulQ_smul, smul_add, smul_neg, smul_comm (star (u ρ)) ((M.aC P ρ : ℝ) : ℂ)]
  · intro l hl Φ
    constructor
    · funext τ
      rw [tr', (hL l hl Φ τ).1]
      show _ = ∑ σ, ((MA.SS P (MA.DQ P) l) τ σ).1 (trR P Bs (fun ρ ζ => u ρ • e ρ ζ) Φ σ)
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun σ _ => ?_
      rw [ss_fst_apply, fnZ_const_mul, tr'' Φ σ, smul_smul, smul_smul]
      congr 1
      by_cases hU1 : M.Up P l σ τ
      · rw [if_pos hU1, hsw l hl σ τ hU1, hu l hl σ τ hU1, star_mul]
        have h1 := hsu σ
        have h2 : star (w l σ τ) * w l σ τ = 1 := star_mul_self_of_norm (hw1 l hl σ τ hU1)
        linear_combination (sq l σ * star (u σ) * u σ) * h2 + sq l σ * h1
      · rw [if_neg hU1, F1 l hl σ τ hU1]; ring
    · funext τ
      rw [tr', (hL l hl Φ τ).2]
      show _ = ∑ σ, ((star (MA.SS P (MA.DQ P) l)) τ σ).1 (trR P Bs (fun ρ ζ => u ρ • e ρ ζ) Φ σ)
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun σ _ => ?_
      rw [star_ss_fst_apply, fnZ_const_mul, tr'' Φ σ, smul_smul, smul_smul, hst l hl τ σ]
      congr 1
      by_cases hU1 : M.Up P l τ σ
      · rw [if_pos hU1, hsw l hl τ σ hU1, hu l hl τ σ hU1, star_mul]
        have h1 := hsu τ
        have h2 : star (w l τ σ) * w l τ σ = 1 := star_mul_self_of_norm (hw1 l hl τ σ hU1)
        have hr : star (sq l τ) = sq l τ := by simp [sq]
        rw [hr]
        linear_combination (sq l τ * star (u τ) * u τ) * h2 + sq l τ * h1
      · rw [if_neg hU1, F1 l hl τ σ hU1, star_zero]; ring

end

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC.SSPh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSPhase =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_GCore_GTSS =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_GCore_GTSS", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCLocalCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTCLRadT\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSAdj\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSConst\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSLocal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGCoreGTSSPhase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutMP.Gauge.GC

theorem gTSS_of_adj_radT : GTSSAdjPt → GTCLRadT → GTSS := fun hA hR =>
  gTSS_of_cut (gTSSLocal_of_radT hR) hA SSC.second_shift_constant SSPh.second_shift_phase_holds

theorem gTSS_of_adj : GTSSAdjPt → GTSS := fun hA => gTSS_of_adj_radT hA radial_torus_local_holds

theorem second_shift_gauge_holds : GTSS := gTSS_of_adj second_shift_adjoint_pointwise

end Formalism.FourierDecayAlt.P.CutMP.Gauge.GC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_GCore_GTSS =====
