module

public import Mathlib.AlgebraicGeometry.Scheme
public import Mathlib.RingTheory.Henselian
import Development.EtaleCohomology.EtaleSheaves.LineHigh
import Development.EtaleCohomology.EtaleSheaves.LineZeroCut

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry LateralTheory.E.t_E2Cut LateralTheory.E.LineZeroCut

namespace LateralTheory.E.LZProperCut

def LZHensFinite : Prop := ∀ (A : Type) [CommRing A] [IsLocalRing A] [HenselianLocalRing A]
  (B : Type) [CommRing B] [Algebra A B] [Module.Finite A B],
  ConnectedSpace ↑(Spec (CommRingCat.of B)) → IsLocalRing B

end LateralTheory.E.LZProperCut
