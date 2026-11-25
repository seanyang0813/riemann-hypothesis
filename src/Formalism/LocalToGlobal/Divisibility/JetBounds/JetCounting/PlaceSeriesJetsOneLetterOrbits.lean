module

public import Formalism.LocalToGlobal.Divisibility.JetBounds.IsExpansion
public import Formalism.GaussJetBounds.StatementS
public import Mathlib.Data.Nat.Notation
public import Formalism.GaussJetBounds.Statement
public import Formalism.GaussJetBounds.StatementP
public import Formalism.GaussJetBounds.StatementW
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.CyclicPowerClassOfExpEquiv
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.IsLawOfLog
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.UniformGaussModelCondition
public import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.UniformGaussModelConditionEquivalent
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussianEigenFrames.IsPairFrame
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussianEigenFrames.StatementC
public import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.StatementW
import Formalism.GaussJetBounds.StatementH
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.OddLogRelation
import Formalism.LocalToGlobal.TorsionIntegrality.GaussianEigenFrames.StatementG

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.Divisibility.JetBounds.MinorProductsLattice, Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TwoPlaces, Formalism.LocalToGlobal.Divisibility.JetBounds.JetCounting.CurveAt, Formalism.LocalToGlobal.Divisibility.JetBounds.JetCounting.PlaceSeriesJetsOneLetterOrbits

-- ===== clump member: Formalism.LocalToGlobal.Divisibility.JetBounds.MinorProductsLattice =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Divisibility.JetBounds.MinorProductsLattice", "h": "module\n\npublic import Formalism.LocalToGlobal.Divisibility.JetBounds.IsExpansion\npublic import Formalism.GaussJetBounds.StatementS\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped BigOperators

noncomputable section

namespace Formalism.L2.DIV

open Formalism.DworkPowerSeriesWeights Formalism.DworkPowerSeriesWeights.OddLevelGainBounds Formalism.IncomingBounds

def minorProductsLattice {k : Type} [NormedField k] [IsUltrametricDist k] {N0 C : ℕ} (p : Fin C → ℕ) (hp : ∀ c, p c ≤ N0) :
    Submodule (unitBall k) (MvPolynomial (Fin N0 × Fin N0) k) :=
  Submodule.span (unitBall k) {P | ∃ A : ∀ c, Fin (p c) → Fin N0, P = minorProd
    (fun (i a : Fin N0) => (MvPolynomial.X (i, a) : MvPolynomial (Fin N0 × Fin N0) k)) p hp A}

def OrbSys.ap {k : Type} [NormedField k] (S : OrbSys k) (δ : MvPolynomial S.σ k →ₗ[k] k) : OrbSys k where
  ι := S.ι
  σ := Empty
  g := S.g
  E := S.E
  P := ∑ κ ∈ S.P.support, MvPolynomial.monomial κ (MvPolynomial.C (δ (AddMonoidAlgebra.coeff S.P κ)))

def sysF (l : ℕ) [Fact l.Prime] (d N0 N1 : ℕ) [NeZero d]
    (g : ZV d N0 N1 → MvPowerSeries (ZV d N0 N1) ℂ_[l]) (E : MvPowerSeries (ZV d N0 N1) ℂ_[l]) (colN : ZMod d → ℕ)
    (p : ∀ s, Fin (colN s) → ℕ) (hp : ∀ s c, p s c ≤ N0) (I : ∀ s c, Fin (p s c) → Fin N1) : OrbSys ℂ_[l] where
  ι := ZV d N0 N1
  σ := ZMod d × Fin N0 × Fin N0
  g := g
  E := E
  P := ∏ s : ZMod d, minorProd
        (fun (i : Fin N0) (b : Fin N1) =>
          (∑ a : Fin N0, MvPolynomial.C (MvPolynomial.X (s, i, a)) * MvPolynomial.X (s, a, b) :
            MvPolynomial (ZV d N0 N1) (MvPolynomial (ZMod d × Fin N0 × Fin N0) ℂ_[l])))
        (p s) (hp s) (I s)

