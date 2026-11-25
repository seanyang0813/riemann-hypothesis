module

public import Development.AbelianVarietyTheory.Definitions.Divisors.DivisorSupportCondition
public import Mathlib.Topology.LocallyConstant.Algebra

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.t_E1Cut

def QA (S : Type) [CommRing S] : Prop :=
  ∃ (T : Type) (_ : CommRing T) (_ : IsDomain T) (π : T →+* S), AIC T ∧ Function.Surjective π

def Good (C : Type) [CommRing C] (J : Ideal C) : Prop :=
  J ≤ Ideal.jacobson ⊥ ∧ ∀ e : C ⧸ J, IsIdempotentElem e → ∃ x : C, IsIdempotentElem x ∧ Ideal.Quotient.mk J x = e

def lcMap {A B : Type} [CommRing A] [CommRing B] (f : A →+* B) {Y : Type} (φ : LocallyConstant (PrimeSpectrum A) Y) :
    LocallyConstant (PrimeSpectrum B) Y :=
  φ.comap ⟨PrimeSpectrum.comap f, PrimeSpectrum.continuous_comap f⟩

def rL {S : Type} [CommRing S] (f g : S) : Localization.Away f →+* Localization.Away (f * g) :=
  IsLocalization.Away.awayToAwayRight f g

def rR {S : Type} [CommRing S] (f g : S) : Localization.Away g →+* Localization.Away (f * g) :=
  IsLocalization.Away.awayToAwayLeft g f

def Conn (R : Type) [CommRing R] {E E' : Spc} (f : E ⟶ E') (F : Shv R) (n : ℤ) : Prop :=
  (∀ j, j < n → Function.Bijective (pull R f F j)) ∧ Function.Injective (pull R f F n)

