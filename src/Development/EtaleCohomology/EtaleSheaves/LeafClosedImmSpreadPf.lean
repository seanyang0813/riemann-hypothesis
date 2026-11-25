module

public import Development.EtaleCohomology.EtaleSheaves.LeafSpreadProperPf
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.IsClosedImmersionDescendsToSubring
import Aesop.Main
import Development.EtaleCohomology.EtaleSheaves.LeafDescendChainPf
import Development.EtaleCohomology.EtaleSheaves.PropertyDescent.BaseChange

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LeafSpreadSeparatedPf, Development.EtaleCohomology.EtaleSheaves.LeafClosedImmSpreadPf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafSpreadSeparatedPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafSpreadSeparatedPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafSpreadProperPf\nimport Aesop.Main\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.EtaleCohomology.EtaleSheaves.LeafDescendChainPf\nimport Development.EtaleCohomology.EtaleSheaves.PropertyDescent.BaseChange\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite LateralTheory.E.E4 LateralTheory.E.LeafDescendVCut LateralTheory.E.LeafDescendChainPf
  LateralTheory.E.LeafPropsDescendPf

namespace LateralTheory.E.LeafSpreadSeparatedPf

theorem incl_comp {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] {R S R' : Subalgebra k Ω} (h : R ≤ S)
    (h' : S ≤ R') : incl h' ≫ incl h = incl (h.trans h') := by
  rw [← Spec.map_comp]; rfl

