module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DilationUnipotentWeylMeasure
public import Formalism.HermitianCurvature.StatementJF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartIntegralLocal
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SandwichRhoAction
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothnessOnGoodSet
import Mathlib.Tactic.Lemma
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralAeConvergenceContinuity

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.LetterPairStep, Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothWordsAll

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LetterPairStep =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.LetterPairStep", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DilationUnipotentWeylMeasure\npublic import Formalism.HermitianCurvature.StatementJF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartIntegralLocal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SandwichRhoAction\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothnessOnGoodSet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.LetterPairRecursion

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF Formalism.FourierDecayAlt.P.B4 Formalism.FourierDecayAlt.P.SandwichRhoAction Formalism.FourierDecayAlt.P.ChartIntegralLocal Formalism.FourierDecayAlt.P.SmoothnessOnGoodSet

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]

lemma step_pair (D : RealPlaceData k r Wp Wq) {m : ℕ} {F : Mat k r → (Wq →L[ℂ] Wp)} (hFm : CkOn (m : ℕ∞) (GV k r) F)
    (hDom1 : ∀ u v : List (Mat k r), (∀ X ∈ u, unitLie k r X) → (∀ X ∈ v, unitLie k r X) → u.length + v.length ≤ m →
      ∀ g ∈ Om k r D.z D.z',
        AEStronglyMeasurable (fun p => rho D p (dLR (u.map (AdL p)) (v.map (AdR p)) F) g) D.μSS)
    (hDom2 : ∀ K : Set (Mat k r), IsCompact K → K ⊆ Om k r D.z D.z' →
      ∃ b : SS k r → ℝ, Integrable b D.μSS ∧
        ∀ u v : List (Mat k r), (∀ X ∈ u, unitLie k r X) → (∀ X ∈ v, unitLie k r X) →
          u.length + v.length ≤ m → ∀ g ∈ K, ∀ᵐ p ∂D.μSS,
            ‖rho D p (dLR (u.map (AdL p)) (v.map (AdR p)) F) g‖ ≤ b p)
    (b : Bool) {X : Mat k r} (hX : unitLie k r X) {u v u2 v2 : List (Mat k r)}
    (hu : ∀ Y ∈ u, unitLie k r Y) (hv : ∀ Y ∈ v, unitLie k r Y) (hu2 : ∀ Y ∈ u2, unitLie k r Y)
    (hv2 : ∀ Y ∈ v2, unitLie k r Y) (hl2 : u2.length + v2.length ≤ m)
    (hl : u.length + v.length + 1 ≤ u2.length + v2.length)
    (hdl : ∀ f : Mat k r → (Wq →L[ℂ] Wp), dLR u2 v2 f = op b X (dLR u v f))
    (IH : ∀ g ∈ Om k r D.z D.z', dLR u v (JF D F) g = ∫ p, xiP D p • dLR u v (rho D p F) g ∂D.μSS) :
    ∀ g ∈ Om k r D.z D.z', dLR u2 v2 (JF D F) g = ∫ p, xiP D p • dLR u2 v2 (rho D p F) g ∂D.μSS := by
  intro g hg
  have hgG : g ∈ GV k r := hg.1
  have hXL : inLie k r X := hX.1
  obtain ⟨ε, hε, hball⟩ := curve_ball D hg b hXL
  obtain ⟨K, hKc, hKO, hcvK⟩ : ∃ K : Set (Mat k r), IsCompact K ∧ K ⊆ Om k r D.z D.z' ∧
      ∀ t ∈ Metric.closedBall (0 : ℝ) ε, cv b X t g ∈ K :=
    ⟨(fun t : ℝ => cv b X t g) '' Metric.closedBall (0 : ℝ) ε,
      (isCompact_closedBall (0 : ℝ) ε).image (cv_continuous b X g),
      by rintro _ ⟨t, ht, rfl⟩; exact hball t ht,
      fun t ht => ⟨t, ht, rfl⟩⟩
  have hgK : g ∈ K := by
    have h0 := hcvK 0 (Metric.mem_closedBall_self hε.le)
    rwa [cv_zero] at h0
  have hKG : K ⊆ GV k r := fun x hx => (hKO hx).1
  obtain ⟨bb, hbbi, hbb⟩ := hDom2 K hKc hKO
  have hWSc : ({(u, v), (u2, v2)} : Set (List (Mat k r) × List (Mat k r))).Countable :=
    (Set.countable_singleton _).insert _
  have hWSl : ∀ uv ∈ ({(u, v), (u2, v2)} : Set (List (Mat k r) × List (Mat k r))),
      (∀ X ∈ uv.1, unitLie k r X) ∧ (∀ X ∈ uv.2, unitLie k r X) ∧ uv.1.length + uv.2.length ≤ m := by
    intro uv huv
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at huv
    rcases huv with rfl | rfl
    · exact ⟨hu, hv, show u.length + v.length ≤ m by omega⟩
    · exact ⟨hu2, hv2, hl2⟩
  have hgood := good_set D hFm hKc hKG hWSc hWSl bb (fun uv huv x hx =>
    hbb uv.1 uv.2 (hWSl uv huv).1 (hWSl uv huv).2.1 (hWSl uv huv).2.2 x hx)
  obtain ⟨S, hSae, hSprop⟩ : ∃ S : Set (SS k r), (∀ᵐ p ∂D.μSS, p ∈ S) ∧ ∀ p ∈ S, D.inSS p ∧
      ∀ uv ∈ ({(u, v), (u2, v2)} : Set (List (Mat k r) × List (Mat k r))), ∀ x ∈ K,
        ‖dLR uv.1 uv.2 (rho D p F) x‖ ≤ bb p :=
    ⟨{p | D.inSS p ∧ ∀ uv ∈ ({(u, v), (u2, v2)} : Set (List (Mat k r) × List (Mat k r))),
        ∀ x ∈ K, ‖dLR uv.1 uv.2 (rho D p F) x‖ ≤ bb p},
      hgood, fun p hp => hp⟩
  obtain ⟨G, hGin, hGout⟩ : ∃ G : SS k r → Mat k r → (Wq →L[ℂ] Wp),
      (∀ p ∈ S, G p = dLR u v (rho D p F)) ∧ (∀ p ∉ S, G p = 0) :=
    ⟨fun p => S.indicator (fun p => dLR u v (rho D p F)) p,
      fun p hp => by dsimp only; exact Set.indicator_of_mem hp _,
      fun p hp => by dsimp only; simp [hp]⟩
  have hop0 : op b X (0 : Mat k r → (Wq →L[ℂ] Wp)) = 0 := by
    have h := hdl (fun _ => 0)
    rw [dLR_zero, dLR_zero] at h
    exact h.symm
  have hG1 : ∀ p, CkOn ((1 : ℕ) : ℕ∞) (GV k r) (G p) := by
    intro p
    by_cases hp : p ∈ S
    · rw [hGin p hp]
      exact ckOn_dLR_rho D (hSprop p hp).1 hFm hu hv 1 (by omega)
    · rw [hGout p hp]
      exact ckOn_zero _
  have hGm : ∀ t ∈ Metric.ball (0 : ℝ) ε, AEStronglyMeasurable (fun p => G p (cv b X t g)) D.μSS := by
    intro t ht
    refine (hDom1 u v hu hv (by omega) _ (hball t (Metric.ball_subset_closedBall ht))).congr ?_
    filter_upwards [hSae] with p hp
    rw [hGin p hp, dLR_rho D (hSprop p hp).1]
  have hG'm : AEStronglyMeasurable (fun p => op b X (G p) g) D.μSS := by
    refine (hDom1 u2 v2 hu2 hv2 hl2 g hg).congr ?_
    filter_upwards [hSae] with p hp
    rw [hGin p hp, ← hdl, dLR_rho D (hSprop p hp).1]
  have hb0 : ∀ p, ‖G p g‖ ≤ ‖bb p‖ := by
    intro p
    by_cases hp : p ∈ S
    · rw [hGin p hp]
      exact ((hSprop p hp).2 (u, v) (by simp) g hgK).trans (Real.le_norm_self _)
    · rw [hGout p hp]
      simp
  have hb1 : ∀ t ∈ Metric.ball (0 : ℝ) ε, ∀ p, ‖op b X (G p) (cv b X t g)‖ ≤ ‖bb p‖ := by
    intro t ht p
    by_cases hp : p ∈ S
    · rw [hGin p hp, ← hdl]
      exact ((hSprop p hp).2 (u2, v2) (by simp) _
        (hcvK t (Metric.ball_subset_closedBall ht))).trans (Real.le_norm_self _)
    · rw [hGout p hp, hop0]
      simp
  have hΦ : ∀ t ∈ Metric.ball (0 : ℝ) ε,
      dLR u v (JF D F) (cv b X t g) = ∫ p, xiP D p • G p (cv b X t g) ∂D.μSS := by
    intro t ht
    rw [IH _ (hball t (Metric.ball_subset_closedBall ht))]
    refine integral_congr_ae ?_
    filter_upwards [hSae] with p hp
    rw [hGin p hp]
  have key := step_loc hXL (xiP D) (norm_xiP D) (continuous_xiP D).aestronglyMeasurable G hG1 hgG hε
    hGm hG'm (fun p => ‖bb p‖) hbbi.norm hb0 hb1 (dLR u v (JF D F)) hΦ
  rw [hdl, key]
  refine integral_congr_ae ?_
  filter_upwards [hSae] with p hp
  rw [hGin p hp, hdl]

end Formalism.FourierDecayAlt.P.LetterPairRecursion
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LetterPairStep =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothWordsAll =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothWordsAll", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementJF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ChartIntegralLocal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LetterPairStep\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralAeConvergenceContinuity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SandwichRhoAction\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothnessOnGoodSet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.WeakDominationWordBounds

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF Formalism.FourierDecayAlt.P.B4 Formalism.FourierDecayAlt.P.SandwichRhoAction Formalism.FourierDecayAlt.P.ChartIntegralLocal Formalism.FourierDecayAlt.P.SmoothnessOnGoodSet
  Formalism.FourierDecayAlt.P.LetterPairRecursion

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]

