module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MapFinPartILocFEq
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsOfBalanced
public import Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder
public import Development.AbelianVarietyTheory.Definitions.Divisors.BasePlaceNotMemChiGridBadPlaces
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPlaceModelPlaceMap
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinPartConjMem
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeCharacterIdeleCharacterMatchUnique
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TildeCharacterOnUnitary
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Counterexamples.RotationExamples.LeafHypothesesConst
import Development.AbelianVarietyTheory.Definitions.Divisors.CmHostImaginaryGeneratorNeZero
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension
import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.UnitaryHeckeCharacterValues
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsInjectiveCharacterOfIsCyclic
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HostCmEmbeddingProperties
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnderEqIffConjPl
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnitaryDeterminantKernelOpenAndFactor
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemSum
import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.TotallyPositiveExponents
import Mathlib.Algebra.Order.Star.Int
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PhaseNeZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCongruenceHeckeCharacterBoundedLevelTrivia, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeNotInertPlaceOfMem, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharacterBoundedConductorKillsIdeleNorms, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharacterNonInertBoundedLevelKillsUnits, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnramifiedEtaCharacterKillsFiniteIdeleNorm, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBetaInvHeckeU

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PhaseNeZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PhaseNeZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsOfBalanced\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TildeCharacterOnUnitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions IsDedekindDomain NumberField Formalism.MainNotions Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3
open Formalism.L2.Host (HChar)
open GlobalTheory.Mem.Col2.SplitChar (finIdl)

namespace GlobalTheory.HeckeUOps

variable {D : D7}

theorem phase_ne_zero (τ : D.what₂.Tau) (a : D.host.Eˣ) :
    embT D τ (a : D.host.E) / (‖embT D τ (a : D.host.E)‖ : ℂ) ≠ 0 := by
  have h : embT D τ (a : D.host.E) ≠ 0 := (map_ne_zero _).2 a.ne_zero
  exact div_ne_zero h (by exact_mod_cast (norm_ne_zero_iff.2 h))

def mul {N₁ N₂ : ℕ} (N : ℕ) (χ₁ : HeckeU D N₁) (χ₂ : HeckeU D N₂) (h : Even ((N₁ : ℤ) + N₂ - N)) : HeckeU D N where
  f := χ₁.f * χ₂.f
  n := χ₁.n + χ₂.n
  unitary x := by
    rw [MonoidHom.mul_apply, Units.val_mul, norm_mul, χ₁.unitary, χ₂.unitary, one_mul]
  cont := by
    obtain ⟨m₁, hm₁, h₁⟩ := χ₁.cont
    obtain ⟨m₂, hm₂, h₂⟩ := χ₂.cont
    refine ⟨m₁ * m₂, Nat.mul_pos hm₁ hm₂, fun u hu ⟨s, hs, e⟩ => ?_⟩
    rw [MonoidHom.mul_apply, h₁ u hu ⟨m₂ * s, mul_mem (natCast_mem _ _) hs, by rw [e]; push_cast; ring⟩,
      h₂ u hu ⟨m₁ * s, mul_mem (natCast_mem _ _) hs, by rw [e]; push_cast; ring⟩, one_mul]
  aut a := by
    have h1 := χ₁.aut a
    have h2 := χ₂.aut a
    have e : ∀ τ ∈ Finset.univ, (embT D τ (a : D.host.E) / (‖embT D τ (a : D.host.E)‖ : ℂ)) ^ ((χ₁.n + χ₂.n) τ) =
        (embT D τ (a : D.host.E) / (‖embT D τ (a : D.host.E)‖ : ℂ)) ^ (χ₁.n τ) *
          (embT D τ (a : D.host.E) / (‖embT D τ (a : D.host.E)‖ : ℂ)) ^ (χ₂.n τ) := fun τ _ => by
      rw [Pi.add_apply, zpow_add₀ (phase_ne_zero τ a)]
    rw [Finset.prod_congr rfl e, Finset.prod_mul_distrib, MonoidHom.mul_apply, Units.val_mul]
    calc _ = (((χ₁.f (Units.map (inc D).toMonoidHom a) : ℂˣ) : ℂ) *
          ∏ τ, (embT D τ (a : D.host.E) / (‖embT D τ (a : D.host.E)‖ : ℂ)) ^ (χ₁.n τ)) *
        (((χ₂.f (Units.map (inc D).toMonoidHom a) : ℂˣ) : ℂ) *
          ∏ τ, (embT D τ (a : D.host.E) / (‖embT D τ (a : D.host.E)‖ : ℂ)) ^ (χ₂.n τ)) := by ring
      _ = 1 := by rw [h1, h2, one_mul]
  norm x := by rw [MonoidHom.mul_apply, χ₁.norm, χ₂.norm, one_mul]
  par τ := by
    have := (χ₁.par τ).add ((χ₂.par τ).add h)
    have e : (χ₁.n + χ₂.n) τ - (N : ℤ) = χ₁.n τ - N₁ + (χ₂.n τ - N₂ + (N₁ + N₂ - N)) := by
      simp only [Pi.add_apply]; ring
    rw [e]; exact this
  unr u hu hz := by rw [MonoidHom.mul_apply, χ₁.unr u hu hz, χ₂.unr u hu hz, one_mul]

