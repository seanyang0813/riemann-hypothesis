module

public import Mathlib.NumberTheory.NumberField.AdeleRing
public import Formalism.LocalToGlobal.GlobalTheory.GL1.CompactFixesLattice.ExistsDenOfIsCompactAdele
public import Formalism.LocalToGlobal.AdelicCompactOpens.IntAdelesCompactOpen
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdicIntegersCompact.IsCompactAdicCompletionIntegers
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsCompactAdeleRingModNumberField
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain

namespace Formalism.IndefR.Eqv.G5

variable {F : Type} [Field F] [NumberField F]

theorem adl_exists_place_ge_one (r : 𝓞 F) (hr : r ≠ 0) :
    ∃ w : InfinitePlace F, 1 ≤ w (r : F) := by
  classical
  by_contra h
  push_neg at h
  have hnn : ∀ w : InfinitePlace F, 0 ≤ w (r : F) := fun w => by
    first | positivity
  have hN : (1 : ℝ) ≤ ((|Algebra.norm ℚ (r : F)| : ℚ) : ℝ) := by
    rw [← Algebra.coe_norm_int]
    have hz : Algebra.norm ℤ r ≠ 0 := Algebra.norm_ne_zero_iff.mpr hr
    have := Int.one_le_abs hz
    exact_mod_cast this
  rw [← InfinitePlace.prod_eq_abs_norm] at hN
  obtain ⟨w0⟩ := (inferInstance : Nonempty (InfinitePlace F))
  rw [← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ w0)] at hN
  have h1 : w0 (r : F) ^ w0.mult < 1 := pow_lt_one₀ (hnn w0) (h w0) InfinitePlace.mult_pos.ne'
  have h2 : ∏ w ∈ Finset.univ.erase w0, w (r : F) ^ w.mult ≤ 1 :=
    Finset.prod_le_one₀ (fun w _ => pow_nonneg (hnn w) _) (fun w _ => pow_le_one₀ (hnn w) (h w).le)
  have h3 : 0 ≤ w0 (r : F) ^ w0.mult := pow_nonneg (hnn w0) _
  nlinarith

open scoped AdeleRing


variable (F) in
def adlNbhd (F : Type) [Field F] [NumberField F] : Set (AdeleRing (𝓞 F) F) :=
  {x | (∀ w, ‖x.1 w‖ < 1) ∧ ∀ v, x.2 v ∈ v.adicCompletionIntegers F}

theorem adl_isOpen_nbhd : IsOpen (adlNbhd F) := by
  have h1 : IsOpen {y : InfiniteAdeleRing F | ∀ w, ‖y w‖ < 1} := by
    have e : {y : InfiniteAdeleRing F | ∀ w, ‖y w‖ < 1} = Set.pi Set.univ (fun _ => Metric.ball 0 1) := by
      ext y
      constructor
      · intro h w _
        simpa [mem_ball_zero_iff] using h w
      · intro h w
        simpa [mem_ball_zero_iff] using h w (Set.mem_univ w)
    rw [e]
    exact isOpen_set_pi Set.finite_univ (fun w _ => Metric.isOpen_ball)
  have h2 : IsOpen {y : FiniteAdeleRing (𝓞 F) F | ∀ v, y v ∈ v.adicCompletionIntegers F} := by
    apply RestrictedProduct.isOpen_forall_mem
    intro v
    first
      | exact Valued.isOpen_integer _
  exact h1.prod h2

theorem adl_zero_mem_nbhd : (0 : AdeleRing (𝓞 F) F) ∈ adlNbhd F := by
  refine ⟨fun w => ?_, fun v => ?_⟩
  · have h0 : (0 : AdeleRing (𝓞 F) F).1 w = 0 := rfl
    rw [h0, norm_zero]
    exact one_pos
  · first | exact zero_mem _

theorem adl_norm_algebraMap (x : F) (w : InfinitePlace F) :
    ‖(algebraMap F (InfiniteAdeleRing F) x) w‖ = w x := by
  rw [InfiniteAdeleRing.algebraMap_apply]
  exact AbsoluteValue.Completion.norm_coe (WithAbs.toAbs w.1 x)

theorem adl_eq_zero_of_mem_nbhd (a : F) (ha : algebraMap F (AdeleRing (𝓞 F) F) a ∈ adlNbhd F) : a = 0 := by
  obtain ⟨hinf, hfin⟩ := ha
  obtain ⟨r, hr⟩ : ∃ r : 𝓞 F, algebraMap (𝓞 F) F r = a := by
    apply IsDedekindDomain.HeightOneSpectrum.mem_integers_of_valuation_le_one
    intro v
    have hv := hfin v
    rw [IsDedekindDomain.HeightOneSpectrum.mem_adicCompletionIntegers] at hv
    have e : (algebraMap F (AdeleRing (𝓞 F) F) a).2 v = (a : v.adicCompletion F) := rfl
    rw [e, IsDedekindDomain.HeightOneSpectrum.valuedAdicCompletion_eq_valuation'] at hv
    exact hv
  by_contra ha0
  have hr0 : r ≠ 0 := by
    rintro rfl
    apply ha0
    rw [← hr, map_zero]
  obtain ⟨w, hw⟩ := adl_exists_place_ge_one r hr0
  have h1 := hinf w
  have e1 : (algebraMap F (AdeleRing (𝓞 F) F) a).1 w = (algebraMap F (InfiniteAdeleRing F) a) w := rfl
  rw [e1, adl_norm_algebraMap, ← hr] at h1
  have h2 : w (r : F) < 1 := h1
  linarith

theorem adl_inf_cocompact : ∃ C : Set (InfiniteAdeleRing F), IsCompact C ∧
    ∀ y, ∃ r : 𝓞 F, y - algebraMap F _ (r : F) ∈ C := by
  apply GlobalTheory.AdeleCocompact.exists_compact_infinite

theorem adl_cocompact : ∃ K : Set (AdeleRing (𝓞 F) F), IsCompact K ∧
    ∀ x, ∃ a : F, x - algebraMap F _ a ∈ K := by
  obtain ⟨C, hC, hCy⟩ := adl_inf_cocompact (F := F)
  refine ⟨C ×ˢ {x : FiniteAdeleRing (𝓞 F) F | ∀ v, x v ∈ v.adicCompletionIntegers F},
    hC.prod (_root_.PI.IntAdCpctOpenWork.main F).2, fun x => ?_⟩
  obtain ⟨u, hu⟩ := Formalism.L2.GlobalTheoryTheory.FiltrationBoundaryCriterion.CompactFixesLatticeTheory.exists_sub_mem_intAd x.2
  obtain ⟨r, hr⟩ := hCy (x.1 - algebraMap F _ u)
  refine ⟨u + r, ?_, ?_⟩
  · show x.1 - algebraMap F (InfiniteAdeleRing F) (u + r) ∈ C
    rw [map_add (f := _), ← sub_sub]
    exact hr
  · have : x.2 - algebraMap F (FiniteAdeleRing (𝓞 F) F) (u + r) =
        (x.2 - algebraMap F _ u) - algebraMap F _ (r : F) := by rw [map_add (f := _), sub_sub]
    show ∀ v, (x.2 - algebraMap F (FiniteAdeleRing (𝓞 F) F) (u + r)) v ∈ _
    rw [this]
    exact sub_mem hu (Formalism.L2.GlobalTheoryTheory.FiltrationBoundaryCriterion.CompactFixesLatticeTheory.algebraMap_mem_intAd r)

end Formalism.IndefR.Eqv.G5
