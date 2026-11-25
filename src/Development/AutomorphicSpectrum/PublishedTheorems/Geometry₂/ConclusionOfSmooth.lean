module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.BlowupProjections.BlowupProjStatement
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.GeometricallyConnectedOfIsIsoRestrict
public import Mathlib.RingTheory.SimpleRing.Principal
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsClosedImmersionBlowupGeneratingSections
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSectionOfIsIsoRestrict
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj

@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits TopologicalSpace
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Geo.ResK ReciprocityTheory.AnForm.R

namespace GlobalTheory.CompanionTheory.Hypotheses₂

namespace Resolution

inductive IsBlowupSeq {X : Scheme.{0}} : ∀ {X' : Scheme.{0}}, (X' ⟶ X) → Prop

  | id : IsBlowupSeq (𝟙 X)

  | step {X₁ X₂ : Scheme.{0}} {s : X₁ ⟶ X} (J : X₁.IdealSheafData) (π : X₂ ⟶ X₁) :
      IsBlowupSeq s → FinalTheorems.Blowup π J → IsBlowupSeq (π ≫ s)

theorem IsBlowupSeq.single {X X' : Scheme.{0}} (J : X.IdealSheafData) (π : X' ⟶ X) (h : FinalTheorems.Blowup π J) :
    IsBlowupSeq π := by
  simpa using IsBlowupSeq.step J π .id h

theorem IsBlowupSeq.of_smooth {S Y Y' : Scheme.{0}} {f : Y ⟶ S} {B : Set Y} {s : Y' ⟶ Y}
    (h : IsSmoothBlowupSeq f B s) : IsBlowupSeq s := by
  induction h with
  | id => exact .id
  | step J π _ _ _ h ih => exact .step J π ih h

theorem IsBlowupSeq.isProjOver {R : Type} [CommRing R] [IsNoetherianRing R] {X X' : Scheme.{0}} {g : X ⟶ Sp R}
    {s : X' ⟶ X} (h : IsBlowupSeq s) (hg : IsProjOver g) : IsProjOver (s ≫ g) := by
  induction h with
  | id => simpa using hg
  | @step X₁ X₂ s J π _ hπ ih =>
    obtain ⟨G, b, hb, ⟨N, i, hi, e⟩, -⟩ := ProjBlowup.exists_blowup (s ≫ g) ih J
    obtain ⟨φ, hφ, rfl⟩ := ProjBlowup.exists_iso_of_blowup J π b hπ hb
    exact ⟨N, φ ≫ i, inferInstance, by simp [e]⟩

end Resolution

open Resolution

def ResolutionCharZero : Prop :=
  ∀ (k : Type) [Field k] [CharZero k] (X : Scheme.{0}) (g : X ⟶ Sp k) [LocallyOfFiniteType g],
    QuasiCompact g → IsSeparated g → IsReduced X →
    ∃ (X' : Scheme.{0}) (s : X' ⟶ X),
      IsBlowupSeq s ∧ Smooth (s ≫ g) ∧ IsIso (s ∣_ g.smoothLocus) ∧
        FinalTheorems.Snc (preRed s (g.smoothLocus : Set X)ᶜ g.smoothLocus.isOpen.isClosed_compl)

theorem ResolutionCharZero.projective (h : ResolutionCharZero) {k : Type} [Field k] [CharZero k] {X : Scheme.{0}}
    (g : X ⟶ Sp k) [LocallyOfFiniteType g] [IsReduced X] (hg : IsProjOver g) :
    ∃ (X' : Scheme.{0}) (s : X' ⟶ X),
      IsBlowupSeq s ∧ IsProjOver (s ≫ g) ∧ Smooth (s ≫ g) ∧ IsIso (s ∣_ g.smoothLocus) ∧
        FinalTheorems.Snc (preRed s (g.smoothLocus : Set X)ᶜ g.smoothLocus.isOpen.isClosed_compl) := by
  have hp : IsProper g := by
    obtain ⟨N, i, hi, rfl⟩ := hg
    have : IsProper (PSpace.str k N) := isProper_str k N
    infer_instance
  obtain ⟨X', s, h₁, h₂⟩ := h k X g inferInstance inferInstance inferInstance
  exact ⟨X', s, h₁, h₁.isProjOver hg, h₂⟩

end GlobalTheory.CompanionTheory.Hypotheses₂