def Cover : Prop := ∀ (A : Type) [CommRing A], ∃ (A' : Type) (_ : CommRing A') (φ : A →+* A'),
  φ.IsIntegral ∧ Function.Surjective (PrimeSpectrum.comap φ) ∧ QA A'

def HensIdem : Prop := ∀ (A : Type) [CommRing A] (I : Ideal A) [HenselianRing A I] (B : Type) [CommRing B] (φ : A →+* B),
  φ.IsIntegral → Good B (I.map φ)

def LCGood : Prop := ∀ (C : Type) [CommRing C] (J : Ideal C), Good C J → ∀ Y : Type,
  Function.Bijective (fun φ : LocallyConstant (PrimeSpectrum C) Y => lcMap (Ideal.Quotient.mk J) φ)

def QAClosed : Prop := ∀ (S : Type) [CommRing S], QA S →
  AIC S ∧ (∀ f : S, QA (Localization.Away f)) ∧ ∀ J : Ideal S, QA (S ⧸ J)

def EtLift : Prop := ∀ (T S C : Type) [CommRing T] [CommRing S] [CommRing C] [Algebra S C] [Algebra.Etale S C] (π : T →+* S),
  Function.Surjective π → ∃ (C' : Type) (_ : CommRing C') (_ : Algebra T C') (ρ : C' →+* C), Algebra.Etale T C' ∧
    Function.Surjective ρ ∧ ρ.comp (algebraMap T C') = (algebraMap S C).comp π ∧
    RingHom.ker ρ = (RingHom.ker π).map (algebraMap T C')

def EtAIC : Prop := ∀ (T C : Type) [CommRing T] [IsDomain T] [CommRing C] [Algebra T C] [Algebra.Etale T C], AIC T →
  ∃ (n : ℕ) (e : Fin n → C), CompleteOrthogonalIdempotents e ∧ ∀ j,
    IsOpenImmersion (Spec.map (CommRingCat.ofHom ((algebraMap C (Localization.Away (e j))).comp (algebraMap T C))))

def FinEtSection : Prop := ∀ (S C : Type) [CommRing S] [CommRing C] [Algebra S C] [Algebra.Etale S C] [Module.Finite S C], QA S →
  Function.Surjective (PrimeSpectrum.comap (algebraMap S C)) → Nonempty (C →ₐ[S] S)

def LCSplit : Prop := ∀ (q : ℕ) [NeZero q] (S : Type) [CommRing S], QA S → ∀ f g : S, Ideal.span {f, g} = ⊤ →
  ∀ φ : LocallyConstant (PrimeSpectrum (Localization.Away (f * g))) (ZMod q),
  ∃ a b, φ = lcMap (rL f g) a - lcMap (rR f g) b

def EtaleDegreeZeroCohomologyEquivLocallyConstantFunctions : Prop := A9 → ∀ (q : ℕ) [NeZero q] (i : ℤ),
  ∃ e : ∀ (B : Type) [CommRing B], Prim q B → (LocallyConstant (PrimeSpectrum B) (ZMod q) ≃+ Ht q (sp B) 0 i),
    ∀ (B C : Type) [CommRing B] [CommRing C] (f : B →+* C) (ζ : Prim q B) (φ : LocallyConstant (PrimeSpectrum B) (ZMod q)),
      pull _ (spMap f) _ _ (e B ζ φ) = e C (ζ.map f) (lcMap f φ)

def MV : Prop := A1 → ∀ (R : Type) [CommRing R] (F : Shv R) (S : Type) [CommRing S] (f g : S), Ideal.span {f, g} = ⊤ → ∀ n : ℤ,
  (∀ c : H R (sp (Localization.Away (f * g))) F n, ∃ a b, c = pull R (spMap (rL f g)) F n a - pull R (spMap (rR f g)) F n b) →
  ∀ x : H R (sp S) F (n + 1), pull R (spMap (algebraMap S (Localization.Away f))) F _ x = 0 →
    pull R (spMap (algebraMap S (Localization.Away g))) F _ x = 0 → x = 0

def ZarLocal : Prop := B1 → B2 → ∀ (q : ℕ) (S : Type) [CommRing S], AIC S → IsUnit (q : S) → ∀ n i : ℤ, 0 < n →
  ∀ (x : Ht q (sp S) n i) (p : PrimeSpectrum S), ∃ f : S, f ∉ p.asIdeal ∧
    pull _ (spMap (algebraMap S (Localization.Away f))) _ _ x = 0

def AcycQA : Prop := A1 → A9 → B1 → B2 → ∀ (q : ℕ) [NeZero q] (S : Type) [CommRing S], QA S → IsUnit (q : S) → Acyc q (sp S)

def EqvQA : Prop := A1 → A9 → B1 → B2 → ∀ (q : ℕ) [NeZero q] (S : Type) [CommRing S] (J : Ideal S), QA S → Good S J →
  IsUnit (q : S) → ∀ i : ℤ, Eqv _ (spMap (Ideal.Quotient.mk J)) (tw q i)

def DescStep : Prop := A1 → ∀ (R : Type) [CommRing R] (F : Shv R) {E E' : Spc} (f : E ⟶ E') (n : ℤ),
  (∀ p, Conn R (disc.map (f.app p)) F n) → Eqv R (disc.map (f.app (op (SimplexCategory.mk 0)))) F → Conn R f F (n + 1)

def CechLevels : Prop := ∀ (A A' : Type) [CommRing A] [CommRing A'] (φ : A →+* A') (I : Ideal A), φ.IsIntegral →
  Function.Surjective (PrimeSpectrum.comap φ) →
  (IsIntegralHom (Spec.map (CommRingCat.ofHom φ)) ∧ Surjective (Spec.map (CommRingCat.ofHom φ)) ∧
    IsIntegralHom (Spec.map (CommRingCat.ofHom (Ideal.quotientMap (I.map φ) φ Ideal.le_comap_map))) ∧
    Surjective (Spec.map (CommRingCat.ofHom (Ideal.quotientMap (I.map φ) φ Ideal.le_comap_map)))) ∧
  ∃ ψ : cech (Spec.map (CommRingCat.ofHom (Ideal.quotientMap (I.map φ) φ Ideal.le_comap_map))) ⟶
      cech (Spec.map (CommRingCat.ofHom φ)),
    ψ ≫ cechAug _ = cechAug _ ≫ spMap (Ideal.Quotient.mk I) ∧
    (∀ p, ∃ (B : Type) (_ : CommRing B) (χ : A →+* B), χ.IsIntegral ∧ Nonempty (Arrow.mk (ψ.app p) ≅
      Arrow.mk (yoneda.map (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk (I.map χ))))))) ∧
    Nonempty (Arrow.mk (ψ.app (op (SimplexCategory.mk 0))) ≅
      Arrow.mk (yoneda.map (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk (I.map φ))))))

