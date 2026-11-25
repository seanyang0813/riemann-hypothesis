module

public import Development.EtaleCohomology.EtaleSheaves.LineHigh

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry LateralTheory.E.t_E2Cut

namespace LateralTheory.E.LineZeroCut

def LZNonempty : Prop := ∀ (A : Type) [CommRing A] [IsLocalRing A] {X : Scheme.{0}} (p : X ⟶ Spec (CommRingCat.of A)),
  UniversallyClosed p → Nonempty X → Nonempty ↑(pullback p (cpt A))

theorem lzNonempty : LZNonempty := by
  intro A _ _ X p hp hX
  obtain ⟨x⟩ := hX
  have hc : IsClosed (Set.range p.base) := p.isClosedMap.isClosed_range
  have h1 : IsLocalRing.closedPoint A ∈ Set.range p.base := by
    have : IsLocalRing.closedPoint A ∈ closure {p.base x} :=
      (PrimeSpectrum.le_iff_mem_closure _ _).1 (IsLocalRing.le_maximalIdeal (p.base x).isPrime.ne_top)
    exact closure_minimal (by simp) hc this
  obtain ⟨z, hz⟩ := h1
  have h2 : (cpt A) (IsLocalRing.closedPoint (IsLocalRing.ResidueField A)) = IsLocalRing.closedPoint A :=
    have : IsLocalHom (CommRingCat.Hom.hom (CommRingCat.ofHom (IsLocalRing.residue A))) :=
      (inferInstance : IsLocalHom (IsLocalRing.residue A))
    Spec_closedPoint
  obtain ⟨w, -⟩ := Scheme.Pullback.exists_preimage_pullback (f := p) (g := cpt A) z
    (IsLocalRing.closedPoint (IsLocalRing.ResidueField A)) (by rw [hz, h2])
  exact ⟨w⟩

end LateralTheory.E.LineZeroCut
