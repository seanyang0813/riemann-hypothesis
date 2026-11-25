module

public import Mathlib.Analysis.CStarAlgebra.Module.Constructions

@[expose] public section

namespace Formalism.FourierDecayAlt.TA

open Finset Filter Topology
open scoped InnerProductSpace ComplexConjugate

abbrev Pt (E : Type) := List (ℕ × E)

def lvl {E : Type} (p : Pt E) : ℕ := (p.map Prod.fst).sum

def IsPt {E : Type} [Zero E] (i : ℕ) (p : Pt E) : Prop :=
  lvl p = i ∧ ∀ b ∈ p, 1 ≤ b.1 ∧ b.2 ≠ 0

def ext {E : Type} (h : Pt E) (s : ℕ) (t : E) : Pt E := h ++ [(s, t)]

def PSDOn {α : Type} (P : Finset α) (k : α → α → ℂ) : Prop :=
  (∀ x ∈ P, ∀ y ∈ P, k y x = conj (k x y)) ∧
  ∀ a : α → ℂ, 0 ≤ (∑ x ∈ P, ∑ y ∈ P, conj (a x) * k x y * a y).re

section forms
variable {E : Type} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

noncomputable def gram (k : Pt E → Pt E → ℂ) (V : Pt E → H) (P : Finset (Pt E)) : ℂ :=
  ∑ p ∈ P, ∑ p' ∈ P, k p p' * ⟪V p, V p'⟫_ℂ

end forms

def LatSum {E : Type} [AddCommGroup E] (L : AddSubgroup E) (c : E → ℝ) (ep : ℝ) : Prop :=
  (∀ x, 0 ≤ c x) ∧ ∀ S : Finset E, (∀ x ∈ S, x ∈ L ∧ x ≠ 0) → ∑ x ∈ S, c x ≤ ep

structure Data (E : Type) [Field E] where
  r : ℕ
  K : ℕ → Pt E → Pt E → ℂ
  Th : ℕ → ℕ → E → Pt E → Pt E → ℂ
  e : ℕ → ℝ
  La : ℕ → ℕ → AddSubgroup E
  Lf : ℕ → ℕ → AddSubgroup E
  Lv : ℕ → AddSubgroup E

section axioms
variable {E : Type} [Field E] [DecidableEq E]

def KernelSupport (D : Data E) : Prop :=
  ∀ i s, 1 ≤ s → s ≤ i → i ≤ D.r + 1 → ∀ (h h' : Pt E) (t t' : E),
    IsPt (i - s) h → IsPt (i - s) h' → t ≠ 0 → t' ≠ 0 →
    (1 / t - 1 / t' ∉ D.Lf i s ∨ (i = D.r + 1 ∧ s = 1 ∧ t ≠ t')) →
    D.K i (ext h s t) (ext h' s t') = 0

def ThetaDomination (D : Data E) : Prop :=
  ∀ i s, 1 ≤ s → s ≤ i → i ≤ D.r + 1 →
    (∀ (t : E) (Hd : Finset (Pt E)), (∀ h ∈ Hd, IsPt (i - s) h) → PSDOn Hd (D.Th i s t)) ∧
    (∀ t l : E, l ∈ D.La i s → D.Th i s (t + l) = D.Th i s t) ∧
    (∀ (t : E) (Hd : Finset (Pt E)), t ≠ 0 → (∀ h ∈ Hd, IsPt (i - s) h) →
      PSDOn Hd (fun h h' => D.Th i s t h h' - D.K i (ext h s t) (ext h' s t))) ∧
    (∀ (R : Finset E) (Hd : Finset (Pt E)), (∀ x ∈ R, ∀ y ∈ R, x - y ∈ D.La i s → x = y) →
      (∀ h ∈ Hd, IsPt (i - s) h) →
      PSDOn Hd (fun h h' => ((1 + D.e i : ℝ) : ℂ) * D.K (i - s) h h' - ∑ t ∈ R, D.Th i s t h h'))

end axioms

section estimates
variable {E : Type} [Field E] [DecidableEq E] {H : Type} [NormedAddCommGroup H]
  [InnerProductSpace ℂ H] {W : Type} [Fintype W]

end estimates

section levels
variable {E : Type} [Field E] [DecidableEq E] {H : Type} [NormedAddCommGroup H]
  [InnerProductSpace ℂ H] {W : Type} [Fintype W]


end levels

end Formalism.FourierDecayAlt.TA
