module

public import ReciprocityTheory.AnalyticForms.RegularLocalRings.IsOpenAlt
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsIntersectionFamily
public import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun

@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Inter

open MvPolynomial MeasureTheory Topology
open scoped ContDiff
open GroundTheory.Heights₂.Heights.NumbersDVR (MRing IsMultiHomog IsMultiHomogIdeal IsRelevant IsMultiProjPrime
  divCycle intNum)
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential IsSection IsSNC HoloMap mInt MIntegrable
  logNormSec)

abbrev HLine {K : Type} [Fintype K] (ι : K → Type) := ReciprocityTheory.ChartRestriction.G.Geo.HermLine ι

section Objects

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]

abbrev MCone (ι : K → Type) := (Σ k, ι k) → ℂ


variable (ι) in
structure Res (P : Ideal (MRing ι ℂ)) (e : ℕ) where

  D : Ideal (MRing ι ℂ)
  homog : IsMultiHomogIdeal D
  not_le : ¬ D ≤ P

  R : ReciprocityTheory.AnForm.R.AlgRes ι P D e

namespace Res

variable {P : Ideal (MRing ι ℂ)} {e : ℕ} (R : Res ι P e)

end Res


def IsProjVarQ (P0 : Ideal (MRing ι ℚ)) (e : ℕ) : Prop :=
  IsMultiProjPrime P0 ∧ ringKrullDim (MRing ι ℚ ⧸ P0) = ((e + Fintype.card K : ℕ) : WithBot ℕ∞)

end Objects

section Ring

variable {K : Type} {ι : K → Type}

end Ring

end GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Inter
