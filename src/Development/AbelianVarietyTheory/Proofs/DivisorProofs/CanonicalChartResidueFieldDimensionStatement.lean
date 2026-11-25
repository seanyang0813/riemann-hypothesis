module

public import Mathlib.NumberTheory.NumberField.Basic
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal
public import Mathlib.RingTheory.Ideal.Norm.AbsNorm
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBalBil
public import Mathlib.LinearAlgebra.Dimension.Finrank
public import Mathlib.LinearAlgebra.FreeModule.Basic
public import Mathlib.RingTheory.Finiteness.Defs
public import Mathlib.LinearAlgebra.Dimension.StrongRankCondition
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords
public import Development.AbelianVarietyTheory.Definitions.Divisors.GalRigidOfSurjective
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddEqOfTrBasis
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionOfIsEtaleCompletion
public import Mathlib.FieldTheory.FinTrdeg
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Topology.Sheaves.Init
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.GlActionMemBalFormsOfSemilinear
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.TotallySplit
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Linter.Style
import Mathlib.Algebra.Order.Star.Int
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosure
import Mathlib.RingTheory.KrullDimension.Field

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFreeSubmoduleFiniteIndexNumberField, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedIntBilinFormsEqOfFiniteIndex, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedIntBilinFormsPi, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulFinrankBalancedSymmIntBilinForms, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulFinrankBalancedSymmIntBilinFormsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedSymmIntBilinFormsEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddTrdegCompletionPolynomial, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddTrdegCompletionPolynomialStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimension, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimensionStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFreeSubmoduleFiniteIndexNumberField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFreeSubmoduleFiniteIndexNumberField", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\npublic import Mathlib.RingTheory.Ideal.Norm.AbsNorm\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\n\n"}
section -- clump:auto
@[expose] public section

open NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.PolFan

namespace GlobalTheory

