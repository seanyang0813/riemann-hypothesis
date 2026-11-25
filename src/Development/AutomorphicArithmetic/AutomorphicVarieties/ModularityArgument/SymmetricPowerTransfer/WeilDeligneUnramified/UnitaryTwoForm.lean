module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.SymmetricPowerTransfer.GeneralizedEigenspaces.WeightKernels.GoodSet
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.GalUnitaryT
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CuspidalDescent.SphericalTwists.RowProps
public import Development.AutomorphicArithmetic.AutomorphicVarieties.CurveDVRSpecialization.EveryPointSatisfiesFrameCondition
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.PrimeIndexConstruction.ThruBad
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.CuspidalDescent.DescUse
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.SymmetricPowerTransfer.UnrSplit
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.PrimeIndexConstruction.RankFourAutomorphyOfTensor
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.AdmissibleResidues.SphericalOfHasSat

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain ValuativeRel Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.MainNotions.N Polynomial
open GlobalTheory.CuspRep GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.LocGL GlobalTheory.GalOfCusp GlobalTheory.UnitaryBC GlobalTheory.SmGL GlobalTheory.SplitWeil
open UpperTheory.V UpperTheory.V.Af UpperTheory.V.Sd UpperTheory.V.Z.Sym UpperTheory.V.Z.Sym.Dict
open UpperTheory.V.W (Plc Lp)
open scoped Matrix

namespace UpperTheory.V.Z.Sym.W

open UpperTheory.V.Z.Win UpperTheory.GalN.V

section Loc

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {n : ℕ}

def NoLk (a : kˣ →* ℂˣ) : Prop := ∀ j : ℕ, j = 1 ∨ j = 2 → ∀ e : ℤ, e = 1 ∨ e = -1 → a ^ j ≠ absPow k (e : ℂ)

abbrev PT (τ : SmIrr (GL (Fin n) k)) : Prop := GlobalTheory.RoadU.PlainTor (IrrGL.of τ.ρ τ.smooth τ.irred)

def psPol (ψ : Fin n → kˣ →* ℂˣ) (x : kˣ) : ℂ[X] :=
  ∏ j, (Polynomial.X - Polynomial.C ((ψ j x * absPow k (-(((n : ℂ) - 1) / 2)) x : ℂˣ) : ℂ))

end Loc

section

variable {L Ω : Type} [Field L] [NumberField L] [IsCMField L] [Field Ω] [Algebra L Ω] [IsAlgClosure L Ω] {l : ℕ} [Fact l.Prime]

structure AdInW (ι : Qbar l ≃+* ℂ) (M m : ℕ) (r : G L Ω →* GL (Fin 2) (Qbar l)) : Prop where
  cont : Continuous r
  aut : AutCsd0 ι r
  wit : WitA ι r
  unl : Unlinked (ad0 r)
  pair : ∀ c : G (maximalRealSubfield L) Ω, IsConjEl c → ∃ P, IsPairing c r (cycBar L Ω l ^ (1 - ((2 : ℕ) : ℤ))) P
  irr : IrrOpen r
  gap : 2 ≤ m
  unr : ∀ A : ValuationSubring Ω, ¬ A.valuation (M : Ω) < 1 → ∀ s ∈ Ine (F := L) A, r s = 1
  away : ∃ τ : Fin 2 → G L Ω →* (Qbar l)ˣ, (∀ i, Continuous (τ i)) ∧ TypeAway r τ
  above : ∀ A : ValuationSubring Ω, A.valuation (l : Ω) < 1 →
    ∃ (b : ℤ) (k : ℕ) (κ : Fin 2 → ↥(Dec (F := L) A) →* (Qbar l)ˣ), 0 < k ∧ IsFlagOn r (Dec (F := L) A) κ ∧
      ∀ s : ↥(Dec (F := L) A), (s : G L Ω) ∈ Ine (F := L) A →
        κ 0 s ^ k = (cycBar L Ω l s ^ (b + m)) ^ k ∧ κ 1 s ^ k = (cycBar L Ω l s ^ b) ^ k

structure GalT {n : ℕ} (ι : Qbar l ≃+* ℂ) (σ : Submodule ℂ (UA L n → ℂ)) (r : G L Ω →* GL (Fin n) (Qbar l)) : Prop where
  cont : Continuous r
  comp : ∀ w, IsSplitAt w → ∃ τ, Comp σ w τ
  loc : ∀ w, IsSplitAt w → ∀ τ, Comp σ w τ → LocGlobT ι r w τ
  pair : ∀ c : G (maximalRealSubfield L) Ω, IsConjEl c → ∃ P, IsPairing c r (cycBar L Ω l ^ (1 - (n : ℤ))) P

structure Lifts {n : ℕ} (σ : Submodule ℂ (UA L n → ℂ)) (π : CuspSub L n) : Prop where
  unr : ∀ w, IsUnramU σ w → ∃ B, (CG.mk π).HasSat w B
  comp : ∀ w, IsSplitAt w → ∀ τ : SmIrr (GL (Fin n) (Kw w)), π.IsLocComp w τ → Comp σ w τ

end

def SelectW : Prop :=
  ∀ (L : Type) [Field L] [NumberField L] [IsCMField L] (X : Set (Plc L)), ∀ w₀ ∈ X, ∃ P ⊆ X, w₀ ∈ P ∧
    Set.InjOn (fun w : Plc L => w.under (𝓞 (Lp L))) P ∧ ∀ w ∈ X, ∃ w' ∈ P, w'.under (𝓞 (Lp L)) = w.under (𝓞 (Lp L))

