module

public import Development.EtaleCohomology.EtaleSheaves.LeafDescendVCut
import Development.EtaleCohomology.EtaleSheaves.LeafDescendChainPf

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite LateralTheory.E.E4 LateralTheory.E.LeafDescendVCut LateralTheory.E.LeafDescendChainPf

namespace LateralTheory.E.LeafPropsDescendPf.BaseChange

variable {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω]

theorem toR_incl {R R' : Subalgebra k Ω} (hR : R ≤ R') : toR R' ≫ incl hR = toR R := by
  rw [← Spec.map_comp]
  rfl

theorem cond {R R' : Subalgebra k Ω} (hR : R ≤ R') {C D : Scheme.{0}} {g : D ⟶ Sp R} {v : C ⟶ D}
    {c : C ⟶ Sp Ω} (h : IsPullback v c g (toR R)) : v ≫ g = (c ≫ toR R') ≫ incl hR := by
  rw [Category.assoc, toR_incl]; exact h.w

theorem sq {R R' : Subalgebra k Ω} (hR : R ≤ R') {C D : Scheme.{0}} {g : D ⟶ Sp R} {v : C ⟶ D}
    {c : C ⟶ Sp Ω} (h : IsPullback v c g (toR R)) :
    IsPullback (pullback.lift v (c ≫ toR R') (cond hR h)) c (pullback.snd g (incl hR)) (toR R') := by
  refine IsPullback.of_right ?_ (pullback.lift_snd _ _ _) (IsPullback.of_hasPullback g (incl hR))
  rw [pullback.lift_fst, toR_incl]; exact h

end LateralTheory.E.LeafPropsDescendPf.BaseChange

end
