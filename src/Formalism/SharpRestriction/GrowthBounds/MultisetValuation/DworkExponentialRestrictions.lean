module

public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.SubstitutionOfVariables
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.KernelExpansionOfRestrictions
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.AllPlacesOfRestrictions
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.AtPiEqRescale
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.InParamMap
import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.IntRPsubst
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset
open Formalism.InvariantFactorPaths.G7 (lgF lamF Gser Aser Aser')

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

abbrev wK (p : ℕ) [Fact p.Prime] (c : WW p) : K0 p := algebraMap (WW p) (K0 p) c

def RestBeta (p : ℕ) [Fact p.Prime] : Prop :=
  5 ≤ p → DworkLemma p → ∀ be : MvPowerSeries (Fin 2) (K0 p), BeProp p be →
    ∃ c : WW p, (sigW p)^[2] c = c ∧ E0 p (inParam p be - Gser p (wK p c) (wK p (sigW p c)))

def RestGc (p : ℕ) [Fact p.Prime] : Prop :=
  5 ≤ p → ∀ c : WW p, (sigW p)^[2] c = c → ∀ (n' r0 r1 : ℕ), 2 ≤ n' → Even n' → ∀ (B : OmBasis p n')
    (K' : Type) [Field K'] [Algebra (K0 p) K'] (vp : K'), vp ^ (p ^ 2 - 1) = (p : K') →
    ∀ μ : PowerSeries K', PowerSeries.constantCoeff μ = 0 →
      (PowerSeries.subst μ (lamF p vp) : PowerSeries K') = PowerSeries.X →
    ∃ u : Fin n' → K', (∀ s, u s ∈ Rp p K' vp) ∧ ∃ V : MvPowerSeries (Zidx n' r0 r1) K', IntR (Rp p K' vp) V ∧
      MvPowerSeries.subst (tOf vp μ (coordZ B K' 1)) (expK (-(MvPowerSeries.map (algebraMap (K0 p) K')
          (Gt p (Eidx n' r0 r1) (wK p c) (wK p (sigW p c)))))) =
        expK (-(MvPowerSeries.C (vp ^ (p + 1) / (p : K')) * hhS p K' u)) * V

section

variable {p : ℕ} [hp : Fact p.Prime]

theorem th_Gser_const (c c' : K0 p) : MvPowerSeries.constantCoeff (Gser p c c') = 0 := by
  have hA : MvPowerSeries.constantCoeff (Aser (K0 p) p) = 0 := by
    show Aser (K0 p) p 0 = 0
    simp [Aser]
  have hA' : MvPowerSeries.constantCoeff (Aser' (K0 p) p) = 0 := by
    show Aser' (K0 p) p 0 = 0
    simp [Aser']
  simp [Gser, hA, hA']

theorem th_be_const {be : MvPowerSeries (Fin 2) (K0 p)} (h : BeProp p be) :
    MvPowerSeries.constantCoeff be = 0 := by
  by_contra hne
  have hh := (h.ab 0 hne).1
  simp at hh

theorem th_coordZ_int {n' r0 r1 : ℕ} (B : OmBasis p n') (K' : Type) [Field K'] [Algebra (K0 p) K'] (vp : K')
    (x : Eidx n' r0 r1 ⊕ Eidx n' r0 r1) : IntR (Rp p K' vp) (coordZ B K' 1 x) := by
  intro n
  rcases x with ⟨r, a, b⟩ | ⟨r, a, b⟩
  all_goals
    simp only [coordZ, map_sum, one_mul]
    refine Subring.sum_mem _ fun s _ => ?_
    rw [MvPowerSeries.coeff_C_mul]
    refine Subring.mul_mem _ (Subring.subset_closure (Set.mem_union_left _ ⟨_, rfl⟩)) ?_
    rw [MvPowerSeries.coeff_X]
    split_ifs
    · exact Subring.one_mem _
    · exact Subring.zero_mem _

theorem th_coordZA_int (X : Sys p) (K' : Type) [Field K'] [Algebra (K0 p) K'] (vp : K') (j : ℕ)
    (x : X.EA j ⊕ X.EA j) : IntR (Rp p K' vp) (X.coordZA K' j x) := by
  intro n
  rcases x with ⟨v, r, a, b⟩ | ⟨v, r, a, b⟩
  all_goals
    simp only [Sys.coordZA, map_sum]
    refine Subring.sum_mem _ fun s _ => ?_
    rw [MvPowerSeries.coeff_C_mul]
    refine Subring.mul_mem _ (Subring.subset_closure (Set.mem_union_left _ ⟨_, rfl⟩)) ?_
    rw [MvPowerSeries.coeff_X]
    split_ifs
    · exact Subring.one_mem _
    · exact Subring.zero_mem _

end

end Formalism.MainNotions.FormalGroupSystem.Pf
