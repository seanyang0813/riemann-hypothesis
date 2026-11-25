module

public import Formalism.FockPairing
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LCassemLemmas

@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.G.Model.TS

open Formalism.GradedWeylDivisibility

abbrev fockR {σ R : Type*} [CommRing R] (f g : MvPolynomial σ R) : R :=
  FockPairing.pair f g

def toK (O K : Type*) [CommRing O] [CommRing K] [Algebra O K] {σ : Type*} : MvPolynomial σ O →ₗ[O] MvPolynomial σ K :=
  (mapAlgHom (Algebra.ofId O K)).toLinearMap

end Formalism.L2.G.Model.TS
