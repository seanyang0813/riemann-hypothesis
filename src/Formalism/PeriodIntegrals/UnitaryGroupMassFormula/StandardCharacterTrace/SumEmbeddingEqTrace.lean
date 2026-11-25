module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IntInter
public import Formalism.PeriodIntegrals.StdCharTR
public import Mathlib.Analysis.SpecialFunctions.Complex.Circle
public import Mathlib.Analysis.Complex.Circle
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.Imports, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IntInterAlt, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IsOpenIntSub, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardCharacterTrace.SumEmbeddingEqTrace

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.Imports =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.Imports", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IntInter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.GaugeCharW

theorem extChar : ExtChar := by
  intro G _ _ _ K U hU g hg hKU
  let j : K →+ G ⧸ U := (QuotientAddGroup.mk' U).comp K.subtype
  have hker : ∀ k ∈ j.ker, g.comp K.subtype k = 0 := by
    intro k hk
    have hkU : (k : G) ∈ U := (QuotientAddGroup.eq_zero_iff _).mp hk
    exact hKU k k.2 hkU
  let g' : K ⧸ j.ker →+ AddCircle (1 : ℝ) := QuotientAddGroup.lift j.ker (g.comp K.subtype) hker
  obtain ⟨η', hη'⟩ := (Module.Baer.of_divisible (AddCircle (1 : ℝ))).extension_property_addMonoidHom
    (QuotientAddGroup.kerLift j) (QuotientAddGroup.kerLift_injective j) g'
  let η : G →+ AddCircle (1 : ℝ) := η'.comp (QuotientAddGroup.mk' U)
  have hηU : ∀ x ∈ U, η x = 0 := fun x hx => by
    show η' (QuotientAddGroup.mk' U x) = 0
    rw [QuotientAddGroup.mk'_apply, (QuotientAddGroup.eq_zero_iff x).mpr hx, map_zero]
  refine ⟨g - η, ?_, ?_, ?_⟩
  · refine continuous_of_continuousAt_zero (g - η) ?_
    have hmem : (U : Set G) ∈ nhds (0 : G) := hU.mem_nhds U.zero_mem
    refine hg.continuousAt.congr ?_
    filter_upwards [hmem] with u hu
    rw [AddMonoidHom.sub_apply, hηU u hu, sub_zero]
  · intro x hx
    have h1 : η x = g' (QuotientAddGroup.mk (⟨x, hx⟩ : K)) := by
      rw [← hη']; rfl
    rw [AddMonoidHom.sub_apply, h1]
    show g x - (g.comp K.subtype) ⟨x, hx⟩ = 0
    exact sub_self _
  · intro x hx
    rw [AddMonoidHom.sub_apply, hηU x hx, sub_zero]

end PI.GaugeCharW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.Imports =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IntInterAlt =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IntInterAlt", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IntInter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.GaugeCharW

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes

theorem intInter : IntInter := by
  intro F _ _ a ha
  have h : ∀ v : HeightOneSpectrum (𝓞 F), v.valuation F a ≤ 1 := by
    intro v
    have h1 := ha v
    rw [HeightOneSpectrum.mem_adicCompletionIntegers] at h1
    rw [← HeightOneSpectrum.valuedAdicCompletion_eq_valuation' v a]
    exact h1
  obtain ⟨b, hb⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one F a h
  exact ⟨b, hb⟩

theorem openInt : OpenInt := by
  intro F _ _
  exact RestrictedProduct.isOpen_forall_mem (fun v => Valued.isOpen_valuationSubring _)

end PI.GaugeCharW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IntInterAlt =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IsOpenIntSub =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IsOpenIntSub", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IntInter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.GaugeCharW

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes

section

variable (F : Type) [Field F] [NumberField F]

def intSub : AddSubgroup (AF F) where
  carrier := {x | ∀ v : HeightOneSpectrum (𝓞 F), sndA F x v ∈ v.adicCompletionIntegers F}
  add_mem' {a b} ha hb v := by
    rw [map_add (f := _)]
    exact add_mem (ha v) (hb v)
  zero_mem' v := by
    rw [map_zero]
    exact zero_mem _
  neg_mem' {a} ha v := by
    rw [map_neg]
    exact neg_mem (ha v)

theorem isOpen_intSub (h3 : OpenInt) : IsOpen (intSub F : Set (AF F)) := by
  exact (h3 F).preimage (continuous_snd : Continuous (Prod.snd : Ainf F × Af F → Af F))

end

end PI.GaugeCharW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IsOpenIntSub =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardCharacterTrace.SumEmbeddingEqTrace =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardCharacterTrace.SumEmbeddingEqTrace", "h": "module\n\npublic import Formalism.PeriodIntegrals.StdCharTR\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.Imports\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IntInterAlt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IntegerSubgroupIntersection.IsOpenIntSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\npublic import Mathlib.Analysis.SpecialFunctions.Complex.Circle\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Complex.Circle\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes InfinitePlace.Completion

namespace PI.StdCharTRWork

variable (F : Type) [Field F] [NumberField F]

def Lre : Ainf F →+ ℝ where
  toFun a := ∑ w : InfinitePlace F, (extensionEmbedding w (a w)).re
  map_zero' := by
    show ∑ w : InfinitePlace F, (extensionEmbedding w ((0 : ∀ v : InfinitePlace F, v.Completion) w)).re = 0
    simp
  map_add' a b :=
    (Finset.sum_congr rfl fun w _ => (congrArg Complex.re (map_add (extensionEmbedding w) (a w) (b w))).trans
      (Complex.add_re _ _)).trans Finset.sum_add_distrib

theorem continuous_Lre : Continuous (Lre F) := by
  show Continuous (fun a : Ainf F => ∑ w : InfinitePlace F, (extensionEmbedding w (a w)).re)
  exact continuous_finsetSum _ fun w _ =>
    Complex.continuous_re.comp ((isometry_extensionEmbedding w).continuous.comp (continuous_apply w))

theorem sum_embedding_eq_trace [IsTotallyReal F] (y : F) :
    ∑ v : InfinitePlace F, v.embedding y = algebraMap ℚ ℂ (Algebra.trace ℚ F y) := by
  have hreal : ∀ φ : F →+* ℂ, NumberField.ComplexEmbedding.IsReal φ := fun φ =>
    InfinitePlace.isReal_mk_iff.1 (NumberField.IsTotallyReal.isReal _)
  have e1 : ∀ φ : F →+* ℂ, (InfinitePlace.mk φ).embedding = φ := fun φ =>
    InfinitePlace.embedding_mk_eq_of_isReal (hreal φ)
  let eqv : (F →ₐ[ℚ] ℂ) ≃ InfinitePlace F :=
    { toFun := fun σ => InfinitePlace.mk σ.toRingHom
      invFun := fun w => w.embedding.toRatAlgHom
      left_inv := fun σ => by
        apply AlgHom.ext
        intro x
        simp [e1]
      right_inv := fun w => by simp [InfinitePlace.mk_embedding] }
  rw [trace_eq_sum_embeddings ℂ]
  exact (Fintype.sum_equiv eqv _ _ fun σ => by simp [eqv, e1]).symm

theorem Lre_algebraMap (b : F) :
    Lre F (algebraMap F (Ainf F) b) = (∑ v : InfinitePlace F, v.embedding b).re := by
  show ∑ w : InfinitePlace F, (extensionEmbedding w (algebraMap F (Ainf F) b w)).re = _
  rw [Complex.re_sum]
  refine Finset.sum_congr rfl fun w _ => ?_
  congr 1
  first
    | simp [InfiniteAdeleRing.algebraMap_apply, extensionEmbedding_coe]

theorem Lre_int [IsTotallyReal F] (b : 𝓞 F) : ∃ n : ℤ, Lre F (algebraMap F (Ainf F) (b : F)) = n := by
  rw [Lre_algebraMap, sum_embedding_eq_trace]
  have hint : IsIntegral ℤ (Algebra.trace ℚ F (b : F)) :=
    Algebra.isIntegral_trace (RingOfIntegers.isIntegral_coe b)
  obtain ⟨n, hn⟩ := IsIntegrallyClosed.isIntegral_iff.1 hint
  refine ⟨n, ?_⟩
  rw [← hn]
  simp

theorem exists_Lre_half [IsTotallyReal F] : ∃ t : Ainf F, Lre F t = 1 / 2 := by
  have hn : 0 < Fintype.card (InfinitePlace F) := Fintype.card_pos
  refine ⟨algebraMap F (Ainf F) ((1 : F) / (2 * (Fintype.card (InfinitePlace F) : F))), ?_⟩
  rw [Lre_algebraMap]
  simp only [map_div₀, map_one, map_mul, map_ofNat, map_natCast]
  rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  have hn' : (Fintype.card (InfinitePlace F) : ℂ) ≠ 0 := by exact_mod_cast hn.ne'
  rw [show ((Fintype.card (InfinitePlace F) : ℂ) * (1 / (2 * (Fintype.card (InfinitePlace F) : ℂ)))) = 1 / 2 by
    field_simp]
  norm_num

theorem stdCharTR_main : PI.StdCharTR.Target := by
  intro F _ _ hTR
  let mk1 : ℝ →+ AddCircle (1 : ℝ) := QuotientAddGroup.mk' _
  let g : AF F →+ AddCircle (1 : ℝ) := mk1.comp ((Lre F).comp (AddMonoidHom.fst (Ainf F) (Af F)))
  have hg : Continuous g :=
    (continuous_quotient_mk').comp ((continuous_Lre F).comp continuous_fst)
  let K : AddSubgroup (AF F) := (algebraMap F (AF F)).toAddMonoidHom.range
  have hU : IsOpen (PI.GaugeCharW.intSub F : Set (AF F)) :=
    PI.GaugeCharW.isOpen_intSub F PI.GaugeCharW.openInt
  have hKU : ∀ x ∈ K, x ∈ PI.GaugeCharW.intSub F → g x = 0 := by
    rintro _ ⟨a, rfl⟩ hx
    have hx' : ∀ v : IsDedekindDomain.HeightOneSpectrum (𝓞 F),
        sndA F (algebraMap F (AF F) a) v ∈ v.adicCompletionIntegers F := hx
    obtain ⟨b, hb⟩ := PI.GaugeCharW.intInter F a (fun v => hx' v)
    obtain ⟨n, hn⟩ := Lre_int F b
    show ((Lre F (algebraMap F (Ainf F) a) : ℝ) : AddCircle (1 : ℝ)) = 0
    rw [← hb, hn]
    exact (QuotientAddGroup.eq_zero_iff _).2 (AddSubgroup.mem_zmultiples_iff.2 ⟨n, by simp⟩)
  obtain ⟨h, hcont, hK, hUeq⟩ := PI.GaugeCharW.extChar (AF F) K _ hU g hg hKU
  let ψ : AddChar (AF F) ℂ :=
    { toFun := fun x => ((AddCircle.toCircle (h x) : Circle) : ℂ)
      map_zero_eq_one' := by simp [AddCircle.toCircle_zero]
      map_add_eq_mul' := fun a b => by simp [map_add (f := _), AddCircle.toCircle_add] }
  have hψ : ∀ x, ψ x = ((AddCircle.toCircle (h x) : Circle) : ℂ) := fun _ => rfl
  have hpair : ∀ x : Ainf F, pairA F x 0 ∈ PI.GaugeCharW.intSub F := by
    intro x
    show ∀ v : IsDedekindDomain.HeightOneSpectrum (𝓞 F), sndA F (pairA F x 0) v ∈ v.adicCompletionIntegers F
    intro v
    have e : sndA F (pairA F x 0) = 0 := rfl
    rw [e]
    exact zero_mem _
  have hval : ∀ x : Ainf F, ψ (pairA F x 0) =
      Complex.exp (2 * Real.pi * Complex.I * ((Lre F x : ℝ) : ℂ)) := by
    intro x
    rw [hψ, hUeq _ (hpair x)]
    show ((AddCircle.toCircle ((Lre F x : ℝ) : AddCircle (1 : ℝ)) : Circle) : ℂ) = _
    rw [AddCircle.toCircle_apply_mk, Circle.coe_exp]
    congr 1
    push_cast
    ring
  refine ⟨ψ, ⟨?_, ?_, ?_, ?_⟩, fun x => hval x⟩
  · exact continuous_subtype_val.comp (AddCircle.continuous_toCircle.comp hcont)
  · intro x
    rw [hψ]
    first
      | exact Circle.norm_coe _
  · intro a
    have e : h (algebraMap F (AF F) a) = 0 := hK _ ⟨a, rfl⟩
    rw [hψ, e, AddCircle.toCircle_zero]
    rfl
  · obtain ⟨t, ht⟩ := exists_Lre_half F
    refine ⟨pairA F t 0, ?_⟩
    rw [hval, ht]
    have e : Complex.exp (2 * Real.pi * Complex.I * ((1 / 2 : ℝ) : ℂ)) = -1 := by
      rw [show 2 * (Real.pi : ℂ) * Complex.I * ((1 / 2 : ℝ) : ℂ) = Real.pi * Complex.I by push_cast; ring]
      exact Complex.exp_pi_mul_I
    rw [e]
    norm_num

end PI.StdCharTRWork
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StandardCharacterTrace.SumEmbeddingEqTrace =====
