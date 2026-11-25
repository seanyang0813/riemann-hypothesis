module

public import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs
public import Mathlib.LinearAlgebra.Dimension.Finrank
public import Mathlib.RingTheory.Algebraic.Defs
public import Mathlib.Tactic.Continuity
public import Mathlib.FieldTheory.LinearDisjoint
public import Mathlib.FieldTheory.IntermediateField.Adjoin.Algebra
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsTranscRatioDeg
import Mathlib.Algebra.Lie.OfAssociative
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.LinearIndependentAdjoinOfTranscendental, GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PTranscRatioDeg

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.LinearIndependentAdjoinOfTranscendental =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.LinearIndependentAdjoinOfTranscendental", "h": "module\n\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs\npublic import Mathlib.LinearAlgebra.Dimension.Finrank\npublic import Mathlib.RingTheory.Algebraic.Defs\npublic import Mathlib.Tactic.Continuity\nimport Mathlib.Algebra.Lie.OfAssociative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.FieldTheory.LinearDisjoint\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Algebra\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

namespace TranscRatioDeg

open Polynomial

theorem transcendental_subfieldClosure {E : Type*} [Field E] {ι : Type*} (u : ι → E) (t : E)
    (ht : Transcendental (Algebra.adjoin ℤ (Set.range u)) t) :
    Transcendental (Subfield.closure (Set.range u)) t := by
  have hR : ∀ x, x ∈ Algebra.adjoin ℤ (Set.range u) ↔ x ∈ Subring.closure (Set.range u) := fun x => by
    rw [Algebra.adjoin_int]; rfl
  set R := Algebra.adjoin ℤ (Set.range u)
  set Q := Subfield.closure (Set.range u)
  have hmem : ∀ x : R, (x : E) ∈ Q := fun x => Subfield.subring_closure_le _ ((hR x).1 x.2)
  let _ : Algebra R Q := RingHom.toAlgebra
    { toFun := fun x => ⟨x.1, hmem x⟩, map_one' := rfl, map_mul' := fun _ _ => rfl,
      map_zero' := rfl, map_add' := fun _ _ => rfl }
  have : IsScalarTower R Q E := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  have : FaithfulSMul R Q := (faithfulSMul_iff_algebraMap_injective R Q).2
    (fun a b h => Subtype.ext (congrArg Subtype.val h :))
  have : IsFractionRing R Q := IsFractionRing.of_field R Q (fun z => by
    obtain ⟨y, hy, z', hz', h⟩ := Subfield.mem_closure_iff.1 z.2
    exact ⟨⟨y, (hR y).2 hy⟩, ⟨z', (hR z').2 hz'⟩, Subtype.ext (by rw [Subfield.coe_div]; exact h.symm)⟩)
  intro halg
  exact ht ((IsFractionRing.isAlgebraic_iff R Q E).2 halg)

theorem transcendental_of_subfield {E : Type*} [Field E] {S : Type*} [CommRing S] [Algebra S E]
    (Q : Subfield E) (h : ∀ x : S, algebraMap S E x ∈ Q) (hinj : Function.Injective (algebraMap S E))
    {t : E} (ht : Transcendental Q t) : Transcendental S t := by
  rintro ⟨p, hp0, hp⟩
  let φ : S →+* Q := (algebraMap S E).codRestrict Q h
  have hφ : Function.Injective φ := fun a b hab => hinj (congrArg Subtype.val hab :)
  refine ht ⟨p.map φ, (Polynomial.map_ne_zero_iff hφ).2 hp0, ?_⟩
  rw [aeval_def, eval₂_map]
  exact hp


