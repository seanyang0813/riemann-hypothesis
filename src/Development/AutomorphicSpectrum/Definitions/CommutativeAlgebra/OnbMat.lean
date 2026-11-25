module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Normed.Lp.MeasurableSpace
public import Mathlib.MeasureTheory.Constructions.HaarToSphere
public import Mathlib.NumberTheory.NumberField.Basic
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.TheoremA

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Filter Topology
open scoped ComplexConjugate

namespace GlobalTheory.CompanionTheory.Ar.HS.Tuple

section Tuple

open ReciprocityTheory.ChartRestriction.G.T0 (TVar OmS sImg)

variable (K : Type) [Field K] [NumberField K] {V : Type} [AddCommGroup V] [Module K V] [Module (𝓞 K) V]
  {Ω : Type} [Field Ω] [Algebra K Ω]


def sphP (n : ℕ) : Measure (Metric.sphere (0 : EuclideanSpace ℂ (Fin n)) 1) :=
  ((volume : Measure (EuclideanSpace ℂ (Fin n))).toSphere Set.univ)⁻¹ • (volume : Measure (EuclideanSpace ℂ (Fin n))).toSphere


end Tuple

end GlobalTheory.CompanionTheory.Ar.HS.Tuple
