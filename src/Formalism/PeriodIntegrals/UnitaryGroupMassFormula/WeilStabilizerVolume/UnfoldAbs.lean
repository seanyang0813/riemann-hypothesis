module

public import Mathlib.MeasureTheory.Group.Arithmetic

@[expose] public section

noncomputable section

namespace PI.VolStabW

open MeasureTheory Set
open scoped ENNReal Pointwise

section Abs

variable {G Y : Type*} [Group G] [MeasurableSpace G] [MeasurableMul G] [MeasurableInv G]

instance subMeasurableMul (H : Subgroup G) : MeasurableMul H where
  measurable_const_mul c := by
    exact (((measurable_const_mul (c : G)).comp measurable_subtype_coe).subtype_mk :
      Measurable fun x : H => (⟨(c : G) * x, H.mul_mem c.2 x.2⟩ : H))
  measurable_mul_const c := by
    exact (((measurable_mul_const (c : G)).comp measurable_subtype_coe).subtype_mk :
      Measurable fun x : H => (⟨(x : G) * c, H.mul_mem x.2 c.2⟩ : H))

instance subMeasurableInv (H : Subgroup G) : MeasurableInv H where
  measurable_inv := by
    exact ((measurable_inv.comp measurable_subtype_coe).subtype_mk :
      Measurable fun x : H => (⟨(x : G)⁻¹, H.inv_mem x.2⟩ : H))

variable [MulAction G Y]

end Abs

end PI.VolStabW
