module

import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SecondClosedOfFirstClosed
public import Formalism.AdmissibleDesigns.GlobalIndexTheoremPlacesOfRNAdm

@[expose] public section

noncomputable section

open Formalism.BasicNotions NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Module Formalism.MainNotions.N Topology

namespace Formalism.MainNotions.N.K.Norm

section Adic

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [TopologicalSpace O]
  [IsTopologicalRing O]

theorem continuous_of_mul {X : Type} [TopologicalSpace X] (hadic : IsAdic (IsLocalRing.maximalIdeal O))
    {c : O} (hc : c ≠ 0) {f : X → O} (hf : Continuous fun x => c * f x) : Continuous f := by
  apply GlobalTheory.BlockJumpsCompare.continuous_of_mul <;> assumption

end Adic

section Rec

variable {D : D7} (i : D.nd.Loc) (r : D.nd.X i → (GE D.nd →* GL (Fin D.R.nV) (D.nd.O i)))
  (ρ : D.nd.X i → (GE D.nd →* GL (Fin D.R.r) (D.nd.O i))) (π : D.nd.X i)

theorem map_smul_toK' (c : D.nd.O i) (A : MatN D.nd i) :
    (c • A).map (toK D.nd i) = toK D.nd i c • A.map (toK D.nd i) := by
  ext a b
  simp [Matrix.smul_apply]

theorem exists_integral_mul (M : Matrix (Fin D.R.nV) (Fin D.R.nV) (KK D.nd i)) :
    ∃ (b : D.nd.O i) (M0 : MatN D.nd i), b ≠ 0 ∧ M0.map (toK D.nd i) = b • M := by
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors (D.nd.O i)) Finset.univ
    (fun ab : Fin D.R.nV × Fin D.R.nV => M ab.1 ab.2)
  choose M0 hM0 using fun ab : Fin D.R.nV × Fin D.R.nV => hb ab (Finset.mem_univ _)
  refine ⟨b, fun a c => M0 (a, c), nonZeroDivisors.coe_ne_zero b, ?_⟩
  ext a c
  simp only [Matrix.smul_apply]
  exact hM0 (a, c)

theorem rhoCont_of (hd : TruncatedSeriesCountingIdentities.SemisimpleDecomposition i r ρ π) (hc : TruncatedSeriesCountingIdentities.FamilyContinuous i r) : RhoCont i ρ π := by
  obtain ⟨P, Q, hPQ, hQP, hconj⟩ := conjK_self i r ρ π hd
  have hA : ∀ g, (rO D.nd i (rN i r ρ π) π g).map (toK D.nd i) = P * (rO D.nd i r π g).map (toK D.nd i) * Q := by
    intro g
    have h := hconj g
    beta_reduce at h
    rw [h, Matrix.mul_assoc, hPQ, Matrix.mul_one]
  obtain ⟨b1, P0, hb1, hP0⟩ := exists_integral_mul i P
  obtain ⟨b2, Q0, hb2, hQ0⟩ := exists_integral_mul i Q
  have hid : ∀ g, (b1 * b2) • rO D.nd i (rN i r ρ π) π g = P0 * rO D.nd i r π g * Q0 := by
    intro g
    apply Matrix.map_injective (toK_inj i)
    show ((b1 * b2) • rO D.nd i (rN i r ρ π) π g).map (toK D.nd i) = (P0 * rO D.nd i r π g * Q0).map (toK D.nd i)
    rw [Matrix.map_mul, Matrix.map_mul, hP0, hQ0, map_smul_toK', hA, map_mul, Matrix.smul_mul, Matrix.mul_smul,
      Matrix.smul_mul, smul_smul, mul_comm (toK D.nd i b1), ← map_mul]
    exact algebraMap_smul (KK D.nd i) (b2 * b1) _
  have hcont : Continuous fun g => (b1 * b2) • rO D.nd i (rN i r ρ π) π g := by
    simp only [hid]
    exact (continuous_const.matrix_mul (hc π)).matrix_mul continuous_const
  have hne : b1 * b2 ≠ 0 := mul_ne_zero hb1 hb2
  unfold RhoCont
  refine continuous_pi fun a => continuous_pi fun b => ?_
  refine continuous_of_mul (D.nd.O_adic i) hne ?_
  have h2 : Continuous fun g => ((b1 * b2) • rO D.nd i (rN i r ρ π) π g) (Fin.castAdd D.R.t a) (Fin.castAdd D.R.t b) :=
    (continuous_apply_apply _ _).comp hcont
  refine h2.congr (fun g => ?_)
  change (b1 * b2) * rO D.nd i (rN i r ρ π) π g (Fin.castAdd D.R.t a) (Fin.castAdd D.R.t b) = _
  rw [(normAt_rN i r ρ π).2.2 g a b]

end Rec

end Formalism.MainNotions.N.K.Norm
