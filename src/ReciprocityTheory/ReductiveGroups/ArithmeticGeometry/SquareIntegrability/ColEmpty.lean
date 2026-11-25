module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.GaussianTailBound
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.PropASt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SplitSt
public import Mathlib.Analysis.Real.Pi.Bounds
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelC
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelD
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ContinuousPointNormSqQuotient
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelB
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SecondProjectionOrthogonalComplement
public import Mathlib.Topology.Separation.CompletelyRegular
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.DifferentiableZeroModeLiftOf
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.LemmaNA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.TiledBoundaries.MemSpanBn
public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
public import Mathlib.Analysis.Complex.ExponentialBounds
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ContDiffOfDifferentiableFd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.DimStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.L2NormFundamentalDomain
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SplitA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbel, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusC, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusD, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusB, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorus, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.EpsilonLeHalf, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColEmpty

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbel =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbel", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.GaussianTailBound\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.PropASt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SplitSt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Real.Pi.Bounds\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelC\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelD\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ContDiffOfDifferentiableFd\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ContinuousPointNormSqQuotient\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelB\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

open NumberField Complex

noncomputable section

private theorem sum_inner_ob_smul_e {ι : Type} [Fintype ι]
    (K : Submodule ℝ (EuclideanSpace ℂ ι)) (a : EuclideanSpace ℂ ι)
    (ha : a ∈ K) : ∑ i, (inner ℝ ((Col.ob K) i) (⟨a, ha⟩ : K)) • (Col.e K i) = a := by
  have h := congrArg (fun w : K => (w : EuclideanSpace ℂ ι)) ((Col.ob K).sum_repr' ⟨a, ha⟩)
  simp only [Submodule.coe_sum, Submodule.coe_smul] at h
  exact h

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {X : PT E} {DF : ℕ} {P : Par X DF}
  {I : Submodule ℤ (Vsp X.dim)}

theorem cab_core (hP : Ext.PackingCount) (hGT : Ext.GaussianTailBound) (hA : PropAStatement)
    (hS : GSupStatement) (hI : IsSplit P I) (c : ℕ) (hc : c ≤ DF) (σ : E →+* ℂ)
    (ξ : Vsp X.dim) (hξ1 : ‖ξ‖ = 1) (hξI : ∀ a ∈ I, Hf ξ a = 0)
 :
    ∃ s' ∈ X.Sec P.q 1,
      (∀ xs : Fin c → Vsp X.dim, (∀ k, InPart σ (xs k) ∧ ‖xs k‖ = 1) →
        ‖d1 s' c xs - (c.factorial : ℂ) * ∏ k, Hf (xs k) ξ‖ ≤ P.eps1 * c.factorial) ∧
      P.K6⁻¹ * X.l2 P.q s' ≤ (c.factorial : ℝ) ^ 2 := by
  classical
  have hK := Col.hK_of hI
  set η := Col.wmap (IR I) ξ with hη
  have hη1 : ‖η‖ ≤ 1 := by rw [hη, cab_norm_wmap_xi hK hξI, hξ1]
  have hq2 : (2 : ℝ) ≤ P.q := cab_q_ge P
  have hq2n : 2 ≤ P.q := by exact_mod_cast hq2
  have hq0 : (0 : ℝ) < P.q := by linarith
  have hR0sq := P.hR0
  have hR0ne : P.R0 ≠ 0 := by intro h; rw [h] at hR0sq; norm_num at hR0sq
  have hR0pos : 0 < |P.R0| := abs_pos.mpr hR0ne
  have hlat : ∀ γ ∈ lat (Col.YB hI hP P.q).b, γ ≠ 0 →
      |P.R0| ≤ Real.sqrt (P.q * Real.pi) * ‖γ‖ := by
    intro γ hγ hne
    have hl : γ ∈ Col.GB X I := by rw [← Col.lat_bB hI hP]; exact hγ
    obtain ⟨x, hx, rfl⟩ := Col.mem_GB.1 hl
    have hx' : x ∈ X.L ∧ ∀ a ∈ I, (Hf x a).im = 0 := hx
    have hreal : ∀ a ∈ IR I, (Hf x a).im = 0 := by
      intro a ha
      induction ha using Submodule.span_induction with
      | mem y hy => exact hx'.2 y hy
      | zero => simp [Hf]
      | add y w _ _ hy hw =>
        have h1 : Hf x (y + w) = Hf x y + Hf x w := by
          simp only [Hf, ← Finset.sum_add_distrib]
          refine Finset.sum_congr rfl fun i _ => ?_
          simp [mul_add]
        rw [h1, Complex.add_im, hy, hw, add_zero]
      | smul r y _ hy =>
        have h1 : Hf x (r • y) = (r : ℂ) * Hf x y := by
          simp only [Hf, Finset.mul_sum]
          refine Finset.sum_congr rfl fun i _ => ?_
          simp [Complex.real_smul] <;> ring
        simp [h1, hy]
    have hz : ∀ k, (Col.z (IR I) k x).im = 0 := fun k => hreal _ (Col.ob (IR I) k).2
    have hp1 : Col.p1 (IR I) x ∈ IR I := by
      have hsum : Col.p1 (IR I) x = ∑ k, (Col.z (IR I) k x).re • Col.e (IR I) k := by
        simp only [Col.p1]
        refine Finset.sum_congr rfl fun k _ => ?_
        have hzk : Col.z (IR I) k x = ((Col.z (IR I) k x).re : ℂ) := by
          apply Complex.ext <;> simp [hz k]
        conv_lhs => rw [hzk]
        exact (RCLike.real_smul_eq_coe_smul (K := ℂ) _ _).symm
      rw [hsum]
      exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (Col.ob (IR I) k).2
    have hnorm : ‖Col.wmap (IR I) x‖ = ‖x - Col.p1 (IR I) x‖ := by
      first | rw [Col.norm_wmap (Col.hK_of hI)]
      rw [Col.p2]
    have hxI : x ∉ I := by
      intro hxI
      apply hne
      have hxK : x ∈ IR I := Submodule.subset_span hxI
      have hp : Col.p1 (IR I) x = x := by
        conv_rhs => rw [← sum_inner_ob_smul_e (IR I) x hxK]
        simp only [Col.p1]
        refine Finset.sum_congr rfl fun k _ => ?_
        have hzk : Col.z (IR I) k x =
            ((inner ℝ ((Col.ob (IR I)) k) (⟨x, hxK⟩ : IR I) : ℝ) : ℂ) := by
          apply Complex.ext
          · simp only [Complex.ofReal_re, Submodule.coe_inner]
            simp [Col.z, Col.e, Hf, real_inner_eq_re_inner, PiLp.inner_apply]
          · simpa using hz k
        rw [hzk, RCLike.real_smul_eq_coe_smul (K := ℂ)]
        all_goals rfl
      have h0 : ‖Col.wmap (IR I) x‖ = 0 := by rw [hnorm, hp, sub_self, norm_zero]
      exact norm_eq_zero.mp h0
    have ht := hI.thick x hx'.1 hx'.2 hxI
    have hth : |P.R0| ≤ Real.sqrt (P.q * Real.pi) * P.th := by
      have hf1 : (1 : ℝ) ≤ PT.f E := by
        have h2 : 1 ≤ PT.f E := le_trans (Nat.one_le_pow _ _ (by have := P.hm1; omega)) P.hmf
        exact_mod_cast h2
      have hRR : (1 : ℝ) ≤ RR (E := E) := by
        have := P.hrd
        show (1 : ℝ) ≤ PT.rd E ^ 7
        exact one_le_pow₀ (by linarith)
      have hRR3 : (1 : ℝ) ≤ RR (E := E) ^ 3 := one_le_pow₀ hRR
      have hpi : (1 : ℝ) ≤ Real.pi := by linarith [Real.pi_gt_three]
      have hc : 1 ≤ Real.pi * PT.f E * RR (E := E) ^ 3 :=
        one_le_mul_of_one_le_of_one_le (one_le_mul_of_one_le_of_one_le hpi hf1) hRR3
      rw [Par.th, th, ← Real.sqrt_mul (show (0 : ℝ) ≤ P.q * Real.pi by positivity), ← Real.sqrt_sq_eq_abs]
      apply Real.sqrt_le_sqrt
      have heq : (P.q : ℝ) * Real.pi * (PT.f E * P.R0 ^ 2 * RR (E := E) ^ 3 / P.q) =
          (Real.pi * PT.f E * RR (E := E) ^ 3) * P.R0 ^ 2 := by
        first | (field_simp; ring) | field_simp
      rw [heq]
      exact le_mul_of_one_le_left (sq_nonneg _) hc
    calc |P.R0| ≤ Real.sqrt (P.q * Real.pi) * P.th := hth
      _ ≤ Real.sqrt (P.q * Real.pi) * ‖Col.wmap (IR I) x‖ := by
        gcongr
        calc P.th ≤ Metric.infDist x (IR I) := ht
          _ ≤ dist x (Col.p1 (IR I) x) := Metric.infDist_le_dist_of_mem hp1
          _ = ‖Col.wmap (IR I) x‖ := by rw [dist_eq_norm, hnorm]
  have hGle : Col.gB (IR I) ≤ X.gA := cab_gB_le (IR I)
  have hGle' : (Col.gB (IR I) : ℝ) ≤ X.gA := by exact_mod_cast hGle
  have hcD : (c : ℝ) ≤ DF := by exact_mod_cast hc
  have h90 : 90 * ((Fintype.card (Fin (Col.gB (IR I))) : ℝ) + c) ≤ |P.R0| ^ 2 := by
    rw [sq_abs, Fintype.card_fin]; nlinarith [hR0sq.2]
  obtain ⟨β, hβ, hjet, hl2⟩ := hA (Fin (Col.gB (IR I))) (Col.YB hI hP P.q) P.q c |P.R0| P.hq (Col.YB_coc hI hP P.q) hR0pos hlat
    (by rw [sq_abs]; exact hR0sq.1) h90 (cabPoly η c) (cabPoly_deg η c)
  have hJ := cab_J_le η hη1 c P.q P.hq
  rw [Fintype.card_fin] at hJ
  have hl2' : (Col.YB hI hP P.q).l2 P.q β ≤ 6 * (c.factorial * (2 / (P.q * Real.pi)) ^ c * (2 / P.q) ^ Fintype.card (Fin (Col.gB (IR I)))) := by
    rw [Fintype.card_fin]; linarith
  have h90' : 90 * (Fintype.card (Fin (Col.gB (IR I))) : ℝ) ≤ |P.R0| ^ 2 := by
    have : (0 : ℝ) ≤ 90 * c := by positivity
    linarith
  set Bsq : ℝ := 12 * (5.12 : ℝ) ^ (Col.gB (IR I)) * c.factorial * (2 / (P.q * Real.pi)) ^ c with hBsq
  have hsup : ∀ t, (Col.YB hI hP P.q).ptN2 P.q β t ≤ Bsq := by
    intro t
    have := cab_sup hS (Col.YB hI hP P.q) P.q c hq2n |P.R0| hR0pos hlat h90' β hβ hl2' t
    rwa [Fintype.card_fin] at this
  have hBsq0 : 0 ≤ Bsq := by rw [hBsq]; positivity
  set B := Real.sqrt Bsq with hBdef
  have hB0 : 0 ≤ B := Real.sqrt_nonneg _
  have hBβ : ∀ t, ‖β t‖ ^ 2 * Real.exp (-(P.q * Real.pi) * ‖t‖ ^ 2) ≤ B ^ 2 := by
    intro t; rw [hBdef, Real.sq_sqrt hBsq0]; exact hsup t
  have hT2 : ∀ c' v, ‖Col.Tc X I P.q β c' v‖ ≤ B * Real.exp (P.q * Real.pi * ‖v‖ ^ 2 / 2) *
      Real.exp (-(P.q * Real.pi * ‖Col.uc (IR I) v - Col.uc (IR I) (cabOut c' : Vsp X.dim)‖ ^ 2)) := by
    intro c' v
    have := Col.norm_Tc_le hI hB0 hBβ c' v
    rw [Col.uQ_out] at this
    refine this.trans (le_of_eq ?_)
    rw [show cabOut c' = Quotient.out c' from rfl]; ring_nf
  set s' : (Fin 1 → Vsp X.dim) → ℂ := Col.colS X I P.q β with hs'
  have hs'mem : s' ∈ X.Sec P.q 1 := Col.colS_mem hI hP hGT hB0 hBβ hβ
  have hsPd : Differentiable ℂ (Col.sP X I P.q β) := by
    have h1 : Differentiable ℂ s' := hs'mem.1
    let D : Vsp X.dim →L[ℂ] (Fin 1 → Vsp X.dim) := ContinuousLinearMap.pi fun _ => ContinuousLinearMap.id ℂ _
    have : Col.sP X I P.q β = s' ∘ D := by funext v; rfl
    rw [this]; exact h1.comp D.differentiable
  refine ⟨s', hs'mem, ?_, ?_⟩
  · intro xs hxs
    set F0 := Col.F0 I P.q β with hF0
    set R : Vsp X.dim → ℂ := fun v => Col.sP X I P.q β v - F0 v with hR
    have hF0d : Differentiable ℂ F0 := differentiable_zeroModeLift I P.q β hβ.1
    have hRd : Differentiable ℂ R := hsPd.sub hF0d
    have hsplit : Col.sP X I P.q β = F0 + R := by funext v; simp [hR]
    have hd1 : d1 s' c xs = iteratedFDeriv ℂ c (Col.sP X I P.q β) 0 xs :=
      iteratedFDeriv_single_column (contDiff_of_differentiable_fd hsPd c) xs
    have hmain : iteratedFDeriv ℂ c F0 0 xs = (c.factorial : ℂ) * ∏ k, Hf (xs k) ξ :=
      cab_main hK σ hξI β hβ.1 hjet F0 hF0d (fun v hv => zeroModeLift_on_part hI P.q β σ v hv) xs
        (fun k => (hxs k).1)
    have hadd : iteratedFDeriv ℂ c (Col.sP X I P.q β) 0 xs =
        iteratedFDeriv ℂ c F0 0 xs + iteratedFDeriv ℂ c R 0 xs := by
      rw [hsplit, iteratedFDeriv_add_apply (contDiff_of_differentiable_fd hF0d c).contDiffAt
        (contDiff_of_differentiable_fd hRd c).contDiffAt]
      rfl
    rw [hd1, hadd, hmain, add_sub_cancel_left]
    obtain ⟨g', hg', hs, hle⟩ := cab_sum_nz hP hGT hI
    have hbd := cab_R hI hP hGT hβ B hB0 (Col.summable_Tc hI hP hGT hB0 hBβ) hT2
    have htd := cab_tail_deriv R hRd c xs (fun k => (hxs k).2.le) P.q hq0 B hB0 _ hs hbd
    refine htd.trans ?_
    have hstep : B * ((P.q : ℝ) * (c + 1)) ^ ((c : ℝ) / 2) * Real.exp (5 * Real.pi * c / 2) *
        ∑' a : cabNZ X I, Real.exp (-(Real.pi / 2 * P.q *
          ‖Col.uc (IR I) (cabOut (a : Col.Qc X I) : Vsp X.dim)‖ ^ 2)) ≤
        B * ((P.q : ℝ) * (c + 1)) ^ ((c : ℝ) / 2) * Real.exp (5 * Real.pi * c / 2) *
          (2 * 9 ^ g' * Real.exp (-(Real.pi / 2 * t0 (E := E) P.q P.R0))) := by
      gcongr
    refine hstep.trans ?_
    have hnum := cab_numeric c (Col.gB (IR I)) X.gA g' (dstar (E := E) P.m) P.q (t0 (E := E) P.q P.R0) hq2 hGle hg'
      (threshold_ge_log_bound P hc) (threshold_ge_rank_log_two P)
    refine hnum.trans (le_of_eq ?_)
    simp only [Par.eps1]
  · have h4 := Col.l2_colS_le_four_mul hI hP hGT hβ hB0 hBβ
    have hJ1 := cab_J_one P (G := Col.gB (IR I)) hc
    have hl2Y : (Col.YB hI hP P.q).l2 P.q β ≤ 6 := by
      have := hl2'; rw [Fintype.card_fin] at this; nlinarith
    have hK6 := twentyfour_le_constant P
    have hf1 : (1 : ℝ) ≤ (c.factorial : ℝ) ^ 2 := by
      have : (1 : ℝ) ≤ c.factorial := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (Nat.factorial_ne_zero c)
      nlinarith
    have hK6p : 0 < P.K6 := by linarith
    rw [inv_mul_le_iff₀ hK6p]
    have : P.K6 ≤ P.K6 * (c.factorial : ℝ) ^ 2 := le_mul_of_one_le_right hK6p.le hf1
    have : X.l2 P.q s' ≤ 4 * (Col.YB hI hP P.q).l2 P.q β := h4
    linarith

end

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbel =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusC =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusC", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SecondProjectionOrthogonalComplement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.PropASt\npublic import Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Dynamics.Ergodic.Action.Regular\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

open MeasureTheory Complex

noncomputable section

variable {ι : Type} [Fintype ι]

def ctU (q : ℕ) (b : EuclideanSpace ℂ ι) (F : EuclideanSpace ℂ ι → ℂ) : EuclideanSpace ℂ ι → ℂ :=
  fun t => cexp (q * Real.pi * Hf t b - q * Real.pi * Hf b b / 2) * F (t - b)

def ctY (Y : GT ι) (w : EuclideanSpace ℂ ι) : GT ι where
  b := Y.b
  integral := Y.integral
  perfect := Y.perfect
  ka := fun t => Y.ka t * cexp (2 * Real.pi * (Hf t w).im * I)
  ka_abs := by
    intro x hx
    rw [norm_mul, Y.ka_abs x hx, one_mul, Complex.norm_exp]
    simp

private theorem Hf_smul_right' (a b : EuclideanSpace ℂ ι) (c : ℂ) :
    Hf a (c • b) = (starRingEnd ℂ) c * Hf a b := by
  simp only [Hf, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  simp <;> ring

private theorem norm_sq_eq_re_Hf_self (v : EuclideanSpace ℂ ι) : ‖v‖ ^ 2 = (Hf v v).re := by
  rw [EuclideanSpace.norm_eq, Real.sq_sqrt (Finset.sum_nonneg fun i _ => sq_nonneg _)]
  simp only [Hf, Complex.re_sum, Complex.mul_conj, Complex.ofReal_re, Complex.normSq_eq_norm_sq]

private theorem Hf_neg_left' (a c : EuclideanSpace ℂ ι) : Hf (-a) c = -Hf a c := by
  simp [Hf, Finset.sum_neg_distrib]

private theorem Hf_neg_right' (a c : EuclideanSpace ℂ ι) : Hf a (-c) = -Hf a c := by
  simp [Hf, Finset.sum_neg_distrib]

private theorem Hf_real_smul_right (v w : EuclideanSpace ℂ ι) (r : ℝ) :
    Hf v (r • w) = (r : ℂ) * Hf v w := by
  simp only [Hf, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  simp <;> ring

theorem ctY_coc (Y : GT ι) (w : EuclideanSpace ℂ ι) (q : ℕ) (h : Y.Coc q) : (ctY Y w).Coc q := by
  intro γ hγ γ' hγ'
  show Y.ka (γ + γ') * cexp (2 * Real.pi * (Hf (γ + γ') w).im * I) =
    Y.ka γ * cexp (2 * Real.pi * (Hf γ w).im * I) * (Y.ka γ' * cexp (2 * Real.pi * (Hf γ' w).im * I)) *
      cexp (-(Real.pi * q * (Hf γ γ').im) * I)
  rw [h γ hγ γ' hγ', Col.Hf_add_l, Complex.add_im]
  have e : cexp (2 * Real.pi * (((Hf γ w).im + (Hf γ' w).im : ℝ) : ℂ) * I) =
      cexp (2 * Real.pi * (Hf γ w).im * I) * cexp (2 * Real.pi * (Hf γ' w).im * I) := by
    rw [← Complex.exp_add]; congr 1; push_cast; ring
  rw [e]; ring

theorem ctU_mem (Y : GT ι) (w : EuclideanSpace ℂ ι) {q : ℕ} (hq : 1 ≤ q) {F : EuclideanSpace ℂ ι → ℂ}
    (hF : F ∈ (ctY Y w).Sec q) : ctU q (-((1 / (q : ℂ)) • w)) F ∈ Y.Sec q := by
  obtain ⟨hFd, hFe⟩ := hF
  have hq0 : (q : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr (by omega)
  generalize hb : -((1 / (q : ℂ)) • w) = b
  change Differentiable ℂ (ctU q b F) ∧ ∀ γ ∈ lat Y.b, ∀ v, ctU q b F (v + γ) =
    Y.ka γ * cexp (q * Real.pi * Hf v γ + q * Real.pi * Hf γ γ / 2) * ctU q b F v
  refine ⟨?_, ?_⟩
  · have hd : Differentiable ℂ (fun t : EuclideanSpace ℂ ι => Hf t b) := by
      have hfun : (fun t : EuclideanSpace ℂ ι => Hf t b) = fun t => innerSL ℂ b t := by
        funext t
        simp [_root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_eq_inner]
      rw [hfun]
      exact (innerSL ℂ b).differentiable
    unfold ctU
    exact (((hd.const_mul _).sub_const _).cexp).mul (hFd.comp (differentiable_id.sub_const _))
  · intro γ hγ v
    have hγb : Hf γ b = -(1 / (q : ℂ)) * Hf γ w := by
      rw [← hb, Hf_neg_right', Hf_smul_right']
      simp
    have hbγ : Hf b γ = -(1 / (q : ℂ)) * (starRingEnd ℂ) (Hf γ w) := by
      rw [_root_.ReciprocityTheory.ChartRestriction.G.I2.Hf_conj γ b, hγb]
      simp
    have hsub : Hf γ w - (starRingEnd ℂ) (Hf γ w) = 2 * ((Hf γ w).im : ℂ) * I := by
      apply Complex.ext <;> simp <;> ring
    have hc : (q : ℂ) * (1 / (q : ℂ)) = 1 := mul_one_div_cancel hq0
    have key : cexp (q * Real.pi * Hf (v + γ) b - q * Real.pi * Hf b b / 2) *
        cexp (2 * Real.pi * (Hf γ w).im * I) *
        cexp (q * Real.pi * Hf (v - b) γ + q * Real.pi * Hf γ γ / 2) =
        cexp (q * Real.pi * Hf v γ + q * Real.pi * Hf γ γ / 2) *
        cexp (q * Real.pi * Hf v b - q * Real.pi * Hf b b / 2) := by
      simp only [← Complex.exp_add]
      congr 1
      rw [_root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_add_l, _root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_sub_l, hγb, hbγ]
      linear_combination (-(Real.pi : ℂ) * (Hf γ w - (starRingEnd ℂ) (Hf γ w))) * hc +
        (-(Real.pi : ℂ)) * hsub
    have hka : (ctY Y w).ka γ = Y.ka γ * cexp (2 * Real.pi * (Hf γ w).im * I) := rfl
    have hv : v + γ - b = (v - b) + γ := by abel
    simp only [ctU]
    rw [hv, hFe γ hγ (v - b), hka]
    linear_combination (Y.ka γ * F (v - b)) * key

theorem pointNormSq_translate (Y : GT ι) (q : ℕ) (b : EuclideanSpace ℂ ι) (F : EuclideanSpace ℂ ι → ℂ)
    (t : EuclideanSpace ℂ ι) : Y.ptN2 q (ctU q b F) t = Y.ptN2 q F (t - b) := by
  have e1 : ‖t - b‖ ^ 2 = ‖t‖ ^ 2 - 2 * (Hf t b).re + ‖b‖ ^ 2 := by
    rw [norm_sq_eq_re_Hf_self (t - b), norm_sq_eq_re_Hf_self t, norm_sq_eq_re_Hf_self b, _root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_sub_l, _root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_sub_r, _root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_sub_r,
      _root_.ReciprocityTheory.ChartRestriction.G.I2.Hf_conj t b]
    simp only [Complex.sub_re, Complex.conj_re]
    ring
  have hA : ((q : ℂ) * (Real.pi : ℂ) * Hf t b - (q : ℂ) * (Real.pi : ℂ) * Hf b b / 2) =
      ((q * Real.pi : ℝ) : ℂ) * Hf t b - ((q * Real.pi / 2 : ℝ) : ℂ) * Hf b b := by
    push_cast
    ring
  simp only [GT.ptN2, ctU]
  rw [hA, norm_mul, Complex.norm_exp, Complex.sub_re, Complex.re_ofReal_mul, Complex.re_ofReal_mul,
    ← norm_sq_eq_re_Hf_self b, e1]
  rw [mul_pow, mul_comm (Real.exp _ ^ 2), mul_assoc]
  congr 1
  rw [sq, ← Real.exp_add, ← Real.exp_add]
  congr 1
  ring

theorem pointNormSq_periodic (Y : GT ι) {q : ℕ} {F : EuclideanSpace ℂ ι → ℂ} (hF : F ∈ Y.Sec q)
    {γ : EuclideanSpace ℂ ι} (hγ : γ ∈ lat Y.b) (t : EuclideanSpace ℂ ι) :
    Y.ptN2 q F (t + γ) = Y.ptN2 q F t := by
  obtain ⟨_, hFe⟩ := hF
  have e1 : ‖t + γ‖ ^ 2 = ‖t‖ ^ 2 + 2 * (Hf t γ).re + ‖γ‖ ^ 2 := by
    rw [norm_sq_eq_re_Hf_self (t + γ), norm_sq_eq_re_Hf_self t, norm_sq_eq_re_Hf_self γ, _root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_add_l, _root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_add_r, _root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_add_r,
      _root_.ReciprocityTheory.ChartRestriction.G.I2.Hf_conj t γ]
    simp only [Complex.add_re, Complex.conj_re]
    ring
  have hA : ((q : ℂ) * (Real.pi : ℂ) * Hf t γ + (q : ℂ) * (Real.pi : ℂ) * Hf γ γ / 2) =
      ((q * Real.pi : ℝ) : ℂ) * Hf t γ + ((q * Real.pi / 2 : ℝ) : ℂ) * Hf γ γ := by
    push_cast
    ring
  simp only [GT.ptN2]
  rw [hFe γ hγ t, hA, norm_mul, norm_mul, Y.ka_abs γ hγ, one_mul, Complex.norm_exp, Complex.add_re,
    Complex.re_ofReal_mul, Complex.re_ofReal_mul, ← norm_sq_eq_re_Hf_self γ, e1]
  rw [mul_pow, mul_comm (Real.exp _ ^ 2), mul_assoc]
  congr 1
  rw [sq, ← Real.exp_add, ← Real.exp_add]
  congr 1
  ring

instance ctCnt (Y : GT ι) : Countable (Submodule.span ℤ (Set.range Y.b)).toAddSubgroup :=
  inferInstanceAs (Countable (Submodule.span ℤ (Set.range Y.b)))

theorem ct_avg_trans (Y : GT ι) (g : EuclideanSpace ℂ ι → ℝ)
    (hper : ∀ γ ∈ lat Y.b, ∀ v, g (v + γ) = g v) (a : EuclideanSpace ℂ ι) :
    (⨍ v in ZSpan.fundamentalDomain Y.b, g (v - a)) = ⨍ v in ZSpan.fundamentalDomain Y.b, g v := by
  have hD := ZSpan.isAddFundamentalDomain Y.b volume
  have hT : IsAddFundamentalDomain (Submodule.span ℤ (Set.range Y.b)).toAddSubgroup
      ((fun u => u + a) ⁻¹' ZSpan.fundamentalDomain Y.b) volume :=
    hD.preimage_of_equiv (measurePreserving_add_right volume a).quasiMeasurePreserving
      Function.bijective_id fun _ _ => add_assoc _ _ _
  have hg : ∀ (γ : (Submodule.span ℤ (Set.range Y.b)).toAddSubgroup) (x : EuclideanSpace ℂ ι),
      g (γ +ᵥ x) = g x := by
    rintro ⟨γ, hγ⟩ x
    have h := hper γ hγ x
    rw [add_comm] at h
    exact h
  simp only [MeasureTheory.setAverage_eq]
  congr 1
  have h1 := (measurePreserving_add_right volume a).setIntegral_preimage_emb
    (MeasurableEquiv.addRight a).measurableEmbedding (fun y => g (y - a)) (ZSpan.fundamentalDomain Y.b)
  simp only [add_sub_cancel_right] at h1
  rw [← h1]
  exact hT.setIntegral_eq hD hg

theorem l2_ctU_eq_l2_ctY (Y : GT ι) (w : EuclideanSpace ℂ ι) {q : ℕ} {F : EuclideanSpace ℂ ι → ℂ}
    (hF : F ∈ (ctY Y w).Sec q) :
    Y.l2 q (ctU q (-((1 / (q : ℂ)) • w)) F) = (ctY Y w).l2 q F := by
  have hper : ∀ γ ∈ lat Y.b, ∀ v, Y.ptN2 q F (v + γ) = Y.ptN2 q F v :=
    fun γ hγ v => pointNormSq_periodic (ctY Y w) hF hγ v
  simp only [GT.l2, pointNormSq_translate]
  exact ct_avg_trans Y _ hper _

end

end ReciprocityTheory.ChartRestriction.G.I2

namespace ReciprocityTheory.ChartRestriction.G.I2

open MeasureTheory Complex

noncomputable section

variable {ι : Type} [Fintype ι]

theorem ctU_cancel (q : ℕ) (b : EuclideanSpace ℂ ι) (F : EuclideanSpace ℂ ι → ℂ) :
    ctU q b (ctU q (-b) F) = F := by
  funext t
  have e : (q * Real.pi * Hf t b - q * Real.pi * Hf b b / 2 : ℂ) +
      (q * Real.pi * Hf (t - b) (-b) - q * Real.pi * Hf (-b) (-b) / 2) = 0 := by
    simp only [_root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_sub_l, Hf_neg_right', Hf_neg_left', neg_neg]
    ring
  simp only [ctU]
  rw [← mul_assoc, ← Complex.exp_add, e, Complex.exp_zero, one_mul, sub_neg_eq_add, sub_add_cancel]

variable {K : Submodule ℝ (EuclideanSpace ℂ ι)} (hK : ∀ a ∈ K, ∀ b ∈ K, (Hf a b).im = 0)
include hK

theorem ct_Hf_uc (v a : EuclideanSpace ℂ ι) :
    Hf v (Col.uc K a) = ∑ k, ((Col.z K k a).im : ℂ) * Col.z K k v := by
  simp only [Col.uc]
  rw [_root_.ReciprocityTheory.ChartRestriction.G.I2.Col.Hf_sum_r]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [Hf_real_smul_right]
  rfl

theorem translate_zeroModeLift_formula (q : ℕ) (β : EuclideanSpace ℂ (Fin (Col.gB K)) → ℂ) (a v : EuclideanSpace ℂ ι) :
    cexp (q * Real.pi * Hf v a - q * Real.pi * Hf a a / 2) *
        (cexp ((q * Real.pi / 2 : ℂ) * Col.S K (v - a)) * β (Col.wmap K (v - a))) =
      cexp ((q * Real.pi / 2 : ℂ) * Col.S K a - q * Real.pi * Hf a a / 2 +
          q * Real.pi * Hf (Col.wmap K a) (Col.wmap K a) / 2) *
        cexp (-(2 * Real.pi * q : ℂ) * I * Hf v (Col.uc K a)) *
        (cexp ((q * Real.pi / 2 : ℂ) * Col.S K v) * ctU q (Col.wmap K a) β (Col.wmap K v)) := by
  have hz : ∀ k, Col.z K k (v - a) = Col.z K k v - Col.z K k a := fun k => Col.Hf_sub_l _ _ _
  have hS : Col.S K (v - a) = ∑ k, (Col.z K k v - Col.z K k a) ^ 2 := by
    unfold Col.S; simp only [hz]
  have hk : ∀ k, (q : ℂ) * Real.pi * (Col.z K k v * (starRingEnd ℂ) (Col.z K k a)) +
      (q * Real.pi / 2 : ℂ) * (Col.z K k v - Col.z K k a) ^ 2 =
      (q * Real.pi / 2 : ℂ) * Col.z K k a ^ 2 + (q * Real.pi / 2 : ℂ) * Col.z K k v ^ 2 +
        (-(2 * Real.pi * q : ℂ) * I) * (((Col.z K k a).im : ℂ) * Col.z K k v) := by
    intro k
    have hc : (starRingEnd ℂ) (Col.z K k a) = Col.z K k a - 2 * ((Col.z K k a).im : ℂ) * I := by
      apply Complex.ext <;> simp <;> ring
    rw [hc]; ring_nf
  have hsum := Finset.sum_congr rfl (fun k (_ : k ∈ Finset.univ) => hk k)
  simp only [Finset.sum_add_distrib, ← Finset.mul_sum] at hsum
  have hdec := Col.Hf_decomp hK v a
  have hw : Col.wmap K (v - a) = Col.wmap K v - Col.wmap K a := map_sub _ _ _
  have hww := Col.Hf_wmap hK v a
  unfold ctU
  rw [hw, ct_Hf_uc hK]
  have E : (q : ℂ) * Real.pi * Hf v a - q * Real.pi * Hf a a / 2 +
      (q * Real.pi / 2 : ℂ) * Col.S K (v - a) =
      ((q * Real.pi / 2 : ℂ) * Col.S K a - q * Real.pi * Hf a a / 2 +
          q * Real.pi * Hf (Col.wmap K a) (Col.wmap K a) / 2) +
        -(2 * Real.pi * q : ℂ) * I * ∑ k, ((Col.z K k a).im : ℂ) * Col.z K k v +
        ((q * Real.pi / 2 : ℂ) * Col.S K v +
          ((q : ℂ) * Real.pi * Hf (Col.wmap K v) (Col.wmap K a) -
            q * Real.pi * Hf (Col.wmap K a) (Col.wmap K a) / 2)) := by
    rw [hS, hdec, hww]
    unfold Col.S
    linear_combination hsum
  calc _ = cexp ((q : ℂ) * Real.pi * Hf v a - q * Real.pi * Hf a a / 2 +
        (q * Real.pi / 2 : ℂ) * Col.S K (v - a)) * β (Col.wmap K v - Col.wmap K a) := by
        rw [Complex.exp_add]; ring
    _ = _ := by rw [E]; simp only [Complex.exp_add, Complex.exp_sub]; ring

end

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusC =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusD =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusD", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusC\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.DifferentiableZeroModeLiftOf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelC\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelD\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ContDiffOfDifferentiableFd\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.LemmaNA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.TiledBoundaries.MemSpanBn\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.DimStatement\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

open NumberField Complex MeasureTheory

noncomputable section

theorem ct_expo_vec {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] (w ua y : V)
    {q M1 r : ℝ} (hq : 0 < q) (hw : ‖w‖ ≤ r)
    (hc6 : |2 * inner ℝ (q • ua) y| ≤ M1 * ‖y‖ ^ 2) :
    Real.pi * q * ‖ua‖ ^ 2 - Real.pi * q * ‖w - (ua + y)‖ ^ 2 ≤
      2 * Real.pi * r * (q * ‖ua‖ + q * ‖y‖) - Real.pi * (q - M1) * ‖y‖ ^ 2 := by
  have e1 : ‖w - (ua + y)‖ ^ 2 = ‖w‖ ^ 2 - 2 * inner ℝ w ua - 2 * inner ℝ w y + ‖ua‖ ^ 2 +
      2 * inner ℝ ua y + ‖y‖ ^ 2 := by
    rw [@norm_sub_sq_real, @norm_add_sq_real, inner_add_right]
    ring
  have hua := norm_nonneg ua
  have hy := norm_nonneg y
  have hpq : 0 ≤ Real.pi * q := by positivity
  have t1 : Real.pi * q * inner ℝ w ua ≤ Real.pi * q * (r * ‖ua‖) :=
    mul_le_mul_of_nonneg_left ((real_inner_le_norm w ua).trans (mul_le_mul_of_nonneg_right hw hua)) hpq
  have t2 : Real.pi * q * inner ℝ w y ≤ Real.pi * q * (r * ‖y‖) :=
    mul_le_mul_of_nonneg_left ((real_inner_le_norm w y).trans (mul_le_mul_of_nonneg_right hw hy)) hpq
  have h3 : -(2 * inner ℝ (q • ua) y) ≤ M1 * ‖y‖ ^ 2 := (neg_le_abs _).trans hc6
  rw [real_inner_smul_left] at h3
  have t3 : Real.pi * (-(2 * (q * inner ℝ ua y))) ≤ Real.pi * (M1 * ‖y‖ ^ 2) :=
    mul_le_mul_of_nonneg_left h3 Real.pi_pos.le
  have t4 : 0 ≤ Real.pi * q * ‖w‖ ^ 2 := by positivity
  rw [e1]
  nlinarith [t1, t2, t3, t4]

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {X : PT E} {DF : ℕ} {P : Par X DF}
  {I : Submodule ℤ (Vsp X.dim)}

theorem ct_cabPoly_zero {ι : Type} [Fintype ι] : cabPoly (0 : EuclideanSpace ℂ ι) 0 = 1 := by
  simp [cabPoly]

theorem ct_beta (hA : PropAStatement) (hS : GSupStatement) (hI : IsSplit P I) (hP : Ext.PackingCount)
    (w : EuclideanSpace ℂ (Fin (Col.gB (IR I)))) (c : ℕ) (hc : c ≤ DF) :
    ∃ βt ∈ (ctY (Col.YB hI hP P.q) w).Sec P.q,
      βt 0 = 1 ∧ (∀ j, 1 ≤ j → j ≤ c → iteratedFDeriv ℂ j βt 0 = 0) ∧
      (ctY (Col.YB hI hP P.q) w).l2 P.q βt ≤ 6 ∧
      ∀ t, (ctY (Col.YB hI hP P.q) w).ptN2 P.q βt t ≤ 12 * (5.12 : ℝ) ^ Col.gB (IR I) := by
  classical
  have hq2 : (2 : ℝ) ≤ P.q := cab_q_ge P
  have hq2n : 2 ≤ P.q := by exact_mod_cast hq2
  have hR0sq := P.hR0
  have hR0ne : P.R0 ≠ 0 := by intro h; rw [h] at hR0sq; norm_num at hR0sq
  have hR0pos : 0 < |P.R0| := abs_pos.mpr hR0ne
  have hlat : ∀ γ ∈ lat (ctY (Col.YB hI hP P.q) w).b, γ ≠ 0 →
      |P.R0| ≤ Real.sqrt (P.q * Real.pi) * ‖γ‖ := cab_YB_abs hI hP P.q
  have hGle : Col.gB (IR I) ≤ X.gA := cab_gB_le (IR I)
  have hGle' : (Col.gB (IR I) : ℝ) ≤ X.gA := by exact_mod_cast hGle
  have hcD : (c : ℝ) ≤ DF := by exact_mod_cast hc
  have h90 : 90 * ((Fintype.card (Fin (Col.gB (IR I))) : ℝ) + c) ≤ |P.R0| ^ 2 := by
    rw [sq_abs, Fintype.card_fin]; nlinarith [hR0sq.2]
  obtain ⟨β, hβ, hjet, hl2⟩ := hA (Fin (Col.gB (IR I))) (ctY (Col.YB hI hP P.q) w) P.q c |P.R0| P.hq
    (ctY_coc _ _ _ (Col.YB_coc hI hP P.q)) hR0pos hlat
    (by rw [sq_abs]; exact hR0sq.1) h90 (cabPoly 0 0) (by rw [ct_cabPoly_zero]; simp)
  rw [ct_cabPoly_zero] at hjet hl2
  have hJ := cab_J_le (0 : EuclideanSpace ℂ (Fin (Col.gB (IR I)))) (by simp) 0 P.q P.hq
  rw [ct_cabPoly_zero, Fintype.card_fin] at hJ
  have hl2' : (ctY (Col.YB hI hP P.q) w).l2 P.q β ≤
      6 * ((Nat.factorial 0 : ℕ) * (2 / (P.q * Real.pi)) ^ 0 * (2 / P.q) ^ Fintype.card (Fin (Col.gB (IR I)))) := by
    rw [Fintype.card_fin]; simp only [Nat.factorial_zero, Nat.cast_one, pow_zero, one_mul] at hJ ⊢
    linarith
  have h90' : 90 * (Fintype.card (Fin (Col.gB (IR I))) : ℝ) ≤ |P.R0| ^ 2 := by
    have : (0 : ℝ) ≤ 90 * c := by positivity
    linarith
  have hβc : ContDiff ℂ (⊤ : ℕ∞) β := (cab_contDiff_top hβ.1).of_le (by exact_mod_cast le_top)
  obtain ⟨hb0, hbj⟩ := ct_jet_one_iter β hβc c hjet
  refine ⟨β, hβ, hb0, hbj, ?_, fun t => ?_⟩
  · refine hl2'.trans ?_
    simp only [Nat.factorial_zero, Nat.cast_one, pow_zero, one_mul, Fintype.card_fin]
    have : (2 / (P.q : ℝ)) ^ Col.gB (IR I) ≤ 1 :=
      pow_le_one₀ (by positivity) ((div_le_one (by linarith)).2 hq2)
    linarith
  · have := cab_sup hS (ctY (Col.YB hI hP P.q) w) P.q 0 hq2n |P.R0| hR0pos hlat h90' β hβ hl2' t
    simpa [Fintype.card_fin] using this

def ctA {dim : (E →+* ℂ) → ℕ} (x0 : Vsp dim) (q : ℕ) : Vsp dim := (1 / (q : ℂ)) • x0

def ctC {dim : (E →+* ℂ) → ℕ} (I : Submodule ℤ (Vsp dim)) (q : ℕ) (a : Vsp dim) : ℂ :=
  cexp ((q * Real.pi / 2 : ℂ) * Col.S (IR I) a - q * Real.pi * Hf a a / 2 +
    q * Real.pi * Hf (Col.wmap (IR I) a) (Col.wmap (IR I) a) / 2)

def ctS (X : PT E) (I : Submodule ℤ (Vsp X.dim)) (q : ℕ)
    (β : EuclideanSpace ℂ (Fin (Col.gB (IR I))) → ℂ) (a : Vsp X.dim) : (Fin 1 → Vsp X.dim) → ℂ :=
  (ctC I q a)⁻¹ • X.U q (fun _ => a) (Col.colS X I q β)

theorem ct_uc_A (x0 : Vsp X.dim) (q : ℕ) :
    Col.uc (IR I) (ctA x0 q) = (1 / (q : ℝ)) • Col.uc (IR I) x0 := by
  unfold Col.uc Col.z ctA
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [Col.Hf_smul_l, smul_smul]
  congr 1
  rw [show (1 / (q : ℂ)) = ((1 / (q : ℝ) : ℝ) : ℂ) by push_cast; ring, Complex.im_ofReal_mul]

theorem ct_norm_C (hI : IsSplit P I) (q : ℕ) (a : Vsp X.dim) :
    ‖ctC I q a‖ = Real.exp (-(q * Real.pi * ‖Col.uc (IR I) a‖ ^ 2)) := by
  have hK := Col.hK_of hI
  unfold ctC
  rw [Complex.norm_exp]
  congr 1
  have h1 := Col.norm_sq_decomp hK a
  have h2 := Col.norm_wmap hK a
  have h3 := Col.norm_uc_sq (IR I) a
  rw [_root_.ReciprocityTheory.ChartRestriction.G.I2.DimC.Hf_self a, _root_.ReciprocityTheory.ChartRestriction.G.I2.DimC.Hf_self (Col.wmap (IR I) a), h2, h3]
  have hS : (Col.S (IR I) a).re = ∑ k, ((Col.z (IR I) k a).re ^ 2 - (Col.z (IR I) k a).im ^ 2) := by
    unfold Col.S; rw [Complex.re_sum]; refine Finset.sum_congr rfl fun k _ => ?_
    rw [sq, Complex.mul_re]; ring
  have hn : ∀ k, ‖Col.z (IR I) k a‖ ^ 2 = (Col.z (IR I) k a).re ^ 2 + (Col.z (IR I) k a).im ^ 2 := by
    intro k; rw [Complex.sq_norm, Complex.normSq_apply]; ring
  simp only [Complex.add_re, Complex.sub_re, Complex.mul_re, Complex.div_re, Complex.ofReal_re,
    Complex.ofReal_im, Complex.natCast_re, Complex.natCast_im]
  rw [hS, h1]
  simp only [hn, Finset.sum_add_distrib, Finset.sum_sub_distrib]
  norm_num
  ring

theorem l2_U_eq_l2 {q : ℕ} {F : (Fin 1 → Vsp X.dim) → ℂ} (hF : F ∈ X.Sec q 1) (a : Fin 1 → Vsp X.dim) :
    X.l2 q (X.U q a F) = X.l2 q F := by
  unfold PT.l2
  simp_rw [pointwiseNormSq_translate X]
  have hc : Continuous (fun v => X.ptN2 q F v) := by
    have := hF.1.continuous
    unfold PT.ptN2 HC Hf
    fun_prop
  exact TiledBoundaries.stepT E X 1 ℝ (fun v => X.ptN2 q F v) hc (fun γ hγ v => pointwiseNormSq_add_period X hF hγ v) a

theorem ct_fun (q : ℕ) (β : EuclideanSpace ℂ (Fin (Col.gB (IR I))) → ℂ) (a : Vsp X.dim) :
    ctS X I q β a = fun w => (ctC I q a)⁻¹ *
      (cexp (q * Real.pi * Hf (w 0) a - q * Real.pi * Hf a a / 2) * Col.sP X I q β (w 0 - a)) := by
  funext w
  simp [ctS, PT.U, HC, Col.colS]

theorem ct_main (hI : IsSplit P I) (σ : E →+* ℂ) (q c : ℕ)
    (βt : EuclideanSpace ℂ (Fin (Col.gB (IR I))) → ℂ) (hβt : Differentiable ℂ βt) (hb0 : βt 0 = 1)
    (hbj : ∀ j, 1 ≤ j → j ≤ c → iteratedFDeriv ℂ j βt 0 = 0) (ua : Vsp X.dim)
    (xs : Fin c → Vsp X.dim) (hxs : ∀ k, InPart σ (xs k)) :
    iteratedFDeriv ℂ c (fun v => cexp (-(2 * Real.pi * q : ℂ) * Complex.I * Hf v ua) * Col.F0 I q βt v) 0 xs =
      ∏ k, (-(2 * Real.pi * q : ℂ) * Complex.I * Hf (xs k) ua) := by
  set c0 : ℂ := -(2 * Real.pi * q : ℂ) * Complex.I with hc0
  set ℓL : Vsp X.dim →L[ℂ] ℂ := c0 • innerSL ℂ ua with hℓ
  have hℓv : ∀ v, ℓL v = c0 * Hf v ua := by
    intro v; rw [hℓ, ContinuousLinearMap.smul_apply, innerSL_apply_apply, Col.Hf_eq_inner, smul_eq_mul]
  have hf1 : (fun v => cexp (c0 * Hf v ua) * Col.F0 I q βt v) =
      fun v => cexp (ℓL v) * Col.F0 I q βt v := by funext v; rw [hℓv]
  rw [hf1]
  set W := Col.wmap (IR I) with hW
  have hexpc : ContDiff ℂ (⊤ : ℕ∞) (fun v => cexp (ℓL v)) := ℓL.contDiff.cexp
  have hgc : ContDiff ℂ (⊤ : ℕ∞) (fun v => βt (W v)) :=
    (cab_contDiff_top (hβt.comp W.differentiable)).of_le (by exact_mod_cast le_top)
  have hF0c : ContDiff ℂ (⊤ : ℕ∞) (Col.F0 I q βt) :=
    (cab_contDiff_top (differentiable_zeroModeLift I q βt hβt)).of_le (by exact_mod_cast le_top)
  have hle : ((c : ℕ) : WithTop ℕ∞) ≤ ((⊤ : ℕ∞) : WithTop ℕ∞) := by exact_mod_cast le_top
  have hr := cab_restrict (cabVP σ) (c := c) (f := fun v => cexp (ℓL v) * Col.F0 I q βt v)
    (g := fun v => cexp (ℓL v) * βt (W v)) ((hexpc.mul hF0c).of_le hle) ((hexpc.mul hgc).of_le hle)
    (fun v hv => by simp only [zeroModeLift_on_part hI q βt σ v hv, hW]) xs hxs
  rw [hr]
  have hj : ∀ j, 1 ≤ j → j ≤ c → iteratedFDeriv ℂ j (fun v => βt (W v)) 0 = 0 := by
    intro j hj1 hjc
    have hβj : ContDiff ℂ j βt := contDiff_of_differentiable_fd hβt j
    have := W.iteratedFDeriv_comp_right hβj (0 : Vsp X.dim) le_rfl
    show iteratedFDeriv ℂ j (βt ∘ W) 0 = 0
    rw [this, map_zero, hbj j hj1 hjc]
    ext x; simp
  have hm := ct_iter_mul_jet_one (fun v => cexp (ℓL v)) (fun v => βt (W v)) hexpc hgc c
    (by simp [hb0]) hj
  rw [hm, ct_iter_cexp_apply]
  have h0 : Hf (0 : Vsp X.dim) ua = 0 := by simp [Hf]
  simp [hℓv, h0]

end

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusD =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusB =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusB", "h": "module\n\npublic import Mathlib.Analysis.SpecialFunctions.Log.Basic\npublic import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\npublic import Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Real.Pi.Bounds\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

open Real

theorem ct_expo_num (q c : ℕ) (hq : 1 ≤ q) {U y M1 r : ℝ} (hU : 0 ≤ U) (hy : 0 ≤ y)
    (hM : M1 ≤ q / 2) (hr0 : 0 ≤ r) (hr : r * (2 * π * U + 5 * Real.sqrt (q * (c + 1))) ≤ c)
    (ht : 28 * (c : ℝ) ≤ q * y ^ 2) :
    q * π * r ^ 2 / 2 + 2 * π * r * (U + q * y) - π * (q - M1) * y ^ 2 ≤
      1.07 * c - 1.33 * (q * y ^ 2) := by
  have hπ1 : (3.14 : ℝ) < π := Real.pi_gt_d2
  have hπ2 : π < 3.15 := Real.pi_lt_d2
  have hS0 : 0 ≤ Real.sqrt (q * (c + 1)) := Real.sqrt_nonneg _
  have hS2 : Real.sqrt (q * (c + 1)) ^ 2 = q * (c + 1) := Real.sq_sqrt (by positivity)
  have hA : 0 ≤ 2 * π * r * U := by positivity
  have h1 : 2 * π * r * U + 5 * (r * Real.sqrt (q * (c + 1))) ≤ c := by
    linarith
  have ha0 : 0 ≤ r * Real.sqrt (q * (c + 1)) := mul_nonneg hr0 hS0
  have ha : r * Real.sqrt (q * (c + 1)) ≤ c / 5 := by linarith
  have hX : (q * r ^ 2) * (c + 1) = (r * Real.sqrt (q * (c + 1))) ^ 2 := by
    rw [mul_pow, hS2]; ring
  have hX0 : 0 ≤ q * r ^ 2 := by positivity
  have hXa : q * r ^ 2 ≤ (r * Real.sqrt (q * (c + 1))) / 5 := by
    have h2 : (q * r ^ 2) * (c + 1) ≤ (r * Real.sqrt (q * (c + 1))) / 5 * (c + 1) := by
      rw [hX]; nlinarith
    exact le_of_mul_le_mul_right h2 (by positivity)
  have ht0 : 0 ≤ q * y ^ 2 := by positivity
  have hP : 2 * (r * q * y) ≤ 20 * (q * r ^ 2) + (q * y ^ 2) / 20 := by
    nlinarith [sq_nonneg (20 * (q * r ^ 2) - (q * y ^ 2) / 20)]
  have F1 : π * (q * r ^ 2) ≤ 3.15 * (q * r ^ 2) := mul_le_mul_of_nonneg_right hπ2.le hX0
  have F2 : π * (2 * (r * q * y)) ≤ π * (20 * (q * r ^ 2) + (q * y ^ 2) / 20) :=
    mul_le_mul_of_nonneg_left hP Real.pi_pos.le
  have F3 : π * (q * y ^ 2) ≤ 3.15 * (q * y ^ 2) := mul_le_mul_of_nonneg_right hπ2.le ht0
  have F3' : 3.14 * (q * y ^ 2) ≤ π * (q * y ^ 2) := mul_le_mul_of_nonneg_right hπ1.le ht0
  have F4 : π * (q / 2) * y ^ 2 ≤ π * (q - M1) * y ^ 2 := by
    have : (q : ℝ) / 2 ≤ q - M1 := by linarith
    have := mul_le_mul_of_nonneg_left this Real.pi_pos.le
    nlinarith
  linarith [F1, F2, F3, F3', F4, h1, hXa, ha, ht, hA]

theorem ct_base_num (q c : ℕ) (hq : 1 ≤ q) {t0 : ℝ}
    (hC5 : 4 * (c : ℝ) * (7 + Real.log (q * c)) ≤ t0) :
    (6.5 * Real.exp 1.07 * Real.sqrt (q * (c + 1))) ^ c ≤ Real.exp (0.14 * t0) := by
  have hc0 : (0 : ℝ) ≤ c := Nat.cast_nonneg c
  rcases Nat.eq_zero_or_pos c with hc | hc
  · subst hc
    simp only [Nat.cast_zero, zero_add, pow_zero] at hC5 ⊢
    exact Real.one_le_exp (by linarith)
  have hq1 : (1 : ℝ) ≤ q := by exact_mod_cast hq
  have hc1 : (1 : ℝ) ≤ c := by exact_mod_cast hc
  have hqc1 : (1 : ℝ) ≤ q * c := by nlinarith
  have hL0 : 0 ≤ Real.log (q * c) := Real.log_nonneg hqc1
  have hS : 0 < Real.sqrt (q * (c + 1)) := Real.sqrt_pos.mpr (by positivity)
  have hB : 0 < 6.5 * Real.exp 1.07 * Real.sqrt (q * (c + 1)) := by positivity
  have hlogB : Real.log (6.5 * Real.exp 1.07 * Real.sqrt (q * (c + 1))) =
      Real.log 6.5 + 1.07 + Real.log (q * (c + 1)) / 2 := by
    rw [Real.log_mul (by positivity) hS.ne', Real.log_mul (by norm_num) (Real.exp_pos _).ne',
      Real.log_exp, Real.log_sqrt (by positivity)]
  have h65 : Real.log 6.5 ≤ 3 * Real.log 2 := by
    have e : Real.log 8 = 3 * Real.log 2 := by
      rw [show (8 : ℝ) = 2 ^ 3 by norm_num, Real.log_pow]; norm_num
    rw [← e]
    exact Real.log_le_log (by norm_num) (by norm_num)
  have h2 := Real.log_two_lt_d9
  have hqc : Real.log (q * (c + 1)) ≤ Real.log 2 + Real.log (q * c) := by
    rw [← Real.log_mul (by norm_num) (by positivity)]
    exact Real.log_le_log (by positivity) (by nlinarith)
  have key : Real.log (6.5 * Real.exp 1.07 * Real.sqrt (q * (c + 1))) ≤
      0.56 * (7 + Real.log (q * c)) := by
    rw [hlogB]; linarith
  rw [← Real.exp_log hB, ← Real.exp_nat_mul]
  apply Real.exp_le_exp.mpr
  have := mul_le_mul_of_nonneg_left key hc0
  linarith

theorem ct_B_num (gA gB dK dst : ℕ) {t0 Bsq : ℝ} (hBsq0 : 0 ≤ Bsq) (hBsq : Bsq ≤ 12 * (5.12 : ℝ) ^ gB)
    (hgB : gB ≤ gA) (hdK : dK ≤ dst) (hC6 : (gA : ℝ) * Real.log 2 ≤ t0) :
    Real.sqrt Bsq * (2 * 3 ^ dK) * Real.exp (-(0.19 * t0)) ≤ 7 * 2 ^ gA * (4.3 : ℝ) ^ dst := by
  have hsq : Real.sqrt Bsq ≤ 3.4642 * 2.263 ^ gA := by
    have hm : 12 * (5.12 : ℝ) ^ gB ≤ (3.4642 * 2.263 ^ gA) ^ 2 := by
      rw [mul_pow, ← pow_mul, mul_comm gA 2, pow_mul]
      apply mul_le_mul (by norm_num) _ (by positivity) (by norm_num)
      calc (5.12 : ℝ) ^ gB ≤ (2.263 ^ 2) ^ gB := pow_le_pow_left₀ (by norm_num) (by norm_num) gB
        _ ≤ (2.263 ^ 2) ^ gA := pow_le_pow_right₀ (by norm_num) hgB
    calc Real.sqrt Bsq ≤ Real.sqrt ((3.4642 * 2.263 ^ gA) ^ 2) := Real.sqrt_le_sqrt (hBsq.trans hm)
      _ = 3.4642 * 2.263 ^ gA := Real.sqrt_sq (by positivity)
  have h3 : (2.263 : ℝ) ^ gA * Real.exp (-(0.19 * t0)) ≤ 2 ^ gA := by
    have hl : Real.log 2.263 * 100 ≤ Real.log 2 * 119 := by
      have h := Real.log_le_log (by positivity) (show (2.263 : ℝ) ^ 100 ≤ 2 ^ 119 by norm_num)
      rw [Real.log_pow, Real.log_pow] at h
      push_cast at h
      linarith
    have hg0 : (0 : ℝ) ≤ gA := Nat.cast_nonneg gA
    have hm := mul_le_mul_of_nonneg_left hl hg0
    rw [← Real.exp_log (show (0 : ℝ) < 2.263 by norm_num), ← Real.exp_nat_mul,
      ← Real.exp_log (show (0 : ℝ) < 2 by norm_num), ← Real.exp_nat_mul, ← Real.exp_add]
    apply Real.exp_le_exp.mpr
    linarith
  have h4 : (3 : ℝ) ^ dK ≤ 4.3 ^ dst :=
    (pow_le_pow_left₀ (by norm_num) (by norm_num) dK).trans (pow_le_pow_right₀ (by norm_num) hdK)
  calc Real.sqrt Bsq * (2 * 3 ^ dK) * Real.exp (-(0.19 * t0))
      ≤ (3.4642 * 2.263 ^ gA) * (2 * 4.3 ^ dst) * Real.exp (-(0.19 * t0)) := by gcongr
    _ = 6.9284 * ((2.263 : ℝ) ^ gA * Real.exp (-(0.19 * t0))) * 4.3 ^ dst := by ring
    _ ≤ 6.9284 * 2 ^ gA * 4.3 ^ dst := by gcongr
    _ ≤ 7 * 2 ^ gA * (4.3 : ℝ) ^ dst := by gcongr; norm_num

theorem jet_product_le (q c dK gA dst : ℕ) (hq : 1 ≤ q) {n U t0 Bsq : ℝ} (hn : 1 ≤ n) (hU0 : 0 ≤ U)
    (hU : 2 * π * U ≤ 1.5 * n) (hC5 : 4 * (c : ℝ) * (7 + Real.log (q * c)) ≤ t0)
    (hB : Real.sqrt Bsq * (2 * 3 ^ dK) * Real.exp (-(0.19 * t0)) ≤ 7 * 2 ^ gA * (4.3 : ℝ) ^ dst) :
    (2 * π * U + 5 * Real.sqrt (q * (c + 1))) ^ c *
        (Real.sqrt Bsq * Real.exp (1.07 * c) * (2 * 3 ^ dK * Real.exp (-(1.33 * t0)))) ≤
      7 * 2 ^ gA * (4.3 : ℝ) ^ dst * Real.exp (-t0) * n ^ c := by
  have hq1 : (1 : ℝ) ≤ q := by exact_mod_cast hq
  have hS1 : 1 ≤ Real.sqrt (q * (c + 1)) := Real.one_le_sqrt.mpr (by nlinarith)
  have hbase : 2 * π * U + 5 * Real.sqrt (q * (c + 1)) ≤ 6.5 * Real.sqrt (q * (c + 1)) * n := by
    nlinarith
  have hpow : (2 * π * U + 5 * Real.sqrt (q * (c + 1))) ^ c ≤
      (6.5 * Real.exp 1.07 * Real.sqrt (q * (c + 1))) ^ c * Real.exp (-(1.07 * c)) * n ^ c := by
    have e : (6.5 * Real.exp 1.07 * Real.sqrt (q * (c + 1))) ^ c * Real.exp (-(1.07 * c)) =
        (6.5 * Real.sqrt (q * (c + 1))) ^ c := by
      rw [mul_comm (6.5 : ℝ) (Real.exp 1.07), mul_assoc, mul_pow, ← Real.exp_nat_mul, mul_comm,
        ← mul_assoc, ← Real.exp_add]
      ring_nf
      simp
    rw [e, ← mul_pow]
    exact pow_le_pow_left₀ (by positivity) hbase c
  have hbn := ct_base_num q c hq hC5
  calc (2 * π * U + 5 * Real.sqrt (q * (c + 1))) ^ c *
        (Real.sqrt Bsq * Real.exp (1.07 * c) * (2 * 3 ^ dK * Real.exp (-(1.33 * t0))))
      ≤ (6.5 * Real.exp 1.07 * Real.sqrt (q * (c + 1))) ^ c * Real.exp (-(1.07 * c)) * n ^ c *
        (Real.sqrt Bsq * Real.exp (1.07 * c) * (2 * 3 ^ dK * Real.exp (-(1.33 * t0)))) := by
        gcongr
    _ = (6.5 * Real.exp 1.07 * Real.sqrt (q * (c + 1))) ^ c * n ^ c *
        (Real.sqrt Bsq * (2 * 3 ^ dK)) * Real.exp (-(1.33 * t0)) := by
        have : Real.exp (-(1.07 * c)) * Real.exp (1.07 * c) = 1 := by
          rw [← Real.exp_add]; simp
        linear_combination ((6.5 * Real.exp 1.07 * Real.sqrt (q * (c + 1))) ^ c * n ^ c *
          (Real.sqrt Bsq * (2 * 3 ^ dK)) * Real.exp (-(1.33 * t0))) * this
    _ ≤ Real.exp (0.14 * t0) * n ^ c * (Real.sqrt Bsq * (2 * 3 ^ dK)) * Real.exp (-(1.33 * t0)) := by
        gcongr
    _ = (Real.sqrt Bsq * (2 * 3 ^ dK) * Real.exp (-(0.19 * t0))) * Real.exp (-t0) * n ^ c := by
        have : Real.exp (0.14 * t0) * Real.exp (-(1.33 * t0)) =
            Real.exp (-(0.19 * t0)) * Real.exp (-t0) := by
          rw [← Real.exp_add, ← Real.exp_add]; ring_nf
        linear_combination (n ^ c * (Real.sqrt Bsq * (2 * 3 ^ dK))) * this
    _ ≤ 7 * 2 ^ gA * (4.3 : ℝ) ^ dst * Real.exp (-t0) * n ^ c := by gcongr

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusB =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorus =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorus", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelC\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbelD\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorusB\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ContDiffOfDifferentiableFd\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ContinuousPointNormSqQuotient\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.L2NormFundamentalDomain\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.LemmaNA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SplitA\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.DimStatement\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

open NumberField MeasureTheory

noncomputable section

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {X : PT E} {DF : ℕ} {P : Par X DF}
  {I : Submodule ℤ (Vsp X.dim)}

theorem ct_28 (P : Par X DF) {c : ℕ} (hc : c ≤ DF) : 28 * (c : ℝ) ≤ t0 (E := E) P.q P.R0 := by
  have h5 := P.C5
  have hq : (1 : ℝ) ≤ P.q := by exact_mod_cast P.hq
  have hDF : (1 : ℝ) ≤ DF := by exact_mod_cast P.hDF
  have hlog : 0 ≤ Real.log ((P.q : ℝ) * DF) := Real.log_nonneg (by nlinarith)
  have hcDF : (c : ℝ) ≤ DF := by exact_mod_cast hc
  have hd : (0:ℝ) ≤ dstar (E := E) P.m := Nat.cast_nonneg _
  have hm : 0 ≤ 4 * (DF : ℝ) * Real.log ((P.q : ℝ) * DF) := mul_nonneg (by linarith) hlog
  nlinarith

theorem ct_tail (hI : IsSplit P I) (hP : Ext.PackingCount) (hGT : Ext.GaussianTailBound)
    {β : EuclideanSpace ℂ (Fin (Col.gB (IR I))) → ℂ} (hβ : β ∈ (Col.YB hI hP P.q).Sec P.q)
    {B : ℝ} (hB0 : 0 ≤ B) (hBβ : ∀ t, ‖β t‖ ^ 2 * Real.exp (-(P.q * Real.pi) * ‖t‖ ^ 2) ≤ B ^ 2)
    (c : ℕ) (hc : c ≤ DF) (x0 u : Vsp X.dim) (hu : u = Col.uc (IR I) x0)
    (hc6 : ∀ y ∈ X.L, ∀ uy, IsU I y uy → |2 * inner ℝ u uy| ≤ M1 (E := E) P.m * ‖uy‖ ^ 2)
    (r : ℝ) (hr0 : 0 ≤ r) (hr : r * (2 * Real.pi * ‖u‖ + 5 * Real.sqrt (P.q * (c + 1))) ≤ c)
    (v : Vsp X.dim) (hv : ‖v‖ ≤ r) :
    ‖(ctC I P.q (ctA x0 P.q))⁻¹ * (Complex.exp (P.q * Real.pi * Hf v (ctA x0 P.q) -
        P.q * Real.pi * Hf (ctA x0 P.q) (ctA x0 P.q) / 2) *
        (Col.sP X I P.q β (v - ctA x0 P.q) - Col.F0 I P.q β (v - ctA x0 P.q)))‖ ≤
      B * Real.exp (1.07 * c) * (2 * 3 ^ Col.dK (IR I) * Real.exp (-(1.33 * t0 (E := E) P.q P.R0))) := by
  set a := ctA x0 P.q with ha
  set q := P.q with hqdef
  have hq0 : (0 : ℝ) < q := by exact_mod_cast P.hq
  have hq0' : (q : ℂ) ≠ 0 := by exact_mod_cast (by have := P.hq; omega : q ≠ 0)
  set K := (ctC I q a)⁻¹ * Complex.exp (q * Real.pi * Hf v a - q * Real.pi * Hf a a / 2) with hK

  have hsum := Col.summable_Tc hI hP hGT hB0 hBβ (v - a)
  have hsplit := hsum.sum_add_tsum_compl (s := ({0} : Finset (Col.Qc X I)))
  rw [Finset.sum_singleton, translate_zero_zeroModeLift hI hP q hβ] at hsplit
  have hR : Col.sP X I q β (v - a) - Col.F0 I q β (v - a) =
      ∑' x : ((({0} : Finset (Col.Qc X I)) : Set (Col.Qc X I))ᶜ : Set _), Col.Tc X I q β x (v - a) := by
    rw [Col.sP, ← hsplit]; ring
  rw [show (ctC I q a)⁻¹ * (Complex.exp (q * Real.pi * Hf v a - q * Real.pi * Hf a a / 2) *
      (Col.sP X I q β (v - a) - Col.F0 I q β (v - a))) = K * (Col.sP X I q β (v - a) -
        Col.F0 I q β (v - a)) by rw [hK]; ring, hR, ← tsum_mul_left]

  obtain ⟨hgs, hgb⟩ := Col.tailQ hI hP hGT 1.33 (by norm_num) (Col.cond_tail hI 1.33 (by norm_num))
  set g : ((({0} : Finset (Col.Qc X I)) : Set (Col.Qc X I))ᶜ : Set _) → ℝ :=
    fun x => Real.exp (-(1.33 * q) * ‖Col.uQ X I x‖ ^ 2) with hg
  have hgs' : Summable g := hgs
  have hpt : ∀ x : ((({0} : Finset (Col.Qc X I)) : Set (Col.Qc X I))ᶜ : Set _),
      ‖K * Col.Tc X I q β x (v - a)‖ ≤ B * Real.exp (1.07 * c) * g x := by
    intro x
    have hx0 : (x : Col.Qc X I) ≠ 0 := by
      have := x.2; simpa using this
    have hT := Col.norm_Tc_le hI hB0 hBβ (x : Col.Qc X I) (v - a)
    set ua := Col.uc (IR I) a with hua
    set y := Col.uQ X I (x : Col.Qc X I) with hy
    set w := Col.uc (IR I) v with hw
    have hKn : ‖K‖ = Real.exp (q * Real.pi * ‖ua‖ ^ 2) *
        Real.exp (q * Real.pi * (Hf v a).re - q * Real.pi * ‖a‖ ^ 2 / 2) := by
      rw [hK, norm_mul, norm_inv, ct_norm_C hI, Complex.norm_exp, Real.exp_neg, inv_inv]
      congr 2
      rw [_root_.ReciprocityTheory.ChartRestriction.G.I2.DimC.Hf_self a]
      simp [Complex.mul_re, Complex.sub_re]
      left; norm_cast
    have hn : ‖v - a‖ ^ 2 = ‖v‖ ^ 2 - 2 * (Hf v a).re + ‖a‖ ^ 2 := by
      rw [← Col.Hf_self_re, ← Col.Hf_self_re, ← Col.Hf_self_re, Col.Hf_sub_l, Col.Hf_sub_r,
        Col.Hf_sub_r, Col.Hf_swap v a]
      simp; ring
    have huc : Col.uc (IR I) (v - a) = w - ua := Col.uc_sub (I := I) v a
    rw [huc] at hT

    have hua' : (q : ℝ) • ua = u := by
      rw [hua, ha, ct_uc_A, smul_smul, mul_one_div_cancel hq0.ne', one_smul, hu]
    have hnua : (q : ℝ) * ‖ua‖ = ‖u‖ := by
      rw [← hua', norm_smul, Real.norm_eq_abs, abs_of_pos hq0]
    have hc6' : |2 * inner ℝ ((q : ℝ) • ua) y| ≤ M1 (E := E) P.m * ‖y‖ ^ 2 := by
      rw [hua']
      refine hc6 _ (Quotient.out (x : Col.Qc X I) : X.L).2 y ?_
      rw [hy, Col.uQ_out]; exact Col.isU_uc _
    have hwr : ‖w‖ ≤ r := (Col.norm_uc_le hI.iso v).trans hv
    have hv1 := ct_expo_vec w ua y hq0 hwr hc6'
    have hsep := Col.uQ_sep hI hx0
    have h28 := ct_28 P hc
    have ht : 28 * (c : ℝ) ≤ q * ‖y‖ ^ 2 := by
      have : t0 (E := E) P.q P.R0 = q * b0 (E := E) P.q P.R0 := rfl
      nlinarith
    have hv2 := ct_expo_num q c P.hq (U := ‖u‖) (y := ‖y‖) (norm_nonneg _) (norm_nonneg _) P.C3 hr0 hr ht
    have hvv : q * Real.pi * ‖v‖ ^ 2 / 2 ≤ q * Real.pi * r ^ 2 / 2 := by
      have : ‖v‖ ^ 2 ≤ r ^ 2 := pow_le_pow_left₀ (norm_nonneg _) hv 2
      have := mul_le_mul_of_nonneg_left this (by positivity : (0 : ℝ) ≤ q * Real.pi)
      linarith
    have hsub : w - (ua + y) = w - ua - y := by abel
    rw [hsub] at hv1
    have hexp : q * Real.pi * ‖ua‖ ^ 2 + (q * Real.pi * (Hf v a).re - q * Real.pi * ‖a‖ ^ 2 / 2) +
        (q * Real.pi * ‖v - a‖ ^ 2 / 2 + -(q * Real.pi) * ‖w - ua - y‖ ^ 2) ≤
        1.07 * c + -(1.33 * q) * ‖y‖ ^ 2 := by
      rw [hn]
      have e1 : 2 * Real.pi * r * (q * ‖ua‖ + q * ‖y‖) = 2 * Real.pi * r * (‖u‖ + q * ‖y‖) := by
        rw [hnua]
      nlinarith
    calc ‖K * Col.Tc X I q β (x : Col.Qc X I) (v - a)‖
        = ‖K‖ * ‖Col.Tc X I q β (x : Col.Qc X I) (v - a)‖ := norm_mul _ _
      _ ≤ ‖K‖ * (B * Real.exp (q * Real.pi * ‖v - a‖ ^ 2 / 2) *
            Real.exp (-(q * Real.pi) * ‖w - ua - y‖ ^ 2)) :=
          mul_le_mul_of_nonneg_left hT (norm_nonneg _)
      _ = B * Real.exp (q * Real.pi * ‖ua‖ ^ 2 + (q * Real.pi * (Hf v a).re - q * Real.pi * ‖a‖ ^ 2 / 2) +
            (q * Real.pi * ‖v - a‖ ^ 2 / 2 + -(q * Real.pi) * ‖w - ua - y‖ ^ 2)) := by
          rw [hKn, Real.exp_add, Real.exp_add, Real.exp_add]; ring
      _ ≤ B * Real.exp (1.07 * c + -(1.33 * q) * ‖y‖ ^ 2) :=
          mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr hexp) hB0
      _ = B * Real.exp (1.07 * c) * g x := by rw [hg, Real.exp_add]; ring
  have hns : Summable (fun x : ((({0} : Finset (Col.Qc X I)) : Set (Col.Qc X I))ᶜ : Set _) =>
      ‖K * Col.Tc X I q β x (v - a)‖) :=
    Summable.of_nonneg_of_le (fun x => norm_nonneg _) hpt (hgs'.mul_left _)
  refine (norm_tsum_le_tsum_norm hns).trans ?_
  refine (hns.tsum_le_tsum hpt (hgs'.mul_left _)).trans ?_
  rw [tsum_mul_left]
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  have : ∑' x, g x ≤ 2 * 3 ^ Col.dK (IR I) * Real.exp (-(1.33 * q * b0 (E := E) P.q P.R0)) := hgb
  refine this.trans (le_of_eq ?_)
  congr 2
  simp only [t0]; ring

end

end ReciprocityTheory.ChartRestriction.G.I2

namespace ReciprocityTheory.ChartRestriction.G.I2

open NumberField MeasureTheory

noncomputable section

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {X : PT E} {DF : ℕ} {P : Par X DF}
  {I : Submodule ℤ (Vsp X.dim)}

theorem ct_dK_le (hI : IsSplit P I) : Col.dK (IR I) ≤ dstar (E := E) P.m := by
  obtain ⟨ρ, hρ, hr⟩ := hI.rank
  have h1 : Col.dK (IR I) = 2 * PT.f E * ρ := hr
  rw [h1, dstar]
  exact Nat.mul_le_mul_left _ hρ



theorem ct_deriv (hP : Ext.PackingCount) (hGT : Ext.GaussianTailBound) (hI : IsSplit P I)
    (c : ℕ) (hc : c ≤ DF) (σ : E →+* ℂ) (x0 u : Vsp X.dim) (hu : u = Col.uc (IR I) x0)
    (n : ℝ) (hn : 1 ≤ n) (hun : 2 * Real.pi * ‖u‖ ≤ 1.5 * n)
    (hc6 : ∀ y ∈ X.L, ∀ uy, IsU I y uy → |2 * inner ℝ u uy| ≤ M1 (E := E) P.m * ‖uy‖ ^ 2)
    (βt : EuclideanSpace ℂ (Fin (Col.gB (IR I))) → ℂ) (hβtd : Differentiable ℂ βt) (hb0 : βt 0 = 1)
    (hbj : ∀ j, 1 ≤ j → j ≤ c → iteratedFDeriv ℂ j βt 0 = 0)
    {β : EuclideanSpace ℂ (Fin (Col.gB (IR I))) → ℂ} (hβ : β ∈ (Col.YB hI hP P.q).Sec P.q)
    (hββ : ctU P.q (Col.wmap (IR I) (ctA x0 P.q)) β = βt)
    (hBβ : ∀ t, ‖β t‖ ^ 2 * Real.exp (-(P.q * Real.pi) * ‖t‖ ^ 2) ≤
      Real.sqrt (12 * (5.12 : ℝ) ^ Col.gB (IR I)) ^ 2)
    (xs : Fin c → Vsp X.dim) (hxs : ∀ k, InPart σ (xs k) ∧ ‖xs k‖ = 1) :
    ‖d1 (ctS X I P.q β (ctA x0 P.q)) c xs - (-Complex.I) ^ c * (2 * Real.pi) ^ c * ∏ k, Hf (xs k) u‖ ≤
      P.eps1 * n ^ c := by
  have hK := Col.hK_of hI
  set q := P.q with hqdef
  have hq0 : (0 : ℝ) < q := by exact_mod_cast P.hq
  have hq0' : (q : ℂ) ≠ 0 := by exact_mod_cast (by have := P.hq; omega : q ≠ 0)
  set a := ctA x0 q with ha
  set C := ctC I q a with hC
  have hC0 : C ≠ 0 := Complex.exp_ne_zero _
  set Bsq : ℝ := 12 * (5.12 : ℝ) ^ Col.gB (IR I) with hBsq
  have hBsq0 : 0 ≤ Bsq := by positivity
  set B := Real.sqrt Bsq with hBdef
  have hB0 : 0 ≤ B := Real.sqrt_nonneg _
  set E0 : Vsp X.dim → ℂ := fun v => Complex.exp (q * Real.pi * Hf v a - q * Real.pi * Hf a a / 2)
    with hE0
  set gfun : Vsp X.dim → ℂ := fun v => C⁻¹ * (E0 v * Col.sP X I q β (v - a)) with hgfun
  set mainf : Vsp X.dim → ℂ := fun v =>
    Complex.exp (-(2 * Real.pi * q : ℂ) * Complex.I * Hf v (Col.uc (IR I) a)) * Col.F0 I q βt v
    with hmainf
  set tailf : Vsp X.dim → ℂ := fun v =>
    C⁻¹ * (E0 v * (Col.sP X I q β (v - a) - Col.F0 I q β (v - a))) with htailf
  have hE0d : Differentiable ℂ E0 :=
    (((Col.diff_Hf a).const_mul ((q : ℂ) * Real.pi)).sub_const _).cexp
  have hsPd : Differentiable ℂ (Col.sP X I q β) := Col.diff_sP hI hP hGT hB0 hBβ hβ.1
  have hF0d : Differentiable ℂ (Col.F0 I q β) := differentiable_zeroModeLift I q β hβ.1
  have hsh : Differentiable ℂ (fun v : Vsp X.dim => v - a) := differentiable_id.sub_const a
  have htaild : Differentiable ℂ tailf :=
    (hE0d.mul ((hsPd.comp hsh).sub (hF0d.comp hsh))).const_mul _
  have hmaind : Differentiable ℂ mainf :=
    (((Col.diff_Hf _).const_mul _).cexp).mul (differentiable_zeroModeLift I q βt hβtd)
  have hgd : Differentiable ℂ gfun := (hE0d.mul (hsPd.comp hsh)).const_mul _
  have hgsplit : gfun = mainf + tailf := by
    funext v
    have h := translate_zeroModeLift_formula hK q β a v
    rw [hββ] at h
    show C⁻¹ * (E0 v * Col.sP X I q β (v - a)) = mainf v + C⁻¹ * (E0 v * (Col.sP X I q β (v - a) -
      Col.F0 I q β (v - a)))
    have h1 : E0 v * Col.F0 I q β (v - a) =
        C * (Complex.exp (-(2 * Real.pi * q : ℂ) * Complex.I * Hf v (Col.uc (IR I) a)) *
          Col.F0 I q βt v) := by
      simp only [hE0, Col.F0]; rw [h, hC]; unfold ctC; ring
    have h2 : mainf v = C⁻¹ * (E0 v * Col.F0 I q β (v - a)) := by
      rw [h1, hmainf, ← mul_assoc, inv_mul_cancel₀ hC0, one_mul]
    rw [h2]; ring
  have hd1 : d1 (ctS X I q β a) c xs = iteratedFDeriv ℂ c gfun 0 xs := by
    have hfun : ctS X I q β a = fun w => gfun (w 0) := ct_fun q β a
    unfold d1; rw [hfun]
    exact iteratedFDeriv_single_column (contDiff_of_differentiable_fd hgd c) xs
  have hadd : iteratedFDeriv ℂ c gfun 0 xs =
      iteratedFDeriv ℂ c mainf 0 xs + iteratedFDeriv ℂ c tailf 0 xs := by
    rw [hgsplit, iteratedFDeriv_add_apply (contDiff_of_differentiable_fd hmaind c).contDiffAt
      (contDiff_of_differentiable_fd htaild c).contDiffAt]
    rfl
  have hmain := ct_main hI σ q c βt hβtd hb0 hbj (Col.uc (IR I) a) xs (fun k => (hxs k).1)
  have hua : Col.uc (IR I) a = (1 / (q : ℝ)) • u := by rw [ha, ct_uc_A, hu]
  have hprod : ∏ k, (-(2 * Real.pi * q : ℂ) * Complex.I * Hf (xs k) (Col.uc (IR I) a)) =
      (-Complex.I) ^ c * (2 * Real.pi) ^ c * ∏ k, Hf (xs k) u := by
    have hk : ∀ k, (-(2 * Real.pi * q : ℂ) * Complex.I * Hf (xs k) (Col.uc (IR I) a)) =
        (-Complex.I) * (2 * Real.pi) * Hf (xs k) u := by
      intro k
      rw [hua, Col.Hf_rsmul_r]
      push_cast
      field_simp
    rw [Finset.prod_congr rfl (fun k _ => hk k), Finset.prod_mul_distrib, Finset.prod_mul_distrib,
      Finset.prod_const, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
  rw [hd1, hadd, hmain, hprod, add_sub_cancel_left]

  set D := 2 * Real.pi * ‖u‖ + 5 * Real.sqrt (q * (c + 1)) with hD
  have hs0 : 0 < Real.sqrt (q * (c + 1)) := Real.sqrt_pos.mpr (by positivity)
  have hD0 : 0 < D := by positivity
  set M := B * Real.exp (1.07 * c) *
    (2 * 3 ^ Col.dK (IR I) * Real.exp (-(1.33 * t0 (E := E) P.q P.R0))) with hM
  have hcr : (c : ℝ) * (1 / D) * D ≤ c := by field_simp; rfl
  have hcau := ct_iter_cauchy tailf (fun m => contDiff_of_differentiable_fd htaild m) (1 / D) M
    (by positivity) c xs 0 (fun k => (hxs k).2.le) (fun y hy =>
      ct_tail hI hP hGT hβ hB0 hBβ c hc x0 u hu hc6 (c * (1 / D)) (by positivity) hcr y
        (by simpa using hy))
  refine hcau.trans ?_
  have hC5 : 4 * (c : ℝ) * (7 + Real.log (q * c)) ≤ t0 (E := E) P.q P.R0 := by
    have := threshold_ge_log_bound P hc
    have : (0 : ℝ) ≤ dstar (E := E) P.m := Nat.cast_nonneg _
    linarith
  have hBn := ct_B_num X.gA (Col.gB (IR I)) (Col.dK (IR I)) (dstar (E := E) P.m) hBsq0 le_rfl
    (cab_gB_le (IR I)) (ct_dK_le hI) (threshold_ge_rank_log_two P)
  have hfin := jet_product_le q c (Col.dK (IR I)) X.gA (dstar (E := E) P.m) P.hq hn (norm_nonneg u) hun
    hC5 hBn
  have heq : M / (1 / D) ^ c = D ^ c * (Real.sqrt Bsq * Real.exp (1.07 * c) *
      (2 * 3 ^ Col.dK (IR I) * Real.exp (-(1.33 * t0 (E := E) P.q P.R0)))) := by
    rw [hM, one_div, inv_pow, div_inv_eq_mul]; ring
  rw [heq]
  refine hfin.trans (le_of_eq ?_)
  simp only [Par.eps1]

theorem ct_core (hP : Ext.PackingCount) (hGT : Ext.GaussianTailBound) (hA : PropAStatement)
    (hS : GSupStatement) (hI : IsSplit P I) (c : ℕ) (hc : c ≤ DF) (σ : E →+* ℂ)
    (x0 u : Vsp X.dim) (hx0 : x0 ∈ X.L) (hu : IsU I x0 u) (n : ℝ) (hn : 1 ≤ n)
    (hun : 2 * Real.pi * ‖u‖ ≤ 1.5 * n)
    (hc6 : ∀ y ∈ X.L, ∀ uy, IsU I y uy → |2 * inner ℝ u uy| ≤ M1 (E := E) P.m * ‖uy‖ ^ 2) :
    ∃ s' ∈ X.Sec P.q 1, ∃ ζ : ℂ, ‖ζ‖ = 1 ∧
      (∀ xs : Fin c → Vsp X.dim, (∀ k, InPart σ (xs k) ∧ ‖xs k‖ = 1) →
        ‖d1 s' c xs - ζ * (2 * Real.pi) ^ c * ∏ k, Hf (xs k) u‖ ≤ P.eps1 * n ^ c) ∧
      P.K6⁻¹ * Real.exp (-(2 * Real.pi * ‖u‖ ^ 2 / P.q)) * X.l2 P.q s' ≤ n ^ (2 * c) := by
  have hu' : u = Col.uc (IR I) x0 := hu.unique (Col.isU_uc x0)
  set q := P.q with hqdef
  have hq0 : (0 : ℝ) < q := by exact_mod_cast P.hq
  have hq0' : (q : ℂ) ≠ 0 := by exact_mod_cast (by have := P.hq; omega : q ≠ 0)
  set w := Col.wmap (IR I) x0 with hw
  obtain ⟨βt, hβt, hb0, hbj, hl2t, hsupt⟩ := ct_beta hA hS hI hP w c hc
  set b : EuclideanSpace ℂ (Fin (Col.gB (IR I))) := -((1 / (q : ℂ)) • w) with hb
  set β := ctU q b βt with hβdef
  have hβ : β ∈ (Col.YB hI hP q).Sec q := ctU_mem (Col.YB hI hP q) w P.hq hβt
  set a := ctA x0 q with ha
  have hwa : Col.wmap (IR I) a = (1 / (q : ℂ)) • w := by rw [ha, ctA, map_smul]
  have hββ : ctU q (Col.wmap (IR I) a) β = βt := by
    rw [hwa, hβdef, hb]; exact ctU_cancel q _ βt
  set Bsq : ℝ := 12 * (5.12 : ℝ) ^ Col.gB (IR I) with hBsq
  have hBsq0 : 0 ≤ Bsq := by positivity
  have hBβ : ∀ t, ‖β t‖ ^ 2 * Real.exp (-(q * Real.pi) * ‖t‖ ^ 2) ≤ Real.sqrt Bsq ^ 2 := by
    intro t
    rw [Real.sq_sqrt hBsq0]
    have h1 := pointNormSq_translate (Col.YB hI hP q) q b βt t
    have h2 := hsupt (t - b)
    unfold GT.ptN2 at h1 h2
    rw [← hβdef] at h1
    rw [h1]; exact h2
  have hB0 : 0 ≤ Real.sqrt Bsq := Real.sqrt_nonneg _
  have hcol : Col.colS X I q β ∈ X.Sec q 1 := by
    refine ⟨(Col.diff_sP hI hP hGT hB0 hBβ hβ.1).comp (differentiable_apply 0), fun γ hγ v => ?_⟩
    have h := Col.sP_shift hI hP q hβ ⟨γ 0, hγ 0⟩ (v 0)
    simp only [Col.colS, Pi.add_apply, Fin.prod_univ_one, HC, Fin.sum_univ_one]
    exact h
  have hamem : ∀ k : Fin 1, (q : ℂ) • (fun _ : Fin 1 => a) k ∈ X.L := by
    intro k
    show (q : ℂ) • ctA x0 q ∈ X.L
    rw [ctA, smul_smul, mul_one_div_cancel hq0', one_smul]; exact hx0
  have hUmem := nA_U_mem X hcol hamem
  refine ⟨ctS X I q β a, (X.Sec q 1).smul_mem _ hUmem, (-Complex.I) ^ c, by simp, ?_, ?_⟩
  · intro xs hxs
    exact ct_deriv hP hGT hI c hc σ x0 u hu' n hn hun hc6 βt hβt.1 hb0 hbj hβ hββ hBβ xs hxs
  · have hl2 : X.l2 q (ctS X I q β a) = ‖(ctC I q a)⁻¹‖ ^ 2 * X.l2 q (Col.colS X I q β) := by
      unfold ctS
      rw [l2_smul X q, l2_U_eq_l2 hcol]
    have hCn : ‖(ctC I q a)⁻¹‖ ^ 2 = Real.exp (2 * Real.pi * ‖u‖ ^ 2 / q) := by
      rw [norm_inv, ct_norm_C hI, Real.exp_neg, inv_inv, ← Real.exp_nat_mul]
      congr 1
      have hua : Col.uc (IR I) a = (1 / (q : ℝ)) • u := by rw [ha, ct_uc_A, hu']
      rw [hua, norm_smul, Real.norm_eq_abs, abs_of_pos (by positivity)]
      field_simp
      push_cast; ring
    have h4 := Col.l2_colS_le_four_mul hI hP hGT hβ hB0 hBβ
    rw [l2_ctU_eq_l2_ctY (Col.YB hI hP q) w hβt] at h4
    have hK6 := twentyfour_le_constant P
    have hK6p : 0 < P.K6 := by linarith
    have hn1 : (1 : ℝ) ≤ n ^ (2 * c) := one_le_pow₀ hn
    rw [hl2, hCn, ← mul_assoc, mul_assoc P.K6⁻¹, ← Real.exp_add,
      show -(2 * Real.pi * ‖u‖ ^ 2 / q) + 2 * Real.pi * ‖u‖ ^ 2 / q = 0 by ring, Real.exp_zero,
      mul_one]
    rw [inv_mul_le_iff₀ hK6p]
    nlinarith

end

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorus =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.EpsilonLeHalf =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.EpsilonLeHalf", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SplitSt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

open MeasureTheory Complex NumberField

noncomputable section

theorem epsilon_le_half {E : Type} [Field E] [NumberField E] {X : PT E} {DF : ℕ} (P : Par X DF) :
    P.eps1 ≤ 1 / 2 := by
  have h6 := P.C6
  have hr0 : (0:ℝ) ≤ X.r := Nat.cast_nonneg _
  have hr : 0 ≤ (X.r : ℝ) * Real.log X.r := mul_nonneg hr0 (Real.log_natCast_nonneg _)
  have hrest : 0 ≤ ((DF : ℝ) + 1) * (X.r * Real.log X.r + 3 * X.r + 3) :=
    mul_nonneg (by positivity) (by linarith)
  have e1 := Real.exp_one_gt_d9
  have e2 : Real.exp 2 = Real.exp 1 ^ 2 := by rw [← Real.exp_nat_mul]; norm_num
  have e3 : Real.exp 3 = Real.exp 1 ^ 3 := by rw [← Real.exp_nat_mul]; norm_num
  have p2 : (2.7:ℝ) ^ 2 ≤ Real.exp 1 ^ 2 := by gcongr; linarith
  have p3 : (2.7:ℝ) ^ 3 ≤ Real.exp 1 ^ 3 := by gcongr; linarith
  have hl43 : Real.log 4.3 ≤ 2 := by
    rw [Real.log_le_iff_le_exp (by norm_num), e2]
    norm_num at p2
    linarith
  have hl14 : Real.log 7 + Real.log 2 ≤ 3 := by
    rw [← Real.log_mul (by norm_num) (by norm_num), Real.log_le_iff_le_exp (by norm_num), e3]
    norm_num at p3
    linarith
  have hds : (dstar (E := E) P.m : ℝ) * Real.log 4.3 ≤ 2 * dstar (E := E) P.m := by
    have h := mul_le_mul_of_nonneg_left hl43 (Nat.cast_nonneg (α := ℝ) (dstar (E := E) P.m))
    linarith
  have key : (7:ℝ) * 2 ^ X.gA * (4.3:ℝ) ^ dstar (E := E) P.m =
      Real.exp (Real.log 7 + X.gA * Real.log 2 + dstar (E := E) P.m * Real.log 4.3) := by
    rw [Real.exp_add, Real.exp_add, Real.exp_log (by norm_num), Real.exp_nat_mul, Real.exp_nat_mul,
      Real.exp_log (by norm_num), Real.exp_log (by norm_num)]
  unfold Par.eps1
  rw [key, ← Real.exp_add]
  have half : (1:ℝ) / 2 = Real.exp (-Real.log 2) := by
    rw [Real.exp_neg, Real.exp_log (by norm_num)]
    norm_num
  rw [half, Real.exp_le_exp]
  linarith

end

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.EpsilonLeHalf =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColEmpty =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColEmpty", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SplitSt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.GaussianTailBound\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.PropASt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColAbel\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColTorus\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.EpsilonLeHalf\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.I2

open MeasureTheory Complex

theorem colTorus (hx : Ext.All) (hA : PropAStatement) (hS : GSupStatement) : ColTorusStatement := by
  obtain ⟨hP, hGT, -⟩ := hx
  intro E _ _ _ X DF P I hI c hc σ x0 u hx0 hu n hn hun hc6
  exact ct_core hP hGT hA hS hI c hc σ x0 u hx0 hu n hn hun hc6

theorem colAbel (hx : Ext.All) (hA : PropAStatement) (hS : GSupStatement) : ColAbelStatement := by
  obtain ⟨hP, hGT, -⟩ := hx
  intro E _ _ _ X DF P I hI c hc σ ξ _ hξ1 hξI
  exact cab_core hP hGT hA hS hI c hc σ ξ hξ1 hξI

theorem colEmpty (hx : Ext.All) (hA : PropAStatement) (hS : GSupStatement) : ColEmptyStatement := by
  obtain ⟨hP, hGT, -⟩ := hx
  intro E _ _ _ X DF P I hI
  obtain ⟨σ⟩ : Nonempty (E →+* ℂ) := inferInstance
  have hM : 0 ≤ M1 (E := E) P.m := by
    unfold M1 PT.rd
    positivity
  have hu0 : IsU I (0 : Vsp X.dim) 0 := ⟨Submodule.zero_mem _, fun a _ => by simp [Hf]⟩
  obtain ⟨s', hs', ζ, hζ, hd, hl⟩ := ct_core hP hGT hA hS hI 0 (Nat.zero_le _) σ 0 0
    (Submodule.zero_mem _) hu0 1 le_rfl (by norm_num)
    (fun y _ uy _ => by simpa using mul_nonneg hM (sq_nonneg ‖uy‖))
  have h0 := hd Fin.elim0 (fun k => k.elim0)
  simp only [d1, iteratedFDeriv_zero_apply, pow_zero, Finset.univ_eq_empty, Finset.prod_empty,
    mul_one] at h0
  refine ⟨s', hs', ?_, by simpa using hl⟩
  have h1 := norm_sub_norm_le ζ (s' 0)
  rw [norm_sub_rev] at h1
  have h2 := epsilon_le_half P
  linarith

end ReciprocityTheory.ChartRestriction.G.I2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.ColEmpty =====
