module

public import ReciprocityTheory.AnalyticForms.RegularLocalRings.ProjDehom

@[expose] public section

namespace ReciprocityTheory.AnForm.R

open MvPolynomial AlgebraicGeometry CategoryTheory

noncomputable section

variable {K : Type} [Fintype K] [Nonempty K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem evaluation_eq_zero_iff_mem_primeIdealOf {X : Scheme.{0}} {U : X.Opens} (hU : IsAffineOpen U)
    (x : X) (hx : x ∈ U) (s : Γ(X, U)) :
    X.evaluation U x hx s = 0 ↔ s ∈ (hU.primeIdealOf ⟨x, hx⟩).asIdeal := by
  rw [Scheme.evaluation_eq_zero_iff_notMem_basicOpen]
  have e : x ∈ X.basicOpen s ↔ hU.primeIdealOf ⟨x, hx⟩ ∈ PrimeSpectrum.basicOpen s := by
    rw [← hU.fromSpec_preimage_basicOpen]
    change x ∈ X.basicOpen s ↔ hU.fromSpec.base (hU.primeIdealOf ⟨x, hx⟩) ∈ X.basicOpen s
    rw [show hU.fromSpec.base (hU.primeIdealOf ⟨x, hx⟩) = x from hU.fromSpec_primeIdealOf ⟨x, hx⟩]
  rw [e, PrimeSpectrum.mem_basicOpen, not_not]

end

end ReciprocityTheory.AnForm.R
