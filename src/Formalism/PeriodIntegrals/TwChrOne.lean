module

public import Formalism.PeriodIntegrals.FlagSubmonoid
public import Mathlib.NumberTheory.NumberField.Basic
public import Formalism.HermitianLattices.LocS
public import Mathlib.RingTheory.Ideal.Norm.AbsNorm
import Mathlib.Tactic.Linter.Style

@[expose] public section

open NumberField IsDedekindDomain Module

noncomputable section

namespace PI.TwChrOne

section LocS

variable {R : Type*} [CommRing R]

def locS {W : Type*} [AddCommGroup W] [Module R W] (S : Submonoid R) (L : Submodule R W) :
    Submodule R W :=
  Formalism.HermitianLatticesTheory.locS S L

def localization₂ {W : Type*} [AddCommGroup W] [Module R W] (p : Ideal R) [p.IsPrime] (L : Submodule R W) :
    Submodule R W :=
  locS p.primeCompl L

end LocS

abbrev Sp (E : Type) (n : ℕ) : Type := Fin n → E

section Red

variable {E : Type} [Field E] [NumberField E]

def redP (P : HeightOneSpectrum (𝓞 E)) (a : E) : 𝓞 E ⧸ P.asIdeal :=
  open Classical in
  if h : ∃ c : 𝓞 E ⧸ P.asIdeal, ∃ r s : 𝓞 E, s ∉ P.asIdeal ∧ algebraMap (𝓞 E) E s * a = algebraMap (𝓞 E) E r ∧
      Ideal.Quotient.mk P.asIdeal s * c = Ideal.Quotient.mk P.asIdeal r
  then h.choose else 0

def IntAt (P : HeightOneSpectrum (𝓞 E)) (a : E) : Prop :=
  ∃ r s : 𝓞 E, s ∉ P.asIdeal ∧ algebraMap (𝓞 E) E s * a = algebraMap (𝓞 E) E r

end Red

section Deco

variable (E : Type) [Field E] [NumberField E] [StarRing E] (n : ℕ)

def stdLat : Submodule (𝓞 E) (Sp E n) := Submodule.pi Set.univ fun _ => (1 : Submodule (𝓞 E) E)

end Deco

section Frames

variable (E : Type) [Field E] [NumberField E] [StarRing E] (n : ℕ)

def stabL (M : Submodule (𝓞 E) (Sp E n)) : Subgroup (Sp E n ≃ₗ[E] Sp E n) where
  carrier := {c | ∀ x, c x ∈ M ↔ x ∈ M}
  one_mem' := fun _ => Iff.rfl
  mul_mem' := fun {a b} ha hb x => (ha (b x)).trans (hb x)
  inv_mem' := fun {a} ha x => by
    have h := ha (a⁻¹ x)
    rw [show a (a⁻¹ x) = x from LinearEquiv.apply_symm_apply a x] at h
    exact h.symm

def stdAt (P : HeightOneSpectrum (𝓞 E)) : Submodule (𝓞 E) (Sp E n) := localization₂ P.asIdeal (stdLat E n)

end Frames

namespace Loc

section Groups

variable (k : Type) [CommRing k] (n c : ℕ)

def atN {k : Type} [CommRing k] {N : ℕ} (v : Fin N → k) (i : ℕ) : k := if h : i < N then v ⟨i, h⟩ else 0

def eN (N i : ℕ) : Fin N → k := fun l => if l.1 = i then 1 else 0

def supp (N : ℕ) (s : Set ℕ) : Submodule k (Fin N → k) where
  carrier := {v | ∀ l : Fin N, l.1 ∉ s → v l = 0}
  add_mem' := fun {a b} ha hb l hl => by simp [ha l hl, hb l hl]
  zero_mem' := fun _ _ => rfl
  smul_mem' := fun r a ha l hl => by simp [ha l hl]

def Ufl (i : ℕ) : Submodule k (Fin (n + c) → k) := supp k (n + c) {l | l < n + i}

def inX : (Fin n → k) →ₗ[k] (Fin (n + c) → k) :=
  LinearMap.pi fun l => if h : l.1 < n then LinearMap.proj ⟨l.1, h⟩ else 0

def R1cond (r : (Fin (n + c) → k) ≃ₗ[k] (Fin (n + c) → k)) : Prop :=
  r ∈ PI.flagSubmonoid (Ufl k n c) (eN k (n + c)) n

variable {k n c} in
theorem R1cond.mul {r s : (Fin (n + c) → k) ≃ₗ[k] (Fin (n + c) → k)} (hr : R1cond k n c r) (hs : R1cond k n c s) :
    R1cond k n c (r * s) :=
  (PI.flagSubmonoid (Ufl k n c) _ _).mul_mem hr hs