section
variable (D : RealPlaceData k r Wp Wq) {m : ℕ} {F : Mat k r → (Wq →L[ℂ] Wp)} (hFm : CkOn (m : ℕ∞) (GV k r) F)
    (hDom1 : ∀ u v : List (Mat k r), (∀ X ∈ u, unitLie k r X) → (∀ X ∈ v, unitLie k r X) → u.length + v.length ≤ m →
      ∀ g ∈ Om k r D.z D.z',
        AEStronglyMeasurable (fun p => rho D p (dLR (u.map (AdL p)) (v.map (AdR p)) F) g) D.μSS)
    (hDom2 : ∀ K : Set (Mat k r), IsCompact K → K ⊆ Om k r D.z D.z' →
      ∃ b : SS k r → ℝ, Integrable b D.μSS ∧
        ∀ u v : List (Mat k r), (∀ X ∈ u, unitLie k r X) → (∀ X ∈ v, unitLie k r X) →
          u.length + v.length ≤ m → ∀ g ∈ K, ∀ᵐ p ∂D.μSS,
            ‖rho D p (dLR (u.map (AdL p)) (v.map (AdR p)) F) g‖ ≤ b p)
include hFm hDom1 hDom2

lemma words_all :
    ∀ u v : List (Mat k r), (∀ X ∈ u, unitLie k r X) → (∀ X ∈ v, unitLie k r X) → u.length + v.length ≤ m →
      ∀ g ∈ Om k r D.z D.z', dLR u v (JF D F) g = ∫ p, xiP D p • dLR u v (rho D p F) g ∂D.μSS := by
  have base : ∀ v : List (Mat k r), (∀ X ∈ v, unitLie k r X) → v.length ≤ m →
      ∀ g ∈ Om k r D.z D.z', dLR [] v (JF D F) g = ∫ p, xiP D p • dLR [] v (rho D p F) g ∂D.μSS := by
    intro v
    induction v with
    | nil => intro _ _ g _; rfl
    | cons X v ih =>
      intro hv hl
      have hv' : ∀ Y ∈ v, unitLie k r Y := fun Y hY => hv Y (List.mem_cons_of_mem _ hY)
      exact step_pair D hFm hDom1 hDom2 false (hv X List.mem_cons_self) (u := []) (v := v) (u2 := [])
        (v2 := X :: v) (by simp) hv' (by simp) hv (by simpa using hl) (by simp) (fun f => rfl)
        (ih hv' (by simp at hl; omega))
  intro u
  induction u with
  | nil => intro v _ hv hl; exact base v hv (by simpa using hl)
  | cons X u ih =>
    intro v hu hv hl
    have hu' : ∀ Y ∈ u, unitLie k r Y := fun Y hY => hu Y (List.mem_cons_of_mem _ hY)
    exact step_pair D hFm hDom1 hDom2 true (hu X List.mem_cons_self) (u := u) (v := v) (u2 := X :: u) (v2 := v)
      hu' hv hu hv hl (by simp) (fun f => rfl) (ih v hu' hv (by simp at hl; omega))

