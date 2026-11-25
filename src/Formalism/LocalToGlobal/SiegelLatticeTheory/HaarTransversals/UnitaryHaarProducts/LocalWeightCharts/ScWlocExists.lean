module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilpotentChartRightInverse
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.WuDecay
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.OpnContinuous
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NShear
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HCReprodM
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.SettingBlocks
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfNilpotentChart
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilpotentChartNormBound, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NChartP, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ScWlocExists

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilpotentChartNormBound =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilpotentChartNormBound", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilpotentChartRightInverse\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.WuDecay\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.QuantumDeterminants

noncomputable section

namespace WlocSk.NB

variable {k r : ℕ}

theorem opn_nonneg' {n : ℕ} (M : Matrix (Fin n) (Fin n) ℂ) : 0 ≤ Formalism.L2.SG.WuDecay.opn M :=
  norm_nonneg _

theorem entry_le_opn {n : ℕ} (M : Matrix (Fin n) (Fin n) ℂ) (i j : Fin n) :
    ‖M i j‖ ≤ Formalism.L2.SG.WuDecay.opn M := by
  unfold Formalism.L2.SG.WuDecay.opn
  have h1 := (Matrix.toEuclideanCLM (𝕜 := ℂ) (n := Fin n) M).le_opNorm
    (EuclideanSpace.single j (1 : ℂ))
  rw [PiLp.norm_single, norm_one, mul_one] at h1
  refine le_trans (le_of_eq ?_) ((PiLp.norm_apply_le _ i).trans h1)
  rw [Matrix.ofLp_toEuclideanCLM, PiLp.ofLp_single, Matrix.mulVec_single_one, Matrix.col_apply]

theorem one_le_opn {g : Mx k r} (hg : g ∈ Nset k r) : 1 ≤ Formalism.L2.SG.WuDecay.opn g := by
  have h := entry_le_opn g (wI k r 0) (wI k r 0)
  rw [(colB_of_mem hg).ww 0 0, if_pos rfl, norm_one] at h
  exact h

