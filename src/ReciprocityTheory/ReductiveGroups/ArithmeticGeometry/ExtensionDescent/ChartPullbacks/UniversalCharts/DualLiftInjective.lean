module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.IsUnivChart
public import Mathlib.Algebra.DualNumber

@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj

namespace ReciprocityTheory.ChartRestriction.G.Chart

attribute [local instance] Over.cartesianMonoidalCategory

variable {R : Type} [CommRing R]

abbrev fstD (R : Type) [CommRing R] : DualNumber R →ₐ[R] R := TrivSqZeroExt.fstHom R R R

private theorem ker_fstHom_sq {M : Type} [AddCommGroup M] [Module R M] [Module Rᵐᵒᵖ M]
    [IsCentralScalar R M] :
    RingHom.ker (TrivSqZeroExt.fstHom R R M) ^ 2 = ⊥ := by
  rw [← le_bot_iff, pow_two, Ideal.mul_le]
  intro a ha b hb
  have ha0 : a.fst = 0 := ha
  have hb0 : b.fst = 0 := hb
  rw [Ideal.mem_bot, show a = TrivSqZeroExt.inr a.snd from TrivSqZeroExt.ext ha0 rfl,
    show b = TrivSqZeroExt.inr b.snd from TrivSqZeroExt.ext hb0 rfl, TrivSqZeroExt.inr_mul_inr]

theorem kerD_sq : (RingHom.ker (fstD R)) ^ (1 + 1) = ⊥ :=
  ker_fstHom_sq (M := R)

section FirstJet

variable (R) (κ : Type)

private def firstJetToSqZero : JetR R κ 1 →ₐ[R] TrivSqZeroExt R (κ →₀ R) :=
  jetLift (R := R) (RingHom.ker (TrivSqZeroExt.fstHom R R (κ →₀ R))) (ker_fstHom_sq (M := κ →₀ R))
    (fun j => TrivSqZeroExt.inr (Finsupp.single j 1)) (fun _ => rfl)

private theorem firstJetToSqZero_zR (j : κ) :
    firstJetToSqZero R κ (zR 1 j) = TrivSqZeroExt.inr (Finsupp.single j 1) :=
  jetLift_zR _ _ _ _ j

private def firstJetFromSqZero : TrivSqZeroExt R (κ →₀ R) →ₐ[R] JetR R κ 1 := by
  let g := Finsupp.linearCombination R (zR (R := R) 1 : κ → JetR R κ 1)
  have hg (v : κ →₀ R) : g v ∈ RingHom.ker (jetAug R κ 1) := by
    have h : (jetAug R κ 1).toLinearMap.comp g = 0 := by
      apply Finsupp.lhom_ext
      intro j c
      simp [g, jetAug_zR]
    exact LinearMap.congr_fun h v
  refine TrivSqZeroExt.liftEquivOfComm ⟨g, fun v w => ?_⟩
  have h := Ideal.mul_mem_mul (hg v) (hg w)
  rwa [← pow_two (RingHom.ker (jetAug R κ 1)), ker_jetAug_pow, Ideal.mem_bot] at h

private theorem firstJetFromSqZero_apply (x : TrivSqZeroExt R (κ →₀ R)) :
    firstJetFromSqZero R κ x = algebraMap R _ x.fst +
      Finsupp.linearCombination R (zR (R := R) 1) x.snd :=
  rfl

/-- First-order jets are a square-zero extension by the free module on the coordinates. -/
@[no_expose]
def firstJetEquiv : JetR R κ 1 ≃ₐ[R] TrivSqZeroExt R (κ →₀ R) :=
  AlgEquiv.ofAlgHom (firstJetToSqZero R κ) (firstJetFromSqZero R κ)
    (by
      apply TrivSqZeroExt.algHom_ext
      intro v
      have h : (firstJetToSqZero R κ).toLinearMap.comp
          (Finsupp.linearCombination R (zR (R := R) 1)) = TrivSqZeroExt.inrHom R (κ →₀ R) := by
        apply Finsupp.lhom_ext
        intro j c
        simp only [LinearMap.comp_apply, Finsupp.linearCombination_single, AlgHom.toLinearMap_apply,
          map_smul, firstJetToSqZero_zR, TrivSqZeroExt.inrHom_apply, ← TrivSqZeroExt.inr_smul,
          Finsupp.smul_single, smul_eq_mul, _root_.mul_one]
      simpa [firstJetFromSqZero_apply] using LinearMap.congr_fun h v)
    (jet_ext fun j => by
      simp [firstJetToSqZero_zR, firstJetFromSqZero_apply, Finsupp.linearCombination_single])

@[simp]
theorem firstJetEquiv_zR (j : κ) :
    firstJetEquiv R κ (zR 1 j) = TrivSqZeroExt.inr (Finsupp.single j 1) :=
  firstJetToSqZero_zR R κ j

@[simp]
theorem firstJetEquiv_fst (a : JetR R κ 1) : (firstJetEquiv R κ a).fst = jetAug R κ 1 a := by
  have h : (TrivSqZeroExt.fstHom R R (κ →₀ R)).comp (firstJetEquiv R κ).toAlgHom =
      jetAug R κ 1 :=
    jet_ext fun j => by
      change (firstJetEquiv R κ (zR 1 j)).fst = jetAug R κ 1 (zR 1 j)
      rw [firstJetEquiv_zR, TrivSqZeroExt.fst_inr, jetAug_zR]
  exact AlgHom.congr_fun h a

