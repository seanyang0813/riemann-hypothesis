module

public import CompanionTheory.RealGroups.UnitaryAdmissibility.ArchimedeanUnitaryDual.StSandwich
public import Mathlib.Analysis.Normed.Group.Ultra

@[expose] public section

open CompanionTheory.Rg.FlB

noncomputable section

namespace GlobalTheory.CompanionTheory.RgSplit

section Form

variable {L : Type} [NontriviallyNormedField L] {V : Type} [AddCommGroup V] [Module L V]
  {s : L →+* L} {h : V → V → L}

def hlin (hh : IsHerm s h) (x : V) : V →ₗ[L] L where
  toFun := h x
  map_add' := hh.1 x
  map_smul' a y := by simpa using hh.2.1 a x y

@[simp] theorem hlin_apply (hh : IsHerm s h) (x y : V) : hlin hh x y = h x y := rfl

variable {δ : L} {e f : V}

end Form

end GlobalTheory.CompanionTheory.RgSplit
