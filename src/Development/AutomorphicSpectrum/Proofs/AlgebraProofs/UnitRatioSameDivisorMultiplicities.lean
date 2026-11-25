module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ConjugateHermitianLineIsometries
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.IsFieldIntersection
import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.RationalSections.IsRatSectionOn

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.HomogeneousNonvanishing.ICycle, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UnitRatioSameDivisorMultiplicities

-- ===== clump member: Development.WeilBound.CoreStatements.HomogeneousNonvanishing.ICycle =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HomogeneousNonvanishing.ICycle", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ConjugateHermitianLineIsometries\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.IsFieldIntersection\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.RationalSections.IsRatSectionOn\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I2 ReciprocityTheory.ChartRestriction.G.AI.I4 ReciprocityTheory.AnForm.M GlobalTheory.CompanionTheory.Ar.Cmp Filter Topology
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)

namespace PositivityTheory.UnitarySelfGeneration

theorem icyc_mem {R : Type*} [CommRing R] {P W : Ideal R} (hW : W.IsPrime) (hP : P ≤ W) {f g u v : R}
    (hu : u ∉ W) (h : u * f - v * g ∈ P) (hg : g ∈ W) : f ∈ W := by
  have : u * f ∈ W := by simpa using W.add_mem (hP h) (W.mul_mem_left v hg)
  exact (hW.mem_or_mem this).resolve_left hu

