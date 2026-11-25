module

public import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp
import Development.EtaleCohomology.EtaleSheaves.H0TwistOverClosedField

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 CochainComplex.HomComplex

namespace LateralTheory.E.GlueRelPf

def obs (q : ℕ) [NeZero q] {U E : Spc} (u : U ⟶ E) (i m : ℤ) : Ht q U m i →+ Hrel (ZMod q) u (tw q i) (m + 1) :=
  HK.pre (ZMod q) (CochainComplex.mappingCone.fst ((chains (ZMod q)).map u)) (tw q i) m (m + 1) (add_comm 1 m)

def ConeExact : Prop := ∀ (R : Type) [CommRing R] {K L : Cx R} (φ : K ⟶ L) (F : Shv R) (m : ℤ),
  Function.Exact (HK.pull R φ F m) (HK.pre R (CochainComplex.mappingCone.fst φ) F m (m + 1) (add_comm 1 m))

end LateralTheory.E.GlueRelPf
