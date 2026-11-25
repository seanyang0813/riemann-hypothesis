module

public import GroundTheory.HeightsAndTheta.Heights.KernelsRest

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.RestTerms

open MvPolynomial Matrix Real Finset

noncomputable section

def shapeCells {r : ℕ} (la : Fin r → ℕ) : Finset (ℕ × ℕ) :=
  Finset.univ.biUnion fun a : Fin r => (Finset.range (la a)).image fun b => ((a : ℕ), b)

def numSYT {r : ℕ} (la : Fin r → ℕ) : ℕ :=
  Nat.card {T : shapeCells la ≃ Fin (shapeCells la).card // Monotone T}

def hookShape (k b : ℕ) : Fin (b + 1) → ℕ := fun a => if (a : ℕ) = 0 then k - b else 1

abbrev Roots (f j k : ℕ) : Type := MvPolynomial (Fin f × Fin (j + k)) ℝ

variable (f j k : ℕ)

def dimFl : ℕ := f * ((j + k) * (j + k - 1) / 2)

def nDim : ℕ := f * j * k

def psumAt (m : ℕ) (τ : Fin f) : Roots f j k := ∑ i, X (τ, i) ^ m

def lieClass (m : ℕ) (σ : Fin f × Bool) : Roots f j k :=
  if σ.2 then (-1) ^ m * ∑ b : Fin k, X (σ.1, Fin.natAdd j b) ^ m
  else ∑ a : Fin j, X (σ.1, Fin.castAdd k a) ^ m

def IsSmallBlock (bot : Bool) : Prop := (bot = true → k ≤ j) ∧ (bot = false → j ≤ k)

def smallPsum (bot : Bool) (m : ℕ) (τ : Fin f) : Roots f j k :=
  if bot then ∑ b : Fin k, X (τ, Fin.natAdd j b) ^ m
  else ∑ a : Fin j, (-X (τ, Fin.castAdd k a)) ^ m

def muClass (bot : Bool) : Roots f j k := ∑ τ, smallPsum f j k bot 1 τ

def fibClass (bot : Bool) : Roots f j k :=
  ∏ τ : Fin f, if bot then
      vandermonde (fun b : Fin k => (X (τ, Fin.natAdd j b) : Roots f j k)) *
        vandermonde (fun a : Fin j => (X (τ, Fin.castAdd k a) : Roots f j k))
    else
      vandermonde (fun a : Fin j => -(X (τ, Fin.castAdd k a) : Roots f j k)) *
        vandermonde (fun b : Fin k => (X (τ, Fin.natAdd j b) : Roots f j k))

def restPoly (bot : Bool) : Roots f j k := muClass f j k bot ^ (nDim f j k + 1) * fibClass f j k bot

def degPoly (bot : Bool) : Roots f j k := muClass f j k bot ^ nDim f j k * fibClass f j k bot

structure IsFlagIntegral (I : Roots f j k →ₗ[ℝ] ℝ) : Prop where
  kills : ∀ (m : ℕ) (τ : Fin f) (G : Roots f j k), 1 ≤ m → m ≤ dimFl f j k →
    G.IsHomogeneous (dimFl f j k - m) → I (psumAt f j k m τ * G) = 0
  ne_zero : ∃ G : Roots f j k, G.IsHomogeneous (dimFl f j k) ∧ I G ≠ 0

def IsPsumDecomp (F : Roots f j k) (Q : Fin f → ℕ → Roots f j k) : Prop :=
  (∀ τ m, 1 ≤ m → m ≤ j + k → (Q τ m).IsHomogeneous (dimFl f j k + 1 - m)) ∧
    F = ∑ τ : Fin f, ∑ m ∈ Finset.Icc 1 (j + k), psumAt f j k m τ * Q τ m

def blockAntisym : Roots f j k →ₗ[ℝ] Roots f j k :=
  ∑ w : Fin f → Equiv.Perm (Fin (j + k)),
    (((∏ τ, (Equiv.Perm.sign (w τ) : ℤ) : ℤ) : ℝ)) •
      (rename (Equiv.prodCongrRight w)).toLinearMap

def rhoMon : (Fin f × Fin (j + k)) →₀ ℕ :=
  Finsupp.equivFunOnFinite.symm fun v => j + k - 1 - (v.2 : ℕ)

def ddConst : Roots f j k →ₗ[ℝ] ℝ := (lcoeff ℝ (rhoMon f j k)).comp (blockAntisym f j k)

def primesOver (P : Set ℕ) (B₀ : ℝ) : Type := {p : ℕ // p ∈ P ∧ p.Prime ∧ B₀ < p}

def restTerm (I : Roots f j k →ₗ[ℝ] ℝ) (σ : ℕ → ℕ → Fin f → Fin f × Bool)
    (Q : Fin f → ℕ → Roots f j k) (p : ℕ) (τ : Fin f) (m n : ℕ) : ℝ :=
  ((p : ℝ) ^ ((n + 1) * m))⁻¹ * m * I (lieClass f j k (m - 1) (σ p (n + 1) τ) * Q τ m)

def restAt (I : Roots f j k →ₗ[ℝ] ℝ) (vol : ℝ) (σ : ℕ → ℕ → Fin f → Fin f × Bool)
    (Q : Fin f → ℕ → Roots f j k) (p : ℕ) : ℝ :=
  Real.log p * vol * ∑ τ : Fin f, ∑ m ∈ Finset.Icc 2 (j + k), ∑' n : ℕ, restTerm f j k I σ Q p τ m n

def FlagIntegralProportional.Statement : Prop :=
  ∀ f j k : ℕ, 1 ≤ f → 1 ≤ j → 1 ≤ k → ∀ I : Roots f j k →ₗ[ℝ] ℝ, IsFlagIntegral f j k I →
    ∃ c : ℝ, c ≠ 0 ∧ ∀ G : Roots f j k, G.IsHomogeneous (dimFl f j k) → I G = c * ddConst f j k G

def PrimeTail.Statement : Prop :=
  ∀ B : ℝ, 0 < B →
    Summable (fun p : {p : ℕ // p.Prime ∧ B < p} => Real.log p.1 / (p.1 : ℝ) ^ 2) ∧
      ∑' p : {p : ℕ // p.Prime ∧ B < p}, Real.log p.1 / (p.1 : ℝ) ^ 2 ≤ 2 * Real.log 4 / B

def RestBound.Statement : Prop :=
  ∀ f j k : ℕ, 1 ≤ f → 1 ≤ j → 1 ≤ k → ∀ bot : Bool, IsSmallBlock j k bot →
    ∀ I : Roots f j k →ₗ[ℝ] ℝ, IsFlagIntegral f j k I →
    ∀ vol : ℝ, 0 < vol → ∀ P : Set ℕ, (∀ p ∈ P, p.Prime) →
    ∀ B₀ : ℝ, 4 * f * ((j + k : ℕ) : ℝ) ^ 2 ≤ B₀ →
    ∀ σ : ℕ → ℕ → Fin f → Fin f × Bool,
    ∀ Q : Fin f → ℕ → Roots f j k, IsPsumDecomp f j k (restPoly f j k bot) Q →
      Summable (fun p : primesOver P B₀ => restAt f j k I vol σ Q p.1) ∧
        |∑' p : primesOver P B₀, restAt f j k I vol σ Q p.1| ≤
          1.6 * ((nDim f j k : ℝ) + 1) * vol * |I (degPoly f j k bot)|

end

end GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.RestTerms