inductive IsSysW (l : ℕ) [Fact l.Prime] (Q : OrbSys ℂ_[l] → ℝ → Prop) : OrbSys ℂ_[l] → ℝ → Prop
  | caseA (d N0 N1 : ℕ) [NeZero d] (h3 : 3 ≤ l) (h2 : 2 ≤ d) (he : Even d) (hN0 : 0 < N0) (K0 : Subfield ℂ_[l])
      (hK : Unram l K0) (ζ : ℂ_[l]) (hζ : IsPrimitiveRoot ζ (l ^ d - 1)) (be : MvPowerSeries (ZMod d) ℂ_[l])
      (hb : BHyp l d K0 ζ be) (g : ZV d N0 N1 → MvPowerSeries (ZV d N0 N1) ℂ_[l])
      (hg0 : ∀ y, MvPowerSeries.constantCoeff (g y) = 0)
      (hg : ∀ y, MvPowerSeries.subst g (entLog (K := ℂ_[l]) l y) = MvPowerSeries.X y)
      (ε : ℂ_[l]) (hε : ε = 1 ∨ ε = -1)
      (TT : Finset (ZMod d)) (colN : ZMod d → ℕ) (p : ∀ s, Fin (colN s) → ℕ)
      (hp : ∀ s c, p s c ≤ N0) (hp1 : ∀ s c, 1 ≤ p s c) (I : ∀ s c, Fin (p s c) → Fin N1)
      (nu1 nu2 size : ZMod d → ℕ) (h1 : ∀ s, nu1 s = colN s)
      (h22 : ∀ s, nu2 s = (Finset.univ.filter (fun c => 2 ≤ p s c)).card)
      (hs : ∀ s, size s = ∑ c, p s c)
      (hJ : ∀ s, JnumOneLetter l d TT nu1 size s + (if s ∈ TT then 1 else 0) ≤ N0)
      (δ : MvPolynomial (ZMod d × Fin N0 × Fin N0) ℂ_[l] →ₗ[ℂ_[l]] ℂ_[l])
      (hδ : ∀ R ∈ nablaO (K := ℂ_[l]) colN p hp, ‖δ R‖ ≤ 1) :
      IsSysW l Q ((sysA l d N0 N1 be g ε colN p hp I).ap δ) (expA l d N0 N1 TT nu1 nu2 size)
  | caseB (N0 N1 C : ℕ) (h3 : 3 ≤ l)
      (K0 : Subfield ℂ_[l]) (hK : Unram l K0) (ζ : ℂ_[l]) (hζ : IsPrimitiveRoot ζ (l ^ 2 - 1))
      (be : MvPowerSeries (ZMod 2) ℂ_[l]) (hb : BHyp l 2 K0 ζ be) (ep : ℂ_[l]) (hep : ‖ep‖ = 1)
      (g : Fin N0 × Fin N1 → MvPowerSeries (Fin N0 × Fin N1) ℂ_[l])
      (hg0 : ∀ y, MvPowerSeries.constantCoeff (g y) = 0)
      (hg : ∀ y, MvPowerSeries.subst g (oneLog (K := ℂ_[l]) l y) = MvPowerSeries.X y)
      (sgn : ℂ_[l]) (hsg : sgn = 1 ∨ sgn = -1)
      (p : Fin C → ℕ) (hp : ∀ c, p c ≤ N0) (I : ∀ c, Fin (p c) → Fin N1)
      (δ : MvPolynomial (Fin N0 × Fin N0) ℂ_[l] →ₗ[ℂ_[l]] ℂ_[l])
      (hδ : ∀ R ∈ minorProductsLattice (k := ℂ_[l]) p hp, ‖δ R‖ ≤ 1) :
      IsSysW l Q ((sysB l N0 N1 C be ep g sgn p hp I).ap δ) (expB l N0 N1 C p)
  | knownA (d N0 N1 : ℕ) [NeZero d] (g : ZV d N0 N1 → MvPowerSeries (ZV d N0 N1) ℂ_[l])
      (E : MvPowerSeries (ZV d N0 N1) ℂ_[l])
      (colN : ZMod d → ℕ) (p : ∀ s, Fin (colN s) → ℕ) (hp : ∀ s c, p s c ≤ N0) (I : ∀ s c, Fin (p s c) → Fin N1) (β : ℝ)
      (hq : Q (sysF l d N0 N1 g E colN p hp I) β)
      (δ : MvPolynomial (ZMod d × Fin N0 × Fin N0) ℂ_[l] →ₗ[ℂ_[l]] ℂ_[l])
      (hδ : ∀ R ∈ nablaO (K := ℂ_[l]) colN p hp, ‖δ R‖ ≤ 1) :
      IsSysW l Q ((sysF l d N0 N1 g E colN p hp I).ap δ) β
  | mon {S : OrbSys ℂ_[l]} {β : ℝ} (hS : IsSys7 l Q S β) (δ : MvPolynomial S.σ ℂ_[l] →ₗ[ℂ_[l]] ℂ_[l]) (hδ : MonInt δ) :
      IsSysW l Q (S.ap δ) β
  | mul {S₁ S₂ : OrbSys ℂ_[l]} {β₁ β₂ : ℝ} (h₁ : IsSysW l Q S₁ β₁) (h₂ : IsSysW l Q S₂ β₂) :
      IsSysW l Q (S₁.mul S₂) (β₁ + β₂)

