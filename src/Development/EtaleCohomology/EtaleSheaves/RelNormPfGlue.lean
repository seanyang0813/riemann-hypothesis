module

public import Development.EtaleCohomology.EtaleSheaves.SteinPf
public import Mathlib.AlgebraicGeometry.Normalization
public import Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant
import Mathlib.Tactic.Linter.HaveILetI

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry

namespace LateralTheory.E.RelNormPf

def ClosedAt {X T : Scheme.{0}} (c : X ⟶ T) (W : T.Opens) : Prop :=
  ∀ b : Γ(X, c ⁻¹ᵁ W), (c.app W).hom.IsIntegralElem b → ∃ a, c.app W a = b

def NormClosed : Prop := ∀ {Z S : Scheme.{0}} (g : Z ⟶ S) [QuasiCompact g] [QuasiSeparated g], IsIntegral Z →
  ∀ V : g.normalization.Opens, IsAffineOpen V → ∀ b : Γ(Z, g.toNormalization ⁻¹ᵁ V),
    (g.toNormalization.app V).hom.IsIntegralElem b → ∃ a, g.toNormalization.app V a = b

theorem RelNorm_of_closed (hN : NormClosed) : LateralTheory.E.SteinPf.RelNorm := by
  intro Z S g _ _ hZ
  haveI : IsIntegral Z := hZ.1
  refine ⟨g.normalization, g.toNormalization, g.fromNormalization, inferInstance, inferInstance, inferInstance,
    g.toNormalization_fromNormalization, fun V hV hne => ⟨?_, ?_, hN g hZ.1 V hV⟩⟩
  · obtain ⟨x, hx⟩ := hne
    obtain ⟨z, hz⟩ := g.toNormalization.denseRange.exists_mem_open V.isOpen ⟨x, hx⟩
    exact ⟨z, hz⟩
  · haveI : IsSchemeTheoreticallyDominant g.toNormalization := .of_isDominant _
    exact g.toNormalization.app_injective V

end LateralTheory.E.RelNormPf
