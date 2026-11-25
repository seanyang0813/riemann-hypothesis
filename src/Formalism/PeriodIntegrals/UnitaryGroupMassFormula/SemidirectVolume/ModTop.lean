module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.LevelIntersectParabolic
import Mathlib.Tactic.Linter.HaveILetI

@[expose] public section

noncomputable section

namespace PI.VolSemiDirect.W.Md

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub
open scoped TensorProduct Matrix

section Cont

variable {F E : Type} [Field F] [Field E] [Algebra F E] (R : Type) [CommRing R] [Algebra F R]
  [TopologicalSpace R] [IsTopologicalRing R] (σ : E →ₐ[F] E) {M : ℕ}
  (J : Matrix (Fin M) (Fin M) E) {r : ℕ} (P : Frame E M r) (T : F)

def sigRLin : R ⊗[F] E →ₗ[R] R ⊗[F] E :=
  TensorProduct.AlgebraTensorModule.map (LinearMap.id : R →ₗ[R] R) σ.toLinearMap

theorem sigRLin_eq (x : R ⊗[F] E) : sigRLin R σ x = sigR R σ x := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => simp [sigRLin, sigR]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]

variable [IsTopologicalRing (R ⊗[F] E)]

theorem continuous_sigR : Continuous (sigR R σ) := by
  haveI : IsModuleTopology R (R ⊗[F] E) := ⟨rfl⟩
  have hc : Continuous (sigRLin R σ) := IsModuleTopology.continuous_of_linearMap _
  have he : (sigR R σ : R ⊗[F] E → R ⊗[F] E) = sigRLin R σ :=
    funext fun x => (sigRLin_eq R σ x).symm
  rw [he]
  exact hc

theorem continuous_hR {X : Type} [TopologicalSpace X] {u v : X → Fin M → R ⊗[F] E}
    (hu : Continuous u) (hv : Continuous v) : Continuous fun x => hR R σ J (u x) (v x) := by
  unfold hR Formalism.UG.hform
  refine continuous_finsetSum _ fun i _ => continuous_finsetSum _ fun j _ => ?_
  exact (((continuous_sigR R σ).comp ((continuous_apply i).comp hu)).mul continuous_const).mul
    ((continuous_apply j).comp hv)

theorem continuous_linear_action {X : Type} [TopologicalSpace X] {g : X → HA R σ J}
    {v : X → Fin M → R ⊗[F] E} (hg : Continuous g) (hv : Continuous v) :
    Continuous fun x => lin R σ J (g x) (v x) := by
  have hm : Continuous fun g : HA R σ J =>
      ((HA.mat R σ J g : GL (Fin M) (R ⊗[F] E)) : Matrix (Fin M) (Fin M) (R ⊗[F] E)) :=
    Units.continuous_val.comp continuous_subtype_val
  unfold lin
  simp only [Matrix.mulVecLin_apply]
  exact (hm.comp hg).matrix_mulVec hv

end Cont

section HAcont

variable {F E : Type} [Field F] [Field E] [Algebra F E] {R : Type} [CommRing R] [Algebra F R]
  {σ : E →ₐ[F] E} {M : ℕ} {J : Matrix (Fin M) (Fin M) E}

