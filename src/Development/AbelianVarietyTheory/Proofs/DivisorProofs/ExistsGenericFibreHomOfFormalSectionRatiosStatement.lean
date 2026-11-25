module

public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueFactorCompletedStalkOfMap
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsMonHomExtension
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SemiAbelianReductionAlongIsogenyStrictHenselian
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniformBaseChange.PullbackDegree.EpsPullbackFst
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.ExistsSecNonzeroLocusEqOfLbIso
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsIsoOfCompatibleAbelianThickenings
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GenericIsoAgreesOnCompletePoints
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ValRConstHom
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsIsoOfSectionRing
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.UniformizationLawsAndExpansionStatements
public import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.IsOpenOfMemIrreducibleComponentsOfFinite
public import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale
import Mathlib.AlgebraicGeometry.Sites.Fpqc
import Mathlib.CategoryTheory.ExtremalEpi
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Tactic.Linter.HaveILetI
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc
import Mathlib.RingTheory.Henselian
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.EqClosedPointOfNotMemRange
import Mathlib.RingTheory.AdicCompletion.LocalRing

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveActionThickeningEndosCompletePoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonHomExtensionOpenPartField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMorphismOfSectionRatiosVeryAmple, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralSectionsUniformisedGroupPower, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleFourthPowerPolarisedAbelianField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.VeryAmpleAlongPullbackTransportIso, Development.AbelianVarietyTheory.Proofs.DivisorProofs.VeryAmpleAlongPullbackTransportIsoStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleFourthPowerUniformisedGroup, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulOfMulAtDominantPairCommGroup, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatios, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatiosStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveActionThickeningEndosCompletePoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveActionThickeningEndosCompletePoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueFactorCompletedStalkOfMap\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.ThickEndo

