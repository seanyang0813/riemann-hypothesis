module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsDimEqOne
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsMatrixForm
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LocallyOfFiniteTypeKer
public import Mathlib.AlgebraicGeometry.Morphisms.Etale
public import Mathlib.CategoryTheory.Comma.LocallySmall
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasePointOfFiniteEtaleOverAlgClosed
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.CategoryTheory.Limits.Shapes.Connected
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeomOver, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPointsPullbackAbelianScheme

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeomOver =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeomOver", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsDimEqOne\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsMatrixForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry Opposite

namespace GlobalTheory.Et.CovChar

variable (R : Type) [CommRing R] [TopologicalSpace R] [IsTopologicalRing R]

variable {R} {X Y : Scheme.{0}} (f : Y ⟶ X)

end GlobalTheory.Et.CovChar

namespace GlobalTheory.AV.AbVar

open ReciprocityTheory.ChartRestriction.G.Geo.Tor MonoidalCategory CartesianMonoidalCategory MonObj
open scoped CategoryTheory.Obj CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory

variable {K : Type} [Field K]

end GlobalTheory.AV.AbVar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeomOver =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPointsPullbackAbelianScheme =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPointsPullbackAbelianScheme", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LocallyOfFiniteTypeKer\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import Mathlib.CategoryTheory.Comma.LocallySmall\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasePointOfFiniteEtaleOverAlgClosed\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsMatrixForm\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeomOver\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.Et GlobalTheory.Et.CovChar
open MonoidalCategory CartesianMonoidalCategory MonObj
open scoped CategoryTheory.Obj CategoryTheory.MonObj
open GlobalTheory.AV GlobalTheory.AV.AbVar
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.KerConst

open GlobalTheory.LevelCompare

theorem finite_etale_ker {S : Scheme.{0}} (A : Over S) [GrpObj A] (k : ℕ)
    (hf : IsFinite (𝟙 A ^ k).left) (he : Etale (𝟙 A ^ k).left) :
    IsFinite (Ker A k).hom ∧ Etale (Ker A k).hom := by
  have h := (IsPullback.of_hasPullback (GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureForms.mulBy A k) η[A]).map (Over.forget S)
  have h₁ : IsFinite (GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureForms.mulBy A k).left := hf
  have h₁' : Etale (GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureForms.mulBy A k).left := he
  have h₂ : IsFinite (pullback.snd (GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureForms.mulBy A k) η[A]).left :=
    MorphismProperty.of_isPullback (P := @IsFinite) h h₁
  have h₂' : Etale (pullback.snd (GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureForms.mulBy A k) η[A]).left :=
    MorphismProperty.of_isPullback (P := @Etale) h h₁'
  rw [← Over.w (pullback.snd (GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureForms.mulBy A k) η[A])]
  exact ⟨MorphismProperty.comp_mem @IsFinite _ _ h₂ (inferInstanceAs (IsFinite (𝟙 S))),
    by haveI := h₂'; haveI : Etale (𝟙_ (Over S)).hom := inferInstanceAs (Etale (𝟙 S)); infer_instance⟩

end GlobalTheory.KerConst

namespace GlobalTheory.KerConst

open GlobalTheory.LevelCompare

theorem isPullback_const_ker (Ω : Type) [Field Ω] [IsAlgClosed Ω]
    (G : Over (Spec (CommRingCat.of Ω))) [GrpObj G] : IsAbelianScheme G → ∀ (n : ℕ), (n : Ω) ≠ 0 →
    IsPullback (Sigma.desc (f := fun _ : {x : 𝟙_ (Over (Spec (CommRingCat.of Ω))) ⟶ G // x ^ n = 1} =>
      𝟙_ (Over (Spec (CommRingCat.of Ω)))) fun x => x.1) (toUnit _) (𝟙 G ^ n) η[G] := by
  intro hG n hn
  have := hG.comm
  have := hG.smooth
  have := hG.proper
  have hu : IsUnit (n : Γ(Spec (CommRingCat.of Ω), ⊤)) := by
    have h1 : IsUnit (n : Ω) := hn.isUnit
    simpa using h1.map (Scheme.ΓSpecIso (CommRingCat.of Ω)).inv.hom
  obtain ⟨hfin, het⟩ := finite_etale_ker G n (GlobalTheory.GrpTangent.isFinite_id_pow G hu)
    (GlobalTheory.GrpTangent.etale_id_pow G hu)
  refine (isKer_iff (A := G) (k := n) (fun x : {x : 𝟙_ (Over (Spec (CommRingCat.of Ω))) ⟶ G // x ^ n = 1} => x.1)
    (fun x => x.2)).2 ?_
  haveI := formallyUnramified_ker G hu
  haveI := locallyOfFiniteType_ker G n
  apply isIso_desc_of_lists
  intro K _ _ s u
  letI : Algebra Ω K := (Spec.preimage s).hom.toAlgebra
  have hs : s = spMap (algebraMap Ω K) := (Spec.map_preimage s).symm
  have hts : ∀ (T : Over (Spec (CommRingCat.of Ω))), (toUnit T).left = T.hom := fun T => by
    simpa using Over.w (toUnit T)
  obtain ⟨x₀, hx₀, hx⟩ := GlobalTheory.FinEtPoints.exists_point_of_finite_etale Ω K (Ker G n).left
    (Ker G n).hom hfin het u.left (by rw [Over.w u]; exact hs)
  let t₀ : 𝟙_ (Over (Spec (CommRingCat.of Ω))) ⟶ Ker G n := Over.homMk x₀ hx₀
  have hp : (t₀ ≫ pullback.fst _ _) ^ n = 1 := by
    rw [← comp_mulBy, Category.assoc, pullback.condition, ← Category.assoc, Hom.one_def]
    congr 1
    exact toUnit_unique _ _
  refine existsUnique_of_exists_of_unique ⟨⟨_, hp⟩, ?_⟩ ?_
  · have e : kerPt (t₀ ≫ pullback.fst _ _) hp = t₀ := ker_ext (kerPt_fst _ _)
    show toUnit _ ≫ kerPt (t₀ ≫ pullback.fst _ _) hp = u
    rw [e]
    apply Over.OverMorphism.ext
    rw [Over.comp_left, hts]
    show s ≫ x₀ = u.left
    exact (congrArg (· ≫ x₀) hs).trans hx
  · intro i j hi hj
    have h1 := congrArg (fun v => v ≫ pullback.fst _ _) (hi.trans hj.symm)
    simp only [Category.assoc, kerPt_fst] at h1
    have h2 := congrArg CommaMorphism.left h1
    simp only [Over.comp_left, hts] at h2
    haveI : Epi s := hs ▸ GlobalTheory.FinEtPoints.epi_spMap_field Ω K (algebraMap Ω K)
    exact Subtype.ext (Over.OverMorphism.ext ((cancel_epi s).mp h2))

end GlobalTheory.KerConst
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPointsPullbackAbelianScheme =====
