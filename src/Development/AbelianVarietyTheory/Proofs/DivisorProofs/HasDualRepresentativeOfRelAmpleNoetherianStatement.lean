module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackOneProdKernel
public import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff
public import Development.AbelianVarietyTheory.PublishedTheorems.RelativeAmpleness.RelAmpleAndKTrivIff
public import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.AlgebraicGeometry.Cover.Directed
public import Mathlib.AlgebraicGeometry.RelativeGluing
public import Mathlib.AlgebraicGeometry.Morphisms.Finite
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Mathlib.Order.CompletePartialOrder
public import Mathlib.AlgebraicGeometry.Pullbacks
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LocallyTrivialOfIsoPull
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SurjectiveAppOfIsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedKernelClosedFiniteFlatAffineBaseStatement
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHeckeQuotientTriple
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjRestrictSnd
public import CompanionTheory.AutomorphicTheory.ProductFormulaTheory.DualAbelianSchemes.Rigdesc
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianSchemeFiniteFlatSubgroup
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsAmpleLBOfRelAmpleOfIsAffine
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsAffineOpenNonzeroLocusOfUniversallyClosed
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelOfLineBundleFiniteFlatSubgroupScheme
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodOfFiniteSurjective
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAdditiveSwapOfTrivAxes
public import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleTrivialOfGeneratorFpqcDescent
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
import Mathlib.AlgebraicGeometry.Morphisms.Immersion
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.TangentLinearity.ConstPullback
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.TheoremOfCubeTwoProjectiveFactors
import Mathlib.Tactic.Basify
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull
import Mathlib.AlgebraicGeometry.Sites.Fpqc

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualPointEqOfQuotientFamilyIso, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorClosedImmersionOfLocallyOnSource, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlueClosedImmersionsOpenCover, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatSurjectiveClosedSubschemeOfOpenCover, Development.AbelianVarietyTheory.Proofs.DivisorProofs.WhiskerLeftLeftIsPullbackSnd, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedImmersionRepresentsOfAffineOpens, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SameRigidifiedFamilyAbelianSchemeOfLocal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFamilyAgreementLocusOfAffineOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatCoverAdditiveFamilyEqLambda, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LamTrivOfMemKL, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentMumfordBundleQuotient, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSpecializesMinimal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteSetsInAffineOpenAbelianSchemeRelAmple, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionDescendsFiniteFlatSurje, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientKernelPolarisationDescendedBundle, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SameLineBundleFamilyDescendsFlatSurjectiveQuasiC, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherian, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherianStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualPointEqOfQuotientFamilyIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualPointEqOfQuotientFamilyIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.PublishedTheorems.RelativeAmpleness.RelAmpleAndKTrivIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualCon

section

variable {S : Scheme.{0}} {A : Over S} [GrpObj A] [IsCommMonObj A] {L : LB A.left}

