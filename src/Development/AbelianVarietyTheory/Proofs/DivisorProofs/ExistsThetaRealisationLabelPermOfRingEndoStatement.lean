module

public import Development.AbelianVarietyTheory.Definitions.Degenerations.RigGen
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.TorsionPointsOfGeometric
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUnifOfIsMumfordOf
import Development.AbelianVarietyTheory.Definitions.Divisors.FromBase
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaRealisationLabelPermOfRingEndo, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaRealisationLabelPermOfRingEndoStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaRealisationLabelPermOfRingEndo =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaRealisationLabelPermOfRingEndo", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.RigGen\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.TorsionPointsOfGeometric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUnifOfIsMumfordOf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR

noncomputable section
open Classical

namespace GlobalTheory.Poinc

theorem labelHom_of_comp_eq : ∀ {o₁ Ω₁ o₂ Ω₂ : Type} [CommRing o₁] [Field Ω₁] [Algebra o₁ Ω₁] [CommRing o₂] [Field Ω₂] [Algebra o₂ Ω₂] (S₁ : ThetaSys o₁ Ω₁) (S₂ : ThetaSys o₂ Ω₂) (ρ₁ : S₁.Real) (ρ₂ : S₂.Real) (om : S₁.R →+* S₂.R) (φ : ρ₂.P.A.left ⟶ ρ₁.P.A.left), IsGrpPullback ρ₂.P.A ρ₁.P.A (spMap om) φ → ∀ τ : S₂.R →+* S₂.R, τ.comp om = om → ∃ gl : S₂.Gam →+ S₂.Gam, ∀ a, (ρ₂.pt (gl a)).left ≫ φ = spMap τ ≫ (ρ₂.pt a).left ≫ φ := by
  intro o₁ Ω₁ o₂ Ω₂ _ _ _ _ _ _ S₁ S₂ ρ₁ ρ₂ om φ hφ τ hτ
  have hsp : spMap τ ≫ spMap om = spMap om := by
    show Spec.map _ ≫ Spec.map _ = _
    rw [← Spec.map_comp]
    conv_rhs => rw [← hτ]
    rfl
  let B := baseOver (Sp S₂.R)
  let push : (B ⟶ ρ₂.P.A) → (Over.mk (B.hom ≫ spMap om) ⟶ ρ₁.P.A) := fun x =>
    Over.homMk (x.left ≫ φ) (by rw [Category.assoc, hφ.1.w, ← Category.assoc, Over.w x]; rfl)
  have push_mul : ∀ x y, push (x * y) = push x * push y := fun x y =>
    Over.OverMorphism.ext (hφ.2 B x y (push x) (push y) rfl rfl).symm
  have push_inj : ∀ x y, push x = push y → x = y := fun x y e =>
    Over.OverMorphism.ext (hφ.1.hom_ext (congrArg (fun z => z.left) e) (by rw [Over.w x, Over.w y]))
  let V : Over.mk (B.hom ≫ spMap om) ⟶ Over.mk (B.hom ≫ spMap om) :=
    Over.homMk (spMap τ) (by show spMap τ ≫ 𝟙 _ ≫ spMap om = 𝟙 _ ≫ spMap om; rw [Category.id_comp, hsp])
  have wa : ∀ a, (spMap τ ≫ (ρ₂.pt a).left ≫ φ) ≫ ρ₁.P.A.hom = 𝟙 _ ≫ spMap om := fun a => by
    rw [Category.assoc, Category.assoc, hφ.1.w, ← Category.assoc (ρ₂.pt a).left, Over.w (ρ₂.pt a)]
    show spMap τ ≫ 𝟙 _ ≫ spMap om = _
    simp only [Category.id_comp]; exact hsp
  let s : S₂.Gam → (B ⟶ ρ₂.P.A) := fun a =>
    Over.homMk (hφ.1.lift (spMap τ ≫ (ρ₂.pt a).left ≫ φ) (𝟙 _) (wa a)) (hφ.1.lift_snd _ _ _)
  have hs : ∀ a, (s a).left ≫ φ = spMap τ ≫ (ρ₂.pt a).left ≫ φ := fun a => hφ.1.lift_fst _ _ _
  have push_s : ∀ a, push (s a) = V ≫ push (ρ₂.pt a) := fun a => Over.OverMorphism.ext (hs a)
  have s_add : ∀ a b, s (a + b) = s a * s b := fun a b => push_inj _ _ (by
    rw [push_s, ρ₂.pt_add, push_mul, MonObj.comp_mul, push_mul, push_s, push_s])
  let sH : Multiplicative S₂.Gam →* (B ⟶ ρ₂.P.A) := MonoidHom.mk' (fun a => s a.toAdd) (fun a b => s_add _ _)
  let ptH : Multiplicative S₂.Gam →* (B ⟶ ρ₂.P.A) := MonoidHom.mk' (fun a => ρ₂.pt a.toAdd) (fun a b => ρ₂.pt_add _ _)
  have hn : ∀ a : S₂.Gam, (S₂.r * S₂.N) • a = 0 := fun a => funext fun i => by
    rw [Pi.smul_apply, nsmul_eq_mul, ZMod.natCast_self, zero_mul]; rfl
  have tors : ∀ (F : Multiplicative S₂.Gam →* (B ⟶ ρ₂.P.A)) (a : S₂.Gam),
      F (Multiplicative.ofAdd a) ^ (S₂.r * S₂.N) = 1 := fun F a => by
    rw [← map_pow, ← ofAdd_nsmul, hn, ofAdd_zero, map_one]
  have ex : ∀ a, ∃ b, ρ₂.pt b = s a := fun a =>
    GlobalTheory.torsionSection_eq_labelled_of_isDomain S₂.R ρ₂.P (S₂.r * S₂.N) S₂.Gam ρ₂.pt
      (fun K _ _ x z hz => (ρ₂.pt_bij K x z hz).exists) (s a) (tors sH a)
  let K := AlgebraicClosure Ω₂
  let j : S₂.R →+* K := (algebraMap Ω₂ K).comp S₂.R.val.toRingHom
  have inj : ∀ b b', ρ₂.pt b = ρ₂.pt b' → b = b' := by
    intro b b' e
    obtain ⟨c, -, hc⟩ := ρ₂.pt_bij K (spMap j)
      ((Over.homMk (spMap j) (by simp) : Over.mk (spMap j) ⟶ baseOver (Sp S₂.R)) ≫ ρ₂.pt b)
      (by rw [← MonObj.comp_pow, show ρ₂.pt b ^ (S₂.r * S₂.N) = 1 from tors ptH b, MonObj.comp_one])
    exact (hc b rfl).trans (hc b' (by rw [e])).symm
  refine ⟨AddMonoidHom.mk' (fun a => Classical.choose (ex a)) (fun a b => inj _ _ ?_), fun a => ?_⟩
  · rw [ρ₂.pt_add, Classical.choose_spec (ex (a + b)), Classical.choose_spec (ex a), Classical.choose_spec (ex b),
      s_add]
  · show (ρ₂.pt (Classical.choose (ex a))).left ≫ φ = _
    rw [Classical.choose_spec (ex a)]
    exact hs a

end GlobalTheory.Poinc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaRealisationLabelPermOfRingEndo =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaRealisationLabelPermOfRingEndoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaRealisationLabelPermOfRingEndoStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.RigGen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaRealisationLabelPermOfRingEndo\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsUnifOfIsMumfordOf\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HomExtNormalSt\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.SiegelToroidalIntegral\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.UT ReciprocityTheory.ChartRestriction.G.DVR


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsThetaRealisationLabelPermOfRingEndoStatement =====