theorem firstJetEquiv_symm_apply (x : TrivSqZeroExt R (κ →₀ R)) :
    (firstJetEquiv R κ).symm x = algebraMap R _ x.fst + x.snd.sum (fun j c => c • zR 1 j) :=
  firstJetFromSqZero_apply R κ x

end FirstJet

theorem inr_mem_kerD (t : R) : (TrivSqZeroExt.inr t : DualNumber R) ∈ RingHom.ker (fstD R) :=
  TrivSqZeroExt.fst_inr R t

def dualLift {n : ℕ} (c : Fin n → R) : JetR R (Fin n) 1 →ₐ[R] DualNumber R :=
  jetLift (R := R) (RingHom.ker (fstD R)) kerD_sq (fun j => TrivSqZeroExt.inr (c j))
    (fun j => inr_mem_kerD (c j))

theorem dualLift_zR {n : ℕ} (c : Fin n → R) (j : Fin n) : dualLift c (zR 1 j) = TrivSqZeroExt.inr (c j) :=
  jetLift_zR _ _ _ _ j

theorem fstD_comp_dualLift {n : ℕ} (c : Fin n → R) : (fstD R).comp (dualLift c) = jetAug R (Fin n) 1 :=
  jet_ext fun j => by rw [AlgHom.comp_apply, dualLift_zR, jetAug_zR]; exact inr_mem_kerD (c j)

theorem eq_dualLift {n : ℕ} (ψ : JetR R (Fin n) 1 →ₐ[R] DualNumber R) (h : (fstD R).comp ψ = jetAug R (Fin n) 1) :
    ψ = dualLift (fun j => (ψ (zR 1 j)).snd) :=
  jet_ext fun j => by
    rw [dualLift_zR]
    apply TrivSqZeroExt.ext
    · rw [TrivSqZeroExt.fst_inr]
      have := AlgHom.congr_fun h (zR 1 j)
      rw [AlgHom.comp_apply, jetAug_zR] at this
      exact this
    · rfl

variable {G : Over (Spec (CommRingCat.of R))} [GrpObj G]

theorem comp_one' {T T' : Over (Spec (CommRingCat.of R))} (f : T' ⟶ T) : f ≫ (1 : T ⟶ G) = 1 := by
  rw [Hom.one_def, Hom.one_def, ← Category.assoc, toUnit_unique (f ≫ toUnit T) (toUnit T')]

theorem spMap_jetAug_alt {n : ℕ} {x : ∀ m : ℕ, sp (R₀ := R) (JetR R (Fin n) m) ⟶ G} (hx : IsUnivChart G n x)
    (m : ℕ) : spMap (jetAug R (Fin n) m) ≫ x m = 1 := by
  have e : jetAug R (Fin n) m = (jetAug R (Fin n) 0).comp (jetZeroR R (Fin n) m) :=
    (jet_ext fun j => by rw [AlgHom.comp_apply, jetAug_zR]; exact (jetAug_zR (R := R) 0 j).symm)
  rw [e, ← spMap_comp, Category.assoc, hx.2.1 m, comp_one']

def IsTan (w : sp (R₀ := R) (DualNumber R) ⟶ G) : Prop := spMap (fstD R) ≫ w = 1

variable {n : ℕ} {x : ∀ m : ℕ, sp (R₀ := R) (JetR R (Fin n) m) ⟶ G} (hx : IsUnivChart G n x)

include hx in
theorem isTan_dualLift (c : Fin n → R) : IsTan (spMap (dualLift c) ≫ x 1) := by
  rw [IsTan, ← Category.assoc, spMap_comp, fstD_comp_dualLift]
  exact spMap_jetAug_alt hx 1

include hx in
theorem exists_coord (w : sp (R₀ := R) (DualNumber R) ⟶ G) (hw : IsTan w) :
    ∃! c : Fin n → R, w = spMap (dualLift c) ≫ x 1 := by
  obtain ⟨ψ, ⟨h1, h2⟩, hu⟩ := hx.2.2 (DualNumber R) (fstD R) 1 kerD_sq w hw
  refine ⟨fun j => (ψ (zR 1 j)).snd, ?_, ?_⟩
  · show w = spMap (dualLift (fun j => (ψ (zR 1 j)).snd)) ≫ x 1
    rw [← eq_dualLift ψ h1]
    exact h2
  · intro c hc
    have := hu (dualLift c) ⟨fstD_comp_dualLift c, hc⟩
    rw [← this]
    funext j
    rw [dualLift_zR, TrivSqZeroExt.snd_inr]

def tcoord (w : sp (R₀ := R) (DualNumber R) ⟶ G) (hw : IsTan w) : Fin n → R :=
  (exists_coord hx w hw).exists.choose

theorem tcoord_spec (w : sp (R₀ := R) (DualNumber R) ⟶ G) (hw : IsTan w) :
    w = spMap (dualLift (tcoord hx w hw)) ≫ x 1 :=
  (exists_coord hx w hw).exists.choose_spec

theorem tcoord_eq (w : sp (R₀ := R) (DualNumber R) ⟶ G) (hw : IsTan w) (c : Fin n → R)
    (hc : w = spMap (dualLift c) ≫ x 1) : tcoord hx w hw = c :=
  (exists_coord hx w hw).unique (tcoord_spec hx w hw) hc

end ReciprocityTheory.ChartRestriction.G.Chart
