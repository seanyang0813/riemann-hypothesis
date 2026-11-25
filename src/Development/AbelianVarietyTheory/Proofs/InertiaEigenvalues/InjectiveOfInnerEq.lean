module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivAtOfCfEqOne
public import Mathlib.Analysis.CStarAlgebra.Module.Constructions
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Normed.Operator.Basic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EulerOperatorInjectiveEigenvector
public import Mathlib.Analysis.InnerProductSpace.LinearMap
public import Mathlib.Algebra.Group.End
public import Mathlib.Algebra.Group.Subgroup.Map
public import Mathlib.Basic.Finite.Defs
public import Mathlib.GroupTheory.Coset.Defs
public import Mathlib.Data.Finset.Dedup
public import Mathlib.Data.Set.Finite.Basic
public import Mathlib.Algebra.BigOperators.Finprod
public import Mathlib.Algebra.Group.Subgroup.Defs
public import Mathlib.Basic.Complex.Basic
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LatIndexEqOneOfMem
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaPairingInvariant
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Topology.UniformSpace.Uniformizable
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Order.CompletePartialOrder

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeckeRepresentativesRightTranslateIdentity, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumInnerEulerProductQuotientInjective, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumLocalEulerFactorHeckeOperators, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientEquivRestrictedComponentFamilies, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightInvariantMulEqFinprodComponents, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InjectiveOfInnerEq

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeckeRepresentativesRightTranslateIdentity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeckeRepresentativesRightTranslateIdentity", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivAtOfCfEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift

noncomputable section

