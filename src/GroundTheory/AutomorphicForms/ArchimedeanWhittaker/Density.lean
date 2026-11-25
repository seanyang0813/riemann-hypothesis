module

public import GroundTheory.AutomorphicForms.ArchimedeanWhittaker.ContinuousMultilinearOfFiniteDimensional
public import GroundTheory.AutomorphicForms.GKModules.Garding
public import GroundTheory.AutomorphicForms.DixmierMalliavinBasic
public import Mathlib.Analysis.Calculus.Deriv.Shift

@[expose] public section

namespace GroundTheory.Automorphic

open MeasureTheory NormedSpace Set Filter Topology Metric
open scoped ContDiff InnerProductSpace

set_option linter.unusedSectionVars false

namespace IsExpLieAlgebra

variable {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℝ 𝔸] [CompleteSpace 𝔸] [FiniteDimensional ℝ 𝔸]
variable {G : Subgroup 𝔸ˣ} {𝔤 : Submodule ℝ 𝔸} (h : IsExpLieAlgebra G 𝔤)
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]
variable (π : BanachRep G E)

theorem hasDerivAt_orbit_smul {v : E} (hv : h.IsSmoothVector π v) (X : 𝔤) (t : ℝ) :
    HasDerivAt (fun s : ℝ => π (h.expG (s • X)) v) (π (h.expG (t • X)) (h.derivOp π X v)) t := by
  have h0 := h.hasDerivAt_derivOp π hv X
  have h0' : HasDerivAt (fun s : ℝ => π (h.expG (s • X)) v) (h.derivOp π X v) (t - t) := by
    rw [sub_self]; exact h0
  have h1 : HasDerivAt (fun s : ℝ => π (h.expG ((s - t) • X)) v) (h.derivOp π X v) t :=
    h0'.comp_sub_const t t
  have h2 := ((π (h.expG (t • X))).restrictScalars ℝ).hasFDerivAt.comp_hasDerivAt t h1
  refine h2.congr_of_eventuallyEq (Eventually.of_forall fun s => ?_)
  simp only [Function.comp_apply, ContinuousLinearMap.coe_restrictScalars']
  rw [← BanachRep.map_mul_apply, ← h.expG_add_smul, add_sub_cancel]

variable [MeasurableSpace G] [BorelSpace G] (μ : Measure G) [μ.IsMulLeftInvariant]
  [IsFiniteMeasureOnCompacts μ]

theorem derivOp_integral (hπ : ∀ g, ‖π g‖ ≤ 1) {f : G → ℂ} (hf : h.IsTestFunction f)
    {u : G → E} (hu : Continuous u) (hus : ∀ g, h.IsSmoothVector π (u g)) (X : 𝔤)
    (hdu : Continuous fun g => h.derivOp π X (u g))
    (hz : h.IsSmoothVector π (∫ g, f g • u g ∂μ)) :
    h.derivOp π X (∫ g, f g • u g ∂μ) = ∫ g, f g • h.derivOp π X (u g) ∂μ := by
  have := secondCountableTopology_subgroup_units G
  have hfc := hf.continuous h
  have hint : Integrable (fun g => f g • u g) μ :=
    (hfc.smul hu).integrable_of_hasCompactSupport hf.2.smul_right
  set F : ℝ → G → E := fun t g => f g • π (h.expG (t • X)) (u g) with hF
  set F' : ℝ → G → E := fun t g => f g • π (h.expG (t • X)) (h.derivOp π X (u g)) with hF'
  have hcontF : ∀ t, Continuous (F t) := fun t =>
    hfc.smul ((π (h.expG (t • X))).continuous.comp hu)
  have hcontF' : ∀ t, Continuous (F' t) := fun t =>
    hfc.smul ((π (h.expG (t • X))).continuous.comp hdu)
  have hbound_int : Integrable (fun g => ‖f g‖ * ‖h.derivOp π X (u g)‖) μ :=
    ((continuous_norm.comp hfc).mul (continuous_norm.comp hdu)).integrable_of_hasCompactSupport
      (hf.2.norm.mul_right)
  have key := hasDerivAt_integral_of_dominated_loc_of_deriv_le (μ := μ) (F := F) (x₀ := 0)
    (bound := fun g => ‖f g‖ * ‖h.derivOp π X (u g)‖) (univ_mem)
    (Eventually.of_forall fun t => (hcontF t).aestronglyMeasurable)
    ((hcontF 0).integrable_of_hasCompactSupport (by
      simp only [hF]; exact hf.2.smul_right))
    (F' := F') (hcontF' 0).aestronglyMeasurable
    (Eventually.of_forall fun g t _ => by
      simp only [hF', norm_smul]
      gcongr
      calc ‖π (h.expG (t • X)) (h.derivOp π X (u g))‖
          ≤ ‖π (h.expG (t • X))‖ * ‖h.derivOp π X (u g)‖ := ContinuousLinearMap.le_opNorm _ _
        _ ≤ 1 * ‖h.derivOp π X (u g)‖ := by gcongr; exact hπ _
        _ = _ := one_mul _) hbound_int
    (Eventually.of_forall fun g t _ => (h.hasDerivAt_orbit_smul π (hus g) X t).const_smul (f g))
  have e1 : (fun t : ℝ => ∫ g, F t g ∂μ) = fun t => π (h.expG (t • X)) (∫ g, f g • u g ∂μ) := by
    funext t
    rw [← (π (h.expG (t • X))).integral_comp_comm hint]
    simp [hF]
  have e2 : (∫ g, F' 0 g ∂μ) = ∫ g, f g • h.derivOp π X (u g) ∂μ := by
    simp [hF']
  rw [e1, e2] at key
  exact (h.hasDerivAt_derivOp π hz X).unique key.2

end IsExpLieAlgebra

end GroundTheory.Automorphic

namespace GroundTheory.Automorphic

open MeasureTheory NormedSpace Set Filter Topology Metric
open scoped ContDiff InnerProductSpace

set_option linter.unusedSectionVars false

namespace IsExpLieAlgebra

variable {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℝ 𝔸] [CompleteSpace 𝔸] [FiniteDimensional ℝ 𝔸]
variable {G : Subgroup 𝔸ˣ} {𝔤 : Submodule ℝ 𝔸} (h : IsExpLieAlgebra G 𝔤)
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]
variable (π : BanachRep G E)

variable [MeasurableSpace G] [BorelSpace G] (μ : Measure G) [μ.IsMulLeftInvariant]
  [IsFiniteMeasureOnCompacts μ]

theorem norm_integrated_le (hπ : ∀ g, ‖π g‖ ≤ 1) {f : G → ℂ} (hf : h.IsTestFunction f) (x : E) :
    ‖π.integrated μ f x‖ ≤ (∫ g, ‖f g‖ ∂μ) * ‖x‖ := by
  have := secondCountableTopology_subgroup_units G
  rw [BanachRep.integrated]
  calc ‖∫ g, f g • π g x ∂μ‖ ≤ ∫ g, ‖f g • π g x‖ ∂μ := norm_integral_le_integral_norm _
    _ ≤ ∫ g, ‖f g‖ * ‖x‖ ∂μ := by
        refine integral_mono_of_nonneg (Eventually.of_forall fun _ => norm_nonneg _)
          (((hf.continuous h).norm.mul continuous_const).integrable_of_hasCompactSupport
            hf.2.norm.mul_right) (Eventually.of_forall fun g => ?_)
        show ‖f g • π g x‖ ≤ ‖f g‖ * ‖x‖
        rw [norm_smul]
        gcongr
        calc ‖π g x‖ ≤ ‖π g‖ * ‖x‖ := ContinuousLinearMap.le_opNorm _ _
          _ ≤ 1 * ‖x‖ := by gcongr; exact hπ _
          _ = ‖x‖ := one_mul _
    _ = (∫ g, ‖f g‖ ∂μ) * ‖x‖ := integral_mul_const _ _

end IsExpLieAlgebra

end GroundTheory.Automorphic

namespace GroundTheory.Automorphic

open MeasureTheory NormedSpace Set Filter Topology Metric
open scoped ContDiff InnerProductSpace Manifold

set_option linter.unusedSectionVars false

namespace IsExpLieAlgebra

variable {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℝ 𝔸] [CompleteSpace 𝔸] [FiniteDimensional ℝ 𝔸]
variable {G : Subgroup 𝔸ˣ} {𝔤 : Submodule ℝ 𝔸} (h : IsExpLieAlgebra G 𝔤)
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]
variable (π : BanachRep G E)

theorem integrated_add [MeasurableSpace G] [BorelSpace G] {μ : Measure G}
    [IsFiniteMeasureOnCompacts μ] {f : G → ℂ} (hf : h.IsTestFunction f) (x y : E) :
    π.integrated μ f (x + y) = π.integrated μ f x + π.integrated μ f y := by
  have := secondCountableTopology_subgroup_units G
  have hi : ∀ z : E, Integrable (fun g => f g • π g z) μ := fun z =>
    ((hf.continuous h).smul (π.continuous_orbit z)).integrable_of_hasCompactSupport hf.2.smul_right
  simp only [BanachRep.integrated, map_add (f := _), smul_add]
  exact integral_add (hi x) (hi y)

theorem integrated_smul [MeasurableSpace G] [BorelSpace G] {μ : Measure G}
    (f : G → ℂ) (c : ℂ) (x : E) :
    π.integrated μ f (c • x) = c • π.integrated μ f x := by
  simp only [BanachRep.integrated, map_smul, smul_comm _ c]
  exact integral_smul c _

end IsExpLieAlgebra

end GroundTheory.Automorphic