theorem eqv_iso (R : Type) [CommRing R] {E E' : Spc} (f : E ⟶ E') [IsIso f] (F : Shv R) : Eqv R f F := fun n =>
  Function.bijective_iff_has_inverse.2 ⟨pull R (inv f) F n,
    fun x => by rw [← pull_comp, IsIso.inv_hom_id, pull_id], fun x => by rw [← pull_comp, IsIso.hom_inv_id, pull_id]⟩

theorem sq (R : Type) [CommRing R] {E E' G G' : Spc} {f : E ⟶ E'} {g : G ⟶ G'} {a : E ⟶ G} {b : E' ⟶ G'} (w : f ≫ b = a ≫ g)
    {F : Shv R} (ha : Eqv R a F) (hb : Eqv R b F) (n : ℤ) :
    (Function.Bijective (pull R f F n) ↔ Function.Bijective (pull R g F n)) ∧
    (Function.Injective (pull R f F n) ↔ Function.Injective (pull R g F n)) := by
  have h : pull R f F n ∘ pull R b F n = pull R a F n ∘ pull R g F n := by
    funext x; simp only [Function.comp]; rw [← pull_comp, ← pull_comp, w]
  constructor
  · rw [← Function.Bijective.of_comp_iff _ (hb n), h, Function.Bijective.of_comp_iff' (ha n)]
  · rw [← Function.Injective.of_comp_iff' _ (hb n), h, Function.Injective.of_comp_iff (ha n).1]

theorem conn_sq (R : Type) [CommRing R] {E E' G G' : Spc} {f : E ⟶ E'} {g : G ⟶ G'} {a : E ⟶ G} {b : E' ⟶ G'} (w : f ≫ b = a ≫ g)
    {F : Shv R} (ha : Eqv R a F) (hb : Eqv R b F) (n : ℤ) : Conn R f F n ↔ Conn R g F n :=
  and_congr (forall_congr' fun j => imp_congr_right fun _ => (sq R w ha hb j).1) (sq R w ha hb n).2

theorem arr_w {P P' Q Q' : PSh} {f : P ⟶ P'} {g : Q ⟶ Q'} (e : Arrow.mk f ≅ Arrow.mk g) :
    ∃ (a : P ⟶ Q) (b : P' ⟶ Q'), IsIso a ∧ IsIso b ∧ disc.map f ≫ disc.map b = disc.map a ≫ disc.map g :=
  ⟨e.hom.left, e.hom.right, inferInstanceAs (IsIso e.hom.left), inferInstanceAs (IsIso e.hom.right), by
    rw [← Functor.map_comp, ← Functor.map_comp]; exact congrArg _ (Arrow.w e.hom).symm⟩

theorem unit_spec {A : Type} [CommRing A] {q : ℕ} (h : IsUnit (q : A)) : IsUnit (q : Γ(Spec (CommRingCat.of A), ⊤)) := by
  simpa using h.map (Scheme.ΓSpecIso (CommRingCat.of A)).inv.hom

end LateralTheory.E.t_E1Cut

end
