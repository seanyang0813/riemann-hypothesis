module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PhiBoundPartsOfRadicalParametrisation
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MajorantEstimate
import Mathlib.Tactic.Lemma

@[expose] public section

open Matrix Filter Topology
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.SmoothnessOrderArithmetic

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.P.B4 Formalism.FourierDecayAlt.P.Ux1 Formalism.FourierDecayAlt.P.Ux10

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {k r : ℕ} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

lemma one_le_gN {g : Mat k r} (hg : g ∈ GV k r) : 1 ≤ gN g := (Formalism.FourierDecayAlt.P.norm_of_inverse k r g hg).2

lemma gN_pos {g : Mat k r} (hg : g ∈ GV k r) : 0 < gN g := lt_of_lt_of_le one_pos (one_le_gN hg)

lemma top_ge_nat (m : ℕ) : (((m : ℕ) : ℕ∞) : WithTop ℕ∞) ≤ (((⊤ : ℕ∞)) : WithTop ℕ∞) :=
  WithTop.coe_le_coe.2 le_top

lemma ckOn_top_nat {f : Mat k r → E} (hf : CkOn (⊤ : ℕ∞) (GV k r) f) (m : ℕ) :
    CkOn ((m : ℕ) : ℕ∞) (GV k r) f := by
  intro g₀ hg₀
  obtain ⟨U, f', hU, hgU, hc, hff⟩ := hf g₀ hg₀
  exact ⟨U, f', hU, hgU, hc.of_le (top_ge_nat m), hff⟩

lemma top_ne_zero' : (((⊤ : ℕ∞)) : WithTop ℕ∞) ≠ 0 := by simp

lemma top_succ_le : (((⊤ : ℕ∞)) : WithTop ℕ∞) + 1 ≤ (((⊤ : ℕ∞)) : WithTop ℕ∞) := by
  exact_mod_cast (le_top : ((⊤ : ℕ∞) + 1 : ℕ∞) ≤ ⊤)

lemma ckOn_op_top {f : Mat k r → E} {X : Mat k r} (b : Bool) (hf : CkOn (⊤ : ℕ∞) (GV k r) f)
    (hX : inLie k r X) : CkOn (⊤ : ℕ∞) (GV k r) (op b X f) := by
  intro g₀ hg₀
  obtain ⟨U, f', hU, hgU, hc, hff⟩ := hf g₀ hg₀
  refine ⟨U, op' b X f', hU, hgU, ?_, ?_⟩
  · exact (hc.fderiv_of_isOpen hU top_succ_le).clm_apply (vf b X).contDiff.contDiffOn
  · intro g hg hgG
    have hd : DifferentiableAt ℝ f' g :=
      (hc.differentiableOn top_ne_zero').differentiableAt (hU.mem_nhds hg)
    exact (hasDerivAt_ext b hU hg hgG hd hff hX).deriv

lemma chart_rho {g0 x : Mat k r} (hg0 : g0 ∈ GV k r) (hx : x ∈ Sr g0) (hxG : x ∈ GV k r) :
    chart g0 (rho g0 x) = x := by
  have hgu : IsUnit g0.det := Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh hg0
  have hh : x * g0⁻¹ ∈ GV k r := Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul hxG (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_inv hg0)
  obtain ⟨hl, -, hk⟩ := iot_facts hh hx
  show kap (prj (Mv (co (iot (x * g0⁻¹))))) * g0 = x
  rw [Mv_co, prj_of_lie hl, hk, Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hgu, Matrix.mul_one]

lemma rho_self {g0 : Mat k r} (hg0 : g0 ∈ GV k r) : rho g0 g0 = 0 := by
  have hgu : IsUnit g0.det := Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh hg0
  have hg1 : g0 * g0⁻¹ = 1 := Matrix.mul_nonsing_inv _ hgu
  funext i
  simp only [Ux1.rho, hg1, iot, sub_self, Matrix.zero_mul]
  exact co_zero i

lemma self_mem_Sr {g0 : Mat k r} (hg0 : g0 ∈ GV k r) : g0 ∈ Sr g0 := by
  have hgu : IsUnit g0.det := Formalism.QuantumDeterminants.WeylGroupFacts.isUnit_of_uh hg0
  have hg1 : g0 * g0⁻¹ = 1 := Matrix.mul_nonsing_inv _ hgu
  have h2 : (1 + 1 : Mat k r) = (2 : ℂ) • (1 : Mat k r) := by rw [two_smul]
  show IsUnit (g0 * g0⁻¹ + 1).det
  rw [hg1, h2, Matrix.det_smul, Matrix.det_one, mul_one]
  exact (isUnit_iff_ne_zero.2 two_ne_zero).pow _

lemma chart_comp_cd {F : Mat k r → E} {g0 : Mat k r} (hg0 : g0 ∈ GV k r) (m : ℕ)
    (hF : CkOn ((m : ℕ) : ℕ∞) (GV k r) F) :
    ContDiffOn ℝ ((m : ℕ) : WithTop ℕ∞) (fun Y => F (chart g0 Y)) (Dom k r) := by
  intro Y hY
  apply ContDiffAt.contDiffWithinAt
  obtain ⟨U, f', hU, hcU, hcd, hff⟩ := hF _ (chart_mem hg0 hY)
  have hchc : ContinuousAt (chart g0) Y := (chart_diff g0 hY).continuousAt
  have h1 : ContDiffAt ℝ ((m : ℕ) : WithTop ℕ∞) (fun Y' => f' (chart g0 Y')) Y :=
    (hcd.contDiffAt (hU.mem_nhds hcU)).comp Y
      (((chart_cd g0).contDiffAt (dom_open.mem_nhds hY)).of_le (top_ge_nat m))
  refine h1.congr_of_eventuallyEq ?_
  filter_upwards [hchc.preimage_mem_nhds (hU.mem_nhds hcU), dom_open.mem_nhds hY] with Y' h1 h2
  exact hff _ h1 (chart_mem hg0 h2)

theorem ckOn_top_of_all {F : Mat k r → E} (hF : ∀ m : ℕ, CkOn ((m : ℕ) : ℕ∞) (GV k r) F) :
    CkOn (⊤ : ℕ∞) (GV k r) F := by
  intro g0 hg0
  have hAL : ContDiffOn ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) (fun Y => F (chart g0 Y)) (Dom k r) :=
    contDiffOn_infty.2 fun m => chart_comp_cd hg0 m (hF m)
  set U := Sr g0 ∩ rho g0 ⁻¹' Dom k r with hUdef
  have hUo : IsOpen U := (rho_cd g0).continuousOn.isOpen_inter_preimage (sr_open g0) dom_open
  have hg0U : g0 ∈ U := ⟨self_mem_Sr hg0, by show rho g0 g0 ∈ Dom k r; rw [rho_self hg0]; exact zero_mem_dom⟩
  refine ⟨U, fun x => F (chart g0 (rho g0 x)), hUo, hg0U, ?_, ?_⟩
  · exact hAL.comp ((rho_cd g0).mono Set.inter_subset_left) (fun x hx => hx.2)
  · intro x hx hxG
    show F x = F (chart g0 (rho g0 x))
    rw [chart_rho hg0 hx.1 hxG]

end Formalism.FourierDecayAlt.P.SmoothnessOrderArithmetic

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
