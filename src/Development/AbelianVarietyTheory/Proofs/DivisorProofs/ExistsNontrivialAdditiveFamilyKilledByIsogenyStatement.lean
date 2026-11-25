module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCharacter
public import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterEqOneOfDescendedLineBundleTrivial
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdMapPairTimesIdentitySnd
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelActionIsPullbackProdMapTorsor
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFlat
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.TangentLinearity.DescGen
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueBaseChangeEqOfMem
public import Mathlib.RingTheory.RingHom.FaithfullyFlat
public import Mathlib.Tactic.ENatToNat
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.BaseChangeKernels.Affine
public import Mathlib.AlgebraicGeometry.Morphisms.Finite
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelActionIsPullbackProdMapTorsorStatement
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialCharacterFiniteCommGroup
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsLiftOfRangeSubset
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
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
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
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
import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.Linter.Style
import Mathlib.CategoryTheory.Limits.Constructions.Over.Connected
import Mathlib.CategoryTheory.Limits.Shapes.Connected
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsFrobGBaseChange
import Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsAppTopEqOfEffectiveEpi

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechTrivialPullbackOfIsPullbackGenerator, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditivityDefectGeneratorInvariantSameImage, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackLineBundleGeneratorAdditivityDefect, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleTrivialOfInvariantPullbackGenerator, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdMapPairTimesIdentityFlatSurjectiveAffine, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterLineBundleAdditiveOfEquivariantGenerato, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKernelActionTripleOverlap, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FaithfullyFlatAppOfIsAffineHomFlatSurjective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyTrivialUnitCocycleFaithfullyFlat, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyTrivialUnitCocycleScheme, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsCharacterUnitKernelAction, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescendedLineBundleEquivariantGenerator, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialAdditiveFamilyKilledByIsogeny, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialAdditiveFamilyKilledByIsogenyStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechTrivialPullbackOfIsPullbackGenerator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechTrivialPullbackOfIsPullbackGenerator", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCharacter\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

namespace GlobalTheory.CharKer

