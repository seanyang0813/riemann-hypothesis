module

public import Formalism.LocalToGlobal.UnitaryNorms.CharDiv
public import Formalism.SharpRestriction.Divisibility.ZetaProductPairs
public import Formalism.DoubleCosetMeasures.StatementV
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Host

namespace Formalism.L2.DIV

namespace QLoc

def piP {L : Type} [Field L] [NumberField L] (P : HeightOneSpectrum (𝓞 L)) : (P.adicCompletion L)ˣ :=
  atFin P (unif P)

end QLoc

variable {D : D7}

def nuP (C : CharFrame D) (P : HeightOneSpectrum (𝓞 D.host.E)) (i : ℕ) : (P.adicCompletion D.host.E)ˣ →* ℂˣ :=
  if h : 1 ≤ i ∧ i ≤ D.R.m then ((C.mu0 ⟨i - 1, by omega⟩)⁻¹).loc P else 1

end Formalism.L2.DIV
