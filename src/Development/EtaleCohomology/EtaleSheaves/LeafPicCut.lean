module

public import Mathlib.RingTheory.ClassGroup.Basic

@[expose] public section

noncomputable section
open nonZeroDivisors

namespace LateralTheory.E.LeafPicCut

def sel (B : Type) [CommRing B] [IsDomain B] (q : ℕ) : Subgroup (FractionRing B)ˣ :=
  (powMonoidHom q : (FractionalIdeal B⁰ (FractionRing B))ˣ →* _).range.comap (toPrincipalIdeal B (FractionRing B))

abbrev selPow (B : Type) [CommRing B] [IsDomain B] (q : ℕ) : Subgroup (sel B q) :=
  (powMonoidHom q : (FractionRing B)ˣ →* (FractionRing B)ˣ).range.subgroupOf (sel B q)

abbrev selQ (B : Type) [CommRing B] [IsDomain B] (q : ℕ) : Type := sel B q ⧸ selPow B q

def LeafSelPic : Prop := ∀ (B : Type) [CommRing B] [IsDedekindDomain B] (q : ℕ) [NeZero q],
  Finite (selQ B q) → Finite {c : ClassGroup B // c ^ q = 1}

end LateralTheory.E.LeafPicCut
