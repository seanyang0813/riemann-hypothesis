module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.UniformisationConclusion
public import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsNsmulIffEq
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniTrait
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TorsionClause
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Development.AbelianVarietyTheory.BlockTheory.CMModuli.TorusGraphMaps
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsGtExtOfTorsion
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.PullQkSurjective
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
import Mathlib.Tactic.Linter.Style
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.ModuliProofs.PsiGenOnInteriorOfPsiUnitOn, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionLabelsUniformisedDominatingTrait, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionLabelsUniformisedDominatingTraitStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.PsiGenOnInteriorOfPsiUnitOn =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.PsiGenOnInteriorOfPsiUnitOn", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.UniformisationConclusion\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsNsmulIffEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.CMModuli.TorusGraphMaps\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj NumberField

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DegActCompare

open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.IndefiniteRowSideFullHecke

variable {R : Type} [CommRing R] [IsDomain R]

section Act

variable {O : Type} [CommRing O] [StarRing O] {D : DegPre R} [Module O D.X]
variable {F : Type} [Field F] [Algebra (FractionRing R) F]

end Act

section Ext

variable {D : DegPre R} {F F' : Type} [Field F] [Algebra (FractionRing R) F] [Field F']
  [Algebra (FractionRing R) F'] {k : ℕ}

theorem qkExt_unique {f : F →+* F'} {p : QkPt D F k} {q q' : QkPt D F' k} (h : QkExt f p q)
    (h' : QkExt f p q') : q = q' := by
  have hg : q.g = q'.g :=
    TorusExt.gt_ext_val (Over.OverMorphism.ext (h.2.1.trans h'.2.1.symm)) fun χ y J hJ =>
      (val_corr hJ (h.2.2 χ) _).trans (val_corr hJ (h'.2.2 χ) _).symm
  have hy : q.y = q'.y := h.1.trans h'.1.symm
  obtain ⟨y, g, e⟩ := q
  obtain ⟨y', g', e'⟩ := q'
  obtain rfl : y = y' := hy
  obtain rfl : g = g' := hg
  rfl

end Ext

section Through

variable {O : Type} [CommRing O] [StarRing O] {D : DegPre R} [Module O D.X]

end Through

section Unit

variable (D : DegPre R) (χ : D.X)

end Unit

end GlobalTheory.DegActCompare
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.PsiGenOnInteriorOfPsiUnitOn =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionLabelsUniformisedDominatingTrait =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionLabelsUniformisedDominatingTrait", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniTrait\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsGtExtOfTorsion\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.PsiGenOnInteriorOfPsiUnitOn\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.PullQkSurjective\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.TorsionClause\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem grpPullback_pow_left {S' S : Scheme.{0}} {G' : Over S'} [GrpObj G'] {G : Over S} [GrpObj G] {f : S' ⟶ S}
    {a : G'.left ⟶ G.left} (h : IsGrpPullback G' G f a) {T : Over S'} (x : T ⟶ G') (x₀ : Over.mk (T.hom ≫ f) ⟶ G)
    (hx : x₀.left = x.left ≫ a) : ∀ n : ℕ, (x₀ ^ n).left = (x ^ n).left ≫ a := by
  intro n
  induction n with
  | zero =>
    let u : Over.mk (T.hom ≫ f) ⟶ G := Over.homMk ((1 : T ⟶ G').left ≫ a) (by
      show ((1 : T ⟶ G').left ≫ a) ≫ G.hom = T.hom ≫ f
      rw [Category.assoc, h.1.w, ← Category.assoc, Over.w])
    have hm := h.2 T 1 1 u u rfl rfl
    rw [_root_.mul_one] at hm
    have hu : u * u = u := Over.OverMorphism.ext hm
    have hu1 : u = 1 := mul_eq_left.1 hu
    rw [pow_zero, pow_zero, ← hu1]
    rfl
  | succ n ih =>
    rw [pow_succ, pow_succ]
    exact h.2 T (x ^ n) x (x₀ ^ n) x₀ ih hx

end GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_oneTrait : ∀ (R₁ : Type) [CommRing R₁] [IsDomain R₁] [IsLocalRing R₁], Base R₁ →
    ∀ (D₁ : DegData R₁ (maximalIdeal R₁)) (A : PolAV (Sp (FractionRing R₁))), UniTrait D₁.toPre A →
      ∃ lab : Labels D₁.toPre A, OneTrait D₁.toPre A lab := by
  intro R _ _ _ hR D A hU
  obtain ⟨W, _, _, _, φ, G', _, _, D', A', U', hD, a, hW, hφ, hloc, hG', ga, hga, hpb, hLa⟩ := hU
  haveI : CharZero R := hR.2
  haveI : CharZero W := charZero_of_injective_ringHom hφ
  have := hW.1
  have hW' : AdmBase W (maximalIdeal W) := ⟨inferInstance, inferInstance, inferInstance, hW.2.1⟩
  letI iW : Algebra (FractionRing R) (Kb W) := ((algebraMap (FractionRing W) (Kb W)).comp ga).toAlgebra
  have tf : ∀ (K M : Type) [Field K] [Field M] [Algebra K M], Module.IsTorsionFree K M := fun _ _ _ _ _ => inferInstance
  haveI := tf (FractionRing R) (Kb W)
  haveI := tf (FractionRing R) (Kb R)
  let em : Kb R →ₐ[FractionRing R] Kb W := (by
    refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
    solve_by_elim* (maxDepth := 2) only [*,
      @_root_.DivisionSemiring.to_moduleIsTorsionFree,
      @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
  have hF : ∀ r, algebraMap (FractionRing R) (Kb W) (algebraMap R _ r) =
      algebraMap (FractionRing W) (Kb W) (algebraMap W _ (φ r)) := fun r =>
    congrArg (algebraMap (FractionRing W) (Kb W)) (hga r)
  obtain ⟨hL, -⟩ := GlobalTheory.firstFiveLaws
  haveI : CharZero (FractionRing R) := charZero_of_injective_ringHom (IsFractionRing.injective R (FractionRing R))
  haveI : CharZero (Kb R) := charZero_of_injective_ringHom (algebraMap (FractionRing R) (Kb R)).injective
  haveI : CharZero (Kb W) := charZero_of_injective_ringHom em.toRingHom.injective
  haveI := GlobalTheory.ArcExt.epi_spMap em.toRingHom
  have hρ : spMap em.toRingHom ≫ jFK (R := R) (Kb R) = (TFK (R := W) (Kb W)).hom ≫ spMap ga := by
    show Spec.map _ ≫ Spec.map _ = Spec.map _ ≫ Spec.map _
    rw [← Spec.map_comp, ← Spec.map_comp]
    congr 1
    ext x
    exact em.commutes x
  let ρ : Over.mk ((TFK (R := W) (Kb W)).hom ≫ spMap ga) ⟶ TFK (R := R) (Kb R) := Over.homMk (spMap em.toRingHom) hρ
  let Φ : (TFK (R := R) (Kb R) ⟶ A.A) →* (Over.mk ((TFK (R := W) (Kb W)).hom ≫ spMap ga) ⟶ A.A) :=
    MonoidHom.mk' (fun y => ρ ≫ y) fun x y => by rw [MonObj.comp_mul]
  have hΦ : ∀ y, (Φ y).left = spMap em.toRingHom ≫ y.left := fun _ => rfl
  have hΦinj : Function.Injective Φ := fun x y e => Over.OverMorphism.ext
    ((cancel_epi (spMap em.toRingHom)).1 ((hΦ x).symm.trans ((congrArg (fun q => q.left) e).trans (hΦ y))))
  have desc : ∀ k : ℕ, 1 ≤ k → ∀ z : Over.mk ((TFK (R := W) (Kb W)).hom ≫ spMap ga) ⟶ A.A, z ^ k = 1 →
      ∃ y : TFK (R := R) (Kb R) ⟶ A.A, Φ y = z := by
    intro k hk z hz
    let u : {y : TFK (R := R) (Kb R) ⟶ A.A // y ^ k = 1} →
        {z : Over.mk ((TFK (R := W) (Kb W)).hom ≫ spMap ga) ⟶ A.A // z ^ k = 1} :=
      fun y => ⟨Φ y.1, by rw [← map_pow, y.2, map_one]⟩
    have hu : Function.Injective u := fun y y' e => Subtype.ext (hΦinj (congrArg Subtype.val e))
    have c := GlobalTheory.ArcExt.card_torsion hL A (jFK (R := R) (Kb R)) (n := k) (Nat.cast_ne_zero.2 (by omega))
    have c' := GlobalTheory.ArcExt.card_torsion hL A ((TFK (R := W) (Kb W)).hom ≫ spMap ga) (n := k)
      (Nat.cast_ne_zero.2 (by omega))
    haveI : Finite {z : Over.mk ((TFK (R := W) (Kb W)).hom ≫ spMap ga) ⟶ A.A // z ^ k = 1} :=
      Nat.finite_of_card_ne_zero (by rw [c']; positivity)
    obtain ⟨y, e⟩ := (hu.bijective_of_nat_card_le (c'.trans c.symm).le).2 ⟨z, hz⟩
    exact ⟨y.1, congrArg Subtype.val e⟩
  have toA : ∀ (k : ℕ) (x' : TFK (R := W) (Kb W) ⟶ A'.A), x' ^ k = 1 →
      ∃ z : Over.mk ((TFK (R := W) (Kb W)).hom ≫ spMap ga) ⟶ A.A, z.left = x'.left ≫ a ∧ z ^ k = 1 := by
    intro k x' hx
    let z : Over.mk ((TFK (R := W) (Kb W)).hom ≫ spMap ga) ⟶ A.A := Over.homMk (x'.left ≫ a) (by
      show (x'.left ≫ a) ≫ A.A.hom = (TFK (R := W) (Kb W)).hom ≫ spMap ga
      rw [Category.assoc, hpb.1.w, ← Category.assoc, Over.w])
    refine ⟨z, rfl, Over.OverMorphism.ext ?_⟩
    rw [grpPullback_pow_left hpb x' z rfl k, hx]
    exact ((grpPullback_pow_left hpb x' z rfl 0).trans (by rw [pow_zero])).symm
  have key : ∀ (k : ℕ) (p : QkPt D.toPre (Kb R) k), ∃ y : TFK (R := R) (Kb R) ⟶ A.A, 1 ≤ k →
      ∀ (p₁ : QkPt D.toPre (Kb W) k) (p' : QkPt D'.toPre (Kb W) k) (x' : TFK (R := W) (Kb W) ⟶ A'.A),
        QkExt em.toRingHom p p₁ → p'.y = hD.xe.symm p₁.y → IsPullGtF φ hD (Kb W) p₁.g p'.g →
        x'.left ≫ a = spMap em.toRingHom ≫ y.left → QkToAkU U'.toUnifPre (Kb W) k p' x' := by
    intro k p
    by_cases hk : 1 ≤ k
    swap
    · exact ⟨1, fun h => absurd h hk⟩
    by_cases hex : ∃ (p₁ : QkPt D.toPre (Kb W) k) (p' : QkPt D'.toPre (Kb W) k),
        QkExt em.toRingHom p p₁ ∧ p'.y = hD.xe.symm p₁.y ∧ IsPullGtF φ hD (Kb W) p₁.g p'.g
    swap
    · exact ⟨1, fun _ p₁ p' _ h₁ h₂ h₃ _ => absurd ⟨p₁, p', h₁, h₂, h₃⟩ hex⟩
    obtain ⟨p₁, p', h₁, h₂, h₃⟩ := hex
    obtain ⟨f, hf, hfk⟩ := GlobalTheory.TorsionIso.torsion_clause W (maximalIdeal W) hW' D' A' G' hG' U' (Kb W) k hk
    obtain ⟨z, hz, hzk⟩ := toA k (f p') (hfk p')
    obtain ⟨y, hy⟩ := desc k hk z hzk
    refine ⟨y, fun _ q₁ q' x' e₁ e₂ e₃ e₄ => ?_⟩
    obtain rfl : q₁ = p₁ := GlobalTheory.DegActCompare.qkExt_unique e₁ h₁
    obtain rfl : q' = p' := GlobalTheory.TorusExt.qk_ext (e₂.trans h₂.symm) (GlobalTheory.ArcPull.pullGt_unique hD hF e₃ h₃)
    rw [(hf.1 q' x')]
    refine Over.OverMorphism.ext (hpb.1.hom_ext ?_ ?_)
    · rw [e₄, ← hz, ← hy]
      exact (hΦ y).symm
    · rw [Over.w x', Over.w (f q')]
  choose lab hlab using key
  exact ⟨lab, W, inferInstance, inferInstance, inferInstance, φ, G', inferInstance, inferInstance, D', A', U', hD, a, iW, em,
    hW, hφ, hloc, hG', ⟨ga, hga, hpb, hLa⟩, hF, fun k hk p p₁ p' x' h₁ h₂ h₃ h₄ => hlab k p hk p₁ p' x' h₁ h₂ h₃ h₄⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionLabelsUniformisedDominatingTrait =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionLabelsUniformisedDominatingTraitStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionLabelsUniformisedDominatingTraitStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniTrait\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionLabelsUniformisedDominatingTrait\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorsionLabelsUniformisedDominatingTraitStatement =====
