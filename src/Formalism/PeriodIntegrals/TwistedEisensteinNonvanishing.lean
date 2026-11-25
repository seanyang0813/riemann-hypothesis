module

public import Formalism.PeriodIntegrals.FlagSubmonoid
public import Mathlib.NumberTheory.NumberField.Basic
public import Formalism.HermitianLattices.LocS
public import Mathlib.RingTheory.Ideal.Norm.AbsNorm
import Mathlib.Tactic.Linter.Style

@[expose] public section

open NumberField IsDedekindDomain Module

noncomputable section

namespace PI.TwistedEisensteinNonvanishing

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

end Groups

section Data

variable {k K : Type} [CommRing k] [Field K]

abbrev SF (k K : Type) [CommRing k] (a b : ℕ) : Type := ((Fin a → k) →ₗ[k] (Fin b → k)) → K

def om {a b : ℕ} (mu : k → K) (v : k → ℤ) (sq : K) (g₀ : (Fin a → k) ≃ₗ[k] (Fin a → k))
    (h : (Fin b → k) ≃ₗ[k] (Fin b → k)) (Φ : SF k K a b) : SF k K a b := fun x =>
  mu (LinearEquiv.det g₀ : kˣ) * (mu (LinearEquiv.det h : kˣ))⁻¹ * sq ^ (-(v (LinearEquiv.det g₀ : kˣ)) * b) *
    sq ^ (v (LinearEquiv.det h : kˣ) * a) * Φ (h.symm.toLinearMap ∘ₗ x ∘ₗ g₀.toLinearMap)

variable (n' c' n c : ℕ)

def IsFree (l s : ℕ) : Prop := n' ≤ s ∧ (s - n' = c ∨ (1 ≤ s - n' ∧ (l < n ∨ l - n < s - n')))

