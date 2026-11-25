module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsCocharLie
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsSplitTorusPointsMulEquiv

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.TorusModel

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor

variable {S : Scheme.{0}} {X : Type} [AddCommGroup X]

theorem charVal_eq {A : Type} [CommRing A] {a : Sp A ⟶ S} (t : Over.mk a ⟶ splitTorus S X) (χ : X) :
    charVal t χ = (Scheme.ΓSpecIso (CommRingCat.of A)).hom.hom
      (GlobalTheory.splitTorusPointsEquiv S X (Over.mk a) t (Multiplicative.ofAdd χ)).val := by
  unfold charVal
  set g : Sp A ⟶ Spec (torusRing ZU X) := t.left ≫ pullback.fst (splitTorusAff ZU X).hom (toZ S) with hg
  have h : (Scheme.ΓSpecIso (torusRing ZU X)).inv ≫ g.appTop ≫ (Scheme.ΓSpecIso (CommRingCat.of A)).hom
      = Spec.preimage g := by
    conv_lhs => rw [← Spec.map_preimage g]
    rw [Scheme.ΓSpecIso_naturality, Iso.inv_hom_id_assoc]
  rw [← h]
  rfl

theorem charVal_mul {A : Type} [CommRing A] {a : Sp A ⟶ S} (t t' : Over.mk a ⟶ splitTorus S X) (χ : X) :
    charVal (t * t') χ = charVal t χ * charVal t' χ := by
  simp only [charVal_eq, map_mul, MonoidHom.mul_apply, Units.val_mul]

theorem charVal_one {A : Type} [CommRing A] {a : Sp A ⟶ S} (χ : X) :
    charVal (1 : Over.mk a ⟶ splitTorus S X) χ = 1 := by
  simp only [charVal_eq, map_one, MonoidHom.one_apply, Units.val_one]

theorem charVal_add {A : Type} [CommRing A] {a : Sp A ⟶ S} (t : Over.mk a ⟶ splitTorus S X) (χ χ' : X) :
    charVal t (χ + χ') = charVal t χ * charVal t χ' := by
  simp only [charVal_eq, ofAdd_add, map_mul, Units.val_mul]

theorem charVal_zero {A : Type} [CommRing A] {a : Sp A ⟶ S} (t : Over.mk a ⟶ splitTorus S X) :
    charVal t 0 = 1 := by
  simp only [charVal_eq, ofAdd_zero, map_one, Units.val_one]

theorem charVal_ext {A : Type} [CommRing A] {a : Sp A ⟶ S} {t t' : Over.mk a ⟶ splitTorus S X}
    (h : ∀ χ, charVal t χ = charVal t' χ) : t = t' := by
  apply (GlobalTheory.splitTorusPointsEquiv S X (Over.mk a)).injective
  ext χ
  have := h χ
  rw [charVal_eq, charVal_eq] at this
  exact (Scheme.ΓSpecIso (CommRingCat.of A)).commRingCatIsoToRingEquiv.injective this

theorem exists_charVal {A : Type} [CommRing A] (a : Sp A ⟶ S) (u : Multiplicative X →* Aˣ) :
    ∃ t : Over.mk a ⟶ splitTorus S X, ∀ χ, charVal t χ = (u (Multiplicative.ofAdd χ)).val := by
  refine ⟨(GlobalTheory.splitTorusPointsEquiv S X (Over.mk a)).symm
    ((Units.map (Scheme.ΓSpecIso (CommRingCat.of A)).inv.hom.toMonoidHom).comp u), fun χ => ?_⟩
  rw [charVal_eq, MulEquiv.apply_symm_apply]
  exact (Scheme.ΓSpecIso (CommRingCat.of A)).inv_hom_id_apply _

theorem charVal_comp {A B : Type} [CommRing A] [CommRing B] {a : Sp A ⟶ S} {b : Sp B ⟶ S} (g : A →+* B)
    (t : Over.mk a ⟶ splitTorus S X) (t' : Over.mk b ⟶ splitTorus S X)
    (h : t'.left = spMap g ≫ t.left) (χ : X) : charVal t' χ = g (charVal t χ) := by
  unfold charVal
  have e : (t'.left ≫ pullback.fst (splitTorusAff ZU X).hom (toZ S) : Sp B ⟶ Spec (torusRing ZU X)) =
      Spec.map (CommRingCat.ofHom g) ≫
        (t.left ≫ pullback.fst (splitTorusAff ZU X).hom (toZ S) : Sp A ⟶ Spec (torusRing ZU X)) := by
    rw [h]; exact Category.assoc _ _ _
  rw [e, Spec.preimage_comp, Spec.preimage_map]
  rfl

theorem left_eq_of_charVal {A B : Type} [CommRing A] [CommRing B] {a : Sp A ⟶ S} {b : Sp B ⟶ S} (g : A →+* B)
    (hg : spMap g ≫ a = b) (t : Over.mk a ⟶ splitTorus S X) (t' : Over.mk b ⟶ splitTorus S X)
    (h : ∀ χ, charVal t' χ = g (charVal t χ)) : t'.left = spMap g ≫ t.left := by
  let k : Over.mk b ⟶ Over.mk a := Over.homMk (spMap g) hg
  have : t' = k ≫ t := charVal_ext fun χ => by rw [h, charVal_comp g t (k ≫ t) rfl]
  rw [this]; rfl

def epsUnit {R : Type} [CommRing R] (δ : X →+ R) : Multiplicative X →* (DualNumber R)ˣ :=
  MonoidHom.toHomUnits
    { toFun := fun χ => TrivSqZeroExt.inl 1 + TrivSqZeroExt.inr (δ χ.toAdd)
      map_one' := by ext <;> simp
      map_mul' := fun a b => by ext <;> simp [add_comm] }

def tanPt {R : Type} [CommRing R] (x : Sp R ⟶ S) (δ : X →+ R) : epsAt x ⟶ splitTorus S X :=
  (exists_charVal _ (epsUnit δ)).choose

theorem charVal_tanPt {R : Type} [CommRing R] (x : Sp R ⟶ S) (δ : X →+ R) (χ : X) :
    charVal (tanPt x δ) χ = TrivSqZeroExt.inl 1 + TrivSqZeroExt.inr (δ χ) :=
  (exists_charVal _ (epsUnit δ)).choose_spec χ

theorem spMap_comp_eps {R A : Type} [CommRing R] [CommRing A] (x : Sp R ⟶ S) (g : DualNumber R →+* A)
    (f : R →+* A) (h : g.comp (algebraMap R (DualNumber R)) = f) :
    spMap g ≫ (Spec.map (CommRingCat.ofHom (algebraMap R (DualNumber R))) ≫ x) = spMap f ≫ x := by
  rw [← Category.assoc, ← Spec.map_comp, ← h]; rfl

theorem fst_eps {R : Type} [CommRing R] (x : Sp R ⟶ S) :
    spMap (TrivSqZeroExt.fstHom R R R).toRingHom ≫
      (Spec.map (CommRingCat.ofHom (algebraMap R (DualNumber R))) ≫ x) = x := by
  rw [spMap_comp_eps x _ (RingHom.id R) (by ext; simp)]
  simp [spMap]

def lieModel {R : Type} [CommRing R] (x : Sp R ⟶ S) : LieModel (splitTorus S X) x (X →+ R) where
  pt := tanPt x
  tan δ := (left_eq_of_charVal _ (fst_eps x) (tanPt x δ) 1 fun χ => by
    rw [charVal_one, charVal_tanPt]; simp).symm
  inj δ δ' h := by
    ext χ
    have := congrArg (fun t => (charVal t χ).snd) h
    simpa [charVal_tanPt] using this
  onto v hv := by
    have h1 : ∀ χ, (charVal v χ).fst = 1 := fun χ => by
      have := charVal_comp (TrivSqZeroExt.fstHom R R R).toRingHom v (1 : Over.mk x ⟶ splitTorus S X)
        (Eq.symm hv) χ
      rw [charVal_one] at this
      exact this.symm
    refine ⟨AddMonoidHom.mk' (fun χ => (charVal v χ).snd) fun a b => ?_, charVal_ext fun χ => ?_⟩
    · simp [charVal_add, TrivSqZeroExt.snd_mul, h1, add_comm]
    · rw [charVal_tanPt]; ext <;> simp [h1]
  add δ δ' := charVal_ext fun χ => by
    rw [charVal_mul, charVal_tanPt, charVal_tanPt, charVal_tanPt]
    ext <;> simp [add_comm]
  smul c δ := left_eq_of_charVal (epsMul c)
    (spMap_comp_eps x _ _ (by ext <;> simp [epsMul, TrivSqZeroExt.algebraMap_eq_inl])) _ _ fun χ => by
      rw [charVal_tanPt, charVal_tanPt]
      ext <;> simp [epsMul, mul_comm]

theorem isCocharLie_lieModel {R : Type} [CommRing R] (x : Sp R ⟶ S) :
    IsCocharLie (lieModel (X := X) x) := charVal_tanPt x

end GlobalTheory.CompanionTheory.Ar.TorusModel
