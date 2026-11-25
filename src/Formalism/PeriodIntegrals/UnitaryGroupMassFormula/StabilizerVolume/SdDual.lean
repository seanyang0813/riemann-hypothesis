module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.SdDual
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.SdUniq
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.PosNear
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.DensFibV
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.TensAll
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.TensTop
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.GeneralLinearIntegers.AlgebraMapIntMemOint

@[expose] public section

noncomputable section

namespace PI.VolStabS

namespace SdDualW

open scoped TensorProduct
open NumberField IsDedekindDomain MeasureTheory Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes PI.AdicCompletionValuation
  PI.VolFromSW PositiveNearLattice SdUniqW

variable {F : Type} [Field F] [NumberField F] (v : HeightOneSpectrum (𝓞 F))

variable {E : Type} [Field E] [Algebra F E] {d : ℕ} (b : Module.Basis (Fin d) F E)

def latSub (a M : ℕ) : AddSubgroup (Fin a → Fin M → Fv F v ⊗[F] E) where
  carrier := latV b v
  zero_mem' := by
    simp only [latV, Set.mem_ofPred_eq]
    intro p i k
    simp
  add_mem' := by
    intro X Y hX hY
    simp only [latV, Set.mem_ofPred_eq] at hX hY ⊢
    intro p i k
    simpa [Pi.add_apply, map_add (f := _)] using add_mem (hX p i k) (hY p i k)
  neg_mem' := by
    intro X hX
    simp only [latV, Set.mem_ofPred_eq] at hX ⊢
    intro p i k
    simpa [map_neg] using neg_mem (hX p i k)

export PI.VolStabSW.SdDualW (crd_smul sigR_smul BR_smul_left BR_add_right BR_smul_right)

section Nondeg

variable [FiniteDimensional F E]

export PI.VolStabSW.SdDualW (trace_one_tmul)


include b in
theorem trace_nondeg [Algebra.IsSeparable F E] (z : Fv F v ⊗[F] E)
    (h : ∀ w, Algebra.trace (Fv F v) (Fv F v ⊗[F] E) (w * z) = 0) : z = 0 := by
  apply PI.VolStabSW.SdDualW.trace_nondeg <;> assumption

end Nondeg

section Dual

variable [FiniteDimensional F E] (σ : E →ₐ[F] E) {M a : ℕ} (J : Matrix (Fin M) (Fin M) E)

export PI.VolStabSW.SdDualW (eT eT_mem sum_eT)

export PI.VolStabSW.SdDualW (BR_expand)

def phiL : (Fin a → Fin M → Fv F v ⊗[F] E) →ₗ[Fv F v] (Fin a × Fin M × Fin d → Fv F v) where
  toFun Y q := BR (Fv F v) σ J (eT v b q) Y
  map_add' Y Y' := by funext q; simp [BR_add_right]
  map_smul' s Y := by funext q; simp [BR_smul_right]

include b in
theorem bound_alt
    (hN : ∀ Y : Fin a → Fin M → Fv F v ⊗[F] E, (∀ X, BR (Fv F v) σ J X Y = 0) → Y = 0)
    (c : Fv F v) : ∃ K, IsCompact K ∧
      {y | ∀ x ∈ latSub v b a M, BR (Fv F v) σ J x y ∈
        (fun s => c * s) '' (v.adicCompletionIntegers F : Set (Fv F v))} ⊆ K := by
  apply PI.VolStabSW.SdDualW.bound_alt <;> assumption

include b in
theorem dualAt_alt
    (hN : ∀ Y : Fin a → Fin M → Fv F v ⊗[F] E, (∀ X, BR (Fv F v) σ J X Y = 0) → Y = 0) :
    DualAt v (BR (Fv F v) σ J (n := a)) := by
  apply PI.VolStabSW.SdDualW.dualAt_alt <;> assumption

end Dual

section NondegBR

variable [FiniteDimensional F E]

export PI.VolStabSW.SdDualW (nondeg_BR)

end NondegBR

section Herm

variable [FiniteDimensional F E]