def inv {N : ℕ} (N' : ℕ) (χ : HeckeU D N) (h : Even ((N : ℤ) - N')) : HeckeU D N' where
  f := χ.f⁻¹
  n := -χ.n
  unitary x := by rw [MonoidHom.inv_apply, Units.val_inv_eq_inv_val, norm_inv, χ.unitary, inv_one]
  cont := by
    obtain ⟨m, hm, h₁⟩ := χ.cont
    exact ⟨m, hm, fun u hu hs => by rw [MonoidHom.inv_apply, h₁ u hu hs, inv_one]⟩
  aut a := by
    have h1 := χ.aut a
    have e : ∀ τ ∈ Finset.univ, (embT D τ (a : D.host.E) / (‖embT D τ (a : D.host.E)‖ : ℂ)) ^ ((-χ.n) τ) =
        ((embT D τ (a : D.host.E) / (‖embT D τ (a : D.host.E)‖ : ℂ)) ^ (χ.n τ))⁻¹ := fun τ _ => by
      rw [Pi.neg_apply, zpow_neg]
    rw [Finset.prod_congr rfl e, Finset.prod_inv_distrib, MonoidHom.inv_apply, Units.val_inv_eq_inv_val, ← mul_inv, h1,
      inv_one]
  norm x := by rw [MonoidHom.inv_apply, χ.norm, inv_one]
  par τ := by
    have := ((χ.par τ).neg.sub h).sub (even_two_mul (N' : ℤ))
    have e : (-χ.n) τ - (N' : ℤ) = -(χ.n τ - N) - (N - N') - 2 * N' := by
      simp only [Pi.neg_apply]; ring
    rw [e]; exact this
  unr u hu hz := by rw [MonoidHom.inv_apply, χ.unr u hu hz, inv_one]

def ofChar (N : ℕ) (χ : HChar D.host.E) (n : D.what₂.Tau → ℤ) (hu : χ.IsUnitary) (hi : χ.HasInf (embT D) n)
    (hc : ∃ m : ℕ, 0 < m ∧ ∀ u, IntU D u → (∃ s ∈ OhE D, (u : AE D) - 1 = (m : AE D) * s) → χ.1 (finIdl D u) = 1)
    (hn : ∀ x, χ.1 (finIdl D (x * sgU D x)) = 1) (hp : ∀ τ, Even (n τ - (N : ℤ)))
    (hr : ∀ u, IntU D u → (∀ q : ℕ, q.Prime → ¬ InertQ D q → ZeroAt D q ((u : AE D) - 1)) → χ.1 (finIdl D u) = 1) :
    HeckeU D N where
  f := χ.1.comp (finIdl D)
  n := n
  unitary _ := hu _
  cont := hc
  aut a := by
    have h1 := χ.2.2 a
    rw [← GlobalTheory.Mem.ChiLaws.infDiag_mul_finPart, map_mul, ← GlobalTheory.Mem.Col2.SplitChar.finIdl_incU, mul_comm] at h1
    have h3 := congrArg (Units.val : ℂˣ → ℂ) h1
    rw [Units.val_mul, Units.val_one] at h3
    rw [← h3]
    exact congrArg _ (hi a).symm
  norm := hn
  par := hp
  unr := hr

@[simp] theorem mul_f {N₁ N₂ N : ℕ} (χ₁ : HeckeU D N₁) (χ₂ : HeckeU D N₂) (h) (x) :
    (mul N χ₁ χ₂ h).f x = χ₁.f x * χ₂.f x := rfl

@[simp] theorem inv_f {N N' : ℕ} (χ : HeckeU D N) (h) (x) : (inv N' χ h).f x = (χ.f x)⁻¹ := rfl

end GlobalTheory.HeckeUOps
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PhaseNeZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCongruenceHeckeCharacterBoundedLevelTrivia =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCongruenceHeckeCharacterBoundedLevelTrivia", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsOfBalanced\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Counterexamples.RotationExamples.LeafHypothesesConst\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CmHostImaginaryGeneratorNeZero\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

open scoped Pointwise
open Formalism.BasicNotions Formalism.IndefR.Links IsDedekindDomain NumberField
open Formalism.MainNotions Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3
open Formalism.L2.Host (HChar)
open GlobalTheory.ChiGrid GlobalTheory.LeafRestExamples GlobalTheory.FunObj.SqNum
open GlobalTheory.Mem.Col2.SplitChar (finIdl)

noncomputable section

namespace GlobalTheory.HeckeCont

open Formalism.L2.Host GlobalTheory.Mem.Col2.SplitChar

theorem le_exp_neg_one_of_lt_one {γ : WithZero (Multiplicative ℤ)} (h : γ < 1) : γ ≤ WithZero.exp (-1 : ℤ) := by
  rcases eq_or_ne γ 0 with rfl | h0
  · exact zero_le'
  · rw [← WithZero.exp_log h0] at h ⊢
    rw [← WithZero.exp_zero, WithZero.exp_lt_exp] at h
    rw [WithZero.exp_le_exp]
    omega

theorem eq_one_of_cong : ∀ (D : D7) (χ : HChar D.host.E) (S : Finset ℕ) (k : ℕ), (∀ q ∈ S, q.Prime) → (∀ v, χ.UnrAt v ∨ ∃ q ∈ S, Formalism.L2.Host.OverP D.host q v ∧ χ.LevelLe v k) → ∃ m : ℕ, 0 < m ∧ ∀ u, IntU D u → (∃ s ∈ OhE D, (u : AE D) - 1 = (m : AE D) * s) → χ.1 (finIdl D u) = 1 := by
  intro D χ S k hS hv
  refine ⟨(∏ q ∈ S, q) ^ k, pow_pos (Finset.prod_pos fun q hq => (hS q hq).pos) k, ?_⟩
  rintro u hu ⟨s, hs, e⟩
  refine GlobalTheory.Mem.LocTriv.eq_one_of_local _ χ.1 χ.2.1 (finIdl D u) (finIdl_unit hu) (fun w => ?_) (fun v x hx => ?_)
  · rw [finIdl_fst]
    rfl
  · have hU : Valued.v ((finIdl D u : AdeleRing (𝓞 D.host.E) D.host.E).2 v) = 1 := finIdl_unit hu v
    have hxU : IsUnitAt v x := by
      show Valued.v (x : v.adicCompletion D.host.E) = 1
      rw [hx]
      exact hU
    rcases hv v with hunr | ⟨q, hq, hov, hlev⟩
    · exact hunr x hxU
    · refine hlev x hxU ?_
      rw [hx, vl_sub_one, e]
      obtain ⟨c, hc⟩ := Finset.dvd_prod_of_mem (fun q : ℕ => q) hq
      have hP : OverP D.host (∏ q ∈ S, q) v := by
        show (((∏ q ∈ S, q : ℕ)) : 𝓞 D.host.E) ∈ v.asIdeal
        rw [hc, Nat.cast_mul]
        exact Ideal.mul_mem_right _ _ hov
      have h1 := le_exp_neg_one_of_lt_one (val_nat_lt hP)
      rw [map_mul, Nat.cast_pow, map_pow]
      calc vl D v ((∏ q ∈ S, q : ℕ) : AE D) ^ k * vl D v s ≤ vl D v ((∏ q ∈ S, q : ℕ) : AE D) ^ k :=
            mul_le_of_le_one_right' (vl_le hs v)
        _ ≤ WithZero.exp (-1 : ℤ) ^ k := pow_le_pow_left₀ zero_le' h1 k
        _ = WithZero.exp (-(k : ℤ)) := by rw [← WithZero.exp_nsmul]; congr 1; simp

end GlobalTheory.HeckeCont
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCongruenceHeckeCharacterBoundedLevelTrivia =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeNotInertPlaceOfMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeNotInertPlaceOfMem", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.BasePlaceNotMemChiGridBadPlaces\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPlaceModelPlaceMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinPartConjMem\nimport Formalism.LocalRingCardinality.RankBoundMonotoneInDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Counterexamples.RotationExamples.LeafHypothesesConst\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsOfBalanced\n\n"}
section -- clump:auto
@[expose] public section

open scoped Pointwise
open Formalism.BasicNotions Formalism.IndefR.Links IsDedekindDomain NumberField
open Formalism.MainNotions Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3
open Formalism.L2.Host (HChar)
open GlobalTheory.ChiGrid GlobalTheory.LeafRestExamples GlobalTheory.FunObj.SqNum
open GlobalTheory.Mem.Col2.SplitChar (finIdl)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.FunObj.SqNum

theorem conj_smul_int {D : D7} (x : 𝓞 D.host.E) : (D.host.conj • x : 𝓞 D.host.E) = Formalism.L2.Col.cO _ x := by
  apply RingOfIntegers.ext
  rw [show ((Formalism.L2.Col.cO D.host.E x : 𝓞 D.host.E) : D.host.E) = star (x : D.host.E) from rfl,
    Formalism.BasicNotions.bridge_star_holds D.R D.host]
  rfl

theorem exists_prime_notInert_place : ∀ {D : D7} {T : Type} {L : LevCh D T} (P : Places L) (v : HeightOneSpectrum (𝓞 D.host.F)),
    v ∈ P.S0 → ∃ q : ℕ, q.Prime ∧ ¬ InertQ D q ∧ ((q : ℕ) : 𝓞 D.host.F) ∈ v.asIdeal := by
  intro D T L P v hv
  obtain ⟨e, he⟩ := P.w_split v hv
  have hunder := P.w_over v hv
  obtain ⟨q, hq, hqv⟩ : ∃ q : ℕ, q.Prime ∧ ((q : ℕ) : 𝓞 D.host.F) ∈ v.asIdeal := by
    have := v.isMaximal
    have : Finite (𝓞 D.host.F ⧸ v.asIdeal) := Ideal.finiteQuotientOfFreeOfNeBot _ v.ne_bot
    letI := Ideal.Quotient.field v.asIdeal
    refine ⟨ringChar (𝓞 D.host.F ⧸ v.asIdeal), CharP.char_is_prime (𝓞 D.host.F ⧸ v.asIdeal) _, ?_⟩
    exact Ideal.Quotient.eq_zero_iff_mem.1 (by simpa using CharP.cast_eq_zero (𝓞 D.host.F ⧸ v.asIdeal) (ringChar _))
  refine ⟨q, hq, fun hin => ?_, hqv⟩
  have hqQ : ((q : ℕ) : 𝓞 D.host.E) ∈ (P.w v).asIdeal := by
    have h1 : ((q : ℕ) : 𝓞 D.host.F) ∈ ((P.w v).under (𝓞 D.host.F)).asIdeal := by rw [hunder]; exact hqv
    simpa [HeightOneSpectrum.under] using h1
  have hfix := hin (P.w v).asIdeal (P.w v).isPrime (P.w v).ne_bot hqQ
  have hf : ∀ x, x ∈ (P.w v).asIdeal → Formalism.L2.Col.cO _ x ∈ (P.w v).asIdeal := fun x hx => by
    rw [← conj_smul_int, ← hfix]
    exact Ideal.smul_mem_pointwise_smul _ _ _ hx
  have hmem : ∀ x, x ∈ (P.w v).asIdeal ↔ Formalism.L2.Col.cO _ x ∈ (P.w v).asIdeal := fun x =>
    ⟨hf x, fun hx => by simpa [Formalism.L2.Col.cO_cO] using hf _ hx⟩
  have hc := GlobalTheory.MovedIdem.isIdemAt_conj he hmem
  have e1 : e = Formalism.L2.Theta.cA D e := (GlobalTheory.ExportSeries.idemAt_eq he).symm.trans (GlobalTheory.ExportSeries.idemAt_eq hc)
  have e0 : e = 0 := by
    calc e = e * e := he.1.1.symm
      _ = e * Formalism.L2.Theta.cA D e := by rw [← e1]
      _ = 0 := he.1.2.1
  obtain ⟨x, hxQ, hx0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot (P.w v).ne_bot
  have h2 := (he.2 x hx0).1 hxQ
  rw [e0, zero_mul, map_zero] at h2
  exact h2 (zero_mem _)

end GlobalTheory.FunObj.SqNum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeNotInertPlaceOfMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharacterBoundedConductorKillsIdeleNorms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharacterBoundedConductorKillsIdeleNorms", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsOfBalanced\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.UnitaryHeckeCharacterValues\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsInjectiveCharacterOfIsCyclic\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HostCmEmbeddingProperties\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TildeCharacterOnUnitary\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnderEqIffConjPl\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnitaryDeterminantKernelOpenAndFactor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Counterexamples.RotationExamples.LeafHypothesesConst\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CmHostImaginaryGeneratorNeZero\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open scoped Pointwise
open Formalism.BasicNotions Formalism.IndefR.Links IsDedekindDomain NumberField
open Formalism.MainNotions Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3
open Formalism.L2.Host (HChar)
open GlobalTheory.ChiGrid GlobalTheory.LeafRestExamples GlobalTheory.FunObj.SqNum
open GlobalTheory.Mem.Col2.SplitChar (finIdl)

noncomputable section

open GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2.SplitChar GlobalTheory.NormSum.UnramHecke Formalism.FrobeniusOrbits Neutral.B1 ReciprocityTheory.Neutral.Bridge.HCFR Formalism.L2.Host

namespace GlobalTheory.NormKill

variable {D : D7}

theorem vl_le_of_dvd {p N : ℕ} (h : p ∣ N) (v : HeightOneSpectrum (𝓞 D.host.E)) :
    vl D v (N : AE D) ≤ vl D v (p : AE D) := by
  obtain ⟨c, rfl⟩ := h
  rw [Nat.cast_mul, map_mul]
  exact mul_le_of_le_one_right' (vl_le (natCast_mem _ _) v)

theorem exists_global_congN {N : ℕ} (hN : 1 < N) (x : (AE D)ˣ) :
    ∃ a : D.host.Eˣ, ∃ s ∈ OhE D, ((incU D a * x⁻¹ : (AE D)ˣ) : AE D) - 1 = (N : AE D) * s := by
  obtain ⟨n, hn, hx⟩ := GlobalTheory.HeckeVal.exists_denom D ((x⁻¹ : (AE D)ˣ) : AE D)
  obtain ⟨a, r, hr, e⟩ := exists_approx (x : AE D) (Nat.mul_pos (by omega : 0 < N) hn)
  have h1 : inc D a * ((x⁻¹ : (AE D)ˣ) : AE D) - 1 = (N : AE D) * (-(r * ((n : AE D) * ((x⁻¹ : (AE D)ˣ) : AE D)))) := by
    rw [Nat.cast_mul] at e
    linear_combination x.mul_inv - ((x⁻¹ : (AE D)ˣ) : AE D) * e
  have ha : a ≠ 0 := by
    rintro rfl
    obtain ⟨v, hv⟩ := GlobalTheory.exists_heightOneSpectrum_natCast_mem D.host.E (Nat.minFac_prime (by omega : N ≠ 1))
    have h2 := congrArg (vl D v) h1
    rw [map_zero, zero_mul, zero_sub, Valuation.map_neg, map_one, map_mul] at h2
    have h3 : vl D v (N : AE D) < 1 := (vl_le_of_dvd (Nat.minFac_dvd N) v).trans_lt (val_nat_lt hv)
    have h4 := (mul_le_of_le_one_right' (vl_le (neg_mem (mul_mem hr hx)) v)).trans_lt h3
    rw [← h2] at h4
    exact lt_irrefl _ h4
  exact ⟨Units.mk0 a ha, _, neg_mem (mul_mem hr hx), h1⟩

theorem vl_norm_sub_one {N : ℕ} {z : (AE D)ˣ} {s : AE D} (hs : s ∈ OhE D) (e : (z : AE D) - 1 = (N : AE D) * s)
    (v : HeightOneSpectrum (𝓞 D.host.E)) :
    vl D v (((z * sgU D z : (AE D)ˣ) : AE D) - 1) ≤ vl D v (N : AE D) := by
  obtain ⟨v', hv', -⟩ := existsUnique_conjPl D.host.conj.toRingEquiv v
  have hN1 : ∀ w, vl D w (N : AE D) ≤ 1 := fun w => vl_le (natCast_mem _ _) w
  have h1 : ∀ w, vl D w ((z : AE D) - 1) ≤ vl D w (N : AE D) := fun w => by
    rw [e, map_mul]
    exact mul_le_of_le_one_right' (vl_le hs w)
  have h2 : vl D v (sgA D z - 1) ≤ vl D v (N : AE D) := by
    rw [← map_one (sgA D), ← map_sub, vl_sgA (conjPl_symm hv')]
    refine (h1 v').trans (le_of_eq ?_)
    rw [← vl_sgA (conjPl_symm hv'), map_natCast]
  have e2 : ((z * sgU D z : (AE D)ˣ) : AE D) - 1 =
      ((z : AE D) - 1) * (sgA D z - 1) + (((z : AE D) - 1) + (sgA D z - 1)) := by
    change (z : AE D) * sgA D z - 1 = _
    ring
  rw [e2]
  refine Valuation.map_add_le _ ?_ (Valuation.map_add_le _ (h1 v) h2)
  rw [map_mul]
  exact (mul_le_of_le_one_right' (h2.trans (hN1 v))).trans (h1 v)

theorem vl_pow_le {p m : ℕ} (hp : p ∣ m) {v : HeightOneSpectrum (𝓞 D.host.E)} (hv : OverP D.host p v) (k : ℕ) :
    vl D v ((m ^ (k + 1) : ℕ) : AE D) ≤ WithZero.exp (-((k : ℤ) + 1)) := by
  have h1 : vl D v (m : AE D) ≤ WithZero.exp (-1) := by
    have := GlobalTheory.Mem.KerDet.le_exp_neg_one ((vl_le_of_dvd hp v).trans_lt (val_nat_lt hv))
    simpa using this
  rw [Nat.cast_pow, map_pow]
  calc vl D v (m : AE D) ^ (k + 1) ≤ WithZero.exp (-1) ^ (k + 1) := pow_le_pow_left₀ zero_le h1 _
    _ = WithZero.exp (-((k : ℤ) + 1)) := by
      rw [← WithZero.exp_nsmul]
      congr 1
      simp

theorem chi_norm_global (χ : HChar D.host.E) {n : D.what₂.Tau → ℤ} (hi : χ.HasInf (embT D) n) (a : D.host.Eˣ) :
    χ.1 (finIdl D (incU D a * sgU D (incU D a))) = 1 := by
  obtain ⟨k', hk⟩ := exists_real_norm a
  have hu : ((upF D.host.F k' : D.host.Eˣ) : D.host.E) = (a : D.host.E) * D.host.conj a := by
    haveI : Nontrivial (AE D) := by
      obtain ⟨v, -⟩ := GlobalTheory.exists_heightOneSpectrum_natCast_mem D.host.E Nat.prime_two
      refine ⟨⟨0, 1, fun h => ?_⟩⟩
      have := congrArg (vl D v) h
      rw [map_zero, map_one] at this
      exact zero_ne_one this
    apply (inc D).injective
    have := congrArg Units.val hk
    change inc D a * sgA D (inc D a) = inc D _ at this
    rw [← this, sgA_inc, map_mul]
  have hinf : χ.inf (upF D.host.F k') = 1 := by
    apply Units.ext
    rw [hi, Units.val_one]
    refine Finset.prod_eq_one fun τ _ => ?_
    have h0 : embT D τ (a : D.host.E) ≠ 0 := (map_ne_zero _).2 a.ne_zero
    have h1 : embT D τ ((upF D.host.F k' : D.host.Eˣ) : D.host.E) = ((Complex.normSq (embT D τ (a : D.host.E)) : ℝ) : ℂ) := by
      rw [hu, map_mul, emb_conj, Complex.mul_conj]
    have h2 : (0 : ℝ) < Complex.normSq (embT D τ (a : D.host.E)) := Complex.normSq_pos.2 h0
    rw [h1, Complex.norm_real, Real.norm_of_nonneg h2.le, div_self (by exact_mod_cast h2.ne'), one_zpow]
  rw [hk, finIdl_incU]
  have h1 := χ.2.2 (upF D.host.F k')
  rw [← GlobalTheory.Mem.ChiLaws.infDiag_mul_finPart, map_mul] at h1
  have h2 : χ.1 (infDiag (upF D.host.F k')) = 1 := hinf
  rw [h2, one_mul] at h1
  exact h1

theorem chi_norm_cong (χ : HChar D.host.E) (S : Finset ℕ) (k : ℕ) (ht : χ.TrivOn D.host.F)
    (hl : ∀ v, χ.UnrAt v ∨ ∃ q ∈ S, Formalism.L2.Host.OverP D.host q v ∧ χ.LevelLe v k) (z : (AE D)ˣ)
    (hz : ∀ q ∈ S, ∀ v, Formalism.L2.Host.OverP D.host q v →
      vl D v (((z * sgU D z : (AE D)ˣ) : AE D) - 1) ≤ WithZero.exp (-((k : ℤ) + 1))) :
    χ.1 (finIdl D (z * sgU D z)) = 1 := by
  obtain ⟨c, -, -, hu, -⟩ := GlobalTheory.Mem.HostCM.host_cm D.R D.host
  have hG : ∀ v k', locF (L := D.host.E) D.host.F v k' ∈ (χ.1.comp (finPartI D.host.E)).ker := fun v k' => by
    rw [MonoidHom.mem_ker]
    exact GlobalTheory.Mem.KerDet.map_finPartI_locF ht v k'
  obtain ⟨b, hb, hun, hc⟩ := exists_of_balanced hu _ hG _ (norm_balanced z)
  rw [MonoidHom.mem_ker] at hb
  rw [← finPartI_finIdl, ← mul_inv_cancel_left b (finIdl D (z * sgU D z)), map_mul, map_mul]
  rw [show χ.1 (finPartI D.host.E b) = 1 from hb, one_mul]
  refine GlobalTheory.Mem.LocTriv.eq_one_of_local D.host.E χ.1 χ.2.1 _ (finPartI_mem_unitIdl.2 hun) (fun _ => rfl) fun v y hy => ?_
  have hy' : (y : v.adicCompletion D.host.E) = ((b⁻¹ * finIdl D (z * sgU D z) : Ideles D.host.E) : AdeleRing (𝓞 D.host.E) D.host.E).2 v := hy
  have hyu : IsUnitAt v y := by
    unfold IsUnitAt
    rw [hy']
    exact hun v
  change χ.loc v y = 1
  rcases hl v with hU | ⟨q, hq, hov, hL⟩
  · exact hU y hyu
  · have hlt : WithZero.exp (-((k : ℤ) + 1)) < 1 := by
      rw [← WithZero.exp_zero, WithZero.exp_lt_exp]
      omega
    have h0 : Valued.v ((finIdl D (z * sgU D z) : AdeleRing (𝓞 D.host.E) D.host.E).2 v - 1) < 1 := by
      rw [vl_sub_one]
      exact (hz q hq v hov).trans_lt hlt
    have hv1 : IdlFact.valAt v (finIdl D (z * sgU D z)) = 1 := by
      rw [IdlFact.valAt_apply, ← sub_add_cancel ((finIdl D (z * sgU D z) : AdeleRing (𝓞 D.host.E) D.host.E).2 v) 1, add_comm]
      exact Valuation.map_one_add_of_lt _ h0
    have h3 : Units.map (GlobalTheory.Mem.LocTriv.ev v) (b⁻¹ * finIdl D (z * sgU D z)) = Units.map (GlobalTheory.Mem.LocTriv.ev v) (finIdl D (z * sgU D z)) := by
      rw [map_mul, map_inv, hc v hv1, inv_one, one_mul]
    have h4 := congrArg Units.val h3
    refine hL y hyu ?_
    rw [hy']
    have h4' : ((b⁻¹ * finIdl D (z * sgU D z) : Ideles D.host.E) : AdeleRing (𝓞 D.host.E) D.host.E).2 v =
        (finIdl D (z * sgU D z) : AdeleRing (𝓞 D.host.E) D.host.E).2 v := h4
    rw [h4', vl_sub_one]
    refine (hz q hq v hov).trans ?_
    rw [WithZero.exp_le_exp]
    omega

theorem mul_eq_mul_mul_inv {G : Type} [CommGroup G] (x y u v : G) : x * y = (u * v) * ((u * x⁻¹) * (v * y⁻¹))⁻¹ := by
  simp [mul_inv_rev, mul_assoc, mul_left_comm, mul_comm]

theorem chi_finIdl_norm_eq_one : ∀ (D : D7) (χ : HChar D.host.E) (n : D.what₂.Tau → ℤ) (S : Finset ℕ) (k : ℕ), χ.TrivOn D.host.F → χ.HasInf (embT D) n → (∀ q ∈ S, q.Prime) → (∀ v, χ.UnrAt v ∨ ∃ q ∈ S, Formalism.L2.Host.OverP D.host q v ∧ χ.LevelLe v k) → ∀ x : (AE D)ˣ, χ.1 (finIdl D (x * sgU D x)) = 1 := by
  intro D χ n S k ht hi hS hl x
  have hP : 0 < ∏ q ∈ S, q := Finset.prod_pos fun q hq => (hS q hq).pos
  have hm : 1 < (2 * ∏ q ∈ S, q) ^ (k + 1) := Nat.one_lt_pow (by omega) (by omega)
  obtain ⟨a, s, hs, e⟩ := exists_global_congN (D := D) hm x
  have hz : ∀ q ∈ S, ∀ v, Formalism.L2.Host.OverP D.host q v →
      vl D v ((((incU D a * x⁻¹) * sgU D (incU D a * x⁻¹) : (AE D)ˣ) : AE D) - 1) ≤ WithZero.exp (-((k : ℤ) + 1)) :=
    fun q hq v hov => (vl_norm_sub_one hs e v).trans
      (vl_pow_le (Dvd.dvd.mul_left (Finset.dvd_prod_of_mem _ hq) 2) hov k)
  have h1 := chi_norm_cong χ S k ht hl _ hz
  have h2 := chi_norm_global χ hi a
  have e2 : x * sgU D x = (incU D a * sgU D (incU D a)) * ((incU D a * x⁻¹) * sgU D (incU D a * x⁻¹))⁻¹ := by
    rw [map_mul, map_inv]
    exact mul_eq_mul_mul_inv _ _ _ _
  rw [e2, map_mul, map_mul, map_inv, map_inv, h2, h1, inv_one, one_mul]

end GlobalTheory.NormKill
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharacterBoundedConductorKillsIdeleNorms =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharacterNonInertBoundedLevelKillsUnits =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharacterNonInertBoundedLevelKillsUnits", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsOfBalanced\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Counterexamples.RotationExamples.LeafHypothesesConst\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CmHostImaginaryGeneratorNeZero\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

open scoped Pointwise
open Formalism.BasicNotions Formalism.IndefR.Links IsDedekindDomain NumberField
open Formalism.MainNotions Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3
open Formalism.L2.Host (HChar)
open GlobalTheory.ChiGrid GlobalTheory.LeafRestExamples GlobalTheory.FunObj.SqNum
open GlobalTheory.Mem.Col2.SplitChar (finIdl)

noncomputable section

namespace GlobalTheory.FunObj.SqNum.UnrKill

open GlobalTheory.Mem.Col2.SplitChar

theorem vl_nat_coprime {D : D7} {q m : ℕ} (hm : Nat.Coprime m q) {v : HeightOneSpectrum (𝓞 D.host.E)}
    (hv : Formalism.L2.Host.OverP D.host q v) : vl D v (m : AE D) = 1 := by
  refine le_antisymm (vl_le (natCast_mem _ _) v) (not_lt.1 fun hlt => ?_)
  obtain ⟨a, b, hab⟩ := Nat.isCoprime_iff_coprime.2 hm
  have hab' := congrArg (Int.cast : ℤ → AE D) hab
  push_cast at hab'
  have h2 : vl D v ((a : AE D) * m) < 1 := by
    rw [map_mul]
    exact (mul_le_of_le_one_left' (vl_le (intCast_mem _ _) v)).trans_lt hlt
  have h3 : vl D v ((b : AE D) * q) < 1 := by
    rw [map_mul]
    exact (mul_le_of_le_one_left' (vl_le (intCast_mem _ _) v)).trans_lt (val_nat_lt hv)
  have h4 := Valuation.map_add_lt _ h2 h3
  rw [hab', map_one] at h4
  exact lt_irrefl _ h4

theorem le_exp_neg_one {x : WithZero (Multiplicative ℤ)} (h : x < 1) : x ≤ WithZero.exp (-1 : ℤ) := by
  apply _root_.GlobalTheory.HeckeCont.le_exp_neg_one_of_lt_one <;> assumption

theorem vl_le_of_zeroAt {D : D7} {q : ℕ} {x : AE D} (h : ZeroAt D q x) {v : HeightOneSpectrum (𝓞 D.host.E)}
    (hv : Formalism.L2.Host.OverP D.host q v) (k : ℕ) : vl D v x ≤ WithZero.exp (-(k : ℤ)) := by
  obtain ⟨m, -, hm, s, hs, e⟩ := h k
  have h1 := vl_nat_coprime hm hv
  have h2 : vl D v x = vl D v (q : AE D) ^ k * vl D v s := by
    rw [← one_mul (vl D v x), ← h1, ← map_mul, e, map_mul, map_pow]
  rw [h2]
  refine (mul_le_of_le_one_right' (vl_le hs v)).trans ?_
  calc vl D v (q : AE D) ^ k ≤ WithZero.exp (-1 : ℤ) ^ k := pow_le_pow_left₀ zero_le' (le_exp_neg_one (val_nat_lt hv)) k
    _ = WithZero.exp (-(k : ℤ)) := by rw [← WithZero.exp_nsmul]; congr 1; simp

end GlobalTheory.FunObj.SqNum.UnrKill


open GlobalTheory.FunObj.SqNum.UnrKill GlobalTheory.Mem.Col2.SplitChar in
theorem GlobalTheory.FunObj.SqNum.hchar_finIdl_eq_one_of_zeroAt : ∀ (D : D7) (χ : HChar D.host.E) (S : Finset ℕ) (k : ℕ), (∀ q ∈ S, q.Prime ∧ ¬ InertQ D q) → (∀ v, χ.UnrAt v ∨ ∃ q ∈ S, Formalism.L2.Host.OverP D.host q v ∧ χ.LevelLe v k) → ∀ u, IntU D u → (∀ q : ℕ, q.Prime → ¬ InertQ D q → ZeroAt D q ((u : AE D) - 1)) → χ.1 (finIdl D u) = 1 := by
  intro D χ S k hS hχ u hu hz
  have hU := finIdl_unit hu
  refine GlobalTheory.Mem.LocTriv.eq_one_of_local D.host.E χ.1 χ.2.1 (finIdl D u) hU
    (fun w => by rw [finIdl_fst]; rfl) (fun v x hx => ?_)
  have hxu : Formalism.L2.Host.IsUnitAt v x := by
    show Valued.v (x : v.adicCompletion D.host.E) = 1
    rw [hx]
    exact hU v
  rcases hχ v with h | ⟨q, hq, hov, hl⟩
  · exact h x hxu
  · refine hl x hxu ?_
    rw [hx, vl_sub_one]
    exact vl_le_of_zeroAt (hz q (hS q hq).1 (hS q hq).2) hov k
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharacterNonInertBoundedLevelKillsUnits =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnramifiedEtaCharacterKillsFiniteIdeleNorm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnramifiedEtaCharacterKillsFiniteIdeleNorm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsOfBalanced\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HostCmEmbeddingProperties\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnderEqIffConjPl\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnitaryDeterminantKernelOpenAndFactor\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Counterexamples.RotationExamples.LeafHypothesesConst\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CmHostImaginaryGeneratorNeZero\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.EtaTildeNorm

section SlopeTestRemainingChoices

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.FrobeniusOrbits Neutral.B1 ReciprocityTheory.Neutral.Bridge.HCFR Formalism.L2.Host GlobalTheory.Mem.Chr GlobalTheory.Mem.Chr.IdlFact GlobalTheory.Mem.Chr.KDVal
open Formalism.MainNotions Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3 GlobalTheory.Mem.Col2.SplitChar

theorem map_finPartI_locF {L F : Type} [Field L] [NumberField L] [Field F] [NumberField F] [Algebra F L] (χ : HChar L)
    (v : HeightOneSpectrum (𝓞 F)) (k : Fˣ) : χ.1 (finPartI L (locF F v k)) = χ.resFin v k := by
  unfold HChar.resFin
  rw [MonoidHom.finsetProd_apply]
  unfold locF
  rw [map_prod, map_prod]
  exact Finset.prod_congr rfl fun Q _ => congrArg χ.1 (GlobalTheory.Mem.KerDet.finPartI_localIdele Q _)

theorem eq_one (D : D7) (χ : HChar D.host.E) (hχ : IsEtaT D.host χ) (x : (AE D)ˣ) :
    χ.1 (finIdl D (x * sgU D x)) = 1 := by
  apply _root_.GlobalTheory.AlphaSplit.eta_norm <;> assumption

end SlopeTestRemainingChoices

end GlobalTheory.EtaTildeNorm

open scoped Pointwise
open Formalism.BasicNotions Formalism.IndefR.Links IsDedekindDomain NumberField
open Formalism.MainNotions Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3
open Formalism.L2.Host (HChar)
open GlobalTheory.ChiGrid GlobalTheory.LeafRestExamples GlobalTheory.FunObj.SqNum
open GlobalTheory.Mem.Col2.SplitChar (finIdl)

theorem GlobalTheory.EtaTildeNorm.map_finIdl_norm : ∀ (D : D7) (χ : HChar D.host.E), Formalism.L2.Host.IsEtaT D.host χ →
    ∀ x : (AE D)ˣ, χ.1 (finIdl D (x * sgU D x)) = 1 :=
  fun D χ hχ x => GlobalTheory.EtaTildeNorm.eq_one D χ hχ x
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnramifiedEtaCharacterKillsFiniteIdeleNorm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBetaInvHeckeU =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBetaInvHeckeU", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FinitePrimesUnder\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PhaseNeZero\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsOfBalanced\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCongruenceHeckeCharacterBoundedLevelTrivia\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.BasePlaceNotMemChiGridBadPlaces\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeNotInertPlaceOfMem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharacterBoundedConductorKillsIdeleNorms\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharacterNonInertBoundedLevelKillsUnits\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnramifiedEtaCharacterKillsFiniteIdeleNorm\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeCharacterIdeleCharacterMatchUnique\nimport Development.AbelianVarietyTheory.BlockTheory.HeightDefect.TotallyPositiveExponents\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open scoped Pointwise
open Formalism.BasicNotions Formalism.IndefR.Links IsDedekindDomain NumberField
open Formalism.MainNotions Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.StandardLatticesGL3
open Formalism.L2.Host (HChar)
open GlobalTheory.ChiGrid GlobalTheory.LeafRestExamples GlobalTheory.FunObj.SqNum
open GlobalTheory.Mem.Col2.SplitChar (finIdl)

namespace GlobalTheory.FunObj.SqNum

open GlobalTheory.HeckeUOps

theorem levelLe_one_two {K : Type} [Field K] [NumberField K] {χ : HChar K} {v : HeightOneSpectrum (𝓞 K)} (h : χ.LevelLe v 1) : χ.LevelLe v 2 :=
  fun x hx hle => h x hx (hle.trans (WithZero.exp_le_exp.2 (by norm_num)))

theorem exists_betaInv_heckeU {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} (G : GridData L sc)
    (i j : Fin D.R.m) : ∃ χ : HeckeU D (botBig D i j), ∀ x, χ.f x = (betaH G i j)⁻¹.1 (finIdl D x) := by
  classical
  have k1 : 1 ≤ D.R.m - (i : ℕ) := by omega
  have k2 : D.R.m - (i : ℕ) ≤ D.R.m := by omega
  choose! qf hqf using _root_.GlobalTheory.FunObj.SqNum.exists_prime_notInert_place G.pl
  have hS : ∀ q ∈ G.pl.S0.image qf, q.Prime ∧ ¬ InertQ D q := by
    intro q hq
    obtain ⟨v, hv, rfl⟩ := Finset.mem_image.1 hq
    exact ⟨(hqf v hv).1, (hqf v hv).2.1⟩
  have hlev : ∀ v, (G.ch.chiH (D.R.m - i)).UnrAt v ∨ ∃ q ∈ G.pl.S0.image qf, Formalism.L2.Host.OverP D.host q v ∧
      (G.ch.chiH (D.R.m - i)).LevelLe v 2 := by
    intro PP
    by_cases h : (_root_.IsDedekindDomain.HeightOneSpectrum.under (𝓞 D.host.F) PP) ∈ G.pl.S0
    · refine Or.inr ⟨qf _, Finset.mem_image_of_mem _ h, ?_, ?_⟩
      · have := (hqf _ h).2.2
        simpa [HeightOneSpectrum.under, Formalism.L2.Host.OverP] using this
      · rcases G.pl.mem_S0_of_sum_eq.1 h with h0 | h1
        · exact levelLe_one_two (G.ch.lev0 _ k1 k2 PP h0).1
        · exact (G.ch.lev1 _ k1 k2 PP h1).1
    · exact Or.inl (G.ch.unr _ k1 k2 PP h)
  have hcu := GlobalTheory.ChrEqUnique.isUnitary_of_chrEq D _ _ (G.ch.chi_eq _ k1 k2)
  have hci : (G.ch.chiH (D.R.m - i)).HasInf (embT D) (fun τ => 2 * cen D sc.cGap τ (D.R.m - i)) := G.ch.inf _ k1 k2
  let χc : HeckeU D 0 := ofChar 0 _ _ hcu hci (_root_.GlobalTheory.HeckeCont.eq_one_of_cong D _ _ 2 (fun q hq => (hS q hq).1) hlev)
    (_root_.GlobalTheory.NormKill.chi_finIdl_norm_eq_one D _ _ _ 2 (G.ch.triv _ k1 k2) hci (fun q hq => (hS q hq).1) hlev)
    (fun τ => by simp) (_root_.GlobalTheory.FunObj.SqNum.hchar_finIdl_eq_one_of_zeroAt D _ _ 2 hS hlev)
  have he := L.C.isEta
  have hei : L.C.eta.HasInf (embT D) (fun _ => 1) := fun a => by
    rw [he.inf a, ← D.eTau.prod_comp]
    rfl
  let χe : HeckeU D 1 := ofChar 1 L.C.eta _ he.unitary hei (_root_.GlobalTheory.HeckeCont.eq_one_of_cong D _ ∅ 0 (by simp) fun v => Or.inl (he.unr v))
    (_root_.GlobalTheory.EtaTildeNorm.map_finIdl_norm D _ he) (fun τ => by simp) (_root_.GlobalTheory.FunObj.SqNum.hchar_finIdl_eq_one_of_zeroAt D _ ∅ 0 (by simp) fun v => Or.inl (he.unr v))
  have hr : rankV D (i + 1) (j + 1) = rankV D i j + D.R.t + sLen D := by simp only [rankV]; ring
  have hx := (ranks_exact D i j).1
  obtain ⟨u, hu⟩ := D.R.t_odd
  obtain ⟨w, hw⟩ := odd_sLen D
  rcases Nat.mod_two_eq_zero_or_one (rankV D i j) with h | h
  · refine ⟨inv _ χc (by rw [Int.even_iff]; omega), fun x => ?_⟩
    simp only [betaH, h, pow_zero, mul_one, inv_f]
    rfl
  · refine ⟨inv _ (mul 1 χc χe (by decide)) (by rw [Int.even_iff]; omega), fun x => ?_⟩
    simp only [betaH, h, pow_one, inv_f, mul_f]
    rfl

end GlobalTheory.FunObj.SqNum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBetaInvHeckeU =====