lemma ck_all : Formalism.FourierDecayAlt.Q.CkLev k r 0 m (Formalism.FourierDecayAlt.Q.OmPlus k r D.z D.z') (JF D F) := by
  classical
  haveI : CompleteSpace Wp := FiniteDimensional.complete ℂ Wp
  intro g0 hg0
  have hg0G : g0 ∈ GV k r := hg0.1.1
  have hchart0 : Formalism.FourierDecayAlt.P.Ux1.chart g0 0 = g0 := by
    have h1 : (0 : Formalism.FourierDecayAlt.P.Ux1.J k r → ℝ) = Formalism.FourierDecayAlt.P.Ux1.co 0 :=
      funext fun i => (Formalism.FourierDecayAlt.P.Ux1.co_zero i).symm
    unfold Formalism.FourierDecayAlt.P.Ux1.chart Formalism.FourierDecayAlt.P.Ux1.kap
    rw [h1, Formalism.FourierDecayAlt.P.Ux1.Mv_co, Formalism.FourierDecayAlt.P.Ux1.prj_zero]
    simp
  have hcont : ContinuousAt (Formalism.FourierDecayAlt.P.Ux1.chart g0) 0 :=
    (Formalism.FourierDecayAlt.P.Ux1.chart_diff g0 Formalism.FourierDecayAlt.P.Ux1.zero_mem_dom).continuousAt
  have hV : Formalism.FourierDecayAlt.P.Ux1.Dom k r ∩ Formalism.FourierDecayAlt.P.Ux1.chart g0 ⁻¹' Formalism.FourierDecayAlt.Q.OmPlus k r D.z D.z' ∈
      𝓝 (0 : Formalism.FourierDecayAlt.P.Ux1.J k r → ℝ) :=
    Filter.inter_mem (Formalism.FourierDecayAlt.P.Ux1.dom_open.mem_nhds Formalism.FourierDecayAlt.P.Ux1.zero_mem_dom)
      (hcont.preimage_mem_nhds ((isOpen_OmPlus _ _).mem_nhds (by rw [hchart0]; exact hg0.2)))
  obtain ⟨δ1, hδ1, hsub⟩ := Metric.mem_nhds_iff.1 hV
  set δ := δ1 / 2 with hδ
  have hδp : 0 < δ := by rw [hδ]; linarith
  have hclb : Metric.closedBall (0 : Formalism.FourierDecayAlt.P.Ux1.J k r → ℝ) δ ⊆ Metric.ball 0 δ1 :=
    Metric.closedBall_subset_ball (by rw [hδ]; linarith)
  have hcl : Metric.closedBall (0 : Formalism.FourierDecayAlt.P.Ux1.J k r → ℝ) δ ⊆ Formalism.FourierDecayAlt.P.Ux1.Dom k r :=
    fun Y hY => (hsub (hclb hY)).1
  set K := Formalism.FourierDecayAlt.P.Ux1.chart g0 '' Metric.closedBall (0 : Formalism.FourierDecayAlt.P.Ux1.J k r → ℝ) δ with hKdef
  have hK : IsCompact K :=
    (isCompact_closedBall _ _).image_of_continuousOn ((Formalism.FourierDecayAlt.P.Ux1.chart_cd g0).continuousOn.mono hcl)
  have hKOm : K ⊆ Om k r D.z D.z' := by
    rintro _ ⟨Y, hY, rfl⟩
    exact (⟨Formalism.FourierDecayAlt.P.Ux1.chart_mem hg0G (hcl hY), (hsub (hclb hY)).2⟩ :
      Formalism.FourierDecayAlt.P.Ux1.chart g0 Y ∈ GV k r ∩ Formalism.FourierDecayAlt.Q.OmPlus k r D.z D.z')
  have hKG : K ⊆ GV k r := fun x hx => (show x ∈ GV k r ∩ Formalism.FourierDecayAlt.Q.OmPlus k r D.z D.z' from hKOm hx).1
  have hmemK : ∀ Y ∈ Metric.ball (0 : Formalism.FourierDecayAlt.P.Ux1.J k r → ℝ) δ, Formalism.FourierDecayAlt.P.Ux1.chart g0 Y ∈ K :=
    fun Y hY => ⟨Y, Metric.ball_subset_closedBall hY, rfl⟩
  obtain ⟨bd, hbdI, hbd⟩ := hDom2 K hK hKOm
  set WS : Set (List (Mat k r) × List (Mat k r)) :=
    (fun w : List (Formalism.FourierDecayAlt.P.Ux1.J k r) => (w.map Formalism.FourierDecayAlt.P.Ux1.Lt, ([] : List (Mat k r)))) ''
      {w | w.length ≤ m} with hWSdef
  have hWS : WS.Countable := (Set.to_countable _).image _
  have hunit : ∀ w : List (Formalism.FourierDecayAlt.P.Ux1.J k r), ∀ X ∈ w.map Formalism.FourierDecayAlt.P.Ux1.Lt, unitLie k r X := by
    intro w X hX
    obtain ⟨i, _, rfl⟩ := List.mem_map.1 hX
    exact Formalism.FourierDecayAlt.P.Ux1.Lt_unit i
  have hWSl : ∀ uv ∈ WS, (∀ Y ∈ uv.1, unitLie k r Y) ∧ (∀ Y ∈ uv.2, unitLie k r Y) ∧
      uv.1.length + uv.2.length ≤ m := by
    rintro _ ⟨w, hw, rfl⟩
    exact ⟨hunit w, by simp, by simpa using hw⟩
  have good := good_set D hFm hK hKG hWS hWSl bd fun uv huv g' hg' =>
    hbd uv.1 uv.2 (hWSl uv huv).1 (hWSl uv huv).2.1 (hWSl uv huv).2.2 g' hg'
  set P0 : Set (SS k r) := {p | D.inSS p ∧ ∀ uv ∈ WS, ∀ g' ∈ K, ‖dLR uv.1 uv.2 (rho D p F) g'‖ ≤ bd p} with hP0
  have goodae : ∀ᵐ p ∂D.μSS, p ∈ P0 := good
  set hK' : SS k r → Mat k r → (Wq →L[ℂ] Wp) := fun p => if p ∈ P0 then rho D p F else fun _ => 0 with hK'def
  have hsel : ∀ p (u' v' : List (Mat k r)),
      dLR u' v' (hK' p) = if p ∈ P0 then dLR u' v' (rho D p F) else fun _ => 0 := by
    intro p u' v'
    by_cases hp : p ∈ P0
    · simp only [hK'def, if_pos hp]
    · simp only [hK'def, if_neg hp, dLR_zero]
  have hAL := int_chart_loc (xiP D) (fun p => norm_xiP D p) (continuous_xiP D).aestronglyMeasurable hK' m
    (fun p => by
      by_cases hp : p ∈ P0
      · simp only [hK'def, if_pos hp]; exact ckOn_rho D hp.1 hFm
      · simp only [hK'def, if_neg hp]; exact ckOn_zero _)
    hg0G hδp hcl
    (fun w hw Y hY => by
      refine (hDom1 (w.map Formalism.FourierDecayAlt.P.Ux1.Lt) [] (hunit w) (by simp) (by simpa using hw) _
        (hKOm (hmemK Y hY))).congr ?_
      filter_upwards [goodae] with p hp
      rw [hsel, if_pos hp, dLR_rho D hp.1])
    (fun p => ‖bd p‖) hbdI.norm
    (fun w hw Y hY p => by
      rw [hsel]
      by_cases hp : p ∈ P0
      · rw [if_pos hp]; exact (hp.2 _ ⟨w, hw, rfl⟩ _ (hmemK Y hY)).trans (Real.le_norm_self _)
      · rw [if_neg hp, norm_zero]; exact norm_nonneg _)
  have hAL' : ContDiffOn ℝ ((m : ℕ) : WithTop ℕ∞) (fun Y => JF D F (Formalism.FourierDecayAlt.P.Ux1.chart g0 Y))
      (Metric.ball 0 δ) := by
    refine hAL.congr fun Y _ => ?_
    show ∫ p, xiP D p • rho D p F _ ∂D.μSS = _
    refine integral_congr_ae ?_
    filter_upwards [goodae] with p hp
    simp only [hK'def, if_pos hp]
  obtain ⟨U, F', hU, hgU, hF', hUF⟩ := ck_at_of_chart hg0G hδp hAL'
  exact ⟨U, F', hU, hgU, hF', fun g hg hgl => hUF g hg hgl.1⟩

end

theorem _root_.Formalism.FourierDecayAlt.P.bessel_words_of_domain : JWordsOfDom := by
  intro hDom k r Wp Wq _ _ _ _ _ _ D A m F hThr hCC
  obtain ⟨hDom1, hDom2⟩ := hDom k r Wp Wq D A m F hThr hCC
  obtain ⟨c, hc⟩ := hCC
  have hFm : CkOn (m : ℕ∞) (GV k r) F := hc.1
  have hW := words_all D hFm hDom1 hDom2
  refine ⟨ck_all D hFm hDom1 hDom2, fun u v hu hv hl g hg => ?_⟩
  obtain ⟨bd, hbdI, hbd⟩ := hDom2 {g} isCompact_singleton (Set.singleton_subset_iff.2 hg)
  have hb := hbd u v hu hv hl g (Set.mem_singleton g)
  refine ⟨hbdI.norm.mono' ((continuous_xiP D).aestronglyMeasurable.smul (hDom1 u v hu hv hl g hg)) ?_, ?_⟩
  · filter_upwards [hb] with p hp
    rw [norm_smul]
    exact (mul_le_of_le_one_left (norm_nonneg _) (norm_xiP D p)).trans (hp.trans (Real.le_norm_self _))
  · rw [hW u v hu hv hl g hg]
    refine integral_congr_ae ?_
    filter_upwards [Formalism.FourierDecayAlt.P.B7.ae_inSS D] with p hp
    rw [dLR_rho D hp]

end Formalism.FourierDecayAlt.P.WeakDominationWordBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothWordsAll =====
