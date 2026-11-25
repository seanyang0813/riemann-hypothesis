module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat

open MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {Ω : Type} [Field Ω]
  {F : Type} [Field F] [NumberField F]

abbrev evC (z : (Σ k, ι k) → ℂ) (g : MRing ι) : ℂ := eval z (map (Int.castRingHom ℂ) g)

def OverInt (y : (Σ k, ι k) → Ω) (φ : F →+* Ω) : Prop :=
  (∀ k, ∃ i, y ⟨k, i⟩ ≠ 0) ∧
    ∀ c : ∀ k, ι k, (∀ k, y ⟨k, c k⟩ ≠ 0) → ∀ a : 𝓞 F, φ (a : F) ∈ chartRingZ y c

def PtOver (y : (Σ k, ι k) → Ω) (φ : F →+* Ω) (σ : F →+* ℂ) (z : (Σ k, ι k) → ℂ) : Prop :=
  z ∈ mcPts (mCoordIdeal y) ∧ ∀ (a : F) (d : K → ℕ) (g h : MRing ι), IsMultiHomog g d → IsMultiHomog h d →
    aeval y g = φ a * aeval y h → evC z g = σ a * evC z h

def IsUnitSec (P : Ideal (MRing ι)) (f g : MRing ι) : Prop :=
  ∀ W : Ideal (MRing ι), W.IsPrime → P ≤ W → IsRelevant W → ∃ u v : MRing ι, u ∉ W ∧ v ∉ W ∧ u * f - v * g ∈ P

structure IsPlaceWeight (y : (Σ k, ι k) → Ω) (φ : F →+* Ω) (t : (F →+* ℂ) → ℝ) (u : ((Σ k, ι k) → ℂ) → ℝ) : Prop where
  inv : ∀ (c : K → ℂ) z, (∀ k, c k ≠ 0) → u (fun p => c p.1 * z p) = u z
  smooth : ContDiffOn ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) u {z | ∀ k, ∃ i, z ⟨k, i⟩ ≠ 0}
  near : ∀ σ z, PtOver y φ σ z → ∀ᶠ z' in nhds z, u z' = t σ

def IsPlaceWeight.shift {y : (Σ k, ι k) → Ω} {φ : F →+* Ω} {s : (F →+* ℂ) → ℝ} {u : ((Σ k, ι k) → ℂ) → ℝ}
    (hu : IsPlaceWeight y φ s u) (A : HermLine ι) : HermLine ι :=
  A.tensor (HermLine.ofWeight u hu.inv)

def meanEmb (t : (F →+* ℂ) → ℝ) : ℝ := (∑ σ : F →+* ℂ, t σ) / (Module.finrank ℚ F : ℝ)

structure FlatHerm (y : (Σ k, ι k) → Ω) (φ : F →+* Ω) (A : HermLine ι) where
  M : ℕ
  M_pos : 0 < M
  f : MRing ι
  g : MRing ι
  df : K → ℕ
  dg : K → ℕ
  hf : IsMultiHomog f df
  hg : IsMultiHomog g dg
  deg : ∀ k, (df k : ℤ) - dg k = M * A.a k
  f_ne : f ∉ mCoordIdeal y
  g_ne : g ∉ mCoordIdeal y
  unit : IsUnitSec (mCoordIdeal y) f g
  κ : (F →+* ℂ) → ℝ
  κ_pos : ∀ σ, 0 < κ σ
  κ_conj : ∀ σ, κ (ComplexEmbedding.conjugate σ) = κ σ
  norm : ∀ σ z, PtOver y φ σ z → ‖evC z f‖ = (κ σ * A.h z) ^ M * ‖evC z g‖

def FlatHerm.ht {y : (Σ k, ι k) → Ω} {φ : F →+* Ω} {A : HermLine ι} (S : FlatHerm y φ A) : ℝ :=
  -meanEmb fun σ => Real.log (S.κ σ)

end GlobalTheory.CompanionTheory.Ar.Flat

namespace GlobalTheory.CompanionTheory.Ar.Flat.Inh

open MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo GlobalTheory.CompanionTheory.Ar.Flat

variable (F : Type) [Field F] [NumberField F]

end GlobalTheory.CompanionTheory.Ar.Flat.Inh
