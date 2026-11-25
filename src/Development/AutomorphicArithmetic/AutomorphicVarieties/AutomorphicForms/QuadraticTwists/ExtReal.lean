module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsPolarizedTwistAbsPow
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNatHeckeCharacterTrivialCongruentUnits
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModFFiniteIdeleUpToExtension
public import Development.AutomorphicArithmetic.CyclotomicBounds.ClassNumberBounds.HeckeCharacterChoice.ExtAlg
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.CharZeroAdicCompletion
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Development.AutomorphicArithmetic.AutomorphicVarieties.AutomorphicForms.Newform
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.SemisimpleLevels.AbW
import Development.AutomorphicArithmetic.AutomorphicVarieties.PublishedTheorems.GelfandKazhdanReal

@[expose] public section

open NumberField IsDedekindDomain Neutral.B1 Formalism.L2.Host Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.N Polynomial
open GlobalTheory.CuspRep GlobalTheory.WeilDeligne GlobalTheory.Pst GlobalTheory.LocLanglands GlobalTheory.HeckeGal GlobalTheory.LocGL GlobalTheory.GalOfCusp UpperTheory.V UpperTheory.V.Af UpperTheory.V.Published

section SlopeTestRemainingChoices

open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryHeckeCharacterIdele (ideleMap adeleMap finiteCompletionMap)

private def lev (K : Type) [Field K] [NumberField K] (N : ℕ) : Subgroup (Ideles K) where
  carrier := {a | a ∈ GlobalTheory.Mem.Chr.unitIdl K ∧ ∀ v : HeightOneSpectrum (𝓞 K),
    Valued.v ((a : AdeleRing (𝓞 K) K).2 v - 1) ≤ Valued.v (N : v.adicCompletion K)}
  one_mem' := ⟨one_mem _, fun v => by
    show Valued.v ((1 : v.adicCompletion K) - 1) ≤ _
    rw [sub_self, map_zero]
    exact zero_le⟩
  mul_mem' := fun {a b} ha hb => ⟨mul_mem ha.1 hb.1, fun v => by
    show Valued.v ((a : AdeleRing (𝓞 K) K).2 v * (b : AdeleRing (𝓞 K) K).2 v - 1) ≤ _
    have e : (a : AdeleRing (𝓞 K) K).2 v * (b : AdeleRing (𝓞 K) K).2 v - 1 =
        (a : AdeleRing (𝓞 K) K).2 v * ((b : AdeleRing (𝓞 K) K).2 v - 1) + ((a : AdeleRing (𝓞 K) K).2 v - 1) := by ring
    rw [e]
    refine Valuation.map_add_le _ ?_ (ha.2 v)
    rw [map_mul, ha.1 v, one_mul]
    exact hb.2 v⟩
  inv_mem' := fun {a} ha => ⟨inv_mem ha.1, fun v => by
    have h : (a : AdeleRing (𝓞 K) K).2 v * ((a⁻¹ : Ideles K) : AdeleRing (𝓞 K) K).2 v = 1 :=
      congrArg (fun z : AdeleRing (𝓞 K) K => z.2 v) a.mul_inv
    have e : (a : AdeleRing (𝓞 K) K).2 v * (((a⁻¹ : Ideles K) : AdeleRing (𝓞 K) K).2 v - 1) =
        -((a : AdeleRing (𝓞 K) K).2 v - 1) := by linear_combination h
    have h2 := congrArg (Valued.v : Valuation (v.adicCompletion K) _) e
    rw [map_mul, ha.1 v, one_mul, Valuation.map_neg] at h2
    rw [h2]
    exact ha.2 v⟩

private noncomputable def crd (K : Type) [Field K] [NumberField K] (w : InfinitePlace K) : Ideles K →* ℂˣ :=
  Units.map ((InfinitePlace.Completion.extensionEmbedding w).comp
    ((Pi.evalRingHom (fun v : InfinitePlace K => v.Completion) w).comp
      (RingHom.fst (InfiniteAdeleRing K) (FiniteAdeleRing (𝓞 K) K)))).toMonoidHom

private noncomputable def kap (K : Type) [Field K] [NumberField K] (a : ℤ) : Ideles K →* ℂˣ :=
  ∏ w : InfinitePlace K, crd K w ^ a

end SlopeTestRemainingChoices