theorem icyc_sub {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] (P : Ideal (MRing ι)) (f g : MRing ι)
    (h : ∀ W : Ideal (MRing ι), W.IsPrime → P ≤ W → IsRelevant W →
      ∃ u v : MRing ι, u ∉ W ∧ v ∉ W ∧ u * f - v * g ∈ P)
    (h' : ∀ W : Ideal (MRing ι), W.IsPrime → P ≤ W → IsRelevant W →
      ∃ u v : MRing ι, u ∉ W ∧ v ∉ W ∧ u * g - v * f ∈ P) : divSupp P f ⊆ divSupp P g := by
  rintro W ⟨⟨⟨hWp, hle⟩, hmin⟩, hr⟩
  have hPW : P ≤ W := le_sup_left.trans hle
  have hf : f ∈ W := hle (Ideal.mem_sup_right (Ideal.mem_span_singleton_self f))
  refine ⟨⟨⟨hWp, sup_le hPW ?_⟩, ?_⟩, hr⟩
  · obtain ⟨u, v, hu, -, huv⟩ := h' W hWp hPW hr
    rw [Ideal.span_singleton_le_iff_mem]
    exact icyc_mem hWp hPW hu huv hf
  · rintro W' ⟨hW'p, hle'⟩ hWW
    have hPW' : P ≤ W' := le_sup_left.trans hle'
    have hr' : IsRelevant W' := fun k => (hr k).imp fun i hi hi' => hi (hWW hi')
    obtain ⟨u, v, hu, -, huv⟩ := h W' hW'p hPW' hr'
    refine hmin ⟨hW'p, sup_le hPW' ?_⟩ hWW
    rw [Ideal.span_singleton_le_iff_mem]
    exact icyc_mem hW'p hPW' hu huv (hle' (Ideal.mem_sup_right (Ideal.mem_span_singleton_self g)))

theorem icyc_map {R : Type*} [CommRing R] (W : Ideal R) [W.IsPrime] (P : Ideal R) (f g u v : R)
    (hu : u ∉ W) (h : u * f - v * g ∈ P) :
    Ideal.map (algebraMap R (Localization.AtPrime W)) (P ⊔ Ideal.span {f}) ≤
      Ideal.map (algebraMap R (Localization.AtPrime W)) (P ⊔ Ideal.span {g}) := by
  rw [Ideal.map_le_iff_le_comap]
  refine sup_le (le_sup_left.trans Ideal.le_comap_map) ?_
  rw [Ideal.span_singleton_le_iff_mem, Ideal.mem_comap]
  have hU : IsUnit (algebraMap R (Localization.AtPrime W) u) :=
    IsLocalization.map_units (Localization.AtPrime W) (⟨u, hu⟩ : W.primeCompl)
  rw [← Ideal.unit_mul_mem_iff_mem _ hU, ← map_mul]
  apply Ideal.mem_map_of_mem
  have := (P ⊔ Ideal.span {g}).add_mem (Ideal.mem_sup_left h)
    (Ideal.mem_sup_right (Ideal.mul_mem_left _ v (Ideal.mem_span_singleton_self g)))
  simpa using this

theorem icyc_len {R : Type*} [CommRing R] (W : Ideal R) [W.IsPrime] (J : Ideal R) :
    Module.length (Localization.AtPrime W) (LocalizedModule W.primeCompl (R ⧸ J)) =
      Module.length (Localization.AtPrime W)
        (Localization.AtPrime W ⧸ Ideal.map (algebraMap R (Localization.AtPrime W)) J) := by
  refine LinearEquiv.length_eq ?_
  exact ((LocalizedModule.equivTensorProduct W.primeCompl (R ⧸ J)).trans
    (Algebra.TensorProduct.quotIdealMapEquivTensorQuot (Localization.AtPrime W) J).toLinearEquiv.symm)

theorem i_cycle : ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι)) (f g : MRing ι), UnitRatio P f g → divSupp P f = divSupp P g ∧ ∀ W ∈ divSupp P f, multAt (P ⊔ Ideal.span {f}) W = multAt (P ⊔ Ideal.span {g}) W := by
  intro K _ ι _ P f g h
  obtain ⟨-, -, h⟩ := h
  have h' : ∀ W : Ideal (MRing ι), W.IsPrime → P ≤ W → IsRelevant W →
      ∃ u v : MRing ι, u ∉ W ∧ v ∉ W ∧ u * g - v * f ∈ P := by
    intro W hW hP hr
    obtain ⟨u, v, hu, hv, huv⟩ := h W hW hP hr
    exact ⟨v, u, hv, hu, by simpa using P.neg_mem huv⟩
  refine ⟨Set.Subset.antisymm (icyc_sub P f g h h') (icyc_sub P g f h' h), fun W hW => ?_⟩
  have hWp : W.IsPrime := hW.1.1.1
  have hPW : P ≤ W := le_sup_left.trans hW.1.1.2
  obtain ⟨u, v, hu, hv, huv⟩ := h W hWp hPW hW.2
  unfold multAt
  rw [dite_eq_left hWp, dite_eq_left hWp]
  congr 1
  rw [icyc_len, icyc_len]
  have e : Ideal.map (algebraMap (MRing ι) (Localization.AtPrime W)) (P ⊔ Ideal.span {f}) =
      Ideal.map (algebraMap (MRing ι) (Localization.AtPrime W)) (P ⊔ Ideal.span {g}) :=
    le_antisymm (icyc_map W P f g u v hu huv) (icyc_map W P g f v u hv (by simpa using P.neg_mem huv))
  rw [e]

end PositivityTheory.UnitarySelfGeneration
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HomogeneousNonvanishing.ICycle =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UnitRatioSameDivisorMultiplicities =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UnitRatioSameDivisorMultiplicities", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.ConjugateHermitianLineIsometries\npublic import Development.WeilBound.CoreStatements.HomogeneousNonvanishing.ICycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialOfFun\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.RationalSections.IsRatSectionOn\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I2 ReciprocityTheory.ChartRestriction.G.AI.I4 ReciprocityTheory.AnForm.M GlobalTheory.CompanionTheory.Ar.Cmp Filter Topology
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)

namespace GlobalTheory.CompanionTheory.Ar.Cmp

theorem unitRatio_divisor_cycle_eq : ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι)) (f g : MRing ι), UnitRatio P f g → divSupp P f = divSupp P g ∧ ∀ W ∈ divSupp P f, multAt (P ⊔ Ideal.span {f}) W = multAt (P ⊔ Ideal.span {g}) W :=
  @PositivityTheory.UnitarySelfGeneration.i_cycle

end GlobalTheory.CompanionTheory.Ar.Cmp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UnitRatioSameDivisorMultiplicities =====