namespace GlobalTheory.UpInj

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T : Type} {A : FamIn D.what₂.LL G Pl0 T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

theorem levW_le_GfC (R : RealDat D A Ks) (i : Fin D.R.m) {k : GA D (Wc D i)} (hk : k ∈ levW R i) :
    k ∈ GfC (Wc D i) := hk.1

theorem mem_locK_iff (R : RealDat D A Ks) (i : Fin D.R.m) (v : HeightOneSpectrum (𝓞 D.host.F)) (g : GfC (Wc D i)) :
    (g : GA D (Wc D i)) ∈ {k | k ∈ levW R i ∧ SuppF (Wc D i) (GlobalTheory.LevelProduct.fE D v) k} ↔
      g ∈ KR R i ∧ cf (Wc D i) v g = g := by
  simp only [Set.mem_setOf_eq, KR, Subgroup.mem_subgroupOf, cf_eq_self_iff]

theorem dcRep_exists (R : RealDat D A Ks) (i : Fin D.R.m) (hT : TransLaws R i)
    (v : HeightOneSpectrum (𝓞 D.host.F)) (α : GfC (Wc D i)) (hα : cf (Wc D i) v α = α) :
    ∃ C, DCRep (cf (Wc D i) v) (KR R i) α C := by
  classical
  obtain ⟨C, hsupp, hrep⟩ := hT.1 v _ (isFinIdem_fE v) α ((cf_eq_self_iff _ v α).1 hα)
  refine ⟨C.subtype (· ∈ GfC (Wc D i)), fun δ hδ => ?_, fun x ⟨k₁, k₂, h1, h2, h3, h4, hx⟩ => ?_⟩
  · rw [Finset.mem_subtype] at hδ
    refine ⟨(cf_eq_self_iff _ v δ).2 (hsupp _ hδ), ?_⟩
    obtain ⟨-, k₁, hk₁, k₂, hk₂, he⟩ := hrep.1 _ hδ
    refine ⟨⟨k₁, levW_le_GfC R i hk₁.1⟩, ⟨k₂, levW_le_GfC R i hk₂.1⟩, ?_⟩
    obtain ⟨a1, a2⟩ := (mem_locK_iff R i v ⟨k₁, levW_le_GfC R i hk₁.1⟩).1 hk₁
    obtain ⟨b1, b2⟩ := (mem_locK_iff R i v ⟨k₂, levW_le_GfC R i hk₂.1⟩).1 hk₂
    exact ⟨a1, a2, b1, b2, Subtype.ext he⟩
  · have hk₁ := (mem_locK_iff R i v k₁).2 ⟨h1, h2⟩
    have hk₂ := (mem_locK_iff R i v k₂).2 ⟨h3, h4⟩
    have hx' : (x : GA D (Wc D i)) = (k₁ : GA D (Wc D i)) * α * k₂ := by rw [hx]; rfl
    obtain ⟨γ, ⟨hγC, hγK⟩, huniq⟩ := hrep.2 x ⟨_, hk₁, _, hk₂, hx'⟩
    have hγG : γ ∈ GfC (Wc D i) := (hrep.1 γ hγC).1
    have e : ((⟨γ, hγG⟩⁻¹ * x : GfC (Wc D i)) : GA D (Wc D i)) = γ⁻¹ * (x : GA D (Wc D i)) := by
      simp only [Subgroup.coe_mul, Subgroup.coe_inv]
    have hm := (mem_locK_iff R i v (⟨γ, hγG⟩⁻¹ * x)).1 (by rw [e]; exact hγK)
    refine ⟨⟨γ, hγG⟩, ⟨Finset.mem_subtype.2 hγC, hm⟩, ?_⟩
    rintro δ ⟨hδC, hδK, hδc⟩
    have e' : ((δ⁻¹ * x : GfC (Wc D i)) : GA D (Wc D i)) = (δ : GA D (Wc D i))⁻¹ * (x : GA D (Wc D i)) := by
      simp only [Subgroup.coe_mul, Subgroup.coe_inv]
    have hm' := (mem_locK_iff R i v (δ⁻¹ * x)).2 ⟨hδK, hδc⟩
    rw [e'] at hm'
    exact Subtype.ext (huniq (δ : GA D (Wc D i)) ⟨Finset.mem_subtype.1 hδC, hm'⟩)

theorem isCosetRep_map (R : RealDat D A Ks) (i : Fin D.R.m) (v : HeightOneSpectrum (𝓞 D.host.F)) (α : GfC (Wc D i))
    (C : Finset (GfC (Wc D i))) (hC : DCRep (cf (Wc D i) v) (KR R i) α C) :
    (∀ γ ∈ C.map (Function.Embedding.subtype _), SuppF (Wc D i) (GlobalTheory.LevelProduct.fE D v) γ) ∧
      IsCosetRep (Wc D i) {k | k ∈ levW R i ∧ SuppF (Wc D i) (GlobalTheory.LevelProduct.fE D v) k} α
        (C.map (Function.Embedding.subtype _)) := by
  classical
  refine ⟨fun γ hγ => ?_, fun γ hγ => ?_, fun x ⟨k₁, hk₁, k₂, hk₂, hx⟩ => ?_⟩
  · obtain ⟨δ, hδ, rfl⟩ := Finset.mem_map.1 hγ
    exact (cf_eq_self_iff _ v δ).1 (hC.1 δ hδ).1
  · obtain ⟨δ, hδ, rfl⟩ := Finset.mem_map.1 hγ
    obtain ⟨-, k₁, k₂, h1, h2, h3, h4, he⟩ := hC.1 δ hδ
    refine ⟨δ.2, k₁, (mem_locK_iff R i v k₁).2 ⟨h1, h2⟩, k₂, (mem_locK_iff R i v k₂).2 ⟨h3, h4⟩, ?_⟩
    simp [he]
  · have g₁ := levW_le_GfC R i hk₁.1
    have g₂ := levW_le_GfC R i hk₂.1
    have hxG : x ∈ GfC (Wc D i) := by
      rw [hx]; exact (GfC (Wc D i)).mul_mem ((GfC (Wc D i)).mul_mem g₁ α.2) g₂
    obtain ⟨a1, a2⟩ := (mem_locK_iff R i v ⟨k₁, g₁⟩).1 hk₁
    obtain ⟨b1, b2⟩ := (mem_locK_iff R i v ⟨k₂, g₂⟩).1 hk₂
    have hx2 : (⟨x, hxG⟩ : GfC (Wc D i)) = ⟨k₁, g₁⟩ * α * ⟨k₂, g₂⟩ := by
      apply Subtype.ext
      simp only [Subgroup.coe_mul]
      exact hx
    have hex := hC.2 ⟨x, hxG⟩ ⟨_, _, a1, a2, b1, b2, hx2⟩
    obtain ⟨δ, ⟨hδC, hδK, hδc⟩, huniq⟩ := hex
    have hm := (mem_locK_iff R i v (δ⁻¹ * (⟨x, hxG⟩ : GfC (Wc D i)))).2 ⟨hδK, hδc⟩
    have e : ((δ⁻¹ * (⟨x, hxG⟩ : GfC (Wc D i)) : GfC (Wc D i)) : GA D (Wc D i)) = (δ : GA D (Wc D i))⁻¹ * x := by
      simp only [Subgroup.coe_mul, Subgroup.coe_inv]
    rw [e] at hm
    refine ⟨(δ : GA D (Wc D i)), ⟨Finset.mem_map_of_mem _ hδC, hm⟩, ?_⟩
    rintro γ ⟨hγC, hγK⟩
    obtain ⟨δ', hδ', rfl⟩ := Finset.mem_map.1 hγC
    have e' : ((δ'⁻¹ * (⟨x, hxG⟩ : GfC (Wc D i)) : GfC (Wc D i)) : GA D (Wc D i)) = (δ' : GA D (Wc D i))⁻¹ * x := by
      simp only [Subgroup.coe_mul, Subgroup.coe_inv]
    obtain ⟨c1, c2⟩ := (mem_locK_iff R i v (δ'⁻¹ * (⟨x, hxG⟩ : GfC (Wc D i)))).1 (by rw [e']; exact hγK)
    exact congrArg Subtype.val (huniq δ' ⟨hδ', c1, c2⟩)

theorem heckeReps : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m)
    (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (i : Fin D.R.m),
    TransLaws R i → ∀ (B : GfC (Wc D i) → ((R.HW i (sg0 D A)).H →L[ℂ] (R.HW i (sg0 D A)).H)),
    (∀ (γ : GfC (Wc D i)) x y, trPair R i (γ : GA D (Wc D i)) x y = ⟪x, B γ y⟫_ℂ) →
    (∀ v α, GlobalTheory.UpInj.cf (Wc D i) v α = α → ∃ C, GlobalTheory.UpInj.DCRep (GlobalTheory.UpInj.cf (Wc D i) v) (GlobalTheory.UpInj.KR R i) α C) ∧
    (∀ v α C, GlobalTheory.UpInj.cf (Wc D i) v α = α → GlobalTheory.UpInj.DCRep (GlobalTheory.UpInj.cf (Wc D i) v) (GlobalTheory.UpInj.KR R i) α C →
      ∀ γ, ∑ δ ∈ C, B (γ * δ) = B γ * ∑ δ ∈ C, B δ) := by
  intro D G _ _ Pl0 T A Ks _ _ _ R i hT B hB
  refine ⟨fun v α hα => dcRep_exists R i hT v α hα, fun v α C hα hC γ => ?_⟩
  obtain ⟨hs, hr⟩ := isCosetRep_map R i v α C hC
  have hB1 : ∀ y, B 1 y = y := fun y => ext_inner_left ℂ fun x => by
    rw [← hB, OneMemClass.coe_one, hT.2.2.2.2.2]
  have key : ∀ (γ : GfC (Wc D i)) y y', (∀ γ ∈ GfC (Wc D i), ∀ x, trPair R i γ x y' =
      ∑ δ ∈ C.map (Function.Embedding.subtype _), trPair R i (γ * δ) x y) →
      B γ y' = (∑ δ ∈ C, B (γ * δ)) y := fun γ y y' h => ext_inner_left ℂ fun x => by
    rw [← hB, h γ γ.2 x, Finset.sum_map, ContinuousLinearMap.sum_apply, inner_sum]
    refine Finset.sum_congr rfl fun δ _ => ?_
    rw [← hB]; rfl
  ext y
  obtain ⟨y', -, hy'⟩ := hT.2.1 v _ (isFinIdem_fE v) α ((cf_eq_self_iff _ v α).1 hα) _ hs hr y
  have e1 := key 1 y y' hy'
  simp only [one_mul, hB1] at e1
  rw [ContinuousLinearMap.mul_apply, ← e1, key γ y y' hy']

end GlobalTheory.UpInj

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeckeRepresentativesRightTranslateIdentity =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumInnerEulerProductQuotientInjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumInnerEulerProductQuotientInjective", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Module.Constructions\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Normed.Operator.Basic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EulerOperatorInjectiveEigenvector\npublic import Mathlib.Analysis.InnerProductSpace.LinearMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped InnerProductSpace BigOperators

namespace GlobalTheory

theorem hasSum_inner_quotient_eulerProduct_injective : ∀ (Γ : Type) [Group Γ] (K : Subgroup Γ) (ι : Type) [DecidableEq ι] (c : ι → Γ →* Γ) (H : Type) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [FiniteDimensional ℂ H] (a : Γ → ℂ) (B : Γ → (H →L[ℂ] H)) (s : ι → ℝ) (e : Γ ⧸ K ≃ {f : ∀ v, Γ ⧸ K.comap (c v) // {w | f w ≠ (QuotientGroup.mk 1 : Γ ⧸ K.comap (c w))}.Finite}), (∀ (g : Γ) v, (e (QuotientGroup.mk g)).1 v = (QuotientGroup.mk g : Γ ⧸ K.comap (c v))) → (∀ g, g ∈ K ↔ ∀ v, c v g ∈ K) → (∀ v g, c v (c v g) = c v g) → (∀ v w g, v ≠ w → c w (c v g) = 1) → (∀ g k, k ∈ K → a (g * k) = a g) → a 1 = 1 → (∀ g, a g = ∏ᶠ v, a (c v g)) → (∀ g, ‖B g‖ ≤ 1) → B 1 = 1 → (∀ g k, k ∈ K → B (g * k) = B g) → Summable s → (∀ v, s v < 1) → (∀ v (C : Finset Γ), (∀ g ∈ C, c v g = g ∧ g ∉ K) → (∀ g ∈ C, ∀ g' ∈ C, g⁻¹ * g' ∈ K → g = g') → ∑ g ∈ C, ‖a g‖ ≤ s v) → (∀ v γ, HasSum (fun x : Γ ⧸ K.comap (c v) => a (c v (Quotient.out x)) • B (γ * c v (Quotient.out x))) (B γ * ∑' x : Γ ⧸ K.comap (c v), a (c v (Quotient.out x)) • B (c v (Quotient.out x)))) → ∃ W : H →L[ℂ] H, Function.Injective W ∧ ∀ x y, HasSum (fun q : Γ ⧸ K => a (Quotient.out q) * ⟪x, B (Quotient.out q) y⟫_ℂ) ⟪x, W y⟫_ℂ := by
  intro Γ _ K ι _ c H _ _ _ a B s e he hK hidem horth haK ha1 hfac hB hB1 hBK hs hs1 hloc hstep
  classical
  haveI : CompleteSpace H := FiniteDimensional.complete ℂ H

  have aK : ∀ g : Γ, a ((QuotientGroup.mk g : Γ ⧸ K).out) = a g := by
    intro g
    obtain ⟨k, hk⟩ := QuotientGroup.mk_out_eq_mul K g
    rw [hk]; exact haK g k k.2
  have BK : ∀ g : Γ, B ((QuotientGroup.mk g : Γ ⧸ K).out) = B g := by
    intro g
    obtain ⟨k, hk⟩ := QuotientGroup.mk_out_eq_mul K g
    rw [hk]; exact hBK g k k.2
  have acv : ∀ v (g : Γ), a (c v ((QuotientGroup.mk g : Γ ⧸ K.comap (c v)).out)) = a (c v g) := by
    intro v g
    obtain ⟨k, hk⟩ := QuotientGroup.mk_out_eq_mul (K.comap (c v)) g
    rw [hk, map_mul]; exact haK _ _ k.2
  have cv1 : ∀ v, c v ((QuotientGroup.mk 1 : Γ ⧸ K.comap (c v)).out) ∈ K := by
    intro v
    obtain ⟨k, hk⟩ := QuotientGroup.mk_out_eq_mul (K.comap (c v)) (1 : Γ)
    rw [hk, one_mul]; exact k.2
  let x0 : ∀ v, Γ ⧸ K.comap (c v) := fun v => QuotientGroup.mk 1
  let a' : ∀ v, Γ ⧸ K.comap (c v) → ℂ := fun v x => a (c v x.out)
  let Z : ι → (H →L[ℂ] H) := fun v => ∑' x : Γ ⧸ K.comap (c v), a (c v x.out) • B (c v x.out)
  let B' : (∀ v, Γ ⧸ K.comap (c v)) → (H →L[ℂ] H) := fun f =>
    if h : {w | f w ≠ (QuotientGroup.mk 1 : Γ ⧸ K.comap (c w))}.Finite then B ((e.symm ⟨f, h⟩).out) else B 1
  have B'eval : ∀ (f : ∀ v, Γ ⧸ K.comap (c v)) (g : Γ),
      (∀ w, f w = (QuotientGroup.mk g : Γ ⧸ K.comap (c w))) → B' f = B g := by
    intro f g hf
    have hfeq : f = (e (QuotientGroup.mk g)).1 := funext fun w => (hf w).trans (he g w).symm
    subst hfeq
    simp only [B', dif_pos (e (QuotientGroup.mk g)).2, Subtype.coe_eta, Equiv.symm_apply_apply]
    exact BK g
  have h1 : ∀ v, a' v (x0 v) = 1 := by
    intro v
    show a (c v ((QuotientGroup.mk 1 : Γ ⧸ K.comap (c v)).out)) = 1
    rw [acv, map_one, ha1]
  have hfin : ∀ v (C : Finset (Γ ⧸ K.comap (c v))), x0 v ∉ C → ∑ x ∈ C, ‖a' v x‖ ≤ s v := by
    intro v C hC
    have eqcl : ∀ x y : Γ ⧸ K.comap (c v), (c v x.out)⁻¹ * c v y.out ∈ K → x = y := by
      intro x y hxy
      have hm : x.out⁻¹ * y.out ∈ K.comap (c v) := by
        rw [Subgroup.mem_comap, map_mul, map_inv]; exact hxy
      have := (QuotientGroup.eq (s := K.comap (c v))).mpr hm
      simpa only [QuotientGroup.out_eq'] using this
    calc ∑ x ∈ C, ‖a' v x‖ = ∑ g ∈ C.image (fun x => c v x.out), ‖a g‖ := by
          rw [Finset.sum_image]
          intro x _ y _ hxy
          apply eqcl
          have hxy' : c v x.out = c v y.out := hxy
          rw [hxy', inv_mul_cancel]; exact K.one_mem
      _ ≤ s v := by
          apply hloc
          · intro g hg
            obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hg
            refine ⟨hidem v _, fun hmem => hC ?_⟩
            have : x = x0 v := by
              apply eqcl
              exact K.mul_mem (K.inv_mem hmem) (cv1 v)
            rw [← this]; exact hx
          · intro g hg g' hg' hgg
            obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hg
            obtain ⟨y, hy, rfl⟩ := Finset.mem_image.mp hg'
            rw [eqcl x y hgg]
  have hnorm : ∀ f, ‖B' f‖ ≤ 1 := by
    intro f
    simp only [B']
    split_ifs
    · exact hB _
    · exact hB 1
  have hx0 : B' x0 = 1 := by
    rw [B'eval x0 1 (fun w => rfl), hB1]
  have hrec : ∀ v (f : ∀ v, Γ ⧸ K.comap (c v)), {w | f w ≠ x0 w}.Finite → f v = x0 v →
      HasSum (fun x => a' v x • B' (Function.update f v x)) (B' f * Z v) := by
    intro v f hf hv
    set γ' : Γ := (e.symm ⟨f, hf⟩).out with hγ'
    have hfγ' : ∀ w, f w = (QuotientGroup.mk γ' : Γ ⧸ K.comap (c w)) := by
      intro w
      have h2 : e (QuotientGroup.mk γ') = ⟨f, hf⟩ := by
        rw [hγ', QuotientGroup.out_eq', Equiv.apply_symm_apply]
      have h3 := congrArg (fun p => p.1 w) h2
      simp only at h3
      rw [← h3, he]
    set γ : Γ := γ' * (c v γ')⁻¹ with hγ
    have hcγ : c v γ = 1 := by
      rw [hγ, map_mul, map_inv, hidem, mul_inv_cancel]
    have key : ∀ x : Γ ⧸ K.comap (c v), B' (Function.update f v x) = B (γ * c v x.out) := by
      intro x
      apply B'eval
      intro w
      rcases eq_or_ne w v with rfl | hw
      · rw [Function.update_self]
        refine ((QuotientGroup.eq (s := K.comap (c w))).mpr ?_).trans (QuotientGroup.out_eq' x) |>.symm
        rw [Subgroup.mem_comap]
        simp only [mul_inv_rev, map_mul, map_inv, hidem, hcγ, inv_one, mul_one, inv_mul_cancel]
        exact K.one_mem
      · rw [Function.update_of_ne hw, hfγ' w, QuotientGroup.eq, Subgroup.mem_comap]
        simp only [hγ, map_mul, map_inv, horth v w _ hw.symm, inv_one, mul_one,
          inv_mul_cancel]
        exact K.one_mem
    have hupd : Function.update f v (x0 v) = f := by
      rw [← hv]; exact Function.update_eq_self v f
    have hBf : B' f = B γ := by
      rw [← hupd, key, hBK _ _ (cv1 v)]
    rw [hBf]
    have := hstep v γ
    convert this using 1
    funext x
    rw [key]
  obtain ⟨W, hW, hinj, -⟩ := _root_.GlobalTheory.eulerOp_injective_eigen ι (fun v => Γ ⧸ K.comap (c v)) x0 H a' s B' Z h1 hs hs1 hfin
    hnorm hx0 hrec
  refine ⟨W, hinj, fun x y => ?_⟩
  have hW' := (Equiv.hasSum_iff e).mpr hW
  have hfun : ((fun f : {f : ∀ v, Γ ⧸ K.comap (c v) // {w | f w ≠ x0 w}.Finite} =>
      (∏ᶠ v, a' v (f.1 v)) • B' f.1) ∘ e) = fun q => a q.out • B q.out := by
    funext q
    have hq : ∀ v, (e q).1 v = (QuotientGroup.mk q.out : Γ ⧸ K.comap (c v)) := by
      intro v
      conv_lhs => rw [← QuotientGroup.out_eq' q]
      exact he _ v
    simp only [Function.comp]
    rw [B'eval _ q.out hq]
    congr 1
    rw [hfac q.out]
    exact finprod_congr fun v => by simp only [a']; rw [hq v]; exact acv v q.out
  rw [hfun] at hW'
  have := hW'.mapL ((innerSL ℂ x).comp (ContinuousLinearMap.apply ℂ H y))
  simpa [inner_smul_right] using this

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumInnerEulerProductQuotientInjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumLocalEulerFactorHeckeOperators =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumLocalEulerFactorHeckeOperators", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivAtOfCfEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\n\n"}
section -- clump:auto
@[expose] public section

open scoped InnerProductSpace BigOperators

noncomputable section

namespace GlobalTheory.UpInj.LocalSum

def dc {Γ : Type} [Group Γ] (K : Subgroup Γ) (c : Γ →* Γ) (g : Γ) : Set Γ :=
  {y | ∃ k₁ k₂, k₁ ∈ K ∧ c k₁ = k₁ ∧ k₂ ∈ K ∧ c k₂ = k₂ ∧ y = k₁ * g * k₂}

theorem mem_dc_self {Γ : Type} [Group Γ] (K : Subgroup Γ) (c : Γ →* Γ) (g : Γ) : g ∈ dc K c g :=
  ⟨1, 1, K.one_mem, map_one c, K.one_mem, map_one c, by simp⟩

theorem mul_mem_dc {Γ : Type} [Group Γ] (K : Subgroup Γ) (c : Γ →* Γ) {g y k : Γ} (h : y ∈ dc K c g)
    (hk : k ∈ K) (hck : c k = k) : y * k ∈ dc K c g := by
  obtain ⟨k₁, k₂, h1, h2, h3, h4, rfl⟩ := h
  exact ⟨k₁, k₂ * k, h1, h2, K.mul_mem h3 hk, by rw [map_mul, h4, hck], by simp [mul_assoc]⟩

theorem dc_eq_of_mem {Γ : Type} [Group Γ] (K : Subgroup Γ) (c : Γ →* Γ) {g y : Γ} (h : y ∈ dc K c g) :
    dc K c y = dc K c g := by
  obtain ⟨k₁, k₂, h1, h2, h3, h4, rfl⟩ := h
  ext z
  constructor
  · rintro ⟨l₁, l₂, i1, i2, i3, i4, rfl⟩
    exact ⟨l₁ * k₁, k₂ * l₂, K.mul_mem i1 h1, by rw [map_mul, i2, h2], K.mul_mem h3 i3,
      by rw [map_mul, h4, i4], by simp [mul_assoc]⟩
  · rintro ⟨l₁, l₂, i1, i2, i3, i4, rfl⟩
    exact ⟨l₁ * k₁⁻¹, k₂⁻¹ * l₂, K.mul_mem i1 (K.inv_mem h1), by rw [map_mul, map_inv, i2, h2],
      K.mul_mem (K.inv_mem h3) i3, by rw [map_mul, map_inv, h4, i4], by group⟩

theorem out_mk {Γ : Type} [Group Γ] (K : Subgroup Γ) (c : Γ →* Γ) (δ : Γ) :
    ∃ h, c h ∈ K ∧ Quotient.out (QuotientGroup.mk δ : Γ ⧸ K.comap c) = δ * h := by
  have e := QuotientGroup.eq.1 (QuotientGroup.out_eq' (QuotientGroup.mk δ : Γ ⧸ K.comap c))
  refine ⟨δ⁻¹ * Quotient.out (QuotientGroup.mk δ : Γ ⧸ K.comap c), ?_, by group⟩
  have := (K.comap c).inv_mem e
  rw [mul_inv_rev, inv_inv] at this
  exact this

end GlobalTheory.UpInj.LocalSum


open GlobalTheory.UpInj.LocalSum in
theorem GlobalTheory.UpInj.localSum_hasSum : ∀ (Γ : Type) [Group Γ] (K : Subgroup Γ) (c : Γ →* Γ) (H : Type) [NormedAddCommGroup H] [NormedSpace ℂ H] [CompleteSpace H] (a : Γ → ℂ) (B : Γ → (H →L[ℂ] H)) (S : ℝ), (∀ g, c (c g) = c g) → (∀ g k k', k ∈ K → k' ∈ K → a (k * g * k') = a g) → (∀ g k, k ∈ K → B (g * k) = B g) → (∀ g, ‖B g‖ ≤ 1) → (∀ C : Finset Γ, (∀ g ∈ C, c g = g ∧ g ∉ K) → (∀ g ∈ C, ∀ g' ∈ C, g⁻¹ * g' ∈ K → g = g') → ∑ g ∈ C, ‖a g‖ ≤ S) → (∀ α, c α = α → ∃ C, GlobalTheory.UpInj.DCRep c K α C) → (∀ α C, c α = α → GlobalTheory.UpInj.DCRep c K α C → ∀ γ, ∑ δ ∈ C, B (γ * δ) = B γ * ∑ δ ∈ C, B δ) → ∀ γ, HasSum (fun x : Γ ⧸ K.comap c => a (c (Quotient.out x)) • B (γ * c (Quotient.out x))) (B γ * ∑' x : Γ ⧸ K.comap c, a (c (Quotient.out x)) • B (c (Quotient.out x))) := by
  intro Γ _ K c H _ _ _ a B S hc ha hB hB1 hS hex hH γ
  classical
  let r : Γ ⧸ K.comap c → Γ := fun x => c (Quotient.out x)
  have hr_fix : ∀ x, c (r x) = r x := fun x => hc _
  have hr_eq : ∀ x x' : Γ ⧸ K.comap c, (r x)⁻¹ * r x' ∈ K ↔ x = x' := by
    intro x x'
    have e : (r x)⁻¹ * r x' = c ((Quotient.out x)⁻¹ * Quotient.out x') := by simp [r, map_mul, map_inv]
    rw [e, ← Subgroup.mem_comap, ← QuotientGroup.eq, QuotientGroup.out_eq', QuotientGroup.out_eq']
  have hr_one : ∀ x : Γ ⧸ K.comap c, r x ∈ K ↔ x = (QuotientGroup.mk 1 : Γ ⧸ K.comap c) := by
    intro x
    have key : (QuotientGroup.mk 1 : Γ ⧸ K.comap c) = QuotientGroup.mk (Quotient.out x) ↔
        1⁻¹ * Quotient.out x ∈ K.comap c := QuotientGroup.eq
    rw [QuotientGroup.out_eq', inv_one, one_mul, Subgroup.mem_comap] at key
    rw [eq_comm]; exact key.symm
  have ha1 : ∀ g, g ∈ K → a g = a 1 := fun g hg => by simpa using ha 1 g 1 hg K.one_mem
  have hsum : Summable (fun x : Γ ⧸ K.comap c => ‖a (r x)‖) := by
    refine summable_of_sum_le (c := ‖a 1‖ + S) (fun x => norm_nonneg _) (fun u => ?_)
    rw [← Finset.sum_filter_add_sum_filter_not u (fun x => x = (QuotientGroup.mk 1 : Γ ⧸ K.comap c))]
    gcongr ?_ + ?_
    · calc ∑ x ∈ u.filter (fun x => x = QuotientGroup.mk 1), ‖a (r x)‖
            ≤ ∑ x ∈ {(QuotientGroup.mk 1 : Γ ⧸ K.comap c)}, ‖a (r x)‖ :=
            Finset.sum_le_sum_of_subset_of_nonneg (fun x hx => by simp [(Finset.mem_filter.1 hx).2])
              (fun _ _ _ => norm_nonneg _)
        _ = ‖a 1‖ := by rw [Finset.sum_singleton, ha1 _ ((hr_one _).2 rfl)]
    · rw [← Finset.sum_image (f := fun g => ‖a g‖) (fun x _ x' _ h => (hr_eq x x').1 (by rw [h, inv_mul_cancel]; exact K.one_mem))]
      apply hS
      · intro g hg
        obtain ⟨x, hx, rfl⟩ := Finset.mem_image.1 hg
        exact ⟨hr_fix x, fun h => (Finset.mem_filter.1 hx).2 ((hr_one x).1 h)⟩
      · intro g hg g' hg' h
        obtain ⟨x, _, rfl⟩ := Finset.mem_image.1 hg
        obtain ⟨x', _, rfl⟩ := Finset.mem_image.1 hg'
        rw [(hr_eq x x').1 h]
  have hnorm : ∀ g γ', ‖a g • B (γ' * g)‖ ≤ ‖a g‖ := fun g γ' => by
    rw [norm_smul]; exact mul_le_of_le_one_right (norm_nonneg _) (hB1 _)
  let F : Γ ⧸ K.comap c → (H →L[ℂ] H) := fun x => a (c (Quotient.out x)) • B (γ * c (Quotient.out x))
  let G : Γ ⧸ K.comap c → (H →L[ℂ] H) := fun x => a (c (Quotient.out x)) • B (c (Quotient.out x))
  have hF : Summable F := Summable.of_norm_bounded hsum (fun x => hnorm _ _)
  have hG : Summable G := Summable.of_norm_bounded hsum (fun x => by simpa using hnorm (r x) 1)
  let q : Γ ⧸ K.comap c → Set Γ := fun x => dc K c (r x)
  have hfib : ∀ b : Set Γ, ∑' y : {x // q x = b}, F y.1 = B γ * ∑' y : {x // q x = b}, G y.1 := by
    intro b
    by_cases hb : ∃ x0, q x0 = b
    swap
    · push_neg at hb
      haveI : IsEmpty {x // q x = b} := ⟨fun y => hb y.1 y.2⟩
      simp [tsum_empty]
    obtain ⟨x0, rfl⟩ := hb
    obtain ⟨C, hC⟩ := hex (r x0) (hr_fix x0)
    have memfib : ∀ x, q x = q x0 ↔ r x ∈ dc K c (r x0) := fun x =>
      ⟨fun h => by rw [← show dc K c (r x) = dc K c (r x0) from h]; exact mem_dc_self K c _,
       fun h => dc_eq_of_mem K c h⟩
    have hval : ∀ δ ∈ C, ∃ k, k ∈ K ∧ c k = k ∧ r (QuotientGroup.mk δ) = δ * k := by
      intro δ hδ
      obtain ⟨h, hh, he⟩ := out_mk K c δ
      exact ⟨c h, hh, hc h, by show c (Quotient.out _) = _; rw [he, map_mul, (hC.1 δ hδ).1]⟩
    have haδ : ∀ δ ∈ C, ∀ k, k ∈ K → a (δ * k) = a (r x0) := by
      intro δ hδ k hk
      obtain ⟨_, k₁, k₂, h1, -, h3, -, hδe⟩ := hC.1 δ hδ
      rw [hδe, ← ha (r x0) k₁ (k₂ * k) h1 (K.mul_mem h3 hk)]
      simp [mul_assoc]
    have hFv : ∀ δ ∈ C, F (QuotientGroup.mk δ) = a (r x0) • B (γ * δ) := by
      intro δ hδ
      obtain ⟨k, hk, -, he⟩ := hval δ hδ
      show a (r _) • B (γ * r _) = _
      rw [he, haδ δ hδ k hk, ← mul_assoc, hB _ _ hk]
    have hGv : ∀ δ ∈ C, G (QuotientGroup.mk δ) = a (r x0) • B δ := by
      intro δ hδ
      obtain ⟨k, hk, -, he⟩ := hval δ hδ
      show a (r _) • B (r _) = _
      rw [he, haδ δ hδ k hk, hB _ _ hk]
    let e : C → {x // q x = q x0} := fun δ => ⟨QuotientGroup.mk δ.1, (memfib _).2 (by
      obtain ⟨k, hk, hck, he⟩ := hval δ.1 δ.2
      rw [he]
      obtain ⟨_, k₁, k₂, h1, h2, h3, h4, hδe⟩ := hC.1 δ.1 δ.2
      exact mul_mem_dc K c ⟨k₁, k₂, h1, h2, h3, h4, hδe⟩ hk hck)⟩
    have hinj : Function.Injective e := by
      rintro ⟨δ, hδ⟩ ⟨δ', hδ'⟩ h
      have h' : (QuotientGroup.mk δ : Γ ⧸ K.comap c) = QuotientGroup.mk δ' := congrArg Subtype.val h
      have hfix : c (δ⁻¹ * δ') = δ⁻¹ * δ' := by rw [map_mul, map_inv, (hC.1 δ hδ).1, (hC.1 δ' hδ').1]
      rw [QuotientGroup.eq, Subgroup.mem_comap, hfix] at h'
      apply Subtype.ext
      exact (hC.2 δ' (hC.1 δ' hδ').2).unique ⟨hδ, h', hfix⟩ ⟨hδ', by simp, by simp⟩
    have hsurj : Function.Surjective e := by
      rintro ⟨x, hx⟩
      obtain ⟨k₁, k₂, h1, h2, h3, h4, hxe⟩ := (memfib x).1 hx
      obtain ⟨δ, ⟨hδ, hK, -⟩, -⟩ := hC.2 (r x) ⟨k₁, k₂, h1, h2, h3, h4, hxe⟩
      refine ⟨⟨δ, hδ⟩, Subtype.ext ?_⟩
      show (QuotientGroup.mk δ : Γ ⧸ K.comap c) = x
      conv_rhs => rw [← QuotientGroup.out_eq' x]
      rw [QuotientGroup.eq, Subgroup.mem_comap, map_mul, map_inv, (hC.1 δ hδ).1]
      exact hK
    have hT : ∀ f : Γ ⧸ K.comap c → (H →L[ℂ] H),
        ∑' y : {x // q x = q x0}, f y.1 = ∑ δ ∈ C, f (QuotientGroup.mk δ) := by
      intro f
      rw [← Equiv.tsum_eq (Equiv.ofBijective e ⟨hinj, hsurj⟩) (fun y : {x // q x = q x0} => f y.1), tsum_fintype]
      exact Finset.sum_coe_sort C (fun δ => f (QuotientGroup.mk δ))
    rw [hT, hT, Finset.sum_congr rfl hFv, Finset.sum_congr rfl hGv, ← Finset.smul_sum, ← Finset.smul_sum,
      hH (r x0) C (hr_fix x0) hC γ, mul_smul_comm]
  let eσ := Equiv.sigmaFiberEquiv q
  have hFs : HasSum (fun b : Set Γ => ∑' y : {x // q x = b}, F y.1) (∑' x, F x) :=
    HasSum.sigma ((eσ.hasSum_iff).2 hF.hasSum) (fun b => (hF.comp_injective Subtype.val_injective).hasSum)
  have hGs : HasSum (fun b : Set Γ => ∑' y : {x // q x = b}, G y.1) (∑' x, G x) :=
    HasSum.sigma ((eσ.hasSum_iff).2 hG.hasSum) (fun b => (hG.comp_injective Subtype.val_injective).hasSum)
  have hGm := hGs.mul_left (B γ)
  rw [← funext hfib] at hGm
  have := hFs.unique hGm
  show HasSum F _
  rw [← this]
  exact hF.hasSum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumLocalEulerFactorHeckeOperators =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientEquivRestrictedComponentFamilies =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientEquivRestrictedComponentFamilies", "h": "module\n\npublic import Mathlib.Algebra.Group.End\npublic import Mathlib.Algebra.Group.Subgroup.Map\npublic import Mathlib.Basic.Finite.Defs\npublic import Mathlib.GroupTheory.Coset.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Data.Finset.Dedup\npublic import Mathlib.Data.Set.Finite.Basic\n\n"}
section -- clump:auto
@[expose] public section

open scoped InnerProductSpace BigOperators

namespace GlobalTheory

theorem quotient_equiv_restrictedFamilies : ∀ (Γ : Type) [Group Γ] (K : Subgroup Γ) (ι : Type) (c : ι → Γ →* Γ), (∀ g, g ∈ K ↔ ∀ v, c v g ∈ K) → (∀ g, {v | c v g ∉ K}.Finite) → (∀ v g, c v (c v g) = c v g) → (∀ v w g, v ≠ w → c w (c v g) = 1) → ∃ e : Γ ⧸ K ≃ {f : ∀ v, Γ ⧸ K.comap (c v) // {w | f w ≠ (QuotientGroup.mk 1 : Γ ⧸ K.comap (c w))}.Finite}, ∀ (g : Γ) v, (e (QuotientGroup.mk g)).1 v = (QuotientGroup.mk g : Γ ⧸ K.comap (c v)) := by
  intro Γ _ K ι c hK hfin hidem horth
  classical
  have hmk : ∀ v (g h : Γ), ((QuotientGroup.mk g : Γ ⧸ K.comap (c v)) = QuotientGroup.mk h) ↔
      c v (g⁻¹ * h) ∈ K := by
    intro v g h
    rw [QuotientGroup.eq, Subgroup.mem_comap]
  have hle : ∀ v, K ≤ K.comap (c v) := fun v g hg => (hK g).1 hg v
  let F : Γ ⧸ K → ∀ v, Γ ⧸ K.comap (c v) := fun q v =>
    Quotient.liftOn' q (fun g => (QuotientGroup.mk g : Γ ⧸ K.comap (c v))) (by
      intro a b hab
      rw [QuotientGroup.leftRel_apply] at hab
      exact (QuotientGroup.eq).2 (hle v hab))
  have hF : ∀ g v, F (QuotientGroup.mk g) v = QuotientGroup.mk g := fun g v => rfl
  have hsupp : ∀ g, {w | F (QuotientGroup.mk g) w ≠ (QuotientGroup.mk 1 : Γ ⧸ K.comap (c w))} =
      {v | c v g ∉ K} := by
    intro g
    ext w
    simp only [Set.mem_setOf_eq, hF, ne_eq, hmk, mul_one, map_inv, inv_mem_iff]
  let G : Γ ⧸ K → {f : ∀ v, Γ ⧸ K.comap (c v) //
      {w | f w ≠ (QuotientGroup.mk 1 : Γ ⧸ K.comap (c w))}.Finite} := fun q =>
    ⟨F q, by
      refine QuotientGroup.induction_on q ?_
      intro g
      rw [hsupp]
      exact hfin g⟩
  have hinj : Function.Injective G := by
    intro q₁ q₂ h12
    refine QuotientGroup.induction_on q₁ (fun g => ?_) h12
    refine QuotientGroup.induction_on q₂ (fun k => ?_)
    intro h12
    have h' : ∀ v, F (QuotientGroup.mk g) v = F (QuotientGroup.mk k) v :=
      fun v => congrFun (congrArg Subtype.val h12) v
    rw [QuotientGroup.eq, hK]
    intro v
    have := h' v
    rw [hF, hF, hmk] at this
    exact this
  have hcw : ∀ w (g : Γ), (QuotientGroup.mk (c w g) : Γ ⧸ K.comap (c w)) = QuotientGroup.mk g := by
    intro w g
    rw [hmk, map_mul, map_inv, hidem, inv_mul_cancel]
    exact K.one_mem
  have hlist : ∀ (x : ι → Γ) (l : List ι), l.Nodup → ∀ w,
      c w ((l.map (fun v => c v (x v))).prod) = if w ∈ l then c w (x w) else 1 := by
    intro x l
    induction l with
    | nil => intro _ w; simp
    | cons a t ih =>
      intro hl w
      rw [List.nodup_cons] at hl
      rw [List.map_cons, List.prod_cons, map_mul, ih hl.2]
      by_cases hw : w = a
      · subst hw
        simp [hidem, hl.1]
      · rw [horth a w _ (Ne.symm hw), one_mul]
        simp [hw]
  have hsurj : Function.Surjective G := by
    rintro ⟨f, hf⟩
    let x : ι → Γ := fun v => (f v).out
    refine ⟨QuotientGroup.mk ((hf.toFinset.toList.map (fun v => c v (x v))).prod), ?_⟩
    apply Subtype.ext
    funext w
    show F (QuotientGroup.mk _) w = f w
    rw [hF, ← hcw w, hlist x hf.toFinset.toList (Finset.nodup_toList _) w]
    by_cases hw : w ∈ hf.toFinset.toList
    · rw [if_pos hw, hcw]
      exact Quotient.out_eq (f w)
    · rw [if_neg hw]
      rw [Finset.mem_toList, Set.Finite.mem_toFinset, Set.mem_setOf_eq, not_not] at hw
      exact hw.symm
  exact ⟨Equiv.ofBijective G ⟨hinj, hsurj⟩, fun g v => rfl⟩

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientEquivRestrictedComponentFamilies =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightInvariantMulEqFinprodComponents =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightInvariantMulEqFinprodComponents", "h": "module\n\npublic import Mathlib.Algebra.BigOperators.Finprod\npublic import Mathlib.Algebra.Group.Subgroup.Defs\npublic import Mathlib.Basic.Complex.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped InnerProductSpace BigOperators

namespace GlobalTheory

theorem finprod_components_of_rightInvariant_mul :
    ∀ (Γ : Type) [Group Γ] (K : Subgroup Γ) (ι : Type) (c : ι → Γ →* Γ) (a : Γ → ℂ),
      (∀ g, g ∈ K ↔ ∀ v, c v g ∈ K) → (∀ g, {v | c v g ∉ K}.Finite) →
      (∀ v g, c v (c v g) = c v g) → (∀ v w g, v ≠ w → c w (c v g) = 1) →
      (∀ g k, k ∈ K → a (g * k) = a g) → a 1 = 1 →
      (∀ v g h, c v g = 1 → c v h = h → a (g * h) = a g * a h) →
      ∀ g, a g = ∏ᶠ v, a (c v g) := by
  intro Γ _ K ι c a hK hfin hidem horth hinv ha1 hmul
  classical

  have haK : ∀ k, k ∈ K → a k = 1 := by
    intro k hk
    have := hinv 1 k hk
    rw [one_mul] at this
    rw [this, ha1]
  have key : ∀ (s : Finset ι) (g : Γ), {v | c v g ∉ K} ⊆ (s : Set ι) →
      a g = ∏ v ∈ s, a (c v g) := by
    intro s
    induction s using Finset.induction_on with
    | empty =>
      intro g hg
      have hgK : g ∈ K := (hK g).2 (fun v => by
        by_contra h
        simpa using hg h)
      simp [haK g hgK]
    | @insert v s hv ih =>
      intro g hg
      set g' := g * (c v g)⁻¹ with hg'
      have hcv : c v g' = 1 := by
        rw [hg', map_mul, map_inv, hidem, mul_inv_cancel]
      have hcw : ∀ w, w ≠ v → c w g' = c w g := by
        intro w hw
        rw [hg', map_mul, map_inv, horth v w g (Ne.symm hw), inv_one, mul_one]
      have hsupp : {w | c w g' ∉ K} ⊆ (s : Set ι) := by
        intro w hw
        simp only [Set.mem_setOf_eq] at hw
        by_cases hwv : w = v
        · subst hwv
          exact absurd (hcv ▸ K.one_mem) hw
        · rw [hcw w hwv] at hw
          have := hg hw
          simp only [Finset.coe_insert, Set.mem_insert_iff, Finset.mem_coe] at this
          exact this.resolve_left hwv
      have ih' := ih g' hsupp
      have hprod : ∏ w ∈ s, a (c w g') = ∏ w ∈ s, a (c w g) := by
        apply Finset.prod_congr rfl
        intro w hw
        rw [hcw w (fun h => hv (h ▸ hw))]
      have hsplit : g = g' * c v g := by
        rw [hg', inv_mul_cancel_right]
      have hag : a g = a g' * a (c v g) := by
        conv_lhs => rw [hsplit]
        exact hmul v g' (c v g) hcv (hidem v g)
      rw [hag, ih', hprod, Finset.prod_insert hv, mul_comm]
  intro g
  have hsub : Function.mulSupport (fun v => a (c v g)) ⊆ ((hfin g).toFinset : Set ι) := by
    intro w hw
    simp only [Set.Finite.coe_toFinset, Set.mem_setOf_eq]
    intro hwK
    exact hw (haK _ hwK)
  rw [finprod_eq_prod_of_mulSupport_subset _ hsub]
  exact key _ g (by simp)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightInvariantMulEqFinprodComponents =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InjectiveOfInnerEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InjectiveOfInnerEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivAtOfCfEqOne\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.LatIndexEqOneOfMem\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeckeRepresentativesRightTranslateIdentity\npublic import Mathlib.Analysis.CStarAlgebra.Module.Constructions\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumInnerEulerProductQuotientInjective\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasSumLocalEulerFactorHeckeOperators\npublic import Mathlib.Algebra.Group.End\npublic import Mathlib.Algebra.Group.Subgroup.Map\npublic import Mathlib.Basic.Finite.Defs\npublic import Mathlib.GroupTheory.Coset.Defs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientEquivRestrictedComponentFamilies\npublic import Mathlib.Algebra.BigOperators.Finprod\npublic import Mathlib.Algebra.Group.Subgroup.Defs\npublic import Mathlib.Basic.Complex.Basic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RightInvariantMulEqFinprodComponents\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaPairingInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.RawLift

namespace GlobalTheory.UpInj

theorem ops_exist : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (i : Fin D.R.m), TransLaws R i → ∃ B : GfC (Wc D i) → ((R.HW i (sg0 D A)).H →L[ℂ] (R.HW i (sg0 D A)).H), (∀ (γ : GfC (Wc D i)) x y, trPair R i (γ : GA D (Wc D i)) x y = ⟪x, B γ y⟫_ℂ) ∧ (∀ γ, ‖B γ‖ ≤ 1) ∧ B 1 = 1 ∧ ∀ γ k, k ∈ GlobalTheory.UpInj.KR R i → B (γ * k) = B γ := by
  intro D G _ _ Pl0 T A Ks _ _ _ R i hTL
  choose B hBn hBp using fun γ : GfC (Wc D i) => hTL.2.2.1 γ γ.2
  refine ⟨B, fun γ x y => hBp γ x y, hBn, ?_, ?_⟩
  · refine ContinuousLinearMap.ext fun y => ext_inner_left ℂ fun x => ?_
    rw [← hBp 1 x y, ContinuousLinearMap.one_apply]
    exact hTL.2.2.2.2.2 x y
  · intro γ k hk
    refine ContinuousLinearMap.ext fun y => ext_inner_left ℂ fun x => ?_
    rw [← hBp, ← hBp]
    have := hTL.2.2.2.1 γ γ.2 1 (Subgroup.one_mem _) k (Subgroup.mem_subgroupOf.1 hk) x y
    rwa [one_mul] at this

theorem coef_mult_small : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (i : Fin D.R.m) (t : T), FinMult R i t → LocSmall R i t → ∀ μ 𝓕, IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕 → (∀ v (g h : GfC (Wc D i)), GlobalTheory.UpInj.cf (Wc D i) v g = 1 → GlobalTheory.UpInj.cf (Wc D i) v h = h → coef R i t μ 𝓕 ((g * h : GfC (Wc D i)) : GA D (Wc D i)) = coef R i t μ 𝓕 g * coef R i t μ 𝓕 h) ∧ ∃ s : HeightOneSpectrum (𝓞 D.host.F) → ℝ, Summable s ∧ (∀ v, s v < 1) ∧ ∀ v (C : Finset (GfC (Wc D i))), (∀ g ∈ C, GlobalTheory.UpInj.cf (Wc D i) v g = g ∧ g ∉ GlobalTheory.UpInj.KR R i) → (∀ g ∈ C, ∀ g' ∈ C, g⁻¹ * g' ∈ GlobalTheory.UpInj.KR R i → g = g') → ∑ g ∈ C, ‖coef R i t μ 𝓕 g‖ ≤ s v := by
  intro D G _ _ Pl0 T A Ks _ _ _ R i t hFM hLS μ 𝓕 hμ
  refine ⟨fun v g h hg hh => ?_, ?_⟩
  · exact hFM μ 𝓕 hμ v _ (GlobalTheory.UpInj.isFinIdem_fE v) g g.2 (GlobalTheory.UpInj.trivAt_of_cf_eq_one _ v g hg) h
      ((GlobalTheory.UpInj.cf_eq_self_iff _ v h).1 hh)
  · obtain ⟨s, hs, hs1, hsb⟩ := hLS μ 𝓕 hμ
    refine ⟨s, hs, hs1, fun v C hC hCd => ?_⟩
    have := hsb v _ (GlobalTheory.UpInj.isFinIdem_fE v) (C.map (Function.Embedding.subtype _)) ?_ ?_
    · simpa [Finset.sum_map] using this
    · intro g hg
      obtain ⟨g, hgC, rfl⟩ := Finset.mem_map.1 hg
      exact ⟨(GlobalTheory.UpInj.cf_eq_self_iff _ v g).1 (hC g hgC).1, fun h => (hC g hgC).2 (Subgroup.mem_subgroupOf.2 h)⟩
    · intro g hg g' hg' hgg
      obtain ⟨g, hgC, rfl⟩ := Finset.mem_map.1 hg
      obtain ⟨g', hgC', rfl⟩ := Finset.mem_map.1 hg'
      refine congrArg _ (hCd g hgC g' hgC' (Subgroup.mem_subgroupOf.2 ?_))
      rw [Subgroup.coe_mul, Subgroup.coe_inv]
      exact hgg



theorem coef_biinv : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), Laws R F → ∀ i t, LevFix R i t → VecNe R i t → ∀ μ 𝓕, IsCovolOne (ratL (Wc D i) (Vc D i)) μ 𝓕 → (∀ g k k', k ∈ levW R i → k' ∈ levW R i → coef R i t μ 𝓕 (k * g * k') = coef R i t μ 𝓕 g) ∧ coef R i t μ 𝓕 1 = 1 := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F hL i t hLF hVN μ 𝓕 hμ
  have hv : ∀ k ∈ levW R i, R.ωP i t (1, k) (R.vP i t) = R.vP i t := fun k hk => by
    have := hLF k hk 1
    rwa [GlobalTheory.RawLift.Model.pureTensor_one] at this
  have hth : IsThetaFunO R.ψ (Vc D i) (Wc D i) (R.vP i t) := by
    have := hL.thP.pt_theta i t 1
    rwa [GlobalTheory.RawLift.Model.pureTensor_one] at this
  have hW := hL.thP.ωP i t
  refine ⟨fun g k k' hk hk' => ?_, GlobalTheory.RawLift.Model.coef_one R i t hVN μ 𝓕 hμ⟩
  rw [GlobalTheory.RawLift.Model.coef_mul_lev R i t hLF μ 𝓕 _ _ hk']
  unfold coef
  congr 1
  have e : R.ωP i t (1, k * g) = R.ωP i t (1, k) * R.ωP i t (1, g) := by rw [← map_mul]; simp
  rw [e, Module.End.mul_apply]
  calc thetaIP μ 𝓕 (R.ωP i t (1, k) (R.ωP i t (1, g) (R.vP i t))) (R.vP i t)
      = thetaIP μ 𝓕 (R.ωP i t (1, k) (R.ωP i t (1, g) (R.vP i t))) (R.ωP i t (1, k) (R.vP i t)) := by rw [hv k hk]
    _ = thetaIP μ 𝓕 (R.ωP i t (1, g) (R.vP i t)) (R.vP i t) :=
      GlobalTheory.WeilPairing.thetaInner_weilRep D R.ψ _ _ _ _ (R.ωP i t) μ 𝓕 hW hμ (1, k) _ _ (hW.om_pres _ _ hth) hth

theorem injective_of_inner_eq {E H : Type} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] (L : H →ₗ[ℂ] E) (W : H →L[ℂ] H) (a0 : ℝ) (ha0 : 0 < a0)
    (key : ∀ x y, ⟪L x, L y⟫_ℂ = (a0 : ℂ) * ⟪x, W y⟫_ℂ) (hW : Function.Injective W) : Function.Injective L := by
  have ha0' : (a0 : ℂ) ≠ 0 := by exact_mod_cast ha0.ne'
  have sym : ∀ x y, ⟪x, W y⟫_ℂ = ⟪W x, y⟫_ℂ := by
    intro x y
    have h2 : (a0 : ℂ) * ⟪x, W y⟫_ℂ = (a0 : ℂ) * ⟪W x, y⟫_ℂ := by
      rw [← key, ← inner_conj_symm, key, map_mul, Complex.conj_ofReal, inner_conj_symm]
    exact mul_left_cancel₀ ha0' h2
  intro x x' hxx'
  have hz : L (x - x') = 0 := by rw [map_sub, hxx', sub_self]
  have h3 := key (x - x') (W (x - x'))
  rw [hz, inner_zero_left] at h3
  have h4 : ⟪x - x', W (W (x - x'))⟫_ℂ = 0 := (mul_eq_zero.1 h3.symm).resolve_left ha0'
  rw [sym] at h4
  have hWz : W (x - x') = 0 := inner_self_eq_zero.1 h4
  exact sub_eq_zero.1 (hW (hWz.trans (map_zero W).symm))


theorem upInj_holds : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A), Laws R F → R.FullP → ∀ i t, FinSum R i t → FinMult R i t → LevFix R i t → VecNe R i t → LocSmall R i t → LevProd R i → TransLaws R i → UpInj R i t := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F hL _ i t hFS hFM hLF hVN hLS _ hTL
  classical
  obtain ⟨⟨p, hp⟩, -⟩ := (hL.thP.vP i t).1.2.norm
  obtain ⟨hinv, h1⟩ := coef_biinv D G Pl0 T A Ks R F hL i t hLF hVN p.1 p.2 hp
  obtain ⟨hmul, s, hs, hs1, hsm⟩ := coef_mult_small D G Pl0 T A Ks R i t hFM hLS p.1 p.2 hp
  obtain ⟨B, hB, hBn, hB1, hBK⟩ := ops_exist D G Pl0 T A Ks R i hTL
  obtain ⟨hrep, hhk⟩ := _root_.GlobalTheory.UpInj.heckeReps D G Pl0 T A Ks R i hTL B hB
  let a : GfC (Wc D i) → ℂ := fun g => coef R i t p.1 p.2 g
  have hmem := GlobalTheory.UpInj.kr_mem_iff R i
  have hfin := GlobalTheory.UpInj.kr_finite R i
  have hidem : ∀ v g, GlobalTheory.UpInj.cf (Wc D i) v (GlobalTheory.UpInj.cf (Wc D i) v g) = GlobalTheory.UpInj.cf (Wc D i) v g :=
    fun v g => GlobalTheory.UpInj.cf_cf (Wc D i) v g
  have horth : ∀ v w g, v ≠ w → GlobalTheory.UpInj.cf (Wc D i) w (GlobalTheory.UpInj.cf (Wc D i) v g) = 1 :=
    fun v w g h => GlobalTheory.UpInj.cf_orth (Wc D i) h g
  obtain ⟨e, he⟩ := _root_.GlobalTheory.quotient_equiv_restrictedFamilies _ (GlobalTheory.UpInj.KR R i) _ (GlobalTheory.UpInj.cf (Wc D i)) hmem hfin hidem horth
  have ha_bi : ∀ g k k', k ∈ GlobalTheory.UpInj.KR R i → k' ∈ GlobalTheory.UpInj.KR R i → a (k * g * k') = a g := by
    intro g k k' hk hk'
    exact hinv g k k' (Subgroup.mem_subgroupOf.1 hk) (Subgroup.mem_subgroupOf.1 hk')
  have ha_right : ∀ g k, k ∈ GlobalTheory.UpInj.KR R i → a (g * k) = a g := by
    intro g k hk
    have := ha_bi g 1 k (Subgroup.one_mem _) hk
    rwa [one_mul] at this
  have hfac := _root_.GlobalTheory.finprod_components_of_rightInvariant_mul _ _ _ _ a hmem hfin hidem horth ha_right h1 hmul
  have hloc := fun v => _root_.GlobalTheory.UpInj.localSum_hasSum _ (GlobalTheory.UpInj.KR R i) (GlobalTheory.UpInj.cf (Wc D i) v) _ a B (s v) (hidem v) ha_bi hBK hBn
    (hsm v) (hrep v) (hhk v)
  obtain ⟨W, hWi, hW⟩ := _root_.GlobalTheory.hasSum_inner_quotient_eulerProduct_injective _ (GlobalTheory.UpInj.KR R i) _ (GlobalTheory.UpInj.cf (Wc D i)) _ a B s e he hmem hidem horth ha_right h1 hfac
    hBn hB1 hBK hs hs1 hsm hloc
  intro th hth
  obtain ⟨a0, ha0, hsum⟩ := hFS th hth p.1 p.2 hp
  have ha0' : (a0 : ℂ) ≠ 0 := by exact_mod_cast ha0.ne'
  have key : ∀ x y, ⟪LinearMap.adjoint th x, LinearMap.adjoint th y⟫_ℂ = (a0 : ℂ) * ⟪x, W y⟫_ℂ := by
    intro x y
    have h2 := (hW x y).mul_left (a0 : ℂ)
    have e : (fun q : GfC (Wc D i) ⧸ GlobalTheory.UpInj.KR R i => (a0 : ℂ) * (a (Quotient.out q) * ⟪x, B (Quotient.out q) y⟫_ℂ)) =
        fun q => (a0 : ℂ) * (coef R i t p.1 p.2 (Quotient.out q : GfC (Wc D i)) *
          trPair R i (Quotient.out q : GfC (Wc D i)) x y) := by
      funext q; rw [hB]
    rw [e] at h2
    exact (hsum x y).unique h2
  exact injective_of_inner_eq _ W a0 ha0 key hWi

end GlobalTheory.UpInj

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.InjectiveOfInnerEq =====
