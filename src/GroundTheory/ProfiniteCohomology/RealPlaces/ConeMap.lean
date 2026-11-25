module

public import GroundTheory.ProfiniteCohomology.CompactSupportCohomology
public import GroundTheory.ProfiniteCohomology.RealPlaces.ConeDefs

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory Limits

universe u

section Complexes

variable {k : Type u} [CommRing k]

noncomputable def degZeroMapF {E E' : ModuleCat.{u} k} (f : E ⟶ E') :
    ∀ n, (degZeroComplex E).X n ⟶ (degZeroComplex E').X n
  | 0 => f
  | _ + 1 => 0

noncomputable def degZeroMap {E E' : ModuleCat.{u} k} (f : E ⟶ E') :
    degZeroComplex E ⟶ degZeroComplex E' :=
  CochainComplex.ofHom (degZeroMapF f) fun n => by
    rw [degZeroComplex_d, degZeroComplex_d, comp_zero, zero_comp]

theorem degZeroMap_comp {E E' E'' : ModuleCat.{u} k} (f : E ⟶ E') (f' : E' ⟶ E'') :
    degZeroMap (f ≫ f') = degZeroMap f ≫ degZeroMap f' := by
  ext n : 1
  cases n with
  | zero => rfl
  | succ n => exact ModuleCat.hom_ext (LinearMap.ext fun _ => Subsingleton.elim _ _)

noncomputable def degZeroShortComplex (S : ShortComplex (ModuleCat.{u} k)) :
    ShortComplex (CochainComplex (ModuleCat.{u} k) ℕ) :=
  ShortComplex.mk (degZeroMap S.f) (degZeroMap S.g) (by rw [← degZeroMap_comp, S.zero]; ext n : 1; cases n <;> rfl)

theorem degZeroShortComplex_shortExact {S : ShortComplex (ModuleCat.{u} k)} (hS : S.ShortExact) :
    (degZeroShortComplex S).ShortExact :=
  HomologicalComplex.shortExact_of_degreewise_shortExact _ fun n => by
    cases n with
    | zero => exact hS
    | succ n =>
      have h0 : IsZero ((degZeroComplex S.X₂).X (n + 1)) := ModuleCat.isZero_of_subsingleton _
      exact { exact := ShortComplex.exact_of_isZero_X₂ _ h0
              mono_f := (ModuleCat.mono_iff_injective _).2 fun x y _ =>
                Subsingleton.elim (α := PUnit) x y
              epi_g := (ModuleCat.epi_iff_surjective _).2 fun y =>
                ⟨PUnit.unit, Subsingleton.elim (α := PUnit) _ y⟩ }

noncomputable def prodShortComplex (S T : ShortComplex (CochainComplex (ModuleCat.{u} k) ℕ)) :
    ShortComplex (CochainComplex (ModuleCat.{u} k) ℕ) :=
  ShortComplex.mk (prodMapCx S.f T.f) (prodMapCx S.g T.g)
    (HomologicalComplex.hom_ext _ _ fun n => ModuleCat.hom_ext (LinearMap.ext fun x => Prod.ext
      (hom_apply_hom_apply_of_comp_eq (congrArg (·.f n) S.zero) x.1)
      (hom_apply_hom_apply_of_comp_eq (congrArg (·.f n) T.zero) x.2)))

private theorem shortExact_prodMapCx
    {M₁ M₂ M₃ N₁ N₂ N₃ : CochainComplex (ModuleCat.{u} k) ℕ}
    {fM : M₁ ⟶ M₂} {gM : M₂ ⟶ M₃} {zM : fM ≫ gM = 0}
    {fN : N₁ ⟶ N₂} {gN : N₂ ⟶ N₃} {zN : fN ≫ gN = 0}
    {z : prodMapCx fM fN ≫ prodMapCx gM gN = 0}
    (hS : (ShortComplex.mk fM gM zM).ShortExact)
    (hT : (ShortComplex.mk fN gN zN).ShortExact) :
    (ShortComplex.mk (prodMapCx fM fN) (prodMapCx gM gN) z).ShortExact :=
  HomologicalComplex.shortExact_of_degreewise_shortExact _ fun n => by
    have h1 := (HomologicalComplex.shortExact_iff_degreewise_shortExact _).1 hS n
    have h2 := (HomologicalComplex.shortExact_iff_degreewise_shortExact _).1 hT n
    refine { exact := ?_, mono_f := ?_, epi_g := ?_ }
    · rw [ShortComplex.moduleCat_exact_iff]
      intro (x : M₂.X n × N₂.X n) hx
      have e1 := h1.exact
      have e2 := h2.exact
      rw [ShortComplex.moduleCat_exact_iff] at e1 e2
      obtain ⟨y1, hy1⟩ := e1 x.1 (congrArg Prod.fst hx)
      obtain ⟨y2, hy2⟩ := e2 x.2 (congrArg Prod.snd hx)
      exact ⟨(show (prodComplex M₁ N₁).X n from (y1, y2)), Prod.ext hy1 hy2⟩
    · exact (ModuleCat.mono_iff_injective _).2 fun (x x' : M₁.X n × N₁.X n) hxx =>
        Prod.ext ((ModuleCat.mono_iff_injective _).1 h1.mono_f (congrArg Prod.fst hxx))
          ((ModuleCat.mono_iff_injective _).1 h2.mono_f (congrArg Prod.snd hxx))
    · refine (ModuleCat.epi_iff_surjective _).2 fun (z : M₃.X n × N₃.X n) => ?_
      obtain ⟨y1, hy1⟩ := (ModuleCat.epi_iff_surjective _).1 h1.epi_g z.1
      obtain ⟨y2, hy2⟩ := (ModuleCat.epi_iff_surjective _).1 h2.epi_g z.2
      exact ⟨(show (prodComplex M₂ N₂).X n from (y1, y2)), Prod.ext hy1 hy2⟩

theorem prodShortComplex_shortExact {S T : ShortComplex (CochainComplex (ModuleCat.{u} k) ℕ)}
    (hS : S.ShortExact) (hT : T.ShortExact) : (prodShortComplex S T).ShortExact :=
  shortExact_prodMapCx hS hT

end Complexes

section RepProducts

variable {k : Type u} [CommRing k] {κ : Type u} {F : κ → Type u} [∀ w, Group (F w)]

noncomputable def piRepHom {Aᵣ Bᵣ : ∀ w, Rep.{u} k (F w)} (g : ∀ w, Aᵣ w ⟶ Bᵣ w) :
    ModuleCat.of k (∀ w, Aᵣ w) ⟶ ModuleCat.of k (∀ w, Bᵣ w) :=
  ModuleCat.ofHom (LinearMap.pi fun w => (g w).hom.toLinearMap.comp (LinearMap.proj w))

noncomputable def piRepShortComplex (S : ∀ w, ShortComplex (Rep.{u} k (F w))) :
    ShortComplex (ModuleCat.{u} k) :=
  ShortComplex.mk (piRepHom fun w => (S w).f) (piRepHom fun w => (S w).g)
    (ModuleCat.hom_ext (LinearMap.ext fun e => funext fun w =>
      congrArg (fun φ => Rep.Hom.hom φ (e w)) (S w).zero))

theorem piRepShortComplex_shortExact {S : ∀ w, ShortComplex (Rep.{u} k (F w))}
    (hS : ∀ w, (S w).ShortExact) : (piRepShortComplex S).ShortExact := by
  refine { exact := ?_, mono_f := ?_, epi_g := ?_ }
  · rw [ShortComplex.moduleCat_exact_iff]
    intro (x : ∀ w, (S w).X₂) hx
    have e : ∀ w, ∃ y : (S w).X₁, (S w).f.hom y = x w := fun w => by
      have ev := (hS w).exact.map (forget₂ (Rep.{u} k (F w)) (ModuleCat k))
      rw [ShortComplex.moduleCat_exact_iff] at ev
      exact ev (x w) (congrFun hx w)
    choose y hy using e
    exact ⟨show ∀ w, (S w).X₁ from y, funext hy⟩
  · exact (ModuleCat.mono_iff_injective _).2 fun (x x' : ∀ w, (S w).X₁) hxx => funext fun w =>
      (Rep.mono_iff_injective _).1 (hS w).mono_f (congrFun hxx w)
  · refine (ModuleCat.epi_iff_surjective _).2 fun (z : ∀ w, (S w).X₃) => ?_
    have e : ∀ w, ∃ y : (S w).X₂, (S w).g.hom y = z w := fun w =>
      (Rep.epi_iff_surjective _).1 (hS w).epi_g (z w)
    choose y hy using e
    exact ⟨show ∀ w, (S w).X₂ from y, funext hy⟩

private theorem degZeroPiRep_shortExact
    {S : ∀ w, ShortComplex (Rep.{u} k (F w))} (hS : ∀ w, (S w).ShortExact) :
    (ShortComplex.mk (degZeroMap (piRepHom fun w => (S w).f))
      (degZeroMap (piRepHom fun w => (S w).g))
      (degZeroShortComplex (piRepShortComplex S)).zero).ShortExact :=
  degZeroShortComplex_shortExact (piRepShortComplex_shortExact hS)

end RepProducts

section Tate

variable {k G : Type u} [CommRing k] [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
  {ι : Type u} {H : ι → Type u} [∀ v, Group (H v)] [∀ v, TopologicalSpace (H v)]
  [∀ v, IsTopologicalGroup (H v)] (φ : ∀ v, H v →ₜ* G)
  {κ : Type u} {F : κ → Type u} [∀ w, Group (F w)] [∀ w, TopologicalSpace (F w)]
  [∀ w, IsTopologicalGroup (F w)] [∀ w, Fintype (F w)] (ψ : ∀ w, F w →ₜ* G)

section Functoriality

variable {A B C : Rep.{u} k G} [IsDiscreteRep A] [IsDiscreteRep B] [IsDiscreteRep C]
  {Aᵥ Bᵥ Cᵥ : ∀ v, Rep.{u} k (H v)} [∀ v, IsDiscreteRep (Aᵥ v)] [∀ v, IsDiscreteRep (Bᵥ v)]
  [∀ v, IsDiscreteRep (Cᵥ v)] {a : ∀ v, Rep.res (φ v).toMonoidHom A ⟶ Aᵥ v}
  {b : ∀ v, Rep.res (φ v).toMonoidHom B ⟶ Bᵥ v} {c : ∀ v, Rep.res (φ v).toMonoidHom C ⟶ Cᵥ v}
  {Aᵣ Bᵣ Cᵣ : ∀ w, Rep.{u} k (F w)} [∀ w, IsDiscreteRep (Aᵣ w)] [∀ w, IsDiscreteRep (Bᵣ w)]
  [∀ w, IsDiscreteRep (Cᵣ w)] {ar : ∀ w, Rep.res (ψ w).toMonoidHom A ⟶ Aᵣ w}
  {br : ∀ w, Rep.res (ψ w).toMonoidHom B ⟶ Bᵣ w} {cr : ∀ w, Rep.res (ψ w).toMonoidHom C ⟶ Cᵣ w}


omit [IsTopologicalGroup G] in
theorem normCochains_naturality (gᵣ : ∀ w, Aᵣ w ⟶ Bᵣ w) :
    normCochains Aᵣ ≫ piMap (fun w => cochainsMap (gᵣ w)) =
      degZeroMap (piRepHom gᵣ) ≫ normCochains Bᵣ := by
  ext n : 1
  cases n with
  | zero =>
    refine ModuleCat.hom_ext (LinearMap.ext fun e => funext fun w => ?_)
    apply cochainOf_injective
    funext σ
    change (gᵣ w).hom ((Aᵣ w).ρ.norm (e w)) = (Bᵣ w).ρ.norm ((gᵣ w).hom (e w))
    exact (congrArg (fun f => Rep.Hom.hom f (e w)) (Rep.norm_comm (gᵣ w))).symm
  | succ n =>
    change (0 : _ ⟶ _) ≫ _ = _ ≫ (0 : _ ⟶ _)
    rw [zero_comp, comp_zero]

variable (g : A ⟶ B) (gᵥ : ∀ v, Aᵥ v ⟶ Bᵥ v) (gᵣ : ∀ w, Aᵣ w ⟶ Bᵣ w)
  (hg : ∀ v, a v ≫ gᵥ v = (Rep.resFunctor (φ v).toMonoidHom).map g ≫ b v)
  (hgr : ∀ w, ar w ≫ gᵣ w = (Rep.resFunctor (ψ w).toMonoidHom).map g ≫ br w)

noncomputable abbrev tateGlobalMap : tateGlobalComplex A Aᵣ ⟶ tateGlobalComplex B Bᵣ :=
  prodMapCx (cochainsMap g) (degZeroMap (piRepHom gᵣ))

noncomputable abbrev tateLocalMap : tateLocalComplex Aᵥ Aᵣ ⟶ tateLocalComplex Bᵥ Bᵣ :=
  prodMapCx (piMap fun v => cochainsMap (gᵥ v)) (piMap fun w => cochainsMap (gᵣ w))


include hg hgr in
theorem tateCompactRes_naturality :
    tateCompactRes φ ψ A Aᵥ a Aᵣ ar ≫ tateLocalMap gᵥ gᵣ =
      tateGlobalMap g gᵣ ≫ tateCompactRes φ ψ B Bᵥ b Bᵣ br := by
  ext n : 1
  refine ModuleCat.hom_ext (LinearMap.ext fun x => Prod.ext ?_ ?_)
  · exact hom_apply_hom_apply_eq_of_comp_eq (congrArg (·.f n) (localRes_naturality φ g gᵥ hg)) x.1
  · change ((piMap fun w => cochainsMap (gᵣ w)).f n).hom
        (((localRes ψ A Aᵣ ar).f n).hom x.1 + ((normCochains Aᵣ).f n).hom x.2) =
      ((localRes ψ B Bᵣ br).f n).hom (((cochainsMap g).f n).hom x.1) +
        ((normCochains Bᵣ).f n).hom (((degZeroMap (piRepHom gᵣ)).f n).hom x.2)
    rw [map_add (f := _)]
    exact congrArg₂ (· + ·)
      (hom_apply_hom_apply_eq_of_comp_eq (congrArg (·.f n) (localRes_naturality ψ g gᵣ hgr)) x.1)
      (hom_apply_hom_apply_eq_of_comp_eq (congrArg (·.f n) (normCochains_naturality gᵣ)) x.2)

noncomputable def tateCompactCochainsMap :
    tateCompactCochains φ ψ A Aᵥ a Aᵣ ar ⟶ tateCompactCochains φ ψ B Bᵥ b Bᵣ br :=
  mappingCoconeNat.map (tateGlobalMap g gᵣ) (tateLocalMap gᵥ gᵣ)
    (tateCompactRes_naturality φ ψ g gᵥ gᵣ hg hgr)

noncomputable def tateCompactCohomologyMap (n : ℕ) :
    tateCompactCohomology φ ψ A Aᵥ a Aᵣ ar n ⟶ tateCompactCohomology φ ψ B Bᵥ b Bᵣ br n :=
  HomologicalComplex.homologyMap (tateCompactCochainsMap φ ψ g gᵥ gᵣ hg hgr) n

omit [∀ v, IsDiscreteRep (Bᵥ v)] [∀ v, IsDiscreteRep (Cᵥ v)] [IsDiscreteRep B] [IsDiscreteRep C]
  [∀ w, IsDiscreteRep (Bᵣ w)] [∀ w, IsDiscreteRep (Cᵣ w)] in
@[simp]
theorem tateCompactCohomologyMap_id (n : ℕ) :
    tateCompactCohomologyMap φ ψ (𝟙 A) (fun v => 𝟙 (Aᵥ v)) (fun w => 𝟙 (Aᵣ w)) (a := a) (ar := ar)
      (fun _ => (Category.comp_id _).trans (Category.id_comp _).symm)
      (fun _ => (Category.comp_id _).trans (Category.id_comp _).symm) n = 𝟙 _ := by
  have h : tateCompactCochainsMap φ ψ (𝟙 A) (fun v => 𝟙 (Aᵥ v)) (fun w => 𝟙 (Aᵣ w)) (a := a)
      (ar := ar) (fun _ => (Category.comp_id _).trans (Category.id_comp _).symm)
      (fun _ => (Category.comp_id _).trans (Category.id_comp _).symm) = 𝟙 _ := by
    ext n : 1
    refine ModuleCat.hom_ext (LinearMap.ext fun (p : (tateGlobalComplex A Aᵣ).X n ×
      shiftNegOneX (tateLocalComplex Aᵥ Aᵣ) n) => Prod.ext (Prod.ext rfl ?_) ?_)
    · cases n with
      | zero => rfl
      | succ n => exact Subsingleton.elim _ _
    · cases n with
      | zero => rfl
      | succ n => rfl
  exact (congrArg (HomologicalComplex.homologyMap · n) h).trans
    (HomologicalComplex.homologyMap_id _ n)

theorem tateCompactCohomologyMap_comp (g' : B ⟶ C) (gᵥ' : ∀ v, Bᵥ v ⟶ Cᵥ v)
    (gᵣ' : ∀ w, Bᵣ w ⟶ Cᵣ w)
    (hg' : ∀ v, b v ≫ gᵥ' v = (Rep.resFunctor (φ v).toMonoidHom).map g' ≫ c v)
    (hgr' : ∀ w, br w ≫ gᵣ' w = (Rep.resFunctor (ψ w).toMonoidHom).map g' ≫ cr w) (n : ℕ) :
    tateCompactCohomologyMap φ ψ (g ≫ g') (fun v => gᵥ v ≫ gᵥ' v) (fun w => gᵣ w ≫ gᵣ' w)
        (fun v => by rw [reassoc_of% hg v, hg' v, Functor.map_comp, Category.assoc])
        (fun w => by rw [reassoc_of% hgr w, hgr' w, Functor.map_comp, Category.assoc]) n =
      tateCompactCohomologyMap φ ψ g gᵥ gᵣ hg hgr n ≫
        tateCompactCohomologyMap φ ψ g' gᵥ' gᵣ' hg' hgr' n := by
  have h : tateCompactCochainsMap φ ψ (g ≫ g') (fun v => gᵥ v ≫ gᵥ' v) (fun w => gᵣ w ≫ gᵣ' w)
      (fun v => by rw [reassoc_of% hg v, hg' v, Functor.map_comp, Category.assoc])
      (fun w => by rw [reassoc_of% hgr w, hgr' w, Functor.map_comp, Category.assoc]) =
      tateCompactCochainsMap φ ψ g gᵥ gᵣ hg hgr ≫ tateCompactCochainsMap φ ψ g' gᵥ' gᵣ' hg' hgr' := by
    ext n : 1
    refine ModuleCat.hom_ext (LinearMap.ext fun (p : (tateGlobalComplex A Aᵣ).X n ×
      shiftNegOneX (tateLocalComplex Aᵥ Aᵣ) n) => Prod.ext (Prod.ext rfl ?_) ?_)
    · cases n with
      | zero => rfl
      | succ n => exact Subsingleton.elim _ _
    · cases n with
      | zero => rfl
      | succ n => rfl
  exact (congrArg (HomologicalComplex.homologyMap · n) h).trans
    (HomologicalComplex.homologyMap_comp _ _ n)



end Functoriality

section CoefficientSequence

variable (S : ShortComplex (Rep.{u} k G)) [IsDiscreteRep S.X₁] [IsDiscreteRep S.X₂]
  [IsDiscreteRep S.X₃] (Sᵥ : ∀ v, ShortComplex (Rep.{u} k (H v))) [∀ v, IsDiscreteRep (Sᵥ v).X₁]
  [∀ v, IsDiscreteRep (Sᵥ v).X₂] [∀ v, IsDiscreteRep (Sᵥ v).X₃]
  (s : ∀ v, S.map (Rep.resFunctor (φ v).toMonoidHom) ⟶ Sᵥ v)
  (Sᵣ : ∀ w, ShortComplex (Rep.{u} k (F w))) [∀ w, IsDiscreteRep (Sᵣ w).X₁]
  [∀ w, IsDiscreteRep (Sᵣ w).X₂] [∀ w, IsDiscreteRep (Sᵣ w).X₃]
  (sr : ∀ w, S.map (Rep.resFunctor (ψ w).toMonoidHom) ⟶ Sᵣ w)

noncomputable abbrev tateGlobalShortComplex : ShortComplex (CochainComplex (ModuleCat.{u} k) ℕ) :=
  ShortComplex.mk (tateGlobalMap S.f fun w => (Sᵣ w).f) (tateGlobalMap S.g fun w => (Sᵣ w).g)
    (HomologicalComplex.hom_ext _ _ fun n => ModuleCat.hom_ext (LinearMap.ext fun x => Prod.ext
      (hom_apply_hom_apply_of_comp_eq (congrArg (·.f n) (cochainsShortComplex S).zero) x.1)
      (hom_apply_hom_apply_of_comp_eq
        (congrArg (·.f n) (degZeroShortComplex (piRepShortComplex Sᵣ)).zero) x.2)))

noncomputable abbrev tateLocalShortComplex : ShortComplex (CochainComplex (ModuleCat.{u} k) ℕ) :=
  ShortComplex.mk (tateLocalMap (fun v => (Sᵥ v).f) fun w => (Sᵣ w).f)
    (tateLocalMap (fun v => (Sᵥ v).g) fun w => (Sᵣ w).g)
    (HomologicalComplex.hom_ext _ _ fun n => ModuleCat.hom_ext (LinearMap.ext fun x => Prod.ext
      (funext fun v => hom_apply_hom_apply_of_comp_eq
        (congrArg (·.f n) (cochainsShortComplex (Sᵥ v)).zero) (x.1 v))
      (funext fun w => hom_apply_hom_apply_of_comp_eq
        (congrArg (·.f n) (cochainsShortComplex (Sᵣ w)).zero) (x.2 w))))

noncomputable def tateResShortComplex : tateGlobalShortComplex S Sᵣ ⟶ tateLocalShortComplex Sᵥ Sᵣ where
  τ₁ := tateCompactRes φ ψ S.X₁ (fun v => (Sᵥ v).X₁) (fun v => (s v).τ₁) (fun w => (Sᵣ w).X₁)
    (fun w => (sr w).τ₁)
  τ₂ := tateCompactRes φ ψ S.X₂ (fun v => (Sᵥ v).X₂) (fun v => (s v).τ₂) (fun w => (Sᵣ w).X₂)
    (fun w => (sr w).τ₂)
  τ₃ := tateCompactRes φ ψ S.X₃ (fun v => (Sᵥ v).X₃) (fun v => (s v).τ₃) (fun w => (Sᵣ w).X₃)
    (fun w => (sr w).τ₃)
  comm₁₂ := tateCompactRes_naturality φ ψ S.f (fun v => (Sᵥ v).f) (fun w => (Sᵣ w).f)
    (fun v => (s v).comm₁₂) (fun w => (sr w).comm₁₂)
  comm₂₃ := tateCompactRes_naturality φ ψ S.g (fun v => (Sᵥ v).g) (fun w => (Sᵣ w).g)
    (fun v => (s v).comm₂₃) (fun w => (sr w).comm₂₃)

noncomputable abbrev tateCompactCochainsMap₁₂ :=
  tateCompactCochainsMap φ ψ (A := S.X₁) (B := S.X₂) (Aᵥ := fun v => (Sᵥ v).X₁)
      (Bᵥ := fun v => (Sᵥ v).X₂) (a := fun v => (s v).τ₁) (b := fun v => (s v).τ₂)
      (Aᵣ := fun w => (Sᵣ w).X₁) (Bᵣ := fun w => (Sᵣ w).X₂) (ar := fun w => (sr w).τ₁)
      (br := fun w => (sr w).τ₂)
    S.f (fun v => (Sᵥ v).f) (fun w => (Sᵣ w).f) (fun v => (s v).comm₁₂) (fun w => (sr w).comm₁₂)

noncomputable abbrev tateCompactCochainsMap₂₃ :=
  tateCompactCochainsMap φ ψ (A := S.X₂) (B := S.X₃) (Aᵥ := fun v => (Sᵥ v).X₂)
      (Bᵥ := fun v => (Sᵥ v).X₃) (a := fun v => (s v).τ₂) (b := fun v => (s v).τ₃)
      (Aᵣ := fun w => (Sᵣ w).X₂) (Bᵣ := fun w => (Sᵣ w).X₃) (ar := fun w => (sr w).τ₂)
      (br := fun w => (sr w).τ₃)
    S.g (fun v => (Sᵥ v).g) (fun w => (Sᵣ w).g) (fun v => (s v).comm₂₃) (fun w => (sr w).comm₂₃)

noncomputable abbrev tateCompactCohomologyMap₁₂ (n : ℕ) :=
  tateCompactCohomologyMap φ ψ (A := S.X₁) (B := S.X₂) (Aᵥ := fun v => (Sᵥ v).X₁)
      (Bᵥ := fun v => (Sᵥ v).X₂) (a := fun v => (s v).τ₁) (b := fun v => (s v).τ₂)
      (Aᵣ := fun w => (Sᵣ w).X₁) (Bᵣ := fun w => (Sᵣ w).X₂) (ar := fun w => (sr w).τ₁)
      (br := fun w => (sr w).τ₂)
    S.f (fun v => (Sᵥ v).f) (fun w => (Sᵣ w).f) (fun v => (s v).comm₁₂) (fun w => (sr w).comm₁₂) n

noncomputable abbrev tateCompactCohomologyMap₂₃ (n : ℕ) :=
  tateCompactCohomologyMap φ ψ (A := S.X₂) (B := S.X₃) (Aᵥ := fun v => (Sᵥ v).X₂)
      (Bᵥ := fun v => (Sᵥ v).X₃) (a := fun v => (s v).τ₂) (b := fun v => (s v).τ₃)
      (Aᵣ := fun w => (Sᵣ w).X₂) (Bᵣ := fun w => (Sᵣ w).X₃) (ar := fun w => (sr w).τ₂)
      (br := fun w => (sr w).τ₃)
    S.g (fun v => (Sᵥ v).g) (fun w => (Sᵣ w).g) (fun v => (s v).comm₂₃) (fun w => (sr w).comm₂₃) n

theorem tateCompactCochainsMap₁₂_₂₃ :
    tateCompactCochainsMap₁₂ φ ψ S Sᵥ s Sᵣ sr ≫ tateCompactCochainsMap₂₃ φ ψ S Sᵥ s Sᵣ sr = 0 :=
  (mappingCoconeNat.mapShortComplex (tateResShortComplex φ ψ S Sᵥ s Sᵣ sr)).zero

theorem tateCompactCohomologyMap_f_g (n : ℕ) :
    tateCompactCohomologyMap₁₂ φ ψ S Sᵥ s Sᵣ sr n ≫ tateCompactCohomologyMap₂₃ φ ψ S Sᵥ s Sᵣ sr n = 0 :=
  (HomologicalComplex.homologyMap_comp _ _ n).symm.trans
    ((congrArg (HomologicalComplex.homologyMap · n)
      (tateCompactCochainsMap₁₂_₂₃ φ ψ S Sᵥ s Sᵣ sr)).trans
      (HomologicalComplex.homologyMap_zero _ _ n))

theorem mapShortComplex_tateResShortComplex_f :
    (mappingCoconeNat.mapShortComplex (tateResShortComplex φ ψ S Sᵥ s Sᵣ sr)).f =
      tateCompactCochainsMap₁₂ φ ψ S Sᵥ s Sᵣ sr :=
  rfl

theorem mapShortComplex_tateResShortComplex_g :
    (mappingCoconeNat.mapShortComplex (tateResShortComplex φ ψ S Sᵥ s Sᵣ sr)).g =
      tateCompactCochainsMap₂₃ φ ψ S Sᵥ s Sᵣ sr :=
  rfl

variable {S Sᵥ Sᵣ}

private theorem cochainsShortComplex_mk_shortExact
    {G' : Type u} [Group G'] [TopologicalSpace G'] [IsTopologicalGroup G']
    {T : ShortComplex (Rep.{u} k G')} [IsDiscreteRep T.X₁] [IsDiscreteRep T.X₂] [IsDiscreteRep T.X₃]
    (hT : T.ShortExact) :
    (ShortComplex.mk (cochainsMap T.f) (cochainsMap T.g) (cochainsShortComplex T).zero).ShortExact :=
  cochainsShortComplex_shortExact hT

private theorem piCochains_shortExact
    {ι' : Type u} {H' : ι' → Type u} [∀ i, Group (H' i)] [∀ i, TopologicalSpace (H' i)]
    [∀ i, IsTopologicalGroup (H' i)] {T : ∀ i, ShortComplex (Rep.{u} k (H' i))}
    [∀ i, IsDiscreteRep (T i).X₁] [∀ i, IsDiscreteRep (T i).X₂] [∀ i, IsDiscreteRep (T i).X₃]
    (hT : ∀ i, (T i).ShortExact) :
    (ShortComplex.mk (piMap fun i => cochainsMap (T i).f) (piMap fun i => cochainsMap (T i).g)
      (piShortComplex fun i => cochainsShortComplex (T i)).zero).ShortExact :=
  piShortComplex_shortExact (S := fun i =>
    ShortComplex.mk (cochainsMap (T i).f) (cochainsMap (T i).g) (cochainsShortComplex (T i)).zero)
    fun i => cochainsShortComplex_mk_shortExact (hT i)

theorem tateCompactCochains_shortExact (hS : S.ShortExact) (hSᵥ : ∀ v, (Sᵥ v).ShortExact)
    (hSᵣ : ∀ w, (Sᵣ w).ShortExact) :
    (mappingCoconeNat.mapShortComplex (tateResShortComplex φ ψ S Sᵥ s Sᵣ sr)).ShortExact :=
  mappingCoconeNat.shortExact_mapShortComplex _
    (shortExact_prodMapCx (cochainsShortComplex_mk_shortExact hS) (degZeroPiRep_shortExact hSᵣ))
    (shortExact_prodMapCx (piCochains_shortExact hSᵥ) (piCochains_shortExact hSᵣ))

noncomputable def tateCompactδ (hS : S.ShortExact) (hSᵥ : ∀ v, (Sᵥ v).ShortExact)
    (hSᵣ : ∀ w, (Sᵣ w).ShortExact) (n : ℕ) :
    tateCompactCohomology φ ψ S.X₃ (fun v => (Sᵥ v).X₃) (fun v => (s v).τ₃) (fun w => (Sᵣ w).X₃)
        (fun w => (sr w).τ₃) n ⟶
      tateCompactCohomology φ ψ S.X₁ (fun v => (Sᵥ v).X₁) (fun v => (s v).τ₁)
        (fun w => (Sᵣ w).X₁) (fun w => (sr w).τ₁) (n + 1) :=
  (tateCompactCochains_shortExact φ ψ s sr hS hSᵥ hSᵣ).δ n (n + 1) rfl

variable (hS : S.ShortExact) (hSᵥ : ∀ v, (Sᵥ v).ShortExact) (hSᵣ : ∀ w, (Sᵣ w).ShortExact)

theorem tateCompactCohomologyMap₂₃_tateCompactδ (n : ℕ) :
    tateCompactCohomologyMap₂₃ φ ψ S Sᵥ s Sᵣ sr n ≫ tateCompactδ φ ψ s sr hS hSᵥ hSᵣ n = 0 :=
  (tateCompactCochains_shortExact φ ψ s sr hS hSᵥ hSᵣ).comp_δ n (n + 1) rfl

theorem tateCompactδ_tateCompactCohomologyMap₁₂ (n : ℕ) :
    tateCompactδ φ ψ s sr hS hSᵥ hSᵣ n ≫ tateCompactCohomologyMap₁₂ φ ψ S Sᵥ s Sᵣ sr (n + 1) = 0 :=
  (tateCompactCochains_shortExact φ ψ s sr hS hSᵥ hSᵣ).δ_comp n (n + 1) rfl

include hS hSᵥ hSᵣ in
theorem tateCompactCohomology_exact₂ (n : ℕ) :
    (ShortComplex.mk _ _ (tateCompactCohomologyMap_f_g φ ψ S Sᵥ s Sᵣ sr n)).Exact :=
  (tateCompactCochains_shortExact φ ψ s sr hS hSᵥ hSᵣ).homology_exact₂ n

theorem tateCompactCohomology_exact₃ (n : ℕ) :
    (ShortComplex.mk _ _ (tateCompactCohomologyMap₂₃_tateCompactδ φ ψ s sr hS hSᵥ hSᵣ n)).Exact :=
  (tateCompactCochains_shortExact φ ψ s sr hS hSᵥ hSᵣ).homology_exact₃ n (n + 1) rfl

theorem tateCompactCohomology_exact₁ (n : ℕ) :
    (ShortComplex.mk _ _ (tateCompactδ_tateCompactCohomologyMap₁₂ φ ψ s sr hS hSᵥ hSᵣ n)).Exact :=
  (tateCompactCochains_shortExact φ ψ s sr hS hSᵥ hSᵣ).homology_exact₁ n (n + 1) rfl

end CoefficientSequence

end Tate

end GroundTheory.ProfCoh
