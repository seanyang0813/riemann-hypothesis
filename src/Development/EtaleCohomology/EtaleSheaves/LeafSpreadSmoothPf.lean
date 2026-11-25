module

public import Development.EtaleCohomology.EtaleSheaves.LeafDescendVCut
public import Mathlib.Order.CompletePartialOrder
import Development.EtaleCohomology.EtaleSheaves.LeafDescendChainPf
import Development.EtaleCohomology.EtaleSheaves.PropertyDescent.BaseChange
import Mathlib.AlgebraicGeometry.QuasiAffine

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.PropertyDescent.LeafPropsDescendOf, Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothPf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.PropertyDescent.LeafPropsDescendOf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.PropertyDescent.LeafPropsDescendOf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafDescendVCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.EtaleCohomology.EtaleSheaves.LeafDescendChainPf\nimport Development.EtaleCohomology.EtaleSheaves.PropertyDescent.BaseChange\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite LateralTheory.E.E4 LateralTheory.E.LeafDescendVCut LateralTheory.E.LeafDescendChainPf
  LateralTheory.E.LeafPropsDescendPf

namespace LateralTheory.E.LeafPropsDescendPf.Split

def LeafSpreadSmooth : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ {C D : Scheme.{0}} (c : C ⟶ Sp Ω) (q : D ⟶ Sp R) (v : C ⟶ D),
    (LocallyOfFinitePresentation q ∧ QuasiCompact q ∧ QuasiSeparated q) → SmoothOfRelativeDimension 1 c →
    IsPullback v c q (toR R) →
    ∃ (S : Subalgebra k Ω), R ≤ S ∧ S.FG ∧ ∀ (R' : Subalgebra k Ω), S ≤ R' → ∀ (hR : R ≤ R') (E : Scheme.{0})
      (q' : E ⟶ Sp R') (r : E ⟶ D), IsPullback r q' q (incl hR) → SmoothOfRelativeDimension 1 q'

end LateralTheory.E.LeafPropsDescendPf.Split

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.PropertyDescent.LeafPropsDescendOf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.PropertyDescent.LeafPropsDescendOf\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.EtaleCohomology.EtaleSheaves.LeafDescendChainPf\nimport Development.EtaleCohomology.EtaleSheaves.PropertyDescent.BaseChange\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite LateralTheory.E.E4 LateralTheory.E.LeafDescendVCut LateralTheory.E.LeafDescendChainPf
  LateralTheory.E.LeafPropsDescendPf LateralTheory.E.LeafPropsDescendPf.Split

namespace LateralTheory.E.LeafSpreadSmoothPf

def LeafSpreadSmoothAff : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ {C D : Scheme.{0}} (c : C ⟶ Sp Ω) (q : D ⟶ Sp R) (v : C ⟶ D), IsAffine D →
    LocallyOfFinitePresentation q → SmoothOfRelativeDimension 1 c →
    IsPullback v c q (toR R) →
    ∃ (S : Subalgebra k Ω), R ≤ S ∧ S.FG ∧ ∀ (R' : Subalgebra k Ω), S ≤ R' → ∀ (hR : R ≤ R') (E : Scheme.{0})
      (q' : E ⟶ Sp R') (r : E ⟶ D), IsPullback r q' q (incl hR) → SmoothOfRelativeDimension 1 q'

def LeafSpreadSmoothAffAt : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ {C D : Scheme.{0}} (c : C ⟶ Sp Ω) (q : D ⟶ Sp R) (v : C ⟶ D), IsAffine D →
    LocallyOfFinitePresentation q → SmoothOfRelativeDimension 1 c →
    IsPullback v c q (toR R) →
    ∃ (S : Subalgebra k Ω) (h : R ≤ S), S.FG ∧ SmoothOfRelativeDimension 1 (pullback.snd q (incl h))

theorem incl_incl {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] {R S R' : Subalgebra k Ω} (h1 : R ≤ S)
    (h2 : S ≤ R') : incl h2 ≫ incl h1 = incl (h1.trans h2) := by
  rw [← Spec.map_comp]; rfl

theorem LeafSpreadSmoothAff_of (hA : LeafSpreadSmoothAffAt) : LeafSpreadSmoothAff := by
  intro k _ Ω _ _ R hR C D c q v hD hlfp hs hv
  obtain ⟨S, hRS, hSfg, hsm⟩ := hA k Ω R hR c q v hD hlfp hs hv
  refine ⟨S, hRS, hSfg, fun R' hSR' hRR' E q' r hE => ?_⟩
  have hw : r ≫ q = (q' ≫ incl hSR') ≫ incl hRS := by
    rw [Category.assoc, incl_incl]; exact hE.w
  have hsq : IsPullback (pullback.lift r (q' ≫ incl hSR') hw) q' (pullback.snd q (incl hRS)) (incl hSR') := by
    refine IsPullback.of_right ?_ (pullback.lift_snd _ _ _) (IsPullback.of_hasPullback q (incl hRS))
    rw [pullback.lift_fst, incl_incl]; exact hE
  exact (smoothOfRelativeDimension_isStableUnderBaseChange (n := 1)).of_isPullback hsq hsm

theorem fg_finset_sup {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] {ι : Type} (t : Finset ι)
    (S : ι → Subalgebra k Ω) (h : ∀ i, (S i).FG) : (t.sup S).FG := by
  classical
  induction t using Finset.induction_on with
  | empty => simpa using (Subalgebra.fg_bot : (⊥ : Subalgebra k Ω).FG)
  | insert a t _ ih => rw [Finset.sup_insert]; exact (h a).sup ih

theorem LeafSpreadSmooth_of_aff (hA : LeafSpreadSmoothAff) : LeafSpreadSmooth := by
  intro k _ Ω _ _ R hR C D c q v hf hs hv
  obtain ⟨hlfp, hqc, hqs⟩ := hf
  have hL : IsZariskiLocalAtSource (@SmoothOfRelativeDimension.{0} 1) :=
    HasRingHomProperty.instIsZariskiLocalAtSource (Q := RingHom.Locally (RingHom.IsStandardSmoothOfRelativeDimension 1))
  have := hlfp; have := hqc; have := hs
  have : CompactSpace D := QuasiCompact.compactSpace_of_compactSpace q

  obtain ⟨t, ht⟩ := isCompact_univ.elim_finite_subcover (fun i : D.affineOpens => ((i : D.Opens) : Set D))
    (fun i => (i : D.Opens).isOpen) (by
      intro x _
      have : x ∈ (⊤ : D.Opens) := trivial
      rw [← iSup_affineOpens_eq_top D] at this
      simpa [TopologicalSpace.Opens.mem_iSup] using this)

  have piece : ∀ U : D.affineOpens, ∃ (S : Subalgebra k Ω), R ≤ S ∧ S.FG ∧ ∀ (R' : Subalgebra k Ω), S ≤ R' →
      ∀ (hR : R ≤ R') (E : Scheme.{0}) (q' : E ⟶ Sp R') (r : E ⟶ (U : D.Opens)),
      IsPullback r q' ((U : D.Opens).ι ≫ q) (incl hR) → SmoothOfRelativeDimension 1 q' := by
    intro U
    have : IsAffine (U : D.Opens) := U.2
    have h1 := (isPullback_morphismRestrict v (U : D.Opens)).paste_vert hv
    exact hA k Ω R hR (((v ⁻¹ᵁ (U : D.Opens)).ι) ≫ c) ((U : D.Opens).ι ≫ q) (v ∣_ (U : D.Opens)) U.2
      inferInstance (IsZariskiLocalAtSource.comp hs _) h1
  choose S hRS hSfg hS using piece
  refine ⟨R ⊔ t.sup S, le_sup_left, hR.sup (fg_finset_sup t S hSfg), ?_⟩
  intro R' hR' hRR E q' r hE
  refine IsZariskiLocalAtSource.of_iSup_eq_top (P := @SmoothOfRelativeDimension 1)
    (fun j : t => r ⁻¹ᵁ ((j.1 : D.Opens))) ?_ ?_
  · refine top_le_iff.mp fun x _ => ?_
    obtain ⟨i, hi, hx⟩ := Set.mem_iUnion₂.mp (ht (Set.mem_univ (r x)))
    exact TopologicalSpace.Opens.mem_iSup.mpr ⟨⟨i, hi⟩, hx⟩
  · intro j
    have h2 := (isPullback_morphismRestrict r (j.1 : D.Opens)).paste_vert hE
    exact hS j.1 R' ((Finset.le_sup j.2).trans (le_sup_right.trans hR')) hRR _ _ (r ∣_ (j.1 : D.Opens)) h2

def LeafSpreadSmoothAffSm : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ {C D : Scheme.{0}} (c : C ⟶ Sp Ω) (q : D ⟶ Sp R) (v : C ⟶ D), IsAffine D →
    LocallyOfFinitePresentation q → SmoothOfRelativeDimension 1 c →
    IsPullback v c q (toR R) →
    ∃ (S : Subalgebra k Ω) (h : R ≤ S), S.FG ∧ Smooth (pullback.snd q (incl h))

def LeafSpreadRelDim : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ {C D : Scheme.{0}} (c : C ⟶ Sp Ω) (q : D ⟶ Sp R) (v : C ⟶ D), IsAffine D →
    LocallyOfFinitePresentation q → Smooth q → SmoothOfRelativeDimension 1 c →
    IsPullback v c q (toR R) →
    ∃ (S : Subalgebra k Ω), R ≤ S ∧ S.FG ∧ ∀ (R' : Subalgebra k Ω), S ≤ R' → ∀ (hR : R ≤ R') (E : Scheme.{0})
      (q' : E ⟶ Sp R') (r : E ⟶ D), IsPullback r q' q (incl hR) → SmoothOfRelativeDimension 1 q'

theorem LeafSpreadSmoothAffAt_of (hA : LeafSpreadSmoothAffSm) (hB : LeafSpreadRelDim) : LeafSpreadSmoothAffAt := by
  intro k _ Ω _ _ R hR C D c q v hD hlfp hs hv
  obtain ⟨S1, h1, f1, hsm1⟩ := hA k Ω R hR c q v hD hlfp hs hv
  have ht : toR S1 ≫ incl h1 = toR R := by
    rw [← Spec.map_comp]; rfl
  have hw1 : v ≫ q = (c ≫ toR S1) ≫ incl h1 := by
    rw [Category.assoc, ht]; exact hv.w
  have sq1 : IsPullback (pullback.lift v (c ≫ toR S1) hw1) c
      (pullback.snd q (incl h1)) (toR S1) := by
    refine IsPullback.of_right ?_ (pullback.lift_snd _ _ _) (IsPullback.of_hasPullback q (incl h1))
    rw [pullback.lift_fst, ht]; exact hv
  obtain ⟨S2, h12, f2, H⟩ := hB k Ω S1 f1 c (pullback.snd q (incl h1)) _ inferInstance inferInstance hsm1 hs sq1
  refine ⟨S2, h1.trans h12, f2, ?_⟩
  have hw : pullback.fst q (incl (h1.trans h12)) ≫ q = (pullback.snd q (incl (h1.trans h12)) ≫ incl h12) ≫ incl h1 := by
    rw [Category.assoc, incl_incl]; exact pullback.condition
  refine H S2 le_rfl h12 _ _ (pullback.lift _ _ hw) ?_
  refine IsPullback.of_right ?_ (pullback.lift_snd _ _ _) (IsPullback.of_hasPullback q (incl h1))
  rw [pullback.lift_fst, incl_incl]; exact IsPullback.of_hasPullback q (incl (h1.trans h12))

theorem LeafSpreadSmooth_of (hA : LeafSpreadSmoothAffSm) (hB : LeafSpreadRelDim) : LeafSpreadSmooth :=
  LeafSpreadSmooth_of_aff (LeafSpreadSmoothAff_of (LeafSpreadSmoothAffAt_of hA hB))

end LateralTheory.E.LeafSpreadSmoothPf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothPf =====
