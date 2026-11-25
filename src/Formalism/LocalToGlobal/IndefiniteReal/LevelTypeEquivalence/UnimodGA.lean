module

public import Formalism.PeriodIntegrals.AdUnimod
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdIndexEq
public import Formalism.RealPlaceAnalysis.InstMeasurableSpaceUJ
public import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ModularCharacterEqOneOnExpHermitian
public import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.UnimodInst
public import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.PeterssonNormOfUpLift
public import Formalism.LocalToGlobal.IndefiniteReal.HaarTransfer.UnimodP
public import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.NumFieldHosCountable
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionA
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionB
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionD
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.ExplicitFormulaCounts.AdUnimod, Formalism.PeriodIntegrals.UJUnimod, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UJUnimod, Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.UnimodGA

-- ===== clump member: Formalism.PeriodIntegrals.ExplicitFormulaCounts.AdUnimod =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.ExplicitFormulaCounts.AdUnimod", "h": "module\n\npublic import Formalism.PeriodIntegrals.AdUnimod\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdIndexEq\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionA\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionB\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicUnimodularity.ConstructionD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem adUnimod_closed : PI.AdUnimod :=
  PI.WAU.adUnimod_of PI.WAU.kg_subgroup PI.WAU.maximal_compact_isCompact PI.WAU.compact_countable PI.adelic_index_eq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.ExplicitFormulaCounts.AdUnimod =====

-- ===== clump member: Formalism.PeriodIntegrals.UJUnimod =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UJUnimod", "h": "module\n\npublic import Formalism.RealPlaceAnalysis.InstMeasurableSpaceUJ\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory

namespace PI.UJUnimod

def UJRightInv : Prop :=
  ∀ (n : ℕ) (ε : Fin n → Bool), (Formalism.REAL.muG ε).IsMulRightInvariant

end PI.UJUnimod
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UJUnimod =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UJUnimod =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UJUnimod", "h": "module\n\npublic import Formalism.PeriodIntegrals.UJUnimod\npublic import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ModularCharacterEqOneOnExpHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem unitary_unimodular_right_inv : PI.UJUnimod.UJRightInv :=
  fun n ε => ⟨fun g => Formalism.REAL.indefinite_unitary_unimodular n ε g⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UJUnimod =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.UnimodGA =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.UnimodGA", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.UnimodInst\npublic import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.PeterssonNormOfUpLift\npublic import Formalism.LocalToGlobal.IndefiniteReal.HaarTransfer.UnimodP\npublic import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.NumFieldHosCountable\npublic import Formalism.PeriodIntegrals.ExplicitFormulaCounts.AdUnimod\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UJUnimod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.S Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta

namespace Formalism.IndefR.Eqv

attribute [local instance] Formalism.BasicNotions.Host.cmStar

section Fin

variable {D : D7} {V : HSp D} (fr : UI.Frames D V)

def jf (x : (UI.instV fr).Gf) : GA D V := UI.brg fr (1, x)

theorem jf_isClosedEmbedding : Topology.IsClosedEmbedding (jf fr) := by
  haveI : T2Space (Matrix (Fin (UI.instV fr).n) (Fin (UI.instV fr).n) ℂ)ˣ :=
    Units.isEmbedding_embedProduct.t2Space
  haveI : T2Space (UI.instV fr).Ginf := inferInstance
  have hemb : Topology.IsEmbedding (fun x : (UI.instV fr).Gf => ((1 : (UI.instV fr).Ginf), x)) :=
    Function.LeftInverse.isEmbedding (f := Prod.snd) (fun _ => rfl) continuous_snd
      (continuous_const.prodMk continuous_id)
  have hcl : IsClosed (Set.range fun x : (UI.instV fr).Gf => ((1 : (UI.instV fr).Ginf), x)) := by
    have hr : (Set.range fun x : (UI.instV fr).Gf => ((1 : (UI.instV fr).Ginf), x)) =
        ({1} : Set (UI.instV fr).Ginf) ×ˢ Set.univ := by
      ext ⟨a, b⟩
      constructor
      · rintro ⟨y, hy⟩
        simp only [Prod.mk.injEq] at hy
        exact ⟨hy.1.symm, Set.mem_univ _⟩
      · rintro ⟨ha, -⟩
        have ha' : a = 1 := ha
        exact ⟨b, by rw [ha']⟩
    rw [hr]
    exact isClosed_singleton.prod isClosed_univ
  have h1 : Topology.IsClosedEmbedding
      (fun x : (UI.instV fr).Gf => ((1 : (UI.instV fr).Ginf), x)) := ⟨hemb, hcl⟩
  exact (UI.brg fr).toHomeomorph.isClosedEmbedding.comp h1

theorem gf_facts : T2Space (UI.instV fr).Gf ∧ LocallyCompactSpace (UI.instV fr).Gf ∧
    SecondCountableTopology (UI.instV fr).Gf := by
  obtain ⟨h1, h2, h3⟩ := G5.af_facts D.host.F
  obtain ⟨h1, h2, h3, h4, h5⟩ := G5.ha_facts (AF D.host.F) D.sp.cm.deg2 D.sp.cm.sig V.gram
  have he := jf_isClosedEmbedding fr
  exact ⟨he.isEmbedding.t2Space, he.locallyCompactSpace, he.isInducing.secondCountableTopology⟩

end Fin

theorem uJ_rightInv {n : ℕ} (ε : Fin n → Bool) (μ : Measure (Formalism.REAL.UJ ε)) (hμ : μ.IsHaarMeasure) :
    μ.IsMulRightInvariant := by
  have hR : (Formalism.REAL.muG ε).IsMulRightInvariant := unitary_unimodular_right_inv n ε
  rw [Measure.isMulLeftInvariant_eq_smul μ (Formalism.REAL.muG ε)]
  exact ⟨fun g => by rw [Measure.map_smul _ (continuous_mul_const g).aemeasurable,
    hR.map_mul_right_eq_self]⟩

theorem unimodGA_of_frames {D : D7} {V : HSp D} (fr : UI.Frames D V) : UnimodGA V := by
  obtain ⟨h1, h2, h3⟩ := G5.af_facts D.host.F
  obtain ⟨h1, h2, h3, h4, h5⟩ := G5.ha_facts (AF D.host.F) D.sp.cm.deg2 D.sp.cm.sig V.gram
  obtain ⟨g1, g2, g3⟩ := gf_facts fr
  have hinf : ∀ μ : Measure (UI.instV fr).Ginf, μ.IsHaarMeasure → μ.IsMulRightInvariant :=
    Leaf.Proofs.piStatement_holds (InfinitePlace D.host.F) (fun v => Formalism.REAL.UJ (fr.ε v))
      (fun v μ hμ => uJ_rightInv (fr.ε v) μ hμ)
  have hf : ∀ μ : Measure (UI.instV fr).Gf, μ.IsHaarMeasure → μ.IsMulRightInvariant :=
    fun μ hμ => adUnimod_closed (UI.instV fr) μ hμ
  have hprod := Leaf.Proofs.prodStatement_holds (UI.instV fr).Ginf (UI.instV fr).Gf hinf hf
  exact Leaf.Proofs.transferStatement_holds (UI.instV fr).GA (GA D V) (UI.brg fr) hprod

theorem unimodGA_holds {D : D7} (V : HSp D) : UnimodGA V :=
  unimodGA_of_frames (UI.frames_nonempty D V).some

end Formalism.IndefR.Eqv

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.UnimodGA =====
