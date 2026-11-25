module

public import Development.EtaleCohomology.EtaleTrace.LadicH0LocallyConstant

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC
attribute [local instance] MvPolynomial.gradedAlgebra

namespace LateralTheory.EtaleTrace.LPdCut

def Dp (k : Type) [Field k] (N : ℕ) (i : Fin (N + 1)) : (PN k N).Opens :=
  Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) (MvPolynomial.X i)

def LChart : Prop := ∀ (k : Type) [Field k] (N : ℕ) (i : Fin (N + 1)),
  ∃ j : Spec (CommRingCat.of (MvPolynomial (Fin N) k)) ⟶ PN k N, IsOpenImmersion j ∧
    j ≫ PNto k N = Spec.map (CommRingCat.ofHom (MvPolynomial.C : k →+* MvPolynomial (Fin N) k)) ∧
    Set.range j = (Dp k N i : Set (PN k N))

def LProper : Prop := ∀ (k : Type) [Field k] (N : ℕ), IsProper (PNto k N)

def LSmooth : Prop := ∀ (k : Type) [Field k] (N : ℕ), SmoothOfRelativeDimension N (PNto k N)

def LEmpty : Prop := A5 → A9 → ∀ (R : Type) [CommRing R] (X : Scheme.{0}), IsEmpty X → ∀ (F : Shv R) (n : ℤ),
  Subsingleton (H R (sch.obj X) F n)

theorem unit_of {k : Type} [Field k] {X : Scheme.{0}} (p : X ⟶ S k) {q : ℕ} (h : IsUnit (q : k)) : IsUnit (q : Γ(X, ⊤)) := by
  simpa using (h.map (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom).map p.appTop.hom

end LateralTheory.EtaleTrace.LPdCut

end
