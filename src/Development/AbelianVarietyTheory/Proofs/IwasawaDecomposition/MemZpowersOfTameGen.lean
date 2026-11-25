module

import Development.AbelianVarietyTheory.Proofs.SatakeParameters.EigenPeriodOfLocalGlobal
public import Formalism.SharpRestriction.LevelLetterCocycles.DataN
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FixedOfPowFixed
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.FrobeniusOrbits

namespace GlobalTheory.TameGenPowers
open scoped Pointwise

theorem wild_mem_Ine {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω]
    {A : ValuationSubring Ω} {σ : Formalism.ConjugateSelfDual.G E Ω}
    (hσ : ∀ y : Ω, y ≠ 0 → A.valuation (σ y / y - 1) < 1) : σ ∈ Ine (F := E) A := by
  apply GlobalTheory.TameEig.wild_mem_Ine <;> assumption

theorem finite_roots (K : Type) [Field K] (m : ℕ) (hm : m ≠ 0) :
    {u : Kˣ | u ^ m = 1}.Finite := by
  haveI : NeZero m := ⟨hm⟩
  have : Finite (rootsOfUnity m K) := inferInstance
  have h := Set.toFinite ((rootsOfUnity m K : Subgroup Kˣ) : Set Kˣ)
  exact h.subset fun u hu => (mem_rootsOfUnity m u).2 hu

theorem eq_one_of_wild_prime (E Ω : Type) [Field E] [NumberField E] [Field Ω] [Algebra E Ω]
    [IsAlgClosure E Ω] (v : HeightOneSpectrum (𝓞 E)) (A : ValuationSubring Ω)
    (hA : IsPlaceOver A v) (K : Type) [Field K] [TopologicalSpace K] [T2Space K]
    (r : Formalism.ConjugateSelfDual.G E Ω →* Kˣ) (hr : Continuous r) (l : ℕ) (hl : l.Prime)
    (hlv : ((l : ℕ) : 𝓞 E) ∉ v.asIdeal) (σ : Formalism.ConjugateSelfDual.G E Ω)
    (hσ : ∀ y : Ω, y ≠ 0 → A.valuation (σ y / y - 1) < 1) (hσl : r σ ^ l = 1) : r σ = 1 := by
  have hvl : ¬ A.valuation (l : Ω) < 1 := by
    intro h
    apply hlv
    rw [← hA]
    simpa using h
  have hvl1 : A.valuation (l : Ω) = 1 :=
    le_antisymm ((A.valuation_le_one_iff _).mpr (natCast_mem A l)) (not_lt.mp hvl)
  have hfin : ({u : Kˣ | u ^ l = 1} \ {1}).Finite := (finite_roots K l hl.ne_zero).diff
  have hop : IsOpen (r ⁻¹' ({u : Kˣ | u ^ l = 1} \ {1})ᶜ) :=
    hfin.isClosed.isOpen_compl.preimage hr
  obtain ⟨L, hL, hsub⟩ := (krullTopology_mem_nhds_one_iff E Ω _).mp
    (hop.mem_nhds (by simp))
  have : IsGalois E Ω := IsAlgClosure.isGalois E Ω
  have hidx : L.fixingSubgroup.index ≠ 0 := by
    rw [← IntermediateField.finrank_eq_fixingSubgroup_index]
    exact Module.finrank_pos.ne'
  obtain ⟨N, hN, -, hmem⟩ := Subgroup.exists_pow_mem_of_index_ne_zero hidx σ
  obtain ⟨a, n, hn, rfl⟩ := Nat.exists_eq_pow_mul_and_not_dvd hN.ne' l hl.ne_one
  have hτ : σ ^ n ∈ L.fixingSubgroup := by
    rw [IntermediateField.mem_fixingSubgroup_iff] at hmem ⊢
    intro x hx
    refine GlobalTheory.WildInertiaChar.fixed_of_pow_fixed A (σ ^ n)
      (GlobalTheory.WildInertiaChar.wild_pow A σ hσ n) (l ^ a) ?_ x ?_
    · rw [Nat.cast_pow, map_pow, hvl1, one_pow]; exact lt_irrefl _
    · rw [← pow_mul, mul_comm]; exact hmem x hx
  have h1 : r σ ^ n = 1 := by
    have h2 : r (σ ^ n) ∉ ({u : Kˣ | u ^ l = 1} \ {1}) := hsub hτ
    by_contra hne
    apply h2
    refine ⟨?_, by rwa [map_pow]⟩
    show r (σ ^ n) ^ l = 1
    rw [map_pow, ← pow_mul, mul_comm, pow_mul, hσl, one_pow]
  have hc : Nat.Coprime l n := (Nat.Prime.coprime_iff_not_dvd hl).mpr hn
  have := (pow_gcd_eq_one (a := r σ) (m := l) (n := n)).mpr ⟨hσl, h1⟩
  rwa [hc, pow_one] at this

end GlobalTheory.TameGenPowers
