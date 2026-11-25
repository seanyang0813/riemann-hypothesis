module

public import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex CochainComplex.HomComplex

namespace LateralTheory.E.CechFiltPf

def Piece : Prop := ∀ (R : Type) [CommRing R] (F : Shv R) {E₀ E : Spc} (g : E₀ ⟶ E) (p : ℕ) (n : ℤ),
  Subsingleton (Hrel R (disc.map (g.app (op (SimplexCategory.mk p)))) F (n - p)) →
  Subsingleton (HK R (mappingCone ((HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) (-(p : ℤ))).map
    (((chains R).map g).f (-(p : ℤ))))) F n)

universe u v

theorem chains_isZero (R : Type) [CommRing R] (E : Spc) (j : ℤ) (hj : 0 < j) : IsZero (((chains R).obj E).X j) := by
  unfold chains
  exact HomologicalComplex.isZero_extend_X _ _ _ (fun i => by
    show -(i : ℤ) ≠ j
    omega)

theorem res_isZero (R : Type) [CommRing R] (F : Shv R) (j : ℤ) (hj : j < 0) : IsZero ((res R F).X j) := by
  unfold res InjectiveResolution.cochainComplex
  exact HomologicalComplex.isZero_extend_X _ _ _ (fun i => by
    show (i : ℤ) ≠ j
    omega)

def DiscLvl : Prop := ∀ (R : Type) [CommRing R] (F : Shv R) {P Q : PSh} (h : P ⟶ Q) (m : ℤ),
  Subsingleton (Hrel R (disc.map h) F m) →
  Subsingleton (HK R (mappingCone ((HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) 0).map ((free R).map h))) F m)

def ShiftLvl : Prop := ∀ (R : Type) [CommRing R] (F : Shv R) {E₀ E : Spc} (g : E₀ ⟶ E) (p : ℕ) (n : ℤ),
  Subsingleton (HK R (mappingCone ((HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) 0).map
    ((free R).map (g.app (op (SimplexCategory.mk p)))))) F (n - p)) →
  Subsingleton (HK R (mappingCone ((HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) (-(p : ℤ))).map
    (((chains R).map g).f (-(p : ℤ))))) F n)

theorem Piece_of (hD : DiscLvl) (hS : ShiftLvl) : Piece := by
  intro R _ F E₀ E g p n h
  exact hS R F g p n (hD R F _ _ h)

end LateralTheory.E.CechFiltPf