open scoped IntermediateField.algebraAdjoinAdjoin in
theorem linearIndependent_adjoin_of_transcendental {K E : Type*} [Field K] [Field E] [Algebra K E]
    (A : IntermediateField K E) {t : E} (ht : Transcendental A t) {κ : Type*} {b : κ → A}
    (hb : LinearIndependent K b) :
    LinearIndependent (IntermediateField.adjoin K {t}) (A.val ∘ b) :=
  open scoped IntermediateField.algebraAdjoinAdjoin in by
  letI : Algebra (Algebra.adjoin K {t}) (IntermediateField.adjoin K {t}) :=
    (Subalgebra.inclusion (IntermediateField.algebra_adjoin_le_adjoin K {t})).toAlgebra
  letI : FaithfulSMul (Algebra.adjoin K {t}) (IntermediateField.adjoin K {t}) :=
    (faithfulSMul_iff_algebraMap_injective _ _).2 fun a b h =>
      Subtype.ext (by simpa using congrArg (fun x : IntermediateField.adjoin K {t} => (x : E)) h)
  letI : IsFractionRing (Algebra.adjoin K {t}) (IntermediateField.adjoin K {t}) :=
    IsFractionRing.of_field _ _ fun ⟨_, h⟩ =>
      have ⟨x, hx, y, hy, eq⟩ := IntermediateField.mem_adjoin_iff_div.mp h
      ⟨⟨x, hx⟩, ⟨y, hy⟩, Subtype.ext eq⟩
  letI : IsScalarTower (Algebra.adjoin K {t}) (IntermediateField.adjoin K {t}) E :=
    IsScalarTower.of_algebraMap_eq fun _ => rfl
  refine (LinearIndependent.iff_fractionRing (Algebra.adjoin K {t})
    (IntermediateField.adjoin K {t})).1 ?_
  rw [linearIndependent_iff']
  intro s g hg i hi
  have hp : ∀ j, ∃ p : K[X], aeval t p = (g j : E) := fun j => by
    have h : (g j : E) ∈ (aeval t : K[X] →ₐ[K] E).range := by
      rw [← Algebra.adjoin_singleton_eq_range_aeval]
      exact (g j).2
    obtain ⟨p, hp⟩ := h
    exact ⟨p, hp⟩
  choose p hp using hp
  have hsum : ∑ j ∈ s, aeval t (p j) * (b j : E) = 0 := by
    simpa [hp, Subalgebra.smul_def] using hg
  let P : A[X] := ∑ j ∈ s, C (b j) * (p j).map (algebraMap K A)
  have hP : aeval t P = 0 := by

    simp only [P, map_sum, map_mul, aeval_C, aeval_map_algebraMap]
    rw [← hsum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [mul_comm]
    rfl
  have hP0 : P = 0 := by
    by_contra hne
    exact ht ⟨P, hne, hP⟩
  have hcoeff : ∀ n, ∑ j ∈ s, (p j).coeff n • b j = 0 := by
    intro n
    have := congrArg (fun q => q.coeff n) hP0
    simp only [P, finsetSum_coeff, coeff_C_mul, coeff_map, coeff_zero] at this
    rw [← this]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [Algebra.smul_def, mul_comm]
  have hpi : p i = 0 := by
    ext n
    exact linearIndependent_iff'.1 hb s (fun j => (p j).coeff n) (hcoeff n) i hi
  apply Subtype.ext
  rw [← hp i, hpi, map_zero]
  rfl

theorem finrank_adjoin_eq_of_transcendental {K E : Type*} [Field K] [Field E] [Algebra K E]
    (A : IntermediateField K E) {t : E} (ht : Transcendental A t) :
    Module.finrank (IntermediateField.adjoin K {t})
      (IntermediateField.adjoin (IntermediateField.adjoin K {t}) (A : Set E)) = Module.finrank K A := by
  set L := IntermediateField.adjoin K {t}
  let a := Module.Free.chooseBasis K A
  have hind : LinearIndependent L (A.val ∘ a) :=
    linearIndependent_adjoin_of_transcendental A ht a.linearIndependent
  by_cases hfin : Module.Finite K A
  · have H : A.LinearDisjoint L := IntermediateField.LinearDisjoint.of_basis_left a hind
    have hr := H.adjoin_rank_eq_rank_left_of_isAlgebraic_left
    exact congrArg Cardinal.toNat hr
  · rw [Module.finrank_of_not_finite hfin]
    set M := IntermediateField.adjoin L (A : Set E)
    letI : Module.Free L M := Module.Free.of_divisionRing L M
    refine Module.finrank_of_not_finite (M := M) ?_
    intro hfin'
    apply hfin
    let f : Module.Free.ChooseBasisIndex K A → M :=
      fun k => ⟨A.val (a k), IntermediateField.subset_adjoin L _ (a k).2⟩
    have hf : LinearIndependent L f := LinearIndependent.of_comp M.val.toLinearMap hind
    have : Finite (Module.Free.ChooseBasisIndex K A) := hf.finite
    exact Module.Finite.of_basis a

theorem finrank_adjoin_congr {E Φ L : Type*} [Field E] [Field Φ] [Field L] [Algebra Φ E] [Algebra L E]
    {S T : Set E} (h : (algebraMap Φ E).fieldRange = (algebraMap L E).fieldRange)
    (hST : Subfield.closure (Set.range (algebraMap Φ E) ∪ S) =
      Subfield.closure (Set.range (algebraMap L E) ∪ T)) :
    Module.finrank Φ (IntermediateField.adjoin Φ S) = Module.finrank L (IntermediateField.adjoin L T) := by
  let i : Φ ≃+* L := ((algebraMap Φ E).rangeRestrictFieldEquiv.trans (RingEquiv.subfieldCongr h)).trans
    (algebraMap L E).rangeRestrictFieldEquiv.symm
  have hi : ∀ r, algebraMap L E (i r) = algebraMap Φ E r := fun r => by
    simp only [i, RingEquiv.trans_apply, RingHom.rangeRestrictFieldEquiv_apply_symm_apply]
    rfl
  have hmem : ∀ x : E, x ∈ IntermediateField.adjoin Φ S ↔ x ∈ IntermediateField.adjoin L T := fun x => by
    rw [← IntermediateField.mem_toSubfield, ← IntermediateField.mem_toSubfield,
      IntermediateField.adjoin_toSubfield, IntermediateField.adjoin_toSubfield, hST]
  let j : IntermediateField.adjoin Φ S ≃+ IntermediateField.adjoin L T :=
    { toFun := fun x => ⟨x.1, (hmem x.1).1 x.2⟩, invFun := fun x => ⟨x.1, (hmem x.1).2 x.2⟩,
      left_inv := fun _ => rfl, right_inv := fun _ => rfl, map_add' := fun _ _ => rfl }
  have hr := rank_eq_of_equiv_equiv i j i.bijective (fun r m => Subtype.ext (by
    simp only [j, AddEquiv.coe_mk, Equiv.coe_fn_mk, Algebra.smul_def]
    rw [IntermediateField.coe_mul, IntermediateField.coe_mul]
    exact congrArg (· * (m : E)) (hi r).symm))
  exact congrArg Cardinal.toNat hr

end TranscRatioDeg

end GroundTheory.Heights₂.Heights.HilbertSamuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.LinearIndependentAdjoinOfTranscendental =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PTranscRatioDeg =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PTranscRatioDeg", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsTranscRatioDeg\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.LinearIndependentAdjoinOfTranscendental\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.ArakelovGeometry

theorem TranscRatioDeg.proof : TranscRatioDeg.Statement := by
  intro ι E _ _ u D e w i₀ Φ _ _ hi₀ he hw ht hΦ
  have ht0 : w 0 ≠ 0 := by
    intro h0
    apply ht
    rw [h0]
    exact isAlgebraic_zero
  have hwk : ∀ k, w k = w 0 * (u (e k) / u (e 0)) := fun k => by
    rw [mul_div_assoc', ← hw k, mul_div_cancel_right₀ _ (he 0)]

  have hfn : ∀ {κ : Type} (v : κ → E) (K : Subfield E), (∀ i j, v i / v j ∈ K) →
      ∀ x ∈ fnField v, x ∈ K := by
    intro κ v K hK x hx
    have : (fnField v).toSubfield ≤ K := by
      unfold fnField
      rw [IntermediateField.adjoin_toSubfield, Subfield.closure_le]
      rintro _ (⟨q, rfl⟩ | ⟨i, j, rfl⟩)
      · rw [eq_ratCast]
        exact SubfieldClass.ratCast_mem K q
      · exact hK i j
    exact this hx
  have hrat : ∀ i j, u i / u j ∈ fnField u := fun i j =>
    IntermediateField.subset_adjoin ℚ _ ⟨i, j, rfl⟩
  have hle : fnField (u ∘ e) ≤ fnField u := fun x hx =>
    hfn (u ∘ e) (fnField u).toSubfield (fun k l => hrat (e k) (e l)) x hx
  set F₀ := fnField (u ∘ e)
  set A := IntermediateField.extendScalars hle
  set L := IntermediateField.adjoin F₀ {w 0}

  have hL : ∀ x, x ∈ L ↔ x ∈ Subfield.closure (Set.range w) := by
    have h1 : L.toSubfield ≤ Subfield.closure (Set.range w) := by
      rw [IntermediateField.adjoin_toSubfield, Subfield.closure_le]
      rintro _ (⟨⟨x, hx⟩, rfl⟩ | h)
      · refine hfn (u ∘ e) _ (fun k l => ?_) x hx
        have : (u ∘ e) k / (u ∘ e) l = w k / w l := by
          rw [hwk k, hwk l]
          field_simp [ht0, he 0, he l]
          simp only [Function.comp_apply]
          ring
        rw [this]
        exact div_mem (Subfield.subset_closure ⟨k, rfl⟩) (Subfield.subset_closure ⟨l, rfl⟩)
      · rw [Set.mem_singleton_iff.1 h]
        exact Subfield.subset_closure ⟨0, rfl⟩
    have h2 : Subfield.closure (Set.range w) ≤ L.toSubfield := by
      rw [Subfield.closure_le]
      rintro _ ⟨k, rfl⟩
      rw [hwk k]
      have hr : u (e k) / u (e 0) ∈ F₀ := IntermediateField.subset_adjoin ℚ _ ⟨k, 0, rfl⟩
      exact mul_mem (IntermediateField.mem_adjoin_simple_self F₀ (w 0))
        (IntermediateField.algebraMap_mem L (⟨_, hr⟩ : F₀))
    exact fun x => ⟨fun hx => h1 hx, fun hx => h2 hx⟩
  have hLset : Set.range (algebraMap L E) = (Subfield.closure (Set.range w) : Set E) := by
    ext x
    constructor
    · rintro ⟨y, rfl⟩
      exact (hL _).1 y.2
    · intro hx
      exact ⟨⟨x, (hL x).2 hx⟩, rfl⟩

  have hQ : ∀ x ∈ fnField u, x ∈ Subfield.closure (Set.range u) := hfn u _ fun i j =>
    div_mem (Subfield.subset_closure ⟨i, rfl⟩) (Subfield.subset_closure ⟨j, rfl⟩)
  have htA : Transcendental A (w 0) :=
    TranscRatioDeg.transcendental_of_subfield (Subfield.closure (Set.range u)) (fun x => hQ _ x.2)
      (algebraMap A E).injective (TranscRatioDeg.transcendental_subfieldClosure u (w 0) ht)
  have key := TranscRatioDeg.finrank_adjoin_eq_of_transcendental A htA
  have hproj : projDeg u e = Module.finrank F₀ A := IntermediateField.relfinrank_eq_finrank_of_le hle
  rw [hproj, ← key]
  apply TranscRatioDeg.finrank_adjoin_congr
  · rw [hΦ]
    apply SetLike.ext'
    rw [RingHom.coe_fieldRange, hLset]
  · rw [← RingHom.coe_fieldRange, hΦ, hLset]
    apply le_antisymm
    · rw [Subfield.closure_le]
      rintro _ (h | ⟨i, rfl⟩)
      · exact Subfield.subset_closure (Or.inl h)
      · exact Subfield.subset_closure (Or.inr (hrat i i₀))
    · rw [Subfield.closure_le]
      rintro x (h | h)
      · exact Subfield.subset_closure (Or.inl h)
      · refine hfn u _ (fun i j => ?_) x h
        have : u i / u j = (u i / u i₀) / (u j / u i₀) := by
          rw [div_div_div_cancel_right₀ hi₀]
        rw [this]
        exact div_mem (Subfield.subset_closure (Or.inr ⟨i, rfl⟩))
          (Subfield.subset_closure (Or.inr ⟨j, rfl⟩))

end GroundTheory.Heights₂.Heights.HilbertSamuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PTranscRatioDeg =====
