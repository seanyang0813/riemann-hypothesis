module

public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.HalfLinearCocycle
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DegreeOnePrimeReductionSplitPlaceDictionary
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.NormSatakeLeOfUnitarySphericalGL
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
import Mathlib.Topology.Sheaves.Init
import ReciprocityTheory.Automorphisms.PlaceA
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.VolumeFlatSection
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ChainParSucc
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsLevMeas
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsStepWeil
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.CartFrSgn
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum
open scoped TensorProduct InnerProductSpace ComplexConjugate
open GlobalTheory.ChainOnto GlobalTheory.ChainTw
open GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting (SplitProj IsProjAt IsIdemOf LiftsChar rdA grpCo frCo gAt)
open GlobalTheory.IndefiniteRowSideFullHecke.VolumeFlatSection (Blocks parahoric datum)
open GlobalTheory.Chain GlobalTheory.ChainFr GlobalTheory.PairLift GlobalTheory.Chain.RealIt

noncomputable section

namespace GlobalTheory.PlaceProjAt

theorem algebraMap_mem_iff {D : D7} {v : HeightOneSpectrum (𝓞 D.host.F)} (φ : SplitProj D v)
    (PP : Formalism.L2.DIV.Pl D.host.E) (h : IsProjAt φ PP) (a : 𝓞 D.host.F) :
    algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a ∈ PP.asIdeal ↔ a ∈ v.asIdeal := by
  have h1 : ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a : 𝓞 D.host.E) : D.host.E) =
      algebraMap D.host.F D.host.E (algebraMap (𝓞 D.host.F) D.host.F a) := by
    show algebraMap (𝓞 D.host.E) D.host.E _ = _
    rw [← IsScalarTower.algebraMap_apply, ← IsScalarTower.algebraMap_apply]
  refine (h _).trans ?_
  rw [h1, GlobalTheory.PlaceRed.rdQ_alg, ReciprocityTheory.Aut.adic_valued_algebraMap, HeightOneSpectrum.valuation_lt_one_iff_mem]

theorem under_resCard : ∀ (D : D7) (v : HeightOneSpectrum (𝓞 D.host.F)) (φ : SplitProj D v) (PP : Pl D.host.E), IsProjAt φ PP → v = (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP) ∧ GlobalTheory.SplitWeil.resCard (Fv D.host.F v) = Ideal.absNorm PP.asIdeal := by
  intro D v φ PP h
  have hmem := algebraMap_mem_iff φ PP h
  have hv : v = (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP) := by
    refine HeightOneSpectrum.ext (Ideal.ext fun a => ?_)
    rw [← hmem]
    rfl
  refine ⟨hv, ?_⟩
  refine (GlobalTheory.LFun.SatBoundGL.resCard_completion v).trans ?_
  let f : 𝓞 D.host.F →+* 𝓞 D.host.E ⧸ PP.asIdeal :=
    (Ideal.Quotient.mk PP.asIdeal).comp (algebraMap (𝓞 D.host.F) (𝓞 D.host.E))
  have hker : RingHom.ker f = v.asIdeal := by
    ext a
    rw [RingHom.mem_ker, ← hmem]
    exact Ideal.Quotient.eq_zero_iff_mem
  have hsurj : Function.Surjective f := by
    intro y
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective y
    obtain ⟨a, ha⟩ := ReciprocityTheory.Aut.adic_exists_approx v (GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting.rdQ φ (x : D.host.E)) (GlobalTheory.PlaceRed.rdQ_int φ x)
    refine ⟨a, ?_⟩
    show Ideal.Quotient.mk PP.asIdeal (algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a) = Ideal.Quotient.mk PP.asIdeal x
    rw [Ideal.Quotient.eq, ← neg_mem_iff, neg_sub]
    refine (h _).2 ?_
    have h1 : ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a : 𝓞 D.host.E) : D.host.E) =
        algebraMap D.host.F D.host.E (algebraMap (𝓞 D.host.F) D.host.F a) := by
      show algebraMap (𝓞 D.host.E) D.host.E _ = _
      rw [← IsScalarTower.algebraMap_apply, ← IsScalarTower.algebraMap_apply]
    rw [show ((x - algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a : 𝓞 D.host.E) : D.host.E) =
        (x : D.host.E) - ((algebraMap (𝓞 D.host.F) (𝓞 D.host.E) a : 𝓞 D.host.E) : D.host.E) from
        map_sub (algebraMap (𝓞 D.host.E) D.host.E) _ _, ← GlobalTheory.PlaceRed.rdQh_apply, map_sub, GlobalTheory.PlaceRed.rdQh_apply, GlobalTheory.PlaceRed.rdQh_apply, h1,
      GlobalTheory.PlaceRed.rdQ_alg]
    exact ha
  rw [Ideal.absNorm_apply, Ideal.absNorm_apply, Submodule.cardQuot_apply, Submodule.cardQuot_apply]
  exact Nat.card_congr ((Ideal.quotEquivOfEq hker.symm).trans (RingHom.quotientKerEquivOfSurjective hsurj)).toEquiv

end GlobalTheory.PlaceProjAt