theorem triv_pull_of_isPullGen : ∀ (X Y : Scheme.{0}) (p : X ⟶ Y) (M : LB Y) (e : ∀ k, Γ(X, p ⁻¹ᵁ M.U k)ˣ), IsPullGen p M e → Triv (M.pull p) := by
  intro X Y p M e he
  refine ⟨⟨fun j => res (LB.wchart_le M (fun _ : PUnit => p) j PUnit.unit) (e (j PUnit.unit))⟩, fun i j => ?_⟩
  have gg : (M.pull p).g i j = res (le_inf (inf_le_left.trans (LB.wchart_le M (fun _ : PUnit => p) i PUnit.unit))
      (inf_le_right.trans (LB.wchart_le M (fun _ : PUnit => p) j PUnit.unit)))
      (pullU p _ (M.g (i PUnit.unit) (j PUnit.unit))) :=
    (Fintype.prod_unique (fun k : PUnit => (res (le_inf (inf_le_left.trans (LB.wchart_le M (fun _ : PUnit => p) i k))
      (inf_le_right.trans (LB.wchart_le M (fun _ : PUnit => p) j k)))
      (pullU p _ (M.g (i k) (j k)))) ^ (1 : ℤ))).trans (zpow_one _)
  rw [gg]
  have h := he (i PUnit.unit) (j PUnit.unit) (LB.wchart M (fun _ : PUnit => p) i ⊓ LB.wchart M (fun _ : PUnit => p) j)
    (inf_le_left.trans (LB.wchart_le M (fun _ : PUnit => p) i PUnit.unit))
    (inf_le_right.trans (LB.wchart_le M (fun _ : PUnit => p) j PUnit.unit))
    (le_inf (inf_le_left.trans (LB.wchart_le M (fun _ : PUnit => p) i PUnit.unit))
      (inf_le_right.trans (LB.wchart_le M (fun _ : PUnit => p) j PUnit.unit)))
  refine (_root_.ReciprocityTheory.ChartRestriction.G.DVR.res_res' _ _ _).trans (h.trans ?_)
  exact congrArg _ (_root_.ReciprocityTheory.ChartRestriction.G.DVR.res_res' _ _ _).symm

end GlobalTheory.CharKer
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechTrivialPullbackOfIsPullbackGenerator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditivityDefectGeneratorInvariantSameImage =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditivityDefectGeneratorInvariantSameImage", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdMapPairTimesIdentitySnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelActionIsPullbackProdMapTorsor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

namespace GlobalTheory.CharKer

private theorem coe_gm_eq_stalkMap_germ {X Y : Scheme.{0}} (f : Y ⟶ X) (y : Y) (U : X.Opens) (h : f y ∈ U)
    (a : Γ(X, U)ˣ) :
    ((gm f y U a : (Y.presheaf.stalk y)ˣ) : Y.presheaf.stalk y) =
      f.stalkMap y (X.presheaf.germ U (f y) h (a : Γ(X, U))) := by
  unfold gm
  rw [dite_eq_left h]
  simp only [pullU, MonoidHom.comp_apply, Units.coe_map, MonoidHom.coe_coe]
  exact (Scheme.Hom.germ_stalkMap_apply f U y h _).symm

private theorem gm_res_pullU_lemma_2 {X Y Z : Scheme.{0}} (φ : Y ⟶ X) (ψ : Z ⟶ Y) (z : Z) (U : X.Opens)
    {V : Y.Opens} (hle : V ≤ φ ⁻¹ᵁ U) (hz : ψ z ∈ V) (a : Γ(X, U)ˣ) :
    gm ψ z V (res hle (pullU φ U a)) = gm (ψ ≫ φ) z U a := by
  have h1 : φ (ψ z) ∈ U := hle hz
  apply Units.ext
  rw [coe_gm_eq_stalkMap_germ ψ z V hz, coe_gm_eq_stalkMap_germ (ψ ≫ φ) z U h1]
  simp only [res, pullU, Units.coe_map, MonoidHom.coe_coe]
  rw [Scheme.Hom.stalkMap_comp]
  erw [TopCat.Presheaf.germ_res_apply]
  exact congrArg (Scheme.Hom.stalkMap ψ z) (Scheme.Hom.germ_stalkMap_apply φ U (ψ z) h1 _).symm

private theorem gm_pullTop_inv {X Y Z : Scheme.{0}} (f : Z ⟶ Y) (g : Y ⟶ X) (z : Z) (a : Γ(X, ⊤)ˣ) :
    gm f z ⊤ (pullTop g a) = gm (f ≫ g) z ⊤ a := by
  apply Units.ext
  rw [coe_gm_eq_stalkMap_germ f z ⊤ trivial, coe_gm_eq_stalkMap_germ (f ≫ g) z ⊤ trivial]
  rw [Scheme.Hom.stalkMap_comp]
  exact congrArg (Scheme.Hom.stalkMap f z) (Scheme.Hom.germ_stalkMap_apply g ⊤ (f z) trivial _).symm

theorem gm_character_mul {S : Scheme.{0}} {N T Z : Over S} [GrpObj N] {χ : Γ((N ⊗ T).left, ⊤)ˣ}
    (hχ : IsCharacter χ) (ν₁ ν₂ : Z ⟶ N) (t : Z ⟶ T) (z : Z.left) :
    gm (lift (ν₁ * ν₂) t).left z ⊤ χ = gm (lift ν₁ t).left z ⊤ χ * gm (lift ν₂ t).left z ⊤ χ := by
  have hy1 : lift ν₁ (lift ν₂ t) ≫ lift (fst N (N ⊗ T) * (snd N (N ⊗ T) ≫ fst N T)) (snd N (N ⊗ T) ≫ snd N T) =
      lift (ν₁ * ν₂) t := by
    simp [comp_lift, MonObj.comp_mul]
  have hy2 : lift ν₁ (lift ν₂ t) ≫ lift (fst N (N ⊗ T)) (snd N (N ⊗ T) ≫ snd N T) = lift ν₁ t := by
    simp [comp_lift]
  have hy3 : lift ν₁ (lift ν₂ t) ≫ snd N (N ⊗ T) = lift ν₂ t := by simp
  have hc : IsCharacter χ := hχ
  unfold IsCharacter at hc
  rw [← hy1, Over.comp_left, ← gm_pullTop_inv, hc, map_mul, gm_pullTop_inv, gm_pullTop_inv,
    ← Over.comp_left, ← Over.comp_left, hy2, hy3]

theorem gm_equivGen {S : Scheme.{0}} {A A' N T Z : Over S} [GrpObj A] {i : N ⟶ A} {q : A ⟶ A'}
    {χ : Γ((N ⊗ T).left, ⊤)ˣ} {M : LB (A' ⊗ T).left} {e : ∀ k, Γ((A ⊗ T).left, (pmap q T).left ⁻¹ᵁ M.U k)ˣ}
    (he : IsEquivGen i q χ M e) (a b : Z ⟶ A) (ν : Z ⟶ N) (t : Z ⟶ T) (hb : b = a * (ν ≫ i)) (z : Z.left)
    (k : M.ι) (h₁ : (lift b t).left z ∈ (pmap q T).left ⁻¹ᵁ M.U k)
    (h₂ : (lift a t).left z ∈ (pmap q T).left ⁻¹ᵁ M.U k) :
    gm (lift b t).left z _ (e k) = gm (lift ν t).left z ⊤ χ * gm (lift a t).left z _ (e k) := by
  set y : Z ⟶ A ⊗ (N ⊗ T) := lift a (lift ν t) with hy
  have e1 : y.left ≫ (actMap i T).left = (lift b t).left := by
    rw [← Over.comp_left, hb, hy]
    unfold actMap
    simp [comp_lift, MonObj.comp_mul]
  have e2 : y.left ≫ (prMap A N T).left = (lift a t).left := by
    rw [← Over.comp_left, hy]
    unfold prMap
    simp [comp_lift]
  have e3 : y.left ≫ (snd A (N ⊗ T)).left = (lift ν t).left := by
    rw [← Over.comp_left, hy]
    simp
  have w1 : y.left z ∈ (actMap i T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ M.U k) := by
    rw [← e1] at h₁
    exact h₁
  have w2 : y.left z ∈ (prMap A N T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ M.U k) := by
    rw [← e2] at h₂
    exact h₂
  have key := congrArg (gm y.left z ((actMap i T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ M.U k) ⊓
    (prMap A N T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ M.U k))) (he.2 k _ inf_le_left inf_le_right)
  have hw : y.left z ∈ (actMap i T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ M.U k) ⊓
      (prMap A N T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ M.U k) := ⟨w1, w2⟩
  rw [map_mul, gm_res_pullU_lemma_2 _ _ _ _ _ hw, gm_res_pullU_lemma_2 _ _ _ _ _ hw, e1, e2] at key
  have hχ' : gm y.left z ((actMap i T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ M.U k) ⊓
      (prMap A N T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ M.U k)) (res le_top (pullTop (snd A (N ⊗ T)).left χ)) =
      gm (lift ν t).left z ⊤ χ := by
    have := gm_res_pullU_lemma_2 (snd A (N ⊗ T)).left y.left z ⊤ (V := _) le_top hw χ
    rw [e3] at this
    exact this
  rw [hχ'] at key
  exact key

theorem gm_addGen {S : Scheme.{0}} {A A' T Z : Over S} [GrpObj A] [GrpObj A'] (q : A ⟶ A') [IsMonHom q]
    (M : LB (A' ⊗ T).left) (e : ∀ k, Γ((A ⊗ T).left, (pmap q T).left ⁻¹ᵁ M.U k)ˣ) (a a' : Z ⟶ A) (t : Z ⟶ T)
    (z : Z.left) (k : (addBundle M).ι)
    (h : (lift a (lift a' t)).left z ∈ (pmap2 q T).left ⁻¹ᵁ (addBundle M).U k) :
    ((lift a t).left z ∈ (pmap q T).left ⁻¹ᵁ M.U (k.1.1 PUnit.unit) ∧
      (lift a' t).left z ∈ (pmap q T).left ⁻¹ᵁ M.U (k.1.2 PUnit.unit) ∧
      (lift (a * a') t).left z ∈ (pmap q T).left ⁻¹ᵁ M.U (k.2 PUnit.unit)) ∧
    gm (lift a (lift a' t)).left z _ (addGen q M e k) =
      gm (lift a t).left z _ (e (k.1.1 PUnit.unit)) * gm (lift a' t).left z _ (e (k.1.2 PUnit.unit)) *
        (gm (lift (a * a') t).left z _ (e (k.2 PUnit.unit)))⁻¹ := by
  set y : Z ⟶ A ⊗ (A ⊗ T) := lift a (lift a' t) with hy
  have eF : y.left ≫ (ptFst A T).left = (lift a t).left := by
    rw [← Over.comp_left, hy]
    unfold ptFst
    simp [comp_lift]
  have eS : y.left ≫ (ptSnd A T).left = (lift a' t).left := by
    rw [← Over.comp_left, hy]
    unfold ptSnd
    simp
  have eM : y.left ≫ (ptMul A T).left = (lift (a * a') t).left := by
    rw [← Over.comp_left, hy]
    unfold ptMul
    simp [comp_lift, MonObj.comp_mul]
  have m1 := addGen_le₁ q M k h
  have m2 := addGen_le₂ q M k h
  have m3 := addGen_le₃ q M k h
  refine ⟨⟨?_, ?_, ?_⟩, ?_⟩
  · rw [← eF]
    exact m1
  · rw [← eS]
    exact m2
  · rw [← eM]
    exact m3
  · unfold addGen
    rw [map_mul, map_mul, map_inv, gm_res_pullU_lemma_2 _ _ _ _ _ h, gm_res_pullU_lemma_2 _ _ _ _ _ h,
      gm_res_pullU_lemma_2 _ _ _ _ _ h, eF, eS, eM]

private theorem germ_eq_gm_coe {Z : Scheme.{0}} (W : Z.Opens) (w : Z) (hw : w ∈ W) (x : Γ(Z, W)ˣ) :
    Z.presheaf.germ W w hw (x : Γ(Z, W)) = ((gm (𝟙 Z) w W x : (Z.presheaf.stalk w)ˣ) : Z.presheaf.stalk w) := by
  rw [coe_gm_eq_stalkMap_germ (𝟙 Z) w W hw]
  erw [Scheme.Hom.stalkMap_id]
  rfl

private theorem mul_mul_mul_inv_cancel_left_factors {G : Type*} [CommGroup G] (c₁ c₂ E₁ E₂ E₃ : G) :
    c₁ * E₁ * (c₂ * E₂) * (c₁ * c₂ * E₃)⁻¹ = E₁ * E₂ * E₃⁻¹ := by
  rw [mul_inv (c₁ * c₂) E₃, _root_.mul_mul_mul_comm c₁ E₁ c₂ E₂, _root_.mul_mul_mul_comm, mul_inv_cancel, _root_.one_mul]

theorem addGen_invariant : ∀ (S : Scheme.{0}) (A A' N T : Over S) [GrpObj A] [IsCommMonObj A] [GrpObj A'] [GrpObj N] (i : N ⟶ A) (q : A ⟶ A') [IsMonHom q] (χ : Γ((N ⊗ T).left, ⊤)ˣ) (M : LB (A' ⊗ T).left) (e : ∀ k, Γ((A ⊗ T).left, (pmap q T).left ⁻¹ᵁ M.U k)ˣ), IsMonHom i → IsPullback i (toUnit N) q η[A'] → IsCharacter χ → IsEquivGen i q χ M e → ∀ (Z : Scheme.{0}) (y₁ y₂ : Z ⟶ (A ⊗ (A ⊗ T)).left), y₁ ≫ (pmap2 q T).left = y₂ ≫ (pmap2 q T).left → ∀ (k : (addBundle M).ι) (W : Z.Opens) (h₁ : W ≤ y₁ ⁻¹ᵁ ((pmap2 q T).left ⁻¹ᵁ (addBundle M).U k)) (h₂ : W ≤ y₂ ⁻¹ᵁ ((pmap2 q T).left ⁻¹ᵁ (addBundle M).U k)), res h₁ (pullU y₁ _ (addGen q M e k)) = res h₂ (pullU y₂ _ (addGen q M e k)) := by
  intro S A A' N T _i1 _i2 _i3 _i4 i q _i5 χ M e hi hpb hχ he Z y₁ y₂ hy k W h₁ h₂
  haveI := hi
  apply Units.ext
  apply TopCat.Presheaf.section_ext Z.sheaf W
  intro w hw
  erw [germ_eq_gm_coe W w hw, germ_eq_gm_coe W w hw]
  rw [gm_res_pullU_lemma_2 y₁ (𝟙 Z) w _ h₁ hw, gm_res_pullU_lemma_2 y₂ (𝟙 Z) w _ h₂ hw, Category.id_comp,
    Category.id_comp]
  have m₁ : y₁ w ∈ (pmap2 q T).left ⁻¹ᵁ (addBundle M).U k := h₁ hw
  have m₂ : y₂ w ∈ (pmap2 q T).left ⁻¹ᵁ (addBundle M).U k := h₂ hw
  have hyS : y₂ ≫ (A ⊗ (A ⊗ T)).hom = y₁ ≫ (A ⊗ (A ⊗ T)).hom := by
    have h := congrArg (· ≫ (A' ⊗ (A' ⊗ T)).hom) hy
    simp only [Category.assoc, Over.w] at h
    exact h.symm
  let Z' : Over S := Over.mk (y₁ ≫ (A ⊗ (A ⊗ T)).hom)
  let Y₁ : Z' ⟶ A ⊗ (A ⊗ T) := Over.homMk y₁ rfl
  let Y₂ : Z' ⟶ A ⊗ (A ⊗ T) := Over.homMk y₂ hyS
  have hY : Y₁ ≫ pmap2 q T = Y₂ ≫ pmap2 q T := by
    apply Over.OverMorphism.ext
    rw [Over.comp_left, Over.comp_left]
    exact hy
  have h_a : Y₁ ≫ fst A (A ⊗ T) ≫ q = Y₂ ≫ fst A (A ⊗ T) ≫ q := by
    have h := congrArg (· ≫ fst A' (A' ⊗ T)) hY
    simpa [pmap2] using h
  have h_b : Y₁ ≫ snd A (A ⊗ T) ≫ fst A T ≫ q = Y₂ ≫ snd A (A ⊗ T) ≫ fst A T ≫ q := by
    have h := congrArg (· ≫ snd A' (A' ⊗ T) ≫ fst A' T) hY
    simpa [pmap2, pmap] using h
  have h_t : Y₁ ≫ snd A (A ⊗ T) ≫ snd A T = Y₂ ≫ snd A (A ⊗ T) ≫ snd A T := by
    have h := congrArg (· ≫ snd A' (A' ⊗ T) ≫ snd A' T) hY
    simpa [pmap2, pmap] using h
  have eY₁ : lift (Y₁ ≫ fst A (A ⊗ T)) (lift (Y₁ ≫ snd A (A ⊗ T) ≫ fst A T) (Y₁ ≫ snd A (A ⊗ T) ≫ snd A T)) = Y₁ := by
    apply CartesianMonoidalCategory.hom_ext
    · simp
    · apply CartesianMonoidalCategory.hom_ext <;> simp
  have eY₂ : lift (Y₂ ≫ fst A (A ⊗ T)) (lift (Y₂ ≫ snd A (A ⊗ T) ≫ fst A T) (Y₁ ≫ snd A (A ⊗ T) ≫ snd A T)) = Y₂ := by
    rw [h_t]
    apply CartesianMonoidalCategory.hom_ext
    · simp
    · apply CartesianMonoidalCategory.hom_ext <;> simp
  have hP := pmap_isPullback_actMap S A A' N T i q hi inferInstance hpb
  have wa : lift (Y₁ ≫ fst A (A ⊗ T)) (Y₁ ≫ snd A (A ⊗ T) ≫ snd A T) ≫ pmap q T =
      lift (Y₂ ≫ fst A (A ⊗ T)) (Y₁ ≫ snd A (A ⊗ T) ≫ snd A T) ≫ pmap q T := by
    simp [pmap, comp_lift, h_a]
  have wb : lift (Y₁ ≫ snd A (A ⊗ T) ≫ fst A T) (Y₁ ≫ snd A (A ⊗ T) ≫ snd A T) ≫ pmap q T =
      lift (Y₂ ≫ snd A (A ⊗ T) ≫ fst A T) (Y₁ ≫ snd A (A ⊗ T) ≫ snd A T) ≫ pmap q T := by
    simp [pmap, comp_lift, h_b]
  have key : ∀ (a₁ a₂ : Z' ⟶ A) (t : Z' ⟶ T), lift a₁ t ≫ pmap q T = lift a₂ t ≫ pmap q T →
      ∃ ν : Z' ⟶ N, a₂ = a₁ * (ν ≫ i) := by
    intro a₁ a₂ t hw'
    have e1 := congrArg (· ≫ fst A T) (hP.lift_snd (lift a₁ t) (lift a₂ t) hw')
    have e2 := congrArg (· ≫ fst A T) (hP.lift_fst (lift a₁ t) (lift a₂ t) hw')
    generalize hP.lift (lift a₁ t) (lift a₂ t) hw' = u at e1 e2
    refine ⟨u ≫ snd A (N ⊗ T) ≫ fst N T, ?_⟩
    simp only [actMap, prMap, Category.assoc, lift_fst, MonObj.comp_mul] at e1 e2
    rw [← e1, e2]
    simp [Category.assoc]
  obtain ⟨ν, hν⟩ := key _ _ _ wa
  obtain ⟨ν', hν'⟩ := key _ _ _ wb
  have hνν : Y₂ ≫ fst A (A ⊗ T) * (Y₂ ≫ snd A (A ⊗ T) ≫ fst A T) =
      Y₁ ≫ fst A (A ⊗ T) * (Y₁ ≫ snd A (A ⊗ T) ≫ fst A T) * ((ν * ν') ≫ i) := by
    rw [hν, hν', MonObj.mul_comp, _root_.mul_mul_mul_comm]
  have M₁ := (gm_addGen q M e (Y₁ ≫ fst A (A ⊗ T)) (Y₁ ≫ snd A (A ⊗ T) ≫ fst A T)
    (Y₁ ≫ snd A (A ⊗ T) ≫ snd A T) w k (by rw [eY₁]; exact m₁))
  have M₂ := (gm_addGen q M e (Y₂ ≫ fst A (A ⊗ T)) (Y₂ ≫ snd A (A ⊗ T) ≫ fst A T)
    (Y₁ ≫ snd A (A ⊗ T) ≫ snd A T) w k (by rw [eY₂]; exact m₂))
  have G₁ := M₁.2
  have G₂ := M₂.2
  rw [eY₁] at G₁
  rw [eY₂] at G₂
  refine congrArg Units.val ?_
  change gm Y₁.left w _ (addGen q M e k) = gm Y₂.left w _ (addGen q M e k) at ⊢
  rw [G₁, G₂, gm_equivGen he _ _ ν _ hν w _ M₂.1.1 M₁.1.1, gm_equivGen he _ _ ν' _ hν' w _ M₂.1.2.1 M₁.1.2.1,
    gm_equivGen he _ _ (ν * ν') _ hνν w _ M₂.1.2.2 M₁.1.2.2, gm_character_mul hχ ν ν', mul_mul_mul_inv_cancel_left_factors]

end GlobalTheory.CharKer
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditivityDefectGeneratorInvariantSameImage =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackLineBundleGeneratorAdditivityDefect =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackLineBundleGeneratorAdditivityDefect", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdMapPairTimesIdentitySnd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

namespace GlobalTheory.CharKer

theorem gm_of_isPullGen {X Y Z : Scheme.{0}} {p : X ⟶ Y} {M : LB Y} {e : ∀ k, Γ(X, p ⁻¹ᵁ M.U k)ˣ}
    (he : IsPullGen p M e) (ψ : Z ⟶ X) (z : Z) (k l : M.ι) (hk : p (ψ z) ∈ M.U k) (hl : p (ψ z) ∈ M.U l) :
    gm ψ z (p ⁻¹ᵁ M.U k) (e k) = gm (ψ ≫ p) z (M.U k ⊓ M.U l) (M.g k l) * gm ψ z (p ⁻¹ᵁ M.U l) (e l) := by
  have hm : ψ z ∈ p ⁻¹ᵁ (M.U k ⊓ M.U l) := ⟨hk, hl⟩
  have h := congrArg (gm ψ z (p ⁻¹ᵁ (M.U k ⊓ M.U l)))
    (he k l (p ⁻¹ᵁ (M.U k ⊓ M.U l)) (fun _ hy => hy.1) (fun _ hy => hy.2) le_rfl)
  exact (gm_res _ _ _ hm _).symm.trans (h.trans ((map_mul _ _ _).trans
    (congrArg₂ (· * ·) ((gm_res _ _ _ hm _).trans (gm_pull ψ p z _ hm _)) (gm_res _ _ _ hm _))))

theorem gm_pull_of_isPullGen {X Y X₂ Y₂ : Scheme.{0}} {p : X ⟶ Y} {M : LB Y} {e : ∀ k, Γ(X, p ⁻¹ᵁ M.U k)ˣ}
    (he : IsPullGen p M e) {P : X₂ ⟶ Y₂} {φ : Y₂ ⟶ Y} {ψ : X₂ ⟶ X} (h : P ≫ φ = ψ ≫ p) (x : X₂)
    (J J' : PUnit → M.ι) (hJ : P x ∈ (M.pull φ).U J) (hJ' : P x ∈ (M.pull φ).U J') :
    gm ψ x (p ⁻¹ᵁ M.U (J PUnit.unit)) (e (J PUnit.unit)) =
      gm P x ((M.pull φ).U J ⊓ (M.pull φ).U J') ((M.pull φ).g J J') *
        gm ψ x (p ⁻¹ᵁ M.U (J' PUnit.unit)) (e (J' PUnit.unit)) := by
  rw [gm_pull_g M φ P x J J' hJ hJ', h]
  exact gm_of_isPullGen he ψ x _ _ (preimage_le_of_comp h _ (mem_pull.1 hJ)) (preimage_le_of_comp h _ (mem_pull.1 hJ'))

theorem gm_res_pullU {X Z : Scheme.{0}} (ψ : Z ⟶ X) (z : Z) (U : X.Opens) {V : Z.Opens} (hle : V ≤ ψ ⁻¹ᵁ U)
    (hz : z ∈ V) (a : Γ(X, U)ˣ) : gm (𝟙 Z) z V (res hle (pullU ψ U a)) = gm ψ z U a :=
  (gm_res (𝟙 Z) z hle hz _).trans ((gm_pull (𝟙 Z) ψ z U (hle hz) a).trans (by rw [Category.id_comp]))

theorem germ_addGen_pullGen {S : Scheme.{0}} {A A' T : Over S} [MonObj A] [MonObj A'] (q : A ⟶ A') [IsMonHom q]
    (M : LB (A' ⊗ T).left) (e : ∀ k, Γ((A ⊗ T).left, (pmap q T).left ⁻¹ᵁ M.U k)ˣ) (k : (addBundle M).ι)
    (x : (A ⊗ (A ⊗ T)).left) (hx : x ∈ (pmap2 q T).left ⁻¹ᵁ (addBundle M).U k) :
    gm (𝟙 _) x _ (addGen q M e k) =
      gm (ptFst A T).left x _ (e (k.1.1 PUnit.unit)) * gm (ptSnd A T).left x _ (e (k.1.2 PUnit.unit)) *
        (gm (ptMul A T).left x _ (e (k.2 PUnit.unit)))⁻¹ := by
  rw [addGen, map_mul, map_mul, map_inv, gm_res_pullU _ _ _ _ hx, gm_res_pullU _ _ _ _ hx, gm_res_pullU _ _ _ _ hx]

theorem isPullGen_addGen : ∀ (S : Scheme.{0}) (A A' T : Over S) [MonObj A] [MonObj A'] (q : A ⟶ A') [IsMonHom q] (M : LB (A' ⊗ T).left) (e : ∀ k, Γ((A ⊗ T).left, (pmap q T).left ⁻¹ᵁ M.U k)ˣ), IsPullGen (pmap q T).left M e → IsPullGen (pmap2 q T).left (addBundle M) (addGen q M e) := by
  intro S A A' T _ _ q _ M e he k l W h₁ h₂ h₃
  refine unit_ext fun x hx => ?_
  have hk := h₁ hx
  have hl := h₂ hx
  have e₁ := gm_pull_of_isPullGen he (prodMapPairTimesIdentity_fst q T) x k.1.1 l.1.1 hk.1.1 hl.1.1
  have e₂ := gm_pull_of_isPullGen he (prodMapPairTimesIdentity_snd q T) x k.1.2 l.1.2 hk.1.2 hl.1.2
  have e₃ := gm_pull_of_isPullGen he (prodMapPairTimesIdentity_mul q T) x k.2 l.2 hk.2 hl.2
  have g := (gm_div _ _ (pmap2 q T).left x k l ⟨hk, hl⟩).trans
    (congrArg (· * _) (gm_tens _ _ (pmap2 q T).left x k.1 l.1 hk.1 hl.1))
  refine ((gm_res (𝟙 _) x h₁ hx _).trans (germ_addGen_pullGen q M e k x hk)).trans (Eq.symm ?_)
  refine ((map_mul _ _ _).trans (congrArg₂ (· * ·) ((gm_res_pullU _ x _ h₃ hx _).trans g)
    ((gm_res (𝟙 _) x h₂ hx _).trans (germ_addGen_pullGen q M e l x hl)))).trans ?_
  rw [e₁, e₂, e₃, mul_inv]
  have alg : ∀ {G : Type} [CommGroup G] (a b c u v w : G),
      a * b * c⁻¹ * (u * v * w⁻¹) = a * u * (b * v) * (c⁻¹ * w⁻¹) := by
    intro G _ a b c u v w
    ac_rfl
  exact alg _ _ _ _ _ _

end GlobalTheory.CharKer
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackLineBundleGeneratorAdditivityDefect =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleTrivialOfInvariantPullbackGenerator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleTrivialOfInvariantPullbackGenerator", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCharacter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFlat\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.TangentLinearity.DescGen\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

noncomputable section

namespace GlobalTheory.CharKer

section Descent

variable {X Y : Scheme.{0}}

lemma appLE_eq_of_eq_hom {f g : X ⟶ Y} (h : f = g) (U : Y.Opens) (V : X.Opens) (e : V ≤ f ⁻¹ᵁ U) :
    f.appLE U V e = g.appLE U V (h ▸ e) := by
  subst h; rfl

lemma opens_toTop_bijective (U : X.Opens) : Function.Bijective (U.ι.appLE U ⊤ U.ι_preimage_self.ge) := by
  have e : U.ι.appLE U ⊤ U.ι_preimage_self.ge = U.topIso.inv := by
    rw [Scheme.Opens.ι_appLE, Scheme.Opens.topIso_inv]; rfl
  rw [e]
  exact ConcreteCategory.bijective_of_isIso U.topIso.inv

lemma restrict_appTop_toTop (p : X ⟶ Y) (V : Y.Opens) (a : Γ(Y, V)) :
    (p ∣_ V).appTop (V.ι.appLE V ⊤ V.ι_preimage_self.ge a) =
      (p ⁻¹ᵁ V).ι.appLE (p ⁻¹ᵁ V) ⊤ (p ⁻¹ᵁ V).ι_preimage_self.ge (p.app V a) := by
  rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply]
  congr 1
  rw [Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE, Scheme.Hom.app_eq_appLE]
  erw [Scheme.Hom.appLE_comp_appLE, Scheme.Hom.appLE_comp_appLE]
  exact congrArg _ (appLE_eq_of_eq_hom (morphismRestrict_ι p V) _ _ _)

lemma restrict_props (p : X ⟶ Y) [Flat p] [Surjective p] [IsAffineHom p] (V : Y.Opens) :
    Flat (p ∣_ V) ∧ Surjective (p ∣_ V) ∧ IsAffineHom (p ∣_ V) :=
  ⟨inferInstance, IsZariskiLocalAtTarget.restrict ‹_› V, by first | exact (MorphismProperty.IsStableUnderBaseChange.of_isPullback (P := @IsAffineHom) (isPullback_morphismRestrict p V).flip ‹_›) | exact (inferInstance : IsAffineHom (p.resLE V (p ⁻¹ᵁ V) le_rfl))⟩

lemma appTop_toTop (V : X.Opens) {Z : Scheme.{0}} (y : Z ⟶ V.toScheme) (s : Γ(X, V)) :
    y.appTop (V.ι.appLE V ⊤ V.ι_preimage_self.ge s) =
      (y ≫ V.ι).appLE V ⊤ (fun z _ => (y z).2) s := by
  rw [← CommRingCat.comp_apply, Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE]
  erw [Scheme.Hom.appLE_comp_appLE]
  rfl

theorem exists_app_eq_of_invariant (p : X ⟶ Y) [Flat p] [Surjective p] [IsAffineHom p] (V : Y.Opens)
    (s : Γ(X, p ⁻¹ᵁ V))
    (hs : ∀ (Z : Scheme.{0}) (y₁ y₂ : Z ⟶ X), y₁ ≫ p = y₂ ≫ p → ∀ (h₁ : ⊤ ≤ y₁ ⁻¹ᵁ (p ⁻¹ᵁ V))
      (h₂ : ⊤ ≤ y₂ ⁻¹ᵁ (p ⁻¹ᵁ V)), y₁.appLE _ ⊤ h₁ s = y₂.appLE _ ⊤ h₂ s) :
    ∃ a : Γ(Y, V), p.app V a = s := by
  obtain ⟨h1, h2, h3⟩ := restrict_props p V
  obtain ⟨v, hv⟩ := ReciprocityTheory.ChartRestriction.G.Out.TLinPf.descend_gen (p ∣_ V)
    ((p ⁻¹ᵁ V).ι.appLE (p ⁻¹ᵁ V) ⊤ (p ⁻¹ᵁ V).ι_preimage_self.ge s) (fun y₁ y₂ h => by
      rw [appTop_toTop, appTop_toTop]
      refine hs _ _ _ ?_ _ _
      rw [Category.assoc, Category.assoc, ← morphismRestrict_ι, ← Category.assoc, h, Category.assoc])
  obtain ⟨a, rfl⟩ := (opens_toTop_bijective V).2 v
  refine ⟨a, (opens_toTop_bijective (p ⁻¹ᵁ V)).1 ?_⟩
  rw [← restrict_appTop_toTop]
  exact hv

lemma app_map_homOfLE (p : X ⟶ Y) {U V : Y.Opens} (h : V ≤ U) (a : Γ(Y, U)) :
    p.app V (Y.presheaf.map (homOfLE h).op a) =
      X.presheaf.map (homOfLE (fun _ hx => h hx : p ⁻¹ᵁ V ≤ p ⁻¹ᵁ U)).op (p.app U a) := by
  rw [← CommRingCat.comp_apply, Scheme.Hom.naturality, CommRingCat.comp_apply]
  rfl

end Descent


open ReciprocityTheory.ChartRestriction.G.DVR.TG in
theorem triv_of_isPullGen_of_invariant : ∀ (X Y : Scheme.{0}) (p : X ⟶ Y), Flat p → Surjective p → IsAffineHom p → ∀ (M : LB Y) (e : ∀ k, Γ(X, p ⁻¹ᵁ M.U k)ˣ), IsPullGen p M e → (∀ (Z : Scheme.{0}) (y₁ y₂ : Z ⟶ X), y₁ ≫ p = y₂ ≫ p → ∀ (k : M.ι) (W : Z.Opens) (h₁ : W ≤ y₁ ⁻¹ᵁ (p ⁻¹ᵁ M.U k)) (h₂ : W ≤ y₂ ⁻¹ᵁ (p ⁻¹ᵁ M.U k)), res h₁ (pullU y₁ _ (e k)) = res h₂ (pullU y₂ _ (e k))) → Triv M := by
  intro X Y p _ _ _ M e he hinv
  have hval : ∀ (k : M.ι) (u : Γ(X, p ⁻¹ᵁ M.U k)ˣ), (u = e k ∨ u = (e k)⁻¹) →
      ∃ a : Γ(Y, M.U k), p.app _ a = u := by
    intro k u hu
    refine exists_app_eq_of_invariant p (M.U k) u ?_
    intro Z y₁ y₂ hy h₁ h₂
    have H := hinv Z y₁ y₂ hy k ⊤ h₁ h₂
    rcases hu with rfl | rfl
    · exact congrArg Units.val H
    · have H' := congrArg (fun x => x⁻¹) H
      simp only [← map_inv] at H'
      exact congrArg Units.val H'
  choose f hf using fun k => hval k (e k) (Or.inl rfl)
  choose f' hf' using fun k => hval k (e k)⁻¹ (Or.inr rfl)
  have inj := fun V => app_injective_of_flat_surj p V
  have hmul : ∀ k, f k * f' k = 1 := fun k =>
    inj _ (by rw [map_mul, map_one, hf, hf', Units.mul_inv])
  let fu : ∀ k, Γ(Y, M.U k)ˣ := fun k => ⟨f k, f' k, hmul k, by rw [mul_comm]; exact hmul k⟩
  refine ⟨⟨fu⟩, fun i j => Units.ext (inj _ ?_)⟩
  have H := congrArg Units.val
    (he i j (p ⁻¹ᵁ (M.U i ⊓ M.U j)) (fun _ hx => hx.1) (fun _ hx => hx.2) le_rfl)
  have eX : ∀ {U V : X.Opens} (h : V ≤ U) (a : Γ(X, U)ˣ),
      ((res h a : Γ(X, V)ˣ) : Γ(X, V)) = X.presheaf.map (homOfLE h).op a := fun _ _ => rfl
  have eY : ∀ {U V : Y.Opens} (h : V ≤ U) (a : Γ(Y, U)ˣ),
      ((res h a : Γ(Y, V)ˣ) : Γ(Y, V)) = Y.presheaf.map (homOfLE h).op a := fun _ _ => rfl
  have eP : ((pullU p (M.U i ⊓ M.U j) (M.g i j) : Γ(X, p ⁻¹ᵁ (M.U i ⊓ M.U j))ˣ) : Γ(X, p ⁻¹ᵁ (M.U i ⊓ M.U j))) =
      p.app _ (M.g i j) := rfl
  have eid : X.presheaf.map (homOfLE (le_rfl : p ⁻¹ᵁ (M.U i ⊓ M.U j) ≤ p ⁻¹ᵁ (M.U i ⊓ M.U j))).op =
      𝟙 _ := by
    rw [show homOfLE (le_rfl : p ⁻¹ᵁ (M.U i ⊓ M.U j) ≤ _) = 𝟙 _ from rfl, op_id, CategoryTheory.Functor.map_id]
  simp only [Units.val_mul, eX, eP] at H
  rw [eid, CommRingCat.id_apply] at H
  simp only [Units.val_mul, map_mul, eY, app_map_homOfLE]
  show X.presheaf.map _ (p.app _ (f i)) = _ * X.presheaf.map _ (p.app _ (f j))
  rw [hf, hf]
  exact H

end GlobalTheory.CharKer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleTrivialOfInvariantPullbackGenerator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdMapPairTimesIdentityFlatSurjectiveAffine =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdMapPairTimesIdentityFlatSurjectiveAffine", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdMapPairTimesIdentitySnd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

namespace GlobalTheory.CharKer.PmapTwo

variable {S : Scheme.{0}}

theorem isPullback_whiskerLeft_left (W : Over S) {G B : Over S} (p : G ⟶ B) :
    IsPullback (W ◁ p).left (snd W G).left (snd W B).left p.left := by
  have h1 : IsPullback (fst W B).left (snd W B).left W.hom B.hom := IsPullback.of_hasPullback W.hom B.hom
  have h2 : IsPullback (fst W G).left (snd W G).left W.hom G.hom := IsPullback.of_hasPullback W.hom G.hom
  refine IsPullback.of_right ?_ ?_ h1
  · rw [← Over.comp_left, whiskerLeft_fst, Over.w p]; exact h2
  · rw [← Over.comp_left, ← Over.comp_left, whiskerLeft_snd]

theorem isPullback_whiskerRight_left {G B : Over S} (p : G ⟶ B) (W : Over S) :
    IsPullback (p ▷ W).left (fst G W).left (fst B W).left p.left := by
  have h1 : IsPullback (snd B W).left (fst B W).left W.hom B.hom :=
    (IsPullback.of_hasPullback B.hom W.hom).flip
  have h2 : IsPullback (snd G W).left (fst G W).left W.hom G.hom := (IsPullback.of_hasPullback G.hom W.hom).flip
  refine IsPullback.of_right ?_ ?_ h1
  · rw [← Over.comp_left, whiskerRight_snd, Over.w p]; exact h2
  · rw [← Over.comp_left, ← Over.comp_left, whiskerRight_fst]

theorem prodMapPairTimesIdentity_eq_comp_whiskers {A A' : Over S} (q : A ⟶ A') (T : Over S) :
    pmap2 q T = (q ▷ (A ⊗ T)) ≫ (A' ◁ (q ▷ T)) := by
  ext <;> simp [pmap2, pmap]

end GlobalTheory.CharKer.PmapTwo


open GlobalTheory.CharKer.PmapTwo in
theorem GlobalTheory.CharKer.pmap2_flat_surjective_isAffineHom :
    ∀ (S : Scheme.{0}) (A A' T : Over S) (q : A ⟶ A'), Flat q.left → Surjective q.left → IsAffineHom q.left →
      Flat (pmap2 q T).left ∧ Surjective (pmap2 q T).left ∧ IsAffineHom (pmap2 q T).left := by
  intro S A A' T q h1 h2 h3
  have hR := (isPullback_whiskerRight_left q (A ⊗ T)).flip
  have hL := (isPullback_whiskerLeft_left A' (q ▷ T)).flip
  have hR' := (isPullback_whiskerRight_left q T).flip
  have a1 : Flat (q ▷ (A ⊗ T)).left := MorphismProperty.of_isPullback hR h1
  have a2 : Surjective (q ▷ (A ⊗ T)).left := MorphismProperty.of_isPullback hR h2
  have a3 : IsAffineHom (q ▷ (A ⊗ T)).left := MorphismProperty.of_isPullback hR h3
  have b1 : Flat (q ▷ T).left := MorphismProperty.of_isPullback hR' h1
  have b2 : Surjective (q ▷ T).left := MorphismProperty.of_isPullback hR' h2
  have b3 : IsAffineHom (q ▷ T).left := MorphismProperty.of_isPullback hR' h3
  have c1 : Flat (A' ◁ (q ▷ T)).left := MorphismProperty.of_isPullback hL b1
  have c2 : Surjective (A' ◁ (q ▷ T)).left := MorphismProperty.of_isPullback hL b2
  have c3 : IsAffineHom (A' ◁ (q ▷ T)).left := MorphismProperty.of_isPullback hL b3
  rw [prodMapPairTimesIdentity_eq_comp_whiskers, Over.comp_left]
  exact ⟨inferInstance, inferInstance, inferInstance⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdMapPairTimesIdentityFlatSurjectiveAffine =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterLineBundleAdditiveOfEquivariantGenerato =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterLineBundleAdditiveOfEquivariantGenerato", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCharacter\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdMapPairTimesIdentitySnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditivityDefectGeneratorInvariantSameImage\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackLineBundleGeneratorAdditivityDefect\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleTrivialOfInvariantPullbackGenerator\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdMapPairTimesIdentityFlatSurjectiveAffine\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

namespace GlobalTheory.CharKer

theorem isAdditive_of_isEquivGen : ∀ (K : Type) [Field K] [IsAlgClosed K] (A A' N T : Over (Sp K)) [GrpObj A] [GrpObj A'] [GrpObj N] (i : N ⟶ A) (q : A ⟶ A') (χ : Γ((N ⊗ T).left, ⊤)ˣ) (M : LB (A' ⊗ T).left) (e : ∀ k, Γ((A ⊗ T).left, (pmap q T).left ⁻¹ᵁ M.U k)ˣ), IsAbelianScheme A → IsAbelianScheme A' → IsMonHom i → IsMonHom q → IsFinite q.left → Flat q.left → Surjective q.left → IsPullback i (toUnit N) q η[A'] → IsCharacter χ → M.IsLB → IsEquivGen i q χ M e → IsAdditive M := by
  intro K _ _ A A' N T _ _ _ i q χ M e hA hA' hi hq hfin hflat hsurj hker hχ hM he
  haveI := hA
  haveI := hq
  haveI : IsCommMonObj A := IsAbelianScheme.comm
  obtain ⟨h₁, h₂, h₃⟩ := _root_.GlobalTheory.CharKer.pmap2_flat_surjective_isAffineHom _ A A' T q hflat hsurj inferInstance
  exact isAdditive_of_universal hM (_root_.GlobalTheory.CharKer.triv_of_isPullGen_of_invariant _ _ (pmap2 q T).left h₁ h₂ h₃ (addBundle M) (addGen q M e)
    (_root_.GlobalTheory.CharKer.isPullGen_addGen _ A A' T q M e he.1) (_root_.GlobalTheory.CharKer.addGen_invariant _ A A' N T i q χ M e hi hker hχ he))

end GlobalTheory.CharKer
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterLineBundleAdditiveOfEquivariantGenerato =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKernelActionTripleOverlap =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKernelActionTripleOverlap", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCharacter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Constructions.Over.Connected\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

noncomputable section

namespace GlobalTheory.CharKer

theorem pullTop_comp_apply {X Y Z : Scheme.{0}} (f : X ⟶ Y) (g : Y ⟶ Z) (u : Γ(Z, ⊤)ˣ) :
    pullTop (f ≫ g) u = pullTop f (pullTop g u) := by
  ext
  simp only [pullTop, Units.coe_map, Scheme.Hom.comp_appTop, CommRingCat.hom_comp]
  rfl

section Tri

variable {S : Scheme.{0}} (A N T : Over S) [GrpObj A] [GrpObj N] (i : N ⟶ A)

def triM₁₂ : A ⊗ (N ⊗ (N ⊗ T)) ⟶ A ⊗ (N ⊗ T) :=
  lift (fst A _) (lift (snd A _ ≫ fst N _) (snd A _ ≫ snd N _ ≫ snd N T))

def triM₂₃ : A ⊗ (N ⊗ (N ⊗ T)) ⟶ A ⊗ (N ⊗ T) :=
  lift (fst A _ * (snd A _ ≫ fst N _ ≫ i)) (snd A _ ≫ snd N (N ⊗ T))

def triM₁₃ : A ⊗ (N ⊗ (N ⊗ T)) ⟶ A ⊗ (N ⊗ T) :=
  lift (fst A _) (lift (snd A _ ≫ fst N _ * (snd A _ ≫ snd N _ ≫ fst N T)) (snd A _ ≫ snd N _ ≫ snd N T))

theorem triM₁₂_actMap_eq : triM₁₂ A N T ≫ actMap i T = triM₂₃ A N T i ≫ prMap A N T := by
  apply hom_ext <;> simp [triM₁₂, triM₂₃, actMap, prMap, comp_mul]

theorem tri_isPullback_over : IsPullback (triM₁₂ A N T) (triM₂₃ A N T i) (actMap i T) (prMap A N T) := by
  refine IsPullback.of_isLimit (c := PullbackCone.mk _ _ (triM₁₂_actMap_eq A N T i))
    (PullbackCone.IsLimit.mk (triM₁₂_actMap_eq A N T i)
      (fun s => lift (s.fst ≫ fst A _) (lift (s.fst ≫ snd A _ ≫ fst N T)
        (lift (s.snd ≫ snd A _ ≫ fst N T) (s.fst ≫ snd A _ ≫ snd N T)))) ?_ ?_ ?_)
  · intro s
    apply hom_ext
    · simp [triM₁₂]
    · apply hom_ext <;> simp [triM₁₂]
  · intro s
    have h := s.condition
    have h₁ := congrArg (· ≫ fst A T) h
    have h₂ := congrArg (· ≫ snd A T) h
    simp only [Category.assoc, actMap, prMap, lift_fst, lift_snd, comp_mul] at h₁ h₂
    apply hom_ext
    · simp [triM₂₃, comp_mul, ← h₁]
    · apply hom_ext
      · simp [triM₂₃]
      · simp [triM₂₃, h₂]
  · intro s m h₁ h₂
    have e₁ := congrArg (· ≫ fst A _) h₁
    have e₂ := congrArg (· ≫ snd A _ ≫ fst N T) h₁
    have e₃ := congrArg (· ≫ snd A _ ≫ snd N T) h₁
    have e₄ := congrArg (· ≫ snd A _ ≫ fst N T) h₂
    simp only [triM₁₂, triM₂₃, Category.assoc, lift_fst, lift_snd, lift_snd_assoc] at e₁ e₂ e₃ e₄
    apply hom_ext
    · simpa using e₁
    · apply hom_ext
      · simpa using e₂
      · apply hom_ext
        · simpa using e₄
        · simpa using e₃

theorem triM₁₃_prMap : triM₁₃ A N T ≫ prMap A N T = triM₁₂ A N T ≫ prMap A N T := by
  apply hom_ext <;> simp [triM₁₃, triM₁₂, prMap]

theorem triM₁₃_actMap [IsMonHom i] : triM₁₃ A N T ≫ actMap i T = triM₂₃ A N T i ≫ actMap i T := by
  apply hom_ext
  · simp only [triM₁₃, triM₂₃, actMap, comp_lift, lift_fst, lift_fst_assoc, lift_snd_assoc, comp_mul, mul_comp,
      Category.assoc]
    exact (mul_assoc _ _ _).symm
  · simp [triM₁₃, triM₂₃, actMap]

theorem triM₁₃_snd : triM₁₃ A N T ≫ snd A (N ⊗ T) =
    snd A (N ⊗ (N ⊗ T)) ≫ lift (fst N (N ⊗ T) * (snd N (N ⊗ T) ≫ fst N T)) (snd N (N ⊗ T) ≫ snd N T) := by
  apply hom_ext <;> simp [triM₁₃, comp_mul]

theorem triM₁₂_snd : triM₁₂ A N T ≫ snd A (N ⊗ T) =
    snd A (N ⊗ (N ⊗ T)) ≫ lift (fst N (N ⊗ T)) (snd N (N ⊗ T) ≫ snd N T) := by
  apply hom_ext <;> simp [triM₁₂]

theorem triM₂₃_snd : triM₂₃ A N T i ≫ snd A (N ⊗ T) = snd A (N ⊗ (N ⊗ T)) ≫ snd N (N ⊗ T) := by
  simp [triM₂₃]

end Tri

theorem triOverlap : ∀ (S : Scheme.{0}) (A N T : Over S) [GrpObj A] [GrpObj N] (i : N ⟶ A) (χ : Γ((N ⊗ T).left, ⊤)ˣ),
    IsMonHom i → IsCharacter χ → ∃ (W : Scheme.{0}) (m₁₂ m₂₃ m₁₃ : W ⟶ (A ⊗ (N ⊗ T)).left),
      IsPullback m₁₂ m₂₃ (actMap i T).left (prMap A N T).left ∧
      m₁₃ ≫ (prMap A N T).left = m₁₂ ≫ (prMap A N T).left ∧
      m₁₃ ≫ (actMap i T).left = m₂₃ ≫ (actMap i T).left ∧
      pullTop m₁₃ (pullTop (snd A (N ⊗ T)).left χ) =
        pullTop m₁₂ (pullTop (snd A (N ⊗ T)).left χ) * pullTop m₂₃ (pullTop (snd A (N ⊗ T)).left χ) := by
  intro S A N T _ _ i χ hi hχ
  haveI := hi
  refine ⟨(A ⊗ (N ⊗ (N ⊗ T))).left, (triM₁₂ A N T).left, (triM₂₃ A N T i).left, (triM₁₃ A N T).left,
    (tri_isPullback_over A N T i).map (Over.forget S), ?_, ?_, ?_⟩
  · rw [← Over.comp_left, ← Over.comp_left, triM₁₃_prMap]
  · rw [← Over.comp_left, ← Over.comp_left, triM₁₃_actMap]
  · rw [← pullTop_comp_apply, ← pullTop_comp_apply, ← pullTop_comp_apply, ← Over.comp_left, ← Over.comp_left, ← Over.comp_left,
      triM₁₃_snd, triM₁₂_snd, triM₂₃_snd, Over.comp_left, Over.comp_left, Over.comp_left, pullTop_comp_apply, pullTop_comp_apply,
      pullTop_comp_apply]
    unfold IsCharacter at hχ
    rw [hχ, map_mul]

end GlobalTheory.CharKer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKernelActionTripleOverlap =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FaithfullyFlatAppOfIsAffineHomFlatSurjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FaithfullyFlatAppOfIsAffineHomFlatSurjective", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry

namespace GlobalTheory

theorem faithfullyFlat_app_of_isAffineHom_flat_surjective :
    ∀ (X Y : Scheme.{0}) (p : X ⟶ Y) (V : Y.Opens), IsAffineHom p → Flat p → Surjective p →
      IsAffineOpen V → (p.app V).hom.FaithfullyFlat := by
  intro X Y p V _ _ _ hV
  have hpre : IsAffineOpen (p ⁻¹ᵁ V) := hV.preimage p
  have : IsAffine V := hV
  have : IsAffine (p ⁻¹ᵁ V) := hpre
  have : Flat (p ∣_ V) :=
    MorphismProperty.of_isPullback (isPullback_morphismRestrict p V).flip ‹Flat p›
  have : Surjective (p ∣_ V) := IsZariskiLocalAtTarget.restrict ‹Surjective p› V
  have hff := (Flat.flat_and_surjective_iff_faithfullyFlat_of_isAffine (p ∣_ V)).mp
    ⟨inferInstance, inferInstance⟩
  rw [morphismRestrict_appTop] at hff
  have hff' := (RingHom.FaithfullyFlat.respectsIso.cancel_right_isIso
    (p.app (V.ι ''ᵁ ⊤)) (X.presheaf.map (eqToHom (image_morphismRestrict_preimage p V ⊤)).op)).mp hff
  rwa [Scheme.Opens.ι_image_top] at hff'

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FaithfullyFlatAppOfIsAffineHomFlatSurjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyTrivialUnitCocycleFaithfullyFlat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyTrivialUnitCocycleFaithfullyFlat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsUniqueBaseChangeEqOfMem\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.RingTheory.RingHom.FaithfullyFlat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits TensorProduct

namespace GlobalTheory

namespace UnitCocycle

section Tensor

variable {R B : Type} [CommRing R] [CommRing B] [Algebra R B]


variable (R B) in
noncomputable def m₁₂ : B ⊗[R] B →ₐ[R] B ⊗[R] (B ⊗[R] B) :=
  Algebra.TensorProduct.map (AlgHom.id R B) Algebra.TensorProduct.includeLeft


variable (R B) in
noncomputable def m₁₃ : B ⊗[R] B →ₐ[R] B ⊗[R] (B ⊗[R] B) :=
  Algebra.TensorProduct.map (AlgHom.id R B) Algebra.TensorProduct.includeRight


variable (R B) in
noncomputable def m₂₃ : B ⊗[R] B →ₐ[R] B ⊗[R] (B ⊗[R] B) :=
  Algebra.TensorProduct.includeRight

noncomputable def datum (c : B ⊗[R] B) : B →ₗ[B] B ⊗[R] B :=
  LinearMap.toSpanSingleton B _ c

theorem datum_apply (c : B ⊗[R] B) (x : B) : datum c x = c * (x ⊗ₜ[R] (1 : B)) := by
  rw [datum, LinearMap.toSpanSingleton_apply, Algebra.smul_def, mul_comm]
  rfl

theorem lmul'_eq_one {c : B ⊗[R] B} (hu : IsUnit c)
    (h : m₁₃ R B c = m₁₂ R B c * m₂₃ R B c) : Algebra.TensorProduct.lmul' R c = (1 : B) := by
  let μ : B ⊗[R] B →ₐ[R] B := Algebra.TensorProduct.lmul' R
  let ν : B ⊗[R] (B ⊗[R] B) →ₐ[R] B :=
    μ.comp (Algebra.TensorProduct.map (AlgHom.id R B) μ)
  have h12 : ν.comp (m₁₂ R B) = μ := by ext <;> simp [ν, μ, m₁₂]
  have h13 : ν.comp (m₁₃ R B) = μ := by ext <;> simp [ν, μ, m₁₃]
  have h23 : ν.comp (m₂₃ R B) = μ := by ext <;> simp [ν, μ, m₂₃]
  have h' := congrArg ν h
  rw [map_mul, ← AlgHom.comp_apply, ← AlgHom.comp_apply, ← AlgHom.comp_apply, h12, h13, h23] at h'
  exact (hu.map μ).mul_left_cancel (by rw [mul_one]; exact h'.symm)

theorem isDescentDatum {c : B ⊗[R] B} (hu : IsUnit c)
    (h : m₁₃ R B c = m₁₂ R B c * m₂₃ R B c) : GlobalTheory.FlatDescent.IsDescentDatum (datum c) := by
  have ha : ∀ z : B ⊗[R] B, GlobalTheory.FlatDescent.act (A := R) (B := B) (N := B) z = Algebra.TensorProduct.lmul' R z := by
    intro z
    induction z using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul b m => simp
  have h1 : ∀ z : B ⊗[R] B,
      ((datum c).restrictScalars R).lTensor B z = m₁₂ R B z * m₂₃ R B c := by
    intro z
    induction z using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy, add_mul]
    | tmul b m => simp [datum_apply, m₁₂, m₂₃, mul_comm]
  have h2 : ∀ z : B ⊗[R] B, (TensorProduct.mk R B B 1).lTensor B z = m₁₃ R B z := by
    intro z
    induction z using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
    | tmul b m => simp [m₁₃]
  constructor
  · intro n
    rw [ha, datum_apply, map_mul, lmul'_eq_one hu h]
    simp
  · intro n
    rw [h1, h2, datum_apply, map_mul, map_mul, h, mul_right_comm]
    congr 1

theorem exists_local_tensor [Module.FaithfullyFlat R B] {c : B ⊗[R] B} (hu : IsUnit c)
    (h : m₁₃ R B c = m₁₂ R B c * m₂₃ R B c) (P : Ideal R) (hP : P ≠ ⊤) :
    ∃ s : R, s ∉ P ∧ ∃ x y : B, x * y = algebraMap R B s ∧
      (1 : B) ⊗ₜ[R] x = c * (x ⊗ₜ[R] (1 : B)) := by
  have hd := isDescentDatum hu h
  have hI := hd.invertible_invariants
  let I := GlobalTheory.FlatDescent.invariants (datum c)
  obtain ⟨φ, m, hm⟩ : ∃ (φ : Module.Dual R I) (m : I), φ m ∉ P := by
    by_contra hcon
    push_neg at hcon
    apply hP
    rw [Ideal.eq_top_iff_one]
    obtain ⟨z, hz⟩ := hI.bijective.2 1
    rw [← hz]
    clear hz
    induction z using TensorProduct.induction_on with
    | zero => simp
    | add x y hx hy => rw [map_add (f := _)]; exact P.add_mem hx hy
    | tmul b m => simpa using hcon b m
  let e := LinearEquiv.ofBijective _ hd.bijective_extend
  let Φ : B →ₗ[B] B :=
    (AlgebraTensorModule.rid R B B).toLinearMap ∘ₗ LinearMap.baseChange B φ ∘ₗ e.symm.toLinearMap
  have h1 : e.symm (m : B) = 1 ⊗ₜ m := by
    rw [LinearEquiv.symm_apply_eq]
    simp [e]
  refine ⟨φ m, hm, m, Φ 1, ?_, ?_⟩
  · rw [← smul_eq_mul, ← map_smul, smul_eq_mul, mul_one]
    simp [Φ, h1, Algebra.algebraMap_eq_smul_one]
  · rw [← datum_apply]
    exact (GlobalTheory.FlatDescent.mem_invariants.1 m.2).symm

end Tensor

theorem exists_local (R B C D : CommRingCat.{0}) (f : R ⟶ B) (j₁ j₂ : B ⟶ C) (d₁₂ d₂₃ d₁₃ : C ⟶ D)
    (hC : IsPushout f f j₁ j₂) (hD : IsPushout j₂ j₁ d₁₂ d₂₃) (h₁ : j₁ ≫ d₁₃ = j₁ ≫ d₁₂)
    (h₂ : j₂ ≫ d₁₃ = j₂ ≫ d₂₃) (hf : f.hom.FaithfullyFlat) (c : Cˣ)
    (hc : d₁₃.hom (c : C) = d₁₂.hom (c : C) * d₂₃.hom (c : C)) (P : Ideal R) (hP : P.IsPrime) :
    ∃ s : R, s ∉ P ∧ ∃ x y : B, x * y = f.hom s ∧ j₂.hom x = (c : C) * j₁.hom x := by
  letI : Algebra R B := f.hom.toAlgebra
  haveI : Module.FaithfullyFlat R B := hf
  have hT := CommRingCat.isPushout_tensorProduct R B B
  let e : C ≅ CommRingCat.of (B ⊗[R] B) := hC.isoIsPushout _ _ hT
  have e1 : j₁ ≫ e.hom = _ := hC.inl_isoIsPushout_hom _ _ hT
  have e2 : j₂ ≫ e.hom = _ := hC.inr_isoIsPushout_hom _ _ hT
  have e1' : ∀ x : B, e.hom.hom (j₁.hom x) = x ⊗ₜ[R] (1 : B) := fun x =>
    congrArg (fun q => q.hom x) e1
  have e2' : ∀ x : B, e.hom.hom (j₂.hom x) = (1 : B) ⊗ₜ[R] x := fun x =>
    congrArg (fun q => q.hom x) e2
  let n₁₂ : C ⟶ CommRingCat.of (B ⊗[R] (B ⊗[R] B)) := e.hom ≫ CommRingCat.ofHom (m₁₂ R B).toRingHom
  let n₁₃ : C ⟶ CommRingCat.of (B ⊗[R] (B ⊗[R] B)) := e.hom ≫ CommRingCat.ofHom (m₁₃ R B).toRingHom
  let n₂₃ : C ⟶ CommRingCat.of (B ⊗[R] (B ⊗[R] B)) := e.hom ≫ CommRingCat.ofHom (m₂₃ R B).toRingHom
  have w : j₂ ≫ n₁₂ = j₁ ≫ n₂₃ := by
    ext x
    change m₁₂ R B (e.hom.hom (j₂.hom x)) = m₂₃ R B (e.hom.hom (j₁.hom x))
    rw [e1', e2']
    simp [m₁₂, m₂₃]
  let ψ := hD.desc n₁₂ n₂₃ w
  have p12 : d₁₂ ≫ ψ = n₁₂ := hD.inl_desc _ _ _
  have p23 : d₂₃ ≫ ψ = n₂₃ := hD.inr_desc _ _ _
  have p13 : d₁₃ ≫ ψ = n₁₃ := by
    apply hC.hom_ext
    · rw [← Category.assoc, h₁, Category.assoc, p12]
      ext x
      change m₁₂ R B (e.hom.hom (j₁.hom x)) = m₁₃ R B (e.hom.hom (j₁.hom x))
      rw [e1']
      simp [m₁₂, m₁₃]
    · rw [← Category.assoc, h₂, Category.assoc, p23]
      ext x
      change m₂₃ R B (e.hom.hom (j₂.hom x)) = m₁₃ R B (e.hom.hom (j₂.hom x))
      rw [e2']
      simp [m₂₃, m₁₃]
  have hco : m₁₃ R B (e.hom.hom c) = m₁₂ R B (e.hom.hom c) * m₂₃ R B (e.hom.hom c) := by
    have h' := congrArg ψ.hom hc
    rw [map_mul] at h'
    have q12 : ψ.hom (d₁₂.hom c) = m₁₂ R B (e.hom.hom c) := congrArg (fun q => q.hom (c : C)) p12
    have q13 : ψ.hom (d₁₃.hom c) = m₁₃ R B (e.hom.hom c) := congrArg (fun q => q.hom (c : C)) p13
    have q23 : ψ.hom (d₂₃.hom c) = m₂₃ R B (e.hom.hom c) := congrArg (fun q => q.hom (c : C)) p23
    rwa [q12, q13, q23] at h'
  obtain ⟨s, hs, x, y, hxy, hx⟩ :=
    exists_local_tensor (c.isUnit.map e.hom.hom) hco P hP.ne_top
  refine ⟨s, hs, x, y, hxy, ?_⟩
  apply e.commRingCatIsoToRingEquiv.injective
  change e.hom.hom _ = e.hom.hom _
  rw [map_mul, e1', e2']
  exact hx

end UnitCocycle

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyTrivialUnitCocycleFaithfullyFlat =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyTrivialUnitCocycleScheme =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyTrivialUnitCocycleScheme", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCharacter\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Tactic.ENatToNat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FaithfullyFlatAppOfIsAffineHomFlatSurjective\npublic import Mathlib.RingTheory.RingHom.FaithfullyFlat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyTrivialUnitCocycleFaithfullyFlat\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ChartPullbacks.BaseChangeKernels.Affine\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsFrobGBaseChange\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

noncomputable section

namespace GlobalTheory.CharKer

theorem appLE_eq_of_eq' {X Y : Scheme.{0}} {f g : X ⟶ Y} (h : f = g) (U : Y.Opens) (V : X.Opens)
    (e : V ≤ f ⁻¹ᵁ U) (e' : V ≤ g ⁻¹ᵁ U) : f.appLE U V e = g.appLE U V e' := by
  subst h; rfl

theorem app_map_eq_appLE {X Y : Scheme.{0}} (f : X ⟶ Y) (U : Y.Opens) (V : X.Opens)
    (h : V ≤ f ⁻¹ᵁ U) (x : Γ(Y, U)) :
    (X.presheaf.map (homOfLE h).op).hom ((f.app U).hom x) = (f.appLE U V h).hom x := by
  rw [← CommRingCat.comp_apply, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_map]

theorem appLE_map_eq_appLE {X Y : Scheme.{0}} (f : X ⟶ Y) (U : Y.Opens) (V V' : X.Opens)
    (h : V ≤ f ⁻¹ᵁ U) (h' : V' ≤ V) (x : Γ(Y, U)) :
    (X.presheaf.map (homOfLE h').op).hom ((f.appLE U V h).hom x) = (f.appLE U V' (h'.trans h)).hom x := by
  rw [← CommRingCat.comp_apply, Scheme.Hom.appLE_map]

theorem map_app_map_eq_appLE {X Y : Scheme.{0}} (f : X ⟶ Y) {U U' : Y.Opens} (hU : U' ≤ U)
    (V : X.Opens) (h : V ≤ f ⁻¹ᵁ U') (h' : V ≤ f ⁻¹ᵁ U) (x : Γ(Y, U)) :
    (X.presheaf.map (homOfLE h).op).hom ((f.app U').hom ((Y.presheaf.map (homOfLE hU).op).hom x)) =
      (f.appLE U V h').hom x := by
  rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, Scheme.Hom.app_eq_appLE,
    ← Category.assoc, Scheme.Hom.map_appLE, Scheme.Hom.appLE_map]

theorem appLE_map_top {X Y : Scheme.{0}} (f : X ⟶ Y) (U : Y.Opens) (V : X.Opens) (e : V ≤ f ⁻¹ᵁ U)
    (x : Γ(Y, ⊤)) :
    (f.appLE U V e).hom ((Y.presheaf.map (homOfLE (le_top : U ≤ ⊤)).op).hom x) =
      (X.presheaf.map (homOfLE (le_top : V ≤ ⊤)).op).hom (f.appTop.hom x) := by
  rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply]
  congr 2
  simp only [Scheme.Hom.appLE, Scheme.Hom.appTop]
  rw [Scheme.Hom.naturality_assoc, ← Functor.map_comp]
  rfl

theorem map_map_apply {X : Scheme.{0}} {U V W : X.Opens} (h₁ : V ≤ U) (h₂ : W ≤ V) (h₃ : W ≤ U)
    (x : Γ(X, U)) : (X.presheaf.map (homOfLE h₂).op).hom ((X.presheaf.map (homOfLE h₁).op).hom x) =
      (X.presheaf.map (homOfLE h₃).op).hom x := by
  rw [← CommRingCat.comp_apply, ← Functor.map_comp]
  rfl

end GlobalTheory.CharKer

namespace GlobalTheory.CharKer

theorem exists_local_charUnit : ∀ (X Y Z W : Scheme.{0}) (p : X ⟶ Y) (a b : Z ⟶ X) (m₁₂ m₂₃ m₁₃ : W ⟶ Z) (χ : Γ(Z, ⊤)ˣ), IsAffineHom p → Flat p → Surjective p → IsPullback b a p p → IsPullback m₁₂ m₂₃ a b → m₁₃ ≫ b = m₁₂ ≫ b → m₁₃ ≫ a = m₂₃ ≫ a → pullTop m₁₃ χ = pullTop m₁₂ χ * pullTop m₂₃ χ → ∀ y : Y, ∃ V : Y.Opens, y ∈ V ∧ ∃ e : Γ(X, p ⁻¹ᵁ V)ˣ, ∀ (W' : Z.Opens) (h₁ : W' ≤ a ⁻¹ᵁ (p ⁻¹ᵁ V)) (h₂ : W' ≤ b ⁻¹ᵁ (p ⁻¹ᵁ V)), res h₁ (pullU a _ e) = res le_top χ * res h₂ (pullU b _ e) := by
  intro X Y Z W p a b m₁₂ m₂₃ m₁₃ χ hpA hpF hpS sq₁ sq₂ e₁₃b e₁₃a hχ y
  obtain ⟨V, hV, hyV, -⟩ := exists_isAffineOpen_mem_and_subset (X := Y) (x := y) (U := ⊤) trivial
  have ha : IsAffineHom a := MorphismProperty.of_isPullback (P := @IsAffineHom) sq₁ hpA
  have hab : a ⁻¹ᵁ (p ⁻¹ᵁ V) = b ⁻¹ᵁ (p ⁻¹ᵁ V) := by
    rw [← Scheme.Hom.comp_preimage, ← Scheme.Hom.comp_preimage, sq₁.w]
  have h12 : m₂₃ ⁻¹ᵁ (a ⁻¹ᵁ (p ⁻¹ᵁ V)) ≤ m₁₂ ⁻¹ᵁ (a ⁻¹ᵁ (p ⁻¹ᵁ V)) := by
    rw [← Scheme.Hom.comp_preimage m₁₂ a, sq₂.w, Scheme.Hom.comp_preimage, ← hab]
  have h13 : m₂₃ ⁻¹ᵁ (a ⁻¹ᵁ (p ⁻¹ᵁ V)) ≤ m₁₃ ⁻¹ᵁ (a ⁻¹ᵁ (p ⁻¹ᵁ V)) := by
    rw [← Scheme.Hom.comp_preimage m₁₃ a, e₁₃a, Scheme.Hom.comp_preimage]
  have hV₀ : IsAffineOpen (p ⁻¹ᵁ V) := hV.preimage p
  have hV₁ : IsAffineOpen (a ⁻¹ᵁ (p ⁻¹ᵁ V)) := hV₀.preimage a
  have P₁ := ReciprocityTheory.ChartRestriction.G.Out.GtBCPf.isPushout_appLE sq₁ hpA hV hV₀ le_rfl hab.le
  rw [Scheme.Hom.appLE_eq_app] at P₁
  have P₂ := ReciprocityTheory.ChartRestriction.G.Out.GtBCPf.isPushout_appLE sq₂ ha hV₀ hV₁ hab.le h12
  have E₁ : b.appLE (p ⁻¹ᵁ V) (a ⁻¹ᵁ (p ⁻¹ᵁ V)) hab.le ≫ m₁₃.appLE _ _ h13 =
      b.appLE (p ⁻¹ᵁ V) (a ⁻¹ᵁ (p ⁻¹ᵁ V)) hab.le ≫ m₁₂.appLE _ _ h12 := by
    rw [Scheme.Hom.appLE_comp_appLE, Scheme.Hom.appLE_comp_appLE]
    exact _root_.GlobalTheory.SS.FrobField.appLE_congr_hom e₁₃b _ _ _ _
  have E₂ : a.app (p ⁻¹ᵁ V) ≫ m₁₃.appLE _ _ h13 = a.app (p ⁻¹ᵁ V) ≫ m₂₃.app _ := by
    rw [Scheme.Hom.app_eq_appLE a, Scheme.Hom.app_eq_appLE m₂₃, Scheme.Hom.appLE_comp_appLE,
      Scheme.Hom.appLE_comp_appLE]
    exact appLE_eq_of_eq' e₁₃a _ _ _ _
  have FF := _root_.GlobalTheory.faithfullyFlat_app_of_isAffineHom_flat_surjective X Y p V hpA hpF hpS hV
  let c : Γ(Z, a ⁻¹ᵁ (p ⁻¹ᵁ V))ˣ := res le_top χ
  have hc : (m₁₃.appLE _ _ h13).hom (c : Γ(Z, a ⁻¹ᵁ (p ⁻¹ᵁ V))) =
      (m₁₂.appLE _ _ h12).hom (c : Γ(Z, a ⁻¹ᵁ (p ⁻¹ᵁ V))) * (m₂₃.app _).hom (c : Γ(Z, a ⁻¹ᵁ (p ⁻¹ᵁ V))) := by
    have := congrArg (fun u => ((res (le_top : m₂₃ ⁻¹ᵁ (a ⁻¹ᵁ (p ⁻¹ᵁ V)) ≤ ⊤) u : Γ(W, _)ˣ) :
      Γ(W, m₂₃ ⁻¹ᵁ (a ⁻¹ᵁ (p ⁻¹ᵁ V))))) hχ
    simp only [map_mul, Units.val_mul, res, pullTop, Units.coe_map, MonoidHom.coe_coe] at this
    rw [Scheme.Hom.app_eq_appLE m₂₃]
    simp only [c, res, Units.coe_map, MonoidHom.coe_coe]
    rw [appLE_map_top, appLE_map_top, appLE_map_top]
    exact this
  obtain ⟨s, hs, x, x', hxx', hx⟩ := _root_.GlobalTheory.UnitCocycle.exists_local _ _ _ _ (p.app V) _ _ _ _ _ P₁ P₂ E₁ E₂ FF c hc
    (hV.primeIdealOf ⟨y, hyV⟩).asIdeal inferInstance
  have hyS : y ∈ Y.basicOpen s := by
    have h0 : hV.primeIdealOf ⟨y, hyV⟩ ∈ hV.fromSpec ⁻¹ᵁ Y.basicOpen s := by
      rw [hV.fromSpec_preimage_basicOpen]; exact hs
    have h1 := hV.fromSpec_primeIdealOf ⟨y, hyV⟩
    have h0' : hV.fromSpec (hV.primeIdealOf ⟨y, hyV⟩) ∈ Y.basicOpen s := h0
    rwa [h1] at h0'
  refine ⟨Y.basicOpen s, hyS, ?_⟩
  have hle : p ⁻¹ᵁ Y.basicOpen s ≤ p ⁻¹ᵁ V := fun z hz => Y.basicOpen_le s hz
  have hpre := Scheme.preimage_basicOpen p s
  have hu : IsUnit ((X.presheaf.map (homOfLE hle).op).hom x) := by
    apply isUnit_of_mul_isUnit_left (y := (X.presheaf.map (homOfLE hle).op).hom x')
    rw [← map_mul, hxx']
    have h2 := RingedSpace.isUnit_res_basicOpen X.toRingedSpace ((p.app V).hom s)
    have h3 := h2.map (X.presheaf.map (homOfLE hpre.le).op).hom
    rw [← map_map_apply (X.basicOpen_le ((p.app V).hom s)) hpre.le hle]
    exact h3
  refine ⟨hu.unit, fun W' h₁ h₂ => ?_⟩
  have hW : W' ≤ a ⁻¹ᵁ (p ⁻¹ᵁ V) := fun z hz => hle (h₁ hz)
  have hWb : W' ≤ b ⁻¹ᵁ (p ⁻¹ᵁ V) := hW.trans hab.le
  apply Units.ext
  simp only [res, pullU, Units.coe_map, MonoidHom.coe_coe, IsUnit.unit_spec, Units.val_mul]
  rw [map_app_map_eq_appLE a hle W' h₁ hW, map_app_map_eq_appLE b hle W' h₂ hWb]
  have := congrArg (Z.presheaf.map (homOfLE hW).op).hom hx
  rw [map_mul, app_map_eq_appLE, appLE_map_eq_appLE] at this
  rw [this]
  congr 1
  simp only [c, res, Units.coe_map, MonoidHom.coe_coe]
  rw [← CommRingCat.comp_apply, ← Functor.map_comp]
  rfl

end GlobalTheory.CharKer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyTrivialUnitCocycleScheme =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsCharacterUnitKernelAction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsCharacterUnitKernelAction", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCharacter\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Tactic.ENatToNat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsKernelActionTripleOverlap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelActionIsPullbackProdMapTorsorStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyTrivialUnitCocycleScheme\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

noncomputable section

namespace GlobalTheory.CharKer

theorem exists_nhds_charUnit : ∀ (S : Scheme.{0}) (A A' N T : Over S) [GrpObj A] [GrpObj A'] [GrpObj N] (i : N ⟶ A) (q : A ⟶ A') (χ : Γ((N ⊗ T).left, ⊤)ˣ), IsMonHom i → IsMonHom q → IsFinite q.left → Flat q.left → Surjective q.left → IsPullback i (toUnit N) q η[A'] → IsCharacter χ → ∀ y : (A' ⊗ T).left, ∃ V : (A' ⊗ T).left.Opens, y ∈ V ∧ ∃ e : Γ((A ⊗ T).left, (pmap q T).left ⁻¹ᵁ V)ˣ, ∀ (W : (A ⊗ (N ⊗ T)).left.Opens) (h₁ : W ≤ (actMap i T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ V)) (h₂ : W ≤ (prMap A N T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ V)), res h₁ (pullU (actMap i T).left _ e) = res le_top (pullTop (snd A (N ⊗ T)).left χ) * res h₂ (pullU (prMap A N T).left _ e) := by
  intro S A A' N T _ _ _ i q χ hi hq hfin hflat hsurj hk hχ y
  have hpb := GlobalTheory.T.kernelAction_isPullback_prodMap_torsor S A A' N T i q hi hq hk
  have hpb' : IsPullback (prMap A N T).left (actMap i T).left (pmap q T).left (pmap q T).left :=
    hpb.map (Over.forget S)
  obtain ⟨W, m₁₂, m₂₃, m₁₃, h1, h2, h3, h4⟩ := _root_.GlobalTheory.CharKer.triOverlap S A N T i χ hi hχ
  have hpq : pmap q T = q ▷ T := by
    apply CartesianMonoidalCategory.hom_ext <;> simp [pmap]
  have hsq := GlobalTheory.SemiRigid.isPullback_whiskerRight q T
  have hA : IsAffineHom (pmap q T).left := by
    rw [hpq]; exact MorphismProperty.of_isPullback hsq inferInstance
  have hF : Flat (pmap q T).left := by
    rw [hpq]; exact MorphismProperty.of_isPullback hsq inferInstance
  have hS : Surjective (pmap q T).left := by
    rw [hpq]; exact MorphismProperty.of_isPullback hsq inferInstance
  exact _root_.GlobalTheory.CharKer.exists_local_charUnit _ _ _ _ (pmap q T).left (actMap i T).left (prMap A N T).left m₁₂ m₂₃ m₁₃ _
    hA hF hS hpb' h1 h2 h3 h4 y

end GlobalTheory.CharKer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsCharacterUnitKernelAction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescendedLineBundleEquivariantGenerator =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescendedLineBundleEquivariantGenerator", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCharacter\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Tactic.ENatToNat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNhdsCharacterUnitKernelAction\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelActionIsPullbackProdMapTorsorStatement\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsAppTopEqOfEffectiveEpi\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFlat\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

noncomputable section
namespace GlobalTheory.CharKer

theorem pmap_eq_whiskerRight {S : Scheme.{0}} {A A' : Over S} (q : A ⟶ A') (T : Over S) : pmap q T = q ▷ T := by
  apply CartesianMonoidalCategory.hom_ext <;> simp [pmap]

theorem isPullback_over_left {S : Scheme.{0}} {P X Y Z : Over S} {f : P ⟶ X} {g : P ⟶ Y} {h : X ⟶ Z} {k : Y ⟶ Z}
    (H : IsPullback f g h k) : IsPullback f.left g.left h.left k.left :=
  H.map (Over.forget S)

theorem res_res_units {X : Scheme.{0}} {U V W : X.Opens} (h₁ : V ≤ U) (h₂ : W ≤ V) (x : Γ(X, U)ˣ) :
    res h₂ (res h₁ x) = res (h₂.trans h₁) x := by
  apply Units.ext
  change _ = (X.presheaf.map ((homOfLE h₁).op ≫ (homOfLE h₂).op)).hom x.val
  rw [Functor.map_comp, CommRingCat.hom_comp, RingHom.comp_apply]; rfl

theorem res_pullU_units {X Y : Scheme.{0}} (f : Y ⟶ X) {U V : X.Opens} (h : V ≤ U) (x : Γ(X, U)ˣ) :
    pullU f V (res h x) = res (f.preimage_mono h) (pullU f U x) := by
  apply Units.ext
  have := f.naturality (homOfLE h).op
  change (X.presheaf.map (homOfLE h).op ≫ f.app V).hom x.val = _
  rw [this]; rfl

theorem mul_mul_inv_mul_inv_cancel {G : Type*} [CommGroup G] (c x y : G) : (c * x) * (c * y)⁻¹ = x * y⁻¹ := by
  rw [← div_eq_mul_inv, ← div_eq_mul_inv, mul_div_mul_left_eq_div]

theorem exists_equivGen : ∀ (S : Scheme.{0}) (A A' N T : Over S) [GrpObj A] [GrpObj A'] [GrpObj N] (i : N ⟶ A) (q : A ⟶ A') (χ : Γ((N ⊗ T).left, ⊤)ˣ), IsMonHom i → IsMonHom q → IsFinite q.left → Flat q.left → Surjective q.left → IsPullback i (toUnit N) q η[A'] → IsCharacter χ → ∃ (M : LB (A' ⊗ T).left) (e : ∀ k, Γ((A ⊗ T).left, (pmap q T).left ⁻¹ᵁ M.U k)ˣ), M.IsLB ∧ IsEquivGen i q χ M e := by
  intro S A A' N T _ _ _ i q χ hi hq hfin hflat hsurj hker hχ
  have hloc := _root_.GlobalTheory.CharKer.exists_nhds_charUnit S A A' N T i q χ hi hq hfin hflat hsurj hker hχ
  have : Flat (pmap q T).left := by rw [pmap_eq_whiskerRight]; infer_instance
  have : Surjective (pmap q T).left := by rw [pmap_eq_whiskerRight]; infer_instance
  have : QuasiCompact (pmap q T).left := by rw [pmap_eq_whiskerRight]; infer_instance
  have hpb : IsPullback (prMap A N T).left (actMap i T).left (pmap q T).left (pmap q T).left :=
    isPullback_over_left (GlobalTheory.T.kernelAction_isPullback_prodMap_torsor S A A' N T i q hi hq hker)
  have hw : ∀ z, (pmap q T).left ((actMap i T).left z) = (pmap q T).left ((prMap A N T).left z) := fun z => by
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, hpb.w]
  have inj : ∀ U : (A' ⊗ T).left.Opens, Function.Injective (pullU (pmap q T).left U) := fun U x y hxy =>
    Units.ext (ReciprocityTheory.ChartRestriction.G.DVR.TG.app_injective_of_flat_surj (pmap q T).left U (congrArg Units.val hxy))
  have desc : ∀ (U : (A' ⊗ T).left.Opens) (u : Γ((A ⊗ T).left, (pmap q T).left ⁻¹ᵁ U)ˣ),
      (∀ (W : (A ⊗ (N ⊗ T)).left.Opens) (h₁ : W ≤ (actMap i T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ U))
        (h₂ : W ≤ (prMap A N T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ U)),
        res h₁ (pullU (actMap i T).left _ u) = res h₂ (pullU (prMap A N T).left _ u)) →
      ∃ g : Γ((A' ⊗ T).left, U)ˣ, pullU (pmap q T).left U g = u := by
    intro U u hu
    have hg : (prMap A N T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ U) ≤ (actMap i T).left ⁻¹ᵁ ((pmap q T).left ⁻¹ᵁ U) :=
      fun z hz => show (pmap q T).left ((actMap i T).left z) ∈ U from (hw z) ▸ hz
    have key := GlobalTheory.FlatDescent.existsUnique_app_eq_iff (pmap q T).left hpb U _ rfl le_rfl hg u.val
    obtain ⟨a, ha, -⟩ := key.2 (congrArg Units.val (hu _ hg le_rfl)).symm
    obtain ⟨a, rfl⟩ := (GlobalTheory.FlatDescent.isUnit_app_iff (pmap q T).left U a).1 (ha ▸ u.isUnit)
    exact ⟨a, Units.ext ha⟩
  choose V hyV e he using hloc
  have hu : ∀ k l, ∃ g : Γ((A' ⊗ T).left, V k ⊓ V l)ˣ, pullU (pmap q T).left _ g =
      res ((pmap q T).left.preimage_mono inf_le_left) (e k) *
        (res ((pmap q T).left.preimage_mono inf_le_right) (e l))⁻¹ := fun k l => desc _ _ (by
    intro W h₁ h₂
    simp only [map_mul, map_inv, res_pullU_units, res_res_units]
    rw [he k W _ (h₂.trans ((prMap A N T).left.preimage_mono ((pmap q T).left.preimage_mono inf_le_left))),
      he l W _ (h₂.trans ((prMap A N T).left.preimage_mono ((pmap q T).left.preimage_mono inf_le_right))),
      mul_mul_inv_mul_inv_cancel])
  choose g hg using hu
  refine ⟨⟨(A' ⊗ T).left, V, g⟩, e, ⟨?_, ?_, ?_⟩, ?_, fun k W h₁ h₂ => he k W h₁ h₂⟩
  · exact eq_top_iff.2 fun y _ => TopologicalSpace.Opens.mem_iSup.2 ⟨y, hyV y⟩
  · intro k
    apply inj
    simp only [res_pullU_units, hg, map_one, mul_inv_cancel]
  · intro a b c
    apply inj
    simp only [res_pullU_units, hg, map_mul, map_inv, res_res_units, _root_.mul_assoc, inv_mul_cancel_left]
  · intro k l W h₁ h₂ h₃
    simp only [hg, map_mul, map_inv, res_res_units, _root_.mul_assoc, inv_mul_cancel, _root_.mul_one]

end GlobalTheory.CharKer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescendedLineBundleEquivariantGenerator =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialAdditiveFamilyKilledByIsogeny =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialAdditiveFamilyKilledByIsogeny", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCharacter\npublic import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CechTrivialPullbackOfIsPullbackGenerator\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterEqOneOfDescendedLineBundleTrivial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharacterLineBundleAdditiveOfEquivariantGenerato\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescendedLineBundleEquivariantGenerator\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialCharacterFiniteCommGroup\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsLiftOfRangeSubset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CharKer

noncomputable section

namespace GlobalTheory.CharKer

theorem exists_nontriv_family : ∀ (K : Type) [Field K] [IsAlgClosed K] (A A' N : Over (Sp K)) [GrpObj A] [GrpObj A'] [GrpObj N] (i : N ⟶ A) (q : A ⟶ A'), IsAbelianScheme A → IsAbelianScheme A' → IsMonHom i → IsMonHom q → IsFinite N.hom → IsFinite q.left → Flat q.left → Surjective q.left → IsPullback i (toUnit N) q η[A'] → i ≠ 1 → ∃ (T : Over (Sp K)) (M : LB (A' ⊗ T).left), M.IsLB ∧ IsAdditive M ∧ Triv (ev M (fst A T ≫ q) (snd A T)) ∧ ¬ Triv M := by
  intro K _ _ A A' N _ _ _ i q hA hA' hi hq hNf hqf hqfl hqs hker hi1
  have hmono : Mono i := hker.mono_fst_of_mono
  have hcomm : IsCommMonObj A := hA.comm
  have : IsCommMonObj N := AbelianSubgroupFinite.isCommMonObj_of_mono i
  have hN1 : 𝟙 N ≠ (1 : N ⟶ N) := by
    intro h
    apply hi1
    rw [← Category.id_comp i, h, MonObj.one_comp]
  obtain ⟨T, χ, hχ, hne⟩ := _root_.GlobalTheory.CharExists.exists_character_ne_one K N hNf hN1
  obtain ⟨M, e, hM, he⟩ := _root_.GlobalTheory.CharKer.exists_equivGen _ A A' N T i q χ hi hq hqf hqfl hqs hker hχ
  exact ⟨T, M, hM, _root_.GlobalTheory.CharKer.isAdditive_of_isEquivGen K A A' N T i q χ M e hA hA' hi hq hqf hqfl hqs hker hχ hM he,
    _root_.GlobalTheory.CharKer.triv_pull_of_isPullGen _ _ _ M e he.1, fun h => hne (_root_.GlobalTheory.CharKer.character_eq_one_of_triv K A A' N T i q χ M e hA hq hker hM he h)⟩

end GlobalTheory.CharKer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialAdditiveFamilyKilledByIsogeny =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialAdditiveFamilyKilledByIsogenyStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialAdditiveFamilyKilledByIsogenyStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialAdditiveFamilyKilledByIsogeny\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNontrivialAdditiveFamilyKilledByIsogenyStatement =====