end Formalism.L2.DIV
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Divisibility.JetBounds.MinorProductsLattice =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TwoPlaces =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TwoPlaces", "h": "module\n\npublic import Mathlib.Data.Nat.Notation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.GaussJetBounds.Statement\nimport Formalism.GaussJetBounds.StatementH\npublic import Formalism.GaussJetBounds.StatementP\npublic import Formalism.GaussJetBounds.StatementW\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.CyclicPowerClassOfExpEquiv\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.IsLawOfLog\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.OddLogRelation\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.D

open Formalism.DworkPowerSeriesWeights (Integral mvExp entLog bSum idM ZV serAlong)
open Formalism.InvariantFactorPaths.G7 (Simeq UnrOK IsLawOfLog)
open MvPowerSeries

abbrev PV (ι : Type) (N0 N1 : ℕ) := Bool × ι × Fin N0 × Fin N1

end Formalism.L2.Th1.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TwoPlaces =====

-- ===== clump member: Formalism.LocalToGlobal.Divisibility.JetBounds.JetCounting.CurveAt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Divisibility.JetBounds.JetCounting.CurveAt", "h": "module\n\npublic import Formalism.LocalToGlobal.Divisibility.JetBounds.MinorProductsLattice\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TwoPlaces\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.UniformGaussModelCondition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped BigOperators

noncomputable section

namespace Formalism.L2.DIV.C

open Formalism.L2.DIV Formalism.DworkPowerSeriesWeights Formalism.DworkPowerSeriesWeights.OddLevelGainBounds Formalism.IncomingBounds
open Formalism.L2.Th1.CM (MaximalUnramifiedExtension)
open Formalism.L2.Th1.D (OwOK TrDual beMean xOfZ sumE phFF thetaS NormRel expF PV)
open Formalism.InvariantFactorPaths.G7 (UnrOK IsLawOfLog cob at1)

def CurveAt (l : ℕ) [Fact l.Prime] (g2 g3 s2 ε : MaximalUnramifiedExtension l) (σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l) (F : MvPowerSeries (Fin 2) (MaximalUnramifiedExtension l)) : Prop :=
  5 ≤ l ∧ ‖g2‖ ≤ 1 ∧ ‖g3‖ ≤ 1 ∧ ‖ε‖ = 1 ∧ (∀ n, ‖PowerSeries.coeff n (thetaS l g2 g3 ε)‖ ≤ 1) ∧
    UnrOK (MaximalUnramifiedExtension l) l σ ∧ IsLawOfLog l F ∧
    (∀ α : MaximalUnramifiedExtension l, ‖α‖ = 1 → σ (σ α) = α → NormRel l σ (phFF l g2 g3 s2 ε) α) ∧
    ‖(g2 : ℂ_[l]) ^ 3 - 27 * (g3 : ℂ_[l]) ^ 2‖ = 1

def HostInt (l : ℕ) [Fact l.Prime] (g2 g3 s2 ε : MaximalUnramifiedExtension l) {n : Type} [Fintype n] (Θ : MvPowerSeries n ℂ_[l]) : Prop :=
  Integral (Formalism.DworkPowerSeriesWeights.mvExp (Formalism.L2.Th1.E.phSum (Formalism.L2.Th1.Top.phL l g2 g3 s2 ε) : MvPowerSeries n ℂ_[l]) * Θ)

