module

public import Mathlib.AlgebraicGeometry.Morphisms.Proper
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.RingTheory.LaurentSeries
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.BijectiveRestrictPointsOfEtaleOfHenselian
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SplitTorusToAbelianVarietyConst
public import Mathlib.AlgebraicGeometry.ValuativeCriterion
public import Mathlib.AlgebraicGeometry.Morphisms.Separated
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsNoetherianModelOfSmooth
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsIsoAppTopOfIsAffine
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.OneTmulNeZeroOfDomain
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.PrecompleteBases.Torus2GammaBijective
import Aesop.Frontend.Tactic
import Aesop.Main
import Mathlib.Algebra.AffineMonoid.UniqueSums
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale
import Mathlib.AlgebraicGeometry.Sites.Fpqc
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.CategoryTheory.ExtremalEpi
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
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Lemma
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.PrecompleteBases.PsaRos
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import Mathlib.CategoryTheory.EffectiveEpi.Comp
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HomBaseChangeBijectiveOfLeNilradical

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.SplitTorusToAbelianVarietyConst\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.GlobalSectionsRankAlgClosed\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsNoetherianModelOfSmooth\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsIsoAppTopOfIsAffine\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.OneTmulNeZeroOfDomain\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.AlgebraicGeometry.Sites.Fpqc\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.EffectiveEpi.Comp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.PrecompleteBases.Torus2GammaBijective\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HomBaseChangeBijectiveOfLeNilradical\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Semi.Rosenlicht
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.SemiRigid

open SplitTorus

section Affine

variable {S : Scheme.{0}}

variable {R : CommRingCat.{0}} (X : Type) [AddCommGroup X] (t : Spec R ⟶ S)

variable [Module.Free ℤ X] [Module.Finite ℤ X] [IsDomain R]

end Affine

section Field

variable {K : Type} [Field K]

end Field

section Descent

variable {S : Scheme.{0}}

