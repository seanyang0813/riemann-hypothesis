module

public import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff
public import Development.AbelianVarietyTheory.Definitions.Foundations.NotIsSplitOfIsInertAt
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MemNormGroupIffEverywhereNorm
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RamificationIdxEqOneOfIsSquare
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open Classical
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ alpha beta Num skewGram blk conjU)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model HasExp SplitsFully Chars)

namespace GlobalTheory.LFun

open IsDedekindDomain NumberField MeasureTheory Matrix in
open Classical in
open scoped TensorProduct ComplexConjugate in
private theorem isUnit_of_isUnit_norm' {R S : Type} [CommRing R] [CommRing S] [Algebra R S]
    [Module.Free R S] [Module.Finite R S] (z : S) (h : IsUnit (Algebra.norm R z)) : IsUnit z := by
  rw [Algebra.norm_apply, ← LinearMap.isUnit_iff_isUnit_det] at h
  obtain ⟨u, hu⟩ := h
  refine IsUnit.of_mul_eq_one (u.inv 1) ?_
  have := congrArg (fun f : Module.End R S => f 1) u.val_inv
  simp only [hu] at this
  simpa using this


open IsDedekindDomain NumberField MeasureTheory Matrix in
open Classical in
open scoped TensorProduct ComplexConjugate in
theorem _root_.GlobalTheory.LFun.resEtaPow_of_resEta : ∀ (F E : Type) [Field F]
    [NumberField F] [Field E] [NumberField E] [Algebra F E], Module.finrank F E = 2 →
    ∀ (χ : (_root_.Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF F ⊗[F] E)ˣ →* Circle) (n : ℕ), _root_.GlobalTheory.LFun.ResEta F E χ n →
      _root_.GlobalTheory.WeilM.ResEtaPow (Units.map (algebraMap F (_root_.Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF F)).toMonoidHom).range χ n := by
  intro F E _ _ _ _ _ h2 χ n hχ
  haveI : Algebra.IsQuadraticExtension F E := ⟨h2⟩
  obtain ⟨⟨η, hη⟩, hall⟩ := hχ
  have hηe := hη.eq_normSign
  intro a
  rw [show χ ((Units.map ↑(algebraMap (_root_.Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF F) (_root_.Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF F ⊗[F] E))) a) = η a ^ n from
    hall η hη a]
  split_ifs with ha
  · obtain ⟨y, hy, z, hz, rfl⟩ := Subgroup.mem_sup.1 ha
    obtain ⟨t, rfl⟩ := hy
    obtain ⟨w, rfl⟩ := hz
    rw [map_mul, hη.2.1 t, hη.2.2.1 w]
    simp
  · have hs : _root_.GlobalTheory.IdeleNormChar.normSign E a ≠ 1 := by
      intro h1
      obtain ⟨t, ht⟩ := (_root_.GlobalTheory.IdeleNormChar.normSign_eq_one_iff E a).1 h1
      obtain ⟨z, hz⟩ := _root_.GlobalTheory.QuadSymbol.mem_normGroup_iff.1 ht
      have hzu : IsUnit z :=
        isUnit_of_isUnit_norm' z (hz ▸ Units.isUnit _)
      apply ha
      have hn : Units.map (Algebra.norm (_root_.Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF F)) hzu.unit =
          a / _root_.GlobalTheory.QuadSymbol.toUnits F (_root_.Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF F) t := by
        ext
        simpa using hz
      have key : a = _root_.GlobalTheory.QuadSymbol.toUnits F (_root_.Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF F) t *
          Units.map (Algebra.norm (_root_.Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF F)) hzu.unit := by
        rw [hn, mul_div_cancel]
      rw [key]
      exact mul_mem (Subgroup.mem_sup_left ⟨t, rfl⟩) (Subgroup.mem_sup_right ⟨_, rfl⟩)
    have hm : _root_.GlobalTheory.IdeleNormChar.normSign E a = -1 := (Int.units_eq_one_or _).resolve_left hs
    rw [hηe]
    simp [hm, _root_.GlobalTheory.IdeleNormChar.signToCircle]

end GlobalTheory.LFun
