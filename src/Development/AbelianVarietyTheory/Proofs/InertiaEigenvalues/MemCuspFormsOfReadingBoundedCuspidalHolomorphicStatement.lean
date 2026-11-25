module

public import Formalism.LocalToGlobal.ProjectiveLattices.CuspFormsFiniteDimensionalOf
public import Formalism.LocalToGlobal.ProjectiveLattices.FamilyUniformisationBasePointOrthogonalBis
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolomorphicCuspSectionsLeSpanAlgebraicCuspForms
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RdIndepOfLawsM
public import Formalism.LocalToGlobal.UnitaryNorms.CharTied
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent
import Formalism.LocalToGlobal.Columns.CoefficientsModP.WeTransposeWordTransposeWord
import Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector
import Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphic, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphicStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphic =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphic", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CuspFormsFiniteDimensionalOf\npublic import Formalism.LocalToGlobal.ProjectiveLattices.FamilyUniformisationBasePointOrthogonalBis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolomorphicCuspSectionsLeSpanAlgebraicCuspForms\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RdIndepOfLawsM\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\nimport Formalism.LocalToGlobal.Columns.CoefficientsModP.WeTransposeWordTransposeWord\nimport Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector\nimport Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData\nimport Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\npublic import Formalism.LocalToGlobal.UnitaryNorms.CharTied\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.IndefR.Links IsDedekindDomain NumberField GlobalTheory.ExportSeries Formalism.L2.Pj GlobalTheory.CoverRead GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels GlobalTheory.ConjTwist
open Formalism.L2.Host (embLL0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.CuspOfReading


set_option maxHeartbeats 1000000 in
set_option synthInstance.maxHeartbeats 200000 in
theorem mem_cuspA_of_rdU_mem_holSub0 : ∀ (D : D7) (T : CoreJ D), LawsJ T → ∀ j, Formalism.L2.Pj.InR D j → ∀ w : WeightFamilies.Wt D j, w.LastPos → 8 * D.R.f * D.R.r + 4 ≤ w.n → ∀ f ∈ sec (T.Q.Xo j) T.Q.c (wtA w) w.n, rdU (T.U j T.σ₀) f ∈ Formalism.L2.Pj.holSub0 (T.U j T.σ₀).X (laU (T.U j T.σ₀) (wtA w) w.n) → f ∈ T.cuspA j (wtA w) w.n := by
  intro D T h j hj w hw hn f hf hfh
  classical
  set S := T.cuspA j (wtA w) w.n with hS
  haveI : FiniteDimensional T.Q.c.F S := h.toLawsM.cuspFD j hj (wtA w) w.n (dom_wtA w)
  haveI : Module.Free T.Q.c.F S := Module.Free.of_divisionRing _ _
  let b := Module.finBasis T.Q.c.F S
  let b' : Fin (Module.finrank T.Q.c.F S) → T.R j := fun i => (b i : T.R j)
  have hb'S : Submodule.span T.Q.c.F (Set.range b') ≤ S := by
    rw [Submodule.span_le]; rintro _ ⟨i, rfl⟩; exact (b i).2
  have hSb' : S ≤ Submodule.span T.Q.c.F (Set.range b') := by
    intro x hx
    have h1 : (⟨x, hx⟩ : S) ∈ Submodule.span T.Q.c.F (Set.range b) := by rw [b.span_eq]; trivial
    have h2 := Submodule.mem_map_of_mem (f := S.subtype) h1
    rw [Submodule.map_span, ← Set.range_comp] at h2
    exact h2
  by_contra hfS
  have hli : LinearIndependent T.Q.c.F (Fin.cons f b' : Fin (Module.finrank T.Q.c.F S + 1) → T.R j) := by
    rw [linearIndependent_finCons]
    exact ⟨b.linearIndependent.map' S.subtype (Submodule.ker_subtype _), fun hm => hfS (hb'S hm)⟩
  have hsec : ∀ i, (Fin.cons f b' : Fin (Module.finrank T.Q.c.F S + 1) → T.R j) i ∈ sec (T.Q.Xo j) T.Q.c (wtA w) w.n := by
    intro i
    refine Fin.cases hf (fun i => ?_) i
    exact cusp_le_sec _ _ _ _ _ (b i).2
  have hC := GlobalTheory.rdIndep_of_lawsM D T.toCore h.toLawsM j hj T.σ₀ T.toCore.good_σ₀ (wtA w) w.n (dom_wtA w) _ _ hsec hli
  have hC' : LinearIndependent ℂ (Fin.cons (rdU (T.U j T.σ₀) f) (fun i => rdU (T.U j T.σ₀) (b' i)) :
      Fin (Module.finrank T.Q.c.F S + 1) → _) := by
    convert hC using 1
    funext i
    refine Fin.cases rfl (fun i => rfl) i
  rw [linearIndependent_finCons] at hC'
  apply hC'.2
  have hspan := GlobalTheory.OntoCore.holSub0_le_span_cuspA D T h j hj w hw hn T.σ₀ T.toCore.good_σ₀ hfh
  refine (Submodule.span_le.2 ?_) hspan
  rintro _ ⟨x, hx, rfl⟩
  have hx' := hSb' hx
  clear hx
  induction hx' using Submodule.span_induction with
  | mem y hy => obtain ⟨i, rfl⟩ := hy; exact Submodule.subset_span ⟨i, rfl⟩
  | zero => simp
  | add y z _ _ hy hz => rw [map_add (f := _)]; exact Submodule.add_mem _ hy hz
  | smul a y _ hy => rw [map_smulₛₗ]; exact Submodule.smul_mem _ _ hy

end GlobalTheory.CuspOfReading
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphic =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphicStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphicStatement", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CuspFormsFiniteDimensionalOf\npublic import Formalism.LocalToGlobal.ProjectiveLattices.FamilyUniformisationBasePointOrthogonalBis\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\nimport Formalism.LocalToGlobal.Columns.CoefficientsModP.WeTransposeWordTransposeWord\nimport Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector\nimport Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData\nimport Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.IndefR.Links IsDedekindDomain NumberField GlobalTheory.ExportSeries Formalism.L2.Pj GlobalTheory.CoverRead GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels GlobalTheory.ConjTwist
open Formalism.L2.Host (embLL0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphicStatement =====
