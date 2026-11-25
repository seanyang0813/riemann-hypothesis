module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.LevelIntersectParabolic
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FstMemSpan
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.MemSGIffFlagC
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace MassDataIdxStIm

open Matrix Formalism.FourierDecayAlt.S3 Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub MassDataIdxSpl
open scoped TensorProduct

section Reindex

variable {K : Type} [Field K] {n ι : Type} [Fintype n] [DecidableEq n] [Fintype ι] [DecidableEq ι] {m : ℕ}

end Reindex

section Split

variable {F E R : Type} [Field F] [Field E] [Algebra F E] [Field R] [Algebra F R]
  (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (θ : R ⊗[F] E ≃ₐ[R] R × R)

def cmp1 (g : HA R σ J) : Matrix (Fin n) (Fin n) R :=
  ((HA.mat R σ J g : GL (Fin n) (R ⊗[F] E)) : Matrix (Fin n) (Fin n) (R ⊗[F] E)).map (fun t => (θ t).1)

def cmp2 (g : HA R σ J) : Matrix (Fin n) (Fin n) R :=
  ((HA.mat R σ J g : GL (Fin n) (R ⊗[F] E)) : Matrix (Fin n) (Fin n) (R ⊗[F] E)).map (fun t => (θ t).2)

def jm1 : Matrix (Fin n) (Fin n) R := (JR R J).map (fun t => (θ t).1)

theorem cmp_unit (hθ : ∀ t, θ (sigR R σ t) = (θ t).swap) (g : HA R σ J) :
    (cmp2 σ J θ g)ᵀ * jm1 J θ * cmp1 σ J θ g = jm1 J θ := by
  have hg : Formalism.UG.cT (sigR R σ) ((HA.mat R σ J g : GL (Fin n) (R ⊗[F] E)) : Matrix (Fin n) (Fin n) (R ⊗[F] E)) * JR R J * ((HA.mat R σ J g : GL (Fin n) (R ⊗[F] E)) : Matrix (Fin n) (Fin n) (R ⊗[F] E)) = JR R J := g.2
  let f1 : R ⊗[F] E →+* R := (RingHom.fst R R).comp θ.toRingEquiv.toRingHom
  have h1 := congrArg (fun M => Matrix.map M f1) hg
  simp only [Matrix.map_mul] at h1
  have e1 : (Formalism.UG.cT (sigR R σ) ((HA.mat R σ J g : GL (Fin n) (R ⊗[F] E)) : Matrix (Fin n) (Fin n) (R ⊗[F] E))).map f1 = (cmp2 σ J θ g)ᵀ := by
    ext i j
    simp only [Formalism.UG.cT, Matrix.map_apply, Matrix.transpose_apply]
    show (θ (sigR R σ (((HA.mat R σ J g : GL (Fin n) (R ⊗[F] E)) : Matrix (Fin n) (Fin n) (R ⊗[F] E)) j i))).1 = (θ (((HA.mat R σ J g : GL (Fin n) (R ⊗[F] E)) : Matrix (Fin n) (Fin n) (R ⊗[F] E)) j i)).2
    rw [hθ]
    rfl
  rw [e1] at h1
  exact h1

private theorem mem_span_image_iff_pr1_pr2_mem_span {ι : Type} [Fintype ι] (s : Set ι) (u : ι → Fin n → R ⊗[F] E)
    (w : Fin n → R ⊗[F] E) :
    w ∈ Submodule.span (R ⊗[F] E) (u '' s) ↔
      pr1 θ w ∈ Submodule.span R ((fun i => pr1 θ (u i)) '' s) ∧
      pr2 θ w ∈ Submodule.span R ((fun i => pr2 θ (u i)) '' s) := by
  classical
  have h1 : ∀ (c : R ⊗[F] E) (v : Fin n → R ⊗[F] E), pr1 θ (c • v) = (θ c).1 • pr1 θ v := by
    intro c v
    funext i
    show (θ (c * v i)).1 = (θ c).1 * (θ (v i)).1
    rw [map_mul]
    rfl
  have h2 : ∀ (c : R ⊗[F] E) (v : Fin n → R ⊗[F] E), pr2 θ (c • v) = (θ c).2 • pr2 θ v := by
    intro c v
    funext i
    show (θ (c * v i)).2 = (θ c).2 * (θ (v i)).2
    rw [map_mul]
    rfl
  have hinj : ∀ x y : Fin n → R ⊗[F] E, pr1 θ x = pr1 θ y → pr2 θ x = pr2 θ y → x = y := by
    intro x y hx hy
    funext i
    apply θ.injective
    exact Prod.ext (congrFun hx i) (congrFun hy i)
  simp only [Set.image_eq_range, Submodule.mem_span_range_iff_exists_fun]
  constructor
  · rintro ⟨c, rfl⟩
    refine ⟨⟨fun i => (θ (c i)).1, ?_⟩, ⟨fun i => (θ (c i)).2, ?_⟩⟩
    · rw [map_sum]
      apply Finset.sum_congr rfl
      intro i hi
      exact (h1 (c i) (u ↑i)).symm
    · rw [map_sum]
      apply Finset.sum_congr rfl
      intro i hi
      exact (h2 (c i) (u ↑i)).symm
  · rintro ⟨⟨a, ha⟩, ⟨b, hb⟩⟩
    refine ⟨fun i => θ.symm (a i, b i), ?_⟩
    apply hinj
    · rw [map_sum]
      simp only [h1, AlgEquiv.apply_symm_apply]
      exact ha
    · rw [map_sum]
      simp only [h2, AlgEquiv.apply_symm_apply]
      exact hb

private theorem pr1_lin_eq_cmp1_mulVec (g : HA R σ J) (v : Fin n → R ⊗[F] E) :
    pr1 θ (lin R σ J g v) = cmp1 σ J θ g *ᵥ pr1 θ v := by
  have hp : ∀ (w : Fin n → R ⊗[F] E) (k : Fin n), pr1 θ w k = (θ (w k)).1 := fun _ _ => rfl
  funext i

  simp only [hp, lin, Matrix.mulVecLin_apply, Matrix.mulVec, dotProduct, cmp1, Matrix.map_apply,
  map_sum, Prod.fst_sum, map_mul, Prod.fst_mul]

private theorem pr2_lin_eq_cmp2_mulVec (g : HA R σ J) (v : Fin n → R ⊗[F] E) :
    pr2 θ (lin R σ J g v) = cmp2 σ J θ g *ᵥ pr2 θ v := by
  have hp : ∀ (w : Fin n → R ⊗[F] E) (k : Fin n), pr2 θ w k = (θ (w k)).2 := fun _ _ => rfl
  funext i

  simp only [hp, lin, Matrix.mulVecLin_apply, Matrix.mulVec, dotProduct, cmp2, Matrix.map_apply,
  map_sum, Prod.snd_sum, map_mul, Prod.snd_mul]

theorem mem_Ssub_iff_flagC {r : ℕ} (P : Frame E n r) (g : HA R σ J) :
    g ∈ Ssub R σ J P ↔ FlagC (cmp1 σ J θ g) (fun b => pr1 θ (ratV (F := F) R (F0 P b))) ∧
      FlagC (cmp2 σ J θ g) (fun b => pr2 θ (ratV (F := F) R (F0 P b))) := by
  have hm : g ∈ Ssub R σ J P ↔ UniC R σ J (F0 P) g := Iff.rfl
  rw [hm]
  unfold UniC FlagC
  rw [← forall_and]
  apply forall_congr'
  intro b
  show lin R σ J g (ratV (F := F) R (F0 P b)) - ratV (F := F) R (F0 P b) ∈ spanR (F := F) R (F0 P) {a | a < b} ↔
    (cmp1 σ J θ g *ᵥ pr1 θ (ratV (F := F) R (F0 P b)) - pr1 θ (ratV (F := F) R (F0 P b)) ∈
      Submodule.span R ((fun c => pr1 θ (ratV (F := F) R (F0 P c))) '' {a | a < b})) ∧
    (cmp2 σ J θ g *ᵥ pr2 θ (ratV (F := F) R (F0 P b)) - pr2 θ (ratV (F := F) R (F0 P b)) ∈
      Submodule.span R ((fun c => pr2 θ (ratV (F := F) R (F0 P c))) '' {a | a < b}))
  unfold spanR
  rw [mem_span_image_iff_pr1_pr2_mem_span, map_sub, map_sub, pr1_lin_eq_cmp1_mulVec, pr2_lin_eq_cmp2_mulVec]

end Split

end MassDataIdxStIm