theorem memKL_mul_inv_of_eq (hL : L.IsLB) {Z : Over S} (x x' : Z ⟶ A)
    (h : ∀ (W : Over S) (a : W ⟶ A) (z : W ⟶ Z),
      CechPic.pull (a * (z ≫ x)).left (cls L hL) - CechPic.pull (z ≫ x).left (cls L hL) =
        CechPic.pull (a * (z ≫ x')).left (cls L hL) - CechPic.pull (z ≫ x').left (cls L hL)) :
    GlobalTheory.MemKL A L (x * x'⁻¹) := by
  intro p
  have hD : (Out.translDiff A L (x * x'⁻¹)).IsLB := LB.isLB_linComb hL _ _
  obtain ⟨V, hV, hc⟩ := exists_pull_eq_zero
    (CechPic.pull x.left (cls L hL) - CechPic.pull x'.left (cls L hL)) p
  refine ⟨V, hV, (cls_eq_zero_iff (pull_isLB hD _)).1 ?_⟩
  have e₁ := pull_translDiff hL (x * x'⁻¹) hD (fst Z A) (snd Z A)
  rw [lift_fst_snd, Over.id_left, pull_id] at e₁
  have k₁ : ((fst Z A ≫ x')⁻¹ * snd Z A) * (fst Z A ≫ x) = (fst Z A ≫ (x * x'⁻¹)) * snd Z A := by
    rw [MonObj.comp_mul, GrpObj.comp_inv, mul_comm _ (fst Z A ≫ x)]
    exact (_root_.mul_assoc _ _ _).symm
  have k₂ : ((fst Z A ≫ x')⁻¹ * snd Z A) * (fst Z A ≫ x') = snd Z A := by
    rw [mul_comm, mul_inv_cancel_left]
  have e₃ := h (Z ⊗ A) ((fst Z A ≫ x')⁻¹ * snd Z A) (fst Z A)
  rw [k₁, k₂] at e₃
  have e₂ : cls _ hD = CechPic.pull (fst Z A).left
      (CechPic.pull x.left (cls L hL) - CechPic.pull x'.left (cls L hL)) := by
    rw [e₁, map_sub, ← pull_comp, ← pull_comp, ← Over.comp_left, ← Over.comp_left]
    exact sub_eq_sub_iff_sub_eq_sub.1 e₃
  rw [cls_pull hD, e₂, ← pull_comp]
  exact pull_eq_zero_of_mem V (((fst Z A).left ⁻¹ᵁ V).ι ≫ (fst Z A).left) (fun z ↦ z.2) hc

end

theorem inj_of_quotient : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ (L : LB A.left) (hL : L.IsLB), Out.RelAmple A L → ∀ (B : Over (Sp R)) (P : LB (A ⊗ B).left) (q : A ⟶ B) (hP : Fam A P), IsFinite q.left → Flat q.left → Surjective q.left → (∀ (Y : Over (Sp R)) (a x : Y ⟶ A), evc hP.isLB a (x ≫ q) = GlobalTheory.CechPic.pull (a * x).left (cls L hL) - GlobalTheory.CechPic.pull a.left (cls L hL) - GlobalTheory.CechPic.pull x.left (cls L hL) + GlobalTheory.CechPic.pull (1 : Y ⟶ A).left (cls L hL)) → (∀ (Y : Over (Sp R)) (x y : Y ⟶ A), x ≫ q = y ≫ q ↔ GlobalTheory.MemKL A L (x * y⁻¹)) → Inj A P := by
  intro R _ _ A _ g hA _ L hL _ B P q hP _ hflat hsurj hev hKL
  haveI : IsCommMonObj A := hA.comm
  haveI : Flat q.left := hflat
  haveI : Surjective q.left := hsurj
  intro Y u u' hs
  rw [same_iff hP.isLB hP.isLB] at hs
  let s₁ := pullback.snd q.left u.left
  let f₁ := pullback.fst q.left u.left
  let s₂ := pullback.snd q.left (s₁ ≫ u'.left)
  let f₂ := pullback.fst q.left (s₁ ≫ u'.left)
  let Z : Over (Sp R) := Over.mk (s₂ ≫ s₁ ≫ Y.hom)
  let c : Z ⟶ Y := Over.homMk (s₂ ≫ s₁) (by simp [Z])
  have w₁ : f₁ ≫ A.hom = s₁ ≫ Y.hom := by
    rw [← Over.w q, pullback.condition_assoc, Over.w u]
  have w₂ : f₂ ≫ A.hom = s₂ ≫ s₁ ≫ Y.hom := by
    rw [← Over.w q, pullback.condition_assoc, Category.assoc, Over.w u']
  let x : Z ⟶ A := Over.homMk (s₂ ≫ f₁) (by simp [Z, w₁])
  let x' : Z ⟶ A := Over.homMk f₂ (by simpa [Z] using w₂)
  have hx : c ≫ u = x ≫ q := by
    ext1
    simp only [Over.comp_left, c, x, Over.homMk_left, Category.assoc]
    rw [pullback.condition]
  have hx' : c ≫ u' = x' ≫ q := by
    ext1
    simp only [Over.comp_left, c, x', Over.homMk_left, Category.assoc]
    rw [pullback.condition]
  have hK : GlobalTheory.MemKL A L (x * x'⁻¹) := by
    refine memKL_mul_inv_of_eq hL x x' fun W a z ↦ ?_
    have e := congrArg (CechPic.pull (lift a (z ≫ c)).left) hs
    rw [pull_evc, pull_evc, lift_fst, lift_snd_assoc, lift_snd_assoc] at e
    simp only [Category.assoc] at e
    rw [hx, hx', ← Category.assoc, ← Category.assoc, hev, hev] at e
    rw [← sub_eq_zero] at e ⊢
    convert e using 1
    abel
  have hq : x ≫ q = x' ≫ q := (hKL Z x x').2 hK
  have : Epi c.left := by
    have : Flat c.left := by simp only [c, Over.homMk_left]; infer_instance
    have : Surjective c.left := by simp only [c, Over.homMk_left]; infer_instance
    exact Flat.epi_of_flat_of_surjective _
  have : Epi c := Over.epi_of_epi_left c
  rw [← cancel_epi c, hx, hx', hq]

end GlobalTheory.DualCon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualPointEqOfQuotientFamilyIso =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorClosedImmersionOfLocallyOnSource =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorClosedImmersionOfLocallyOnSource", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.Immersion\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

theorem exists_factor_closedImmersion_of_locally :
    ∀ (Z A Y : Scheme.{0}) (a : A ⟶ Z), IsClosedImmersion a → ∀ (g : Y ⟶ Z),
      (∀ y : Y, ∃ W : Y.Opens, y ∈ W ∧ ∃ z : W.toScheme ⟶ A, z ≫ a = W.ι ≫ g) →
      ∃ z : Y ⟶ A, z ≫ a = g := by
  intro Z A Y a ha g h
  choose W hW z hz using h
  have hc : TopologicalSpace.IsOpenCover W := by
    refine TopologicalSpace.IsOpenCover.mk ?_
    rw [eq_top_iff]
    intro y _
    exact TopologicalSpace.Opens.mem_iSup.mpr ⟨y, hW y⟩
  let 𝒰 := Y.openCoverOfIsOpenCover W hc
  obtain ⟨u, hu⟩ : ∃ u : ∀ i, 𝒰.X i ⟶ A, ∀ i, u i ≫ a = 𝒰.f i ≫ g := ⟨z, hz⟩
  have hglue : ∀ i j, pullback.fst (𝒰.f i) (𝒰.f j) ≫ u i =
      pullback.snd (𝒰.f i) (𝒰.f j) ≫ u j := by
    intro i j
    rw [← cancel_mono a, Category.assoc, Category.assoc, hu, hu, pullback.condition_assoc]
  refine ⟨𝒰.glueMorphisms u hglue, ?_⟩
  refine 𝒰.hom_ext _ _ fun i => ?_
  rw [← Category.assoc, Scheme.Cover.ι_glueMorphisms]
  exact hu i

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorClosedImmersionOfLocallyOnSource =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlueClosedImmersionsOpenCover =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlueClosedImmersionsOpenCover", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Cover.Directed\npublic import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.Immersion\npublic import Mathlib.AlgebraicGeometry.RelativeGluing\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.GlueClosed

theorem exists_lift_eq {X : Scheme.{0}} (U V : X.Opens) (x : (pullback U.ι V.ι).carrier) :
    ∃ y : (U ⊓ V).toScheme, pullback.lift (X.homOfLE (inf_le_left : U ⊓ V ≤ U))
      (X.homOfLE (inf_le_right : U ⊓ V ≤ V)) (by simp) y = x := by
  have hx : U.ι (pullback.fst U.ι V.ι x) ∈ U ⊓ V := by
    refine ⟨(pullback.fst U.ι V.ι x).2, ?_⟩
    rw [← Scheme.Hom.comp_apply, pullback.condition, Scheme.Hom.comp_apply]
    exact (pullback.snd U.ι V.ι x).2
  obtain ⟨y, hy⟩ : ∃ y : (U ⊓ V).toScheme, (U ⊓ V).ι y = U.ι (pullback.fst U.ι V.ι x) :=
    ⟨⟨_, hx⟩, rfl⟩
  refine ⟨y, ?_⟩
  apply (pullback.fst U.ι V.ι ≫ U.ι).isOpenEmbedding.injective
  rw [← Scheme.Hom.comp_apply _ (pullback.fst U.ι V.ι ≫ U.ι), pullback.lift_fst_assoc,
    Scheme.homOfLE_ι, hy]
  rfl

section
variable {X : Scheme.{0}} (S : Set X.Opens) (hcov : ∀ x : X, ∃ U ∈ S, x ∈ U)

noncomputable def coverOfSet : X.OpenCover where
  I₀ := S
  X U := U.1.toScheme
  f U := U.1.ι
  mem₀ := by
    rw [Scheme.presieve₀_mem_precoverage_iff]
    refine ⟨fun x ↦ ?_, fun U ↦ inferInstanceAs (IsOpenImmersion U.1.ι)⟩
    obtain ⟨U, hU, hx⟩ := hcov x
    exact ⟨⟨U, hU⟩, ⟨x, hx⟩, rfl⟩

instance : Preorder (coverOfSet S hcov).I₀ := inferInstanceAs (Preorder S)

@[reducible] noncomputable def locallyDirected (hinf : ∀ U ∈ S, ∀ V ∈ S, U ⊓ V ∈ S) :
    (coverOfSet S hcov).LocallyDirected where
  trans {U V} h := X.homOfLE (show U.1 ≤ V.1 from h.le)
  trans_id U := X.homOfLE_rfl _
  trans_comp h k := (X.homOfLE_homOfLE _ _).symm
  w h := X.homOfLE_ι _
  directed {U V} x := by
    obtain ⟨y, hy⟩ := exists_lift_eq U.1 V.1 x
    exact ⟨⟨U.1 ⊓ V.1, hinf _ U.2 _ V.2⟩, homOfLE (inf_le_left : U.1 ⊓ V.1 ≤ U.1),
      homOfLE (inf_le_right : U.1 ⊓ V.1 ≤ V.1), y, hy⟩
  property_trans h := inferInstanceAs (IsOpenImmersion (X.homOfLE _))

end

theorem exists_glue {X : Scheme.{0}} (S : Set X.Opens) (hcov : ∀ x : X, ∃ U ∈ S, x ∈ U)
    (hinf : ∀ U ∈ S, ∀ V ∈ S, U ⊓ V ∈ S) (C : S → Scheme.{0}) (c : ∀ U, C U ⟶ U.1.toScheme)
    [∀ U, Mono (c U)]
    (H : ∀ (U V : S) (h : U.1 ≤ V.1) (Y : Scheme.{0}) (g : Y ⟶ U.1.toScheme),
      (∃ z : Y ⟶ C U, z ≫ c U = g) ↔ ∃ z : Y ⟶ C V, z ≫ c V = g ≫ X.homOfLE h) :
    ∃ (B : Scheme.{0}) (b : B ⟶ X) (e : ∀ U, C U ⟶ B), ∀ U, IsPullback (c U) (e U) U.1.ι b := by
  choose t ht using fun (U V : S) (h : U.1 ≤ V.1) ↦ (H U V h _ (c U)).1 ⟨𝟙 _, Category.id_comp _⟩
  have hid : ∀ U : S, t U U le_rfl = 𝟙 _ := fun U ↦ by
    rw [← cancel_mono (c U), ht, X.homOfLE_rfl]; simp
  have hcomp : ∀ (U V W : S) (h : U.1 ≤ V.1) (k : V.1 ≤ W.1),
      t U W (h.trans k) = t U V h ≫ t V W k := fun U V W h k ↦ by
    rw [← cancel_mono (c W), ht, Category.assoc, ht, ← Category.assoc, ht, Category.assoc,
      X.homOfLE_homOfLE]
  have hpb : ∀ (U V : S) (h : U.1 ≤ V.1),
      IsPullback (t U V h) (c U) (c V) (X.homOfLE h) := fun U V h ↦ by
    refine ⟨⟨ht _ _ _⟩, ⟨PullbackCone.IsLimit.mk _
      (fun s ↦ ((H U V h _ s.snd).2 ⟨s.fst, s.condition⟩).choose) ?_ ?_ ?_⟩⟩
    · intro s
      rw [← cancel_mono (c V), Category.assoc, ht, ← Category.assoc,
        ((H U V h _ s.snd).2 ⟨s.fst, s.condition⟩).choose_spec, s.condition]
    · intro s
      exact ((H U V h _ s.snd).2 ⟨s.fst, s.condition⟩).choose_spec
    · intro s m _ h2
      rw [← cancel_mono (c U), h2, ((H U V h _ s.snd).2 ⟨s.fst, s.condition⟩).choose_spec]
  letI := locallyDirected S hcov hinf
  let d : (coverOfSet S hcov).RelativeGluingData :=
    { functor :=
        { obj := C
          map := fun {U V} h ↦ t U V h.le
          map_id := hid
          map_comp := fun {U V W} h k ↦ hcomp U V W h.le k.le }
      natTrans := { app := c, naturality := fun U V h ↦ ht U V h.le }
      equifibered := fun {U V} h ↦ hpb U V h.le }
  exact ⟨d.glued, d.toBase, d.cover.f, d.isPullback_natTrans_ι_toBase⟩

theorem exists_glue_isClosedImmersion : ∀ (X : Scheme.{0}) (ι : Type) (Xi : ι → Scheme.{0}) (m : ∀ i, Xi i ⟶ X), (∀ i, IsOpenImmersion (m i)) → (∀ x : X, ∃ i, x ∈ Set.range (m i)) → ∀ (A : ι → Scheme.{0}) (a : ∀ i, A i ⟶ Xi i), (∀ i, IsClosedImmersion (a i)) → (∀ (i j : ι) (Y : Scheme.{0}) (g : Y ⟶ Xi i) (g' : Y ⟶ Xi j), g ≫ m i = g' ≫ m j → ((∃ z : Y ⟶ A i, z ≫ a i = g) ↔ (∃ z : Y ⟶ A j, z ≫ a j = g'))) → ∃ (B : Scheme.{0}) (b : B ⟶ X), IsClosedImmersion b ∧ ∀ (i : ι) (Y : Scheme.{0}) (g : Y ⟶ Xi i), ((∃ z : Y ⟶ B, z ≫ b = g ≫ m i) ↔ (∃ z : Y ⟶ A i, z ≫ a i = g)) := by
  intro X ι Xi m hm hcov A a ha hcomp
  let S : Set X.Opens := {U | ∃ i, U ≤ (m i).opensRange}
  have hS : ∀ x : X, ∃ U ∈ S, x ∈ U := fun x ↦ by
    obtain ⟨i, hi⟩ := hcov x
    exact ⟨(m i).opensRange, ⟨i, le_rfl⟩, hi⟩
  have hinf : ∀ U ∈ S, ∀ V ∈ S, U ⊓ V ∈ S := fun U ⟨i, hi⟩ V _ ↦ ⟨i, inf_le_left.trans hi⟩
  have hl : ∀ (U : X.Opens) (i : ι), U ≤ (m i).opensRange →
      ∃ l : U.toScheme ⟶ Xi i, l ≫ m i = U.ι := fun U i h ↦
    ⟨IsOpenImmersion.lift (m i) U.ι (by rw [Scheme.Opens.range_ι]; exact h),
      IsOpenImmersion.lift_fac _ _ _⟩
  choose l hl using hl
  have hC : ∀ U : S, ∃ (C : Scheme.{0}) (c : C ⟶ U.1.toScheme), IsClosedImmersion c ∧
      ∀ (i : ι) (Y : Scheme.{0}) (g : Y ⟶ Xi i) (h : Y ⟶ U.1.toScheme), h ≫ U.1.ι = g ≫ m i →
        ((∃ z : Y ⟶ C, z ≫ c = h) ↔ ∃ z : Y ⟶ A i, z ≫ a i = g) := by
    rintro ⟨U, j, hj⟩
    refine ⟨pullback (a j) (l U j hj), pullback.snd _ _, inferInstance, fun i Y g h hg ↦ ?_⟩
    rw [← hcomp j i Y (h ≫ l U j hj) g (by rw [Category.assoc, hl, hg])]
    constructor
    · rintro ⟨z, rfl⟩
      exact ⟨z ≫ pullback.fst _ _, by simp [pullback.condition]⟩
    · rintro ⟨z, hz⟩
      exact ⟨pullback.lift z h hz, pullback.lift_snd _ _ _⟩
  choose C c hc hCa using hC
  obtain ⟨B, b, e, he⟩ := exists_glue S hS hinf C c (by
    intro U V h Y g
    obtain ⟨i, hi⟩ := V.2
    rw [hCa U i Y (g ≫ l U.1 i (h.trans hi)) g (by rw [Category.assoc, hl]),
      hCa V i Y (g ≫ l U.1 i (h.trans hi)) (g ≫ X.homOfLE h)
        (by rw [Category.assoc, Category.assoc, hl, X.homOfLE_ι])])
  refine ⟨B, b, ?_, fun i Y g ↦ ?_⟩
  · apply IsZariskiLocalAtTarget.of_openCover (P := @IsClosedImmersion) (coverOfSet S hS)
    intro U
    have := hc U
    change IsClosedImmersion (pullback.snd b U.1.ι)
    rw [← (he U).flip.isoPullback_inv_snd]
    infer_instance
  · let U : S := ⟨(m i).opensRange, i, le_rfl⟩
    have hh : (g ≫ (m i).isoOpensRange.hom) ≫ U.1.ι = g ≫ m i := by simp [U]
    rw [← hCa U i Y g _ hh]
    constructor
    · rintro ⟨z, hz⟩
      exact ⟨(he U).lift _ z (hh.trans hz.symm), (he U).lift_fst _ _ _⟩
    · rintro ⟨z, hz⟩
      exact ⟨z ≫ e U, by rw [Category.assoc, ← (he U).w, ← Category.assoc, hz, hh]⟩

end GlobalTheory.GlueClosed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlueClosedImmersionsOpenCover =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatSurjectiveClosedSubschemeOfOpenCover =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatSurjectiveClosedSubschemeOfOpenCover", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.Immersion\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

theorem exists_isPullback_of_factor_iff {C : Type*} [Category C] {X X' A B : C} (m : X' ⟶ X)
    (b : B ⟶ X) (a : A ⟶ X') [Mono a] [Mono b]
    (h : ∀ (Y : C) (g : Y ⟶ X'), (∃ z : Y ⟶ B, z ≫ b = g ≫ m) ↔ (∃ z : Y ⟶ A, z ≫ a = g)) :
    ∃ k : A ⟶ B, IsPullback k a b m := by
  obtain ⟨k, hk⟩ := (h A a).2 ⟨𝟙 A, Category.id_comp a⟩
  refine ⟨k, ⟨hk⟩, ⟨PullbackCone.IsLimit.mk hk
    (fun s => ((h s.pt s.snd).1 ⟨s.fst, s.condition⟩).choose) ?_ ?_ ?_⟩⟩
  · intro s
    have hs := ((h s.pt s.snd).1 ⟨s.fst, s.condition⟩).choose_spec
    rw [← cancel_mono b, Category.assoc, hk, ← Category.assoc, hs, s.condition]
  · intro s
    exact ((h s.pt s.snd).1 ⟨s.fst, s.condition⟩).choose_spec
  · intro s l _ hl
    have hs := ((h s.pt s.snd).1 ⟨s.fst, s.condition⟩).choose_spec
    rw [← cancel_mono a, hl, hs]

theorem of_isPullback_openCover (P : MorphismProperty Scheme.{0}) [IsZariskiLocalAtTarget P]
    {B T : Scheme.{0}} (f : B ⟶ T) {ι : Type} (V : ι → T.Opens) (hV : iSup V = ⊤)
    (A : ι → Scheme.{0}) (k : ∀ i, A i ⟶ B) (g : ∀ i, A i ⟶ (V i).toScheme)
    (h : ∀ i, IsPullback (k i) (g i) f (V i).ι) (hg : ∀ i, P (g i)) : P f := by
  rw [IsZariskiLocalAtTarget.iff_of_iSup_eq_top (P := P) V hV]
  intro i
  have h' := (isPullback_morphismRestrict f (V i)).flip
  have e : (h'.isoIsPullback _ _ (h i)).hom ≫ g i = f ∣_ V i := by simp
  rw [← e]
  exact (P.cancel_left_of_respectsIso _ _).2 (hg i)


set_option backward.isDefEq.respectTransparency.types false in
theorem finite_flat_surjective_of_openCover : ∀ (X T₀ : Scheme.{0}) (p : X ⟶ T₀) (ι : Type) (V : ι → T₀.Opens), iSup V = ⊤ → ∀ (Xi : ι → Scheme.{0}) (m : ∀ i, Xi i ⟶ X) (q : ∀ i, Xi i ⟶ (V i).toScheme), (∀ i, IsPullback (m i) (q i) p (V i).ι) → ∀ (B : Scheme.{0}) (b : B ⟶ X), IsClosedImmersion b → ∀ (A : ι → Scheme.{0}) (a : ∀ i, A i ⟶ Xi i), (∀ i, IsClosedImmersion (a i)) → (∀ (i : ι) (Y : Scheme.{0}) (g : Y ⟶ Xi i), (∃ z : Y ⟶ B, z ≫ b = g ≫ m i) ↔ (∃ z : Y ⟶ A i, z ≫ a i = g)) → (∀ i, IsFinite (a i ≫ q i) ∧ Flat (a i ≫ q i) ∧ Surjective (a i ≫ q i)) → IsFinite (b ≫ p) ∧ Flat (b ≫ p) ∧ Surjective (b ≫ p) := by
  intro X T₀ p ι V hV Xi m q hpb B b hb A a ha hrep hP
  have H : ∀ i, ∃ k : A i ⟶ B, IsPullback k (a i ≫ q i) (b ≫ p) (V i).ι := by
    intro i
    have := ha i
    obtain ⟨k, hk⟩ := exists_isPullback_of_factor_iff (m i) b (a i) (hrep i)
    exact ⟨k, hk.paste_vert (hpb i)⟩
  choose k hk using H
  have hfin : IsZariskiLocalAtTarget @IsFinite.{0} :=
    inferInstance
  have hflat : IsZariskiLocalAtTarget @Flat.{0} :=
    HasRingHomProperty.instIsZariskiLocalAtTarget (P := @Flat.{0})
  exact ⟨of_isPullback_openCover @IsFinite _ V hV A k _ hk (fun i => (hP i).1),
    of_isPullback_openCover @Flat _ V hV A k _ hk (fun i => (hP i).2.1),
    of_isPullback_openCover @Surjective _ V hV A k _ hk (fun i => (hP i).2.2)⟩

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatSurjectiveClosedSubschemeOfOpenCover =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WhiskerLeftLeftIsPullbackSnd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.WhiskerLeftLeftIsPullbackSnd", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Pullbacks\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

theorem whiskerLeft_left_isPullback_snd (S : Scheme.{0}) (U T T' : Over S) (f : T' ⟶ T) :
    IsPullback (U ◁ f).left (snd U T').left (snd U T).left f.left := by
  have hw : (U ◁ f).left ≫ (snd U T).left = (snd U T').left ≫ f.left := by
    rw [← Over.comp_left, ← Over.comp_left, whiskerLeft_snd]
  refine IsPullback.of_right (h₁₂ := (fst U T).left) (h₂₂ := T.hom) (v₁₃ := U.hom) ?_ hw ?_
  · have h1 : (U ◁ f).left ≫ (fst U T).left = (fst U T').left := by
      rw [← Over.comp_left, whiskerLeft_fst]
    have h2 : f.left ≫ T.hom = T'.hom := Over.w f
    rw [h1, h2, Over.fst_left, Over.snd_left]
    exact IsPullback.of_hasPullback U.hom T'.hom
  · rw [Over.fst_left, Over.snd_left]
    exact IsPullback.of_hasPullback U.hom T.hom

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WhiskerLeftLeftIsPullbackSnd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedImmersionRepresentsOfAffineOpens =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedImmersionRepresentsOfAffineOpens", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFactorClosedImmersionOfLocallyOnSource\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGlueClosedImmersionsOpenCover\npublic import Mathlib.Order.CompletePartialOrder\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFlatSurjectiveClosedSubschemeOfOpenCover\npublic import Mathlib.AlgebraicGeometry.Pullbacks\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WhiskerLeftLeftIsPullbackSnd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

theorem exists_closedImmersion_represents_of_affineOpens : ∀ (S : Scheme.{0}) (U T : Over S) (P : ∀ Y : Over S, (Y ⟶ U) → (Y ⟶ T) → Prop), (∀ (Y Y' : Over S) (f : Y' ⟶ Y) (u : Y ⟶ U) (t : Y ⟶ T), P Y u t → P Y' (f ≫ u) (f ≫ t)) → (∀ (Y : Over S) (u : Y ⟶ U) (t : Y ⟶ T), (∀ y : Y.left, ∃ W : Y.left.Opens, y ∈ W ∧ P (Over.mk (W.ι ≫ Y.hom)) (Over.homMk W.ι rfl ≫ u) (Over.homMk W.ι rfl ≫ t)) → P Y u t) → (∀ V : T.left.affineOpens, ∃ (H : Over S) (h : H ⟶ U ⊗ Over.mk (V.1.ι ≫ T.hom)), IsClosedImmersion h.left ∧ IsFinite (h ≫ snd U (Over.mk (V.1.ι ≫ T.hom))).left ∧ Flat (h ≫ snd U (Over.mk (V.1.ι ≫ T.hom))).left ∧ Surjective (h ≫ snd U (Over.mk (V.1.ι ≫ T.hom))).left ∧ ∀ (Y : Over S) (u : Y ⟶ U) (t : Y ⟶ Over.mk (V.1.ι ≫ T.hom)), P Y u (t ≫ Over.homMk V.1.ι rfl) ↔ ∃ z : Y ⟶ H, z ≫ h = lift u t) → ∃ (H : Over S) (h : H ⟶ U ⊗ T), IsClosedImmersion h.left ∧ IsFinite (h ≫ snd U T).left ∧ Flat (h ≫ snd U T).left ∧ Surjective (h ≫ snd U T).left ∧ ∀ (Y : Over S) (u : Y ⟶ U) (t : Y ⟶ T), P Y u t ↔ ∃ z : Y ⟶ H, z ≫ h = lift u t := by
  intro S U T P hres hloc hV
  choose H h hci hfin hflat hsurj hrep using hV
  have key : ∀ (V : T.left.affineOpens) (Y : Over S) (g : Y ⟶ U ⊗ Over.mk (V.1.ι ≫ T.hom)),
      P Y (g ≫ (U ◁ (Over.homMk V.1.ι rfl : Over.mk (V.1.ι ≫ T.hom) ⟶ T)) ≫ fst U T)
        (g ≫ (U ◁ (Over.homMk V.1.ι rfl : Over.mk (V.1.ι ≫ T.hom) ⟶ T)) ≫ snd U T) ↔
      ∃ z : Y.left ⟶ (H V).left, z ≫ (h V).left = g.left := by
    intro V Y g
    rw [whiskerLeft_fst, whiskerLeft_snd, ← Category.assoc g]
    rw [hrep V Y (g ≫ fst _ _) (g ≫ snd _ _), lift_comp_fst_snd]
    constructor
    · rintro ⟨z, hz⟩; exact ⟨z.left, by rw [← Over.comp_left, hz]⟩
    · rintro ⟨z, hz⟩
      refine ⟨Over.homMk z ?_, ?_⟩
      · rw [← Over.w (h V), ← Category.assoc, hz, Over.w g]
      · apply Over.OverMorphism.ext; simpa using hz

  have hpb : ∀ V : T.left.affineOpens,
      IsPullback (U ◁ (Over.homMk V.1.ι rfl : Over.mk (V.1.ι ≫ T.hom) ⟶ T)).left
        (snd U (Over.mk (V.1.ι ≫ T.hom))).left (snd U T).left V.1.ι :=
    fun V => _root_.GlobalTheory.whiskerLeft_left_isPullback_snd S U T _ _
  have hoi : ∀ V : T.left.affineOpens,
      IsOpenImmersion (U ◁ (Over.homMk V.1.ι rfl : Over.mk (V.1.ι ≫ T.hom) ⟶ T)).left :=
    fun V => MorphismProperty.of_isPullback (P := @IsOpenImmersion) (hpb V).flip inferInstance
  have hmem : ∀ y : T.left, ∃ V : T.left.affineOpens, y ∈ V.1 := by
    intro y
    obtain ⟨_, ⟨V, hV, rfl⟩, hyV, -⟩ :=
      T.left.isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ y) isOpen_univ
    exact ⟨⟨V, hV⟩, hyV⟩
  have hsup : (⨆ V : T.left.affineOpens, (V.1 : T.left.Opens)) = ⊤ := by
    rw [eq_top_iff]; intro y _
    obtain ⟨V, hV⟩ := hmem y
    exact TopologicalSpace.Opens.mem_iSup.mpr ⟨V, hV⟩
  have hcov : ∀ x : (U ⊗ T).left, ∃ V : T.left.affineOpens,
      x ∈ Set.range (U ◁ (Over.homMk V.1.ι rfl : Over.mk (V.1.ι ≫ T.hom) ⟶ T)).left := by
    intro x
    obtain ⟨V, hV⟩ := hmem ((snd U T).left x)
    obtain ⟨v, hv⟩ : (snd U T).left x ∈ Set.range V.1.ι := by rw [Scheme.Opens.range_ι]; exact hV
    obtain ⟨w, hw1, -⟩ := Scheme.Pullback.exists_preimage_pullback x v hv.symm
    refine ⟨V, (hpb V).isoPullback.inv w, ?_⟩
    rw [← Scheme.Hom.comp_apply, IsPullback.isoPullback_inv_fst]; exact hw1
  have compat : ∀ (V V' : T.left.affineOpens) (Y : Scheme.{0})
      (g : Y ⟶ (U ⊗ Over.mk (V.1.ι ≫ T.hom)).left) (g' : Y ⟶ (U ⊗ Over.mk (V'.1.ι ≫ T.hom)).left),
      g ≫ (U ◁ (Over.homMk V.1.ι rfl : Over.mk (V.1.ι ≫ T.hom) ⟶ T)).left =
        g' ≫ (U ◁ (Over.homMk V'.1.ι rfl : Over.mk (V'.1.ι ≫ T.hom) ⟶ T)).left →
      ((∃ z : Y ⟶ (H V).left, z ≫ (h V).left = g) ↔ (∃ z : Y ⟶ (H V').left, z ≫ (h V').left = g')) := by
    intro V V' Y g g' hgg
    let Y' : Over S := Over.mk (g ≫ (U ◁ (Over.homMk V.1.ι rfl : Over.mk (V.1.ι ≫ T.hom) ⟶ T)).left ≫ (U ⊗ T).hom)
    let e : Y' ⟶ U ⊗ Over.mk (V.1.ι ≫ T.hom) := Over.homMk g (by simp [Y'])
    let e' : Y' ⟶ U ⊗ Over.mk (V'.1.ι ≫ T.hom) := Over.homMk g' (by
      show _ = g ≫ _ ≫ _; rw [← Category.assoc g, hgg, Category.assoc, Over.w])
    have hm : e ≫ (U ◁ (Over.homMk V.1.ι rfl : Over.mk (V.1.ι ≫ T.hom) ⟶ T)) =
        e' ≫ (U ◁ (Over.homMk V'.1.ι rfl : Over.mk (V'.1.ι ≫ T.hom) ⟶ T)) := by
      apply Over.OverMorphism.ext; simpa [e, e'] using hgg
    have k := key V Y' e
    have k' := key V' Y' e'
    rw [reassoc_of% hm, reassoc_of% hm] at k
    exact k.symm.trans k'
  obtain ⟨B, b, hb, hbrep⟩ := _root_.GlobalTheory.GlueClosed.exists_glue_isClosedImmersion (U ⊗ T).left T.left.affineOpens _ _ hoi hcov
    (fun V => (H V).left) (fun V => (h V).left) hci compat
  have hprops := _root_.GlobalTheory.finite_flat_surjective_of_openCover (U ⊗ T).left T.left (snd U T).left T.left.affineOpens
    (fun V => V.1) hsup _ _ _ hpb B b hb _ _ hci hbrep
    (fun V => ⟨hfin V, hflat V, hsurj V⟩)
  refine ⟨Over.mk (b ≫ (U ⊗ T).hom), Over.homMk b rfl, hb, hprops.1, hprops.2.1, hprops.2.2, ?_⟩
  intro Y u t

  have hW : ∀ (V : T.left.affineOpens),
      P (Over.mk ((t.left ⁻¹ᵁ V.1).ι ≫ Y.hom)) (Over.homMk (t.left ⁻¹ᵁ V.1).ι rfl ≫ u)
        (Over.homMk (t.left ⁻¹ᵁ V.1).ι rfl ≫ t) ↔
      ∃ z : (t.left ⁻¹ᵁ V.1).toScheme ⟶ B, z ≫ b = (t.left ⁻¹ᵁ V.1).ι ≫ (lift u t).left := by
    intro V
    have hr : Set.range ((t.left ⁻¹ᵁ V.1).ι ≫ t.left) ⊆ Set.range V.1.ι := by
      rintro _ ⟨w, rfl⟩
      rw [Scheme.Opens.range_ι]
      have h1 : (t.left ⁻¹ᵁ V.1).ι w ∈ ((t.left ⁻¹ᵁ V.1 : Y.left.Opens) : Set Y.left) := by
        rw [← Scheme.Opens.range_ι]; exact Set.mem_range_self w
      rw [Scheme.Hom.comp_apply]; exact h1
    let tW : Over.mk ((t.left ⁻¹ᵁ V.1).ι ≫ Y.hom) ⟶ Over.mk (V.1.ι ≫ T.hom) :=
      Over.homMk (IsOpenImmersion.lift V.1.ι _ hr) (by simp [IsOpenImmersion.lift_fac_assoc])
    have htW : tW ≫ (Over.homMk V.1.ι rfl : Over.mk (V.1.ι ≫ T.hom) ⟶ T) =
        Over.homMk (t.left ⁻¹ᵁ V.1).ι rfl ≫ t := by
      apply Over.OverMorphism.ext; simp [tW, IsOpenImmersion.lift_fac]
    let gW := lift (Over.homMk (t.left ⁻¹ᵁ V.1).ι rfl ≫ u) tW
    have hgW : gW ≫ (U ◁ (Over.homMk V.1.ι rfl : Over.mk (V.1.ι ≫ T.hom) ⟶ T)) =
        Over.homMk (t.left ⁻¹ᵁ V.1).ι rfl ≫ lift u t := by
      apply CartesianMonoidalCategory.hom_ext <;> simp [gW, htW]
    have k := key V _ gW
    rw [reassoc_of% hgW, reassoc_of% hgW, lift_fst, lift_snd] at k
    rw [k, ← hbrep V _ gW.left, ← Over.comp_left, hgW]
    rfl
  constructor
  · intro hP
    obtain ⟨z, hz⟩ := _root_.GlobalTheory.exists_factor_closedImmersion_of_locally _ _ _ b hb (lift u t).left (fun y => by
      obtain ⟨V, hV⟩ := hmem (t.left y)
      exact ⟨t.left ⁻¹ᵁ V.1, hV, (hW V).mp (hres _ _ _ u t hP)⟩)
    refine ⟨Over.homMk z ?_, ?_⟩
    · simp only [Over.mk_hom]; rw [← Category.assoc, hz, Over.w]
    · apply Over.OverMorphism.ext; simpa using hz
  · rintro ⟨z, hz⟩
    apply hloc
    intro y
    obtain ⟨V, hV⟩ := hmem (t.left y)
    refine ⟨t.left ⁻¹ᵁ V.1, hV, (hW V).mpr ⟨(t.left ⁻¹ᵁ V.1).ι ≫ z.left, ?_⟩⟩
    rw [Category.assoc, ← hz]; rfl
end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedImmersionRepresentsOfAffineOpens =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SameRigidifiedFamilyAbelianSchemeOfLocal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SameRigidifiedFamilyAbelianSchemeOfLocal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LocallyTrivialOfIsoPull\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.SurjectiveAppOfIsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.TangentLinearity.ConstPullback\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualCon.SameLocal

theorem injective_app_of_section {X Y : Scheme.{0}} (p : X ⟶ Y) (e : Y ⟶ X) (he : e ≫ p = 𝟙 Y)
    (V : Y.Opens) : Function.Injective (p.app V).hom := by
  have hi : IsIso ((e ≫ p).app V) := by
    rw [Scheme.Hom.congr_app he V]
    exact @IsIso.comp_isIso _ _ _ _ _ _ _ inferInstance (Functor.map_isIso _ _)
  have k : ∀ z, ((e ≫ p).app V).hom z = (e.app (p ⁻¹ᵁ V)).hom ((p.app V).hom z) := fun z => rfl
  intro x x' hx
  apply (ConcreteCategory.bijective_of_isIso ((e ≫ p).app V)).1
  change ((e ≫ p).app V).hom x = ((e ≫ p).app V).hom x'
  rw [k, k, hx]

theorem same_of_local : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A], IsAbelianScheme A → ∀ (U T : Over (Sp R)) (M : LB (A ⊗ U).left) (N : LB (A ⊗ T).left) (hM : M.IsLB) (hN : N.IsLB), (∀ (Y : Over (Sp R)) (u : Y ⟶ U), evc hM (1 : Y ⟶ A) u = 0) → (∀ (Y : Over (Sp R)) (t : Y ⟶ T), evc hN (1 : Y ⟶ A) t = 0) → ∀ (Y : Over (Sp R)) (u : Y ⟶ U) (t : Y ⟶ T), (∀ y : Y.left, ∃ W : Y.left.Opens, y ∈ W ∧ Same A M N (Over.homMk W.ι rfl ≫ u : Over.mk (W.ι ≫ Y.hom) ⟶ U) (Over.homMk W.ι rfl ≫ t)) → Same A M N u t := by
  intro R _ _ A _ hA U T M N hM hN hMr hNr Y u t hloc
  let p := (snd A Y).left
  let e := (lift (1 : Y ⟶ A) (𝟙 Y)).left
  have he : e ≫ p = 𝟙 Y.left := by
    simp only [p, e, ← Over.comp_left, lift_snd, Over.id_left]
  have hp : ∀ V : Y.left.Opens, Function.Bijective (p.app V).hom := fun V =>
    ⟨injective_app_of_section p e he V,
      GlobalTheory.surjective_app_of_isAbelianScheme GlobalTheory.SemiRigid.globalFns _ (Out.TLinPf.isAb_pullback Y.hom A hA) V⟩
  rw [same_iff hM hN, ← sub_eq_zero]
  obtain ⟨L, hL, hLc⟩ := cls_surj (evc hM (fst A Y) (snd A Y ≫ u) - evc hN (fst A Y) (snd A Y ≫ t))
  have hloc' : ∀ y : Y.left, ∃ V : Y.left.Opens, y ∈ V ∧ ∃ g : LB.Gen (L.pull (p ⁻¹ᵁ V).ι), g.IsGen := by
    intro y
    obtain ⟨W, hyW, hW⟩ := hloc y
    refine ⟨W, hyW, (cls_eq_zero_iff (pull_isLB hL _)).1 ?_⟩
    rw [cls_pull hL, hLc]
    let j : Over.mk (W.ι ≫ Y.hom) ⟶ Y := Over.homMk W.ι rfl
    have h0 : CechPic.pull (A ◁ j).left
        (evc hM (fst A Y) (snd A Y ≫ u) - evc hN (fst A Y) (snd A Y ≫ t)) = 0 := by
      rw [map_sub, pull_evc, pull_evc, whiskerLeft_fst, whiskerLeft_snd_assoc, whiskerLeft_snd_assoc, sub_eq_zero]
      exact (same_iff hM hN _ _).1 hW
    let P : Over (Sp R) := Over.mk ((p ⁻¹ᵁ W).ι ≫ (A ⊗ Y).hom)
    let k : P ⟶ A ⊗ Y := Over.homMk (p ⁻¹ᵁ W).ι rfl
    have hr : Set.range ((p ⁻¹ᵁ W).ι ≫ p) ⊆ Set.range W.ι := by
      rintro _ ⟨z, rfl⟩
      rw [Scheme.Opens.range_ι]
      exact z.2
    let w : P ⟶ Over.mk (W.ι ≫ Y.hom) := Over.homMk (IsOpenImmersion.lift W.ι ((p ⁻¹ᵁ W).ι ≫ p) hr) (by
      simp only [Over.mk_hom, P]
      rw [← Category.assoc, IsOpenImmersion.lift_fac, Category.assoc, Over.w (snd A Y)])
    let φ : P ⟶ A ⊗ Over.mk (W.ι ≫ Y.hom) := lift (k ≫ fst A Y) w
    have hφ : φ ≫ (A ◁ j) = k := by
      refine CartesianMonoidalCategory.hom_ext _ _ ?_ ?_
      · rw [Category.assoc, whiskerLeft_fst, lift_fst]
      · rw [Category.assoc, whiskerLeft_snd, lift_snd_assoc]
        exact Over.OverMorphism.ext (IsOpenImmersion.lift_fac _ _ _)
    have e2 : (p ⁻¹ᵁ W).ι = φ.left ≫ (A ◁ j).left := by rw [← Over.comp_left, hφ]; rfl
    rw [e2, pull_comp, h0, map_zero]
  obtain ⟨N', hN', w, hw⟩ := GlobalTheory.CubeLawCompare.iso_pull_of_locally_trivial p hp hL hloc'
  have h1 : CechPic.pull p (cls N' hN') = cls L hL := by
    rw [← cls_pull hN' p (pull_isLB hN' p)]
    exact (cls_eq_iff _ hL).2 ⟨w, hw⟩
  have h2 : CechPic.pull e (cls L hL) = 0 := by
    rw [hLc, map_sub, pull_evc, pull_evc, lift_fst, lift_snd_assoc, Category.id_comp, hMr, hNr, sub_zero]
  have h3 : cls N' hN' = 0 := by
    rw [← h2, ← h1, ← pull_comp, he, pull_id]
  rw [← hLc, ← h1, h3, map_zero]

end GlobalTheory.DualCon.SameLocal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SameRigidifiedFamilyAbelianSchemeOfLocal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFamilyAgreementLocusOfAffineOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFamilyAgreementLocusOfAffineOpen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedImmersionRepresentsOfAffineOpens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SameRigidifiedFamilyAbelianSchemeOfLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualCon.GlueKernel

theorem same_comp {S : Scheme.{0}} {A U T Y Y' : Over S} {M : LB (A ⊗ U).left} {N : LB (A ⊗ T).left}
    (hM : M.IsLB) (hN : N.IsLB) (f : Y' ⟶ Y) (u : Y ⟶ U) (t : Y ⟶ T) (h : Same A M N u t) :
    Same A M N (f ≫ u) (f ≫ t) := by
  rw [same_iff hM hN] at h ⊢
  have e := congrArg (GlobalTheory.CechPic.pull (A ◁ f).left) h
  rw [pull_evc, pull_evc] at e
  simpa only [whiskerLeft_fst, whiskerLeft_snd_assoc] using e

theorem exists_kernel_of_affine : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A], IsAbelianScheme A → ∀ (U T : Over (Sp R)) (M : LB (A ⊗ U).left) (N : LB (A ⊗ T).left) (hM : M.IsLB) (hN : N.IsLB), (∀ (Y : Over (Sp R)) (u : Y ⟶ U), evc hM (1 : Y ⟶ A) u = 0) → (∀ (Y : Over (Sp R)) (t : Y ⟶ T), evc hN (1 : Y ⟶ A) t = 0) → (∀ V : T.left.affineOpens, ∃ (H : Over (Sp R)) (h : H ⟶ U ⊗ Over.mk (V.1.ι ≫ T.hom)), IsClosedImmersion h.left ∧ IsFinite (h ≫ snd U (Over.mk (V.1.ι ≫ T.hom))).left ∧ Flat (h ≫ snd U (Over.mk (V.1.ι ≫ T.hom))).left ∧ Surjective (h ≫ snd U (Over.mk (V.1.ι ≫ T.hom))).left ∧ ∀ (Y : Over (Sp R)) (u : Y ⟶ U) (t : Y ⟶ Over.mk (V.1.ι ≫ T.hom)), Same A M N u (t ≫ Over.homMk V.1.ι rfl) ↔ ∃ z : Y ⟶ H, z ≫ h = lift u t) → ∃ (H : Over (Sp R)) (h : H ⟶ U ⊗ T), IsClosedImmersion h.left ∧ IsFinite (h ≫ snd U T).left ∧ Flat (h ≫ snd U T).left ∧ Surjective (h ≫ snd U T).left ∧ ∀ (Y : Over (Sp R)) (u : Y ⟶ U) (t : Y ⟶ T), Same A M N u t ↔ ∃ z : Y ⟶ H, z ≫ h = lift u t := by
  intro R _ _ A _ hA U T M N hM hN h0M h0N hV
  exact _root_.GlobalTheory.exists_closedImmersion_represents_of_affineOpens (Sp R) U T (fun Y u t => Same A M N u t)
    (fun Y Y' f u t h => same_comp hM hN f u t h)
    (fun Y u t h => _root_.GlobalTheory.DualCon.SameLocal.same_of_local R A hA U T M N hM hN h0M h0N Y u t h) hV

end GlobalTheory.DualCon.GlueKernel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFamilyAgreementLocusOfAffineOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatCoverAdditiveFamilyEqLambda =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatCoverAdditiveFamilyEqLambda", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFamilyAgreementLocusOfAffineOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTwistedKernelClosedFiniteFlatAffineBaseStatement\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHeckeQuotientTriple\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualCover

theorem exists_cover : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ (L : LB A.left) (hL : L.IsLB), Out.RelAmple A L → ∀ (T : Over (Sp R)) (N : LB (A ⊗ T).left) (hN : Fam A N), ∃ (H : Over (Sp R)) (h : H ⟶ T) (x : H ⟶ A), Flat h.left ∧ Surjective h.left ∧ QuasiCompact h.left ∧ (∀ (Y : Over (Sp R)) (a : Y ⟶ A) (y : Y ⟶ H), evc hN.isLB a (y ≫ h) = GlobalTheory.CechPic.pull (a * (y ≫ x)).left (cls L hL) - GlobalTheory.CechPic.pull a.left (cls L hL) - GlobalTheory.CechPic.pull (y ≫ x).left (cls L hL) + GlobalTheory.CechPic.pull (1 : Y ⟶ A).left (cls L hL)) := by
  intro R _ _ A _ g hA _ L hL hamp T N hN
  have hP : (abelian₂ A L).IsLB := LB.isLB_linComb hL _ _
  have eP : ∀ (Y : Over (Sp R)) (a b : Y ⟶ A), evc hP a b = lam (cls L hL) a b := fun Y a b ↦ by
    rw [evc, show cls _ hP = lam (cls L hL) (fst A A) (snd A A) from cls_cube_two hL _ _ hP, pull_lam, lift_fst,
      lift_snd]
  have loc : ∀ V : T.left.affineOpens, ∃ (H : Over (Sp R)) (h : H ⟶ A ⊗ Over.mk (V.1.ι ≫ T.hom)),
      IsClosedImmersion h.left ∧ IsFinite (h ≫ snd A (Over.mk (V.1.ι ≫ T.hom))).left ∧
      Flat (h ≫ snd A (Over.mk (V.1.ι ≫ T.hom))).left ∧ Surjective (h ≫ snd A (Over.mk (V.1.ι ≫ T.hom))).left ∧
      ∀ (Y : Over (Sp R)) (u : Y ⟶ A) (t : Y ⟶ Over.mk (V.1.ι ≫ T.hom)),
        Same A (abelian₂ A L) N u (t ≫ Over.homMk V.1.ι rfl) ↔ ∃ z : Y ⟶ H, z ≫ h = lift u t := by
    intro V
    haveI : IsAffine (Over.mk (V.1.ι ≫ T.hom)).left := V.2
    set j : Over.mk (V.1.ι ≫ T.hom) ⟶ T := Over.homMk V.1.ι rfl
    have hNV : (ev N (fst A (Over.mk (V.1.ι ≫ T.hom))) (snd A _ ≫ j)).IsLB := pull_isLB hN.isLB _
    have eV : ∀ (Y : Over (Sp R)) (a : Y ⟶ A) (t : Y ⟶ Over.mk (V.1.ι ≫ T.hom)),
        evc hNV a t = evc hN.isLB a (t ≫ j) := fun Y a t ↦ by
      rw [evc_ev hN.isLB, lift_fst, lift_snd_assoc]
    have fV : Fam A (ev N (fst A (Over.mk (V.1.ι ≫ T.hom))) (snd A _ ≫ j)) :=
      ⟨hNV, (isAdditive_iff hNV).2 fun Y a a' t ↦ by
        rw [eV, eV, eV]; exact (isAdditive_iff hN.isLB).1 hN.add Y a a' (t ≫ j)⟩
    obtain ⟨H, h, h1, h2, h3, h4, h5⟩ := _root_.GlobalTheory.DualCover.twistedKernel_affine R A hA L hL hamp _ _ fV
    refine ⟨H, h, h1, h2, h3, h4, fun Y u t ↦ ?_⟩
    rw [← h5, same_iff hP hN.isLB, same_iff hP hNV, eV, Category.assoc]
  obtain ⟨H, h, -, hfin, hfl, hsu, hrep⟩ := _root_.GlobalTheory.DualCon.GlueKernel.exists_kernel_of_affine R A hA A T (abelian₂ A L) N hP hN.isLB
    (fun Y u ↦ by rw [eP, lam_one_left]) (fun Y t ↦ hN.add.evc_one hN.isLB t) loc
  refine ⟨H, h ≫ snd A T, h ≫ fst A T, hfl, hsu, inferInstance, fun Y a y ↦ ?_⟩
  have hs : Same A (abelian₂ A L) N (y ≫ h ≫ fst A T) (y ≫ h ≫ snd A T) :=
    (hrep Y _ _).2 ⟨y, by ext <;> simp⟩
  have e := congrArg (CechPic.pull (lift a (𝟙 Y)).left) ((same_iff hP hN.isLB _ _).1 hs)
  rw [pull_evc, pull_evc, lift_fst, lift_snd_assoc, Category.id_comp, lift_snd_assoc, Category.id_comp, eP] at e
  rw [← e, lam]

end GlobalTheory.DualCover
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatCoverAdditiveFamilyEqLambda =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LamTrivOfMemKL =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LamTrivOfMemKL", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.RelativeAmpleness.RelAmpleAndKTrivIff\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjRestrictSnd\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHeckeQuotientTriple\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.TheoremOfCubeTwoProjectiveFactors\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualCon

theorem lam_triv_of_memKL : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A → ∀ L : LB A.left,
    L.IsLB → ∀ (T : Over S) (x : T ⟶ A), GlobalTheory.MemKL A L x → Triv (ev (abelian₂ A L) (fst A T) (snd A T ≫ x)) := by
  intro S A _ hA L hL T x hx
  haveI := hA.comm
  have hP : (abelian₂ A L).IsLB := LB.isLB_linComb hL _ _
  have e : ∀ (Y : Over S) (a b : Y ⟶ A), evc hP a b = lam (cls L hL) a b := fun Y a b ↦ by
    rw [evc, show cls _ hP = lam (cls L hL) (fst A A) (snd A A) from cls_cube_two hL _ _ hP, pull_lam, lift_fst,
      lift_snd]
  rw [triv_ev_iff hP]
  obtain ⟨M, hM, hc⟩ := cls_surj (evc hP (fst A T) (snd A T ≫ x))
  rw [← hc]
  have key : ∀ {X : Scheme.{0}} (f : X ⟶ (A ⊗ T).left),
      Triv (M.pull f) ↔ CechPic.pull f (evc hP (fst A T) (snd A T ≫ x)) = 0 := by
    intro X f
    rw [← hc, ← cls_pull hM f (pull_isLB hM f)]
    exact (cls_eq_zero_iff (pull_isLB hM f)).symm
  refine (cls_eq_zero_iff hM).2 (GlobalTheory.CubeGlue.triv_of_locally_triv hM (snd A T).left (lift 1 (𝟙 T)).left ?_
    (surj_restrict_snd hA T) ?_ ?_)
  · rw [← Over.comp_left, lift_snd, Over.id_left]
  · rw [key, pull_evc, e, lift_fst, lift_snd_assoc, Category.id_comp, lam_one_left]
  · intro p
    obtain ⟨V, hV, hTV⟩ := hx p
    obtain ⟨W, hW, hw⟩ := exists_pull_eq_zero
      (CechPic.pull x.left (cls L hL) - CechPic.pull (1 : T ⟶ A).left (cls L hL)) p
    refine ⟨V ⊓ W, ⟨hV, hW⟩, ?_⟩
    let U := (snd A T).left ⁻¹ᵁ (V ⊓ W)
    let Y : Over S := Over.mk (U.ι ≫ (A ⊗ T).hom)
    let i : Y ⟶ A ⊗ T := Over.homMk U.ι rfl
    show Triv (M.pull i.left)
    rw [key, pull_evc, e]
    have ht : ∀ z, (i ≫ snd A T).left z ∈ V := fun z ↦ z.2.1
    have h1 := pull_mul_eq hL hTV (i ≫ snd A T) ht (i ≫ fst A T)
    have h2 : CechPic.pull (i ≫ snd A T).left
        (CechPic.pull x.left (cls L hL) - CechPic.pull (1 : T ⟶ A).left (cls L hL)) = 0 :=
      pull_eq_zero_of_mem W (i ≫ snd A T).left (fun z ↦ z.2.2) hw
    rw [map_sub, ← pull_comp, ← pull_comp, ← Over.comp_left, ← Over.comp_left, MonObj.comp_one,
      Category.assoc] at h2
    rw [lam, mul_comm (i ≫ fst A T), ← Category.assoc i (snd A T) x, h1, Category.assoc, sub_self, zero_sub,
      neg_add_eq_zero]
    exact (sub_eq_zero.1 h2)

end GlobalTheory.DualCon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LamTrivOfMemKL =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentMumfordBundleQuotient =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentMumfordBundleQuotient", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHeckeQuotientTriple\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Development.AbelianVarietyTheory.PublishedTheorems.RelativeAmpleness.RelAmpleAndKTrivIff\npublic import CompanionTheory.AutomorphicTheory.ProductFormulaTheory.DualAbelianSchemes.Rigdesc\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LamTrivOfMemKL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj

attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.QuotDesc

def idq {S : Scheme.{0}} {A B : Over S} (q : A ⟶ B) : A ⊗ A ⟶ A ⊗ B := lift (fst A A) (snd A A ≫ q)

theorem evc_lam {S : Scheme.{0}} {A Y : Over S} [GrpObj A] {L : LB A.left} (hL : L.IsLB) (hΛ : (abelian₂ A L).IsLB)
    (a b : Y ⟶ A) : evc hΛ a b = lam (cls L hL) a b := by
  rw [evc, show cls _ hΛ = lam (cls L hL) (fst A A) (snd A A) from cls_cube_two hL _ _ hΛ, pull_lam, lift_fst,
    lift_snd]

theorem lam_mul_right_sub {S : Scheme.{0}} {A Y : Over S} [GrpObj A] [IsCommMonObj A] (c : Pic A.left)
    (a k y : Y ⟶ A) : lam c a (k * y) - lam c a y = lam c (a * y) k - lam c y k := by
  simp only [lam]
  rw [show a * y * k = a * (k * y) by rw [_root_.mul_assoc, _root_.mul_comm y k],
    show y * k = k * y from _root_.mul_comm y k]
  abel

theorem exists_descent_lam : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A],
    IsAbelianScheme A → ∀ (L : LB A.left) (hL : L.IsLB) (H : Over (Sp R)) [GrpObj H] (i : H ⟶ A), IsMonHom i →
    Mono i → IsFinite H.hom → Flat H.hom →
    (∀ (T : Over (Sp R)) (x : T ⟶ A), GlobalTheory.MemKL A L x ↔ ∃ z : T ⟶ H, z ≫ i = x) →
    ∀ (B : Over (Sp R)) [GrpObj B] (q : A ⟶ B), IsAbelianScheme B → IsMonHom q → IsFinite q.left → Flat q.left →
    Surjective q.left → IsPullback ((fst H A ≫ i) * snd H A) (snd H A) q q →
    ∃ (P : LB (A ⊗ B).left) (hP : P.IsLB), ∀ (Y : Over (Sp R)) (a x : Y ⟶ A),
      evc hP a (x ≫ q) = GlobalTheory.CechPic.pull (a * x).left (cls L hL) - GlobalTheory.CechPic.pull a.left (cls L hL) -
        GlobalTheory.CechPic.pull x.left (cls L hL) + GlobalTheory.CechPic.pull (1 : Y ⟶ A).left (cls L hL) := by
  intro R _ _ A _ hA L hL H _ i _ _ _ _ hK B _ q hB _ hqf hqfl hqs hpb
  have := hA.comm
  have hΛ : (abelian₂ A L).IsLB := LB.isLB_linComb hL _ _
  have hku : lam (cls L hL) (fst A H) (snd A H ≫ i) = 0 := by
    rw [← evc_lam hL hΛ, ← triv_ev_iff hΛ]
    exact lam_triv_of_memKL _ A hA L hL H i ((hK H i).2 ⟨𝟙 H, Category.id_comp i⟩)
  have := hB.smooth
  have := hqf
  have : IsLocallyNoetherian B.left := LocallyOfFiniteType.isLocallyNoetherian B.hom
  have hlfp : LocallyOfFinitePresentation q.left := inferInstance
  obtain ⟨-, h2⟩ := CompanionTheory.PfDual.rigDescent_holds (Sp R) A A B hA q hqfl hlfp hqs
  have hrig : Triv (ev (abelian₂ A L) (1 : A ⟶ A) (𝟙 A)) := by
    rw [triv_ev_iff hΛ, evc_lam hL hΛ, lam_one_left]
  have hinv : ∀ (T : Over (Sp R)) (x x' : T ⟶ A), x ≫ q = x' ≫ q →
      LBIso (ev (abelian₂ A L) (fst A T) (snd A T ≫ x)) (ev (abelian₂ A L) (fst A T) (snd A T ≫ x')) := by
    intro T x x' hxx
    refine (cls_eq_iff (pull_isLB hΛ _) (pull_isLB hΛ _)).1 ?_
    rw [cls_ev hΛ, cls_ev hΛ, evc_lam hL hΛ, evc_lam hL hΛ]
    obtain ⟨z, hz1, hz2⟩ : ∃ z : T ⟶ H ⊗ A, z ≫ ((fst H A ≫ i) * snd H A) = x ∧ z ≫ snd H A = x' :=
      ⟨_, hpb.lift_fst x x' hxx, hpb.lift_snd x x' hxx⟩
    subst hz1 hz2
    have ex : snd A T ≫ z ≫ ((fst H A ≫ i) * snd H A) =
        (snd A T ≫ z ≫ fst H A ≫ i) * (snd A T ≫ z ≫ snd H A) := by
      rw [MonObj.comp_mul, MonObj.comp_mul]
    rw [ex, ← sub_eq_zero, lam_mul_right_sub]
    have k : ∀ u : A ⊗ T ⟶ A, lam (cls L hL) u (snd A T ≫ z ≫ fst H A ≫ i) = 0 := fun u => by
      have e := congrArg (GlobalTheory.CechPic.pull (lift u (snd A T ≫ z ≫ fst H A)).left) hku
      rwa [map_zero, pull_lam, lift_fst, lift_snd_assoc, Category.assoc, Category.assoc] at e
    rw [k, k, sub_zero]
  obtain ⟨N, hN, -, hiso⟩ := h2 (abelian₂ A L) hΛ hrig hinv
  refine ⟨N, hN, fun Y a x => ?_⟩
  have hPc : GlobalTheory.CechPic.pull (idq q).left (cls N hN) = cls (abelian₂ A L) hΛ :=
    ((cls_eq_iff hΛ (pull_isLB hN _)).2 hiso).symm
  have e : lift a (x ≫ q) = lift a x ≫ idq q := by
    simp [idq]
  rw [evc, e, Over.comp_left, pull_comp, hPc, show cls _ hΛ = lam (cls L hL) (fst A A) (snd A A) from cls_cube_two hL _ _ hΛ, pull_lam, lift_fst,
    lift_snd]
  rfl

end GlobalTheory.QuotDesc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentMumfordBundleQuotient =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSpecializesMinimal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSpecializesMinimal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsAmpleLBOfRelAmpleOfIsAffine\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsAffineOpenNonzeroLocusOfUniversallyClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open ReciprocityTheory.ChartRestriction.G.Out
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualCon.FinAffAmple

variable {X : Scheme.{0}} {M : LB X}

theorem mem_secAdd_iff_right {s t : M.Sec} {x : X} (ht : x ∉ nonzeroLocus t) :
    x ∈ nonzeroLocus (DVR.SecOps.secAdd s t) ↔ x ∈ nonzeroLocus s := by
  by_cases hc : ∃ k, x ∈ M.U k
  · obtain ⟨k, hk⟩ := hc
    rw [GlobalTheory.mem_nonzeroLocus_iff_basicOpen _ hk, GlobalTheory.mem_nonzeroLocus_iff_basicOpen _ hk] at *
    change x ∈ X.basicOpen (s.f k + t.f k) ↔ _
    rw [Scheme.mem_basicOpen _ _ _ hk, Scheme.mem_basicOpen _ _ _ hk] at *
    rw [map_add (f := _)]
    have hm : (ConcreteCategory.hom (X.presheaf.germ (M.U k) x hk)) (t.f k) ∈ IsLocalRing.maximalIdeal _ :=
      (IsLocalRing.mem_maximalIdeal _).2 ht
    have := Ideal.add_mem_iff_left (IsLocalRing.maximalIdeal _)
      (a := (ConcreteCategory.hom (X.presheaf.germ (M.U k) x hk)) (s.f k)) hm
    rw [IsLocalRing.mem_maximalIdeal, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, mem_nonunits_iff] at this
    exact not_iff_not.1 this
  · push_neg at hc
    exact ⟨fun h => absurd (GlobalTheory.exists_chart_of_mem_nonzeroLocus h) (by simpa using hc),
      fun h => absurd (GlobalTheory.exists_chart_of_mem_nonzeroLocus h) (by simpa using hc)⟩

theorem mem_secAdd_iff_left {s t : M.Sec} {x : X} (hs : x ∉ nonzeroLocus s) :
    x ∈ nonzeroLocus (DVR.SecOps.secAdd s t) ↔ x ∈ nonzeroLocus t := by
  have e : DVR.SecOps.secAdd s t = DVR.SecOps.secAdd t s := DVR.SecOps.sec_ext fun i => add_comm (s.f i) (t.f i)
  rw [e]
  exact mem_secAdd_iff_right hs

theorem exists_sec_forall_mem (T : Finset X) (t : X → M.Sec) (ht : ∀ x ∈ T, x ∈ nonzeroLocus (t x))
    (ht' : ∀ x ∈ T, ∀ y ∈ T, y ≠ x → y ∉ nonzeroLocus (t x)) :
    ∃ g : M.Sec, ∀ x ∈ T, x ∈ nonzeroLocus g := by
  classical
  suffices H : ∀ T' : Finset X, T' ⊆ T → ∃ g : M.Sec, ∀ x ∈ T, (x ∈ nonzeroLocus g ↔ x ∈ T') by
    obtain ⟨g, hg⟩ := H T subset_rfl
    exact ⟨g, fun x hx => (hg x hx).2 hx⟩
  intro T'
  induction T' using Finset.induction_on with
  | empty =>
    intro _
    refine ⟨DVR.SecOps.secZero, fun x _ => ?_⟩
    rw [GlobalTheory.nonzeroLocus_secZero]
    simp
  | insert a T' ha ih =>
    intro hsub
    obtain ⟨g, hg⟩ := ih ((Finset.subset_insert a T').trans hsub)
    have haT : a ∈ T := hsub (Finset.mem_insert_self a T')
    refine ⟨DVR.SecOps.secAdd g (t a), fun x hx => ?_⟩
    by_cases hxa : x = a
    · subst hxa
      rw [mem_secAdd_iff_left (fun h => ha ((hg x hx).1 h))]
      simpa using ht x haT
    · rw [mem_secAdd_iff_right (ht' a haT x hx hxa), hg x hx, Finset.mem_insert]
      simp [hxa]

theorem exists_specializes_minimal {Z : Type*} [TopologicalSpace Z] [T0Space Z] (F : Finset Z) {x : Z}
    (hx : x ∈ F) : ∃ y ∈ F, x ⤳ y ∧ ∀ z ∈ F, y ⤳ z → z = y := by
  classical
  obtain ⟨y, hy, hmin⟩ := Finset.exists_min_image (F.filter (x ⤳ ·)) (fun y => (F.filter (y ⤳ ·)).card)
    ⟨x, Finset.mem_filter.2 ⟨hx, specializes_refl x⟩⟩
  obtain ⟨hyF, hxy⟩ := Finset.mem_filter.1 hy
  refine ⟨y, hyF, hxy, fun z hz hyz => ?_⟩
  have hsub : F.filter (z ⤳ ·) ⊆ F.filter (y ⤳ ·) := fun w hw => by
    obtain ⟨hwF, hzw⟩ := Finset.mem_filter.1 hw
    exact Finset.mem_filter.2 ⟨hwF, hyz.trans hzw⟩
  have hle := hmin z (Finset.mem_filter.2 ⟨hz, hxy.trans hyz⟩)
  have heq := Finset.eq_of_subset_of_card_le hsub hle
  have hzy : z ⤳ y := (Finset.mem_filter.1 (heq ▸ Finset.mem_filter.2 ⟨hyF, specializes_refl y⟩ :
    y ∈ F.filter (z ⤳ ·))).2
  exact (hyz.antisymm hzy).eq.symm

theorem finAff_of_isAmpleLB {Y : Scheme.{0}} (f : X ⟶ Y) [IsAffine Y] [UniversallyClosed f] {L : LB X}
    (h : IsAmpleLB L) : FinAff X := by
  classical
  intro F
  let F' := F.filter (fun x => ∀ z ∈ F, x ⤳ z → z = x)
  let V : X → X.Opens := fun x =>
    ⟨(⋃ y ∈ F'.erase x, closure ({y} : Set X))ᶜ, (isClosed_biUnion_finset fun _ _ => isClosed_closure).isOpen_compl⟩
  have hV : ∀ x ∈ F', x ∈ V x := by
    intro x hx hmem
    obtain ⟨y, hy, hxy⟩ := Set.mem_iUnion₂.1 hmem
    obtain ⟨hyx, hyF'⟩ := Finset.mem_erase.1 hy
    have hyx' : y ⤳ x := specializes_iff_mem_closure.2 hxy
    exact hyx ((Finset.mem_filter.1 hyF').2 x (Finset.mem_filter.1 hx).1 hyx').symm
  have hV' : ∀ x ∈ F', ∀ y ∈ F', y ≠ x → y ∉ V x := fun x _ y hy hyx hmem =>
    hmem (Set.mem_iUnion₂.2 ⟨y, Finset.mem_erase.2 ⟨hyx, hy⟩, subset_closure rfl⟩)
  choose n hn s hs hsV _ using fun x : F' => h.exists_affine_le (hV x.1 x.2)
  obtain ⟨N, hN, t, ht⟩ := exists_common_pow n hn s
  let tt : X → (lbPow L N).Sec := fun x => if hx : x ∈ F' then t ⟨x, hx⟩ else DVR.SecOps.secZero
  have htt : ∀ x (hx : x ∈ F'), nonzeroLocus (tt x) = nonzeroLocus (s ⟨x, hx⟩) := fun x hx => by
    simp only [tt, dif_pos hx, ht]
  obtain ⟨g, hg⟩ := exists_sec_forall_mem F' tt (fun x hx => (htt x hx).symm ▸ hs ⟨x, hx⟩)
    (fun x hx y hy hyx hmem => hV' x hx y hy hyx (hsV ⟨x, hx⟩ ((htt x hx) ▸ hmem)))
  refine ⟨nonzeroLocus g, h.isAffineOpen_nonzeroLocus f hN g, fun x hx => ?_⟩
  obtain ⟨y, hyF, hxy, hmin⟩ := exists_specializes_minimal F hx
  exact hxy.mem_open (nonzeroLocus g).isOpen (hg y (Finset.mem_filter.2 ⟨hyF, hmin⟩))

theorem finAff_of_relAmple : ∀ (R : Type) [CommRing R] (B : Over (Sp R)) [GrpObj B], IsAbelianScheme B →
    ∀ L : LB B.left, L.IsLB → Out.RelAmple B L → FinAff B.left := by
  intro R _ B _ hB L hL hA
  have := hB.proper
  exact finAff_of_isAmpleLB B.hom (isAmpleLB_of_relAmple_of_isAffine B hL hA)

end GlobalTheory.DualCon.FinAffAmple
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSpecializesMinimal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteSetsInAffineOpenAbelianSchemeRelAmple =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteSetsInAffineOpenAbelianSchemeRelAmple", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSpecializesMinimal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualCon.FinAffNoeth

theorem finAff_of_relAmple_noetherian : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A], IsAbelianScheme A → ∀ (L : LB A.left), L.IsLB → Out.RelAmple A L → FinAff A.left := by
  intro R _ _ A _ hA L hL hR
  exact GlobalTheory.DualCon.FinAffAmple.finAff_of_relAmple R A hA L hL hR

end GlobalTheory.DualCon.FinAffNoeth
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteSetsInAffineOpenAbelianSchemeRelAmple =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionDescendsFiniteFlatSurje =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionDescendsFiniteFlatSurje", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodOfFiniteSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.FiniteSurjRelDim

theorem eq_of_finite_surjective {S X Y : Scheme.{0}} (f : X ⟶ Y) [IsFinite f] [Surjective f] (p : Y ⟶ S)
    [Nonempty Y] {g m : ℕ} (hX : SmoothOfRelativeDimension g (f ≫ p)) (hY : SmoothOfRelativeDimension m p) :
    g = m := by
  let y : Y := Classical.arbitrary Y
  let t := S.fromSpecResidueField (p y)
  have hpb₂ := IsPullback.of_hasPullback p t
  have hpb₁ := IsPullback.of_hasPullback f (pullback.fst p t)
  have hpX : IsPullback (pullback.fst f (pullback.fst p t))
      (pullback.snd f (pullback.fst p t) ≫ pullback.snd p t) (f ≫ p) t := hpb₁.paste_vert hpb₂
  have hgK : SmoothOfRelativeDimension g (pullback.snd f (pullback.fst p t) ≫ pullback.snd p t) :=
    (smoothOfRelativeDimension_isStableUnderBaseChange g).of_isPullback hpX hX
  have hmK : SmoothOfRelativeDimension m (pullback.snd p t) :=
    (smoothOfRelativeDimension_isStableUnderBaseChange m).of_isPullback hpb₂ hY
  obtain ⟨w, hw⟩ : p y ∈ Set.range t := by
    rw [Scheme.range_fromSpecResidueField]; rfl
  obtain ⟨z, -, -⟩ := Scheme.Pullback.exists_preimage_pullback y w hw.symm
  obtain ⟨a, -⟩ := (pullback.snd f (pullback.fst p t)).surjective z
  have : Nonempty ↥(pullback f (pullback.fst p t)) := ⟨a⟩
  exact GlobalTheory.FiniteSurjDim.eq_of_finite_surjective (k := (p y |> S.residueField))
    (pullback.snd f (pullback.fst p t)) (pullback.snd p t) hgK hmK

theorem smoothOfRelativeDimension_of_finite_surjective : ∀ (S : Scheme.{0}) (A B : Over S) (g : ℕ) (q : A ⟶ B),
    SmoothOfRelativeDimension g A.hom → Smooth B.hom → IsFinite q.left → Flat q.left → Surjective q.left →
    SmoothOfRelativeDimension g B.hom := by
  intro S A B g q hg hB hfin _ hsurj
  choose n W hW hd using ReciprocityTheory.ChartRestriction.G.H1.exists_dim B.hom
  have hn : ∀ y, n y = g := fun y => by
    have : Nonempty (W y) := ⟨⟨y, hW y⟩⟩
    have hd' := hd y
    have : Surjective (q.left ∣_ W y) := IsZariskiLocalAtTarget.restrict (P := @Surjective) ‹_› _
    have hX : SmoothOfRelativeDimension g ((q.left ∣_ W y) ≫ (W y).ι ≫ B.hom) := by
      rw [← Category.assoc, morphismRestrict_ι, Category.assoc, Over.w q]
      have : SmoothOfRelativeDimension (0 + g) ((q.left ⁻¹ᵁ W y).ι ≫ A.hom) := inferInstance
      simpa using this
    exact (eq_of_finite_surjective (q.left ∣_ W y) ((W y).ι ≫ B.hom) hX hd').symm
  have : IsZariskiLocalAtSource (@SmoothOfRelativeDimension g) := HasRingHomProperty.instIsZariskiLocalAtSource
  refine IsZariskiLocalAtSource.of_iSup_eq_top (P := @SmoothOfRelativeDimension g) W
    (top_le_iff.1 fun x _ => TopologicalSpace.Opens.mem_iSup.2 ⟨x, hW x⟩) fun x => ?_
  rw [← hn x]; exact hd x

end GlobalTheory.FiniteSurjRelDim
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionDescendsFiniteFlatSurje =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientKernelPolarisationDescendedBundle =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientKernelPolarisationDescendedBundle", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.PublishedTheorems.RelativeAmpleness.RelAmpleAndKTrivIff\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentMumfordBundleQuotient\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientAbelianSchemeFiniteFlatSubgroup\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteSetsInAffineOpenAbelianSchemeRelAmple\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAdditiveSwapOfTrivAxes\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelOfLineBundleFiniteFlatSubgroupScheme\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionDescendsFiniteFlatSurje\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualQuot

theorem exists_quotient_lam : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ (L : LB A.left) (hL : L.IsLB), Out.RelAmple A L → ∃ (B : Over (Sp R)) (P : LB (A ⊗ B).left) (q : A ⟶ B) (hP : Fam A P), Good g B.hom ∧ FinAff B.left ∧ IsFinite q.left ∧ Flat q.left ∧ Surjective q.left ∧ (∀ (Y : Over (Sp R)) (a x : Y ⟶ A), evc hP.isLB a (x ≫ q) = GlobalTheory.CechPic.pull (a * x).left (cls L hL) - GlobalTheory.CechPic.pull a.left (cls L hL) - GlobalTheory.CechPic.pull x.left (cls L hL) + GlobalTheory.CechPic.pull (1 : Y ⟶ A).left (cls L hL)) ∧ (∀ (Y : Over (Sp R)) (x y : Y ⟶ A), x ≫ q = y ≫ q ↔ GlobalTheory.MemKL A L (x * y⁻¹)) := by
  intro R _ _ A _ g hA hg L hL hamp
  obtain ⟨H, _, i, hi, hmono, hHf, hHfl, hrep⟩ := _root_.GlobalTheory.kernel_finiteFlat_subgroup R A hA L hL hamp
  obtain ⟨B, _, q, π, hB, hq, hqf, hqfl, hqs, hπ, hpb⟩ := _root_.GlobalTheory.AbQuotientAny.exists_quotient_abelianScheme R A H i hA hi hmono hHf hHfl
  obtain ⟨P₀, hP₀, hform⟩ := _root_.GlobalTheory.QuotDesc.exists_descent_lam R A hA L hL H i hi hmono hHf hHfl hrep B q hB hq hqf hqfl hqs hpb
  have hc := hA.comm
  let c : A ⊗ B ⟶ A ⊗ B := snd A B ≫ lift (1 : B ⟶ A) (𝟙 B)
  let P : LB (A ⊗ B).left := tens P₀ (dual (P₀.pull c.left))
  have hP : P.IsLB := isLB_tens hP₀ (isLB_dual (pull_isLB hP₀ _))
  have hcls : cls P hP = cls P₀ hP₀ - GlobalTheory.CechPic.pull c.left (cls P₀ hP₀) := by
    rw [cls_tens hP₀ (isLB_dual (pull_isLB hP₀ _)), cls_dual (pull_isLB hP₀ _), cls_pull hP₀, sub_eq_add_neg]
  have hev : ∀ (Y : Over (Sp R)) (a : Y ⟶ A) (t : Y ⟶ B), evc hP a t = evc hP₀ a t - evc hP₀ 1 t := by
    intro Y a t
    have e : lift a t ≫ c = lift (1 : Y ⟶ A) t := by
      simp only [c, comp_lift, MonObj.comp_one, Category.comp_id, lift_snd]
    simp only [evc]
    rw [hcls, map_sub, ← GlobalTheory.CechPic.pull_comp, ← Over.comp_left, e]
  have hform' : ∀ (Y : Over (Sp R)) (a x : Y ⟶ A), evc hP a (x ≫ q) = GlobalTheory.CechPic.pull (a * x).left (cls L hL) - GlobalTheory.CechPic.pull a.left (cls L hL) - GlobalTheory.CechPic.pull x.left (cls L hL) + GlobalTheory.CechPic.pull (1 : Y ⟶ A).left (cls L hL) := by
    intro Y a x
    rw [hev, hform, hform, _root_.one_mul]
    abel
  have h0l : Triv (ev P (1 : B ⟶ A) (𝟙 B)) := by
    rw [triv_ev_iff hP, hev, sub_self]
  have h0r : Triv (ev P (𝟙 A) (1 : A ⟶ B)) := by
    have e : (1 : A ⟶ B) = (1 : A ⟶ A) ≫ q := (MonObj.one_comp q).symm
    rw [triv_ev_iff hP, e, hform', _root_.mul_one]
    abel
  have hadd : IsAdditive P := GlobalTheory.CubeNoeth.isAdditive_of_triv_axes hA hB hP h0l h0r
  have hBsm := hB.smooth
  have hAfa := _root_.GlobalTheory.DualCon.FinAffNoeth.finAff_of_relAmple_noetherian R A hA L hL hamp
  refine ⟨B, P, q, ⟨hP, hadd⟩, ⟨hB.proper, _root_.GlobalTheory.FiniteSurjRelDim.smoothOfRelativeDimension_of_finite_surjective _ A B g q hg hBsm hqf hqfl hqs, hB.geomConnected⟩, ?_, hqf, hqfl, hqs, hform', ?_⟩
  · intro F
    classical
    obtain ⟨U, hU, hF⟩ := hAfa (F.image π.left)
    exact ⟨π.left ⁻¹ᵁ U, hU.preimage π.left, fun x hx ↦ hF _ (Finset.mem_image_of_mem _ hx)⟩
  · intro Y x y
    constructor
    · intro h
      refine (hrep Y (x * y⁻¹)).2 ⟨hpb.lift x y h ≫ fst H A, ?_⟩
      have h1 := hpb.lift_fst x y h
      rw [comp_mul, hpb.lift_snd] at h1
      rw [eq_mul_inv_iff_mul_eq, Category.assoc, h1]
    · intro h
      obtain ⟨z, hz⟩ := (hrep Y (x * y⁻¹)).1 h
      have hx : x = lift z y ≫ ((fst H A ≫ i) * snd H A) := by
        rw [comp_mul, lift_fst_assoc, lift_snd, hz, inv_mul_cancel_right]
      rw [hx, Category.assoc, hpb.w, lift_snd_assoc]

end GlobalTheory.DualQuot
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientKernelPolarisationDescendedBundle =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SameLineBundleFamilyDescendsFlatSurjectiveQuasiC =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SameLineBundleFamilyDescendsFlatSurjectiveQuasiC", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ValCalc\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleTrivialOfGeneratorFpqcDescent\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RosVal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.LBPull\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualCon

theorem isPullback_prod_map {S : Scheme.{0}} (A : Over S) {V V' : Over S} (v : V ⟶ V') :
    IsPullback (lift (fst A V) (snd A V ≫ v)).left (snd A V).left (snd A V').left v.left := by
  apply _root_.GlobalTheory.RigDesc.isPullback_one_prod <;> assumption

theorem isPullback_prod_kernel {S : Scheme.{0}} (A Y Y' W : Over S) (c : Y' ⟶ Y) (w₁ w₂ : W ⟶ Y')
    (hK : IsPullback w₁.left w₂.left c.left c.left) :
    IsPullback (lift (fst A W) (snd A W ≫ w₁)).left (lift (fst A W) (snd A W ≫ w₂)).left
      (lift (fst A Y') (snd A Y' ≫ c)).left (lift (fst A Y') (snd A Y' ≫ c)).left := by
  apply _root_.GlobalTheory.RigDesc.isPullback_one_prod_kernel <;> assumption

theorem same_of_fpqc : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A → ∀ (T U Y Y' : Over S) (N : LB (A ⊗ T).left) (M : LB (A ⊗ U).left), Fam A N → Fam A M → ∀ (y : Y ⟶ T) (u : Y ⟶ U) (c : Y' ⟶ Y), Flat c.left → Surjective c.left → QuasiCompact c.left → Same A N M (c ≫ y) (c ≫ u) → Same A N M y u := by
  intro S A _ hA T U Y Y' N M hN hM y u c hfl hsu hqc hc
  rw [same_iff hN.isLB hM.isLB, ← sub_eq_zero]
  obtain ⟨L, hL, hcl⟩ := cls_surj (evc hN.isLB (fst A Y) (snd A Y ≫ y) - evc hM.isLB (fst A Y) (snd A Y ≫ u))
  rw [← hcl]
  have key : ∀ {X : Scheme.{0}} (f : X ⟶ (A ⊗ Y).left), Triv (L.pull f) ↔
      CechPic.pull f (evc hN.isLB (fst A Y) (snd A Y ≫ y)) = CechPic.pull f (evc hM.isLB (fst A Y) (snd A Y ≫ u)) := by
    intro X f
    rw [← sub_eq_zero, ← map_sub, ← hcl, ← cls_pull hL f (pull_isLB hL f)]
    exact (cls_eq_zero_iff (pull_isLB hL f)).symm
  refine (cls_eq_zero_iff hL).2 ?_
  let F : A ⊗ Y' ⟶ A ⊗ Y := lift (fst A Y') (snd A Y' ≫ c)
  let e : Y ⟶ A ⊗ Y := lift 1 (𝟙 Y)
  let e' : Y' ⟶ A ⊗ Y' := lift 1 (𝟙 Y')
  have h0 : Triv (L.pull e.left) := by
    rw [key]
    simp only [e, pull_evc, lift_fst, lift_snd_assoc, Category.id_comp]
    rw [hN.add.evc_one hN.isLB, hM.add.evc_one hM.isLB]
  have h1 : Triv (L.pull F.left) := by
    rw [key]
    simp only [F, pull_evc, lift_fst, lift_snd_assoc]
    rw [same_iff hN.isLB hM.isLB] at hc
    simpa only [Category.assoc] using hc
  have hEF : e' ≫ F = c ≫ e := by
    apply CartesianMonoidalCategory.hom_ext <;> simp [e, e', F]
  have hep : e' ≫ snd A Y' = 𝟙 Y' := lift_snd _ _

  have hT : IsPullback (fst A Y').left (snd A Y').left A.hom Y'.hom := IsPullback.of_hasPullback _ _
  have hY : IsPullback (fst A Y).left (snd A Y).left A.hom Y.hom := IsPullback.of_hasPullback _ _
  have m₁ : F.left ≫ (fst A Y).left = (fst A Y').left := by rw [← Over.comp_left, lift_fst]
  have m₂ : F.left ≫ (snd A Y).left = (snd A Y').left ≫ c.left := by
    rw [← Over.comp_left, lift_snd, Over.comp_left]
  have hT' : IsPullback (F.left ≫ (fst A Y).left) (snd A Y').left A.hom (c.left ≫ Y.hom) := by
    rw [m₁, Over.w c]; exact hT
  have H : IsPullback F.left (snd A Y').left (snd A Y).left c.left := IsPullback.of_right hT' m₂ hY
  have hF₁ : Flat F.left := MorphismProperty.of_isPullback H.flip hfl
  have hF₂ : Surjective F.left := MorphismProperty.of_isPullback H.flip hsu
  have hF₃ : QuasiCompact F.left := MorphismProperty.of_isPullback H.flip hqc

  let W : Over S := Over.mk (pullback.fst c.left c.left ≫ Y'.hom)
  let w₁ : W ⟶ Y' := Over.homMk (pullback.fst c.left c.left) rfl
  let w₂ : W ⟶ Y' := Over.homMk (pullback.snd c.left c.left) (by
    show pullback.snd c.left c.left ≫ Y'.hom = pullback.fst c.left c.left ≫ Y'.hom
    rw [← Over.w c, ← Category.assoc, ← pullback.condition, Category.assoc])
  have hw : w₁ ≫ c = w₂ ≫ c := Over.OverMorphism.ext pullback.condition
  have hK : IsPullback w₁.left w₂.left c.left c.left := IsPullback.of_hasPullback c.left c.left
  let g₁ : A ⊗ W ⟶ A ⊗ Y' := lift (fst A W) (snd A W ≫ w₁)
  let g₂ : A ⊗ W ⟶ A ⊗ Y' := lift (fst A W) (snd A W ≫ w₂)
  have hKP : IsPullback g₁.left g₂.left F.left F.left := isPullback_prod_kernel A Y Y' W c w₁ w₂ hK
  have hg : g₁.left ≫ F.left = g₂.left ≫ F.left := hKP.w

  obtain ⟨g, hgg⟩ := h0
  obtain ⟨t, ht⟩ := h1
  have n₁ : (snd A Y' ≫ e').left ≫ F.left = (snd A Y' ≫ c).left ≫ e.left := by
    rw [← Over.comp_left, ← Over.comp_left, Category.assoc, hEF, Category.assoc]
  obtain ⟨t', ht', hv⟩ := exists_gen hL (K' := PUnit) (φ' := fun _ => F.left) (ε' := fun _ => 1)
    (fun U _ k => by
      simp only [Fintype.prod_sum_type, Fintype.prod_unique, Sum.elim_inl, Sum.elim_inr, n₁]
      simp)
    (LB.mulGen L _ _ _ _ (LB.mulGen L _ _ _ _ t (LB.invGen L _ _ (LB.pullGen L _ _ t (snd A Y' ≫ e').left)))
      (LB.pullGen L _ _ g (snd A Y' ≫ c).left))
    (DVR.mulGen_isGen _ _ _ _ _ _ _
      (DVR.mulGen_isGen _ _ _ _ _ _ _ ht (DVR.invGen_isGen _ _ _ _ (DVR.pullGen_isGen _ _ _ _ ht _)))
      (DVR.pullGen_isGen _ _ _ _ hgg _))
  have norm : ∀ (Z : Scheme.{0}) (r : Z ⟶ Y'.left) (z : Z) (J), Geo.Tor.Good L z J →
      val t' (r ≫ e'.left) z J = val g (r ≫ c.left) z J := by
    intro Z r z J hJ
    have a₁ : (r ≫ e'.left) ≫ (snd A Y' ≫ e').left = r ≫ e'.left := by
      rw [Category.assoc, ← Over.comp_left, ← Category.assoc e', hep, Category.id_comp]
    have a₂ : (r ≫ e'.left) ≫ (snd A Y' ≫ c).left = r ≫ c.left := by
      rw [Category.assoc, ← Over.comp_left, ← Category.assoc e', hep, Category.id_comp]
    rw [hv Z _ z J hJ, val_mul hJ, val_mul hJ, val_inv, val_pull hJ, val_pull hJ, a₁, a₂, mul_inv_cancel,
      _root_.one_mul]
  refine _root_.GlobalTheory.FlatDescent.triv_of_gen_descent L hL F.left hF₁ hF₂ hF₃ g₁.left g₂.left hKP t' ht' (fun z J hJ => ?_)
  let o : W ⟶ A ⊗ W := lift 1 (𝟙 W)
  have hg1 : o.left ≫ g₁.left = w₁.left ≫ e'.left := by
    rw [← Over.comp_left, ← Over.comp_left]
    congr 1
    apply CartesianMonoidalCategory.hom_ext <;> simp [o, g₁, e']
  have hg2 : o.left ≫ g₂.left = w₂.left ≫ e'.left := by
    rw [← Over.comp_left, ← Over.comp_left]
    congr 1
    apply CartesianMonoidalCategory.hom_ext <;> simp [o, g₂, e']
  have ho : o.left ≫ (snd A W).left = 𝟙 _ := by rw [← Over.comp_left, lift_snd, Over.id_left]
  have hwc : w₁.left ≫ c.left = w₂.left ≫ c.left := by rw [← Over.comp_left, ← Over.comp_left, hw]
  have key2 := gen_unique' hL (φ := fun _ : PUnit => g₁.left ≫ F.left) (ε := fun _ => (1 : ℤ))
    (φ' := fun _ : PUnit => g₂.left ≫ F.left) (ε' := fun _ => 1)
    (fun U _ k => by simp only [hg]) (snd A W).left o.left ho (surj_snd GlobalTheory.SemiRigid.globalFns hA W)
    (u := LB.pullGen L _ _ t' g₁.left) (u' := LB.pullGen L _ _ t' g₂.left)
    (DVR.pullGen_isGen _ _ _ _ ht' _) (DVR.pullGen_isGen _ _ _ _ ht' _)
    (fun y I hI => by rw [val_pull hI, val_pull hI, hg1, hg2, norm _ _ _ _ hI, norm _ _ _ _ hI, hwc])
    _ (𝟙 _) z J hJ
  rwa [val_pull hJ, val_pull hJ, Category.id_comp, Category.id_comp] at key2

end GlobalTheory.DualCon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SameLineBundleFamilyDescendsFlatSurjectiveQuasiC =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherian =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherian", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.PublishedTheorems.RelativeAmpleness.RelAmpleAndKTrivIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualPointEqOfQuotientFamilyIso\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatCoverAdditiveFamilyEqLambda\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsQuotientKernelPolarisationDescendedBundle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SameLineBundleFamilyDescendsFlatSurjectiveQuasiC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Sites.Fpqc\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualPol

theorem hasRepAF_of_relAmple : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ L : LB A.left, L.IsLB → Out.RelAmple A L → HasRepAF A g (𝟙_ _) := by
  intro R _ _ A _ g hA hg L hL ha
  obtain ⟨B, P, q, hP, hgood, hfa, hfin, hfl, hsu, hF, hK⟩ := _root_.GlobalTheory.DualQuot.exists_quotient_lam R A g hA hg L hL ha
  have hinj : Inj A P := _root_.GlobalTheory.DualCon.inj_of_quotient R A g hA hg L hL ha B P q hP hfin hfl hsu hF hK
  have hex : ∀ (T : Over (Sp R)) (N : LB (A ⊗ T).left), Fam A N →
      ∃ x : T ⟶ B, LBIso N (ev P (fst A T) (snd A T ≫ x)) := by
    intro T N hN
    obtain ⟨H, h, x, hhf, hhs, hhq, hx⟩ := _root_.GlobalTheory.DualCover.exists_cover R A g hA hg L hL ha T N hN
    have key : ∀ (Y : Over (Sp R)) (a : Y ⟶ A) (y : Y ⟶ H),
        evc hP.isLB a (y ≫ x ≫ q) = evc hN.isLB a (y ≫ h) := by
      intro Y a y
      rw [hx, ← Category.assoc, hF]
    have hc : ∀ {Z : Scheme} (g₁ g₂ : Z ⟶ H.left), g₁ ≫ h.left = g₂ ≫ h.left →
        g₁ ≫ (x ≫ q).left = g₂ ≫ (x ≫ q).left := by
      intro Z g₁ g₂ e
      let Z' : Over (Sp R) := Over.mk (g₁ ≫ H.hom)
      have e2 : g₂ ≫ H.hom = g₁ ≫ H.hom := by
        rw [← Over.w h, ← Category.assoc, ← e, Category.assoc]
      let k₁ : Z' ⟶ H := Over.homMk g₁ rfl
      let k₂ : Z' ⟶ H := Over.homMk g₂ e2
      have hkh : k₁ ≫ h = k₂ ≫ h := Over.OverMorphism.ext e
      have hs : Same A P P (k₁ ≫ x ≫ q) (k₂ ≫ x ≫ q) := by
        rw [same_iff hP.isLB hP.isLB]
        have e₁ := key (A ⊗ Z') (fst A Z') (snd A Z' ≫ k₁)
        have e₂ := key (A ⊗ Z') (fst A Z') (snd A Z' ≫ k₂)
        simp only [Category.assoc] at e₁ e₂
        rw [e₁, e₂, hkh]
      have := congrArg (fun t => t.left) (hinj Z' _ _ hs)
      simpa [k₁, k₂] using this
    haveI : Flat h.left := hhf
    haveI : Surjective h.left := hhs
    haveI : QuasiCompact h.left := hhq
    let d : T.left ⟶ B.left := EffectiveEpi.desc h.left (x ≫ q).left hc
    have hd : h.left ≫ d = (x ≫ q).left := EffectiveEpi.fac h.left (x ≫ q).left hc
    have hdB : d ≫ B.hom = T.hom := by
      rw [← cancel_epi h.left, ← Category.assoc, hd, Over.w (x ≫ q), Over.w h]
    let xT : T ⟶ B := Over.homMk d hdB
    have hxT : h ≫ xT = x ≫ q := Over.OverMorphism.ext hd
    refine ⟨xT, (same_id_iff hN.isLB hP.isLB xT).1 ?_⟩
    refine _root_.GlobalTheory.DualCon.same_of_fpqc (Sp R) A hA T B T H N P hN hP (𝟙 T) xT h hhf hhs hhq ?_
    rw [same_iff hN.isLB hP.isLB, Category.comp_id, hxT, key]
  refine ⟨B, toUnit B, P, ⟨hP, fun T t N hN ↦ ?_⟩, hgood, hfa⟩
  obtain ⟨x, hx⟩ := hex T N hN
  refine ⟨x, ⟨toUnit_unique _ _, hx⟩, fun y hy ↦ hinj T y x ?_⟩
  have h1 := (cls_eq_iff hN.isLB (pull_isLB hP.isLB _)).2 hy.2
  have h2 := (cls_eq_iff hN.isLB (pull_isLB hP.isLB _)).2 hx
  exact (cls_eq_iff (pull_isLB hP.isLB _) (pull_isLB hP.isLB _)).1 (h1.symm.trans h2)

end GlobalTheory.DualPol
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherian =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherianStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherianStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.hasDualRepresentative_of_relAmple_noetherian : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ L : LB A.left, L.IsLB → Out.RelAmple A L → HasRepAF A g (𝟙_ _) := by
  first | exact @GlobalTheory.DualPol.hasRepAF_of_relAmple
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherianStatement =====
