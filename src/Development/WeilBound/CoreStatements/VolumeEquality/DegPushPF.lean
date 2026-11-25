module

public import Development.WeilBound.CoreStatements.VolumeEquality.DegPushDefs
public import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PCoordConeArithVar
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PFnFieldTrdeg
public import Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFb
public import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Assembly
public import GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.PConeTrdeg
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.DegreeGenericOfDegree
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.AssemblyBridgeFull
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLiftBirationalNef
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PFsInvPow
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterDerived
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.CoordinateIdeals.MemMCoordIdealOfAevalEqZero
import GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.Assembly
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
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
import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.PIntNumBaseChange
import Mathlib.RingTheory.PicardGroup
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFa, Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFc, Development.WeilBound.CoreStatements.VolumeEquality.DegPushPF

-- ===== clump member: Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFa =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFa", "h": "module\n\npublic import Development.WeilBound.CoreStatements.VolumeEquality.DegPushDefs\npublic import GroundTheory.HeightsAndTheta.Heights.HeightKernels.PCoordConeArithVar\nimport GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.CoordinateIdeals.MemMCoordIdealOfAevalEqZero\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PFnFieldTrdeg\nimport GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.Assembly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace SheetDecomposition.PF

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I4 GroundTheory.Heights₂.Heights GroundTheory.Heights₂.Heights.LowerBoundFree

