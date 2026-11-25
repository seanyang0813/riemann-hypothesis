module

import Development.AutomorphicArithmetic.WeightCongruences.TorsionOrderLeTwoMulFinrankSq
public import Mathlib.NumberTheory.NumberField.Units.Basic
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Basic
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots

@[expose] public section

noncomputable section

open NumberField

namespace Formalism.L2.SG.NGCut.TorsionTotientBound

theorem torsionOrder_le (E : Type) [Field E] [NumberField E] :
    Units.torsionOrder E ≤ 2 * (Module.finrank ℚ E) ^ 2 := by
  apply UpperTheory.torsionOrder_le_two_mul_finrank_sq

end Formalism.L2.SG.NGCut.TorsionTotientBound