def R1 : Subgroup ((Fin (n + c) → k) ≃ₗ[k] (Fin (n + c) → k)) :=
  (PI.flagSubmonoid (Ufl k n c) (eN k (n + c)) n).mulSupport

variable {k n c}

def n1Arg (r : (Fin (n + c) → k) ≃ₗ[k] (Fin (n + c) → k)) : k :=
  ∑ i ∈ Finset.range (c - 1), atN (r (eN k (n + c) (n + i + 1))) (n + i)

def Cbe (J : Subgroup ((Fin (n + c) → k) ≃ₗ[k] (Fin (n + c) → k))) (h : (Fin (n + c) → k) ≃ₗ[k] (Fin (n + c) → k)) :
    Subgroup ((Fin (n + c) → k) ≃ₗ[k] (Fin (n + c) → k)) :=
  R1 k n c ⊓ J.comap (MulAut.conj h⁻¹).toMonoidHom

end Groups

end Loc

abbrev HomE (E : Type) [Field E] (a b : ℕ) : Type := Sp E a →ₗ[E] Sp E b

namespace LocE

open Loc

variable {E K : Type} [Field E] [NumberField E] [StarRing E] [Field K] (P : HeightOneSpectrum (𝓞 E)) (q : ℕ)

variable {P} in
open Classical in
def unitV (χ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ) (a : E) : K := if h : IsUnit (redP P a) then ((χ h.unit : Kˣ) : K) else 0


def sclLat (N : ℕ) (e : ℕ → ℤ) : Submodule (𝓞 E) (Sp E N) :=
  (stdAt E N P).comap
    ((LinearMap.pi fun l : Fin N => ((q : E) ^ e l.1)⁻¹ • (LinearMap.proj l : Sp E N →ₗ[E] E)).restrictScalars (𝓞 E))

section AtQ

variable (ξ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ)

def parL (kj n c : ℕ) : Submodule (𝓞 E) (Sp E (n + c)) := sclLat P q (n + c) fun l => if kj ≤ l ∧ l < n then 1 else 0

def JQ (kj n c : ℕ) : Subgroup (Sp E (n + c) ≃ₗ[E] Sp E (n + c)) :=
  stabL E (n + c) (stdAt E (n + c) P) ⊓ stabL E (n + c) (parL P q kj n c)

variable {P}

def lamQB (kj n : ℕ) {N : ℕ} (h : HomE E N N) : K :=
  (unitV ξ (Matrix.det (Matrix.of fun s t : Fin (n - kj) => atN (h (eN E N (kj + t.1))) (kj + s.1))))⁻¹

end AtQ

end LocE

section Target

variable {E K : Type} [Field E] [NumberField E] [StarRing E] [Field K]

def ChiL (P : HeightOneSpectrum (𝓞 E)) (psi : E → K) (ξ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ) (kj N c : ℕ)
    (h r : Sp E (N + c) ≃ₗ[E] Sp E (N + c)) : K :=
  (psi (Loc.n1Arg r))⁻¹ * LocE.lamQB ξ kj N ((h⁻¹ * r * h : Sp E (N + c) ≃ₗ[E] Sp E (N + c))).toLinearMap

def ChrOkL (P : HeightOneSpectrum (𝓞 E)) (psi : E → K) (ξ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ) (kj N c : ℕ)
    (h : Sp E (N + c) ≃ₗ[E] Sp E (N + c)) : Prop :=
  (∀ r ∈ Loc.Cbe (LocE.JQ P (Ideal.absNorm P.asIdeal) kj N c) h, ChiL P psi ξ kj N c h r ≠ 0) ∧
  ∀ r ∈ Loc.Cbe (LocE.JQ P (Ideal.absNorm P.asIdeal) kj N c) h, ∀ r' ∈ Loc.Cbe (LocE.JQ P (Ideal.absNorm P.asIdeal) kj N c) h,
    ∀ r'' ∈ Loc.Cbe (LocE.JQ P (Ideal.absNorm P.asIdeal) kj N c) h,
    (∀ x, r'' (Loc.inX E N c x) = r (r' (Loc.inX E N c x))) →
      ChiL P psi ξ kj N c h r'' = ChiL P psi ξ kj N c h r * ChiL P psi ξ kj N c h r'

end Target

def TwChrOne : Prop :=
  ∀ (E K : Type) [Field E] [NumberField E] [StarRing E] [Field K] (P : HeightOneSpectrum (𝓞 E)) (psi : E → K)
    (ξ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ) (kj N c : ℕ), (∀ x, IntAt P x → psi x = 1) → ChrOkL P psi ξ kj N c 1

end PI.TwChrOne