theorem latt_free_sub_full_rank {E : Type} [Field E] [NumberField E] (X : Type) [AddCommGroup X]
    [Module (𝓞 E) X] [Module.Free ℤ X] [Module.Finite ℤ X] :
    ∃ (f : (Fin (Module.finrank (𝓞 E) X) → 𝓞 E) →ₗ[𝓞 E] X) (m : ℕ), 0 < m ∧
      Function.Injective f ∧ ∀ x : X, m • x ∈ LinearMap.range f := by
  classical
  haveI : Module.Finite (𝓞 E) X := Module.Finite.of_restrictScalars_finite ℤ (𝓞 E) X
  set r := Module.finrank (𝓞 E) X
  obtain ⟨e, he⟩ := exists_linearIndependent_of_le_finrank (R := 𝓞 E) (M := X) (le_refl r)
  let f : (Fin r → 𝓞 E) →ₗ[𝓞 E] X := Fintype.linearCombination (𝓞 E) e
  have hfv' : ∀ c : Fin r → 𝓞 E, f c = ∑ i, c i • e i := fun c => by
    simp [f, Fintype.linearCombination_apply]
  have hf : Function.Injective f := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro c hc
    rw [hfv'] at hc
    exact funext ((Fintype.linearIndependent_iff.mp he) c hc)

  have key : ∀ x : X, ∃ n : ℕ, 0 < n ∧ n • x ∈ LinearMap.range f := by
    intro x
    have hdep : ¬ LinearIndependent (𝓞 E) (Fin.cons x e : Fin (r + 1) → X) := by
      intro h
      have := h.fintype_card_le_finrank
      simp [r] at this
    rw [Fintype.not_linearIndependent_iff] at hdep
    obtain ⟨g, hg, i, hi⟩ := hdep
    rw [Fin.sum_univ_succ] at hg
    simp only [Fin.cons_zero, Fin.cons_succ] at hg
    have ha : g 0 ≠ 0 := by
      intro h0
      rw [h0, zero_smul, zero_add] at hg
      have hz := (Fintype.linearIndependent_iff.mp he) (fun j => g j.succ) hg
      refine hi ?_
      refine Fin.cases h0 (fun j => hz j) i
    have hax : g 0 • x ∈ LinearMap.range f := by
      refine ⟨fun j => - g j.succ, ?_⟩
      rw [hfv']
      simp only [neg_smul, Finset.sum_neg_distrib]
      exact (neg_eq_of_add_eq_zero_left hg)
    have hI : Ideal.span {g 0} ≠ ⊥ := by simpa using ha
    have hN : Ideal.absNorm (Ideal.span {g 0}) ≠ 0 := by
      rwa [Ne, Ideal.absNorm_eq_zero_iff]
    obtain ⟨b, hb⟩ := Ideal.mem_span_singleton'.mp (Ideal.absNorm_mem (Ideal.span {g 0}))
    refine ⟨Ideal.absNorm (Ideal.span {g 0}), Nat.pos_of_ne_zero hN, ?_⟩
    rw [← Nat.cast_smul_eq_nsmul (𝓞 E), ← hb, mul_smul]
    exact Submodule.smul_mem _ _ hax
  choose N hNpos hNmem using key
  obtain ⟨S, hS⟩ := Module.Finite.fg_top (R := ℤ) (M := X)
  refine ⟨f, ∏ s ∈ S, N s, Finset.prod_pos (fun s _ => hNpos s), hf, ?_⟩
  have hgen : ∀ s ∈ S, (∏ t ∈ S, N t) • s ∈ LinearMap.range f := by
    intro s hs
    obtain ⟨k, hk⟩ := Finset.dvd_prod_of_mem N hs
    rw [hk, mul_comm, mul_smul]
    exact AddSubmonoid.nsmul_mem (LinearMap.range f).toAddSubmonoid (hNmem s) k
  intro x
  have hx : x ∈ Submodule.span ℤ (S : Set X) := by rw [hS]; trivial
  induction hx using Submodule.span_induction with
  | mem y hy => exact hgen y hy
  | zero => simp
  | add y z _ _ hy hz => rw [smul_add]; exact add_mem hy hz
  | smul a y _ hy =>
    rw [smul_comm]
    exact zsmul_mem hy a

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFreeSubmoduleFiniteIndexNumberField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedIntBilinFormsEqOfFiniteIndex =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedIntBilinFormsEqOfFiniteIndex", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBalBil\npublic import Mathlib.LinearAlgebra.Dimension.Finrank\npublic import Mathlib.LinearAlgebra.FreeModule.Basic\npublic import Mathlib.RingTheory.Finiteness.Defs\nimport Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.GlActionMemBalFormsOfSemilinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\npublic import Mathlib.LinearAlgebra.Dimension.StrongRankCondition\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\n\n"}
section -- clump:auto
@[expose] public section

open NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.PolFan

noncomputable section

namespace GlobalTheory.BalRank

theorem finrank_balBil_le_of_smul_mem_range {O : Type} [CommRing O] (bar : O → O) (X Y : Type)
    [AddCommGroup X] [Module O X] [Module.Free ℤ X] [Module.Finite ℤ X]
    [AddCommGroup Y] [Module O Y] [Module.Free ℤ Y] [Module.Finite ℤ Y]
    (f : Y →ₗ[O] X) (m : ℕ) (hm : 0 < m) (hf : ∀ x : X, m • x ∈ LinearMap.range f) :
    Module.finrank ℤ (balBil bar X) ≤ Module.finrank ℤ (balBil bar Y) := by
  let f' : Y →ₗ[ℤ] X := f.toAddMonoidHom.toIntLinearMap
  have hf' : ∀ y, f' y = f y := fun y => rfl
  let Φ : balBil bar X →ₗ[ℤ] balBil bar Y :=
    { toFun := fun β => ⟨(β : LinearMap.BilinForm ℤ X).compl₁₂ f' f', by
        intro a y z
        have := β.2 a (f y) (f z)
        simpa [hf', LinearMap.compl₁₂_apply, map_smul] using this⟩
      map_add' := fun β β' => by ext; simp
      map_smul' := fun n β => by ext; simp }
  have hinj : Function.Injective Φ := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro β hβ
    ext x x'
    obtain ⟨y, hy⟩ := hf x
    obtain ⟨y', hy'⟩ := hf x'
    have h0 : (β : LinearMap.BilinForm ℤ X) (f y) (f y') = 0 := by
      have := congrArg (fun γ : balBil bar Y => (γ : LinearMap.BilinForm ℤ Y) y y') hβ
      simpa [Φ, hf'] using this
    rw [hy, hy'] at h0
    have h1 : ((m : ℤ) * m) * (β : LinearMap.BilinForm ℤ X) x x' = 0 := by
      rw [← h0]
      simp only [map_nsmul, LinearMap.smul_apply, nsmul_eq_mul]
      ring
    have hm' : ((m : ℤ) * m) ≠ 0 := by positivity
    simpa using (mul_eq_zero.mp h1).resolve_left hm'
  exact LinearMap.finrank_le_finrank_of_injective hinj

theorem finrank_balBil_eq_of_finiteIndex {O : Type} [CommRing O] (bar : O → O) (X Y : Type)
    [AddCommGroup X] [Module O X] [Module.Free ℤ X] [Module.Finite ℤ X]
    [AddCommGroup Y] [Module O Y] [Module.Free ℤ Y] [Module.Finite ℤ Y]
    (f : Y →ₗ[O] X) (m : ℕ) (hm : 0 < m) (hf : Function.Injective f)
    (hr : ∀ x : X, m • x ∈ LinearMap.range f) :
    Module.finrank ℤ (balBil bar Y) = Module.finrank ℤ (balBil bar X) := by
  let e := LinearEquiv.ofInjective f hf
  let c : X →ₗ[O] LinearMap.range f :=
    LinearMap.codRestrict (LinearMap.range f) (m • LinearMap.id) (fun x => by simpa using hr x)
  let g : X →ₗ[O] Y := e.symm.toLinearMap ∘ₗ c
  have hfg : ∀ x, f (g x) = m • x := by
    intro x
    have h1 : e (g x) = c x := by simp [g]
    have h2 := congrArg Subtype.val h1
    simpa [e, c] using h2
  have hgf : ∀ y, g (f y) = m • y := by
    intro y; apply hf; rw [hfg, map_nsmul]
  apply le_antisymm
  · exact finrank_balBil_le_of_smul_mem_range bar Y X g m hm (fun y => ⟨f y, hgf y⟩)
  · exact finrank_balBil_le_of_smul_mem_range bar X Y f m hm hr

end GlobalTheory.BalRank
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedIntBilinFormsEqOfFiniteIndex =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedIntBilinFormsPi =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedIntBilinFormsPi", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBalBil\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\n\n"}
section -- clump:auto
@[expose] public section

open NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.PolFan

noncomputable section

namespace GlobalTheory.BalRank

variable {E : Type} [Field E] [NumberField E] [IsCMField E] (H : Host E) (J : Type) [Fintype J] [DecidableEq J]

def formOfFamily (φ : J → J → (𝓞 E →ₗ[ℤ] ℤ)) : LinearMap.BilinForm ℤ (J → 𝓞 E) :=
  LinearMap.mk₂ ℤ (fun y z => ∑ i, ∑ j, φ i j (H.bar (y i) * z j))
    (by intro y y' z; simp [map_add (f := _), add_mul, Finset.sum_add_distrib])
    (by intro c y z; simp only [Pi.smul_apply, map_zsmul, smul_mul_assoc, Finset.smul_sum])
    (by intro y z z'; simp [map_add (f := _), mul_add, Finset.sum_add_distrib])
    (by intro c y z; simp only [Pi.smul_apply, map_zsmul, mul_smul_comm, Finset.smul_sum])

theorem formOfFamily_apply (φ : J → J → (𝓞 E →ₗ[ℤ] ℤ)) (y z : J → 𝓞 E) :
    formOfFamily H J φ y z = ∑ i, ∑ j, φ i j (H.bar (y i) * z j) := rfl

theorem formOfFamily_mem (φ : J → J → (𝓞 E →ₗ[ℤ] ℤ)) : formOfFamily H J φ ∈ balBil H.bar (J → 𝓞 E) := by
  intro a y z
  simp only [formOfFamily_apply, Pi.smul_apply, smul_eq_mul, map_mul]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring_nf

def balBilEquiv : balBil H.bar (J → 𝓞 E) ≃ₗ[ℤ] (J → J → (𝓞 E →ₗ[ℤ] ℤ)) where
  toFun β := fun i j => (β.1 (Pi.single i 1)) ∘ₗ LinearMap.single ℤ (fun _ : J => 𝓞 E) j
  map_add' β β' := by ext; simp
  map_smul' c β := by ext; simp
  invFun φ := ⟨formOfFamily H J φ, formOfFamily_mem H J φ⟩
  left_inv β := by
    apply Subtype.ext
    refine LinearMap.ext₂ fun y z => ?_
    simp only [formOfFamily_apply, LinearMap.coe_comp, Function.comp_apply, LinearMap.coe_single]
    have hy : y = ∑ i, y i • (Pi.single i (1 : 𝓞 E) : J → 𝓞 E) := by
      conv_lhs => rw [← Finset.univ_sum_single y]
      refine Finset.sum_congr rfl fun i _ => ?_
      ext k
      rcases eq_or_ne k i with rfl | h <;> simp [*]
    conv_rhs => rw [hy]

    rw [map_sum, LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [β.2 (y i) (Pi.single i 1) z]
    conv_rhs => rw [← Finset.univ_sum_single (H.bar (y i) • z)]

    rw [map_sum]
    rfl
  right_inv φ := by
    funext i j
    refine LinearMap.ext fun c => ?_
    simp only [formOfFamily_apply, LinearMap.coe_comp, Function.comp_apply, LinearMap.coe_single]
    rw [Finset.sum_eq_single i, Finset.sum_eq_single j]
    · simp
    · intro j' _ hj; simp [hj]
    · simp
    · intro i' _ hi; simp [Pi.single_apply, hi]
    · simp

theorem finrank_balBil_pi : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] (H : Host E) (J : Type) [Fintype J]
    [DecidableEq J], Module.finrank ℤ (GlobalTheory.BalRank.balBil H.bar (J → 𝓞 E)) =
      Module.finrank ℚ E * Fintype.card J * Fintype.card J := by
  intro E _ _ _ H J _ _
  rw [(balBilEquiv H J).finrank_eq, Module.finrank_pi_fintype]
  simp only [Module.finrank_pi_fintype, Module.finrank_linearMap, Module.finrank_self, mul_one,
    NumberField.RingOfIntegers.rank, Finset.sum_const, Finset.card_univ, smul_eq_mul]
  ring

end GlobalTheory.BalRank
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedIntBilinFormsPi =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulFinrankBalancedSymmIntBilinForms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulFinrankBalancedSymmIntBilinForms", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBalBil\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\nimport Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.GlActionMemBalFormsOfSemilinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.PolFan

noncomputable section

namespace GlobalTheory.BalRankSym

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

alias host_bar_bar := _root_.GlobalTheory.HostModel.bar_bar

alias host_bar_rt := _root_.GlobalTheory.HostModel.bar_rt

variable (H : Host E) (X : Type) [AddCommGroup X] [Module (𝓞 E) X]

def rtMul : X →ₗ[ℤ] X := (DistribSMul.toAddMonoidHom X H.rt).toIntLinearMap

variable {H X}

theorem rtMul_apply (y : X) : rtMul H X y = H.rt • y := rfl

theorem rt_smul_rt_smul (y : X) : H.rt • H.rt • y = -((H.d : ℤ) • y) := by
  rw [smul_smul, ← sq, H.rt_sq, neg_smul, ← Int.cast_natCast, Int.cast_smul_eq_zsmul]

theorem flip_mem_balBil {β : LinearMap.BilinForm ℤ X} (hβ : β ∈ GlobalTheory.BalRank.balBil H.bar X) :
    β.flip ∈ GlobalTheory.BalRank.balBil H.bar X := by
  intro a y z
  show β z (a • y) = β (H.bar a • z) y
  rw [hβ (H.bar a) z y, host_bar_bar]

theorem comp_rt_mem_balBil {β : LinearMap.BilinForm ℤ X} (hβ : β ∈ GlobalTheory.BalRank.balBil H.bar X) :
    β ∘ₗ rtMul H X ∈ GlobalTheory.BalRank.balBil H.bar X := by
  intro a y z
  simp only [LinearMap.comp_apply, rtMul_apply]
  rw [smul_comm, hβ]

theorem comp_rt_antisymm {β : LinearMap.BilinForm ℤ X} (hβ : β ∈ GlobalTheory.BalRank.balBil H.bar X)
    (hs : ∀ y z, β y z = β z y) (y z : X) : β (H.rt • y) z = -β (H.rt • z) y := by
  rw [hβ, host_bar_rt, neg_smul, map_neg, hs]

theorem comp_rt_symm {β : LinearMap.BilinForm ℤ X} (hβ : β ∈ GlobalTheory.BalRank.balBil H.bar X)
    (hs : ∀ y z, β y z = -β z y) (y z : X) : β (H.rt • y) z = β (H.rt • z) y := by
  rw [hβ, host_bar_rt, neg_smul, map_neg, hs, neg_neg]

end GlobalTheory.BalRankSym

namespace GlobalTheory.BalRankSym

variable {E : Type} [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Type) [AddCommGroup X] [Module (𝓞 E) X]

def symPart : GlobalTheory.BalRank.balBil H.bar X →ₗ[ℤ] balForms H.bar X where
  toFun β := ⟨β.1 + β.1.flip, fun y z => by simp [add_comm], fun a y z => by
    have h1 := β.2 a y z
    have h2 := flip_mem_balBil β.2 a y z
    simp only [LinearMap.add_apply]
    rw [h1, h2]⟩
  map_add' β γ := by
    apply Subtype.ext
    ext y z
    simp only [Submodule.coe_add, LinearMap.add_apply, LinearMap.BilinForm.flip_apply]
    ring
  map_smul' n β := by
    apply Subtype.ext
    ext y z
    simp only [SetLike.val_smul, LinearMap.add_apply, LinearMap.smul_apply, LinearMap.BilinForm.flip_apply, RingHom.id_apply, smul_eq_mul]
    ring

def antiPart : GlobalTheory.BalRank.balBil H.bar X →ₗ[ℤ] balForms H.bar X where
  toFun β := ⟨(β.1 - β.1.flip) ∘ₗ rtMul H X,
    fun y z => by
      have hm : β.1 - β.1.flip ∈ GlobalTheory.BalRank.balBil H.bar X := sub_mem β.2 (flip_mem_balBil β.2)
      have := comp_rt_symm hm (fun y z => by simp) y z
      simpa [rtMul_apply] using this,
    comp_rt_mem_balBil (sub_mem β.2 (flip_mem_balBil β.2))⟩
  map_add' β γ := by
    apply Subtype.ext
    ext y z
    simp only [Submodule.coe_add, LinearMap.comp_apply, LinearMap.sub_apply, LinearMap.add_apply, LinearMap.BilinForm.flip_apply]
    ring
  map_smul' n β := by
    apply Subtype.ext
    ext y z
    simp only [SetLike.val_smul, LinearMap.comp_apply, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.BilinForm.flip_apply,
      RingHom.id_apply, smul_eq_mul]
    ring

def symIncl : balForms H.bar X →ₗ[ℤ] GlobalTheory.BalRank.balBil H.bar X where
  toFun s := ⟨s.1, s.2.2⟩
  map_add' s t := rfl
  map_smul' n t := rfl

def rtPart : balForms H.bar X →ₗ[ℤ] GlobalTheory.BalRank.balBil H.bar X where
  toFun t := ⟨t.1 ∘ₗ rtMul H X, comp_rt_mem_balBil t.2.2⟩
  map_add' s t := by
    apply Subtype.ext
    ext y z
    simp
  map_smul' n t := by
    apply Subtype.ext
    ext y z
    simp

variable {H X}

theorem symPart_antiPart_injective :
    Function.Injective (LinearMap.prod (symPart H X) (antiPart H X)) := by
  rw [← LinearMap.ker_eq_bot, Submodule.eq_bot_iff]
  intro β hβ
  rw [LinearMap.mem_ker, LinearMap.prod_apply, Prod.mk_eq_zero] at hβ
  obtain ⟨h1, h2⟩ := hβ
  have e1 : ∀ y z, β.1 y z + β.1 z y = 0 := fun y z => by
    have := congrArg (fun γ : balForms H.bar X => γ.1 y z) h1
    simpa [symPart] using this
  have e2 : ∀ y z, β.1 (H.rt • y) z - β.1 z (H.rt • y) = 0 := fun y z => by
    have := congrArg (fun γ : balForms H.bar X => γ.1 y z) h2
    simpa [antiPart, rtMul_apply] using this
  have hd : (H.d : ℤ) ≠ 0 := by exact_mod_cast H.d_prime.ne_zero
  have e3 : ∀ y z, β.1 y z - β.1 z y = 0 := fun y z => by
    have := e2 (H.rt • y) z
    rw [rt_smul_rt_smul, map_neg, map_zsmul, LinearMap.neg_apply, LinearMap.smul_apply, map_neg, map_zsmul] at this
    simp only [smul_eq_mul] at this
    have : (H.d : ℤ) * (β.1 y z - β.1 z y) = 0 := by linear_combination -this
    exact (mul_eq_zero.1 this).resolve_left hd
  apply Subtype.ext
  ext y z
  have := e1 y z
  have := e3 y z
  simp only [ZeroMemClass.coe_zero, LinearMap.zero_apply]
  omega

theorem symIncl_rtPart_injective :
    Function.Injective (LinearMap.coprod (symIncl H X) (rtPart H X)) := by
  rw [← LinearMap.ker_eq_bot, Submodule.eq_bot_iff]
  rintro ⟨s, t⟩ hst
  rw [LinearMap.mem_ker, LinearMap.coprod_apply] at hst
  have e : ∀ y z, s.1 y z + t.1 (H.rt • y) z = 0 := fun y z => by
    have := congrArg (fun γ : GlobalTheory.BalRank.balBil H.bar X => γ.1 y z) hst
    simpa [symIncl, rtPart, rtMul_apply, Submodule.coe_inclusion] using this
  have hd : (H.d : ℤ) ≠ 0 := by exact_mod_cast H.d_prime.ne_zero
  have et : ∀ y z, t.1 (H.rt • y) z = 0 := fun y z => by
    have a1 := e y z
    have a2 := e z y
    have a3 := s.2.1 y z
    have a4 := comp_rt_antisymm t.2.2 t.2.1 y z
    omega
  have ht : ∀ y z, t.1 y z = 0 := fun y z => by
    have := et (H.rt • y) z
    rw [rt_smul_rt_smul, map_neg, map_zsmul, LinearMap.neg_apply, LinearMap.smul_apply] at this
    simp only [smul_eq_mul] at this
    have : (H.d : ℤ) * t.1 y z = 0 := by linear_combination -this
    exact (mul_eq_zero.1 this).resolve_left hd
  have hs : ∀ y z, s.1 y z = 0 := fun y z => by
    have := e y z
    rw [et] at this
    omega
  simp only [Prod.mk_eq_zero]
  exact ⟨Subtype.ext (LinearMap.ext fun y => LinearMap.ext fun z => hs y z),
    Subtype.ext (LinearMap.ext fun y => LinearMap.ext fun z => ht y z)⟩

theorem two_mul_finrank_balForms (H : Host E) (X : Type) [AddCommGroup X] [Module (𝓞 E) X] [Module.Free ℤ X]
    [Module.Finite ℤ X] :
    2 * Module.finrank ℤ (balForms H.bar X) = Module.finrank ℤ (GlobalTheory.BalRank.balBil H.bar X) := by
  have h1 := LinearMap.finrank_le_finrank_of_injective (symPart_antiPart_injective (H := H) (X := X))
  have h2 := LinearMap.finrank_le_finrank_of_injective (symIncl_rtPart_injective (H := H) (X := X))
  rw [Module.finrank_prod] at h1 h2
  omega

end GlobalTheory.BalRankSym
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulFinrankBalancedSymmIntBilinForms =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulFinrankBalancedSymmIntBilinFormsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulFinrankBalancedSymmIntBilinFormsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBalBil\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulFinrankBalancedSymmIntBilinForms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.PolFan

theorem _root_.GlobalTheory.T.two_mul_finrank_balancedSymmIntBilinForms : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Type) [AddCommGroup X] [Module (𝓞 E) X] [Module.Free ℤ X] [Module.Finite ℤ X], 2 * Module.finrank ℤ (balForms H.bar X) = Module.finrank ℤ (GlobalTheory.BalRank.balBil H.bar X) := by
  first | exact @GlobalTheory.BalRankSym.two_mul_finrank_balForms
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulFinrankBalancedSymmIntBilinFormsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedSymmIntBilinFormsEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedSymmIntBilinFormsEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFreeSubmoduleFiniteIndexNumberField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBalBil\npublic import Mathlib.LinearAlgebra.Dimension.Finrank\npublic import Mathlib.LinearAlgebra.FreeModule.Basic\npublic import Mathlib.RingTheory.Finiteness.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedIntBilinFormsEqOfFiniteIndex\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedIntBilinFormsPi\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulFinrankBalancedSymmIntBilinFormsStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

theorem GlobalTheory.BalRank.finrank_balForms : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] (H : Host E) (X : Type) [AddCommGroup X] [Module (𝓞 E) X] [Module.Free ℤ X] [Module.Finite ℤ X], Module.finrank ℤ (balForms H.bar X) = Module.finrank ℚ E / 2 * Module.finrank (𝓞 E) X * Module.finrank (𝓞 E) X := by
  intro E _ _ _ H X _ _ _ _
  obtain ⟨f, m, hm, hf, hmf⟩ := _root_.GlobalTheory.latt_free_sub_full_rank (E := E) X
  have h1 := GlobalTheory.T.two_mul_finrank_balancedSymmIntBilinForms H X
  have h2 := _root_.GlobalTheory.BalRank.finrank_balBil_eq_of_finiteIndex H.bar X _ f m hm hf hmf
  have h3 := _root_.GlobalTheory.BalRank.finrank_balBil_pi H (Fin (Module.finrank (𝓞 E) X))
  rw [Fintype.card_fin] at h3
  obtain ⟨k, hk⟩ : 2 ∣ Module.finrank ℚ E := ⟨_, IsTotallyComplex.finrank E⟩
  rw [hk, Nat.mul_div_cancel_left _ two_pos]
  rw [← h2, h3, hk] at h1
  nlinarith [h1]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedSymmIntBilinFormsEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddTrdegCompletionPolynomial =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddTrdegCompletionPolynomial", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GalRigidOfSurjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddEqOfTrBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothOfRelativeDimensionOfIsEtaleCompletion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\npublic import Mathlib.FieldTheory.FinTrdeg\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.CDimAlg

theorem trdeg_lt_aleph0_of_essFiniteType (F W : Type) [Field F] [CommRing W] [IsDomain W] [Algebra F W]
    [Algebra.EssFiniteType F W] : Algebra.trdeg F W < Cardinal.aleph0 := by
  set W₀ := Algebra.EssFiniteType.subalgebra F W
  haveI : FaithfulSMul W₀ W := (faithfulSMul_iff_algebraMap_injective _ _).2 Subtype.val_injective
  haveI : Algebra.IsAlgebraic W₀ W := IsLocalization.isAlgebraic W (Algebra.EssFiniteType.submonoid F W)
  have h := trdeg_add_eq F W₀ (A := W)
  rw [trdeg_eq_zero (R := W₀) (A := W), add_zero] at h
  rw [← h]
  exact trdeg_lt_aleph0_of_finiteType

theorem exists_nat_of_add_eq {d : WithBot ℕ∞} {n m : ℕ} (h : d + n = m) : ∃ k : ℕ, d = k ∧ k + n = m := by
  induction d using WithBot.recBotCoe with
  | bot => simp at h
  | coe e =>
    induction e using ENat.recTopCoe with
    | top =>
      exfalso
      have h' : ((⊤ + n : ℕ∞) : WithBot ℕ∞) = ((m : ℕ∞) : WithBot ℕ∞) := by exact_mod_cast h
      rw [WithBot.coe_inj, top_add] at h'
      exact ENat.top_ne_natCast m h'
    | coe k =>
      refine ⟨k, rfl, ?_⟩
      exact_mod_cast h

end GlobalTheory.CDimAlg

namespace GlobalTheory.CDimAlg

theorem ringKrullDim_add_trdeg_of_isComplAt : ∀ (F W R : Type) [Field F] [CommRing W] [IsDomain W] [IsLocalRing W] [CommRing R] [IsLocalRing R] (b : F →+* W), b.EssFiniteType → ∀ (I : Type) [Fintype I] (ψ : MvPolynomial I W →+* R), GlobalTheory.TChart.IsComplAt ψ → IsLocalHom (ψ.comp MvPolynomial.C) → ∀ bR : F →+* R, (ψ.comp MvPolynomial.C).comp b = bR → ((residue R).comp bR).EssFiniteType ∧ ∀ a t : ℕ, ringKrullDim W = a → (letI := ((residue W).comp b).toAlgebra; Algebra.trdeg F (ResidueField W) = t) → ∃ a' t' : ℕ, ringKrullDim R = a' ∧ (letI := ((residue R).comp bR).toAlgebra; Algebra.trdeg F (ResidueField R) = t') ∧ a' + t' = a + t + Fintype.card I := by
  intro F W R _ _ _ _ _ _ b hb I _ ψ hψ hloc bR hbR
  obtain ⟨hRn, -, hfl, hmap, hres⟩ := hψ
  letI : Algebra F W := b.toAlgebra
  haveI : Algebra.EssFiniteType F W := hb
  haveI : IsNoetherianRing W := Algebra.EssFiniteType.isNoetherianRing F W
  set q : Ideal (MvPolynomial I W) := (maximalIdeal R).comap ψ with hq
  haveI : q.IsPrime := Ideal.comap_isPrime ψ _
  have hmemq : ∀ x, x ∈ q ↔ ¬ IsUnit (ψ x) := fun x => by
    rw [hq, Ideal.mem_comap, mem_maximalIdeal, mem_nonunits_iff]
  have hu : ∀ s : q.primeCompl, IsUnit (ψ s) := fun s => by
    have h := s.2
    rw [Ideal.mem_primeCompl_iff, hmemq, not_not] at h
    exact h
  let ψA : Localization.AtPrime q →+* R := IsLocalization.lift hu
  have hψA' : ∀ x, ψA (algebraMap _ (Localization.AtPrime q) x) = ψ x := fun x => IsLocalization.lift_eq hu x
  have hψA : ψA.comp (algebraMap _ (Localization.AtPrime q)) = ψ := RingHom.ext hψA'
  haveI hlocA : IsLocalHom ψA := by
    refine ⟨fun x hx => ?_⟩
    obtain ⟨⟨p, s⟩, rfl⟩ := IsLocalization.mk'_surjective q.primeCompl x
    have e1 := IsLocalization.mk'_spec (Localization.AtPrime q) p s
    have hp : IsUnit (ψ p) := by
      rw [← hψA', ← e1, map_mul, hψA']
      exact hx.mul (hu s)
    have hpq : p ∈ q.primeCompl := by
      rw [Ideal.mem_primeCompl_iff, hmemq, not_not]; exact hp
    have h2 : IsUnit (algebraMap _ (Localization.AtPrime q) p) := IsLocalization.map_units _ ⟨p, hpq⟩
    rw [← e1] at h2
    exact isUnit_of_mul_isUnit_left h2
  letI : Algebra (MvPolynomial I W) R := ψ.toAlgebra
  letI : Algebra (Localization.AtPrime q) R := ψA.toAlgebra
  haveI : IsScalarTower (MvPolynomial I W) (Localization.AtPrime q) R :=
    IsScalarTower.of_algebraMap_eq (fun x => (hψA' x).symm)
  haveI : Module.Flat (MvPolynomial I W) R := hfl
  haveI : Module.Flat (Localization.AtPrime q) R :=
    (Module.flat_iff_of_isLocalization (Localization.AtPrime q) q.primeCompl R).2 inferInstance
  haveI : IsNoetherianRing (Localization.AtPrime q) :=
    IsLocalization.isNoetherianRing q.primeCompl _ inferInstance
  haveI : IsNoetherianRing R := hRn
  haveI : IsLocalHom (algebraMap (Localization.AtPrime q) R) := hlocA
  have hmA : (maximalIdeal (Localization.AtPrime q)).map (algebraMap (Localization.AtPrime q) R) = maximalIdeal R := by
    rw [← Localization.AtPrime.map_eq_maximalIdeal, Ideal.map_map]
    change q.map (ψA.comp (algebraMap _ (Localization.AtPrime q))) = _
    rw [hψA]; exact hmap
  have hdim : ringKrullDim (Localization.AtPrime q) = ringKrullDim R :=
    GlobalTheory.RegSmooth.ringKrullDim_eq_of_flat_of_map_maximalIdeal hmA

  let κ : ResidueField (Localization.AtPrime q) →+* ResidueField R := ResidueField.map ψA
  have hκs : Function.Surjective κ := by
    intro y
    obtain ⟨r, rfl⟩ := residue_surjective y
    obtain ⟨a, c, hc, hr⟩ := hres r
    have hcq : c ∈ q.primeCompl := by rw [Ideal.mem_primeCompl_iff, hmemq, not_not]; exact hc
    refine ⟨residue _ (IsLocalization.mk' (Localization.AtPrime q) a ⟨c, hcq⟩), ?_⟩
    have e1 : ψA (IsLocalization.mk' (Localization.AtPrime q) a ⟨c, hcq⟩) * ψ c = ψ a := by
      rw [← hψA' c, ← map_mul, IsLocalization.mk'_spec, hψA']
    have e2 : residue R (r * ψ c) = residue R (ψ a) := Ideal.Quotient.eq.2 hr
    have hne : residue R (ψ c) ≠ 0 := (residue_ne_zero_iff_isUnit _).2 hc
    change residue R (ψA _) = residue R r
    refine mul_right_cancel₀ hne ?_
    rw [← map_mul, e1, ← e2, map_mul]
  let e : ResidueField (Localization.AtPrime q) ≃+* ResidueField R := RingEquiv.ofBijective κ ⟨κ.injective, hκs⟩
  have hcomp : ∀ x : F, e (residue _ (algebraMap F (Localization.AtPrime q) x)) = residue R (bR x) := by
    intro x
    change residue R (ψA _) = _
    rw [IsScalarTower.algebraMap_apply F (MvPolynomial I W) (Localization.AtPrime q), hψA', ← hbR]
    rfl
  haveI : Algebra.EssFiniteType F (MvPolynomial I W) := Algebra.EssFiniteType.comp F W _
  haveI : Algebra.EssFiniteType (MvPolynomial I W) (Localization.AtPrime q) :=
    Algebra.EssFiniteType.of_isLocalization _ q.primeCompl
  haveI hAft : Algebra.EssFiniteType F (Localization.AtPrime q) :=
    Algebra.EssFiniteType.comp F (MvPolynomial I W) _
  have hresA : ((residue (Localization.AtPrime q)).comp (algebraMap F (Localization.AtPrime q))).EssFiniteType :=
    RingHom.EssFiniteType.comp (RingHom.essFiniteType_algebraMap.2 hAft)
      (RingHom.FiniteType.of_surjective _ residue_surjective).essFiniteType
  have hRe : (residue R).comp bR =
      e.toRingHom.comp ((residue (Localization.AtPrime q)).comp (algebraMap F (Localization.AtPrime q))) :=
    RingHom.ext fun x => (hcomp x).symm
  refine ⟨?_, ?_⟩
  · rw [hRe]
    exact RingHom.EssFiniteType.comp hresA (RingHom.FiniteType.of_surjective _ e.surjective).essFiniteType
  intro a t ha ht

  obtain ⟨mW, hmW⟩ : ∃ m : ℕ, Algebra.trdeg F W = m :=
    Cardinal.lt_aleph0.1 (trdeg_lt_aleph0_of_essFiniteType F W)
  have hW : ringKrullDim W + t = mW := by
    letI : Algebra F (ResidueField W) := ((residue W).comp b).toAlgebra
    haveI : IsScalarTower F W (ResidueField W) := IsScalarTower.of_algebraMap_eq' rfl
    exact GlobalTheory.LocModelDim.ringKrullDim_add_trdeg (k := F) (R := W) (Ω := ResidueField W) residue_surjective ht hmW

  haveI : FaithfulSMul F W := (faithfulSMul_iff_algebraMap_injective _ _).2 b.injective
  haveI : FaithfulSMul W (MvPolynomial I W) :=
    (faithfulSMul_iff_algebraMap_injective _ _).2 (MvPolynomial.C_injective I W)
  have hP : Algebra.trdeg F (MvPolynomial I W) = ((mW + Fintype.card I : ℕ) : Cardinal) := by
    rw [← trdeg_add_eq F W (A := MvPolynomial I W), MvPolynomial.trdeg_of_isDomain, hmW, Cardinal.lift_id,
      Cardinal.mk_fintype]
    push_cast; rfl
  haveI : FaithfulSMul (MvPolynomial I W) (Localization.AtPrime q) :=
    (faithfulSMul_iff_algebraMap_injective _ _).2 (IsLocalization.injective _ q.primeCompl_le_nonZeroDivisors)
  haveI : Algebra.IsAlgebraic (MvPolynomial I W) (Localization.AtPrime q) :=
    IsLocalization.isAlgebraic _ q.primeCompl
  have hA : Algebra.trdeg F (Localization.AtPrime q) = ((mW + Fintype.card I : ℕ) : Cardinal) := by
    rw [← trdeg_add_eq F (MvPolynomial I W) (A := Localization.AtPrime q),
      trdeg_eq_zero (R := MvPolynomial I W) (A := Localization.AtPrime q), add_zero, hP]

  letI alA : Algebra F (ResidueField (Localization.AtPrime q)) :=
    ((residue (Localization.AtPrime q)).comp (algebraMap F (Localization.AtPrime q))).toAlgebra
  haveI : IsScalarTower F (Localization.AtPrime q) (ResidueField (Localization.AtPrime q)) :=
    IsScalarTower.of_algebraMap_eq' rfl
  haveI : Algebra.EssFiniteType F (ResidueField (Localization.AtPrime q)) := hresA
  obtain ⟨tA, htA⟩ : ∃ m : ℕ, Algebra.trdeg F (ResidueField (Localization.AtPrime q)) = m :=
    Cardinal.lt_aleph0.1 (trdeg_lt_aleph0 F (ResidueField (Localization.AtPrime q)))
  have hAf := GlobalTheory.LocModelDim.ringKrullDim_add_trdeg (k := F) (R := Localization.AtPrime q)
    (Ω := ResidueField (Localization.AtPrime q)) residue_surjective htA hA
  obtain ⟨k, hk, hkt⟩ := exists_nat_of_add_eq hAf
  letI alR : Algebra F (ResidueField R) := ((residue R).comp bR).toAlgebra
  let eA : ResidueField (Localization.AtPrime q) ≃ₐ[F] ResidueField R := { e with commutes' := fun x => hcomp x }
  refine ⟨k, tA, by rw [← hdim, hk], by rw [← eA.trdeg_eq, htA], ?_⟩
  obtain ⟨a0, ha0, ha0t⟩ := exists_nat_of_add_eq hW
  rw [ha] at ha0
  have : a = a0 := by exact_mod_cast ha0
  omega

end GlobalTheory.CDimAlg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddTrdegCompletionPolynomial =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddTrdegCompletionPolynomialStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddTrdegCompletionPolynomialStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GalRigidOfSurjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddTrdegCompletionPolynomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsMonoFamNontrivial\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddTrdegCompletionPolynomialStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.SumMulEqZeroOfSumToReal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinrankBalancedSymmIntBilinFormsEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingKrullDimAddTrdegCompletionPolynomialStatement\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.KrullDimension.Field\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.UCanon

theorem canon_residue_dim : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H} (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E)), ∀ {k : Type} [Field k] {m e : ℕ} (C : MonoFam Xo c φ (ChartRing k m e)), Canon C → ((residue (ChartRing k m e)).comp C.b).EssFiniteType ∧ (letI := ((residue (ChartRing k m e)).comp C.b).toAlgebra; ((m + e : ℕ) : Cardinal) + Algebra.trdeg c.F (ResidueField (ChartRing k m e)) = Dw.dim) := by
  intro E _ _ _ H Dw l Xo c φ k _ m e C hC
  obtain ⟨h1, h2⟩ := _root_.GlobalTheory.CDimAlg.ringKrullDim_add_trdeg_of_isComplAt c.F hC.L.W (ChartRing k m e) hC.L.b hC.L.ft (Fin C.m ⊕ Fin hC.N) hC.ψ hC.compl hC.ψ_loc
    C.b hC.base
  refine ⟨h1, ?_⟩
  obtain ⟨a, t, ha, ht, hat⟩ := hC.L.dim
  obtain ⟨a', t', ha', ht', hat'⟩ := h2 a t ha ht
  have hdimR : ringKrullDim (ChartRing k m e) = ((m + e : ℕ) : WithBot ℕ∞) := by
    rw [GlobalTheory.FormalIsogeny.ringKrullDim_mvPowerSeries k (Fin m ⊕ Fin e), ringKrullDim_eq_zero_of_field]
    simp
  have hma : a' = m + e := by
    rw [hdimR] at ha'
    exact_mod_cast ha'.symm
  have hcard : Fintype.card (Fin C.m ⊕ Fin hC.N) = Module.finrank ℚ E / 2 * Module.finrank (𝓞 E) hC.L.D.X *
      Module.finrank (𝓞 E) hC.L.D.X := by
    rw [← _root_.GlobalTheory.BalRank.finrank_balForms H hC.L.D.X, Module.finrank_eq_card_basis hC.ε]
  have hr : Module.finrank (𝓞 E) C.P.D.toPre.X = Module.finrank (𝓞 E) hC.L.D.X := hC.e.finrank_eq
  have hp := hC.hp
  have hq := hC.hq
  rw [hr] at hp hq
  have key : a' + t' = Dw.dim := by
    rw [hat', hat, hcard, Datum.dim, Datum.dim, ← hp, ← hq]
    ring
  rw [ht', ← hma]
  exact_mod_cast key

end GlobalTheory.UCanon
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimension =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimensionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimensionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CanonicalChartResidueFieldDimensionStatement =====