instance (l s : ℕ) : Decidable (IsFree n' n c l s) := by unfold IsFree; infer_instance

abbrev FC : Type := {p : Fin (n + c) × Fin (n' + c') // IsFree n' n c p.1.1 p.2.1}

variable {n' c' n c}

def xx1 (xj : (Fin n' → k) →ₗ[k] (Fin n → k)) (t : FC n' c' n c → k) : (Fin (n' + c') → k) →ₗ[k] (Fin (n + c) → k) :=
  Matrix.toLin' (Matrix.of fun (l : Fin (n + c)) (s : Fin (n' + c')) =>
    if hf : IsFree n' n c l.1 s.1 then t ⟨(l, s), hf⟩
    else if hs : s.1 < n' then (if hl : l.1 < n then LinearMap.toMatrix' xj ⟨l.1, hl⟩ ⟨s.1, hs⟩ else 0)
    else if l.1 = n + (s.1 - n') then 1 else 0)

def chArg (x : (Fin (n' + c') → k) →ₗ[k] (Fin (n + c) → k)) : k :=
  ∑ i ∈ Finset.range c, atN (x (eN k (n' + c') (n' + i + 1))) (n + i)

def E1 (psi : k → K) (vals : Finset k) (wt : K) (Φ : SF k K (n' + c') (n + c)) : SF k K n' n := fun xj =>
  wt ^ Fintype.card (FC n' c' n c) *
    ∑ t ∈ Fintype.piFinset fun _ : FC n' c' n c => vals, Φ (xx1 xj t) * psi (-chArg (xx1 xj t))

end Data

end Loc

abbrev HomE (E : Type) [Field E] (a b : ℕ) : Type := Sp E a →ₗ[E] Sp E b

namespace LocE

open Loc

variable {E K : Type} [Field E] [NumberField E] [StarRing E] [Field K] (P : HeightOneSpectrum (𝓞 E)) (q : ℕ)

def vP (a : E) : ℤ := Classical.epsilon fun z : ℤ => IsUnit (redP P (a / (q : E) ^ z))

variable {P} in
open Classical in
def unitV (χ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ) (a : E) : K := if h : IsUnit (redP P a) then ((χ h.unit : Kˣ) : K) else 0

variable {P} in
def locChar (cq : K) (χ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ) (a : E) : K := cq ^ vP P q a * unitV χ (a / (q : E) ^ vP P q a)

open Classical in
def valsQ (E : Type) [Field E] (q A B : ℕ) : Finset E :=
  (Finset.range (q ^ (A + B))).image fun i : ℕ => ((i : ℕ) : E) / (q : E) ^ A

def sclLat (N : ℕ) (e : ℕ → ℤ) : Submodule (𝓞 E) (Sp E N) :=
  (stdAt E N P).comap
    ((LinearMap.pi fun l : Fin N => ((q : E) ^ e l.1)⁻¹ • (LinearMap.proj l : Sp E N →ₗ[E] E)).restrictScalars (𝓞 E))

def fIdx (k₀ c n s : ℕ) : ℕ := if s < k₀ then s else if s < k₀ + c then n + (s - k₀) else s - c

def fPos (k₀ c n l : ℕ) : ℕ := if l < k₀ then l else if l < n then l + c else k₀ + (l - n)

def scE (n : ℕ) (ex : ℕ → ℕ) (l : ℕ) : ℤ := if l < n then 0 else (ex (l - n) : ℤ)

def lamY (n c : ℕ) (ex : ℕ → ℕ) : Submodule (𝓞 E) (Sp E (n + c)) := sclLat P q (n + c) (scE n ex)

def entB {N' N : ℕ} (k₀ c' n' c n : ℕ) (ex' ex : ℕ → ℕ) (x : HomE E N' N) (p p' : ℕ) : E :=
  atN (x (eN E N' (fIdx k₀ c' n' p'))) (fIdx k₀ c n p) * (q : E) ^ (scE n' ex' (fIdx k₀ c' n' p') - scE n ex (fIdx k₀ c n p))

section AtQ

variable (ξ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ)

def parL (kj n c : ℕ) : Submodule (𝓞 E) (Sp E (n + c)) := sclLat P q (n + c) fun l => if kj ≤ l ∧ l < n then 1 else 0

def JQ (kj n c : ℕ) : Subgroup (Sp E (n + c) ≃ₗ[E] Sp E (n + c)) :=
  stabL E (n + c) (stdAt E (n + c) P) ⊓ stabL E (n + c) (parL P q kj n c)

variable {P}

open Classical in
def PhiQ (k₀ r c' n' c n : ℕ) : SF E K (n' + c') (n + c) := fun x =>
  if (∀ p p', p < n + c → p' < n' + c' → IntAt P (entB q k₀ c' n' c n 0 0 x p p')) ∧
      (∀ p p', r ≤ p → p < n + c → p' < r → IntAt P (entB q k₀ c' n' c n 0 0 x p p' / (q : E)))
  then unitV ξ (Matrix.det (Matrix.of fun s t : Fin r => entB q k₀ c' n' c n 0 0 x s.1 t.1)) else 0

end AtQ

end LocE

structure Ranks where
  ord : ℕ
  k : ℕ
  m : ℕ
  t : ℕ
  k_even : Even k
  m_even : Even m
  t_odd : Odd t
  two_le_m : 2 ≤ m
  m_add_three_le_k : m + 3 ≤ k

  rank_add_five_le : k + m - 1 + 5 ≤ t
  three_m_lt_t : 3 * m < t

  m_le_f : m ≤ 2 * ord
  f_le_k : 2 * ord ≤ k

  m_sq_le_N : m ^ 2 ≤ k + m * (t + 1)

namespace Ranks

variable (R : Ranks)

def n : ℕ := R.ord

def r : ℕ := R.k + R.m - 1

def N (j : ℕ) : ℕ := R.k + j * (R.t + 1)

end Ranks

def cOf (R : Ranks) (j : ℕ) : ℕ := R.m - 1 - j

def qOf {E : Type} [Field E] [NumberField E] (P : HeightOneSpectrum (𝓞 E)) : ℕ := Ideal.absNorm P.asIdeal

section Target

variable {E K : Type} [Field E] [NumberField E] [StarRing E] [Field K]

abbrev AutYL (E : Type) [Field E] (R : Ranks) (j : ℕ) : Type := Sp E (R.N j + cOf R j) ≃ₗ[E] Sp E (R.N j + cOf R j)

def BddL (R : Ranks) (P : HeightOneSpectrum (𝓞 E)) (j : ℕ) (h : AutYL E R j) : Prop :=
  ∀ x ∈ LocE.lamY P (qOf P) (R.N j) (cOf R j) 0, h⁻¹ x ∈ LocE.lamY P (qOf P) (R.N j) (cOf R j) 0 ∧
    ((qOf P : E) ^ j) • h x ∈ LocE.lamY P (qOf P) (R.N j) (cOf R j) 0

def DCL (R : Ranks) (P : HeightOneSpectrum (𝓞 E)) (j : ℕ) (h h' : AutYL E R j) : Prop :=
  ∃ r ∈ Loc.R1 E (R.N j) (cOf R j), ∃ κ ∈ LocE.JQ P (qOf P) (R.k + j) (R.N j) (cOf R j), h' = r * h * κ

def TwistedEisensteinCoefficient (R : Ranks) (P : HeightOneSpectrum (𝓞 E)) (psi : E → K) (sq cq : K) (ξ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ) (A B i : ℕ)
    (hal : AutYL E R i) (h : AutYL E R (i + 1)) : Loc.SF E K (R.N i) (R.N (i + 1)) :=
  Loc.E1 psi (LocE.valsQ E (qOf P) A B) (((qOf P : K) ^ B)⁻¹)
    (Loc.om (LocE.locChar (qOf P) cq ξ⁻¹) (LocE.vP P (qOf P)) sq hal h
      (LocE.PhiQ (qOf P) ξ R.k R.r (cOf R i) (R.N i) (cOf R (i + 1)) (R.N (i + 1))))

def TwistedEisensteinCoeffNonzero (R : Ranks) (P : HeightOneSpectrum (𝓞 E)) (psi : E → K) (sq cq : K) (ξ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ) (i : ℕ)
    (hal : AutYL E R i) (h : AutYL E R (i + 1)) : Prop :=
  ∃ A₀ B₀ : ℕ, ∀ A' B', A₀ ≤ A' → B₀ ≤ B' → TwistedEisensteinCoefficient R P psi sq cq ξ A' B' i hal h ≠ 0

def PsiOk (D : ℕ) (P : HeightOneSpectrum (𝓞 E)) (psi : E → K) : Prop :=
  (∀ x y : E, IntAt P ((qOf P : E) ^ D * x) → IntAt P ((qOf P : E) ^ D * y) → psi (x + y) = psi x * psi y) ∧
  (∀ x : E, IntAt P x → psi x = 1) ∧ (∀ x : E, ¬ IntAt P ((qOf P : E) ^ D * x) → psi x = 1)

end Target

def TwistedEisensteinNonvanishing : Prop :=
  ∀ (E K : Type) [Field E] [NumberField E] [StarRing E] [Field K] (R : Ranks) (P : HeightOneSpectrum (𝓞 E)),
    (Ideal.absNorm P.asIdeal).Prime → ((Ideal.absNorm P.asIdeal : ℕ) : 𝓞 E) ∉ P.asIdeal ^ 2 →
    ∀ (psi : E → K) (sq cq : K) (ξ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ), PsiOk (2 * R.m) P psi → sq ≠ 0 → cq ≠ 0 →
    ∀ i, i + 3 ≤ R.m → ∀ (hal : AutYL E R i) (h h' : AutYL E R (i + 1)),
      BddL R P i hal → BddL R P (i + 1) h → BddL R P (i + 1) h' → DCL R P (i + 1) h h' →
        TwistedEisensteinCoeffNonzero R P psi sq cq ξ i hal h → TwistedEisensteinCoeffNonzero R P psi sq cq ξ i hal h'

end PI.TwistedEisensteinNonvanishing