theorem exists_desc {G B Y : Over S} (p : G ⟶ B) [Flat p.left] [Surjective p.left]
    [QuasiCompact p.left] (f : G ⟶ Y)
    (H : ∀ (Z : Over S) (a b : Z ⟶ G), a ≫ p = b ≫ p → a ≫ f = b ≫ f) : ∃ g, p ≫ g = f := by
  have H' : ∀ {Z : Scheme.{0}} (a b : Z ⟶ G.left), a ≫ p.left = b ≫ p.left →
      a ≫ f.left = b ≫ f.left := fun {Z} a b h ↦
    congrArg (·.left) (H (Over.mk (a ≫ G.hom)) (Over.homMk a rfl) (Over.homMk b (by
      change b ≫ G.hom = a ≫ G.hom
      rw [← Over.w p, reassoc_of% h])) (Over.OverMorphism.ext h))
  have e := EffectiveEpi.fac p.left f.left H'
  refine ⟨Over.homMk (EffectiveEpi.desc p.left f.left H') ?_, Over.OverMorphism.ext e⟩
  rw [← cancel_epi p.left, reassoc_of% e, Over.w, Over.w]

theorem epi_of_fpqc {G B : Over S} (p : G ⟶ B) [Flat p.left] [Surjective p.left]
    [QuasiCompact p.left] : Epi p := Over.epi_of_epi_left p

theorem isPullback_whiskerRight {G B : Over S} (p : G ⟶ B) (W : Over S) :
    IsPullback (fst G W).left (p ▷ W).left p.left (fst B W).left := by
  refine IsPullback.of_bot ?_ (congrArg (·.left) (whiskerRight_fst p W).symm)
    (IsPullback.of_hasPullback B.hom W.hom)
  rw [show (p ▷ W).left ≫ pullback.snd B.hom W.hom = (snd G W).left from
    congrArg (·.left) (whiskerRight_snd p W), Over.w]
  exact IsPullback.of_hasPullback G.hom W.hom

instance {G B : Over S} (p : G ⟶ B) (W : Over S) [Flat p.left] : Flat (p ▷ W).left :=
  MorphismProperty.of_isPullback (isPullback_whiskerRight p W) ‹_›

instance {G B : Over S} (p : G ⟶ B) (W : Over S) [Surjective p.left] : Surjective (p ▷ W).left :=
  MorphismProperty.of_isPullback (isPullback_whiskerRight p W) ‹_›

instance {G B : Over S} (p : G ⟶ B) (W : Over S) [QuasiCompact p.left] :
    QuasiCompact (p ▷ W).left :=
  MorphismProperty.of_isPullback (isPullback_whiskerRight p W) ‹_›

theorem exists_eq_mul {T G B Z : Over S} [GrpObj G] [GrpObj B] {i : T ⟶ G} {q : G ⟶ B}
    [IsMonHom q] (hk : IsPullback i (toUnit _) q η[B]) {a b : Z ⟶ G} (h : a ≫ q = b ≫ q) :
    ∃ τ : Z ⟶ T, a = (τ ≫ i) * b :=
  ⟨hk.lift (a * b⁻¹) (toUnit _) (by
    rw [MonObj.mul_comp, GrpObj.inv_comp, h, mul_inv_cancel]; rfl),
    by rw [hk.lift_fst, inv_mul_cancel_right]⟩

theorem globalFns : Out.GlobalFnsSt :=
  GlobalFunctions.globalFns_of (fun _ _ f _ _ ↦ geometricallyIntegral_of_smooth f)
    FlatFibreInjective.injective_baseChange exists_noetherian_model_of_smooth

end Descent

section Main

variable {K : Type} [Field K]

theorem torus_hom_eq_one (X : Type) [AddCommGroup X] [Module.Free ℤ X] [Module.Finite ℤ X]
    (B : Over (Spec (.of K))) [GrpObj B] [IsProper B.hom] (f : splitTorus (Spec (.of K)) X ⟶ B)
    [IsMonHom f] : f = 1 := by
  rw [GlobalTheory.TorusConst.eq_const X f, IsMonHom.one_hom, Hom.one_def]

theorem exists_torus_and_quotient_hom {G H : Over (Spec (.of K))} [GrpObj G] [GrpObj H]
    (D : TorusExtension G) (E : TorusExtension H) (φ : G ⟶ H) [IsMonHom φ] :
    letI := D.addCommGroup; letI := E.addCommGroup; letI := D.grpB; letI := E.grpB
    (∃! α : splitTorus (Spec (.of K)) D.X ⟶ splitTorus (Spec (.of K)) E.X,
      IsMonHom α ∧ α ≫ E.i = D.i ≫ φ) ∧
    (∃! β : D.B ⟶ E.B, IsMonHom β ∧ D.q ≫ β = φ ≫ E.q) := by
  letI := D.addCommGroup; letI := E.addCommGroup; letI := D.grpB; letI := E.grpB
  have := D.free
  have := D.finite
  have := D.i_hom
  have := D.q_hom
  have := D.q_flat
  have := D.q_surjective
  have := D.q_quasiCompact
  have := E.i_hom
  have := E.q_hom
  have := E.isAbelian.proper
  have h0 : D.i ≫ φ ≫ E.q = 1 := torus_hom_eq_one D.X E.B _
  have : Mono E.i := E.isKernel.flip.mono_snd_of_mono
  have := epi_of_fpqc D.q
  constructor
  · obtain ⟨α, hα⟩ : ∃ α, α ≫ E.i = D.i ≫ φ :=
      ⟨E.isKernel.lift (D.i ≫ φ) (toUnit _) (by rw [Category.assoc, h0]; rfl),
        E.isKernel.lift_fst _ _ _⟩
    refine ⟨α, ⟨⟨?_, ?_⟩, hα⟩, fun α' h ↦ by rw [← cancel_mono E.i, h.2, hα]⟩
    · rw [← cancel_mono E.i, Category.assoc, hα, IsMonHom.one_hom, IsMonHom.one_hom]
    · rw [← cancel_mono E.i, Category.assoc, hα, IsMonHom.mul_hom, Category.assoc,
        IsMonHom.mul_hom, tensorHom_comp_tensorHom_assoc, hα]
  · obtain ⟨β, hβ⟩ := exists_desc D.q (φ ≫ E.q) fun Z a b h ↦ by
      obtain ⟨τ, rfl⟩ := exists_eq_mul D.isKernel h
      rw [MonObj.mul_comp, Category.assoc, h0, MonObj.comp_one, _root_.one_mul]
    refine ⟨β, ⟨⟨?_, ?_⟩, hβ⟩, fun β' h ↦ by rw [← cancel_epi D.q, h.2, hβ]⟩
    · rw [← IsMonHom.one_hom D.q, Category.assoc, hβ, IsMonHom.one_hom]
    · have : Epi (D.B ◁ D.q) := by
        have := epi_of_fpqc (D.q ▷ D.B)
        rw [show D.B ◁ D.q = (β_ _ _).hom ≫ D.q ▷ D.B ≫ (β_ _ _).hom by simp]
        infer_instance
      have := epi_of_fpqc (D.q ▷ G)
      have : Epi (D.q ⊗ₘ D.q) := by rw [MonoidalCategory.tensorHom_def]; infer_instance
      rw [← cancel_epi (D.q ⊗ₘ D.q), ← IsMonHom.mul_hom_assoc, hβ, tensorHom_comp_tensorHom_assoc,
        hβ, IsMonHom.mul_hom]

end Main

section Family

variable {S : Scheme.{0}}

end Family

end GlobalTheory.SemiRigid

namespace GlobalTheory

open SemiRigid

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsTorusAndQuotientHom =====
