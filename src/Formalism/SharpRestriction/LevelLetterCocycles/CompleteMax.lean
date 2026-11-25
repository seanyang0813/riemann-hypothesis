module

import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.IsAdicCompleteOfIdealPowLe
public import Formalism.LocalRingCardinality.SpanPowerMembership.NDLocE
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.LemmaDN0
public import Formalism.SharpRestriction.LevelLetterCocycles.LemmaDN0OfAdmits
public import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.DLev

open Module Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc IsLocalRing

theorem complete_max {l : ℕ} [Fact l.Prime] (LL : FinExt l) :
    IsAdicComplete (IsLocalRing.maximalIdeal ↥(OL LL)) ↥(OL LL) := by
  apply Formalism.MainNotions.N.Ln17.isAdicComplete_integers_local

theorem lemmaDN0_L (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (h1 : Formalism.MainNotions.RamifiedCoefficientChains.adm1 D HW F Cm) (h11 : Formalism.MainNotions.RamifiedCoefficientChains.adm11 D) :
    ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hg : Good K 1 LL)
      [NeZero (Module.finrank ℚ_[l] ↥(K0 K))], Formalism.MainNotions.N.Pv.LocalLengthBound.LemmaDN0 ((HW l).W K 1 LL hg) := by
  intro l _ K LL hg _
  have hT := h1 l K 1 LL hg
  obtain ⟨hE, hC, hQ⟩ := h11 l K LL
  have := complete_max LL
  have h9D : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F := fun l' _ K' s' LL' h' => (h1 l' K' s' LL' h').2.2.2.2.2.2.2.2.1
  have hpt := Formalism.MainNotions.UnusedSlot80.points_exist_of_ring_condition D HW F h9D
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  refine Formalism.MainNotions.RamifiedCoefficientChains.S9.NinQ.lemmaDN0_of_admits _ hE hC hQ (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hg) hT.2.2.2.1
    hT.2.2.2.2.1 hT.2.2.2.2.2.2.2.2.1 ?_ ?_
  · intro hA hl11 c ζ hζ
    have hK : K.1 ≤ MaximalUnramifiedExtension l := by
      intro x hx
      obtain ⟨y, hy⟩ := hA.1.2 ⟨x, hx⟩
      have hyx : ((y : ↥(K0 K)) : Om l) = x := congrArg (fun z : ↥K.1 => (z : Om l)) hy
      rw [← hyx]
      exact y.2.2
    have hAD : CaseA K LL := ⟨hK, by rw [← hp]; exact hA.2.2, hg⟩
    have h5l : 5 ≤ l := by rw [← hp]; omega
    obtain ⟨τ, hτ⟩ := hpt l K LL hAD h5l c ζ (by rwa [hp] at hζ)
    refine ⟨τ, ?_, hτ⟩
    obtain ⟨τs, ⟨hemb, -⟩, hres⟩ := hτ
    apply AlgHom.ext
    intro x
    have hy : (x : Om l) ∈ Ks K 1 := (le_sup_left : K0 K ≤ Ks K 1) x.2
    show τ (algebraMap ↥(K0 K) ↥K.1 x) = _
    rw [hres (algebraMap ↥(K0 K) ↥K.1 x) ⟨x, hy⟩ rfl]
    exact hemb x ⟨x, hy⟩ rfl
  · rw [hp]
    exact Formalism.BasicNotions.Examples₂.LB.l_mem_max LL

end Formalism.MainNotions.RamifiedCoefficientChains.S9.DLev