theorem mat_inv_eq (hJ : IsHermND σ J) (g : HA R σ J) :
    ((HA.mat R σ J g⁻¹ : GL (Fin M) (R ⊗[F] E)) : Matrix (Fin M) (Fin M) (R ⊗[F] E)) =
      (J⁻¹).map (inclR (F := F) R) *
        Formalism.UG.cT (sigR R σ) ((HA.mat R σ J g : GL (Fin M) (R ⊗[F] E)) :
          Matrix (Fin M) (Fin M) (R ⊗[F] E)) * JR R J := by
  obtain ⟨_, hdet⟩ := hJ
  set A : Matrix (Fin M) (Fin M) (R ⊗[F] E) :=
    ((HA.mat R σ J g : GL (Fin M) (R ⊗[F] E)) : Matrix (Fin M) (Fin M) (R ⊗[F] E)) with hA
  set B : Matrix (Fin M) (Fin M) (R ⊗[F] E) :=
    ((HA.mat R σ J g⁻¹ : GL (Fin M) (R ⊗[F] E)) : Matrix (Fin M) (Fin M) (R ⊗[F] E)) with hB
  set Ji : Matrix (Fin M) (Fin M) (R ⊗[F] E) := (J⁻¹).map (inclR (F := F) R) with hJi
  have hmem : Formalism.UG.cT (sigR R σ) A * JR (F := F) R J * A = JR (F := F) R J := g.2
  have hAB : A * B = 1 := by
    have e : (HA.mat R σ J g⁻¹ : GL (Fin M) (R ⊗[F] E)) = (HA.mat R σ J g)⁻¹ := by
      first
        | rfl
    rw [hA, hB, e]
    exact Units.mul_inv _
  have hJJ : Ji * JR (F := F) R J = 1 := by
    rw [hJi]
    unfold JR
    rw [← Matrix.map_mul, Matrix.nonsing_inv_mul J (isUnit_iff_ne_zero.mpr hdet)]
    simp
  calc B = (Ji * JR (F := F) R J) * B := by rw [hJJ, Matrix.one_mul]
    _ = Ji * (Formalism.UG.cT (sigR R σ) A * JR (F := F) R J * A) * B := by rw [hmem]
    _ = Ji * Formalism.UG.cT (sigR R σ) A * JR (F := F) R J * (A * B) := by simp only [Matrix.mul_assoc]
    _ = Ji * Formalism.UG.cT (sigR R σ) A * JR (F := F) R J := by rw [hAB, Matrix.mul_one]

variable [TopologicalSpace R] [IsTopologicalRing R] [IsTopologicalRing (R ⊗[F] E)]

theorem continuous_into_HA (hJ : IsHermND σ J) {X : Type} [TopologicalSpace X] {f : X → HA R σ J}
    (hf : Continuous fun x => ((HA.mat R σ J (f x) : GL (Fin M) (R ⊗[F] E)) :
      Matrix (Fin M) (Fin M) (R ⊗[F] E))) : Continuous f := by
  have hcT : Continuous fun x => Formalism.UG.cT (sigR R σ)
      ((HA.mat R σ J (f x) : GL (Fin M) (R ⊗[F] E)) : Matrix (Fin M) (Fin M) (R ⊗[F] E)) := by
    refine continuous_matrix fun i j => ?_
    exact (continuous_sigR R σ).comp (hf.matrix_elem j i)
  have hI : Continuous fun x =>
      ((HA.mat R σ J (f x)⁻¹ : GL (Fin M) (R ⊗[F] E)) : Matrix (Fin M) (Fin M) (R ⊗[F] E)) := by
    have e : (fun x =>
        ((HA.mat R σ J (f x)⁻¹ : GL (Fin M) (R ⊗[F] E)) : Matrix (Fin M) (Fin M) (R ⊗[F] E))) =
        fun x => (J⁻¹).map (inclR (F := F) R) *
          Formalism.UG.cT (sigR R σ) ((HA.mat R σ J (f x) : GL (Fin M) (R ⊗[F] E)) :
            Matrix (Fin M) (Fin M) (R ⊗[F] E)) * JR R J :=
      funext fun x => mat_inv_eq hJ (f x)
    rw [e]
    exact (continuous_const.matrix_mul hcT).matrix_mul continuous_const
  have hGL : Continuous fun x => (HA.mat R σ J (f x) : GL (Fin M) (R ⊗[F] E)) :=
    Units.continuous_iff.2 ⟨hf, hI⟩
  first
    | exact continuous_induced_rng.2 hGL

end HAcont

section Raw

variable {F E : Type} [Field F] [Field E] [Algebra F E] (R : Type) [CommRing R] [Algebra F R]
  [TopologicalSpace R] [IsTopologicalRing R] [IsTopologicalRing (R ⊗[F] E)] (σ : E →ₐ[F] E)
  {M : ℕ} (J : Matrix (Fin M) (Fin M) E) {r : ℕ} (P : Frame E M r) (T : F)

end Raw

end PI.VolSemiDirect.W.Md