inductive IsHostA (l : ℕ) [Fact l.Prime] (Q : OrbSys ℂ_[l] → ℝ → Prop) (σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l) (be0 : MvPowerSeries (Fin 2) (MaximalUnramifiedExtension l)) (N0 N1 : ℕ) :
    (ιr P : Type) → (PV ιr N0 N1 → P) → (S : OrbSys ℂ_[l]) → (P → MvPowerSeries S.ι ℂ_[l]) → MvPowerSeries P ℂ_[l] → ℝ → Prop
  | orbit (d : ℕ) [NeZero d] (h2 : 2 ≤ d) (he : Even d) (hN0 : 0 < N0)
      (ιr : Type) [Fintype ιr] [DecidableEq ιr] (om oms : ιr → MaximalUnramifiedExtension l) (hO : OwOK d σ om oms) (hT : TrDual d σ om oms)
      (ζ : MaximalUnramifiedExtension l) (hζ : IsPrimitiveRoot ζ (l ^ d - 1))
      (g : ZV d N0 N1 → MvPowerSeries (ZV d N0 N1) ℂ_[l])
      (hg0 : ∀ y, MvPowerSeries.constantCoeff (g y) = 0)
      (hg : ∀ y, MvPowerSeries.subst g (entLog (K := ℂ_[l]) l y) = MvPowerSeries.X y)
      (TT : Finset (ZMod d)) (colN : ZMod d → ℕ) (p : ∀ s, Fin (colN s) → ℕ)
      (hp : ∀ s c, p s c ≤ N0) (hp1 : ∀ s c, 1 ≤ p s c) (I : ∀ s c, Fin (p s c) → Fin N1)
      (nu1 nu2 size : ZMod d → ℕ) (h1 : ∀ s, nu1 s = colN s)
      (h22 : ∀ s, nu2 s = (Finset.univ.filter (fun c => 2 ≤ p s c)).card)
      (hs : ∀ s, size s = ∑ c, p s c)
      (hJ : ∀ s, JnumOneLetter l d TT nu1 size s + (if s ∈ TT then 1 else 0) ≤ N0)
      (δ : MvPolynomial (ZMod d × Fin N0 × Fin N0) ℂ_[l] →ₗ[ℂ_[l]] ℂ_[l])
      (hδ : ∀ R ∈ nablaO (K := ℂ_[l]) colN p hp, ‖δ R‖ ≤ 1) :
      IsHostA l Q σ be0 N0 N1 ιr (PV ιr N0 N1) (fun y => y)
        ((sysA l d N0 N1 (MvPowerSeries.map (MaximalUnramifiedExtension l).subtype (beMean l σ be0 om oms ζ)) g (-1) colN p hp I).ap δ)
        (xOfZ (d := d) l (MaximalUnramifiedExtension l).subtype σ om oms) (sumE (MvPowerSeries.map (MaximalUnramifiedExtension l).subtype be0))
        (expA l d N0 N1 TT nu1 nu2 size)
  | quoted (d : ℕ) [NeZero d] (h2 : 2 ≤ d) (he : Even d)
      (ιr : Type) [Fintype ιr] [DecidableEq ιr] (om oms : ιr → MaximalUnramifiedExtension l) (hO : OwOK d σ om oms) (hT : TrDual d σ om oms)
      (ζ : MaximalUnramifiedExtension l) (hζ : IsPrimitiveRoot ζ (l ^ d - 1))
      (g : ZV d N0 N1 → MvPowerSeries (ZV d N0 N1) ℂ_[l])
      (hg0 : ∀ y, MvPowerSeries.constantCoeff (g y) = 0)
      (hg : ∀ y, MvPowerSeries.subst g (entLog (K := ℂ_[l]) l y) = MvPowerSeries.X y)
      (colN : ZMod d → ℕ) (p : ∀ s, Fin (colN s) → ℕ) (hp : ∀ s c, p s c ≤ N0) (I : ∀ s c, Fin (p s c) → Fin N1) (β : ℝ)
      (hq : Q (sysF l d N0 N1 g (Formalism.DworkPowerSeriesWeights.mvExp ((-1 : ℂ_[l]) • bSum (idM : ZV d N0 N1 → ZV d N0 N1 → ℂ_[l])
        (MvPowerSeries.map (MaximalUnramifiedExtension l).subtype (beMean l σ be0 om oms ζ)))) colN p hp I) β)
      (δ : MvPolynomial (ZMod d × Fin N0 × Fin N0) ℂ_[l] →ₗ[ℂ_[l]] ℂ_[l])
      (hδ : ∀ R ∈ nablaO (K := ℂ_[l]) colN p hp, ‖δ R‖ ≤ 1) :
      IsHostA l Q σ be0 N0 N1 ιr (PV ιr N0 N1) (fun y => y)
        ((sysF l d N0 N1 g (Formalism.DworkPowerSeriesWeights.mvExp ((-1 : ℂ_[l]) • bSum (idM : ZV d N0 N1 → ZV d N0 N1 → ℂ_[l])
          (MvPowerSeries.map (MaximalUnramifiedExtension l).subtype (beMean l σ be0 om oms ζ)))) colN p hp I).ap δ)
        (xOfZ (d := d) l (MaximalUnramifiedExtension l).subtype σ om oms) (sumE (MvPowerSeries.map (MaximalUnramifiedExtension l).subtype be0)) β
  | mul {ι₁ ι₂ P₁ P₂ : Type} {e₁ : PV ι₁ N0 N1 → P₁} {e₂ : PV ι₂ N0 N1 → P₂} {S₁ S₂ : OrbSys ℂ_[l]}
      {x₁ : P₁ → MvPowerSeries S₁.ι ℂ_[l]} {x₂ : P₂ → MvPowerSeries S₂.ι ℂ_[l]}
      {Ψ₁ : MvPowerSeries P₁ ℂ_[l]} {Ψ₂ : MvPowerSeries P₂ ℂ_[l]} {β₁ β₂ : ℝ}
      (h₁ : IsHostA l Q σ be0 N0 N1 ι₁ P₁ e₁ S₁ x₁ Ψ₁ β₁) (h₂ : IsHostA l Q σ be0 N0 N1 ι₂ P₂ e₂ S₂ x₂ Ψ₂ β₂) :
      IsHostA l Q σ be0 N0 N1 (ι₁ ⊕ ι₂) (P₁ ⊕ P₂)
        (fun y => Sum.elim (fun i => Sum.inl (e₁ (y.1, i, y.2.2))) (fun i => Sum.inr (e₂ (y.1, i, y.2.2))) y.2.1)
        (S₁.mul S₂)
        (Sum.elim (fun q => serAlong Sum.inl (x₁ q)) (fun q => serAlong Sum.inr (x₂ q)))
        (serAlong Sum.inl Ψ₁ + serAlong Sum.inr Ψ₂) (β₁ + β₂)

