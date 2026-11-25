module

public import Formalism.StatementOC
public import Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality
public import Mathlib.GroupTheory.Nilpotent
import Formalism.JacobiWeightFamilies.Statement

@[expose] public section

open Finset ArithmeticFunction

noncomputable section

namespace Formalism.D5

open Formalism Formalism.WT

abbrev E0 := ZMod 2 × ZMod 2

def sgn2 (e : ZMod 2) : ℝ := if e = 0 then 1 else -1

section
variable {H : Type} [AddCommGroup H] [Fintype H] [DecidableEq H]

def InPhi (g : E0 × H) : Prop := g.1.1 = 0

instance : DecidablePred (InPhi (H := H)) := fun g => inferInstanceAs (Decidable (g.1.1 = 0))

def cconj : E0 × H := ((1, 1), 0)

def topPl (t : H) : E0 × H := ((0, 0), t)
def thickPl (t : H) : E0 × H := ((0, 1), t)

def PhiSet : Finset (E0 × H) := univ.filter InPhi

end

structure CycHost (H : Type) [AddCommGroup H] [Fintype H] [DecidableEq H] where
  cv : AddChar (E0 × H) ℂ → ℕ → ℂ
  ell : AddChar (E0 × H) ℂ → ℂ

section
variable {H : Type} [AddCommGroup H] [Fintype H] [DecidableEq H]

def GC (Hs : CycHost H) (ψ : AddChar (E0 × H) ℂ) (y : ℝ) : ℂ :=
  if ψ = 0 then ((Gz y : ℝ) : ℂ) else
    (∑ n ∈ Icc 1 ⌊y⌋₊, (Λ n : ℂ) * Hs.cv ψ n * ((y / n - 1 : ℝ) : ℂ)) + (y : ℂ) * Hs.ell ψ

def vonMangoldtClassSum (Hs : CycHost H) (g : E0 × H) (a w : ℝ) : ℝ :=
  ((1 / (Fintype.card (E0 × H) : ℂ)) * ∑ ψ : AddChar (E0 × H) ℂ,
    ψ (-g) * ∑ n ∈ Icc 1 ⌊a / w⌋₊, (Λ n : ℂ) * Hs.cv ψ n * ((a / n - w : ℝ) : ℂ)).re

def balTop (Hs : CycHost H) (a : ℝ) (t : H) (w : E0 × H → ℝ) : ℝ :=
  ((1 / ((PhiSet (H := H)).card : ℂ)) * ∑ g ∈ univ.filter (fun g : E0 × H => ¬ InPhi (g + topPl t)),
    ∑ ψ : AddChar (E0 × H) ℂ, ψ (-g) * ((w (cconj + g + topPl t) : ℝ) : ℂ)
      * GC Hs ψ (a / w (cconj + g + topPl t))).re

end

section
variable {H : Type} [AddCommGroup H] [Fintype H] [DecidableEq H]

def IsThickAt (T2 : Finset H) (u0 : H) (ρ : E0 × H) : Prop := ρ ∈ T2.image (fun t => thickPl (t + u0))

instance (T2 : Finset H) (u0 : H) : DecidablePred (IsThickAt T2 u0) :=
  fun ρ => inferInstanceAs (Decidable (ρ ∈ T2.image (fun t => thickPl (t + u0))))

end

end Formalism.D5
