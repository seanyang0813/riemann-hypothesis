module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.BdryChart
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsLieModel

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat.BdryModel

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl

def iota (R : Type) [CommRing R] : epsR R ≅ epsAt (𝟙 (Sp R)) := Over.isoMk (Iso.refl _) (by simp)

theorem iota_left {R : Type} [CommRing R] {G : Over (Sp R)} (w : epsAt (𝟙 (Sp R)) ⟶ G) :
    ((iota R).hom ≫ w).left = w.left := Category.id_comp _

theorem tan_iff {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G] (w : epsAt (𝟙 (Sp R)) ⟶ G) :
    IsTangent ((iota R).hom ≫ w) ↔ IsTanAt G (𝟙 _) w := by
  unfold IsTangent IsTanAt
  rw [iota_left]
  have : (1 : Over.mk (𝟙 (Sp R)) ⟶ G).left = η[G].left := by
    rw [Hom.one_def]; simp
  rw [this]

theorem basis_of_isLieBasis {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G] {n : ℕ}
    (v : Fin n → (epsR R ⟶ G)) (hv : IsLieBasis v) {E : Type} [AddCommGroup E] [Module R E]
    (M : LieModel G (𝟙 _) E) : Nonempty ((Fin n → R) ≃ₗ[R] E) := by
  have h1 : ∀ i, ∃ e, (iota R).hom ≫ M.pt e = v i := fun i => by
    obtain ⟨e, he⟩ := M.onto ((iota R).inv ≫ v i) ((tan_iff _).1 (by simpa using hv.1 i))
    exact ⟨e, by simp [he]⟩
  choose e he using h1
  let F : Multiplicative E →* (epsR R ⟶ G) := MonoidHom.mk' (fun x => (iota R).hom ≫ M.pt x.toAdd)
    (fun a b => by simp [M.add, MonObj.comp_mul])
  have hF : Function.Injective F := fun a b h => M.inj ((cancel_epi (iota R).hom).1 h)
  have hs : ∀ c : Fin n → R, (iota R).hom ≫ M.pt (∑ i, c i • e i) =
      (List.ofFn fun i => (iota R).hom ≫ M.pt (c i • e i)).prod := fun c => by
    change F (Multiplicative.ofAdd (∑ i, c i • e i)) = _
    rw [ofAdd_sum, ← List.prod_ofFn, map_list_prod, List.map_ofFn]
    rfl
  have hl : ∀ (c : R) i, ((iota R).hom ≫ M.pt (c • e i)).left = spMap (epsScaleR c) ≫ (v i).left := fun c i => by
    rw [iota_left, M.smul, ← he, iota_left]; rfl
  have key : ∀ (c : Fin n → R) (x : E), IsLieComb c v ((iota R).hom ≫ M.pt x) ↔ x = ∑ i, c i • e i := by
    intro c x
    constructor
    · rintro ⟨u, hu, hx⟩
      have : u = fun i => (iota R).hom ≫ M.pt (c i • e i) := by
        funext i; ext1; rw [hu, hl]
      rw [this, ← hs] at hx
      exact M.inj ((cancel_epi (iota R).hom).1 hx)
    · rintro rfl
      exact ⟨_, fun i => hl _ i, hs c⟩
  refine ⟨LinearEquiv.ofBijective (Fintype.linearCombination R e) ⟨fun c c' h => ?_, fun x => ?_⟩⟩
  · simp only [Fintype.linearCombination_apply] at h
    exact (hv.2 _ ((tan_iff _).2 (M.tan (∑ i, c i • e i)))).unique ((key _ _).2 rfl) ((key _ _).2 h)
  · obtain ⟨c, hc, -⟩ := hv.2 _ ((tan_iff _).2 (M.tan x))
    exact ⟨c, by rw [Fintype.linearCombination_apply]; exact ((key _ _).1 hc).symm⟩

theorem lieModel_of_isLieBasis {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G] {n : ℕ}
    (v : Fin n → (epsR R ⟶ G)) (hv : IsLieBasis v) : Nonempty (LieModel G (𝟙 _) (Fin n → R)) := by
  obtain ⟨E, _, _, ⟨M⟩⟩ := lieModel_exists _ G R (𝟙 _)
  obtain ⟨φ⟩ := basis_of_isLieBasis v hv M
  exact ⟨{ pt := fun c => M.pt (φ c), tan := fun c => M.tan _, inj := M.inj.comp φ.injective
           onto := fun w hw => by
             obtain ⟨x, hx⟩ := M.onto w hw
             exact ⟨φ.symm x, by simpa using hx⟩
           add := fun a b => by rw [map_add (f := _), M.add]
           smul := fun c a => by rw [map_smul, M.smul] }⟩

theorem half_mem_punct (n a : ℕ) : (fun _ => (1 / 2 : ℂ)) ∈ punct n a 1 := by
  refine ⟨?_, fun _ _ => by norm_num⟩
  rw [mem_ball_zero_iff, pi_norm_lt_iff one_pos]
  intro i; norm_num

def evalHom {X : Scheme.{0}} (x : Sp ℂ ⟶ X) (U : X.Opens) (h : ⊤ ≤ x ⁻¹ᵁ U) : Γ(X, U) →+* ℂ :=
  (x.appLE U ⊤ h ≫ (Scheme.ΓSpecIso (CommRingCat.of ℂ)).hom).hom

theorem spMap_evalHom {X : Scheme.{0}} (x : Sp ℂ ⟶ X) (U : X.Opens) (hU : IsAffineOpen U) (h : ⊤ ≤ x ⁻¹ᵁ U) :
    spMap (evalHom x U h) ≫ hU.fromSpec = x := by
  change Spec.map (x.appLE U ⊤ h ≫ (Scheme.ΓSpecIso (CommRingCat.of ℂ)).hom) ≫ hU.fromSpec = x
  rw [Spec.map_comp, Category.assoc, IsAffineOpen.SpecMap_appLE_fromSpec x hU (isAffineOpen_top _) h,
    IsAffineOpen.fromSpec_top, Scheme.isoSpec_Spec_inv, ← Category.assoc, ← Spec.map_comp, Iso.inv_hom_id,
    Spec.map_id, Category.id_comp]

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}

variable {Xo : Moduli D l} {σ : KA l →+* ℂ} {n a : ℕ} (C : BdryChart Xo σ n a)

end GlobalTheory.CompanionTheory.Ar.Flat.BdryModel
