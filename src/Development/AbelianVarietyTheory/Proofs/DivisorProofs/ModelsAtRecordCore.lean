module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCcIsEquivAtSerOfOneMapRowOfFive
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Development.AbelianVarietyTheory.Definitions.Divisors.PerCEmb
public import Formalism.LocalToGlobal.IndefiniteReal.FWExist
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevelFormCompatBaseEmbedding
public import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.UniformisationComponentLatticesMarkings
public import Formalism.LocalToGlobal.ProjectiveLattices.FreeBridge
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.WeightFloorInequalities
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero
public import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsBaseClassLevelAdapted

@[expose] public section

open NumberField Matrix Complex MeasureTheory IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct Classical ComplexConjugate

namespace GlobalTheory.AdTh



theorem models_at_record_core : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : Formalism.L2.DIV.FamIn D.what₂.LL G Pl0 T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (F : Face D A) (κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec), GlobalTheory.Hk3.Core R F → TieIn T R κ v₀ → ∀ (i : Fin D.R.m) (σ : T.Q.c.F →+* ℂ), σ = T.toCore.σ₀ → ∀ k : (T.U ((i : ℕ) + 1) σ).Comp, IsMod (Wc D i) (rank_Wc i) ((T.U ((i : ℕ) + 1) σ).X k) ∧ IsONFr ((T.U ((i : ℕ) + 1) σ).X k) (fun τ => T.x₀ ((i : ℕ) + 1) σ τ.1) ∧ IsInvOf (Wc D i) (rank_Wc i) ((T.U ((i : ℕ) + 1) σ).X k) (fun τ => T.x₀ ((i : ℕ) + 1) σ τ.1) (cart (R.MW i (sg0 D A))) ∧ ((T.U ((i : ℕ) + 1) σ).X k).p0 = (T.Q.Dw ((i : ℕ) + 1)).q ∧ D.R.r = (T.Q.Dw ((i : ℕ) + 1)).p + (T.Q.Dw ((i : ℕ) + 1)).q ∧ (T.Q.Dw ((i : ℕ) + 1)).p ≠ (T.Q.Dw ((i : ℕ) + 1)).q ∧ 1 ≤ D.R.r ∧ (T.Q.H.rt : D.host.E) = D.host.sqrtMinusD ∧ (∀ τ : D.host.E →+* ℂ, τ ∈ ((T.U ((i : ℕ) + 1) σ).X k).Ψ ↔ τ (T.Q.H.rt : D.host.E) = T.Q.H.rt0) ∧ (∀ hq : ((T.U ((i : ℕ) + 1) σ).X k).p0 + (T.Q.Dw ((i : ℕ) + 1)).p = D.R.r, IsBasOf (Wc D i) (rank_Wc i) ((T.U ((i : ℕ) + 1) σ).X k) hq (fun τ => T.x₀ ((i : ℕ) + 1) σ τ.1) (onb (R.MW i (sg0 D A)))) ∧ Dom (wtA (κ i)) (Vc D i).rank ∧ (κ i).n = (Vc D i).rank ∧ LastPos (T.Q.Dw ((i : ℕ) + 1)) (wtA (κ i)) := by
  intro D G _ _ Pl0 T0 A T _ R F κ v₀ hC
  exact _root_.GlobalTheory.AdTh.models_at_record_ofFive D G Pl0 T0 A T R F κ v₀ (GlobalTheory.Core5.of_core hC)

end GlobalTheory.AdTh