end Formalism.L2.DIV.C
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Divisibility.JetBounds.JetCounting.CurveAt =====

-- ===== clump member: Formalism.LocalToGlobal.Divisibility.JetBounds.JetCounting.PlaceSeriesJetsOneLetterOrbits =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Divisibility.JetBounds.JetCounting.PlaceSeriesJetsOneLetterOrbits", "h": "module\n\npublic import Formalism.LocalToGlobal.Divisibility.JetBounds.JetCounting.CurveAt\npublic import Formalism.LocalToGlobal.TorsionIntegrality.UniformGaussModels.UniformGaussModelConditionEquivalent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussianEigenFrames.IsPairFrame\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussianEigenFrames.StatementC\nimport Formalism.LocalToGlobal.TorsionIntegrality.GaussianEigenFrames.StatementG\npublic import Formalism.LocalToGlobal.TorsionIntegrality.TorsionTranslationPowers.StatementW\n\n"}
section -- clump:auto
@[expose] public section

open scoped BigOperators

noncomputable section

namespace Formalism.L2.DIV.C

open Formalism.L2.DIV Formalism.DworkPowerSeriesWeights Formalism.DworkPowerSeriesWeights.OddLevelGainBounds Formalism.IncomingBounds
open Formalism.L2.Th1.CM (MaximalUnramifiedExtension)
open Formalism.L2.Th1.D (phFF thetaS NormRel PV)
open Formalism.InvariantFactorPaths.G7 (UnrOK IsLawOfLog cob)
open Formalism.L2.Th1.Top (IsHypPair inHyp IsLTNorm IsLatH IsFrameH thetaH)
open Formalism.L2.Th1.H (cmL CmOK matH stdH stdLat blk4 pow4 imgLat relIdx IsIsom IsSelfDual Th alphaQ kernel4)
open Formalism.L2.Th1.E (IntCurve curveL Unif)
open Formalism.L2.Th1.GD (LocNorm thetaLin frameM InMul IsPairFrame)

