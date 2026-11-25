module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.EtaleLocalizationAtPrimeTensorOfLowHeight
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.InjectiveOfIsCptGen
public import Mathlib.RingTheory.LocalRing.LocalSubring
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar

open AlgebraicGeometry CategoryTheory

abbrev chRing (o : Type) [CommRing o] {Ω : Type} [Field Ω] [Algebra o Ω] {κ : Type} (x : κ → Ω) (c : κ) :
    Subalgebra o Ω :=
  Algebra.adjoin o (Set.range fun j => x j / x c)

structure PModel (o : Type) [CommRing o] {Ω : Type} [Field Ω] [Algebra o Ω] {κ : Type} (x : κ → Ω) where

  X : Scheme.{0}

  ξ : Spec (CommRingCat.of Ω) ⟶ X

  s : X ⟶ Spec (CommRingCat.of o)
  hover : ξ ≫ s = Spec.map (CommRingCat.ofHom (algebraMap o Ω))
  all : ∀ q : X, genPt ξ ⤳ q
  tie : CoordTie o ξ x

variable {X X' X'' : Scheme.{0}} {Ω Ω' Ω'' : Type} [Field Ω] [Field Ω'] [Field Ω'']
  {E F : Type} [AddCommGroup E] [Module Ω E] [AddCommGroup F] [Module Ω' F]

def joinCo {κ κ' : Type} (i : Ω →+* Ω') (x : κ → Ω) (w : κ' → Ω') : κ × κ' → Ω' := fun q => i (x q.1) * w q.2

def Lat.IsCohOn {ξ : Spec (CommRingCat.of Ω) ⟶ X} (L : Lat ξ E) (T : Set (Cpt ξ)) : Prop :=
  ∀ p ∈ T, ∃ U : X.Opens, p.1 ∈ U ∧ ∃ (n : ℕ) (b : Fin n → E),
    ∀ q ∈ T, q.1 ∈ U → L q = Submodule.span (regAt ξ q) (Set.range b)

def ctrSet (o : Type) [CommRing o] [Algebra o Ω] {κ : Type} (x : κ → Ω) (i : Ω →+* Ω')
    (ξ' : Spec (CommRingCat.of Ω') ⟶ X') : Set (Cpt ξ') :=
  {p' | ∃ c, x c ≠ 0 ∧ ∀ a ∈ chRing o x c, i a ∈ regAt ξ' p'}

def IsCtrOf {ξ : Spec (CommRingCat.of Ω) ⟶ X} {ξ' : Spec (CommRingCat.of Ω') ⟶ X'} (i : Ω →+* Ω') (p : Cpt ξ)
    (p' : Cpt ξ') : Prop :=
  (∀ a ∈ regAt ξ p, i a ∈ regAt ξ' p') ∧ ∀ a ∈ regAt ξ p, unitAt ξ' p' (i a) → unitAt ξ p a

def Lat.pullLoc {ξ : Spec (CommRingCat.of Ω) ⟶ X} (L : Lat ξ E) (ξ' : Spec (CommRingCat.of Ω') ⟶ X')
    (i : Ω →+* Ω') (j : E →+ F) : Lat ξ' F := fun p' =>
  Submodule.span (regAt ξ' p') {e' | ∃ p : Cpt ξ, IsCtrOf i p p' ∧ ∃ e ∈ L p, e' = j e}

def IsExtOver (i : Ω →+* Ω') (j : E →+ F) : Prop :=
  (∀ (a : Ω) (e : E), j (a • e) = i a • j e) ∧
    ∀ (n : ℕ) (b : Fin n → E), LinearIndependent Ω b → LinearIndependent Ω' fun k => j (b k)

structure IsoAt (ξ' : Spec (CommRingCat.of Ω') ⟶ X') {ξ : Spec (CommRingCat.of Ω) ⟶ X} (f : X' ⟶ X) (i : Ω →+* Ω')
    (p : Cpt ξ) : Prop where

  existsUnique : ∃! p' : Cpt ξ', f p'.1 = p.1

  regAt_eq : ∀ p' : Cpt ξ', f p'.1 = p.1 → regAt ξ' p' = (regAt ξ p).map i

  dom : Dominates ξ' ξ f i

structure NormAt (ξ' : Spec (CommRingCat.of Ω') ⟶ X') {ξ : Spec (CommRingCat.of Ω) ⟶ X} (f : X' ⟶ X) (i : Ω →+* Ω')
    (p : Cpt ξ) : Prop where

  exists_max : ∀ p' : Cpt ξ', f p'.1 = p.1 →
    ∃ (P : Ideal (integralClosure ((regAt ξ p).map i) Ω').toSubring) (_ : P.IsMaximal),
      regAt ξ' p' = (LocalSubring.ofPrime _ P).toSubring

  existsUnique : ∀ (P : Ideal (integralClosure ((regAt ξ p).map i) Ω').toSubring) (_ : P.IsMaximal),
    ∃! p' : Cpt ξ', f p'.1 = p.1 ∧ regAt ξ' p' = (LocalSubring.ofPrime _ P).toSubring

  dom : Dominates ξ' ξ f i

def genFib (ξ : Spec (CommRingCat.of Ω) ⟶ X) : Set (Cpt ξ) := {p | ∀ n : ℕ, 0 < n → unitAt ξ p (n : Ω)}


def Lat.predualIn {ξ : Spec (CommRingCat.of Ω) ⟶ X} (L : Lat ξ (Module.Dual Ω E)) (V : Submodule Ω E) : Lat ξ E :=
  fun p =>
  { carrier := {v | v ∈ V ∧ ∀ w ∈ L p, w v ∈ regAt ξ p}
    add_mem' := fun ha hb => ⟨V.add_mem ha.1 hb.1, fun w hw => by simpa using add_mem (ha.2 w hw) (hb.2 w hw)⟩
    zero_mem' := ⟨V.zero_mem, fun w _ => by simp⟩
    smul_mem' := fun c v hv => ⟨V.smul_mem (c : Ω) hv.1, fun w hw => by
      have : w (c • v) = (c : Ω) * w v := by
        show w ((c : Ω) • v) = _
        rw [map_smul, smul_eq_mul]
      rw [this]
      exact mul_mem c.2 (hv.2 w hw)⟩ }

section API

variable {ξ : Spec (CommRingCat.of Ω) ⟶ X} {ξ' : Spec (CommRingCat.of Ω') ⟶ X'}
  {ξ'' : Spec (CommRingCat.of Ω'') ⟶ X''}

theorem IsCtrOf.refl (p : Cpt ξ) : IsCtrOf (RingHom.id Ω) p p := ⟨fun _ h => h, fun _ _ h => h⟩

theorem IsCtrOf.unitAt_iff {i : Ω →+* Ω'} {p : Cpt ξ} {p' : Cpt ξ'} (h : IsCtrOf i p p') {a : Ω}
    (ha : a ∈ regAt ξ p) : unitAt ξ' p' (i a) ↔ unitAt ξ p a :=
  ⟨h.2 a ha, fun hu => ⟨(map_ne_zero i).2 hu.1, h.1 _ hu.2.1, by rw [← map_inv₀]; exact h.1 _ hu.2.2⟩⟩

theorem Lat.pullLoc_eq_span_of_ctr {L : Lat ξ E} {i : Ω →+* Ω'} (j : E →+ F) {p₀ : Cpt ξ} {p' : Cpt ξ'}
    (h : IsCtrOf i p₀ p') (hu : ∀ p : Cpt ξ, IsCtrOf i p p' → ∀ e ∈ L p, e ∈ L p₀) :
    L.pullLoc ξ' i j p' = Submodule.span (regAt ξ' p') (j '' (L p₀ : Set E)) := by
  refine congrArg _ (Set.ext fun e' => ⟨?_, ?_⟩)
  · rintro ⟨p, hp, e, he, rfl⟩
    exact ⟨e, hu p hp e he, rfl⟩
  · rintro ⟨e, he, rfl⟩
    exact ⟨p₀, h, e, he, rfl⟩

theorem NormAt.isLocalRing_regAt (p : Cpt ξ) : IsLocalRing (regAt ξ p) :=
  IsLocalRing.of_surjective' (genMap ξ p).rangeRestrict (genMap ξ p).rangeRestrict_surjective

theorem NormAt.ofPrime_of_isLocalRing (A : Subring Ω) [IsLocalRing A] (P : Ideal A) (hP : P.IsMaximal) :
    (LocalSubring.ofPrime A P).toSubring = A := by
  obtain rfl := IsLocalRing.eq_maximalIdeal hP
  refine le_antisymm ?_ (LocalSubring.le_ofPrime A _)
  intro a ha
  obtain ⟨⟨u, s⟩, e⟩ := IsLocalization.surj (IsLocalRing.maximalIdeal A).primeCompl
    (⟨a, ha⟩ : (LocalSubring.ofPrime A (IsLocalRing.maximalIdeal A)).toSubring)
  have hs : IsUnit (s : A) := by
    by_contra h
    exact s.2 h
  obtain ⟨v, hv⟩ := hs.exists_right_inv
  have e' : a * ((s : A) : Ω) = (u : Ω) := congrArg Subtype.val e
  have hv' : ((s : A) : Ω) * (v : Ω) = 1 := congrArg Subtype.val hv
  have : a = (u : Ω) * v := by rw [← e', mul_assoc, hv', mul_one]
  rw [this]
  exact A.mul_mem u.2 v.2

theorem Lat.IsCohOn.of_isVBOn {L : Lat ξ E} {T : Set (Cpt ξ)} {r : ℕ} {V : Submodule Ω E} (h : L.IsVBOn T r V) :
    L.IsCohOn T := fun p hp => by
  obtain ⟨U, hU, b, -, hb⟩ := h p hp
  exact ⟨U, hU, r, b, fun q hq hqU => (hb q hq hqU).2⟩

theorem Lat.not_inFibre_of_coprime (p : Cpt ξ) {q q' : ℕ} (h : q.Coprime q') (h1 : InFibre ξ q p) :
    ¬ InFibre ξ q' p := by
  intro h2
  haveI := NormAt.isLocalRing_regAt p
  have key : ∀ n : ℕ, IsUnit (n : regAt ξ p) → unitAt ξ p (n : Ω) := by
    intro n hn
    obtain ⟨v, hv⟩ := hn.exists_right_inv
    have hv' : (n : Ω) * (v : Ω) = 1 := by simpa using congrArg Subtype.val hv
    refine ⟨left_ne_zero_of_mul_eq_one hv', natCast_mem _ n, ?_⟩
    rw [← eq_inv_of_mul_eq_one_right hv']
    exact v.2
  obtain ⟨a, b, e⟩ := (Nat.Coprime.cast (R := regAt ξ p) h)
  rcases IsLocalRing.isUnit_or_isUnit_of_add_one e with h' | h'
  · exact h1 (key _ (isUnit_of_mul_isUnit_right h'))
  · exact h2 (key _ (isUnit_of_mul_isUnit_right h'))

end API

end GlobalTheory.CompanionTheory.Ar
