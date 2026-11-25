module

public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CollapseExponent
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.AddMemSupportOfMemSupportCoefOut
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.FockMonomialRight
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.GlobalTheory
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutedExponentApplyBlock
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.TestBoundOfRhoAndNormSets
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CgeZeroIffIntegral
public import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.DigitPartMonomial
import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.Monomial
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MlabNotMemYset, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutedExponentApplyLabel, Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.OmegaValue

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MlabNotMemYset =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MlabNotMemYset", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CollapseExponent\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.AddMemSupportOfMemSupportCoefOut\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.FockMonomialRight\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.GlobalTheory\nimport Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.Monomial\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutedExponentApplyBlock\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.TestBoundOfRhoAndNormSets\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.CgeZeroIffIntegral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

section

variable {K : Type} [Field K]

theorem linMap_eq_sum {σ τ : Type} (T : MvPolynomial σ K →ₗ[K] MvPolynomial τ K) (Y : MvPolynomial σ K) :
    T Y = ∑ ζ ∈ Y.support, Y.coeff ζ • T (monomial ζ 1) := by
  conv_lhs => rw [Y.as_sum]

  rw [map_sum]
  refine Finset.sum_congr rfl fun ζ _ => ?_
  rw [← map_smul, smul_monomial, smul_eq_mul, mul_one]

end

namespace TwistData

variable {K : Type} [Field K] (D : TwistData K)

theorem Good.dg {p : ℕ} {Z : MvPolynomial (D.ML × Fin D.r) K} (hZ : D.Good p Z) (f : D.EM → K) :
    D.Good p (Formalism.MainNotions.PlaneGram.dg f Z) := fun ζ hζ => hZ ζ (support_dg_subset f Z hζ)

theorem mlab_notMem_Yset (j : Fin D.J) (m : Fin D.r) (t : D.Tau) : D.mlab t ∉ D.Yset j m := by
  rw [mem_Yset]
  rintro (⟨m', h⟩ | ⟨b, -, h⟩ | ⟨m', -, h⟩) <;> simp [mb, mw, mlab, mtp] at h

end TwistData

section Main

variable {K : Type} [Field K] [CharZero K] {v : AddValuation K (WithTop ℚ)} {p : ℕ} {C0 : ℝ}

