module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfIsPullback
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpensPreimageEqOfSqZeroAugmentation
public import Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish
public import Development.AbelianVarietyTheory.Definitions.Divisors.ComparisonMemCechHodgeFiltration
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommaDescentInjectiveStatement
public import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommaDescentRestrictionEquiv
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueCommaOfBasis
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLocOAff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneCocycleCoboundaryCommaLocalBasis
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepOfFactoringCover
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VanishingH1InvertingMorphisms
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoCocycleCoboundaryOfBasisFunctor
public import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAbelianSchemeBaseChangeAndSquareStatement
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
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Development.AbelianVarietyTheory.Definitions.Divisors.SurjectiveOfIsPullbackSqZero

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseChangeSectionsComparisonHomBijective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpensPreimageEqOfSqZeroAugmentationStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictStructureSheafAffineBasisPull2Bijective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictStructureSheafAffineBasisPull2BijectiveStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.H2StructureBaseChangeExtension, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtension, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtensionStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseChangeSectionsComparisonHomBijective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseChangeSectionsComparisonHomBijective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfIsPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.LiftSys GlobalTheory.Obs
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Obs.BaseChg

theorem beta_bijective : ∀ (R₀ R₁ : Type) [CommRing R₀] [CommRing R₁] [Algebra R₀ R₁] (X₀ X₁ : Scheme.{0})
    (s₀ : X₀ ⟶ Sp R₀) (s₁ : X₁ ⟶ Sp R₁) (pr : X₁ ⟶ X₀)
    (hp : IsPullback pr s₁ s₀ (spMap (algebraMap R₀ R₁))) (U : X₀.affineOpens),
    Function.Bijective (GlobalTheory.Obs.BaseChg.beta hp U) := by
  intro R₀ R₁ _ _ _ X₀ X₁ s₀ s₁ pr hp U
  have po := (isIso_pushoutSection_iff hp (US := ⊤) (UT := ⊤) (UX := U.1) (UY := pr ⁻¹ᵁ U.1) le_top le_top
    (by simp)).mp (isIso_pushoutSection_of_isAffineOpen hp _ _ _ (isAffineOpen_top _) (isAffineOpen_top _) U.2)
  have po' : IsPushout (CommRingCat.ofHom (algebraMap R₀ R₁)) (CommRingCat.ofHom (algebraMap R₀ (Sec s₀ U.1)))
      (CommRingCat.ofHom (algebraMap R₁ (Sec s₁ (pr ⁻¹ᵁ U.1)))) (pr.appLE U.1 (pr ⁻¹ᵁ U.1) le_rfl) := by
    refine po.flip.of_iso (Scheme.ΓSpecIso (CommRingCat.of R₀)) (Scheme.ΓSpecIso (CommRingCat.of R₁))
      (Iso.refl (CommRingCat.of (Sec s₀ U.1))) (Iso.refl (CommRingCat.of (Sec s₁ (pr ⁻¹ᵁ U.1)))) ?_ ?_ ?_ ?_
    · rw [← Scheme.ΓSpecIso_naturality, Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE]
      rfl
    · ext r
      change (s₀.appLE ⊤ U.1 le_top).hom r = (s₀.appLE ⊤ U.1 le_top).hom
        ((Scheme.ΓSpecIso (CommRingCat.of R₀)).inv.hom ((Scheme.ΓSpecIso (CommRingCat.of R₀)).hom.hom r))
      congr 1
      simp
    · ext r
      change (s₁.appLE ⊤ (pr ⁻¹ᵁ U.1) _).hom r = (s₁.appLE ⊤ (pr ⁻¹ᵁ U.1) le_top).hom
        ((Scheme.ΓSpecIso (CommRingCat.of R₁)).inv.hom ((Scheme.ΓSpecIso (CommRingCat.of R₁)).hom.hom r))
      congr 1
      simp
    · rfl
  have h1 := CommRingCat.isPushout_tensorProduct R₀ R₁ (Sec s₀ U.1)
  let e := h1.isoIsPushout _ _ po'
  have he : e.hom = CommRingCat.ofHom (beta hp U) := by
    refine h1.hom_ext ?_ ?_
    · refine (h1.inl_isoIsPushout_hom _ _ po').trans ?_
      ext r
      change algebraMap R₁ _ r = beta hp U (r ⊗ₜ 1)
      rw [beta_tmul, map_one, _root_.mul_one]
    · refine (h1.inr_isoIsPushout_hom _ _ po').trans ?_
      ext b
      change (pr.appLE U.1 (pr ⁻¹ᵁ U.1) le_rfl).hom b = beta hp U (1 ⊗ₜ b)
      refine Eq.trans ?_ (beta_tmul hp U 1 b).symm
      rw [map_one, _root_.one_mul]
      rfl
  have hb := ConcreteCategory.bijective_of_isIso e.hom
  rw [he] at hb
  exact hb

end GlobalTheory.Obs.BaseChg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseChangeSectionsComparisonHomBijective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpensPreimageEqOfSqZeroAugmentationStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpensPreimageEqOfSqZeroAugmentationStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpensPreimageEqOfSqZeroAugmentation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.LiftSys GlobalTheory.Obs
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpensPreimageEqOfSqZeroAugmentationStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictStructureSheafAffineBasisPull2Bijective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictStructureSheafAffineBasisPull2Bijective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ComparisonMemCechHodgeFiltration\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommaDescentInjectiveStatement\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.CommAlgFunctorCoboundaryZeroMemCocyclesOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CommaDescentRestrictionEquiv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueCommaOfBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasLocOAff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneCocycleCoboundaryCommaLocalBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SepOfFactoringCover\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VanishingH1InvertingMorphisms\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoCocycleCoboundaryOfBasisFunctor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SurjectiveOfIsPullbackSqZero\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.LiftSys GlobalTheory.Obs
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.AbCoh

theorem restrict_pull2_bijective_of_basis (R : Type) [CommRing R] (X : Scheme.{0}) (s : X ⟶ Sp R)
    (C' : Type) [Category.{0} C'] [Quiver.IsThin C'] (G : C' ⥤ AffOp X)
    (h1 : ∀ (x : X) (U : X.Opens), x ∈ U → ∃ t : C', x ∈ (G.obj t).unop.1 ∧ (G.obj t).unop.1 ≤ U)
    (h2 : ∀ (t₁ t₂ : C') (x : X) (U : X.Opens), x ∈ U → x ∈ (G.obj t₁).unop.1 →
      x ∈ (G.obj t₂).unop.1 → ∃ t₃ : C', Nonempty (t₁ ⟶ t₃) ∧ Nonempty (t₂ ⟶ t₃) ∧
        x ∈ (G.obj t₃).unop.1 ∧ (G.obj t₃).unop.1 ≤ U) :
    Function.Bijective (CoefMap.restrict (OAff s) G).pull2 := by
  have hcov : ∀ T : AffOp X, ∃ (n : ℕ) (b : Fin n → (OAff s).obj T),
      Ideal.span (Set.range b) = ⊤ ∧ ∀ (i : Fin n) (S : AffOp X) (u : T ⟶ S),
        IsUnit (mp (OAff s) u (b i)) →
          ∃ (t : C') (v : T ⟶ G.obj t) (w : G.obj t ⟶ S), v ≫ w = u := by
    intro T
    have hT : IsAffineOpen T.unop.1 := T.unop.2
    let B : Set Γ(X, T.unop.1) :=
      {f | ∃ t : C', X.basicOpen f ≤ (G.obj t).unop.1 ∧ (G.obj t).unop.1 ≤ T.unop.1}
    have hB : Ideal.span B = ⊤ := by
      rw [← hT.self_le_iSup_basicOpen_iff]
      intro x hx
      obtain ⟨t, hxt, htT⟩ := h1 x T.unop.1 hx
      obtain ⟨f, hf, hxf⟩ := hT.exists_basicOpen_le (V := (G.obj t).unop.1) ⟨x, hxt⟩ hx
      exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨f, ⟨t, hf, htT⟩⟩, hxf⟩
    obtain ⟨F, hFB, hF⟩ := (Ideal.span_eq_top_iff_finite B).1 hB
    refine ⟨F.card, fun i ↦ (F.equivFin.symm i).1, ?_, ?_⟩
    · have hsp : Ideal.span (Set.range fun i ↦ ((F.equivFin.symm i).1 : Γ(X, T.unop.1))) = ⊤ := by
        rw [eq_top_iff, ← hF]
        exact Ideal.span_mono fun x hx ↦ ⟨F.equivFin ⟨x, hx⟩, by simp⟩
      exact hsp
    · intro i S u hu
      obtain ⟨t, hft, htT⟩ := hFB (F.equivFin.symm i).2
      set f : Γ(X, T.unop.1) := (F.equivFin.symm i).1
      change IsUnit (X.presheaf.map (homOfLE (show S.unop.1 ≤ T.unop.1 from leOfHom u.unop)).op f) at hu
      have hSf : S.unop.1 ≤ X.basicOpen f := by
        have := Scheme.basicOpen_of_isUnit X hu
        rw [Scheme.basicOpen_res] at this
        rw [← this]; exact inf_le_right
      refine ⟨t, (homOfLE (show (G.obj t).unop ≤ T.unop from htT)).op,
        (homOfLE (show S.unop ≤ (G.obj t).unop from hSf.trans hft)).op, ?_⟩
      exact Quiver.Hom.unop_inj (Subsingleton.elim _ _)
  have hdir : ∀ (t₁ t₂ : C') (S : AffOp X), (G.obj t₁ ⟶ S) → (G.obj t₂ ⟶ S) →
      ∃ (n : ℕ) (b : Fin n → (OAff s).obj S), Ideal.span (Set.range b) = ⊤ ∧
        ∀ (i : Fin n) (S' : AffOp X) (u : S ⟶ S'), IsUnit (mp (OAff s) u (b i)) →
          ∃ t₃, Nonempty (t₁ ⟶ t₃) ∧ Nonempty (t₂ ⟶ t₃) ∧ Nonempty (G.obj t₃ ⟶ S') := by
    intro t₁ t₂ S a₁ a₂
    have hS : IsAffineOpen S.unop.1 := S.unop.2
    have hS₁ : S.unop.1 ≤ (G.obj t₁).unop.1 := leOfHom a₁.unop
    have hS₂ : S.unop.1 ≤ (G.obj t₂).unop.1 := leOfHom a₂.unop
    let B : Set Γ(X, S.unop.1) :=
      {g | ∃ t₃ : C', Nonempty (t₁ ⟶ t₃) ∧ Nonempty (t₂ ⟶ t₃) ∧ X.basicOpen g ≤ (G.obj t₃).unop.1}
    have hB : Ideal.span B = ⊤ := by
      rw [← hS.self_le_iSup_basicOpen_iff]
      intro x hx
      obtain ⟨t₃, e₁, e₂, hxt, -⟩ := h2 t₁ t₂ x S.unop.1 hx (hS₁ hx) (hS₂ hx)
      obtain ⟨g, hg, hxg⟩ := hS.exists_basicOpen_le (V := (G.obj t₃).unop.1) ⟨x, hxt⟩ hx
      exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨g, ⟨t₃, e₁, e₂, hg⟩⟩, hxg⟩
    obtain ⟨F, hFB, hF⟩ := (Ideal.span_eq_top_iff_finite B).1 hB
    refine ⟨F.card, fun i ↦ (F.equivFin.symm i).1, ?_, ?_⟩
    · have hsp : Ideal.span (Set.range fun i ↦ ((F.equivFin.symm i).1 : Γ(X, S.unop.1))) = ⊤ := by
        rw [eq_top_iff, ← hF]
        exact Ideal.span_mono fun x hx ↦ ⟨F.equivFin ⟨x, hx⟩, by simp⟩
      exact hsp
    · intro i S' u hu
      obtain ⟨t₃, e₁, e₂, hgt⟩ := hFB (F.equivFin.symm i).2
      set g : Γ(X, S.unop.1) := (F.equivFin.symm i).1
      change IsUnit (X.presheaf.map (homOfLE (show S'.unop.1 ≤ S.unop.1 from leOfHom u.unop)).op g) at hu
      have hS'g : S'.unop.1 ≤ X.basicOpen g := by
        have := Scheme.basicOpen_of_isUnit X hu
        rw [Scheme.basicOpen_res] at this
        rw [← this]; exact inf_le_right
      exact ⟨t₃, e₁, e₂, ⟨(homOfLE (show S'.unop ≤ (G.obj t₃).unop from hS'g.trans hgt)).op⟩⟩
  have H := _root_.GlobalTheory.CechDR.hasLoc_OAff s
  have hs := _root_.GlobalTheory.sep_of_factoring_cover (OAff s) G H hcov
  have hg := _root_.GlobalTheory.CatCoh.Desc.glue_comma_of_basis (OAff s) G H hcov hdir
  have hv := _root_.GlobalTheory.CatCoh.Desc.Basis.oneCocycle_vanishing_comma_of_basis (OAff s) G H hcov hdir
  have hv2 := _root_.GlobalTheory.CatCoh.Desc.VandermondeTwoBasis.twoCocycle_coboundary_of_basisFunctor_alt (OAff s) G H hcov hdir
  exact ⟨GlobalTheory.T.comma_descent_injective _ _ hs hg hv, _root_.GlobalTheory.CatCoh.Desc.pull2_surjective_of_comma _ _ hs hg hv hv2⟩

end GlobalTheory.AbCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictStructureSheafAffineBasisPull2Bijective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictStructureSheafAffineBasisPull2BijectiveStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictStructureSheafAffineBasisPull2BijectiveStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ComparisonMemCechHodgeFiltration\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictStructureSheafAffineBasisPull2Bijective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SurjectiveOfIsPullbackSqZero\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.LiftSys GlobalTheory.Obs
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictStructureSheafAffineBasisPull2BijectiveStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.H2StructureBaseChangeExtension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.H2StructureBaseChangeExtension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.AxesVanishingStructureSheafDegOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineHomOfIsPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseChangeSectionsComparisonHomBijective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpensPreimageEqOfSqZeroAugmentationStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RestrictStructureSheafAffineBasisPull2BijectiveStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.LiftSys GlobalTheory.Obs
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

open GlobalTheory.Obs.BaseChg in
theorem GlobalTheory.Obs.extCoef_two_equiv : ∀ (R₀ R₁ : Type) [CommRing R₀] [CommRing R₁] [Algebra R₀ R₁] (q : R₁ →ₐ[R₀] R₀) (hq : ∀ y y', q y = 0 → q y' = 0 → y * y' = 0), ∃ e : ∀ (X₀ X₁ : Scheme.{0}) (s₀ : X₀ ⟶ Sp R₀) (s₁ : X₁ ⟶ Sp R₁) (pr : X₁ ⟶ X₀), IsPullback pr s₁ s₀ (spMap (algebraMap R₀ R₁)) → (GlobalTheory.CatCoh.H2 (OAff s₁) ≃+ GlobalTheory.CatCoh.H2 (ext R₁ (OAff s₀))), ∀ (X₀ X₁ : Scheme.{0}) (s₀ : X₀ ⟶ Sp R₀) (s₁ : X₁ ⟶ Sp R₁) (pr : X₁ ⟶ X₀) (hp : IsPullback pr s₁ s₀ (spMap (algebraMap R₀ R₁))) (Y₀ Y₁ : Scheme.{0}) (t₀ : Y₀ ⟶ Sp R₀) (t₁ : Y₁ ⟶ Sp R₁) (pr' : Y₁ ⟶ Y₀) (hp' : IsPullback pr' t₁ t₀ (spMap (algebraMap R₀ R₁))) (f₀ : Y₀ ⟶ X₀) (f₁ : Y₁ ⟶ X₁) (h₀ : f₀ ≫ s₀ = t₀ ≫ spMap (RingHom.id R₀)) (h₁ : f₁ ≫ s₁ = t₁ ≫ spMap (RingHom.id R₁)), f₁ ≫ pr = pr' ≫ f₀ → ∀ c c', IsExtendedPullbackDegTwo R₁ h₀ (e X₀ X₁ s₀ s₁ pr hp c) (e Y₀ Y₁ t₀ t₁ pr' hp' c') → IsPullbackH2Structure h₁ c c' := by
  intro R₀ R₁ _ _ _ q hq
  have hres : ∀ {X₀ X₁ : Scheme.{0}} {s₀ : X₀ ⟶ Sp R₀} {s₁ : X₁ ⟶ Sp R₁} {pr : X₁ ⟶ X₀}
      (hp : IsPullback pr s₁ s₀ (spMap (algebraMap R₀ R₁))),
      Function.Bijective (CoefMap.restrict (OAff s₁) (preF hp)).pull2 := fun {X₀ X₁ s₀ s₁ pr} hp ↦
    _root_.GlobalTheory.AbCoh.restrict_pull2_bijective_of_basis R₁ X₁ s₁ _ (preF hp) (preF_cover hp (_root_.GlobalTheory.LiftSys.exists_opens_preimage_eq_of_sqZero_aug R₀ R₁ q hq X₀ X₁ s₀ s₁ pr hp))
      (preF_dir hp (_root_.GlobalTheory.LiftSys.exists_opens_preimage_eq_of_sqZero_aug R₀ R₁ q hq X₀ X₁ s₀ s₁ pr hp))
  have hfwd : ∀ {X₀ X₁ : Scheme.{0}} {s₀ : X₀ ⟶ Sp R₀} {s₁ : X₁ ⟶ Sp R₁} {pr : X₁ ⟶ X₀}
      (hp : IsPullback pr s₁ s₀ (spMap (algebraMap R₀ R₁))), Function.Bijective (fwd hp).pull2 :=
    fun {X₀ X₁ s₀ s₁ pr} hp ↦ ofNat_pull2_bijective _ _ _ (fun U ↦ _root_.GlobalTheory.Obs.BaseChg.beta_bijective R₀ R₁ X₀ X₁ s₀ s₁ pr hp U.unop)
  refine ⟨fun X₀ X₁ s₀ s₁ pr hp ↦
    (AddEquiv.ofBijective (CoefMap.restrict (OAff s₁) (preF hp)).pull2.toAddMonoidHom (hres hp)).trans
      (AddEquiv.ofBijective (fwd hp).pull2.toAddMonoidHom (hfwd hp)).symm, ?_⟩
  intro X₀ X₁ s₀ s₁ pr hp Y₀ Y₁ t₀ t₁ pr' hp' f₀ f₁ h₀ h₁ hf c c' hE
  set d := ((AddEquiv.ofBijective (CoefMap.restrict (OAff s₁) (preF hp)).pull2.toAddMonoidHom (hres hp)).trans
      (AddEquiv.ofBijective (fwd hp).pull2.toAddMonoidHom (hfwd hp)).symm) c with hd0
  set d' := ((AddEquiv.ofBijective (CoefMap.restrict (OAff t₁) (preF hp')).pull2.toAddMonoidHom (hres hp')).trans
      (AddEquiv.ofBijective (fwd hp').pull2.toAddMonoidHom (hfwd hp')).symm) c' with hd0'
  have hd : (fwd hp).pull2 d = (CoefMap.restrict (OAff s₁) (preF hp)).pull2 c :=
    (AddEquiv.ofBijective (fwd hp).pull2.toAddMonoidHom (hfwd hp)).apply_symm_apply _
  have hd' : (fwd hp').pull2 d' = (CoefMap.restrict (OAff t₁) (preF hp')).pull2 c' :=
    (AddEquiv.ofBijective (fwd hp').pull2.toAddMonoidHom (hfwd hp')).apply_symm_apply _
  clear_value d d'
  have A : (CoefMap.restrict (OPair f₁ t₁) (preFP hp hp' hf)).pull2 ((pairPull h₁).pull2 c) =
      (kMap hp hp' hf).pull2 ((extMap R₁ (pairPull h₀)).pull2 d) := by
    rw [← CoefMap.pullCohomologyTwo_comp, ← CoefMap.pullCohomologyTwo_comp]
    rw [CoefMap.pullCohomologyTwo_eq_of_natTrans ((pairPull h₁).comp (CoefMap.restrict (OPair f₁ t₁) (preFP hp hp' hf)))
      ((CoefMap.restrict (OAff s₁) (preF hp)).comp (zMap hp hp' hf h₁)) { app := fun p ↦ 𝟙 _ }
      (fun p b ↦ by erw [mp_id]; rfl) c]
    rw [CoefMap.pullCohomologyTwo_comp, ← hd, ← CoefMap.pullCohomologyTwo_comp]
    refine CoefMap.pullCohomologyTwo_eq_of_natTrans ((fwd hp).comp (zMap hp hp' hf h₁))
      ((extMap R₁ (pairPull h₀)).comp (kMap hp hp' hf)) { app := fun p ↦ 𝟙 _ } (fun p b ↦ ?_) d
    erw [mp_id]
    change beta hp' p.unop.1.1 (extHom R₁ (coefHom (pairPull h₀) p) b) =
      GlobalTheory.CechDR.secPull s₁ t₁ (preP hp hp' hf p.unop) (beta hp p.unop.1.2 b)
    revert b
    change ∀ b : R₁ ⊗[R₀] Sec s₀ p.unop.1.2.1, _
    intro b
    induction b using TensorProduct.induction_on with
    | zero =>
      exact ((congrArg _ (map_zero _)).trans (map_zero _)).trans ((congrArg _ (map_zero _)).trans (map_zero _)).symm
    | tmul r a =>
      change beta hp' p.unop.1.1 (r ⊗ₜ[R₀] (coefHom (pairPull h₀) p a)) = _
      rw [beta_tmul hp p.unop.1.2 r a]
      erw [beta_tmul hp' p.unop.1.1 r]
      rw [map_mul]
      have hr : GlobalTheory.CechDR.secPull s₁ t₁ (preP hp hp' hf p.unop) (algebraMap R₁ _ r) = algebraMap R₁ _ r := by
        have := semiHom_secPull h₁ (preP hp hp' hf p.unop) r 1
        rw [map_one, RingHom.id_apply, ← Algebra.algebraMap_eq_smul_one, ← Algebra.algebraMap_eq_smul_one] at this
        exact this
      have e1 := congrArg (fun φ ↦ φ.hom a) (Scheme.Hom.appLE_comp_appLE pr' f₀ p.unop.1.2.1 p.unop.1.1.1
        (pr' ⁻¹ᵁ p.unop.1.1.1) p.unop.2 le_rfl)
      have e2 := congrArg (fun φ ↦ φ.hom a) (Scheme.Hom.appLE_comp_appLE f₁ pr p.unop.1.2.1
        (pr ⁻¹ᵁ p.unop.1.2.1) (pr' ⁻¹ᵁ p.unop.1.1.1) le_rfl (preP hp hp' hf p.unop).2)
      have key : ∀ (g g' : Y₁ ⟶ X₀) (_ : g = g') (e e'),
          (g.appLE p.unop.1.2.1 (pr' ⁻¹ᵁ p.unop.1.1.1) e).hom a = (g'.appLE p.unop.1.2.1 (pr' ⁻¹ᵁ p.unop.1.1.1) e').hom a := by
        rintro g _ rfl _ _; rfl
      rw [hr]
      congr 1
      exact e1.trans ((key _ _ hf.symm _ _).trans e2.symm)
    | add x y hx hy =>
      exact ((congrArg _ (map_add _ x y)).trans ((map_add _ _ _).trans (congrArg₂ (· + ·) hx hy))).trans
        ((congrArg _ (map_add _ x y)).trans (map_add _ _ _)).symm
  have B : (CoefMap.restrict (OPair f₁ t₁) (preFP hp hp' hf)).pull2 ((pairRes f₁ t₁).pull2 c') =
      (kMap hp hp' hf).pull2 ((extMap R₁ (pairRes f₀ t₀)).pull2 d') := by
    rw [← CoefMap.pullCohomologyTwo_comp, ← CoefMap.pullCohomologyTwo_comp]
    rw [CoefMap.pullCohomologyTwo_eq_of_natTrans ((pairRes f₁ t₁).comp (CoefMap.restrict (OPair f₁ t₁) (preFP hp hp' hf)))
      ((CoefMap.restrict (OAff t₁) (preF hp')).comp (zRes hp hp' hf)) { app := fun p ↦ 𝟙 _ }
      (fun p b ↦ by erw [mp_id]; rfl) c']
    rw [CoefMap.pullCohomologyTwo_comp, ← hd', ← CoefMap.pullCohomologyTwo_comp]
    refine CoefMap.pullCohomologyTwo_eq_of_natTrans ((fwd hp').comp (zRes hp hp' hf))
      ((extMap R₁ (pairRes f₀ t₀)).comp (kMap hp hp' hf)) { app := fun p ↦ 𝟙 _ } (fun p b ↦ ?_) d'
    erw [mp_id]
    change beta hp' p.unop.1.1 (extHom R₁ (coefHom (pairRes f₀ t₀) p) b) = beta hp' p.unop.1.1 b
    congr 1
    revert b
    change ∀ b : R₁ ⊗[R₀] Sec t₀ p.unop.1.1.1, _
    intro b
    induction b using TensorProduct.induction_on with
    | zero => exact map_zero _
    | tmul r a => rfl
    | add x y hx hy => exact (map_add _ x y).trans (congrArg₂ (· + ·) hx hy)
  have hinj : Function.Injective (CoefMap.restrict (OPair f₁ t₁) (preFP hp hp' hf)).pull2 := by
    intro x y hxy
    obtain ⟨x0, rfl⟩ := (GlobalTheory.AbCoh.pairRes_pull2_bijective f₁ t₁).2 x
    obtain ⟨y0, rfl⟩ := (GlobalTheory.AbCoh.pairRes_pull2_bijective f₁ t₁).2 y
    have key : ∀ z, (CoefMap.restrict (OPair f₁ t₁) (preFP hp hp' hf)).pull2 ((pairRes f₁ t₁).pull2 z) =
        (CoefMap.restrict (OAff t₁) (preFP hp hp' hf ⋙ pairFst f₁)).pull2 z := fun z ↦ by
      rw [← CoefMap.pullCohomologyTwo_comp]
      exact CoefMap.pullCohomologyTwo_eq_of_natTrans _ _ { app := fun p ↦ 𝟙 _ } (fun p b ↦ mp_id _ _ b) z
    rw [key, key] at hxy
    have hW' := _root_.GlobalTheory.LiftSys.exists_opens_preimage_eq_of_sqZero_aug R₀ R₁ q hq Y₀ Y₁ t₀ t₁ pr' hp'
    rw [(_root_.GlobalTheory.AbCoh.restrict_pull2_bijective_of_basis R₁ Y₁ t₁ _ (preFP hp hp' hf ⋙ pairFst f₁) (preFP_cover hp hp' hf hW')
      (preFP_directed hp hp' hf hW')).1 hxy]
  apply hinj
  rw [A, B]
  exact congrArg _ hE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.H2StructureBaseChangeExtension =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAbelianSchemeBaseChangeAndSquareStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.H2StructureBaseChangeExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.LiftSys GlobalTheory.Obs
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Obs

theorem primE2_of_primO2 (hO : PrimitiveStructureSheafDegTwoVanish) : PrimitiveExtendedDegTwoVanish := by
  intro R₀ R₁ _ _ _ q hq A _ g hA hsm c c₁ c₂ hμ h₁ h₂
  obtain ⟨B, _, pr, pr', hB, hBs, hp, hp', eμ, ef, es, -, -⟩ := _root_.GlobalTheory.AbBaseChangeSq.exists_baseChange_and_sq R₀ R₁ A g hA hsm
  obtain ⟨e, he⟩ := _root_.GlobalTheory.Obs.extCoef_two_equiv R₀ R₁ q hq
  set eX := e A.left B.left A.hom B.hom pr hp
  set eY := e (A ⊗ A).left (B ⊗ B).left (A ⊗ A).hom (B ⊗ B).hom pr' hp'
  have hc : c = eX (eX.symm c) := (eX.apply_symm_apply c).symm
  have hc₁ : c₁ = eY (eY.symm c₁) := (eY.apply_symm_apply c₁).symm
  have hc₂ : c₂ = eY (eY.symm c₂) := (eY.apply_symm_apply c₂).symm
  have hsum : c₁ + c₂ = eY (eY.symm c₁ + eY.symm c₂) := by rw [map_add (f := _), ← hc₁, ← hc₂]
  have hd : eX.symm c = 0 := by
    refine hO R₁ B g hB hBs (eX.symm c) (eY.symm c₁) (eY.symm c₂) ?_ ?_ ?_
    · refine he A.left B.left A.hom B.hom pr hp (A ⊗ A).left (B ⊗ B).left (A ⊗ A).hom (B ⊗ B).hom pr' hp'
        (μ[A]).left (μ[B]).left (overW μ[A]) (overW μ[B]) eμ _ _ ?_
      rw [← hc, ← hsum]; exact hμ
    · refine he A.left B.left A.hom B.hom pr hp (A ⊗ A).left (B ⊗ B).left (A ⊗ A).hom (B ⊗ B).hom pr' hp'
        (fst A A).left (fst B B).left (overW (fst A A)) (overW (fst B B)) ef _ _ ?_
      rw [← hc, ← hc₁]; exact h₁
    · refine he A.left B.left A.hom B.hom pr hp (A ⊗ A).left (B ⊗ B).left (A ⊗ A).hom (B ⊗ B).hom pr' hp'
        (snd A A).left (snd B B).left (overW (snd A A)) (overW (snd B B)) es _ _ ?_
      rw [← hc, ← hc₂]; exact h₂
  rw [hc, hd, map_zero]

end GlobalTheory.Obs
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtension =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtensionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtensionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PrimitiveStructureSheafDegTwoVanish\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry KaehlerDifferential MonoidalCategory CartesianMonoidalCategory MonObj
open scoped TensorProduct
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.CatCoh GlobalTheory.Cris GlobalTheory.CechDR GlobalTheory.LiftSys GlobalTheory.Obs
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.primitive_degree_two_extension : PrimitiveStructureSheafDegTwoVanish → PrimitiveExtendedDegTwoVanish := by
  first | exact @GlobalTheory.Obs.primE2_of_primO2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrimitiveDegreeTwoExtensionStatement =====