def GlueW : Prop :=
  ∀ (L Ω : Type) [Field L] [NumberField L] [IsCMField L] [Field Ω] [Algebra L Ω] [IsAlgClosure L Ω] (l : ℕ) [Fact l.Prime] (ι : Qbar l ≃+* ℂ) (R : G L Ω →* GL (Fin 3) (Qbar l)),
    (∀ w : Plc L, ∃ π : CuspSub L 3, AttC ι R π ∧ ((∃ B, (CG.mk π).HasSat w B) ∨ ∀ τ, π.IsLocComp w τ → PT τ)) → Birth.AllW ι R

def AdLiftW : Prop :=
  ∀ (L : Type) [Field L] [NumberField L] [IsCMField L], Unr L → ∀ (S₀ : Finset (Plc L)) (P : Set (Plc L)),
    Disjoint (S₀ : Set (Plc L)) P → Places ((S₀ : Set (Plc L)) ∪ P) → HasTwo S₀ →
    ∀ π : Submodule ℂ (UA L 2 → ℂ), IsAutRepU π → ∀ j : ℕ, 1 ≤ j →
    (∀ v : InfinitePlace L, ∃ lam, HasWeightAt π v.embedding lam ∧ lam.w 0 - lam.w 1 = j) →
    (∀ w : Plc L, (∀ w' ∈ S₀, w'.under (𝓞 (Lp L)) ≠ w.under (𝓞 (Lp L))) → IsUnramU π w) →
    ∀ ψ : ∀ w : Plc L, Fin 2 → (Kw w)ˣ →* ℂˣ, (∀ w ∈ (S₀ : Set (Plc L)) ∪ P, CompEq π w (ψ w)) →
    (∀ w ∈ P, (∀ i, ∀ u ∈ Hi.Uo (Kw w), ψ w i u = 1) ∧ Reg (ψ w 0 / ψ w 1)) →
    (∃ σ : Submodule ℂ (UA L 3 → ℂ), IsAutRepU σ ∧
      (∀ w : Plc L, (∀ w' ∈ S₀, w'.under (𝓞 (Lp L)) ≠ w.under (𝓞 (Lp L))) → IsUnramU σ w) ∧
      (∀ w ∈ S₀, CompSub σ w ![ψ w 0 / ψ w 1, 1, (ψ w 0 / ψ w 1)⁻¹]) ∧
      ∀ᶠ w in Filter.cofinite, w ∈ P → CompSub σ w ![ψ w 0 / ψ w 1, 1, (ψ w 0 / ψ w 1)⁻¹]) ∨
    ∃ σ : Submodule ℂ (UA L 2 → ℂ), IsAutRepU σ ∧
      ∀ᶠ w in Filter.cofinite, w ∈ P → ∃ ψ', CompSub σ w ψ' ∧ ψ' 0 / ψ' 1 = (ψ w 0 / ψ w 1) ^ 2

def AdAutW : Prop :=
  ∀ (L Ω : Type) [Field L] [NumberField L] [IsCMField L] [Field Ω] [Algebra L Ω] [IsAlgClosure L Ω] (l : ℕ) [Fact l.Prime] (ι : Qbar l ≃+* ℂ), l ≠ 2 → ∀ M m : ℕ, M ≠ 0 → 2 * l ∣ M → UnrSplit L M → ∀ r : G L Ω →* GL (Fin 2) (Qbar l), AdInW ι M m r →
    AutCsd0 ι (tw (ad0 r) (cycBar L Ω l)⁻¹) ∧ Birth.AllW ι (tw (ad0 r) (cycBar L Ω l)⁻¹)

def PropEGW : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (Ω : Type) [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] (ι : Qbar l ≃+* ℂ) (c : G ℚ Ω), Sd.IsCC c →
    ∀ (N w : ℕ) (φ θ : G ℚ Ω →* (Qbar l)ˣ), SlopeTestRemainingChoices N w θ → SplitAt N w φ → φ ≠ 1 → ∃ k₀ : ℕ, ∀ k ≥ k₀, φ c = (-1) ^ k →
      ∃ ρ, EisRep ι φ θ k ρ ∧ Birth.PR ι ρ ∧ Unlinked (ad0 ρ)

def SeedInW : Prop :=
  ∀ (K L Ω : Type) [Field K] [NumberField K] [Field L] [NumberField L] [IsCMField L] [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω]
    [Algebra K Ω] [Algebra L Ω] [IsAlgClosure L Ω] (l : ℕ) [Fact l.Prime] (ι : Qbar l ≃+* ℂ) (c : G ℚ Ω) (N w : ℕ)
    (χ' η θ : G ℚ Ω →* (Qbar l)ˣ) (j : ℕ), FieldPairCharacterTripleConditions K L c N w χ' η θ j → ∀ M : ℕ, M ≠ 0 → l ∣ M → UnrSplit L M →
    (∀ A : ValuationSubring Ω, ¬ A.valuation (M : Ω) < 1 → ∀ s ∈ Ine (F := L) A, χ' (Base.galEmb ℚ L Ω s) = 1) →
    ∀ (m : ℕ) (ρ : G ℚ Ω →* GL (Fin 2) (Qbar l)), 2 ≤ m → EisRep ι (χ' * η) θ (m + 1) ρ → IrrOpen ρ → Birth.PR ι ρ → Unlinked (ad0 ρ) →
    (χ' * η) c = (-1) ^ (m + 1) → ∃ κ : G L Ω →* (Qbar l)ˣ, AdInW ι M m (tw (ρ.comp (Base.galEmb ℚ L Ω)) κ)

end UpperTheory.V.Z.Sym.W

end
