module

public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef
public import Formalism.SharpRestriction.CuspSpanNormBounds.BlockEnds
public import Formalism.SharpRestriction.CuspSpanNormBounds.IsPrimitiveSub

@[expose] public section

noncomputable section

open scoped Classical

namespace PI.PairValDefs

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef MeasureTheory

section Phase

variable {E : Type} [Field E] [NumberField E]

def psiInf (g : ℕ) (x : E) : ℂ :=
  Complex.exp (2 * Real.pi * Complex.I * (((Algebra.trace ℚ E x : ℚ) : ℂ) / (g : ℂ)))

def sgUp {N : ℕ} (U : Matrix (Fin N) (Fin N) E) : E :=
  ∑ a : Fin N, if h : a.val + 1 < N then U a ⟨a.val + 1, h⟩ else 0

def sgLo {N : ℕ} (L : Matrix (Fin N) (Fin N) E) : E :=
  ∑ a : Fin N, if h : a.val + 1 < N then L ⟨a.val + 1, h⟩ a else 0

end Phase

section Coef

variable {D : D7} {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)}
  {what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)}

abbrev MatR (D : D7) : Type := Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) D.host.E

variable (D u u' F0 what₂)

end Coef

section VolDef

variable {D : D7} {u u' : D.what₂.Word} {F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E)}
  {what₂ : Finset (Submodule (𝓞 D.host.E) (VS D).V)}

variable (D u u' F0 what₂)

end VolDef

end PI.PairValDefs
