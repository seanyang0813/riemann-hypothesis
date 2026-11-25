module

public import GroundTheory.HeightsAndTheta.Heights.Intersections.FlagPivot
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FrameDefinitions.HasCoverByOne
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import GroundTheory.HeightsAndTheta.Heights.Intersections.IsSmoothHermFubiniStudyO1

@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.Heights₂.Heights.LowerBoundFree

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Inter

abbrev GenFrac (F : Type) [Field F] (Ψ : Type) (n : ℕ) : Type :=
  FractionRing (MvPolynomial (Ψ × Fin n × Fin n) F)

def genMatFr (F : Type) [Field F] (Ψ : Type) (n : ℕ) (τ : Ψ) : Matrix (Fin n) (Fin n) (GenFrac F Ψ n) :=
  Matrix.of fun a b =>
    algebraMap (MvPolynomial (Ψ × Fin n × Fin n) F) (GenFrac F Ψ n) (X (τ, a, b))

def flagMinorRatio (F : Type) [Field F] (Ψ : Type) (n : ℕ) (q : Ψ × Σ j : Fin (n - 1), PluckerBlocks n n j) :
    GenFrac F Ψ n :=
  flagMinor (genMatFr F Ψ n q.1) q.2.1 q.2.2 / leadMinor (genMatFr F Ψ n q.1) q.2.1

abbrev PivotIdx (Ψ : Type) (n : ℕ) : Type := Ψ × Σ a : Fin (n - 1), {b : Fin n // (a : ℕ) < b}

def pivotRatio (F : Type) [Field F] (Ψ : Type) (n : ℕ) (q : PivotIdx Ψ n) : GenFrac F Ψ n :=
  pivotMinor (genMatFr F Ψ n q.1) q.2.1 q.2.2.1 / leadMinor (genMatFr F Ψ n q.1) q.2.1

end GroundTheory.Heights₂.Heights.LowerBoundFree