theorem cge_Pj_monomial (hD : DVRHyp v p) (D : TwistData K) (hr : 1 ≤ D.r)
    (Pj : MvPolynomial (D.ML × Fin D.r) K →ₗ[K] MvPolynomial (D.ML × Fin D.r) K)
    (hP1 : ∀ ζ ζ' : D.EM, ζ' ∈ (Pj (monomial ζ 1)).support → (∀ i, ldeg ζ' i = ldeg ζ i) ∧
        (∀ t a, ζ' (D.mlab t, a) = ζ (D.mlab t, a)) ∧ (∀ t a, ζ' (D.mtp t, a) = ζ (D.mtp t, a)))
    (hP2 : ∀ ζ : D.EM, D.GoodE p ζ → bge v (vN v (fact ζ) / 2 - D.Dm p C0) (Pj (monomial ζ 1)))
    (ζ : D.EM) (hζ : D.GoodE p ζ) :
    cge v (-(D.Dm p C0 + D.kapD p / 2)) (Pj (monomial ζ 1)) := by
  intro ζ'
  by_cases h : ζ' ∈ (Pj (monomial ζ 1)).support
  · have hb : D.SameBlockAlt ζ ζ' := hP1 ζ ζ' h
    have h1 := D.blk_fact hD hr hζ hb
    exact vge_mono v (by linarith) (hP2 ζ hζ ζ')
  · rw [notMem_support_iff.mp h]; exact vge_zero v _

theorem good_Pj (D : TwistData K)
    (Pj : MvPolynomial (D.ML × Fin D.r) K →ₗ[K] MvPolynomial (D.ML × Fin D.r) K)
    (hP1 : ∀ ζ ζ' : D.EM, ζ' ∈ (Pj (monomial ζ 1)).support → (∀ i, ldeg ζ' i = ldeg ζ i) ∧
        (∀ t a, ζ' (D.mlab t, a) = ζ (D.mlab t, a)) ∧ (∀ t a, ζ' (D.mtp t, a) = ζ (D.mtp t, a)))
    {Y : MvPolynomial (D.ML × Fin D.r) K} (hY : D.Good p Y) : D.Good p (Pj Y) := by
  rw [linMap_eq_sum Pj Y]
  refine TwistData.Good.sum D _ _ fun ζ hζ => TwistData.Good.smul D ?_ _
  intro ζ' hζ'
  exact TwistData.GoodE.good_exponent_same_block D (hY ζ hζ) (hP1 ζ ζ' hζ')

theorem omega_clauses (hD : DVRHyp v p) (h1 : 1 ≤ C0) (D : TwistData K) (hV : D.Valid v p)
    (Pj : MvPolynomial (D.ML × Fin D.r) K →ₗ[K] MvPolynomial (D.ML × Fin D.r) K)
    (hPj : (∀ ζ ζ' : D.EM, ζ' ∈ (Pj (monomial ζ 1)).support → (∀ i, ldeg ζ' i = ldeg ζ i) ∧
        (∀ t a, ζ' (D.mlab t, a) = ζ (D.mlab t, a)) ∧ (∀ t a, ζ' (D.mtp t, a) = ζ (D.mtp t, a))) ∧
      (∀ ζ : D.EM, D.GoodE p ζ → bge v (vN v (fact ζ) / 2 - D.Dm p C0) (Pj (monomial ζ 1))) ∧
      (∀ Z (j : Fin D.J) (i : Fin (D.nch j)), vala D.msg (D.chainSet j i) (D.th j i - D.sl j i) (Pj Z)) ∧
      (∀ (A : MvPolynomial (D.ML × Fin D.r) K) (ζ : D.EM), A ∈ PolK K D.r (fun i => ldeg ζ i) →
        (∀ (j : Fin D.J) (i : Fin (D.nch j)), vala D.msg (D.chainSet j i) (D.th j i - D.sl j i) A) →
        fock A (Pj (monomial ζ 1)) = fock A (monomial ζ 1)) ∧
      (∀ (j : Fin D.J) (m : Fin D.r) (θ : ℝ) Z, vala D.msg (D.Yset j m) θ Z → vala D.msg (D.Yset j m) θ (Pj Z)))
    (gp gm : D.EM → K) (hgp : ∀ ζ, 0 ≤ v (gp ζ)) (hgm : ∀ ζ, 0 ≤ v (gm ζ))
    (hcost : ∀ S : Finset D.ML, (∀ t, D.mlab t ∉ S) → ∀ (θ : ℝ) (Z : MvPolynomial (D.ML × Fin D.r) K),
        vala D.msg S θ Z → vala D.msg S (θ - 12 * D.c) (dg gp Z) ∧ vala D.msg S (θ - 12 * D.c) (dg gm Z)) :
    ((⌈D.Dm p C0 + D.kapD p / 2⌉₊ : ℕ) : ℝ) ≤ D.Dm p C0 + D.kapD p / 2 + 1 ∧
    (∀ Z, Integral v Z → D.Good p Z →
      Integral v (((p : K) ^ ⌈D.Dm p C0 + D.kapD p / 2⌉₊) • dg gm (Pj (dg gp Z)))) ∧
    (∀ Z, D.Good p Z → D.Good p (dg gm (Pj (dg gp Z)))) ∧
    (∀ Z, D.Good p Z → ∀ (j : Fin D.J) (i : Fin (D.nch j)),
      vala D.msg (D.chainSet j i) (D.th j i - D.sl j i - 12 * D.c) (dg gm (Pj (dg gp Z)))) ∧
    (∀ Z, D.Good p Z → ∀ (j : Fin D.J) (m : Fin D.r) (θ : ℝ), m.val + 2 ≤ D.r →
      vala D.msg (D.Yset j m) θ Z → vala D.msg (D.Yset j m) (θ - 24 * D.c) (dg gm (Pj (dg gp Z)))) := by
  obtain ⟨hP1, hP2, hP3, -, hP5⟩ := hPj
  have hp : 2 ≤ p := two_le_p hD
  have hr : 1 ≤ D.r := hV.1
  have hJ : 1 ≤ D.J := hV.2.1
  have hkap := D.kapD_ge_one hp hr hJ
  have hDm := D.Dm_nonneg hp hr h1
  have hpos : 0 ≤ D.Dm p C0 + D.kapD p / 2 := by linarith
  refine ⟨(Nat.ceil_lt_add_one hpos).le, ?_, ?_, ?_, ?_⟩
  · intro Z hZi hZg
    rw [← cge_zero_iff_Integral]
    have hY : cge v 0 (dg gp Z) := by
      have := cge_dg v (a := 0) (b := 0) (f := gp) (fun ζ => (vge_zero_iff v _).mpr (hgp ζ))
        ((cge_zero_iff_Integral v Z).mpr hZi)
      simpa using this
    have hYg : D.Good p (dg gp Z) := TwistData.Good.dg D hZg gp
    have hPY : cge v (-(D.Dm p C0 + D.kapD p / 2)) (Pj (dg gp Z)) := by
      rw [linMap_eq_sum Pj (dg gp Z)]
      refine cge_sum v _ _ fun ζ hζ => ?_
      have := cge_smul v (hY ζ) (cge_Pj_monomial hD D hr Pj hP1 hP2 ζ (hYg ζ hζ))
      simpa using this
    have hG : cge v (-(D.Dm p C0 + D.kapD p / 2)) (dg gm (Pj (dg gp Z))) := by
      have := cge_dg v (a := 0) (f := gm) (fun ζ => (vge_zero_iff v _).mpr (hgm ζ)) hPY
      simpa using this
    have := cge_smul v (vge_p_pow hD ⌈D.Dm p C0 + D.kapD p / 2⌉₊) hG
    refine cge_mono v ?_ this
    have := Nat.le_ceil (D.Dm p C0 + D.kapD p / 2)
    linarith
  · intro Z hZg
    exact TwistData.Good.dg D (good_Pj D Pj hP1 (TwistData.Good.dg D hZg gp)) gm
  · intro Z _ j i
    exact (hcost (D.chainSet j i) (D.mlab_notMem_chainSet j i) _ _ (hP3 (dg gp Z) j i)).2
  · intro Z _ j m θ _ hZ
    have a1 := (hcost (D.Yset j m) (D.mlab_notMem_Yset j m) θ Z hZ).1
    have a2 := hP5 j m _ _ a1
    have a3 := (hcost (D.Yset j m) (D.mlab_notMem_Yset j m) _ _ a2).2
    exact vala_mono (by linarith) a3

end Main

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MlabNotMemYset =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutedExponentApplyLabel =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutedExponentApplyLabel", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.GlobalTheory\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.AddMemSupportOfMemSupportCoefOut\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.DigitPartMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.FockMonomialRight\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.TestBoundOfRhoAndNormSets\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

namespace TwistData

variable {K : Type} [Field K] (D : TwistData K)

theorem eIn_apply_mb (ζ : D.EM) (b : D.Lb) (a : Fin D.r) : eIn D.outP ζ (D.mb b, a) = ζ (D.mb b, a) := by
  rw [eIn_apply]
  simp [outP, outB, mb]

theorem eIn_apply_mw (ζ : D.EM) (t : D.Tau) (a : Fin D.r) : eIn D.outP ζ (D.mw t, a) = ζ (D.mw t, a) := by
  rw [eIn_apply]
  simp [outP, outB, mw]

theorem eIn_apply_mlab (ζ : D.EM) (t : D.Tau) (a : Fin D.r) : eIn D.outP ζ (D.mlab t, a) = 0 := by
  rw [eIn_apply]
  simp [outP, outB, mlab]

theorem eIn_apply_mtp (ζ : D.EM) (t : D.Tau) (a : Fin D.r) : eIn D.outP ζ (D.mtp t, a) = 0 := by
  rw [eIn_apply]
  simp [outP, outB, mtp]

theorem class_iff (p : ℕ) {ζ : D.EM} (hζ : D.LabLowE p ζ) (α : D.EA) :
    (D.InClass p (D.labF ζ) α ∧ D.liftE p α = eIn D.outP ζ) ↔ α = D.collapseExponent p ζ := by
  constructor
  · rintro ⟨hcl, hlift⟩
    ext ⟨i, a⟩
    rcases i with b | t
    · have h2 := congrArg (fun f => f (D.mb b, a)) hlift
      beta_reduce at h2
      rw [eIn_apply_mb] at h2
      have h1 : D.liftE p α (D.mb b, a) = α (Sum.inl b, a) := by simp [liftE, mb]
      rw [h1] at h2
      rw [h2]
      simp [collapseExponent, mb]
    · have h2 := congrArg (fun f => f (D.mw t, a)) hlift
      beta_reduce at h2
      rw [eIn_apply_mw] at h2
      have h1 : D.liftE p α (D.mw t, a) = α (Sum.inr t, a) / D.P p t := by simp [liftE, mw]
      rw [h1] at h2
      have h3 : α (Sum.inr t, a) % D.P p t = ζ (D.mlab t, a) := hcl t a
      have h4 : D.collapseExponent p ζ (Sum.inr t, a) = ζ (D.mlab t, a) + D.P p t * ζ (D.mw t, a) := by
        simp [collapseExponent, mlab, mw]
      rw [h4, ← Nat.mod_add_div (α (Sum.inr t, a)) (D.P p t), h3, h2]
  · rintro rfl
    refine ⟨fun t a => ?_, ?_⟩
    · have hP : 0 < D.P p t := (Nat.zero_le _).trans_lt (hζ t a)
      show D.collapseExponent p ζ (Sum.inr t, a) % D.P p t = ζ (D.mlab t, a)
      have h4 : D.collapseExponent p ζ (Sum.inr t, a) = ζ (D.mlab t, a) + D.P p t * ζ (D.mw t, a) := by
        simp [collapseExponent, mlab, mw]
      rw [h4, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt (hζ t a)]
    · ext ⟨i, a⟩
      rcases i with b | t | t | t
      · change _ = eIn D.outP ζ (D.mb b, a)
        rw [eIn_apply_mb]
        simp [liftE, collapseExponent, mb]
      · change _ = eIn D.outP ζ (D.mlab t, a)
        rw [eIn_apply_mlab]
        simp [liftE]
      · change _ = eIn D.outP ζ (D.mw t, a)
        rw [eIn_apply_mw]
        have hP : 0 < D.P p t := (Nat.zero_le _).trans_lt (hζ t a)
        have h4 : D.collapseExponent p ζ (Sum.inr t, a) = ζ (D.mlab t, a) + D.P p t * ζ (D.mw t, a) := by
          simp [collapseExponent, mlab, mw]
        have h1 : D.liftE p (D.collapseExponent p ζ) (Sum.inr (Sum.inr (Sum.inl t)), a) =
            D.collapseExponent p ζ (Sum.inr t, a) / D.P p t := by simp [liftE]
        rw [h1, h4, Nat.add_mul_div_left _ _ hP, Nat.div_eq_of_lt (hζ t a), zero_add]
      · change _ = eIn D.outP ζ (D.mtp t, a)
        rw [eIn_apply_mtp]
        simp [liftE]

theorem coeff_digitPart_eIn (p : ℕ) {ζ : D.EM} (hζ : D.LabLowE p ζ) (G : MvPolynomial (D.OL × Fin D.r) K) :
    (D.digitPart p (D.labF ζ) G).coeff (eIn D.outP ζ) = G.coeff (D.collapseExponent p ζ) := by
  classical
  unfold digitPart
  rw [MvPolynomial.coeff_sum]
  have h : ∀ α ∈ G.support, (if D.InClass p (D.labF ζ) α then monomial (D.liftE p α) (G.coeff α) else 0 :
      MvPolynomial (D.ML × Fin D.r) K).coeff (eIn D.outP ζ) = if α = D.collapseExponent p ζ then G.coeff α else 0 := by
    intro α _
    split_ifs with h1 h2 h2
    · rw [MvPolynomial.coeff_monomial, if_pos ((D.class_iff p hζ α).2 h2).2]
    · rw [MvPolynomial.coeff_monomial, if_neg]
      intro h3
      exact h2 ((D.class_iff p hζ α).1 ⟨h1, h3⟩)
    · exact absurd ((D.class_iff p hζ α).2 h2).1 h1
    · simp
  rw [Finset.sum_congr rfl h, Finset.sum_ite_eq']
  split_ifs with h0
  · rfl
  · exact (by simpa using h0 : G.coeff (D.collapseExponent p ζ) = 0).symm

theorem prod_choose_add {σ : Type} [Fintype σ] (β M : σ →₀ ℕ) :
    ((β + M).prod fun x k => (k.choose (M x) : K)) = ((∏ x, (β x + M x).choose (M x) : ℕ) : K) := by
  simp only [Finsupp.prod, Finsupp.coe_add, Pi.add_apply, Nat.cast_prod]
  refine Finset.prod_subset (Finset.subset_univ _) fun x _ hx => ?_
  have h0 : β x = 0 ∧ M x = 0 := by simpa [Finsupp.mem_support_iff] using hx
  simp [h0.1, h0.2]

def GM (F : MvPolynomial (D.OL × Fin D.r) K) (M : D.EA) : MvPolynomial (D.OL × Fin D.r) K :=
  dg (fun α => (D.ga α)⁻¹) (ddiv M (D.gaAct F))

theorem coeff_GM (p : ℕ) (F : MvPolynomial (D.OL × Fin D.r) K) (ζ : D.EM) :
    (D.GM F (D.tpE ζ)).coeff (D.collapseExponent p ζ) =
      (D.ga (D.collapseExponent p ζ))⁻¹ * ((D.ga (D.phE p ζ) * F.coeff (D.phE p ζ)) *
        ((∏ x, (D.collapseExponent p ζ x + D.tpE ζ x).choose (D.tpE ζ x) : ℕ) : K)) := by
  have hga : ∀ β, (D.gaAct F).coeff β = D.ga β * F.coeff β := by
    intro β
    unfold gaAct
    rw [MvPolynomial.coeff_sum]
    simp only [MvPolynomial.coeff_monomial]
    rw [Finset.sum_ite_eq']
    split_ifs with h
    · rfl
    · rw [show F.coeff β = 0 by simpa using h, mul_zero]
  unfold GM
  rw [coeff_dg, coeff_ddiv, prod_choose_add, hga]
  rfl

variable [CharZero K] {v : AddValuation K (WithTop ℚ)} {p : ℕ}

theorem v_gaP (hV : D.Valid v p) {cst : D.Tau → (Fin D.r → ℕ) → ℕ → K}
    {gam : D.Tau → (Fin D.r → ℕ) → (Fin D.r → ℕ) → K} (hdig : D.DigOK v p cst gam) {ζ : D.EM}
    (hζ : D.LabLowE p ζ) : v (D.gaP p gam ζ) = 0 := by
  unfold gaP
  rw [AddValuation.map_mul, hV.2.2.2.2.2.2.1 (D.collapseExponent p ζ), zero_add]
  exact Finset.prod_induction _ (fun x => v x = 0)
    (fun a b ha hb => by rw [AddValuation.map_mul, ha, hb, add_zero]) (AddValuation.map_one v)
    (fun t _ => ((hdig.1 t (D.labF ζ t) (fun a => hζ t a)).2 (D.wF ζ t)).1)

theorem ne_zero_of_v_eq_zero {x : K} (h : v x = 0) : x ≠ 0 := by
  intro hx
  subst hx
  simp at h

theorem Lam_monomial_blk (hV : D.Valid v p) {cst : D.Tau → (Fin D.r → ℕ) → ℕ → K}
    {gam : D.Tau → (Fin D.r → ℕ) → (Fin D.r → ℕ) → K} (hdig : D.DigOK v p cst gam)
    (F : MvPolynomial (D.OL × Fin D.r) K) {ζ : D.EM} (hζ : D.LabLowE p ζ) :
    D.abelian₂ p F (monomial ζ 1) =
      D.kapC cst ζ * (D.gaP p gam ζ * (D.GM F (D.tpE ζ)).coeff (D.collapseExponent p ζ) * (fact ζ : K)) := by
  have h0 : D.ga (D.collapseExponent p ζ) ≠ 0 := ne_zero_of_v_eq_zero (hV.2.2.2.2.2.2.1 _)
  have h1 := D.fact_eq_kapC hdig hζ
  have h2 : (fact (D.phE p ζ) : K) = ((∏ x, (D.collapseExponent p ζ x + D.tpE ζ x).choose (D.tpE ζ x) : ℕ) : K) *
      (fact (D.collapseExponent p ζ) : K) * (fact (D.tpE ζ) : K) := by
    rw [phE, fact_add_eq]; push_cast; ring
  rw [Lam_monomial, coeff_GM, h2, gaP]
  set B := ((∏ x, (D.collapseExponent p ζ x + D.tpE ζ x).choose (D.tpE ζ x) : ℕ) : K)
  set g := ∏ t, gam t (D.labF ζ t) (D.wF ζ t)
  have h3 : D.kapC cst ζ * (D.ga (D.collapseExponent p ζ) * g * ((D.ga (D.collapseExponent p ζ))⁻¹ *
      (D.ga (D.phE p ζ) * F.coeff (D.phE p ζ) * B)) * (fact ζ : K)) =
      (D.ga (D.phE p ζ) * F.coeff (D.phE p ζ) * B) * (D.kapC cst ζ * g * (fact ζ : K)) := by
    field_simp
  rw [h3, ← h1]; ring

theorem vge_coeff_GM (hD : DVRHyp v p) (hV : D.Valid v p) {F : MvPolynomial (D.OL × Fin D.r) K}
    (hF : F ∈ PolK K D.r D.dO) (hF0 : bge v 0 F) (ζ : D.EM) :
    vge v (-D.n0 v) ((D.GM F (D.tpE ζ)).coeff (D.collapseExponent p ζ)) := by
  rw [coeff_GM]
  have a1 := (vge_unit v (hV.2.2.2.2.2.2.1 (D.collapseExponent p ζ))).2.1
  have a2 := (vge_unit v (hV.2.2.2.2.2.2.1 (D.phE p ζ))).1
  have a3 : vge v (-D.n0 v) (F.coeff (D.phE p ζ)) := by
    have := cge_of_bge hD hF hF0 (D.phE p ζ)
    rw [zero_sub] at this; exact this
  have a4 := vge_natCast v (∏ x, (D.collapseExponent p ζ x + D.tpE ζ x).choose (D.tpE ζ x))
  have := vge_mul v a1 (vge_mul v (vge_mul v a2 a3) a4)
  exact vge_mono v (by linarith) this

theorem vge_Lam_monomial (hD : DVRHyp v p) (hV : D.Valid v p) {F : MvPolynomial (D.OL × Fin D.r) K}
    (hF0 : bge v 0 F) {ζ : D.EM} (hζ : D.GoodE p ζ) :
    vge v (D.n0 v - D.kapD p / 2) (D.abelian₂ p F (monomial ζ 1)) := by
  rw [Lam_monomial]
  have a1 := hF0 (D.phE p ζ)
  have a2 := (vge_unit v (hV.2.2.2.2.2.2.1 (D.phE p ζ))).1
  have a3 := vge_vN hD (fact_ne_zero (D.phE p ζ))
  have a4 := D.fact_phE_lower hD hV.1 hζ
  have := vge_mul v (vge_mul v a1 (vge_mul v a2 (vge_one v))) a3
  exact vge_mono v (by linarith) this

private theorem lam_eq_sum_coeff_mul_ga_mul_fact (p : ℕ) (F : MvPolynomial (D.OL × Fin D.r) K)
    (Z : MvPolynomial (D.ML × Fin D.r) K) :
    D.abelian₂ p F Z = ∑ α ∈ F.support, F.coeff α * (D.ga α * (D.ph p Z).coeff α) * (fact α : K) := by
  unfold abelian₂ fock
  refine Finset.sum_congr rfl fun α _ => ?_
  congr 2
  unfold gaAct
  rw [MvPolynomial.coeff_sum]
  simp only [MvPolynomial.coeff_monomial]
  rw [Finset.sum_ite_eq']
  split_ifs with h
  · rfl
  · rw [show (D.ph p Z).coeff α = 0 by simpa using h, mul_zero]

private theorem lam_sum_right (p : ℕ) (F : MvPolynomial (D.OL × Fin D.r) K) {ι : Type} (s : Finset ι)
    (f : ι → MvPolynomial (D.ML × Fin D.r) K) :
    D.abelian₂ p F (∑ i ∈ s, f i) = ∑ i ∈ s, D.abelian₂ p F (f i) := by

  simp only [lam_eq_sum_coeff_mul_ga_mul_fact, map_sum, MvPolynomial.coeff_sum, Finset.mul_sum, Finset.sum_mul]
  exact Finset.sum_comm

private theorem lam_smul_right (p : ℕ) (F : MvPolynomial (D.OL × Fin D.r) K) (c : K)
    (Z : MvPolynomial (D.ML × Fin D.r) K) : D.abelian₂ p F (c • Z) = c * D.abelian₂ p F Z := by
  simp only [lam_eq_sum_coeff_mul_ga_mul_fact, map_smul, MvPolynomial.coeff_smul, smul_eq_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun α _ => ?_
  ring

theorem Lam_monomial_c (F : MvPolynomial (D.OL × Fin D.r) K) (ζ : D.EM) (c : K) :
    D.abelian₂ p F (monomial ζ c) = c * D.abelian₂ p F (monomial ζ 1) := by
  rw [show (monomial ζ c : MvPolynomial (D.ML × Fin D.r) K) = c • monomial ζ 1 by
    rw [MvPolynomial.smul_monomial, smul_eq_mul, mul_one], lam_smul_right]

theorem Lam_dg (F : MvPolynomial (D.OL × Fin D.r) K) (g : D.EM → K) (W : MvPolynomial (D.ML × Fin D.r) K) :
    D.abelian₂ p F (dg g W) = ∑ ζ ∈ W.support, g ζ * W.coeff ζ * D.abelian₂ p F (monomial ζ 1) := by
  rw [dg_eq_lsup, lsup_apply, lam_sum_right]
  refine Finset.sum_congr rfl fun ζ _ => ?_
  rw [lam_smul_right, Lam_monomial_c]
  ring

theorem ldeg_tpE (ζ : D.EM) (t : D.Tau) : ldeg (D.tpE ζ) (Sum.inr t) = ldeg ζ (D.mtp t) := by
  unfold ldeg
  rfl

theorem msg_of_eOut_ne_zero (ζ : D.EM) (i : D.ML) (a : Fin D.r) (h : eOut D.outP ζ (i, a) ≠ 0) :
    D.msg i = true := by
  rw [eOut_apply] at h
  split_ifs at h with hi
  · rcases i with b | t | t | t
    · simp [outP, outB] at hi
    · rfl
    · simp [outP, outB] at hi
    · rfl
  · exact absurd rfl h

theorem value_monomial {C0 : ℝ} (hD : DVRHyp v p) (h1 : 1 ≤ C0) (hV : D.Valid v p) (hH : D.HypH p 13)
    (hE : StepE K v p) {F : MvPolynomial (D.OL × Fin D.r) K} (hF : D.InXX p F) (hF0 : bge v 0 F)
    {cst : D.Tau → (Fin D.r → ℕ) → ℕ → K} {gam : D.Tau → (Fin D.r → ℕ) → (Fin D.r → ℕ) → K}
    (hdig : D.DigOK v p cst gam)
    (Pj : MvPolynomial (D.ML × Fin D.r) K →ₗ[K] MvPolynomial (D.ML × Fin D.r) K)
    (hP1 : ∀ ζ ζ' : D.EM, ζ' ∈ (Pj (monomial ζ 1)).support → D.SameBlockAlt ζ ζ')
    (hP2 : ∀ ζ : D.EM, D.GoodE p ζ → bge v (vN v (fact ζ) / 2 - D.Dm p C0) (Pj (monomial ζ 1)))
    (hP4 : ∀ (A : MvPolynomial (D.ML × Fin D.r) K) (ζ : D.EM), A ∈ PolK K D.r (fun i => ldeg ζ i) →
        (∀ (j : Fin D.J) (i : Fin (D.nch j)), vala D.msg (D.chainSet j i) (D.th j i - D.sl j i) A) →
        fock A (Pj (monomial ζ 1)) = fock A (monomial ζ 1))
    (gm : D.EM → K)
    (hgm : ∀ ζ, D.LabLowE p ζ → ((D.c : ℕ) : WithTop ℚ) ≤ v (gm ζ - (D.gaP p gam ζ)⁻¹))
    {ζ : D.EM} (hζ : D.GoodE p ζ) :
    vge v (D.c + D.n0 v - 2 * D.kapD p - D.Dm p C0)
      (D.abelian₂ p F (dg gm (Pj (monomial ζ 1))) - D.abelian₂ p F (dg gm (monomial ζ 1))) := by
  classical
  have hDm := D.Dm_nonneg (two_le_p hD) hV.1 h1
  obtain ⟨Q0, E', hQ, hQ0, hE'⟩ := hE hD D hV hH F hF hF0 (D.tpE ζ) (fun b a => by simp [tpE])
    (fun t => by rw [ldeg_tpE]; exact hζ.2.2.2.2 t) (D.labF ζ)
  set μ := eOut D.outP ζ with hμ
  set A := hcomp (fun i => ldeg ζ i) (monomial μ 1 * Q0) with hA
  set κ := D.kapC cst ζ with hκ
  set e : D.EM → K := fun ζ' =>
    gm ζ' * D.gaP p gam ζ' * (D.GM F (D.tpE ζ)).coeff (D.collapseExponent p ζ') - A.coeff ζ' with he

  have key : ∀ W : MvPolynomial (D.ML × Fin D.r) K, (∀ ζ' ∈ W.support, D.SameBlockAlt ζ ζ') →
      D.abelian₂ p F (dg gm W) = κ * fock A W + ∑ ζ' ∈ W.support, κ * (W.coeff ζ' * e ζ' * (fact ζ' : K)) := by
    intro W hW
    rw [Lam_dg, fock_eq_sum_right, Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun ζ' hζ' => ?_
    have hb := hW ζ' hζ'
    rw [D.Lam_monomial_blk hV hdig F (hζ.good_exponent_same_block D hb).1, D.tangent_exponent_same_block hb, D.kappa_constant_same_block cst hb, he]
    ring

  have herr : ∀ ζ', D.SameBlockAlt ζ ζ' → vge v (D.c - D.n0 v) (e ζ') := by
    intro ζ' hb
    have hl := (hζ.good_exponent_same_block D hb).1
    have c1 : A.coeff ζ' = Q0.coeff (eIn D.outP ζ') := by
      rw [hA, coeff_hcomp, if_pos hb.1]
      conv_lhs => rw [← eOut_add_eIn D.outP ζ', D.output_exponent_same_block hb]
      rw [coeff_monomial_mul, one_mul]
    have c2 : (D.GM F (D.tpE ζ)).coeff (D.collapseExponent p ζ') =
        Q0.coeff (eIn D.outP ζ') + E'.coeff (eIn D.outP ζ') := by
      rw [← D.coeff_digitPart_eIn p hl, D.label_function_same_block hb, ← MvPolynomial.coeff_add, ← hQ]; rfl
    have hu := D.v_gaP hV hdig hl
    have hu0 := ne_zero_of_v_eq_zero hu
    have c3 : e ζ' = (gm ζ' - (D.gaP p gam ζ')⁻¹) * D.gaP p gam ζ' *
        (D.GM F (D.tpE ζ)).coeff (D.collapseExponent p ζ') + E'.coeff (eIn D.outP ζ') := by
      rw [he]; simp only; rw [c1, sub_mul, inv_mul_cancel₀ hu0]
      have := c2
      linear_combination this
    rw [c3]
    have b1 : vge v (D.c : ℝ) (gm ζ' - (D.gaP p gam ζ')⁻¹) := (vge_natCast_bound v _ _).mpr (hgm ζ' hl)
    have b2 := (vge_unit v hu).1
    have b3 : vge v (-D.n0 v) ((D.GM F (D.tpE ζ)).coeff (D.collapseExponent p ζ')) := by
      rw [← D.tangent_exponent_same_block hb]; exact D.vge_coeff_GM hD hV hF.1 hF0 ζ'
    refine vge_add v ?_ (hE' _)
    exact vge_mono v (by linarith) (vge_mul v (vge_mul v b1 b2) b3)

  have hterm : ∀ ζ', D.SameBlockAlt ζ ζ' → ∀ w : K,
      vge v (vN v (fact ζ) / 2 - D.Dm p C0 - vN v (fact ζ') / 2) w →
      vge v (D.c + D.n0 v - 2 * D.kapD p - D.Dm p C0) (κ * (w * e ζ' * (fact ζ' : K))) := by
    intro ζ' hb w hw
    have hg' := hζ.good_exponent_same_block D hb
    have k1 := D.vge_kapC hD hdig hg'.1
    rw [D.kappa_constant_same_block cst hb] at k1
    have k2 := D.vge_kapC hD hdig hζ.1
    have w1 := D.wt_lower hD hV.1 hg'
    have w2 := D.wt_lower hD hV.1 hζ
    have f1 := vge_vN hD (fact_ne_zero ζ')
    have t1 := vge_mul v (vge_mul v hw (herr ζ' hb)) f1
    rcases le_total (vN v (fact ζ')) (vN v (fact ζ)) with hle | hle
    · exact vge_mono v (by linarith) (vge_mul v k1 t1)
    · exact vge_mono v (by linarith) (vge_mul v k2 t1)
  have hs1 : ∀ ζ' ∈ (Pj (monomial ζ 1)).support, D.SameBlockAlt ζ ζ' := fun ζ' h => hP1 ζ ζ' h
  have hs2 : ∀ ζ' ∈ (monomial ζ (1 : K)).support, D.SameBlockAlt ζ ζ' := by
    intro ζ' h
    have := support_monomial_subset h
    rw [Finset.mem_singleton] at this
    rw [this]; exact TwistData.SameBlockAlt.refl D ζ
  have hAv : ∀ (j : Fin D.J) (i : Fin (D.nch j)), vala D.msg (D.chainSet j i) (D.th j i - D.sl j i) A :=
    fun j i => vala_hcomp _ (vala_mul_left_nonneg
      (valS_monomial_nonneg_of_vec μ 1 (D.msg_of_eOut_ne_zero ζ)) (hQ0 j i))
  rw [key _ hs1, key _ hs2, hP4 A ζ (hcomp_mem_PolK _ _) hAv, add_sub_add_left_eq_sub]
  refine vge_sub v (vge_sum v _ _ fun ζ' h => hterm ζ' (hs1 ζ' h) _ (hP2 ζ hζ ζ'))
    (vge_sum v _ _ fun ζ' h => hterm ζ' (hs2 ζ' h) _ ?_)
  have := support_monomial_subset h
  rw [Finset.mem_singleton] at this
  rw [this, coeff_monomial, if_pos rfl]
  exact vge_mono v (by linarith) (vge_one v)

end TwistData

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutedExponentApplyLabel =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.OmegaValue =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.OmegaValue", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.GlobalTheory\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.FockMonomialRight\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.MlabNotMemYset\nimport Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutedExponentApplyBlock\npublic import Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.SubstitutedExponentApplyLabel\nimport Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.TestBoundOfRhoAndNormSets\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.PlaneGram

variable {K : Type} [Field K] [CharZero K] {v : AddValuation K (WithTop ℚ)} {p : ℕ} {C0 : ℝ}

theorem omega_value (hD : DVRHyp v p) (h1 : 1 ≤ C0) (D : TwistData K) (hV : D.Valid v p) (hH : D.HypH p 13)
    (hE : StepE K v p) {F : MvPolynomial (D.OL × Fin D.r) K} (hF : D.InXX p F) (hF0 : bge v 0 F)
    {cst : D.Tau → (Fin D.r → ℕ) → ℕ → K} {gam : D.Tau → (Fin D.r → ℕ) → (Fin D.r → ℕ) → K}
    (hdig : D.DigOK v p cst gam)
    (Pj : MvPolynomial (D.ML × Fin D.r) K →ₗ[K] MvPolynomial (D.ML × Fin D.r) K)
    (hP1 : ∀ ζ ζ' : D.EM, ζ' ∈ (Pj (monomial ζ 1)).support → D.SameBlockAlt ζ ζ')
    (hP2 : ∀ ζ : D.EM, D.GoodE p ζ → bge v (vN v (fact ζ) / 2 - D.Dm p C0) (Pj (monomial ζ 1)))
    (hP4 : ∀ (A : MvPolynomial (D.ML × Fin D.r) K) (ζ : D.EM), A ∈ PolK K D.r (fun i => ldeg ζ i) →
        (∀ (j : Fin D.J) (i : Fin (D.nch j)), vala D.msg (D.chainSet j i) (D.th j i - D.sl j i) A) →
        fock A (Pj (monomial ζ 1)) = fock A (monomial ζ 1))
    (gp gm : D.EM → K) (hgp0 : ∀ ζ, 0 ≤ v (gp ζ))
    (happ : ∀ ζ, D.LabLowE p ζ → ((D.c : ℕ) : WithTop ℚ) ≤ v (gp ζ - D.gaP p gam ζ) ∧
        ((D.c : ℕ) : WithTop ℚ) ≤ v (gm ζ - (D.gaP p gam ζ)⁻¹))
    (Z : MvPolynomial (D.ML × Fin D.r) K) (hZi : Integral v Z) (hZg : D.Good p Z) :
    vge v (D.c + D.n0 v - 2 * D.kapD p - D.Dm p C0)
      (D.abelian₂ p F (dg gm (Pj (dg gp Z))) - D.abelian₂ p F Z) := by
  have key : ∀ W, D.abelian₂ p F W = fock F (dg D.ga (D.ph p W)) := fun W => by
    simp only [TwistData.abelian₂, _root_.Formalism.MainNotions.PlaneGram.TwistData.gaAct_eq]
  have hLsum : ∀ (s : Finset D.EM) (f : D.EM → MvPolynomial (D.ML × Fin D.r) K),
      D.abelian₂ p F (∑ i ∈ s, f i) = ∑ i ∈ s, D.abelian₂ p F (f i) := by
    intro s f

    simp only [key, map_sum, fock_sum_right]
  have hLsmul : ∀ (c : K) (W : MvPolynomial (D.ML × Fin D.r) K), D.abelian₂ p F (c • W) = c * D.abelian₂ p F W := by
    intro c W
    simp only [key, map_smul, fock_smul_right]
  have hmon : ∀ (g : D.EM → K) (ζ : D.EM), dg g (monomial ζ (1 : K)) = g ζ • monomial ζ (1 : K) := by
    intro g ζ
    rw [dg_monomial, MvPolynomial.smul_monomial, smul_eq_mul]
  have hZ : Z = ∑ ζ ∈ Z.support, Z.coeff ζ • monomial ζ (1 : K) := by
    conv_lhs => rw [Z.as_sum]
    refine Finset.sum_congr rfl fun ζ _ => ?_
    rw [MvPolynomial.smul_monomial, smul_eq_mul, mul_one]
  have hp2 : 2 ≤ p := by have := hD.five_le; omega
  have hr1 : 1 ≤ D.r := hV.1
  have hkap : 0 ≤ D.kapD p := by
    unfold TwistData.kapD kap
    exact Finset.sum_nonneg fun i _ => mul_nonneg (Nat.cast_nonneg _) (lg_nonneg' hp2 hr1 _)
  have hDm : 0 ≤ D.Dm p C0 := TwistData.Dm_nonneg (D := D) hp2 hr1 h1

  rw [hZ, map_sum (dg gp), map_sum Pj, map_sum (dg gm), hLsum, hLsum, ← Finset.sum_sub_distrib]
  simp only [map_smul, hLsmul]
  apply vge_sum'
  intro ζ hζ
  rw [← mul_sub]
  have hgood : D.GoodE p ζ := hZg ζ hζ
  have hlow : D.LabLowE p ζ := hgood.1
  have h1' : D.abelian₂ p F (dg gm (Pj (dg gp (monomial ζ (1 : K))))) =
      gp ζ * D.abelian₂ p F (dg gm (Pj (monomial ζ (1 : K)))) := by
    rw [hmon, map_smul, map_smul, hLsmul]
  have h2' : D.abelian₂ p F (dg gm (monomial ζ (1 : K))) = gm ζ * D.abelian₂ p F (monomial ζ (1 : K)) := by
    rw [hmon, hLsmul]
  have hexp : D.abelian₂ p F (dg gm (Pj (dg gp (monomial ζ (1 : K))))) - D.abelian₂ p F (monomial ζ (1 : K)) =
      gp ζ * (D.abelian₂ p F (dg gm (Pj (monomial ζ (1 : K)))) - D.abelian₂ p F (dg gm (monomial ζ (1 : K)))) +
        (gp ζ * gm ζ - 1) * D.abelian₂ p F (monomial ζ (1 : K)) := by
    rw [h1', h2']
    ring
  rw [hexp]
  have hval := TwistData.value_monomial (D := D) hD h1 hV hH hE hF hF0 hdig Pj hP1 hP2 hP4 gm
    (fun ζ h => (happ ζ h).2) hgood
  have hZζ : vge v 0 (Z.coeff ζ) := (vge_zero_iff v _).mpr (hZi ζ)
  have hgp' : vge v 0 (gp ζ) := (vge_zero_iff v _).mpr (hgp0 ζ)
  have t1 : vge v (D.c + D.n0 v - 2 * D.kapD p - D.Dm p C0)
      (gp ζ * (D.abelian₂ p F (dg gm (Pj (monomial ζ (1 : K)))) - D.abelian₂ p F (dg gm (monomial ζ (1 : K))))) := by
    have := vge_mul' v hgp' hval
    simpa using this
  have hgaP : v (D.gaP p gam ζ) = 0 := TwistData.v_gaP (D := D) hV hdig hlow
  have hg0 : D.gaP p gam ζ ≠ 0 := by
    intro h
    rw [h] at hgaP
    simp at hgaP
  have hgaP' : vge v 0 (D.gaP p gam ζ) := (vge_zero_iff v _).mpr (le_of_eq hgaP.symm)
  have hc1 : vge v (D.c : ℝ) (gp ζ - D.gaP p gam ζ) := by
    have := (vge_rat_iff (v := v) (D.c : ℚ) (gp ζ - D.gaP p gam ζ)).mpr (by exact_mod_cast (happ ζ hlow).1)
    simpa using this
  have hc2 : vge v (D.c : ℝ) (gm ζ - (D.gaP p gam ζ)⁻¹) := by
    have := (vge_rat_iff (v := v) (D.c : ℚ) (gm ζ - (D.gaP p gam ζ)⁻¹)).mpr (by exact_mod_cast (happ ζ hlow).2)
    simpa using this
  have hgm' : vge v 0 (gm ζ) := by
    have h3 : gm ζ = (gm ζ - (D.gaP p gam ζ)⁻¹) + (D.gaP p gam ζ)⁻¹ := by ring
    rw [h3]
    refine _root_.Formalism.MainNotions.PlaneGram.vge_add v (vge_mono' v (by positivity) hc2) ?_
    rw [vge_zero_iff v, AddValuation.map_inv, hgaP, neg_zero]
  have hsplit : gp ζ * gm ζ - 1 =
      (gp ζ - D.gaP p gam ζ) * gm ζ + D.gaP p gam ζ * (gm ζ - (D.gaP p gam ζ)⁻¹) := by
    rw [mul_sub (D.gaP p gam ζ), mul_inv_cancel₀ hg0]
    ring
  have t2 : vge v (D.c : ℝ) (gp ζ * gm ζ - 1) := by
    rw [hsplit]
    refine _root_.Formalism.MainNotions.PlaneGram.vge_add v ?_ ?_
    · simpa using vge_mul' v hc1 hgm'
    · simpa using vge_mul' v hgaP' hc2
  have hΛ := TwistData.vge_Lam_monomial (D := D) hD hV hF0 hgood
  have t3 := vge_mul' v t2 hΛ
  have t3' : vge v (D.c + D.n0 v - 2 * D.kapD p - D.Dm p C0)
      ((gp ζ * gm ζ - 1) * D.abelian₂ p F (monomial ζ (1 : K))) := vge_mono' v (by linarith) t3
  simpa using vge_mul' v hZζ (_root_.Formalism.MainNotions.PlaneGram.vge_add v t1 t3')

theorem stepDEF_of (h1 : 1 ≤ C0) (hDIG : DIG K v p) (hG : StepG K v p) (hP : StepP K v p C0)
    (hE : StepE K v p) : StepDEF K v p C0 := by
  intro hD D hV hH _ F hF hF0
  have hF0' := (exists_of_vBB_zero v F hF0).2
  obtain ⟨Pj, hP1, hP2, hP3, hP4, hP5⟩ := hP hD D hV
  obtain ⟨cst, gam, hdig⟩ := D.digOK_exists hDIG hD hV.2.2.1
  obtain ⟨gp, gm, hgp, hgm, happ, hcost⟩ := hG hD D hV cst gam hdig
  obtain ⟨hN, hI, hGd, hch, hY⟩ :=
    omega_clauses hD h1 D hV Pj ⟨hP1, hP2, hP3, hP4, hP5⟩ gp gm hgp hgm hcost
  refine ⟨(dg gm).comp (Pj.comp (dg gp)), ⌈D.Dm p C0 + D.kapD p / 2⌉₊, hN, hI, hGd, hch, hY, ?_⟩
  intro Z hZi hZg
  exact omega_value hD h1 D hV hH hE hF hF0' hdig Pj hP1 hP2 hP4 gp gm hgp happ Z hZi hZg

end Formalism.MainNotions.PlaneGram
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.MonomialOrderSegments.OmegaValue =====