theorem mof_le (g : Mx k r) (a b : Fin r) :
    ‖mof g a b‖ ≤ r * Formalism.L2.SG.WuDecay.opn g ^ 2 := by
  rw [mof, Matrix.mul_apply]
  calc ‖∑ c, (bF g)ᴴ a c * bC g c b‖ ≤ ∑ c, ‖(bF g)ᴴ a c * bC g c b‖ := norm_sum_le _ _
    _ ≤ ∑ _c : Fin r, Formalism.L2.SG.WuDecay.opn g ^ 2 := Finset.sum_le_sum fun c _ => by
        rw [norm_mul, conjTranspose_apply, norm_star, sq]
        exact mul_le_mul (entry_le_opn g (esI k r c) (esI k r a)) (entry_le_opn g (eI k r c) (esI k r b))
          (norm_nonneg _) (opn_nonneg' _)
    _ = r * Formalism.L2.SG.WuDecay.opn g ^ 2 := by simp

theorem kof_le (g : Mx k r) (a b : Fin r) :
    ‖kof g a b‖ ≤ r * Formalism.L2.SG.WuDecay.opn g ^ 2 := by
  have h2 : ‖(2 : ℂ)‖ = 2 := by simp
  rw [kof, norm_div, h2]
  have := norm_sub_le (mof g a b) (star (mof g b a))
  rw [norm_star] at this
  have h1 := mof_le g a b
  have h3 := mof_le g b a
  linarith

theorem psiC_le {g : Mx k r} (hg : g ∈ Nset k r) (i : CI k r) :
    ‖psiC g i‖ ≤ ((r : ℝ) + 1) * Formalism.L2.SG.WuDecay.opn g ^ 2 := by
  set o := Formalism.L2.SG.WuDecay.opn g with ho
  have h1 : 1 ≤ o := one_le_opn hg
  have hoo : o ≤ o ^ 2 := by nlinarith
  have hr : (0 : ℝ) ≤ r := Nat.cast_nonneg r
  have ho2 : 0 ≤ o ^ 2 := sq_nonneg o
  rcases i with p | q | p
  · have := entry_le_opn g (eI k r p.1.1) (eI k r p.1.2)
    show ‖g _ _‖ ≤ _
    nlinarith
  · have := entry_le_opn g (eI k r q.1) (wI k r q.2)
    show ‖g _ _‖ ≤ _
    nlinarith
  · have := kof_le g p.1.1 p.1.2
    show ‖kof g _ _‖ ≤ _
    nlinarith

theorem psiR_le (g : Mx k r) (a : Fin r) :
    ‖psiR g a‖ ≤ ((r : ℝ) + 1) * Formalism.L2.SG.WuDecay.opn g ^ 2 := by
  have h := mof_le g a a
  have h' : ‖psiR g a‖ ≤ ‖mof g a a‖ := by
    rw [psiR, Real.norm_eq_abs]; exact Complex.abs_im_le_norm _
  have ho2 : 0 ≤ Formalism.L2.SG.WuDecay.opn g ^ 2 := sq_nonneg _
  nlinarith

theorem growth (g : Mx k r) (hg : g ∈ Nset k r) :
    1 + ‖(psiC g, psiR g)‖ ≤ ((r : ℝ) + 2) * Formalism.L2.SG.WuDecay.opn (Matrix.of g) ^ 2 := by
  show 1 + ‖(psiC g, psiR g)‖ ≤ ((r : ℝ) + 2) * Formalism.L2.SG.WuDecay.opn g ^ 2
  have h1 : 1 ≤ Formalism.L2.SG.WuDecay.opn g := one_le_opn hg
  have hB : 0 ≤ ((r : ℝ) + 1) * Formalism.L2.SG.WuDecay.opn g ^ 2 := by positivity
  have hC : ‖psiC g‖ ≤ ((r : ℝ) + 1) * Formalism.L2.SG.WuDecay.opn g ^ 2 :=
    (pi_norm_le_iff_of_nonneg hB).2 fun i => psiC_le hg i
  have hR : ‖psiR g‖ ≤ ((r : ℝ) + 1) * Formalism.L2.SG.WuDecay.opn g ^ 2 :=
    (pi_norm_le_iff_of_nonneg hB).2 fun a => psiR_le g a
  have hP : ‖(psiC g, psiR g)‖ ≤ ((r : ℝ) + 1) * Formalism.L2.SG.WuDecay.opn g ^ 2 := by
    rw [Prod.norm_def]; exact max_le hC hR
  nlinarith

theorem nilpotent_chart_norm_bound (x : CI k r → ℂ) (s : Fin r → ℝ) :
    1 + ‖(x, s)‖ ≤ ((r : ℝ) + 2) * Formalism.L2.SG.WuDecay.opn (Matrix.of (phi0 x s)) ^ 2 := by
  have h := growth (phi0 x s) (test_vector_mem_schwartz_bruhat x s)
  rw [(nilpotent_chart_right_inverse x s).1, (nilpotent_chart_right_inverse x s).2] at h
  exact h

end WlocSk.NB

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilpotentChartNormBound =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NChartP =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NChartP", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.OpnContinuous\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilpotentChartRightInverse\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NShear\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilpotentChartNormBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Formalism.QuantumDeterminants Formalism.L2.SG.SplitPrimeNormLemmas Matrix

noncomputable section

namespace WlocSk

theorem card_CI_le (k r : ℕ) : Fintype.card (NB.CI k r) ≤ r * r + r * (k + 1) + r * r := by
  simp only [Fintype.card_sum, Fintype.card_prod, Fintype.card_fin]
  have h : Fintype.card (NB.UP r) ≤ Fintype.card (Fin r × Fin r) :=
    Fintype.card_le_of_injective Subtype.val Subtype.val_injective
  simp only [Fintype.card_prod, Fintype.card_fin] at h
  omega

theorem dim_lt (k r : ℕ) :
    (((2 * (2 * Fintype.card (NB.CI k r) + r)) : ℕ) : ℝ) < N1H k r := by
  have hc := card_CI_le k r
  have h1 : 2 * (2 * Fintype.card (NB.CI k r) + r) < 4 * (2 * r + k + 1) ^ 2 := by
    have : 2 * (2 * Fintype.card (NB.CI k r) + r) ≤ 2 * (2 * (r * r + r * (k + 1) + r * r) + r) := by
      omega
    refine lt_of_le_of_lt this ?_
    nlinarith
  have h2 : (1 : ℝ) ≤ Real.sqrt (2 * ((r + 1 : ℕ) : ℝ)) := by
    rw [Real.one_le_sqrt]
    have : (0 : ℝ) ≤ (r : ℝ) := Nat.cast_nonneg r
    push_cast; linarith
  unfold N1H
  have h1' : (((2 * (2 * Fintype.card (NB.CI k r) + r)) : ℕ) : ℝ) < 4 * ((2 * r + k + 1 : ℕ) : ℝ) ^ 2 := by
    exact_mod_cast h1
  have hp : (0 : ℝ) ≤ 4 * ((2 * r + k + 1 : ℕ) : ℝ) ^ 2 := by positivity
  nlinarith

theorem nilpotent_chart_exists : NChart := by
  intro k r
  let eC := Fintype.equivFin (NB.CI k r)
  let Φ : CSp (Fintype.card (NB.CI k r)) r → Mt k r := fun t => NB.phi0 (t.1 ∘ eC) t.2
  let ψ : Mt k r → CSp (Fintype.card (NB.CI k r)) r := fun x => (NB.psiC x ∘ eC.symm, NB.psiR x)
  have hcomp : Continuous fun t : CSp (Fintype.card (NB.CI k r)) r => (t.1 ∘ eC, t.2) :=
    (continuous_pi fun i => (continuous_apply (eC i)).comp continuous_fst).prodMk continuous_snd
  have hΦc : Continuous Φ := NB.continuous_nilpotent_chart.comp hcomp
  have hψc : Continuous ψ :=
    (continuous_pi fun j => (continuous_apply (eC.symm j)).comp NB.continuous_psiC).prodMk
      NB.continuous_psiR
  have hleft : Function.LeftInverse ψ Φ := by
    intro t
    obtain ⟨h1, h2⟩ := NB.nilpotent_chart_right_inverse (t.1 ∘ eC) t.2
    show (NB.psiC (NB.phi0 (t.1 ∘ eC) t.2) ∘ eC.symm, NB.psiR (NB.phi0 (t.1 ∘ eC) t.2)) = t
    rw [h1, h2]
    ext j <;> simp
  have hright : ∀ x : Mt k r, Matrix.of x ∈ Nset k r → Φ (ψ x) = x := by
    intro x hx
    show NB.phi0 ((NB.psiC x ∘ eC.symm) ∘ eC) (NB.psiR x) = x
    have : (NB.psiC x ∘ eC.symm) ∘ eC = NB.psiC x := by funext i; simp
    rw [this]
    exact NB.nilpotent_chart_left_inverse hx
  have hrange : Set.range Φ = {x | Matrix.of x ∈ Nset k r} := by
    ext x
    constructor
    · rintro ⟨t, rfl⟩
      exact NB.test_vector_mem_schwartz_bruhat _ _
    · intro hx
      exact ⟨ψ x, hright x hx⟩
  refine ⟨Fintype.card (NB.CI k r), r, 2, Φ, (r : ℝ) + 2, by norm_num, dim_lt k r, by positivity,
    ?_, hrange, ?_, ?_⟩
  ·
    refine MeasurableEmbedding.of_measurable_inverse hΦc.measurable ?_ hψc.measurable hleft
    have : Set.range Φ = {x | Φ (ψ x) = x} := by
      ext x
      constructor
      · rintro ⟨t, rfl⟩
        show Φ (ψ (Φ t)) = Φ t
        rw [hleft t]
      · intro hx
        exact ⟨ψ x, hx⟩
    rw [this]
    exact (isClosed_eq (hΦc.comp hψc) continuous_id).measurableSet
  ·
    intro m₀ h0
    let G : (Fin (Fintype.card (NB.CI k r)) → ℂ) → Fin (Fintype.card (NB.CI k r)) → ℂ :=
      fun y j => NB.shG m₀ (y ∘ eC) (eC.symm j)
    let H : (Fin (Fintype.card (NB.CI k r)) → ℂ) → Fin r → ℝ := fun y => NB.shH m₀ (y ∘ eC)
    have hyc : Continuous fun y : Fin (Fintype.card (NB.CI k r)) → ℂ => y ∘ eC :=
      continuous_pi fun i => continuous_apply (eC i)
    refine ⟨fun t => (t.1 + G t.1, t.2 + H t.1), ?_, ?_⟩
    · refine NB.shear_mp (fun j => NB.rk (eC.symm j)) G H
        (fun j => ((NB.continuous_shG m₀ (eC.symm j)).comp hyc).measurable) ?_
        ((NB.continuous_shH m₀).comp hyc).measurable
      intro j y y' hyy
      refine NB.shG_dep m₀ (eC.symm j) (y ∘ eC) (y' ∘ eC) fun i hi => ?_
      exact hyy (eC i) (by simpa using hi)
    · intro t
      obtain ⟨h1, h2⟩ := NB.lmul_coord h0 (t.1 ∘ eC) t.2
      have hmem : m₀ * NB.phi0 (t.1 ∘ eC) t.2 ∈ Nset k r := UnitaryGroupBasics.mem_n_mul h0 (NB.test_vector_mem_schwartz_bruhat _ _)
      show m₀ * NB.phi0 (t.1 ∘ eC) t.2 = NB.phi0 ((t.1 + G t.1) ∘ eC) (t.2 + H t.1)
      have e1 : (t.1 + G t.1) ∘ eC = t.1 ∘ eC + NB.shG m₀ (t.1 ∘ eC) := by
        funext i; simp [G]
      rw [e1, ← h1]
      show _ = NB.phi0 (NB.psiC (m₀ * NB.phi0 (t.1 ∘ eC) t.2)) (t.2 + NB.shH m₀ (t.1 ∘ eC))
      rw [← h2]
      exact (NB.nilpotent_chart_left_inverse hmem).symm
  ·
    intro t
    have hg := NB.nilpotent_chart_norm_bound (t.1 ∘ eC) t.2
    have hn : ‖t‖ ≤ ‖(t.1 ∘ eC, t.2)‖ := by
      rw [Prod.norm_def, Prod.norm_def]
      refine max_le_max ?_ le_rfl
      refine (pi_norm_le_iff_of_nonneg (norm_nonneg _)).2 fun j => ?_
      have := norm_le_pi_norm (t.1 ∘ eC) (eC.symm j)
      simpa using this
    calc 1 + ‖t‖ ≤ 1 + ‖(t.1 ∘ eC, t.2)‖ := by linarith
      _ ≤ _ := hg

end WlocSk
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NChartP =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ScWlocExists =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ScWlocExists", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HCReprodM\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.SettingBlocks\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NChartP\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfNilpotentChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem scWlocExists (hR : Formalism.L2.SG.HCReprodM.HCReprodDSm) : Formalism.L2.SG.SplitPrimeNormLemmas.WlocExists :=
  WlocSk.scWlocExists_of_chart WlocSk.nilpotent_chart_exists hR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ScWlocExists =====
