module

public import Mathlib.NumberTheory.Padics.Complex
public import Mathlib.SetTheory.Cardinal.Continuum
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Rat
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
public import Mathlib.RingTheory.Algebraic.Cardinality
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
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
public import Mathlib.Topology.Algebra.Module.Cardinality
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.MetricSpace.Ultra.TotallySeparated
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UniversalAnticyclotomicCharacterLaws
import Formalism.ConjugateSelfDual.Statement
import Formalism.LocalToGlobal.NormalizedHeckeFactors.TwDefs
import Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs
import Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh
public import Mathlib.Analysis.Complex.Cardinality
import ReciprocityTheory.GaloisValuations.GlobalA
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsPadicAlgClRingEquivComplexCompEqOfCountabl

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.L2.Host Formalism.L2.NT Formalism.L2.TwC GlobalTheory.HeightCounting NumberField IsDedekindDomain Polynomial GlobalTheory.GalChar Neutral.B1 ReciprocityTheory.Neutral.Bridge.HCFR GlobalTheory.HeckeGal

open Cardinal Filter Topology

namespace GlobalTheory.PadicCard

theorem mk_le_pow_aleph0_of_denseRange {D X : Type} [TopologicalSpace X] [FirstCountableTopology X]
    [T2Space X] (f : D → X) (hf : DenseRange f) : #X ≤ #D ^ ℵ₀ := by
  have h : ∀ x : X, ∃ u : ℕ → D, Tendsto (fun n => f (u n)) atTop (𝓝 x) := by
    intro x
    obtain ⟨v, hv, hlim⟩ := mem_closure_iff_seq_limit.1 (hf x)
    choose u hu using hv
    exact ⟨u, by simpa only [hu] using hlim⟩
  choose g hg using h
  have hinj : Function.Injective g := by
    intro x y hxy
    have := hg y
    rw [← hxy] at this
    exact tendsto_nhds_unique (hg x) this
  simpa using mk_le_of_injective hinj

theorem mk_padicComplex (l : ℕ) [Fact l.Prime] : #ℂ_[l] = 𝔠 := by
  refine le_antisymm ?_ (continuum_le_cardinal_of_nontriviallyNormedField ℂ_[l])
  calc #ℂ_[l] ≤ #(PadicAlgCl l) ^ ℵ₀ :=
        mk_le_pow_aleph0_of_denseRange _ (UniformSpace.Completion.denseRange_coe (α := PadicAlgCl l))
    _ = 𝔠 := by rw [_root_.GlobalTheory.cardinalMk_padicAlgCl_eq_continuum, continuum_power_aleph0]

theorem card_padicAlgCl_padicComplex :
    ∀ (l : ℕ) [Fact l.Prime], Cardinal.mk (PadicAlgCl l) = Cardinal.mk ℂ ∧
      Cardinal.mk ℂ_[l] = Cardinal.mk ℂ := by
  intro l _
  exact ⟨by rw [_root_.GlobalTheory.cardinalMk_padicAlgCl_eq_continuum, mk_complex], by rw [mk_padicComplex, mk_complex]⟩

end GlobalTheory.PadicCard
