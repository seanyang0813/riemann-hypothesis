module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsCptGen
import Mathlib.Tactic.Linter.HaveILetI
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.NumberTheory.NumberField.CMField
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.CmpHodgeDiag

open AlgebraicGeometry CategoryTheory Limits NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

section Ident

open MonoidalCategory CartesianMonoidalCategory MonObj ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open scoped CategoryTheory.Obj

end Ident

theorem exists_gen {X : Type} [TopologicalSpace X] [TopologicalSpace.NoetherianSpace X] [QuasiSober X]
    {U : Set X} (hU : IsOpen U) (hd : Dense U) (y : X) : ∃ g ∈ U, g ⤳ y := by
  obtain ⟨o, ho, hne, hoZ⟩ :=
    TopologicalSpace.NoetherianSpace.exists_isOpen_nonempty_subset_irreducibleComponent _
      (irreducibleComponent_mem_irreducibleComponents y)
  obtain ⟨z, hzo, hzU⟩ := hd.inter_open_nonempty o ho hne
  obtain ⟨g, hg⟩ := QuasiSober.sober (isIrreducible_irreducibleComponent (x := y))
    (isClosed_irreducibleComponent (x := y))
  exact ⟨g, (hg.specializes (hoZ hzo)).mem_open hU hzU, hg.specializes mem_irreducibleComponent⟩

theorem eq_of_specializes {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X} (h : IsCptGen ξ)
    {p : X} (hp : p ⤳ genPt ξ) : p = genPt ξ := by
  obtain ⟨hbij, -⟩ := h
  obtain ⟨q, rfl⟩ : p ∈ Set.range (X.fromSpecStalk (GlobalTheory.CompanionTheory.Ar.genPt ξ)) := by
    rw [Scheme.range_fromSpecStalk]
    exact hp
  have hF : IsField (X.presheaf.stalk (GlobalTheory.CompanionTheory.Ar.genPt ξ)) :=
    MulEquiv.isField (Field.toIsField Ω) (RingEquiv.ofBijective _ hbij).toMulEquiv
  have hsub : Subsingleton (PrimeSpectrum (X.presheaf.stalk (GlobalTheory.CompanionTheory.Ar.genPt ξ))) := by
    letI := hF.toField
    infer_instance
  have hq : q = IsLocalRing.closedPoint (X.presheaf.stalk (GlobalTheory.CompanionTheory.Ar.genPt ξ)) :=
    @Subsingleton.elim _ hsub q _
  rw [hq]
  exact Scheme.fromSpecStalk_closedPoint

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {Xo : Moduli D l} {c : Coeff l} {O O' : Type} [CommRing O] [CommRing O'] {β : O →+* c.F} {β' : O' →+* c.F}
  {Y : Model Xo c β} {Y' : Model Xo c β'} {S : Finset ℕ} {Ω : Type} [Field Ω] {K : Type} [Fintype K] {J : K → Type}
  {y : (Σ k, J k) → Ω}

end GlobalTheory.CompanionTheory.Ar.CmpHodgeDiag