def HostIntFree : Prop :=
  ∀ (a₀ : ℕ) (b₀ c₀ : ℤ) (dK : ℕ) (ha : 0 < a₀) (hdK : 0 < dK), CmOK a₀ b₀ c₀ dK →
  ∀ (l : ℕ) [Fact l.Prime], 5 ≤ l → ¬ l ∣ dK → (¬ ∃ a : ZMod l, a ^ 2 = -(dK : ZMod l)) →
  ∀ ι : ℂ ≃+* ℂ_[l], ∀ g2 g3 ε : MaximalUnramifiedExtension l,
    Formalism.L2.Th1.CM.IsGoodModel l (Formalism.L2.Th1.F.cmPair a₀ b₀ dK ha hdK) ι g2 g3 → ‖ε‖ = 1 →
    (∀ n, ‖PowerSeries.coeff n (thetaS l g2 g3 ε)‖ ≤ 1) →
  ∃ (s2 : MaximalUnramifiedExtension l) (lam : ℂ) (hlam : lam ≠ 0), ‖s2‖ ≤ 1 ∧ IsLTNorm l (cmL a₀ b₀ dK ha hdK lam hlam) ι g2 g3 s2 ε ∧
  (∀ (σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l) (F : MvPowerSeries (Fin 2) (MaximalUnramifiedExtension l)), UnrOK (MaximalUnramifiedExtension l) l σ → IsLawOfLog l F →
    CurveAt l g2 g3 s2 ε σ F) ∧
  ∀ (n : Type) [Fintype n] [DecidableEq n] (h : Matrix n n ℂ)
    (Λ : AddSubgroup (n → ℂ)) (g₀ : (Fin 4 × n → ℂ) ≃ₗ[ℂ] (Fin 4 × n → ℂ)), IsLatH (cmL a₀ b₀ dK ha hdK lam hlam) b₀ dK h Λ g₀ →
  ∃ κ : ℂ, κ ≠ 0 ∧ IsAlgebraic ℚ κ ∧ (∀ σ' : ℂ ≃+* ℂ, ‖σ' κ‖ = 1) ∧
  ∀ θ ∈ Th (matH h) (alphaQ (Real.sqrt dK / 2) (matH h)) Λ,
    Formalism.L2.Th1.H.tens4 θ = κ • kernel4 (cmL a₀ b₀ dK ha hdK lam hlam) (lam * a₀) Λ
      (alphaQ (Real.sqrt dK / 2) (stdH (cmL a₀ b₀ dK ha hdK lam hlam) (Fin 4 × n))) g₀ →
  ∃ g₁ : (Fin 4 × n → ℂ) ≃ₗ[ℂ] (Fin 4 × n → ℂ),
    IsIsom (matH (blk4 h)) (stdH (cmL a₀ b₀ dK ha hdK lam hlam) (Fin 4 × n)) (g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) ∧
    ¬ l ∣ relIdx (stdLat (cmL a₀ b₀ dK ha hdK lam hlam) (Fin 4 × n)) (imgLat (g₁ : (Fin 4 × n → ℂ) →ₗ[ℂ] (Fin 4 × n → ℂ)) (pow4 Λ)) ∧
  (∀ σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l, UnrOK (MaximalUnramifiedExtension l) l σ →
    ∃ (γ : Matrix (Fin 4 × n) (Fin 4 × n) (MaximalUnramifiedExtension l)) (B' : Matrix (n) (n) ℂ_[l]), IsFrameH σ ι g₁ γ B') ∧
  ∀ (t : n → ℂ) (N : ℕ), 0 < N → ¬ l ∣ N → (N : ℂ) • t ∈ Λ →
  ∀ σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l, UnrOK (MaximalUnramifiedExtension l) l σ → (∃ F : MvPowerSeries (Fin 2) (MaximalUnramifiedExtension l), IsLawOfLog l F) →
  ∀ (γ : Matrix (Fin 4 × n) (Fin 4 × n) (MaximalUnramifiedExtension l)) (B' : Matrix n n ℂ_[l]), IsFrameH σ ι g₁ γ B' →
    HostInt l g2 g3 s2 ε (thetaH l ι B' h t θ)

end Formalism.L2.DIV.C
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Divisibility.JetBounds.JetCounting.PlaceSeriesJetsOneLetterOrbits =====