variable {S S' : Scheme.{0}}

theorem homEquiv_mul' (φ : S' ⟶ S) (X : Over S') (A : Over S) [GrpObj A]
    (a b : (Over.map φ).obj X ⟶ A) :
    (Over.mapPullbackAdj φ).homEquiv X A (a * b) =
      (Over.mapPullbackAdj φ).homEquiv X A a * (Over.mapPullbackAdj φ).homEquiv X A b := by
  rw [Adjunction.homEquiv_unit, Adjunction.homEquiv_unit, Adjunction.homEquiv_unit, Hom.mul_def,
    Hom.mul_def, Functor.obj.μ_def, ← comp_lift_assoc, ← Category.assoc (lift _ _),
    Functor.Monoidal.lift_μ, CategoryTheory.Functor.map_comp]

theorem homEquiv_symm_mul' (φ : S' ⟶ S) (X : Over S') (A : Over S) [GrpObj A]
    (a b : X ⟶ (Over.pullback φ).obj A) :
    ((Over.mapPullbackAdj φ).homEquiv X A).symm (a * b) =
      ((Over.mapPullbackAdj φ).homEquiv X A).symm a * ((Over.mapPullbackAdj φ).homEquiv X A).symm b := by
  apply ((Over.mapPullbackAdj φ).homEquiv X A).injective
  rw [homEquiv_mul', Equiv.apply_symm_apply, Equiv.apply_symm_apply, Equiv.apply_symm_apply]

theorem homEquiv_symm_left' (t : S' ⟶ S) {Y : Over S'} {A : Over S} (q : Y ⟶ (Over.pullback t).obj A) :
    (((Over.mapPullbackAdj t).homEquiv Y A).symm q).left = q.left ≫ pullback.fst A.hom t := by
  have := _root_.GlobalTheory.ZJ.GenericTorus.homEquiv_left t (((Over.mapPullbackAdj t).homEquiv Y A).symm q)
  rw [Equiv.apply_symm_apply] at this
  exact this.symm

end GlobalTheory.ThickEndo

namespace GlobalTheory.ThickEndo

variable {R : Type} [CommRing R] (I : Ideal R) {B : Type} [CommRing B] [IsLocalRing B]

theorem le_comap_of_mem_range {φ : CommRingCat.of R ⟶ CommRingCat.of B}
    (h : Spec.map φ (closedPoint B) ∈ Set.range (thick R I 0)) :
    I ≤ (maximalIdeal B).comap φ.hom := by
  obtain ⟨y, hy⟩ := h
  intro a ha
  have h1 : a ∈ ((thick R I 0) y).asIdeal := by
    show Ideal.Quotient.mk (I ^ (0 + 1)) a ∈ y.asIdeal
    rw [Ideal.Quotient.eq_zero_iff_mem.2 (by simpa using ha)]
    exact zero_mem _
  rw [hy] at h1
  exact h1

def lev (φ : CommRingCat.of R ⟶ CommRingCat.of B) (hI : I ≤ (maximalIdeal B).comap φ.hom) (e : ℕ) :
    Sp (B ⧸ maximalIdeal B ^ (e + 1)) ⟶ Sp (R ⧸ I ^ (e + 1)) :=
  Spec.map (CommRingCat.ofHom (Ideal.quotientMap _ φ.hom
    ((Ideal.pow_right_mono hI (e + 1)).trans (Ideal.le_comap_pow _ _))))

variable {I}

theorem lev_thick (φ : CommRingCat.of R ⟶ CommRingCat.of B) (hI : I ≤ (maximalIdeal B).comap φ.hom) (e : ℕ) :
    lev I φ hI e ≫ thick R I e = thick B (maximalIdeal B) e ≫ Spec.map φ := by
  rw [lev, ← Spec.map_comp, ← Spec.map_comp]
  congr 1

theorem adicLevelMap_lev (φ : CommRingCat.of R ⟶ CommRingCat.of B) (hI : I ≤ (maximalIdeal B).comap φ.hom)
    (e : ℕ) : adicLevelMap (maximalIdeal B) (Nat.le_succ (e + 1)) ≫ lev I φ hI (e + 1) =
      lev I φ hI e ≫ thickTrans R I e := by
  rw [lev, lev, ← Spec.map_comp, ← Spec.map_comp]
  congr 1
  ext1
  exact Ideal.Quotient.ringHom_ext rfl

end GlobalTheory.ThickEndo

namespace GlobalTheory.ThickEndo

section Main

variable {R : Type} [CommRing R] {I : Ideal R} {G : Over (Sp R)} [GrpObj G] {B : Type} [CommRing B]
  [IsLocalRing B] {φ : CommRingCat.of R ⟶ CommRingCat.of B} (hI : I ≤ (maximalIdeal B).comap φ.hom)

abbrev lvl (e : ℕ) : Over (Sp (R ⧸ I ^ (e + 1))) := Over.mk (lev I φ hI e)

def incl (e : ℕ) : (Over.map (thick R I e)).obj (lvl hI e) ⟶ Over.mk (Spec.map φ) :=
  Over.homMk (thick B (maximalIdeal B) e) (lev_thick φ hI e).symm

def red (e : ℕ) (x : Over.mk (Spec.map φ) ⟶ G) : lvl hI e ⟶ thickObj R I e G :=
  (Over.mapPullbackAdj (thick R I e)).homEquiv (lvl hI e) G (incl hI e ≫ x)

theorem red_fst (e : ℕ) (x : Over.mk (Spec.map φ) ⟶ G) :
    (red hI e x).left ≫ pullback.fst G.hom (thick R I e) = thick B (maximalIdeal B) e ≫ x.left :=
  _root_.GlobalTheory.ZJ.GenericTorus.homEquiv_left _ _

theorem red_snd (e : ℕ) (x : Over.mk (Spec.map φ) ⟶ G) :
    (red hI e x).left ≫ pullback.snd G.hom (thick R I e) = lev I φ hI e :=
  Over.w (red hI e x)

omit [GrpObj G] in
theorem thickMap_fst (e : ℕ) :
    thickMap R I e G ≫ pullback.fst G.hom (thick R I (e + 1)) = pullback.fst G.hom (thick R I e) :=
  (pullback.lift_fst _ _ _).trans (Category.comp_id _)

omit [GrpObj G] in
theorem thickMap_snd (e : ℕ) :
    thickMap R I e G ≫ pullback.snd G.hom (thick R I (e + 1)) =
      pullback.snd G.hom (thick R I e) ≫ thickTrans R I e :=
  pullback.lift_snd _ _ _

theorem red_succ (e : ℕ) (x : Over.mk (Spec.map φ) ⟶ G) :
    adicLevelMap (maximalIdeal B) (Nat.le_succ (e + 1)) ≫ (red hI (e + 1) x).left =
      (red hI e x).left ≫ thickMap R I e G := by
  apply pullback.hom_ext
  · rw [Category.assoc, red_fst, Category.assoc, thickMap_fst, red_fst]
    exact adicLevelMap_ι_assoc (maximalIdeal B) (Nat.le_succ (e + 1)) x.left
  · rw [Category.assoc, red_snd, Category.assoc, thickMap_snd, ← Category.assoc, red_snd, adicLevelMap_lev]

variable (b : ∀ e : ℕ, thickObj R I e G ⟶ thickObj R I e G)

def fam (x : Over.mk (Spec.map φ) ⟶ G) (e : ℕ) : Sp (B ⧸ maximalIdeal B ^ (e + 1)) ⟶ G.left :=
  (red hI e x ≫ b e).left ≫ pullback.fst G.hom (thick R I e)

variable {b}

theorem fam_adic (hb : ∀ e, thickMap R I e G ≫ (b (e + 1)).left = (b e).left ≫ thickMap R I e G)
    (x : Over.mk (Spec.map φ) ⟶ G) : IsAdicFamily (maximalIdeal B) (fam hI b x) := fun e => by
  simp only [fam, Over.comp_left, Category.assoc]
  rw [← Category.assoc (adicLevelMap _ _), red_succ, Category.assoc, ← Category.assoc (thickMap R I e G),
    hb, Category.assoc, thickMap_fst]

variable (b) in
theorem fam_over (x : Over.mk (Spec.map φ) ⟶ G) (e : ℕ) :
    fam hI b x e ≫ G.hom = adicLevelι (maximalIdeal B) (e + 1) ≫ Spec.map φ := by
  have hw : (b e).left ≫ pullback.snd G.hom (thick R I e) = pullback.snd G.hom (thick R I e) := Over.w (b e)
  simp only [fam, Over.comp_left, Category.assoc]
  rw [pullback.condition, ← Category.assoc ((b e).left), hw, ← Category.assoc, red_snd, lev_thick]

variable [IsAdicComplete (maximalIdeal B) B]

theorem exists_lim (hb : ∀ e, thickMap R I e G ≫ (b (e + 1)).left = (b e).left ≫ thickMap R I e G)
    (x : Over.mk (Spec.map φ) ⟶ G) : ∃ g : Sp B ⟶ G.left, g ≫ G.hom = Spec.map φ ∧
      ∀ e, adicLevelι (maximalIdeal B) (e + 1) ≫ g = fam hI b x e :=
  (existsUnique_over_of_isAdicFamily (Spec.map φ) G.hom (fam_adic hI hb x) (fam_over hI b x)).exists

def lim (hb : ∀ e, thickMap R I e G ≫ (b (e + 1)).left = (b e).left ≫ thickMap R I e G)
    (x : Over.mk (Spec.map φ) ⟶ G) : Over.mk (Spec.map φ) ⟶ G :=
  Over.homMk (exists_lim hI hb x).choose (exists_lim hI hb x).choose_spec.1

theorem lim_level (hb : ∀ e, thickMap R I e G ≫ (b (e + 1)).left = (b e).left ≫ thickMap R I e G)
    (x : Over.mk (Spec.map φ) ⟶ G) (e : ℕ) :
    thick B (maximalIdeal B) e ≫ (lim hI hb x).left = fam hI b x e :=
  (exists_lim hI hb x).choose_spec.2 e

theorem incl_lim (hb : ∀ e, thickMap R I e G ≫ (b (e + 1)).left = (b e).left ≫ thickMap R I e G)
    (x : Over.mk (Spec.map φ) ⟶ G) (e : ℕ) :
    incl hI e ≫ lim hI hb x = ((Over.mapPullbackAdj (thick R I e)).homEquiv _ G).symm (red hI e x ≫ b e) := by
  apply Over.OverMorphism.ext
  rw [homEquiv_symm_left', Over.comp_left]
  exact lim_level hI hb x e

theorem lim_mul (hmon : ∀ e, IsMonHom (b e))
    (hb : ∀ e, thickMap R I e G ≫ (b (e + 1)).left = (b e).left ≫ thickMap R I e G)
    (x y : Over.mk (Spec.map φ) ⟶ G) : lim hI hb (x * y) = lim hI hb x * lim hI hb y := by
  have he : ∀ e, incl hI e ≫ lim hI hb (x * y) = incl hI e ≫ (lim hI hb x * lim hI hb y) := by
    intro e
    have := hmon e
    rw [comp_mul, incl_lim, incl_lim, incl_lim, red, comp_mul, homEquiv_mul', mul_comp, homEquiv_symm_mul']
    rfl
  exact Over.OverMorphism.ext (hom_ext_of_isHausdorff (maximalIdeal B) fun e => congrArg (·.left) (he e))

end Main

end GlobalTheory.ThickEndo


open GlobalTheory.ThickEndo in
theorem GlobalTheory.exists_mul_map_points_of_thickEndo : ∀ (R : Type) [CommRing R] (I : Ideal R) (G : Over (Sp R)) [GrpObj G] (b : ∀ e : ℕ, thickObj R I e G ⟶ thickObj R I e G), (∀ e, IsMonHom (b e)) → (∀ e, thickMap R I e G ≫ (b (e + 1)).left = (b e).left ≫ thickMap R I e G) → ∀ (B : Type) [CommRing B] [IsLocalRing B] [IsAdicComplete (maximalIdeal B) B] (s : Sp B ⟶ Sp R), s (closedPoint B) ∈ Set.range (thick R I 0) → ∃ Φ : (Over.mk s ⟶ G) → (Over.mk s ⟶ G), (∀ x y, Φ (x * y) = Φ x * Φ y) ∧ ∀ (x : Over.mk s ⟶ G) (e : ℕ), ∃ r : Sp (B ⧸ maximalIdeal B ^ (e + 1)) ⟶ (thickObj R I e G).left, r ≫ pullback.fst G.hom (thick R I e) = thick B (maximalIdeal B) e ≫ x.left ∧ r ≫ (b e).left ≫ pullback.fst G.hom (thick R I e) = thick B (maximalIdeal B) e ≫ (Φ x).left := by
  intro R _ I G _ b hmon hb B _ _ _ s hs
  obtain ⟨φ, rfl⟩ := Spec.map_surjective s
  have hI := le_comap_of_mem_range I hs
  refine ⟨lim hI hb, fun x y => lim_mul hI hmon hb x y, fun x e => ⟨(red hI e x).left, red_fst hI e x, ?_⟩⟩
  rw [lim_level hI hb x e]
  simp only [fam, Over.comp_left, Category.assoc]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveActionThickeningEndosCompletePoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonHomExtensionOpenPartField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonHomExtensionOpenPartField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsMonHomExtension\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SemiAbelianReductionAlongIsogenyStrictHenselian\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.AlgebraicGeometry.Sites.Fpqc\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.UniformBaseChange.PullbackDegree.EpsPullbackFst\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.GenericHomField

abbrev bc (K : Type) [Field K] : Sp (AlgebraicClosure K) ⟶ Sp K := spMap (algebraMap K (AlgebraicClosure K))

instance flat_bc (K : Type) [Field K] : Flat (bc K) := by
  rw [bc, spMap, Flat.SpecMap_iff]
  exact RingHom.Flat.of_isField (Field.toIsField K) _

instance surjective_bc (K : Type) [Field K] : Surjective (bc K) :=
  ⟨Function.surjective_to_subsingleton _⟩

variable {K : Type} [Field K]

theorem map_injective {X Y : Over (Sp K)} {u v : X ⟶ Y}
    (h : (Over.pullback (bc K)).map u = (Over.pullback (bc K)).map v) : u = v := by
  have : Epi (pullback.fst X.hom (bc K)) := Flat.epi_of_flat_of_surjective _
  ext1
  apply (cancel_epi (pullback.fst X.hom (bc K))).1
  rw [← (_root_.GlobalTheory.isPullback_overPullback_map_left (bc K) u).w, ← (_root_.GlobalTheory.isPullback_overPullback_map_left (bc K) v).w, h]

theorem map_mul' {X M : Over (Sp K)} [MonObj M] (a b : X ⟶ M) :
    (Over.pullback (bc K)).map (a * b) = (Over.pullback (bc K)).map a * (Over.pullback (bc K)).map b :=
  map_mul (Over.pullback (bc K)).homMonoidHom a b

theorem flat_mul {S : Scheme.{0}} (H V : Over S) [GrpObj H] [Flat H.hom] (j : V ⟶ H)
    [IsOpenImmersion j.left] : Flat ((fst V V ≫ j) * (snd V V ≫ j)).left := by
  let sh : H ⊗ H ⟶ H ⊗ H := lift (fst H H) (fst H H * snd H H)
  let sh' : H ⊗ H ⟶ H ⊗ H := lift (fst H H) ((fst H H)⁻¹ * snd H H)
  have e1 : sh ≫ sh' = 𝟙 _ := by
    ext <;> simp [sh, sh', MonObj.comp_mul, GrpObj.comp_inv]
  have e2 : sh' ≫ sh = 𝟙 _ := by
    ext <;> simp [sh, sh', MonObj.comp_mul]
  have : IsIso sh.left := ⟨sh'.left, by rw [← Over.comp_left, e1]; rfl, by rw [← Over.comp_left, e2]; rfl⟩
  have hm : (fst V V ≫ j) * (snd V V ≫ j) = (j ⊗ₘ j) ≫ sh ≫ snd H H := by
    simp [sh, Hom.mul_def]
  have : Flat (snd H H).left := by
    show Flat (pullback.snd H.hom H.hom); infer_instance
  have : IsOpenImmersion (j ⊗ₘ j).left := by
    rw [Over.tensorHom_left]; infer_instance
  rw [hm, Over.comp_left, Over.comp_left]
  infer_instance

theorem quasiCompact_mul {S : Scheme.{0}} (H V : Over S) [GrpObj H] [IsLocallyNoetherian H.left]
    [QuasiCompact H.hom] [QuasiSeparated H.hom] (j : V ⟶ H) [IsOpenImmersion j.left] :
    QuasiCompact ((fst V V ≫ j) * (snd V V ≫ j)).left := by
  have : QuasiCompact V.hom := by rw [← Over.w j]; infer_instance
  have : QuasiCompact (V ⊗ V).hom := by
    show QuasiCompact (pullback.fst V.hom V.hom ≫ V.hom); infer_instance
  have h2 : QuasiCompact (((fst V V ≫ j) * (snd V V ≫ j)).left ≫ H.hom) := by
    rw [Over.w]; infer_instance
  have h3 : QuasiSeparated H.hom := inferInstance
  exact MorphismProperty.of_postcomp (W := @QuasiCompact) (W' := @QuasiSeparated) _ H.hom h3 h2

theorem surjective_mul {K : Type} [Field K] (H V : Over (Sp K)) [GrpObj H] (hH : GlobalTheory.SS.SmConn H)
    (j : V ⟶ H) [IsOpenImmersion j.left] [Nonempty V.left] :
    Surjective ((fst V V ≫ j) * (snd V V ≫ j)).left := by
  have hH' := GlobalTheory.IsogRed.smConn_baseChange (bc K) H hH
  obtain ⟨_, hs, _, _, _⟩ := hH
  obtain ⟨_, hs', _, _, _⟩ := hH'
  have : IsIntegral ((Over.pullback (bc K)).obj H).left :=
    isIntegral_of_smooth_of_geometricallyConnected ((Over.pullback (bc K)).obj H).hom
  have hj' : IsOpenImmersion ((Over.pullback (bc K)).map j).left :=
    MorphismProperty.of_isPullback (_root_.GlobalTheory.isPullback_overPullback_map_left (bc K) j).flip inferInstance
  have hV' : Nonempty ((Over.pullback (bc K)).obj V).left := by
    obtain ⟨v⟩ := ‹Nonempty V.left›
    obtain ⟨w, -⟩ := (pullback.fst V.hom (bc K)).surjective v
    exact ⟨w⟩
  have hflat : Flat ((Over.pullback (bc K)).map ((fst V V ≫ j) * (snd V V ≫ j))).left :=
    MorphismProperty.of_isPullback (_root_.GlobalTheory.isPullback_overPullback_map_left (bc K) _).flip (flat_mul H V j)
  have htr : ∀ (a x : 𝟙_ (Over (Sp (AlgebraicClosure K))) ⟶ (Over.pullback (bc K)).obj H),
      x ≫ (GlobalTheory.SS.transl a).hom = a * x := fun a x =>
    (GlobalTheory.GenericHom.point_comp_mul x a (𝟙 _)).trans (by rw [Category.comp_id])
  have hdec : ∀ h : 𝟙_ (Over (Sp (AlgebraicClosure K))) ⟶ (Over.pullback (bc K)).obj H,
      ∃ a x : 𝟙_ (Over (Sp (AlgebraicClosure K))) ⟶ (Over.pullback (bc K)).obj V,
      (a ≫ (Over.pullback (bc K)).map j) * (x ≫ (Over.pullback (bc K)).map j) = h := by
    intro h
    obtain ⟨u, hu⟩ := GlobalTheory.GenericHom.exists_generic ((Over.pullback (bc K)).map j)
      [Iso.refl _, asIso (ι[(Over.pullback (bc K)).obj H]) ≪≫ GlobalTheory.SS.transl h]
    obtain ⟨x, hx⟩ := hu (Iso.refl _) (by simp)
    obtain ⟨a, ha⟩ := hu (asIso (ι[(Over.pullback (bc K)).obj H]) ≪≫ GlobalTheory.SS.transl h) (by simp)
    refine ⟨a, x, ?_⟩
    rw [ha, hx, Iso.trans_hom, ← Category.assoc, htr, asIso_hom, Iso.refl_hom, Category.comp_id,
      ← Hom.inv_def, inv_mul_cancel_right]
  have hrange : ∀ y, y ∈ Set.range ((Over.pullback (bc K)).map ((fst V V ≫ j) * (snd V V ≫ j))).left := by
    intro y
    obtain ⟨h, hh⟩ := GlobalTheory.GenericHom.exists_point_mem ((Over.pullback (bc K)).obj H) (closure {y})
      isClosed_closure.isLocallyClosed ⟨y, subset_closure rfl⟩
    obtain ⟨a, x, hax⟩ := hdec h
    let t := lift a x ≫ Functor.LaxMonoidal.μ (Over.pullback (bc K)) V V
    have ht : t ≫ (Over.pullback (bc K)).map ((fst V V ≫ j) * (snd V V ≫ j)) = h := by
      rw [map_mul', Functor.map_comp, Functor.map_comp, MonObj.comp_mul, ← hax]
      simp only [t, Category.assoc]
      rw [← Category.assoc (Functor.LaxMonoidal.μ _ V V), Functor.Monoidal.μ_fst,
        ← Category.assoc (Functor.LaxMonoidal.μ _ V V), Functor.Monoidal.μ_snd, lift_fst_assoc, lift_snd_assoc]
    have hpt : ((Over.pullback (bc K)).map ((fst V V ≫ j) * (snd V V ≫ j))).left
        (t.left (IsLocalRing.closedPoint (AlgebraicClosure K))) =
        h.left (IsLocalRing.closedPoint (AlgebraicClosure K)) := by
      have := congrArg (fun φ => φ.left (IsLocalRing.closedPoint (AlgebraicClosure K))) ht
      exact this
    exact (hflat.generalizingMap).stableUnderGeneralization_range
      (specializes_iff_mem_closure.2 (hh _)) ⟨_, hpt⟩
  refine ⟨fun y => ?_⟩
  obtain ⟨yb, rfl⟩ := (pullback.fst H.hom (bc K)).surjective y
  obtain ⟨w, rfl⟩ := hrange yb
  exact ⟨pullback.fst _ (bc K) w, by
    rw [← Scheme.Hom.comp_apply, ← (_root_.GlobalTheory.isPullback_overPullback_map_left (bc K) _).w, Scheme.Hom.comp_apply]⟩

theorem exists_monHom_extension_of_field : ∀ (K : Type) [Field K] (H G V : Over (Sp K)) [GrpObj H] [GrpObj G], GlobalTheory.SS.SmConn H → GlobalTheory.SS.SmConn G → ∀ (j : V ⟶ H) (f : V ⟶ G), IsOpenImmersion j.left → Nonempty V.left → (∀ (Z : Over (Sp K)) (u₁ u₂ u₃ : Z ⟶ V), (u₁ ≫ j) * (u₂ ≫ j) = u₃ ≫ j → (u₁ ≫ f) * (u₂ ≫ f) = u₃ ≫ f) → ∃ F : H ⟶ G, IsMonHom F ∧ j ≫ F = f := by
  intro K _ H G V _ _ hH hG j f hj hV hm
  have hj' : IsOpenImmersion ((Over.pullback (bc K)).map j).left :=
    MorphismProperty.of_isPullback (_root_.GlobalTheory.isPullback_overPullback_map_left (bc K) j).flip hj
  have hV' : Nonempty ((Over.pullback (bc K)).obj V).left := by
    obtain ⟨v⟩ := hV
    obtain ⟨w, -⟩ := (pullback.fst V.hom (bc K)).surjective v
    exact ⟨w⟩
  have hpts : ∀ x y z : 𝟙_ (Over (Sp (AlgebraicClosure K))) ⟶ (Over.pullback (bc K)).obj V,
      (x ≫ (Over.pullback (bc K)).map j) * (y ≫ (Over.pullback (bc K)).map j) = z ≫ (Over.pullback (bc K)).map j →
      (x ≫ (Over.pullback (bc K)).map f) * (y ≫ (Over.pullback (bc K)).map f) = z ≫ (Over.pullback (bc K)).map f := by
    intro x y z hxyz
    obtain ⟨x', rfl⟩ := ((Over.mapPullbackAdj (bc K)).homEquiv _ V).surjective x
    obtain ⟨y', rfl⟩ := ((Over.mapPullbackAdj (bc K)).homEquiv _ V).surjective y
    obtain ⟨z', rfl⟩ := ((Over.mapPullbackAdj (bc K)).homEquiv _ V).surjective z
    simp only [← Adjunction.homEquiv_naturality_right, ← ReciprocityTheory.ChartRestriction.G.Out.UBC.homEquiv_mul] at hxyz ⊢
    exact congrArg _ (hm _ x' y' z' (Equiv.injective _ hxyz))
  obtain ⟨Fb, hFb, hjF⟩ := GlobalTheory.GenericHom.exists_monHom_extension (AlgebraicClosure K)
    ((Over.pullback (bc K)).obj H) ((Over.pullback (bc K)).obj G) ((Over.pullback (bc K)).obj V)
    (GlobalTheory.IsogRed.smConn_baseChange _ H hH) (GlobalTheory.IsogRed.smConn_baseChange _ G hG)
    ((Over.pullback (bc K)).map j) ((Over.pullback (bc K)).map f) hj' hV' hpts
  let m : V ⊗ V ⟶ H := (fst V V ≫ j) * (snd V V ≫ j)
  let g : V ⊗ V ⟶ G := (fst V V ≫ f) * (snd V V ≫ f)
  have hPg : (Over.pullback (bc K)).map g = (Over.pullback (bc K)).map m ≫ Fb := by
    simp only [m, g, map_mul', Functor.map_comp, MonObj.mul_comp, Category.assoc, hjF]
  haveI := hj
  haveI := hV
  obtain ⟨_, hs, _, _, _⟩ := id hH
  have : IsLocallyNoetherian H.left := LocallyOfFiniteType.isLocallyNoetherian H.hom
  have hflat : Flat m.left := flat_mul H V j
  have hqc : QuasiCompact m.left := quasiCompact_mul H V j
  have hsurj : Surjective m.left := surjective_mul H V hH j
  have hcond : ∀ {Z : Scheme.{0}} (a b : Z ⟶ (V ⊗ V).left), a ≫ m.left = b ≫ m.left →
      a ≫ g.left = b ≫ g.left := by
    intro Z a b hab
    have hb : b ≫ (V ⊗ V).hom = a ≫ (V ⊗ V).hom := by
      rw [← Over.w m, ← Category.assoc, ← Category.assoc, hab]
    let a' : Over.mk (a ≫ (V ⊗ V).hom) ⟶ V ⊗ V := Over.homMk a rfl
    let b' : Over.mk (a ≫ (V ⊗ V).hom) ⟶ V ⊗ V := Over.homMk b hb
    have h1 : a' ≫ m = b' ≫ m := Over.OverMorphism.ext hab
    have h2 : a' ≫ g = b' ≫ g := map_injective (by
      rw [Functor.map_comp, Functor.map_comp, hPg, ← Category.assoc, ← Category.assoc,
        ← Functor.map_comp, ← Functor.map_comp, h1])
    exact congrArg CommaMorphism.left h2
  let F₀ : H.left ⟶ G.left := EffectiveEpi.desc m.left g.left hcond
  have hF₀ : m.left ≫ F₀ = g.left := EffectiveEpi.fac m.left g.left hcond
  have hw : F₀ ≫ G.hom = H.hom := by
    apply (cancel_epi m.left).1
    rw [← Category.assoc, hF₀, Over.w g, Over.w m]
  let F : H ⟶ G := Over.homMk F₀ hw
  have hmF : m ≫ F = g := Over.OverMorphism.ext hF₀
  have hmb : Epi ((Over.pullback (bc K)).map m).left := by
    have : Flat ((Over.pullback (bc K)).map m).left :=
      MorphismProperty.of_isPullback (_root_.GlobalTheory.isPullback_overPullback_map_left (bc K) m).flip hflat
    have : Surjective ((Over.pullback (bc K)).map m).left :=
      MorphismProperty.of_isPullback (_root_.GlobalTheory.isPullback_overPullback_map_left (bc K) m).flip hsurj
    exact Flat.epi_of_flat_of_surjective _
  have hPF : (Over.pullback (bc K)).map F = Fb := by
    ext1
    apply (cancel_epi ((Over.pullback (bc K)).map m).left).1
    rw [← Over.comp_left, ← Over.comp_left, ← Functor.map_comp, hmF, hPg]
  have hmul : ∀ (Z : Over (Sp K)) (x y : Z ⟶ H), (x * y) ≫ F = (x ≫ F) * (y ≫ F) := by
    intro Z x y
    apply map_injective
    rw [Functor.map_comp, map_mul', map_mul', Functor.map_comp, Functor.map_comp, hPF, MonObj.mul_comp]
  refine ⟨F, ?_, map_injective (by rw [Functor.map_comp, hPF, hjF])⟩
  have hone : (1 : 𝟙_ (Over (Sp K)) ⟶ H) ≫ F = 1 := by
    have h := hmul (𝟙_ (Over (Sp K))) 1 1
    rw [_root_.mul_one] at h
    exact _root_.mul_eq_left.1 h.symm
  have e1 : ∀ (A : Over (Sp K)) [GrpObj A], (η[A] : 𝟙_ _ ⟶ A) = 1 := fun A _ => by
    rw [Hom.one_def, toUnit_unique (toUnit _) (𝟙 _), Category.id_comp]
  refine ⟨?_, ?_⟩
  · rw [e1 H, e1 G, hone]
  · have h := hmul _ (fst H H) (snd H H)
    simpa [Hom.mul_def] using h

end GlobalTheory.GenericHomField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonHomExtensionOpenPartField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMorphismOfSectionRatiosVeryAmple =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMorphismOfSectionRatiosVeryAmple", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.ExistsSecNonzeroLocusEqOfLbIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

open GlobalTheory.LBGerm

theorem ratMap_gs_appLE {Z S : Scheme.{0}} (r : Z ⟶ S) (U : S.Opens) (h : ⊤ ≤ r ⁻¹ᵁ U) (w : Z) (a : Γ(S, U)) :
    gs r w U a = gs (𝟙 Z) w ⊤ ((r.appLE U ⊤ h).hom a) := by
  rw [Scheme.Hom.appLE, CommRingCat.comp_apply, gs_res (𝟙 Z) w h trivial, gs_pull (𝟙 Z) r w U (h trivial) a,
    Category.id_comp]

theorem ratMap_eq_of_gs_eq {T S : Scheme.{0}} (g₁ g₂ : T ⟶ S) {U : S.Opens} (hU : IsAffineOpen U)
    (h₁ : ∀ w, g₁ w ∈ U) (h₂ : ∀ w, g₂ w ∈ U) (h : ∀ (a : Γ(S, U)) (w : T), gs g₁ w U a = gs g₂ w U a) :
    g₁ = g₂ := by
  have hf : ⊤ ≤ g₁ ⁻¹ᵁ U := fun w _ => h₁ w
  have hg : ⊤ ≤ g₂ ⁻¹ᵁ U := fun w _ => h₂ w
  have key : ∀ (r : T ⟶ S) (hr : ⊤ ≤ r ⁻¹ᵁ U),
      (⊤ : T.Opens).ι ≫ r = (⊤ : T.Opens).toSpecΓ ≫ Spec.map (r.appLE U ⊤ hr) ≫ hU.fromSpec := by
    intro r hr
    rw [Scheme.Opens.toSpecΓ_SpecMap_appLE_assoc, hU.toSpecΓ_fromSpec, Scheme.Hom.resLE_comp_ι]
  have e : g₁.appLE U ⊤ hf = g₂.appLE U ⊤ hg := by
    ext a
    exact fn_ext fun w _ => (ratMap_gs_appLE g₁ U hf w a).symm.trans ((h a w).trans (ratMap_gs_appLE g₂ U hg w a))
  exact Scheme.hom_ext_of_forall g₁ g₂ fun w => ⟨⊤, trivial, by rw [key g₁ hf, key g₂ hg, e]⟩

theorem ratMap_gs_ofRingHom {X Y : Scheme.{0}} {U : X.Opens} (hU : IsAffineOpen U) (V : Y.Opens)
    (θ : Γ(X, U) →+* Γ(Y, V)) {Z : Scheme.{0}} (u : Z ⟶ V.toScheme) (w : Z) :
    (u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ) ≫ hU.fromSpec) w ∈ U ∧ ∀ b : Γ(X, U),
      gs (u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ) ≫ hU.fromSpec) w U b = gs (u ≫ V.ι) w V (θ b) := by
  have h0 : ⊤ ≤ hU.fromSpec ⁻¹ᵁ U := hU.fromSpec_preimage_self.ge
  have h' : ⊤ ≤ (u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ) ≫ hU.fromSpec) ⁻¹ᵁ U :=
    fun z _ => h0 (Set.mem_univ ((u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ)) z))
  have h : ⊤ ≤ (u ≫ V.ι) ⁻¹ᵁ V := fun z _ => (u z).2
  refine ⟨h' trivial, fun b => ?_⟩
  have h1 : hU.fromSpec.appLE U ⊤ h0 = (Scheme.ΓSpecIso _).inv := by
    rw [Scheme.Hom.appLE, IsAffineOpen.fromSpec_app_self, Category.assoc, ← Functor.map_comp]
    exact Category.comp_id _
  have h2 : (u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ) ≫ hU.fromSpec).appLE U ⊤ h' =
      hU.fromSpec.appLE U ⊤ h0 ≫ (u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ)).appTop := by
    have e := Scheme.Hom.appLE_comp_appLE (u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ)) hU.fromSpec U ⊤ ⊤ h0 le_rfl
    rw [show (u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ)).appLE ⊤ ⊤ le_rfl =
      (u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ)).appTop from Scheme.Hom.appLE_eq_app (f := u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ)) (U := ⊤)] at e
    simpa only [Category.assoc] using e.symm
  have h3 : (u ≫ V.ι).appLE V ⊤ h = V.topIso.inv ≫ u.appTop := by
    rw [← Scheme.Hom.appLE_comp_appLE u V.ι V ⊤ ⊤ (fun x _ => x.2) le_rfl]
    erw [Scheme.Opens.ι_appLE]
    simp only [Scheme.Opens.topIso_inv]
    congr 1
    exact Scheme.Hom.appLE_eq_app (f := u) (U := ⊤)
  have h4 : (u ≫ V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ) ≫ hU.fromSpec).appLE U ⊤ h' =
      CommRingCat.ofHom θ ≫ (u ≫ V.ι).appLE V ⊤ h := by
    rw [h2, h1, h3, Scheme.Hom.comp_appTop, Scheme.Hom.comp_appTop, Scheme.Opens.toSpecΓ_appTop]
    simp only [Category.assoc]
    rw [Scheme.ΓSpecIso_naturality_assoc]
    exact Iso.inv_hom_id_assoc _ _
  rw [ratMap_gs_appLE _ U h' w b, ratMap_gs_appLE _ V h w (θ b), h4]
  rfl

theorem ratMap_gs_eval₂ {K : Type} [CommRing K] {Z S S' : Scheme.{0}} {Idx : Type} (g₁ : Z ⟶ S) (g₂ : Z ⟶ S')
    {U₁ : S.Opens} {U₂ : S'.Opens} (w : Z) (hw₁ : g₁ w ∈ U₁) (hw₂ : g₂ w ∈ U₂) (f₁ : K →+* Γ(S, U₁))
    (f₂ : K →+* Γ(S', U₂)) (r₁ : Idx → Γ(S, U₁)) (r₂ : Idx → Γ(S', U₂))
    (hc : ∀ a, gs g₁ w U₁ (f₁ a) = gs g₂ w U₂ (f₂ a)) (hr : ∀ l, gs g₁ w U₁ (r₁ l) = gs g₂ w U₂ (r₂ l))
    (P : MvPolynomial Idx K) :
    gs g₁ w U₁ (MvPolynomial.eval₂Hom f₁ r₁ P) = gs g₂ w U₂ (MvPolynomial.eval₂Hom f₂ r₂ P) := by
  induction P using MvPolynomial.induction_on with
  | C a => simp only [MvPolynomial.eval₂Hom_C]; exact hc a
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), gs_add _ _ _ hw₁, gs_add _ _ _ hw₂, hp, hq]
  | mul_X p n hp => rw [map_mul, map_mul, gs_mul _ _ _ hw₁, gs_mul _ _ _ hw₂, hp, MvPolynomial.eval₂Hom_X',
      MvPolynomial.eval₂Hom_X', hr n]

theorem ratMap_gs_cst {K : Type} [CommRing K] {Z S : Scheme.{0}} (p : S ⟶ Spec (CommRingCat.of K)) (g : Z ⟶ S)
    (U : S.Opens) (w : Z) (hw : g w ∈ U) (a : K) :
    gs g w U (AbLaw.cst p U a) = gs (g ≫ p) w ⊤ ((Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom a) := by
  rw [AbLaw.cst, RingHom.comp_apply, RingHom.comp_apply, AbLaw.rs, gs_res g w le_top hw]
  exact gs_pull g p w ⊤ trivial _

theorem ratMap_key {A X Z : Scheme.{0}} {L : LB X} (hL : L.IsLB) (π : A ⟶ X) {k k' m : ℕ}
    (σ : Fin (m + 1) → H0 L k) (hcov : ⨆ i, π ⁻¹ᵁ nonzeroLocus (σ i) = ⊤) (s₀ : H0 L k) (t₀ : H0 L k')
    (t : Fin (m + 1) → H0 L k') (i₀ : Fin (m + 1)) (r : Fin (m + 1) → Γ(A, π ⁻¹ᵁ nonzeroLocus (σ i₀)))
    (hr : ∀ (j : Fin (m + 1)) (c : Fin 1 → L.ι) (a : A), π a ∈ nonzeroLocus (σ i₀) → π a ∈ secChart L c →
      secGerm π a (σ j) c = gs (𝟙 A) a (π ⁻¹ᵁ nonzeroLocus (σ i₀)) (r j) * secGerm π a (σ i₀) c)
    (c : Fin 1 → L.ι) (g z : Z ⟶ A) (w : Z) (hc : (g ≫ π) w ∈ secChart L c)
    (ht₀ : IsUnit (secGerm (g ≫ π) w t₀ c)) (hti : IsUnit (secGerm (g ≫ π) w (t i₀) c))
    (hrat : ∀ i, SecRatioEq L (z ≫ π) (g ≫ π) (σ i) s₀ (t i) t₀) :
    z w ∈ π ⁻¹ᵁ nonzeroLocus (σ i₀) ∧ ∀ (l : Fin (m + 1)) (ρ : Z.presheaf.stalk w),
      ρ * secGerm (g ≫ π) w (t i₀) c = secGerm (g ≫ π) w (t l) c →
        gs z w (π ⁻¹ᵁ nonzeroLocus (σ i₀)) (r l) = ρ := by
  obtain ⟨l₀, hl₀⟩ := TopologicalSpace.Opens.mem_iSup.1
    (show z w ∈ ⨆ i, π ⁻¹ᵁ nonzeroLocus (σ i) by rw [hcov]; trivial)
  obtain ⟨j, hj⟩ := exists_chart hL (π (z w))
  let c' : Fin 1 → L.ι := fun _ => j
  have hc' : (z ≫ π) w ∈ secChart L c' := Set.mem_iInter.2 fun _ => hj
  have germ := fun i => secRatioEq_iff_germ.1 (hrat i) w c' c hc' hc
  have uσ : IsUnit (secGerm (z ≫ π) w (σ l₀) c') := (GlobalTheory.mem_nonzeroLocus_iff_pull (σ l₀) (z ≫ π) w hc').1 hl₀
  have us₀ : IsUnit (secGerm (z ≫ π) w s₀ c') := by
    have h := uσ.mul ht₀
    rw [germ l₀] at h
    exact isUnit_of_mul_isUnit_left h
  have uσi : IsUnit (secGerm (z ≫ π) w (σ i₀) c') := by
    have h := us₀.mul hti
    rw [← germ i₀] at h
    exact isUnit_of_mul_isUnit_left h
  have hD : z w ∈ π ⁻¹ᵁ nonzeroLocus (σ i₀) := (GlobalTheory.mem_nonzeroLocus_iff_pull (σ i₀) (z ≫ π) w hc').2 uσi
  refine ⟨hD, fun l ρ hρ => ?_⟩
  have hrl := congrArg (z.stalkMap w).hom (hr l c' (z w) hD hc')
  rw [map_mul, ← secGerm_comp z π w _ hc', ← secGerm_comp z π w _ hc', ← gs_stalkMap z w _ hD] at hrl
  refine (us₀.mul hti).mul_right_cancel ?_
  linear_combination (-(gs z w (π ⁻¹ᵁ nonzeroLocus (σ i₀)) (r l))) * germ i₀ + (-(secGerm (g ≫ π) w t₀ c)) * hrl +
    germ l + (-(secGerm (z ≫ π) w s₀ c')) * hρ

theorem exists_morphism_of_secRatio : ∀ (K : Type) [Field K] (A : Over (Sp K)) [IsIntegral A.left] (X : Scheme.{0}) (L : LB X), L.IsLB → ∀ (π : A.left ⟶ X) (k k' m : ℕ) (σ : Fin (m + 1) → H0 L k), VeryAmpleAlong A.hom π L σ → ∀ (s₀ : H0 L k) (t₀ : H0 L k') (t : Fin (m + 1) → H0 L k'), (∃ a : A.left, π a ∈ nonzeroLocus t₀) → ∀ (Y : Over (Sp K)) (x y : Y ⟶ A), IsDominant x.left → (∀ i, SecRatioEq L (y.left ≫ π) (x.left ≫ π) (σ i) s₀ (t i) t₀) → ∃ (V : Over (Sp K)) (j f : V ⟶ A), IsOpenImmersion j.left ∧ Nonempty V.left ∧ ∀ (Z : Over (Sp K)) (u : Z ⟶ V) (z : Z ⟶ A), (∀ i, SecRatioEq L (z.left ≫ π) ((u ≫ j).left ≫ π) (σ i) s₀ (t i) t₀) → u ≫ f = z := by
  intro K _ A _ X L hL π k k' m σ hva s₀ t₀ t ⟨a, ha⟩ Y x y hdom hrat
  haveI := hdom
  obtain ⟨hcov, hloc⟩ := hva
  obtain ⟨q, hq⟩ := x.left.denseRange.exists_mem_open (π ⁻¹ᵁ nonzeroLocus t₀).isOpen ⟨a, ha⟩
  obtain ⟨i₀, hi₀⟩ := TopologicalSpace.Opens.mem_iSup.1
    (show y.left q ∈ ⨆ i, π ⁻¹ᵁ nonzeroLocus (σ i) by rw [hcov]; trivial)
  obtain ⟨hD, r, hr, hsurj⟩ := hloc i₀
  obtain ⟨jx, hjx⟩ := exists_chart hL (π (x.left q))
  obtain ⟨jy, hjy⟩ := exists_chart hL (π (y.left q))
  let c : Fin 1 → L.ι := fun _ => jx
  let c' : Fin 1 → L.ι := fun _ => jy
  have hcx : (x.left ≫ π) q ∈ secChart L c := Set.mem_iInter.2 fun _ => hjx
  have hcy : (y.left ≫ π) q ∈ secChart L c' := Set.mem_iInter.2 fun _ => hjy
  have e := secRatioEq_iff_germ.1 (hrat i₀) q c' c hcy hcx
  have u1 : IsUnit (secGerm (y.left ≫ π) q (σ i₀) c') := (GlobalTheory.mem_nonzeroLocus_iff_pull (σ i₀) (y.left ≫ π) q hcy).1 hi₀
  have u2 : IsUnit (secGerm (x.left ≫ π) q t₀ c) := (GlobalTheory.mem_nonzeroLocus_iff_pull t₀ (x.left ≫ π) q hcx).1 hq
  have u3 : IsUnit (secGerm (x.left ≫ π) q (t i₀) c) := by
    have h := u1.mul u2
    rw [e] at h
    exact isUnit_of_mul_isUnit_right h
  let W₀ : A.left.Opens := π ⁻¹ᵁ secChart L c
  let b : H0 L k' → Γ(A.left, W₀) := fun s => (π.app (secChart L c)).hom (s.f c)
  let V : A.left.Opens := A.left.basicOpen (b t₀ * b (t i₀))
  have hVW : V ≤ W₀ := A.left.basicOpen_le _
  have hb : ∀ {Z : Scheme.{0}} (g : Z ⟶ A.left) (w : Z) (_ : g w ∈ W₀) (s : H0 L k'),
      gs g w W₀ (b s) = secGerm (g ≫ π) w s c := fun g w hw s => gs_pull g π w _ hw _
  have memV : ∀ {Z : Scheme.{0}} (g : Z ⟶ A.left) (w : Z), g w ∈ V → (g ≫ π) w ∈ secChart L c ∧
      IsUnit (secGerm (g ≫ π) w t₀ c) ∧ IsUnit (secGerm (g ≫ π) w (t i₀) c) := by
    intro Z g w hw
    have hW : g w ∈ W₀ := hVW hw
    have h := (GlobalTheory.LBGerm.isUnit_gs_iff g w W₀ hW _).2 hw
    rw [gs_mul g w W₀ hW, hb g w hW, hb g w hW] at h
    exact ⟨hW, isUnit_of_mul_isUnit_left h, isUnit_of_mul_isUnit_right h⟩
  have hxq : x.left q ∈ V :=
    (GlobalTheory.LBGerm.isUnit_gs_iff x.left q W₀ hcx (b t₀ * b (t i₀))).1
      (by rw [gs_mul _ q W₀ hcx, hb _ q hcx, hb _ q hcx]; exact u2.mul u3)
  have hu : IsUnit ((A.left.presheaf.map (homOfLE hVW).op).hom (b (t i₀))) := by
    have h := A.left.toRingedSpace.isUnit_res_basicOpen (b t₀ * b (t i₀))
    rw [map_mul] at h
    exact isUnit_of_mul_isUnit_right h
  let ρ : Fin (m + 1) → Γ(A.left, V) := fun l =>
    (A.left.presheaf.map (homOfLE hVW).op).hom (b (t l)) * ↑hu.unit⁻¹
  have hρ : ∀ {Z : Scheme.{0}} (g : Z ⟶ A.left) (w : Z) (_ : g w ∈ V) (l : Fin (m + 1)),
      gs g w V (ρ l) * secGerm (g ≫ π) w (t i₀) c = secGerm (g ≫ π) w (t l) c := by
    intro Z g w hw l
    have hW : g w ∈ W₀ := hVW hw
    have one : gs g w V 1 = 1 := by rw [gs_eq g w V hw, map_one, map_one]
    rw [← hb g w hW, ← hb g w hW, ← gs_res g w hVW hw (b (t i₀)), ← gs_res g w hVW hw (b (t l)),
      gs_mul g w V hw, _root_.mul_assoc, ← gs_mul g w V hw, hu.val_inv_mul, one, _root_.mul_one]
  let ev := MvPolynomial.eval₂Hom (AbLaw.cst A.hom (π ⁻¹ᵁ nonzeroLocus (σ i₀))) r
  let ev' := MvPolynomial.eval₂Hom (AbLaw.cst A.hom V) ρ
  have transfer : ∀ {Z : Scheme.{0}} (g z : Z ⟶ A.left) (w : Z), g w ∈ V → g ≫ A.hom = z ≫ A.hom →
      (∀ i, SecRatioEq L (z ≫ π) (g ≫ π) (σ i) s₀ (t i) t₀) →
      z w ∈ π ⁻¹ᵁ nonzeroLocus (σ i₀) ∧ ∀ P, gs g w V (ev' P) = gs z w _ (ev P) := by
    intro Z g z w hw hp hrt
    obtain ⟨hc, h0, hi⟩ := memV g w hw
    obtain ⟨hzD, hR⟩ := ratMap_key hL π σ hcov s₀ t₀ t i₀ r hr c g z w hc h0 hi hrt
    refine ⟨hzD, ratMap_gs_eval₂ g z w hw hzD _ _ ρ r (fun a => ?_) (fun l => (hR l _ (hρ g w hw l)).symm)⟩
    rw [ratMap_gs_cst A.hom g V w hw, ratMap_gs_cst A.hom z _ w hzD, hp]
  have hker : RingHom.ker ev ≤ RingHom.ker ev' := by
    intro P hP
    rw [RingHom.mem_ker] at hP ⊢
    apply app_injective_of_isDominant x.left V
    rw [map_zero]
    refine fn_ext fun w hw => ?_
    have tr := transfer x.left y.left w hw ((Over.w x).trans (Over.w y).symm) hrat
    rw [gs_pull (𝟙 _) x.left w V hw, Category.id_comp, tr.2 P, hP, GlobalTheory.LBGerm.gs_zero _ _ _ tr.1,
      GlobalTheory.LBGerm.gs_zero _ _ _ hw]
  let θ := (RingHom.liftOfSurjective ev hsurj) ⟨ev', hker⟩
  have hθ : ∀ P, θ (ev P) = ev' P := RingHom.liftOfSurjective_comp_apply ev hsurj ⟨ev', hker⟩
  let f₀ : V.toScheme ⟶ A.left := V.toSpecΓ ≫ Spec.map (CommRingCat.ofHom θ) ≫ hD.fromSpec
  have hf₀ : ∀ {Z : Scheme.{0}} (u : Z ⟶ V.toScheme) (w : Z), (u ≫ f₀) w ∈ π ⁻¹ᵁ nonzeroLocus (σ i₀) ∧
      ∀ P, gs (u ≫ f₀) w _ (ev P) = gs (u ≫ V.ι) w V (ev' P) := fun u w => by
    obtain ⟨h1, h2⟩ := ratMap_gs_ofRingHom hD V θ u w
    exact ⟨h1, fun P => (h2 (ev P)).trans (by rw [hθ])⟩
  have hmem : ∀ {Z : Scheme.{0}} (u : Z ⟶ V.toScheme) (w : Z), (u ≫ V.ι) w ∈ V := fun u w => (u w).2
  have hover : f₀ ≫ A.hom = V.ι ≫ A.hom := by
    refine ratMap_eq_of_gs_eq _ _ (isAffineOpen_top (Sp K)) (fun _ => trivial) (fun _ => trivial) fun a w => ?_
    obtain ⟨a', rfl⟩ : ∃ a' : K, (Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom a' = a :=
      ⟨(Scheme.ΓSpecIso (CommRingCat.of K)).hom.hom a, by simp⟩
    have h := hf₀ (𝟙 V.toScheme) w
    have hc := h.2 (MvPolynomial.C a')
    rw [MvPolynomial.eval₂Hom_C, MvPolynomial.eval₂Hom_C, ratMap_gs_cst _ _ _ w h.1,
      ratMap_gs_cst _ _ _ w (hmem (𝟙 _) w)] at hc
    simpa only [Category.id_comp] using hc
  refine ⟨Over.mk (V.ι ≫ A.hom), Over.homMk V.ι rfl, Over.homMk f₀ hover, ?_, ⟨⟨x.left q, hxq⟩⟩, ?_⟩
  · exact (inferInstance : IsOpenImmersion V.ι)
  · intro Z u z hz
    apply Over.OverMorphism.ext
    change u.left ≫ f₀ = z.left
    have hz' : ∀ i, SecRatioEq L (z.left ≫ π) ((u.left ≫ V.ι) ≫ π) (σ i) s₀ (t i) t₀ := hz
    have hp : (u.left ≫ V.ι) ≫ A.hom = z.left ≫ A.hom := by
      rw [Category.assoc]
      exact (Over.w u).trans (Over.w z).symm
    refine ratMap_eq_of_gs_eq _ _ hD (fun w => (hf₀ u.left w).1)
      (fun w => (transfer _ _ w (hmem u.left w) hp hz').1) fun b' w => ?_
    obtain ⟨P, rfl⟩ := hsurj b'
    exact ((hf₀ u.left w).2 P).trans ((transfer _ _ w (hmem u.left w) hp hz').2 P)

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMorphismOfSectionRatiosVeryAmple =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralSectionsUniformisedGroupPower =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralSectionsUniformisedGroupPower", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsIsoOfCompatibleAbelianThickenings\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GenericIsoAgreesOnCompletePoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem sections_move_integral : ∀ (R : Type) [CommRing R] [IsDomain R] (I : Ideal R) (D : DegData R I) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (U : Unif I D A G) {k m : ℕ}, 1 ≤ k → ∀ (b : Fin (m + 1) → H0 A.L k), ∃ (σ : Fin (m + 1) → H0 U.LG.L k) (c : Fin (m + 1) → (FractionRing R)ˣ), ∀ (y : ↥(pullback G.hom (jK R))) (j : Fin 1 → U.LG.L.ι) (jA : Fin 1 → A.L.ι), pullback.fst G.hom (jK R) y ∈ U.LG.L.U (j 0) → U.gen.hom.left y ∈ A.L.U (jA 0) → ∃ u : ((pullback G.hom (jK R)).presheaf.stalk y)ˣ, ∀ i, secGerm (pullback.fst G.hom (jK R)) y (σ i) j = u.val * gs (pullback.snd G.hom (jK R)) y ⊤ ((Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).inv.hom (c i : FractionRing R)) * secGerm (show pullback G.hom (jK R) ⟶ A.A.left from U.gen.hom.left) y (b i) jA := by
  intro R _ _ I D A G _ _ U k m hk b
  obtain ⟨w, hw⟩ := U.ext
  obtain ⟨w', hw', -⟩ := GlobalTheory.Algebraise.exists_swap _ _ w hw (𝟙 _) _ _ (Category.id_comp _) (Category.id_comp _)
  choose s hs using fun i => GlobalTheory.Algebraise.exists_down A.isLB U.LG.isLB U.gen.hom.left
    (pullback.fst G.hom (jK R)) w' hw' (b i)
  choose c' σ hc' hσ using fun i => GlobalTheory.FormalGeneric.exists_integral U hk (s i)
  refine ⟨σ, fun i => Units.mk0 (algebraMap R (FractionRing R) (c' i))
    ((map_ne_zero_iff _ (IsFractionRing.injective R (FractionRing R))).2 (hc' i)), fun y j jA hj hjA => ?_⟩
  refine ⟨(gw w' (𝟙 _) y (jA 0) (fun _ => j 0) ^ k)⁻¹, fun i => ?_⟩
  have e₁ := hs i _ (𝟙 _) y (jA 0) (j 0) hjA hj
  have e₂ := hσ i _ (𝟙 _) y (j 0) hj
  have hc : cst (pullback.snd G.hom (jK R) ≫ jK R) y (c' i) = gs (pullback.snd G.hom (jK R)) y ⊤
      ((Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).inv.hom (algebraMap R (FractionRing R) (c' i))) :=
    (gs_pull _ (jK R) y ⊤ trivial _).symm.trans
      (congrArg (gs _ y ⊤) (GlobalTheory.FormalGeneric.appTop_spec (algebraMap R (FractionRing R)) (c' i)))
  rw [Category.id_comp] at e₁ e₂
  rw [Category.id_comp, hc] at e₂
  rw [GlobalTheory.Algebraise.fin_one_const j, GlobalTheory.Algebraise.fin_one_const jA]
  change GlobalTheory.SectionRingIso.vl (σ i) _ y _ = _ * _ * GlobalTheory.SectionRingIso.vl (b i) _ y _
  rw [e₂, e₁, Units.val_mk0, ← Units.val_pow_eq_pow_val]
  generalize gw w' (𝟙 _) y (jA 0) (fun _ => j 0) ^ k = v
  rw [_root_.mul_assoc, mul_left_comm _ v.val, Units.inv_mul_cancel_left]
  rfl

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralSectionsUniformisedGroupPower =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleFourthPowerPolarisedAbelianField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleFourthPowerPolarisedAbelianField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ValRConstHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.FieldVA

variable {X : Scheme.{0}}

theorem nonzeroLocus_pullPow (L : LB X) (N : ℕ) (t : (lbPow L N).Sec) :
    nonzeroLocus (GlobalTheory.ZH.CrdMove.pullPow (𝟙 X) t) = nonzeroLocus t := by
  apply le_antisymm
  · refine iSup_le fun j y hy => ?_
    have hy' : y ∈ X.basicOpen ((Scheme.Hom.appLE (𝟙 X) _ _ (GlobalTheory.ZH.CrdMove.pow_chart_le L N (𝟙 X) j)).hom
        (t.f (fun _ => j 0))) := hy
    rw [Scheme.basicOpen_appLE] at hy'
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨_, hy'.2⟩
  · refine iSup_le fun j y hy => ?_
    refine TopologicalSpace.Opens.mem_iSup.2 ⟨fun _ => j PUnit.unit, ?_⟩
    have hc : y ∈ (lbPow L N).U j := X.basicOpen_le (t.f j) hy
    show y ∈ X.basicOpen ((Scheme.Hom.appLE (𝟙 X) _ _
      (GlobalTheory.ZH.CrdMove.pow_chart_le L N (𝟙 X) (fun _ => j PUnit.unit))).hom (t.f (fun _ => j PUnit.unit)))
    rw [Scheme.basicOpen_appLE]
    exact ⟨Set.mem_iInter.2 fun _ => Set.mem_iInter.1 hc PUnit.unit, hy⟩

end GlobalTheory.Mum.FieldVA

namespace GlobalTheory.Mum


open GlobalTheory.Mum.FieldVA in
theorem veryAmpleAlong_field (hA : AmpleSt) (K : Type) [Field K] (P : PolAV (Sp K)) :
    ∃ (m : ℕ) (b : Fin (m + 1) → H0 P.L 4), VeryAmpleAlong P.A.hom (𝟙 P.A.left) P.L b := by
  obtain ⟨m, t, hcov, hs⟩ := GlobalTheory.ZH.CrdMove.immBy_lbPow hA K P 4 le_rfl
  have hb : ∀ i, nonzeroLocus (GlobalTheory.ZH.CrdMove.pullPow (𝟙 P.A.left) (t i)) = nonzeroLocus (t i) :=
    fun i => nonzeroLocus_pullPow P.L 4 (t i)
  refine ⟨m, fun i => GlobalTheory.ZH.CrdMove.pullPow (𝟙 P.A.left) (t i), ?_, fun i => ?_⟩
  · refine _root_.top_le_iff.1 fun y _ => ?_
    obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.1
      (show y ∈ ⨆ i ∈ Set.univ, nonzeroLocus (t i) by rw [hcov]; trivial)
    obtain ⟨_, hi⟩ := TopologicalSpace.Opens.mem_iSup.1 hi
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨i, show y ∈ nonzeroLocus (GlobalTheory.ZH.CrdMove.pullPow (𝟙 P.A.left) (t i)) by
      rw [hb]; exact hi⟩
  obtain ⟨haff, r, hr, hsurj⟩ := hs i (Set.mem_univ i)
  have hW : (𝟙 P.A.left) ⁻¹ᵁ nonzeroLocus (GlobalTheory.ZH.CrdMove.pullPow (𝟙 P.A.left) (t i)) = nonzeroLocus (t i) := by
    rw [← hb i]; exact le_antisymm (fun y hy => hy) (fun y hy => hy)
  have le1 := hW.le
  have le2 := hW.ge
  have hconst : ∀ a, resG P.A.left le1 (constFn P.A.hom (nonzeroLocus (t i)) a) =
      AbLaw.cst P.A.hom ((𝟙 P.A.left) ⁻¹ᵁ nonzeroLocus (GlobalTheory.ZH.CrdMove.pullPow (𝟙 P.A.left) (t i))) a := by
    intro a
    have h2 : constFn P.A.hom ((𝟙 P.A.left) ⁻¹ᵁ nonzeroLocus (GlobalTheory.ZH.CrdMove.pullPow (𝟙 P.A.left) (t i))) a =
        AbLaw.cst P.A.hom ((𝟙 P.A.left) ⁻¹ᵁ nonzeroLocus (GlobalTheory.ZH.CrdMove.pullPow (𝟙 P.A.left) (t i))) a := rfl
    refine (fn_ext fun x hx => ?_).trans h2
    rw [gs_res _ x le1 hx, gs_constFn _ _ _ _ (le1 hx), gs_constFn _ _ _ _ hx]
  refine ⟨by rw [hW]; exact haff, fun j => resG P.A.left le1 (r j), fun j c a ha hc => ?_, ?_⟩
  · have hc' : a ∈ (lbPow P.L 4).U (fun _ => c 0) := Set.mem_iInter.2 fun _ => Set.mem_iInter.1 hc 0
    have key : ∀ s : (lbPow P.L 4).Sec, secGerm (𝟙 P.A.left) a (GlobalTheory.ZH.CrdMove.pullPow (𝟙 P.A.left) s) c =
        gs (𝟙 P.A.left) a ((lbPow P.L 4).U (fun _ => c 0)) (s.f (fun _ => c 0)) := fun s =>
      (gs_appLE (𝟙 P.A.left) _ _ _ (𝟙 P.A.left) a hc _).trans
        (congrArg (fun q => gs q a _ (s.f (fun _ => c 0))) (Category.id_comp _))
    have hm : (𝟙 P.A.left) a ∈ nonzeroLocus (t i) ⊓ (lbPow P.L 4).U (fun _ => c 0) := ⟨le1 ha, hc'⟩
    have e := congrArg (gs (𝟙 P.A.left) a _) (hr j (fun _ => c 0))
    rw [gs_res _ a _ hm, gs_mul _ a _ hm, gs_res _ a _ hm, gs_res _ a _ hm] at e
    rw [key, key, gs_res _ a le1 ha]
    exact e
  · have hρ : ∀ f, resG P.A.left le1 (resG P.A.left le2 f) = f := fun f => fn_ext fun x hx => by
      rw [gs_res _ x le1 hx, gs_res _ x le2 (le1 hx)]
    have hcl : Subring.closure (Set.range (constFn P.A.hom (nonzeroLocus (t i))) ∪ Set.range r) ≤
        (MvPolynomial.eval₂Hom (AbLaw.cst P.A.hom
          ((𝟙 P.A.left) ⁻¹ᵁ nonzeroLocus (GlobalTheory.ZH.CrdMove.pullPow (𝟙 P.A.left) (t i))))
          (fun j => resG P.A.left le1 (r j))).range.comap (resG P.A.left le1) := by
      refine Subring.closure_le.2 ?_
      rintro g (⟨a, rfl⟩ | ⟨j, rfl⟩)
      · exact Subring.mem_comap.2 (RingHom.mem_range.2 ⟨MvPolynomial.C a, by
          rw [MvPolynomial.eval₂Hom_C]; exact (hconst a).symm⟩)
      · exact Subring.mem_comap.2 (RingHom.mem_range.2 ⟨MvPolynomial.X j, by rw [MvPolynomial.eval₂Hom_X']⟩)
    intro f
    obtain ⟨p, hp⟩ := RingHom.mem_range.1 (Subring.mem_comap.1
      (hcl (hsurj ▸ Subring.mem_top (resG P.A.left le2 f))))
    exact ⟨p, hp.trans (hρ f)⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleFourthPowerPolarisedAbelianField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.VeryAmpleAlongPullbackTransportIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.VeryAmpleAlongPullbackTransportIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsIsoOfSectionRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum

theorem gs_abCst {R : Type} [CommRing R] {X Z : Scheme.{0}} (f : X ⟶ Spec (CommRingCat.of R)) (W : X.Opens)
    (r : Z ⟶ X) (z : Z) (hz : r z ∈ W) (x : R) :
    gs r z W (GlobalTheory.AbLaw.cst f W x) = gs (r ≫ f) z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom x) :=
  (gs_res r z le_top hz _).trans (gs_pull r f z ⊤ trivial _)

theorem gs_top_mul {R : Type} [CommRing R] {Z : Scheme.{0}} (q : Z ⟶ Spec (CommRingCat.of R)) (z : Z) (a b : R) :
    gs q z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom (a * b)) =
      gs q z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom a) *
        gs q z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom b) := by
  rw [map_mul]; exact gs_mul q z ⊤ trivial _ _

theorem isUnit_gs_top {R : Type} [CommRing R] {Z : Scheme.{0}} (q : Z ⟶ Spec (CommRingCat.of R)) (z : Z) (a : Rˣ) :
    IsUnit (gs q z ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom (a : R))) := by
  rw [gs_eq q z ⊤ trivial]
  exact ((a.isUnit.map _).map _).map _

theorem veryAmpleAlong_transport {K : Type} [Field K] {X Y XA : Scheme.{0}} (p : Y ⟶ Spec (CommRingCat.of K))
    (pA : XA ⟶ Spec (CommRingCat.of K)) (gn : Y ⟶ XA) [IsIso gn] (hp : gn ≫ pA = p) (π : Y ⟶ X) {L : LB X}
    (hL : L.IsLB) {LA : LB XA} (hLA : LA.IsLB) {k m : ℕ} (b : Fin (m + 1) → H0 LA k)
    (hb : VeryAmpleAlong pA (𝟙 XA) LA b) (σ : Fin (m + 1) → H0 L k) (c : Fin (m + 1) → Kˣ)
    (H : ∀ (y : Y) (j : Fin 1 → L.ι) (jA : Fin 1 → LA.ι), π y ∈ L.U (j 0) → gn y ∈ LA.U (jA 0) →
      ∃ u : (Y.presheaf.stalk y)ˣ, ∀ i, secGerm π y (σ i) j =
        u.val * gs p y ⊤ ((Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom (c i : K)) * secGerm gn y (b i) jA) :
    VeryAmpleAlong p π L σ := by
  classical

  have hmem : ∀ i (y : Y), y ∈ π ⁻¹ᵁ nonzeroLocus (σ i) ↔ gn y ∈ (𝟙 XA) ⁻¹ᵁ nonzeroLocus (b i) := by
    intro i y
    obtain ⟨j, hj⟩ := exists_chart hL (π y)
    obtain ⟨jA, hjA⟩ := exists_chart hLA (gn y)
    obtain ⟨u, hu⟩ := H y (fun _ => j) (fun _ => jA) hj hjA
    change π y ∈ nonzeroLocus (σ i) ↔ gn y ∈ nonzeroLocus (b i)
    rw [GlobalTheory.SectionRingIso.mem_iff_isUnit (σ i) π y (j := fun _ => j) hj,
      GlobalTheory.SectionRingIso.mem_iff_isUnit (b i) gn y (j := fun _ => jA) hjA]
    change IsUnit (secGerm π y (σ i) _) ↔ IsUnit (secGerm gn y (b i) _)
    rw [hu i, _root_.mul_assoc, IsUnit.mul_iff, IsUnit.mul_iff]
    simp only [u.isUnit, isUnit_gs_top p y (c i), true_and]
  have hW : ∀ i, π ⁻¹ᵁ nonzeroLocus (σ i) = gn ⁻¹ᵁ ((𝟙 XA) ⁻¹ᵁ nonzeroLocus (b i)) := fun i =>
    TopologicalSpace.Opens.ext (Set.ext fun y => hmem i y)
  refine ⟨?_, fun i => ⟨?_, ?_⟩⟩
  ·
    refine eq_top_iff.2 fun y _ => ?_
    have : gn y ∈ ⨆ i, (𝟙 XA) ⁻¹ᵁ nonzeroLocus (b i) := hb.1 ▸ trivial
    obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.1 this
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨i, (hmem i y).2 hi⟩
  · rw [hW i]; exact (hb.2 i).1.preimage gn
  · obtain ⟨-, ρ, hρ, hs⟩ := hb.2 i
    have le : π ⁻¹ᵁ nonzeroLocus (σ i) ≤ gn ⁻¹ᵁ ((𝟙 XA) ⁻¹ᵁ nonzeroLocus (b i)) := (hW i).le
    have ge : gn ⁻¹ᵁ ((𝟙 XA) ⁻¹ᵁ nonzeroLocus (b i)) ≤ π ⁻¹ᵁ nonzeroLocus (σ i) := (hW i).ge
    let φ : Γ(XA, (𝟙 XA) ⁻¹ᵁ nonzeroLocus (b i)) →+* Γ(Y, π ⁻¹ᵁ nonzeroLocus (σ i)) :=
      (GlobalTheory.AbLaw.rs Y le).comp (gn.app _).hom
    have gsφ : ∀ y (hy : y ∈ π ⁻¹ᵁ nonzeroLocus (σ i)) (a : Γ(XA, (𝟙 XA) ⁻¹ᵁ nonzeroLocus (b i))),
        gs (𝟙 Y) y _ (φ a) = gs gn y _ a := fun y hy a =>
      (gs_res (𝟙 Y) y le hy _).trans ((gs_pull (𝟙 Y) gn y _ (le hy) a).trans (by rw [Category.id_comp]))
    have hφc : ∀ x : K, φ (GlobalTheory.AbLaw.cst pA _ x) = GlobalTheory.AbLaw.cst p (π ⁻¹ᵁ nonzeroLocus (σ i)) x := fun x =>
      fn_ext fun y hy => by
        rw [gsφ y hy, gs_abCst pA _ gn y (le hy), gs_abCst p _ (𝟙 Y) y hy, hp, Category.id_comp]
    let r : Fin (m + 1) → Γ(Y, π ⁻¹ᵁ nonzeroLocus (σ i)) := fun j =>
      GlobalTheory.AbLaw.cst p (π ⁻¹ᵁ nonzeroLocus (σ i)) ((c j : K) / c i) * φ (ρ j)
    refine ⟨r, ?_, ?_⟩
    · intro j ch a ha hch
      obtain ⟨jA, hjA⟩ := exists_chart hLA (gn a)
      obtain ⟨u, hu⟩ := H a ch (fun _ => jA) (GlobalTheory.SectionRingIso.mem_ch.1 hch) hjA
      have haW : a ∈ π ⁻¹ᵁ nonzeroLocus (σ i) := ha
      have haV : gn a ∈ (𝟙 XA) ⁻¹ᵁ nonzeroLocus (b i) := le haW
      have hA : (𝟙 XA) (gn a) ∈ secChart LA (fun _ => jA) := GlobalTheory.SectionRingIso.mem_ch.2 hjA
      have key : ∀ j', secGerm gn a (b j') (fun _ => jA) =
          (gn.stalkMap a).hom (secGerm (𝟙 XA) (gn a) (b j') (fun _ => jA)) := fun j' => by
        have := secGerm_comp gn (𝟙 XA) a (b j') hA
        rwa [Category.comp_id] at this
      have e := congrArg (gn.stalkMap a).hom (hρ j (fun _ => jA) (gn a) haV hA)
      rw [map_mul, ← key, ← key, ← gs_stalkMap gn a _ haV] at e
      have hci : ((c j : K) / c i) * c i = c j := div_mul_cancel₀ _ (c i).ne_zero
      have hcst : gs p a ⊤ ((Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom (c j : K)) =
          gs p a ⊤ ((Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom ((c j : K) / c i)) *
            gs p a ⊤ ((Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom (c i : K)) := by
        rw [← gs_top_mul, hci]
      rw [hu j, hu i, gs_mul (𝟙 Y) a _ haW, gs_abCst p _ (𝟙 Y) a haW, gsφ a haW, e, Category.id_comp, hcst]
      ring
    · intro f
      obtain ⟨g0, hg0⟩ := (ConcreteCategory.bijective_of_isIso (gn.app ((𝟙 XA) ⁻¹ᵁ nonzeroLocus (b i)))).2
        (GlobalTheory.AbLaw.rs Y ge f)
      have hf : φ g0 = f := by
        change GlobalTheory.AbLaw.rs Y le ((gn.app _).hom g0) = f
        rw [hg0, GlobalTheory.AbLaw.rs_rs, GlobalTheory.AbLaw.rs_self]
      obtain ⟨P, hP⟩ := hs g0
      have hcomp : φ.comp (MvPolynomial.eval₂Hom (GlobalTheory.AbLaw.cst pA _) ρ) =
          MvPolynomial.eval₂Hom (GlobalTheory.AbLaw.cst p (π ⁻¹ᵁ nonzeroLocus (σ i))) (fun j => φ (ρ j)) :=
        MvPolynomial.ringHom_ext (fun x => by rw [RingHom.comp_apply, MvPolynomial.eval₂Hom_C, MvPolynomial.eval₂Hom_C, hφc])
          (fun j => by rw [RingHom.comp_apply, MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_X'])
      have hρr : ∀ j, MvPolynomial.eval₂Hom (GlobalTheory.AbLaw.cst p (π ⁻¹ᵁ nonzeroLocus (σ i))) r
          (MvPolynomial.C ((c i : K) / c j) * MvPolynomial.X j) = φ (ρ j) := fun j => by
        have h1 : ((c i : K) / c j) * ((c j : K) / c i) = 1 := by
          rw [div_mul_div_comm, _root_.mul_comm (c i : K)]
          exact div_self (mul_ne_zero (c j).ne_zero (c i).ne_zero)
        rw [map_mul, MvPolynomial.eval₂Hom_C, MvPolynomial.eval₂Hom_X']
        change GlobalTheory.AbLaw.cst p _ ((c i : K) / c j) * (GlobalTheory.AbLaw.cst p _ ((c j : K) / c i) * φ (ρ j)) = φ (ρ j)
        rw [← _root_.mul_assoc, ← map_mul, h1, map_one, _root_.one_mul]
      refine ⟨MvPolynomial.bind₁ (fun j => MvPolynomial.C ((c i : K) / c j) * MvPolynomial.X j) P, ?_⟩
      rw [MvPolynomial.eval₂Hom_bind₁]
      simp only [hρr]
      rw [← hf, ← hP, ← hcomp]
      rfl

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.VeryAmpleAlongPullbackTransportIso =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.VeryAmpleAlongPullbackTransportIsoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.VeryAmpleAlongPullbackTransportIsoStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VeryAmpleAlongPullbackTransportIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.VeryAmpleAlongPullbackTransportIsoStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleFourthPowerUniformisedGroup =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleFourthPowerUniformisedGroup", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralSectionsUniformisedGroupPower\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleFourthPowerPolarisedAbelianField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VeryAmpleAlongPullbackTransportIsoStatement\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.UniformizationLawsAndExpansionStatements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem GlobalTheory.Mum.exists_veryAmpleAlong_unif : ∀ (R : Type) [CommRing R] [IsDomain R] (I : Ideal R) (D : DegData R I) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (U : Unif I D A G), ∃ (m : ℕ) (σ : Fin (m + 1) → H0 U.LG.L 4), VeryAmpleAlong ((Over.pullback (jK R)).obj G).hom (pullback.fst G.hom (jK R)) U.LG.L σ := by
  intro R _ _ I D A G _ _ U
  obtain ⟨m, b, hb⟩ := _root_.GlobalTheory.Mum.veryAmpleAlong_field GlobalTheory.lawsAndExpansions.1.1.ample _ A
  obtain ⟨σ, c, H⟩ := _root_.GlobalTheory.Mum.sections_move_integral R I D A G U (k := 4) (by norm_num) b
  have : IsIso U.gen.hom.left := inferInstanceAs (IsIso ((Over.forget _).map U.gen.hom))
  exact ⟨m, σ, _root_.GlobalTheory.Mum.veryAmpleAlong_transport _ A.A.hom U.gen.hom.left (Over.w U.gen.hom) _ U.LG.isLB A.isLB b hb σ c H⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleFourthPowerUniformisedGroup =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulOfMulAtDominantPairCommGroup =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulOfMulAtDominantPairCommGroup", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsMonHomExtension\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.IsOpenOfMemIrreducibleComponentsOfFinite\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem mul_of_isDominant_pair : ∀ (K : Type) [Field K] (A : Over (Sp K)) [GrpObj A], GlobalTheory.SS.SmConn A → ∀ (V : Over (Sp K)) (j f : V ⟶ A), IsOpenImmersion j.left → ∀ (Y : Over (Sp K)) (x₁ x₂ y₁ y₂ : Y ⟶ A), IsDominant (lift x₁ x₂).left → (∀ (Z : Over (Sp K)) (w : Z ⟶ Y) (u : Z ⟶ V), u ≫ j = w ≫ x₁ → u ≫ f = w ≫ y₁) → (∀ (Z : Over (Sp K)) (w : Z ⟶ Y) (u : Z ⟶ V), u ≫ j = w ≫ x₂ → u ≫ f = w ≫ y₂) → (∀ (Z : Over (Sp K)) (w : Z ⟶ Y) (u : Z ⟶ V), u ≫ j = w ≫ (x₁ * x₂) → u ≫ f = w ≫ (y₁ * y₂)) → ∀ (Z : Over (Sp K)) (u₁ u₂ u₃ : Z ⟶ V), (u₁ ≫ j) * (u₂ ≫ j) = u₃ ≫ j → (u₁ ≫ f) * (u₂ ≫ f) = u₃ ≫ f := by
  intro K _ A _ hA V j f hj Y x₁ x₂ y₁ y₂ hdom h₁ h₂ h₃ Z u₁ u₂ u₃ hu
  obtain ⟨_, hsm, hsep, _, _⟩ := hA
  let R : A.left.Opens := j.left.opensRange
  let U : (A ⊗ A).left.Opens :=
    (fst A A).left ⁻¹ᵁ R ⊓ (snd A A).left ⁻¹ᵁ R ⊓ (fst A A * snd A A).left ⁻¹ᵁ R
  let W : Over (Sp K) := Over.mk (U.ι ≫ (A ⊗ A).hom)
  let ιW : W ⟶ A ⊗ A := Over.homMk U.ι rfl
  have : IsOpenImmersion ιW.left := inferInstanceAs (IsOpenImmersion U.ι)
  have hWU : ∀ q : W.left, ιW.left q ∈ U := fun q => (Scheme.Opens.range_ι U).subset ⟨q, rfl⟩
  have hR : ∀ (g : A ⊗ A ⟶ A) (q : W.left), ιW.left q ∈ g.left ⁻¹ᵁ R →
      (ιW ≫ g).left q ∈ Set.range j.left := fun g q h => by
    rw [Over.comp_left, Scheme.Hom.comp_apply]; exact h
  obtain ⟨v₁, hv₁⟩ := GlobalTheory.GenericHom.exists_lift j (ιW ≫ fst A A) fun q => hR _ q (hWU q).1.1
  obtain ⟨v₂, hv₂⟩ := GlobalTheory.GenericHom.exists_lift j (ιW ≫ snd A A) fun q => hR _ q (hWU q).1.2
  obtain ⟨v₃, hv₃⟩ := GlobalTheory.GenericHom.exists_lift j (ιW ≫ (fst A A * snd A A)) fun q => hR _ q (hWU q).2
  have : Smooth (A ⊗ A).hom := inferInstanceAs (Smooth (pullback.fst A.hom A.hom ≫ A.hom))
  have : Smooth W.hom := inferInstanceAs (Smooth (U.ι ≫ (A ⊗ A).hom))
  have := GlobalTheory.isNormalScheme_of_smooth (S := Spec (.of K)) W.hom
  have : IsReduced W.left := GlobalTheory.IsNormalScheme.isReduced
  let Y' : Y.left.Opens := (lift x₁ x₂).left ⁻¹ᵁ U
  let Z' : Over (Sp K) := Over.mk (Y'.ι ≫ Y.hom)
  let w : Z' ⟶ Y := Over.homMk Y'.ι rfl
  let p : Z' ⟶ W := Over.homMk ((lift x₁ x₂).left ∣_ U) (by
    show (lift x₁ x₂).left ∣_ U ≫ U.ι ≫ (A ⊗ A).hom = Y'.ι ≫ Y.hom
    rw [← Category.assoc, morphismRestrict_ι, Category.assoc, Over.w])
  have hpw : p ≫ ιW = w ≫ lift x₁ x₂ := Over.OverMorphism.ext (morphismRestrict_ι _ _)
  have : IsDominant p.left := IsZariskiLocalAtTarget.restrict hdom U
  have e₁ : p ≫ v₁ ≫ f = w ≫ y₁ :=
    h₁ Z' w (p ≫ v₁) (by rw [Category.assoc, hv₁, ← Category.assoc, hpw, Category.assoc, lift_fst])
  have e₂ : p ≫ v₂ ≫ f = w ≫ y₂ :=
    h₂ Z' w (p ≫ v₂) (by rw [Category.assoc, hv₂, ← Category.assoc, hpw, Category.assoc, lift_snd])
  have e₃ : p ≫ v₃ ≫ f = w ≫ (y₁ * y₂) :=
    h₃ Z' w (p ≫ v₃) (by
      rw [Category.assoc, hv₃, ← Category.assoc, hpw, Category.assoc, MonObj.comp_mul, lift_fst, lift_snd])
  have key : (v₁ ≫ f) * (v₂ ≫ f) = v₃ ≫ f := by
    refine Over.OverMorphism.ext (ext_of_isDominant_of_isSeparated A.hom ?_ p.left ?_)
    · rw [Over.w, Over.w]
    · have : p ≫ ((v₁ ≫ f) * (v₂ ≫ f)) = p ≫ (v₃ ≫ f) := by
        rw [MonObj.comp_mul, e₁, e₂, e₃, MonObj.comp_mul]
      exact congrArg CommaMorphism.left this
  have hU : ∀ q : Z.left, (lift (u₁ ≫ j) (u₂ ≫ j)).left q ∈ Set.range ιW.left := by
    intro q
    show _ ∈ Set.range U.ι
    rw [Scheme.Opens.range_ι]
    have hq : ∀ (g : A ⊗ A ⟶ A) (u : Z ⟶ V), lift (u₁ ≫ j) (u₂ ≫ j) ≫ g = u ≫ j →
        (lift (u₁ ≫ j) (u₂ ≫ j)).left q ∈ g.left ⁻¹ᵁ R := fun g u e => by
      show g.left ((lift (u₁ ≫ j) (u₂ ≫ j)).left q) ∈ Set.range j.left
      rw [← Scheme.Hom.comp_apply, ← Over.comp_left, e]
      exact ⟨u.left q, by rw [Over.comp_left, Scheme.Hom.comp_apply]⟩
    exact ⟨⟨hq _ u₁ (lift_fst _ _), hq _ u₂ (lift_snd _ _)⟩,
      hq _ u₃ (by rw [MonObj.comp_mul, lift_fst, lift_snd, hu])⟩
  obtain ⟨g, hg⟩ := GlobalTheory.GenericHom.exists_lift ιW (lift (u₁ ≫ j) (u₂ ≫ j)) hU
  have canc : ∀ a b : Z ⟶ V, a ≫ j = b ≫ j → a = b := fun a b e =>
    Over.OverMorphism.ext ((cancel_mono j.left).1 (congrArg CommaMorphism.left e))
  have c₁ : g ≫ v₁ = u₁ := canc _ _ (by rw [Category.assoc, hv₁, ← Category.assoc, hg, lift_fst])
  have c₂ : g ≫ v₂ = u₂ := canc _ _ (by rw [Category.assoc, hv₂, ← Category.assoc, hg, lift_snd])
  have c₃ : g ≫ v₃ = u₃ := canc _ _ (by
    rw [Category.assoc, hv₃, ← Category.assoc, hg, MonObj.comp_mul, lift_fst, lift_snd, hu])
  rw [← c₁, ← c₂, ← c₃, Category.assoc, Category.assoc, Category.assoc, ← MonObj.comp_mul, key]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulOfMulAtDominantPairCommGroup =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatios =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatios", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveActionThickeningEndosCompletePoint\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonHomExtensionOpenPartField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMorphismOfSectionRatiosVeryAmple\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVeryAmpleFourthPowerUniformisedGroup\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MulOfMulAtDominantPairCommGroup\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.EqClosedPointOfNotMemRange\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GenericIsoAgreesOnCompletePoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.AdicCompletion.LocalRing\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.GenericRatio

theorem exists_complete_point (T : Scheme.{0}) [IsLocallyNoetherian T] (t : T) :
    ∃ (B : Type) (_ : CommRing B) (_ : IsLocalRing B), IsAdicComplete (maximalIdeal B) B ∧
      ∃ q : Sp B ⟶ T, Flat q ∧ q (closedPoint B) = t := by
  let O : Type := T.presheaf.stalk t
  have : IsNoetherianRing O := inferInstanceAs (IsNoetherianRing (T.presheaf.stalk t))
  refine ⟨AdicCompletion (maximalIdeal O) O, inferInstance, inferInstance, inferInstance,
    Spec.map (CommRingCat.ofHom (algebraMap O (AdicCompletion (maximalIdeal O) O))) ≫ T.fromSpecStalk t, ?_, ?_⟩
  · have h1 : Flat (T.fromSpecStalk t) := GenericExt.flat_fromSpecStalk T t
    have h2 : Flat (Spec.map (CommRingCat.ofHom (algebraMap O (AdicCompletion (maximalIdeal O) O)))) := by
      rw [HasRingHomProperty.Spec_iff (P := @Flat)]
      exact RingHom.flat_algebraMap_iff.2 inferInstance
    exact Flat.comp _ _
  · have : IsLocalHom (CommRingCat.ofHom (algebraMap O (AdicCompletion (maximalIdeal O) O))).hom :=
      inferInstanceAs (IsLocalHom (algebraMap O (AdicCompletion (maximalIdeal O) O)))
    exact (Scheme.Hom.comp_apply _ _ _).trans ((congrArg (T.fromSpecStalk t) Spec_closedPoint).trans
      Scheme.fromSpecStalk_closedPoint)

theorem secRatioEq_of_levels {B : Type} [CommRing B] [IsLocalRing B] [IsHausdorff (maximalIdeal B) B]
    {X : Scheme.{0}} {L : LB X} (hL : L.IsLB) {k k' : ℕ} {u v : Sp B ⟶ X} {s₁ s₂ : H0 L k} {t₁ t₂ : H0 L k'}
    (h : ∀ e, SecRatioEq L (thick B (maximalIdeal B) e ≫ u) (thick B (maximalIdeal B) e ≫ v) s₁ s₂ t₁ t₂) :
    SecRatioEq L u v s₁ s₂ t₁ t₂ := by
  have top : ∀ w : Sp B ⟶ X, ∃ i : Fin 1 → L.ι, ⊤ ≤ w ⁻¹ᵁ secChart L i := fun w => by
    obtain ⟨i, hi⟩ := exists_chart hL (w (closedPoint B))
    have : closedPoint B ∈ w ⁻¹ᵁ secChart L (fun _ => i) := Set.mem_iInter.2 fun _ => hi
    exact ⟨fun _ => i, ((IsLocalRing.closedPoint_mem_iff _).1 this).ge⟩
  obtain ⟨i, hi⟩ := top u
  obtain ⟨i', hi'⟩ := top v
  have key : ∀ (s : H0 L k) (t : H0 L k') (Z : Scheme.{0}) (r : Z ⟶ Sp B) (z : Z),
      gs r z ⊤ ((u.appLE _ ⊤ hi).hom (s.f i) * (v.appLE _ ⊤ hi').hom (t.f i')) =
        secGerm (r ≫ u) z s i * secGerm (r ≫ v) z t i' := fun s t Z r z =>
    (gs_mul r z ⊤ trivial _ _).trans (congrArg₂ (· * ·) (gs_appLE u _ ⊤ hi r z trivial _)
      (gs_appLE v _ ⊤ hi' r z trivial _))
  have E := GlobalTheory.FormalGeneric.fn_ext_germs (maximalIdeal B) (a := (u.appLE _ ⊤ hi).hom (s₁.f i) *
      (v.appLE _ ⊤ hi').hom (t₂.f i')) (b := (u.appLE _ ⊤ hi).hom (s₂.f i) * (v.appLE _ ⊤ hi').hom (t₁.f i'))
    fun e z => (key _ _ _ _ z).trans ((secRatioEq_iff_germ.1 (h e) z i i' (hi trivial) (hi' trivial)).trans
      (key _ _ _ _ z).symm)
  refine secRatioEq_of_exists_germ fun y => ⟨i, i', hi trivial, hi' trivial, ?_⟩
  exact (key s₁ t₂ _ (𝟙 _) y).symm.trans ((congrArg _ E).trans (key s₂ t₁ _ (𝟙 _) y))

theorem exists_generic_mem {R : Type} [CommRing R] [IsDomain R] {Y : Scheme.{0}} (f : Y ⟶ Sp R) [Flat f]
    (W : Y.Opens) {y : Y} (hy : y ∈ W) : ∃ a : (pullback f (jK R) :), pullback.fst f (jK R) a ∈ W := by
  let ξ : Sp R := jK R (closedPoint (FractionRing R))
  have hξ : ξ ⤳ f y := by
    refine (PrimeSpectrum.le_iff_specializes _ _).1 fun r hr => ?_
    have h1 : algebraMap R (FractionRing R) r ∈ maximalIdeal (FractionRing R) := hr
    rw [IsLocalRing.maximalIdeal_eq_bot, Ideal.mem_bot,
      map_eq_zero_iff _ (IsFractionRing.injective R (FractionRing R))] at h1
    rw [h1]
    exact Ideal.zero_mem _
  obtain ⟨y', h1, h2⟩ := Flat.generalizingMap f hξ
  have : y' ∈ Set.range (pullback.fst f (jK R)) := by
    rw [Scheme.Pullback.range_fst]
    exact ⟨_, h2.symm⟩
  obtain ⟨a, ha⟩ := this
  exact ⟨a, ha ▸ h1.mem_open W.isOpen hy⟩

theorem isDominant_of_flat {X Y : Scheme.{0}} [IrreducibleSpace X] (f : Y ⟶ X) [Flat f] (y : Y) : IsDominant f := by
  obtain ⟨y', -, h2⟩ := Flat.generalizingMap f (genericPoint_specializes (f y))
  refine ⟨Dense.mono (Set.singleton_subset_iff.2 ⟨y', h2⟩) ?_⟩
  exact dense_iff_closure_eq.2 (genericPoint_spec X)

theorem exists_formal_pair {R : Type} [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R]
    (G : Over (Sp R)) [GrpObj G] [LocallyOfFiniteType G.hom]
    (b : ∀ e : ℕ, thickObj R (maximalIdeal R) e G ⟶ thickObj R (maximalIdeal R) e G) (hb : ∀ e, IsMonHom (b e))
    (hc : ∀ e, thickMap R (maximalIdeal R) e G ≫ (b (e + 1)).left = (b e).left ≫ thickMap R (maximalIdeal R) e G)
    {L : LB G.left} (hL : L.IsLB) :
    ∃ (Y : Over (Sp R)) (x₁ x₂ : Y ⟶ G) (Φ : (Y ⟶ G) → (Y ⟶ G)), Nonempty Y.left ∧ Flat (lift x₁ x₂).left ∧
      (∀ x y, Φ (x * y) = Φ x * Φ y) ∧ ∀ (x : Y ⟶ G) (k k' : ℕ) (s₁ s₂ : H0 L k) (t₁ t₂ : H0 L k'),
        (∀ e, SecRatioEq L ((b e).left ≫ (fstG (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left
          s₁ s₂ t₁ t₂) → SecRatioEq L (Φ x).left x.left s₁ s₂ t₁ t₂ := by
  have : LocallyOfFiniteType (G ⊗ G).hom :=
    inferInstanceAs (LocallyOfFiniteType (pullback.fst G.hom G.hom ≫ G.hom))
  have : IsLocallyNoetherian (G ⊗ G).left := LocallyOfFiniteType.isLocallyNoetherian (G ⊗ G).hom
  let o : 𝟙_ (Over (Sp R)) ⟶ G ⊗ G := lift 1 1
  obtain ⟨B, _, _, hB, q, hq, hqt⟩ := exists_complete_point (G ⊗ G).left (o.left (closedPoint R))
  have hs : (q ≫ (G ⊗ G).hom) (closedPoint B) ∈ Set.range (thick R (maximalIdeal R) 0) := by
    have h1 : (q ≫ (G ⊗ G).hom) (closedPoint B) = closedPoint R :=
      (Scheme.Hom.comp_apply _ _ _).trans ((congrArg (G ⊗ G).hom hqt).trans
        ((Scheme.Hom.comp_apply _ _ _).symm.trans (congrArg (fun g => g (closedPoint R)) (Over.w o))))
    exact ⟨_, (GlobalTheory.adicLevelι_closedPoint (maximalIdeal.isMaximal R).ne_top 0).trans h1.symm⟩
  obtain ⟨Φ, hΦ, hr⟩ := _root_.GlobalTheory.exists_mul_map_points_of_thickEndo R (maximalIdeal R) G b hb hc B (q ≫ (G ⊗ G).hom) hs
  let q' : Over.mk (q ≫ (G ⊗ G).hom) ⟶ G ⊗ G := Over.homMk q rfl
  refine ⟨Over.mk (q ≫ (G ⊗ G).hom), q' ≫ fst G G, q' ≫ snd G G, Φ, ⟨closedPoint B⟩, ?_, hΦ,
    fun x k k' s₁ s₂ t₁ t₂ h => secRatioEq_of_levels hL fun e => ?_⟩
  · rw [lift_comp_fst_snd]
    exact hq
  · obtain ⟨r, h1, h2⟩ := hr x e
    have h3 := (h e).comp r
    exact h1 ▸ h2 ▸ h3

theorem exists_generic_hom : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ b, FormalEnd U.toUnifPre a h' b → ∀ (N : ℕ) (S : ∀ k : ℕ, H0 U.LG.L k → H0 U.LG.L (N * k)), 1 ≤ N → (∀ (k e : ℕ) (s₁ s₂ : H0 U.LG.L k), SecRatioEq U.LG.L ((b e).left ≫ (fstG (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left s₁ s₂ (S k s₁) (S k s₂)) → (∀ k : ℕ, 3 ≤ k → ∃ s₀ : H0 U.LG.L k, SecCoNonzero U.LG.L ((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left s₀ (S k s₀)) → ∃ φ : (Over.pullback (jK R)).obj G ⟶ (Over.pullback (jK R)).obj G, IsMonHom φ ∧ (∀ (k : ℕ) (s₁ s₂ : H0 U.LG.L k), SecRatioEq U.LG.L (φ.left ≫ pullback.fst G.hom (jK R)) (pullback.fst G.hom (jK R)) s₁ s₂ (S k s₁) (S k s₂)) := by
  intro R _ _ _ hR D A G _ _ hG U a a' h h' _ b hb N S _ hS hnd
  have := hR.1.1
  have := hG.smooth
  have := hG.separated
  have := hG.quasiCompact
  have := hG.geomConnected
  let F := Over.pullback (jK R)
  let π : (F.obj G).left ⟶ G.left := pullback.fst G.hom (jK R)
  have hA : GlobalTheory.SS.SmConn (F.obj G) := ⟨inferInstance, inferInstanceAs (Smooth (pullback.snd G.hom (jK R))),
    inferInstanceAs (IsSeparated (pullback.snd G.hom (jK R))),
    inferInstanceAs (QuasiCompact (pullback.snd G.hom (jK R))),
    inferInstanceAs (GeometricallyConnected (pullback.snd G.hom (jK R)))⟩
  have := hA.2.1
  have := hA.2.2.2.2
  have hint : IsIntegral (F.obj G).left := GlobalTheory.isIntegral_of_smooth_of_geometricallyConnected (F.obj G).hom
  obtain ⟨m, σ, hσ⟩ := _root_.GlobalTheory.Mum.exists_veryAmpleAlong_unif R (maximalIdeal R) D A G U
  obtain ⟨s₀, y₀, i₀, i₀', -, hy₀⟩ := hnd 4 (by norm_num)
  have ht₀ : ∃ p : (F.obj G).left, π p ∈ nonzeroLocus (S 4 s₀) := by
    refine exists_generic_mem G.hom _ (y := (fstG (maximalIdeal R) 0 G).left y₀) ?_
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨i₀', (Scheme.preimage_basicOpen _ _).ge hy₀⟩
  obtain ⟨Y, x₁, x₂, Φ, ⟨y⟩, hfl, hΦ, hrat⟩ := exists_formal_pair G b hb.1 hb.2.1 U.LG.isLB
  have hπ : ∀ x : Y ⟶ G, (F.map x).left ≫ π = pullback.fst Y.hom (jK R) ≫ x.left := fun x =>
    pullback.lift_fst _ _ _
  have hratK : ∀ (x : Y ⟶ G) (k : ℕ) (s₁ s₂ : H0 U.LG.L k), SecRatioEq U.LG.L ((F.map (Φ x)).left ≫ π)
      ((F.map x).left ≫ π) s₁ s₂ (S k s₁) (S k s₂) := fun x k s₁ s₂ => by
    rw [hπ, hπ]
    exact (hrat x k _ s₁ s₂ _ _ fun e => hS k e s₁ s₂).comp _
  have hflK : Flat (lift (F.map x₁) (F.map x₂)).left := by
    rw [← Functor.OplaxMonoidal.lift_δ, Over.comp_left]
    have h1 : Flat (F.map (lift x₁ x₂)).left := MorphismProperty.overPullbackMap (P := @Flat) (jK R) _ hfl
    have h2 : IsIso (Functor.OplaxMonoidal.δ F G G).left :=
      inferInstanceAs (IsIso ((Over.forget _).map (Functor.OplaxMonoidal.δ F G G)))
    infer_instance
  have hYfl : Flat Y.hom := by
    have : Flat (G ⊗ G).hom := inferInstanceAs (Flat (pullback.fst G.hom G.hom ≫ G.hom))
    rw [← Over.w (lift x₁ x₂)]
    infer_instance
  obtain ⟨yK, -⟩ := exists_generic_mem Y.hom ⊤ (y := y) trivial
  have : Smooth (fst (F.obj G) (F.obj G)).left :=
    inferInstanceAs (Smooth (pullback.fst (F.obj G).hom (F.obj G).hom))
  have : GeometricallyConnected (fst (F.obj G) (F.obj G)).left :=
    inferInstanceAs (GeometricallyConnected (pullback.fst (F.obj G).hom (F.obj G).hom))
  have : IsIntegral (F.obj G ⊗ F.obj G).left := by
    have := GlobalTheory.isNormalScheme_of_smooth (S := Sp (FractionRing R)) (F.obj G).hom
    have : IsLocallyNoetherian (F.obj G).left := LocallyOfFiniteType.isLocallyNoetherian (F.obj G).hom
    exact GlobalTheory.isIntegral_of_smooth_of_geometricallyConnected (fst (F.obj G) (F.obj G)).left
  have hdom : IsDominant (lift (F.map x₁) (F.map x₂)).left := isDominant_of_flat _ yK
  have hfl₁ : Flat (F.map x₁).left := by
    rw [← lift_fst (F.map x₁) (F.map x₂), Over.comp_left]
    infer_instance
  have hdom₁ : IsDominant (F.map x₁).left := isDominant_of_flat _ yK
  obtain ⟨V, j, f, hj, hV, hf⟩ := _root_.GlobalTheory.Mum.exists_morphism_of_secRatio (FractionRing R) (F.obj G) G.left U.LG.L U.LG.isLB π 4 _ m σ hσ s₀
    (S 4 s₀) (fun i => S 4 (σ i)) ht₀ (F.obj Y) (F.map x₁) (F.map (Φ x₁)) hdom₁ fun i => hratK x₁ 4 _ _
  have hpt : ∀ (x : Y ⟶ G) (Z : Over (Sp (FractionRing R))) (w : Z ⟶ F.obj Y) (u : Z ⟶ V),
      u ≫ j = w ≫ F.map x → u ≫ f = w ≫ F.map (Φ x) := fun x Z w u e => hf Z u _ fun i => by
    rw [e, Over.comp_left, Over.comp_left, Category.assoc, Category.assoc]
    exact (hratK x 4 _ _).comp _
  have hadd := _root_.GlobalTheory.Mum.mul_of_isDominant_pair (FractionRing R) (F.obj G) hA V j f hj (F.obj Y) _ _ _ _ hdom (hpt x₁) (hpt x₂)
    (by rw [← Functor.map_mul, ← Functor.map_mul, ← hΦ]; exact hpt (x₁ * x₂))
  obtain ⟨φ, hφ, hjφ⟩ := _root_.GlobalTheory.GenericHomField.exists_monHom_extension_of_field (FractionRing R) (F.obj G) (F.obj G) V hA hA j f hj hV hadd
  refine ⟨φ, hφ, fun k s₁ s₂ => ?_⟩
  let Z : Over (Sp (FractionRing R)) := Over.mk (pullback.fst (F.map x₁).left j.left ≫ (F.obj Y).hom)
  let w : Z ⟶ F.obj Y := Over.homMk (pullback.fst (F.map x₁).left j.left) rfl
  let u : Z ⟶ V := Over.homMk (pullback.snd (F.map x₁).left j.left) (by
    have e := congrArg (· ≫ (F.obj G).hom) (pullback.condition (f := (F.map x₁).left) (g := j.left))
    simp only [Category.assoc, Over.w] at e
    exact e.symm)
  have huw : u ≫ j = w ≫ F.map x₁ := Over.OverMorphism.ext pullback.condition.symm
  have e : (w ≫ F.map x₁) ≫ φ = w ≫ F.map (Φ x₁) := by rw [← huw, Category.assoc, hjφ, hpt x₁ Z w u huw]
  obtain ⟨z⟩ : Nonempty Z.left := by
    obtain ⟨v⟩ := hV
    obtain ⟨p, v', hp⟩ := (F.map x₁).left.denseRange.exists_mem_open (IsOpenImmersion.isOpen_range j.left)
      ⟨_, v, rfl⟩
    obtain ⟨z, -⟩ := Scheme.Pullback.exists_preimage_pullback p v' hp.symm
    exact ⟨z⟩
  have : Flat (w ≫ F.map x₁).left :=
    inferInstanceAs (Flat (pullback.fst (F.map x₁).left j.left ≫ (F.map x₁).left))
  have := isDominant_of_flat (w ≫ F.map x₁).left z
  refine SecRatioEq.of_isDominant (Y := (F.obj G).left) (w ≫ F.map x₁).left ?_
  have e' : (w ≫ F.map x₁).left ≫ φ.left ≫ π = w.left ≫ (F.map (Φ x₁)).left ≫ π := by
    rw [← Category.assoc, ← Over.comp_left, e, Over.comp_left, Category.assoc]
  have h3 := (hratK x₁ k s₁ s₂).comp w.left
  rw [← e', ← Category.assoc w.left] at h3
  exact h3

end GlobalTheory.Mum.GenericRatio
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatios =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatiosStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatiosStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatios\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatiosStatement =====
