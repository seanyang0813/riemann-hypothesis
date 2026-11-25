module

public import CompanionTheory.RealGroups.UnitaryAdmissibility.ArchimedeanUnitaryDual.StSandwich
public import Mathlib.Data.Fin.Tuple.Sort

@[expose] public section

noncomputable section
namespace GlobalTheory.CompanionTheory.FlDecomp
open CompanionTheory.Rg.FlB

section Lem
variable {L : Type} [NontriviallyNormedField L] {V : Type} [AddCommGroup V] [Module L V]

variable {s : L →+* L} {δ : L} {h : V → V → L} {l : ℕ} {e f : Fin l → V} {W : Submodule L V}

def hl (hh : IsHerm s h) (x : V) : V →ₗ[L] L where
  toFun := h x
  map_add' := hh.1 x
  map_smul' a y := by simpa using hh.2.1 a x y

theorem hl_apply (hh : IsHerm s h) (x y : V) : hl hh x y = h x y := rfl

end Lem

end GlobalTheory.CompanionTheory.FlDecomp
end
