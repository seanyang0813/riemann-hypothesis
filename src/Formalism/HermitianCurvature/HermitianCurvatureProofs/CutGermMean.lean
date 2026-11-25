module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutGermParts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PairingTriangular
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AverageOne
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MeanBoundsLimits
import Mathlib.RingTheory.Coalgebra.CoassocSimps
import Mathlib.Tactic.Linter.Style

@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.crystallineComparison Filter Topology MeasureTheory
open scoped ComplexConjugate ENNReal InnerProductSpace

noncomputable section

open Classical

theorem meanInf_le_limsup {f : ℕ} (Λ : AddSubgroup (V f)) (LIM : (Λ → ℂ) → ℂ) (hL : IsMeanInf Λ LIM)
    (g : Λ → ℂ) (hg : Bdd g) :
    (‖LIM g‖₊ : ℝ≥0∞) ≤
      limsup (fun x : Λ => (‖g x‖₊ : ℝ≥0∞)) (Filter.comap (fun x : Λ => (x : V f)) (atInfAll f)) := by
  refine le_of_forall_gt_imp_ge_of_dense fun b hb => ?_
  by_cases hbt : b = ⊤
  · rw [hbt]; exact le_top
  have hev := Filter.eventually_lt_of_limsup_lt hb
  set B : ℝ := b.toReal with hB
  obtain ⟨Bg, hBg⟩ := hg
  set g₁ : Λ → ℂ := fun x => if ‖g x‖ ≤ B then g x else 0 with hg₁
  set g₂ : Λ → ℂ := fun x => g x - g₁ x with hg₂
  have hb1 : Bdd g₁ := ⟨max B 0, fun x => by
    simp only [hg₁]; split_ifs with h
    · exact h.trans (le_max_left _ _)
    · simp⟩
  have hb2 : Bdd g₂ := ⟨Bg + max B 0, fun x => by
    simp only [hg₂]
    refine (norm_sub_le _ _).trans (add_le_add (hBg x) ?_)
    simp only [hg₁]; split_ifs with h
    · exact h.trans (le_max_left _ _)
    · simp⟩
  have hz : Tendsto g₂ (Filter.comap (fun x : Λ => (x : V f)) (atInfAll f)) (𝓝 0) := by
    refine tendsto_const_nhds.congr' ?_
    filter_upwards [hev] with x hx
    have hx' : ‖g x‖ ≤ B :=
      (ENNReal.ofReal_le_iff_le_toReal hbt).1 (by rw [← ENNReal.ofReal_coe_nnreal, coe_nnnorm] at hx; exact hx.le)
    simp [hg₂, hg₁, hx']
  have hsplit : g = g₁ + g₂ := by
    funext x; simp [hg₂]
  have h0 : LIM g₂ = 0 := hL.2 g₂ hb2 hz
  have hLg : LIM g = LIM g₁ := by
    rw [hsplit, hL.1.1 g₁ g₂ hb1 hb2, h0, add_zero]
  have hle : ‖LIM g₁‖ ≤ max B 0 := Formalism.FourierDecayAlt.P.mean_bound_estimate Λ LIM g₁ (max B 0) hL.1 fun x => by
    simp only [hg₁]; split_ifs with h
    · exact h.trans (le_max_left _ _)
    · simp
  rw [hLg]
  have hB0 : max B 0 = B := max_eq_left ENNReal.toReal_nonneg
  rw [hB0] at hle
  calc (‖LIM g₁‖₊ : ℝ≥0∞) = ENNReal.ofReal ‖LIM g₁‖ := by rw [← ENNReal.ofReal_coe_nnreal, coe_nnnorm]
    _ ≤ ENNReal.ofReal B := ENNReal.ofReal_le_ofReal hle
    _ = b := by rw [hB, ENNReal.ofReal_toReal hbt]

def bD {f : ℕ} (La : Submodule ℤ (V f)) [DiscreteTopology La] [IsZLattice ℝ La] :
    Module.Basis (Fin (Module.finrank ℤ La)) ℝ (V f) :=
  (Pi.basisFun ℝ (Fin (Module.finrank ℤ La))).map (PairingConjugationLemmas.Le La).symm

section vec

variable {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] {s : ℕ} {β ε' : ℂ}
  {ut : ℂ → ℂ → H} {bt : ℂ → H} {SS : ℝ}

def uL (hG : PBK.GermD s β ε' ({()} : Finset Unit) (fun _ => ut) (fun _ => bt) SS) (x : ℂ) :
    Lp H 2 (volume : Measure ℂ) :=
  if hx : x ≠ 0 then
    ((PBK.memLp_cvec s ut x hx).1 (hG.memU () (Finset.mem_singleton_self _) x hx)).toLp (PBK.cvec s ut x)
  else 0

def aL (hG : PBK.GermD s β ε' ({()} : Finset Unit) (fun _ => ut) (fun _ => bt) SS) (x : ℂ) :
    Lp H 2 (volume : Measure ℂ) :=
  if hx : x ≠ 0 then
    ((PBK.memLp_cvec s (fun x D => PBK.mainD s β ε' bt x D) x hx).1
      (hG.memLp_mainD (Finset.mem_singleton_self ()) x)).toLp (PBK.cvec s (fun x D => PBK.mainD s β ε' bt x D) x)
  else 0

variable (hG : PBK.GermD s β ε' ({()} : Finset Unit) (fun _ => ut) (fun _ => bt) SS)

theorem inner_uL_uL {x x' : ℂ} (hx : x ≠ 0) (hx' : x' ≠ 0) :
    ⟪uL hG x, uL hG x'⟫_ℂ =
      PBK.gramL volume (PBK.Uc s fun _ => ut) (PBK.Uc s fun _ => ut) ((), x) ((), x') := by
  simp only [uL, dif_pos hx, dif_pos hx']
  rw [MeasureTheory.L2.inner_def, PBK.gramL]
  refine integral_congr_ae ?_
  filter_upwards [((PBK.memLp_cvec s ut x hx).1 (hG.memU () (Finset.mem_singleton_self _) x hx)).coeFn_toLp, ((PBK.memLp_cvec s ut x' hx').1 (hG.memU () (Finset.mem_singleton_self _) x' hx')).coeFn_toLp] with D h1 h2
  rw [h1, h2]
  rfl

theorem inner_uL_aL {x x' : ℂ} (hx : x ≠ 0) (hx' : x' ≠ 0) :
    ⟪uL hG x, aL hG x'⟫_ℂ =
      PBK.gramL volume (PBK.Uc s fun _ => ut) (PBK.Ac s β ε' fun _ => bt) ((), x) ((), x') := by
  simp only [uL, aL, dif_pos hx, dif_pos hx']
  rw [MeasureTheory.L2.inner_def, PBK.gramL]
  refine integral_congr_ae ?_
  filter_upwards [((PBK.memLp_cvec s ut x hx).1 (hG.memU () (Finset.mem_singleton_self _) x hx)).coeFn_toLp, ((PBK.memLp_cvec s (fun x D => PBK.mainD s β ε' bt x D) x' hx').1
      (hG.memLp_mainD (Finset.mem_singleton_self ()) x')).coeFn_toLp] with D h1 h2
  rw [h1, h2]
  rfl

theorem inner_aL_aL {x x' : ℂ} (hx : x ≠ 0) (hx' : x' ≠ 0) :
    ⟪aL hG x, aL hG x'⟫_ℂ =
      PBK.gramL volume (PBK.Ac s β ε' fun _ => bt) (PBK.Ac s β ε' fun _ => bt) ((), x) ((), x') := by
  simp only [aL, dif_pos hx, dif_pos hx']
  rw [MeasureTheory.L2.inner_def, PBK.gramL]
  refine integral_congr_ae ?_
  filter_upwards [((PBK.memLp_cvec s (fun x D => PBK.mainD s β ε' bt x D) x hx).1
      (hG.memLp_mainD (Finset.mem_singleton_self ()) x)).coeFn_toLp, ((PBK.memLp_cvec s (fun x D => PBK.mainD s β ε' bt x D) x' hx').1
      (hG.memLp_mainD (Finset.mem_singleton_self ()) x')).coeFn_toLp] with D h1 h2
  rw [h1, h2]
  rfl

end vec

end

end Formalism.FourierDecayAlt.P.CutBP
