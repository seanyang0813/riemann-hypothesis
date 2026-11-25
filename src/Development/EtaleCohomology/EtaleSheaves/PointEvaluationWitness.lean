module

public import Development.EtaleCohomology.EtaleSheaves.ClosedPointLifts.ProperBaseChangeClosedFiberStrictlyHenselianEqui
public import Development.EtaleCohomology.EtaleSheaves.LeafConeZeroPf
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.AlgebraicGeometry.Morphisms.Immersion

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.ClosedPointLifts.ClosedLift, Development.EtaleCohomology.EtaleSheaves.PointEvaluationWitness

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.ClosedPointLifts.ClosedLift =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.ClosedPointLifts.ClosedLift", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.ClosedPointLifts.ProperBaseChangeClosedFiberStrictlyHenselianEqui\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.E.LeafPtWPf

theorem closedLift : LeafClosedLift := by
  intro A _ _ B W ι _ s hx
  set t := Spec.map (CommRingCat.ofHom (IsLocalRing.residue A)) ≫ s with ht
  have hcl : IsClosed (s.base ⁻¹' Set.range ι.base) :=
    (ι.isClosedEmbedding.isClosed_range).preimage s.continuous
  obtain ⟨x, hx⟩ := hx
  have hc : s.base (IsLocalRing.closedPoint A) ∈ Set.range ι.base :=
    (IsLocalRing.specializes_closedPoint (R := A) x).mem_closed hcl hx
  have : Surjective (pullback.fst t ι) := by
    constructor
    rw [← Set.range_eq_univ, Scheme.Pullback.range_fst, Set.eq_univ_iff_forall]
    intro y
    simp only [Set.mem_preimage]
    have hy : (Spec.map (CommRingCat.ofHom (IsLocalRing.residue A))).base y = IsLocalRing.closedPoint A := by
      have : y = IsLocalRing.closedPoint (IsLocalRing.ResidueField A) := Subsingleton.elim _ _
      subst this
      exact IsLocalRing.comap_closedPoint (IsLocalRing.residue A)
    rw [ht, Scheme.Hom.comp_base, TopCat.comp_app, hy]
    exact hc
  haveI := isIso_of_isClosedImmersion_of_surjective (pullback.fst t ι)
  refine ⟨inv (pullback.fst t ι) ≫ pullback.snd t ι, ?_⟩
  rw [Category.assoc, ← pullback.condition, IsIso.inv_hom_id_assoc]

end LateralTheory.E.LeafPtWPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.ClosedPointLifts.ClosedLift =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.PointEvaluationWitness =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.PointEvaluationWitness", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.ClosedPointLifts.ProperBaseChangeClosedFiberStrictlyHenselianEqui\npublic import Development.EtaleCohomology.EtaleSheaves.ClosedPointLifts.ClosedLift\npublic import Development.EtaleCohomology.EtaleSheaves.LeafConeZeroPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.Immersion\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.PointEvaluationWitness
open LateralTheory.E.E4 LateralTheory.E.LeafGhostCut LateralTheory.E.SecondDegreeKilling LateralTheory.E.LeafPtWPf

theorem hrelZero : LeafHrelZero := by
  intro R _ F U E f hf n
  exact LateralTheory.E.E8.ExciseCut.LeafConeZero_of R ((chains R).map f) F (fun m => hf m) n

theorem eqv_of_iso' {R : Type} [CommRing R] {E' E : Spc} (f : E' ⟶ E) [IsIso f] (F : Shv R) : Eqv R f F := fun n =>
  Function.bijective_iff_has_inverse.2 ⟨pull R (inv f) F n,
    fun x => by rw [← pull_comp, IsIso.inv_hom_id, pull_id], fun x => by rw [← pull_comp, IsIso.hom_inv_id, pull_id]⟩

theorem eqv_of_square {R : Type} [CommRing R] {Z X Z0 X0 : Spc} (f : Z ⟶ X) (a : Z0 ⟶ Z) (g : Z0 ⟶ X0) (b : X0 ⟶ X)
    [IsIso g] (w : a ≫ f = g ≫ b) (F : Shv R) (ha : Eqv R a F) (hb : Eqv R b F) : Eqv R f F := fun n => by
  have h1 : Function.Bijective (pull R (g ≫ b) F n) := by
    have e : ⇑(pull R (g ≫ b) F n) = pull R g F n ∘ pull R b F n := funext (pull_comp R g b F n)
    rw [e]; exact (eqv_of_iso' g F n).comp (hb n)
  rw [← w] at h1
  have e : ⇑(pull R (a ≫ f) F n) = pull R a F n ∘ pull R f F n := funext (pull_comp R a f F n)
  rw [e] at h1
  exact (Function.Bijective.of_comp_iff' (ha n) _).1 h1

theorem unit_of {k A : Type} [Field k] [CommRing A] {B : Scheme.{0}} (toK : B ⟶ Sp k) (s : Sp A ⟶ B) (q : ℕ)
    (hq : IsUnit (q : k)) : IsUnit (q : A) := by
  have := hq.map (Spec.preimage (s ≫ toK)).hom
  simpa using this

section geo
variable {B W Y : Scheme.{0}} (ι : W ⟶ B) [IsClosedImmersion ι] (p : Y ⟶ B) {A : Type} [CommRing A] [IsLocalRing A]
  (s : Sp A ⟶ B)

abbrev rA (A : Type) [CommRing A] [IsLocalRing A] : Spec (CommRingCat.of (IsLocalRing.ResidueField A)) ⟶ Sp A :=
  Spec.map (CommRingCat.ofHom (IsLocalRing.residue A))

def gF : pullback (prS p ι s ≫ pullback.snd p s) (rA A) ⟶ pullback (pullback.snd p s) (rA A) :=
  pullback.lift (pullback.fst _ _ ≫ prS p ι s) (pullback.snd _ _) (by rw [Category.assoc, pullback.condition])


variable {ι p s} in
def hF (w : Spec (CommRingCat.of (IsLocalRing.ResidueField A)) ⟶ W) (hw : w ≫ ι = rA A ≫ s) :
    pullback (pullback.snd p s) (rA A) ⟶ pullback (prS p ι s ≫ pullback.snd p s) (rA A) :=
  pullback.lift (pullback.lift (pullback.fst _ _) (pullback.snd _ _ ≫ w)
      (by simp only [Category.assoc]; rw [hw, pullback.condition_assoc]))
    (pullback.snd _ _) (by rw [← Category.assoc, pullback.lift_fst, pullback.condition])

theorem eZ : pullback.fst (prS p ι s ≫ pullback.snd p s) (rA A) ≫ pullback.snd (pullback.snd p s ≫ s) ι ≫ ι =
    pullback.snd (prS p ι s ≫ pullback.snd p s) (rA A) ≫ rA A ≫ s := by
  have c : pullback.snd (pullback.snd p s ≫ s) ι ≫ ι = prS p ι s ≫ pullback.snd p s ≫ s := pullback.condition.symm
  rw [c]
  have := pullback.condition_assoc (f := prS p ι s ≫ pullback.snd p s) (g := rA A) s
  simpa only [Category.assoc] using this

theorem gF_iso (w : Spec (CommRingCat.of (IsLocalRing.ResidueField A)) ⟶ W) (hw : w ≫ ι = rA A ≫ s) :
    IsIso (gF ι p s) := by
  refine ⟨⟨hF w hw, ?_, ?_⟩⟩
  · apply pullback.hom_ext
    · apply pullback.hom_ext
      · simp only [hF, gF, Category.assoc, pullback.lift_fst, Category.id_comp]
      · rw [← cancel_mono ι]
        simp only [hF, gF, Category.assoc, pullback.lift_fst, pullback.lift_snd, pullback.lift_snd_assoc, Category.id_comp]
        rw [hw, eZ]
    · simp only [hF, gF, Category.assoc, pullback.lift_snd, Category.id_comp]
  · apply pullback.hom_ext <;> simp only [hF, gF, Category.assoc, pullback.lift_fst, pullback.lift_snd, pullback.lift_fst_assoc,
      Category.id_comp]
end geo

theorem proper_base_change_closed_fiber_strictly_henselian_equivalence_holds : ProperBaseChangeClosedFiberStrictlyHenselianEquivalence := by
  intro hH q _ k _ hq i B W Y toK ι _ p hp A _ _ s hA w hw
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, hE2, -⟩ := hH
  have hqA := unit_of toK s q hq
  have := hp
  have : IsProper (pullback.snd p s) := inferInstance
  have : IsProper (prS p ι s ≫ pullback.snd p s) := inferInstance
  have h1 := hE2 q A hA hqA (pullback.snd p s) i
  have h2 := hE2 q A hA hqA (prS p ι s ≫ pullback.snd p s) i
  have := gF_iso ι p s w hw
  exact eqv_of_square (sch.map (prS p ι s)) (sch.map (pullback.fst _ (rA A))) (sch.map (gF ι p s))
    (sch.map (pullback.fst _ (rA A)))
    (by rw [← Functor.map_comp, ← Functor.map_comp, gF, pullback.lift_fst]) _ h2 h1

theorem LeafPtW_of : LateralTheory.E.SecondDegreeKilling.LeafPtW :=
  LateralTheory.E.LeafPtWPf.LeafPtW_of hrelZero closedLift proper_base_change_closed_fiber_strictly_henselian_equivalence_holds

end LateralTheory.E.PointEvaluationWitness
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.PointEvaluationWitness =====
