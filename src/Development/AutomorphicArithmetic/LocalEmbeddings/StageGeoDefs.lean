module

public import Development.AutomorphicArithmetic.LocalEmbeddings.FinMatchDefs
public import Development.AutomorphicArithmetic.LocalEmbeddings.ComplEquivEvW
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.UnitCharTriangle
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
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.MatchingAdjoints
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BlkGLMem
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsReading

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum GlobalTheory.IndefiniteRowSideFullHecke.MatchingAdjoints GlobalTheory.Grid GlobalTheory.ChainFr GlobalTheory.SquareComm GlobalTheory.FinMatch
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Classical
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Geo piW chrW unifAt latAtV At SInf)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.TripleRead (thO ptO)
open GlobalTheory.AdelicU (evFin splitPrime IsSplitBasis)
open GlobalTheory.BotMatch (evW)

namespace GlobalTheory.StageGeo

variable {D : D7}

def AUnit {v : HeightOneSpectrum (𝓞 D.host.F)} (t : D.host.E →ₐ[D.host.F] Fv D.host.F v) : Prop :=
  (∃ a ∈ D.host.AA, Valued.v (t a) = 1) ∧ ∃ z ∈ D.host.AA⁻¹, Valued.v (t z) = 1

structure IsStageGeo (ψ : AddChar (AF D.host.F) ℂ) {T : Type} {A A' WW : HSp D} (X : Tri T A A' WW) (FA : Fr A) (FA' : Fr A')
    (FW : Fr WW) (hr : A.rank + A'.rank = WW.rank) (Bs : Base D.host.F D.host.E) (Γ : Geo D.sp.cm.sig A.rank A'.rank) : Prop where

  pairA : IsPair ψ true A WW (finCongr hr) Bs Γ.V Γ.W Γ.M

  pairB : IsPair ψ false A' WW (finCongr hr) Bs Γ.V' Γ.W Γ.M'

  latA : IsLat (finCongr hr) Γ.V Γ.W X.rA.Λ X.rW.Λ

  latB : IsLat (finCongr hr) Γ.V' Γ.W X.rA'.Λ X.rW.Λ

  cartA : IsCart true FA FW (finCongr hr) Bs Γ.V Γ.W

  cartB : IsCart false FA' FW (finCongr hr) Bs Γ.V' Γ.W

  JA : Γ.V.J = (1 : D.host.E) • A.gram

  JB : Γ.V'.J = (-1 : D.host.E) • A'.gram

  measA : Γ.M.μ = X.m.map (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.conjU A 1 JA)

  domA : Γ.M.dom = GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.conjU A 1 JA '' X.fd

  measB : Γ.M'.μ = X.m'.map (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.conjU A' (-1) JB)

  domB : Γ.M'.dom = GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.conjU A' (-1) JB '' X.fd'

  basA : ∀ v : Bs.P, ((Γ.V.bas v)⁻¹).1 = -(A.gram.map (Bs.τ v) * X.rA.β.1.map (evW (Bs.τ v)))ᵀ

  basB : ∀ v : Bs.P, ((Γ.V'.bas v)⁻¹).1 = (A'.gram.map (Bs.τ v) * X.rA'.β.1.map (evW (Bs.τ v)))ᵀ

  basW : ∀ v : Bs.P, AUnit (Bs.τ v) →
    (Γ.W.bas v).1 = (X.rW.β.1.map (evW (Bs.τ v))).submatrix (finCongr hr) (finCongr hr)

end GlobalTheory.StageGeo

end