def latA : AddSubgroup (Fv F v ⊗[F] E) where
  carrier := {z | ∀ k, crd b (Fv F v) z k ∈ v.adicCompletionIntegers F}
  zero_mem' := by intro k; simp [crd]
  add_mem' := by
    intro x y hx hy k
    simpa [crd, map_add (f := _)] using add_mem (hx k) (hy k)
  neg_mem' := by
    intro x hx k
    simpa [crd, map_neg] using neg_mem (hx k)

export PI.VolStabSW.SdDualW (isOpen_latA isCompact_latA)

def latS (σ : E →ₐ[F] E) : AddSubgroup (Fv F v ⊗[F] E) :=
  latA v b ⊔ (latA v b).map (sigR (Fv F v) σ).toAddMonoidHom

theorem mem_latS (σ : E →ₐ[F] E) (z : Fv F v ⊗[F] E) :
    z ∈ latS v b σ ↔ ∃ x ∈ latA v b, ∃ y ∈ latA v b, x + sigR (Fv F v) σ y = z := by
  simp only [latS, AddSubgroup.mem_sup, AddSubgroup.mem_map]
  constructor
  · rintro ⟨x, hx, _, ⟨y, hy, rfl⟩, rfl⟩
    exact ⟨x, hx, y, hy, rfl⟩
  · rintro ⟨x, hx, y, hy, rfl⟩
    exact ⟨x, hx, _, ⟨y, hy, rfl⟩, rfl⟩

theorem isCompact_latS (σ : E →ₐ[F] E) : IsCompact (latS v b σ : Set (Fv F v ⊗[F] E)) := by
  have e : (latS v b σ : Set (Fv F v ⊗[F] E)) =
      (fun p : (Fv F v ⊗[F] E) × (Fv F v ⊗[F] E) => p.1 + sigR (Fv F v) σ p.2) ''
        ((latA v b : Set (Fv F v ⊗[F] E)) ×ˢ (latA v b : Set (Fv F v ⊗[F] E))) := by
    ext z
    rw [SetLike.mem_coe, mem_latS]
    constructor
    · rintro ⟨x, hx, y, hy, rfl⟩
      exact ⟨(x, y), ⟨hx, hy⟩, rfl⟩
    · rintro ⟨⟨x, y⟩, ⟨hx, hy⟩, rfl⟩
      exact ⟨x, hx, y, hy, rfl⟩
  rw [e]
  have := locallyCompact_Fv F v
  exact ((isCompact_latA v b).prod (isCompact_latA v b)).image
    (continuous_fst.add ((continuous_sigR (Fv F v) σ).comp continuous_snd))

theorem isOpen_latS (σ : E →ₐ[F] E) : IsOpen (latS v b σ : Set (Fv F v ⊗[F] E)) :=
  AddSubgroup.isOpen_mono le_sup_left (isOpen_latA v b)

theorem smul_mem_latA {s : Fv F v} (hs : s ∈ v.adicCompletionIntegers F) {x : Fv F v ⊗[F] E}
    (hx : x ∈ latA v b) : s • x ∈ latA v b := by
  intro k
  rw [crd_smul]
  exact mul_mem hs (hx k)

theorem smul_mem_latS (σ : E →ₐ[F] E) {s : Fv F v} (hs : s ∈ v.adicCompletionIntegers F)
    {z : Fv F v ⊗[F] E} (hz : z ∈ latS v b σ) : s • z ∈ latS v b σ := by
  rw [mem_latS] at hz ⊢
  obtain ⟨x, hx, y, hy, rfl⟩ := hz
  exact ⟨s • x, smul_mem_latA v b hs hx, s • y, smul_mem_latA v b hs hy, by
    rw [smul_add, sigR_smul]⟩

