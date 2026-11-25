module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus
public import Mathlib.Basic.NNReal.Defs
public import Mathlib.RingTheory.Valuation.Integers
import ReciprocityTheory.DualLattices.CotangentSurjective
import ReciprocityTheory.DualLattices.TensorSpan
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniversalCharts.LePreimageOfNil

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.GR

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up
open scoped Matrix
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open ReciprocityTheory.ChartRestriction.G.Chart (sp spMap)
open scoped CategoryTheory.Obj CategoryTheory.MonObj

def ZarhinStatement : Prop :=
  ∀ (C : Type) [Field C] [IsAlgClosed C] (v : Valuation C NNReal) (R : Type) [CommRing R]
    [Algebra R C], v.Integers R →
    ∀ (A : Over (Spec (CommRingCat.of R))) [GrpObj A] (L : LB A.left),
      IsAbelianScheme A → L.IsLB → Out.RelAmple A L →
      ∃ (P : Out.PolAV (Spec (CommRingCat.of R))) (i : A ⟶ P.A) (r : P.A ⟶ A),
        IsMonHom i ∧ IsMonHom r ∧ i ≫ r = 𝟙 A

end GlobalTheory.CompanionTheory.Ar.GR
