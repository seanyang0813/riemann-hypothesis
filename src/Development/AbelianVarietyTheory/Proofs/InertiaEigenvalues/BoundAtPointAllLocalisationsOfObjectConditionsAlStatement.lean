module

public import Formalism.AdmissibleDesigns.RestrictedSevenEightOfFull
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder
public import Formalism.GaloisCohomology.LocalTateDualityK
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.RationalDualityOfAllCoefficients
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoAnnihilatorAllOfTateDualityEulerChar
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoFiniteTrivialRepUnramifiedColumnPlacesAStatement
public import Formalism.SharpRestriction.LevelLetterCocycles.EmbeddingTypes
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SelmerLengthBoundAtPoint
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TateFinitenessAllOfLocalTateDuality
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BoundAtPointAllLocalisationsOfObjectConditionsAl, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BoundAtPointAllLocalisationsOfObjectConditionsAlStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BoundAtPointAllLocalisationsOfObjectConditionsAl =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BoundAtPointAllLocalisationsOfObjectConditionsAl", "h": "module\n\npublic import Formalism.AdmissibleDesigns.RestrictedSevenEightOfFull\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\npublic import Formalism.GaloisCohomology.LocalTateDualityK\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.RationalDualityOfAllCoefficients\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoAnnihilatorAllOfTateDualityEulerChar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoFiniteTrivialRepUnramifiedColumnPlacesAStatement\npublic import Formalism.SharpRestriction.LevelLetterCocycles.EmbeddingTypes\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SelmerLengthBoundAtPoint\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TateFinitenessAllOfLocalTateDuality\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.WeaklyAdmissibleFiltrations

namespace GlobalTheory.LocalisationBoundAtPoint

theorem boundAtPoint_all_localisations_of_objectConditions : GlobalTheory.Published.GlobalArtinReciprocity → GlobalTheory.Published.BlochKatoLocal → Formalism.GaloisCohomology.LocalTateDualityK → Formalism.GaloisCohomology.LocalEulerCharK → ∀ D : D7, Formalism.MainNotions.N.K.Rows.AllDesignConditions D → TruncatedSeriesCountingIdentities.IntegralityFromMetric D := by
  intro hGAR hBK hLTD hLEC D h51 i r ρ π dc lenRow e' cB hR hA hl0 hl1
  have a51 := h51 i hl0 hl1 r ρ π dc lenRow e' cB hR hA
  obtain ⟨G1, G2, G3, G4, G5, G5x, G6, BK, TB, ROW, LIFT, Cont, SS, Decomp, Eps, Comparison₂, Shape, Font, H2, CFT⟩ := hA
  have TB78 : EmbeddingTypes.admTB i r π dc cB := fun w hw _ C hC => TB w hw C hC
  exact _root_.GlobalTheory.SelmerBoundAtPoint.main hGAR hLTD hLEC D i r ρ π dc lenRow e' cB G1 G2 G3 G4 G5 G5x G6 BK
    (_root_.GlobalTheory.BKaRows.bkaAll_of_hypotheses hBK hLTD hLEC D i) Cont Decomp Font (_root_.GlobalTheory.finAll_of_localTateDuality hLTD D i) Comparison₂ a51
    (_root_.GlobalTheory.ColumnUnramified.blochKatoFinite_trivialRep_unramified_columnPlaces D i dc) ROW LIFT TB78 hl0 hl1

end GlobalTheory.LocalisationBoundAtPoint
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BoundAtPointAllLocalisationsOfObjectConditionsAl =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BoundAtPointAllLocalisationsOfObjectConditionsAlStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BoundAtPointAllLocalisationsOfObjectConditionsAlStatement", "h": "module\n\npublic import Formalism.AdmissibleDesigns.RestrictedSevenEightOfFull\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\npublic import Formalism.GaloisCohomology.LocalTateDualityK\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.RationalDualityOfAllCoefficients\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BoundAtPointAllLocalisationsOfObjectConditionsAl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.WeaklyAdmissibleFiltrations

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BoundAtPointAllLocalisationsOfObjectConditionsAlStatement =====