theorem trace_sigR (σ : E →ₐ[F] E) (hσ : ∀ x, σ (σ x) = x) (w : Fv F v ⊗[F] E) :
    Algebra.trace (Fv F v) (Fv F v ⊗[F] E) (sigR (Fv F v) σ w) =
      Algebra.trace (Fv F v) (Fv F v ⊗[F] E) w := by
  let B := Algebra.TensorProduct.basis (Fv F v) (Module.finBasis F E)
  have hB : ∀ k, B k = (1 : Fv F v) ⊗ₜ[F] (Module.finBasis F E) k := fun k =>
    Algebra.TensorProduct.basis_apply _ _
  let eσ : E ≃ₐ[F] E := AlgEquiv.ofBijective σ
    ⟨σ.toRingHom.injective, fun x => ⟨σ x, hσ x⟩⟩
  have htr : ∀ e : E, Algebra.trace F E (σ e) = Algebra.trace F E e := fun e =>
    Algebra.trace_eq_of_algEquiv eσ e
  conv_lhs => rw [← B.sum_repr w]
  conv_rhs => rw [← B.sum_repr w]

  rw [map_sum, map_sum, map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [sigR_smul, map_smul, map_smul, hB]
  have : sigR (Fv F v) σ ((1 : Fv F v) ⊗ₜ[F] (Module.finBasis F E) k) =
      (1 : Fv F v) ⊗ₜ[F] σ ((Module.finBasis F E) k) := by simp [sigR]
  rw [this, trace_one_tmul, trace_one_tmul, htr]

def latH (σ : E →ₐ[F] E) (a : ℕ) : AddSubgroup (HermR (Fv F v) σ a) where
  carrier := {S | ∀ p q, (S : Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E)) p q ∈ latS v b σ}
  zero_mem' := by intro p q; simp
  add_mem' := by
    intro S T hS hT p q
    simpa using add_mem (hS p q) (hT p q)
  neg_mem' := by
    intro S hS p q
    simpa using neg_mem (hS p q)

theorem latH_eq (σ : E →ₐ[F] E) (a : ℕ) :
    (latH v b σ a : Set (HermR (Fv F v) σ a)) = Subtype.val ⁻¹'
      ((Set.univ.pi fun _ => Set.univ.pi fun _ => (latS v b σ : Set (Fv F v ⊗[F] E))) :
        Set (Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E))) := by
  ext S
  exact ⟨fun h p _ q _ => h p q, fun h p q => h p (Set.mem_univ _) q (Set.mem_univ _)⟩

export PI.VolStabSW.SdDualW (iota iota_mem pairHerm_iota dualAt_H)

end Herm

end SdDualW

open scoped TensorProduct
open NumberField IsDedekindDomain MeasureTheory Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes PI.AdicCompletionValuation
  PI.VolFromSW SdUniqW

def DualHV : Prop := InCtx fun F E _ _ _ _ _ σ _M _J a _X0 _hT =>
  ∀ v : HeightOneSpectrum (𝓞 F), DualAt v (pairHerm (Fv F v) σ a)

theorem dualLatV_of (hH : DualHV) : DualLatV := by
  intro F E _ _ _ _ _ σ hCM M J hJ h1 h2 a h3 h4 X0 hT hdet v
  have : FiniteDimensional F E := Module.finite_of_finrank_pos (by rw [hCM.2.2.1]; norm_num)
  have hσ : ∀ x, σ (σ x) = x := sigma_invol σ hCM.2.2.2
  refine ⟨?_, hH F E σ hCM M J hJ h1 h2 a h3 h4 X0 hT hdet v⟩
  exact SdDualW.dualAt_alt v (Module.finBasis F E) σ J
    (fun Y hY => SdDualW.nondeg_BR v σ hσ J hJ.2 Y hY)

theorem dualHV_holds : DualHV := by
  intro F E _ _ _ _ _ σ hCM M J hJ h1 h2 a h3 h4 X0 hT hdet v
  have : FiniteDimensional F E := Module.finite_of_finrank_pos (by rw [hCM.2.2.1]; norm_num)
  exact SdDualW.dualAt_H v (Module.finBasis F E) σ (sigma_invol σ hCM.2.2.2) a

theorem dualLatV_holds : DualLatV := dualLatV_of dualHV_holds

theorem sdUniq_of_inf (hI : SdTestInf) : SdUniq := sdUniq_of_dual hI dualLatV_holds

end PI.VolStabS