variable {K : Type} [Fintype K] {ι : K → Type} [∀ b, Fintype (ι b)] {K' : Type} [Fintype K'] {ι' : K' → Type}
  [∀ b, Fintype (ι' b)]

theorem ne_of_arith {Ω : Type} [Field Ω] {y : (Σ b, ι b) → Ω} {d : ℕ} (h : IsArithVar (mCoordIdeal y) d) (k : K) :
    ∃ i, y ⟨k, i⟩ ≠ 0 := by
  obtain ⟨i, hi⟩ := h.2.1.2.2 k
  refine ⟨i, fun h0 => hi ?_⟩
  rw [mCoordIdeal, RingHom.mem_ker, mConeMap, aeval_X, h0, map_zero, zero_mul]

theorem arith_of_isPt [Nonempty K] {Ω : Type} [Field Ω] [Algebra ℚ Ω] {y : (Σ b, ι b) → Ω} {d : ℕ} (h : IsPt ℚ y d) :
    IsArithVar (mCoordIdeal y) (d + 1) := by
  obtain ⟨h1, h2, h3⟩ := h
  have : CharZero Ω := algebraRat.charZero Ω
  obtain rfl : ‹Algebra ℚ Ω› = DivisionRing.toRatAlgebra := Subsingleton.elim _ _
  choose c hc using h1
  have hF : fnField ℚ y ≤ IntermediateField.adjoin ℚ (coneRatios y c) := by
    refine IntermediateField.adjoin_le_iff.2 ?_
    rintro _ ⟨⟨k, i⟩, ⟨k', j⟩, e, rfl⟩
    obtain rfl : k = k' := e
    have : y ⟨k, i⟩ / y ⟨k, j⟩ = (y ⟨k, i⟩ / y ⟨k, c k⟩) / (y ⟨k, j⟩ / y ⟨k, c k⟩) := by
      rw [div_div_div_cancel_right₀ (hc k)]
    rw [SetLike.mem_coe, this]
    exact div_mem (IntermediateField.subset_adjoin _ _ ⟨⟨k, i⟩, rfl⟩) (IntermediateField.subset_adjoin _ _ ⟨⟨k, j⟩, rfl⟩)
  have hA : Algebra.IsAlgebraic (Algebra.adjoin ℚ (fnField ℚ y : Set Ω)) Ω := by
    have e : Algebra.adjoin ℚ (fnField ℚ y : Set Ω) = (fnField ℚ y).toSubalgebra := Algebra.adjoin_eq (fnField ℚ y).toSubalgebra
    rw [e]
    exact inferInstanceAs (Algebra.IsAlgebraic (fnField ℚ y) Ω)
  obtain ⟨t, ht, hb⟩ := exists_isTranscendenceBasis_subset (R := ℚ) (fnField ℚ y : Set Ω)
  have hc' : Cardinal.mk t = d := hb.cardinalMk_eq_trdeg.trans h3
  obtain ⟨e⟩ : Nonempty (Fin d ≃ t) := Cardinal.eq.1 (by simp [hc'])
  have hb' := hb.comp_equiv e
  have := hb'.isAlgebraic_field
  exact CoordConeArithVar.proof IntDomainDim.full K ι Ω y c d _ inferInstance hc hb'.1 (fun i => hF (ht (e i).2))
    fun r _ => Algebra.IsAlgebraic.isAlgebraic r

theorem mem_of_birational {Ω₁ Ω : Type} [Field Ω₁] [Field Ω] (i : Ω₁ →+* Ω) {y : (Σ b, ι b) → Ω₁} (hb : Birational y)
    (hne : ∀ k, ∃ j, y ⟨k, j⟩ ≠ 0) (F : Subfield Ω) (hF : ∀ k j j', i (y ⟨k, j⟩) / i (y ⟨k, j'⟩) ∈ F) (s : Ω₁) : i s ∈ F := by
  choose c hc using hne
  have key : ∀ (g : MRing ι) (d : K → ℕ), IsMultiHomog g d → i (aeval y g / ∏ k, y ⟨k, c k⟩ ^ d k) ∈ F := by
    intro g d hg
    have h1 : aeval y g / ∏ k, y ⟨k, c k⟩ ^ d k = aeval (fun p : Σ k, ι k => y p / y ⟨p.1, c p.1⟩) g := by
      have h := congrArg (eval fun k => (y ⟨k, c k⟩)⁻¹) (mConeMap_of_isMultiHomog y hg)
      have h' : (eval fun k => (y ⟨k, c k⟩)⁻¹).comp (mConeMap y : MRing ι →+* MvPolynomial K Ω₁) =
          ((aeval (fun p : Σ k, ι k => y p / y ⟨p.1, c p.1⟩) : MRing ι →ₐ[ℤ] Ω₁) : MRing ι →+* Ω₁) := by
        refine ringHom_ext (fun c => by simp) fun p => ?_
        simp [mConeMap, div_eq_mul_inv]
      have h'' := DFunLike.congr_fun h' g
      simp only [RingHom.comp_apply, RingHom.coe_coe] at h''
      rw [← h'', h, map_mul, eval_C]
      simp [div_eq_mul_inv]
    rw [h1]
    clear h1 hg
    induction g using MvPolynomial.induction_on with
    | C a => simp
    | add f g hf hg => simpa using add_mem hf hg
    | mul_X f p hf => simpa using mul_mem hf (hF p.1 p.2 (c p.1))
  obtain ⟨d, g, h, hg, hh, h0, e⟩ := hb s
  have hp : ∏ k, y ⟨k, c k⟩ ^ d k ≠ 0 := Finset.prod_ne_zero_iff.2 fun k _ => pow_ne_zero _ (hc k)
  have : s = (aeval y g / ∏ k, y ⟨k, c k⟩ ^ d k) / (aeval y h / ∏ k, y ⟨k, c k⟩ ^ d k) := by
    rw [div_div_div_cancel_right₀ hp, e, mul_div_cancel_right₀ _ h0]
  rw [this, map_div₀]
  exact div_mem (key g d hg) (key h d hh)

variable {Ω₁ : Type} [Field Ω₁] [Algebra ℚ Ω₁] {Ω : Type} [Field Ω] [Algebra ℚ Ω] [Algebra Ω₁ Ω]

theorem fnField_join {y : (Σ b, ι b) → Ω₁} (y' : (Σ b, ι' b) → Ω) (hb : Birational y) (hne : ∀ k, ∃ j, y ⟨k, j⟩ ≠ 0) :
    (fnField ℚ (joinPt (fun x => algebraMap Ω₁ Ω (y x)) y')).toSubfield = (fnField Ω₁ y').toSubfield := by
  apply le_antisymm
  · rw [fnField, IntermediateField.adjoin_toSubfield, Subfield.closure_le]
    rintro _ (⟨q, rfl⟩ | ⟨⟨k | k, j⟩, ⟨k', j'⟩, e, rfl⟩)
    · simp
    · obtain rfl : Sum.inl k = k' := e
      exact div_mem ((fnField Ω₁ y').algebraMap_mem _) ((fnField Ω₁ y').algebraMap_mem _)
    · obtain rfl : Sum.inr k = k' := e
      exact IntermediateField.subset_adjoin _ _ ⟨⟨k, j⟩, ⟨k, j'⟩, rfl, rfl⟩
  · rw [fnField, IntermediateField.adjoin_toSubfield, Subfield.closure_le]
    rintro _ (⟨s, rfl⟩ | ⟨⟨k, j⟩, ⟨k', j'⟩, e, rfl⟩)
    · refine mem_of_birational _ hb hne _ (fun k j j' => ?_) s
      exact IntermediateField.subset_adjoin ℚ _ ⟨⟨.inl k, j⟩, ⟨.inl k, j'⟩, rfl, rfl⟩
    · obtain rfl : k = k' := e
      exact IntermediateField.subset_adjoin _ _ ⟨⟨.inr k, j⟩, ⟨.inr k, j'⟩, rfl, rfl⟩

theorem finrank_join {y : (Σ b, ι b) → Ω₁} (y' : (Σ b, ι' b) → Ω) (hb : Birational y) (hne : ∀ k, ∃ j, y ⟨k, j⟩ ≠ 0) :
    Module.finrank (fnField ℚ (joinPt (fun x => algebraMap Ω₁ Ω (y x)) y')) Ω = Module.finrank (fnField Ω₁ y') Ω := by
  show Module.finrank (fnField ℚ (joinPt (fun x => algebraMap Ω₁ Ω (y x)) y')).toSubfield Ω =
    Module.finrank (fnField Ω₁ y').toSubfield Ω
  rw [fnField_join y' hb hne]

theorem isPt_join {y : (Σ b, ι b) → Ω₁} {y' : (Σ b, ι' b) → Ω} {n r : ℕ} (hb : Birational y)
    (ha : IsArithVar (mCoordIdeal y) (n + 1)) (h : IsPt Ω₁ y' r) :
    IsPt ℚ (joinPt (fun x => algebraMap Ω₁ Ω (y x)) y') (n + r) := by
  have hne := ne_of_arith ha
  refine ⟨?_, ?_, ?_⟩
  · rintro (k | k)
    · obtain ⟨j, hj⟩ := hne k
      exact ⟨j, (map_ne_zero (algebraMap Ω₁ Ω)).2 hj⟩
    · exact h.1 k
  · have := h.2.1
    exact Module.finite_of_finrank_pos (by rw [finrank_join y' hb hne]; exact Module.finrank_pos)
  · have h1 := FnFieldTrdeg.full K ι Ω₁ y n hb ha
    have : CharZero Ω₁ := algebraRat.charZero Ω₁
    have : IsScalarTower ℤ ℚ Ω₁ := IsScalarTower.of_algebraMap_eq' (Subsingleton.elim _ _)
    have : IsScalarTower ℚ Ω₁ Ω := IsScalarTower.of_algebraMap_eq' (Subsingleton.elim _ _)
    have : Algebra.IsAlgebraic ℤ ℚ := IsLocalization.isAlgebraic ℚ (nonZeroDivisors ℤ)
    have h2 := trdeg_add_eq ℤ ℚ (A := Ω₁)
    rw [trdeg_eq_zero, zero_add, h1] at h2
    rw [← trdeg_add_eq ℚ Ω₁ (A := Ω), h2, h.2.2, Nat.cast_add]

end SheetDecomposition.PF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFa =====

-- ===== clump member: Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFc =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFc", "h": "module\n\npublic import Development.WeilBound.CoreStatements.VolumeEquality.DegPushDefs\npublic import Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFb\npublic import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Assembly\nimport GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.PIntNumBaseChange\npublic import GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.PConeTrdeg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace SheetDecomposition.PF

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I4 GroundTheory.Heights₂.Heights GroundTheory.Heights₂.Heights.LowerBoundFree
open GroundTheory.Heights₂.Heights.NumbersDVR (pointIdeal intNum pointConeMap)

variable {K : Type} [Fintype K] {ι : K → Type} [∀ b, Fintype (ι b)] {K' : Type} [Fintype K'] {ι' : K' → Type}
  [∀ b, Fintype (ι' b)]

def blkE (K K' : Type) : K' ≃ FibreBlock (Sum.inl : K → K ⊕ K') where
  toFun k := ⟨.inr k, by simp⟩
  invFun
    | ⟨.inl k, h⟩ => absurd ⟨k, rfl⟩ h
    | ⟨.inr k, _⟩ => k
  left_inv _ := rfl
  right_inv
    | ⟨.inl k, h⟩ => absurd ⟨k, rfl⟩ h
    | ⟨.inr _, _⟩ => rfl

def varE (ι : K → Type) (ι' : K' → Type) :
    (Σ b, ι' b) ≃ Σ b : FibreBlock (Sum.inl : K → K ⊕ K'), fibreIdx (Sum.elim ι ι') Sum.inl b where
  toFun p := ⟨⟨.inr p.1, by simp⟩, p.2⟩
  invFun
    | ⟨⟨.inl k, h⟩, _⟩ => absurd ⟨k, rfl⟩ h
    | ⟨⟨.inr k, _⟩, i⟩ => ⟨k, i⟩
  left_inv _ := rfl
  right_inv
    | ⟨⟨.inl k, h⟩, _⟩ => absurd ⟨k, rfl⟩ h
    | ⟨⟨.inr _, _⟩, _⟩ => rfl

variable {Ω₁ : Type} [Field Ω₁] {Ω : Type} [Field Ω] [Algebra Ω₁ Ω]

theorem image_join (y : (Σ b, ι b) → Ω₁) (y' : (Σ b, ι' b) → Ω) :
    imageZ inlV (mCoordIdeal (joinPt (fun x => algebraMap Ω₁ Ω (y x)) y')) = mCoordIdeal y := by
  have key : ∀ f, mConeMap (joinPt (fun x => algebraMap Ω₁ Ω (y x)) y') (rename inlV f) =
      rename Sum.inl (MvPolynomial.map (algebraMap Ω₁ Ω) (mConeMap y f)) := by
    intro f
    induction f using MvPolynomial.induction_on with
    | C a => simp [mConeMap]
    | add p q hp hq => simp only [map_add (f := _), hp, hq]
    | mul_X p n hp =>
      simp only [map_mul, hp]
      simp [mConeMap, inlV, joinPt]
  ext f
  simp only [imageZ, Ideal.mem_comap, mCoordIdeal, RingHom.mem_ker]
  rw [show (rename inlV).toRingHom f = rename inlV f from rfl, key]
  constructor
  · intro h
    apply MvPolynomial.map_injective _ (algebraMap Ω₁ Ω).injective
    apply MvPolynomial.rename_injective _ Sum.inl_injective
    rw [h, map_zero, map_zero]
  · intro h
    rw [h, map_zero, map_zero]

theorem ker_aeval_cone {Φ : Type} [Field Φ] (y : (Σ b, ι b) → Ω) (ν : MvPolynomial K Ω →+* Φ) (hν : Function.Injective ν) :
    RingHom.ker (aeval (fun p : Σ b, ι b => ν (C (y p) * X p.1)) : MRing ι →ₐ[ℤ] Φ) = mCoordIdeal y := by
  have key : ∀ f : MRing ι, (aeval (fun p : Σ b, ι b => ν (C (y p) * X p.1)) : MRing ι →ₐ[ℤ] Φ) f =
      ν (mConeMap y f) := by
    intro f
    induction f using MvPolynomial.induction_on with
    | C a => simp [mConeMap]
    | add p q hp hq => simp only [map_add (f := _), hp, hq]
    | mul_X p n hp =>
      rw [map_mul, hp, map_mul (mConeMap y), map_mul ν, aeval_X]
      congr 1
      simp [mConeMap]
  ext f
  simp only [mCoordIdeal, RingHom.mem_ker]
  rw [key]
  constructor
  · intro h
    apply hν
    rw [h, map_zero]
  · intro h
    rw [h, map_zero]

theorem gen_cone {Φ : Type} [Field Φ] [Algebra (MvPolynomial K Ω₁) Φ] [IsFractionRing (MvPolynomial K Ω₁) Φ]
    {y : (Σ b, ι b) → Ω₁} (hb : Birational y) (hne : ∀ k, ∃ j, y ⟨k, j⟩ ≠ 0) (c : Φ) :
    ∃ f g : MRing ι, aeval (fun p : Σ b, ι b => algebraMap (MvPolynomial K Ω₁) Φ (C (y p) * X p.1)) g ≠ 0 ∧
      c = aeval (fun p : Σ b, ι b => algebraMap (MvPolynomial K Ω₁) Φ (C (y p) * X p.1)) f /
        aeval (fun p : Σ b, ι b => algebraMap (MvPolynomial K Ω₁) Φ (C (y p) * X p.1)) g := by
  set φ : MRing ι →ₐ[ℤ] Φ :=
    aeval (fun p : Σ b, ι b => algebraMap (MvPolynomial K Ω₁) Φ (C (y p) * X p.1)) with hφ
  have key : ∀ f : MRing ι, φ f = algebraMap (MvPolynomial K Ω₁) Φ (mConeMap y f) := by
    intro f
    induction f using MvPolynomial.induction_on with
    | C a => simp [hφ, mConeMap]
    | add p q hp hq => simp only [map_add (f := _), hp, hq]
    | mul_X p n hp =>
      rw [map_mul, hp, map_mul (mConeMap y), map_mul (algebraMap _ Φ), hφ, aeval_X]
      congr 1
      simp [mConeMap]
  have hinj : Function.Injective (algebraMap (MvPolynomial K Ω₁) Φ) := IsFractionRing.injective _ _
  set S := Subfield.closure (Set.range φ) with hS
  have hmem : ∀ f, algebraMap (MvPolynomial K Ω₁) Φ (mConeMap y f) ∈ S := by
    intro f
    rw [← key]
    exact Subfield.subset_closure ⟨f, rfl⟩
  have hC : ∀ s : Ω₁, algebraMap (MvPolynomial K Ω₁) Φ (C s) ∈ S := by
    intro s
    obtain ⟨d, g, h, hg, hh, hne0, heq⟩ := hb s
    have eg := ConeTrdeg.mConeMap_of_isMultiHomog y hg
    have eh := ConeTrdeg.mConeMap_of_isMultiHomog y hh
    have hM : (∏ k : K, (X k : MvPolynomial K Ω₁) ^ d k) ≠ 0 :=
      Finset.prod_ne_zero_iff.mpr (fun k _ => pow_ne_zero _ (X_ne_zero k))
    have hCne : (C (aeval y h) : MvPolynomial K Ω₁) ≠ 0 := by
      rw [Ne, MvPolynomial.C_eq_zero]
      exact hne0
    have hden : algebraMap (MvPolynomial K Ω₁) Φ (mConeMap y h) ≠ 0 := by
      rw [eh]
      intro h0
      have := hinj (h0.trans (map_zero _).symm)
      exact mul_ne_zero hCne hM this
    have : algebraMap (MvPolynomial K Ω₁) Φ (C s) =
        algebraMap (MvPolynomial K Ω₁) Φ (mConeMap y g) / algebraMap (MvPolynomial K Ω₁) Φ (mConeMap y h) := by
      rw [eq_div_iff hden, ← map_mul, eg, eh, heq]
      congr 1
      rw [map_mul]
      ring
    rw [this]
    exact div_mem (hmem g) (hmem h)
  have hX : ∀ k : K, algebraMap (MvPolynomial K Ω₁) Φ (X k) ∈ S := by
    intro k
    obtain ⟨j, hj⟩ := hne k
    have e1 : (X k : MvPolynomial K Ω₁) = C (y ⟨k, j⟩)⁻¹ * mConeMap y (X ⟨k, j⟩) := by
      simp only [mConeMap, aeval_X]
      rw [← mul_assoc, ← map_mul, inv_mul_cancel₀ hj, map_one, one_mul]
    rw [e1, map_mul]
    exact mul_mem (hC _) (hmem _)
  have hall : ∀ a : MvPolynomial K Ω₁, algebraMap (MvPolynomial K Ω₁) Φ a ∈ S := by
    intro a
    induction a using MvPolynomial.induction_on with
    | C s => exact hC s
    | add p q hp hq => rw [map_add]; exact add_mem hp hq
    | mul_X p n hp => rw [map_mul]; exact mul_mem hp (hX n)
  have hc : c ∈ S := by
    obtain ⟨a, b, -, rfl⟩ := IsFractionRing.div_surjective (A := MvPolynomial K Ω₁) c
    exact div_mem (hall a) (hall b)
  have hsub : Subring.closure (Set.range φ) ≤ φ.toRingHom.range :=
    Subring.closure_le.mpr (by
      rintro _ ⟨f, rfl⟩
      exact ⟨f, rfl⟩)
  obtain ⟨u, hu, v, hv, huv⟩ := Subfield.mem_closure_iff.mp hc
  obtain ⟨f, rfl⟩ := hsub hu
  obtain ⟨g, rfl⟩ := hsub hv
  by_cases hg0 : φ.toRingHom g = 0
  · refine ⟨0, 1, by simp, ?_⟩
    rw [← huv, hg0, div_zero, map_zero, zero_div]
  · exact ⟨f, g, hg0, huv.symm⟩

end SheetDecomposition.PF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFc =====

-- ===== clump member: Development.WeilBound.CoreStatements.VolumeEquality.DegPushPF =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.VolumeEquality.DegPushPF", "h": "module\n\npublic import Development.WeilBound.CoreStatements.VolumeEquality.DegPushDefs\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.DegreeGenericOfDegree\npublic import Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFa\npublic import Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFb\npublic import Development.WeilBound.CoreStatements.VolumeEquality.DegPushPFc\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.AssemblyBridgeFull\nimport GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Assembly\nimport GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.PIntNumBaseChange\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLiftBirationalNef\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PFsInvPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterDerived\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace SheetDecomposition

open MvPolynomial ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I4 GroundTheory.Heights₂.Heights GroundTheory.Heights₂.Heights.LowerBoundFree
open GroundTheory.Heights₂.Heights.NumbersDVR (pointIdeal intNum pointConeMap)
open GlobalTheory.CompanionTheory.Ar

namespace PF

variable {K : Type} [Fintype K] {ι : K → Type} [∀ b, Fintype (ι b)] {K' : Type} [Fintype K'] {ι' : K' → Type}
  [∀ b, Fintype (ι' b)]

theorem pointIdeal_rat {Ω : Type} [Field Ω] [Algebra ℚ Ω] (y : (Σ b, ι b) → Ω) :
    pointIdeal ℚ y = (mCoordIdeal y).map (map (Int.castRingHom ℚ)) := by
  have : CharZero Ω := algebraRat.charZero Ω
  obtain rfl : ‹Algebra ℚ Ω› = DivisionRing.toRatAlgebra := Subsingleton.elim _ _
  exact (HilbertSamuel.LiftBirationalNef.genIdeal_eq y).symm

def cst (ι : K → Type) [∀ b, Fintype (ι b)] : HermLine ι := HermLine.ofWeight (fun _ => 1) fun _ _ _ => rfl

theorem cst_smooth : IsSmoothHerm (cst ι) := contDiffOn_const

theorem ii_cst (hI : PB.Inputs) {II : IntersectionSystem} (hII : IsIntersectionSystem II) {Ω : Type} [Field Ω] [Algebra ℚ Ω]
    {y : (Σ b, ι b) → Ω} {e : ℕ} (ha : IsArithVar (mCoordIdeal y) (e + 1)) (a : Fin e → K → ℤ) :
    II K ι (mCoordIdeal y) (e + 1) (Fin.snoc (α := fun _ => HermLine ι) (fun j => fsHerm ι (a j)) (cst ι)) = -inum ℚ y a := by
  classical
  have hs : ∀ j, IsSmoothHerm (fsHerm ι (a j)) := fun j => FsInvPow.isSmoothHerm_fsHerm _
  have h1 := (hII K ι).2.2 _ e (fun j => fsHerm ι (a j)) (cst ι) 1 (fun _ => 0) ha hs cst_smooth (fun _ => rfl)
    Geo.isMultiHomog_one ((Ideal.ne_top_iff_one _).1 ha.2.1.1.ne_top)
  have h3 : logNorm (cst ι) 1 = fun _ => 1 := by
    funext z
    simp [logNorm, cst, HermLine.ofWeight]
  have h2 := Giv.degreeGeneric_of_degree hI.2.1.2.1 K ι _ e (fun j => fsHerm ι (a j)) ha hs
  refine h1.trans ?_
  rw [recR, Geo.divSupp_one, finsum_mem_empty, zero_sub, arInt, h3, inum, pointIdeal_rat]
  exact congrArg _ h2

theorem ii_cast {II : IntersectionSystem} (hII : IsIntersectionSystem II) {P : Ideal (MRing ι)} {d d' : ℕ} (σ : Fin d ≃ Fin d')
    (hP : IsArithVar P d') (L : Fin d' → HermLine ι) (hL : ∀ j, IsSmoothHerm (L j)) : II K ι P d (L ∘ σ) = II K ι P d' L := by
  obtain rfl : d = d' := Fin.equiv_iff_eq.1 ⟨σ⟩
  exact (hII K ι).1 P d L σ hP hL

theorem pull_inl (a : K → ℤ) : AI.I1.pullDeg (Sum.inl : K → K ⊕ K') a = Sum.elim a 0 := by
  funext k
  rcases k with k | k
  · exact Sum.inl_injective.extend_apply _ _ k
  · exact Function.extend_apply' _ _ _ (by simp)

theorem pull_fs (a : K → ℤ) : IsPullHerm Sum.inl inlV (fsHerm ι a) (fsHerm (Sum.elim ι ι') (Sum.elim a 0)) := by
  refine ⟨(pull_inl a).symm, fun z => ?_⟩
  simp only [fsHerm_h, refNorm, Fintype.prod_sum_type, Sum.elim_inl, Sum.elim_inr, Pi.zero_apply]
  simp
  rfl

theorem pull_cst : IsPullHerm Sum.inl inlV (cst ι) (cst (Sum.elim ι ι')) := by
  refine ⟨?_, fun z => rfl⟩
  show (0 : K ⊕ K' → ℤ) = AI.I1.pullDeg Sum.inl 0
  rw [pull_inl]
  funext k
  rcases k with k | k <;> rfl

def factorAction (n r : ℕ) : Fin (n + 1 + r) ≃ Fin (n + r + 1) where
  toFun j := ⟨if (j : ℕ) < n then j else if (j : ℕ) = n then n + r else j - 1, by have := j.2; split_ifs <;> omega⟩
  invFun j := ⟨if (j : ℕ) < n then j else if (j : ℕ) = n + r then n else j + 1, by have := j.2; split_ifs <;> omega⟩
  left_inv j := by
    have := j.2
    ext
    dsimp only
    split_ifs <;> omega
  right_inv j := by
    have := j.2
    ext
    dsimp only
    split_ifs <;> omega

theorem position_eq {α : Type} {n r : ℕ} (A : Fin n → α) (c : α) (B : Fin r → α) :
    Fin.snoc (α := fun _ => α) (Fin.append A B) c ∘ factorAction n r = Fin.append (Fin.snoc (α := fun _ => α) A c) B := by
  funext j
  refine Fin.addCases (fun j => ?_) (fun j => ?_) j
  · refine Fin.lastCases ?_ (fun j => ?_) j
    · have : factorAction n r (Fin.castAdd r (Fin.last n)) = Fin.last _ := by simp [factorAction, Fin.ext_iff]
      simp [this]
    · have : factorAction n r (Fin.castAdd r j.castSucc) = (Fin.castAdd r j).castSucc := by simp [factorAction, Fin.ext_iff]
      simp [this]
  · have : factorAction n r (Fin.natAdd (n + 1) j) = (Fin.natAdd n j).castSucc := by
      have h1 : ¬ n + 1 + j < n := by omega
      have h2 : ¬ n + 1 + j = n := by omega
      simp only [factorAction, Equiv.coe_fn_mk, Fin.val_natAdd, h1, h2, ite_false, Fin.ext_iff, Fin.val_castSucc]
      omega
    rw [Function.comp_apply, this, Fin.snoc_castSucc, Fin.append_right, Fin.append_right]

end PF

open PF in
theorem geoPF : PtDim → GeoPF := by
  intro _ hI II hII Ω₁ _ _ Ω _ _ _ K _ ι _ K' _ ι' _ y y' n r a N hb ha hy'
  classical
  have hne := ne_of_arith ha
  have hP := isPt_join hb ha hy'
  refine ⟨hP, ?_⟩
  have : Nonempty K := ha.1
  have hA := arith_of_isPt hP
  have hgen : ∃ G : GenFibre inlV (mCoordIdeal (joinPt (fun x => algebraMap Ω₁ Ω (y x)) y')), ∀ (r : ℕ) (N : Fin r → K' → ℤ),
      intNum G.Φ (fibreIdeal Sum.inl G) (fun j => fibreDeg Sum.inl (Sum.elim (0 : K → ℤ) (N j))) = inum Ω₁ y' N := by
    let B := MvPolynomial K' Ω
    let Φ := FractionRing (MvPolynomial K Ω₁)
    let Φ' := FractionRing (MvPolynomial K B)
    let ν : MvPolynomial K B →+* Φ' := algebraMap _ _
    have hν : Function.Injective ν := IsFractionRing.injective _ _
    let e := sumRingEquiv Ω K K'
    let ν' : MvPolynomial (K ⊕ K') Ω →+* Φ' := ν.comp e.toRingHom
    have hν' : Function.Injective ν' := hν.comp e.injective
    have hg : Function.Injective (ν.comp (MvPolynomial.map (algebraMap Ω₁ B))) :=
      hν.comp (MvPolynomial.map_injective _ (algebraMap Ω₁ B).injective)
    let L : Φ →+* Φ' := IsFractionRing.lift hg
    letI alg : Algebra Φ Φ' := L.toAlgebra
    haveI : ∀ b, Fintype (Sum.elim ι ι' b) := fun b => by
      cases b <;> dsimp <;> infer_instance
    have he : ∀ (c : Ω) (q : Σ b, Sum.elim ι ι' b), e (C c * X q.1) =
        match q with
        | ⟨Sum.inl k, _⟩ => C (C c) * X k
        | ⟨Sum.inr k, _⟩ => C (C c * X k) := by
      rintro c ⟨(k | k), i⟩ <;> simp [e, sumRingEquiv_C, sumRingEquiv_X_inl, sumRingEquiv_X_inr]
    let ψ := pointConeMap Ω₁ y'
    have ha : ∀ c : Ω₁, algebraMap Ω₁ Φ c = algebraMap (MvPolynomial K Ω₁) Φ (C c) := by
      intro c
      rw [IsScalarTower.algebraMap_apply Ω₁ (MvPolynomial K Ω₁) Φ, MvPolynomial.algebraMap_eq]
    have hL : ∀ r, L (algebraMap (MvPolynomial K Ω₁) Φ r) = ν (MvPolynomial.map (algebraMap Ω₁ B) r) := by
      intro r
      exact IsFractionRing.lift_algebraMap hg r
    have hbc := ker_baseChange (algebraMap Ω₁ Φ) ha ν hν L hL ψ
    refine ⟨⟨Φ, Φ', fun p => algebraMap (MvPolynomial K Ω₁) Φ (C (y p) * X p.1),
      fun q => ν' (C (joinPt (fun x => algebraMap Ω₁ Ω (y x)) y' q) * X q.1), ?_, ?_, ?_, ?_⟩, ?_⟩
    · rw [image_join]
      exact ker_aeval_cone y (algebraMap (MvPolynomial K Ω₁) Φ) (IsFractionRing.injective _ _)
    · exact gen_cone hb hne
    · exact ker_aeval_cone _ ν' hν'
    · intro p
      rw [RingHom.algebraMap_toAlgebra]
      show ν (e _) = L _
      rw [IsFractionRing.lift_algebraMap, he]
      simp [inlV, joinPt, ν]
      rfl
    · intro r N
      have hdeg : (fun j => fibreDeg Sum.inl (Sum.elim (0 : K → ℤ) (N j))) = fun j => N j ∘ (blkE K K').symm := by
        funext j b
        obtain ⟨(k | k), h⟩ := b
        · exact absurd ⟨k, rfl⟩ h
        · rfl
      rw [hdeg]
      dsimp only
      rw [← FieldNumbers.RenameIntNum.full Φ K' (FibreBlock (Sum.inl : K → K ⊕ K')) ι'
        (fibreIdx (Sum.elim ι ι') Sum.inl) (blkE K K') (varE ι ι') (fun v => rfl)]
      have hmap : ∀ P : Ideal (NumbersDVR.MRing ι' Ω₁),
          intNum Φ (Ideal.map (MvPolynomial.map (algebraMap Ω₁ Φ)) P) N = intNum Ω₁ P N := by
        intro P
        unfold intNum
        congr 2
        funext m
        exact FieldNumbers.hilbFn_map P m
      refine Eq.trans ?_ (hmap (RingHom.ker ψ))
      rw [← hbc]
      congr 1
      ext f
      simp only [Ideal.mem_comap, fibreIdeal, RingHom.mem_ker, MvPolynomial.aeval_rename]
      rw [MvPolynomial.aeval_eq_eval₂Hom]
      congr! 3
      funext s
      obtain ⟨k, i⟩ := s
      have h1 := he (y' ⟨k, i⟩) ⟨Sum.inr k, i⟩
      simp only [Function.comp_apply, varE, Equiv.coe_fn_mk, ν', RingHom.comp_apply, joinPt]
      show ν (e (C (y' ⟨k, i⟩) * X (Sum.inr k))) = _
      rw [h1]
      simp [ψ, pointConeMap]
  obtain ⟨G, hG⟩ := hgen
  have hsm : ∀ {m : ℕ} {α : Type} [Fintype α] {κ : α → Type} [∀ b, Fintype (κ b)] (b : Fin m → α → ℤ) (j : Fin (m + 1)),
      IsSmoothHerm (Fin.snoc (α := fun _ => HermLine κ) (fun j => fsHerm κ (b j)) (cst κ) j) := by
    intro m α _ κ _ b j
    refine Fin.lastCases ?_ (fun j => ?_) j
    · simpa using cst_smooth
    · simpa using FsInvPow.isSmoothHerm_fsHerm _
  have h := hI.2.2.2.1.1 II hII.1 K ι (K ⊕ K') (Sum.elim ι ι') Sum.inl inlV _ (n + 1) r G (fun V _ L => intNum G.Φ V L)
    (Fin.snoc (α := fun _ => HermLine ι) (fun j => fsHerm ι (a j)) (cst ι))
    (Fin.snoc (α := fun _ => HermLine (Sum.elim ι ι')) (fun j => fsHerm (Sum.elim ι ι') (Sum.elim (a j) 0)) (cst _))
    (fun j => fsHerm (Sum.elim ι ι') (Sum.elim 0 (N j))) isBlockMap_inl (by rwa [Nat.add_right_comm])
    (by rwa [image_join]) (NumbersDVR.IntNumIsFieldIntersection.full _ _ _) (hsm a)
    (fun j => by
      refine Fin.lastCases ?_ (fun j => ?_) j
      · simpa using pull_cst
      · simpa using pull_fs _)
    fun j => FsInvPow.isSmoothHerm_fsHerm _
  rw [image_join, ii_cst hI hII.1 ha, ← position_eq] at h
  have e : (Fin.append (fun j => fsHerm (Sum.elim ι ι') (Sum.elim (a j) 0)) fun j => fsHerm (Sum.elim ι ι') (Sum.elim 0 (N j))) =
      fun j => fsHerm (Sum.elim ι ι')
        (Fin.append (fun j => Sum.elim (a j) (0 : K' → ℤ)) (fun j => Sum.elim (0 : K → ℤ) (N j)) j) := by
    funext j
    refine Fin.addCases (fun j => ?_) (fun j => ?_) j <;> simp
  rw [e, ii_cast hII.1 _ hA _ (hsm _), ii_cst hI hII.1 hA] at h
  have h' := hG r N
  rw [mul_neg, neg_inj] at h
  rw [num, num, finrank_join y' hb hne, mul_assoc, ← h']
  congr 1
  exact_mod_cast h

end SheetDecomposition
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.VolumeEquality.DegPushPF =====