theorem sep_of_stage {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] {R S R' : Subalgebra k Ω} (h : R ≤ S)
    (hS : S ≤ R') (hR : R ≤ R') {D E : Scheme.{0}} (q : D ⟶ Sp R) [IsSeparated (pullback.snd q (incl h))]
    (q' : E ⟶ Sp R') (r : E ⟶ D) (hE : IsPullback r q' q (incl hR)) : IsSeparated q' := by
  have hc : r ≫ q = (q' ≫ incl hS) ≫ incl h := by
    rw [Category.assoc, incl_comp]; exact hE.w
  have outer : IsPullback (pullback.lift r (q' ≫ incl hS) hc ≫ pullback.fst q (incl h)) q' q
      (incl hS ≫ incl h) := by
    rw [pullback.lift_fst, incl_comp]; exact hE
  have sq := IsPullback.of_right outer (pullback.lift_snd _ _ _) (IsPullback.of_hasPullback q (incl h))
  exact MorphismProperty.of_isPullback (P := @IsSeparated) sq inferInstance

def BC {X Y Z T : Scheme.{0}} (f : X ⟶ Y) (g : Y ⟶ Z) (p : X ⟶ Z) (w : f ≫ g = p) (t : T ⟶ Z) :
    pullback p t ⟶ pullback g t :=
  pullback.map _ _ _ _ f (𝟙 _) (𝟙 _) (by simp [w]) (by simp)

def LeafClosedImmSpread : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ {X Y : Scheme.{0}} (f : X ⟶ Y) (g : Y ⟶ Sp R),
    (LocallyOfFinitePresentation g ∧ QuasiCompact g ∧ QuasiSeparated g) →
    (LocallyOfFinitePresentation (f ≫ g) ∧ QuasiCompact (f ≫ g) ∧ QuasiSeparated (f ≫ g)) →
    IsClosedImmersion (BC f g (f ≫ g) rfl (toR R)) →
    ∃ (S : Subalgebra k Ω) (h : R ≤ S), S.FG ∧ IsClosedImmersion (BC f g (f ≫ g) rfl (incl h))

def LeafDiagBC : Prop := ∀ {D Z T : Scheme.{0}} (q : D ⟶ Z) (t : T ⟶ Z),
    IsSeparated (pullback.snd q t) ↔ IsClosedImmersion (BC (pullback.diagonal q) (pullback.snd q q ≫ q) q (by simp) t)

theorem ci_congr {X Y Z T : Scheme.{0}} (f : X ⟶ Y) (g : Y ⟶ Z) (p : X ⟶ Z) (w : f ≫ g = p) (t : T ⟶ Z) :
    IsClosedImmersion (BC f g p w t) ↔ IsClosedImmersion (BC f g (f ≫ g) rfl t) := by
  subst w; rfl

theorem separated_base_change_iff_diagonal_closed_immersion_holds : LeafDiagBC := by
  intro D Z T q t
  have e1 : pullback.snd q t = (pullbackSymmetry q t).hom ≫ pullback.fst t q := by simp
  have e2 : IsSeparated (pullback.snd q t) ↔ IsSeparated (pullback.fst t q) := by
    rw [e1]; exact MorphismProperty.cancel_left_of_respectsIso (P := @IsSeparated) _ _
  rw [e2]
  have e3 : IsSeparated (pullback.fst t q) ↔ IsClosedImmersion (pullback.diagonal (pullback.fst t q)) :=
    ⟨fun h => h.isClosedImmersion_diagonal, fun h => ⟨h⟩⟩
  rw [e3, diagonal_pullback_fst, MorphismProperty.cancel_left_of_respectsIso (P := @IsClosedImmersion),
    MorphismProperty.cancel_right_of_respectsIso (P := @IsClosedImmersion)]
  have : ((Over.pullback t).map (Over.homMk (pullback.diagonal q) : Over.mk q ⟶ Over.mk (pullback.snd q q ≫ q))).left
      = BC (pullback.diagonal q) (pullback.snd q q ≫ q) q (by simp) t := by
    apply pullback.hom_ext <;> simp only [BC, pullback.map, Category.comp_id] <;> rfl
  rw [this]

theorem of_two (hC : LeafClosedImmSpread) (hD : LeafDiagBC) :
    LateralTheory.E.LeafSpreadProperPf.LeafSpreadSeparated := by
  intro k _ Ω _ _ R hR C D c q v hf hc hv
  obtain ⟨h1, h2, h3⟩ := hf
  have s0 : IsSeparated (pullback.snd q (toR R)) := by
    rw [← hv.isoPullback_inv_snd]; infer_instance
  have ci := (ci_congr _ _ _ _ _).1 ((hD q (toR R)).1 s0)
  have hfg : pullback.diagonal q ≫ pullback.snd q q ≫ q = q := by simp
  obtain ⟨S, h, hS, ci'⟩ := hC k Ω R hR (pullback.diagonal q) (pullback.snd q q ≫ q)
    ⟨inferInstance, inferInstance, inferInstance⟩ (by rw [hfg]; exact ⟨h1, h2, h3⟩) ci
  have := (hD q (incl h)).2 ((ci_congr _ _ _ (by simp) _).2 ci')
  exact ⟨S, h, hS, fun R' hS' hRR E q' r hE => sep_of_stage h hS' hRR q q' r hE⟩

end LateralTheory.E.LeafSpreadSeparatedPf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafSpreadSeparatedPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafClosedImmSpreadPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafClosedImmSpreadPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafSpreadSeparatedPf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.ThetaLawProofs.IsClosedImmersionDescendsToSubring\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry LateralTheory.E.E4 LateralTheory.E.LeafDescendVCut LateralTheory.E.LeafSpreadSeparatedPf

namespace LateralTheory.E.LeafClosedImmSpreadPf

theorem bc_sq {X Y Z T : Scheme.{0}} (f : X ⟶ Y) (g : Y ⟶ Z) (t : T ⟶ Z) :
    IsPullback (pullback.fst (f ≫ g) t) (BC f g (f ≫ g) rfl t) f (pullback.fst g t) := by
  have e : BC f g (f ≫ g) rfl t ≫ pullback.snd g t = pullback.snd (f ≫ g) t := by
    simp only [BC, pullback.map, pullback.lift_snd, Category.comp_id]
  refine IsPullback.of_bot ?_ ?_ (IsPullback.of_hasPullback g t)
  · rw [e]; exact IsPullback.of_hasPullback (f ≫ g) t
  · simp only [BC, pullback.map, pullback.lift_fst]

theorem toR_eq {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω) :
    (ReciprocityTheory.ChartRestriction.G.Geo.Tor.spMap R.toSubring.subtype : Sp Ω ⟶ Sp R) = toR R := rfl

theorem incl_eq {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] {R S : Subalgebra k Ω} (h : R ≤ S)
    (h' : R.toSubring ≤ S.toSubring) :
    (ReciprocityTheory.ChartRestriction.G.Geo.Tor.spMap (Subring.inclusion h') : Sp S ⟶ Sp R) = incl h := rfl

theorem LeafClosedImmSpread_of : LeafClosedImmSpread := by
  intro k _ Ω _ _ R hR X Y f g hg hfg hci
  obtain ⟨hg1, hg2, hg3⟩ := hg
  obtain ⟨hp1, hp2, hp3⟩ := hfg
  have := hg1; have := hg2; have := hg3; have := hp1; have := hp2; have := hp3
  have : QuasiSeparated f := QuasiSeparated.of_comp f g
  have : QuasiCompact f := QuasiCompact.of_comp f g
  have : LocallyOfFiniteType f := locallyOfFiniteType_of_comp f g
  have hY : IsPullback (pullback.fst g (toR R)) (pullback.snd g (toR R)) (g : Y ⟶ Sp R.toSubring)
      (ReciprocityTheory.ChartRestriction.G.Geo.Tor.spMap R.toSubring.subtype) := by
    rw [toR_eq]; exact IsPullback.of_hasPullback g (toR R)
  have : QuasiCompact (g : Y ⟶ Sp R.toSubring) := hg2
  obtain ⟨F, hF⟩ := GlobalTheory.isClosedImmersion_descends_to_subring Ω R.toSubring X Y _ _ f g
    (BC f g (f ≫ g) rfl (toR R)) (pullback.fst _ _) (pullback.fst _ _) (pullback.snd _ _) hY (bc_sq f g _) hci
  let S : Subalgebra k Ω := R ⊔ Algebra.adjoin k (F : Set Ω)
  have h : R ≤ S := le_sup_left
  have h' : R.toSubring ≤ S.toSubring := fun x hx => h hx
  have hsub : (F : Set Ω) ⊆ S.toSubring := fun x hx =>
    (le_sup_right : Algebra.adjoin k (F : Set Ω) ≤ S) (Algebra.subset_adjoin hx)
  refine ⟨S, h, hR.sup (Subalgebra.fg_adjoin_finset F), ?_⟩
  have hY1 : IsPullback (pullback.fst g (incl h)) (pullback.snd g (incl h)) (g : Y ⟶ Sp R.toSubring)
      (ReciprocityTheory.ChartRestriction.G.Geo.Tor.spMap (Subring.inclusion h')) := by
    rw [incl_eq h h']; exact IsPullback.of_hasPullback g (incl h)
  exact hF S.toSubring h' hsub _ _ (BC f g (f ≫ g) rfl (incl h)) (pullback.fst _ _) (pullback.fst _ _)
    (pullback.snd _ _) hY1 (bc_sq f g _)

end LateralTheory.E.LeafClosedImmSpreadPf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafClosedImmSpreadPf =====
